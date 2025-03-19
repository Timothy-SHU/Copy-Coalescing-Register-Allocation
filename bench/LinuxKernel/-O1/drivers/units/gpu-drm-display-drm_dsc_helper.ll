; ModuleID = 'drivers/gpu/drm/display/drm_dsc_helper.c'
source_filename = "drivers/gpu/drm/display/drm_dsc_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_dp_pps_header_init: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_dp_pps_header_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_dp_rc_buffer_size: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_dp_rc_buffer_size ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_pps_payload_pack: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_pps_payload_pack ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_set_const_params: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_set_const_params ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_set_rc_buf_thresh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_set_rc_buf_thresh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_setup_rc_params: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_setup_rc_params ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_compute_rc_parameters: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_compute_rc_parameters ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_get_bpp_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_get_bpp_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_initial_scale_value: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_initial_scale_value ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dsc_flatness_det_thresh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dsc_flatness_det_thresh ; .previous"

%struct.rc_parameters_data = type { i8, i8, %struct.rc_parameters }
%struct.rc_parameters = type { i16, i8, i16, i8, i8, i8, i8, [15 x %struct.drm_dsc_rc_range_parameters] }
%struct.drm_dsc_rc_range_parameters = type { i8, i8, i8 }
%struct.dp_sdp_header = type { i8, i8, i8, i8 }
%struct.drm_dsc_config = type { i8, i8, i8, i8, i16, i16, i8, i16, i16, i8, i8, i16, i8, i8, i8, i16, i16, i8, i8, i16, [14 x i16], [15 x %struct.drm_dsc_rc_range_parameters], i16, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i8, i16, i16 }
%struct.drm_dsc_picture_parameter_set = type <{ i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i16, i8, i8, i16, i8, i8, i8, i8, [14 x i8], [15 x i16], i8, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i16 }>

@__UNIQUE_ID___addressable_drm_dsc_dp_pps_header_init351 = internal global ptr @drm_dsc_dp_pps_header_init, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_dsc_dp_rc_buffer_size352 = internal global ptr @drm_dsc_dp_rc_buffer_size, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable_drm_dsc_pps_payload_pack354 = internal global ptr @drm_dsc_pps_payload_pack, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable_drm_dsc_set_const_params355 = internal global ptr @drm_dsc_set_const_params, section ".discard.addressable", align 8, !dbg !39
@drm_dsc_rc_buf_thresh = internal constant [14 x i16] [i16 896, i16 1792, i16 2688, i16 3584, i16 4480, i16 5376, i16 6272, i16 6720, i16 7168, i16 7616, i16 7744, i16 7872, i16 8000, i16 8064], align 16, !dbg !64
@__UNIQUE_ID___addressable_drm_dsc_set_rc_buf_thresh358 = internal global ptr @drm_dsc_set_rc_buf_thresh, section ".discard.addressable", align 8, !dbg !41
@.str = private unnamed_addr constant [41 x i8] c"drivers/gpu/drm/display/drm_dsc_helper.c\00", align 1, !dbg !43
@rc_parameters_1_2_444 = internal constant [26 x %struct.rc_parameters_data] [%struct.rc_parameters_data { i8 96, i8 8, %struct.rc_parameters { i16 768, i8 15, i16 6144, i8 3, i8 13, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 10, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 14, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 10, %struct.rc_parameters { i16 768, i8 15, i16 6144, i8 7, i8 17, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 14, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 16, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 18, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 12, %struct.rc_parameters { i16 768, i8 15, i16 6144, i8 11, i8 21, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 16, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 18, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 20, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 22, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 14, %struct.rc_parameters { i16 768, i8 15, i16 6144, i8 15, i8 25, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 16, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 20, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 22, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 24, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 24, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 25, i8 26, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 16, %struct.rc_parameters { i16 768, i8 15, i16 6144, i8 19, i8 29, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 20, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 22, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 24, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 25, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 26, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 27, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 28, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 25, i8 28, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 26, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 26, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 27, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 29, i8 30, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 8, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 10, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 8, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 12, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 14, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 16, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 25, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 28, i8 29, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 8, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 3, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 10, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 7, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 12, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 14, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 16, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 27, i8 28, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 8, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 11, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 10, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 12, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 14, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 17, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 16, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 21, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 26, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 26, i8 27, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 8, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 0, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 4, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 7, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 8, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 9, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 10, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 8, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 12, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 7, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 14, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 16, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 16, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 13, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 20, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data zeroinitializer], align 16, !dbg !72
@rc_parameters_pre_scr = internal constant [14 x %struct.rc_parameters_data] [%struct.rc_parameters_data { i8 96, i8 8, %struct.rc_parameters { i16 683, i8 15, i16 6144, i8 3, i8 13, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 4, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 14, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 8, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 10, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 12, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 8, %struct.rc_parameters { i16 410, i8 12, i16 5632, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 3, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 10, %struct.rc_parameters { i16 410, i8 12, i16 5632, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 7, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 12, %struct.rc_parameters { i16 410, i8 12, i16 5632, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 8, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 10, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -64, i8 12, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 8, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 0, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 4, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 4, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 4, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 8, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 10, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 8, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 8, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -16, i8 12, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 7, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }] } }, %struct.rc_parameters_data zeroinitializer], align 16, !dbg !105
@rc_parameters_1_2_422 = internal constant [21 x %struct.rc_parameters_data] [%struct.rc_parameters_data { i8 96, i8 8, %struct.rc_parameters { i16 512, i8 15, i16 6144, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 10, %struct.rc_parameters { i16 512, i8 15, i16 6144, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 8, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 12, %struct.rc_parameters { i16 512, i8 15, i16 6144, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 14, %struct.rc_parameters { i16 512, i8 15, i16 6144, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 16, %struct.rc_parameters { i16 512, i8 15, i16 6144, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 25, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 28, i8 29, i8 -12 }] } }, %struct.rc_parameters_data { i8 112, i8 8, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 3, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }] } }, %struct.rc_parameters_data { i8 112, i8 10, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 7, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }] } }, %struct.rc_parameters_data { i8 112, i8 12, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }] } }, %struct.rc_parameters_data { i8 112, i8 14, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }] } }, %struct.rc_parameters_data { i8 112, i8 16, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 27, i8 28, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 8, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 11, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 10, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 12, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 14, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 17, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 16, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 21, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 26, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 26, i8 27, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 8, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 0, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 4, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 7, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 8, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 9, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 10, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 8, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 12, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 7, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 14, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 16, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 -96, i8 16, %struct.rc_parameters { i16 273, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 13, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 20, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data zeroinitializer], align 16, !dbg !108
@rc_parameters_1_2_420 = internal constant [21 x %struct.rc_parameters_data] [%struct.rc_parameters_data { i8 64, i8 8, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 64, i8 10, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 8, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 64, i8 12, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 64, i8 14, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data { i8 64, i8 16, %struct.rc_parameters { i16 512, i8 12, i16 6144, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 12, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 25, i8 28, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 28, i8 29, i8 -12 }] } }, %struct.rc_parameters_data { i8 80, i8 8, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 3, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }] } }, %struct.rc_parameters_data { i8 80, i8 10, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 7, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 10, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }] } }, %struct.rc_parameters_data { i8 80, i8 12, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 12, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 14, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }] } }, %struct.rc_parameters_data { i8 80, i8 14, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }] } }, %struct.rc_parameters_data { i8 80, i8 16, %struct.rc_parameters { i16 410, i8 15, i16 5632, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 14, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 26, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 27, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 27, i8 28, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 8, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 6, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 9, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 10, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 8, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 12, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 15, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 12, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 13, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 14, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 17, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 19, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 14, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 10, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 13, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 17, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 18, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 19, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 20, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 21, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 22, i8 23, i8 -12 }] } }, %struct.rc_parameters_data { i8 96, i8 16, %struct.rc_parameters { i16 341, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 18, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 21, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 22, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 23, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 24, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 25, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 26, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 26, i8 27, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 8, %struct.rc_parameters { i16 256, i8 15, i16 2048, i8 3, i8 12, i8 11, i8 11, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 0, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 1, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 2, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 1, i8 3, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 4, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 7, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 8, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 9, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 10, %struct.rc_parameters { i16 256, i8 15, i16 2048, i8 7, i8 16, i8 15, i8 15, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 2, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 5, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 5, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 6, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 6, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 5, i8 7, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 8, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 9, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 7, i8 9, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 10, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 11, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 12, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 13, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 12, %struct.rc_parameters { i16 256, i8 15, i16 2048, i8 11, i8 20, i8 19, i8 19, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 2, i8 7, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 11, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 12, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 10, i8 12, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 11, i8 13, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 14, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 16, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 17, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 14, %struct.rc_parameters { i16 256, i8 15, i16 2048, i8 15, i8 24, i8 23, i8 23, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 3, i8 8, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 6, i8 11, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 9, i8 14, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 15, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 13, i8 16, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 14, i8 16, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 15, i8 17, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 16, i8 18, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 20, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 21, i8 -12 }] } }, %struct.rc_parameters_data { i8 -128, i8 16, %struct.rc_parameters { i16 256, i8 15, i16 2048, i8 19, i8 28, i8 27, i8 27, [15 x %struct.drm_dsc_rc_range_parameters] [%struct.drm_dsc_rc_range_parameters { i8 0, i8 4, i8 10 }, %struct.drm_dsc_rc_range_parameters { i8 4, i8 9, i8 8 }, %struct.drm_dsc_rc_range_parameters { i8 8, i8 13, i8 6 }, %struct.drm_dsc_rc_range_parameters { i8 12, i8 17, i8 4 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 19, i8 2 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 0 }, %struct.drm_dsc_rc_range_parameters { i8 17, i8 20, i8 -2 }, %struct.drm_dsc_rc_range_parameters { i8 18, i8 20, i8 -4 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -6 }, %struct.drm_dsc_rc_range_parameters { i8 19, i8 21, i8 -8 }, %struct.drm_dsc_rc_range_parameters { i8 20, i8 22, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -10 }, %struct.drm_dsc_rc_range_parameters { i8 21, i8 23, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 23, i8 24, i8 -12 }, %struct.drm_dsc_rc_range_parameters { i8 24, i8 25, i8 -12 }] } }, %struct.rc_parameters_data zeroinitializer], align 16, !dbg !113
@__UNIQUE_ID___addressable_drm_dsc_setup_rc_params359 = internal global ptr @drm_dsc_setup_rc_params, section ".discard.addressable", align 8, !dbg !49
@.str.1 = private unnamed_addr constant [49 x i8] c"FinalOfs < RcModelSze for this InitialXmitDelay\0A\00", align 1, !dbg !51
@__UNIQUE_ID___addressable_drm_dsc_compute_rc_parameters360 = internal global ptr @drm_dsc_compute_rc_parameters, section ".discard.addressable", align 8, !dbg !56
@__UNIQUE_ID___addressable_drm_dsc_get_bpp_int361 = internal global ptr @drm_dsc_get_bpp_int, section ".discard.addressable", align 8, !dbg !58
@__UNIQUE_ID___addressable_drm_dsc_initial_scale_value362 = internal global ptr @drm_dsc_initial_scale_value, section ".discard.addressable", align 8, !dbg !60
@__UNIQUE_ID___addressable_drm_dsc_flatness_det_thresh363 = internal global ptr @drm_dsc_flatness_det_thresh, section ".discard.addressable", align 8, !dbg !62
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID___addressable_drm_dsc_dp_pps_header_init351, ptr @__UNIQUE_ID___addressable_drm_dsc_dp_rc_buffer_size352, ptr @__UNIQUE_ID___addressable_drm_dsc_pps_payload_pack354, ptr @__UNIQUE_ID___addressable_drm_dsc_set_const_params355, ptr @__UNIQUE_ID___addressable_drm_dsc_set_rc_buf_thresh358, ptr @__UNIQUE_ID___addressable_drm_dsc_setup_rc_params359, ptr @__UNIQUE_ID___addressable_drm_dsc_compute_rc_parameters360, ptr @__UNIQUE_ID___addressable_drm_dsc_get_bpp_int361, ptr @__UNIQUE_ID___addressable_drm_dsc_initial_scale_value362, ptr @__UNIQUE_ID___addressable_drm_dsc_flatness_det_thresh363], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_dsc_dp_pps_header_init(ptr noundef %pps_header) #0 align 16 !dbg !124 {
entry:
  %pps_header.addr = alloca ptr, align 8
  store ptr %pps_header, ptr %pps_header.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps_header.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load ptr, ptr %pps_header.addr, align 8, !dbg !138
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 4, i1 false), !dbg !139
  %1 = load ptr, ptr %pps_header.addr, align 8, !dbg !140
  %HB1 = getelementptr inbounds %struct.dp_sdp_header, ptr %1, i32 0, i32 1, !dbg !141
  store i8 16, ptr %HB1, align 1, !dbg !142
  %2 = load ptr, ptr %pps_header.addr, align 8, !dbg !143
  %HB2 = getelementptr inbounds %struct.dp_sdp_header, ptr %2, i32 0, i32 2, !dbg !144
  store i8 127, ptr %HB2, align 1, !dbg !145
  ret void, !dbg !146
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dsc_dp_rc_buffer_size(i8 noundef zeroext %rc_buffer_block_size, i8 noundef zeroext %rc_buffer_size) #0 align 16 !dbg !147 {
entry:
  %retval = alloca i32, align 4
  %rc_buffer_block_size.addr = alloca i8, align 1
  %rc_buffer_size.addr = alloca i8, align 1
  %size = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %rc_buffer_block_size, ptr %rc_buffer_block_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rc_buffer_block_size.addr, metadata !151, metadata !DIExpression()), !dbg !154
  store i8 %rc_buffer_size, ptr %rc_buffer_size.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %rc_buffer_size.addr, metadata !152, metadata !DIExpression()), !dbg !155
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #6, !dbg !156
  call void @llvm.dbg.declare(metadata ptr %size, metadata !153, metadata !DIExpression()), !dbg !157
  %0 = load i8, ptr %rc_buffer_size.addr, align 1, !dbg !158
  %conv = zext i8 %0 to i32, !dbg !158
  %add = add i32 %conv, 1, !dbg !159
  %mul = mul i32 1024, %add, !dbg !160
  store i32 %mul, ptr %size, align 4, !dbg !157
  %1 = load i8, ptr %rc_buffer_block_size.addr, align 1, !dbg !161
  %conv1 = zext i8 %1 to i32, !dbg !161
  switch i32 %conv1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !162

sw.bb:                                            ; preds = %entry
  %2 = load i32, ptr %size, align 4, !dbg !163
  %mul2 = mul i32 1, %2, !dbg !165
  store i32 %mul2, ptr %retval, align 4, !dbg !166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !166

sw.bb3:                                           ; preds = %entry
  %3 = load i32, ptr %size, align 4, !dbg !167
  %mul4 = mul i32 4, %3, !dbg !168
  store i32 %mul4, ptr %retval, align 4, !dbg !169
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !169

sw.bb5:                                           ; preds = %entry
  %4 = load i32, ptr %size, align 4, !dbg !170
  %mul6 = mul i32 16, %4, !dbg !171
  store i32 %mul6, ptr %retval, align 4, !dbg !172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !172

sw.bb7:                                           ; preds = %entry
  %5 = load i32, ptr %size, align 4, !dbg !173
  %mul8 = mul i32 64, %5, !dbg !174
  store i32 %mul8, ptr %retval, align 4, !dbg !175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !175

sw.default:                                       ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !176

cleanup:                                          ; preds = %sw.default, %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #6, !dbg !177
  %6 = load i32, ptr %retval, align 4, !dbg !177
  ret i32 %6, !dbg !177
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_dsc_pps_payload_pack(ptr noundef %pps_payload, ptr noundef %dsc_cfg) #0 align 16 !dbg !178 {
entry:
  %pps_payload.addr = alloca ptr, align 8
  %dsc_cfg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %pps_payload, ptr %pps_payload.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pps_payload.addr, metadata !286, metadata !DIExpression()), !dbg !289
  store ptr %dsc_cfg, ptr %dsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dsc_cfg.addr, metadata !287, metadata !DIExpression()), !dbg !290
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %i, metadata !288, metadata !DIExpression()), !dbg !292
  br label %do.body, !dbg !293

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !294

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !294

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %pps_payload.addr, align 8, !dbg !296
  call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 128, i1 false), !dbg !297
  %1 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !298
  %dsc_version_minor = getelementptr inbounds %struct.drm_dsc_config, ptr %1, i32 0, i32 35, !dbg !299
  %2 = load i8, ptr %dsc_version_minor, align 2, !dbg !299
  %conv = zext i8 %2 to i32, !dbg !298
  %3 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !300
  %dsc_version_major = getelementptr inbounds %struct.drm_dsc_config, ptr %3, i32 0, i32 36, !dbg !301
  %4 = load i8, ptr %dsc_version_major, align 1, !dbg !301
  %conv1 = zext i8 %4 to i32, !dbg !300
  %shl = shl i32 %conv1, 4, !dbg !302
  %or = or i32 %conv, %shl, !dbg !303
  %conv2 = trunc i32 %or to i8, !dbg !298
  %5 = load ptr, ptr %pps_payload.addr, align 8, !dbg !304
  %dsc_version = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %5, i32 0, i32 0, !dbg !305
  store i8 %conv2, ptr %dsc_version, align 1, !dbg !306
  %6 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !307
  %line_buf_depth = getelementptr inbounds %struct.drm_dsc_config, ptr %6, i32 0, i32 0, !dbg !308
  %7 = load i8, ptr %line_buf_depth, align 2, !dbg !308
  %conv3 = zext i8 %7 to i32, !dbg !307
  %8 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !309
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %8, i32 0, i32 1, !dbg !310
  %9 = load i8, ptr %bits_per_component, align 1, !dbg !310
  %conv4 = zext i8 %9 to i32, !dbg !309
  %shl5 = shl i32 %conv4, 4, !dbg !311
  %or6 = or i32 %conv3, %shl5, !dbg !312
  %conv7 = trunc i32 %or6 to i8, !dbg !307
  %10 = load ptr, ptr %pps_payload.addr, align 8, !dbg !313
  %pps_3 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %10, i32 0, i32 3, !dbg !314
  store i8 %conv7, ptr %pps_3, align 1, !dbg !315
  %11 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !316
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %11, i32 0, i32 11, !dbg !317
  %12 = load i16, ptr %bits_per_pixel, align 2, !dbg !317
  %conv8 = zext i16 %12 to i32, !dbg !316
  %and = and i32 %conv8, 768, !dbg !318
  %shr = ashr i32 %and, 8, !dbg !319
  %13 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !320
  %vbr_enable = getelementptr inbounds %struct.drm_dsc_config, ptr %13, i32 0, i32 31, !dbg !321
  %14 = load i8, ptr %vbr_enable, align 2, !dbg !321, !range !322, !noundef !323
  %tobool = trunc i8 %14 to i1, !dbg !321
  %conv9 = zext i1 %tobool to i32, !dbg !320
  %shl10 = shl i32 %conv9, 2, !dbg !324
  %or11 = or i32 %shr, %shl10, !dbg !325
  %15 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !326
  %simple_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %15, i32 0, i32 6, !dbg !327
  %16 = load i8, ptr %simple_422, align 2, !dbg !327, !range !322, !noundef !323
  %tobool12 = trunc i8 %16 to i1, !dbg !327
  %conv13 = zext i1 %tobool12 to i32, !dbg !326
  %shl14 = shl i32 %conv13, 3, !dbg !328
  %or15 = or i32 %or11, %shl14, !dbg !329
  %17 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !330
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, ptr %17, i32 0, i32 2, !dbg !331
  %18 = load i8, ptr %convert_rgb, align 2, !dbg !331, !range !322, !noundef !323
  %tobool16 = trunc i8 %18 to i1, !dbg !331
  %conv17 = zext i1 %tobool16 to i32, !dbg !330
  %shl18 = shl i32 %conv17, 4, !dbg !332
  %or19 = or i32 %or15, %shl18, !dbg !333
  %19 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !334
  %block_pred_enable = getelementptr inbounds %struct.drm_dsc_config, ptr %19, i32 0, i32 17, !dbg !335
  %20 = load i8, ptr %block_pred_enable, align 2, !dbg !335, !range !322, !noundef !323
  %tobool20 = trunc i8 %20 to i1, !dbg !335
  %conv21 = zext i1 %tobool20 to i32, !dbg !334
  %shl22 = shl i32 %conv21, 5, !dbg !336
  %or23 = or i32 %or19, %shl22, !dbg !337
  %conv24 = trunc i32 %or23 to i8, !dbg !338
  %21 = load ptr, ptr %pps_payload.addr, align 8, !dbg !339
  %pps_4 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %21, i32 0, i32 4, !dbg !340
  store i8 %conv24, ptr %pps_4, align 1, !dbg !341
  %22 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !342
  %bits_per_pixel25 = getelementptr inbounds %struct.drm_dsc_config, ptr %22, i32 0, i32 11, !dbg !343
  %23 = load i16, ptr %bits_per_pixel25, align 2, !dbg !343
  %conv26 = zext i16 %23 to i32, !dbg !342
  %and27 = and i32 %conv26, 255, !dbg !344
  %conv28 = trunc i32 %and27 to i8, !dbg !345
  %24 = load ptr, ptr %pps_payload.addr, align 8, !dbg !346
  %bits_per_pixel_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %24, i32 0, i32 5, !dbg !347
  store i8 %conv28, ptr %bits_per_pixel_low, align 1, !dbg !348
  %25 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !349
  %pic_height = getelementptr inbounds %struct.drm_dsc_config, ptr %25, i32 0, i32 8, !dbg !349
  %26 = load i16, ptr %pic_height, align 2, !dbg !349
  %27 = call i16 @llvm.bswap.i16(i16 %26), !dbg !349
  %28 = load ptr, ptr %pps_payload.addr, align 8, !dbg !350
  %pic_height29 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %28, i32 0, i32 6, !dbg !351
  store i16 %27, ptr %pic_height29, align 1, !dbg !352
  %29 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !353
  %pic_width = getelementptr inbounds %struct.drm_dsc_config, ptr %29, i32 0, i32 7, !dbg !353
  %30 = load i16, ptr %pic_width, align 2, !dbg !353
  %31 = call i16 @llvm.bswap.i16(i16 %30), !dbg !353
  %32 = load ptr, ptr %pps_payload.addr, align 8, !dbg !354
  %pic_width30 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %32, i32 0, i32 7, !dbg !355
  store i16 %31, ptr %pic_width30, align 1, !dbg !356
  %33 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !357
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, ptr %33, i32 0, i32 5, !dbg !357
  %34 = load i16, ptr %slice_height, align 2, !dbg !357
  %35 = call i16 @llvm.bswap.i16(i16 %34), !dbg !357
  %36 = load ptr, ptr %pps_payload.addr, align 8, !dbg !358
  %slice_height31 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %36, i32 0, i32 8, !dbg !359
  store i16 %35, ptr %slice_height31, align 1, !dbg !360
  %37 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !361
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, ptr %37, i32 0, i32 4, !dbg !361
  %38 = load i16, ptr %slice_width, align 2, !dbg !361
  %39 = call i16 @llvm.bswap.i16(i16 %38), !dbg !361
  %40 = load ptr, ptr %pps_payload.addr, align 8, !dbg !362
  %slice_width32 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %40, i32 0, i32 9, !dbg !363
  store i16 %39, ptr %slice_width32, align 1, !dbg !364
  %41 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !365
  %slice_chunk_size = getelementptr inbounds %struct.drm_dsc_config, ptr %41, i32 0, i32 33, !dbg !365
  %42 = load i16, ptr %slice_chunk_size, align 2, !dbg !365
  %43 = call i16 @llvm.bswap.i16(i16 %42), !dbg !365
  %44 = load ptr, ptr %pps_payload.addr, align 8, !dbg !366
  %chunk_size = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %44, i32 0, i32 10, !dbg !367
  store i16 %43, ptr %chunk_size, align 1, !dbg !368
  %45 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !369
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %45, i32 0, i32 15, !dbg !370
  %46 = load i16, ptr %initial_xmit_delay, align 2, !dbg !370
  %conv33 = zext i16 %46 to i32, !dbg !369
  %and34 = and i32 %conv33, 768, !dbg !371
  %shr35 = ashr i32 %and34, 8, !dbg !372
  %conv36 = trunc i32 %shr35 to i8, !dbg !373
  %47 = load ptr, ptr %pps_payload.addr, align 8, !dbg !374
  %initial_xmit_delay_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %47, i32 0, i32 11, !dbg !375
  store i8 %conv36, ptr %initial_xmit_delay_high, align 1, !dbg !376
  %48 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !377
  %initial_xmit_delay37 = getelementptr inbounds %struct.drm_dsc_config, ptr %48, i32 0, i32 15, !dbg !378
  %49 = load i16, ptr %initial_xmit_delay37, align 2, !dbg !378
  %conv38 = zext i16 %49 to i32, !dbg !377
  %and39 = and i32 %conv38, 255, !dbg !379
  %conv40 = trunc i32 %and39 to i8, !dbg !380
  %50 = load ptr, ptr %pps_payload.addr, align 8, !dbg !381
  %initial_xmit_delay_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %50, i32 0, i32 12, !dbg !382
  store i8 %conv40, ptr %initial_xmit_delay_low, align 1, !dbg !383
  %51 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !384
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %51, i32 0, i32 16, !dbg !384
  %52 = load i16, ptr %initial_dec_delay, align 2, !dbg !384
  %53 = call i16 @llvm.bswap.i16(i16 %52), !dbg !384
  %54 = load ptr, ptr %pps_payload.addr, align 8, !dbg !385
  %initial_dec_delay41 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %54, i32 0, i32 13, !dbg !386
  store i16 %53, ptr %initial_dec_delay41, align 1, !dbg !387
  %55 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !388
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, ptr %55, i32 0, i32 25, !dbg !389
  %56 = load i8, ptr %initial_scale_value, align 2, !dbg !389
  %57 = load ptr, ptr %pps_payload.addr, align 8, !dbg !390
  %initial_scale_value42 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %57, i32 0, i32 15, !dbg !391
  store i8 %56, ptr %initial_scale_value42, align 1, !dbg !392
  %58 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !393
  %scale_increment_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %58, i32 0, i32 27, !dbg !393
  %59 = load i16, ptr %scale_increment_interval, align 2, !dbg !393
  %60 = call i16 @llvm.bswap.i16(i16 %59), !dbg !393
  %61 = load ptr, ptr %pps_payload.addr, align 8, !dbg !394
  %scale_increment_interval43 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %61, i32 0, i32 16, !dbg !395
  store i16 %60, ptr %scale_increment_interval43, align 1, !dbg !396
  %62 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !397
  %scale_decrement_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %62, i32 0, i32 26, !dbg !398
  %63 = load i16, ptr %scale_decrement_interval, align 2, !dbg !398
  %conv44 = zext i16 %63 to i32, !dbg !397
  %and45 = and i32 %conv44, 3840, !dbg !399
  %shr46 = ashr i32 %and45, 8, !dbg !400
  %conv47 = trunc i32 %shr46 to i8, !dbg !401
  %64 = load ptr, ptr %pps_payload.addr, align 8, !dbg !402
  %scale_decrement_interval_high = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %64, i32 0, i32 17, !dbg !403
  store i8 %conv47, ptr %scale_decrement_interval_high, align 1, !dbg !404
  %65 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !405
  %scale_decrement_interval48 = getelementptr inbounds %struct.drm_dsc_config, ptr %65, i32 0, i32 26, !dbg !406
  %66 = load i16, ptr %scale_decrement_interval48, align 2, !dbg !406
  %conv49 = zext i16 %66 to i32, !dbg !405
  %and50 = and i32 %conv49, 255, !dbg !407
  %conv51 = trunc i32 %and50 to i8, !dbg !408
  %67 = load ptr, ptr %pps_payload.addr, align 8, !dbg !409
  %scale_decrement_interval_low = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %67, i32 0, i32 18, !dbg !410
  store i8 %conv51, ptr %scale_decrement_interval_low, align 1, !dbg !411
  %68 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !412
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %68, i32 0, i32 18, !dbg !413
  %69 = load i8, ptr %first_line_bpg_offset, align 1, !dbg !413
  %70 = load ptr, ptr %pps_payload.addr, align 8, !dbg !414
  %first_line_bpg_offset52 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %70, i32 0, i32 20, !dbg !415
  store i8 %69, ptr %first_line_bpg_offset52, align 1, !dbg !416
  %71 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !417
  %nfl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %71, i32 0, i32 28, !dbg !417
  %72 = load i16, ptr %nfl_bpg_offset, align 2, !dbg !417
  %73 = call i16 @llvm.bswap.i16(i16 %72), !dbg !417
  %74 = load ptr, ptr %pps_payload.addr, align 8, !dbg !418
  %nfl_bpg_offset53 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %74, i32 0, i32 21, !dbg !419
  store i16 %73, ptr %nfl_bpg_offset53, align 1, !dbg !420
  %75 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !421
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %75, i32 0, i32 29, !dbg !421
  %76 = load i16, ptr %slice_bpg_offset, align 2, !dbg !421
  %77 = call i16 @llvm.bswap.i16(i16 %76), !dbg !421
  %78 = load ptr, ptr %pps_payload.addr, align 8, !dbg !422
  %slice_bpg_offset54 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %78, i32 0, i32 22, !dbg !423
  store i16 %77, ptr %slice_bpg_offset54, align 1, !dbg !424
  %79 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !425
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %79, i32 0, i32 19, !dbg !425
  %80 = load i16, ptr %initial_offset, align 2, !dbg !425
  %81 = call i16 @llvm.bswap.i16(i16 %80), !dbg !425
  %82 = load ptr, ptr %pps_payload.addr, align 8, !dbg !426
  %initial_offset55 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %82, i32 0, i32 23, !dbg !427
  store i16 %81, ptr %initial_offset55, align 1, !dbg !428
  %83 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !429
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %83, i32 0, i32 30, !dbg !429
  %84 = load i16, ptr %final_offset, align 2, !dbg !429
  %85 = call i16 @llvm.bswap.i16(i16 %84), !dbg !429
  %86 = load ptr, ptr %pps_payload.addr, align 8, !dbg !430
  %final_offset56 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %86, i32 0, i32 24, !dbg !431
  store i16 %85, ptr %final_offset56, align 1, !dbg !432
  %87 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !433
  %flatness_min_qp = getelementptr inbounds %struct.drm_dsc_config, ptr %87, i32 0, i32 23, !dbg !434
  %88 = load i8, ptr %flatness_min_qp, align 2, !dbg !434
  %89 = load ptr, ptr %pps_payload.addr, align 8, !dbg !435
  %flatness_min_qp57 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %89, i32 0, i32 25, !dbg !436
  store i8 %88, ptr %flatness_min_qp57, align 1, !dbg !437
  %90 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !438
  %flatness_max_qp = getelementptr inbounds %struct.drm_dsc_config, ptr %90, i32 0, i32 24, !dbg !439
  %91 = load i8, ptr %flatness_max_qp, align 1, !dbg !439
  %92 = load ptr, ptr %pps_payload.addr, align 8, !dbg !440
  %flatness_max_qp58 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %92, i32 0, i32 26, !dbg !441
  store i8 %91, ptr %flatness_max_qp58, align 1, !dbg !442
  %93 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !443
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %93, i32 0, i32 22, !dbg !443
  %94 = load i16, ptr %rc_model_size, align 2, !dbg !443
  %95 = call i16 @llvm.bswap.i16(i16 %94), !dbg !443
  %96 = load ptr, ptr %pps_payload.addr, align 8, !dbg !444
  %rc_model_size59 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %96, i32 0, i32 27, !dbg !445
  store i16 %95, ptr %rc_model_size59, align 1, !dbg !446
  %97 = load ptr, ptr %pps_payload.addr, align 8, !dbg !447
  %rc_edge_factor = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %97, i32 0, i32 28, !dbg !448
  store i8 6, ptr %rc_edge_factor, align 1, !dbg !449
  %98 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !450
  %rc_quant_incr_limit0 = getelementptr inbounds %struct.drm_dsc_config, ptr %98, i32 0, i32 14, !dbg !451
  %99 = load i8, ptr %rc_quant_incr_limit0, align 2, !dbg !451
  %100 = load ptr, ptr %pps_payload.addr, align 8, !dbg !452
  %rc_quant_incr_limit060 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %100, i32 0, i32 29, !dbg !453
  store i8 %99, ptr %rc_quant_incr_limit060, align 1, !dbg !454
  %101 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !455
  %rc_quant_incr_limit1 = getelementptr inbounds %struct.drm_dsc_config, ptr %101, i32 0, i32 13, !dbg !456
  %102 = load i8, ptr %rc_quant_incr_limit1, align 1, !dbg !456
  %103 = load ptr, ptr %pps_payload.addr, align 8, !dbg !457
  %rc_quant_incr_limit161 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %103, i32 0, i32 30, !dbg !458
  store i8 %102, ptr %rc_quant_incr_limit161, align 1, !dbg !459
  %104 = load ptr, ptr %pps_payload.addr, align 8, !dbg !460
  %rc_tgt_offset = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %104, i32 0, i32 31, !dbg !461
  store i8 51, ptr %rc_tgt_offset, align 1, !dbg !462
  store i32 0, ptr %i, align 4, !dbg !463
  br label %for.cond, !dbg !465

for.cond:                                         ; preds = %for.inc, %do.end
  %105 = load i32, ptr %i, align 4, !dbg !466
  %cmp = icmp slt i32 %105, 14, !dbg !468
  br i1 %cmp, label %for.body, label %for.end, !dbg !469

for.body:                                         ; preds = %for.cond
  %106 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !470
  %rc_buf_thresh = getelementptr inbounds %struct.drm_dsc_config, ptr %106, i32 0, i32 20, !dbg !471
  %107 = load i32, ptr %i, align 4, !dbg !472
  %idxprom = sext i32 %107 to i64, !dbg !470
  %arrayidx = getelementptr [14 x i16], ptr %rc_buf_thresh, i64 0, i64 %idxprom, !dbg !470
  %108 = load i16, ptr %arrayidx, align 2, !dbg !470
  %conv63 = trunc i16 %108 to i8, !dbg !470
  %109 = load ptr, ptr %pps_payload.addr, align 8, !dbg !473
  %rc_buf_thresh64 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %109, i32 0, i32 32, !dbg !474
  %110 = load i32, ptr %i, align 4, !dbg !475
  %idxprom65 = sext i32 %110 to i64, !dbg !473
  %arrayidx66 = getelementptr [14 x i8], ptr %rc_buf_thresh64, i64 0, i64 %idxprom65, !dbg !473
  store i8 %conv63, ptr %arrayidx66, align 1, !dbg !476
  br label %for.inc, !dbg !473

for.inc:                                          ; preds = %for.body
  %111 = load i32, ptr %i, align 4, !dbg !477
  %inc = add i32 %111, 1, !dbg !477
  store i32 %inc, ptr %i, align 4, !dbg !477
  br label %for.cond, !dbg !478, !llvm.loop !479

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !483
  br label %for.cond67, !dbg !485

for.cond67:                                       ; preds = %for.inc89, %for.end
  %112 = load i32, ptr %i, align 4, !dbg !486
  %cmp68 = icmp slt i32 %112, 15, !dbg !488
  br i1 %cmp68, label %for.body70, label %for.end91, !dbg !489

for.body70:                                       ; preds = %for.cond67
  %113 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !490
  %rc_range_params = getelementptr inbounds %struct.drm_dsc_config, ptr %113, i32 0, i32 21, !dbg !490
  %114 = load i32, ptr %i, align 4, !dbg !490
  %idxprom71 = sext i32 %114 to i64, !dbg !490
  %arrayidx72 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params, i64 0, i64 %idxprom71, !dbg !490
  %range_min_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx72, i32 0, i32 0, !dbg !490
  %115 = load i8, ptr %range_min_qp, align 1, !dbg !490
  %conv73 = zext i8 %115 to i32, !dbg !490
  %shl74 = shl i32 %conv73, 11, !dbg !490
  %116 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !490
  %rc_range_params75 = getelementptr inbounds %struct.drm_dsc_config, ptr %116, i32 0, i32 21, !dbg !490
  %117 = load i32, ptr %i, align 4, !dbg !490
  %idxprom76 = sext i32 %117 to i64, !dbg !490
  %arrayidx77 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params75, i64 0, i64 %idxprom76, !dbg !490
  %range_max_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx77, i32 0, i32 1, !dbg !490
  %118 = load i8, ptr %range_max_qp, align 1, !dbg !490
  %conv78 = zext i8 %118 to i32, !dbg !490
  %shl79 = shl i32 %conv78, 6, !dbg !490
  %or80 = or i32 %shl74, %shl79, !dbg !490
  %119 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !490
  %rc_range_params81 = getelementptr inbounds %struct.drm_dsc_config, ptr %119, i32 0, i32 21, !dbg !490
  %120 = load i32, ptr %i, align 4, !dbg !490
  %idxprom82 = sext i32 %120 to i64, !dbg !490
  %arrayidx83 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params81, i64 0, i64 %idxprom82, !dbg !490
  %range_bpg_offset = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx83, i32 0, i32 2, !dbg !490
  %121 = load i8, ptr %range_bpg_offset, align 1, !dbg !490
  %conv84 = zext i8 %121 to i32, !dbg !490
  %or85 = or i32 %or80, %conv84, !dbg !490
  %conv86 = trunc i32 %or85 to i16, !dbg !490
  %122 = call i16 @llvm.bswap.i16(i16 %conv86), !dbg !490
  %123 = load ptr, ptr %pps_payload.addr, align 8, !dbg !492
  %rc_range_parameters = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %123, i32 0, i32 33, !dbg !493
  %124 = load i32, ptr %i, align 4, !dbg !494
  %idxprom87 = sext i32 %124 to i64, !dbg !492
  %arrayidx88 = getelementptr [15 x i16], ptr %rc_range_parameters, i64 0, i64 %idxprom87, !dbg !492
  store i16 %122, ptr %arrayidx88, align 1, !dbg !495
  br label %for.inc89, !dbg !496

for.inc89:                                        ; preds = %for.body70
  %125 = load i32, ptr %i, align 4, !dbg !497
  %inc90 = add i32 %125, 1, !dbg !497
  store i32 %inc90, ptr %i, align 4, !dbg !497
  br label %for.cond67, !dbg !498, !llvm.loop !499

for.end91:                                        ; preds = %for.cond67
  %126 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !501
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %126, i32 0, i32 37, !dbg !502
  %127 = load i8, ptr %native_422, align 2, !dbg !502, !range !322, !noundef !323
  %tobool92 = trunc i8 %127 to i1, !dbg !502
  %conv93 = zext i1 %tobool92 to i32, !dbg !501
  %128 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !503
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, ptr %128, i32 0, i32 38, !dbg !504
  %129 = load i8, ptr %native_420, align 1, !dbg !504, !range !322, !noundef !323
  %tobool94 = trunc i8 %129 to i1, !dbg !504
  %conv95 = zext i1 %tobool94 to i32, !dbg !503
  %shl96 = shl i32 %conv95, 1, !dbg !505
  %or97 = or i32 %conv93, %shl96, !dbg !506
  %conv98 = trunc i32 %or97 to i8, !dbg !501
  %130 = load ptr, ptr %pps_payload.addr, align 8, !dbg !507
  %native_422_420 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %130, i32 0, i32 34, !dbg !508
  store i8 %conv98, ptr %native_422_420, align 1, !dbg !509
  %131 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !510
  %second_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %131, i32 0, i32 39, !dbg !511
  %132 = load i8, ptr %second_line_bpg_offset, align 2, !dbg !511
  %133 = load ptr, ptr %pps_payload.addr, align 8, !dbg !512
  %second_line_bpg_offset99 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %133, i32 0, i32 35, !dbg !513
  store i8 %132, ptr %second_line_bpg_offset99, align 1, !dbg !514
  %134 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !515
  %nsl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %134, i32 0, i32 40, !dbg !515
  %135 = load i16, ptr %nsl_bpg_offset, align 2, !dbg !515
  %136 = call i16 @llvm.bswap.i16(i16 %135), !dbg !515
  %137 = load ptr, ptr %pps_payload.addr, align 8, !dbg !516
  %nsl_bpg_offset100 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %137, i32 0, i32 36, !dbg !517
  store i16 %136, ptr %nsl_bpg_offset100, align 1, !dbg !518
  %138 = load ptr, ptr %dsc_cfg.addr, align 8, !dbg !519
  %second_line_offset_adj = getelementptr inbounds %struct.drm_dsc_config, ptr %138, i32 0, i32 41, !dbg !519
  %139 = load i16, ptr %second_line_offset_adj, align 2, !dbg !519
  %140 = call i16 @llvm.bswap.i16(i16 %139), !dbg !519
  %141 = load ptr, ptr %pps_payload.addr, align 8, !dbg !520
  %second_line_offset_adj101 = getelementptr inbounds %struct.drm_dsc_picture_parameter_set, ptr %141, i32 0, i32 37, !dbg !521
  store i16 %140, ptr %second_line_offset_adj101, align 1, !dbg !522
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_dsc_set_const_params(ptr noundef %vdsc_cfg) #0 align 16 !dbg !524 {
entry:
  %vdsc_cfg.addr = alloca ptr, align 8
  store ptr %vdsc_cfg, ptr %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdsc_cfg.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !531
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 22, !dbg !533
  %1 = load i16, ptr %rc_model_size, align 2, !dbg !533
  %tobool = icmp ne i16 %1, 0, !dbg !531
  br i1 %tobool, label %if.end, label %if.then, !dbg !534

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !535
  %rc_model_size1 = getelementptr inbounds %struct.drm_dsc_config, ptr %2, i32 0, i32 22, !dbg !536
  store i16 8192, ptr %rc_model_size1, align 2, !dbg !537
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !538
  %rc_edge_factor = getelementptr inbounds %struct.drm_dsc_config, ptr %3, i32 0, i32 12, !dbg !539
  store i8 6, ptr %rc_edge_factor, align 2, !dbg !540
  %4 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !541
  %rc_tgt_offset_high = getelementptr inbounds %struct.drm_dsc_config, ptr %4, i32 0, i32 9, !dbg !542
  store i8 3, ptr %rc_tgt_offset_high, align 2, !dbg !543
  %5 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !544
  %rc_tgt_offset_low = getelementptr inbounds %struct.drm_dsc_config, ptr %5, i32 0, i32 10, !dbg !545
  store i8 3, ptr %rc_tgt_offset_low, align 1, !dbg !546
  %6 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !547
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %6, i32 0, i32 1, !dbg !549
  %7 = load i8, ptr %bits_per_component, align 1, !dbg !549
  %conv = zext i8 %7 to i32, !dbg !547
  %cmp = icmp sle i32 %conv, 10, !dbg !550
  br i1 %cmp, label %if.then3, label %if.else, !dbg !551

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !552
  %mux_word_size = getelementptr inbounds %struct.drm_dsc_config, ptr %8, i32 0, i32 32, !dbg !553
  store i8 48, ptr %mux_word_size, align 1, !dbg !554
  br label %if.end5, !dbg !552

if.else:                                          ; preds = %if.end
  %9 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !555
  %mux_word_size4 = getelementptr inbounds %struct.drm_dsc_config, ptr %9, i32 0, i32 32, !dbg !556
  store i8 64, ptr %mux_word_size4, align 1, !dbg !557
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  ret void, !dbg !558
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_dsc_set_rc_buf_thresh(ptr noundef %vdsc_cfg) #0 align 16 !dbg !559 {
entry:
  %vdsc_cfg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %vdsc_cfg, ptr %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdsc_cfg.addr, metadata !561, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %i, metadata !562, metadata !DIExpression()), !dbg !565
  br label %do.body, !dbg !566

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !567

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !567

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !569

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !570

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !570

do.end3:                                          ; preds = %do.cond2
  store i32 0, ptr %i, align 4, !dbg !572
  br label %for.cond, !dbg !574

for.cond:                                         ; preds = %for.inc, %do.end3
  %0 = load i32, ptr %i, align 4, !dbg !575
  %conv = sext i32 %0 to i64, !dbg !575
  %cmp = icmp ult i64 %conv, 14, !dbg !577
  br i1 %cmp, label %for.body, label %for.end, !dbg !578

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !579
  %idxprom = sext i32 %1 to i64, !dbg !580
  %arrayidx = getelementptr [14 x i16], ptr @drm_dsc_rc_buf_thresh, i64 0, i64 %idxprom, !dbg !580
  %2 = load i16, ptr %arrayidx, align 2, !dbg !580
  %conv5 = zext i16 %2 to i32, !dbg !580
  %shr = ashr i32 %conv5, 6, !dbg !581
  %conv6 = trunc i32 %shr to i16, !dbg !580
  %3 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !582
  %rc_buf_thresh = getelementptr inbounds %struct.drm_dsc_config, ptr %3, i32 0, i32 20, !dbg !583
  %4 = load i32, ptr %i, align 4, !dbg !584
  %idxprom7 = sext i32 %4 to i64, !dbg !582
  %arrayidx8 = getelementptr [14 x i16], ptr %rc_buf_thresh, i64 0, i64 %idxprom7, !dbg !582
  store i16 %conv6, ptr %arrayidx8, align 2, !dbg !585
  br label %for.inc, !dbg !582

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !dbg !586
  %inc = add i32 %5, 1, !dbg !586
  store i32 %inc, ptr %i, align 4, !dbg !586
  br label %for.cond, !dbg !587, !llvm.loop !588

for.end:                                          ; preds = %for.cond
  %6 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !590
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %6, i32 0, i32 11, !dbg !592
  %7 = load i16, ptr %bits_per_pixel, align 2, !dbg !592
  %conv9 = zext i16 %7 to i32, !dbg !590
  %cmp10 = icmp eq i32 %conv9, 96, !dbg !593
  br i1 %cmp10, label %if.then, label %if.end, !dbg !594

if.then:                                          ; preds = %for.end
  %8 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !595
  %rc_buf_thresh12 = getelementptr inbounds %struct.drm_dsc_config, ptr %8, i32 0, i32 20, !dbg !597
  %arrayidx13 = getelementptr [14 x i16], ptr %rc_buf_thresh12, i64 0, i64 12, !dbg !595
  store i16 124, ptr %arrayidx13, align 2, !dbg !598
  %9 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !599
  %rc_buf_thresh14 = getelementptr inbounds %struct.drm_dsc_config, ptr %9, i32 0, i32 20, !dbg !600
  %arrayidx15 = getelementptr [14 x i16], ptr %rc_buf_thresh14, i64 0, i64 13, !dbg !599
  store i16 125, ptr %arrayidx15, align 2, !dbg !601
  br label %if.end, !dbg !602

if.end:                                           ; preds = %if.then, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !603
  ret void, !dbg !603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dsc_setup_rc_params(ptr noundef %vdsc_cfg, i32 noundef %type) #0 align 16 !dbg !604 {
entry:
  %retval = alloca i32, align 4
  %vdsc_cfg.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %data = alloca ptr, align 8
  %rc_params = alloca ptr, align 8
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdsc_cfg, ptr %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdsc_cfg.addr, metadata !608, metadata !DIExpression()), !dbg !622
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !609, metadata !DIExpression()), !dbg !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #6, !dbg !624
  call void @llvm.dbg.declare(metadata ptr %data, metadata !610, metadata !DIExpression()), !dbg !625
  call void @llvm.lifetime.start.p0(i64 8, ptr %rc_params) #6, !dbg !626
  call void @llvm.dbg.declare(metadata ptr %rc_params, metadata !612, metadata !DIExpression()), !dbg !627
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %i, metadata !615, metadata !DIExpression()), !dbg !629
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !616, metadata !DIExpression()), !dbg !630
  %0 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !630
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 11, !dbg !630
  %1 = load i16, ptr %bits_per_pixel, align 2, !dbg !630
  %tobool = icmp ne i16 %1, 0, !dbg !630
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !630

lor.rhs:                                          ; preds = %entry
  %2 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !630
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %2, i32 0, i32 1, !dbg !630
  %3 = load i8, ptr %bits_per_component, align 1, !dbg !630
  %tobool1 = icmp ne i8 %3, 0, !dbg !630
  %lnot = xor i1 %tobool1, true, !dbg !630
  br label %lor.end, !dbg !630

lor.end:                                          ; preds = %lor.rhs, %entry
  %4 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %4, true, !dbg !630
  %lnot3 = xor i1 %lnot2, true, !dbg !630
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !630
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !630
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !631
  %tobool4 = icmp ne i32 %5, 0, !dbg !631
  %lnot5 = xor i1 %tobool4, true, !dbg !631
  %lnot7 = xor i1 %lnot5, true, !dbg !631
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !631
  %conv = sext i32 %lnot.ext8 to i64, !dbg !631
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !631
  %tobool9 = icmp ne i64 %expval, 0, !dbg !631
  br i1 %tobool9, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !631

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !632
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !619, metadata !DIExpression()), !dbg !632
  store i32 2307, ptr %__flags, align 4, !dbg !632
  br label %do.body10, !dbg !632

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !633

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !633

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !632

do.body11:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !635
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1249, i32 %6, i64 12) #6, !dbg !635, !srcloc !637
  br label %do.cond12, !dbg !635

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !635

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !632

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !638

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !638

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !631
  br label %do.cond17, !dbg !632

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !632

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !632

if.end:                                           ; preds = %do.end18, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !630
  %tobool19 = icmp ne i32 %7, 0, !dbg !630
  %lnot20 = xor i1 %tobool19, true, !dbg !630
  %lnot22 = xor i1 %lnot20, true, !dbg !630
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !630
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !630
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !630
  store i64 %expval25, ptr %tmp, align 8, !dbg !631
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !640
  %8 = load i64, ptr %tmp, align 8, !dbg !630
  %tobool26 = icmp ne i64 %8, 0, !dbg !640
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !641

if.then27:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !642
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !642

if.end28:                                         ; preds = %if.end
  %9 = load i32, ptr %type.addr, align 4, !dbg !643
  switch i32 %9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb29
    i32 2, label %sw.bb30
    i32 3, label %sw.bb31
  ], !dbg !644

sw.bb:                                            ; preds = %if.end28
  store ptr @rc_parameters_1_2_444, ptr %data, align 8, !dbg !645
  br label %sw.epilog, !dbg !647

sw.bb29:                                          ; preds = %if.end28
  store ptr @rc_parameters_pre_scr, ptr %data, align 8, !dbg !648
  br label %sw.epilog, !dbg !649

sw.bb30:                                          ; preds = %if.end28
  store ptr @rc_parameters_1_2_422, ptr %data, align 8, !dbg !650
  br label %sw.epilog, !dbg !651

sw.bb31:                                          ; preds = %if.end28
  store ptr @rc_parameters_1_2_420, ptr %data, align 8, !dbg !652
  br label %sw.epilog, !dbg !653

sw.default:                                       ; preds = %if.end28
  store i32 -22, ptr %retval, align 4, !dbg !654
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !654

sw.epilog:                                        ; preds = %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb
  %10 = load ptr, ptr %data, align 8, !dbg !655
  %11 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !656
  %bits_per_pixel32 = getelementptr inbounds %struct.drm_dsc_config, ptr %11, i32 0, i32 11, !dbg !657
  %12 = load i16, ptr %bits_per_pixel32, align 2, !dbg !657
  %13 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !658
  %bits_per_component33 = getelementptr inbounds %struct.drm_dsc_config, ptr %13, i32 0, i32 1, !dbg !659
  %14 = load i8, ptr %bits_per_component33, align 1, !dbg !659
  %call = call ptr @get_rc_params(ptr noundef %10, i16 noundef zeroext %12, i8 noundef zeroext %14) #7, !dbg !660
  store ptr %call, ptr %rc_params, align 8, !dbg !661
  %15 = load ptr, ptr %rc_params, align 8, !dbg !662
  %tobool34 = icmp ne ptr %15, null, !dbg !662
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !664

if.then35:                                        ; preds = %sw.epilog
  store i32 -22, ptr %retval, align 4, !dbg !665
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !665

if.end36:                                         ; preds = %sw.epilog
  %16 = load ptr, ptr %rc_params, align 8, !dbg !666
  %first_line_bpg_offset = getelementptr inbounds %struct.rc_parameters, ptr %16, i32 0, i32 1, !dbg !667
  %17 = load i8, ptr %first_line_bpg_offset, align 2, !dbg !667
  %18 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !668
  %first_line_bpg_offset37 = getelementptr inbounds %struct.drm_dsc_config, ptr %18, i32 0, i32 18, !dbg !669
  store i8 %17, ptr %first_line_bpg_offset37, align 1, !dbg !670
  %19 = load ptr, ptr %rc_params, align 8, !dbg !671
  %initial_xmit_delay = getelementptr inbounds %struct.rc_parameters, ptr %19, i32 0, i32 0, !dbg !672
  %20 = load i16, ptr %initial_xmit_delay, align 2, !dbg !672
  %21 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !673
  %initial_xmit_delay38 = getelementptr inbounds %struct.drm_dsc_config, ptr %21, i32 0, i32 15, !dbg !674
  store i16 %20, ptr %initial_xmit_delay38, align 2, !dbg !675
  %22 = load ptr, ptr %rc_params, align 8, !dbg !676
  %initial_offset = getelementptr inbounds %struct.rc_parameters, ptr %22, i32 0, i32 2, !dbg !677
  %23 = load i16, ptr %initial_offset, align 2, !dbg !677
  %24 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !678
  %initial_offset39 = getelementptr inbounds %struct.drm_dsc_config, ptr %24, i32 0, i32 19, !dbg !679
  store i16 %23, ptr %initial_offset39, align 2, !dbg !680
  %25 = load ptr, ptr %rc_params, align 8, !dbg !681
  %flatness_min_qp = getelementptr inbounds %struct.rc_parameters, ptr %25, i32 0, i32 3, !dbg !682
  %26 = load i8, ptr %flatness_min_qp, align 2, !dbg !682
  %27 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !683
  %flatness_min_qp40 = getelementptr inbounds %struct.drm_dsc_config, ptr %27, i32 0, i32 23, !dbg !684
  store i8 %26, ptr %flatness_min_qp40, align 2, !dbg !685
  %28 = load ptr, ptr %rc_params, align 8, !dbg !686
  %flatness_max_qp = getelementptr inbounds %struct.rc_parameters, ptr %28, i32 0, i32 4, !dbg !687
  %29 = load i8, ptr %flatness_max_qp, align 1, !dbg !687
  %30 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !688
  %flatness_max_qp41 = getelementptr inbounds %struct.drm_dsc_config, ptr %30, i32 0, i32 24, !dbg !689
  store i8 %29, ptr %flatness_max_qp41, align 1, !dbg !690
  %31 = load ptr, ptr %rc_params, align 8, !dbg !691
  %rc_quant_incr_limit0 = getelementptr inbounds %struct.rc_parameters, ptr %31, i32 0, i32 5, !dbg !692
  %32 = load i8, ptr %rc_quant_incr_limit0, align 2, !dbg !692
  %33 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !693
  %rc_quant_incr_limit042 = getelementptr inbounds %struct.drm_dsc_config, ptr %33, i32 0, i32 14, !dbg !694
  store i8 %32, ptr %rc_quant_incr_limit042, align 2, !dbg !695
  %34 = load ptr, ptr %rc_params, align 8, !dbg !696
  %rc_quant_incr_limit1 = getelementptr inbounds %struct.rc_parameters, ptr %34, i32 0, i32 6, !dbg !697
  %35 = load i8, ptr %rc_quant_incr_limit1, align 1, !dbg !697
  %36 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !698
  %rc_quant_incr_limit143 = getelementptr inbounds %struct.drm_dsc_config, ptr %36, i32 0, i32 13, !dbg !699
  store i8 %35, ptr %rc_quant_incr_limit143, align 1, !dbg !700
  store i32 0, ptr %i, align 4, !dbg !701
  br label %for.cond, !dbg !703

for.cond:                                         ; preds = %for.inc, %if.end36
  %37 = load i32, ptr %i, align 4, !dbg !704
  %cmp = icmp slt i32 %37, 15, !dbg !706
  br i1 %cmp, label %for.body, label %for.end, !dbg !707

for.body:                                         ; preds = %for.cond
  %38 = load ptr, ptr %rc_params, align 8, !dbg !708
  %rc_range_params = getelementptr inbounds %struct.rc_parameters, ptr %38, i32 0, i32 7, !dbg !710
  %39 = load i32, ptr %i, align 4, !dbg !711
  %idxprom = sext i32 %39 to i64, !dbg !708
  %arrayidx = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params, i64 0, i64 %idxprom, !dbg !708
  %range_min_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx, i32 0, i32 0, !dbg !712
  %40 = load i8, ptr %range_min_qp, align 1, !dbg !712
  %41 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !713
  %rc_range_params45 = getelementptr inbounds %struct.drm_dsc_config, ptr %41, i32 0, i32 21, !dbg !714
  %42 = load i32, ptr %i, align 4, !dbg !715
  %idxprom46 = sext i32 %42 to i64, !dbg !713
  %arrayidx47 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params45, i64 0, i64 %idxprom46, !dbg !713
  %range_min_qp48 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx47, i32 0, i32 0, !dbg !716
  store i8 %40, ptr %range_min_qp48, align 1, !dbg !717
  %43 = load ptr, ptr %rc_params, align 8, !dbg !718
  %rc_range_params49 = getelementptr inbounds %struct.rc_parameters, ptr %43, i32 0, i32 7, !dbg !719
  %44 = load i32, ptr %i, align 4, !dbg !720
  %idxprom50 = sext i32 %44 to i64, !dbg !718
  %arrayidx51 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params49, i64 0, i64 %idxprom50, !dbg !718
  %range_max_qp = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx51, i32 0, i32 1, !dbg !721
  %45 = load i8, ptr %range_max_qp, align 1, !dbg !721
  %46 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !722
  %rc_range_params52 = getelementptr inbounds %struct.drm_dsc_config, ptr %46, i32 0, i32 21, !dbg !723
  %47 = load i32, ptr %i, align 4, !dbg !724
  %idxprom53 = sext i32 %47 to i64, !dbg !722
  %arrayidx54 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params52, i64 0, i64 %idxprom53, !dbg !722
  %range_max_qp55 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx54, i32 0, i32 1, !dbg !725
  store i8 %45, ptr %range_max_qp55, align 1, !dbg !726
  %48 = load ptr, ptr %rc_params, align 8, !dbg !727
  %rc_range_params56 = getelementptr inbounds %struct.rc_parameters, ptr %48, i32 0, i32 7, !dbg !728
  %49 = load i32, ptr %i, align 4, !dbg !729
  %idxprom57 = sext i32 %49 to i64, !dbg !727
  %arrayidx58 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params56, i64 0, i64 %idxprom57, !dbg !727
  %range_bpg_offset = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx58, i32 0, i32 2, !dbg !730
  %50 = load i8, ptr %range_bpg_offset, align 1, !dbg !730
  %conv59 = zext i8 %50 to i32, !dbg !727
  %and = and i32 %conv59, 63, !dbg !731
  %conv60 = trunc i32 %and to i8, !dbg !727
  %51 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !732
  %rc_range_params61 = getelementptr inbounds %struct.drm_dsc_config, ptr %51, i32 0, i32 21, !dbg !733
  %52 = load i32, ptr %i, align 4, !dbg !734
  %idxprom62 = sext i32 %52 to i64, !dbg !732
  %arrayidx63 = getelementptr [15 x %struct.drm_dsc_rc_range_parameters], ptr %rc_range_params61, i64 0, i64 %idxprom62, !dbg !732
  %range_bpg_offset64 = getelementptr inbounds %struct.drm_dsc_rc_range_parameters, ptr %arrayidx63, i32 0, i32 2, !dbg !735
  store i8 %conv60, ptr %range_bpg_offset64, align 1, !dbg !736
  br label %for.inc, !dbg !737

for.inc:                                          ; preds = %for.body
  %53 = load i32, ptr %i, align 4, !dbg !738
  %inc = add i32 %53, 1, !dbg !738
  store i32 %inc, ptr %i, align 4, !dbg !738
  br label %for.cond, !dbg !739, !llvm.loop !740

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !742
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !742

cleanup:                                          ; preds = %for.end, %if.then35, %sw.default, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %rc_params) #6, !dbg !743
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #6, !dbg !743
  %54 = load i32, ptr %retval, align 4, !dbg !743
  ret i32 %54, !dbg !743
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_rc_params(ptr noundef %rc_parameters, i16 noundef zeroext %dsc_bpp, i8 noundef zeroext %bits_per_component) #0 align 16 !dbg !744 {
entry:
  %retval = alloca ptr, align 8
  %rc_parameters.addr = alloca ptr, align 8
  %dsc_bpp.addr = alloca i16, align 2
  %bits_per_component.addr = alloca i8, align 1
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rc_parameters, ptr %rc_parameters.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rc_parameters.addr, metadata !748, metadata !DIExpression()), !dbg !752
  store i16 %dsc_bpp, ptr %dsc_bpp.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %dsc_bpp.addr, metadata !749, metadata !DIExpression()), !dbg !753
  store i8 %bits_per_component, ptr %bits_per_component.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %bits_per_component.addr, metadata !750, metadata !DIExpression()), !dbg !754
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #6, !dbg !755
  call void @llvm.dbg.declare(metadata ptr %i, metadata !751, metadata !DIExpression()), !dbg !756
  store i32 0, ptr %i, align 4, !dbg !757
  br label %for.cond, !dbg !759

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %rc_parameters.addr, align 8, !dbg !760
  %1 = load i32, ptr %i, align 4, !dbg !762
  %idxprom = sext i32 %1 to i64, !dbg !760
  %arrayidx = getelementptr %struct.rc_parameters_data, ptr %0, i64 %idxprom, !dbg !760
  %bpp = getelementptr inbounds %struct.rc_parameters_data, ptr %arrayidx, i32 0, i32 0, !dbg !763
  %2 = load i8, ptr %bpp, align 2, !dbg !763
  %tobool = icmp ne i8 %2, 0, !dbg !764
  br i1 %tobool, label %for.body, label %for.end, !dbg !764

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %rc_parameters.addr, align 8, !dbg !765
  %4 = load i32, ptr %i, align 4, !dbg !767
  %idxprom1 = sext i32 %4 to i64, !dbg !765
  %arrayidx2 = getelementptr %struct.rc_parameters_data, ptr %3, i64 %idxprom1, !dbg !765
  %bpp3 = getelementptr inbounds %struct.rc_parameters_data, ptr %arrayidx2, i32 0, i32 0, !dbg !768
  %5 = load i8, ptr %bpp3, align 2, !dbg !768
  %conv = zext i8 %5 to i32, !dbg !765
  %6 = load i16, ptr %dsc_bpp.addr, align 2, !dbg !769
  %conv4 = zext i16 %6 to i32, !dbg !769
  %cmp = icmp eq i32 %conv, %conv4, !dbg !770
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !771

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %rc_parameters.addr, align 8, !dbg !772
  %8 = load i32, ptr %i, align 4, !dbg !773
  %idxprom6 = sext i32 %8 to i64, !dbg !772
  %arrayidx7 = getelementptr %struct.rc_parameters_data, ptr %7, i64 %idxprom6, !dbg !772
  %bpc = getelementptr inbounds %struct.rc_parameters_data, ptr %arrayidx7, i32 0, i32 1, !dbg !774
  %9 = load i8, ptr %bpc, align 1, !dbg !774
  %conv8 = zext i8 %9 to i32, !dbg !772
  %10 = load i8, ptr %bits_per_component.addr, align 1, !dbg !775
  %conv9 = zext i8 %10 to i32, !dbg !775
  %cmp10 = icmp eq i32 %conv8, %conv9, !dbg !776
  br i1 %cmp10, label %if.then, label %if.end, !dbg !777

if.then:                                          ; preds = %land.lhs.true
  %11 = load ptr, ptr %rc_parameters.addr, align 8, !dbg !778
  %12 = load i32, ptr %i, align 4, !dbg !779
  %idxprom12 = sext i32 %12 to i64, !dbg !778
  %arrayidx13 = getelementptr %struct.rc_parameters_data, ptr %11, i64 %idxprom12, !dbg !778
  %params = getelementptr inbounds %struct.rc_parameters_data, ptr %arrayidx13, i32 0, i32 2, !dbg !780
  store ptr %params, ptr %retval, align 8, !dbg !781
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !781

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !775

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !782
  %inc = add i32 %13, 1, !dbg !782
  store i32 %inc, ptr %i, align 4, !dbg !782
  br label %for.cond, !dbg !783, !llvm.loop !784

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !786

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #6, !dbg !787
  %14 = load ptr, ptr %retval, align 8, !dbg !787
  ret ptr %14, !dbg !787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dsc_compute_rc_parameters(ptr noundef %vdsc_cfg) #0 align 16 !dbg !788 {
entry:
  %retval = alloca i32, align 4
  %vdsc_cfg.addr = alloca ptr, align 8
  %groups_per_line = alloca i64, align 8
  %groups_total = alloca i64, align 8
  %num_extra_mux_bits = alloca i64, align 8
  %slice_bits = alloca i64, align 8
  %hrd_delay = alloca i64, align 8
  %final_scale = alloca i64, align 8
  %rbs_min = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %vdsc_cfg, ptr %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdsc_cfg.addr, metadata !792, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups_per_line) #6, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %groups_per_line, metadata !793, metadata !DIExpression()), !dbg !803
  store i64 0, ptr %groups_per_line, align 8, !dbg !803
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups_total) #6, !dbg !804
  call void @llvm.dbg.declare(metadata ptr %groups_total, metadata !795, metadata !DIExpression()), !dbg !805
  store i64 0, ptr %groups_total, align 8, !dbg !805
  call void @llvm.lifetime.start.p0(i64 8, ptr %num_extra_mux_bits) #6, !dbg !806
  call void @llvm.dbg.declare(metadata ptr %num_extra_mux_bits, metadata !796, metadata !DIExpression()), !dbg !807
  store i64 0, ptr %num_extra_mux_bits, align 8, !dbg !807
  call void @llvm.lifetime.start.p0(i64 8, ptr %slice_bits) #6, !dbg !808
  call void @llvm.dbg.declare(metadata ptr %slice_bits, metadata !797, metadata !DIExpression()), !dbg !809
  store i64 0, ptr %slice_bits, align 8, !dbg !809
  call void @llvm.lifetime.start.p0(i64 8, ptr %hrd_delay) #6, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %hrd_delay, metadata !798, metadata !DIExpression()), !dbg !811
  store i64 0, ptr %hrd_delay, align 8, !dbg !811
  call void @llvm.lifetime.start.p0(i64 8, ptr %final_scale) #6, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %final_scale, metadata !799, metadata !DIExpression()), !dbg !813
  store i64 0, ptr %final_scale, align 8, !dbg !813
  call void @llvm.lifetime.start.p0(i64 8, ptr %rbs_min) #6, !dbg !814
  call void @llvm.dbg.declare(metadata ptr %rbs_min, metadata !800, metadata !DIExpression()), !dbg !815
  store i64 0, ptr %rbs_min, align 8, !dbg !815
  %0 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !816
  %native_420 = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 38, !dbg !818
  %1 = load i8, ptr %native_420, align 1, !dbg !818, !range !322, !noundef !323
  %tobool = trunc i8 %1 to i1, !dbg !818
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !819

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !820
  %native_422 = getelementptr inbounds %struct.drm_dsc_config, ptr %2, i32 0, i32 37, !dbg !821
  %3 = load i8, ptr %native_422, align 2, !dbg !821, !range !322, !noundef !323
  %tobool1 = trunc i8 %3 to i1, !dbg !821
  br i1 %tobool1, label %if.then, label %if.else, !dbg !822

if.then:                                          ; preds = %lor.lhs.false, %entry
  %4 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !823
  %slice_width = getelementptr inbounds %struct.drm_dsc_config, ptr %4, i32 0, i32 4, !dbg !823
  %5 = load i16, ptr %slice_width, align 2, !dbg !823
  %conv = zext i16 %5 to i32, !dbg !823
  %div = sdiv i32 %conv, 2, !dbg !823
  %add = add i32 %div, 3, !dbg !823
  %sub = sub i32 %add, 1, !dbg !823
  %div2 = sdiv i32 %sub, 3, !dbg !823
  %conv3 = sext i32 %div2 to i64, !dbg !823
  store i64 %conv3, ptr %groups_per_line, align 8, !dbg !825
  %6 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !826
  %slice_width4 = getelementptr inbounds %struct.drm_dsc_config, ptr %6, i32 0, i32 4, !dbg !826
  %7 = load i16, ptr %slice_width4, align 2, !dbg !826
  %conv5 = zext i16 %7 to i32, !dbg !826
  %div6 = sdiv i32 %conv5, 2, !dbg !826
  %8 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !826
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %8, i32 0, i32 11, !dbg !826
  %9 = load i16, ptr %bits_per_pixel, align 2, !dbg !826
  %conv7 = zext i16 %9 to i32, !dbg !826
  %mul = mul i32 %div6, %conv7, !dbg !826
  %add8 = add i32 %mul, 128, !dbg !826
  %sub9 = sub i32 %add8, 1, !dbg !826
  %div10 = sdiv i32 %sub9, 128, !dbg !826
  %conv11 = trunc i32 %div10 to i16, !dbg !826
  %10 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !827
  %slice_chunk_size = getelementptr inbounds %struct.drm_dsc_config, ptr %10, i32 0, i32 33, !dbg !828
  store i16 %conv11, ptr %slice_chunk_size, align 2, !dbg !829
  br label %if.end, !dbg !830

if.else:                                          ; preds = %lor.lhs.false
  %11 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !831
  %slice_width12 = getelementptr inbounds %struct.drm_dsc_config, ptr %11, i32 0, i32 4, !dbg !831
  %12 = load i16, ptr %slice_width12, align 2, !dbg !831
  %conv13 = zext i16 %12 to i32, !dbg !831
  %add14 = add i32 %conv13, 3, !dbg !831
  %sub15 = sub i32 %add14, 1, !dbg !831
  %div16 = sdiv i32 %sub15, 3, !dbg !831
  %conv17 = sext i32 %div16 to i64, !dbg !831
  store i64 %conv17, ptr %groups_per_line, align 8, !dbg !833
  %13 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !834
  %slice_width18 = getelementptr inbounds %struct.drm_dsc_config, ptr %13, i32 0, i32 4, !dbg !834
  %14 = load i16, ptr %slice_width18, align 2, !dbg !834
  %conv19 = zext i16 %14 to i32, !dbg !834
  %15 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !834
  %bits_per_pixel20 = getelementptr inbounds %struct.drm_dsc_config, ptr %15, i32 0, i32 11, !dbg !834
  %16 = load i16, ptr %bits_per_pixel20, align 2, !dbg !834
  %conv21 = zext i16 %16 to i32, !dbg !834
  %mul22 = mul i32 %conv19, %conv21, !dbg !834
  %add23 = add i32 %mul22, 128, !dbg !834
  %sub24 = sub i32 %add23, 1, !dbg !834
  %div25 = sdiv i32 %sub24, 128, !dbg !834
  %conv26 = trunc i32 %div25 to i16, !dbg !834
  %17 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !835
  %slice_chunk_size27 = getelementptr inbounds %struct.drm_dsc_config, ptr %17, i32 0, i32 33, !dbg !836
  store i16 %conv26, ptr %slice_chunk_size27, align 2, !dbg !837
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %18 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !838
  %convert_rgb = getelementptr inbounds %struct.drm_dsc_config, ptr %18, i32 0, i32 2, !dbg !840
  %19 = load i8, ptr %convert_rgb, align 2, !dbg !840, !range !322, !noundef !323
  %tobool28 = trunc i8 %19 to i1, !dbg !840
  br i1 %tobool28, label %if.then29, label %if.else38, !dbg !841

if.then29:                                        ; preds = %if.end
  %20 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !842
  %mux_word_size = getelementptr inbounds %struct.drm_dsc_config, ptr %20, i32 0, i32 32, !dbg !843
  %21 = load i8, ptr %mux_word_size, align 1, !dbg !843
  %conv30 = zext i8 %21 to i32, !dbg !842
  %22 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !844
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %22, i32 0, i32 1, !dbg !845
  %23 = load i8, ptr %bits_per_component, align 1, !dbg !845
  %conv31 = zext i8 %23 to i32, !dbg !844
  %mul32 = mul i32 4, %conv31, !dbg !846
  %add33 = add i32 %mul32, 4, !dbg !847
  %add34 = add i32 %conv30, %add33, !dbg !848
  %sub35 = sub i32 %add34, 2, !dbg !849
  %mul36 = mul i32 3, %sub35, !dbg !850
  %conv37 = sext i32 %mul36 to i64, !dbg !851
  store i64 %conv37, ptr %num_extra_mux_bits, align 8, !dbg !852
  br label %if.end74, !dbg !853

if.else38:                                        ; preds = %if.end
  %24 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !854
  %native_42239 = getelementptr inbounds %struct.drm_dsc_config, ptr %24, i32 0, i32 37, !dbg !856
  %25 = load i8, ptr %native_42239, align 2, !dbg !856, !range !322, !noundef !323
  %tobool40 = trunc i8 %25 to i1, !dbg !856
  br i1 %tobool40, label %if.then41, label %if.else57, !dbg !857

if.then41:                                        ; preds = %if.else38
  %26 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !858
  %mux_word_size42 = getelementptr inbounds %struct.drm_dsc_config, ptr %26, i32 0, i32 32, !dbg !859
  %27 = load i8, ptr %mux_word_size42, align 1, !dbg !859
  %conv43 = zext i8 %27 to i32, !dbg !858
  %mul44 = mul i32 4, %conv43, !dbg !860
  %28 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !861
  %bits_per_component45 = getelementptr inbounds %struct.drm_dsc_config, ptr %28, i32 0, i32 1, !dbg !862
  %29 = load i8, ptr %bits_per_component45, align 1, !dbg !862
  %conv46 = zext i8 %29 to i32, !dbg !861
  %mul47 = mul i32 4, %conv46, !dbg !863
  %add48 = add i32 %mul47, 4, !dbg !864
  %add49 = add i32 %mul44, %add48, !dbg !865
  %30 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !866
  %bits_per_component50 = getelementptr inbounds %struct.drm_dsc_config, ptr %30, i32 0, i32 1, !dbg !867
  %31 = load i8, ptr %bits_per_component50, align 1, !dbg !867
  %conv51 = zext i8 %31 to i32, !dbg !866
  %mul52 = mul i32 4, %conv51, !dbg !868
  %mul53 = mul i32 3, %mul52, !dbg !869
  %add54 = add i32 %add49, %mul53, !dbg !870
  %sub55 = sub i32 %add54, 2, !dbg !871
  %conv56 = sext i32 %sub55 to i64, !dbg !872
  store i64 %conv56, ptr %num_extra_mux_bits, align 8, !dbg !873
  br label %if.end73, !dbg !874

if.else57:                                        ; preds = %if.else38
  %32 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !875
  %mux_word_size58 = getelementptr inbounds %struct.drm_dsc_config, ptr %32, i32 0, i32 32, !dbg !876
  %33 = load i8, ptr %mux_word_size58, align 1, !dbg !876
  %conv59 = zext i8 %33 to i32, !dbg !875
  %mul60 = mul i32 3, %conv59, !dbg !877
  %34 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !878
  %bits_per_component61 = getelementptr inbounds %struct.drm_dsc_config, ptr %34, i32 0, i32 1, !dbg !879
  %35 = load i8, ptr %bits_per_component61, align 1, !dbg !879
  %conv62 = zext i8 %35 to i32, !dbg !878
  %mul63 = mul i32 4, %conv62, !dbg !880
  %add64 = add i32 %mul63, 4, !dbg !881
  %add65 = add i32 %mul60, %add64, !dbg !882
  %36 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !883
  %bits_per_component66 = getelementptr inbounds %struct.drm_dsc_config, ptr %36, i32 0, i32 1, !dbg !884
  %37 = load i8, ptr %bits_per_component66, align 1, !dbg !884
  %conv67 = zext i8 %37 to i32, !dbg !883
  %mul68 = mul i32 4, %conv67, !dbg !885
  %mul69 = mul i32 2, %mul68, !dbg !886
  %add70 = add i32 %add65, %mul69, !dbg !887
  %sub71 = sub i32 %add70, 2, !dbg !888
  %conv72 = sext i32 %sub71 to i64, !dbg !889
  store i64 %conv72, ptr %num_extra_mux_bits, align 8, !dbg !890
  br label %if.end73

if.end73:                                         ; preds = %if.else57, %if.then41
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then29
  %38 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !891
  %slice_chunk_size75 = getelementptr inbounds %struct.drm_dsc_config, ptr %38, i32 0, i32 33, !dbg !892
  %39 = load i16, ptr %slice_chunk_size75, align 2, !dbg !892
  %conv76 = zext i16 %39 to i32, !dbg !891
  %mul77 = mul i32 8, %conv76, !dbg !893
  %40 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !894
  %slice_height = getelementptr inbounds %struct.drm_dsc_config, ptr %40, i32 0, i32 5, !dbg !895
  %41 = load i16, ptr %slice_height, align 2, !dbg !895
  %conv78 = zext i16 %41 to i32, !dbg !894
  %mul79 = mul i32 %mul77, %conv78, !dbg !896
  %conv80 = sext i32 %mul79 to i64, !dbg !897
  store i64 %conv80, ptr %slice_bits, align 8, !dbg !898
  br label %while.cond, !dbg !899

while.cond:                                       ; preds = %while.body, %if.end74
  %42 = load i64, ptr %num_extra_mux_bits, align 8, !dbg !900
  %cmp = icmp ugt i64 %42, 0, !dbg !901
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !902

land.rhs:                                         ; preds = %while.cond
  %43 = load i64, ptr %slice_bits, align 8, !dbg !903
  %44 = load i64, ptr %num_extra_mux_bits, align 8, !dbg !904
  %sub82 = sub i64 %43, %44, !dbg !905
  %45 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !906
  %mux_word_size83 = getelementptr inbounds %struct.drm_dsc_config, ptr %45, i32 0, i32 32, !dbg !907
  %46 = load i8, ptr %mux_word_size83, align 1, !dbg !907
  %conv84 = zext i8 %46 to i64, !dbg !906
  %rem = urem i64 %sub82, %conv84, !dbg !908
  %tobool85 = icmp ne i64 %rem, 0, !dbg !902
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %47 = phi i1 [ false, %while.cond ], [ %tobool85, %land.rhs ], !dbg !909
  br i1 %47, label %while.body, label %while.end, !dbg !899

while.body:                                       ; preds = %land.end
  %48 = load i64, ptr %num_extra_mux_bits, align 8, !dbg !910
  %dec = add i64 %48, -1, !dbg !910
  store i64 %dec, ptr %num_extra_mux_bits, align 8, !dbg !910
  br label %while.cond, !dbg !899, !llvm.loop !911

while.end:                                        ; preds = %land.end
  %49 = load i64, ptr %groups_per_line, align 8, !dbg !912
  %50 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !914
  %initial_scale_value = getelementptr inbounds %struct.drm_dsc_config, ptr %50, i32 0, i32 25, !dbg !915
  %51 = load i8, ptr %initial_scale_value, align 2, !dbg !915
  %conv86 = zext i8 %51 to i32, !dbg !914
  %sub87 = sub i32 %conv86, 8, !dbg !916
  %conv88 = sext i32 %sub87 to i64, !dbg !914
  %cmp89 = icmp ult i64 %49, %conv88, !dbg !917
  br i1 %cmp89, label %if.then91, label %if.end95, !dbg !918

if.then91:                                        ; preds = %while.end
  %52 = load i64, ptr %groups_per_line, align 8, !dbg !919
  %add92 = add i64 %52, 8, !dbg !920
  %conv93 = trunc i64 %add92 to i8, !dbg !919
  %53 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !921
  %initial_scale_value94 = getelementptr inbounds %struct.drm_dsc_config, ptr %53, i32 0, i32 25, !dbg !922
  store i8 %conv93, ptr %initial_scale_value94, align 2, !dbg !923
  br label %if.end95, !dbg !921

if.end95:                                         ; preds = %if.then91, %while.end
  %54 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !924
  %initial_scale_value96 = getelementptr inbounds %struct.drm_dsc_config, ptr %54, i32 0, i32 25, !dbg !926
  %55 = load i8, ptr %initial_scale_value96, align 2, !dbg !926
  %conv97 = zext i8 %55 to i32, !dbg !924
  %cmp98 = icmp sgt i32 %conv97, 8, !dbg !927
  br i1 %cmp98, label %if.then100, label %if.else107, !dbg !928

if.then100:                                       ; preds = %if.end95
  %56 = load i64, ptr %groups_per_line, align 8, !dbg !929
  %57 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !930
  %initial_scale_value101 = getelementptr inbounds %struct.drm_dsc_config, ptr %57, i32 0, i32 25, !dbg !931
  %58 = load i8, ptr %initial_scale_value101, align 2, !dbg !931
  %conv102 = zext i8 %58 to i32, !dbg !930
  %sub103 = sub i32 %conv102, 8, !dbg !932
  %conv104 = sext i32 %sub103 to i64, !dbg !933
  %div105 = udiv i64 %56, %conv104, !dbg !934
  %conv106 = trunc i64 %div105 to i16, !dbg !929
  %59 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !935
  %scale_decrement_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %59, i32 0, i32 26, !dbg !936
  store i16 %conv106, ptr %scale_decrement_interval, align 2, !dbg !937
  br label %if.end109, !dbg !935

if.else107:                                       ; preds = %if.end95
  %60 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !938
  %scale_decrement_interval108 = getelementptr inbounds %struct.drm_dsc_config, ptr %60, i32 0, i32 26, !dbg !939
  store i16 4095, ptr %scale_decrement_interval108, align 2, !dbg !940
  br label %if.end109

if.end109:                                        ; preds = %if.else107, %if.then100
  %61 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !941
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %61, i32 0, i32 22, !dbg !942
  %62 = load i16, ptr %rc_model_size, align 2, !dbg !942
  %conv110 = zext i16 %62 to i32, !dbg !941
  %63 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !943
  %initial_xmit_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %63, i32 0, i32 15, !dbg !944
  %64 = load i16, ptr %initial_xmit_delay, align 2, !dbg !944
  %conv111 = zext i16 %64 to i32, !dbg !943
  %65 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !945
  %bits_per_pixel112 = getelementptr inbounds %struct.drm_dsc_config, ptr %65, i32 0, i32 11, !dbg !946
  %66 = load i16, ptr %bits_per_pixel112, align 2, !dbg !946
  %conv113 = zext i16 %66 to i32, !dbg !945
  %mul114 = mul i32 %conv111, %conv113, !dbg !947
  %add115 = add i32 %mul114, 8, !dbg !948
  %div116 = sdiv i32 %add115, 16, !dbg !949
  %sub117 = sub i32 %conv110, %div116, !dbg !950
  %conv118 = sext i32 %sub117 to i64, !dbg !941
  %67 = load i64, ptr %num_extra_mux_bits, align 8, !dbg !951
  %add119 = add i64 %conv118, %67, !dbg !952
  %conv120 = trunc i64 %add119 to i16, !dbg !941
  %68 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !953
  %final_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %68, i32 0, i32 30, !dbg !954
  store i16 %conv120, ptr %final_offset, align 2, !dbg !955
  %69 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !956
  %final_offset121 = getelementptr inbounds %struct.drm_dsc_config, ptr %69, i32 0, i32 30, !dbg !958
  %70 = load i16, ptr %final_offset121, align 2, !dbg !958
  %conv122 = zext i16 %70 to i32, !dbg !956
  %71 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !959
  %rc_model_size123 = getelementptr inbounds %struct.drm_dsc_config, ptr %71, i32 0, i32 22, !dbg !960
  %72 = load i16, ptr %rc_model_size123, align 2, !dbg !960
  %conv124 = zext i16 %72 to i32, !dbg !959
  %cmp125 = icmp sge i32 %conv122, %conv124, !dbg !961
  br i1 %cmp125, label %if.then127, label %if.end128, !dbg !962

if.then127:                                       ; preds = %if.end109
  call void (ptr, i32, ptr, ...) @___drm_dbg(ptr noundef null, i32 noundef 2, ptr noundef @.str.1) #7, !dbg !963
  store i32 -34, ptr %retval, align 4, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

if.end128:                                        ; preds = %if.end109
  %73 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !966
  %rc_model_size129 = getelementptr inbounds %struct.drm_dsc_config, ptr %73, i32 0, i32 22, !dbg !967
  %74 = load i16, ptr %rc_model_size129, align 2, !dbg !967
  %conv130 = zext i16 %74 to i32, !dbg !966
  %mul131 = mul i32 %conv130, 8, !dbg !968
  %75 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !969
  %rc_model_size132 = getelementptr inbounds %struct.drm_dsc_config, ptr %75, i32 0, i32 22, !dbg !970
  %76 = load i16, ptr %rc_model_size132, align 2, !dbg !970
  %conv133 = zext i16 %76 to i32, !dbg !969
  %77 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !971
  %final_offset134 = getelementptr inbounds %struct.drm_dsc_config, ptr %77, i32 0, i32 30, !dbg !972
  %78 = load i16, ptr %final_offset134, align 2, !dbg !972
  %conv135 = zext i16 %78 to i32, !dbg !971
  %sub136 = sub i32 %conv133, %conv135, !dbg !973
  %div137 = sdiv i32 %mul131, %sub136, !dbg !974
  %conv138 = sext i32 %div137 to i64, !dbg !975
  store i64 %conv138, ptr %final_scale, align 8, !dbg !976
  %79 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !977
  %slice_height139 = getelementptr inbounds %struct.drm_dsc_config, ptr %79, i32 0, i32 5, !dbg !979
  %80 = load i16, ptr %slice_height139, align 2, !dbg !979
  %conv140 = zext i16 %80 to i32, !dbg !977
  %cmp141 = icmp sgt i32 %conv140, 1, !dbg !980
  br i1 %cmp141, label %if.then143, label %if.else155, !dbg !981

if.then143:                                       ; preds = %if.end128
  %81 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !982
  %first_line_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %81, i32 0, i32 18, !dbg !982
  %82 = load i8, ptr %first_line_bpg_offset, align 1, !dbg !982
  %conv144 = zext i8 %82 to i32, !dbg !982
  %shl = shl i32 %conv144, 11, !dbg !982
  %83 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !982
  %slice_height145 = getelementptr inbounds %struct.drm_dsc_config, ptr %83, i32 0, i32 5, !dbg !982
  %84 = load i16, ptr %slice_height145, align 2, !dbg !982
  %conv146 = zext i16 %84 to i32, !dbg !982
  %sub147 = sub i32 %conv146, 1, !dbg !982
  %add148 = add i32 %shl, %sub147, !dbg !982
  %sub149 = sub i32 %add148, 1, !dbg !982
  %85 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !982
  %slice_height150 = getelementptr inbounds %struct.drm_dsc_config, ptr %85, i32 0, i32 5, !dbg !982
  %86 = load i16, ptr %slice_height150, align 2, !dbg !982
  %conv151 = zext i16 %86 to i32, !dbg !982
  %sub152 = sub i32 %conv151, 1, !dbg !982
  %div153 = sdiv i32 %sub149, %sub152, !dbg !982
  %conv154 = trunc i32 %div153 to i16, !dbg !982
  %87 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !983
  %nfl_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %87, i32 0, i32 28, !dbg !984
  store i16 %conv154, ptr %nfl_bpg_offset, align 2, !dbg !985
  br label %if.end157, !dbg !983

if.else155:                                       ; preds = %if.end128
  %88 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !986
  %nfl_bpg_offset156 = getelementptr inbounds %struct.drm_dsc_config, ptr %88, i32 0, i32 28, !dbg !987
  store i16 0, ptr %nfl_bpg_offset156, align 2, !dbg !988
  br label %if.end157

if.end157:                                        ; preds = %if.else155, %if.then143
  %89 = load i64, ptr %groups_per_line, align 8, !dbg !989
  %90 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !990
  %slice_height158 = getelementptr inbounds %struct.drm_dsc_config, ptr %90, i32 0, i32 5, !dbg !991
  %91 = load i16, ptr %slice_height158, align 2, !dbg !991
  %conv159 = zext i16 %91 to i64, !dbg !990
  %mul160 = mul i64 %89, %conv159, !dbg !992
  store i64 %mul160, ptr %groups_total, align 8, !dbg !993
  %92 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !994
  %rc_model_size161 = getelementptr inbounds %struct.drm_dsc_config, ptr %92, i32 0, i32 22, !dbg !994
  %93 = load i16, ptr %rc_model_size161, align 2, !dbg !994
  %conv162 = zext i16 %93 to i32, !dbg !994
  %94 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !994
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %94, i32 0, i32 19, !dbg !994
  %95 = load i16, ptr %initial_offset, align 2, !dbg !994
  %conv163 = zext i16 %95 to i32, !dbg !994
  %sub164 = sub i32 %conv162, %conv163, !dbg !994
  %conv165 = sext i32 %sub164 to i64, !dbg !994
  %96 = load i64, ptr %num_extra_mux_bits, align 8, !dbg !994
  %add166 = add i64 %conv165, %96, !dbg !994
  %shl167 = shl i64 %add166, 11, !dbg !994
  %97 = load i64, ptr %groups_total, align 8, !dbg !994
  %add168 = add i64 %shl167, %97, !dbg !994
  %sub169 = sub i64 %add168, 1, !dbg !994
  %98 = load i64, ptr %groups_total, align 8, !dbg !994
  %div170 = udiv i64 %sub169, %98, !dbg !994
  %conv171 = trunc i64 %div170 to i16, !dbg !994
  %99 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !995
  %slice_bpg_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %99, i32 0, i32 29, !dbg !996
  store i16 %conv171, ptr %slice_bpg_offset, align 2, !dbg !997
  %100 = load i64, ptr %final_scale, align 8, !dbg !998
  %cmp172 = icmp ugt i64 %100, 9, !dbg !1000
  br i1 %cmp172, label %if.then174, label %if.else189, !dbg !1001

if.then174:                                       ; preds = %if.end157
  %101 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1002
  %final_offset175 = getelementptr inbounds %struct.drm_dsc_config, ptr %101, i32 0, i32 30, !dbg !1004
  %102 = load i16, ptr %final_offset175, align 2, !dbg !1004
  %conv176 = zext i16 %102 to i32, !dbg !1002
  %mul177 = mul i32 %conv176, 2048, !dbg !1005
  %conv178 = sext i32 %mul177 to i64, !dbg !1006
  %103 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1007
  %nfl_bpg_offset179 = getelementptr inbounds %struct.drm_dsc_config, ptr %103, i32 0, i32 28, !dbg !1008
  %104 = load i16, ptr %nfl_bpg_offset179, align 2, !dbg !1008
  %conv180 = zext i16 %104 to i32, !dbg !1007
  %105 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1009
  %slice_bpg_offset181 = getelementptr inbounds %struct.drm_dsc_config, ptr %105, i32 0, i32 29, !dbg !1010
  %106 = load i16, ptr %slice_bpg_offset181, align 2, !dbg !1010
  %conv182 = zext i16 %106 to i32, !dbg !1009
  %add183 = add i32 %conv180, %conv182, !dbg !1011
  %conv184 = sext i32 %add183 to i64, !dbg !1012
  %107 = load i64, ptr %final_scale, align 8, !dbg !1013
  %sub185 = sub i64 %107, 9, !dbg !1014
  %mul186 = mul i64 %conv184, %sub185, !dbg !1015
  %div187 = udiv i64 %conv178, %mul186, !dbg !1016
  %conv188 = trunc i64 %div187 to i16, !dbg !1006
  %108 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1017
  %scale_increment_interval = getelementptr inbounds %struct.drm_dsc_config, ptr %108, i32 0, i32 27, !dbg !1018
  store i16 %conv188, ptr %scale_increment_interval, align 2, !dbg !1019
  br label %if.end191, !dbg !1020

if.else189:                                       ; preds = %if.end157
  %109 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1021
  %scale_increment_interval190 = getelementptr inbounds %struct.drm_dsc_config, ptr %109, i32 0, i32 27, !dbg !1023
  store i16 0, ptr %scale_increment_interval190, align 2, !dbg !1024
  br label %if.end191

if.end191:                                        ; preds = %if.else189, %if.then174
  %110 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1025
  %rc_model_size192 = getelementptr inbounds %struct.drm_dsc_config, ptr %110, i32 0, i32 22, !dbg !1026
  %111 = load i16, ptr %rc_model_size192, align 2, !dbg !1026
  %conv193 = zext i16 %111 to i32, !dbg !1025
  %112 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1027
  %initial_offset194 = getelementptr inbounds %struct.drm_dsc_config, ptr %112, i32 0, i32 19, !dbg !1028
  %113 = load i16, ptr %initial_offset194, align 2, !dbg !1028
  %conv195 = zext i16 %113 to i32, !dbg !1027
  %sub196 = sub i32 %conv193, %conv195, !dbg !1029
  %114 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1030
  %initial_xmit_delay197 = getelementptr inbounds %struct.drm_dsc_config, ptr %114, i32 0, i32 15, !dbg !1030
  %115 = load i16, ptr %initial_xmit_delay197, align 2, !dbg !1030
  %conv198 = zext i16 %115 to i32, !dbg !1030
  %116 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1030
  %bits_per_pixel199 = getelementptr inbounds %struct.drm_dsc_config, ptr %116, i32 0, i32 11, !dbg !1030
  %117 = load i16, ptr %bits_per_pixel199, align 2, !dbg !1030
  %conv200 = zext i16 %117 to i32, !dbg !1030
  %mul201 = mul i32 %conv198, %conv200, !dbg !1030
  %add202 = add i32 %mul201, 16, !dbg !1030
  %sub203 = sub i32 %add202, 1, !dbg !1030
  %div204 = sdiv i32 %sub203, 16, !dbg !1030
  %add205 = add i32 %sub196, %div204, !dbg !1031
  %conv206 = sext i32 %add205 to i64, !dbg !1025
  %118 = load i64, ptr %groups_per_line, align 8, !dbg !1032
  %119 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1033
  %first_line_bpg_offset207 = getelementptr inbounds %struct.drm_dsc_config, ptr %119, i32 0, i32 18, !dbg !1034
  %120 = load i8, ptr %first_line_bpg_offset207, align 1, !dbg !1034
  %conv208 = zext i8 %120 to i64, !dbg !1033
  %mul209 = mul i64 %118, %conv208, !dbg !1035
  %add210 = add i64 %conv206, %mul209, !dbg !1036
  store i64 %add210, ptr %rbs_min, align 8, !dbg !1037
  %121 = load i64, ptr %rbs_min, align 8, !dbg !1038
  %mul211 = mul i64 %121, 16, !dbg !1038
  %122 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1038
  %bits_per_pixel212 = getelementptr inbounds %struct.drm_dsc_config, ptr %122, i32 0, i32 11, !dbg !1038
  %123 = load i16, ptr %bits_per_pixel212, align 2, !dbg !1038
  %conv213 = zext i16 %123 to i64, !dbg !1038
  %add214 = add i64 %mul211, %conv213, !dbg !1038
  %sub215 = sub i64 %add214, 1, !dbg !1038
  %124 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1038
  %bits_per_pixel216 = getelementptr inbounds %struct.drm_dsc_config, ptr %124, i32 0, i32 11, !dbg !1038
  %125 = load i16, ptr %bits_per_pixel216, align 2, !dbg !1038
  %conv217 = zext i16 %125 to i64, !dbg !1038
  %div218 = udiv i64 %sub215, %conv217, !dbg !1038
  store i64 %div218, ptr %hrd_delay, align 8, !dbg !1039
  %126 = load i64, ptr %hrd_delay, align 8, !dbg !1040
  %127 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1041
  %bits_per_pixel219 = getelementptr inbounds %struct.drm_dsc_config, ptr %127, i32 0, i32 11, !dbg !1042
  %128 = load i16, ptr %bits_per_pixel219, align 2, !dbg !1042
  %conv220 = zext i16 %128 to i64, !dbg !1041
  %mul221 = mul i64 %126, %conv220, !dbg !1043
  %div222 = udiv i64 %mul221, 16, !dbg !1044
  %conv223 = trunc i64 %div222 to i16, !dbg !1045
  %129 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1046
  %rc_bits = getelementptr inbounds %struct.drm_dsc_config, ptr %129, i32 0, i32 34, !dbg !1047
  store i16 %conv223, ptr %rc_bits, align 2, !dbg !1048
  %130 = load i64, ptr %hrd_delay, align 8, !dbg !1049
  %131 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1050
  %initial_xmit_delay224 = getelementptr inbounds %struct.drm_dsc_config, ptr %131, i32 0, i32 15, !dbg !1051
  %132 = load i16, ptr %initial_xmit_delay224, align 2, !dbg !1051
  %conv225 = zext i16 %132 to i64, !dbg !1050
  %sub226 = sub i64 %130, %conv225, !dbg !1052
  %conv227 = trunc i64 %sub226 to i16, !dbg !1049
  %133 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1053
  %initial_dec_delay = getelementptr inbounds %struct.drm_dsc_config, ptr %133, i32 0, i32 16, !dbg !1054
  store i16 %conv227, ptr %initial_dec_delay, align 2, !dbg !1055
  store i32 0, ptr %retval, align 4, !dbg !1056
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1056

cleanup:                                          ; preds = %if.end191, %if.then127
  call void @llvm.lifetime.end.p0(i64 8, ptr %rbs_min) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %final_scale) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %hrd_delay) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %slice_bits) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %num_extra_mux_bits) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups_total) #6, !dbg !1057
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups_per_line) #6, !dbg !1057
  %134 = load i32, ptr %retval, align 4, !dbg !1057
  ret i32 %134, !dbg !1057
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1058 dso_local void @___drm_dbg(ptr noundef, i32 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dsc_get_bpp_int(ptr noundef %vdsc_cfg) #0 align 16 !dbg !1110 {
entry:
  %vdsc_cfg.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %vdsc_cfg, ptr %vdsc_cfg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vdsc_cfg.addr, metadata !1114, metadata !DIExpression()), !dbg !1120
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !1121
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1115, metadata !DIExpression()), !dbg !1121
  %0 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1121
  %bits_per_pixel = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 11, !dbg !1121
  %1 = load i16, ptr %bits_per_pixel, align 2, !dbg !1121
  %conv = zext i16 %1 to i32, !dbg !1121
  %and = and i32 %conv, 15, !dbg !1121
  %tobool = icmp ne i32 %and, 0, !dbg !1121
  %lnot = xor i1 %tobool, true, !dbg !1121
  %lnot1 = xor i1 %lnot, true, !dbg !1121
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1121
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1121
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !1122
  %tobool2 = icmp ne i32 %2, 0, !dbg !1122
  %lnot3 = xor i1 %tobool2, true, !dbg !1122
  %lnot5 = xor i1 %lnot3, true, !dbg !1122
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1122
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !1122
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !1122
  %tobool8 = icmp ne i64 %expval, 0, !dbg !1122
  br i1 %tobool8, label %if.then, label %if.end, !dbg !1121

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1122

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #6, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1117, metadata !DIExpression()), !dbg !1123
  store i32 2307, ptr %__flags, align 4, !dbg !1123
  br label %do.body9, !dbg !1123

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1124

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1124

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1123

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !1126
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1447, i32 %3, i64 12) #6, !dbg !1126, !srcloc !1128
  br label %do.cond11, !dbg !1126

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1126

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1123

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !1129

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1129

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #6, !dbg !1122
  br label %do.cond16, !dbg !1123

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1123

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1123

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1121
  %tobool18 = icmp ne i32 %4, 0, !dbg !1121
  %lnot19 = xor i1 %tobool18, true, !dbg !1121
  %lnot21 = xor i1 %lnot19, true, !dbg !1121
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1121
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1121
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1121
  store i64 %expval24, ptr %tmp, align 8, !dbg !1122
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #6, !dbg !1131
  %5 = load i64, ptr %tmp, align 8, !dbg !1121
  %6 = load ptr, ptr %vdsc_cfg.addr, align 8, !dbg !1132
  %bits_per_pixel25 = getelementptr inbounds %struct.drm_dsc_config, ptr %6, i32 0, i32 11, !dbg !1133
  %7 = load i16, ptr %bits_per_pixel25, align 2, !dbg !1133
  %conv26 = zext i16 %7 to i32, !dbg !1132
  %shr = ashr i32 %conv26, 4, !dbg !1134
  ret i32 %shr, !dbg !1135
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i8 @drm_dsc_initial_scale_value(ptr noundef %dsc) #0 align 16 !dbg !1136 {
entry:
  %dsc.addr = alloca ptr, align 8
  store ptr %dsc, ptr %dsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dsc.addr, metadata !1140, metadata !DIExpression()), !dbg !1141
  %0 = load ptr, ptr %dsc.addr, align 8, !dbg !1142
  %rc_model_size = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 22, !dbg !1143
  %1 = load i16, ptr %rc_model_size, align 2, !dbg !1143
  %conv = zext i16 %1 to i32, !dbg !1142
  %mul = mul i32 8, %conv, !dbg !1144
  %2 = load ptr, ptr %dsc.addr, align 8, !dbg !1145
  %rc_model_size1 = getelementptr inbounds %struct.drm_dsc_config, ptr %2, i32 0, i32 22, !dbg !1146
  %3 = load i16, ptr %rc_model_size1, align 2, !dbg !1146
  %conv2 = zext i16 %3 to i32, !dbg !1145
  %4 = load ptr, ptr %dsc.addr, align 8, !dbg !1147
  %initial_offset = getelementptr inbounds %struct.drm_dsc_config, ptr %4, i32 0, i32 19, !dbg !1148
  %5 = load i16, ptr %initial_offset, align 2, !dbg !1148
  %conv3 = zext i16 %5 to i32, !dbg !1147
  %sub = sub i32 %conv2, %conv3, !dbg !1149
  %div = sdiv i32 %mul, %sub, !dbg !1150
  %conv4 = trunc i32 %div to i8, !dbg !1151
  ret i8 %conv4, !dbg !1152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_dsc_flatness_det_thresh(ptr noundef %dsc) #0 align 16 !dbg !1153 {
entry:
  %dsc.addr = alloca ptr, align 8
  store ptr %dsc, ptr %dsc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dsc.addr, metadata !1155, metadata !DIExpression()), !dbg !1156
  %0 = load ptr, ptr %dsc.addr, align 8, !dbg !1157
  %bits_per_component = getelementptr inbounds %struct.drm_dsc_config, ptr %0, i32 0, i32 1, !dbg !1158
  %1 = load i8, ptr %bits_per_component, align 1, !dbg !1158
  %conv = zext i8 %1 to i32, !dbg !1157
  %sub = sub i32 %conv, 8, !dbg !1159
  %shl = shl i32 2, %sub, !dbg !1160
  ret i32 %shl, !dbg !1161
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_dp_pps_header_init351", scope: !2, file: !3, line: 51, type: !27, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/display/.drm_dsc_helper.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/display/drm_display_helper\22 -D KBUILD_BASENAME=\22drm_dsc_helper\22 -D KBUILD_MODNAME=\22drm_display_helper\22 -D __KBUILD_MODNAME=kmod_drm_display_helper -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/display/drm_dsc_helper.ll drivers/gpu/drm/display/drm_dsc_helper.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !34, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/display/drm_dsc_helper.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3c0b70067a1c64e8c9a8bf2322bb9964")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_dsc_params_type", file: !6, line: 13, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/drm/display/drm_dsc_helper.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f64ad60bfebcf26a048c45e69292f059")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "DRM_DSC_1_2_444", value: 0)
!10 = !DIEnumerator(name: "DRM_DSC_1_1_PRE_SCR", value: 1)
!11 = !DIEnumerator(name: "DRM_DSC_1_2_422", value: 2)
!12 = !DIEnumerator(name: "DRM_DSC_1_2_420", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !14, line: 330, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!16 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!17 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!18 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!19 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!20 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!21 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!22 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!23 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!24 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!25 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!26 = !{!27, !28, !30, !33}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !29, line: 37, baseType: !30)
!29 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !31, line: 24, baseType: !32)
!31 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!32 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !{!0, !35, !37, !39, !41, !43, !49, !51, !56, !58, !60, !62, !64, !72, !105, !108, !113}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_dp_rc_buffer_size352", scope: !2, file: !3, line: 78, type: !27, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_pps_payload_pack354", scope: !2, file: !3, line: 271, type: !27, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_set_const_params355", scope: !2, file: !3, line: 293, type: !27, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_set_rc_buf_thresh358", scope: !2, file: !3, line: 328, type: !27, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1248, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 328, elements: !47)
!46 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !{!48}
!48 = !DISubrange(count: 41)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_setup_rc_params359", scope: !2, file: !3, line: 1299, type: !27, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1375, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !46, size: 392, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 49)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_compute_rc_parameters360", scope: !2, file: !3, line: 1437, type: !27, isLocal: true, isDefinition: true)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_get_bpp_int361", scope: !2, file: !3, line: 1450, type: !27, isLocal: true, isDefinition: true)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_initial_scale_value362", scope: !2, file: !3, line: 1462, type: !27, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dsc_flatness_det_thresh363", scope: !2, file: !3, line: 1474, type: !27, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "drm_dsc_rc_buf_thresh", scope: !2, file: !3, line: 296, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 224, elements: !70)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !69, line: 19, baseType: !30)
!69 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!70 = !{!71}
!71 = !DISubrange(count: 14)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(name: "rc_parameters_1_2_444", scope: !2, file: !3, line: 503, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 12064, elements: !103)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_parameters_data", file: !3, line: 341, size: 464, elements: !77)
!77 = !{!78, !82, !83}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !76, file: !3, line: 342, baseType: !79, size: 8)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !69, line: 17, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !31, line: 21, baseType: !81)
!81 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !76, file: !3, line: 343, baseType: !79, size: 8, offset: 8)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !76, file: !3, line: 344, baseType: !84, size: 448, offset: 16)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rc_parameters", file: !3, line: 330, size: 448, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91, !92, !93}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay", scope: !84, file: !3, line: 331, baseType: !68, size: 16)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "first_line_bpg_offset", scope: !84, file: !3, line: 332, baseType: !79, size: 8, offset: 16)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "initial_offset", scope: !84, file: !3, line: 333, baseType: !68, size: 16, offset: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_min_qp", scope: !84, file: !3, line: 334, baseType: !79, size: 8, offset: 48)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_max_qp", scope: !84, file: !3, line: 335, baseType: !79, size: 8, offset: 56)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit0", scope: !84, file: !3, line: 336, baseType: !79, size: 8, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit1", scope: !84, file: !3, line: 337, baseType: !79, size: 8, offset: 72)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "rc_range_params", scope: !84, file: !3, line: 338, baseType: !94, size: 360, offset: 80)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 360, elements: !101)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_rc_range_parameters", file: !96, line: 53, size: 24, elements: !97)
!96 = !DIFile(filename: "./include/drm/display/drm_dsc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "060460d41934c63e8962bae21debd847")
!97 = !{!98, !99, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "range_min_qp", scope: !95, file: !96, line: 57, baseType: !79, size: 8)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "range_max_qp", scope: !95, file: !96, line: 61, baseType: !79, size: 8, offset: 8)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "range_bpg_offset", scope: !95, file: !96, line: 66, baseType: !79, size: 8, offset: 16)
!101 = !{!102}
!102 = !DISubrange(count: 15)
!103 = !{!104}
!104 = !DISubrange(count: 26)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "rc_parameters_pre_scr", scope: !2, file: !3, line: 355, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 6496, elements: !70)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "rc_parameters_1_2_422", scope: !2, file: !3, line: 779, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !75, size: 9744, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 21)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(name: "rc_parameters_1_2_420", scope: !2, file: !3, line: 1001, type: !110, isLocal: true, isDefinition: true)
!115 = !{i32 7, !"Dwarf Version", i32 5}
!116 = !{i32 2, !"Debug Info Version", i32 3}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 8, !"cf-protection-branch", i32 1}
!119 = !{i32 4, !"function_return_thunk_extern", i32 1}
!120 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!121 = !{i32 1, !"Code Model", i32 2}
!122 = !{i32 1, !"override-stack-alignment", i32 8}
!123 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!124 = distinct !DISubprogram(name: "drm_dsc_dp_pps_header_init", scope: !3, file: !3, line: 44, type: !125, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !135)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dp_sdp_header", file: !129, line: 1567, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/drm/display/drm_dp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ebe6a2b0ef0a36bc81639eaa7c22a4a")
!130 = !{!131, !132, !133, !134}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "HB0", scope: !128, file: !129, line: 1568, baseType: !79, size: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "HB1", scope: !128, file: !129, line: 1569, baseType: !79, size: 8, offset: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "HB2", scope: !128, file: !129, line: 1570, baseType: !79, size: 8, offset: 16)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "HB3", scope: !128, file: !129, line: 1571, baseType: !79, size: 8, offset: 24)
!135 = !{!136}
!136 = !DILocalVariable(name: "pps_header", arg: 1, scope: !124, file: !3, line: 44, type: !127)
!137 = !DILocation(line: 44, column: 55, scope: !124)
!138 = !DILocation(line: 46, column: 9, scope: !124)
!139 = !DILocation(line: 46, column: 2, scope: !124)
!140 = !DILocation(line: 48, column: 2, scope: !124)
!141 = !DILocation(line: 48, column: 14, scope: !124)
!142 = !DILocation(line: 48, column: 18, scope: !124)
!143 = !DILocation(line: 49, column: 2, scope: !124)
!144 = !DILocation(line: 49, column: 14, scope: !124)
!145 = !DILocation(line: 49, column: 18, scope: !124)
!146 = !DILocation(line: 50, column: 1, scope: !124)
!147 = distinct !DISubprogram(name: "drm_dsc_dp_rc_buffer_size", scope: !3, file: !3, line: 61, type: !148, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!148 = !DISubroutineType(types: !149)
!149 = !{!33, !79, !79}
!150 = !{!151, !152, !153}
!151 = !DILocalVariable(name: "rc_buffer_block_size", arg: 1, scope: !147, file: !3, line: 61, type: !79)
!152 = !DILocalVariable(name: "rc_buffer_size", arg: 2, scope: !147, file: !3, line: 61, type: !79)
!153 = !DILocalVariable(name: "size", scope: !147, file: !3, line: 63, type: !33)
!154 = !DILocation(line: 61, column: 34, scope: !147)
!155 = !DILocation(line: 61, column: 59, scope: !147)
!156 = !DILocation(line: 63, column: 2, scope: !147)
!157 = !DILocation(line: 63, column: 6, scope: !147)
!158 = !DILocation(line: 63, column: 21, scope: !147)
!159 = !DILocation(line: 63, column: 36, scope: !147)
!160 = !DILocation(line: 63, column: 18, scope: !147)
!161 = !DILocation(line: 65, column: 10, scope: !147)
!162 = !DILocation(line: 65, column: 2, scope: !147)
!163 = !DILocation(line: 67, column: 14, scope: !164)
!164 = distinct !DILexicalBlock(scope: !147, file: !3, line: 65, column: 32)
!165 = !DILocation(line: 67, column: 12, scope: !164)
!166 = !DILocation(line: 67, column: 3, scope: !164)
!167 = !DILocation(line: 69, column: 14, scope: !164)
!168 = !DILocation(line: 69, column: 12, scope: !164)
!169 = !DILocation(line: 69, column: 3, scope: !164)
!170 = !DILocation(line: 71, column: 15, scope: !164)
!171 = !DILocation(line: 71, column: 13, scope: !164)
!172 = !DILocation(line: 71, column: 3, scope: !164)
!173 = !DILocation(line: 73, column: 15, scope: !164)
!174 = !DILocation(line: 73, column: 13, scope: !164)
!175 = !DILocation(line: 73, column: 3, scope: !164)
!176 = !DILocation(line: 75, column: 3, scope: !164)
!177 = !DILocation(line: 77, column: 1, scope: !147)
!178 = distinct !DISubprogram(name: "drm_dsc_pps_payload_pack", scope: !3, file: !3, line: 97, type: !179, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !285)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !181, !235}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_picture_parameter_set", file: !96, line: 286, size: 1024, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !218, !220, !221, !222, !223, !224, !227, !228, !229, !230, !231, !232, !233, !234}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version", scope: !182, file: !96, line: 292, baseType: !79, size: 8)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "pps_identifier", scope: !182, file: !96, line: 298, baseType: !79, size: 8, offset: 8)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "pps_reserved", scope: !182, file: !96, line: 303, baseType: !79, size: 8, offset: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "pps_3", scope: !182, file: !96, line: 316, baseType: !79, size: 8, offset: 24)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "pps_4", scope: !182, file: !96, line: 330, baseType: !79, size: 8, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel_low", scope: !182, file: !96, line: 336, baseType: !79, size: 8, offset: 40)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height", scope: !182, file: !96, line: 342, baseType: !28, size: 16, offset: 48)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width", scope: !182, file: !96, line: 348, baseType: !28, size: 16, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "slice_height", scope: !182, file: !96, line: 353, baseType: !28, size: 16, offset: 80)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "slice_width", scope: !182, file: !96, line: 358, baseType: !28, size: 16, offset: 96)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !182, file: !96, line: 364, baseType: !28, size: 16, offset: 112)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay_high", scope: !182, file: !96, line: 372, baseType: !79, size: 8, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay_low", scope: !182, file: !96, line: 377, baseType: !79, size: 8, offset: 136)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "initial_dec_delay", scope: !182, file: !96, line: 385, baseType: !28, size: 16, offset: 144)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "pps20_reserved", scope: !182, file: !96, line: 391, baseType: !79, size: 8, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "initial_scale_value", scope: !182, file: !96, line: 398, baseType: !79, size: 8, offset: 168)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "scale_increment_interval", scope: !182, file: !96, line: 404, baseType: !28, size: 16, offset: 176)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval_high", scope: !182, file: !96, line: 411, baseType: !79, size: 8, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval_low", scope: !182, file: !96, line: 416, baseType: !79, size: 8, offset: 200)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pps26_reserved", scope: !182, file: !96, line: 421, baseType: !79, size: 8, offset: 208)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "first_line_bpg_offset", scope: !182, file: !96, line: 428, baseType: !79, size: 8, offset: 216)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "nfl_bpg_offset", scope: !182, file: !96, line: 434, baseType: !28, size: 16, offset: 224)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "slice_bpg_offset", scope: !182, file: !96, line: 440, baseType: !28, size: 16, offset: 240)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "initial_offset", scope: !182, file: !96, line: 445, baseType: !28, size: 16, offset: 256)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "final_offset", scope: !182, file: !96, line: 450, baseType: !28, size: 16, offset: 272)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_min_qp", scope: !182, file: !96, line: 457, baseType: !79, size: 8, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_max_qp", scope: !182, file: !96, line: 464, baseType: !79, size: 8, offset: 296)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "rc_model_size", scope: !182, file: !96, line: 469, baseType: !28, size: 16, offset: 304)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rc_edge_factor", scope: !182, file: !96, line: 476, baseType: !79, size: 8, offset: 320)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit0", scope: !182, file: !96, line: 482, baseType: !79, size: 8, offset: 328)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit1", scope: !182, file: !96, line: 488, baseType: !79, size: 8, offset: 336)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset", scope: !182, file: !96, line: 496, baseType: !79, size: 8, offset: 344)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rc_buf_thresh", scope: !182, file: !96, line: 502, baseType: !217, size: 112, offset: 352)
!217 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 112, elements: !70)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "rc_range_parameters", scope: !182, file: !96, line: 508, baseType: !219, size: 240, offset: 464)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 240, elements: !101)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "native_422_420", scope: !182, file: !96, line: 517, baseType: !79, size: 8, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_bpg_offset", scope: !182, file: !96, line: 525, baseType: !79, size: 8, offset: 712)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "nsl_bpg_offset", scope: !182, file: !96, line: 531, baseType: !28, size: 16, offset: 720)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_offset_adj", scope: !182, file: !96, line: 537, baseType: !28, size: 16, offset: 736)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_94_reserved", scope: !182, file: !96, line: 542, baseType: !225, size: 32, offset: 752)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !69, line: 21, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !31, line: 27, baseType: !7)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_98_reserved", scope: !182, file: !96, line: 547, baseType: !225, size: 32, offset: 784)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_102_reserved", scope: !182, file: !96, line: 552, baseType: !225, size: 32, offset: 816)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_106_reserved", scope: !182, file: !96, line: 557, baseType: !225, size: 32, offset: 848)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_110_reserved", scope: !182, file: !96, line: 562, baseType: !225, size: 32, offset: 880)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_114_reserved", scope: !182, file: !96, line: 567, baseType: !225, size: 32, offset: 912)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_118_reserved", scope: !182, file: !96, line: 572, baseType: !225, size: 32, offset: 944)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "pps_long_122_reserved", scope: !182, file: !96, line: 577, baseType: !225, size: 32, offset: 976)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "pps_short_126_reserved", scope: !182, file: !96, line: 582, baseType: !28, size: 16, offset: 1008)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_dsc_config", file: !96, line: 75, size: 1088, elements: !238)
!238 = !{!239, !240, !241, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "line_buf_depth", scope: !237, file: !96, line: 80, baseType: !79, size: 8)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_component", scope: !237, file: !96, line: 84, baseType: !79, size: 8, offset: 8)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "convert_rgb", scope: !237, file: !96, line: 90, baseType: !242, size: 8, offset: 16)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !243, line: 35, baseType: !244)
!243 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!244 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "slice_count", scope: !237, file: !96, line: 94, baseType: !79, size: 8, offset: 24)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "slice_width", scope: !237, file: !96, line: 98, baseType: !68, size: 16, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "slice_height", scope: !237, file: !96, line: 102, baseType: !68, size: 16, offset: 48)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "simple_422", scope: !237, file: !96, line: 106, baseType: !242, size: 8, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "pic_width", scope: !237, file: !96, line: 110, baseType: !68, size: 16, offset: 80)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "pic_height", scope: !237, file: !96, line: 114, baseType: !68, size: 16, offset: 96)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset_high", scope: !237, file: !96, line: 119, baseType: !79, size: 8, offset: 112)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rc_tgt_offset_low", scope: !237, file: !96, line: 124, baseType: !79, size: 8, offset: 120)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_pixel", scope: !237, file: !96, line: 129, baseType: !68, size: 16, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rc_edge_factor", scope: !237, file: !96, line: 134, baseType: !79, size: 8, offset: 144)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit1", scope: !237, file: !96, line: 139, baseType: !79, size: 8, offset: 152)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "rc_quant_incr_limit0", scope: !237, file: !96, line: 144, baseType: !79, size: 8, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "initial_xmit_delay", scope: !237, file: !96, line: 149, baseType: !68, size: 16, offset: 176)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "initial_dec_delay", scope: !237, file: !96, line: 156, baseType: !68, size: 16, offset: 192)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "block_pred_enable", scope: !237, file: !96, line: 162, baseType: !242, size: 8, offset: 208)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "first_line_bpg_offset", scope: !237, file: !96, line: 168, baseType: !79, size: 8, offset: 216)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "initial_offset", scope: !237, file: !96, line: 172, baseType: !68, size: 16, offset: 224)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "rc_buf_thresh", scope: !237, file: !96, line: 176, baseType: !263, size: 224, offset: 240)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 224, elements: !70)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "rc_range_params", scope: !237, file: !96, line: 182, baseType: !94, size: 360, offset: 464)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rc_model_size", scope: !237, file: !96, line: 186, baseType: !68, size: 16, offset: 832)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_min_qp", scope: !237, file: !96, line: 190, baseType: !79, size: 8, offset: 848)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "flatness_max_qp", scope: !237, file: !96, line: 194, baseType: !79, size: 8, offset: 856)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "initial_scale_value", scope: !237, file: !96, line: 198, baseType: !79, size: 8, offset: 864)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "scale_decrement_interval", scope: !237, file: !96, line: 204, baseType: !68, size: 16, offset: 880)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "scale_increment_interval", scope: !237, file: !96, line: 210, baseType: !68, size: 16, offset: 896)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "nfl_bpg_offset", scope: !237, file: !96, line: 214, baseType: !68, size: 16, offset: 912)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "slice_bpg_offset", scope: !237, file: !96, line: 218, baseType: !68, size: 16, offset: 928)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "final_offset", scope: !237, file: !96, line: 222, baseType: !68, size: 16, offset: 944)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vbr_enable", scope: !237, file: !96, line: 226, baseType: !242, size: 8, offset: 960)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "mux_word_size", scope: !237, file: !96, line: 230, baseType: !79, size: 8, offset: 968)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "slice_chunk_size", scope: !237, file: !96, line: 236, baseType: !68, size: 16, offset: 976)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "rc_bits", scope: !237, file: !96, line: 240, baseType: !68, size: 16, offset: 992)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version_minor", scope: !237, file: !96, line: 244, baseType: !79, size: 8, offset: 1008)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_version_major", scope: !237, file: !96, line: 248, baseType: !79, size: 8, offset: 1016)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "native_422", scope: !237, file: !96, line: 252, baseType: !242, size: 8, offset: 1024)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !237, file: !96, line: 256, baseType: !242, size: 8, offset: 1032)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_bpg_offset", scope: !237, file: !96, line: 261, baseType: !79, size: 8, offset: 1040)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "nsl_bpg_offset", scope: !237, file: !96, line: 267, baseType: !68, size: 16, offset: 1056)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "second_line_offset_adj", scope: !237, file: !96, line: 272, baseType: !68, size: 16, offset: 1072)
!285 = !{!286, !287, !288}
!286 = !DILocalVariable(name: "pps_payload", arg: 1, scope: !178, file: !3, line: 97, type: !181)
!287 = !DILocalVariable(name: "dsc_cfg", arg: 2, scope: !178, file: !3, line: 98, type: !235)
!288 = !DILocalVariable(name: "i", scope: !178, file: !3, line: 100, type: !33)
!289 = !DILocation(line: 97, column: 69, scope: !178)
!290 = !DILocation(line: 98, column: 34, scope: !178)
!291 = !DILocation(line: 100, column: 2, scope: !178)
!292 = !DILocation(line: 100, column: 6, scope: !178)
!293 = !DILocation(line: 103, column: 2, scope: !178)
!294 = !DILocation(line: 103, column: 2, scope: !295)
!295 = distinct !DILexicalBlock(scope: !178, file: !3, line: 103, column: 2)
!296 = !DILocation(line: 106, column: 9, scope: !178)
!297 = !DILocation(line: 106, column: 2, scope: !178)
!298 = !DILocation(line: 110, column: 3, scope: !178)
!299 = !DILocation(line: 110, column: 12, scope: !178)
!300 = !DILocation(line: 111, column: 3, scope: !178)
!301 = !DILocation(line: 111, column: 12, scope: !178)
!302 = !DILocation(line: 111, column: 30, scope: !178)
!303 = !DILocation(line: 110, column: 30, scope: !178)
!304 = !DILocation(line: 109, column: 2, scope: !178)
!305 = !DILocation(line: 109, column: 15, scope: !178)
!306 = !DILocation(line: 109, column: 27, scope: !178)
!307 = !DILocation(line: 117, column: 3, scope: !178)
!308 = !DILocation(line: 117, column: 12, scope: !178)
!309 = !DILocation(line: 118, column: 3, scope: !178)
!310 = !DILocation(line: 118, column: 12, scope: !178)
!311 = !DILocation(line: 118, column: 31, scope: !178)
!312 = !DILocation(line: 117, column: 27, scope: !178)
!313 = !DILocation(line: 116, column: 2, scope: !178)
!314 = !DILocation(line: 116, column: 15, scope: !178)
!315 = !DILocation(line: 116, column: 21, scope: !178)
!316 = !DILocation(line: 122, column: 5, scope: !178)
!317 = !DILocation(line: 122, column: 14, scope: !178)
!318 = !DILocation(line: 122, column: 29, scope: !178)
!319 = !DILocation(line: 122, column: 54, scope: !178)
!320 = !DILocation(line: 124, column: 3, scope: !178)
!321 = !DILocation(line: 124, column: 12, scope: !178)
!322 = !{i8 0, i8 2}
!323 = !{}
!324 = !DILocation(line: 124, column: 23, scope: !178)
!325 = !DILocation(line: 123, column: 23, scope: !178)
!326 = !DILocation(line: 125, column: 3, scope: !178)
!327 = !DILocation(line: 125, column: 12, scope: !178)
!328 = !DILocation(line: 125, column: 23, scope: !178)
!329 = !DILocation(line: 124, column: 47, scope: !178)
!330 = !DILocation(line: 126, column: 3, scope: !178)
!331 = !DILocation(line: 126, column: 12, scope: !178)
!332 = !DILocation(line: 126, column: 24, scope: !178)
!333 = !DILocation(line: 125, column: 50, scope: !178)
!334 = !DILocation(line: 127, column: 3, scope: !178)
!335 = !DILocation(line: 127, column: 12, scope: !178)
!336 = !DILocation(line: 127, column: 30, scope: !178)
!337 = !DILocation(line: 126, column: 53, scope: !178)
!338 = !DILocation(line: 122, column: 3, scope: !178)
!339 = !DILocation(line: 121, column: 2, scope: !178)
!340 = !DILocation(line: 121, column: 15, scope: !178)
!341 = !DILocation(line: 121, column: 21, scope: !178)
!342 = !DILocation(line: 131, column: 4, scope: !178)
!343 = !DILocation(line: 131, column: 13, scope: !178)
!344 = !DILocation(line: 131, column: 28, scope: !178)
!345 = !DILocation(line: 131, column: 3, scope: !178)
!346 = !DILocation(line: 130, column: 2, scope: !178)
!347 = !DILocation(line: 130, column: 15, scope: !178)
!348 = !DILocation(line: 130, column: 34, scope: !178)
!349 = !DILocation(line: 141, column: 28, scope: !178)
!350 = !DILocation(line: 141, column: 2, scope: !178)
!351 = !DILocation(line: 141, column: 15, scope: !178)
!352 = !DILocation(line: 141, column: 26, scope: !178)
!353 = !DILocation(line: 144, column: 27, scope: !178)
!354 = !DILocation(line: 144, column: 2, scope: !178)
!355 = !DILocation(line: 144, column: 15, scope: !178)
!356 = !DILocation(line: 144, column: 25, scope: !178)
!357 = !DILocation(line: 147, column: 30, scope: !178)
!358 = !DILocation(line: 147, column: 2, scope: !178)
!359 = !DILocation(line: 147, column: 15, scope: !178)
!360 = !DILocation(line: 147, column: 28, scope: !178)
!361 = !DILocation(line: 150, column: 29, scope: !178)
!362 = !DILocation(line: 150, column: 2, scope: !178)
!363 = !DILocation(line: 150, column: 15, scope: !178)
!364 = !DILocation(line: 150, column: 27, scope: !178)
!365 = !DILocation(line: 153, column: 28, scope: !178)
!366 = !DILocation(line: 153, column: 2, scope: !178)
!367 = !DILocation(line: 153, column: 15, scope: !178)
!368 = !DILocation(line: 153, column: 26, scope: !178)
!369 = !DILocation(line: 157, column: 5, scope: !178)
!370 = !DILocation(line: 157, column: 14, scope: !178)
!371 = !DILocation(line: 157, column: 33, scope: !178)
!372 = !DILocation(line: 158, column: 40, scope: !178)
!373 = !DILocation(line: 157, column: 3, scope: !178)
!374 = !DILocation(line: 156, column: 2, scope: !178)
!375 = !DILocation(line: 156, column: 15, scope: !178)
!376 = !DILocation(line: 156, column: 39, scope: !178)
!377 = !DILocation(line: 163, column: 4, scope: !178)
!378 = !DILocation(line: 163, column: 13, scope: !178)
!379 = !DILocation(line: 163, column: 32, scope: !178)
!380 = !DILocation(line: 163, column: 3, scope: !178)
!381 = !DILocation(line: 162, column: 2, scope: !178)
!382 = !DILocation(line: 162, column: 15, scope: !178)
!383 = !DILocation(line: 162, column: 38, scope: !178)
!384 = !DILocation(line: 167, column: 3, scope: !178)
!385 = !DILocation(line: 166, column: 2, scope: !178)
!386 = !DILocation(line: 166, column: 15, scope: !178)
!387 = !DILocation(line: 166, column: 33, scope: !178)
!388 = !DILocation(line: 173, column: 3, scope: !178)
!389 = !DILocation(line: 173, column: 12, scope: !178)
!390 = !DILocation(line: 172, column: 2, scope: !178)
!391 = !DILocation(line: 172, column: 15, scope: !178)
!392 = !DILocation(line: 172, column: 35, scope: !178)
!393 = !DILocation(line: 177, column: 3, scope: !178)
!394 = !DILocation(line: 176, column: 2, scope: !178)
!395 = !DILocation(line: 176, column: 15, scope: !178)
!396 = !DILocation(line: 176, column: 40, scope: !178)
!397 = !DILocation(line: 181, column: 5, scope: !178)
!398 = !DILocation(line: 181, column: 14, scope: !178)
!399 = !DILocation(line: 181, column: 39, scope: !178)
!400 = !DILocation(line: 182, column: 38, scope: !178)
!401 = !DILocation(line: 181, column: 3, scope: !178)
!402 = !DILocation(line: 180, column: 2, scope: !178)
!403 = !DILocation(line: 180, column: 15, scope: !178)
!404 = !DILocation(line: 180, column: 45, scope: !178)
!405 = !DILocation(line: 187, column: 4, scope: !178)
!406 = !DILocation(line: 187, column: 13, scope: !178)
!407 = !DILocation(line: 187, column: 38, scope: !178)
!408 = !DILocation(line: 187, column: 3, scope: !178)
!409 = !DILocation(line: 186, column: 2, scope: !178)
!410 = !DILocation(line: 186, column: 15, scope: !178)
!411 = !DILocation(line: 186, column: 44, scope: !178)
!412 = !DILocation(line: 193, column: 3, scope: !178)
!413 = !DILocation(line: 193, column: 12, scope: !178)
!414 = !DILocation(line: 192, column: 2, scope: !178)
!415 = !DILocation(line: 192, column: 15, scope: !178)
!416 = !DILocation(line: 192, column: 37, scope: !178)
!417 = !DILocation(line: 197, column: 3, scope: !178)
!418 = !DILocation(line: 196, column: 2, scope: !178)
!419 = !DILocation(line: 196, column: 15, scope: !178)
!420 = !DILocation(line: 196, column: 30, scope: !178)
!421 = !DILocation(line: 201, column: 3, scope: !178)
!422 = !DILocation(line: 200, column: 2, scope: !178)
!423 = !DILocation(line: 200, column: 15, scope: !178)
!424 = !DILocation(line: 200, column: 32, scope: !178)
!425 = !DILocation(line: 205, column: 3, scope: !178)
!426 = !DILocation(line: 204, column: 2, scope: !178)
!427 = !DILocation(line: 204, column: 15, scope: !178)
!428 = !DILocation(line: 204, column: 30, scope: !178)
!429 = !DILocation(line: 208, column: 30, scope: !178)
!430 = !DILocation(line: 208, column: 2, scope: !178)
!431 = !DILocation(line: 208, column: 15, scope: !178)
!432 = !DILocation(line: 208, column: 28, scope: !178)
!433 = !DILocation(line: 211, column: 33, scope: !178)
!434 = !DILocation(line: 211, column: 42, scope: !178)
!435 = !DILocation(line: 211, column: 2, scope: !178)
!436 = !DILocation(line: 211, column: 15, scope: !178)
!437 = !DILocation(line: 211, column: 31, scope: !178)
!438 = !DILocation(line: 214, column: 33, scope: !178)
!439 = !DILocation(line: 214, column: 42, scope: !178)
!440 = !DILocation(line: 214, column: 2, scope: !178)
!441 = !DILocation(line: 214, column: 15, scope: !178)
!442 = !DILocation(line: 214, column: 31, scope: !178)
!443 = !DILocation(line: 217, column: 31, scope: !178)
!444 = !DILocation(line: 217, column: 2, scope: !178)
!445 = !DILocation(line: 217, column: 15, scope: !178)
!446 = !DILocation(line: 217, column: 29, scope: !178)
!447 = !DILocation(line: 220, column: 2, scope: !178)
!448 = !DILocation(line: 220, column: 15, scope: !178)
!449 = !DILocation(line: 220, column: 30, scope: !178)
!450 = !DILocation(line: 224, column: 3, scope: !178)
!451 = !DILocation(line: 224, column: 12, scope: !178)
!452 = !DILocation(line: 223, column: 2, scope: !178)
!453 = !DILocation(line: 223, column: 15, scope: !178)
!454 = !DILocation(line: 223, column: 36, scope: !178)
!455 = !DILocation(line: 228, column: 3, scope: !178)
!456 = !DILocation(line: 228, column: 12, scope: !178)
!457 = !DILocation(line: 227, column: 2, scope: !178)
!458 = !DILocation(line: 227, column: 15, scope: !178)
!459 = !DILocation(line: 227, column: 36, scope: !178)
!460 = !DILocation(line: 231, column: 2, scope: !178)
!461 = !DILocation(line: 231, column: 15, scope: !178)
!462 = !DILocation(line: 231, column: 29, scope: !178)
!463 = !DILocation(line: 235, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !178, file: !3, line: 235, column: 2)
!465 = !DILocation(line: 235, column: 7, scope: !464)
!466 = !DILocation(line: 235, column: 14, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !3, line: 235, column: 2)
!468 = !DILocation(line: 235, column: 16, scope: !467)
!469 = !DILocation(line: 235, column: 2, scope: !464)
!470 = !DILocation(line: 237, column: 4, scope: !467)
!471 = !DILocation(line: 237, column: 13, scope: !467)
!472 = !DILocation(line: 237, column: 27, scope: !467)
!473 = !DILocation(line: 236, column: 3, scope: !467)
!474 = !DILocation(line: 236, column: 16, scope: !467)
!475 = !DILocation(line: 236, column: 30, scope: !467)
!476 = !DILocation(line: 236, column: 33, scope: !467)
!477 = !DILocation(line: 235, column: 43, scope: !467)
!478 = !DILocation(line: 235, column: 2, scope: !467)
!479 = distinct !{!479, !469, !480, !481, !482}
!480 = !DILocation(line: 237, column: 28, scope: !464)
!481 = !{!"llvm.loop.mustprogress"}
!482 = !{!"llvm.loop.unroll.disable"}
!483 = !DILocation(line: 244, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !178, file: !3, line: 244, column: 2)
!485 = !DILocation(line: 244, column: 7, scope: !484)
!486 = !DILocation(line: 244, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !484, file: !3, line: 244, column: 2)
!488 = !DILocation(line: 244, column: 16, scope: !487)
!489 = !DILocation(line: 244, column: 2, scope: !484)
!490 = !DILocation(line: 246, column: 4, scope: !491)
!491 = distinct !DILexicalBlock(scope: !487, file: !3, line: 244, column: 43)
!492 = !DILocation(line: 245, column: 3, scope: !491)
!493 = !DILocation(line: 245, column: 16, scope: !491)
!494 = !DILocation(line: 245, column: 36, scope: !491)
!495 = !DILocation(line: 245, column: 39, scope: !491)
!496 = !DILocation(line: 251, column: 2, scope: !491)
!497 = !DILocation(line: 244, column: 39, scope: !487)
!498 = !DILocation(line: 244, column: 2, scope: !487)
!499 = distinct !{!499, !489, !500, !481, !482}
!500 = !DILocation(line: 251, column: 2, scope: !484)
!501 = !DILocation(line: 254, column: 32, scope: !178)
!502 = !DILocation(line: 254, column: 41, scope: !178)
!503 = !DILocation(line: 255, column: 3, scope: !178)
!504 = !DILocation(line: 255, column: 12, scope: !178)
!505 = !DILocation(line: 255, column: 23, scope: !178)
!506 = !DILocation(line: 254, column: 52, scope: !178)
!507 = !DILocation(line: 254, column: 2, scope: !178)
!508 = !DILocation(line: 254, column: 15, scope: !178)
!509 = !DILocation(line: 254, column: 30, scope: !178)
!510 = !DILocation(line: 259, column: 3, scope: !178)
!511 = !DILocation(line: 259, column: 12, scope: !178)
!512 = !DILocation(line: 258, column: 2, scope: !178)
!513 = !DILocation(line: 258, column: 15, scope: !178)
!514 = !DILocation(line: 258, column: 38, scope: !178)
!515 = !DILocation(line: 263, column: 3, scope: !178)
!516 = !DILocation(line: 262, column: 2, scope: !178)
!517 = !DILocation(line: 262, column: 15, scope: !178)
!518 = !DILocation(line: 262, column: 30, scope: !178)
!519 = !DILocation(line: 267, column: 3, scope: !178)
!520 = !DILocation(line: 266, column: 2, scope: !178)
!521 = !DILocation(line: 266, column: 15, scope: !178)
!522 = !DILocation(line: 266, column: 38, scope: !178)
!523 = !DILocation(line: 270, column: 1, scope: !178)
!524 = distinct !DISubprogram(name: "drm_dsc_set_const_params", scope: !3, file: !3, line: 280, type: !525, scopeLine: 281, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !527}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!528 = !{!529}
!529 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !524, file: !3, line: 280, type: !527)
!530 = !DILocation(line: 280, column: 54, scope: !524)
!531 = !DILocation(line: 282, column: 7, scope: !532)
!532 = distinct !DILexicalBlock(scope: !524, file: !3, line: 282, column: 6)
!533 = !DILocation(line: 282, column: 17, scope: !532)
!534 = !DILocation(line: 282, column: 6, scope: !524)
!535 = !DILocation(line: 283, column: 3, scope: !532)
!536 = !DILocation(line: 283, column: 13, scope: !532)
!537 = !DILocation(line: 283, column: 27, scope: !532)
!538 = !DILocation(line: 284, column: 2, scope: !524)
!539 = !DILocation(line: 284, column: 12, scope: !524)
!540 = !DILocation(line: 284, column: 27, scope: !524)
!541 = !DILocation(line: 285, column: 2, scope: !524)
!542 = !DILocation(line: 285, column: 12, scope: !524)
!543 = !DILocation(line: 285, column: 31, scope: !524)
!544 = !DILocation(line: 286, column: 2, scope: !524)
!545 = !DILocation(line: 286, column: 12, scope: !524)
!546 = !DILocation(line: 286, column: 30, scope: !524)
!547 = !DILocation(line: 288, column: 6, scope: !548)
!548 = distinct !DILexicalBlock(scope: !524, file: !3, line: 288, column: 6)
!549 = !DILocation(line: 288, column: 16, scope: !548)
!550 = !DILocation(line: 288, column: 35, scope: !548)
!551 = !DILocation(line: 288, column: 6, scope: !524)
!552 = !DILocation(line: 289, column: 3, scope: !548)
!553 = !DILocation(line: 289, column: 13, scope: !548)
!554 = !DILocation(line: 289, column: 27, scope: !548)
!555 = !DILocation(line: 291, column: 3, scope: !548)
!556 = !DILocation(line: 291, column: 13, scope: !548)
!557 = !DILocation(line: 291, column: 27, scope: !548)
!558 = !DILocation(line: 292, column: 1, scope: !524)
!559 = distinct !DISubprogram(name: "drm_dsc_set_rc_buf_thresh", scope: !3, file: !3, line: 307, type: !525, scopeLine: 308, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !559, file: !3, line: 307, type: !527)
!562 = !DILocalVariable(name: "i", scope: !559, file: !3, line: 309, type: !33)
!563 = !DILocation(line: 307, column: 55, scope: !559)
!564 = !DILocation(line: 309, column: 2, scope: !559)
!565 = !DILocation(line: 309, column: 6, scope: !559)
!566 = !DILocation(line: 311, column: 2, scope: !559)
!567 = !DILocation(line: 311, column: 2, scope: !568)
!568 = distinct !DILexicalBlock(scope: !559, file: !3, line: 311, column: 2)
!569 = !DILocation(line: 313, column: 2, scope: !559)
!570 = !DILocation(line: 313, column: 2, scope: !571)
!571 = distinct !DILexicalBlock(scope: !559, file: !3, line: 313, column: 2)
!572 = !DILocation(line: 316, column: 9, scope: !573)
!573 = distinct !DILexicalBlock(scope: !559, file: !3, line: 316, column: 2)
!574 = !DILocation(line: 316, column: 7, scope: !573)
!575 = !DILocation(line: 316, column: 14, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 316, column: 2)
!577 = !DILocation(line: 316, column: 16, scope: !576)
!578 = !DILocation(line: 316, column: 2, scope: !573)
!579 = !DILocation(line: 317, column: 54, scope: !576)
!580 = !DILocation(line: 317, column: 32, scope: !576)
!581 = !DILocation(line: 317, column: 57, scope: !576)
!582 = !DILocation(line: 317, column: 3, scope: !576)
!583 = !DILocation(line: 317, column: 13, scope: !576)
!584 = !DILocation(line: 317, column: 27, scope: !576)
!585 = !DILocation(line: 317, column: 30, scope: !576)
!586 = !DILocation(line: 316, column: 54, scope: !576)
!587 = !DILocation(line: 316, column: 2, scope: !576)
!588 = distinct !{!588, !578, !589, !481, !482}
!589 = !DILocation(line: 317, column: 60, scope: !573)
!590 = !DILocation(line: 323, column: 6, scope: !591)
!591 = distinct !DILexicalBlock(scope: !559, file: !3, line: 323, column: 6)
!592 = !DILocation(line: 323, column: 16, scope: !591)
!593 = !DILocation(line: 323, column: 31, scope: !591)
!594 = !DILocation(line: 323, column: 6, scope: !559)
!595 = !DILocation(line: 324, column: 3, scope: !596)
!596 = distinct !DILexicalBlock(scope: !591, file: !3, line: 323, column: 42)
!597 = !DILocation(line: 324, column: 13, scope: !596)
!598 = !DILocation(line: 324, column: 31, scope: !596)
!599 = !DILocation(line: 325, column: 3, scope: !596)
!600 = !DILocation(line: 325, column: 13, scope: !596)
!601 = !DILocation(line: 325, column: 31, scope: !596)
!602 = !DILocation(line: 326, column: 2, scope: !596)
!603 = !DILocation(line: 327, column: 1, scope: !559)
!604 = distinct !DISubprogram(name: "drm_dsc_setup_rc_params", scope: !3, file: !3, line: 1242, type: !605, scopeLine: 1243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!605 = !DISubroutineType(types: !606)
!606 = !{!33, !527, !5}
!607 = !{!608, !609, !610, !612, !615, !616, !619}
!608 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !604, file: !3, line: 1242, type: !527)
!609 = !DILocalVariable(name: "type", arg: 2, scope: !604, file: !3, line: 1242, type: !5)
!610 = !DILocalVariable(name: "data", scope: !604, file: !3, line: 1244, type: !611)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!612 = !DILocalVariable(name: "rc_params", scope: !604, file: !3, line: 1245, type: !613)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!615 = !DILocalVariable(name: "i", scope: !604, file: !3, line: 1246, type: !33)
!616 = !DILocalVariable(name: "__ret_warn_on", scope: !617, file: !3, line: 1248, type: !33)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 1248, column: 6)
!618 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1248, column: 6)
!619 = !DILocalVariable(name: "__flags", scope: !620, file: !3, line: 1248, type: !33)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 1248, column: 6)
!621 = distinct !DILexicalBlock(scope: !617, file: !3, line: 1248, column: 6)
!622 = !DILocation(line: 1242, column: 52, scope: !604)
!623 = !DILocation(line: 1242, column: 87, scope: !604)
!624 = !DILocation(line: 1244, column: 2, scope: !604)
!625 = !DILocation(line: 1244, column: 35, scope: !604)
!626 = !DILocation(line: 1245, column: 2, scope: !604)
!627 = !DILocation(line: 1245, column: 30, scope: !604)
!628 = !DILocation(line: 1246, column: 2, scope: !604)
!629 = !DILocation(line: 1246, column: 6, scope: !604)
!630 = !DILocation(line: 1248, column: 6, scope: !617)
!631 = !DILocation(line: 1248, column: 6, scope: !621)
!632 = !DILocation(line: 1248, column: 6, scope: !620)
!633 = !DILocation(line: 1248, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1248, column: 6)
!635 = !DILocation(line: 1248, column: 6, scope: !636)
!636 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1248, column: 6)
!637 = !{i64 2156889366, i64 2156889395, i64 2156889441, i64 2156889499, i64 2156889553, i64 2156889607, i64 2156889662, i64 2156889693, i64 2156890001, i64 2156890007, i64 2156890054, i64 2156890077, i64 2156890103}
!638 = !DILocation(line: 1248, column: 6, scope: !639)
!639 = distinct !DILexicalBlock(scope: !620, file: !3, line: 1248, column: 6)
!640 = !DILocation(line: 1248, column: 6, scope: !618)
!641 = !DILocation(line: 1248, column: 6, scope: !604)
!642 = !DILocation(line: 1250, column: 3, scope: !618)
!643 = !DILocation(line: 1252, column: 10, scope: !604)
!644 = !DILocation(line: 1252, column: 2, scope: !604)
!645 = !DILocation(line: 1254, column: 8, scope: !646)
!646 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1252, column: 16)
!647 = !DILocation(line: 1255, column: 3, scope: !646)
!648 = !DILocation(line: 1257, column: 8, scope: !646)
!649 = !DILocation(line: 1258, column: 3, scope: !646)
!650 = !DILocation(line: 1260, column: 8, scope: !646)
!651 = !DILocation(line: 1261, column: 3, scope: !646)
!652 = !DILocation(line: 1263, column: 8, scope: !646)
!653 = !DILocation(line: 1264, column: 3, scope: !646)
!654 = !DILocation(line: 1266, column: 3, scope: !646)
!655 = !DILocation(line: 1269, column: 28, scope: !604)
!656 = !DILocation(line: 1270, column: 7, scope: !604)
!657 = !DILocation(line: 1270, column: 17, scope: !604)
!658 = !DILocation(line: 1271, column: 7, scope: !604)
!659 = !DILocation(line: 1271, column: 17, scope: !604)
!660 = !DILocation(line: 1269, column: 14, scope: !604)
!661 = !DILocation(line: 1269, column: 12, scope: !604)
!662 = !DILocation(line: 1272, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1272, column: 6)
!664 = !DILocation(line: 1272, column: 6, scope: !604)
!665 = !DILocation(line: 1273, column: 3, scope: !663)
!666 = !DILocation(line: 1275, column: 36, scope: !604)
!667 = !DILocation(line: 1275, column: 47, scope: !604)
!668 = !DILocation(line: 1275, column: 2, scope: !604)
!669 = !DILocation(line: 1275, column: 12, scope: !604)
!670 = !DILocation(line: 1275, column: 34, scope: !604)
!671 = !DILocation(line: 1276, column: 33, scope: !604)
!672 = !DILocation(line: 1276, column: 44, scope: !604)
!673 = !DILocation(line: 1276, column: 2, scope: !604)
!674 = !DILocation(line: 1276, column: 12, scope: !604)
!675 = !DILocation(line: 1276, column: 31, scope: !604)
!676 = !DILocation(line: 1277, column: 29, scope: !604)
!677 = !DILocation(line: 1277, column: 40, scope: !604)
!678 = !DILocation(line: 1277, column: 2, scope: !604)
!679 = !DILocation(line: 1277, column: 12, scope: !604)
!680 = !DILocation(line: 1277, column: 27, scope: !604)
!681 = !DILocation(line: 1278, column: 30, scope: !604)
!682 = !DILocation(line: 1278, column: 41, scope: !604)
!683 = !DILocation(line: 1278, column: 2, scope: !604)
!684 = !DILocation(line: 1278, column: 12, scope: !604)
!685 = !DILocation(line: 1278, column: 28, scope: !604)
!686 = !DILocation(line: 1279, column: 30, scope: !604)
!687 = !DILocation(line: 1279, column: 41, scope: !604)
!688 = !DILocation(line: 1279, column: 2, scope: !604)
!689 = !DILocation(line: 1279, column: 12, scope: !604)
!690 = !DILocation(line: 1279, column: 28, scope: !604)
!691 = !DILocation(line: 1280, column: 35, scope: !604)
!692 = !DILocation(line: 1280, column: 46, scope: !604)
!693 = !DILocation(line: 1280, column: 2, scope: !604)
!694 = !DILocation(line: 1280, column: 12, scope: !604)
!695 = !DILocation(line: 1280, column: 33, scope: !604)
!696 = !DILocation(line: 1281, column: 35, scope: !604)
!697 = !DILocation(line: 1281, column: 46, scope: !604)
!698 = !DILocation(line: 1281, column: 2, scope: !604)
!699 = !DILocation(line: 1281, column: 12, scope: !604)
!700 = !DILocation(line: 1281, column: 33, scope: !604)
!701 = !DILocation(line: 1283, column: 9, scope: !702)
!702 = distinct !DILexicalBlock(scope: !604, file: !3, line: 1283, column: 2)
!703 = !DILocation(line: 1283, column: 7, scope: !702)
!704 = !DILocation(line: 1283, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !3, line: 1283, column: 2)
!706 = !DILocation(line: 1283, column: 16, scope: !705)
!707 = !DILocation(line: 1283, column: 2, scope: !702)
!708 = !DILocation(line: 1285, column: 4, scope: !709)
!709 = distinct !DILexicalBlock(scope: !705, file: !3, line: 1283, column: 43)
!710 = !DILocation(line: 1285, column: 15, scope: !709)
!711 = !DILocation(line: 1285, column: 31, scope: !709)
!712 = !DILocation(line: 1285, column: 34, scope: !709)
!713 = !DILocation(line: 1284, column: 3, scope: !709)
!714 = !DILocation(line: 1284, column: 13, scope: !709)
!715 = !DILocation(line: 1284, column: 29, scope: !709)
!716 = !DILocation(line: 1284, column: 32, scope: !709)
!717 = !DILocation(line: 1284, column: 45, scope: !709)
!718 = !DILocation(line: 1287, column: 4, scope: !709)
!719 = !DILocation(line: 1287, column: 15, scope: !709)
!720 = !DILocation(line: 1287, column: 31, scope: !709)
!721 = !DILocation(line: 1287, column: 34, scope: !709)
!722 = !DILocation(line: 1286, column: 3, scope: !709)
!723 = !DILocation(line: 1286, column: 13, scope: !709)
!724 = !DILocation(line: 1286, column: 29, scope: !709)
!725 = !DILocation(line: 1286, column: 32, scope: !709)
!726 = !DILocation(line: 1286, column: 45, scope: !709)
!727 = !DILocation(line: 1293, column: 4, scope: !709)
!728 = !DILocation(line: 1293, column: 15, scope: !709)
!729 = !DILocation(line: 1293, column: 31, scope: !709)
!730 = !DILocation(line: 1293, column: 34, scope: !709)
!731 = !DILocation(line: 1293, column: 51, scope: !709)
!732 = !DILocation(line: 1292, column: 3, scope: !709)
!733 = !DILocation(line: 1292, column: 13, scope: !709)
!734 = !DILocation(line: 1292, column: 29, scope: !709)
!735 = !DILocation(line: 1292, column: 32, scope: !709)
!736 = !DILocation(line: 1292, column: 49, scope: !709)
!737 = !DILocation(line: 1295, column: 2, scope: !709)
!738 = !DILocation(line: 1283, column: 39, scope: !705)
!739 = !DILocation(line: 1283, column: 2, scope: !705)
!740 = distinct !{!740, !707, !741, !481, !482}
!741 = !DILocation(line: 1295, column: 2, scope: !702)
!742 = !DILocation(line: 1297, column: 2, scope: !604)
!743 = !DILocation(line: 1298, column: 1, scope: !604)
!744 = distinct !DISubprogram(name: "get_rc_params", scope: !3, file: !3, line: 1217, type: !745, scopeLine: 1220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!613, !611, !68, !79}
!747 = !{!748, !749, !750, !751}
!748 = !DILocalVariable(name: "rc_parameters", arg: 1, scope: !744, file: !3, line: 1217, type: !611)
!749 = !DILocalVariable(name: "dsc_bpp", arg: 2, scope: !744, file: !3, line: 1218, type: !68)
!750 = !DILocalVariable(name: "bits_per_component", arg: 3, scope: !744, file: !3, line: 1219, type: !79)
!751 = !DILocalVariable(name: "i", scope: !744, file: !3, line: 1221, type: !33)
!752 = !DILocation(line: 1217, column: 83, scope: !744)
!753 = !DILocation(line: 1218, column: 12, scope: !744)
!754 = !DILocation(line: 1219, column: 11, scope: !744)
!755 = !DILocation(line: 1221, column: 2, scope: !744)
!756 = !DILocation(line: 1221, column: 6, scope: !744)
!757 = !DILocation(line: 1223, column: 9, scope: !758)
!758 = distinct !DILexicalBlock(scope: !744, file: !3, line: 1223, column: 2)
!759 = !DILocation(line: 1223, column: 7, scope: !758)
!760 = !DILocation(line: 1223, column: 14, scope: !761)
!761 = distinct !DILexicalBlock(scope: !758, file: !3, line: 1223, column: 2)
!762 = !DILocation(line: 1223, column: 28, scope: !761)
!763 = !DILocation(line: 1223, column: 31, scope: !761)
!764 = !DILocation(line: 1223, column: 2, scope: !758)
!765 = !DILocation(line: 1224, column: 7, scope: !766)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 1224, column: 7)
!767 = !DILocation(line: 1224, column: 21, scope: !766)
!768 = !DILocation(line: 1224, column: 24, scope: !766)
!769 = !DILocation(line: 1224, column: 31, scope: !766)
!770 = !DILocation(line: 1224, column: 28, scope: !766)
!771 = !DILocation(line: 1224, column: 39, scope: !766)
!772 = !DILocation(line: 1225, column: 7, scope: !766)
!773 = !DILocation(line: 1225, column: 21, scope: !766)
!774 = !DILocation(line: 1225, column: 24, scope: !766)
!775 = !DILocation(line: 1225, column: 31, scope: !766)
!776 = !DILocation(line: 1225, column: 28, scope: !766)
!777 = !DILocation(line: 1224, column: 7, scope: !761)
!778 = !DILocation(line: 1226, column: 12, scope: !766)
!779 = !DILocation(line: 1226, column: 26, scope: !766)
!780 = !DILocation(line: 1226, column: 29, scope: !766)
!781 = !DILocation(line: 1226, column: 4, scope: !766)
!782 = !DILocation(line: 1223, column: 37, scope: !761)
!783 = !DILocation(line: 1223, column: 2, scope: !761)
!784 = distinct !{!784, !764, !785, !481, !482}
!785 = !DILocation(line: 1226, column: 29, scope: !758)
!786 = !DILocation(line: 1228, column: 2, scope: !744)
!787 = !DILocation(line: 1229, column: 1, scope: !744)
!788 = distinct !DISubprogram(name: "drm_dsc_compute_rc_parameters", scope: !3, file: !3, line: 1311, type: !789, scopeLine: 1312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!33, !527}
!791 = !{!792, !793, !795, !796, !797, !798, !799, !800}
!792 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !788, file: !3, line: 1311, type: !527)
!793 = !DILocalVariable(name: "groups_per_line", scope: !788, file: !3, line: 1313, type: !794)
!794 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!795 = !DILocalVariable(name: "groups_total", scope: !788, file: !3, line: 1314, type: !794)
!796 = !DILocalVariable(name: "num_extra_mux_bits", scope: !788, file: !3, line: 1315, type: !794)
!797 = !DILocalVariable(name: "slice_bits", scope: !788, file: !3, line: 1316, type: !794)
!798 = !DILocalVariable(name: "hrd_delay", scope: !788, file: !3, line: 1317, type: !794)
!799 = !DILocalVariable(name: "final_scale", scope: !788, file: !3, line: 1318, type: !794)
!800 = !DILocalVariable(name: "rbs_min", scope: !788, file: !3, line: 1319, type: !794)
!801 = !DILocation(line: 1311, column: 58, scope: !788)
!802 = !DILocation(line: 1313, column: 2, scope: !788)
!803 = !DILocation(line: 1313, column: 16, scope: !788)
!804 = !DILocation(line: 1314, column: 2, scope: !788)
!805 = !DILocation(line: 1314, column: 16, scope: !788)
!806 = !DILocation(line: 1315, column: 2, scope: !788)
!807 = !DILocation(line: 1315, column: 16, scope: !788)
!808 = !DILocation(line: 1316, column: 2, scope: !788)
!809 = !DILocation(line: 1316, column: 16, scope: !788)
!810 = !DILocation(line: 1317, column: 2, scope: !788)
!811 = !DILocation(line: 1317, column: 16, scope: !788)
!812 = !DILocation(line: 1318, column: 2, scope: !788)
!813 = !DILocation(line: 1318, column: 16, scope: !788)
!814 = !DILocation(line: 1319, column: 2, scope: !788)
!815 = !DILocation(line: 1319, column: 16, scope: !788)
!816 = !DILocation(line: 1321, column: 6, scope: !817)
!817 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1321, column: 6)
!818 = !DILocation(line: 1321, column: 16, scope: !817)
!819 = !DILocation(line: 1321, column: 27, scope: !817)
!820 = !DILocation(line: 1321, column: 30, scope: !817)
!821 = !DILocation(line: 1321, column: 40, scope: !817)
!822 = !DILocation(line: 1321, column: 6, scope: !788)
!823 = !DILocation(line: 1323, column: 21, scope: !824)
!824 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1321, column: 52)
!825 = !DILocation(line: 1323, column: 19, scope: !824)
!826 = !DILocation(line: 1327, column: 32, scope: !824)
!827 = !DILocation(line: 1327, column: 3, scope: !824)
!828 = !DILocation(line: 1327, column: 13, scope: !824)
!829 = !DILocation(line: 1327, column: 30, scope: !824)
!830 = !DILocation(line: 1330, column: 2, scope: !824)
!831 = !DILocation(line: 1332, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1330, column: 9)
!833 = !DILocation(line: 1332, column: 19, scope: !832)
!834 = !DILocation(line: 1336, column: 32, scope: !832)
!835 = !DILocation(line: 1336, column: 3, scope: !832)
!836 = !DILocation(line: 1336, column: 13, scope: !832)
!837 = !DILocation(line: 1336, column: 30, scope: !832)
!838 = !DILocation(line: 1341, column: 6, scope: !839)
!839 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1341, column: 6)
!840 = !DILocation(line: 1341, column: 16, scope: !839)
!841 = !DILocation(line: 1341, column: 6, scope: !788)
!842 = !DILocation(line: 1342, column: 29, scope: !839)
!843 = !DILocation(line: 1342, column: 39, scope: !839)
!844 = !DILocation(line: 1343, column: 13, scope: !839)
!845 = !DILocation(line: 1343, column: 23, scope: !839)
!846 = !DILocation(line: 1343, column: 11, scope: !839)
!847 = !DILocation(line: 1343, column: 42, scope: !839)
!848 = !DILocation(line: 1342, column: 53, scope: !839)
!849 = !DILocation(line: 1344, column: 8, scope: !839)
!850 = !DILocation(line: 1342, column: 26, scope: !839)
!851 = !DILocation(line: 1342, column: 24, scope: !839)
!852 = !DILocation(line: 1342, column: 22, scope: !839)
!853 = !DILocation(line: 1342, column: 3, scope: !839)
!854 = !DILocation(line: 1345, column: 11, scope: !855)
!855 = distinct !DILexicalBlock(scope: !839, file: !3, line: 1345, column: 11)
!856 = !DILocation(line: 1345, column: 21, scope: !855)
!857 = !DILocation(line: 1345, column: 11, scope: !839)
!858 = !DILocation(line: 1346, column: 28, scope: !855)
!859 = !DILocation(line: 1346, column: 38, scope: !855)
!860 = !DILocation(line: 1346, column: 26, scope: !855)
!861 = !DILocation(line: 1347, column: 9, scope: !855)
!862 = !DILocation(line: 1347, column: 19, scope: !855)
!863 = !DILocation(line: 1347, column: 7, scope: !855)
!864 = !DILocation(line: 1347, column: 38, scope: !855)
!865 = !DILocation(line: 1346, column: 52, scope: !855)
!866 = !DILocation(line: 1348, column: 13, scope: !855)
!867 = !DILocation(line: 1348, column: 23, scope: !855)
!868 = !DILocation(line: 1348, column: 11, scope: !855)
!869 = !DILocation(line: 1348, column: 6, scope: !855)
!870 = !DILocation(line: 1347, column: 43, scope: !855)
!871 = !DILocation(line: 1348, column: 43, scope: !855)
!872 = !DILocation(line: 1346, column: 24, scope: !855)
!873 = !DILocation(line: 1346, column: 22, scope: !855)
!874 = !DILocation(line: 1346, column: 3, scope: !855)
!875 = !DILocation(line: 1350, column: 28, scope: !855)
!876 = !DILocation(line: 1350, column: 38, scope: !855)
!877 = !DILocation(line: 1350, column: 26, scope: !855)
!878 = !DILocation(line: 1351, column: 9, scope: !855)
!879 = !DILocation(line: 1351, column: 19, scope: !855)
!880 = !DILocation(line: 1351, column: 7, scope: !855)
!881 = !DILocation(line: 1351, column: 38, scope: !855)
!882 = !DILocation(line: 1350, column: 52, scope: !855)
!883 = !DILocation(line: 1352, column: 13, scope: !855)
!884 = !DILocation(line: 1352, column: 23, scope: !855)
!885 = !DILocation(line: 1352, column: 11, scope: !855)
!886 = !DILocation(line: 1352, column: 6, scope: !855)
!887 = !DILocation(line: 1351, column: 43, scope: !855)
!888 = !DILocation(line: 1352, column: 43, scope: !855)
!889 = !DILocation(line: 1350, column: 24, scope: !855)
!890 = !DILocation(line: 1350, column: 22, scope: !855)
!891 = !DILocation(line: 1354, column: 19, scope: !788)
!892 = !DILocation(line: 1354, column: 29, scope: !788)
!893 = !DILocation(line: 1354, column: 17, scope: !788)
!894 = !DILocation(line: 1354, column: 48, scope: !788)
!895 = !DILocation(line: 1354, column: 58, scope: !788)
!896 = !DILocation(line: 1354, column: 46, scope: !788)
!897 = !DILocation(line: 1354, column: 15, scope: !788)
!898 = !DILocation(line: 1354, column: 13, scope: !788)
!899 = !DILocation(line: 1356, column: 2, scope: !788)
!900 = !DILocation(line: 1356, column: 10, scope: !788)
!901 = !DILocation(line: 1356, column: 29, scope: !788)
!902 = !DILocation(line: 1356, column: 34, scope: !788)
!903 = !DILocation(line: 1357, column: 11, scope: !788)
!904 = !DILocation(line: 1357, column: 24, scope: !788)
!905 = !DILocation(line: 1357, column: 22, scope: !788)
!906 = !DILocation(line: 1357, column: 46, scope: !788)
!907 = !DILocation(line: 1357, column: 56, scope: !788)
!908 = !DILocation(line: 1357, column: 44, scope: !788)
!909 = !DILocation(line: 0, scope: !788)
!910 = !DILocation(line: 1358, column: 21, scope: !788)
!911 = distinct !{!911, !899, !910, !481, !482}
!912 = !DILocation(line: 1360, column: 6, scope: !913)
!913 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1360, column: 6)
!914 = !DILocation(line: 1360, column: 24, scope: !913)
!915 = !DILocation(line: 1360, column: 34, scope: !913)
!916 = !DILocation(line: 1360, column: 54, scope: !913)
!917 = !DILocation(line: 1360, column: 22, scope: !913)
!918 = !DILocation(line: 1360, column: 6, scope: !788)
!919 = !DILocation(line: 1361, column: 35, scope: !913)
!920 = !DILocation(line: 1361, column: 51, scope: !913)
!921 = !DILocation(line: 1361, column: 3, scope: !913)
!922 = !DILocation(line: 1361, column: 13, scope: !913)
!923 = !DILocation(line: 1361, column: 33, scope: !913)
!924 = !DILocation(line: 1364, column: 6, scope: !925)
!925 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1364, column: 6)
!926 = !DILocation(line: 1364, column: 16, scope: !925)
!927 = !DILocation(line: 1364, column: 36, scope: !925)
!928 = !DILocation(line: 1364, column: 6, scope: !788)
!929 = !DILocation(line: 1365, column: 40, scope: !925)
!930 = !DILocation(line: 1366, column: 5, scope: !925)
!931 = !DILocation(line: 1366, column: 15, scope: !925)
!932 = !DILocation(line: 1366, column: 35, scope: !925)
!933 = !DILocation(line: 1366, column: 4, scope: !925)
!934 = !DILocation(line: 1365, column: 56, scope: !925)
!935 = !DILocation(line: 1365, column: 3, scope: !925)
!936 = !DILocation(line: 1365, column: 13, scope: !925)
!937 = !DILocation(line: 1365, column: 38, scope: !925)
!938 = !DILocation(line: 1368, column: 3, scope: !925)
!939 = !DILocation(line: 1368, column: 13, scope: !925)
!940 = !DILocation(line: 1368, column: 38, scope: !925)
!941 = !DILocation(line: 1370, column: 27, scope: !788)
!942 = !DILocation(line: 1370, column: 37, scope: !788)
!943 = !DILocation(line: 1371, column: 4, scope: !788)
!944 = !DILocation(line: 1371, column: 14, scope: !788)
!945 = !DILocation(line: 1372, column: 4, scope: !788)
!946 = !DILocation(line: 1372, column: 14, scope: !788)
!947 = !DILocation(line: 1371, column: 33, scope: !788)
!948 = !DILocation(line: 1372, column: 29, scope: !788)
!949 = !DILocation(line: 1372, column: 34, scope: !788)
!950 = !DILocation(line: 1370, column: 51, scope: !788)
!951 = !DILocation(line: 1372, column: 41, scope: !788)
!952 = !DILocation(line: 1372, column: 39, scope: !788)
!953 = !DILocation(line: 1370, column: 2, scope: !788)
!954 = !DILocation(line: 1370, column: 12, scope: !788)
!955 = !DILocation(line: 1370, column: 25, scope: !788)
!956 = !DILocation(line: 1374, column: 6, scope: !957)
!957 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1374, column: 6)
!958 = !DILocation(line: 1374, column: 16, scope: !957)
!959 = !DILocation(line: 1374, column: 32, scope: !957)
!960 = !DILocation(line: 1374, column: 42, scope: !957)
!961 = !DILocation(line: 1374, column: 29, scope: !957)
!962 = !DILocation(line: 1374, column: 6, scope: !788)
!963 = !DILocation(line: 1375, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !957, file: !3, line: 1374, column: 57)
!965 = !DILocation(line: 1376, column: 3, scope: !964)
!966 = !DILocation(line: 1379, column: 17, scope: !788)
!967 = !DILocation(line: 1379, column: 27, scope: !788)
!968 = !DILocation(line: 1379, column: 41, scope: !788)
!969 = !DILocation(line: 1380, column: 4, scope: !788)
!970 = !DILocation(line: 1380, column: 14, scope: !788)
!971 = !DILocation(line: 1380, column: 30, scope: !788)
!972 = !DILocation(line: 1380, column: 40, scope: !788)
!973 = !DILocation(line: 1380, column: 28, scope: !788)
!974 = !DILocation(line: 1379, column: 46, scope: !788)
!975 = !DILocation(line: 1379, column: 16, scope: !788)
!976 = !DILocation(line: 1379, column: 14, scope: !788)
!977 = !DILocation(line: 1381, column: 6, scope: !978)
!978 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1381, column: 6)
!979 = !DILocation(line: 1381, column: 16, scope: !978)
!980 = !DILocation(line: 1381, column: 29, scope: !978)
!981 = !DILocation(line: 1381, column: 6, scope: !788)
!982 = !DILocation(line: 1387, column: 30, scope: !978)
!983 = !DILocation(line: 1387, column: 3, scope: !978)
!984 = !DILocation(line: 1387, column: 13, scope: !978)
!985 = !DILocation(line: 1387, column: 28, scope: !978)
!986 = !DILocation(line: 1390, column: 3, scope: !978)
!987 = !DILocation(line: 1390, column: 13, scope: !978)
!988 = !DILocation(line: 1390, column: 28, scope: !978)
!989 = !DILocation(line: 1393, column: 17, scope: !788)
!990 = !DILocation(line: 1393, column: 35, scope: !788)
!991 = !DILocation(line: 1393, column: 45, scope: !788)
!992 = !DILocation(line: 1393, column: 33, scope: !788)
!993 = !DILocation(line: 1393, column: 15, scope: !788)
!994 = !DILocation(line: 1396, column: 31, scope: !788)
!995 = !DILocation(line: 1396, column: 2, scope: !788)
!996 = !DILocation(line: 1396, column: 12, scope: !788)
!997 = !DILocation(line: 1396, column: 29, scope: !788)
!998 = !DILocation(line: 1401, column: 6, scope: !999)
!999 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1401, column: 6)
!1000 = !DILocation(line: 1401, column: 18, scope: !999)
!1001 = !DILocation(line: 1401, column: 6, scope: !788)
!1002 = !DILocation(line: 1409, column: 6, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1401, column: 23)
!1004 = !DILocation(line: 1409, column: 16, scope: !1003)
!1005 = !DILocation(line: 1409, column: 29, scope: !1003)
!1006 = !DILocation(line: 1409, column: 5, scope: !1003)
!1007 = !DILocation(line: 1410, column: 7, scope: !1003)
!1008 = !DILocation(line: 1410, column: 17, scope: !1003)
!1009 = !DILocation(line: 1411, column: 5, scope: !1003)
!1010 = !DILocation(line: 1411, column: 15, scope: !1003)
!1011 = !DILocation(line: 1410, column: 32, scope: !1003)
!1012 = !DILocation(line: 1410, column: 6, scope: !1003)
!1013 = !DILocation(line: 1412, column: 6, scope: !1003)
!1014 = !DILocation(line: 1412, column: 18, scope: !1003)
!1015 = !DILocation(line: 1411, column: 33, scope: !1003)
!1016 = !DILocation(line: 1409, column: 42, scope: !1003)
!1017 = !DILocation(line: 1408, column: 3, scope: !1003)
!1018 = !DILocation(line: 1408, column: 13, scope: !1003)
!1019 = !DILocation(line: 1408, column: 38, scope: !1003)
!1020 = !DILocation(line: 1413, column: 2, scope: !1003)
!1021 = !DILocation(line: 1418, column: 3, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !999, file: !3, line: 1413, column: 9)
!1023 = !DILocation(line: 1418, column: 13, scope: !1022)
!1024 = !DILocation(line: 1418, column: 38, scope: !1022)
!1025 = !DILocation(line: 1426, column: 12, scope: !788)
!1026 = !DILocation(line: 1426, column: 22, scope: !788)
!1027 = !DILocation(line: 1426, column: 38, scope: !788)
!1028 = !DILocation(line: 1426, column: 48, scope: !788)
!1029 = !DILocation(line: 1426, column: 36, scope: !788)
!1030 = !DILocation(line: 1427, column: 3, scope: !788)
!1031 = !DILocation(line: 1426, column: 63, scope: !788)
!1032 = !DILocation(line: 1429, column: 3, scope: !788)
!1033 = !DILocation(line: 1429, column: 21, scope: !788)
!1034 = !DILocation(line: 1429, column: 31, scope: !788)
!1035 = !DILocation(line: 1429, column: 19, scope: !788)
!1036 = !DILocation(line: 1428, column: 39, scope: !788)
!1037 = !DILocation(line: 1426, column: 10, scope: !788)
!1038 = !DILocation(line: 1431, column: 14, scope: !788)
!1039 = !DILocation(line: 1431, column: 12, scope: !788)
!1040 = !DILocation(line: 1432, column: 23, scope: !788)
!1041 = !DILocation(line: 1432, column: 35, scope: !788)
!1042 = !DILocation(line: 1432, column: 45, scope: !788)
!1043 = !DILocation(line: 1432, column: 33, scope: !788)
!1044 = !DILocation(line: 1432, column: 61, scope: !788)
!1045 = !DILocation(line: 1432, column: 22, scope: !788)
!1046 = !DILocation(line: 1432, column: 2, scope: !788)
!1047 = !DILocation(line: 1432, column: 12, scope: !788)
!1048 = !DILocation(line: 1432, column: 20, scope: !788)
!1049 = !DILocation(line: 1433, column: 32, scope: !788)
!1050 = !DILocation(line: 1433, column: 44, scope: !788)
!1051 = !DILocation(line: 1433, column: 54, scope: !788)
!1052 = !DILocation(line: 1433, column: 42, scope: !788)
!1053 = !DILocation(line: 1433, column: 2, scope: !788)
!1054 = !DILocation(line: 1433, column: 12, scope: !788)
!1055 = !DILocation(line: 1433, column: 30, scope: !788)
!1056 = !DILocation(line: 1435, column: 2, scope: !788)
!1057 = !DILocation(line: 1436, column: 1, scope: !788)
!1058 = !DISubprogram(name: "___drm_dbg", scope: !14, file: !14, line: 571, type: !1059, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{null, !1061, !13, !1066, null}
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !1063, line: 16, size: 448, align: 64, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!1064 = !{!1065, !1068, !1069, !1070, !1071, !1072, !1073, !1074}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !1062, file: !1063, line: 21, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1062, file: !1063, line: 22, baseType: !1066, size: 64, offset: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !1062, file: !1063, line: 23, baseType: !1066, size: 64, offset: 128)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !1062, file: !1063, line: 24, baseType: !1066, size: 64, offset: 192)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !1062, file: !1063, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !1062, file: !1063, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1062, file: !1063, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1062, file: !1063, line: 57, baseType: !1075, size: 128, offset: 320)
!1075 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1062, file: !1063, line: 54, size: 128, elements: !1076)
!1076 = !{!1077, !1106}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !1075, file: !1063, line: 55, baseType: !1078, size: 128)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !1079, line: 359, size: 128, elements: !1080)
!1079 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1080 = !{!1081}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1078, file: !1079, line: 360, baseType: !1082, size: 128)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1079, line: 85, size: 128, elements: !1083)
!1083 = !{!1084, !1089}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1082, file: !1079, line: 86, baseType: !1085, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !243, line: 174, baseType: !1086)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !243, line: 172, size: 32, elements: !1087)
!1087 = !{!1088}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !1086, file: !243, line: 173, baseType: !33, size: 32)
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1082, file: !1079, line: 101, baseType: !1090, size: 64, offset: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1082, file: !1079, line: 101, size: 64, elements: !1091)
!1091 = !{!1092, !1093, !1103}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1090, file: !1079, line: 102, baseType: !794, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1090, file: !1079, line: 103, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1079, line: 117, size: 128, elements: !1096)
!1096 = !{!1097, !1100, !1101}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1095, file: !1079, line: 118, baseType: !1098, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !69, line: 20, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !31, line: 26, baseType: !33)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1095, file: !1079, line: 119, baseType: !1098, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1095, file: !1079, line: 120, baseType: !1102, size: 64, offset: 64)
!1102 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1090, file: !1079, line: 104, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1079, line: 104, flags: DIFlagFwdDecl)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !1075, file: !1063, line: 56, baseType: !1107, size: 128)
!1107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1079, line: 363, size: 128, elements: !1108)
!1108 = !{!1109}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1107, file: !1079, line: 364, baseType: !1082, size: 128)
!1110 = distinct !DISubprogram(name: "drm_dsc_get_bpp_int", scope: !3, file: !3, line: 1445, type: !1111, scopeLine: 1446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!225, !235}
!1113 = !{!1114, !1115, !1117}
!1114 = !DILocalVariable(name: "vdsc_cfg", arg: 1, scope: !1110, file: !3, line: 1445, type: !235)
!1115 = !DILocalVariable(name: "__ret_warn_on", scope: !1116, file: !3, line: 1447, type: !33)
!1116 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 1447, column: 2)
!1117 = !DILocalVariable(name: "__flags", scope: !1118, file: !3, line: 1447, type: !33)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 1447, column: 2)
!1119 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 1447, column: 2)
!1120 = !DILocation(line: 1445, column: 54, scope: !1110)
!1121 = !DILocation(line: 1447, column: 2, scope: !1116)
!1122 = !DILocation(line: 1447, column: 2, scope: !1119)
!1123 = !DILocation(line: 1447, column: 2, scope: !1118)
!1124 = !DILocation(line: 1447, column: 2, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1447, column: 2)
!1126 = !DILocation(line: 1447, column: 2, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1447, column: 2)
!1128 = !{i64 2156896148, i64 2156896177, i64 2156896223, i64 2156896281, i64 2156896335, i64 2156896389, i64 2156896444, i64 2156896475, i64 2156896783, i64 2156896789, i64 2156896836, i64 2156896859, i64 2156896885}
!1129 = !DILocation(line: 1447, column: 2, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 1447, column: 2)
!1131 = !DILocation(line: 1447, column: 2, scope: !1110)
!1132 = !DILocation(line: 1448, column: 9, scope: !1110)
!1133 = !DILocation(line: 1448, column: 19, scope: !1110)
!1134 = !DILocation(line: 1448, column: 34, scope: !1110)
!1135 = !DILocation(line: 1448, column: 2, scope: !1110)
!1136 = distinct !DISubprogram(name: "drm_dsc_initial_scale_value", scope: !3, file: !3, line: 1458, type: !1137, scopeLine: 1459, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1139)
!1137 = !DISubroutineType(types: !1138)
!1138 = !{!79, !235}
!1139 = !{!1140}
!1140 = !DILocalVariable(name: "dsc", arg: 1, scope: !1136, file: !3, line: 1458, type: !235)
!1141 = !DILocation(line: 1458, column: 61, scope: !1136)
!1142 = !DILocation(line: 1460, column: 13, scope: !1136)
!1143 = !DILocation(line: 1460, column: 18, scope: !1136)
!1144 = !DILocation(line: 1460, column: 11, scope: !1136)
!1145 = !DILocation(line: 1460, column: 35, scope: !1136)
!1146 = !DILocation(line: 1460, column: 40, scope: !1136)
!1147 = !DILocation(line: 1460, column: 56, scope: !1136)
!1148 = !DILocation(line: 1460, column: 61, scope: !1136)
!1149 = !DILocation(line: 1460, column: 54, scope: !1136)
!1150 = !DILocation(line: 1460, column: 32, scope: !1136)
!1151 = !DILocation(line: 1460, column: 9, scope: !1136)
!1152 = !DILocation(line: 1460, column: 2, scope: !1136)
!1153 = distinct !DISubprogram(name: "drm_dsc_flatness_det_thresh", scope: !3, file: !3, line: 1470, type: !1111, scopeLine: 1471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1154)
!1154 = !{!1155}
!1155 = !DILocalVariable(name: "dsc", arg: 1, scope: !1153, file: !3, line: 1470, type: !235)
!1156 = !DILocation(line: 1470, column: 62, scope: !1153)
!1157 = !DILocation(line: 1472, column: 15, scope: !1153)
!1158 = !DILocation(line: 1472, column: 20, scope: !1153)
!1159 = !DILocation(line: 1472, column: 39, scope: !1153)
!1160 = !DILocation(line: 1472, column: 11, scope: !1153)
!1161 = !DILocation(line: 1472, column: 2, scope: !1153)

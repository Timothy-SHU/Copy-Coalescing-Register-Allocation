; ModuleID = 'drivers/gpu/drm/drm_fourcc.c'
source_filename = "drivers/gpu/drm/drm_fourcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_mode_legacy_fb_format: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_mode_legacy_fb_format ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_driver_legacy_fb_format: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_driver_legacy_fb_format ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_format_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_format_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_get_format_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_get_format_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_format_info_block_width: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_format_info_block_width ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_format_info_block_height: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_format_info_block_height ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_format_info_bpp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_format_info_bpp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_format_info_min_pitch: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_format_info_min_pitch ; .previous"

%struct.drm_format_info = type { i32, i8, i8, %union.anon.14, [4 x i8], [4 x i8], i8, i8, i8, i8, i8 }
%union.anon.14 = type { [4 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }

@__UNIQUE_ID___addressable_drm_mode_legacy_fb_format189 = internal global ptr @drm_mode_legacy_fb_format, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_drm_driver_legacy_fb_format190 = internal global ptr @drm_driver_legacy_fb_format, section ".discard.addressable", align 8, !dbg !43
@__drm_format_info.formats = internal constant [116 x %struct.drm_format_info] [%struct.drm_format_info { i32 538980675, i8 1, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\08\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 538980931, i8 2, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\04\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 538981443, i8 4, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 538982467, i8 8, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 1 }, %struct.drm_format_info { i32 538980676, i8 1, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\08\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538980932, i8 2, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\04\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538981444, i8 4, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538982468, i8 8, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538980690, i8 1, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\08\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538980946, i8 2, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\04\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538981458, i8 4, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\01\00\00\00", i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 538982482, i8 8, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 540029266, i8 10, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 540160338, i8 12, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 943867730, i8 8, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 944916290, i8 8, i8 1, %union.anon.14 { [4 x i8] c"\01\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 842093144, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 842089048, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 842094674, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 842094658, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 842093121, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842089025, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842088786, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 842088770, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892424792, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 892420696, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 892426322, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 892426306, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 892424769, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892420673, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892420434, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 892420418, i8 15, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 909199186, i8 16, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 909199170, i8 16, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875710290, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875710274, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875713112, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875709016, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875714642, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 875714626, i8 24, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 943797586, i8 24, i8 2, %union.anon.14 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943797570, i8 24, i8 2, %union.anon.14 { [4 x i8] c"\02\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808669784, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 808665688, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 808671314, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 808671298, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 808669761, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665665, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665426, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808665410, i8 30, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875713089, i8 32, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875708993, i8 32, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875708754, i8 32, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 875708738, i8 32, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211388504, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 1211384408, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 1211388481, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 1211384385, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 808534593, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 942953048, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 942948952, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 0, i8 0 }, %struct.drm_format_info { i32 942953025, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 942948929, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943798354, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943798338, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\03\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943805016, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943800920, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943806546, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 943806530, i8 32, i8 2, %union.anon.14 { [4 x i8] c"\04\01\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 0, i8 0 }, %struct.drm_format_info { i32 961959257, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 961893977, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 4, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 825316697, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 825316953, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 4, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842093913, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842094169, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909202777, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909203033, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 875713881, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 875714137, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\01\01\01\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842094158, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 825382478, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909203022, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 825644622, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 875714126, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842290766, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\01\02\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1448695129, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1431918169, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1498831189, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1498765654, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\02\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1448434008, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 875713878, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\03\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 1448433985, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808530521, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842084953, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909193817, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808531033, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 842085465, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 909194329, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 808670808, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\04\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909334104, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 942954072, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 810299481, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 810299480, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 843853913, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 1, i8 1, i8 0 }, %struct.drm_format_info { i32 843853912, i8 0, i8 1, %union.anon.14 { [4 x i8] c"\08\00\00\00" }, [4 x i8] c"\02\00\00\00", [4 x i8] c"\02\00\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808530000, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 842084432, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 909193296, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808530512, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\02\04\00\00" }, [4 x i8] c"\01\01\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808670550, i8 0, i8 1, %union.anon.14 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 942691673, i8 0, i8 1, %union.anon.14 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808539481, i8 0, i8 1, %union.anon.14 zeroinitializer, [4 x i8] zeroinitializer, [4 x i8] zeroinitializer, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 892425806, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\05\05\00\00" }, [4 x i8] c"\04\02\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808531025, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 825242705, i8 0, i8 3, %union.anon.14 { [4 x i8] c"\02\02\02\00" }, [4 x i8] c"\01\01\01\00", [4 x i8] c"\01\01\01\00", i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.drm_format_info { i32 808661072, i8 0, i8 2, %union.anon.14 { [4 x i8] c"\04\08\00\00" }, [4 x i8] c"\03\03\00\00", [4 x i8] c"\01\01\00\00", i8 2, i8 2, i8 0, i8 1, i8 0 }], align 16, !dbg !45
@.str = private unnamed_addr constant [29 x i8] c"drivers/gpu/drm/drm_fourcc.c\00", align 1, !dbg !85
@__UNIQUE_ID___addressable_drm_format_info191 = internal global ptr @drm_format_info, section ".discard.addressable", align 8, !dbg !91
@__UNIQUE_ID___addressable_drm_get_format_info192 = internal global ptr @drm_get_format_info, section ".discard.addressable", align 8, !dbg !93
@__UNIQUE_ID___addressable_drm_format_info_block_width193 = internal global ptr @drm_format_info_block_width, section ".discard.addressable", align 8, !dbg !95
@__UNIQUE_ID___addressable_drm_format_info_block_height194 = internal global ptr @drm_format_info_block_height, section ".discard.addressable", align 8, !dbg !97
@__UNIQUE_ID___addressable_drm_format_info_bpp195 = internal global ptr @drm_format_info_bpp, section ".discard.addressable", align 8, !dbg !99
@__UNIQUE_ID___addressable_drm_format_info_min_pitch196 = internal global ptr @drm_format_info_min_pitch, section ".discard.addressable", align 8, !dbg !101
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID___addressable_drm_mode_legacy_fb_format189, ptr @__UNIQUE_ID___addressable_drm_driver_legacy_fb_format190, ptr @__UNIQUE_ID___addressable_drm_format_info191, ptr @__UNIQUE_ID___addressable_drm_get_format_info192, ptr @__UNIQUE_ID___addressable_drm_format_info_block_width193, ptr @__UNIQUE_ID___addressable_drm_format_info_block_height194, ptr @__UNIQUE_ID___addressable_drm_format_info_bpp195, ptr @__UNIQUE_ID___addressable_drm_format_info_min_pitch196], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_mode_legacy_fb_format(i32 noundef %bpp, i32 noundef %depth) #0 align 16 !dbg !112 {
entry:
  %bpp.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %fmt = alloca i32, align 4
  store i32 %bpp, ptr %bpp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bpp.addr, metadata !117, metadata !DIExpression()), !dbg !120
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !118, metadata !DIExpression()), !dbg !121
  call void @llvm.lifetime.start.p0(i64 4, ptr %fmt) #4, !dbg !122
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !119, metadata !DIExpression()), !dbg !123
  store i32 0, ptr %fmt, align 4, !dbg !123
  %0 = load i32, ptr %bpp.addr, align 4, !dbg !124
  switch i32 %0, label %sw.default26 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 4, label %sw.bb5
    i32 8, label %sw.bb9
    i32 16, label %sw.bb13
    i32 24, label %sw.bb16
    i32 32, label %sw.bb20
  ], !dbg !125

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr %depth.addr, align 4, !dbg !126
  %cmp = icmp eq i32 %1, 1, !dbg !129
  br i1 %cmp, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %sw.bb
  store i32 538980675, ptr %fmt, align 4, !dbg !131
  br label %if.end, !dbg !132

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog27, !dbg !133

sw.bb1:                                           ; preds = %entry
  %2 = load i32, ptr %depth.addr, align 4, !dbg !134
  %cmp2 = icmp eq i32 %2, 2, !dbg !136
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !137

if.then3:                                         ; preds = %sw.bb1
  store i32 538980931, ptr %fmt, align 4, !dbg !138
  br label %if.end4, !dbg !139

if.end4:                                          ; preds = %if.then3, %sw.bb1
  br label %sw.epilog27, !dbg !140

sw.bb5:                                           ; preds = %entry
  %3 = load i32, ptr %depth.addr, align 4, !dbg !141
  %cmp6 = icmp eq i32 %3, 4, !dbg !143
  br i1 %cmp6, label %if.then7, label %if.end8, !dbg !144

if.then7:                                         ; preds = %sw.bb5
  store i32 538981443, ptr %fmt, align 4, !dbg !145
  br label %if.end8, !dbg !146

if.end8:                                          ; preds = %if.then7, %sw.bb5
  br label %sw.epilog27, !dbg !147

sw.bb9:                                           ; preds = %entry
  %4 = load i32, ptr %depth.addr, align 4, !dbg !148
  %cmp10 = icmp eq i32 %4, 8, !dbg !150
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !151

if.then11:                                        ; preds = %sw.bb9
  store i32 538982467, ptr %fmt, align 4, !dbg !152
  br label %if.end12, !dbg !153

if.end12:                                         ; preds = %if.then11, %sw.bb9
  br label %sw.epilog27, !dbg !154

sw.bb13:                                          ; preds = %entry
  %5 = load i32, ptr %depth.addr, align 4, !dbg !155
  switch i32 %5, label %sw.default [
    i32 15, label %sw.bb14
    i32 16, label %sw.bb15
  ], !dbg !156

sw.bb14:                                          ; preds = %sw.bb13
  store i32 892424792, ptr %fmt, align 4, !dbg !157
  br label %sw.epilog, !dbg !159

sw.bb15:                                          ; preds = %sw.bb13
  store i32 909199186, ptr %fmt, align 4, !dbg !160
  br label %sw.epilog, !dbg !161

sw.default:                                       ; preds = %sw.bb13
  br label %sw.epilog, !dbg !162

sw.epilog:                                        ; preds = %sw.default, %sw.bb15, %sw.bb14
  br label %sw.epilog27, !dbg !163

sw.bb16:                                          ; preds = %entry
  %6 = load i32, ptr %depth.addr, align 4, !dbg !164
  %cmp17 = icmp eq i32 %6, 24, !dbg !166
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !167

if.then18:                                        ; preds = %sw.bb16
  store i32 875710290, ptr %fmt, align 4, !dbg !168
  br label %if.end19, !dbg !169

if.end19:                                         ; preds = %if.then18, %sw.bb16
  br label %sw.epilog27, !dbg !170

sw.bb20:                                          ; preds = %entry
  %7 = load i32, ptr %depth.addr, align 4, !dbg !171
  switch i32 %7, label %sw.default24 [
    i32 24, label %sw.bb21
    i32 30, label %sw.bb22
    i32 32, label %sw.bb23
  ], !dbg !172

sw.bb21:                                          ; preds = %sw.bb20
  store i32 875713112, ptr %fmt, align 4, !dbg !173
  br label %sw.epilog25, !dbg !175

sw.bb22:                                          ; preds = %sw.bb20
  store i32 808669784, ptr %fmt, align 4, !dbg !176
  br label %sw.epilog25, !dbg !177

sw.bb23:                                          ; preds = %sw.bb20
  store i32 875713089, ptr %fmt, align 4, !dbg !178
  br label %sw.epilog25, !dbg !179

sw.default24:                                     ; preds = %sw.bb20
  br label %sw.epilog25, !dbg !180

sw.epilog25:                                      ; preds = %sw.default24, %sw.bb23, %sw.bb22, %sw.bb21
  br label %sw.epilog27, !dbg !181

sw.default26:                                     ; preds = %entry
  br label %sw.epilog27, !dbg !182

sw.epilog27:                                      ; preds = %sw.default26, %sw.epilog25, %if.end19, %sw.epilog, %if.end12, %if.end8, %if.end4, %if.end
  %8 = load i32, ptr %fmt, align 4, !dbg !183
  call void @llvm.lifetime.end.p0(i64 4, ptr %fmt) #4, !dbg !184
  ret i32 %8, !dbg !185
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_driver_legacy_fb_format(ptr noundef %dev, i32 noundef %bpp, i32 noundef %depth) #0 align 16 !dbg !186 {
entry:
  %dev.addr = alloca ptr, align 8
  %bpp.addr = alloca i32, align 4
  %depth.addr = alloca i32, align 4
  %fmt = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1961, metadata !DIExpression()), !dbg !1965
  store i32 %bpp, ptr %bpp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bpp.addr, metadata !1962, metadata !DIExpression()), !dbg !1966
  store i32 %depth, ptr %depth.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %depth.addr, metadata !1963, metadata !DIExpression()), !dbg !1967
  call void @llvm.lifetime.start.p0(i64 4, ptr %fmt) #4, !dbg !1968
  call void @llvm.dbg.declare(metadata ptr %fmt, metadata !1964, metadata !DIExpression()), !dbg !1969
  %0 = load i32, ptr %bpp.addr, align 4, !dbg !1970
  %1 = load i32, ptr %depth.addr, align 4, !dbg !1971
  %call = call i32 @drm_mode_legacy_fb_format(i32 noundef %0, i32 noundef %1) #5, !dbg !1972
  store i32 %call, ptr %fmt, align 4, !dbg !1969
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !1973
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 31, !dbg !1975
  %quirk_addfb_prefer_host_byte_order = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 94, !dbg !1976
  %3 = load i8, ptr %quirk_addfb_prefer_host_byte_order, align 1, !dbg !1976, !range !1977, !noundef !691
  %tobool = trunc i8 %3 to i1, !dbg !1976
  br i1 %tobool, label %if.then, label %if.end11, !dbg !1978

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %fmt, align 4, !dbg !1979
  %cmp = icmp eq i32 %4, 875713112, !dbg !1982
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1983

if.then1:                                         ; preds = %if.then
  store i32 875713112, ptr %fmt, align 4, !dbg !1984
  br label %if.end, !dbg !1985

if.end:                                           ; preds = %if.then1, %if.then
  %5 = load i32, ptr %fmt, align 4, !dbg !1986
  %cmp2 = icmp eq i32 %5, 875713089, !dbg !1988
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !1989

if.then3:                                         ; preds = %if.end
  store i32 875713089, ptr %fmt, align 4, !dbg !1990
  br label %if.end4, !dbg !1991

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %fmt, align 4, !dbg !1992
  %cmp5 = icmp eq i32 %6, 909199186, !dbg !1994
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1995

if.then6:                                         ; preds = %if.end4
  store i32 909199186, ptr %fmt, align 4, !dbg !1996
  br label %if.end7, !dbg !1997

if.end7:                                          ; preds = %if.then6, %if.end4
  %7 = load i32, ptr %fmt, align 4, !dbg !1998
  %cmp8 = icmp eq i32 %7, 892424792, !dbg !2000
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2001

if.then9:                                         ; preds = %if.end7
  store i32 892424792, ptr %fmt, align 4, !dbg !2002
  br label %if.end10, !dbg !2003

if.end10:                                         ; preds = %if.then9, %if.end7
  br label %if.end11, !dbg !2004

if.end11:                                         ; preds = %if.end10, %entry
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !2005
  %mode_config12 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 31, !dbg !2007
  %quirk_addfb_prefer_xbgr_30bpp = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config12, i32 0, i32 93, !dbg !2008
  %9 = load i8, ptr %quirk_addfb_prefer_xbgr_30bpp, align 8, !dbg !2008, !range !1977, !noundef !691
  %tobool13 = trunc i8 %9 to i1, !dbg !2008
  br i1 %tobool13, label %land.lhs.true, label %if.end16, !dbg !2009

land.lhs.true:                                    ; preds = %if.end11
  %10 = load i32, ptr %fmt, align 4, !dbg !2010
  %cmp14 = icmp eq i32 %10, 808669784, !dbg !2011
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2012

if.then15:                                        ; preds = %land.lhs.true
  store i32 808665688, ptr %fmt, align 4, !dbg !2013
  br label %if.end16, !dbg !2014

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.end11
  %11 = load i32, ptr %fmt, align 4, !dbg !2015
  call void @llvm.lifetime.end.p0(i64 4, ptr %fmt) #4, !dbg !2016
  ret i32 %11, !dbg !2017
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @__drm_format_info(i32 noundef %format) #0 align 16 !dbg !47 {
entry:
  %retval = alloca ptr, align 8
  %format.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !80, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %i, metadata !81, metadata !DIExpression()), !dbg !2020
  store i32 0, ptr %i, align 4, !dbg !2021
  br label %for.cond, !dbg !2023

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !2024
  %conv = zext i32 %0 to i64, !dbg !2024
  %cmp = icmp ult i64 %conv, 116, !dbg !2026
  br i1 %cmp, label %for.body, label %for.end, !dbg !2027

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !dbg !2028
  %idxprom = zext i32 %1 to i64, !dbg !2031
  %arrayidx = getelementptr [116 x %struct.drm_format_info], ptr @__drm_format_info.formats, i64 0, i64 %idxprom, !dbg !2031
  %format2 = getelementptr inbounds %struct.drm_format_info, ptr %arrayidx, i32 0, i32 0, !dbg !2032
  %2 = load i32, ptr %format2, align 8, !dbg !2032
  %3 = load i32, ptr %format.addr, align 4, !dbg !2033
  %cmp3 = icmp eq i32 %2, %3, !dbg !2034
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2035

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !dbg !2036
  %idxprom5 = zext i32 %4 to i64, !dbg !2037
  %arrayidx6 = getelementptr [116 x %struct.drm_format_info], ptr @__drm_format_info.formats, i64 0, i64 %idxprom5, !dbg !2037
  store ptr %arrayidx6, ptr %retval, align 8, !dbg !2038
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2038

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2039

for.inc:                                          ; preds = %if.end
  %5 = load i32, ptr %i, align 4, !dbg !2040
  %inc = add i32 %5, 1, !dbg !2040
  store i32 %inc, ptr %i, align 4, !dbg !2040
  br label %for.cond, !dbg !2041, !llvm.loop !2042

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2046

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4, !dbg !2047
  %6 = load ptr, ptr %retval, align 8, !dbg !2047
  ret ptr %6, !dbg !2047
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_format_info(i32 noundef %format) #0 align 16 !dbg !2048 {
entry:
  %format.addr = alloca i32, align 4
  %info = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i32 %format, ptr %format.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !2050, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #4, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %info, metadata !2051, metadata !DIExpression()), !dbg !2059
  %0 = load i32, ptr %format.addr, align 4, !dbg !2060
  %call = call ptr @__drm_format_info(i32 noundef %0) #5, !dbg !2061
  store ptr %call, ptr %info, align 8, !dbg !2062
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #4, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2052, metadata !DIExpression()), !dbg !2063
  %1 = load ptr, ptr %info, align 8, !dbg !2063
  %tobool = icmp ne ptr %1, null, !dbg !2063
  %lnot = xor i1 %tobool, true, !dbg !2063
  %lnot1 = xor i1 %lnot, true, !dbg !2063
  %lnot2 = xor i1 %lnot1, true, !dbg !2063
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2063
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2063
  %2 = load i32, ptr %__ret_warn_on, align 4, !dbg !2064
  %tobool3 = icmp ne i32 %2, 0, !dbg !2064
  %lnot4 = xor i1 %tobool3, true, !dbg !2064
  %lnot6 = xor i1 %lnot4, true, !dbg !2064
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2064
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2064
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2064
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2064
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2063

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2064

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #4, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2054, metadata !DIExpression()), !dbg !2065
  store i32 2305, ptr %__flags, align 4, !dbg !2065
  br label %do.body9, !dbg !2065

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !2066

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !2066

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !2065

do.body10:                                        ; preds = %do.end
  %3 = load i32, ptr %__flags, align 4, !dbg !2068
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 341, i32 %3, i64 12) #4, !dbg !2068, !srcloc !2070
  br label %do.cond11, !dbg !2068

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !2068

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !2065

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !2071

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !2071

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #4, !dbg !2064
  br label %do.cond16, !dbg !2065

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2065

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !2065

if.end:                                           ; preds = %do.end17, %entry
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !2063
  %tobool18 = icmp ne i32 %4, 0, !dbg !2063
  %lnot19 = xor i1 %tobool18, true, !dbg !2063
  %lnot21 = xor i1 %lnot19, true, !dbg !2063
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2063
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2063
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !2063
  store i64 %expval24, ptr %tmp, align 8, !dbg !2064
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #4, !dbg !2073
  %5 = load i64, ptr %tmp, align 8, !dbg !2063
  %6 = load ptr, ptr %info, align 8, !dbg !2074
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #4, !dbg !2075
  ret ptr %6, !dbg !2076
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @drm_get_format_info(ptr noundef %dev, ptr noundef %mode_cmd) #0 align 16 !dbg !2077 {
entry:
  %dev.addr = alloca ptr, align 8
  %mode_cmd.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2081, metadata !DIExpression()), !dbg !2084
  store ptr %mode_cmd, ptr %mode_cmd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mode_cmd.addr, metadata !2082, metadata !DIExpression()), !dbg !2085
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #4, !dbg !2086
  call void @llvm.dbg.declare(metadata ptr %info, metadata !2083, metadata !DIExpression()), !dbg !2087
  store ptr null, ptr %info, align 8, !dbg !2087
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2088
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 31, !dbg !2090
  %funcs = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 27, !dbg !2091
  %1 = load ptr, ptr %funcs, align 8, !dbg !2091
  %get_format_info = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %1, i32 0, i32 1, !dbg !2092
  %2 = load ptr, ptr %get_format_info, align 8, !dbg !2092
  %tobool = icmp ne ptr %2, null, !dbg !2088
  br i1 %tobool, label %if.then, label %if.end, !dbg !2093

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2094
  %mode_config1 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 31, !dbg !2095
  %funcs2 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config1, i32 0, i32 27, !dbg !2096
  %4 = load ptr, ptr %funcs2, align 8, !dbg !2096
  %get_format_info3 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %4, i32 0, i32 1, !dbg !2097
  %5 = load ptr, ptr %get_format_info3, align 8, !dbg !2097
  %6 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !2098
  %call = call ptr %5(ptr noundef %6) #5, !dbg !2094
  store ptr %call, ptr %info, align 8, !dbg !2099
  br label %if.end, !dbg !2100

if.end:                                           ; preds = %if.then, %entry
  %7 = load ptr, ptr %info, align 8, !dbg !2101
  %tobool4 = icmp ne ptr %7, null, !dbg !2101
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2103

if.then5:                                         ; preds = %if.end
  %8 = load ptr, ptr %mode_cmd.addr, align 8, !dbg !2104
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %8, i32 0, i32 3, !dbg !2105
  %9 = load i32, ptr %pixel_format, align 4, !dbg !2105
  %call6 = call ptr @drm_format_info(i32 noundef %9) #5, !dbg !2106
  store ptr %call6, ptr %info, align 8, !dbg !2107
  br label %if.end7, !dbg !2108

if.end7:                                          ; preds = %if.then5, %if.end
  %10 = load ptr, ptr %info, align 8, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #4, !dbg !2110
  ret ptr %10, !dbg !2111
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_format_info_block_width(ptr noundef %info, i32 noundef %plane) #0 align 16 !dbg !2112 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %plane.addr = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2116, metadata !DIExpression()), !dbg !2118
  store i32 %plane, ptr %plane.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !2117, metadata !DIExpression()), !dbg !2119
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2120
  %tobool = icmp ne ptr %0, null, !dbg !2120
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2122

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %plane.addr, align 4, !dbg !2123
  %cmp = icmp slt i32 %1, 0, !dbg !2124
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2125

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %plane.addr, align 4, !dbg !2126
  %3 = load ptr, ptr %info.addr, align 8, !dbg !2127
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2, !dbg !2128
  %4 = load i8, ptr %num_planes, align 1, !dbg !2128
  %conv = zext i8 %4 to i32, !dbg !2127
  %cmp2 = icmp sge i32 %2, %conv, !dbg !2129
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2130

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %info.addr, align 8, !dbg !2132
  %block_w = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 4, !dbg !2134
  %6 = load i32, ptr %plane.addr, align 4, !dbg !2135
  %idxprom = sext i32 %6 to i64, !dbg !2132
  %arrayidx = getelementptr [4 x i8], ptr %block_w, i64 0, i64 %idxprom, !dbg !2132
  %7 = load i8, ptr %arrayidx, align 1, !dbg !2132
  %tobool4 = icmp ne i8 %7, 0, !dbg !2132
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2136

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2137
  br label %return, !dbg !2137

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !2138
  %block_w7 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 4, !dbg !2139
  %9 = load i32, ptr %plane.addr, align 4, !dbg !2140
  %idxprom8 = sext i32 %9 to i64, !dbg !2138
  %arrayidx9 = getelementptr [4 x i8], ptr %block_w7, i64 0, i64 %idxprom8, !dbg !2138
  %10 = load i8, ptr %arrayidx9, align 1, !dbg !2138
  %conv10 = zext i8 %10 to i32, !dbg !2138
  store i32 %conv10, ptr %retval, align 4, !dbg !2141
  br label %return, !dbg !2141

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !2142
  ret i32 %11, !dbg !2142
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_format_info_block_height(ptr noundef %info, i32 noundef %plane) #0 align 16 !dbg !2143 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %plane.addr = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2145, metadata !DIExpression()), !dbg !2147
  store i32 %plane, ptr %plane.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !2146, metadata !DIExpression()), !dbg !2148
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2149
  %tobool = icmp ne ptr %0, null, !dbg !2149
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2151

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %plane.addr, align 4, !dbg !2152
  %cmp = icmp slt i32 %1, 0, !dbg !2153
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2154

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %plane.addr, align 4, !dbg !2155
  %3 = load ptr, ptr %info.addr, align 8, !dbg !2156
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2, !dbg !2157
  %4 = load i8, ptr %num_planes, align 1, !dbg !2157
  %conv = zext i8 %4 to i32, !dbg !2156
  %cmp2 = icmp sge i32 %2, %conv, !dbg !2158
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2159

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %info.addr, align 8, !dbg !2161
  %block_h = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 5, !dbg !2163
  %6 = load i32, ptr %plane.addr, align 4, !dbg !2164
  %idxprom = sext i32 %6 to i64, !dbg !2161
  %arrayidx = getelementptr [4 x i8], ptr %block_h, i64 0, i64 %idxprom, !dbg !2161
  %7 = load i8, ptr %arrayidx, align 1, !dbg !2161
  %tobool4 = icmp ne i8 %7, 0, !dbg !2161
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2165

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2166
  br label %return, !dbg !2166

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %info.addr, align 8, !dbg !2167
  %block_h7 = getelementptr inbounds %struct.drm_format_info, ptr %8, i32 0, i32 5, !dbg !2168
  %9 = load i32, ptr %plane.addr, align 4, !dbg !2169
  %idxprom8 = sext i32 %9 to i64, !dbg !2167
  %arrayidx9 = getelementptr [4 x i8], ptr %block_h7, i64 0, i64 %idxprom8, !dbg !2167
  %10 = load i8, ptr %arrayidx9, align 1, !dbg !2167
  %conv10 = zext i8 %10 to i32, !dbg !2167
  store i32 %conv10, ptr %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

return:                                           ; preds = %if.end6, %if.then5, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !2171
  ret i32 %11, !dbg !2171
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_format_info_bpp(ptr noundef %info, i32 noundef %plane) #0 align 16 !dbg !2172 {
entry:
  %retval = alloca i32, align 4
  %info.addr = alloca ptr, align 8
  %plane.addr = alloca i32, align 4
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2174, metadata !DIExpression()), !dbg !2176
  store i32 %plane, ptr %plane.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !2175, metadata !DIExpression()), !dbg !2177
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2178
  %tobool = icmp ne ptr %0, null, !dbg !2178
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2180

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %plane.addr, align 4, !dbg !2181
  %cmp = icmp slt i32 %1, 0, !dbg !2182
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2183

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %plane.addr, align 4, !dbg !2184
  %3 = load ptr, ptr %info.addr, align 8, !dbg !2185
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2, !dbg !2186
  %4 = load i8, ptr %num_planes, align 1, !dbg !2186
  %conv = zext i8 %4 to i32, !dbg !2185
  %cmp2 = icmp sge i32 %2, %conv, !dbg !2187
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2188

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !2189
  br label %return, !dbg !2189

if.end:                                           ; preds = %lor.lhs.false1
  %5 = load ptr, ptr %info.addr, align 8, !dbg !2190
  %6 = getelementptr inbounds %struct.drm_format_info, ptr %5, i32 0, i32 3, !dbg !2191
  %7 = load i32, ptr %plane.addr, align 4, !dbg !2192
  %idxprom = sext i32 %7 to i64, !dbg !2190
  %arrayidx = getelementptr [4 x i8], ptr %6, i64 0, i64 %idxprom, !dbg !2190
  %8 = load i8, ptr %arrayidx, align 1, !dbg !2190
  %conv4 = zext i8 %8 to i32, !dbg !2190
  %mul = mul i32 %conv4, 8, !dbg !2193
  %9 = load ptr, ptr %info.addr, align 8, !dbg !2194
  %10 = load i32, ptr %plane.addr, align 4, !dbg !2195
  %call = call i32 @drm_format_info_block_width(ptr noundef %9, i32 noundef %10) #5, !dbg !2196
  %11 = load ptr, ptr %info.addr, align 8, !dbg !2197
  %12 = load i32, ptr %plane.addr, align 4, !dbg !2198
  %call5 = call i32 @drm_format_info_block_height(ptr noundef %11, i32 noundef %12) #5, !dbg !2199
  %mul6 = mul i32 %call, %call5, !dbg !2200
  %div = udiv i32 %mul, %mul6, !dbg !2201
  store i32 %div, ptr %retval, align 4, !dbg !2202
  br label %return, !dbg !2202

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !2203
  ret i32 %13, !dbg !2203
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @drm_format_info_min_pitch(ptr noundef %info, i32 noundef %plane, i32 noundef %buffer_width) #0 align 16 !dbg !2204 {
entry:
  %retval = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %plane.addr = alloca i32, align 4
  %buffer_width.addr = alloca i32, align 4
  %_tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp15 = alloca i64, align 8
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !2208, metadata !DIExpression()), !dbg !2216
  store i32 %plane, ptr %plane.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !2209, metadata !DIExpression()), !dbg !2217
  store i32 %buffer_width, ptr %buffer_width.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buffer_width.addr, metadata !2210, metadata !DIExpression()), !dbg !2218
  %0 = load ptr, ptr %info.addr, align 8, !dbg !2219
  %tobool = icmp ne ptr %0, null, !dbg !2219
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2221

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %plane.addr, align 4, !dbg !2222
  %cmp = icmp slt i32 %1, 0, !dbg !2223
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !2224

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %plane.addr, align 4, !dbg !2225
  %3 = load ptr, ptr %info.addr, align 8, !dbg !2226
  %num_planes = getelementptr inbounds %struct.drm_format_info, ptr %3, i32 0, i32 2, !dbg !2227
  %4 = load i8, ptr %num_planes, align 1, !dbg !2227
  %conv = zext i8 %4 to i32, !dbg !2226
  %cmp2 = icmp sge i32 %2, %conv, !dbg !2228
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2229

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i64 0, ptr %retval, align 8, !dbg !2230
  br label %return, !dbg !2230

if.end:                                           ; preds = %lor.lhs.false1
  call void @llvm.lifetime.start.p0(i64 8, ptr %_tmp) #4, !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %_tmp, metadata !2211, metadata !DIExpression()), !dbg !2231
  %5 = load i32, ptr %buffer_width.addr, align 4, !dbg !2231
  %conv4 = zext i32 %5 to i64, !dbg !2231
  %6 = load ptr, ptr %info.addr, align 8, !dbg !2231
  %7 = getelementptr inbounds %struct.drm_format_info, ptr %6, i32 0, i32 3, !dbg !2231
  %8 = load i32, ptr %plane.addr, align 4, !dbg !2231
  %idxprom = sext i32 %8 to i64, !dbg !2231
  %arrayidx = getelementptr [4 x i8], ptr %7, i64 0, i64 %idxprom, !dbg !2231
  %9 = load i8, ptr %arrayidx, align 1, !dbg !2231
  %conv5 = zext i8 %9 to i64, !dbg !2231
  %mul = mul i64 %conv4, %conv5, !dbg !2231
  %10 = load ptr, ptr %info.addr, align 8, !dbg !2231
  %11 = load i32, ptr %plane.addr, align 4, !dbg !2231
  %call = call i32 @drm_format_info_block_width(ptr noundef %10, i32 noundef %11) #5, !dbg !2231
  %12 = load ptr, ptr %info.addr, align 8, !dbg !2231
  %13 = load i32, ptr %plane.addr, align 4, !dbg !2231
  %call6 = call i32 @drm_format_info_block_height(ptr noundef %12, i32 noundef %13) #5, !dbg !2231
  %mul7 = mul i32 %call, %call6, !dbg !2231
  %conv8 = zext i32 %mul7 to i64, !dbg !2231
  %add = add i64 %mul, %conv8, !dbg !2231
  %sub = sub i64 %add, 1, !dbg !2231
  store i64 %sub, ptr %_tmp, align 8, !dbg !2231
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #4, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2213, metadata !DIExpression()), !dbg !2232
  %14 = load ptr, ptr %info.addr, align 8, !dbg !2232
  %15 = load i32, ptr %plane.addr, align 4, !dbg !2232
  %call9 = call i32 @drm_format_info_block_width(ptr noundef %14, i32 noundef %15) #5, !dbg !2232
  %16 = load ptr, ptr %info.addr, align 8, !dbg !2232
  %17 = load i32, ptr %plane.addr, align 4, !dbg !2232
  %call10 = call i32 @drm_format_info_block_height(ptr noundef %16, i32 noundef %17) #5, !dbg !2232
  %mul11 = mul i32 %call9, %call10, !dbg !2232
  store i32 %mul11, ptr %__base, align 4, !dbg !2232
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #4, !dbg !2232
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2215, metadata !DIExpression()), !dbg !2232
  %18 = load i64, ptr %_tmp, align 8, !dbg !2232
  %19 = load i32, ptr %__base, align 4, !dbg !2232
  %conv12 = zext i32 %19 to i64, !dbg !2232
  %rem = urem i64 %18, %conv12, !dbg !2232
  %conv13 = trunc i64 %rem to i32, !dbg !2232
  store i32 %conv13, ptr %__rem, align 4, !dbg !2232
  %20 = load i64, ptr %_tmp, align 8, !dbg !2232
  %21 = load i32, ptr %__base, align 4, !dbg !2232
  %conv14 = zext i32 %21 to i64, !dbg !2232
  %div = udiv i64 %20, %conv14, !dbg !2232
  store i64 %div, ptr %_tmp, align 8, !dbg !2232
  %22 = load i32, ptr %__rem, align 4, !dbg !2232
  store i32 %22, ptr %tmp, align 4, !dbg !2232
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #4, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #4, !dbg !2231
  %23 = load i32, ptr %tmp, align 4, !dbg !2232
  %24 = load i64, ptr %_tmp, align 8, !dbg !2231
  store i64 %24, ptr %tmp15, align 8, !dbg !2231
  call void @llvm.lifetime.end.p0(i64 8, ptr %_tmp) #4, !dbg !2233
  %25 = load i64, ptr %tmp15, align 8, !dbg !2231
  store i64 %25, ptr %retval, align 8, !dbg !2234
  br label %return, !dbg !2234

return:                                           ; preds = %if.end, %if.then
  %26 = load i64, ptr %retval, align 8, !dbg !2235
  ret i64 %26, !dbg !2235
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!103, !104, !105, !106, !107, !108, !109, !110}
!llvm.ident = !{!111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_mode_legacy_fb_format189", scope: !2, file: !3, line: 106, type: !34, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_fourcc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_fourcc\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_fourcc.ll drivers/gpu/drm/drm_fourcc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !31, globals: !42, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_fourcc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99b3832bd52854e2f9a8d03dbf12c65b")
!4 = !{!5, !11, !17, !24}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !6, line: 65, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!10 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !12, line: 16, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!13 = !{!14, !15, !16}
!14 = !DIEnumerator(name: "TT_NONE", value: 0)
!15 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!16 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!17 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !18, line: 51, baseType: !7, size: 32, elements: !19)
!18 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!19 = !{!20, !21, !22, !23}
!20 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!21 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!22 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!23 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !25, line: 30, baseType: !7, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!26 = !{!27, !28, !29, !30}
!27 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!28 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!29 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!30 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!31 = !{!32, !34, !35, !36, !37, !40}
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!36 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !38, line: 23, baseType: !39)
!38 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !36)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !41, line: 113, baseType: !37)
!41 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!42 = !{!0, !43, !45, !85, !91, !93, !95, !97, !99, !101}
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_driver_legacy_fb_format190", scope: !2, file: !3, line: 141, type: !34, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "formats", scope: !47, file: !3, line: 149, type: !82, isLocal: true, isDefinition: true)
!47 = distinct !DISubprogram(name: "__drm_format_info", scope: !3, file: !3, line: 147, type: !48, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !56}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !53, line: 61, size: 192, elements: !54)
!53 = !DIFile(filename: "./include/drm/drm_fourcc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5f3a001b749e018fee62f2cb7513f95f")
!54 = !{!55, !57, !61, !62, !70, !71, !72, !73, !74, !77, !78}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !52, file: !53, line: 63, baseType: !56, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !38, line: 21, baseType: !32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !52, file: !53, line: 72, baseType: !58, size: 8, offset: 32)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !38, line: 17, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !60)
!60 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "num_planes", scope: !52, file: !53, line: 75, baseType: !58, size: 8, offset: 40)
!62 = !DIDerivedType(tag: DW_TAG_member, scope: !52, file: !53, line: 77, baseType: !63, size: 32, offset: 48)
!63 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !52, file: !53, line: 77, size: 32, elements: !64)
!64 = !{!65, !69}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cpp", scope: !63, file: !53, line: 86, baseType: !66, size: 32)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 4)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "char_per_block", scope: !63, file: !53, line: 112, baseType: !66, size: 32)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "block_w", scope: !52, file: !53, line: 121, baseType: !66, size: 32, offset: 80)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "block_h", scope: !52, file: !53, line: 129, baseType: !66, size: 32, offset: 112)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "hsub", scope: !52, file: !53, line: 132, baseType: !58, size: 8, offset: 144)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "vsub", scope: !52, file: !53, line: 134, baseType: !58, size: 8, offset: 152)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "has_alpha", scope: !52, file: !53, line: 137, baseType: !75, size: 8, offset: 160)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !41, line: 35, baseType: !76)
!76 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "is_yuv", scope: !52, file: !53, line: 140, baseType: !75, size: 8, offset: 168)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "is_color_indexed", scope: !52, file: !53, line: 143, baseType: !75, size: 8, offset: 176)
!79 = !{!80, !81}
!80 = !DILocalVariable(name: "format", arg: 1, scope: !47, file: !3, line: 147, type: !56)
!81 = !DILocalVariable(name: "i", scope: !47, file: !3, line: 315, type: !7)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !51, size: 22272, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 116)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !3, line: 341, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 232, elements: !89)
!88 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!89 = !{!90}
!90 = !DISubrange(count: 29)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_format_info191", scope: !2, file: !3, line: 344, type: !34, isLocal: true, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_get_format_info192", scope: !2, file: !3, line: 369, type: !34, isLocal: true, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_format_info_block_width193", scope: !2, file: !3, line: 389, type: !34, isLocal: true, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_format_info_block_height194", scope: !2, file: !3, line: 409, type: !34, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_format_info_bpp195", scope: !2, file: !3, line: 428, type: !34, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_format_info_min_pitch196", scope: !2, file: !3, line: 450, type: !34, isLocal: true, isDefinition: true)
!103 = !{i32 7, !"Dwarf Version", i32 5}
!104 = !{i32 2, !"Debug Info Version", i32 3}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 8, !"cf-protection-branch", i32 1}
!107 = !{i32 4, !"function_return_thunk_extern", i32 1}
!108 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!109 = !{i32 1, !"Code Model", i32 2}
!110 = !{i32 1, !"override-stack-alignment", i32 8}
!111 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!112 = distinct !DISubprogram(name: "drm_mode_legacy_fb_format", scope: !3, file: !3, line: 41, type: !113, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !115, !115}
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !41, line: 110, baseType: !56)
!116 = !{!117, !118, !119}
!117 = !DILocalVariable(name: "bpp", arg: 1, scope: !112, file: !3, line: 41, type: !115)
!118 = !DILocalVariable(name: "depth", arg: 2, scope: !112, file: !3, line: 41, type: !115)
!119 = !DILocalVariable(name: "fmt", scope: !112, file: !3, line: 43, type: !115)
!120 = !DILocation(line: 41, column: 45, scope: !112)
!121 = !DILocation(line: 41, column: 59, scope: !112)
!122 = !DILocation(line: 43, column: 2, scope: !112)
!123 = !DILocation(line: 43, column: 11, scope: !112)
!124 = !DILocation(line: 45, column: 10, scope: !112)
!125 = !DILocation(line: 45, column: 2, scope: !112)
!126 = !DILocation(line: 47, column: 7, scope: !127)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 47, column: 7)
!128 = distinct !DILexicalBlock(scope: !112, file: !3, line: 45, column: 15)
!129 = !DILocation(line: 47, column: 13, scope: !127)
!130 = !DILocation(line: 47, column: 7, scope: !128)
!131 = !DILocation(line: 48, column: 8, scope: !127)
!132 = !DILocation(line: 48, column: 4, scope: !127)
!133 = !DILocation(line: 49, column: 3, scope: !128)
!134 = !DILocation(line: 52, column: 7, scope: !135)
!135 = distinct !DILexicalBlock(scope: !128, file: !3, line: 52, column: 7)
!136 = !DILocation(line: 52, column: 13, scope: !135)
!137 = !DILocation(line: 52, column: 7, scope: !128)
!138 = !DILocation(line: 53, column: 8, scope: !135)
!139 = !DILocation(line: 53, column: 4, scope: !135)
!140 = !DILocation(line: 54, column: 3, scope: !128)
!141 = !DILocation(line: 57, column: 7, scope: !142)
!142 = distinct !DILexicalBlock(scope: !128, file: !3, line: 57, column: 7)
!143 = !DILocation(line: 57, column: 13, scope: !142)
!144 = !DILocation(line: 57, column: 7, scope: !128)
!145 = !DILocation(line: 58, column: 8, scope: !142)
!146 = !DILocation(line: 58, column: 4, scope: !142)
!147 = !DILocation(line: 59, column: 3, scope: !128)
!148 = !DILocation(line: 62, column: 7, scope: !149)
!149 = distinct !DILexicalBlock(scope: !128, file: !3, line: 62, column: 7)
!150 = !DILocation(line: 62, column: 13, scope: !149)
!151 = !DILocation(line: 62, column: 7, scope: !128)
!152 = !DILocation(line: 63, column: 8, scope: !149)
!153 = !DILocation(line: 63, column: 4, scope: !149)
!154 = !DILocation(line: 64, column: 3, scope: !128)
!155 = !DILocation(line: 67, column: 11, scope: !128)
!156 = !DILocation(line: 67, column: 3, scope: !128)
!157 = !DILocation(line: 69, column: 8, scope: !158)
!158 = distinct !DILexicalBlock(scope: !128, file: !3, line: 67, column: 18)
!159 = !DILocation(line: 70, column: 4, scope: !158)
!160 = !DILocation(line: 72, column: 8, scope: !158)
!161 = !DILocation(line: 73, column: 4, scope: !158)
!162 = !DILocation(line: 75, column: 4, scope: !158)
!163 = !DILocation(line: 77, column: 3, scope: !128)
!164 = !DILocation(line: 80, column: 7, scope: !165)
!165 = distinct !DILexicalBlock(scope: !128, file: !3, line: 80, column: 7)
!166 = !DILocation(line: 80, column: 13, scope: !165)
!167 = !DILocation(line: 80, column: 7, scope: !128)
!168 = !DILocation(line: 81, column: 8, scope: !165)
!169 = !DILocation(line: 81, column: 4, scope: !165)
!170 = !DILocation(line: 82, column: 3, scope: !128)
!171 = !DILocation(line: 85, column: 11, scope: !128)
!172 = !DILocation(line: 85, column: 3, scope: !128)
!173 = !DILocation(line: 87, column: 8, scope: !174)
!174 = distinct !DILexicalBlock(scope: !128, file: !3, line: 85, column: 18)
!175 = !DILocation(line: 88, column: 4, scope: !174)
!176 = !DILocation(line: 90, column: 8, scope: !174)
!177 = !DILocation(line: 91, column: 4, scope: !174)
!178 = !DILocation(line: 93, column: 8, scope: !174)
!179 = !DILocation(line: 94, column: 4, scope: !174)
!180 = !DILocation(line: 96, column: 4, scope: !174)
!181 = !DILocation(line: 98, column: 3, scope: !128)
!182 = !DILocation(line: 101, column: 3, scope: !128)
!183 = !DILocation(line: 104, column: 9, scope: !112)
!184 = !DILocation(line: 105, column: 1, scope: !112)
!185 = !DILocation(line: 104, column: 2, scope: !112)
!186 = distinct !DISubprogram(name: "drm_driver_legacy_fb_format", scope: !3, file: !3, line: 119, type: !187, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!187 = !DISubroutineType(types: !188)
!188 = !{!115, !189, !115, !115}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !25, line: 50, size: 12736, elements: !191)
!191 = !{!192, !193, !207, !211, !255, !260, !261, !264, !265, !266, !267, !298, !299, !300, !303, !304, !326, !327, !328, !329, !330, !331, !332, !333, !334, !337, !338, !339, !340, !341, !342, !343, !1946, !1947, !1948, !1951, !1954, !1955, !1958, !1959}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !190, file: !25, line: 52, baseType: !35, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !190, file: !25, line: 55, baseType: !194, size: 32, offset: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !195, line: 19, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !194, file: !195, line: 20, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !199, line: 113, baseType: !200)
!199 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !199, line: 111, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !200, file: !199, line: 112, baseType: !203, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !41, line: 174, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 172, size: 32, elements: !205)
!205 = !{!206}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !204, file: !41, line: 173, baseType: !35, size: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !190, file: !25, line: 58, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !210, line: 14, flags: DIFlagFwdDecl)
!210 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!211 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !190, file: !25, line: 73, baseType: !212, size: 256, offset: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !25, line: 66, size: 256, elements: !213)
!213 = !{!214, !220, !221}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !212, file: !25, line: 68, baseType: !215, size: 128)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !41, line: 190, size: 128, elements: !216)
!216 = !{!217, !219}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !215, file: !41, line: 191, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !215, file: !41, line: 191, baseType: !218, size: 64, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !212, file: !25, line: 70, baseType: !34, size: 64, offset: 128)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !212, file: !25, line: 72, baseType: !222, size: 32, offset: 192)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !223, line: 29, baseType: !224)
!223 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !223, line: 17, size: 32, elements: !225)
!225 = !{!226}
!226 = !DIDerivedType(tag: DW_TAG_member, scope: !224, file: !223, line: 18, baseType: !227, size: 32)
!227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !224, file: !223, line: 18, size: 32, elements: !228)
!228 = !{!229}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !227, file: !223, line: 19, baseType: !230, size: 32)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !231, line: 14, size: 32, elements: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !230, file: !231, line: 15, baseType: !234, size: 32)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !235, line: 44, baseType: !236)
!235 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !235, line: 14, size: 32, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !235, line: 15, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !236, file: !235, line: 15, size: 32, elements: !240)
!240 = !{!241, !242, !247}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !239, file: !235, line: 16, baseType: !203, size: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 24, baseType: !243, size: 16)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 24, size: 16, elements: !244)
!244 = !{!245, !246}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !243, file: !235, line: 25, baseType: !58, size: 8)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !243, file: !235, line: 26, baseType: !58, size: 8, offset: 8)
!247 = !DIDerivedType(tag: DW_TAG_member, scope: !239, file: !235, line: 28, baseType: !248, size: 32)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !239, file: !235, line: 28, size: 32, elements: !249)
!249 = !{!250, !254}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !248, file: !235, line: 29, baseType: !251, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !38, line: 19, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !253)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !248, file: !235, line: 30, baseType: !251, size: 16, offset: 16)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !190, file: !25, line: 76, baseType: !256, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !259, line: 42, flags: DIFlagFwdDecl)
!259 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!260 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !190, file: !25, line: 88, baseType: !34, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !190, file: !25, line: 98, baseType: !262, size: 64, offset: 512)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !25, line: 13, flags: DIFlagFwdDecl)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !190, file: !25, line: 107, baseType: !262, size: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !190, file: !25, line: 110, baseType: !262, size: 64, offset: 640)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !190, file: !25, line: 117, baseType: !75, size: 8, offset: 704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !190, file: !25, line: 125, baseType: !268, size: 64, offset: 768)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !270, line: 65, size: 1280, elements: !271)
!270 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!271 = !{!272, !273, !274, !276, !277, !291, !292, !293, !294, !295, !296, !297}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !269, file: !270, line: 66, baseType: !194, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !269, file: !270, line: 67, baseType: !189, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !269, file: !270, line: 72, baseType: !275, size: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !269, file: !270, line: 77, baseType: !35, size: 32, offset: 192)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !269, file: !270, line: 82, baseType: !278, size: 192, offset: 256)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !279, line: 19, size: 192, elements: !280)
!279 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!280 = !{!281, !289, !290}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !278, file: !279, line: 20, baseType: !282, size: 128)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !283, line: 296, size: 128, elements: !284)
!283 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!284 = !{!285, !286, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !282, file: !283, line: 297, baseType: !222, size: 32)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !282, file: !283, line: 299, baseType: !287, size: 32, offset: 32)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !41, line: 154, baseType: !7)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !282, file: !283, line: 300, baseType: !34, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !278, file: !279, line: 21, baseType: !7, size: 32, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !278, file: !279, line: 22, baseType: !7, size: 32, offset: 160)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !269, file: !270, line: 83, baseType: !34, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !269, file: !270, line: 99, baseType: !268, size: 64, offset: 512)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !269, file: !270, line: 107, baseType: !35, size: 32, offset: 576)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !269, file: !270, line: 116, baseType: !215, size: 128, offset: 640)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !269, file: !270, line: 128, baseType: !215, size: 128, offset: 768)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !269, file: !270, line: 139, baseType: !278, size: 192, offset: 896)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !269, file: !270, line: 147, baseType: !278, size: 192, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !190, file: !25, line: 135, baseType: !56, size: 32, offset: 832)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !190, file: !25, line: 143, baseType: !75, size: 8, offset: 864)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !190, file: !25, line: 146, baseType: !301, size: 64, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !18, line: 21, flags: DIFlagFwdDecl)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !190, file: !25, line: 149, baseType: !275, size: 64, offset: 960)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !190, file: !25, line: 159, baseType: !305, size: 256, offset: 1024)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !306, line: 66, size: 256, elements: !307)
!306 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!307 = !{!308, !318, !320, !325}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !305, file: !306, line: 67, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !310, line: 13, baseType: !311)
!310 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !41, line: 181, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 179, size: 64, elements: !313)
!313 = !{!314}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !312, file: !41, line: 180, baseType: !315, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !38, line: 22, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !33, line: 30, baseType: !317)
!317 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !305, file: !306, line: 68, baseType: !319, size: 32, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !231, line: 23, baseType: !230)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !305, file: !306, line: 70, baseType: !321, size: 32, offset: 96)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !322, line: 15, size: 32, elements: !323)
!322 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !321, file: !322, line: 20, baseType: !203, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !305, file: !306, line: 72, baseType: !215, size: 128, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !190, file: !25, line: 166, baseType: !305, size: 256, offset: 1280)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !190, file: !25, line: 174, baseType: !203, size: 32, offset: 1536)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !190, file: !25, line: 177, baseType: !305, size: 256, offset: 1600)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !190, file: !25, line: 183, baseType: !215, size: 128, offset: 1856)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !190, file: !25, line: 191, baseType: !215, size: 128, offset: 1984)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !190, file: !25, line: 198, baseType: !305, size: 256, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !190, file: !25, line: 205, baseType: !215, size: 128, offset: 2368)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !190, file: !25, line: 220, baseType: !75, size: 8, offset: 2496)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !190, file: !25, line: 230, baseType: !335, size: 64, offset: 2560)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !25, line: 15, flags: DIFlagFwdDecl)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !190, file: !25, line: 237, baseType: !222, size: 32, offset: 2624)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !190, file: !25, line: 242, baseType: !222, size: 32, offset: 2656)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !190, file: !25, line: 265, baseType: !56, size: 32, offset: 2688)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !190, file: !25, line: 268, baseType: !215, size: 128, offset: 2752)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !190, file: !25, line: 276, baseType: !222, size: 32, offset: 2880)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !190, file: !25, line: 279, baseType: !7, size: 32, offset: 2912)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !190, file: !25, line: 282, baseType: !344, size: 8704, offset: 2944)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !345, line: 375, size: 8704, elements: !346)
!345 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!346 = !{!347, !348, !1754, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1858, !1859, !1860, !1861, !1870, !1871, !1872, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !344, file: !345, line: 386, baseType: !305, size: 256)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !344, file: !345, line: 396, baseType: !349, size: 448, offset: 256)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !350, line: 85, size: 448, elements: !351)
!350 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!351 = !{!352, !1753}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !349, file: !350, line: 89, baseType: !353, size: 320)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !354, line: 47, size: 320, elements: !355)
!354 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !353, file: !354, line: 48, baseType: !305, size: 256)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !353, file: !354, line: 49, baseType: !358, size: 64, offset: 256)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !354, line: 55, size: 192, elements: !360)
!360 = !{!361, !1749, !1750, !1751, !1752}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !359, file: !354, line: 56, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !364, line: 746, size: 58368, elements: !365)
!364 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!365 = !{!366, !375, !376, !377, !378, !379, !380, !381, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !459, !470, !571, !575, !578, !609, !610, !611, !612, !623, !625, !626, !627, !628, !629, !630, !641, !642, !645, !646, !647, !648, !649, !650, !651, !652, !659, !660, !667, !668, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !920, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932, !976, !978, !979, !980, !992, !994, !995, !996, !997, !998, !999, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1025, !1031, !1035, !1036, !1037, !1040, !1044, !1047, !1054, !1059, !1062, !1065, !1068, !1071, !1074, !1077, !1083, !1084, !1085, !1091, !1092, !1096, !1097, !1098, !1101, !1109, !1110, !1119, !1127, !1128, !1129, !1130, !1131, !1136, !1137, !1138, !1141, !1142, !1145, !1148, !1151, !1154, !1157, !1158, !1245, !1256, !1257, !1258, !1259, !1265, !1270, !1271, !1272, !1275, !1276, !1279, !1282, !1283, !1286, !1287, !1288, !1291, !1292, !1293, !1296, !1297, !1298, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1330, !1333, !1401, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1413, !1485, !1487, !1488, !1489, !1490, !1491, !1503, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1520, !1521, !1522}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !363, file: !364, line: 752, baseType: !367, size: 192)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !368, line: 56, size: 192, elements: !369)
!368 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!369 = !{!370, !372, !373, !374}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !368, line: 57, baseType: !371, size: 64)
!371 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !367, file: !368, line: 58, baseType: !371, size: 64, offset: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !367, file: !368, line: 59, baseType: !56, size: 32, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !367, file: !368, line: 61, baseType: !56, size: 32, offset: 160)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !363, file: !364, line: 754, baseType: !7, size: 32, offset: 192)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !363, file: !364, line: 767, baseType: !34, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !363, file: !364, line: 768, baseType: !198, size: 32, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !363, file: !364, line: 770, baseType: !7, size: 32, offset: 352)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !363, file: !364, line: 771, baseType: !7, size: 32, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !363, file: !364, line: 774, baseType: !35, size: 32, offset: 416)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !363, file: !364, line: 775, baseType: !382, size: 128, offset: 448)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !383, line: 58, size: 128, elements: !384)
!383 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!384 = !{!385, !391, !396, !397}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !382, file: !383, line: 59, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !387, line: 60, size: 64, elements: !388)
!387 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!388 = !{!389}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !386, file: !387, line: 61, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, scope: !382, file: !383, line: 60, baseType: !392, size: 32, offset: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !382, file: !383, line: 60, size: 32, elements: !393)
!393 = !{!394, !395}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !392, file: !383, line: 61, baseType: !7, size: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !392, file: !383, line: 62, baseType: !203, size: 32)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !382, file: !383, line: 65, baseType: !251, size: 16, offset: 96)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !382, file: !383, line: 65, baseType: !251, size: 16, offset: 112)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !363, file: !364, line: 776, baseType: !7, size: 32, offset: 576)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !363, file: !364, line: 777, baseType: !371, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !363, file: !364, line: 778, baseType: !362, size: 64, offset: 704)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !363, file: !364, line: 787, baseType: !35, size: 32, offset: 768)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !363, file: !364, line: 788, baseType: !35, size: 32, offset: 800)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !363, file: !364, line: 790, baseType: !35, size: 32, offset: 832)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !363, file: !364, line: 792, baseType: !35, size: 32, offset: 864)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !363, file: !364, line: 793, baseType: !35, size: 32, offset: 896)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !363, file: !364, line: 794, baseType: !35, size: 32, offset: 928)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !363, file: !364, line: 795, baseType: !7, size: 32, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !363, file: !364, line: 797, baseType: !409, size: 2048, offset: 1024)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !364, line: 551, size: 2048, elements: !410)
!410 = !{!411, !416, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !438, !441, !442, !443}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !409, file: !364, line: 553, baseType: !412, size: 128)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !364, line: 411, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !412, file: !364, line: 412, baseType: !371, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !412, file: !364, line: 413, baseType: !56, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !409, file: !364, line: 554, baseType: !417, size: 192, align: 64, offset: 128)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !418, line: 5, size: 192, align: 64, elements: !419)
!418 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!419 = !{!420, !421, !423}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !417, file: !418, line: 6, baseType: !371, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !417, file: !418, line: 7, baseType: !422, size: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !417, file: !418, line: 8, baseType: !422, size: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !409, file: !364, line: 555, baseType: !37, size: 64, offset: 320)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !409, file: !364, line: 556, baseType: !37, size: 64, offset: 384)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !409, file: !364, line: 558, baseType: !215, size: 128, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !409, file: !364, line: 559, baseType: !7, size: 32, offset: 576)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !409, file: !364, line: 561, baseType: !37, size: 64, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !409, file: !364, line: 562, baseType: !37, size: 64, offset: 704)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !409, file: !364, line: 563, baseType: !37, size: 64, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !409, file: !364, line: 564, baseType: !37, size: 64, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !409, file: !364, line: 565, baseType: !315, size: 64, offset: 896)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !409, file: !364, line: 566, baseType: !37, size: 64, offset: 960)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !409, file: !364, line: 568, baseType: !37, size: 64, offset: 1024)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !409, file: !364, line: 571, baseType: !35, size: 32, offset: 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !409, file: !364, line: 572, baseType: !437, size: 64, offset: 1152)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !409, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !409, file: !364, line: 574, baseType: !439, size: 64, offset: 1216)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !364, line: 49, flags: DIFlagFwdDecl)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !409, file: !364, line: 576, baseType: !439, size: 64, offset: 1280)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !409, file: !364, line: 578, baseType: !371, size: 64, offset: 1344)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !409, file: !364, line: 588, baseType: !444, size: 512, align: 512, offset: 1536)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !364, line: 497, size: 512, align: 512, elements: !445)
!445 = !{!446, !447, !448, !449, !450, !451, !452, !453, !454}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !444, file: !364, line: 498, baseType: !37, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !444, file: !364, line: 499, baseType: !37, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !444, file: !364, line: 500, baseType: !37, size: 64, offset: 128)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !444, file: !364, line: 501, baseType: !56, size: 32, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !444, file: !364, line: 502, baseType: !56, size: 32, offset: 224)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !444, file: !364, line: 503, baseType: !371, size: 64, offset: 256)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !444, file: !364, line: 504, baseType: !371, size: 64, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !444, file: !364, line: 505, baseType: !371, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !444, file: !364, line: 506, baseType: !455, size: 64, align: 64, offset: 448)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !364, line: 445, size: 64, align: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !455, file: !364, line: 446, baseType: !7, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !455, file: !364, line: 447, baseType: !7, size: 32, offset: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !363, file: !364, line: 798, baseType: !460, size: 384, offset: 3072)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !364, line: 592, size: 384, elements: !461)
!461 = !{!462, !463, !464, !465, !466, !467, !468}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !460, file: !364, line: 593, baseType: !215, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !460, file: !364, line: 594, baseType: !371, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !460, file: !364, line: 595, baseType: !371, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !460, file: !364, line: 596, baseType: !7, size: 32, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !460, file: !364, line: 597, baseType: !253, size: 16, offset: 288)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !460, file: !364, line: 598, baseType: !253, size: 16, offset: 304)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !460, file: !364, line: 600, baseType: !469, size: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !363, file: !364, line: 799, baseType: !471, size: 1792, offset: 3456)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !364, line: 610, size: 1792, elements: !472)
!472 = !{!473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !568, !569}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !471, file: !364, line: 611, baseType: !417, size: 192, align: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !471, file: !364, line: 618, baseType: !37, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !471, file: !364, line: 619, baseType: !37, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !471, file: !364, line: 620, baseType: !37, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !471, file: !364, line: 621, baseType: !37, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !471, file: !364, line: 622, baseType: !37, size: 64, offset: 448)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !471, file: !364, line: 629, baseType: !315, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !471, file: !364, line: 630, baseType: !37, size: 64, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !471, file: !364, line: 631, baseType: !7, size: 32, offset: 640)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !471, file: !364, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !471, file: !364, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !471, file: !364, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !471, file: !364, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !471, file: !364, line: 662, baseType: !487, size: 512, offset: 704)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !488)
!488 = !{!489, !497, !498, !503, !564, !565, !566, !567}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !487, file: !6, line: 119, baseType: !490, size: 256)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !491, line: 9, size: 256, elements: !492)
!491 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!492 = !{!493, !494}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !490, file: !491, line: 10, baseType: !417, size: 192, align: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !490, file: !491, line: 11, baseType: !495, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !496, line: 29, baseType: !315)
!496 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!497 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !487, file: !6, line: 120, baseType: !495, size: 64, offset: 256)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !487, file: !6, line: 121, baseType: !499, size: 64, offset: 320)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!5, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !487, file: !6, line: 122, baseType: !504, size: 64, offset: 384)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !506)
!506 = !{!507, !532, !533, !537, !547, !548, !559, !563}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !505, file: !6, line: 160, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 215, size: 4608, align: 512, elements: !510)
!510 = !{!511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !509, file: !6, line: 216, baseType: !319, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !509, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !509, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !509, file: !6, line: 219, baseType: !7, size: 32, offset: 96)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !509, file: !6, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !509, file: !6, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !509, file: !6, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !509, file: !6, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !509, file: !6, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !509, file: !6, line: 226, baseType: !7, size: 32, offset: 160)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !509, file: !6, line: 227, baseType: !253, size: 16, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !509, file: !6, line: 228, baseType: !253, size: 16, offset: 208)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !509, file: !6, line: 229, baseType: !7, size: 32, offset: 224)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !509, file: !6, line: 235, baseType: !495, size: 64, offset: 256)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !509, file: !6, line: 236, baseType: !502, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !509, file: !6, line: 237, baseType: !495, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !509, file: !6, line: 238, baseType: !502, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !509, file: !6, line: 239, baseType: !529, size: 4096, align: 512, offset: 512)
!529 = !DICompositeType(tag: DW_TAG_array_type, baseType: !505, size: 4096, align: 512, elements: !530)
!530 = !{!531}
!531 = !DISubrange(count: 8)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !505, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !505, file: !6, line: 162, baseType: !534, size: 32, offset: 96)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !41, line: 32, baseType: !535)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !536, line: 96, baseType: !35)
!536 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !505, file: !6, line: 163, baseType: !538, size: 32, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !539, line: 274, baseType: !540)
!539 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !539, line: 274, size: 32, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !540, file: !539, line: 274, baseType: !543, size: 32)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !539, line: 69, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !539, line: 64, size: 32, elements: !545)
!545 = !{!546}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !544, file: !539, line: 65, baseType: !7, size: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !505, file: !6, line: 164, baseType: !502, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !505, file: !6, line: 165, baseType: !549, size: 128, offset: 256)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !491, line: 14, size: 128, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !549, file: !491, line: 15, baseType: !552, size: 128)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !418, line: 26, size: 128, elements: !553)
!553 = !{!554, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !552, file: !418, line: 27, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !418, line: 12, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !555, file: !418, line: 13, baseType: !422, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !552, file: !418, line: 28, baseType: !422, size: 64, offset: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !505, file: !6, line: 166, baseType: !560, size: 64, offset: 384)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DISubroutineType(types: !562)
!562 = !{!495}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !505, file: !6, line: 167, baseType: !495, size: 64, offset: 448)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !487, file: !6, line: 123, baseType: !58, size: 8, offset: 448)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !487, file: !6, line: 124, baseType: !58, size: 8, offset: 456)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !487, file: !6, line: 125, baseType: !58, size: 8, offset: 464)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !487, file: !6, line: 126, baseType: !58, size: 8, offset: 472)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !471, file: !364, line: 671, baseType: !487, size: 512, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !471, file: !364, line: 679, baseType: !570, size: 64, offset: 1728)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !363, file: !364, line: 800, baseType: !572, size: 64, offset: 5248)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !574)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !364, line: 800, flags: DIFlagFwdDecl)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !363, file: !364, line: 809, baseType: !576, size: 64, offset: 5312)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !364, line: 70, flags: DIFlagFwdDecl)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !363, file: !364, line: 825, baseType: !579, size: 2048, align: 512, offset: 5632)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !364, line: 509, size: 2048, align: 512, elements: !580)
!580 = !{!581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !579, file: !364, line: 511, baseType: !37, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !579, file: !364, line: 512, baseType: !37, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !579, file: !364, line: 513, baseType: !37, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !579, file: !364, line: 514, baseType: !37, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !579, file: !364, line: 515, baseType: !37, size: 64, offset: 256)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !579, file: !364, line: 516, baseType: !37, size: 64, offset: 320)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !579, file: !364, line: 518, baseType: !37, size: 64, offset: 384)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !579, file: !364, line: 519, baseType: !37, size: 64, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !579, file: !364, line: 520, baseType: !315, size: 64, offset: 512)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !579, file: !364, line: 522, baseType: !37, size: 64, offset: 576)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !579, file: !364, line: 523, baseType: !37, size: 64, offset: 640)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !579, file: !364, line: 524, baseType: !315, size: 64, offset: 704)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !579, file: !364, line: 526, baseType: !315, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !579, file: !364, line: 527, baseType: !37, size: 64, offset: 832)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !579, file: !364, line: 529, baseType: !37, size: 64, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !579, file: !364, line: 530, baseType: !37, size: 64, offset: 960)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !579, file: !364, line: 531, baseType: !37, size: 64, offset: 1024)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !579, file: !364, line: 532, baseType: !37, size: 64, offset: 1088)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !579, file: !364, line: 533, baseType: !37, size: 64, offset: 1152)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !579, file: !364, line: 535, baseType: !37, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !579, file: !364, line: 536, baseType: !37, size: 64, offset: 1280)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !579, file: !364, line: 537, baseType: !37, size: 64, offset: 1344)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !579, file: !364, line: 538, baseType: !37, size: 64, offset: 1408)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !579, file: !364, line: 539, baseType: !37, size: 64, offset: 1472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !579, file: !364, line: 540, baseType: !37, size: 64, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !579, file: !364, line: 541, baseType: !37, size: 64, offset: 1600)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !579, file: !364, line: 542, baseType: !37, size: 64, offset: 1664)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !579, file: !364, line: 543, baseType: !37, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !363, file: !364, line: 833, baseType: !7, size: 32, offset: 7680)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !363, file: !364, line: 836, baseType: !7, size: 32, offset: 7712)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !363, file: !364, line: 837, baseType: !35, size: 32, offset: 7744)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !363, file: !364, line: 838, baseType: !613, size: 64, offset: 7808)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !616, line: 19, baseType: !617)
!616 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !616, line: 19, size: 64, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !617, file: !616, line: 19, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 64, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 1)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !363, file: !364, line: 839, baseType: !624, size: 64, offset: 7872)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !363, file: !364, line: 840, baseType: !615, size: 64, offset: 7936)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !363, file: !364, line: 841, baseType: !34, size: 64, offset: 8000)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !363, file: !364, line: 843, baseType: !253, size: 16, offset: 8064)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !363, file: !364, line: 845, baseType: !253, size: 16, offset: 8080)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !363, file: !364, line: 848, baseType: !35, size: 32, offset: 8096)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !363, file: !364, line: 849, baseType: !631, size: 32, offset: 8128)
!631 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !364, line: 718, size: 32, elements: !632)
!632 = !{!633, !640}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !631, file: !364, line: 724, baseType: !634, size: 32)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !631, file: !364, line: 719, size: 32, elements: !635)
!635 = !{!636, !637, !638, !639}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !634, file: !364, line: 720, baseType: !58, size: 8)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !634, file: !364, line: 721, baseType: !58, size: 8, offset: 8)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !634, file: !364, line: 722, baseType: !58, size: 8, offset: 16)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !634, file: !364, line: 723, baseType: !58, size: 8, offset: 24)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !631, file: !364, line: 725, baseType: !56, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !363, file: !364, line: 850, baseType: !215, size: 128, offset: 8192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !363, file: !364, line: 851, baseType: !643, size: 64, offset: 8320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !364, line: 60, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !363, file: !364, line: 855, baseType: !371, size: 64, offset: 8384)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !363, file: !364, line: 856, baseType: !58, size: 8, offset: 8448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !363, file: !364, line: 857, baseType: !58, size: 8, offset: 8456)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !363, file: !364, line: 858, baseType: !35, size: 32, offset: 8480)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !363, file: !364, line: 859, baseType: !215, size: 128, offset: 8512)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !363, file: !364, line: 860, baseType: !35, size: 32, offset: 8640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !363, file: !364, line: 861, baseType: !215, size: 128, offset: 8704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !363, file: !364, line: 873, baseType: !653, size: 256, offset: 8832)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !364, line: 376, size: 256, elements: !654)
!654 = !{!655, !656, !657, !658}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !653, file: !364, line: 381, baseType: !371, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !653, file: !364, line: 384, baseType: !36, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !653, file: !364, line: 389, baseType: !36, size: 64, offset: 128)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !653, file: !364, line: 392, baseType: !36, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !363, file: !364, line: 875, baseType: !215, size: 128, offset: 9088)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !363, file: !364, line: 877, baseType: !661, size: 320, offset: 9216)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !662, line: 86, size: 320, elements: !663)
!662 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!663 = !{!664, !665, !666}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !661, file: !662, line: 87, baseType: !35, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !661, file: !662, line: 88, baseType: !215, size: 128, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !661, file: !662, line: 89, baseType: !215, size: 128, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !363, file: !364, line: 878, baseType: !417, size: 192, align: 64, offset: 9536)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !363, file: !364, line: 881, baseType: !669, size: 64, offset: 9728)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !671, line: 733, size: 10240, elements: !672)
!671 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!672 = !{!673, !836}
!673 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !671, line: 734, baseType: !674, size: 10240)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !670, file: !671, line: 734, size: 10240, elements: !675)
!675 = !{!676, !680, !694, !701, !702, !703, !704, !705, !706, !714, !715, !716, !722, !723, !724, !725, !726, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !763, !775, !778, !803, !804, !805, !808, !811, !812, !815, !816, !817, !823, !824}
!676 = !DIDerivedType(tag: DW_TAG_member, scope: !674, file: !671, line: 739, baseType: !677, size: 512, align: 512)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !674, file: !671, line: 739, size: 512, align: 512, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !677, file: !671, line: 747, baseType: !203, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !674, file: !671, line: 750, baseType: !681, size: 128, offset: 512)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !682, line: 218, size: 128, elements: !683)
!682 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!683 = !{!684, !692, !693}
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !681, file: !682, line: 219, baseType: !685, size: 32)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !681, file: !682, line: 219, size: 32, elements: !686)
!686 = !{!687, !688}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !685, file: !682, line: 220, baseType: !222, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !685, file: !682, line: 221, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !682, line: 197, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 197, elements: !691)
!691 = !{}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !681, file: !682, line: 223, baseType: !7, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !681, file: !682, line: 224, baseType: !34, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !674, file: !671, line: 752, baseType: !695, size: 64, offset: 640)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{!371, !698, !371, !371, !371, !371}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !700, line: 537, flags: DIFlagFwdDecl)
!700 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!701 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !674, file: !671, line: 756, baseType: !371, size: 64, offset: 704)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !674, file: !671, line: 757, baseType: !371, size: 64, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !674, file: !671, line: 760, baseType: !371, size: 64, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !674, file: !671, line: 761, baseType: !371, size: 64, offset: 896)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !674, file: !671, line: 763, baseType: !371, size: 64, offset: 960)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !674, file: !671, line: 764, baseType: !707, size: 64, offset: 1024)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !700, line: 299, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !700, line: 299, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !709, file: !700, line: 299, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !713, line: 18, baseType: !371)
!713 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!714 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !674, file: !671, line: 773, baseType: !203, size: 32, offset: 1088)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !674, file: !671, line: 785, baseType: !203, size: 32, offset: 1120)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !674, file: !671, line: 795, baseType: !717, size: 64, offset: 1152)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !671, line: 726, size: 128, elements: !719)
!719 = !{!720, !721}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !718, file: !671, line: 727, baseType: !37, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !718, file: !671, line: 728, baseType: !35, size: 32, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !674, file: !671, line: 801, baseType: !371, size: 64, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !674, file: !671, line: 804, baseType: !309, size: 64, offset: 1280)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !674, file: !671, line: 806, baseType: !35, size: 32, offset: 1344)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !674, file: !671, line: 808, baseType: !222, size: 32, offset: 1376)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !674, file: !671, line: 823, baseType: !727, size: 320, offset: 1408)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !728, line: 48, size: 320, elements: !729)
!728 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!729 = !{!730, !731, !732, !733, !734}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !727, file: !728, line: 49, baseType: !309, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !727, file: !728, line: 55, baseType: !309, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !727, file: !728, line: 57, baseType: !321, size: 32, offset: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !727, file: !728, line: 59, baseType: !319, size: 32, offset: 160)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !727, file: !728, line: 60, baseType: !215, size: 128, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !674, file: !671, line: 825, baseType: !215, size: 128, offset: 1728)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !674, file: !671, line: 845, baseType: !35, size: 32, offset: 1856)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !674, file: !671, line: 849, baseType: !371, size: 64, offset: 1920)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !674, file: !671, line: 850, baseType: !371, size: 64, offset: 1984)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !674, file: !671, line: 852, baseType: !371, size: 64, offset: 2048)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !674, file: !671, line: 853, baseType: !371, size: 64, offset: 2112)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !674, file: !671, line: 854, baseType: !311, size: 64, offset: 2176)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !674, file: !671, line: 855, baseType: !371, size: 64, offset: 2240)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !674, file: !671, line: 856, baseType: !371, size: 64, offset: 2304)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !674, file: !671, line: 857, baseType: !371, size: 64, offset: 2368)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !674, file: !671, line: 858, baseType: !371, size: 64, offset: 2432)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !674, file: !671, line: 865, baseType: !543, size: 32, offset: 2496)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !674, file: !671, line: 867, baseType: !222, size: 32, offset: 2528)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !674, file: !671, line: 869, baseType: !371, size: 64, offset: 2560)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !674, file: !671, line: 869, baseType: !371, size: 64, offset: 2624)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !674, file: !671, line: 869, baseType: !371, size: 64, offset: 2688)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !674, file: !671, line: 869, baseType: !371, size: 64, offset: 2752)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !674, file: !671, line: 870, baseType: !371, size: 64, offset: 2816)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !674, file: !671, line: 870, baseType: !371, size: 64, offset: 2880)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !674, file: !671, line: 870, baseType: !371, size: 64, offset: 2944)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !674, file: !671, line: 871, baseType: !371, size: 64, offset: 3008)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !674, file: !671, line: 871, baseType: !371, size: 64, offset: 3072)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !674, file: !671, line: 871, baseType: !371, size: 64, offset: 3136)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !674, file: !671, line: 871, baseType: !371, size: 64, offset: 3200)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !674, file: !671, line: 873, baseType: !760, size: 3328, offset: 3264)
!760 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 3328, elements: !761)
!761 = !{!762}
!762 = !DISubrange(count: 52)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !674, file: !671, line: 875, baseType: !764, size: 1280, offset: 6592)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !765, size: 1280, elements: !67)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !766, line: 22, size: 320, elements: !767)
!766 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!767 = !{!768, !769, !770, !771}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !765, file: !766, line: 23, baseType: !319, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !765, file: !766, line: 24, baseType: !315, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !765, file: !766, line: 26, baseType: !215, size: 128, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !765, file: !766, line: 28, baseType: !772, size: 64, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !38, line: 20, baseType: !774)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !35)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !674, file: !671, line: 877, baseType: !776, size: 64, offset: 7872)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !671, line: 877, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !674, file: !671, line: 880, baseType: !779, size: 1088, offset: 7936)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !780, line: 72, baseType: !781)
!780 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !780, line: 23, size: 1088, elements: !782)
!782 = !{!783, !784, !785, !786, !787, !790, !791, !792, !793, !797, !798, !799}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !781, file: !780, line: 28, baseType: !37, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !781, file: !780, line: 38, baseType: !311, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !781, file: !780, line: 40, baseType: !371, size: 64, offset: 128)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !781, file: !780, line: 43, baseType: !727, size: 320, offset: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !781, file: !780, line: 44, baseType: !788, size: 64, offset: 512)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !780, line: 44, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !780, line: 48, baseType: !371, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !780, line: 59, baseType: !305, size: 256, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !781, file: !780, line: 60, baseType: !34, size: 64, offset: 896)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !781, file: !780, line: 61, baseType: !794, size: 64, offset: 960)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !796)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !780, line: 61, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !781, file: !780, line: 63, baseType: !203, size: 32, offset: 1024)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !781, file: !780, line: 69, baseType: !251, size: 16, offset: 1056)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !781, file: !780, line: 70, baseType: !800, size: 16, offset: 1072)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !38, line: 18, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !33, line: 23, baseType: !802)
!802 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !674, file: !671, line: 882, baseType: !371, size: 64, offset: 9024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !674, file: !671, line: 885, baseType: !222, size: 32, offset: 9088)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !674, file: !671, line: 886, baseType: !806, size: 64, offset: 9152)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !671, line: 732, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !674, file: !671, line: 901, baseType: !809, size: 64, offset: 9216)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !671, line: 901, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !674, file: !671, line: 904, baseType: !698, size: 64, offset: 9280)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !674, file: !671, line: 906, baseType: !813, size: 64, offset: 9344)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !671, line: 906, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !674, file: !671, line: 930, baseType: !203, size: 32, offset: 9408)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !674, file: !671, line: 933, baseType: !203, size: 32, offset: 9440)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !674, file: !671, line: 935, baseType: !818, size: 64, offset: 9472)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !18, line: 103, size: 64, elements: !819)
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !818, file: !18, line: 104, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !18, line: 101, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !674, file: !671, line: 940, baseType: !309, size: 64, offset: 9536)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !674, file: !671, line: 942, baseType: !825, size: 256, offset: 9600)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !826, line: 98, size: 256, elements: !827)
!826 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!827 = !{!828, !829, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !825, file: !826, line: 99, baseType: !309, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !825, file: !826, line: 100, baseType: !215, size: 128, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !825, file: !826, line: 101, baseType: !831, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !826, line: 21, baseType: !832)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{null, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !670, file: !671, line: 986, baseType: !837, offset: 10240)
!837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, elements: !838)
!838 = !{!839}
!839 = !DISubrange(count: -1)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !363, file: !364, line: 882, baseType: !669, size: 64, offset: 9792)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !363, file: !364, line: 884, baseType: !35, size: 32, offset: 9856)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !363, file: !364, line: 885, baseType: !35, size: 32, offset: 9888)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !363, file: !364, line: 886, baseType: !35, size: 32, offset: 9920)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !363, file: !364, line: 888, baseType: !35, size: 32, offset: 9952)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !363, file: !364, line: 890, baseType: !371, size: 64, offset: 9984)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !363, file: !364, line: 893, baseType: !7, size: 32, offset: 10048)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !363, file: !364, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !363, file: !364, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !363, file: !364, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !363, file: !364, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !363, file: !364, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !363, file: !364, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !363, file: !364, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !363, file: !364, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !363, file: !364, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !363, file: !364, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !363, file: !364, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !363, file: !364, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !363, file: !364, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !363, file: !364, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !363, file: !364, line: 969, baseType: !371, size: 64, offset: 10176)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !363, file: !364, line: 971, baseType: !863, size: 448, offset: 10240)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 448, elements: !864)
!864 = !{!865, !866, !872}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !863, file: !12, line: 26, baseType: !371, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !863, file: !12, line: 27, baseType: !867, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!870, !871}
!870 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !863, file: !12, line: 28, baseType: !873, size: 320, offset: 128)
!873 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !863, file: !12, line: 28, size: 320, elements: !874)
!874 = !{!875, !885, !910}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !873, file: !12, line: 37, baseType: !876, size: 320)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 30, size: 320, elements: !877)
!877 = !{!878, !880, !881, !882, !883, !884}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !876, file: !12, line: 31, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !876, file: !12, line: 32, baseType: !56, size: 32, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !876, file: !12, line: 33, baseType: !56, size: 32, offset: 96)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !876, file: !12, line: 34, baseType: !56, size: 32, offset: 128)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !876, file: !12, line: 35, baseType: !37, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !876, file: !12, line: 36, baseType: !879, size: 64, offset: 256)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !873, file: !12, line: 47, baseType: !886, size: 192)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 39, size: 192, elements: !887)
!887 = !{!888, !889, !890, !909}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !886, file: !12, line: 40, baseType: !534, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !886, file: !12, line: 41, baseType: !11, size: 32, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !12, line: 42, baseType: !891, size: 64, offset: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !886, file: !12, line: 42, size: 64, elements: !892)
!892 = !{!893, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !891, file: !12, line: 43, baseType: !894, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !896, line: 7, size: 128, elements: !897)
!896 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!897 = !{!898, !900}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !895, file: !896, line: 8, baseType: !899, size: 64)
!899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !536, line: 93, baseType: !317)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !895, file: !896, line: 9, baseType: !317, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !891, file: !12, line: 44, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !904, line: 7, size: 64, elements: !905)
!904 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!905 = !{!906, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !903, file: !904, line: 8, baseType: !907, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !904, line: 5, baseType: !773)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !903, file: !904, line: 9, baseType: !773, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !886, file: !12, line: 46, baseType: !37, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !873, file: !12, line: 55, baseType: !911, size: 256)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !873, file: !12, line: 49, size: 256, elements: !912)
!912 = !{!913, !916, !917, !918, !919}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !911, file: !12, line: 50, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !911, file: !12, line: 51, baseType: !35, size: 32, offset: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !911, file: !12, line: 52, baseType: !35, size: 32, offset: 96)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !911, file: !12, line: 53, baseType: !371, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !911, file: !12, line: 54, baseType: !371, size: 64, offset: 192)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !363, file: !364, line: 973, baseType: !921, size: 32, offset: 10688)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !41, line: 27, baseType: !922)
!922 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !536, line: 28, baseType: !35)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !363, file: !364, line: 974, baseType: !921, size: 32, offset: 10720)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !363, file: !364, line: 978, baseType: !371, size: 64, offset: 10752)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !363, file: !364, line: 987, baseType: !362, size: 64, offset: 10816)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !363, file: !364, line: 990, baseType: !362, size: 64, offset: 10880)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !363, file: !364, line: 995, baseType: !215, size: 128, offset: 10944)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !363, file: !364, line: 996, baseType: !215, size: 128, offset: 11072)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !363, file: !364, line: 997, baseType: !362, size: 64, offset: 11200)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !363, file: !364, line: 1005, baseType: !215, size: 128, offset: 11264)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !363, file: !364, line: 1006, baseType: !215, size: 128, offset: 11392)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !363, file: !364, line: 1009, baseType: !933, size: 64, offset: 11520)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !935, line: 59, size: 768, elements: !936)
!935 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!936 = !{!937, !938, !939, !940, !951, !952, !959, !968}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !934, file: !935, line: 61, baseType: !198, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !934, file: !935, line: 62, baseType: !7, size: 32, offset: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !935, line: 63, baseType: !222, size: 32, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !934, file: !935, line: 65, baseType: !941, size: 256, offset: 128)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !942, size: 256, elements: !67)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !41, line: 194, size: 64, elements: !943)
!943 = !{!944}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !942, file: !41, line: 195, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !41, line: 198, size: 128, elements: !947)
!947 = !{!948, !949}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !946, file: !41, line: 199, baseType: !945, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !946, file: !41, line: 199, baseType: !950, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !934, file: !935, line: 66, baseType: !942, size: 64, offset: 384)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !934, file: !935, line: 68, baseType: !953, size: 192, offset: 448)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !954, line: 41, baseType: !955)
!954 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !954, line: 37, size: 192, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !954, line: 38, baseType: !222, size: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !955, file: !954, line: 39, baseType: !215, size: 128, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !934, file: !935, line: 69, baseType: !960, size: 128, align: 64, offset: 640)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !41, line: 232, size: 128, align: 64, elements: !961)
!961 = !{!962, !964}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !960, file: !41, line: 233, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !960, file: !41, line: 234, baseType: !965, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DISubroutineType(types: !967)
!967 = !{null, !963}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !934, file: !935, line: 70, baseType: !969, offset: 768)
!969 = !DICompositeType(tag: DW_TAG_array_type, baseType: !970, elements: !838)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !935, line: 54, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !970, file: !935, line: 55, baseType: !35, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !970, file: !935, line: 56, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !935, line: 56, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !363, file: !364, line: 1010, baseType: !977, size: 512, offset: 11584)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !946, size: 512, elements: !67)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !363, file: !364, line: 1011, baseType: !215, size: 128, offset: 12096)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !363, file: !364, line: 1012, baseType: !215, size: 128, offset: 12224)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !363, file: !364, line: 1014, baseType: !981, size: 64, offset: 12352)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !983, line: 26, size: 256, elements: !984)
!983 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !982, file: !983, line: 27, baseType: !7, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !982, file: !983, line: 28, baseType: !987, size: 192, offset: 64)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !988, line: 43, size: 192, elements: !989)
!988 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !987, file: !988, line: 44, baseType: !319, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !987, file: !988, line: 45, baseType: !215, size: 128, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !363, file: !364, line: 1017, baseType: !993, size: 64, offset: 12416)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !363, file: !364, line: 1020, baseType: !993, size: 64, offset: 12480)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !363, file: !364, line: 1023, baseType: !34, size: 64, offset: 12544)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !363, file: !364, line: 1025, baseType: !37, size: 64, offset: 12608)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !363, file: !364, line: 1026, baseType: !37, size: 64, offset: 12672)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !363, file: !364, line: 1031, baseType: !37, size: 64, offset: 12736)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !363, file: !364, line: 1032, baseType: !1000, size: 192, offset: 12800)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !364, line: 324, size: 192, elements: !1001)
!1001 = !{!1002, !1003, !1004}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1000, file: !364, line: 326, baseType: !37, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1000, file: !364, line: 327, baseType: !37, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1000, file: !364, line: 328, baseType: !319, size: 32, offset: 128)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !363, file: !364, line: 1041, baseType: !371, size: 64, offset: 12992)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !363, file: !364, line: 1042, baseType: !371, size: 64, offset: 13056)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !363, file: !364, line: 1045, baseType: !37, size: 64, offset: 13120)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !363, file: !364, line: 1048, baseType: !37, size: 64, offset: 13184)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !363, file: !364, line: 1051, baseType: !371, size: 64, offset: 13248)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !363, file: !364, line: 1052, baseType: !371, size: 64, offset: 13312)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !363, file: !364, line: 1055, baseType: !1012, size: 640, offset: 13376)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1013, line: 132, size: 640, elements: !1014)
!1013 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1014 = !{!1015, !1023, !1024}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1012, file: !1013, line: 133, baseType: !1016, size: 576)
!1016 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1017, size: 576, elements: !1021)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1013, line: 117, size: 192, elements: !1018)
!1018 = !{!1019, !1020}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1017, file: !1013, line: 118, baseType: !37, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1017, file: !1013, line: 119, baseType: !549, size: 128, offset: 64)
!1021 = !{!1022}
!1022 = !DISubrange(count: 3)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1012, file: !1013, line: 134, baseType: !7, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1012, file: !1013, line: 135, baseType: !7, size: 32, offset: 608)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !363, file: !364, line: 1058, baseType: !1026, size: 448, offset: 14016)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1013, line: 144, size: 448, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1026, file: !1013, line: 145, baseType: !960, size: 128, align: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1026, file: !1013, line: 146, baseType: !305, size: 256, offset: 128)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1026, file: !1013, line: 147, baseType: !7, size: 32, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !363, file: !364, line: 1064, baseType: !1032, size: 64, offset: 14464)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1034)
!1034 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !364, line: 1064, flags: DIFlagFwdDecl)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !363, file: !364, line: 1067, baseType: !1032, size: 64, offset: 14528)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !363, file: !364, line: 1070, baseType: !1032, size: 64, offset: 14592)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !363, file: !364, line: 1074, baseType: !1038, size: 64, offset: 14656)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !364, line: 1074, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !363, file: !364, line: 1084, baseType: !1041, size: 128, offset: 14720)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 128, elements: !1042)
!1042 = !{!1043}
!1043 = !DISubrange(count: 16)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !363, file: !364, line: 1086, baseType: !1045, size: 64, offset: 14848)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !364, line: 55, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !363, file: !364, line: 1089, baseType: !1048, size: 64, offset: 14912)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !1049, line: 12, size: 64, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !1048, file: !1049, line: 13, baseType: !1052, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !1049, line: 8, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !363, file: !364, line: 1090, baseType: !1055, size: 128, offset: 14976)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !1056, line: 13, size: 128, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !1055, file: !1056, line: 14, baseType: !215, size: 128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !363, file: !364, line: 1097, baseType: !1060, size: 64, offset: 15104)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !364, line: 50, flags: DIFlagFwdDecl)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !363, file: !364, line: 1100, baseType: !1063, size: 64, offset: 15168)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !364, line: 1100, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !363, file: !364, line: 1103, baseType: !1066, size: 64, offset: 15232)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !364, line: 53, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !363, file: !364, line: 1107, baseType: !1069, size: 64, offset: 15296)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !364, line: 56, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !363, file: !364, line: 1110, baseType: !1072, size: 64, offset: 15360)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1013, line: 236, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !363, file: !364, line: 1111, baseType: !1075, size: 64, offset: 15424)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !364, line: 67, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !363, file: !364, line: 1112, baseType: !1078, size: 64, offset: 15488)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1079, line: 25, baseType: !1080)
!1079 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1079, line: 23, size: 64, elements: !1081)
!1081 = !{!1082}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1080, file: !1079, line: 24, baseType: !620, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !363, file: !364, line: 1113, baseType: !1078, size: 64, offset: 15552)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !363, file: !364, line: 1115, baseType: !1078, size: 64, offset: 15616)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !363, file: !364, line: 1116, baseType: !1086, size: 192, offset: 15680)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1087, line: 32, size: 192, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1088 = !{!1089, !1090}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1086, file: !1087, line: 33, baseType: !215, size: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1086, file: !1087, line: 34, baseType: !1078, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !363, file: !364, line: 1117, baseType: !371, size: 64, offset: 15872)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !363, file: !364, line: 1118, baseType: !1093, size: 64, offset: 15936)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !41, line: 61, baseType: !1094)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !536, line: 72, baseType: !1095)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !536, line: 16, baseType: !371)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !363, file: !364, line: 1119, baseType: !7, size: 32, offset: 16000)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !363, file: !364, line: 1121, baseType: !963, size: 64, offset: 16064)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !363, file: !364, line: 1125, baseType: !1099, size: 64, offset: 16128)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !364, line: 43, flags: DIFlagFwdDecl)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !363, file: !364, line: 1127, baseType: !1102, size: 32, offset: 16192)
!1102 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1103, line: 23, baseType: !1104)
!1103 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1103, line: 21, size: 32, elements: !1105)
!1105 = !{!1106}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1104, file: !1103, line: 22, baseType: !1107, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !41, line: 37, baseType: !1108)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !536, line: 49, baseType: !7)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !363, file: !364, line: 1128, baseType: !7, size: 32, offset: 16224)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !363, file: !364, line: 1130, baseType: !1111, size: 128, offset: 16256)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1112, line: 37, size: 128, elements: !1113)
!1112 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!1113 = !{!1114, !1115, !1116}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1111, file: !1112, line: 38, baseType: !35, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1111, file: !1112, line: 39, baseType: !203, size: 32, offset: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1111, file: !1112, line: 40, baseType: !1117, size: 64, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1112, line: 24, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !363, file: !364, line: 1131, baseType: !1120, size: 256, offset: 16384)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !1121, line: 12, size: 256, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!1122 = !{!1123, !1124, !1125, !1126}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !1120, file: !1121, line: 13, baseType: !275, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1120, file: !1121, line: 14, baseType: !371, size: 64, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1120, file: !1121, line: 15, baseType: !371, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !1120, file: !1121, line: 16, baseType: !75, size: 8, offset: 192)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !363, file: !364, line: 1134, baseType: !37, size: 64, offset: 16640)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !363, file: !364, line: 1135, baseType: !37, size: 64, offset: 16704)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !363, file: !364, line: 1138, baseType: !222, size: 32, offset: 16768)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !363, file: !364, line: 1141, baseType: !319, size: 32, offset: 16800)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !363, file: !364, line: 1143, baseType: !1132, size: 64, offset: 16832)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !364, line: 735, size: 64, elements: !1133)
!1133 = !{!1134}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !364, line: 736, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !363, file: !364, line: 1147, baseType: !552, size: 128, offset: 16896)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !363, file: !364, line: 1149, baseType: !362, size: 64, offset: 17024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !363, file: !364, line: 1151, baseType: !1139, size: 64, offset: 17088)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !364, line: 1151, flags: DIFlagFwdDecl)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !363, file: !364, line: 1188, baseType: !34, size: 64, offset: 17152)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !363, file: !364, line: 1191, baseType: !1143, size: 64, offset: 17216)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !364, line: 44, flags: DIFlagFwdDecl)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !363, file: !364, line: 1194, baseType: !1146, size: 64, offset: 17280)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !364, line: 45, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !363, file: !364, line: 1197, baseType: !1149, size: 64, offset: 17344)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !364, line: 61, flags: DIFlagFwdDecl)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !363, file: !364, line: 1199, baseType: !1152, size: 64, offset: 17408)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1153 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !364, line: 52, flags: DIFlagFwdDecl)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !363, file: !364, line: 1202, baseType: !1155, size: 64, offset: 17472)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !364, line: 48, flags: DIFlagFwdDecl)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !363, file: !364, line: 1205, baseType: !371, size: 64, offset: 17536)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !363, file: !364, line: 1206, baseType: !1159, size: 64, offset: 17600)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1087, line: 14, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1087, line: 12, size: 384, elements: !1162)
!1162 = !{!1163}
!1163 = !DIDerivedType(tag: DW_TAG_member, scope: !1161, file: !1087, line: 13, baseType: !1164, size: 384)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1161, file: !1087, line: 13, size: 384, elements: !1165)
!1165 = !{!1166, !1167, !1168, !1169}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1164, file: !1087, line: 13, baseType: !35, size: 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1164, file: !1087, line: 13, baseType: !35, size: 32, offset: 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1164, file: !1087, line: 13, baseType: !35, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1164, file: !1087, line: 13, baseType: !1170, size: 256, offset: 128)
!1170 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1171, line: 37, size: 256, elements: !1172)
!1171 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!1172 = !{!1173, !1178, !1191, !1197, !1207, !1234, !1239}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1170, file: !1171, line: 42, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 39, size: 64, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1174, file: !1171, line: 40, baseType: !922, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1174, file: !1171, line: 41, baseType: !1108, size: 32, offset: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1170, file: !1171, line: 50, baseType: !1179, size: 192)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 45, size: 192, elements: !1180)
!1180 = !{!1181, !1183, !1184, !1190}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1179, file: !1171, line: 46, baseType: !1182, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !536, line: 95, baseType: !35)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1179, file: !1171, line: 47, baseType: !35, size: 32, offset: 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1179, file: !1171, line: 48, baseType: !1185, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1171, line: 11, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1171, line: 8, size: 64, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1186, file: !1171, line: 9, baseType: !35, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1186, file: !1171, line: 10, baseType: !34, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1179, file: !1171, line: 49, baseType: !35, size: 32, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1170, file: !1171, line: 57, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 53, size: 128, elements: !1193)
!1193 = !{!1194, !1195, !1196}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1192, file: !1171, line: 54, baseType: !922, size: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1192, file: !1171, line: 55, baseType: !1108, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1192, file: !1171, line: 56, baseType: !1185, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1170, file: !1171, line: 66, baseType: !1198, size: 256)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 60, size: 256, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1206}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1198, file: !1171, line: 61, baseType: !922, size: 32)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1198, file: !1171, line: 62, baseType: !1108, size: 32, offset: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1198, file: !1171, line: 63, baseType: !35, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1198, file: !1171, line: 64, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !536, line: 94, baseType: !1205)
!1205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !536, line: 15, baseType: !870)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1198, file: !1171, line: 65, baseType: !1204, size: 64, offset: 192)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1170, file: !1171, line: 105, baseType: !1208, size: 256)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 69, size: 256, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1208, file: !1171, line: 70, baseType: !34, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1208, file: !1171, line: 79, baseType: !1212, size: 192, offset: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1208, file: !1171, line: 79, size: 192, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1223, !1228}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !1212, file: !1171, line: 81, baseType: !35, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1212, file: !1171, line: 86, baseType: !802, size: 16)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1212, file: !1171, line: 92, baseType: !1217, size: 192)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1171, line: 88, size: 192, elements: !1218)
!1218 = !{!1219, !1221, !1222}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1217, file: !1171, line: 89, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 64, elements: !530)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1217, file: !1171, line: 90, baseType: !34, size: 64, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1217, file: !1171, line: 91, baseType: !34, size: 64, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1212, file: !1171, line: 97, baseType: !1224, size: 96)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1171, line: 94, size: 96, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1224, file: !1171, line: 95, baseType: !1220, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1224, file: !1171, line: 96, baseType: !32, size: 32, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !1212, file: !1171, line: 103, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1212, file: !1171, line: 99, size: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !1229, file: !1171, line: 100, baseType: !371, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !1229, file: !1171, line: 101, baseType: !32, size: 32, offset: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1229, file: !1171, line: 102, baseType: !32, size: 32, offset: 96)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1170, file: !1171, line: 111, baseType: !1235, size: 128)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 108, size: 128, elements: !1236)
!1236 = !{!1237, !1238}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1235, file: !1171, line: 109, baseType: !870, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1235, file: !1171, line: 110, baseType: !35, size: 32, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1170, file: !1171, line: 118, baseType: !1240, size: 128)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1170, file: !1171, line: 114, size: 128, elements: !1241)
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1240, file: !1171, line: 115, baseType: !34, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1240, file: !1171, line: 116, baseType: !35, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1240, file: !1171, line: 117, baseType: !7, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !363, file: !364, line: 1208, baseType: !1246, size: 448, offset: 17664)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1247, line: 12, size: 448, elements: !1248)
!1247 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!1248 = !{!1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !1246, file: !1247, line: 15, baseType: !37, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !1246, file: !1247, line: 17, baseType: !37, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !1246, file: !1247, line: 19, baseType: !37, size: 64, offset: 128)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !1246, file: !1247, line: 21, baseType: !37, size: 64, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !1246, file: !1247, line: 29, baseType: !37, size: 64, offset: 256)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !1246, file: !1247, line: 35, baseType: !37, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !1246, file: !1247, line: 44, baseType: !37, size: 64, offset: 384)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !363, file: !364, line: 1215, baseType: !37, size: 64, offset: 18112)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !363, file: !364, line: 1217, baseType: !37, size: 64, offset: 18176)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !363, file: !364, line: 1219, baseType: !37, size: 64, offset: 18240)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !363, file: !364, line: 1223, baseType: !1260, size: 64, offset: 18304)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !1261, line: 99, baseType: !1262)
!1261 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1261, line: 99, size: 64, elements: !1263)
!1263 = !{!1264}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1262, file: !1261, line: 99, baseType: !620, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !363, file: !364, line: 1225, baseType: !1266, size: 32, offset: 18368)
!1266 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !539, line: 275, baseType: !1267)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !539, line: 275, size: 32, elements: !1268)
!1268 = !{!1269}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1267, file: !539, line: 275, baseType: !543, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !363, file: !364, line: 1226, baseType: !35, size: 32, offset: 18400)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !363, file: !364, line: 1227, baseType: !35, size: 32, offset: 18432)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !363, file: !364, line: 1231, baseType: !1273, size: 64, offset: 18496)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !364, line: 1231, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !363, file: !364, line: 1233, baseType: !215, size: 128, offset: 18560)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !363, file: !364, line: 1240, baseType: !1277, size: 64, offset: 18688)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !364, line: 62, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !363, file: !364, line: 1242, baseType: !1280, size: 64, offset: 18752)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !364, line: 1242, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !363, file: !364, line: 1244, baseType: !215, size: 128, offset: 18816)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !363, file: !364, line: 1245, baseType: !1284, size: 64, offset: 18944)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !364, line: 51, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !363, file: !364, line: 1246, baseType: !305, size: 256, offset: 19008)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !363, file: !364, line: 1247, baseType: !7, size: 32, offset: 19264)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !363, file: !364, line: 1250, baseType: !1289, size: 64, offset: 19328)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !364, line: 57, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !363, file: !364, line: 1251, baseType: !305, size: 256, offset: 19392)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !363, file: !364, line: 1252, baseType: !215, size: 128, offset: 19648)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !363, file: !364, line: 1259, baseType: !1294, size: 64, offset: 19776)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !671, line: 717, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !363, file: !364, line: 1260, baseType: !802, size: 16, offset: 19840)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !363, file: !364, line: 1261, baseType: !802, size: 16, offset: 19856)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !363, file: !364, line: 1314, baseType: !1299, size: 64, offset: 19904)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1301, line: 62, size: 256, align: 256, elements: !1302)
!1301 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!1302 = !{!1303, !1304, !1305, !1306, !1307, !1308, !1309}
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1300, file: !1301, line: 75, baseType: !32, size: 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1300, file: !1301, line: 90, baseType: !32, size: 32, offset: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1300, file: !1301, line: 112, baseType: !39, size: 64, offset: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1300, file: !1301, line: 132, baseType: !32, size: 32, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !1300, file: !1301, line: 140, baseType: !32, size: 32, offset: 160)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1300, file: !1301, line: 149, baseType: !32, size: 32, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1300, file: !1301, line: 154, baseType: !1310, offset: 224)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, elements: !838)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !363, file: !364, line: 1315, baseType: !56, size: 32, offset: 19968)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !363, file: !364, line: 1316, baseType: !56, size: 32, offset: 20000)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !363, file: !364, line: 1321, baseType: !371, size: 64, offset: 20032)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !363, file: !364, line: 1325, baseType: !35, size: 32, offset: 20096)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !363, file: !364, line: 1326, baseType: !35, size: 32, offset: 20128)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !363, file: !364, line: 1327, baseType: !35, size: 32, offset: 20160)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !363, file: !364, line: 1328, baseType: !35, size: 32, offset: 20192)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !363, file: !364, line: 1329, baseType: !960, size: 128, align: 64, offset: 20224)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !363, file: !364, line: 1332, baseType: !1320, size: 128, offset: 20352)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !1321, line: 51, size: 128, elements: !1322)
!1321 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!1322 = !{!1323, !1328, !1329}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1320, file: !1321, line: 60, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1325, line: 7, size: 64, elements: !1326)
!1325 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1324, file: !1325, line: 12, baseType: !617, size: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1320, file: !1321, line: 63, baseType: !75, size: 8, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1320, file: !1321, line: 70, baseType: !75, size: 8, offset: 72)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !363, file: !364, line: 1335, baseType: !1331, size: 64, offset: 20480)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !364, line: 59, flags: DIFlagFwdDecl)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !363, file: !364, line: 1337, baseType: !1334, size: 128, offset: 20544)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !1321, line: 39, size: 128, elements: !1335)
!1335 = !{!1336, !1399, !1400}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1334, file: !1321, line: 40, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !671, line: 74, size: 512, align: 128, elements: !1339)
!1339 = !{!1340, !1341, !1393, !1398}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1338, file: !671, line: 75, baseType: !371, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !671, line: 83, baseType: !1342, size: 320, offset: 64)
!1342 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1338, file: !671, line: 83, size: 320, elements: !1343)
!1343 = !{!1344, !1367, !1381, !1385, !1392}
!1344 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !671, line: 84, baseType: !1345, size: 320)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !671, line: 84, size: 320, elements: !1346)
!1346 = !{!1347, !1358, !1361, !1366}
!1347 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !671, line: 90, baseType: !1348, size: 128)
!1348 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !671, line: 90, size: 128, elements: !1349)
!1349 = !{!1350, !1351, !1356, !1357}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1348, file: !671, line: 91, baseType: !215, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, scope: !1348, file: !671, line: 94, baseType: !1352, size: 128)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1348, file: !671, line: 94, size: 128, elements: !1353)
!1353 = !{!1354, !1355}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1352, file: !671, line: 96, baseType: !34, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1352, file: !671, line: 98, baseType: !7, size: 32, offset: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1348, file: !671, line: 102, baseType: !215, size: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1348, file: !671, line: 103, baseType: !215, size: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1345, file: !671, line: 106, baseType: !1359, size: 64, offset: 128)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !671, line: 32, flags: DIFlagFwdDecl)
!1361 = !DIDerivedType(tag: DW_TAG_member, scope: !1345, file: !671, line: 107, baseType: !1362, size: 64, offset: 192)
!1362 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1345, file: !671, line: 107, size: 64, elements: !1363)
!1363 = !{!1364, !1365}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1362, file: !671, line: 108, baseType: !371, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1362, file: !671, line: 109, baseType: !371, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1345, file: !671, line: 117, baseType: !371, size: 64, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !671, line: 119, baseType: !1368, size: 320)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !671, line: 119, size: 320, elements: !1369)
!1369 = !{!1370, !1371, !1374, !1375, !1376}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1368, file: !671, line: 124, baseType: !371, size: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1368, file: !671, line: 125, baseType: !1372, size: 64, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !671, line: 125, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1368, file: !671, line: 126, baseType: !371, size: 64, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1368, file: !671, line: 127, baseType: !371, size: 64, offset: 192)
!1376 = !DIDerivedType(tag: DW_TAG_member, scope: !1368, file: !671, line: 128, baseType: !1377, size: 64, offset: 256)
!1377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1368, file: !671, line: 128, size: 64, elements: !1378)
!1378 = !{!1379, !1380}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1377, file: !671, line: 133, baseType: !371, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1377, file: !671, line: 138, baseType: !309, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !671, line: 141, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !671, line: 141, size: 64, elements: !1383)
!1383 = !{!1384}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1382, file: !671, line: 142, baseType: !371, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, scope: !1342, file: !671, line: 144, baseType: !1386, size: 128)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1342, file: !671, line: 144, size: 128, elements: !1387)
!1387 = !{!1388, !1391}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1386, file: !671, line: 146, baseType: !1389, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1390, size: 64)
!1390 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !671, line: 146, flags: DIFlagFwdDecl)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1386, file: !671, line: 147, baseType: !34, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1342, file: !671, line: 161, baseType: !960, size: 128, align: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1338, file: !671, line: 164, baseType: !1394, size: 32, offset: 384)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1338, file: !671, line: 164, size: 32, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1394, file: !671, line: 169, baseType: !203, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1394, file: !671, line: 177, baseType: !7, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1338, file: !671, line: 181, baseType: !203, size: 32, offset: 416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1334, file: !1321, line: 42, baseType: !32, size: 32, offset: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1334, file: !1321, line: 43, baseType: !32, size: 32, offset: 96)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !363, file: !364, line: 1340, baseType: !1402, size: 64, offset: 20672)
!1402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1403, size: 64)
!1403 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !364, line: 69, flags: DIFlagFwdDecl)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !363, file: !364, line: 1351, baseType: !35, size: 32, offset: 20736)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !363, file: !364, line: 1352, baseType: !35, size: 32, offset: 20768)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !363, file: !364, line: 1354, baseType: !371, size: 64, offset: 20800)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !363, file: !364, line: 1364, baseType: !37, size: 64, offset: 20864)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !363, file: !364, line: 1365, baseType: !37, size: 64, offset: 20928)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !363, file: !364, line: 1412, baseType: !371, size: 64, offset: 20992)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !363, file: !364, line: 1453, baseType: !1411, size: 64, offset: 21056)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !364, line: 1453, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !363, file: !364, line: 1457, baseType: !1414, size: 64, offset: 21120)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !18, line: 61, size: 576, elements: !1416)
!1416 = !{!1417, !1418, !1437, !1440, !1441, !1474, !1484}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1415, file: !18, line: 62, baseType: !17, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !18, line: 64, baseType: !1419, size: 192, offset: 64)
!1419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1415, file: !18, line: 64, size: 192, elements: !1420)
!1420 = !{!1421, !1432}
!1421 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !18, line: 65, baseType: !1422, size: 192)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !18, line: 65, size: 192, elements: !1423)
!1423 = !{!1424, !1431}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !1422, file: !18, line: 66, baseType: !1425, size: 128)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !1426, line: 50, size: 128, elements: !1427)
!1426 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !1425, file: !1426, line: 52, baseType: !371, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !1425, file: !1426, line: 54, baseType: !7, size: 32, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !1425, file: !1426, line: 55, baseType: !7, size: 32, offset: 96)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !1422, file: !18, line: 67, baseType: !371, size: 64, offset: 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, scope: !1419, file: !18, line: 70, baseType: !1433, size: 192)
!1433 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1419, file: !18, line: 70, size: 192, elements: !1434)
!1434 = !{!1435, !1436}
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !1433, file: !18, line: 71, baseType: !960, size: 128, align: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !1433, file: !18, line: 72, baseType: !371, size: 64, offset: 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !1415, file: !18, line: 76, baseType: !1438, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !18, line: 76, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !1415, file: !18, line: 77, baseType: !371, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !1415, file: !18, line: 79, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !1426, line: 25, size: 256, elements: !1444)
!1444 = !{!1445, !1451, !1455}
!1445 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1426, line: 26, baseType: !1446, size: 128)
!1446 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1426, line: 26, size: 128, elements: !1447)
!1447 = !{!1448, !1450}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1446, file: !1426, line: 27, baseType: !1449, size: 128)
!1449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 128, elements: !1042)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !1446, file: !1426, line: 28, baseType: !1449, size: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1443, file: !1426, line: 31, baseType: !1452, size: 64, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1454)
!1454 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !1426, line: 23, flags: DIFlagFwdDecl)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1426, line: 33, baseType: !1456, size: 64, offset: 192)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1426, line: 33, size: 64, elements: !1457)
!1457 = !{!1458, !1464, !1469}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !1456, file: !1426, line: 38, baseType: !1459, size: 64)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1426, line: 34, size: 64, elements: !1460)
!1460 = !{!1461, !1462, !1463}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !1459, file: !1426, line: 35, baseType: !773, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1459, file: !1426, line: 36, baseType: !58, size: 8, offset: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !1459, file: !1426, line: 37, baseType: !58, size: 8, offset: 40)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !1456, file: !1426, line: 42, baseType: !1465, size: 16)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1426, line: 39, size: 16, elements: !1466)
!1466 = !{!1467, !1468}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !1465, file: !1426, line: 40, baseType: !58, size: 8)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1465, file: !1426, line: 41, baseType: !58, size: 8, offset: 8)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !1456, file: !1426, line: 46, baseType: !1470, size: 16)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1426, line: 43, size: 16, elements: !1471)
!1471 = !{!1472, !1473}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !1470, file: !1426, line: 44, baseType: !58, size: 8)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !1470, file: !1426, line: 45, baseType: !58, size: 8, offset: 8)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !1415, file: !18, line: 81, baseType: !1475, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !18, line: 85, size: 384, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !1476, file: !18, line: 86, baseType: !1438, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1476, file: !18, line: 87, baseType: !371, size: 64, offset: 64)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1476, file: !18, line: 88, baseType: !371, size: 64, offset: 128)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !1476, file: !18, line: 89, baseType: !371, size: 64, offset: 192)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !1476, file: !18, line: 90, baseType: !75, size: 8, offset: 256)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1476, file: !18, line: 92, baseType: !1475, size: 64, offset: 320)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1415, file: !18, line: 82, baseType: !7, size: 32, offset: 512)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !363, file: !364, line: 1463, baseType: !1486, offset: 21184)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !364, line: 739, elements: !691)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !363, file: !364, line: 1470, baseType: !960, size: 128, align: 64, offset: 21184)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !363, file: !364, line: 1471, baseType: !198, size: 32, offset: 21312)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !363, file: !364, line: 1472, baseType: !35, size: 32, offset: 21344)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !363, file: !364, line: 1474, baseType: !362, size: 64, offset: 21376)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !363, file: !364, line: 1475, baseType: !1492, size: 320, offset: 21440)
!1492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1493, line: 11, size: 320, elements: !1494)
!1493 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1494 = !{!1495, !1496, !1497, !1502}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1492, file: !1493, line: 16, baseType: !946, size: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1492, file: !1493, line: 17, baseType: !371, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1492, file: !1493, line: 18, baseType: !1498, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DISubroutineType(types: !1500)
!1500 = !{null, !1501}
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1492, file: !1493, line: 19, baseType: !56, size: 32, offset: 256)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !363, file: !364, line: 1478, baseType: !1504, size: 64, offset: 21760)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !364, line: 1478, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !363, file: !364, line: 1482, baseType: !198, size: 32, offset: 21824)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !363, file: !364, line: 1489, baseType: !34, size: 64, offset: 21888)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !363, file: !364, line: 1504, baseType: !34, size: 64, offset: 21952)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !363, file: !364, line: 1505, baseType: !39, size: 64, offset: 22016)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !363, file: !364, line: 1506, baseType: !37, size: 64, offset: 22080)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !363, file: !364, line: 1507, baseType: !39, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !363, file: !364, line: 1508, baseType: !39, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !363, file: !364, line: 1509, baseType: !39, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !363, file: !364, line: 1510, baseType: !960, size: 128, align: 64, offset: 22208)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !363, file: !364, line: 1511, baseType: !35, size: 32, offset: 22336)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !363, file: !364, line: 1515, baseType: !1517, size: 64, offset: 22400)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !387, line: 56, size: 64, elements: !1518)
!1518 = !{!1519}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1517, file: !387, line: 57, baseType: !390, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !363, file: !364, line: 1518, baseType: !1517, size: 64, offset: 22464)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !363, file: !364, line: 1528, baseType: !960, size: 128, align: 64, offset: 22528)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !363, file: !364, line: 1552, baseType: !1523, size: 35328, offset: 23040)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1524, line: 430, size: 35328, elements: !1525)
!1524 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!1525 = !{!1526, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1555, !1556, !1557, !1558, !1559, !1560, !1563, !1564, !1565, !1566}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1523, file: !1524, line: 432, baseType: !1527, size: 192)
!1527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1528, size: 192, elements: !1021)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1529, line: 16, size: 64, elements: !1530)
!1529 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1528, file: !1529, line: 17, baseType: !251, size: 16)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1528, file: !1529, line: 18, baseType: !251, size: 16, offset: 16)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1528, file: !1529, line: 19, baseType: !251, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1528, file: !1529, line: 19, baseType: !251, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1528, file: !1529, line: 19, baseType: !251, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1528, file: !1529, line: 19, baseType: !251, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1528, file: !1529, line: 19, baseType: !251, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1528, file: !1529, line: 20, baseType: !251, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1528, file: !1529, line: 20, baseType: !251, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1528, file: !1529, line: 20, baseType: !251, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1528, file: !1529, line: 20, baseType: !251, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1528, file: !1529, line: 20, baseType: !251, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1528, file: !1529, line: 20, baseType: !251, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1523, file: !1524, line: 436, baseType: !371, size: 64, offset: 192)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1523, file: !1524, line: 440, baseType: !253, size: 16, offset: 256)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1523, file: !1524, line: 441, baseType: !253, size: 16, offset: 272)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1523, file: !1524, line: 442, baseType: !253, size: 16, offset: 288)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1523, file: !1524, line: 443, baseType: !253, size: 16, offset: 304)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1523, file: !1524, line: 447, baseType: !371, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1523, file: !1524, line: 448, baseType: !371, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1523, file: !1524, line: 459, baseType: !1552, size: 256, offset: 448)
!1552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1553, size: 256, elements: !67)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1524, line: 428, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1523, file: !1524, line: 461, baseType: !371, size: 64, offset: 704)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1523, file: !1524, line: 463, baseType: !371, size: 64, offset: 768)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1523, file: !1524, line: 465, baseType: !371, size: 64, offset: 832)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1523, file: !1524, line: 466, baseType: !371, size: 64, offset: 896)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1523, file: !1524, line: 467, baseType: !371, size: 64, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1523, file: !1524, line: 473, baseType: !1561, size: 64, offset: 1024)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1524, line: 10, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1523, file: !1524, line: 480, baseType: !371, size: 64, offset: 1088)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !1523, file: !1524, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !1523, file: !1524, line: 491, baseType: !56, size: 32, offset: 1184)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1523, file: !1524, line: 501, baseType: !1567, size: 33792, offset: 1536)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1568, line: 448, size: 33792, elements: !1569)
!1568 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!1569 = !{!1570, !1571, !1572, !1740, !1741, !1747, !1748}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1567, file: !1568, line: 461, baseType: !7, size: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1567, file: !1568, line: 468, baseType: !371, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !1567, file: !1568, line: 476, baseType: !1573, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !1568, line: 356, size: 33280, align: 512, elements: !1575)
!1575 = !{!1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1574, file: !1568, line: 358, baseType: !7, size: 32)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !1574, file: !1568, line: 361, baseType: !7, size: 32, offset: 32)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1574, file: !1568, line: 364, baseType: !37, size: 64, offset: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !1574, file: !1568, line: 367, baseType: !37, size: 64, offset: 128)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !1574, file: !1568, line: 370, baseType: !37, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !1574, file: !1568, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !1574, file: !1568, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !1574, file: !1568, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !1574, file: !1568, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1574, file: !1568, line: 397, baseType: !1586, size: 32768, offset: 512)
!1586 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1568, line: 348, size: 32768, elements: !1587)
!1587 = !{!1588, !1603, !1644, !1721, !1736}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1586, file: !1568, line: 349, baseType: !1589, size: 896)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1568, line: 12, size: 896, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1602}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1589, file: !1568, line: 13, baseType: !56, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1589, file: !1568, line: 14, baseType: !56, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1589, file: !1568, line: 15, baseType: !56, size: 32, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1589, file: !1568, line: 16, baseType: !56, size: 32, offset: 96)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1589, file: !1568, line: 17, baseType: !56, size: 32, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1589, file: !1568, line: 18, baseType: !56, size: 32, offset: 160)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1589, file: !1568, line: 19, baseType: !56, size: 32, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1589, file: !1568, line: 22, baseType: !1599, size: 640, offset: 224)
!1599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, elements: !1600)
!1600 = !{!1601}
!1601 = !DISubrange(count: 20)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1589, file: !1568, line: 25, baseType: !56, size: 32, offset: 864)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1586, file: !1568, line: 350, baseType: !1604, size: 4096, align: 128)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1568, line: 34, size: 4096, align: 128, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1625, !1626, !1627, !1631, !1635, !1639}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1604, file: !1568, line: 35, baseType: !251, size: 16)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1604, file: !1568, line: 36, baseType: !251, size: 16, offset: 16)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1604, file: !1568, line: 37, baseType: !251, size: 16, offset: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1604, file: !1568, line: 38, baseType: !251, size: 16, offset: 48)
!1610 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1568, line: 39, baseType: !1611, size: 128, offset: 64)
!1611 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1568, line: 39, size: 128, elements: !1612)
!1612 = !{!1613, !1618}
!1613 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1568, line: 40, baseType: !1614, size: 128)
!1614 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !1568, line: 40, size: 128, elements: !1615)
!1615 = !{!1616, !1617}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1614, file: !1568, line: 41, baseType: !37, size: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1614, file: !1568, line: 42, baseType: !37, size: 64, offset: 64)
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1611, file: !1568, line: 44, baseType: !1619, size: 128)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1611, file: !1568, line: 44, size: 128, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1619, file: !1568, line: 45, baseType: !56, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1619, file: !1568, line: 46, baseType: !56, size: 32, offset: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1619, file: !1568, line: 47, baseType: !56, size: 32, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1619, file: !1568, line: 48, baseType: !56, size: 32, offset: 96)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1604, file: !1568, line: 51, baseType: !56, size: 32, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1604, file: !1568, line: 52, baseType: !56, size: 32, offset: 224)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1604, file: !1568, line: 55, baseType: !1628, size: 1024, offset: 256)
!1628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 1024, elements: !1629)
!1629 = !{!1630}
!1630 = !DISubrange(count: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1604, file: !1568, line: 58, baseType: !1632, size: 2048, offset: 1280)
!1632 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 2048, elements: !1633)
!1633 = !{!1634}
!1634 = !DISubrange(count: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1604, file: !1568, line: 60, baseType: !1636, size: 384, offset: 3328)
!1636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 384, elements: !1637)
!1637 = !{!1638}
!1638 = !DISubrange(count: 12)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1604, file: !1568, line: 62, baseType: !1640, size: 384, offset: 3712)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1604, file: !1568, line: 62, size: 384, elements: !1641)
!1641 = !{!1642, !1643}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1640, file: !1568, line: 63, baseType: !1636, size: 384)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1640, file: !1568, line: 64, baseType: !1636, size: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1586, file: !1568, line: 351, baseType: !1645, size: 1088)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1568, line: 79, size: 1088, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1720}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1645, file: !1568, line: 80, baseType: !56, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1645, file: !1568, line: 81, baseType: !56, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1645, file: !1568, line: 82, baseType: !56, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1645, file: !1568, line: 83, baseType: !56, size: 32, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1645, file: !1568, line: 84, baseType: !56, size: 32, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1645, file: !1568, line: 85, baseType: !56, size: 32, offset: 160)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1645, file: !1568, line: 86, baseType: !56, size: 32, offset: 192)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1645, file: !1568, line: 88, baseType: !1599, size: 640, offset: 224)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1645, file: !1568, line: 89, baseType: !58, size: 8, offset: 864)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1645, file: !1568, line: 90, baseType: !58, size: 8, offset: 872)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1645, file: !1568, line: 91, baseType: !58, size: 8, offset: 880)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1645, file: !1568, line: 92, baseType: !58, size: 8, offset: 888)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1645, file: !1568, line: 93, baseType: !58, size: 8, offset: 896)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1645, file: !1568, line: 94, baseType: !58, size: 8, offset: 904)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1645, file: !1568, line: 95, baseType: !1662, size: 64, offset: 960)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1664, line: 11, size: 128, elements: !1665)
!1664 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!1665 = !{!1666, !1667}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1663, file: !1664, line: 12, baseType: !870, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1663, file: !1664, line: 13, baseType: !1668, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1670, line: 103, size: 1344, elements: !1671)
!1670 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!1671 = !{!1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1700, !1701, !1702}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1669, file: !1670, line: 109, baseType: !371, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1669, file: !1670, line: 110, baseType: !371, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1669, file: !1670, line: 111, baseType: !371, size: 64, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1669, file: !1670, line: 112, baseType: !371, size: 64, offset: 192)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1669, file: !1670, line: 113, baseType: !371, size: 64, offset: 256)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1669, file: !1670, line: 114, baseType: !371, size: 64, offset: 320)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1669, file: !1670, line: 117, baseType: !371, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1669, file: !1670, line: 118, baseType: !371, size: 64, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1669, file: !1670, line: 119, baseType: !371, size: 64, offset: 512)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1669, file: !1670, line: 120, baseType: !371, size: 64, offset: 576)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1669, file: !1670, line: 121, baseType: !371, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1669, file: !1670, line: 122, baseType: !371, size: 64, offset: 704)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1669, file: !1670, line: 123, baseType: !371, size: 64, offset: 768)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1669, file: !1670, line: 124, baseType: !371, size: 64, offset: 832)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1669, file: !1670, line: 125, baseType: !371, size: 64, offset: 896)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1669, file: !1670, line: 139, baseType: !371, size: 64, offset: 960)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1669, file: !1670, line: 142, baseType: !371, size: 64, offset: 1024)
!1689 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 144, baseType: !1690, size: 64, offset: 1088)
!1690 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1670, line: 144, size: 64, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1690, file: !1670, line: 146, baseType: !251, size: 16)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !1690, file: !1670, line: 148, baseType: !37, size: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !1690, file: !1670, line: 150, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !1670, line: 59, size: 64, elements: !1696)
!1696 = !{!1697, !1698, !1699}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1695, file: !1670, line: 61, baseType: !37, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !1695, file: !1670, line: 63, baseType: !37, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !1695, file: !1670, line: 65, baseType: !37, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1669, file: !1670, line: 153, baseType: !371, size: 64, offset: 1152)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1669, file: !1670, line: 154, baseType: !371, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 156, baseType: !1703, size: 64, offset: 1280)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1670, line: 156, size: 64, elements: !1704)
!1704 = !{!1705, !1706, !1707}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1703, file: !1670, line: 158, baseType: !251, size: 16)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !1703, file: !1670, line: 160, baseType: !37, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !1703, file: !1670, line: 162, baseType: !1708, size: 64)
!1708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !1670, line: 69, size: 64, elements: !1709)
!1709 = !{!1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1708, file: !1670, line: 71, baseType: !37, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !1708, file: !1670, line: 73, baseType: !37, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !1708, file: !1670, line: 75, baseType: !37, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !1708, file: !1670, line: 77, baseType: !37, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !1708, file: !1670, line: 80, baseType: !37, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1708, file: !1670, line: 83, baseType: !37, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !1708, file: !1670, line: 86, baseType: !37, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !1708, file: !1670, line: 88, baseType: !37, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !1708, file: !1670, line: 93, baseType: !37, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !1708, file: !1670, line: 100, baseType: !37, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1645, file: !1568, line: 96, baseType: !56, size: 32, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1586, file: !1568, line: 352, baseType: !1722, size: 4608, align: 512)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1568, line: 333, size: 4608, align: 512, elements: !1723)
!1723 = !{!1724, !1725, !1734}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1722, file: !1568, line: 334, baseType: !1604, size: 4096, align: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1722, file: !1568, line: 335, baseType: !1726, size: 512, offset: 4096)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1568, line: 312, size: 512, elements: !1727)
!1727 = !{!1728, !1729, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1726, file: !1568, line: 313, baseType: !37, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1726, file: !1568, line: 314, baseType: !37, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1726, file: !1568, line: 315, baseType: !1731, size: 384, offset: 128)
!1731 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 384, elements: !1732)
!1732 = !{!1733}
!1733 = !DISubrange(count: 6)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1722, file: !1568, line: 336, baseType: !1735, offset: 4608)
!1735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, elements: !838)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1586, file: !1568, line: 353, baseType: !1737, size: 32768)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32768, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 4096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !1567, file: !1568, line: 484, baseType: !1573, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1567, file: !1568, line: 491, baseType: !1742, size: 128, offset: 256)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !1568, line: 404, size: 128, elements: !1743)
!1743 = !{!1744, !1745, !1746}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !1742, file: !1568, line: 424, baseType: !37, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !1742, file: !1568, line: 432, baseType: !7, size: 32, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !1742, file: !1568, line: 440, baseType: !7, size: 32, offset: 96)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !1567, file: !1568, line: 498, baseType: !1742, size: 128, offset: 384)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !1567, file: !1568, line: 508, baseType: !1574, size: 33280, align: 512, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !359, file: !354, line: 57, baseType: !371, size: 64, offset: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !359, file: !354, line: 58, baseType: !7, size: 32, offset: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !359, file: !354, line: 59, baseType: !253, size: 16, offset: 160)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !359, file: !354, line: 60, baseType: !253, size: 16, offset: 176)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !349, file: !350, line: 95, baseType: !215, size: 128, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !344, file: !345, line: 406, baseType: !1755, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !350, line: 46, size: 512, elements: !1757)
!1757 = !{!1758, !1759, !1761, !1764, !1765, !1766}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !1756, file: !350, line: 48, baseType: !359, size: 192)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !1756, file: !350, line: 55, baseType: !1760, size: 64, offset: 192)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !1756, file: !350, line: 61, baseType: !1762, size: 32, offset: 256)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !1763, line: 27, baseType: !56)
!1763 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !1756, file: !350, line: 66, baseType: !215, size: 128, offset: 320)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !1756, file: !350, line: 71, baseType: !75, size: 8, offset: 448)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !1756, file: !350, line: 74, baseType: !75, size: 8, offset: 456)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !344, file: !345, line: 414, baseType: !305, size: 256, offset: 768)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !344, file: !345, line: 422, baseType: !278, size: 192, offset: 1024)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !344, file: !345, line: 430, baseType: !278, size: 192, offset: 1216)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !344, file: !345, line: 433, baseType: !305, size: 256, offset: 1408)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !344, file: !345, line: 435, baseType: !35, size: 32, offset: 1664)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !344, file: !345, line: 437, baseType: !215, size: 128, offset: 1728)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !344, file: !345, line: 443, baseType: !222, size: 32, offset: 1856)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !344, file: !345, line: 448, baseType: !35, size: 32, offset: 1888)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !344, file: !345, line: 452, baseType: !1776, size: 128, offset: 1920)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !279, line: 246, size: 128, elements: !1777)
!1777 = !{!1778}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1776, file: !279, line: 247, baseType: !282, size: 128)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !344, file: !345, line: 460, baseType: !215, size: 128, offset: 2048)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !344, file: !345, line: 470, baseType: !1517, size: 64, offset: 2176)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !344, file: !345, line: 474, baseType: !825, size: 256, offset: 2240)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !344, file: !345, line: 482, baseType: !35, size: 32, offset: 2496)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !344, file: !345, line: 490, baseType: !215, size: 128, offset: 2560)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !344, file: !345, line: 499, baseType: !35, size: 32, offset: 2688)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !344, file: !345, line: 506, baseType: !215, size: 128, offset: 2752)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !344, file: !345, line: 514, baseType: !35, size: 32, offset: 2880)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !344, file: !345, line: 521, baseType: !215, size: 128, offset: 2944)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !344, file: !345, line: 530, baseType: !215, size: 128, offset: 3072)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !344, file: !345, line: 539, baseType: !215, size: 128, offset: 3200)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !344, file: !345, line: 541, baseType: !35, size: 32, offset: 3328)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !344, file: !345, line: 541, baseType: !35, size: 32, offset: 3360)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !344, file: !345, line: 542, baseType: !35, size: 32, offset: 3392)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !344, file: !345, line: 542, baseType: !35, size: 32, offset: 3424)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !344, file: !345, line: 543, baseType: !1795, size: 64, offset: 3456)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1797)
!1797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !345, line: 47, size: 576, elements: !1798)
!1798 = !{!1799, !1823, !1827, !1831, !1839, !1845, !1849, !1853, !1857}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !1797, file: !345, line: 83, baseType: !1800, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!1803, !189, !1805, !1807}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !345, line: 83, flags: DIFlagFwdDecl)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !270, line: 35, flags: DIFlagFwdDecl)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1809)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !1810, line: 703, size: 832, elements: !1811)
!1810 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1817, !1819, !1820, !1821}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !1809, file: !1810, line: 705, baseType: !32, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !1809, file: !1810, line: 707, baseType: !32, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !1809, file: !1810, line: 709, baseType: !32, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !1809, file: !1810, line: 714, baseType: !32, size: 32, offset: 96)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1809, file: !1810, line: 719, baseType: !32, size: 32, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !1809, file: !1810, line: 725, baseType: !1818, size: 128, offset: 160)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 128, elements: !67)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !1809, file: !1810, line: 727, baseType: !1818, size: 128, offset: 288)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !1809, file: !1810, line: 729, baseType: !1818, size: 128, offset: 416)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !1809, file: !1810, line: 735, baseType: !1822, size: 256, offset: 576)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 256, elements: !67)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !1797, file: !345, line: 98, baseType: !1824, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!50, !1807}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !1797, file: !345, line: 114, baseType: !1828, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !189}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !1797, file: !345, line: 124, baseType: !1832, size: 64, offset: 192)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!1835, !189, !1836}
!1835 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !345, line: 124, flags: DIFlagFwdDecl)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1838)
!1838 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !345, line: 39, flags: DIFlagFwdDecl)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !1797, file: !345, line: 201, baseType: !1840, size: 64, offset: 256)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!35, !189, !1843}
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !345, line: 36, flags: DIFlagFwdDecl)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !1797, file: !345, line: 283, baseType: !1846, size: 64, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!35, !189, !1843, !75}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !1797, file: !345, line: 302, baseType: !1850, size: 64, offset: 384)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1843, !189}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !1797, file: !345, line: 323, baseType: !1854, size: 64, offset: 448)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{null, !1843}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !1797, file: !345, line: 338, baseType: !1854, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !344, file: !345, line: 546, baseType: !75, size: 8, offset: 3520)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !344, file: !345, line: 547, baseType: !75, size: 8, offset: 3528)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !344, file: !345, line: 548, baseType: !75, size: 8, offset: 3536)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !344, file: !345, line: 549, baseType: !1862, size: 704, offset: 3584)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !826, line: 111, size: 704, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1869}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1862, file: !826, line: 112, baseType: !825, size: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1862, file: !826, line: 113, baseType: !1492, size: 320, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1862, file: !826, line: 116, baseType: !1867, size: 64, offset: 576)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !826, line: 18, flags: DIFlagFwdDecl)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1862, file: !826, line: 117, baseType: !35, size: 32, offset: 640)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !344, file: !345, line: 557, baseType: !305, size: 256, offset: 4288)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !344, file: !345, line: 565, baseType: !215, size: 128, offset: 4544)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !344, file: !345, line: 573, baseType: !1873, size: 64, offset: 4672)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !345, line: 573, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !344, file: !345, line: 578, baseType: !1873, size: 64, offset: 4736)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !344, file: !345, line: 583, baseType: !1873, size: 64, offset: 4800)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !344, file: !345, line: 589, baseType: !1873, size: 64, offset: 4864)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !344, file: !345, line: 594, baseType: !1873, size: 64, offset: 4928)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !344, file: !345, line: 599, baseType: !1873, size: 64, offset: 4992)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !344, file: !345, line: 604, baseType: !1873, size: 64, offset: 5056)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !344, file: !345, line: 609, baseType: !1873, size: 64, offset: 5120)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !344, file: !345, line: 614, baseType: !1873, size: 64, offset: 5184)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !344, file: !345, line: 619, baseType: !1873, size: 64, offset: 5248)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !344, file: !345, line: 624, baseType: !1873, size: 64, offset: 5312)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !344, file: !345, line: 629, baseType: !1873, size: 64, offset: 5376)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !344, file: !345, line: 634, baseType: !1873, size: 64, offset: 5440)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !344, file: !345, line: 639, baseType: !1873, size: 64, offset: 5504)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !344, file: !345, line: 644, baseType: !1873, size: 64, offset: 5568)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !344, file: !345, line: 649, baseType: !1873, size: 64, offset: 5632)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !344, file: !345, line: 655, baseType: !1873, size: 64, offset: 5696)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !344, file: !345, line: 660, baseType: !1873, size: 64, offset: 5760)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !344, file: !345, line: 669, baseType: !1873, size: 64, offset: 5824)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !344, file: !345, line: 675, baseType: !1873, size: 64, offset: 5888)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !344, file: !345, line: 681, baseType: !1873, size: 64, offset: 5952)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !344, file: !345, line: 686, baseType: !1873, size: 64, offset: 6016)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !344, file: !345, line: 692, baseType: !1873, size: 64, offset: 6080)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !344, file: !345, line: 697, baseType: !1873, size: 64, offset: 6144)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !344, file: !345, line: 703, baseType: !1873, size: 64, offset: 6208)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !344, file: !345, line: 709, baseType: !1873, size: 64, offset: 6272)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !344, file: !345, line: 714, baseType: !1873, size: 64, offset: 6336)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !344, file: !345, line: 722, baseType: !1873, size: 64, offset: 6400)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !344, file: !345, line: 728, baseType: !1873, size: 64, offset: 6464)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !344, file: !345, line: 734, baseType: !1873, size: 64, offset: 6528)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !344, file: !345, line: 739, baseType: !1873, size: 64, offset: 6592)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !344, file: !345, line: 744, baseType: !1873, size: 64, offset: 6656)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !344, file: !345, line: 749, baseType: !1873, size: 64, offset: 6720)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !344, file: !345, line: 754, baseType: !1873, size: 64, offset: 6784)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !344, file: !345, line: 759, baseType: !1873, size: 64, offset: 6848)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !344, file: !345, line: 764, baseType: !1873, size: 64, offset: 6912)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !344, file: !345, line: 769, baseType: !1873, size: 64, offset: 6976)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !344, file: !345, line: 774, baseType: !1873, size: 64, offset: 7040)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !344, file: !345, line: 778, baseType: !1873, size: 64, offset: 7104)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !344, file: !345, line: 784, baseType: !1873, size: 64, offset: 7168)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !344, file: !345, line: 789, baseType: !1873, size: 64, offset: 7232)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !344, file: !345, line: 794, baseType: !1873, size: 64, offset: 7296)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !344, file: !345, line: 799, baseType: !1873, size: 64, offset: 7360)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !344, file: !345, line: 804, baseType: !1873, size: 64, offset: 7424)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !344, file: !345, line: 810, baseType: !1873, size: 64, offset: 7488)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !344, file: !345, line: 816, baseType: !1873, size: 64, offset: 7552)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !344, file: !345, line: 821, baseType: !1873, size: 64, offset: 7616)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !344, file: !345, line: 827, baseType: !1873, size: 64, offset: 7680)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !344, file: !345, line: 832, baseType: !1873, size: 64, offset: 7744)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !344, file: !345, line: 839, baseType: !1873, size: 64, offset: 7808)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !344, file: !345, line: 846, baseType: !1873, size: 64, offset: 7872)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !344, file: !345, line: 853, baseType: !1873, size: 64, offset: 7936)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !344, file: !345, line: 861, baseType: !1873, size: 64, offset: 8000)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !344, file: !345, line: 869, baseType: !1873, size: 64, offset: 8064)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !344, file: !345, line: 876, baseType: !1873, size: 64, offset: 8128)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !344, file: !345, line: 882, baseType: !1873, size: 64, offset: 8192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !344, file: !345, line: 888, baseType: !1873, size: 64, offset: 8256)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !344, file: !345, line: 891, baseType: !115, size: 32, offset: 8320)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !344, file: !345, line: 891, baseType: !115, size: 32, offset: 8352)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !344, file: !345, line: 899, baseType: !75, size: 8, offset: 8384)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !344, file: !345, line: 913, baseType: !75, size: 8, offset: 8392)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !344, file: !345, line: 919, baseType: !75, size: 8, offset: 8400)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !344, file: !345, line: 929, baseType: !75, size: 8, offset: 8408)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !344, file: !345, line: 937, baseType: !75, size: 8, offset: 8416)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !344, file: !345, line: 943, baseType: !1873, size: 64, offset: 8448)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !344, file: !345, line: 946, baseType: !115, size: 32, offset: 8512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !344, file: !345, line: 946, baseType: !115, size: 32, offset: 8544)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !344, file: !345, line: 955, baseType: !1843, size: 64, offset: 8576)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !344, file: !345, line: 957, baseType: !1943, size: 64, offset: 8640)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1945)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !345, line: 957, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !190, file: !25, line: 285, baseType: !305, size: 256, offset: 11648)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !190, file: !25, line: 288, baseType: !278, size: 192, offset: 11904)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !190, file: !25, line: 291, baseType: !1949, size: 64, offset: 12096)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !25, line: 16, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !190, file: !25, line: 294, baseType: !1952, size: 64, offset: 12160)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !25, line: 17, flags: DIFlagFwdDecl)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !190, file: !25, line: 304, baseType: !24, size: 32, offset: 12224)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !190, file: !25, line: 312, baseType: !1956, size: 64, offset: 12288)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !25, line: 18, flags: DIFlagFwdDecl)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !190, file: !25, line: 319, baseType: !305, size: 256, offset: 12352)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !190, file: !25, line: 327, baseType: !215, size: 128, offset: 12608)
!1960 = !{!1961, !1962, !1963, !1964}
!1961 = !DILocalVariable(name: "dev", arg: 1, scope: !186, file: !3, line: 119, type: !189)
!1962 = !DILocalVariable(name: "bpp", arg: 2, scope: !186, file: !3, line: 120, type: !115)
!1963 = !DILocalVariable(name: "depth", arg: 3, scope: !186, file: !3, line: 120, type: !115)
!1964 = !DILocalVariable(name: "fmt", scope: !186, file: !3, line: 122, type: !115)
!1965 = !DILocation(line: 119, column: 57, scope: !186)
!1966 = !DILocation(line: 120, column: 19, scope: !186)
!1967 = !DILocation(line: 120, column: 33, scope: !186)
!1968 = !DILocation(line: 122, column: 2, scope: !186)
!1969 = !DILocation(line: 122, column: 11, scope: !186)
!1970 = !DILocation(line: 122, column: 43, scope: !186)
!1971 = !DILocation(line: 122, column: 48, scope: !186)
!1972 = !DILocation(line: 122, column: 17, scope: !186)
!1973 = !DILocation(line: 124, column: 6, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !186, file: !3, line: 124, column: 6)
!1975 = !DILocation(line: 124, column: 11, scope: !1974)
!1976 = !DILocation(line: 124, column: 23, scope: !1974)
!1977 = !{i8 0, i8 2}
!1978 = !DILocation(line: 124, column: 6, scope: !186)
!1979 = !DILocation(line: 125, column: 7, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 125, column: 7)
!1981 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 124, column: 59)
!1982 = !DILocation(line: 125, column: 11, scope: !1980)
!1983 = !DILocation(line: 125, column: 7, scope: !1981)
!1984 = !DILocation(line: 126, column: 8, scope: !1980)
!1985 = !DILocation(line: 126, column: 4, scope: !1980)
!1986 = !DILocation(line: 127, column: 7, scope: !1987)
!1987 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 127, column: 7)
!1988 = !DILocation(line: 127, column: 11, scope: !1987)
!1989 = !DILocation(line: 127, column: 7, scope: !1981)
!1990 = !DILocation(line: 128, column: 8, scope: !1987)
!1991 = !DILocation(line: 128, column: 4, scope: !1987)
!1992 = !DILocation(line: 129, column: 7, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 129, column: 7)
!1994 = !DILocation(line: 129, column: 11, scope: !1993)
!1995 = !DILocation(line: 129, column: 7, scope: !1981)
!1996 = !DILocation(line: 130, column: 8, scope: !1993)
!1997 = !DILocation(line: 130, column: 4, scope: !1993)
!1998 = !DILocation(line: 131, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1981, file: !3, line: 131, column: 7)
!2000 = !DILocation(line: 131, column: 11, scope: !1999)
!2001 = !DILocation(line: 131, column: 7, scope: !1981)
!2002 = !DILocation(line: 132, column: 8, scope: !1999)
!2003 = !DILocation(line: 132, column: 4, scope: !1999)
!2004 = !DILocation(line: 133, column: 2, scope: !1981)
!2005 = !DILocation(line: 135, column: 6, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !186, file: !3, line: 135, column: 6)
!2007 = !DILocation(line: 135, column: 11, scope: !2006)
!2008 = !DILocation(line: 135, column: 23, scope: !2006)
!2009 = !DILocation(line: 135, column: 53, scope: !2006)
!2010 = !DILocation(line: 136, column: 6, scope: !2006)
!2011 = !DILocation(line: 136, column: 10, scope: !2006)
!2012 = !DILocation(line: 135, column: 6, scope: !186)
!2013 = !DILocation(line: 137, column: 7, scope: !2006)
!2014 = !DILocation(line: 137, column: 3, scope: !2006)
!2015 = !DILocation(line: 139, column: 9, scope: !186)
!2016 = !DILocation(line: 140, column: 1, scope: !186)
!2017 = !DILocation(line: 139, column: 2, scope: !186)
!2018 = !DILocation(line: 147, column: 53, scope: !47)
!2019 = !DILocation(line: 315, column: 2, scope: !47)
!2020 = !DILocation(line: 315, column: 15, scope: !47)
!2021 = !DILocation(line: 317, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !47, file: !3, line: 317, column: 2)
!2023 = !DILocation(line: 317, column: 7, scope: !2022)
!2024 = !DILocation(line: 317, column: 14, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 317, column: 2)
!2026 = !DILocation(line: 317, column: 16, scope: !2025)
!2027 = !DILocation(line: 317, column: 2, scope: !2022)
!2028 = !DILocation(line: 318, column: 15, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 318, column: 7)
!2030 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 317, column: 44)
!2031 = !DILocation(line: 318, column: 7, scope: !2029)
!2032 = !DILocation(line: 318, column: 18, scope: !2029)
!2033 = !DILocation(line: 318, column: 28, scope: !2029)
!2034 = !DILocation(line: 318, column: 25, scope: !2029)
!2035 = !DILocation(line: 318, column: 7, scope: !2030)
!2036 = !DILocation(line: 319, column: 20, scope: !2029)
!2037 = !DILocation(line: 319, column: 12, scope: !2029)
!2038 = !DILocation(line: 319, column: 4, scope: !2029)
!2039 = !DILocation(line: 320, column: 2, scope: !2030)
!2040 = !DILocation(line: 317, column: 39, scope: !2025)
!2041 = !DILocation(line: 317, column: 2, scope: !2025)
!2042 = distinct !{!2042, !2027, !2043, !2044, !2045}
!2043 = !DILocation(line: 320, column: 2, scope: !2022)
!2044 = !{!"llvm.loop.mustprogress"}
!2045 = !{!"llvm.loop.unroll.disable"}
!2046 = !DILocation(line: 322, column: 2, scope: !47)
!2047 = !DILocation(line: 323, column: 1, scope: !47)
!2048 = distinct !DISubprogram(name: "drm_format_info", scope: !3, file: !3, line: 336, type: !48, scopeLine: 337, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2049)
!2049 = !{!2050, !2051, !2052, !2054}
!2050 = !DILocalVariable(name: "format", arg: 1, scope: !2048, file: !3, line: 336, type: !56)
!2051 = !DILocalVariable(name: "info", scope: !2048, file: !3, line: 338, type: !50)
!2052 = !DILocalVariable(name: "__ret_warn_on", scope: !2053, file: !3, line: 341, type: !35)
!2053 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 341, column: 2)
!2054 = !DILocalVariable(name: "__flags", scope: !2055, file: !3, line: 341, type: !35)
!2055 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 341, column: 2)
!2056 = distinct !DILexicalBlock(scope: !2053, file: !3, line: 341, column: 2)
!2057 = !DILocation(line: 336, column: 51, scope: !2048)
!2058 = !DILocation(line: 338, column: 2, scope: !2048)
!2059 = !DILocation(line: 338, column: 32, scope: !2048)
!2060 = !DILocation(line: 340, column: 27, scope: !2048)
!2061 = !DILocation(line: 340, column: 9, scope: !2048)
!2062 = !DILocation(line: 340, column: 7, scope: !2048)
!2063 = !DILocation(line: 341, column: 2, scope: !2053)
!2064 = !DILocation(line: 341, column: 2, scope: !2056)
!2065 = !DILocation(line: 341, column: 2, scope: !2055)
!2066 = !DILocation(line: 341, column: 2, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 341, column: 2)
!2068 = !DILocation(line: 341, column: 2, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 341, column: 2)
!2070 = !{i64 2152337858, i64 2152337887, i64 2152337933, i64 2152337991, i64 2152338045, i64 2152338099, i64 2152338154, i64 2152338185, i64 2152338493, i64 2152338499, i64 2152338546, i64 2152338569, i64 2152338595}
!2071 = !DILocation(line: 341, column: 2, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2055, file: !3, line: 341, column: 2)
!2073 = !DILocation(line: 341, column: 2, scope: !2048)
!2074 = !DILocation(line: 342, column: 9, scope: !2048)
!2075 = !DILocation(line: 343, column: 1, scope: !2048)
!2076 = !DILocation(line: 342, column: 2, scope: !2048)
!2077 = distinct !DISubprogram(name: "drm_get_format_info", scope: !3, file: !3, line: 356, type: !2078, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{!50, !189, !1807}
!2080 = !{!2081, !2082, !2083}
!2081 = !DILocalVariable(name: "dev", arg: 1, scope: !2077, file: !3, line: 356, type: !189)
!2082 = !DILocalVariable(name: "mode_cmd", arg: 2, scope: !2077, file: !3, line: 357, type: !1807)
!2083 = !DILocalVariable(name: "info", scope: !2077, file: !3, line: 359, type: !50)
!2084 = !DILocation(line: 356, column: 40, scope: !2077)
!2085 = !DILocation(line: 357, column: 38, scope: !2077)
!2086 = !DILocation(line: 359, column: 2, scope: !2077)
!2087 = !DILocation(line: 359, column: 32, scope: !2077)
!2088 = !DILocation(line: 361, column: 6, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 361, column: 6)
!2090 = !DILocation(line: 361, column: 11, scope: !2089)
!2091 = !DILocation(line: 361, column: 23, scope: !2089)
!2092 = !DILocation(line: 361, column: 30, scope: !2089)
!2093 = !DILocation(line: 361, column: 6, scope: !2077)
!2094 = !DILocation(line: 362, column: 10, scope: !2089)
!2095 = !DILocation(line: 362, column: 15, scope: !2089)
!2096 = !DILocation(line: 362, column: 27, scope: !2089)
!2097 = !DILocation(line: 362, column: 34, scope: !2089)
!2098 = !DILocation(line: 362, column: 50, scope: !2089)
!2099 = !DILocation(line: 362, column: 8, scope: !2089)
!2100 = !DILocation(line: 362, column: 3, scope: !2089)
!2101 = !DILocation(line: 364, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 364, column: 6)
!2103 = !DILocation(line: 364, column: 6, scope: !2077)
!2104 = !DILocation(line: 365, column: 26, scope: !2102)
!2105 = !DILocation(line: 365, column: 36, scope: !2102)
!2106 = !DILocation(line: 365, column: 10, scope: !2102)
!2107 = !DILocation(line: 365, column: 8, scope: !2102)
!2108 = !DILocation(line: 365, column: 3, scope: !2102)
!2109 = !DILocation(line: 367, column: 9, scope: !2077)
!2110 = !DILocation(line: 368, column: 1, scope: !2077)
!2111 = !DILocation(line: 367, column: 2, scope: !2077)
!2112 = distinct !DISubprogram(name: "drm_format_info_block_width", scope: !3, file: !3, line: 379, type: !2113, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!7, !50, !35}
!2115 = !{!2116, !2117}
!2116 = !DILocalVariable(name: "info", arg: 1, scope: !2112, file: !3, line: 379, type: !50)
!2117 = !DILocalVariable(name: "plane", arg: 2, scope: !2112, file: !3, line: 380, type: !35)
!2118 = !DILocation(line: 379, column: 72, scope: !2112)
!2119 = !DILocation(line: 380, column: 11, scope: !2112)
!2120 = !DILocation(line: 382, column: 7, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 382, column: 6)
!2122 = !DILocation(line: 382, column: 12, scope: !2121)
!2123 = !DILocation(line: 382, column: 15, scope: !2121)
!2124 = !DILocation(line: 382, column: 21, scope: !2121)
!2125 = !DILocation(line: 382, column: 25, scope: !2121)
!2126 = !DILocation(line: 382, column: 28, scope: !2121)
!2127 = !DILocation(line: 382, column: 37, scope: !2121)
!2128 = !DILocation(line: 382, column: 43, scope: !2121)
!2129 = !DILocation(line: 382, column: 34, scope: !2121)
!2130 = !DILocation(line: 382, column: 6, scope: !2112)
!2131 = !DILocation(line: 383, column: 3, scope: !2121)
!2132 = !DILocation(line: 385, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 385, column: 6)
!2134 = !DILocation(line: 385, column: 13, scope: !2133)
!2135 = !DILocation(line: 385, column: 21, scope: !2133)
!2136 = !DILocation(line: 385, column: 6, scope: !2112)
!2137 = !DILocation(line: 386, column: 3, scope: !2133)
!2138 = !DILocation(line: 387, column: 9, scope: !2112)
!2139 = !DILocation(line: 387, column: 15, scope: !2112)
!2140 = !DILocation(line: 387, column: 23, scope: !2112)
!2141 = !DILocation(line: 387, column: 2, scope: !2112)
!2142 = !DILocation(line: 388, column: 1, scope: !2112)
!2143 = distinct !DISubprogram(name: "drm_format_info_block_height", scope: !3, file: !3, line: 399, type: !2113, scopeLine: 401, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2144)
!2144 = !{!2145, !2146}
!2145 = !DILocalVariable(name: "info", arg: 1, scope: !2143, file: !3, line: 399, type: !50)
!2146 = !DILocalVariable(name: "plane", arg: 2, scope: !2143, file: !3, line: 400, type: !35)
!2147 = !DILocation(line: 399, column: 73, scope: !2143)
!2148 = !DILocation(line: 400, column: 12, scope: !2143)
!2149 = !DILocation(line: 402, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 402, column: 6)
!2151 = !DILocation(line: 402, column: 12, scope: !2150)
!2152 = !DILocation(line: 402, column: 15, scope: !2150)
!2153 = !DILocation(line: 402, column: 21, scope: !2150)
!2154 = !DILocation(line: 402, column: 25, scope: !2150)
!2155 = !DILocation(line: 402, column: 28, scope: !2150)
!2156 = !DILocation(line: 402, column: 37, scope: !2150)
!2157 = !DILocation(line: 402, column: 43, scope: !2150)
!2158 = !DILocation(line: 402, column: 34, scope: !2150)
!2159 = !DILocation(line: 402, column: 6, scope: !2143)
!2160 = !DILocation(line: 403, column: 3, scope: !2150)
!2161 = !DILocation(line: 405, column: 7, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 405, column: 6)
!2163 = !DILocation(line: 405, column: 13, scope: !2162)
!2164 = !DILocation(line: 405, column: 21, scope: !2162)
!2165 = !DILocation(line: 405, column: 6, scope: !2143)
!2166 = !DILocation(line: 406, column: 3, scope: !2162)
!2167 = !DILocation(line: 407, column: 9, scope: !2143)
!2168 = !DILocation(line: 407, column: 15, scope: !2143)
!2169 = !DILocation(line: 407, column: 23, scope: !2143)
!2170 = !DILocation(line: 407, column: 2, scope: !2143)
!2171 = !DILocation(line: 408, column: 1, scope: !2143)
!2172 = distinct !DISubprogram(name: "drm_format_info_bpp", scope: !3, file: !3, line: 419, type: !2113, scopeLine: 420, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2173 = !{!2174, !2175}
!2174 = !DILocalVariable(name: "info", arg: 1, scope: !2172, file: !3, line: 419, type: !50)
!2175 = !DILocalVariable(name: "plane", arg: 2, scope: !2172, file: !3, line: 419, type: !35)
!2176 = !DILocation(line: 419, column: 64, scope: !2172)
!2177 = !DILocation(line: 419, column: 74, scope: !2172)
!2178 = !DILocation(line: 421, column: 7, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2172, file: !3, line: 421, column: 6)
!2180 = !DILocation(line: 421, column: 12, scope: !2179)
!2181 = !DILocation(line: 421, column: 15, scope: !2179)
!2182 = !DILocation(line: 421, column: 21, scope: !2179)
!2183 = !DILocation(line: 421, column: 25, scope: !2179)
!2184 = !DILocation(line: 421, column: 28, scope: !2179)
!2185 = !DILocation(line: 421, column: 37, scope: !2179)
!2186 = !DILocation(line: 421, column: 43, scope: !2179)
!2187 = !DILocation(line: 421, column: 34, scope: !2179)
!2188 = !DILocation(line: 421, column: 6, scope: !2172)
!2189 = !DILocation(line: 422, column: 3, scope: !2179)
!2190 = !DILocation(line: 424, column: 9, scope: !2172)
!2191 = !DILocation(line: 424, column: 15, scope: !2172)
!2192 = !DILocation(line: 424, column: 30, scope: !2172)
!2193 = !DILocation(line: 424, column: 37, scope: !2172)
!2194 = !DILocation(line: 425, column: 38, scope: !2172)
!2195 = !DILocation(line: 425, column: 44, scope: !2172)
!2196 = !DILocation(line: 425, column: 10, scope: !2172)
!2197 = !DILocation(line: 426, column: 32, scope: !2172)
!2198 = !DILocation(line: 426, column: 38, scope: !2172)
!2199 = !DILocation(line: 426, column: 3, scope: !2172)
!2200 = !DILocation(line: 425, column: 51, scope: !2172)
!2201 = !DILocation(line: 424, column: 41, scope: !2172)
!2202 = !DILocation(line: 424, column: 2, scope: !2172)
!2203 = !DILocation(line: 427, column: 1, scope: !2172)
!2204 = distinct !DISubprogram(name: "drm_format_info_min_pitch", scope: !3, file: !3, line: 440, type: !2205, scopeLine: 442, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2207)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!40, !50, !35, !7}
!2207 = !{!2208, !2209, !2210, !2211, !2213, !2215}
!2208 = !DILocalVariable(name: "info", arg: 1, scope: !2204, file: !3, line: 440, type: !50)
!2209 = !DILocalVariable(name: "plane", arg: 2, scope: !2204, file: !3, line: 441, type: !35)
!2210 = !DILocalVariable(name: "buffer_width", arg: 3, scope: !2204, file: !3, line: 441, type: !7)
!2211 = !DILocalVariable(name: "_tmp", scope: !2212, file: !3, line: 446, type: !36)
!2212 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 446, column: 9)
!2213 = !DILocalVariable(name: "__base", scope: !2214, file: !3, line: 446, type: !115)
!2214 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 446, column: 9)
!2215 = !DILocalVariable(name: "__rem", scope: !2214, file: !3, line: 446, type: !115)
!2216 = !DILocation(line: 440, column: 66, scope: !2204)
!2217 = !DILocation(line: 441, column: 12, scope: !2204)
!2218 = !DILocation(line: 441, column: 32, scope: !2204)
!2219 = !DILocation(line: 443, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2204, file: !3, line: 443, column: 6)
!2221 = !DILocation(line: 443, column: 12, scope: !2220)
!2222 = !DILocation(line: 443, column: 15, scope: !2220)
!2223 = !DILocation(line: 443, column: 21, scope: !2220)
!2224 = !DILocation(line: 443, column: 25, scope: !2220)
!2225 = !DILocation(line: 443, column: 28, scope: !2220)
!2226 = !DILocation(line: 443, column: 37, scope: !2220)
!2227 = !DILocation(line: 443, column: 43, scope: !2220)
!2228 = !DILocation(line: 443, column: 34, scope: !2220)
!2229 = !DILocation(line: 443, column: 6, scope: !2204)
!2230 = !DILocation(line: 444, column: 3, scope: !2220)
!2231 = !DILocation(line: 446, column: 9, scope: !2212)
!2232 = !DILocation(line: 446, column: 9, scope: !2214)
!2233 = !DILocation(line: 446, column: 9, scope: !2204)
!2234 = !DILocation(line: 446, column: 2, scope: !2204)
!2235 = !DILocation(line: 449, column: 1, scope: !2204)

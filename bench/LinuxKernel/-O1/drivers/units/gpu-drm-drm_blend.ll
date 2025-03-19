; ModuleID = 'drivers/gpu/drm/drm_blend.c'
source_filename = "drivers/gpu/drm/drm_blend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_plane_create_alpha_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_plane_create_alpha_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_plane_create_rotation_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_plane_create_rotation_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_rotation_simplify: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_rotation_simplify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_plane_create_zpos_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_plane_create_zpos_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_plane_create_zpos_immutable_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_plane_create_zpos_immutable_property ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_atomic_normalize_zpos: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_atomic_normalize_zpos ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_plane_create_blend_mode_property: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_plane_create_blend_mode_property ; .previous"

%struct.drm_prop_enum_list = type { i32, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, i8, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.13, ptr, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.mutex, %struct.list_head }
%struct.anon.13 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i64, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i64, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }

@.str = private unnamed_addr constant [6 x i8] c"alpha\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_drm_plane_create_alpha_property308 = internal global ptr @drm_plane_create_alpha_property, section ".discard.addressable", align 8, !dbg !7
@drm_plane_create_rotation_property.props = internal constant [6 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 0, ptr @.str.1 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.2 }, %struct.drm_prop_enum_list { i32 2, ptr @.str.3 }, %struct.drm_prop_enum_list { i32 3, ptr @.str.4 }, %struct.drm_prop_enum_list { i32 4, ptr @.str.5 }, %struct.drm_prop_enum_list { i32 5, ptr @.str.6 }], align 16, !dbg !5867
@.str.1 = private unnamed_addr constant [9 x i8] c"rotate-0\00", align 1, !dbg !5848
@.str.2 = private unnamed_addr constant [10 x i8] c"rotate-90\00", align 1, !dbg !5853
@.str.3 = private unnamed_addr constant [11 x i8] c"rotate-180\00", align 1, !dbg !5856
@.str.4 = private unnamed_addr constant [11 x i8] c"rotate-270\00", align 1, !dbg !5861
@.str.5 = private unnamed_addr constant [10 x i8] c"reflect-x\00", align 1, !dbg !5863
@.str.6 = private unnamed_addr constant [10 x i8] c"reflect-y\00", align 1, !dbg !5865
@.str.7 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_blend.c\00", align 1, !dbg !5898
@.str.8 = private unnamed_addr constant [9 x i8] c"rotation\00", align 1, !dbg !5903
@__UNIQUE_ID___addressable_drm_plane_create_rotation_property309 = internal global ptr @drm_plane_create_rotation_property, section ".discard.addressable", align 8, !dbg !5905
@__UNIQUE_ID___addressable_drm_rotation_simplify310 = internal global ptr @drm_rotation_simplify, section ".discard.addressable", align 8, !dbg !5907
@.str.9 = private unnamed_addr constant [5 x i8] c"zpos\00", align 1, !dbg !5909
@__UNIQUE_ID___addressable_drm_plane_create_zpos_property311 = internal global ptr @drm_plane_create_zpos_property, section ".discard.addressable", align 8, !dbg !5914
@__UNIQUE_ID___addressable_drm_plane_create_zpos_immutable_property312 = internal global ptr @drm_plane_create_zpos_immutable_property, section ".discard.addressable", align 8, !dbg !5916
@__UNIQUE_ID___addressable_drm_atomic_normalize_zpos313 = internal global ptr @drm_atomic_normalize_zpos, section ".discard.addressable", align 8, !dbg !5918
@drm_plane_create_blend_mode_property.props = internal constant [3 x %struct.drm_prop_enum_list] [%struct.drm_prop_enum_list { i32 2, ptr @.str.10 }, %struct.drm_prop_enum_list { i32 0, ptr @.str.11 }, %struct.drm_prop_enum_list { i32 1, ptr @.str.12 }], align 16, !dbg !5929
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1, !dbg !5920
@.str.11 = private unnamed_addr constant [15 x i8] c"Pre-multiplied\00", align 1, !dbg !5922
@.str.12 = private unnamed_addr constant [9 x i8] c"Coverage\00", align 1, !dbg !5927
@.str.13 = private unnamed_addr constant [17 x i8] c"pixel blend mode\00", align 1, !dbg !5952
@__UNIQUE_ID___addressable_drm_plane_create_blend_mode_property314 = internal global ptr @drm_plane_create_blend_mode_property, section ".discard.addressable", align 8, !dbg !5957
@.str.14 = private unnamed_addr constant [49 x i8] c"[CRTC:%d:%s] calculating normalized zpos values\0A\00", align 1, !dbg !5959
@.str.15 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] processing zpos value %d\0A\00", align 1, !dbg !5964
@.str.16 = private unnamed_addr constant [40 x i8] c"[PLANE:%d:%s] normalized zpos value %d\0A\00", align 1, !dbg !5969
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.17 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !5971
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable_drm_plane_create_alpha_property308, ptr @__UNIQUE_ID___addressable_drm_plane_create_rotation_property309, ptr @__UNIQUE_ID___addressable_drm_rotation_simplify310, ptr @__UNIQUE_ID___addressable_drm_plane_create_zpos_property311, ptr @__UNIQUE_ID___addressable_drm_plane_create_zpos_immutable_property312, ptr @__UNIQUE_ID___addressable_drm_atomic_normalize_zpos313, ptr @__UNIQUE_ID___addressable_drm_plane_create_blend_mode_property314], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_plane_create_alpha_property(ptr noundef %plane) #0 align 16 !dbg !5985 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !5987, metadata !DIExpression()), !dbg !5989
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !5990
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !5988, metadata !DIExpression()), !dbg !5991
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !5992
  %dev = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 0, !dbg !5993
  %1 = load ptr, ptr %dev, align 8, !dbg !5993
  %call = call ptr @drm_property_create_range(ptr noundef %1, i32 noundef 0, ptr noundef @.str, i64 noundef 0, i64 noundef 65535) #15, !dbg !5994
  store ptr %call, ptr %prop, align 8, !dbg !5995
  %2 = load ptr, ptr %prop, align 8, !dbg !5996
  %tobool = icmp ne ptr %2, null, !dbg !5996
  br i1 %tobool, label %if.end, label %if.then, !dbg !5998

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5999
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5999

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %plane.addr, align 8, !dbg !6000
  %base = getelementptr inbounds %struct.drm_plane, ptr %3, i32 0, i32 4, !dbg !6001
  %4 = load ptr, ptr %prop, align 8, !dbg !6002
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %4, i64 noundef 65535) #15, !dbg !6003
  %5 = load ptr, ptr %prop, align 8, !dbg !6004
  %6 = load ptr, ptr %plane.addr, align 8, !dbg !6005
  %alpha_property = getelementptr inbounds %struct.drm_plane, ptr %6, i32 0, i32 20, !dbg !6006
  store ptr %5, ptr %alpha_property, align 8, !dbg !6007
  %7 = load ptr, ptr %plane.addr, align 8, !dbg !6008
  %state = getelementptr inbounds %struct.drm_plane, ptr %7, i32 0, i32 19, !dbg !6010
  %8 = load ptr, ptr %state, align 8, !dbg !6010
  %tobool1 = icmp ne ptr %8, null, !dbg !6008
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !6011

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %plane.addr, align 8, !dbg !6012
  %state3 = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 19, !dbg !6013
  %10 = load ptr, ptr %state3, align 8, !dbg !6013
  %alpha = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 12, !dbg !6014
  store i16 -1, ptr %alpha, align 8, !dbg !6015
  br label %if.end4, !dbg !6012

if.end4:                                          ; preds = %if.then2, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6016

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !6017
  %11 = load i32, ptr %retval, align 4, !dbg !6017
  ret i32 %11, !dbg !6017
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6018 dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6021 dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_plane_create_rotation_property(ptr noundef %plane, i32 noundef %rotation, i32 noundef %supported_rotations) #0 align 16 !dbg !5869 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %rotation.addr = alloca i32, align 4
  %supported_rotations.addr = alloca i32, align 4
  %prop = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on23 = alloca i32, align 4
  %__flags42 = alloca i32, align 4
  %tmp55 = alloca i64, align 8
  %__ret_warn_on63 = alloca i32, align 4
  %__flags80 = alloca i32, align 4
  %tmp93 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !5873, metadata !DIExpression()), !dbg !6025
  store i32 %rotation, ptr %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rotation.addr, metadata !5874, metadata !DIExpression()), !dbg !6026
  store i32 %supported_rotations, ptr %supported_rotations.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %supported_rotations.addr, metadata !5875, metadata !DIExpression()), !dbg !6027
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !6028
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !5876, metadata !DIExpression()), !dbg !6029
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6030
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5877, metadata !DIExpression()), !dbg !6030
  %0 = load i32, ptr %supported_rotations.addr, align 4, !dbg !6030
  %and = and i32 %0, 15, !dbg !6030
  %cmp = icmp eq i32 %and, 0, !dbg !6030
  %lnot = xor i1 %cmp, true, !dbg !6030
  %lnot1 = xor i1 %lnot, true, !dbg !6030
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6030
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6030
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !6031
  %tobool = icmp ne i32 %1, 0, !dbg !6031
  %lnot2 = xor i1 %tobool, true, !dbg !6031
  %lnot4 = xor i1 %lnot2, true, !dbg !6031
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !6031
  %conv = sext i32 %lnot.ext5 to i64, !dbg !6031
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6031
  %tobool6 = icmp ne i64 %expval, 0, !dbg !6031
  br i1 %tobool6, label %if.then, label %if.end, !dbg !6030

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !6031

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6032
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5879, metadata !DIExpression()), !dbg !6032
  store i32 2305, ptr %__flags, align 4, !dbg !6032
  br label %do.body7, !dbg !6032

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !6033

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !6033

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !6032

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !6035
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 286, i32 %2, i64 12) #14, !dbg !6035, !srcloc !6037
  br label %do.cond9, !dbg !6035

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !6035

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !6032

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !6038

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !6038

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6031
  br label %do.cond14, !dbg !6032

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !6032

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !6032

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !6030
  %tobool16 = icmp ne i32 %3, 0, !dbg !6030
  %lnot17 = xor i1 %tobool16, true, !dbg !6030
  %lnot19 = xor i1 %lnot17, true, !dbg !6030
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !6030
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !6030
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !6030
  store i64 %expval22, ptr %tmp, align 8, !dbg !6031
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6040
  %4 = load i64, ptr %tmp, align 8, !dbg !6030
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on23) #14, !dbg !6041
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on23, metadata !5882, metadata !DIExpression()), !dbg !6041
  %5 = load i32, ptr %rotation.addr, align 4, !dbg !6041
  %and24 = and i32 %5, 15, !dbg !6041
  %conv25 = zext i32 %and24 to i64, !dbg !6041
  %call = call zeroext i1 @is_power_of_2(i64 noundef %conv25) #16, !dbg !6041
  %lnot26 = xor i1 %call, true, !dbg !6041
  %lnot28 = xor i1 %lnot26, true, !dbg !6041
  %lnot30 = xor i1 %lnot28, true, !dbg !6041
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !6041
  store i32 %lnot.ext31, ptr %__ret_warn_on23, align 4, !dbg !6041
  %6 = load i32, ptr %__ret_warn_on23, align 4, !dbg !6042
  %tobool32 = icmp ne i32 %6, 0, !dbg !6042
  %lnot33 = xor i1 %tobool32, true, !dbg !6042
  %lnot35 = xor i1 %lnot33, true, !dbg !6042
  %lnot.ext36 = zext i1 %lnot35 to i32, !dbg !6042
  %conv37 = sext i32 %lnot.ext36 to i64, !dbg !6042
  %expval38 = call i64 @llvm.expect.i64(i64 %conv37, i64 0), !dbg !6042
  %tobool39 = icmp ne i64 %expval38, 0, !dbg !6042
  br i1 %tobool39, label %if.then40, label %if.end54, !dbg !6041

if.then40:                                        ; preds = %if.end
  br label %do.body41, !dbg !6042

do.body41:                                        ; preds = %if.then40
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags42) #14, !dbg !6043
  call void @llvm.dbg.declare(metadata ptr %__flags42, metadata !5884, metadata !DIExpression()), !dbg !6043
  store i32 2305, ptr %__flags42, align 4, !dbg !6043
  br label %do.body43, !dbg !6043

do.body43:                                        ; preds = %do.body41
  br label %do.cond44, !dbg !6044

do.cond44:                                        ; preds = %do.body43
  br label %do.end45, !dbg !6044

do.end45:                                         ; preds = %do.cond44
  br label %do.body46, !dbg !6043

do.body46:                                        ; preds = %do.end45
  %7 = load i32, ptr %__flags42, align 4, !dbg !6046
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 287, i32 %7, i64 12) #14, !dbg !6046, !srcloc !6048
  br label %do.cond47, !dbg !6046

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !6046

do.end48:                                         ; preds = %do.cond47
  br label %do.body49, !dbg !6043

do.body49:                                        ; preds = %do.end48
  br label %do.cond50, !dbg !6049

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !6049

do.end51:                                         ; preds = %do.cond50
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags42) #14, !dbg !6042
  br label %do.cond52, !dbg !6043

do.cond52:                                        ; preds = %do.end51
  br label %do.end53, !dbg !6043

do.end53:                                         ; preds = %do.cond52
  br label %if.end54, !dbg !6043

if.end54:                                         ; preds = %do.end53, %if.end
  %8 = load i32, ptr %__ret_warn_on23, align 4, !dbg !6041
  %tobool56 = icmp ne i32 %8, 0, !dbg !6041
  %lnot57 = xor i1 %tobool56, true, !dbg !6041
  %lnot59 = xor i1 %lnot57, true, !dbg !6041
  %lnot.ext60 = zext i1 %lnot59 to i32, !dbg !6041
  %conv61 = sext i32 %lnot.ext60 to i64, !dbg !6041
  %expval62 = call i64 @llvm.expect.i64(i64 %conv61, i64 0), !dbg !6041
  store i64 %expval62, ptr %tmp55, align 8, !dbg !6042
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on23) #14, !dbg !6051
  %9 = load i64, ptr %tmp55, align 8, !dbg !6041
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on63) #14, !dbg !6052
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on63, metadata !5887, metadata !DIExpression()), !dbg !6052
  %10 = load i32, ptr %rotation.addr, align 4, !dbg !6052
  %11 = load i32, ptr %supported_rotations.addr, align 4, !dbg !6052
  %not = xor i32 %11, -1, !dbg !6052
  %and64 = and i32 %10, %not, !dbg !6052
  %tobool65 = icmp ne i32 %and64, 0, !dbg !6052
  %lnot66 = xor i1 %tobool65, true, !dbg !6052
  %lnot68 = xor i1 %lnot66, true, !dbg !6052
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !6052
  store i32 %lnot.ext69, ptr %__ret_warn_on63, align 4, !dbg !6052
  %12 = load i32, ptr %__ret_warn_on63, align 4, !dbg !6053
  %tobool70 = icmp ne i32 %12, 0, !dbg !6053
  %lnot71 = xor i1 %tobool70, true, !dbg !6053
  %lnot73 = xor i1 %lnot71, true, !dbg !6053
  %lnot.ext74 = zext i1 %lnot73 to i32, !dbg !6053
  %conv75 = sext i32 %lnot.ext74 to i64, !dbg !6053
  %expval76 = call i64 @llvm.expect.i64(i64 %conv75, i64 0), !dbg !6053
  %tobool77 = icmp ne i64 %expval76, 0, !dbg !6053
  br i1 %tobool77, label %if.then78, label %if.end92, !dbg !6052

if.then78:                                        ; preds = %if.end54
  br label %do.body79, !dbg !6053

do.body79:                                        ; preds = %if.then78
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags80) #14, !dbg !6054
  call void @llvm.dbg.declare(metadata ptr %__flags80, metadata !5889, metadata !DIExpression()), !dbg !6054
  store i32 2305, ptr %__flags80, align 4, !dbg !6054
  br label %do.body81, !dbg !6054

do.body81:                                        ; preds = %do.body79
  br label %do.cond82, !dbg !6055

do.cond82:                                        ; preds = %do.body81
  br label %do.end83, !dbg !6055

do.end83:                                         ; preds = %do.cond82
  br label %do.body84, !dbg !6054

do.body84:                                        ; preds = %do.end83
  %13 = load i32, ptr %__flags80, align 4, !dbg !6057
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 288, i32 %13, i64 12) #14, !dbg !6057, !srcloc !6059
  br label %do.cond85, !dbg !6057

do.cond85:                                        ; preds = %do.body84
  br label %do.end86, !dbg !6057

do.end86:                                         ; preds = %do.cond85
  br label %do.body87, !dbg !6054

do.body87:                                        ; preds = %do.end86
  br label %do.cond88, !dbg !6060

do.cond88:                                        ; preds = %do.body87
  br label %do.end89, !dbg !6060

do.end89:                                         ; preds = %do.cond88
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags80) #14, !dbg !6053
  br label %do.cond90, !dbg !6054

do.cond90:                                        ; preds = %do.end89
  br label %do.end91, !dbg !6054

do.end91:                                         ; preds = %do.cond90
  br label %if.end92, !dbg !6054

if.end92:                                         ; preds = %do.end91, %if.end54
  %14 = load i32, ptr %__ret_warn_on63, align 4, !dbg !6052
  %tobool94 = icmp ne i32 %14, 0, !dbg !6052
  %lnot95 = xor i1 %tobool94, true, !dbg !6052
  %lnot97 = xor i1 %lnot95, true, !dbg !6052
  %lnot.ext98 = zext i1 %lnot97 to i32, !dbg !6052
  %conv99 = sext i32 %lnot.ext98 to i64, !dbg !6052
  %expval100 = call i64 @llvm.expect.i64(i64 %conv99, i64 0), !dbg !6052
  store i64 %expval100, ptr %tmp93, align 8, !dbg !6053
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on63) #14, !dbg !6062
  %15 = load i64, ptr %tmp93, align 8, !dbg !6052
  %16 = load ptr, ptr %plane.addr, align 8, !dbg !6063
  %dev = getelementptr inbounds %struct.drm_plane, ptr %16, i32 0, i32 0, !dbg !6064
  %17 = load ptr, ptr %dev, align 8, !dbg !6064
  %18 = load i32, ptr %supported_rotations.addr, align 4, !dbg !6065
  %conv101 = zext i32 %18 to i64, !dbg !6065
  %call102 = call ptr @drm_property_create_bitmask(ptr noundef %17, i32 noundef 0, ptr noundef @.str.8, ptr noundef @drm_plane_create_rotation_property.props, i32 noundef 6, i64 noundef %conv101) #15, !dbg !6066
  store ptr %call102, ptr %prop, align 8, !dbg !6067
  %19 = load ptr, ptr %prop, align 8, !dbg !6068
  %tobool103 = icmp ne ptr %19, null, !dbg !6068
  br i1 %tobool103, label %if.end105, label %if.then104, !dbg !6070

if.then104:                                       ; preds = %if.end92
  store i32 -12, ptr %retval, align 4, !dbg !6071
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6071

if.end105:                                        ; preds = %if.end92
  %20 = load ptr, ptr %plane.addr, align 8, !dbg !6072
  %base = getelementptr inbounds %struct.drm_plane, ptr %20, i32 0, i32 4, !dbg !6073
  %21 = load ptr, ptr %prop, align 8, !dbg !6074
  %22 = load i32, ptr %rotation.addr, align 4, !dbg !6075
  %conv106 = zext i32 %22 to i64, !dbg !6075
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %21, i64 noundef %conv106) #15, !dbg !6076
  %23 = load ptr, ptr %plane.addr, align 8, !dbg !6077
  %state = getelementptr inbounds %struct.drm_plane, ptr %23, i32 0, i32 19, !dbg !6079
  %24 = load ptr, ptr %state, align 8, !dbg !6079
  %tobool107 = icmp ne ptr %24, null, !dbg !6077
  br i1 %tobool107, label %if.then108, label %if.end111, !dbg !6080

if.then108:                                       ; preds = %if.end105
  %25 = load i32, ptr %rotation.addr, align 4, !dbg !6081
  %26 = load ptr, ptr %plane.addr, align 8, !dbg !6082
  %state109 = getelementptr inbounds %struct.drm_plane, ptr %26, i32 0, i32 19, !dbg !6083
  %27 = load ptr, ptr %state109, align 8, !dbg !6083
  %rotation110 = getelementptr inbounds %struct.drm_plane_state, ptr %27, i32 0, i32 14, !dbg !6084
  store i32 %25, ptr %rotation110, align 4, !dbg !6085
  br label %if.end111, !dbg !6082

if.end111:                                        ; preds = %if.then108, %if.end105
  %28 = load ptr, ptr %prop, align 8, !dbg !6086
  %29 = load ptr, ptr %plane.addr, align 8, !dbg !6087
  %rotation_property = getelementptr inbounds %struct.drm_plane, ptr %29, i32 0, i32 22, !dbg !6088
  store ptr %28, ptr %rotation_property, align 8, !dbg !6089
  store i32 0, ptr %retval, align 4, !dbg !6090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6090

cleanup:                                          ; preds = %if.end111, %if.then104
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !6091
  %30 = load i32, ptr %retval, align 4, !dbg !6091
  ret i32 %30, !dbg !6091
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none)
define internal zeroext i1 @is_power_of_2(i64 noundef %n) #5 align 16 !dbg !6092 {
entry:
  %n.addr = alloca i64, align 8
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6097, metadata !DIExpression()), !dbg !6098
  %0 = load i64, ptr %n.addr, align 8, !dbg !6099
  %cmp = icmp ne i64 %0, 0, !dbg !6100
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !6101

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %n.addr, align 8, !dbg !6102
  %2 = load i64, ptr %n.addr, align 8, !dbg !6103
  %sub = sub i64 %2, 1, !dbg !6104
  %and = and i64 %1, %sub, !dbg !6105
  %cmp1 = icmp eq i64 %and, 0, !dbg !6106
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !6107
  ret i1 %3, !dbg !6108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6109 dso_local ptr @drm_property_create_bitmask(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_rotation_simplify(i32 noundef %rotation, i32 noundef %supported_rotations) #0 align 16 !dbg !6113 {
entry:
  %rotation.addr = alloca i32, align 4
  %supported_rotations.addr = alloca i32, align 4
  store i32 %rotation, ptr %rotation.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %rotation.addr, metadata !6117, metadata !DIExpression()), !dbg !6119
  store i32 %supported_rotations, ptr %supported_rotations.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %supported_rotations.addr, metadata !6118, metadata !DIExpression()), !dbg !6120
  %0 = load i32, ptr %rotation.addr, align 4, !dbg !6121
  %1 = load i32, ptr %supported_rotations.addr, align 4, !dbg !6123
  %not = xor i32 %1, -1, !dbg !6124
  %and = and i32 %0, %not, !dbg !6125
  %tobool = icmp ne i32 %and, 0, !dbg !6125
  br i1 %tobool, label %if.then, label %if.end, !dbg !6126

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %rotation.addr, align 4, !dbg !6127
  %xor = xor i32 %2, 48, !dbg !6127
  store i32 %xor, ptr %rotation.addr, align 4, !dbg !6127
  %3 = load i32, ptr %rotation.addr, align 4, !dbg !6129
  %and1 = and i32 %3, 48, !dbg !6130
  %conv = zext i32 %and1 to i64, !dbg !6131
  %4 = load i32, ptr %rotation.addr, align 4, !dbg !6132
  %and2 = and i32 %4, 15, !dbg !6132
  %5 = call i1 @llvm.is.constant.i32(i32 %and2), !dbg !6132
  br i1 %5, label %cond.true, label %cond.false, !dbg !6132

cond.true:                                        ; preds = %if.then
  %6 = load i32, ptr %rotation.addr, align 4, !dbg !6132
  %and3 = and i32 %6, 15, !dbg !6132
  %7 = call i32 @llvm.cttz.i32(i32 %and3, i1 true), !dbg !6132
  %8 = add i32 %7, 1, !dbg !6132
  %iszero = icmp eq i32 %and3, 0, !dbg !6132
  %ffs = select i1 %iszero, i32 0, i32 %8, !dbg !6132
  br label %cond.end, !dbg !6132

cond.false:                                       ; preds = %if.then
  %9 = load i32, ptr %rotation.addr, align 4, !dbg !6132
  %and4 = and i32 %9, 15, !dbg !6132
  %call = call i32 @variable_ffs(i32 noundef %and4) #15, !dbg !6132
  br label %cond.end, !dbg !6132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %ffs, %cond.true ], [ %call, %cond.false ], !dbg !6132
  %add = add i32 %cond, 1, !dbg !6132
  %rem = srem i32 %add, 4, !dbg !6132
  %sh_prom = zext i32 %rem to i64, !dbg !6132
  %shl = shl i64 1, %sh_prom, !dbg !6132
  %or = or i64 %conv, %shl, !dbg !6133
  %conv5 = trunc i64 %or to i32, !dbg !6131
  store i32 %conv5, ptr %rotation.addr, align 4, !dbg !6134
  br label %if.end, !dbg !6135

if.end:                                           ; preds = %cond.end, %entry
  %10 = load i32, ptr %rotation.addr, align 4, !dbg !6136
  ret i32 %10, !dbg !6137
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @variable_ffs(i32 noundef %x) #7 align 16 !dbg !6138 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !6141, metadata !DIExpression()), !dbg !6143
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #14, !dbg !6144
  call void @llvm.dbg.declare(metadata ptr %r, metadata !6142, metadata !DIExpression()), !dbg !6145
  %0 = load i32, ptr %x.addr, align 4, !dbg !6146
  %1 = call i32 asm "bsfl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #17, !dbg !6147, !srcloc !6148
  store i32 %1, ptr %r, align 4, !dbg !6147
  %2 = load i32, ptr %r, align 4, !dbg !6149
  %add = add i32 %2, 1, !dbg !6150
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #14, !dbg !6151
  ret i32 %add, !dbg !6152
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_plane_create_zpos_property(ptr noundef %plane, i32 noundef %zpos, i32 noundef %min, i32 noundef %max) #0 align 16 !dbg !6153 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %zpos.addr = alloca i32, align 4
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6157, metadata !DIExpression()), !dbg !6162
  store i32 %zpos, ptr %zpos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %zpos.addr, metadata !6158, metadata !DIExpression()), !dbg !6163
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6159, metadata !DIExpression()), !dbg !6164
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6160, metadata !DIExpression()), !dbg !6165
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !6166
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !6161, metadata !DIExpression()), !dbg !6167
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6168
  %dev = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 0, !dbg !6169
  %1 = load ptr, ptr %dev, align 8, !dbg !6169
  %2 = load i32, ptr %min.addr, align 4, !dbg !6170
  %conv = zext i32 %2 to i64, !dbg !6170
  %3 = load i32, ptr %max.addr, align 4, !dbg !6171
  %conv1 = zext i32 %3 to i64, !dbg !6171
  %call = call ptr @drm_property_create_range(ptr noundef %1, i32 noundef 0, ptr noundef @.str.9, i64 noundef %conv, i64 noundef %conv1) #15, !dbg !6172
  store ptr %call, ptr %prop, align 8, !dbg !6173
  %4 = load ptr, ptr %prop, align 8, !dbg !6174
  %tobool = icmp ne ptr %4, null, !dbg !6174
  br i1 %tobool, label %if.end, label %if.then, !dbg !6176

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6177
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6177

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %plane.addr, align 8, !dbg !6178
  %base = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 4, !dbg !6179
  %6 = load ptr, ptr %prop, align 8, !dbg !6180
  %7 = load i32, ptr %zpos.addr, align 4, !dbg !6181
  %conv2 = zext i32 %7 to i64, !dbg !6181
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %6, i64 noundef %conv2) #15, !dbg !6182
  %8 = load ptr, ptr %prop, align 8, !dbg !6183
  %9 = load ptr, ptr %plane.addr, align 8, !dbg !6184
  %zpos_property = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 21, !dbg !6185
  store ptr %8, ptr %zpos_property, align 8, !dbg !6186
  %10 = load ptr, ptr %plane.addr, align 8, !dbg !6187
  %state = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 19, !dbg !6189
  %11 = load ptr, ptr %state, align 8, !dbg !6189
  %tobool3 = icmp ne ptr %11, null, !dbg !6187
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !6190

if.then4:                                         ; preds = %if.end
  %12 = load i32, ptr %zpos.addr, align 4, !dbg !6191
  %13 = load ptr, ptr %plane.addr, align 8, !dbg !6193
  %state5 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 19, !dbg !6194
  %14 = load ptr, ptr %state5, align 8, !dbg !6194
  %zpos6 = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 15, !dbg !6195
  store i32 %12, ptr %zpos6, align 8, !dbg !6196
  %15 = load i32, ptr %zpos.addr, align 4, !dbg !6197
  %16 = load ptr, ptr %plane.addr, align 8, !dbg !6198
  %state7 = getelementptr inbounds %struct.drm_plane, ptr %16, i32 0, i32 19, !dbg !6199
  %17 = load ptr, ptr %state7, align 8, !dbg !6199
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 16, !dbg !6200
  store i32 %15, ptr %normalized_zpos, align 4, !dbg !6201
  br label %if.end8, !dbg !6202

if.end8:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6203

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !6204
  %18 = load i32, ptr %retval, align 4, !dbg !6204
  ret i32 %18, !dbg !6204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_plane_create_zpos_immutable_property(ptr noundef %plane, i32 noundef %zpos) #0 align 16 !dbg !6205 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %zpos.addr = alloca i32, align 4
  %prop = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6207, metadata !DIExpression()), !dbg !6210
  store i32 %zpos, ptr %zpos.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %zpos.addr, metadata !6208, metadata !DIExpression()), !dbg !6211
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !6212
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !6209, metadata !DIExpression()), !dbg !6213
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6214
  %dev = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 0, !dbg !6215
  %1 = load ptr, ptr %dev, align 8, !dbg !6215
  %2 = load i32, ptr %zpos.addr, align 4, !dbg !6216
  %conv = zext i32 %2 to i64, !dbg !6216
  %3 = load i32, ptr %zpos.addr, align 4, !dbg !6217
  %conv1 = zext i32 %3 to i64, !dbg !6217
  %call = call ptr @drm_property_create_range(ptr noundef %1, i32 noundef 4, ptr noundef @.str.9, i64 noundef %conv, i64 noundef %conv1) #15, !dbg !6218
  store ptr %call, ptr %prop, align 8, !dbg !6219
  %4 = load ptr, ptr %prop, align 8, !dbg !6220
  %tobool = icmp ne ptr %4, null, !dbg !6220
  br i1 %tobool, label %if.end, label %if.then, !dbg !6222

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !6223
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6223

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %plane.addr, align 8, !dbg !6224
  %base = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 4, !dbg !6225
  %6 = load ptr, ptr %prop, align 8, !dbg !6226
  %7 = load i32, ptr %zpos.addr, align 4, !dbg !6227
  %conv2 = zext i32 %7 to i64, !dbg !6227
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %6, i64 noundef %conv2) #15, !dbg !6228
  %8 = load ptr, ptr %prop, align 8, !dbg !6229
  %9 = load ptr, ptr %plane.addr, align 8, !dbg !6230
  %zpos_property = getelementptr inbounds %struct.drm_plane, ptr %9, i32 0, i32 21, !dbg !6231
  store ptr %8, ptr %zpos_property, align 8, !dbg !6232
  %10 = load ptr, ptr %plane.addr, align 8, !dbg !6233
  %state = getelementptr inbounds %struct.drm_plane, ptr %10, i32 0, i32 19, !dbg !6235
  %11 = load ptr, ptr %state, align 8, !dbg !6235
  %tobool3 = icmp ne ptr %11, null, !dbg !6233
  br i1 %tobool3, label %if.then4, label %if.end8, !dbg !6236

if.then4:                                         ; preds = %if.end
  %12 = load i32, ptr %zpos.addr, align 4, !dbg !6237
  %13 = load ptr, ptr %plane.addr, align 8, !dbg !6239
  %state5 = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 19, !dbg !6240
  %14 = load ptr, ptr %state5, align 8, !dbg !6240
  %zpos6 = getelementptr inbounds %struct.drm_plane_state, ptr %14, i32 0, i32 15, !dbg !6241
  store i32 %12, ptr %zpos6, align 8, !dbg !6242
  %15 = load i32, ptr %zpos.addr, align 4, !dbg !6243
  %16 = load ptr, ptr %plane.addr, align 8, !dbg !6244
  %state7 = getelementptr inbounds %struct.drm_plane, ptr %16, i32 0, i32 19, !dbg !6245
  %17 = load ptr, ptr %state7, align 8, !dbg !6245
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 16, !dbg !6246
  store i32 %15, ptr %normalized_zpos, align 4, !dbg !6247
  br label %if.end8, !dbg !6248

if.end8:                                          ; preds = %if.then4, %if.end
  store i32 0, ptr %retval, align 4, !dbg !6249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6249

cleanup:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !6250
  %18 = load i32, ptr %retval, align 4, !dbg !6250
  ret i32 %18, !dbg !6250
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_atomic_normalize_zpos(ptr noundef %dev, ptr noundef %state) #0 align 16 !dbg !6251 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %crtc = alloca ptr, align 8
  %old_crtc_state = alloca ptr, align 8
  %new_crtc_state = alloca ptr, align 8
  %plane = alloca ptr, align 8
  %old_plane_state = alloca ptr, align 8
  %new_plane_state = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !6253, metadata !DIExpression()), !dbg !6263
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6254, metadata !DIExpression()), !dbg !6264
  call void @llvm.lifetime.start.p0(i64 8, ptr %crtc) #14, !dbg !6265
  call void @llvm.dbg.declare(metadata ptr %crtc, metadata !6255, metadata !DIExpression()), !dbg !6266
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_crtc_state) #14, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %old_crtc_state, metadata !6256, metadata !DIExpression()), !dbg !6268
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_crtc_state) #14, !dbg !6267
  call void @llvm.dbg.declare(metadata ptr %new_crtc_state, metadata !6257, metadata !DIExpression()), !dbg !6269
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane) #14, !dbg !6270
  call void @llvm.dbg.declare(metadata ptr %plane, metadata !6258, metadata !DIExpression()), !dbg !6271
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_plane_state) #14, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %old_plane_state, metadata !6259, metadata !DIExpression()), !dbg !6273
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_plane_state) #14, !dbg !6272
  call void @llvm.dbg.declare(metadata ptr %new_plane_state, metadata !6260, metadata !DIExpression()), !dbg !6274
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6261, metadata !DIExpression()), !dbg !6276
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6275
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6262, metadata !DIExpression()), !dbg !6277
  store i32 0, ptr %ret, align 4, !dbg !6277
  store i32 0, ptr %i, align 4, !dbg !6278
  br label %for.cond, !dbg !6278

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !6280
  %1 = load ptr, ptr %state.addr, align 8, !dbg !6280
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1, !dbg !6280
  %2 = load ptr, ptr %dev1, align 8, !dbg !6280
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 31, !dbg !6280
  %num_total_plane = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 17, !dbg !6280
  %3 = load i32, ptr %num_total_plane, align 8, !dbg !6280
  %cmp = icmp slt i32 %0, %3, !dbg !6280
  br i1 %cmp, label %for.body, label %for.end, !dbg !6278

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %state.addr, align 8, !dbg !6282
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %4, i32 0, i32 3, !dbg !6282
  %5 = load ptr, ptr %planes, align 8, !dbg !6282
  %6 = load i32, ptr %i, align 4, !dbg !6282
  %idxprom = sext i32 %6 to i64, !dbg !6282
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %5, i64 %idxprom, !dbg !6282
  %ptr = getelementptr inbounds %struct.__drm_planes_state, ptr %arrayidx, i32 0, i32 0, !dbg !6282
  %7 = load ptr, ptr %ptr, align 8, !dbg !6282
  %tobool = icmp ne ptr %7, null, !dbg !6282
  br i1 %tobool, label %land.lhs.true, label %if.then, !dbg !6282

land.lhs.true:                                    ; preds = %for.body
  %8 = load ptr, ptr %state.addr, align 8, !dbg !6282
  %planes2 = getelementptr inbounds %struct.drm_atomic_state, ptr %8, i32 0, i32 3, !dbg !6282
  %9 = load ptr, ptr %planes2, align 8, !dbg !6282
  %10 = load i32, ptr %i, align 4, !dbg !6282
  %idxprom3 = sext i32 %10 to i64, !dbg !6282
  %arrayidx4 = getelementptr %struct.__drm_planes_state, ptr %9, i64 %idxprom3, !dbg !6282
  %ptr5 = getelementptr inbounds %struct.__drm_planes_state, ptr %arrayidx4, i32 0, i32 0, !dbg !6282
  %11 = load ptr, ptr %ptr5, align 8, !dbg !6282
  store ptr %11, ptr %plane, align 8, !dbg !6282
  %12 = load ptr, ptr %plane, align 8, !dbg !6282
  %13 = load ptr, ptr %state.addr, align 8, !dbg !6282
  %planes6 = getelementptr inbounds %struct.drm_atomic_state, ptr %13, i32 0, i32 3, !dbg !6282
  %14 = load ptr, ptr %planes6, align 8, !dbg !6282
  %15 = load i32, ptr %i, align 4, !dbg !6282
  %idxprom7 = sext i32 %15 to i64, !dbg !6282
  %arrayidx8 = getelementptr %struct.__drm_planes_state, ptr %14, i64 %idxprom7, !dbg !6282
  %old_state = getelementptr inbounds %struct.__drm_planes_state, ptr %arrayidx8, i32 0, i32 2, !dbg !6282
  %16 = load ptr, ptr %old_state, align 8, !dbg !6282
  store ptr %16, ptr %old_plane_state, align 8, !dbg !6282
  %17 = load ptr, ptr %state.addr, align 8, !dbg !6282
  %planes9 = getelementptr inbounds %struct.drm_atomic_state, ptr %17, i32 0, i32 3, !dbg !6282
  %18 = load ptr, ptr %planes9, align 8, !dbg !6282
  %19 = load i32, ptr %i, align 4, !dbg !6282
  %idxprom10 = sext i32 %19 to i64, !dbg !6282
  %arrayidx11 = getelementptr %struct.__drm_planes_state, ptr %18, i64 %idxprom10, !dbg !6282
  %new_state = getelementptr inbounds %struct.__drm_planes_state, ptr %arrayidx11, i32 0, i32 3, !dbg !6282
  %20 = load ptr, ptr %new_state, align 8, !dbg !6282
  store ptr %20, ptr %new_plane_state, align 8, !dbg !6282
  br i1 true, label %if.else, label %if.then, !dbg !6280

if.then:                                          ; preds = %land.lhs.true, %for.body
  br label %if.end19, !dbg !6284

if.else:                                          ; preds = %land.lhs.true
  %21 = load ptr, ptr %new_plane_state, align 8, !dbg !6286
  %crtc12 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 1, !dbg !6288
  %22 = load ptr, ptr %crtc12, align 8, !dbg !6288
  store ptr %22, ptr %crtc, align 8, !dbg !6289
  %23 = load ptr, ptr %crtc, align 8, !dbg !6290
  %tobool13 = icmp ne ptr %23, null, !dbg !6290
  br i1 %tobool13, label %if.end, label %if.then14, !dbg !6292

if.then14:                                        ; preds = %if.else
  br label %for.inc, !dbg !6293

if.end:                                           ; preds = %if.else
  %24 = load ptr, ptr %old_plane_state, align 8, !dbg !6294
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %24, i32 0, i32 15, !dbg !6296
  %25 = load i32, ptr %zpos, align 8, !dbg !6296
  %26 = load ptr, ptr %new_plane_state, align 8, !dbg !6297
  %zpos15 = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 15, !dbg !6298
  %27 = load i32, ptr %zpos15, align 8, !dbg !6298
  %cmp16 = icmp ne i32 %25, %27, !dbg !6299
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !6300

if.then17:                                        ; preds = %if.end
  %28 = load ptr, ptr %state.addr, align 8, !dbg !6301
  %29 = load ptr, ptr %crtc, align 8, !dbg !6303
  %call = call ptr @drm_atomic_get_new_crtc_state(ptr noundef %28, ptr noundef %29) #15, !dbg !6304
  store ptr %call, ptr %new_crtc_state, align 8, !dbg !6305
  %30 = load ptr, ptr %new_crtc_state, align 8, !dbg !6306
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %30, i32 0, i32 3, !dbg !6307
  %bf.load = load i8, ptr %zpos_changed, align 2, !dbg !6308
  %bf.clear = and i8 %bf.load, -17, !dbg !6308
  %bf.set = or i8 %bf.clear, 16, !dbg !6308
  store i8 %bf.set, ptr %zpos_changed, align 2, !dbg !6308
  br label %if.end18, !dbg !6309

if.end18:                                         ; preds = %if.then17, %if.end
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then
  br label %for.inc, !dbg !6282

for.inc:                                          ; preds = %if.end19, %if.then14
  %31 = load i32, ptr %i, align 4, !dbg !6280
  %inc = add i32 %31, 1, !dbg !6280
  store i32 %inc, ptr %i, align 4, !dbg !6280
  br label %for.cond, !dbg !6280, !llvm.loop !6310

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !6314
  br label %for.cond20, !dbg !6314

for.cond20:                                       ; preds = %for.inc56, %for.end
  %32 = load i32, ptr %i, align 4, !dbg !6316
  %33 = load ptr, ptr %state.addr, align 8, !dbg !6316
  %dev21 = getelementptr inbounds %struct.drm_atomic_state, ptr %33, i32 0, i32 1, !dbg !6316
  %34 = load ptr, ptr %dev21, align 8, !dbg !6316
  %mode_config22 = getelementptr inbounds %struct.drm_device, ptr %34, i32 0, i32 31, !dbg !6316
  %num_crtc = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config22, i32 0, i32 19, !dbg !6316
  %35 = load i32, ptr %num_crtc, align 8, !dbg !6316
  %cmp23 = icmp slt i32 %32, %35, !dbg !6316
  br i1 %cmp23, label %for.body24, label %for.end58, !dbg !6314

for.body24:                                       ; preds = %for.cond20
  %36 = load ptr, ptr %state.addr, align 8, !dbg !6318
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %36, i32 0, i32 4, !dbg !6318
  %37 = load ptr, ptr %crtcs, align 8, !dbg !6318
  %38 = load i32, ptr %i, align 4, !dbg !6318
  %idxprom25 = sext i32 %38 to i64, !dbg !6318
  %arrayidx26 = getelementptr %struct.__drm_crtcs_state, ptr %37, i64 %idxprom25, !dbg !6318
  %ptr27 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx26, i32 0, i32 0, !dbg !6318
  %39 = load ptr, ptr %ptr27, align 8, !dbg !6318
  %tobool28 = icmp ne ptr %39, null, !dbg !6318
  br i1 %tobool28, label %land.lhs.true29, label %if.then42, !dbg !6318

land.lhs.true29:                                  ; preds = %for.body24
  %40 = load ptr, ptr %state.addr, align 8, !dbg !6318
  %crtcs30 = getelementptr inbounds %struct.drm_atomic_state, ptr %40, i32 0, i32 4, !dbg !6318
  %41 = load ptr, ptr %crtcs30, align 8, !dbg !6318
  %42 = load i32, ptr %i, align 4, !dbg !6318
  %idxprom31 = sext i32 %42 to i64, !dbg !6318
  %arrayidx32 = getelementptr %struct.__drm_crtcs_state, ptr %41, i64 %idxprom31, !dbg !6318
  %ptr33 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx32, i32 0, i32 0, !dbg !6318
  %43 = load ptr, ptr %ptr33, align 8, !dbg !6318
  store ptr %43, ptr %crtc, align 8, !dbg !6318
  %44 = load ptr, ptr %crtc, align 8, !dbg !6318
  %45 = load ptr, ptr %state.addr, align 8, !dbg !6318
  %crtcs34 = getelementptr inbounds %struct.drm_atomic_state, ptr %45, i32 0, i32 4, !dbg !6318
  %46 = load ptr, ptr %crtcs34, align 8, !dbg !6318
  %47 = load i32, ptr %i, align 4, !dbg !6318
  %idxprom35 = sext i32 %47 to i64, !dbg !6318
  %arrayidx36 = getelementptr %struct.__drm_crtcs_state, ptr %46, i64 %idxprom35, !dbg !6318
  %old_state37 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx36, i32 0, i32 2, !dbg !6318
  %48 = load ptr, ptr %old_state37, align 8, !dbg !6318
  store ptr %48, ptr %old_crtc_state, align 8, !dbg !6318
  %49 = load ptr, ptr %old_crtc_state, align 8, !dbg !6318
  %50 = load ptr, ptr %state.addr, align 8, !dbg !6318
  %crtcs38 = getelementptr inbounds %struct.drm_atomic_state, ptr %50, i32 0, i32 4, !dbg !6318
  %51 = load ptr, ptr %crtcs38, align 8, !dbg !6318
  %52 = load i32, ptr %i, align 4, !dbg !6318
  %idxprom39 = sext i32 %52 to i64, !dbg !6318
  %arrayidx40 = getelementptr %struct.__drm_crtcs_state, ptr %51, i64 %idxprom39, !dbg !6318
  %new_state41 = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx40, i32 0, i32 3, !dbg !6318
  %53 = load ptr, ptr %new_state41, align 8, !dbg !6318
  store ptr %53, ptr %new_crtc_state, align 8, !dbg !6318
  %54 = load ptr, ptr %new_crtc_state, align 8, !dbg !6318
  br i1 true, label %if.else43, label %if.then42, !dbg !6316

if.then42:                                        ; preds = %land.lhs.true29, %for.body24
  br label %if.end55, !dbg !6320

if.else43:                                        ; preds = %land.lhs.true29
  %55 = load ptr, ptr %old_crtc_state, align 8, !dbg !6322
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %55, i32 0, i32 4, !dbg !6325
  %56 = load i32, ptr %plane_mask, align 4, !dbg !6325
  %57 = load ptr, ptr %new_crtc_state, align 8, !dbg !6326
  %plane_mask44 = getelementptr inbounds %struct.drm_crtc_state, ptr %57, i32 0, i32 4, !dbg !6327
  %58 = load i32, ptr %plane_mask44, align 4, !dbg !6327
  %cmp45 = icmp ne i32 %56, %58, !dbg !6328
  br i1 %cmp45, label %if.then49, label %lor.lhs.false, !dbg !6329

lor.lhs.false:                                    ; preds = %if.else43
  %59 = load ptr, ptr %new_crtc_state, align 8, !dbg !6330
  %zpos_changed46 = getelementptr inbounds %struct.drm_crtc_state, ptr %59, i32 0, i32 3, !dbg !6331
  %bf.load47 = load i8, ptr %zpos_changed46, align 2, !dbg !6331
  %bf.lshr = lshr i8 %bf.load47, 4, !dbg !6331
  %bf.clear48 = and i8 %bf.lshr, 1, !dbg !6331
  %bf.cast = trunc i8 %bf.clear48 to i1, !dbg !6331
  br i1 %bf.cast, label %if.then49, label %if.end54, !dbg !6332

if.then49:                                        ; preds = %lor.lhs.false, %if.else43
  %60 = load ptr, ptr %crtc, align 8, !dbg !6333
  %61 = load ptr, ptr %new_crtc_state, align 8, !dbg !6335
  %call50 = call i32 @drm_atomic_helper_crtc_normalize_zpos(ptr noundef %60, ptr noundef %61) #15, !dbg !6336
  store i32 %call50, ptr %ret, align 4, !dbg !6337
  %62 = load i32, ptr %ret, align 4, !dbg !6338
  %tobool51 = icmp ne i32 %62, 0, !dbg !6338
  br i1 %tobool51, label %if.then52, label %if.end53, !dbg !6340

if.then52:                                        ; preds = %if.then49
  %63 = load i32, ptr %ret, align 4, !dbg !6341
  store i32 %63, ptr %retval, align 4, !dbg !6342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6342

if.end53:                                         ; preds = %if.then49
  br label %if.end54, !dbg !6343

if.end54:                                         ; preds = %if.end53, %lor.lhs.false
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then42
  br label %for.inc56, !dbg !6318

for.inc56:                                        ; preds = %if.end55
  %64 = load i32, ptr %i, align 4, !dbg !6316
  %inc57 = add i32 %64, 1, !dbg !6316
  store i32 %inc57, ptr %i, align 4, !dbg !6316
  br label %for.cond20, !dbg !6316, !llvm.loop !6344

for.end58:                                        ; preds = %for.cond20
  store i32 0, ptr %retval, align 4, !dbg !6346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6346

cleanup:                                          ; preds = %for.end58, %if.then52
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_plane_state) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_plane_state) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_crtc_state) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_crtc_state) #14, !dbg !6347
  call void @llvm.lifetime.end.p0(i64 8, ptr %crtc) #14, !dbg !6347
  %65 = load i32, ptr %retval, align 4, !dbg !6347
  ret i32 %65, !dbg !6347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @drm_atomic_get_new_crtc_state(ptr noundef %state, ptr noundef %crtc) #8 align 16 !dbg !6348 {
entry:
  %state.addr = alloca ptr, align 8
  %crtc.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !6354, metadata !DIExpression()), !dbg !6356
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6355, metadata !DIExpression()), !dbg !6357
  %0 = load ptr, ptr %state.addr, align 8, !dbg !6358
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4, !dbg !6359
  %1 = load ptr, ptr %crtcs, align 8, !dbg !6359
  %2 = load ptr, ptr %crtc.addr, align 8, !dbg !6360
  %call = call i32 @drm_crtc_index(ptr noundef %2) #15, !dbg !6361
  %idxprom = zext i32 %call to i64, !dbg !6358
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %1, i64 %idxprom, !dbg !6358
  %new_state = getelementptr inbounds %struct.__drm_crtcs_state, ptr %arrayidx, i32 0, i32 3, !dbg !6362
  %3 = load ptr, ptr %new_state, align 8, !dbg !6362
  ret ptr %3, !dbg !6363
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_atomic_helper_crtc_normalize_zpos(ptr noundef %crtc, ptr noundef %crtc_state) #0 align 16 !dbg !6364 {
entry:
  %retval = alloca i32, align 4
  %crtc.addr = alloca ptr, align 8
  %crtc_state.addr = alloca ptr, align 8
  %state = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %total_planes = alloca i32, align 4
  %states = alloca ptr, align 8
  %plane = alloca ptr, align 8
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %plane_state = alloca ptr, align 8
  %__mptr28 = alloca ptr, align 8
  %tmp31 = alloca ptr, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6368, metadata !DIExpression()), !dbg !6388
  store ptr %crtc_state, ptr %crtc_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc_state.addr, metadata !6369, metadata !DIExpression()), !dbg !6389
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #14, !dbg !6390
  call void @llvm.dbg.declare(metadata ptr %state, metadata !6370, metadata !DIExpression()), !dbg !6391
  %0 = load ptr, ptr %crtc_state.addr, align 8, !dbg !6392
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %0, i32 0, i32 20, !dbg !6393
  %1 = load ptr, ptr %state1, align 8, !dbg !6393
  store ptr %1, ptr %state, align 8, !dbg !6391
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !6371, metadata !DIExpression()), !dbg !6395
  %2 = load ptr, ptr %crtc.addr, align 8, !dbg !6396
  %dev2 = getelementptr inbounds %struct.drm_crtc, ptr %2, i32 0, i32 0, !dbg !6397
  %3 = load ptr, ptr %dev2, align 8, !dbg !6397
  store ptr %3, ptr %dev, align 8, !dbg !6395
  call void @llvm.lifetime.start.p0(i64 4, ptr %total_planes) #14, !dbg !6398
  call void @llvm.dbg.declare(metadata ptr %total_planes, metadata !6372, metadata !DIExpression()), !dbg !6399
  %4 = load ptr, ptr %dev, align 8, !dbg !6400
  %mode_config = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 31, !dbg !6401
  %num_total_plane = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config, i32 0, i32 17, !dbg !6402
  %5 = load i32, ptr %num_total_plane, align 8, !dbg !6402
  store i32 %5, ptr %total_planes, align 4, !dbg !6399
  call void @llvm.lifetime.start.p0(i64 8, ptr %states) #14, !dbg !6403
  call void @llvm.dbg.declare(metadata ptr %states, metadata !6373, metadata !DIExpression()), !dbg !6404
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane) #14, !dbg !6405
  call void @llvm.dbg.declare(metadata ptr %plane, metadata !6374, metadata !DIExpression()), !dbg !6406
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %i, metadata !6375, metadata !DIExpression()), !dbg !6408
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #14, !dbg !6407
  call void @llvm.dbg.declare(metadata ptr %n, metadata !6376, metadata !DIExpression()), !dbg !6409
  store i32 0, ptr %n, align 4, !dbg !6409
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6410
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6377, metadata !DIExpression()), !dbg !6411
  store i32 0, ptr %ret, align 4, !dbg !6411
  %6 = load ptr, ptr %dev, align 8, !dbg !6412
  %tobool = icmp ne ptr %6, null, !dbg !6412
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6412

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %dev, align 8, !dbg !6412
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2, !dbg !6412
  %8 = load ptr, ptr %dev3, align 8, !dbg !6412
  br label %cond.end, !dbg !6412

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !6412

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !6412
  %9 = load ptr, ptr %crtc.addr, align 8, !dbg !6412
  %base = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 5, !dbg !6412
  %id = getelementptr inbounds %struct.drm_mode_object, ptr %base, i32 0, i32 0, !dbg !6412
  %10 = load i32, ptr %id, align 8, !dbg !6412
  %11 = load ptr, ptr %crtc.addr, align 8, !dbg !6412
  %name = getelementptr inbounds %struct.drm_crtc, ptr %11, i32 0, i32 3, !dbg !6412
  %12 = load ptr, ptr %name, align 8, !dbg !6412
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond, i32 noundef 4, ptr noundef @.str.14, i32 noundef %10, ptr noundef %12) #15, !dbg !6412
  %13 = load i32, ptr %total_planes, align 4, !dbg !6413
  %conv = sext i32 %13 to i64, !dbg !6413
  %call = call noalias ptr @kmalloc_array(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #18, !dbg !6414
  store ptr %call, ptr %states, align 8, !dbg !6415
  %14 = load ptr, ptr %states, align 8, !dbg !6416
  %tobool4 = icmp ne ptr %14, null, !dbg !6416
  br i1 %tobool4, label %if.end, label %if.then, !dbg !6418

if.then:                                          ; preds = %cond.end
  store i32 -12, ptr %retval, align 4, !dbg !6419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !6419

if.end:                                           ; preds = %cond.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !6420
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6378, metadata !DIExpression()), !dbg !6420
  %15 = load ptr, ptr %dev, align 8, !dbg !6420
  %mode_config5 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 31, !dbg !6420
  %plane_list = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config5, i32 0, i32 18, !dbg !6420
  %next = getelementptr inbounds %struct.list_head, ptr %plane_list, i32 0, i32 0, !dbg !6420
  %16 = load ptr, ptr %next, align 8, !dbg !6420
  store ptr %16, ptr %__mptr, align 8, !dbg !6420
  %17 = load ptr, ptr %__mptr, align 8, !dbg !6420
  %add.ptr = getelementptr i8, ptr %17, i64 -8, !dbg !6420
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !6421
  %18 = load ptr, ptr %tmp, align 8, !dbg !6420
  store ptr %18, ptr %plane, align 8, !dbg !6421
  br label %for.cond, !dbg !6421

for.cond:                                         ; preds = %for.inc, %if.end
  %19 = load ptr, ptr %plane, align 8, !dbg !6422
  %head = getelementptr inbounds %struct.drm_plane, ptr %19, i32 0, i32 1, !dbg !6422
  %20 = load ptr, ptr %dev, align 8, !dbg !6422
  %mode_config6 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 31, !dbg !6422
  %plane_list7 = getelementptr inbounds %struct.drm_mode_config, ptr %mode_config6, i32 0, i32 18, !dbg !6422
  %cmp = icmp eq ptr %head, %plane_list7, !dbg !6422
  %lnot = xor i1 %cmp, true, !dbg !6422
  br i1 %lnot, label %for.body, label %for.end, !dbg !6421

for.body:                                         ; preds = %for.cond
  %21 = load ptr, ptr %crtc_state.addr, align 8, !dbg !6423
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 4, !dbg !6423
  %22 = load i32, ptr %plane_mask, align 4, !dbg !6423
  %23 = load ptr, ptr %plane, align 8, !dbg !6423
  %call9 = call i32 @drm_plane_mask(ptr noundef %23) #15, !dbg !6423
  %and = and i32 %22, %call9, !dbg !6423
  %tobool10 = icmp ne i32 %and, 0, !dbg !6423
  br i1 %tobool10, label %if.else, label %if.then11, !dbg !6422

if.then11:                                        ; preds = %for.body
  br label %if.end27, !dbg !6424

if.else:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %plane_state) #14, !dbg !6426
  call void @llvm.dbg.declare(metadata ptr %plane_state, metadata !6381, metadata !DIExpression()), !dbg !6427
  %24 = load ptr, ptr %state, align 8, !dbg !6428
  %25 = load ptr, ptr %plane, align 8, !dbg !6429
  %call12 = call ptr @drm_atomic_get_plane_state(ptr noundef %24, ptr noundef %25) #15, !dbg !6430
  store ptr %call12, ptr %plane_state, align 8, !dbg !6427
  %26 = load ptr, ptr %plane_state, align 8, !dbg !6431
  %call13 = call zeroext i1 @IS_ERR(ptr noundef %26) #15, !dbg !6433
  br i1 %call13, label %if.then14, label %if.end17, !dbg !6434

if.then14:                                        ; preds = %if.else
  %27 = load ptr, ptr %plane_state, align 8, !dbg !6435
  %call15 = call i64 @PTR_ERR(ptr noundef %27) #15, !dbg !6437
  %conv16 = trunc i64 %call15 to i32, !dbg !6437
  store i32 %conv16, ptr %ret, align 4, !dbg !6438
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6439

if.end17:                                         ; preds = %if.else
  %28 = load ptr, ptr %plane_state, align 8, !dbg !6440
  %29 = load ptr, ptr %states, align 8, !dbg !6441
  %30 = load i32, ptr %n, align 4, !dbg !6442
  %inc = add i32 %30, 1, !dbg !6442
  store i32 %inc, ptr %n, align 4, !dbg !6442
  %idxprom = sext i32 %30 to i64, !dbg !6441
  %arrayidx = getelementptr ptr, ptr %29, i64 %idxprom, !dbg !6441
  store ptr %28, ptr %arrayidx, align 8, !dbg !6443
  %31 = load ptr, ptr %dev, align 8, !dbg !6444
  %tobool18 = icmp ne ptr %31, null, !dbg !6444
  br i1 %tobool18, label %cond.true19, label %cond.false21, !dbg !6444

cond.true19:                                      ; preds = %if.end17
  %32 = load ptr, ptr %dev, align 8, !dbg !6444
  %dev20 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 2, !dbg !6444
  %33 = load ptr, ptr %dev20, align 8, !dbg !6444
  br label %cond.end22, !dbg !6444

cond.false21:                                     ; preds = %if.end17
  br label %cond.end22, !dbg !6444

cond.end22:                                       ; preds = %cond.false21, %cond.true19
  %cond23 = phi ptr [ %33, %cond.true19 ], [ null, %cond.false21 ], !dbg !6444
  %34 = load ptr, ptr %plane, align 8, !dbg !6444
  %base24 = getelementptr inbounds %struct.drm_plane, ptr %34, i32 0, i32 4, !dbg !6444
  %id25 = getelementptr inbounds %struct.drm_mode_object, ptr %base24, i32 0, i32 0, !dbg !6444
  %35 = load i32, ptr %id25, align 8, !dbg !6444
  %36 = load ptr, ptr %plane, align 8, !dbg !6444
  %name26 = getelementptr inbounds %struct.drm_plane, ptr %36, i32 0, i32 2, !dbg !6444
  %37 = load ptr, ptr %name26, align 8, !dbg !6444
  %38 = load ptr, ptr %plane_state, align 8, !dbg !6444
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %38, i32 0, i32 15, !dbg !6444
  %39 = load i32, ptr %zpos, align 8, !dbg !6444
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond23, i32 noundef 4, ptr noundef @.str.15, i32 noundef %35, ptr noundef %37, i32 noundef %39) #15, !dbg !6444
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6445
  br label %cleanup, !dbg !6445

cleanup:                                          ; preds = %if.then14, %cond.end22
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane_state) #14, !dbg !6445
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup55 [
    i32 0, label %cleanup.cont
    i32 5, label %done
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end27

if.end27:                                         ; preds = %cleanup.cont, %if.then11
  br label %for.inc, !dbg !6423

for.inc:                                          ; preds = %if.end27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr28) #14, !dbg !6446
  call void @llvm.dbg.declare(metadata ptr %__mptr28, metadata !6385, metadata !DIExpression()), !dbg !6446
  %40 = load ptr, ptr %plane, align 8, !dbg !6446
  %head29 = getelementptr inbounds %struct.drm_plane, ptr %40, i32 0, i32 1, !dbg !6446
  %next30 = getelementptr inbounds %struct.list_head, ptr %head29, i32 0, i32 0, !dbg !6446
  %41 = load ptr, ptr %next30, align 8, !dbg !6446
  store ptr %41, ptr %__mptr28, align 8, !dbg !6446
  %42 = load ptr, ptr %__mptr28, align 8, !dbg !6446
  %add.ptr32 = getelementptr i8, ptr %42, i64 -8, !dbg !6446
  store ptr %add.ptr32, ptr %tmp31, align 8, !dbg !6446
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr28) #14, !dbg !6422
  %43 = load ptr, ptr %tmp31, align 8, !dbg !6446
  store ptr %43, ptr %plane, align 8, !dbg !6422
  br label %for.cond, !dbg !6422, !llvm.loop !6447

for.end:                                          ; preds = %for.cond
  %44 = load ptr, ptr %states, align 8, !dbg !6449
  %45 = load i32, ptr %n, align 4, !dbg !6450
  %conv33 = sext i32 %45 to i64, !dbg !6450
  call void @sort(ptr noundef %44, i64 noundef %conv33, i64 noundef 8, ptr noundef @drm_atomic_state_zpos_cmp, ptr noundef null) #15, !dbg !6451
  store i32 0, ptr %i, align 4, !dbg !6452
  br label %for.cond34, !dbg !6454

for.cond34:                                       ; preds = %for.inc52, %for.end
  %46 = load i32, ptr %i, align 4, !dbg !6455
  %47 = load i32, ptr %n, align 4, !dbg !6457
  %cmp35 = icmp slt i32 %46, %47, !dbg !6458
  br i1 %cmp35, label %for.body37, label %for.end54, !dbg !6459

for.body37:                                       ; preds = %for.cond34
  %48 = load ptr, ptr %states, align 8, !dbg !6460
  %49 = load i32, ptr %i, align 4, !dbg !6462
  %idxprom38 = sext i32 %49 to i64, !dbg !6460
  %arrayidx39 = getelementptr ptr, ptr %48, i64 %idxprom38, !dbg !6460
  %50 = load ptr, ptr %arrayidx39, align 8, !dbg !6460
  %plane40 = getelementptr inbounds %struct.drm_plane_state, ptr %50, i32 0, i32 0, !dbg !6463
  %51 = load ptr, ptr %plane40, align 8, !dbg !6463
  store ptr %51, ptr %plane, align 8, !dbg !6464
  %52 = load i32, ptr %i, align 4, !dbg !6465
  %53 = load ptr, ptr %states, align 8, !dbg !6466
  %54 = load i32, ptr %i, align 4, !dbg !6467
  %idxprom41 = sext i32 %54 to i64, !dbg !6466
  %arrayidx42 = getelementptr ptr, ptr %53, i64 %idxprom41, !dbg !6466
  %55 = load ptr, ptr %arrayidx42, align 8, !dbg !6466
  %normalized_zpos = getelementptr inbounds %struct.drm_plane_state, ptr %55, i32 0, i32 16, !dbg !6468
  store i32 %52, ptr %normalized_zpos, align 4, !dbg !6469
  %56 = load ptr, ptr %dev, align 8, !dbg !6470
  %tobool43 = icmp ne ptr %56, null, !dbg !6470
  br i1 %tobool43, label %cond.true44, label %cond.false46, !dbg !6470

cond.true44:                                      ; preds = %for.body37
  %57 = load ptr, ptr %dev, align 8, !dbg !6470
  %dev45 = getelementptr inbounds %struct.drm_device, ptr %57, i32 0, i32 2, !dbg !6470
  %58 = load ptr, ptr %dev45, align 8, !dbg !6470
  br label %cond.end47, !dbg !6470

cond.false46:                                     ; preds = %for.body37
  br label %cond.end47, !dbg !6470

cond.end47:                                       ; preds = %cond.false46, %cond.true44
  %cond48 = phi ptr [ %58, %cond.true44 ], [ null, %cond.false46 ], !dbg !6470
  %59 = load ptr, ptr %plane, align 8, !dbg !6470
  %base49 = getelementptr inbounds %struct.drm_plane, ptr %59, i32 0, i32 4, !dbg !6470
  %id50 = getelementptr inbounds %struct.drm_mode_object, ptr %base49, i32 0, i32 0, !dbg !6470
  %60 = load i32, ptr %id50, align 8, !dbg !6470
  %61 = load ptr, ptr %plane, align 8, !dbg !6470
  %name51 = getelementptr inbounds %struct.drm_plane, ptr %61, i32 0, i32 2, !dbg !6470
  %62 = load ptr, ptr %name51, align 8, !dbg !6470
  %63 = load i32, ptr %i, align 4, !dbg !6470
  call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %cond48, i32 noundef 4, ptr noundef @.str.16, i32 noundef %60, ptr noundef %62, i32 noundef %63) #15, !dbg !6470
  br label %for.inc52, !dbg !6471

for.inc52:                                        ; preds = %cond.end47
  %64 = load i32, ptr %i, align 4, !dbg !6472
  %inc53 = add i32 %64, 1, !dbg !6472
  store i32 %inc53, ptr %i, align 4, !dbg !6472
  br label %for.cond34, !dbg !6473, !llvm.loop !6474

for.end54:                                        ; preds = %for.cond34
  %65 = load ptr, ptr %crtc_state.addr, align 8, !dbg !6476
  %zpos_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %65, i32 0, i32 3, !dbg !6477
  %bf.load = load i8, ptr %zpos_changed, align 2, !dbg !6478
  %bf.clear = and i8 %bf.load, -17, !dbg !6478
  %bf.set = or i8 %bf.clear, 16, !dbg !6478
  store i8 %bf.set, ptr %zpos_changed, align 2, !dbg !6478
  br label %done, !dbg !6476

done:                                             ; preds = %for.end54, %cleanup
  call void @llvm.dbg.label(metadata !6387), !dbg !6479
  %66 = load ptr, ptr %states, align 8, !dbg !6480
  call void @kfree(ptr noundef %66) #15, !dbg !6481
  %67 = load i32, ptr %ret, align 4, !dbg !6482
  store i32 %67, ptr %retval, align 4, !dbg !6483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup55, !dbg !6483

cleanup55:                                        ; preds = %done, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 8, ptr %plane) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 8, ptr %states) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 4, ptr %total_planes) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6484
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #14, !dbg !6484
  %68 = load i32, ptr %retval, align 4, !dbg !6484
  ret i32 %68, !dbg !6484
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @drm_plane_create_blend_mode_property(ptr noundef %plane, i32 noundef %supported_modes) #0 align 16 !dbg !5931 {
entry:
  %retval = alloca i32, align 4
  %plane.addr = alloca ptr, align 8
  %supported_modes.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %prop = alloca ptr, align 8
  %valid_mode_mask = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ret = alloca i32, align 4
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !5935, metadata !DIExpression()), !dbg !6485
  store i32 %supported_modes, ptr %supported_modes.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %supported_modes.addr, metadata !5936, metadata !DIExpression()), !dbg !6486
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !6487
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !5937, metadata !DIExpression()), !dbg !6488
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6489
  %dev1 = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 0, !dbg !6490
  %1 = load ptr, ptr %dev1, align 8, !dbg !6490
  store ptr %1, ptr %dev, align 8, !dbg !6488
  call void @llvm.lifetime.start.p0(i64 8, ptr %prop) #14, !dbg !6491
  call void @llvm.dbg.declare(metadata ptr %prop, metadata !5938, metadata !DIExpression()), !dbg !6492
  call void @llvm.lifetime.start.p0(i64 4, ptr %valid_mode_mask) #14, !dbg !6493
  call void @llvm.dbg.declare(metadata ptr %valid_mode_mask, metadata !5939, metadata !DIExpression()), !dbg !6494
  store i32 7, ptr %valid_mode_mask, align 4, !dbg !6494
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !6495
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5940, metadata !DIExpression()), !dbg !6496
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6497
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5941, metadata !DIExpression()), !dbg !6497
  %2 = load i32, ptr %supported_modes.addr, align 4, !dbg !6497
  %3 = load i32, ptr %valid_mode_mask, align 4, !dbg !6497
  %not = xor i32 %3, -1, !dbg !6497
  %and = and i32 %2, %not, !dbg !6497
  %tobool = icmp ne i32 %and, 0, !dbg !6497
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !6497

lor.rhs:                                          ; preds = %entry
  %4 = load i32, ptr %supported_modes.addr, align 4, !dbg !6497
  %conv = zext i32 %4 to i64, !dbg !6497
  %and2 = and i64 %conv, 1, !dbg !6497
  %cmp = icmp eq i64 %and2, 0, !dbg !6497
  br label %lor.end, !dbg !6497

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %cmp, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !6497
  %lnot4 = xor i1 %lnot, true, !dbg !6497
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6497
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6497
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !6498
  %tobool5 = icmp ne i32 %6, 0, !dbg !6498
  %lnot6 = xor i1 %tobool5, true, !dbg !6498
  %lnot8 = xor i1 %lnot6, true, !dbg !6498
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !6498
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !6498
  %expval = call i64 @llvm.expect.i64(i64 %conv10, i64 0), !dbg !6498
  %tobool11 = icmp ne i64 %expval, 0, !dbg !6498
  br i1 %tobool11, label %if.then, label %if.end, !dbg !6497

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !6498

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !6499
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5944, metadata !DIExpression()), !dbg !6499
  store i32 2305, ptr %__flags, align 4, !dbg !6499
  br label %do.body12, !dbg !6499

do.body12:                                        ; preds = %do.body
  br label %do.cond, !dbg !6500

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !6500

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !6499

do.body13:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !6502
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.7, i32 587, i32 %7, i64 12) #14, !dbg !6502, !srcloc !6504
  br label %do.cond14, !dbg !6502

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !6502

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !6499

do.body16:                                        ; preds = %do.end15
  br label %do.cond17, !dbg !6505

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !6505

do.end18:                                         ; preds = %do.cond17
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !6498
  br label %do.cond19, !dbg !6499

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !6499

do.end20:                                         ; preds = %do.cond19
  br label %if.end, !dbg !6499

if.end:                                           ; preds = %do.end20, %lor.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !6497
  %tobool21 = icmp ne i32 %8, 0, !dbg !6497
  %lnot22 = xor i1 %tobool21, true, !dbg !6497
  %lnot24 = xor i1 %lnot22, true, !dbg !6497
  %lnot.ext25 = zext i1 %lnot24 to i32, !dbg !6497
  %conv26 = sext i32 %lnot.ext25 to i64, !dbg !6497
  %expval27 = call i64 @llvm.expect.i64(i64 %conv26, i64 0), !dbg !6497
  store i64 %expval27, ptr %tmp, align 8, !dbg !6498
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !6507
  %9 = load i64, ptr %tmp, align 8, !dbg !6497
  %tobool28 = icmp ne i64 %9, 0, !dbg !6507
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !6508

if.then29:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !6509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup338, !dbg !6509

if.end30:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev, align 8, !dbg !6510
  %11 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %12 = call i1 @llvm.is.constant.i32(i32 %11), !dbg !6511
  br i1 %12, label %cond.true, label %cond.false, !dbg !6511

cond.true:                                        ; preds = %if.end30
  %13 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv31 = zext i32 %13 to i64, !dbg !6511
  %and32 = and i64 %conv31, 1, !dbg !6511
  %tobool33 = icmp ne i64 %and32, 0, !dbg !6511
  %lnot34 = xor i1 %tobool33, true, !dbg !6511
  %lnot36 = xor i1 %lnot34, true, !dbg !6511
  %lnot.ext37 = zext i1 %lnot36 to i32, !dbg !6511
  %14 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv38 = zext i32 %14 to i64, !dbg !6511
  %and39 = and i64 %conv38, 2, !dbg !6511
  %tobool40 = icmp ne i64 %and39, 0, !dbg !6511
  %lnot41 = xor i1 %tobool40, true, !dbg !6511
  %lnot43 = xor i1 %lnot41, true, !dbg !6511
  %lnot.ext44 = zext i1 %lnot43 to i32, !dbg !6511
  %add = add i32 %lnot.ext37, %lnot.ext44, !dbg !6511
  %15 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv45 = zext i32 %15 to i64, !dbg !6511
  %and46 = and i64 %conv45, 4, !dbg !6511
  %tobool47 = icmp ne i64 %and46, 0, !dbg !6511
  %lnot48 = xor i1 %tobool47, true, !dbg !6511
  %lnot50 = xor i1 %lnot48, true, !dbg !6511
  %lnot.ext51 = zext i1 %lnot50 to i32, !dbg !6511
  %add52 = add i32 %add, %lnot.ext51, !dbg !6511
  %16 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv53 = zext i32 %16 to i64, !dbg !6511
  %and54 = and i64 %conv53, 8, !dbg !6511
  %tobool55 = icmp ne i64 %and54, 0, !dbg !6511
  %lnot56 = xor i1 %tobool55, true, !dbg !6511
  %lnot58 = xor i1 %lnot56, true, !dbg !6511
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !6511
  %add60 = add i32 %add52, %lnot.ext59, !dbg !6511
  %17 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv61 = zext i32 %17 to i64, !dbg !6511
  %and62 = and i64 %conv61, 16, !dbg !6511
  %tobool63 = icmp ne i64 %and62, 0, !dbg !6511
  %lnot64 = xor i1 %tobool63, true, !dbg !6511
  %lnot66 = xor i1 %lnot64, true, !dbg !6511
  %lnot.ext67 = zext i1 %lnot66 to i32, !dbg !6511
  %add68 = add i32 %add60, %lnot.ext67, !dbg !6511
  %18 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv69 = zext i32 %18 to i64, !dbg !6511
  %and70 = and i64 %conv69, 32, !dbg !6511
  %tobool71 = icmp ne i64 %and70, 0, !dbg !6511
  %lnot72 = xor i1 %tobool71, true, !dbg !6511
  %lnot74 = xor i1 %lnot72, true, !dbg !6511
  %lnot.ext75 = zext i1 %lnot74 to i32, !dbg !6511
  %add76 = add i32 %add68, %lnot.ext75, !dbg !6511
  %19 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv77 = zext i32 %19 to i64, !dbg !6511
  %and78 = and i64 %conv77, 64, !dbg !6511
  %tobool79 = icmp ne i64 %and78, 0, !dbg !6511
  %lnot80 = xor i1 %tobool79, true, !dbg !6511
  %lnot82 = xor i1 %lnot80, true, !dbg !6511
  %lnot.ext83 = zext i1 %lnot82 to i32, !dbg !6511
  %add84 = add i32 %add76, %lnot.ext83, !dbg !6511
  %20 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %conv85 = zext i32 %20 to i64, !dbg !6511
  %and86 = and i64 %conv85, 128, !dbg !6511
  %tobool87 = icmp ne i64 %and86, 0, !dbg !6511
  %lnot88 = xor i1 %tobool87, true, !dbg !6511
  %lnot90 = xor i1 %lnot88, true, !dbg !6511
  %lnot.ext91 = zext i1 %lnot90 to i32, !dbg !6511
  %add92 = add i32 %add84, %lnot.ext91, !dbg !6511
  %21 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr = lshr i32 %21, 8, !dbg !6511
  %conv93 = zext i32 %shr to i64, !dbg !6511
  %and94 = and i64 %conv93, 1, !dbg !6511
  %tobool95 = icmp ne i64 %and94, 0, !dbg !6511
  %lnot96 = xor i1 %tobool95, true, !dbg !6511
  %lnot98 = xor i1 %lnot96, true, !dbg !6511
  %lnot.ext99 = zext i1 %lnot98 to i32, !dbg !6511
  %22 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr100 = lshr i32 %22, 8, !dbg !6511
  %conv101 = zext i32 %shr100 to i64, !dbg !6511
  %and102 = and i64 %conv101, 2, !dbg !6511
  %tobool103 = icmp ne i64 %and102, 0, !dbg !6511
  %lnot104 = xor i1 %tobool103, true, !dbg !6511
  %lnot106 = xor i1 %lnot104, true, !dbg !6511
  %lnot.ext107 = zext i1 %lnot106 to i32, !dbg !6511
  %add108 = add i32 %lnot.ext99, %lnot.ext107, !dbg !6511
  %23 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr109 = lshr i32 %23, 8, !dbg !6511
  %conv110 = zext i32 %shr109 to i64, !dbg !6511
  %and111 = and i64 %conv110, 4, !dbg !6511
  %tobool112 = icmp ne i64 %and111, 0, !dbg !6511
  %lnot113 = xor i1 %tobool112, true, !dbg !6511
  %lnot115 = xor i1 %lnot113, true, !dbg !6511
  %lnot.ext116 = zext i1 %lnot115 to i32, !dbg !6511
  %add117 = add i32 %add108, %lnot.ext116, !dbg !6511
  %24 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr118 = lshr i32 %24, 8, !dbg !6511
  %conv119 = zext i32 %shr118 to i64, !dbg !6511
  %and120 = and i64 %conv119, 8, !dbg !6511
  %tobool121 = icmp ne i64 %and120, 0, !dbg !6511
  %lnot122 = xor i1 %tobool121, true, !dbg !6511
  %lnot124 = xor i1 %lnot122, true, !dbg !6511
  %lnot.ext125 = zext i1 %lnot124 to i32, !dbg !6511
  %add126 = add i32 %add117, %lnot.ext125, !dbg !6511
  %25 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr127 = lshr i32 %25, 8, !dbg !6511
  %conv128 = zext i32 %shr127 to i64, !dbg !6511
  %and129 = and i64 %conv128, 16, !dbg !6511
  %tobool130 = icmp ne i64 %and129, 0, !dbg !6511
  %lnot131 = xor i1 %tobool130, true, !dbg !6511
  %lnot133 = xor i1 %lnot131, true, !dbg !6511
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !6511
  %add135 = add i32 %add126, %lnot.ext134, !dbg !6511
  %26 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr136 = lshr i32 %26, 8, !dbg !6511
  %conv137 = zext i32 %shr136 to i64, !dbg !6511
  %and138 = and i64 %conv137, 32, !dbg !6511
  %tobool139 = icmp ne i64 %and138, 0, !dbg !6511
  %lnot140 = xor i1 %tobool139, true, !dbg !6511
  %lnot142 = xor i1 %lnot140, true, !dbg !6511
  %lnot.ext143 = zext i1 %lnot142 to i32, !dbg !6511
  %add144 = add i32 %add135, %lnot.ext143, !dbg !6511
  %27 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr145 = lshr i32 %27, 8, !dbg !6511
  %conv146 = zext i32 %shr145 to i64, !dbg !6511
  %and147 = and i64 %conv146, 64, !dbg !6511
  %tobool148 = icmp ne i64 %and147, 0, !dbg !6511
  %lnot149 = xor i1 %tobool148, true, !dbg !6511
  %lnot151 = xor i1 %lnot149, true, !dbg !6511
  %lnot.ext152 = zext i1 %lnot151 to i32, !dbg !6511
  %add153 = add i32 %add144, %lnot.ext152, !dbg !6511
  %28 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr154 = lshr i32 %28, 8, !dbg !6511
  %conv155 = zext i32 %shr154 to i64, !dbg !6511
  %and156 = and i64 %conv155, 128, !dbg !6511
  %tobool157 = icmp ne i64 %and156, 0, !dbg !6511
  %lnot158 = xor i1 %tobool157, true, !dbg !6511
  %lnot160 = xor i1 %lnot158, true, !dbg !6511
  %lnot.ext161 = zext i1 %lnot160 to i32, !dbg !6511
  %add162 = add i32 %add153, %lnot.ext161, !dbg !6511
  %add163 = add i32 %add92, %add162, !dbg !6511
  %29 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr164 = lshr i32 %29, 16, !dbg !6511
  %conv165 = zext i32 %shr164 to i64, !dbg !6511
  %and166 = and i64 %conv165, 1, !dbg !6511
  %tobool167 = icmp ne i64 %and166, 0, !dbg !6511
  %lnot168 = xor i1 %tobool167, true, !dbg !6511
  %lnot170 = xor i1 %lnot168, true, !dbg !6511
  %lnot.ext171 = zext i1 %lnot170 to i32, !dbg !6511
  %30 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr172 = lshr i32 %30, 16, !dbg !6511
  %conv173 = zext i32 %shr172 to i64, !dbg !6511
  %and174 = and i64 %conv173, 2, !dbg !6511
  %tobool175 = icmp ne i64 %and174, 0, !dbg !6511
  %lnot176 = xor i1 %tobool175, true, !dbg !6511
  %lnot178 = xor i1 %lnot176, true, !dbg !6511
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !6511
  %add180 = add i32 %lnot.ext171, %lnot.ext179, !dbg !6511
  %31 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr181 = lshr i32 %31, 16, !dbg !6511
  %conv182 = zext i32 %shr181 to i64, !dbg !6511
  %and183 = and i64 %conv182, 4, !dbg !6511
  %tobool184 = icmp ne i64 %and183, 0, !dbg !6511
  %lnot185 = xor i1 %tobool184, true, !dbg !6511
  %lnot187 = xor i1 %lnot185, true, !dbg !6511
  %lnot.ext188 = zext i1 %lnot187 to i32, !dbg !6511
  %add189 = add i32 %add180, %lnot.ext188, !dbg !6511
  %32 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr190 = lshr i32 %32, 16, !dbg !6511
  %conv191 = zext i32 %shr190 to i64, !dbg !6511
  %and192 = and i64 %conv191, 8, !dbg !6511
  %tobool193 = icmp ne i64 %and192, 0, !dbg !6511
  %lnot194 = xor i1 %tobool193, true, !dbg !6511
  %lnot196 = xor i1 %lnot194, true, !dbg !6511
  %lnot.ext197 = zext i1 %lnot196 to i32, !dbg !6511
  %add198 = add i32 %add189, %lnot.ext197, !dbg !6511
  %33 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr199 = lshr i32 %33, 16, !dbg !6511
  %conv200 = zext i32 %shr199 to i64, !dbg !6511
  %and201 = and i64 %conv200, 16, !dbg !6511
  %tobool202 = icmp ne i64 %and201, 0, !dbg !6511
  %lnot203 = xor i1 %tobool202, true, !dbg !6511
  %lnot205 = xor i1 %lnot203, true, !dbg !6511
  %lnot.ext206 = zext i1 %lnot205 to i32, !dbg !6511
  %add207 = add i32 %add198, %lnot.ext206, !dbg !6511
  %34 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr208 = lshr i32 %34, 16, !dbg !6511
  %conv209 = zext i32 %shr208 to i64, !dbg !6511
  %and210 = and i64 %conv209, 32, !dbg !6511
  %tobool211 = icmp ne i64 %and210, 0, !dbg !6511
  %lnot212 = xor i1 %tobool211, true, !dbg !6511
  %lnot214 = xor i1 %lnot212, true, !dbg !6511
  %lnot.ext215 = zext i1 %lnot214 to i32, !dbg !6511
  %add216 = add i32 %add207, %lnot.ext215, !dbg !6511
  %35 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr217 = lshr i32 %35, 16, !dbg !6511
  %conv218 = zext i32 %shr217 to i64, !dbg !6511
  %and219 = and i64 %conv218, 64, !dbg !6511
  %tobool220 = icmp ne i64 %and219, 0, !dbg !6511
  %lnot221 = xor i1 %tobool220, true, !dbg !6511
  %lnot223 = xor i1 %lnot221, true, !dbg !6511
  %lnot.ext224 = zext i1 %lnot223 to i32, !dbg !6511
  %add225 = add i32 %add216, %lnot.ext224, !dbg !6511
  %36 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr226 = lshr i32 %36, 16, !dbg !6511
  %conv227 = zext i32 %shr226 to i64, !dbg !6511
  %and228 = and i64 %conv227, 128, !dbg !6511
  %tobool229 = icmp ne i64 %and228, 0, !dbg !6511
  %lnot230 = xor i1 %tobool229, true, !dbg !6511
  %lnot232 = xor i1 %lnot230, true, !dbg !6511
  %lnot.ext233 = zext i1 %lnot232 to i32, !dbg !6511
  %add234 = add i32 %add225, %lnot.ext233, !dbg !6511
  %37 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr235 = lshr i32 %37, 16, !dbg !6511
  %shr236 = lshr i32 %shr235, 8, !dbg !6511
  %conv237 = zext i32 %shr236 to i64, !dbg !6511
  %and238 = and i64 %conv237, 1, !dbg !6511
  %tobool239 = icmp ne i64 %and238, 0, !dbg !6511
  %lnot240 = xor i1 %tobool239, true, !dbg !6511
  %lnot242 = xor i1 %lnot240, true, !dbg !6511
  %lnot.ext243 = zext i1 %lnot242 to i32, !dbg !6511
  %38 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr244 = lshr i32 %38, 16, !dbg !6511
  %shr245 = lshr i32 %shr244, 8, !dbg !6511
  %conv246 = zext i32 %shr245 to i64, !dbg !6511
  %and247 = and i64 %conv246, 2, !dbg !6511
  %tobool248 = icmp ne i64 %and247, 0, !dbg !6511
  %lnot249 = xor i1 %tobool248, true, !dbg !6511
  %lnot251 = xor i1 %lnot249, true, !dbg !6511
  %lnot.ext252 = zext i1 %lnot251 to i32, !dbg !6511
  %add253 = add i32 %lnot.ext243, %lnot.ext252, !dbg !6511
  %39 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr254 = lshr i32 %39, 16, !dbg !6511
  %shr255 = lshr i32 %shr254, 8, !dbg !6511
  %conv256 = zext i32 %shr255 to i64, !dbg !6511
  %and257 = and i64 %conv256, 4, !dbg !6511
  %tobool258 = icmp ne i64 %and257, 0, !dbg !6511
  %lnot259 = xor i1 %tobool258, true, !dbg !6511
  %lnot261 = xor i1 %lnot259, true, !dbg !6511
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !6511
  %add263 = add i32 %add253, %lnot.ext262, !dbg !6511
  %40 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr264 = lshr i32 %40, 16, !dbg !6511
  %shr265 = lshr i32 %shr264, 8, !dbg !6511
  %conv266 = zext i32 %shr265 to i64, !dbg !6511
  %and267 = and i64 %conv266, 8, !dbg !6511
  %tobool268 = icmp ne i64 %and267, 0, !dbg !6511
  %lnot269 = xor i1 %tobool268, true, !dbg !6511
  %lnot271 = xor i1 %lnot269, true, !dbg !6511
  %lnot.ext272 = zext i1 %lnot271 to i32, !dbg !6511
  %add273 = add i32 %add263, %lnot.ext272, !dbg !6511
  %41 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr274 = lshr i32 %41, 16, !dbg !6511
  %shr275 = lshr i32 %shr274, 8, !dbg !6511
  %conv276 = zext i32 %shr275 to i64, !dbg !6511
  %and277 = and i64 %conv276, 16, !dbg !6511
  %tobool278 = icmp ne i64 %and277, 0, !dbg !6511
  %lnot279 = xor i1 %tobool278, true, !dbg !6511
  %lnot281 = xor i1 %lnot279, true, !dbg !6511
  %lnot.ext282 = zext i1 %lnot281 to i32, !dbg !6511
  %add283 = add i32 %add273, %lnot.ext282, !dbg !6511
  %42 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr284 = lshr i32 %42, 16, !dbg !6511
  %shr285 = lshr i32 %shr284, 8, !dbg !6511
  %conv286 = zext i32 %shr285 to i64, !dbg !6511
  %and287 = and i64 %conv286, 32, !dbg !6511
  %tobool288 = icmp ne i64 %and287, 0, !dbg !6511
  %lnot289 = xor i1 %tobool288, true, !dbg !6511
  %lnot291 = xor i1 %lnot289, true, !dbg !6511
  %lnot.ext292 = zext i1 %lnot291 to i32, !dbg !6511
  %add293 = add i32 %add283, %lnot.ext292, !dbg !6511
  %43 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr294 = lshr i32 %43, 16, !dbg !6511
  %shr295 = lshr i32 %shr294, 8, !dbg !6511
  %conv296 = zext i32 %shr295 to i64, !dbg !6511
  %and297 = and i64 %conv296, 64, !dbg !6511
  %tobool298 = icmp ne i64 %and297, 0, !dbg !6511
  %lnot299 = xor i1 %tobool298, true, !dbg !6511
  %lnot301 = xor i1 %lnot299, true, !dbg !6511
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !6511
  %add303 = add i32 %add293, %lnot.ext302, !dbg !6511
  %44 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %shr304 = lshr i32 %44, 16, !dbg !6511
  %shr305 = lshr i32 %shr304, 8, !dbg !6511
  %conv306 = zext i32 %shr305 to i64, !dbg !6511
  %and307 = and i64 %conv306, 128, !dbg !6511
  %tobool308 = icmp ne i64 %and307, 0, !dbg !6511
  %lnot309 = xor i1 %tobool308, true, !dbg !6511
  %lnot311 = xor i1 %lnot309, true, !dbg !6511
  %lnot.ext312 = zext i1 %lnot311 to i32, !dbg !6511
  %add313 = add i32 %add303, %lnot.ext312, !dbg !6511
  %add314 = add i32 %add234, %add313, !dbg !6511
  %add315 = add i32 %add163, %add314, !dbg !6511
  br label %cond.end, !dbg !6511

cond.false:                                       ; preds = %if.end30
  %45 = load i32, ptr %supported_modes.addr, align 4, !dbg !6511
  %call = call i32 @__arch_hweight32(i32 noundef %45) #15, !dbg !6511
  br label %cond.end, !dbg !6511

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add315, %cond.true ], [ %call, %cond.false ], !dbg !6511
  %call316 = call ptr @drm_property_create(ptr noundef %10, i32 noundef 8, ptr noundef @.str.13, i32 noundef %cond) #15, !dbg !6512
  store ptr %call316, ptr %prop, align 8, !dbg !6513
  %46 = load ptr, ptr %prop, align 8, !dbg !6514
  %tobool317 = icmp ne ptr %46, null, !dbg !6514
  br i1 %tobool317, label %if.end319, label %if.then318, !dbg !6516

if.then318:                                       ; preds = %cond.end
  store i32 -12, ptr %retval, align 4, !dbg !6517
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup338, !dbg !6517

if.end319:                                        ; preds = %cond.end
  store i32 0, ptr %i, align 4, !dbg !6518
  br label %for.cond, !dbg !6519

for.cond:                                         ; preds = %for.inc, %if.end319
  %47 = load i32, ptr %i, align 4, !dbg !6520
  %conv320 = sext i32 %47 to i64, !dbg !6520
  %cmp321 = icmp ult i64 %conv320, 3, !dbg !6521
  br i1 %cmp321, label %for.body, label %for.end, !dbg !6522

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !6523
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5947, metadata !DIExpression()), !dbg !6524
  %48 = load i32, ptr %i, align 4, !dbg !6525
  %idxprom = sext i32 %48 to i64, !dbg !6525
  %arrayidx = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom, !dbg !6525
  %type = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx, i32 0, i32 0, !dbg !6525
  %49 = load i32, ptr %type, align 16, !dbg !6525
  %sh_prom = zext i32 %49 to i64, !dbg !6525
  %shl = shl i64 1, %sh_prom, !dbg !6525
  %50 = load i32, ptr %supported_modes.addr, align 4, !dbg !6527
  %conv323 = zext i32 %50 to i64, !dbg !6527
  %and324 = and i64 %shl, %conv323, !dbg !6528
  %tobool325 = icmp ne i64 %and324, 0, !dbg !6528
  br i1 %tobool325, label %if.end327, label %if.then326, !dbg !6529

if.then326:                                       ; preds = %for.body
  store i32 12, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6530

if.end327:                                        ; preds = %for.body
  %51 = load ptr, ptr %prop, align 8, !dbg !6531
  %52 = load i32, ptr %i, align 4, !dbg !6532
  %idxprom328 = sext i32 %52 to i64, !dbg !6533
  %arrayidx329 = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom328, !dbg !6533
  %type330 = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx329, i32 0, i32 0, !dbg !6534
  %53 = load i32, ptr %type330, align 16, !dbg !6534
  %conv331 = sext i32 %53 to i64, !dbg !6533
  %54 = load i32, ptr %i, align 4, !dbg !6535
  %idxprom332 = sext i32 %54 to i64, !dbg !6536
  %arrayidx333 = getelementptr [3 x %struct.drm_prop_enum_list], ptr @drm_plane_create_blend_mode_property.props, i64 0, i64 %idxprom332, !dbg !6536
  %name = getelementptr inbounds %struct.drm_prop_enum_list, ptr %arrayidx333, i32 0, i32 1, !dbg !6537
  %55 = load ptr, ptr %name, align 8, !dbg !6537
  %call334 = call i32 @drm_property_add_enum(ptr noundef %51, i64 noundef %conv331, ptr noundef %55) #15, !dbg !6538
  store i32 %call334, ptr %ret, align 4, !dbg !6539
  %56 = load i32, ptr %ret, align 4, !dbg !6540
  %tobool335 = icmp ne i32 %56, 0, !dbg !6540
  br i1 %tobool335, label %if.then336, label %if.end337, !dbg !6542

if.then336:                                       ; preds = %if.end327
  %57 = load ptr, ptr %dev, align 8, !dbg !6543
  %58 = load ptr, ptr %prop, align 8, !dbg !6545
  call void @drm_property_destroy(ptr noundef %57, ptr noundef %58) #15, !dbg !6546
  %59 = load i32, ptr %ret, align 4, !dbg !6547
  store i32 %59, ptr %retval, align 4, !dbg !6548
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6548

if.end337:                                        ; preds = %if.end327
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6549
  br label %cleanup, !dbg !6549

cleanup:                                          ; preds = %if.end337, %if.then336, %if.then326
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !6549
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup338 [
    i32 0, label %cleanup.cont
    i32 12, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6550

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %60 = load i32, ptr %i, align 4, !dbg !6551
  %inc = add i32 %60, 1, !dbg !6551
  store i32 %inc, ptr %i, align 4, !dbg !6551
  br label %for.cond, !dbg !6552, !llvm.loop !6553

for.end:                                          ; preds = %for.cond
  %61 = load ptr, ptr %plane.addr, align 8, !dbg !6555
  %base = getelementptr inbounds %struct.drm_plane, ptr %61, i32 0, i32 4, !dbg !6556
  %62 = load ptr, ptr %prop, align 8, !dbg !6557
  call void @drm_object_attach_property(ptr noundef %base, ptr noundef %62, i64 noundef 0) #15, !dbg !6558
  %63 = load ptr, ptr %prop, align 8, !dbg !6559
  %64 = load ptr, ptr %plane.addr, align 8, !dbg !6560
  %blend_mode_property = getelementptr inbounds %struct.drm_plane, ptr %64, i32 0, i32 23, !dbg !6561
  store ptr %63, ptr %blend_mode_property, align 8, !dbg !6562
  store i32 0, ptr %retval, align 4, !dbg !6563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup338, !dbg !6563

cleanup338:                                       ; preds = %for.end, %cleanup, %if.then318, %if.then29
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 4, ptr %valid_mode_mask) #14, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 8, ptr %prop) #14, !dbg !6564
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !6564
  %65 = load i32, ptr %retval, align 4, !dbg !6564
  ret i32 %65, !dbg !6564
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6565 dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__arch_hweight32(i32 noundef %w) #7 align 16 !dbg !6568 {
entry:
  %w.addr = alloca i32, align 4
  %res = alloca i32, align 4
  store i32 %w, ptr %w.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !6573, metadata !DIExpression()), !dbg !6575
  call void @llvm.lifetime.start.p0(i64 4, ptr %res) #14, !dbg !6576
  call void @llvm.dbg.declare(metadata ptr %res, metadata !6574, metadata !DIExpression()), !dbg !6577
  %0 = load i32, ptr %w.addr, align 4, !dbg !6578
  %1 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %0) #19, !dbg !6579, !srcloc !6580
  store i32 %1, ptr %res, align 4, !dbg !6579
  %2 = load i32, ptr %res, align 4, !dbg !6581
  call void @llvm.lifetime.end.p0(i64 4, ptr %res) #14, !dbg !6582
  ret i32 %2, !dbg !6583
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6584 dso_local i32 @drm_property_add_enum(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6587 dso_local void @drm_property_destroy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_crtc_index(ptr noundef %crtc) #8 align 16 !dbg !6590 {
entry:
  %crtc.addr = alloca ptr, align 8
  store ptr %crtc, ptr %crtc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %crtc.addr, metadata !6596, metadata !DIExpression()), !dbg !6597
  %0 = load ptr, ptr %crtc.addr, align 8, !dbg !6598
  %index = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8, !dbg !6599
  %1 = load i32, ptr %index, align 8, !dbg !6599
  ret i32 %1, !dbg !6600
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6601 dso_local void @__drm_dev_dbg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6637 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !6641, metadata !DIExpression()), !dbg !6645
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6642, metadata !DIExpression()), !dbg !6646
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6643, metadata !DIExpression()), !dbg !6647
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #14, !dbg !6648
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !6644, metadata !DIExpression()), !dbg !6649
  %0 = load i64, ptr %n.addr, align 8, !dbg !6650
  %1 = load i64, ptr %size.addr, align 8, !dbg !6650
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !6650
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !6650
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !6650
  store i64 %4, ptr %bytes, align 8, !dbg !6650
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !6650
  %lnot = xor i1 %call, true, !dbg !6650
  %lnot1 = xor i1 %lnot, true, !dbg !6650
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6650
  %conv = sext i32 %lnot.ext to i64, !dbg !6650
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6650
  %tobool = icmp ne i64 %expval, 0, !dbg !6650
  br i1 %tobool, label %if.then, label %if.end, !dbg !6652

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !6653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6653

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !6654
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !6656
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !6657

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !6658
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !6659
  br i1 %8, label %if.then2, label %if.end4, !dbg !6660

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !6661
  %10 = load i32, ptr %flags.addr, align 4, !dbg !6662
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #20, !dbg !6663
  store ptr %call3, ptr %retval, align 8, !dbg !6664
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6664

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !6665
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6666
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #20, !dbg !6667
  store ptr %call5, ptr %retval, align 8, !dbg !6668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6668

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #14, !dbg !6669
  %13 = load ptr, ptr %retval, align 8, !dbg !6669
  ret ptr %13, !dbg !6669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_plane_mask(ptr noundef %plane) #8 align 16 !dbg !6670 {
entry:
  %plane.addr = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6676, metadata !DIExpression()), !dbg !6677
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6678
  %call = call i32 @drm_plane_index(ptr noundef %0) #15, !dbg !6679
  %shl = shl i32 1, %call, !dbg !6680
  ret i32 %shl, !dbg !6681
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6682 dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #8 align 16 !dbg !6685 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6690, metadata !DIExpression()), !dbg !6691
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6692
  %1 = ptrtoint ptr %0 to i64, !dbg !6692
  %2 = inttoptr i64 %1 to ptr, !dbg !6692
  %3 = ptrtoint ptr %2 to i64, !dbg !6692
  %cmp = icmp uge i64 %3, -4095, !dbg !6692
  %lnot = xor i1 %cmp, true, !dbg !6692
  %lnot1 = xor i1 %lnot, true, !dbg !6692
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6692
  %conv = sext i32 %lnot.ext to i64, !dbg !6692
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6692
  %tobool = icmp ne i64 %expval, 0, !dbg !6692
  ret i1 %tobool, !dbg !6693
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #8 align 16 !dbg !6694 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !6698, metadata !DIExpression()), !dbg !6699
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !6700
  %1 = ptrtoint ptr %0 to i64, !dbg !6701
  ret i64 %1, !dbg !6702
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6703 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_atomic_state_zpos_cmp(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !6715 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %sa = alloca ptr, align 8
  %sb = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !6717, metadata !DIExpression()), !dbg !6721
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !6718, metadata !DIExpression()), !dbg !6722
  call void @llvm.lifetime.start.p0(i64 8, ptr %sa) #14, !dbg !6723
  call void @llvm.dbg.declare(metadata ptr %sa, metadata !6719, metadata !DIExpression()), !dbg !6724
  %0 = load ptr, ptr %a.addr, align 8, !dbg !6725
  %1 = load ptr, ptr %0, align 8, !dbg !6726
  store ptr %1, ptr %sa, align 8, !dbg !6724
  call void @llvm.lifetime.start.p0(i64 8, ptr %sb) #14, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %sb, metadata !6720, metadata !DIExpression()), !dbg !6728
  %2 = load ptr, ptr %b.addr, align 8, !dbg !6729
  %3 = load ptr, ptr %2, align 8, !dbg !6730
  store ptr %3, ptr %sb, align 8, !dbg !6728
  %4 = load ptr, ptr %sa, align 8, !dbg !6731
  %zpos = getelementptr inbounds %struct.drm_plane_state, ptr %4, i32 0, i32 15, !dbg !6733
  %5 = load i32, ptr %zpos, align 8, !dbg !6733
  %6 = load ptr, ptr %sb, align 8, !dbg !6734
  %zpos1 = getelementptr inbounds %struct.drm_plane_state, ptr %6, i32 0, i32 15, !dbg !6735
  %7 = load i32, ptr %zpos1, align 8, !dbg !6735
  %cmp = icmp ne i32 %5, %7, !dbg !6736
  br i1 %cmp, label %if.then, label %if.else, !dbg !6737

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr %sa, align 8, !dbg !6738
  %zpos2 = getelementptr inbounds %struct.drm_plane_state, ptr %8, i32 0, i32 15, !dbg !6739
  %9 = load i32, ptr %zpos2, align 8, !dbg !6739
  %10 = load ptr, ptr %sb, align 8, !dbg !6740
  %zpos3 = getelementptr inbounds %struct.drm_plane_state, ptr %10, i32 0, i32 15, !dbg !6741
  %11 = load i32, ptr %zpos3, align 8, !dbg !6741
  %sub = sub i32 %9, %11, !dbg !6742
  store i32 %sub, ptr %retval, align 4, !dbg !6743
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6743

if.else:                                          ; preds = %entry
  %12 = load ptr, ptr %sa, align 8, !dbg !6744
  %plane = getelementptr inbounds %struct.drm_plane_state, ptr %12, i32 0, i32 0, !dbg !6745
  %13 = load ptr, ptr %plane, align 8, !dbg !6745
  %base = getelementptr inbounds %struct.drm_plane, ptr %13, i32 0, i32 4, !dbg !6746
  %id = getelementptr inbounds %struct.drm_mode_object, ptr %base, i32 0, i32 0, !dbg !6747
  %14 = load i32, ptr %id, align 8, !dbg !6747
  %15 = load ptr, ptr %sb, align 8, !dbg !6748
  %plane4 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 0, !dbg !6749
  %16 = load ptr, ptr %plane4, align 8, !dbg !6749
  %base5 = getelementptr inbounds %struct.drm_plane, ptr %16, i32 0, i32 4, !dbg !6750
  %id6 = getelementptr inbounds %struct.drm_mode_object, ptr %base5, i32 0, i32 0, !dbg !6751
  %17 = load i32, ptr %id6, align 8, !dbg !6751
  %sub7 = sub i32 %14, %17, !dbg !6752
  store i32 %sub7, ptr %retval, align 4, !dbg !6753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6753

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %sb) #14, !dbg !6754
  call void @llvm.lifetime.end.p0(i64 8, ptr %sa) #14, !dbg !6754
  %18 = load i32, ptr %retval, align 4, !dbg !6754
  ret i32 %18, !dbg !6754
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6755 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #8 align 16 !dbg !6758 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !6763, metadata !DIExpression()), !dbg !6764
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !6765, !range !6766, !noundef !1091
  %tobool = trunc i8 %0 to i1, !dbg !6765
  %lnot = xor i1 %tobool, true, !dbg !6765
  %lnot1 = xor i1 %lnot, true, !dbg !6765
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6765
  %conv = sext i32 %lnot.ext to i64, !dbg !6765
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6765
  %tobool2 = icmp ne i64 %expval, 0, !dbg !6765
  ret i1 %tobool2, !dbg !6767
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !6768 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6772, metadata !DIExpression()), !dbg !6777
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6773, metadata !DIExpression()), !dbg !6778
  %0 = load i64, ptr %size.addr, align 8, !dbg !6779
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6780
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6781

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6782
  %tobool = icmp ne i64 %2, 0, !dbg !6782
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6783

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6774, metadata !DIExpression()), !dbg !6785
  %3 = load i64, ptr %size.addr, align 8, !dbg !6786
  %cmp = icmp ugt i64 %3, 8192, !dbg !6788
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6789

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6790
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6791
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #20, !dbg !6792
  store ptr %call, ptr %retval, align 8, !dbg !6793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6793

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6794
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !6794
  store i32 %call2, ptr %index, align 4, !dbg !6795
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6796
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6797
  %9 = ptrtoint ptr %8 to i64, !dbg !6797
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !6798
  %idxprom = zext i32 %call3 to i64, !dbg !6799
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6799
  %10 = load i32, ptr %index, align 4, !dbg !6800
  %idxprom4 = zext i32 %10 to i64, !dbg !6799
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6799
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6799
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6801
  %13 = load i64, ptr %size.addr, align 8, !dbg !6802
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #21, !dbg !6803
  store ptr %call6, ptr %retval, align 8, !dbg !6804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6804

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !6805
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6806
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6807
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #20, !dbg !6808
  store ptr %call8, ptr %retval, align 8, !dbg !6809
  br label %return, !dbg !6809

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6810
  ret ptr %16, !dbg !6810
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6811 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6812 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #7 align 16 !dbg !6813 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6817, metadata !DIExpression()), !dbg !6819
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6818, metadata !DIExpression()), !dbg !6820
  %0 = load i64, ptr %size.addr, align 8, !dbg !6821
  %tobool = icmp ne i64 %0, 0, !dbg !6821
  br i1 %tobool, label %if.end, label %if.then, !dbg !6823

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6824
  br label %return, !dbg !6824

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6825
  %cmp = icmp ule i64 %1, 8, !dbg !6827
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6828

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6829
  br label %return, !dbg !6829

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6830
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6832
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6833

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6834
  %cmp4 = icmp ule i64 %3, 96, !dbg !6835
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6836

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6837
  br label %return, !dbg !6837

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6838
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6840
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6841

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6842
  %cmp9 = icmp ule i64 %5, 192, !dbg !6843
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6844

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6845
  br label %return, !dbg !6845

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6846
  %cmp12 = icmp ule i64 %6, 8, !dbg !6848
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6849

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6850
  br label %return, !dbg !6850

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6851
  %cmp15 = icmp ule i64 %7, 16, !dbg !6853
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6854

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6855
  br label %return, !dbg !6855

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6856
  %cmp18 = icmp ule i64 %8, 32, !dbg !6858
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6859

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6860
  br label %return, !dbg !6860

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6861
  %cmp21 = icmp ule i64 %9, 64, !dbg !6863
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6864

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6865
  br label %return, !dbg !6865

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6866
  %cmp24 = icmp ule i64 %10, 128, !dbg !6868
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6869

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6870
  br label %return, !dbg !6870

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6871
  %cmp27 = icmp ule i64 %11, 256, !dbg !6873
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6874

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6875
  br label %return, !dbg !6875

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6876
  %cmp30 = icmp ule i64 %12, 512, !dbg !6878
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6879

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6880
  br label %return, !dbg !6880

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6881
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6883
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6884

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6885
  br label %return, !dbg !6885

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6886
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6888
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6889

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6890
  br label %return, !dbg !6890

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6891
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6893
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6894

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6895
  br label %return, !dbg !6895

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6896
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6898
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6899

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6900
  br label %return, !dbg !6900

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6901
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6903
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6904

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6905
  br label %return, !dbg !6905

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6906
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6908
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6909

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6910
  br label %return, !dbg !6910

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6911
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6913
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6914

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6915
  br label %return, !dbg !6915

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6916
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6918
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6919

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6920
  br label %return, !dbg !6920

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6921
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6923
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6924

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6925
  br label %return, !dbg !6925

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6926
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6928
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6929

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6930
  br label %return, !dbg !6930

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6931
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6933
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6934

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6935
  br label %return, !dbg !6935

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6936
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6938
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6939

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6940
  br label %return, !dbg !6940

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6941, !range !6766, !noundef !1091
  %tobool69 = trunc i8 %25 to i1, !dbg !6941
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6943

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6944

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #22, !dbg !6945, !srcloc !6948
  unreachable, !dbg !6945

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6949

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6950

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6951

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6953

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6951

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.17, i32 480, i32 0, i64 12) #14, !dbg !6955, !srcloc !6957
  br label %do.end75, !dbg !6955

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6951

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6958
  br label %return, !dbg !6958

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6959
  ret i32 %26, !dbg !6959
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6960 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #7 align 16 !dbg !6963 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6967, metadata !DIExpression()), !dbg !6969
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6968, metadata !DIExpression()), !dbg !6970
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6971
  %and = and i32 %0, 17, !dbg !6971
  %cmp = icmp eq i32 %and, 0, !dbg !6971
  %lnot = xor i1 %cmp, true, !dbg !6971
  %lnot1 = xor i1 %lnot, true, !dbg !6971
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6971
  %conv = sext i32 %lnot.ext to i64, !dbg !6971
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6971
  %tobool = icmp ne i64 %expval, 0, !dbg !6971
  br i1 %tobool, label %if.then, label %if.end, !dbg !6973

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6974
  br label %return, !dbg !6974

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6975
  %and2 = and i32 %1, 1, !dbg !6977
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6977
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6978

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6979
  br label %return, !dbg !6979

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6980
  br label %return, !dbg !6980

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6982
  ret i32 %2, !dbg !6982
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6983 dso_local void @__compiletime_assert_117() #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @drm_plane_index(ptr noundef %plane) #8 align 16 !dbg !6984 {
entry:
  %plane.addr = alloca ptr, align 8
  store ptr %plane, ptr %plane.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %plane.addr, metadata !6988, metadata !DIExpression()), !dbg !6989
  %0 = load ptr, ptr %plane.addr, align 8, !dbg !6990
  %index = getelementptr inbounds %struct.drm_plane, ptr %0, i32 0, i32 17, !dbg !6991
  %1 = load i32, ptr %index, align 4, !dbg !6991
  ret i32 %1, !dbg !6992
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong willreturn memory(none) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone nounwind willreturn memory(none) }
attributes #17 = { nounwind memory(read) }
attributes #18 = { noredzone allocsize(0,1) }
attributes #19 = { nounwind memory(none) }
attributes #20 = { noredzone allocsize(0) }
attributes #21 = { noredzone allocsize(2) }
attributes #22 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!5976, !5977, !5978, !5979, !5980, !5981, !5982, !5983}
!llvm.ident = !{!5984}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/gpu/drm/drm_blend.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4bf1f388fdcd931901b4535404f4c51")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 6)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_plane_create_alpha_property308", scope: !9, file: !2, line: 236, type: !345, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_blend.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_blend\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_blend.ll drivers/gpu/drm/drm_blend.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !344, globals: !5847, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !19, !24, !29, !35, !43, !59, !66, !74, !80, !87, !93, !99, !106, !114, !122, !131, !136, !141, !147, !190, !199, !205, !210, !218, !222, !238, !258, !264, !270, !277, !287, !292, !299, !304, !311, !316, !321, !334}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !12, line: 312, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17, !18}
!15 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!16 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!17 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!18 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !20, line: 2052, baseType: !13, size: 32, elements: !21)
!20 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!21 = !{!22, !23}
!22 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!23 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!24 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !25, line: 65, baseType: !13, size: 32, elements: !26)
!25 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!26 = !{!27, !28}
!27 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!28 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !30, line: 16, baseType: !13, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!31 = !{!32, !33, !34}
!32 = !DIEnumerator(name: "TT_NONE", value: 0)
!33 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!34 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !36, line: 68, baseType: !13, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!37 = !{!38, !39, !40, !41, !42}
!38 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!39 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!40 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!41 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!42 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !44, line: 1325, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!46 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!47 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!48 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!49 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!50 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!51 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!52 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!53 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!54 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!55 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!56 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!57 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!58 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !60, line: 51, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!63 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!64 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!65 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !67, line: 9, baseType: !13, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!70 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!71 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!72 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!73 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !75, line: 54, baseType: !13, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "USRQUOTA", value: 0)
!78 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!79 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !81, line: 15, baseType: !13, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!84 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!85 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!86 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !88, line: 26, baseType: !13, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!91 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!92 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !94, line: 45, baseType: !13, size: 32, elements: !95)
!94 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!95 = !{!96, !97, !98}
!96 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!97 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!98 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !100, line: 487, baseType: !13, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!101 = !{!102, !103, !104, !105}
!102 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!103 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!104 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!105 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !107, line: 620, baseType: !13, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!108 = !{!109, !110, !111, !112, !113}
!109 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!110 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!111 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!112 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!113 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!114 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !107, line: 597, baseType: !115, size: 32, elements: !116)
!115 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!116 = !{!117, !118, !119, !120, !121}
!117 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!118 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!119 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!120 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!121 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !100, line: 547, baseType: !13, size: 32, elements: !123)
!123 = !{!124, !125, !126, !127, !128, !129, !130}
!124 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!125 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!126 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!127 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!128 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!129 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!130 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!131 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !100, line: 564, baseType: !13, size: 32, elements: !132)
!132 = !{!133, !134, !135}
!133 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!134 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!135 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !100, line: 577, baseType: !13, size: 32, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!139 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!140 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!141 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !100, line: 503, baseType: !13, size: 32, elements: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!144 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!145 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!146 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!147 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_status", file: !148, line: 91, baseType: !115, size: 32, elements: !149)
!148 = !DIFile(filename: "./include/drm/drm_modes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9464b1418570a46bf1ac7fbe26140ef4")
!149 = !{!150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189}
!150 = !DIEnumerator(name: "MODE_OK", value: 0)
!151 = !DIEnumerator(name: "MODE_HSYNC", value: 1)
!152 = !DIEnumerator(name: "MODE_VSYNC", value: 2)
!153 = !DIEnumerator(name: "MODE_H_ILLEGAL", value: 3)
!154 = !DIEnumerator(name: "MODE_V_ILLEGAL", value: 4)
!155 = !DIEnumerator(name: "MODE_BAD_WIDTH", value: 5)
!156 = !DIEnumerator(name: "MODE_NOMODE", value: 6)
!157 = !DIEnumerator(name: "MODE_NO_INTERLACE", value: 7)
!158 = !DIEnumerator(name: "MODE_NO_DBLESCAN", value: 8)
!159 = !DIEnumerator(name: "MODE_NO_VSCAN", value: 9)
!160 = !DIEnumerator(name: "MODE_MEM", value: 10)
!161 = !DIEnumerator(name: "MODE_VIRTUAL_X", value: 11)
!162 = !DIEnumerator(name: "MODE_VIRTUAL_Y", value: 12)
!163 = !DIEnumerator(name: "MODE_MEM_VIRT", value: 13)
!164 = !DIEnumerator(name: "MODE_NOCLOCK", value: 14)
!165 = !DIEnumerator(name: "MODE_CLOCK_HIGH", value: 15)
!166 = !DIEnumerator(name: "MODE_CLOCK_LOW", value: 16)
!167 = !DIEnumerator(name: "MODE_CLOCK_RANGE", value: 17)
!168 = !DIEnumerator(name: "MODE_BAD_HVALUE", value: 18)
!169 = !DIEnumerator(name: "MODE_BAD_VVALUE", value: 19)
!170 = !DIEnumerator(name: "MODE_BAD_VSCAN", value: 20)
!171 = !DIEnumerator(name: "MODE_HSYNC_NARROW", value: 21)
!172 = !DIEnumerator(name: "MODE_HSYNC_WIDE", value: 22)
!173 = !DIEnumerator(name: "MODE_HBLANK_NARROW", value: 23)
!174 = !DIEnumerator(name: "MODE_HBLANK_WIDE", value: 24)
!175 = !DIEnumerator(name: "MODE_VSYNC_NARROW", value: 25)
!176 = !DIEnumerator(name: "MODE_VSYNC_WIDE", value: 26)
!177 = !DIEnumerator(name: "MODE_VBLANK_NARROW", value: 27)
!178 = !DIEnumerator(name: "MODE_VBLANK_WIDE", value: 28)
!179 = !DIEnumerator(name: "MODE_PANEL", value: 29)
!180 = !DIEnumerator(name: "MODE_INTERLACE_WIDTH", value: 30)
!181 = !DIEnumerator(name: "MODE_ONE_WIDTH", value: 31)
!182 = !DIEnumerator(name: "MODE_ONE_HEIGHT", value: 32)
!183 = !DIEnumerator(name: "MODE_ONE_SIZE", value: 33)
!184 = !DIEnumerator(name: "MODE_NO_REDUCED", value: 34)
!185 = !DIEnumerator(name: "MODE_NO_STEREO", value: 35)
!186 = !DIEnumerator(name: "MODE_NO_420", value: 36)
!187 = !DIEnumerator(name: "MODE_STALE", value: -3)
!188 = !DIEnumerator(name: "MODE_BAD", value: -2)
!189 = !DIEnumerator(name: "MODE_ERROR", value: -1)
!190 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hdmi_picture_aspect", file: !191, line: 96, baseType: !13, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/hdmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "47f4ac8f6225c51a6d030bad9086771f")
!192 = !{!193, !194, !195, !196, !197, !198}
!193 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_NONE", value: 0)
!194 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_4_3", value: 1)
!195 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_16_9", value: 2)
!196 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_64_27", value: 3)
!197 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_256_135", value: 4)
!198 = !DIEnumerator(name: "HDMI_PICTURE_ASPECT_RESERVED", value: 5)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_registration_state", file: !200, line: 98, baseType: !13, size: 32, elements: !201)
!200 = !DIFile(filename: "./include/drm/drm_connector.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63c858da11ce2de4f038056be4cf749")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "DRM_CONNECTOR_INITIALIZING", value: 0)
!203 = !DIEnumerator(name: "DRM_CONNECTOR_REGISTERED", value: 1)
!204 = !DIEnumerator(name: "DRM_CONNECTOR_UNREGISTERED", value: 2)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_status", file: !200, line: 63, baseType: !13, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "connector_status_connected", value: 1)
!208 = !DIEnumerator(name: "connector_status_disconnected", value: 2)
!209 = !DIEnumerator(name: "connector_status_unknown", value: 3)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "subpixel_order", file: !200, line: 137, baseType: !13, size: 32, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DIEnumerator(name: "SubPixelUnknown", value: 0)
!213 = !DIEnumerator(name: "SubPixelHorizontalRGB", value: 1)
!214 = !DIEnumerator(name: "SubPixelHorizontalBGR", value: 2)
!215 = !DIEnumerator(name: "SubPixelVerticalRGB", value: 3)
!216 = !DIEnumerator(name: "SubPixelVerticalBGR", value: 4)
!217 = !DIEnumerator(name: "SubPixelNone", value: 5)
!218 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_link_status", file: !200, line: 337, baseType: !13, size: 32, elements: !219)
!219 = !{!220, !221}
!220 = !DIEnumerator(name: "DRM_LINK_STATUS_GOOD", value: 0)
!221 = !DIEnumerator(name: "DRM_LINK_STATUS_BAD", value: 1)
!222 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_mode_subconnector", file: !223, line: 387, baseType: !13, size: 32, elements: !224)
!223 = !DIFile(filename: "./include/uapi/drm/drm_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "357a7211aa80668185b31e7330dddd63")
!224 = !{!225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!225 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Automatic", value: 0)
!226 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Unknown", value: 0)
!227 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_VGA", value: 1)
!228 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVID", value: 3)
!229 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DVIA", value: 4)
!230 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Composite", value: 5)
!231 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SVIDEO", value: 6)
!232 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Component", value: 8)
!233 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_SCART", value: 9)
!234 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_DisplayPort", value: 10)
!235 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_HDMIA", value: 11)
!236 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Native", value: 15)
!237 = !DIEnumerator(name: "DRM_MODE_SUBCONNECTOR_Wireless", value: 18)
!238 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_colorspace", file: !200, line: 502, baseType: !13, size: 32, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257}
!240 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DEFAULT", value: 0)
!241 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_NO_DATA", value: 0)
!242 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SMPTE_170M_YCC", value: 1)
!243 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT709_YCC", value: 2)
!244 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_601", value: 3)
!245 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_XVYCC_709", value: 4)
!246 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_SYCC_601", value: 5)
!247 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPYCC_601", value: 6)
!248 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_OPRGB", value: 7)
!249 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_CYCC", value: 8)
!250 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_RGB", value: 9)
!251 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT2020_YCC", value: 10)
!252 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_D65", value: 11)
!253 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_DCI_P3_RGB_THEATER", value: 12)
!254 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FIXED", value: 13)
!255 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_RGB_WIDE_FLOAT", value: 14)
!256 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_BT601_YCC", value: 15)
!257 = !DIEnumerator(name: "DRM_MODE_COLORIMETRY_COUNT", value: 16)
!258 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_privacy_screen_status", file: !200, line: 421, baseType: !13, size: 32, elements: !259)
!259 = !{!260, !261, !262, !263}
!260 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED", value: 0)
!261 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED", value: 1)
!262 = !DIEnumerator(name: "PRIVACY_SCREEN_DISABLED_LOCKED", value: 2)
!263 = !DIEnumerator(name: "PRIVACY_SCREEN_ENABLED_LOCKED", value: 3)
!264 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_force", file: !200, line: 50, baseType: !13, size: 32, elements: !265)
!265 = !{!266, !267, !268, !269}
!266 = !DIEnumerator(name: "DRM_FORCE_UNSPECIFIED", value: 0)
!267 = !DIEnumerator(name: "DRM_FORCE_OFF", value: 1)
!268 = !DIEnumerator(name: "DRM_FORCE_ON", value: 2)
!269 = !DIEnumerator(name: "DRM_FORCE_ON_DIGITAL", value: 3)
!270 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_panel_orientation", file: !200, line: 363, baseType: !115, size: 32, elements: !271)
!271 = !{!272, !273, !274, !275, !276}
!272 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_UNKNOWN", value: -1)
!273 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_NORMAL", value: 0)
!274 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_BOTTOM_UP", value: 1)
!275 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_LEFT_UP", value: 2)
!276 = !DIEnumerator(name: "DRM_MODE_PANEL_ORIENTATION_RIGHT_UP", value: 3)
!277 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_connector_tv_mode", file: !200, line: 156, baseType: !13, size: 32, elements: !278)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286}
!279 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC", value: 0)
!280 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_443", value: 1)
!281 = !DIEnumerator(name: "DRM_MODE_TV_MODE_NTSC_J", value: 2)
!282 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL", value: 3)
!283 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_M", value: 4)
!284 = !DIEnumerator(name: "DRM_MODE_TV_MODE_PAL_N", value: 5)
!285 = !DIEnumerator(name: "DRM_MODE_TV_MODE_SECAM", value: 6)
!286 = !DIEnumerator(name: "DRM_MODE_TV_MODE_MAX", value: 7)
!287 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_scaling_filter", file: !288, line: 38, baseType: !13, size: 32, elements: !289)
!288 = !DIFile(filename: "./include/drm/drm_plane.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb1a1ff150429e63de6789c017e03a")
!289 = !{!290, !291}
!290 = !DIEnumerator(name: "DRM_SCALING_FILTER_DEFAULT", value: 0)
!291 = !DIEnumerator(name: "DRM_SCALING_FILTER_NEAREST_NEIGHBOR", value: 1)
!292 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_encoding", file: !293, line: 78, baseType: !13, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/drm/drm_color_mgmt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b92cd49d1b3f8dcc5c490e9b8b1a997a")
!294 = !{!295, !296, !297, !298}
!295 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT601", value: 0)
!296 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT709", value: 1)
!297 = !DIEnumerator(name: "DRM_COLOR_YCBCR_BT2020", value: 2)
!298 = !DIEnumerator(name: "DRM_COLOR_ENCODING_MAX", value: 3)
!299 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_color_range", file: !293, line: 85, baseType: !13, size: 32, elements: !300)
!300 = !{!301, !302, !303}
!301 = !DIEnumerator(name: "DRM_COLOR_YCBCR_LIMITED_RANGE", value: 0)
!302 = !DIEnumerator(name: "DRM_COLOR_YCBCR_FULL_RANGE", value: 1)
!303 = !DIEnumerator(name: "DRM_COLOR_RANGE_MAX", value: 2)
!304 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "switch_power_state", file: !305, line: 30, baseType: !13, size: 32, elements: !306)
!305 = !DIFile(filename: "./include/drm/drm_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9743f4a84c342e86d9e79f688e9c49c5")
!306 = !{!307, !308, !309, !310}
!307 = !DIEnumerator(name: "DRM_SWITCH_POWER_ON", value: 0)
!308 = !DIEnumerator(name: "DRM_SWITCH_POWER_OFF", value: 1)
!309 = !DIEnumerator(name: "DRM_SWITCH_POWER_CHANGING", value: 2)
!310 = !DIEnumerator(name: "DRM_SWITCH_POWER_DYNAMIC_OFF", value: 3)
!311 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_plane_type", file: !288, line: 563, baseType: !13, size: 32, elements: !312)
!312 = !{!313, !314, !315}
!313 = !DIEnumerator(name: "DRM_PLANE_TYPE_OVERLAY", value: 0)
!314 = !DIEnumerator(name: "DRM_PLANE_TYPE_PRIMARY", value: 1)
!315 = !DIEnumerator(name: "DRM_PLANE_TYPE_CURSOR", value: 2)
!316 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !317, line: 10, baseType: !13, size: 32, elements: !318)
!317 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!318 = !{!319, !320}
!319 = !DIEnumerator(name: "false", value: 0)
!320 = !DIEnumerator(name: "true", value: 1)
!321 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !322, line: 330, baseType: !13, size: 32, elements: !323)
!322 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!323 = !{!324, !325, !326, !327, !328, !329, !330, !331, !332, !333}
!324 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!325 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!326 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!327 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!328 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!329 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!330 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!331 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!332 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!333 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!334 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !335, line: 364, baseType: !13, size: 32, elements: !336)
!335 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!336 = !{!337, !338, !339, !340, !341, !342, !343}
!337 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!338 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!339 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!340 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!341 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!342 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!343 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!344 = !{!345, !115, !13, !346, !348, !511, !497, !5846}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !347, line: 154, baseType: !13)
!347 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane", file: !288, line: 603, size: 5312, elements: !350)
!350 = !{!351, !5764, !5765, !5766, !5767, !5768, !5769, !5771, !5772, !5773, !5774, !5775, !5776, !5777, !5778, !5831, !5832, !5833, !5834, !5838, !5839, !5840, !5841, !5842, !5843, !5844, !5845}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !349, file: !288, line: 605, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_device", file: !305, line: 50, size: 12736, elements: !354)
!354 = !{!355, !356, !370, !4718, !4724, !4729, !4730, !4733, !4734, !4735, !4736, !4753, !4754, !4755, !4756, !4757, !4758, !4759, !4760, !4761, !4762, !4763, !4764, !4765, !4766, !4769, !4770, !4771, !4772, !4773, !4774, !4775, !5750, !5751, !5752, !5755, !5758, !5759, !5762, !5763}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "if_version", scope: !353, file: !305, line: 52, baseType: !115, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !353, file: !305, line: 55, baseType: !357, size: 32, offset: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !358, line: 19, size: 32, elements: !359)
!358 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !357, file: !358, line: 20, baseType: !361, size: 32)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !362, line: 113, baseType: !363)
!362 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !362, line: 111, size: 32, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !363, file: !362, line: 112, baseType: !366, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !347, line: 174, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 172, size: 32, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !367, file: !347, line: 173, baseType: !115, size: 32)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !353, file: !305, line: 58, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !100, line: 705, size: 5824, elements: !373)
!373 = !{!374, !4373, !4374, !4377, !4378, !4431, !4501, !4502, !4503, !4504, !4505, !4512, !4604, !4617, !4627, !4631, !4633, !4634, !4635, !4639, !4646, !4647, !4650, !4653, !4657, !4660, !4661, !4662, !4663, !4664, !4665, !4695, !4696, !4697, !4700, !4703, !4712, !4713, !4714, !4715, !4716, !4717}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !372, file: !100, line: 706, baseType: !375, size: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !376, line: 64, size: 512, elements: !377)
!376 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!377 = !{!378, !381, !387, !389, !474, !4276, !4367, !4368, !4369, !4370, !4371, !4372}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !376, line: 65, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !375, file: !376, line: 66, baseType: !382, size: 128, offset: 64)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !347, line: 190, size: 128, elements: !383)
!383 = !{!384, !386}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !382, file: !347, line: 191, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !382, file: !347, line: 191, baseType: !385, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !375, file: !376, line: 67, baseType: !388, size: 64, offset: 192)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !375, file: !376, line: 68, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !376, line: 168, size: 768, elements: !392)
!392 = !{!393, !394, !433, !434}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !391, file: !376, line: 169, baseType: !382, size: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !391, file: !376, line: 170, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !396, line: 29, baseType: !397)
!396 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !396, line: 17, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, scope: !397, file: !396, line: 18, baseType: !400, size: 32)
!400 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !397, file: !396, line: 18, size: 32, elements: !401)
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !400, file: !396, line: 19, baseType: !403, size: 32)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !404, line: 14, size: 32, elements: !405)
!404 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!405 = !{!406}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !403, file: !404, line: 15, baseType: !407, size: 32)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !408, line: 44, baseType: !409)
!408 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !408, line: 14, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, scope: !409, file: !408, line: 15, baseType: !412, size: 32)
!412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !409, file: !408, line: 15, size: 32, elements: !413)
!413 = !{!414, !415, !425}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !412, file: !408, line: 16, baseType: !366, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !408, line: 24, baseType: !416, size: 16)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !408, line: 24, size: 16, elements: !417)
!417 = !{!418, !424}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !416, file: !408, line: 25, baseType: !419, size: 8)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !420, line: 17, baseType: !421)
!420 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !422, line: 21, baseType: !423)
!422 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!423 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !416, file: !408, line: 26, baseType: !419, size: 8, offset: 8)
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !412, file: !408, line: 28, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !412, file: !408, line: 28, size: 32, elements: !427)
!427 = !{!428, !432}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !426, file: !408, line: 29, baseType: !429, size: 16)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !420, line: 19, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !422, line: 24, baseType: !431)
!431 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !426, file: !408, line: 30, baseType: !429, size: 16, offset: 16)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !391, file: !376, line: 171, baseType: !375, size: 512, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !391, file: !376, line: 172, baseType: !435, size: 64, offset: 704)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !376, line: 133, size: 192, elements: !438)
!438 = !{!439, !446, !451}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !437, file: !376, line: 134, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!115, !444}
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !375)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !437, file: !376, line: 135, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!379, !444}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !437, file: !376, line: 136, baseType: !452, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!115, !444, !456}
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !376, line: 125, size: 20736, elements: !458)
!458 = !{!459, !464, !468, !469, !473}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !457, file: !376, line: 126, baseType: !460, size: 192)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 192, elements: !462)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!462 = !{!463}
!463 = !DISubrange(count: 3)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !457, file: !376, line: 127, baseType: !465, size: 4096, offset: 192)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !461, size: 4096, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 64)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !457, file: !376, line: 128, baseType: !115, size: 32, offset: 4288)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !457, file: !376, line: 129, baseType: !470, size: 16384, offset: 4320)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 2048)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !457, file: !376, line: 130, baseType: !115, size: 32, offset: 20704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !375, file: !376, line: 69, baseType: !475, size: 64, offset: 320)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !376, line: 116, size: 384, elements: !478)
!478 = !{!479, !483, !512, !4238, !4266, !4270}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !477, file: !376, line: 117, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{null, !388}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !477, file: !376, line: 118, baseType: !484, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !486)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !487, line: 254, size: 128, elements: !488)
!487 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!488 = !{!489, !504}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !486, file: !487, line: 255, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{!493, !388, !498, !461}
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !347, line: 66, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !495, line: 73, baseType: !496)
!495 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !495, line: 15, baseType: !497)
!497 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !487, line: 30, size: 128, elements: !500)
!500 = !{!501, !502}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !487, line: 31, baseType: !379, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !499, file: !487, line: 32, baseType: !503, size: 16, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !347, line: 24, baseType: !431)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !486, file: !487, line: 256, baseType: !505, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DISubroutineType(types: !507)
!507 = !{!493, !388, !498, !379, !508}
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !347, line: 61, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !495, line: 72, baseType: !510)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !495, line: 16, baseType: !511)
!511 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !477, file: !376, line: 119, baseType: !513, size: 64, offset: 128)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !487, line: 84, size: 320, elements: !517)
!517 = !{!518, !519, !523, !4234, !4236}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !516, file: !487, line: 85, baseType: !379, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !516, file: !487, line: 86, baseType: !520, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DISubroutineType(types: !522)
!522 = !{!503, !388, !498, !115}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !516, file: !487, line: 88, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DISubroutineType(types: !526)
!526 = !{!503, !388, !527, !115}
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !487, line: 175, size: 512, elements: !529)
!529 = !{!530, !531, !532, !533, !4225, !4229, !4230}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !528, file: !487, line: 176, baseType: !499, size: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !528, file: !487, line: 177, baseType: !508, size: 64, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !528, file: !487, line: 178, baseType: !345, size: 64, offset: 192)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !528, file: !487, line: 179, baseType: !534, size: 64, offset: 256)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !20, line: 472, size: 1536, align: 64, elements: !539)
!539 = !{!540, !4059, !4060, !4061, !4062, !4063, !4064, !4065, !4066, !4219, !4220, !4221, !4222, !4223, !4224}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !538, file: !20, line: 473, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !20, line: 641, size: 4800, elements: !543)
!543 = !{!544, !545, !546, !554, !555, !562, !563, !566, !567, !3997, !3998, !3999, !4000, !4001, !4007, !4008, !4009, !4010, !4011, !4012, !4013, !4014, !4015, !4016, !4017, !4018, !4019, !4020, !4021, !4022, !4023, !4024, !4025, !4030, !4031, !4032, !4033, !4034, !4035, !4036, !4041, !4044, !4045, !4046, !4055, !4056, !4057, !4058}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !542, file: !20, line: 642, baseType: !503, size: 16)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !542, file: !20, line: 643, baseType: !431, size: 16, offset: 16)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !542, file: !20, line: 644, baseType: !547, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !548, line: 23, baseType: !549)
!548 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 21, size: 32, elements: !550)
!550 = !{!551}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !549, file: !548, line: 22, baseType: !552, size: 32)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !347, line: 37, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !495, line: 49, baseType: !13)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !542, file: !20, line: 645, baseType: !382, size: 128, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !542, file: !20, line: 646, baseType: !556, size: 32, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !548, line: 28, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !548, line: 26, size: 32, elements: !558)
!558 = !{!559}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !557, file: !548, line: 27, baseType: !560, size: 32)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !347, line: 38, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !495, line: 50, baseType: !13)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !542, file: !20, line: 647, baseType: !13, size: 32, offset: 224)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !542, file: !20, line: 650, baseType: !564, size: 64, offset: 256)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !20, line: 607, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !542, file: !20, line: 651, baseType: !564, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !542, file: !20, line: 654, baseType: !568, size: 64, offset: 384)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !20, line: 1966, size: 2048, align: 512, elements: !571)
!571 = !{!572, !3831, !3841, !3845, !3849, !3853, !3857, !3861, !3865, !3869, !3873, !3874, !3878, !3882, !3919, !3948, !3952, !3958, !3962, !3966, !3970, !3974, !3978, !3984, !3988}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !570, file: !20, line: 1967, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !541, !576, !13}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !578, line: 82, size: 1536, elements: !579)
!578 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!579 = !{!580, !581, !591, !599, !600, !620, !621, !625, !638, !3814, !3815, !3816, !3817, !3823, !3824, !3825}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !577, file: !578, line: 84, baseType: !13, size: 32)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !577, file: !578, line: 85, baseType: !582, size: 32, offset: 32)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !583, line: 275, baseType: !584)
!583 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !583, line: 275, size: 32, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !584, file: !583, line: 275, baseType: !587, size: 32)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !583, line: 69, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !583, line: 64, size: 32, elements: !589)
!589 = !{!590}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !588, file: !583, line: 65, baseType: !13, size: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !577, file: !578, line: 86, baseType: !592, size: 128, offset: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !593, line: 38, size: 128, elements: !594)
!593 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!594 = !{!595, !597}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !592, file: !593, line: 39, baseType: !596, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !592, file: !593, line: 39, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !577, file: !578, line: 87, baseType: !576, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !577, file: !578, line: 88, baseType: !601, size: 128, offset: 256)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !578, line: 49, size: 128, elements: !602)
!602 = !{!603, !617}
!603 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !578, line: 50, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !578, line: 50, size: 64, elements: !605)
!605 = !{!606, !613}
!606 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !578, line: 51, baseType: !607, size: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !604, file: !578, line: 51, size: 64, elements: !608)
!608 = !{!609, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !607, file: !578, line: 52, baseType: !610, size: 32)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !420, line: 21, baseType: !611)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !422, line: 27, baseType: !13)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !607, file: !578, line: 52, baseType: !610, size: 32, offset: 32)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !604, file: !578, line: 54, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !420, line: 23, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !422, line: 31, baseType: !616)
!616 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !578, line: 56, baseType: !618, size: 64, offset: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !577, file: !578, line: 89, baseType: !541, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !577, file: !578, line: 91, baseType: !622, size: 256, offset: 448)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 256, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 32)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !577, file: !578, line: 94, baseType: !626, size: 64, offset: 704)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !627, line: 25, size: 64, elements: !628)
!627 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !626, file: !627, line: 26, baseType: !630, size: 64)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !626, file: !627, line: 26, size: 64, elements: !631)
!631 = !{!632, !633}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !630, file: !627, line: 28, baseType: !615, size: 64, align: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, scope: !630, file: !627, line: 30, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !630, file: !627, line: 30, size: 64, elements: !635)
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !634, file: !627, line: 31, baseType: !395, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !634, file: !627, line: 32, baseType: !115, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !577, file: !578, line: 95, baseType: !639, size: 64, offset: 768)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !578, line: 128, size: 1024, align: 512, elements: !642)
!642 = !{!643, !647, !648, !655, !661, !665, !669, !673, !674, !678, !682, !3804, !3808}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !641, file: !578, line: 129, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!115, !576, !13}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !641, file: !578, line: 130, baseType: !644, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !641, file: !578, line: 131, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!115, !652, !654}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !577)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !641, file: !578, line: 132, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!115, !652, !13, !379, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !641, file: !578, line: 134, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!115, !652}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !641, file: !578, line: 135, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!115, !576}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !641, file: !578, line: 136, baseType: !670, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !576}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !641, file: !578, line: 137, baseType: !670, size: 64, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !641, file: !578, line: 138, baseType: !675, size: 64, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !576, !541}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !641, file: !578, line: 139, baseType: !679, size: 64, offset: 576)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!461, !576, !461, !115}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !641, file: !578, line: 140, baseType: !683, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{!686, !3803}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !688, line: 70, size: 256, elements: !689)
!688 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!689 = !{!690, !691, !3799, !3800}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !687, file: !688, line: 71, baseType: !576, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !687, file: !688, line: 72, baseType: !692, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !20, line: 1190, size: 10752, elements: !694)
!694 = !{!695, !696, !699, !700, !701, !705, !1185, !3504, !3544, !3629, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3646, !3650, !3651, !3654, !3657, !3660, !3663, !3664, !3665, !3706, !3732, !3733, !3734, !3735, !3736, !3737, !3740, !3742, !3749, !3750, !3751, !3752, !3753, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3775, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3797, !3798}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !693, file: !20, line: 1191, baseType: !382, size: 128)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !693, file: !20, line: 1192, baseType: !697, size: 32, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !347, line: 21, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !347, line: 18, baseType: !610)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !693, file: !20, line: 1193, baseType: !423, size: 8, offset: 160)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !693, file: !20, line: 1194, baseType: !511, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !693, file: !20, line: 1195, baseType: !702, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !347, line: 52, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !495, line: 88, baseType: !704)
!704 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !693, file: !20, line: 1196, baseType: !706, size: 64, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !20, line: 2366, size: 576, elements: !708)
!708 = !{!709, !710, !711, !718, !722, !726, !730, !1170, !1171, !1175, !1177, !1178, !1179, !1181, !1182, !1183, !1184}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !707, file: !20, line: 2367, baseType: !379, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !707, file: !20, line: 2368, baseType: !115, size: 32, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !707, file: !20, line: 2376, baseType: !712, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{!115, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !717, line: 32, flags: DIFlagFwdDecl)
!717 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!718 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !707, file: !20, line: 2377, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !721)
!721 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !20, line: 75, flags: DIFlagFwdDecl)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !707, file: !20, line: 2378, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!576, !706, !115, !379, !345}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !707, file: !20, line: 2380, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !692}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !707, file: !20, line: 2381, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !12, line: 402, size: 9216, align: 512, elements: !733)
!733 = !{!734, !735, !736, !740, !762, !788, !789, !790, !791, !795, !800, !801, !821, !877, !878, !879, !880, !881, !884, !885, !886, !894, !898, !925, !946, !947, !948, !949, !958, !981, !982, !985, !988, !989, !990, !991, !992, !993, !994, !999, !1000, !1128, !1136, !1137, !1138, !1140, !1144, !1145, !1149, !1150, !1151, !1152, !1154, !1155, !1156, !1163, !1164, !1165, !1169}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !732, file: !12, line: 403, baseType: !11, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !732, file: !12, line: 406, baseType: !382, size: 128, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !12, line: 409, baseType: !737, size: 448, offset: 192)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 56)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !732, file: !12, line: 417, baseType: !741, size: 768, offset: 640)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !12, line: 45, size: 768, elements: !742)
!742 = !{!743, !744, !745, !746, !749}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !741, file: !12, line: 46, baseType: !375, size: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !741, file: !12, line: 47, baseType: !731, size: 64, offset: 512)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !741, file: !12, line: 48, baseType: !388, size: 64, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !741, file: !12, line: 49, baseType: !747, size: 64, offset: 640)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !12, line: 49, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !741, file: !12, line: 50, baseType: !750, size: 64, offset: 704)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !752, line: 26, size: 256, elements: !753)
!752 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!753 = !{!754, !755}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !751, file: !752, line: 27, baseType: !13, size: 32)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !751, file: !752, line: 28, baseType: !756, size: 192, offset: 64)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !757, line: 43, size: 192, elements: !758)
!757 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!758 = !{!759, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !756, file: !757, line: 44, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !404, line: 23, baseType: !403)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !756, file: !757, line: 45, baseType: !382, size: 128, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !732, file: !12, line: 418, baseType: !763, size: 64, offset: 1408)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !12, line: 53, size: 448, elements: !765)
!765 = !{!766, !767, !772, !776, !780, !784}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !764, file: !12, line: 54, baseType: !499, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !764, file: !12, line: 55, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!493, !763, !771, !461}
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !764, file: !12, line: 57, baseType: !773, size: 64, offset: 192)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!493, !763, !771, !379, !508}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !764, file: !12, line: 59, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !731, !379}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !764, file: !12, line: 60, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!115, !731}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !764, file: !12, line: 61, baseType: !785, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{null, !731}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !732, file: !12, line: 419, baseType: !379, size: 64, offset: 1472)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !732, file: !12, line: 420, baseType: !379, size: 64, offset: 1536)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !732, file: !12, line: 421, baseType: !388, size: 64, offset: 1600)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !732, file: !12, line: 424, baseType: !792, size: 64, offset: 1664)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !794)
!794 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !12, line: 424, flags: DIFlagFwdDecl)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !732, file: !12, line: 425, baseType: !796, size: 64, offset: 1728)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !420, line: 20, baseType: !799)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !422, line: 26, baseType: !115)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !732, file: !12, line: 426, baseType: !13, size: 32, offset: 1792)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !732, file: !12, line: 435, baseType: !802, size: 256, offset: 1856)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !803, line: 66, size: 256, elements: !804)
!803 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!804 = !{!805, !814, !815, !820}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !802, file: !803, line: 67, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !807, line: 13, baseType: !808)
!807 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !347, line: 181, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !347, line: 179, size: 64, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !809, file: !347, line: 180, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !420, line: 22, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !422, line: 30, baseType: !704)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !802, file: !803, line: 68, baseType: !760, size: 32, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !802, file: !803, line: 70, baseType: !816, size: 32, offset: 96)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !817, line: 15, size: 32, elements: !818)
!817 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !816, file: !817, line: 20, baseType: !366, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !802, file: !803, line: 72, baseType: !382, size: 128, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !732, file: !12, line: 437, baseType: !822, size: 64, offset: 2112)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !824, line: 69, size: 320, elements: !825)
!824 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!825 = !{!826, !827, !828, !848, !850, !854, !855}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !823, file: !824, line: 70, baseType: !379, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !823, file: !824, line: 71, baseType: !731, size: 64, offset: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !823, file: !824, line: 72, baseType: !829, size: 64, offset: 128)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !824, line: 47, size: 256, elements: !832)
!832 = !{!833, !834, !840, !844}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !831, file: !824, line: 49, baseType: !13, size: 32)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !831, file: !824, line: 51, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!115, !379, !838}
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !823)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !831, file: !824, line: 53, baseType: !841, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!115, !461, !838}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !831, file: !824, line: 55, baseType: !845, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !345}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !823, file: !824, line: 73, baseType: !849, size: 16, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !823, file: !824, line: 74, baseType: !851, size: 8, offset: 208)
!851 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !420, line: 16, baseType: !852)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !422, line: 20, baseType: !853)
!853 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !823, file: !824, line: 75, baseType: !419, size: 8, offset: 216)
!855 = !DIDerivedType(tag: DW_TAG_member, scope: !823, file: !824, line: 76, baseType: !856, size: 64, offset: 256)
!856 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !823, file: !824, line: 76, size: 64, elements: !857)
!857 = !{!858, !859, !866}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !856, file: !824, line: 77, baseType: !345, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !856, file: !824, line: 78, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !824, line: 86, size: 128, elements: !863)
!863 = !{!864, !865}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !862, file: !824, line: 87, baseType: !13, size: 32)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !862, file: !824, line: 88, baseType: !461, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !856, file: !824, line: 79, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !824, line: 92, size: 256, elements: !870)
!870 = !{!871, !872, !873, !875, !876}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !869, file: !824, line: 94, baseType: !13, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !869, file: !824, line: 95, baseType: !13, size: 32, offset: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !869, file: !824, line: 96, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !869, file: !824, line: 97, baseType: !829, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !869, file: !824, line: 98, baseType: !345, size: 64, offset: 192)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !732, file: !12, line: 438, baseType: !13, size: 32, offset: 2176)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !732, file: !12, line: 441, baseType: !13, size: 32, offset: 2208)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !732, file: !12, line: 442, baseType: !792, size: 64, offset: 2240)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !732, file: !12, line: 443, baseType: !796, size: 64, offset: 2304)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !732, file: !12, line: 444, baseType: !882, size: 8, offset: 2368)
!882 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !347, line: 35, baseType: !883)
!883 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !732, file: !12, line: 451, baseType: !882, size: 8, offset: 2376)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !732, file: !12, line: 454, baseType: !13, size: 32, offset: 2400)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !732, file: !12, line: 455, baseType: !887, size: 64, offset: 2432)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !889, line: 23, size: 96, elements: !890)
!889 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !888, file: !889, line: 24, baseType: !115, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !888, file: !889, line: 24, baseType: !115, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !888, file: !889, line: 24, baseType: !115, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !732, file: !12, line: 458, baseType: !895, size: 64, offset: 2496)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DISubroutineType(types: !897)
!897 = !{!115}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !732, file: !12, line: 460, baseType: !899, size: 4032, align: 512, offset: 2560)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !900, size: 4032, elements: !923)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !12, line: 362, size: 576, elements: !901)
!901 = !{!902, !903, !904}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !900, file: !12, line: 363, baseType: !345, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !900, file: !12, line: 364, baseType: !13, size: 32, offset: 64)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !900, file: !12, line: 367, baseType: !905, size: 448, offset: 128)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !12, line: 319, size: 448, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !905, file: !12, line: 320, baseType: !731, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !905, file: !12, line: 321, baseType: !909, size: 384, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !910, line: 40, size: 384, elements: !911)
!910 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !909, file: !910, line: 41, baseType: !913, size: 384, align: 64)
!913 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 384, align: 64, elements: !921)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !915, line: 5, size: 192, align: 64, elements: !916)
!915 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!916 = !{!917, !918, !920}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !914, file: !915, line: 6, baseType: !511, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !914, file: !915, line: 7, baseType: !919, size: 64, offset: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !914, file: !915, line: 8, baseType: !919, size: 64, offset: 128)
!921 = !{!922}
!922 = !DISubrange(count: 2)
!923 = !{!924}
!924 = !DISubrange(count: 7)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !732, file: !12, line: 463, baseType: !926, size: 192, offset: 6592)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !927, line: 8, size: 192, elements: !928)
!927 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!928 = !{!929, !930, !932}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !926, file: !927, line: 10, baseType: !13, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !926, file: !927, line: 11, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !926, file: !927, line: 12, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !935, line: 59, size: 48, elements: !936)
!935 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!936 = !{!937, !941, !942, !943, !944, !945}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !934, file: !935, line: 60, baseType: !938, size: 16)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !420, line: 18, baseType: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !422, line: 23, baseType: !940)
!940 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !934, file: !935, line: 61, baseType: !938, size: 16, offset: 16)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !934, file: !935, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !934, file: !935, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !934, file: !935, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !934, file: !935, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !732, file: !12, line: 465, baseType: !511, size: 64, offset: 6784)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !732, file: !12, line: 469, baseType: !13, size: 32, offset: 6848)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !732, file: !12, line: 470, baseType: !382, size: 128, offset: 6912)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !732, file: !12, line: 471, baseType: !950, size: 64, offset: 7040)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !952, line: 33, size: 96, elements: !953)
!952 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!953 = !{!954, !955, !956, !957}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !951, file: !952, line: 37, baseType: !115, size: 32)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !951, file: !952, line: 43, baseType: !115, size: 32, offset: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !951, file: !952, line: 45, baseType: !431, size: 16, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !951, file: !952, line: 47, baseType: !431, size: 16, offset: 80)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !732, file: !12, line: 476, baseType: !959, size: 64, offset: 7104)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !12, line: 378, size: 256, elements: !961)
!961 = !{!962, !978, !979, !980}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !960, file: !12, line: 379, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !965, line: 204, baseType: !966)
!965 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !965, line: 197, size: 192, elements: !967)
!967 = !{!968, !970, !971, !972, !974, !976}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !966, file: !965, line: 198, baseType: !969, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !965, line: 21, baseType: !611)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !966, file: !965, line: 199, baseType: !423, size: 8, offset: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !966, file: !965, line: 200, baseType: !423, size: 8, offset: 40)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !966, file: !965, line: 201, baseType: !973, size: 16, offset: 48)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !965, line: 17, baseType: !430)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !966, file: !965, line: 202, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !965, line: 16, baseType: !615)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !966, file: !965, line: 203, baseType: !977, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !965, line: 22, baseType: !615)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !960, file: !12, line: 380, baseType: !13, size: 32, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !960, file: !12, line: 381, baseType: !461, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !960, file: !12, line: 382, baseType: !461, size: 64, offset: 192)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !732, file: !12, line: 477, baseType: !960, size: 256, offset: 7168)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !732, file: !12, line: 480, baseType: !983, size: 64, offset: 7424)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !12, line: 480, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !732, file: !12, line: 483, baseType: !986, size: 64, offset: 7488)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !12, line: 483, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !732, file: !12, line: 488, baseType: !461, size: 64, offset: 7552)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !732, file: !12, line: 492, baseType: !345, size: 64, offset: 7616)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !732, file: !12, line: 493, baseType: !13, size: 32, offset: 7680)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !732, file: !12, line: 495, baseType: !345, size: 64, offset: 7744)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !732, file: !12, line: 496, baseType: !13, size: 32, offset: 7808)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !732, file: !12, line: 499, baseType: !13, size: 32, offset: 7840)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !732, file: !12, line: 500, baseType: !995, size: 64, offset: 7872)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !997, line: 45, baseType: !998)
!997 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !732, file: !12, line: 503, baseType: !13, size: 32, offset: 7936)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !732, file: !12, line: 504, baseType: !1001, size: 64, offset: 8000)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1004, line: 96, size: 192, elements: !1005)
!1004 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1005 = !{!1006, !1007, !1088, !1092}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1003, file: !1004, line: 97, baseType: !13, size: 32)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1003, file: !1004, line: 98, baseType: !1008, size: 64, offset: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1004, line: 24, size: 3072, elements: !1010)
!1010 = !{!1011, !1013, !1014, !1015, !1016, !1040, !1041, !1042, !1043, !1061, !1073, !1074, !1085, !1086, !1087}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1009, file: !1004, line: 26, baseType: !1012, size: 128)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 128, elements: !921)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1009, file: !1004, line: 27, baseType: !1012, size: 128, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1009, file: !1004, line: 28, baseType: !115, size: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !1004, line: 31, baseType: !395, size: 32, align: 512, offset: 512)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1009, file: !1004, line: 32, baseType: !1017, size: 960, offset: 576)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1018, line: 206, size: 960, elements: !1019)
!1018 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1019 = !{!1020, !1029, !1034, !1036, !1037, !1039}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1017, file: !1018, line: 207, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !347, line: 232, size: 128, align: 64, elements: !1023)
!1023 = !{!1024, !1025}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1022, file: !347, line: 233, baseType: !1021, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1022, file: !347, line: 234, baseType: !1026, size: 64, offset: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !1021}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1017, file: !1018, line: 208, baseType: !1030, size: 256, offset: 64)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 256, elements: !1032)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1032 = !{!1033}
!1033 = !DISubrange(count: 4)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1017, file: !1018, line: 209, baseType: !1035, size: 256, offset: 320)
!1035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 256, elements: !1032)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1017, file: !1018, line: 213, baseType: !497, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1017, file: !1018, line: 215, baseType: !1038, size: 256, offset: 640)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 256, elements: !1032)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1017, file: !1018, line: 216, baseType: !419, size: 8, offset: 896)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1009, file: !1004, line: 33, baseType: !511, size: 64, offset: 1536)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1009, file: !1004, line: 34, baseType: !511, size: 64, offset: 1600)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1009, file: !1004, line: 35, baseType: !882, size: 8, offset: 1664)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1009, file: !1004, line: 36, baseType: !1044, size: 320, offset: 1728)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1045, line: 11, size: 320, elements: !1046)
!1045 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1046 = !{!1047, !1054, !1055, !1060}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1044, file: !1045, line: 16, baseType: !1048, size: 128)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !347, line: 198, size: 128, elements: !1049)
!1049 = !{!1050, !1052}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !347, line: 199, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1048, file: !347, line: 199, baseType: !1053, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1044, file: !1045, line: 17, baseType: !511, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1044, file: !1045, line: 18, baseType: !1056, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{null, !1059}
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1044, file: !1045, line: 19, baseType: !610, size: 32, offset: 256)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1009, file: !1004, line: 37, baseType: !1062, size: 256, offset: 2048)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1063, line: 98, size: 256, elements: !1064)
!1063 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1064 = !{!1065, !1066, !1067}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1062, file: !1063, line: 99, baseType: !806, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1062, file: !1063, line: 100, baseType: !382, size: 128, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1062, file: !1063, line: 101, baseType: !1068, size: 64, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1063, line: 21, baseType: !1069)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{null, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1009, file: !1004, line: 38, baseType: !1022, size: 128, align: 64, offset: 2304)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1009, file: !1004, line: 39, baseType: !1075, size: 64, offset: 2432)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1004, line: 49, size: 768, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !1004, line: 50, baseType: !395, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1076, file: !1004, line: 51, baseType: !1035, size: 256, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1076, file: !1004, line: 53, baseType: !1035, size: 256, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1076, file: !1004, line: 54, baseType: !511, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1076, file: !1004, line: 55, baseType: !1075, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1076, file: !1004, line: 56, baseType: !115, size: 32, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1076, file: !1004, line: 57, baseType: !115, size: 32, offset: 736)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1009, file: !1004, line: 40, baseType: !511, size: 64, offset: 2496)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1009, file: !1004, line: 42, baseType: !115, size: 32, offset: 2560)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1009, file: !1004, line: 43, baseType: !1002, size: 64, offset: 2624)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1003, file: !1004, line: 99, baseType: !1089, offset: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1090, line: 211, elements: !1091)
!1090 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1091 = !{}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1003, file: !1004, line: 100, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1004, line: 63, size: 3008, elements: !1095)
!1095 = !{!1096, !1097, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1127}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1094, file: !1004, line: 64, baseType: !1075, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1094, file: !1004, line: 65, baseType: !1098, size: 192, offset: 64)
!1098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 192, elements: !462)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1094, file: !1004, line: 67, baseType: !115, size: 32, offset: 256)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1094, file: !1004, line: 68, baseType: !802, size: 256, offset: 320)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1094, file: !1004, line: 69, baseType: !395, size: 32, offset: 576)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1094, file: !1004, line: 70, baseType: !802, size: 256, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1094, file: !1004, line: 71, baseType: !511, size: 64, offset: 896)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1094, file: !1004, line: 72, baseType: !511, size: 64, offset: 960)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1094, file: !1004, line: 73, baseType: !511, size: 64, offset: 1024)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1094, file: !1004, line: 74, baseType: !511, size: 64, offset: 1088)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1094, file: !1004, line: 75, baseType: !511, size: 64, offset: 1152)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1094, file: !1004, line: 76, baseType: !511, size: 64, offset: 1216)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1094, file: !1004, line: 77, baseType: !511, size: 64, offset: 1280)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1094, file: !1004, line: 78, baseType: !511, size: 64, offset: 1344)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1094, file: !1004, line: 79, baseType: !882, size: 8, offset: 1408)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1094, file: !1004, line: 80, baseType: !511, size: 64, offset: 1472)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1094, file: !1004, line: 81, baseType: !802, size: 256, offset: 1536)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1094, file: !1004, line: 82, baseType: !751, size: 256, offset: 1792)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1094, file: !1004, line: 84, baseType: !366, size: 32, offset: 2048)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1094, file: !1004, line: 87, baseType: !511, size: 64, offset: 2112)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1094, file: !1004, line: 88, baseType: !511, size: 64, offset: 2176)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1094, file: !1004, line: 89, baseType: !1119, size: 704, offset: 2240)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1063, line: 111, size: 704, elements: !1120)
!1120 = !{!1121, !1122, !1123, !1126}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1119, file: !1063, line: 112, baseType: !1062, size: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1119, file: !1063, line: 113, baseType: !1044, size: 320, offset: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1119, file: !1063, line: 116, baseType: !1124, size: 64, offset: 576)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1063, line: 18, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1119, file: !1063, line: 117, baseType: !115, size: 32, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1094, file: !1004, line: 90, baseType: !1002, size: 64, offset: 2944)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !732, file: !12, line: 515, baseType: !1129, size: 64, offset: 8064)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1131, line: 117, size: 128, elements: !1132)
!1131 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1130, file: !1131, line: 118, baseType: !798, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1130, file: !1131, line: 119, baseType: !798, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1130, file: !1131, line: 120, baseType: !497, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !732, file: !12, line: 516, baseType: !13, size: 32, offset: 8128)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !732, file: !12, line: 519, baseType: !13, size: 32, offset: 8160)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !732, file: !12, line: 520, baseType: !1139, size: 64, offset: 8192)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !732, file: !12, line: 523, baseType: !1141, size: 64, offset: 8256)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !12, line: 523, flags: DIFlagFwdDecl)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !732, file: !12, line: 524, baseType: !13, size: 32, offset: 8320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !732, file: !12, line: 525, baseType: !1146, size: 64, offset: 8384)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !12, line: 525, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !732, file: !12, line: 526, baseType: !13, size: 32, offset: 8448)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !732, file: !12, line: 533, baseType: !345, size: 64, offset: 8512)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !732, file: !12, line: 534, baseType: !13, size: 32, offset: 8576)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !732, file: !12, line: 535, baseType: !1153, size: 64, offset: 8640)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !732, file: !12, line: 536, baseType: !13, size: 32, offset: 8704)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !732, file: !12, line: 539, baseType: !115, size: 32, offset: 8736)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !732, file: !12, line: 540, baseType: !1157, size: 64, offset: 8768)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1159, line: 32, size: 64, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1158, file: !1159, line: 33, baseType: !798, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1158, file: !1159, line: 34, baseType: !798, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !732, file: !12, line: 563, baseType: !382, size: 128, offset: 8832)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !732, file: !12, line: 565, baseType: !382, size: 128, offset: 8960)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !732, file: !12, line: 568, baseType: !1166, size: 64, offset: 9088)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{null}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !732, file: !12, line: 570, baseType: !366, size: 32, offset: 9152)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !20, line: 2382, baseType: !706, size: 64, offset: 448)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !707, file: !20, line: 2383, baseType: !1172, size: 64, offset: 512)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !347, line: 194, size: 64, elements: !1173)
!1173 = !{!1174}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1172, file: !347, line: 195, baseType: !1051, size: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !707, file: !20, line: 2385, baseType: !1176, offset: 576)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1090, line: 206, elements: !1091)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !707, file: !20, line: 2386, baseType: !1176, offset: 576)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !707, file: !20, line: 2387, baseType: !1176, offset: 576)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !707, file: !20, line: 2388, baseType: !1180, offset: 576)
!1180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1176, elements: !462)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !707, file: !20, line: 2390, baseType: !1176, offset: 576)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !707, file: !20, line: 2391, baseType: !1176, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !707, file: !20, line: 2392, baseType: !1176, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !707, file: !20, line: 2393, baseType: !1176, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !693, file: !20, line: 1197, baseType: !1186, size: 64, offset: 384)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !20, line: 2057, size: 1664, elements: !1189)
!1189 = !{!1190, !1194, !1198, !1199, !1203, !1209, !1213, !1214, !1215, !1219, !1223, !1227, !1228, !1229, !1235, !1239, !1240, !3429, !3430, !3431, !3432, !3436, !3440, !3487, !3502, !3503}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1188, file: !20, line: 2058, baseType: !1191, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!541, !692}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1188, file: !20, line: 2059, baseType: !1195, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !541}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1188, file: !20, line: 2060, baseType: !1195, size: 64, offset: 128)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1188, file: !20, line: 2062, baseType: !1200, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DISubroutineType(types: !1202)
!1202 = !{null, !541, !115}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1188, file: !20, line: 2063, baseType: !1204, size: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!115, !541, !1207}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !20, line: 309, flags: DIFlagFwdDecl)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1188, file: !20, line: 2064, baseType: !1210, size: 64, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!115, !541}
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1188, file: !20, line: 2065, baseType: !1195, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1188, file: !20, line: 2066, baseType: !727, size: 64, offset: 448)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1188, file: !20, line: 2067, baseType: !1216, size: 64, offset: 512)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!115, !692, !115}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1188, file: !20, line: 2068, baseType: !1220, size: 64, offset: 576)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = !DISubroutineType(types: !1222)
!1222 = !{!115, !692, !19}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1188, file: !20, line: 2069, baseType: !1224, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!115, !692}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1188, file: !20, line: 2070, baseType: !1220, size: 64, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1188, file: !20, line: 2071, baseType: !1224, size: 64, offset: 768)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1188, file: !20, line: 2072, baseType: !1230, size: 64, offset: 832)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DISubroutineType(types: !1232)
!1232 = !{!115, !576, !1233}
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !20, line: 62, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1188, file: !20, line: 2073, baseType: !1236, size: 64, offset: 896)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = !DISubroutineType(types: !1238)
!1238 = !{!115, !692, !931, !461}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1188, file: !20, line: 2074, baseType: !727, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1188, file: !20, line: 2076, baseType: !1241, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!115, !1244, !576}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1246, line: 17, size: 960, elements: !1247)
!1246 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1278, !1279, !3428}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1245, file: !1246, line: 18, baseType: !461, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1245, file: !1246, line: 19, baseType: !508, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1245, file: !1246, line: 20, baseType: !508, size: 64, offset: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1245, file: !1246, line: 21, baseType: !508, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1245, file: !1246, line: 22, baseType: !508, size: 64, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1245, file: !1246, line: 23, baseType: !702, size: 64, offset: 320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1245, file: !1246, line: 24, baseType: !702, size: 64, offset: 384)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1245, file: !1246, line: 25, baseType: !802, size: 256, offset: 448)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1245, file: !1246, line: 26, baseType: !1257, size: 64, offset: 704)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1246, line: 32, size: 256, elements: !1260)
!1260 = !{!1261, !1266, !1270, !1274}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1259, file: !1246, line: 33, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!345, !1244, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1259, file: !1246, line: 34, baseType: !1267, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1244, !345}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1259, file: !1246, line: 35, baseType: !1271, size: 64, offset: 128)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!345, !1244, !345, !1265}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1259, file: !1246, line: 36, baseType: !1275, size: 64, offset: 192)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!115, !1244, !345}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1245, file: !1246, line: 27, baseType: !115, size: 32, offset: 768)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1245, file: !1246, line: 28, baseType: !1280, size: 64, offset: 832)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !20, line: 994, size: 1856, align: 64, elements: !1283)
!1283 = !{!1284, !1295, !1296, !1298, !1299, !1300, !1301, !1302, !3242, !3243, !3252, !3258, !3259, !3418, !3419, !3420, !3421, !3423, !3424, !3427}
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !20, line: 995, baseType: !1285, size: 128)
!1285 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !20, line: 995, size: 128, elements: !1286)
!1286 = !{!1287, !1293, !1294}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1285, file: !20, line: 996, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1289, line: 60, size: 64, elements: !1290)
!1289 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1290 = !{!1291}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1288, file: !1289, line: 61, baseType: !1292, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1285, file: !20, line: 997, baseType: !1022, size: 128, align: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1285, file: !20, line: 998, baseType: !13, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1282, file: !20, line: 1005, baseType: !395, size: 32, offset: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1282, file: !20, line: 1006, baseType: !1297, size: 32, offset: 160)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !347, line: 156, baseType: !13)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1282, file: !20, line: 1007, baseType: !806, size: 64, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1282, file: !20, line: 1008, baseType: !802, size: 256, offset: 256)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1282, file: !20, line: 1009, baseType: !702, size: 64, offset: 512)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1282, file: !20, line: 1010, baseType: !13, size: 32, offset: 576)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1282, file: !20, line: 1011, baseType: !1303, size: 256, offset: 640)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !20, line: 948, size: 256, elements: !1304)
!1304 = !{!1305, !1326, !3238, !3239, !3240, !3241}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1303, file: !20, line: 949, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1307, line: 34, baseType: !1308)
!1307 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1307, line: 25, size: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1308, file: !1307, line: 26, baseType: !1311, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1312, line: 27, baseType: !1313)
!1312 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1312, line: 13, size: 64, elements: !1314)
!1314 = !{!1315, !1325}
!1315 = !DIDerivedType(tag: DW_TAG_member, scope: !1313, file: !1312, line: 14, baseType: !1316, size: 32)
!1316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1313, file: !1312, line: 14, size: 32, elements: !1317)
!1317 = !{!1318, !1319}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1316, file: !1312, line: 15, baseType: !366, size: 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !1312, line: 16, baseType: !1320, size: 32)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1316, file: !1312, line: 16, size: 32, elements: !1321)
!1321 = !{!1322, !1323}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1320, file: !1312, line: 18, baseType: !419, size: 8)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1320, file: !1312, line: 19, baseType: !1324, size: 24, offset: 8)
!1324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 24, elements: !462)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1313, file: !1312, line: 26, baseType: !407, size: 32, offset: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1303, file: !20, line: 950, baseType: !1327, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !67, line: 59, size: 768, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1335, !1336, !1343, !1344}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1328, file: !67, line: 61, baseType: !361, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1328, file: !67, line: 62, baseType: !13, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1328, file: !67, line: 63, baseType: !395, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1328, file: !67, line: 65, baseType: !1334, size: 256, offset: 128)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 256, elements: !1032)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1328, file: !67, line: 66, baseType: !1172, size: 64, offset: 384)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1328, file: !67, line: 68, baseType: !1337, size: 192, offset: 448)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1338, line: 41, baseType: !1339)
!1338 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1338, line: 37, size: 192, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1339, file: !1338, line: 38, baseType: !395, size: 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1339, file: !1338, line: 39, baseType: !382, size: 128, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1328, file: !67, line: 69, baseType: !1022, size: 128, align: 64, offset: 640)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1328, file: !67, line: 70, baseType: !1345, offset: 768)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, elements: !1831)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !67, line: 54, size: 128, elements: !1347)
!1347 = !{!1348, !1349}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1346, file: !67, line: 55, baseType: !115, size: 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1346, file: !67, line: 56, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !1352, line: 26, size: 1152, elements: !1353)
!1352 = !DIFile(filename: "./include/linux/pid_namespace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3221cc45d98b4ae2705e7ef463aa36b0")
!1353 = !{!1354, !1367, !1368, !1369, !3215, !3218, !3219, !3220, !3223, !3224, !3225, !3226, !3237}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "idr", scope: !1351, file: !1352, line: 27, baseType: !1355, size: 192)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1356, line: 19, size: 192, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1357 = !{!1358, !1365, !1366}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1355, file: !1356, line: 20, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1360, line: 296, size: 128, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1359, file: !1360, line: 297, baseType: !395, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1359, file: !1360, line: 299, baseType: !346, size: 32, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1359, file: !1360, line: 300, baseType: !345, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1355, file: !1356, line: 21, baseType: !13, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1355, file: !1356, line: 22, baseType: !13, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1351, file: !1352, line: 28, baseType: !1022, size: 128, align: 64, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pid_allocated", scope: !1351, file: !1352, line: 29, baseType: !13, size: 32, offset: 320)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "child_reaper", scope: !1351, file: !1352, line: 30, baseType: !1370, size: 64, offset: 384)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1372, line: 746, size: 58368, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1373 = !{!1374, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1454, !1465, !1560, !1564, !1567, !1598, !1599, !1600, !1601, !1612, !1614, !1615, !1616, !1617, !1618, !1619, !1630, !1631, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1648, !1649, !1656, !1657, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1912, !1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1960, !1966, !2145, !2146, !2147, !2148, !2152, !2155, !2162, !2167, !2170, !2173, !2176, !2202, !2340, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2378, !2379, !2380, !2389, !2397, !2398, !2399, !2400, !2401, !2406, !2407, !2408, !2412, !2413, !2416, !2419, !2422, !2430, !2433, !2434, !2520, !2521, !2522, !2523, !2524, !2530, !2531, !2532, !2533, !2536, !2537, !2540, !2543, !2544, !2547, !2548, !2549, !2552, !2553, !2554, !2557, !2558, !2559, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2591, !2594, !2883, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2895, !2967, !2969, !2970, !2971, !2972, !2973, !2974, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2992, !2993, !2994}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1371, file: !1372, line: 752, baseType: !1375, size: 192)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1376, line: 56, size: 192, elements: !1377)
!1376 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1377 = !{!1378, !1379, !1380, !1381}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1375, file: !1376, line: 57, baseType: !511, size: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1375, file: !1376, line: 58, baseType: !511, size: 64, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1375, file: !1376, line: 59, baseType: !610, size: 32, offset: 128)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1375, file: !1376, line: 61, baseType: !610, size: 32, offset: 160)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1371, file: !1372, line: 754, baseType: !13, size: 32, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1371, file: !1372, line: 767, baseType: !345, size: 64, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1371, file: !1372, line: 768, baseType: !361, size: 32, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1371, file: !1372, line: 770, baseType: !13, size: 32, offset: 352)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1371, file: !1372, line: 771, baseType: !13, size: 32, offset: 384)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1371, file: !1372, line: 774, baseType: !115, size: 32, offset: 416)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1371, file: !1372, line: 775, baseType: !1389, size: 128, offset: 448)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1390, line: 58, size: 128, elements: !1391)
!1390 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1391 = !{!1392, !1393, !1398, !1399}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1389, file: !1390, line: 59, baseType: !1288, size: 64)
!1393 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !1390, line: 60, baseType: !1394, size: 32, offset: 64)
!1394 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1389, file: !1390, line: 60, size: 32, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1394, file: !1390, line: 61, baseType: !13, size: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1394, file: !1390, line: 62, baseType: !366, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1389, file: !1390, line: 65, baseType: !429, size: 16, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1389, file: !1390, line: 65, baseType: !429, size: 16, offset: 112)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1371, file: !1372, line: 776, baseType: !13, size: 32, offset: 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1371, file: !1372, line: 777, baseType: !511, size: 64, offset: 640)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1371, file: !1372, line: 778, baseType: !1370, size: 64, offset: 704)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1371, file: !1372, line: 787, baseType: !115, size: 32, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1371, file: !1372, line: 788, baseType: !115, size: 32, offset: 800)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1371, file: !1372, line: 790, baseType: !115, size: 32, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1371, file: !1372, line: 792, baseType: !115, size: 32, offset: 864)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1371, file: !1372, line: 793, baseType: !115, size: 32, offset: 896)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1371, file: !1372, line: 794, baseType: !115, size: 32, offset: 928)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1371, file: !1372, line: 795, baseType: !13, size: 32, offset: 960)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1371, file: !1372, line: 797, baseType: !1411, size: 2048, offset: 1024)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1372, line: 551, size: 2048, elements: !1412)
!1412 = !{!1413, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1433, !1436, !1437, !1438}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1411, file: !1372, line: 553, baseType: !1414, size: 128)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1372, line: 411, size: 128, elements: !1415)
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1414, file: !1372, line: 412, baseType: !511, size: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1414, file: !1372, line: 413, baseType: !610, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1411, file: !1372, line: 554, baseType: !914, size: 192, align: 64, offset: 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1411, file: !1372, line: 555, baseType: !614, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1411, file: !1372, line: 556, baseType: !614, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1411, file: !1372, line: 558, baseType: !382, size: 128, offset: 448)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1411, file: !1372, line: 559, baseType: !13, size: 32, offset: 576)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1411, file: !1372, line: 561, baseType: !614, size: 64, offset: 640)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1411, file: !1372, line: 562, baseType: !614, size: 64, offset: 704)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1411, file: !1372, line: 563, baseType: !614, size: 64, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1411, file: !1372, line: 564, baseType: !614, size: 64, offset: 832)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1411, file: !1372, line: 565, baseType: !812, size: 64, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1411, file: !1372, line: 566, baseType: !614, size: 64, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1411, file: !1372, line: 568, baseType: !614, size: 64, offset: 1024)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1411, file: !1372, line: 571, baseType: !115, size: 32, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1411, file: !1372, line: 572, baseType: !1432, size: 64, offset: 1152)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1411, file: !1372, line: 574, baseType: !1434, size: 64, offset: 1216)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1372, line: 49, flags: DIFlagFwdDecl)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1411, file: !1372, line: 576, baseType: !1434, size: 64, offset: 1280)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1411, file: !1372, line: 578, baseType: !511, size: 64, offset: 1344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1411, file: !1372, line: 588, baseType: !1439, size: 512, align: 512, offset: 1536)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1372, line: 497, size: 512, align: 512, elements: !1440)
!1440 = !{!1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1439, file: !1372, line: 498, baseType: !614, size: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1439, file: !1372, line: 499, baseType: !614, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1439, file: !1372, line: 500, baseType: !614, size: 64, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1439, file: !1372, line: 501, baseType: !610, size: 32, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1439, file: !1372, line: 502, baseType: !610, size: 32, offset: 224)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1439, file: !1372, line: 503, baseType: !511, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1439, file: !1372, line: 504, baseType: !511, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1439, file: !1372, line: 505, baseType: !511, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1439, file: !1372, line: 506, baseType: !1450, size: 64, align: 64, offset: 448)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1372, line: 445, size: 64, align: 64, elements: !1451)
!1451 = !{!1452, !1453}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1450, file: !1372, line: 446, baseType: !13, size: 32)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1450, file: !1372, line: 447, baseType: !13, size: 32, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1371, file: !1372, line: 798, baseType: !1455, size: 384, offset: 3072)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1372, line: 592, size: 384, elements: !1456)
!1456 = !{!1457, !1458, !1459, !1460, !1461, !1462, !1463}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1455, file: !1372, line: 593, baseType: !382, size: 128)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1455, file: !1372, line: 594, baseType: !511, size: 64, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1455, file: !1372, line: 595, baseType: !511, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1455, file: !1372, line: 596, baseType: !13, size: 32, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1455, file: !1372, line: 597, baseType: !431, size: 16, offset: 288)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1455, file: !1372, line: 598, baseType: !431, size: 16, offset: 304)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1455, file: !1372, line: 600, baseType: !1464, size: 64, offset: 320)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1371, file: !1372, line: 799, baseType: !1466, size: 1792, offset: 3456)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1372, line: 610, size: 1792, elements: !1467)
!1467 = !{!1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1557, !1558}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1466, file: !1372, line: 611, baseType: !914, size: 192, align: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1466, file: !1372, line: 618, baseType: !614, size: 64, offset: 192)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1466, file: !1372, line: 619, baseType: !614, size: 64, offset: 256)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1466, file: !1372, line: 620, baseType: !614, size: 64, offset: 320)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1466, file: !1372, line: 621, baseType: !614, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1466, file: !1372, line: 622, baseType: !614, size: 64, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1466, file: !1372, line: 629, baseType: !812, size: 64, offset: 512)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1466, file: !1372, line: 630, baseType: !614, size: 64, offset: 576)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1466, file: !1372, line: 631, baseType: !13, size: 32, offset: 640)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1466, file: !1372, line: 653, baseType: !13, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1466, file: !1372, line: 654, baseType: !13, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1466, file: !1372, line: 655, baseType: !13, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1466, file: !1372, line: 656, baseType: !13, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1466, file: !1372, line: 662, baseType: !1482, size: 512, offset: 704)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !25, line: 118, size: 512, elements: !1483)
!1483 = !{!1484, !1492, !1493, !1498, !1553, !1554, !1555, !1556}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1482, file: !25, line: 119, baseType: !1485, size: 256)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1486, line: 9, size: 256, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1485, file: !1486, line: 10, baseType: !914, size: 192, align: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1485, file: !1486, line: 11, baseType: !1490, size: 64, offset: 192)
!1490 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1491, line: 29, baseType: !812)
!1491 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1482, file: !25, line: 120, baseType: !1490, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1482, file: !25, line: 121, baseType: !1494, size: 64, offset: 320)
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{!24, !1497}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1482, file: !25, line: 122, baseType: !1499, size: 64, offset: 384)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !25, line: 159, size: 512, align: 512, elements: !1501)
!1501 = !{!1502, !1527, !1528, !1531, !1536, !1537, !1548, !1552}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1500, file: !25, line: 160, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !25, line: 215, size: 4608, align: 512, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1504, file: !25, line: 216, baseType: !760, size: 32)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1504, file: !25, line: 217, baseType: !13, size: 32, offset: 32)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1504, file: !25, line: 218, baseType: !13, size: 32, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1504, file: !25, line: 219, baseType: !13, size: 32, offset: 96)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1504, file: !25, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1504, file: !25, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1504, file: !25, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1504, file: !25, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1504, file: !25, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1504, file: !25, line: 226, baseType: !13, size: 32, offset: 160)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1504, file: !25, line: 227, baseType: !431, size: 16, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1504, file: !25, line: 228, baseType: !431, size: 16, offset: 208)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1504, file: !25, line: 229, baseType: !13, size: 32, offset: 224)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1504, file: !25, line: 235, baseType: !1490, size: 64, offset: 256)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1504, file: !25, line: 236, baseType: !1497, size: 64, offset: 320)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1504, file: !25, line: 237, baseType: !1490, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1504, file: !25, line: 238, baseType: !1497, size: 64, offset: 448)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1504, file: !25, line: 239, baseType: !1524, size: 4096, align: 512, offset: 512)
!1524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1500, size: 4096, align: 512, elements: !1525)
!1525 = !{!1526}
!1526 = !DISubrange(count: 8)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1500, file: !25, line: 161, baseType: !13, size: 32, offset: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1500, file: !25, line: 162, baseType: !1529, size: 32, offset: 96)
!1529 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !347, line: 32, baseType: !1530)
!1530 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !495, line: 96, baseType: !115)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1500, file: !25, line: 163, baseType: !1532, size: 32, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !583, line: 274, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !583, line: 274, size: 32, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1533, file: !583, line: 274, baseType: !587, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1500, file: !25, line: 164, baseType: !1497, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1500, file: !25, line: 165, baseType: !1538, size: 128, offset: 256)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1486, line: 14, size: 128, elements: !1539)
!1539 = !{!1540}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1538, file: !1486, line: 15, baseType: !1541, size: 128)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !915, line: 26, size: 128, elements: !1542)
!1542 = !{!1543, !1547}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1541, file: !915, line: 27, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !915, line: 12, size: 64, elements: !1545)
!1545 = !{!1546}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1544, file: !915, line: 13, baseType: !919, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1541, file: !915, line: 28, baseType: !919, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1500, file: !25, line: 166, baseType: !1549, size: 64, offset: 384)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!1490}
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1500, file: !25, line: 167, baseType: !1490, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1482, file: !25, line: 123, baseType: !419, size: 8, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1482, file: !25, line: 124, baseType: !419, size: 8, offset: 456)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1482, file: !25, line: 125, baseType: !419, size: 8, offset: 464)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1482, file: !25, line: 126, baseType: !419, size: 8, offset: 472)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1466, file: !1372, line: 671, baseType: !1482, size: 512, offset: 1216)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1466, file: !1372, line: 679, baseType: !1559, size: 64, offset: 1728)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1371, file: !1372, line: 800, baseType: !1561, size: 64, offset: 5248)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1372, line: 800, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1371, file: !1372, line: 809, baseType: !1565, size: 64, offset: 5312)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1372, line: 70, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1371, file: !1372, line: 825, baseType: !1568, size: 2048, align: 512, offset: 5632)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1372, line: 509, size: 2048, align: 512, elements: !1569)
!1569 = !{!1570, !1571, !1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1580, !1581, !1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1568, file: !1372, line: 511, baseType: !614, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1568, file: !1372, line: 512, baseType: !614, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1568, file: !1372, line: 513, baseType: !614, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1568, file: !1372, line: 514, baseType: !614, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1568, file: !1372, line: 515, baseType: !614, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1568, file: !1372, line: 516, baseType: !614, size: 64, offset: 320)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1568, file: !1372, line: 518, baseType: !614, size: 64, offset: 384)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1568, file: !1372, line: 519, baseType: !614, size: 64, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1568, file: !1372, line: 520, baseType: !812, size: 64, offset: 512)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1568, file: !1372, line: 522, baseType: !614, size: 64, offset: 576)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1568, file: !1372, line: 523, baseType: !614, size: 64, offset: 640)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1568, file: !1372, line: 524, baseType: !812, size: 64, offset: 704)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1568, file: !1372, line: 526, baseType: !812, size: 64, offset: 768)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1568, file: !1372, line: 527, baseType: !614, size: 64, offset: 832)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1568, file: !1372, line: 529, baseType: !614, size: 64, offset: 896)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1568, file: !1372, line: 530, baseType: !614, size: 64, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1568, file: !1372, line: 531, baseType: !614, size: 64, offset: 1024)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1568, file: !1372, line: 532, baseType: !614, size: 64, offset: 1088)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1568, file: !1372, line: 533, baseType: !614, size: 64, offset: 1152)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1568, file: !1372, line: 535, baseType: !614, size: 64, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1568, file: !1372, line: 536, baseType: !614, size: 64, offset: 1280)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1568, file: !1372, line: 537, baseType: !614, size: 64, offset: 1344)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1568, file: !1372, line: 538, baseType: !614, size: 64, offset: 1408)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1568, file: !1372, line: 539, baseType: !614, size: 64, offset: 1472)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1568, file: !1372, line: 540, baseType: !614, size: 64, offset: 1536)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1568, file: !1372, line: 541, baseType: !614, size: 64, offset: 1600)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1568, file: !1372, line: 542, baseType: !614, size: 64, offset: 1664)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1568, file: !1372, line: 543, baseType: !614, size: 64, offset: 1728)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1371, file: !1372, line: 833, baseType: !13, size: 32, offset: 7680)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1371, file: !1372, line: 836, baseType: !13, size: 32, offset: 7712)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1371, file: !1372, line: 837, baseType: !115, size: 32, offset: 7744)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1371, file: !1372, line: 838, baseType: !1602, size: 64, offset: 7808)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1604)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1605, line: 19, baseType: !1606)
!1605 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1605, line: 19, size: 64, elements: !1607)
!1607 = !{!1608}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1606, file: !1605, line: 19, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 64, elements: !1610)
!1610 = !{!1611}
!1611 = !DISubrange(count: 1)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1371, file: !1372, line: 839, baseType: !1613, size: 64, offset: 7872)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1371, file: !1372, line: 840, baseType: !1604, size: 64, offset: 7936)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1371, file: !1372, line: 841, baseType: !345, size: 64, offset: 8000)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1371, file: !1372, line: 843, baseType: !431, size: 16, offset: 8064)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1371, file: !1372, line: 845, baseType: !431, size: 16, offset: 8080)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1371, file: !1372, line: 848, baseType: !115, size: 32, offset: 8096)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1371, file: !1372, line: 849, baseType: !1620, size: 32, offset: 8128)
!1620 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1372, line: 718, size: 32, elements: !1621)
!1621 = !{!1622, !1629}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1620, file: !1372, line: 724, baseType: !1623, size: 32)
!1623 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1620, file: !1372, line: 719, size: 32, elements: !1624)
!1624 = !{!1625, !1626, !1627, !1628}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1623, file: !1372, line: 720, baseType: !419, size: 8)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1623, file: !1372, line: 721, baseType: !419, size: 8, offset: 8)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1623, file: !1372, line: 722, baseType: !419, size: 8, offset: 16)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1623, file: !1372, line: 723, baseType: !419, size: 8, offset: 24)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1620, file: !1372, line: 725, baseType: !610, size: 32)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1371, file: !1372, line: 850, baseType: !382, size: 128, offset: 8192)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1371, file: !1372, line: 851, baseType: !1632, size: 64, offset: 8320)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1372, line: 60, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1371, file: !1372, line: 855, baseType: !511, size: 64, offset: 8384)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1371, file: !1372, line: 856, baseType: !419, size: 8, offset: 8448)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1371, file: !1372, line: 857, baseType: !419, size: 8, offset: 8456)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1371, file: !1372, line: 858, baseType: !115, size: 32, offset: 8480)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1371, file: !1372, line: 859, baseType: !382, size: 128, offset: 8512)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1371, file: !1372, line: 860, baseType: !115, size: 32, offset: 8640)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1371, file: !1372, line: 861, baseType: !382, size: 128, offset: 8704)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1371, file: !1372, line: 873, baseType: !1642, size: 256, offset: 8832)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1372, line: 376, size: 256, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1642, file: !1372, line: 381, baseType: !511, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1642, file: !1372, line: 384, baseType: !616, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1642, file: !1372, line: 389, baseType: !616, size: 64, offset: 128)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1642, file: !1372, line: 392, baseType: !616, size: 64, offset: 192)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1371, file: !1372, line: 875, baseType: !382, size: 128, offset: 9088)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1371, file: !1372, line: 877, baseType: !1650, size: 320, offset: 9216)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1651, line: 86, size: 320, elements: !1652)
!1651 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1650, file: !1651, line: 87, baseType: !115, size: 32)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1650, file: !1651, line: 88, baseType: !382, size: 128, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1650, file: !1651, line: 89, baseType: !382, size: 128, offset: 192)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1371, file: !1372, line: 878, baseType: !914, size: 192, align: 64, offset: 9536)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1371, file: !1372, line: 881, baseType: !1658, size: 64, offset: 9728)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !44, line: 733, size: 10240, elements: !1660)
!1660 = !{!1661, !1829}
!1661 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !44, line: 734, baseType: !1662, size: 10240)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1659, file: !44, line: 734, size: 10240, elements: !1663)
!1663 = !{!1664, !1668, !1681, !1686, !1687, !1688, !1689, !1690, !1691, !1700, !1701, !1702, !1708, !1709, !1710, !1711, !1712, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1749, !1759, !1762, !1807, !1808, !1809, !1812, !1815, !1816, !1819, !1820, !1821, !1827, !1828}
!1664 = !DIDerivedType(tag: DW_TAG_member, scope: !1662, file: !44, line: 739, baseType: !1665, size: 512, align: 512)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1662, file: !44, line: 739, size: 512, align: 512, elements: !1666)
!1666 = !{!1667}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1665, file: !44, line: 747, baseType: !366, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1662, file: !44, line: 750, baseType: !1669, size: 128, offset: 512)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1670, line: 218, size: 128, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1671 = !{!1672, !1679, !1680}
!1672 = !DIDerivedType(tag: DW_TAG_member, scope: !1669, file: !1670, line: 219, baseType: !1673, size: 32)
!1673 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1669, file: !1670, line: 219, size: 32, elements: !1674)
!1674 = !{!1675, !1676}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1673, file: !1670, line: 220, baseType: !395, size: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1673, file: !1670, line: 221, baseType: !1677)
!1677 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1670, line: 197, baseType: !1678)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1670, line: 197, elements: !1091)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1669, file: !1670, line: 223, baseType: !13, size: 32, offset: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1669, file: !1670, line: 224, baseType: !345, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1662, file: !44, line: 752, baseType: !1682, size: 64, offset: 640)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!511, !1685, !511, !511, !511, !511}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1662, file: !44, line: 756, baseType: !511, size: 64, offset: 704)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1662, file: !44, line: 757, baseType: !511, size: 64, offset: 768)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1662, file: !44, line: 760, baseType: !511, size: 64, offset: 832)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1662, file: !44, line: 761, baseType: !511, size: 64, offset: 896)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1662, file: !44, line: 763, baseType: !511, size: 64, offset: 960)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1662, file: !44, line: 764, baseType: !1692, size: 64, offset: 1024)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1694, line: 299, baseType: !1695)
!1694 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1694, line: 299, size: 64, elements: !1696)
!1696 = !{!1697}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1695, file: !1694, line: 299, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1699, line: 18, baseType: !511)
!1699 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1662, file: !44, line: 773, baseType: !366, size: 32, offset: 1088)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1662, file: !44, line: 785, baseType: !366, size: 32, offset: 1120)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1662, file: !44, line: 795, baseType: !1703, size: 64, offset: 1152)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !44, line: 726, size: 128, elements: !1705)
!1705 = !{!1706, !1707}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1704, file: !44, line: 727, baseType: !614, size: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1704, file: !44, line: 728, baseType: !115, size: 32, offset: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1662, file: !44, line: 801, baseType: !511, size: 64, offset: 1216)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1662, file: !44, line: 804, baseType: !806, size: 64, offset: 1280)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1662, file: !44, line: 806, baseType: !115, size: 32, offset: 1344)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1662, file: !44, line: 808, baseType: !395, size: 32, offset: 1376)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1662, file: !44, line: 823, baseType: !1713, size: 320, offset: 1408)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1714, line: 48, size: 320, elements: !1715)
!1714 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1715 = !{!1716, !1717, !1718, !1719, !1720}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1713, file: !1714, line: 49, baseType: !806, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1713, file: !1714, line: 55, baseType: !806, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1713, file: !1714, line: 57, baseType: !816, size: 32, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1713, file: !1714, line: 59, baseType: !760, size: 32, offset: 160)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1713, file: !1714, line: 60, baseType: !382, size: 128, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1662, file: !44, line: 825, baseType: !382, size: 128, offset: 1728)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1662, file: !44, line: 845, baseType: !115, size: 32, offset: 1856)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1662, file: !44, line: 849, baseType: !511, size: 64, offset: 1920)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1662, file: !44, line: 850, baseType: !511, size: 64, offset: 1984)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1662, file: !44, line: 852, baseType: !511, size: 64, offset: 2048)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1662, file: !44, line: 853, baseType: !511, size: 64, offset: 2112)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1662, file: !44, line: 854, baseType: !808, size: 64, offset: 2176)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1662, file: !44, line: 855, baseType: !511, size: 64, offset: 2240)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1662, file: !44, line: 856, baseType: !511, size: 64, offset: 2304)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1662, file: !44, line: 857, baseType: !511, size: 64, offset: 2368)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1662, file: !44, line: 858, baseType: !511, size: 64, offset: 2432)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1662, file: !44, line: 865, baseType: !587, size: 32, offset: 2496)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1662, file: !44, line: 867, baseType: !395, size: 32, offset: 2528)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1662, file: !44, line: 869, baseType: !511, size: 64, offset: 2560)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1662, file: !44, line: 869, baseType: !511, size: 64, offset: 2624)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1662, file: !44, line: 869, baseType: !511, size: 64, offset: 2688)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1662, file: !44, line: 869, baseType: !511, size: 64, offset: 2752)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1662, file: !44, line: 870, baseType: !511, size: 64, offset: 2816)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1662, file: !44, line: 870, baseType: !511, size: 64, offset: 2880)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1662, file: !44, line: 870, baseType: !511, size: 64, offset: 2944)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1662, file: !44, line: 871, baseType: !511, size: 64, offset: 3008)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1662, file: !44, line: 871, baseType: !511, size: 64, offset: 3072)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1662, file: !44, line: 871, baseType: !511, size: 64, offset: 3136)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1662, file: !44, line: 871, baseType: !511, size: 64, offset: 3200)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1662, file: !44, line: 873, baseType: !1746, size: 3328, offset: 3264)
!1746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, size: 3328, elements: !1747)
!1747 = !{!1748}
!1748 = !DISubrange(count: 52)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1662, file: !44, line: 875, baseType: !1750, size: 1280, offset: 6592)
!1750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1751, size: 1280, elements: !1032)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1752, line: 22, size: 320, elements: !1753)
!1752 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1753 = !{!1754, !1755, !1756, !1757}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1751, file: !1752, line: 23, baseType: !760, size: 32)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1751, file: !1752, line: 24, baseType: !812, size: 64, offset: 64)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1751, file: !1752, line: 26, baseType: !382, size: 128, offset: 128)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1751, file: !1752, line: 28, baseType: !1758, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1662, file: !44, line: 877, baseType: !1760, size: 64, offset: 7872)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !44, line: 877, flags: DIFlagFwdDecl)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1662, file: !44, line: 880, baseType: !1763, size: 1088, offset: 7936)
!1763 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1764, line: 72, baseType: !1765)
!1764 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1765 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1764, line: 23, size: 1088, elements: !1766)
!1766 = !{!1767, !1768, !1769, !1770, !1771, !1774, !1775, !1776, !1777, !1804, !1805, !1806}
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1765, file: !1764, line: 28, baseType: !614, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1765, file: !1764, line: 38, baseType: !808, size: 64, offset: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1765, file: !1764, line: 40, baseType: !511, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1765, file: !1764, line: 43, baseType: !1713, size: 320, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1765, file: !1764, line: 44, baseType: !1772, size: 64, offset: 512)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1764, line: 44, flags: DIFlagFwdDecl)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1765, file: !1764, line: 48, baseType: !511, size: 64, offset: 576)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1765, file: !1764, line: 59, baseType: !802, size: 256, offset: 640)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1765, file: !1764, line: 60, baseType: !345, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1765, file: !1764, line: 61, baseType: !1778, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1780)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1781, line: 13, size: 1216, elements: !1782)
!1781 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788, !1789, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1780, file: !1781, line: 14, baseType: !345, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1780, file: !1781, line: 15, baseType: !511, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1780, file: !1781, line: 17, baseType: !511, size: 64, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1780, file: !1781, line: 17, baseType: !511, size: 64, offset: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1780, file: !1781, line: 18, baseType: !511, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1780, file: !1781, line: 18, baseType: !511, size: 64, offset: 320)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1780, file: !1781, line: 19, baseType: !1790, size: 64, offset: 384)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1780, file: !1781, line: 21, baseType: !497, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1780, file: !1781, line: 23, baseType: !497, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1780, file: !1781, line: 24, baseType: !497, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1780, file: !1781, line: 25, baseType: !497, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1780, file: !1781, line: 26, baseType: !497, size: 64, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1780, file: !1781, line: 27, baseType: !497, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1780, file: !1781, line: 28, baseType: !497, size: 64, offset: 832)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1780, file: !1781, line: 29, baseType: !497, size: 64, offset: 896)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1780, file: !1781, line: 30, baseType: !497, size: 64, offset: 960)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1780, file: !1781, line: 31, baseType: !497, size: 64, offset: 1024)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1780, file: !1781, line: 32, baseType: !497, size: 64, offset: 1088)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1780, file: !1781, line: 33, baseType: !497, size: 64, offset: 1152)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1765, file: !1764, line: 63, baseType: !366, size: 32, offset: 1024)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1765, file: !1764, line: 69, baseType: !429, size: 16, offset: 1056)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1765, file: !1764, line: 70, baseType: !938, size: 16, offset: 1072)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1662, file: !44, line: 882, baseType: !511, size: 64, offset: 9024)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1662, file: !44, line: 885, baseType: !395, size: 32, offset: 9088)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1662, file: !44, line: 886, baseType: !1810, size: 64, offset: 9152)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !44, line: 732, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1662, file: !44, line: 901, baseType: !1813, size: 64, offset: 9216)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !44, line: 901, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1662, file: !44, line: 904, baseType: !1685, size: 64, offset: 9280)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1662, file: !44, line: 906, baseType: !1817, size: 64, offset: 9344)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !44, line: 906, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1662, file: !44, line: 930, baseType: !366, size: 32, offset: 9408)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1662, file: !44, line: 933, baseType: !366, size: 32, offset: 9440)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1662, file: !44, line: 935, baseType: !1822, size: 64, offset: 9472)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !60, line: 103, size: 64, elements: !1823)
!1823 = !{!1824}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1822, file: !60, line: 104, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !60, line: 101, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1662, file: !44, line: 940, baseType: !806, size: 64, offset: 9536)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1662, file: !44, line: 942, baseType: !1062, size: 256, offset: 9600)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1659, file: !44, line: 986, baseType: !1830, offset: 10240)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !511, elements: !1831)
!1831 = !{!1832}
!1832 = !DISubrange(count: -1)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1371, file: !1372, line: 882, baseType: !1658, size: 64, offset: 9792)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1371, file: !1372, line: 884, baseType: !115, size: 32, offset: 9856)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1371, file: !1372, line: 885, baseType: !115, size: 32, offset: 9888)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1371, file: !1372, line: 886, baseType: !115, size: 32, offset: 9920)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1371, file: !1372, line: 888, baseType: !115, size: 32, offset: 9952)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1371, file: !1372, line: 890, baseType: !511, size: 64, offset: 9984)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1371, file: !1372, line: 893, baseType: !13, size: 32, offset: 10048)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1371, file: !1372, line: 896, baseType: !13, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1371, file: !1372, line: 897, baseType: !13, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1371, file: !1372, line: 898, baseType: !13, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1371, file: !1372, line: 899, baseType: !13, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1371, file: !1372, line: 919, baseType: !13, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1371, file: !1372, line: 922, baseType: !13, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1371, file: !1372, line: 923, baseType: !13, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1371, file: !1372, line: 925, baseType: !13, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1371, file: !1372, line: 939, baseType: !13, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1371, file: !1372, line: 941, baseType: !13, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1371, file: !1372, line: 944, baseType: !13, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1371, file: !1372, line: 956, baseType: !13, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1371, file: !1372, line: 962, baseType: !13, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1371, file: !1372, line: 966, baseType: !13, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1371, file: !1372, line: 969, baseType: !511, size: 64, offset: 10176)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1371, file: !1372, line: 971, baseType: !1856, size: 448, offset: 10240)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !30, line: 25, size: 448, elements: !1857)
!1857 = !{!1858, !1859, !1864}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1856, file: !30, line: 26, baseType: !511, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1856, file: !30, line: 27, baseType: !1860, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!497, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, scope: !1856, file: !30, line: 28, baseType: !1865, size: 320, offset: 128)
!1865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1856, file: !30, line: 28, size: 320, elements: !1866)
!1866 = !{!1867, !1877, !1902}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !1865, file: !30, line: 37, baseType: !1868, size: 320)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !30, line: 30, size: 320, elements: !1869)
!1869 = !{!1870, !1872, !1873, !1874, !1875, !1876}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !1868, file: !30, line: 31, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1868, file: !30, line: 32, baseType: !610, size: 32, offset: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !30, line: 33, baseType: !610, size: 32, offset: 96)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !1868, file: !30, line: 34, baseType: !610, size: 32, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1868, file: !30, line: 35, baseType: !614, size: 64, offset: 192)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !1868, file: !30, line: 36, baseType: !1871, size: 64, offset: 256)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !1865, file: !30, line: 47, baseType: !1878, size: 192)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !30, line: 39, size: 192, elements: !1879)
!1879 = !{!1880, !1881, !1882, !1901}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1878, file: !30, line: 40, baseType: !1529, size: 32)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1878, file: !30, line: 41, baseType: !29, size: 32, offset: 32)
!1882 = !DIDerivedType(tag: DW_TAG_member, scope: !1878, file: !30, line: 42, baseType: !1883, size: 64, offset: 64)
!1883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1878, file: !30, line: 42, size: 64, elements: !1884)
!1884 = !{!1885, !1893}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !1883, file: !30, line: 43, baseType: !1886, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1887, size: 64)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !1888, line: 7, size: 128, elements: !1889)
!1888 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!1889 = !{!1890, !1892}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1887, file: !1888, line: 8, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !495, line: 93, baseType: !704)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1887, file: !1888, line: 9, baseType: !704, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !1883, file: !30, line: 44, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !1896, line: 7, size: 64, elements: !1897)
!1896 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!1897 = !{!1898, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1895, file: !1896, line: 8, baseType: !1899, size: 32)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !1896, line: 5, baseType: !798)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1895, file: !1896, line: 9, baseType: !798, size: 32, offset: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1878, file: !30, line: 46, baseType: !614, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1865, file: !30, line: 55, baseType: !1903, size: 256)
!1903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1865, file: !30, line: 49, size: 256, elements: !1904)
!1904 = !{!1905, !1908, !1909, !1910, !1911}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !1903, file: !30, line: 50, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !30, line: 14, flags: DIFlagFwdDecl)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !1903, file: !30, line: 51, baseType: !115, size: 32, offset: 64)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !1903, file: !30, line: 52, baseType: !115, size: 32, offset: 96)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1903, file: !30, line: 53, baseType: !511, size: 64, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1903, file: !30, line: 54, baseType: !511, size: 64, offset: 192)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1371, file: !1372, line: 973, baseType: !1913, size: 32, offset: 10688)
!1913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !347, line: 27, baseType: !1914)
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !495, line: 28, baseType: !115)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1371, file: !1372, line: 974, baseType: !1913, size: 32, offset: 10720)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1371, file: !1372, line: 978, baseType: !511, size: 64, offset: 10752)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1371, file: !1372, line: 987, baseType: !1370, size: 64, offset: 10816)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1371, file: !1372, line: 990, baseType: !1370, size: 64, offset: 10880)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1371, file: !1372, line: 995, baseType: !382, size: 128, offset: 10944)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1371, file: !1372, line: 996, baseType: !382, size: 128, offset: 11072)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1371, file: !1372, line: 997, baseType: !1370, size: 64, offset: 11200)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1371, file: !1372, line: 1005, baseType: !382, size: 128, offset: 11264)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1371, file: !1372, line: 1006, baseType: !382, size: 128, offset: 11392)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1371, file: !1372, line: 1009, baseType: !1327, size: 64, offset: 11520)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1371, file: !1372, line: 1010, baseType: !1926, size: 512, offset: 11584)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, size: 512, elements: !1032)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1371, file: !1372, line: 1011, baseType: !382, size: 128, offset: 12096)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1371, file: !1372, line: 1012, baseType: !382, size: 128, offset: 12224)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1371, file: !1372, line: 1014, baseType: !750, size: 64, offset: 12352)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1371, file: !1372, line: 1017, baseType: !931, size: 64, offset: 12416)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1371, file: !1372, line: 1020, baseType: !931, size: 64, offset: 12480)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1371, file: !1372, line: 1023, baseType: !345, size: 64, offset: 12544)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1371, file: !1372, line: 1025, baseType: !614, size: 64, offset: 12608)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1371, file: !1372, line: 1026, baseType: !614, size: 64, offset: 12672)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1371, file: !1372, line: 1031, baseType: !614, size: 64, offset: 12736)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1371, file: !1372, line: 1032, baseType: !1937, size: 192, offset: 12800)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1372, line: 324, size: 192, elements: !1938)
!1938 = !{!1939, !1940, !1941}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1937, file: !1372, line: 326, baseType: !614, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1937, file: !1372, line: 327, baseType: !614, size: 64, offset: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1937, file: !1372, line: 328, baseType: !760, size: 32, offset: 128)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1371, file: !1372, line: 1041, baseType: !511, size: 64, offset: 12992)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1371, file: !1372, line: 1042, baseType: !511, size: 64, offset: 13056)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1371, file: !1372, line: 1045, baseType: !614, size: 64, offset: 13120)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1371, file: !1372, line: 1048, baseType: !614, size: 64, offset: 13184)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1371, file: !1372, line: 1051, baseType: !511, size: 64, offset: 13248)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1371, file: !1372, line: 1052, baseType: !511, size: 64, offset: 13312)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1371, file: !1372, line: 1055, baseType: !1949, size: 640, offset: 13376)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1950, line: 132, size: 640, elements: !1951)
!1950 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!1951 = !{!1952, !1958, !1959}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1949, file: !1950, line: 133, baseType: !1953, size: 576)
!1953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1954, size: 576, elements: !462)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1950, line: 117, size: 192, elements: !1955)
!1955 = !{!1956, !1957}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1954, file: !1950, line: 118, baseType: !614, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1954, file: !1950, line: 119, baseType: !1538, size: 128, offset: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1949, file: !1950, line: 134, baseType: !13, size: 32, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1949, file: !1950, line: 135, baseType: !13, size: 32, offset: 608)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1371, file: !1372, line: 1058, baseType: !1961, size: 448, offset: 14016)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1950, line: 144, size: 448, elements: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1961, file: !1950, line: 145, baseType: !1022, size: 128, align: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1961, file: !1950, line: 146, baseType: !802, size: 256, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1961, file: !1950, line: 147, baseType: !13, size: 32, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1371, file: !1372, line: 1064, baseType: !1967, size: 64, offset: 14464)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1970, line: 110, size: 1472, elements: !1971)
!1970 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1971 = !{!1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1988, !1989, !1990, !1991, !1992, !1993, !2100, !2101, !2102, !2103, !2104, !2127, !2128, !2132, !2140}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1969, file: !1970, line: 111, baseType: !806, size: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1969, file: !1970, line: 112, baseType: !547, size: 32, offset: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1969, file: !1970, line: 113, baseType: !556, size: 32, offset: 96)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1969, file: !1970, line: 114, baseType: !547, size: 32, offset: 128)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1969, file: !1970, line: 115, baseType: !556, size: 32, offset: 160)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1969, file: !1970, line: 116, baseType: !547, size: 32, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1969, file: !1970, line: 117, baseType: !556, size: 32, offset: 224)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1969, file: !1970, line: 118, baseType: !547, size: 32, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1969, file: !1970, line: 119, baseType: !556, size: 32, offset: 288)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1969, file: !1970, line: 120, baseType: !13, size: 32, offset: 320)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1969, file: !1970, line: 121, baseType: !1983, size: 64, offset: 384)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1984, line: 24, baseType: !1985)
!1984 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1984, line: 24, size: 64, elements: !1986)
!1986 = !{!1987}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1985, file: !1984, line: 24, baseType: !614, size: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1969, file: !1970, line: 122, baseType: !1983, size: 64, offset: 448)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1969, file: !1970, line: 123, baseType: !1983, size: 64, offset: 512)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1969, file: !1970, line: 124, baseType: !1983, size: 64, offset: 576)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1969, file: !1970, line: 125, baseType: !1983, size: 64, offset: 640)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1969, file: !1970, line: 127, baseType: !423, size: 8, offset: 704)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1969, file: !1970, line: 129, baseType: !1994, size: 64, offset: 768)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1996, line: 195, size: 1728, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1997 = !{!1998, !1999, !2002, !2007, !2008, !2011, !2012, !2019, !2020, !2021, !2022, !2025, !2026, !2027, !2028, !2029, !2064, !2085}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1995, file: !1996, line: 196, baseType: !361, size: 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1995, file: !1996, line: 197, baseType: !2000, size: 32, offset: 32)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1996, line: 28, baseType: !2001)
!2001 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !347, line: 104, baseType: !798)
!2002 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 198, baseType: !2003, size: 192, offset: 64)
!2003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 198, size: 192, elements: !2004)
!2004 = !{!2005, !2006}
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !2003, file: !1996, line: 199, baseType: !382, size: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !2003, file: !1996, line: 200, baseType: !914, size: 192, align: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1995, file: !1996, line: 205, baseType: !1713, size: 320, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1995, file: !1996, line: 206, baseType: !2009, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2010, size: 64)
!2010 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1996, line: 206, flags: DIFlagFwdDecl)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1995, file: !1996, line: 207, baseType: !345, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 208, baseType: !2013, size: 64, offset: 704)
!2013 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 208, size: 64, elements: !2014)
!2014 = !{!2015, !2018}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !2013, file: !1996, line: 209, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !2017, line: 8, baseType: !813)
!2017 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !2013, file: !1996, line: 210, baseType: !2016, size: 64)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1995, file: !1996, line: 212, baseType: !2016, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1995, file: !1996, line: 213, baseType: !547, size: 32, offset: 832)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1995, file: !1996, line: 214, baseType: !556, size: 32, offset: 864)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1995, file: !1996, line: 215, baseType: !2023, size: 32, offset: 896)
!2023 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1996, line: 31, baseType: !2024)
!2024 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !347, line: 110, baseType: !610)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1995, file: !1996, line: 216, baseType: !431, size: 16, offset: 928)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1995, file: !1996, line: 217, baseType: !431, size: 16, offset: 944)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1995, file: !1996, line: 221, baseType: !940, size: 16, offset: 960)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1995, file: !1996, line: 228, baseType: !511, size: 64, offset: 1024)
!2029 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 245, baseType: !2030, size: 320, offset: 1088)
!2030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 245, size: 320, elements: !2031)
!2031 = !{!2032, !2056}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !2030, file: !1996, line: 246, baseType: !2033, size: 320)
!2033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1996, line: 114, size: 320, elements: !2034)
!2034 = !{!2035, !2036, !2045, !2048, !2055}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2033, file: !1996, line: 116, baseType: !511, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_member, scope: !2033, file: !1996, line: 117, baseType: !2037, size: 64, offset: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2033, file: !1996, line: 117, size: 64, elements: !2038)
!2038 = !{!2039, !2044}
!2039 = !DIDerivedType(tag: DW_TAG_member, scope: !2037, file: !1996, line: 118, baseType: !2040, size: 64)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2037, file: !1996, line: 118, size: 64, elements: !2041)
!2041 = !{!2042, !2043}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !2040, file: !1996, line: 120, baseType: !429, size: 16)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2040, file: !1996, line: 121, baseType: !3, size: 48, offset: 16)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !2037, file: !1996, line: 127, baseType: !511, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2033, file: !1996, line: 129, baseType: !2046, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1996, line: 102, flags: DIFlagFwdDecl)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2033, file: !1996, line: 130, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1996, line: 108, size: 192, elements: !2051)
!2051 = !{!2052, !2053, !2054}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2050, file: !1996, line: 109, baseType: !1022, size: 128, align: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2050, file: !1996, line: 110, baseType: !361, size: 32, offset: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !2050, file: !1996, line: 111, baseType: !882, size: 8, offset: 160)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2033, file: !1996, line: 131, baseType: !379, size: 64, offset: 256)
!2056 = !DIDerivedType(tag: DW_TAG_member, scope: !2030, file: !1996, line: 247, baseType: !2057, size: 320)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2030, file: !1996, line: 247, size: 320, elements: !2058)
!2058 = !{!2059, !2060, !2061, !2062, !2063}
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !2057, file: !1996, line: 248, baseType: !511, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !2057, file: !1996, line: 249, baseType: !511, size: 64, offset: 64)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2057, file: !1996, line: 250, baseType: !2046, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !2057, file: !1996, line: 251, baseType: !2049, size: 64, offset: 192)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !2057, file: !1996, line: 252, baseType: !461, size: 64, offset: 256)
!2064 = !DIDerivedType(tag: DW_TAG_member, scope: !1995, file: !1996, line: 260, baseType: !2065, size: 256, offset: 1408)
!2065 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1995, file: !1996, line: 260, size: 256, elements: !2066)
!2066 = !{!2067, !2073}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !2065, file: !1996, line: 261, baseType: !2068, size: 256)
!2068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1996, line: 134, size: 256, elements: !2069)
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !2068, file: !1996, line: 135, baseType: !345, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2068, file: !1996, line: 136, baseType: !2072, size: 256)
!2072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 256, elements: !1032)
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2065, file: !1996, line: 262, baseType: !2074, size: 256)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2065, file: !1996, line: 262, size: 256, elements: !2075)
!2075 = !{!2076, !2077}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !2074, file: !1996, line: 264, baseType: !382, size: 128)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !2074, file: !1996, line: 265, baseType: !2078, size: 128, offset: 128)
!2078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !2079, line: 22, size: 128, elements: !2080)
!2079 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!2080 = !{!2081, !2084}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !2078, file: !2079, line: 23, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !2079, line: 23, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !2078, file: !2079, line: 24, baseType: !511, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1995, file: !1996, line: 280, baseType: !2086, size: 64, offset: 1664)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1996, line: 176, size: 192, elements: !2088)
!2088 = !{!2089, !2098, !2099}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !2087, file: !1996, line: 177, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1996, line: 171, baseType: !2091)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!115, !1994, !2094, !2096, !1994}
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2047)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2068)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2087, file: !1996, line: 178, baseType: !1994, size: 64, offset: 64)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !2087, file: !1996, line: 179, baseType: !2046, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1969, file: !1970, line: 130, baseType: !1994, size: 64, offset: 832)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1969, file: !1970, line: 131, baseType: !1994, size: 64, offset: 896)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1969, file: !1970, line: 132, baseType: !1994, size: 64, offset: 960)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1969, file: !1970, line: 135, baseType: !345, size: 64, offset: 1024)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1969, file: !1970, line: 137, baseType: !2105, size: 64, offset: 1088)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !2107, line: 14, size: 1088, elements: !2108)
!2107 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!2108 = !{!2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116}
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !2106, file: !2107, line: 15, baseType: !361, size: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !2106, file: !2107, line: 17, baseType: !1751, size: 320, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !2106, file: !2107, line: 19, baseType: !511, size: 64, offset: 384)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !2106, file: !2107, line: 20, baseType: !806, size: 64, offset: 448)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !2106, file: !2107, line: 23, baseType: !1048, size: 128, offset: 512)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2106, file: !2107, line: 24, baseType: !547, size: 32, offset: 640)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !2106, file: !2107, line: 29, baseType: !806, size: 64, offset: 704)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !2106, file: !2107, line: 36, baseType: !2117, size: 320, offset: 768)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !2118, line: 15, size: 320, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!2119 = !{!2120, !2121, !2122, !2123, !2124, !2125, !2126}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2117, file: !2118, line: 16, baseType: !760, size: 32)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !2117, file: !2118, line: 18, baseType: !115, size: 32, offset: 32)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !2117, file: !2118, line: 19, baseType: !115, size: 32, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !2117, file: !2118, line: 20, baseType: !115, size: 32, offset: 96)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !2117, file: !2118, line: 21, baseType: !115, size: 32, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !2117, file: !2118, line: 22, baseType: !511, size: 64, offset: 192)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2117, file: !2118, line: 23, baseType: !511, size: 64, offset: 256)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1969, file: !1970, line: 138, baseType: !1813, size: 64, offset: 1152)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1969, file: !1970, line: 139, baseType: !2129, size: 64, offset: 1216)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !2131, line: 16, flags: DIFlagFwdDecl)
!2131 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1969, file: !1970, line: 140, baseType: !2133, size: 64, offset: 1280)
!2133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2134, size: 64)
!2134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1970, line: 25, size: 64, elements: !2135)
!2135 = !{!2136, !2137, !2138}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2134, file: !1970, line: 26, baseType: !366, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2134, file: !1970, line: 27, baseType: !115, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2134, file: !1970, line: 28, baseType: !2139, offset: 64)
!2139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !556, elements: !1831)
!2140 = !DIDerivedType(tag: DW_TAG_member, scope: !1969, file: !1970, line: 142, baseType: !2141, size: 128, offset: 1344)
!2141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1969, file: !1970, line: 142, size: 128, elements: !2142)
!2142 = !{!2143, !2144}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !2141, file: !1970, line: 143, baseType: !115, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2141, file: !1970, line: 144, baseType: !1022, size: 128, align: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1371, file: !1372, line: 1067, baseType: !1967, size: 64, offset: 14528)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1371, file: !1372, line: 1070, baseType: !1967, size: 64, offset: 14592)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1371, file: !1372, line: 1074, baseType: !1994, size: 64, offset: 14656)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1371, file: !1372, line: 1084, baseType: !2149, size: 128, offset: 14720)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2150)
!2150 = !{!2151}
!2151 = !DISubrange(count: 16)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1371, file: !1372, line: 1086, baseType: !2153, size: 64, offset: 14848)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1372, line: 55, flags: DIFlagFwdDecl)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1371, file: !1372, line: 1089, baseType: !2156, size: 64, offset: 14912)
!2156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2157, line: 12, size: 64, elements: !2158)
!2157 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2158 = !{!2159}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2156, file: !2157, line: 13, baseType: !2160, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2157, line: 8, flags: DIFlagFwdDecl)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1371, file: !1372, line: 1090, baseType: !2163, size: 128, offset: 14976)
!2163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2164, line: 13, size: 128, elements: !2165)
!2164 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2165 = !{!2166}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2163, file: !2164, line: 14, baseType: !382, size: 128)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1371, file: !1372, line: 1097, baseType: !2168, size: 64, offset: 15104)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1372, line: 50, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1371, file: !1372, line: 1100, baseType: !2171, size: 64, offset: 15168)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1372, line: 1100, flags: DIFlagFwdDecl)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1371, file: !1372, line: 1103, baseType: !2174, size: 64, offset: 15232)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1372, line: 53, flags: DIFlagFwdDecl)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1371, file: !1372, line: 1107, baseType: !2177, size: 64, offset: 15296)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2179, line: 31, size: 576, elements: !2180)
!2179 = !DIFile(filename: "./include/linux/nsproxy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0eccbd9f7699e8135d7b0a90e38b547")
!2180 = !{!2181, !2182, !2185, !2188, !2191, !2192, !2195, !2198, !2199}
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2178, file: !2179, line: 32, baseType: !361, size: 32)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "uts_ns", scope: !2178, file: !2179, line: 33, baseType: !2183, size: 64, offset: 64)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "uts_namespace", file: !2179, line: 9, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "ipc_ns", scope: !2178, file: !2179, line: 34, baseType: !2186, size: 64, offset: 128)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "ipc_namespace", file: !2179, line: 10, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_ns", scope: !2178, file: !2179, line: 35, baseType: !2189, size: 64, offset: 192)
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_namespace", file: !2179, line: 8, flags: DIFlagFwdDecl)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "pid_ns_for_children", scope: !2178, file: !2179, line: 36, baseType: !1350, size: 64, offset: 256)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "net_ns", scope: !2178, file: !2179, line: 37, baseType: !2193, size: 64, offset: 320)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DICompositeType(tag: DW_TAG_structure_type, name: "net", file: !1996, line: 34, flags: DIFlagFwdDecl)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !2178, file: !2179, line: 38, baseType: !2196, size: 64, offset: 384)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "time_namespace", file: !2179, line: 38, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns_for_children", scope: !2178, file: !2179, line: 39, baseType: !2196, size: 64, offset: 448)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "cgroup_ns", scope: !2178, file: !2179, line: 40, baseType: !2200, size: 64, offset: 512)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DICompositeType(tag: DW_TAG_structure_type, name: "cgroup_namespace", file: !2179, line: 12, flags: DIFlagFwdDecl)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1371, file: !1372, line: 1110, baseType: !2203, size: 64, offset: 15360)
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2205, line: 93, size: 8768, elements: !2206)
!2205 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2224, !2225, !2226, !2227, !2228, !2229, !2230, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2254, !2263, !2264, !2266, !2267, !2268, !2271, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2309, !2310, !2317, !2327, !2330, !2331, !2334, !2335, !2336, !2337, !2338, !2339}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2204, file: !2205, line: 94, baseType: !361, size: 32)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2204, file: !2205, line: 95, baseType: !366, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2204, file: !2205, line: 96, baseType: !115, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2204, file: !2205, line: 97, baseType: !115, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2204, file: !2205, line: 98, baseType: !382, size: 128, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2204, file: !2205, line: 100, baseType: !1337, size: 192, offset: 256)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2204, file: !2205, line: 103, baseType: !1370, size: 64, offset: 448)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2204, file: !2205, line: 106, baseType: !2215, size: 192, offset: 512)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !2131, line: 32, size: 192, elements: !2216)
!2216 = !{!2217, !2218}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2215, file: !2131, line: 33, baseType: !382, size: 128)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2215, file: !2131, line: 34, baseType: !2219, size: 64, offset: 128)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2220, line: 25, baseType: !2221)
!2220 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2220, line: 23, size: 64, elements: !2222)
!2222 = !{!2223}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2221, file: !2220, line: 24, baseType: !1609, size: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2204, file: !2205, line: 109, baseType: !1172, size: 64, offset: 704)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2204, file: !2205, line: 112, baseType: !115, size: 32, offset: 768)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2204, file: !2205, line: 114, baseType: !115, size: 32, offset: 800)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2204, file: !2205, line: 115, baseType: !1370, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2204, file: !2205, line: 118, baseType: !115, size: 32, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2204, file: !2205, line: 119, baseType: !13, size: 32, offset: 928)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2204, file: !2205, line: 121, baseType: !2231, size: 64, offset: 960)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2205, line: 80, size: 448, elements: !2233)
!2233 = !{!2234, !2235, !2241}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2232, file: !2205, line: 81, baseType: !366, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2232, file: !2205, line: 82, baseType: !2236, size: 128, offset: 64)
!2236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2205, line: 75, size: 128, elements: !2237)
!2237 = !{!2238, !2239}
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2236, file: !2205, line: 76, baseType: !1370, size: 64)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2236, file: !2205, line: 77, baseType: !2240, size: 64, offset: 64)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2232, file: !2205, line: 83, baseType: !751, size: 256, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2204, file: !2205, line: 132, baseType: !13, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2204, file: !2205, line: 133, baseType: !13, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2204, file: !2205, line: 138, baseType: !13, size: 32, offset: 1056)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2204, file: !2205, line: 139, baseType: !382, size: 128, offset: 1088)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2204, file: !2205, line: 142, baseType: !1482, size: 512, offset: 1216)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2204, file: !2205, line: 143, baseType: !1490, size: 64, offset: 1728)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2204, file: !2205, line: 150, baseType: !2249, size: 256, offset: 1792)
!2249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2250, size: 256, elements: !921)
!2250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2205, line: 38, size: 128, elements: !2251)
!2251 = !{!2252, !2253}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2250, file: !2205, line: 39, baseType: !614, size: 64)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2250, file: !2205, line: 40, baseType: !614, size: 64, offset: 64)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2204, file: !2205, line: 156, baseType: !2255, size: 192, offset: 2048)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2205, line: 66, size: 192, elements: !2256)
!2256 = !{!2257}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2255, file: !2205, line: 67, baseType: !2258, size: 192)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2205, line: 47, size: 192, elements: !2259)
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2258, file: !2205, line: 48, baseType: !808, size: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2258, file: !2205, line: 49, baseType: !808, size: 64, offset: 64)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2258, file: !2205, line: 50, baseType: !808, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2204, file: !2205, line: 160, baseType: !1949, size: 640, offset: 2240)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2204, file: !2205, line: 163, baseType: !2265, size: 256, offset: 2880)
!2265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1327, size: 256, elements: !1032)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2204, file: !2205, line: 169, baseType: !1327, size: 64, offset: 3136)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2204, file: !2205, line: 172, baseType: !115, size: 32, offset: 3200)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2204, file: !2205, line: 174, baseType: !2269, size: 64, offset: 3264)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2205, line: 174, flags: DIFlagFwdDecl)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2204, file: !2205, line: 185, baseType: !2272, size: 64, offset: 3328)
!2272 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !583, line: 860, baseType: !2273)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !583, line: 853, size: 64, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2273, file: !583, line: 858, baseType: !582, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2273, file: !583, line: 859, baseType: !395, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2204, file: !2205, line: 186, baseType: !614, size: 64, offset: 3392)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2204, file: !2205, line: 186, baseType: !614, size: 64, offset: 3456)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2204, file: !2205, line: 186, baseType: !614, size: 64, offset: 3520)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2204, file: !2205, line: 186, baseType: !614, size: 64, offset: 3584)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2204, file: !2205, line: 187, baseType: !614, size: 64, offset: 3648)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2204, file: !2205, line: 188, baseType: !614, size: 64, offset: 3712)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2204, file: !2205, line: 189, baseType: !1937, size: 192, offset: 3776)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2204, file: !2205, line: 190, baseType: !511, size: 64, offset: 3968)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2204, file: !2205, line: 190, baseType: !511, size: 64, offset: 4032)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2204, file: !2205, line: 190, baseType: !511, size: 64, offset: 4096)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2204, file: !2205, line: 190, baseType: !511, size: 64, offset: 4160)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2204, file: !2205, line: 191, baseType: !511, size: 64, offset: 4224)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2204, file: !2205, line: 191, baseType: !511, size: 64, offset: 4288)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2204, file: !2205, line: 191, baseType: !511, size: 64, offset: 4352)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2204, file: !2205, line: 191, baseType: !511, size: 64, offset: 4416)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2204, file: !2205, line: 192, baseType: !511, size: 64, offset: 4480)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2204, file: !2205, line: 192, baseType: !511, size: 64, offset: 4544)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2204, file: !2205, line: 192, baseType: !511, size: 64, offset: 4608)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2204, file: !2205, line: 192, baseType: !511, size: 64, offset: 4672)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2204, file: !2205, line: 193, baseType: !511, size: 64, offset: 4736)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2204, file: !2205, line: 193, baseType: !511, size: 64, offset: 4800)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2204, file: !2205, line: 194, baseType: !2299, size: 448, offset: 4864)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2300, line: 12, size: 448, elements: !2301)
!2300 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2301 = !{!2302, !2303, !2304, !2305, !2306, !2307, !2308}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2299, file: !2300, line: 15, baseType: !614, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2299, file: !2300, line: 17, baseType: !614, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2299, file: !2300, line: 19, baseType: !614, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2299, file: !2300, line: 21, baseType: !614, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2299, file: !2300, line: 29, baseType: !614, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2299, file: !2300, line: 35, baseType: !614, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2299, file: !2300, line: 44, baseType: !614, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2204, file: !2205, line: 202, baseType: !616, size: 64, offset: 5312)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2204, file: !2205, line: 213, baseType: !2311, size: 2048, offset: 5376)
!2311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 2048, elements: !2150)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2313, line: 43, size: 128, elements: !2314)
!2313 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2314 = !{!2315, !2316}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2312, file: !2313, line: 44, baseType: !510, size: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2312, file: !2313, line: 45, baseType: !510, size: 64, offset: 64)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2204, file: !2205, line: 216, baseType: !2318, size: 448, offset: 7424)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2205, line: 30, size: 448, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2318, file: !2205, line: 31, baseType: !115, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2318, file: !2205, line: 32, baseType: !497, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2318, file: !2205, line: 33, baseType: !511, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2318, file: !2205, line: 34, baseType: !614, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2318, file: !2205, line: 34, baseType: !614, size: 64, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2318, file: !2205, line: 35, baseType: !511, size: 64, offset: 320)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2318, file: !2205, line: 35, baseType: !511, size: 64, offset: 384)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2204, file: !2205, line: 219, baseType: !2328, size: 64, offset: 7872)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2205, line: 219, flags: DIFlagFwdDecl)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2204, file: !2205, line: 222, baseType: !13, size: 32, offset: 7936)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2204, file: !2205, line: 223, baseType: !2332, size: 64, offset: 8000)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2205, line: 223, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2204, file: !2205, line: 230, baseType: !882, size: 8, offset: 8064)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2204, file: !2205, line: 231, baseType: !940, size: 16, offset: 8080)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2204, file: !2205, line: 232, baseType: !940, size: 16, offset: 8096)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2204, file: !2205, line: 234, baseType: !1658, size: 64, offset: 8128)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2204, file: !2205, line: 237, baseType: !802, size: 256, offset: 8192)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2204, file: !2205, line: 243, baseType: !1713, size: 320, offset: 8448)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1371, file: !1372, line: 1111, baseType: !2341, size: 64, offset: 15424)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2205, line: 20, size: 16640, elements: !2343)
!2343 = !{!2344, !2345, !2346, !2347}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2342, file: !2205, line: 21, baseType: !395, size: 32)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2342, file: !2205, line: 22, baseType: !361, size: 32, offset: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2342, file: !2205, line: 23, baseType: !1337, size: 192, offset: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2342, file: !2205, line: 24, baseType: !2348, size: 16384, offset: 256)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2349, size: 16384, elements: !466)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !2131, line: 51, size: 256, elements: !2350)
!2350 = !{!2351}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2349, file: !2131, line: 52, baseType: !2352, size: 256)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !2131, line: 37, size: 256, elements: !2353)
!2353 = !{!2354, !2361, !2362, !2366}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2352, file: !2131, line: 39, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2356, line: 83, baseType: !2357)
!2356 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2356, line: 82, baseType: !2359)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{null, !115}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2352, file: !2131, line: 40, baseType: !511, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2352, file: !2131, line: 46, baseType: !2363, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2356, line: 86, baseType: !2364)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2356, line: 85, baseType: !1167)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2352, file: !2131, line: 48, baseType: !2219, size: 64, offset: 192)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1371, file: !1372, line: 1112, baseType: !2219, size: 64, offset: 15488)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1371, file: !1372, line: 1113, baseType: !2219, size: 64, offset: 15552)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1371, file: !1372, line: 1115, baseType: !2219, size: 64, offset: 15616)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1371, file: !1372, line: 1116, baseType: !2215, size: 192, offset: 15680)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1371, file: !1372, line: 1117, baseType: !511, size: 64, offset: 15872)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1371, file: !1372, line: 1118, baseType: !508, size: 64, offset: 15936)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1371, file: !1372, line: 1119, baseType: !13, size: 32, offset: 16000)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1371, file: !1372, line: 1121, baseType: !1021, size: 64, offset: 16064)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1371, file: !1372, line: 1125, baseType: !2376, size: 64, offset: 16128)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1372, line: 43, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1371, file: !1372, line: 1127, baseType: !547, size: 32, offset: 16192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1371, file: !1372, line: 1128, baseType: !13, size: 32, offset: 16224)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1371, file: !1372, line: 1130, baseType: !2381, size: 128, offset: 16256)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2382, line: 37, size: 128, elements: !2383)
!2382 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2383 = !{!2384, !2385, !2386}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2381, file: !2382, line: 38, baseType: !115, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2381, file: !2382, line: 39, baseType: !366, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2381, file: !2382, line: 40, baseType: !2387, size: 64, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2382, line: 24, flags: DIFlagFwdDecl)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1371, file: !1372, line: 1131, baseType: !2390, size: 256, offset: 16384)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2391, line: 12, size: 256, elements: !2392)
!2391 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2392 = !{!2393, !2394, !2395, !2396}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2390, file: !2391, line: 13, baseType: !461, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2390, file: !2391, line: 14, baseType: !511, size: 64, offset: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2390, file: !2391, line: 15, baseType: !511, size: 64, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2390, file: !2391, line: 16, baseType: !882, size: 8, offset: 192)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1371, file: !1372, line: 1134, baseType: !614, size: 64, offset: 16640)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1371, file: !1372, line: 1135, baseType: !614, size: 64, offset: 16704)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1371, file: !1372, line: 1138, baseType: !395, size: 32, offset: 16768)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1371, file: !1372, line: 1141, baseType: !760, size: 32, offset: 16800)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1371, file: !1372, line: 1143, baseType: !2402, size: 64, offset: 16832)
!2402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1372, line: 735, size: 64, elements: !2403)
!2403 = !{!2404}
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2402, file: !1372, line: 736, baseType: !2405, size: 64)
!2405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2402, size: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1371, file: !1372, line: 1147, baseType: !1541, size: 128, offset: 16896)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1371, file: !1372, line: 1149, baseType: !1370, size: 64, offset: 17024)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1371, file: !1372, line: 1151, baseType: !2409, size: 64, offset: 17088)
!2409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2410 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2411, line: 64, flags: DIFlagFwdDecl)
!2411 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c3b60a10bef9e89c790a516317bab43b")
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1371, file: !1372, line: 1188, baseType: !345, size: 64, offset: 17152)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1371, file: !1372, line: 1191, baseType: !2414, size: 64, offset: 17216)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1372, line: 44, flags: DIFlagFwdDecl)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1371, file: !1372, line: 1194, baseType: !2417, size: 64, offset: 17280)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1372, line: 45, flags: DIFlagFwdDecl)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1371, file: !1372, line: 1197, baseType: !2420, size: 64, offset: 17344)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1372, line: 61, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1371, file: !1372, line: 1199, baseType: !2423, size: 64, offset: 17408)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2425, line: 99, size: 128, elements: !2426)
!2425 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2426 = !{!2427, !2428, !2429}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2424, file: !2425, line: 100, baseType: !806, size: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2424, file: !2425, line: 101, baseType: !366, size: 32, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2424, file: !2425, line: 103, baseType: !431, size: 16, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1371, file: !1372, line: 1202, baseType: !2431, size: 64, offset: 17472)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1372, line: 48, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1371, file: !1372, line: 1205, baseType: !511, size: 64, offset: 17536)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1371, file: !1372, line: 1206, baseType: !2435, size: 64, offset: 17600)
!2435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !2131, line: 14, baseType: !2437)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !2131, line: 12, size: 384, elements: !2438)
!2438 = !{!2439}
!2439 = !DIDerivedType(tag: DW_TAG_member, scope: !2437, file: !2131, line: 13, baseType: !2440, size: 384)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2437, file: !2131, line: 13, size: 384, elements: !2441)
!2441 = !{!2442, !2443, !2444, !2445}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2440, file: !2131, line: 13, baseType: !115, size: 32)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2440, file: !2131, line: 13, baseType: !115, size: 32, offset: 32)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2440, file: !2131, line: 13, baseType: !115, size: 32, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2440, file: !2131, line: 13, baseType: !2446, size: 256, offset: 128)
!2446 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2447, line: 37, size: 256, elements: !2448)
!2447 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2448 = !{!2449, !2454, !2467, !2473, !2482, !2509, !2514}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2446, file: !2447, line: 42, baseType: !2450, size: 64)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 39, size: 64, elements: !2451)
!2451 = !{!2452, !2453}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2450, file: !2447, line: 40, baseType: !1914, size: 32)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2450, file: !2447, line: 41, baseType: !553, size: 32, offset: 32)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2446, file: !2447, line: 50, baseType: !2455, size: 192)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 45, size: 192, elements: !2456)
!2456 = !{!2457, !2459, !2460, !2466}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2455, file: !2447, line: 46, baseType: !2458, size: 32)
!2458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !495, line: 95, baseType: !115)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2455, file: !2447, line: 47, baseType: !115, size: 32, offset: 32)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2455, file: !2447, line: 48, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2447, line: 11, baseType: !2462)
!2462 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2447, line: 8, size: 64, elements: !2463)
!2463 = !{!2464, !2465}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2462, file: !2447, line: 9, baseType: !115, size: 32)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2462, file: !2447, line: 10, baseType: !345, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2455, file: !2447, line: 49, baseType: !115, size: 32, offset: 128)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2446, file: !2447, line: 57, baseType: !2468, size: 128)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 53, size: 128, elements: !2469)
!2469 = !{!2470, !2471, !2472}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2468, file: !2447, line: 54, baseType: !1914, size: 32)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2468, file: !2447, line: 55, baseType: !553, size: 32, offset: 32)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2468, file: !2447, line: 56, baseType: !2461, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2446, file: !2447, line: 66, baseType: !2474, size: 256)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 60, size: 256, elements: !2475)
!2475 = !{!2476, !2477, !2478, !2479, !2481}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2474, file: !2447, line: 61, baseType: !1914, size: 32)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2474, file: !2447, line: 62, baseType: !553, size: 32, offset: 32)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2474, file: !2447, line: 63, baseType: !115, size: 32, offset: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2474, file: !2447, line: 64, baseType: !2480, size: 64, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !495, line: 94, baseType: !496)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2474, file: !2447, line: 65, baseType: !2480, size: 64, offset: 192)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2446, file: !2447, line: 105, baseType: !2483, size: 256)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 69, size: 256, elements: !2484)
!2484 = !{!2485, !2486}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2483, file: !2447, line: 70, baseType: !345, size: 64)
!2486 = !DIDerivedType(tag: DW_TAG_member, scope: !2483, file: !2447, line: 79, baseType: !2487, size: 192, offset: 64)
!2487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2483, file: !2447, line: 79, size: 192, elements: !2488)
!2488 = !{!2489, !2490, !2491, !2498, !2503}
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2487, file: !2447, line: 81, baseType: !115, size: 32)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2487, file: !2447, line: 86, baseType: !940, size: 16)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2487, file: !2447, line: 92, baseType: !2492, size: 192)
!2492 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !2447, line: 88, size: 192, elements: !2493)
!2493 = !{!2494, !2496, !2497}
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2492, file: !2447, line: 89, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1525)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2492, file: !2447, line: 90, baseType: !345, size: 64, offset: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2492, file: !2447, line: 91, baseType: !345, size: 64, offset: 128)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2487, file: !2447, line: 97, baseType: !2499, size: 96)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !2447, line: 94, size: 96, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2499, file: !2447, line: 95, baseType: !2495, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2499, file: !2447, line: 96, baseType: !611, size: 32, offset: 64)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2487, file: !2447, line: 103, baseType: !2504, size: 128)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2487, file: !2447, line: 99, size: 128, elements: !2505)
!2505 = !{!2506, !2507, !2508}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2504, file: !2447, line: 100, baseType: !511, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2504, file: !2447, line: 101, baseType: !611, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2504, file: !2447, line: 102, baseType: !611, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2446, file: !2447, line: 111, baseType: !2510, size: 128)
!2510 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 108, size: 128, elements: !2511)
!2511 = !{!2512, !2513}
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2510, file: !2447, line: 109, baseType: !497, size: 64)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2510, file: !2447, line: 110, baseType: !115, size: 32, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2446, file: !2447, line: 118, baseType: !2515, size: 128)
!2515 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2446, file: !2447, line: 114, size: 128, elements: !2516)
!2516 = !{!2517, !2518, !2519}
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2515, file: !2447, line: 115, baseType: !345, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2515, file: !2447, line: 116, baseType: !115, size: 32, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2515, file: !2447, line: 117, baseType: !13, size: 32, offset: 96)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1371, file: !1372, line: 1208, baseType: !2299, size: 448, offset: 17664)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1371, file: !1372, line: 1215, baseType: !614, size: 64, offset: 18112)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1371, file: !1372, line: 1217, baseType: !614, size: 64, offset: 18176)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1371, file: !1372, line: 1219, baseType: !614, size: 64, offset: 18240)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1371, file: !1372, line: 1223, baseType: !2525, size: 64, offset: 18304)
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2526, line: 99, baseType: !2527)
!2526 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2527 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2526, line: 99, size: 64, elements: !2528)
!2528 = !{!2529}
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2527, file: !2526, line: 99, baseType: !1609, size: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1371, file: !1372, line: 1225, baseType: !582, size: 32, offset: 18368)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1371, file: !1372, line: 1226, baseType: !115, size: 32, offset: 18400)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1371, file: !1372, line: 1227, baseType: !115, size: 32, offset: 18432)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1371, file: !1372, line: 1231, baseType: !2534, size: 64, offset: 18496)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2535, size: 64)
!2535 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1372, line: 1231, flags: DIFlagFwdDecl)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1371, file: !1372, line: 1233, baseType: !382, size: 128, offset: 18560)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1371, file: !1372, line: 1240, baseType: !2538, size: 64, offset: 18688)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1372, line: 62, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1371, file: !1372, line: 1242, baseType: !2541, size: 64, offset: 18752)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1372, line: 1242, flags: DIFlagFwdDecl)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1371, file: !1372, line: 1244, baseType: !382, size: 128, offset: 18816)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1371, file: !1372, line: 1245, baseType: !2545, size: 64, offset: 18944)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1372, line: 51, flags: DIFlagFwdDecl)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1371, file: !1372, line: 1246, baseType: !802, size: 256, offset: 19008)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1371, file: !1372, line: 1247, baseType: !13, size: 32, offset: 19264)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1371, file: !1372, line: 1250, baseType: !2550, size: 64, offset: 19328)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1372, line: 57, flags: DIFlagFwdDecl)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1371, file: !1372, line: 1251, baseType: !802, size: 256, offset: 19392)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1371, file: !1372, line: 1252, baseType: !382, size: 128, offset: 19648)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1371, file: !1372, line: 1259, baseType: !2555, size: 64, offset: 19776)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !44, line: 717, flags: DIFlagFwdDecl)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1371, file: !1372, line: 1260, baseType: !940, size: 16, offset: 19840)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1371, file: !1372, line: 1261, baseType: !940, size: 16, offset: 19856)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1371, file: !1372, line: 1314, baseType: !2560, size: 64, offset: 19904)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2562, line: 62, size: 256, align: 256, elements: !2563)
!2562 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2561, file: !2562, line: 75, baseType: !611, size: 32)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2561, file: !2562, line: 90, baseType: !611, size: 32, offset: 32)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2561, file: !2562, line: 112, baseType: !615, size: 64, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2561, file: !2562, line: 132, baseType: !611, size: 32, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2561, file: !2562, line: 140, baseType: !611, size: 32, offset: 160)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2561, file: !2562, line: 149, baseType: !611, size: 32, offset: 192)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2561, file: !2562, line: 154, baseType: !2571, offset: 224)
!2571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1831)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1371, file: !1372, line: 1315, baseType: !610, size: 32, offset: 19968)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1371, file: !1372, line: 1316, baseType: !610, size: 32, offset: 20000)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1371, file: !1372, line: 1321, baseType: !511, size: 64, offset: 20032)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1371, file: !1372, line: 1325, baseType: !115, size: 32, offset: 20096)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1371, file: !1372, line: 1326, baseType: !115, size: 32, offset: 20128)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1371, file: !1372, line: 1327, baseType: !115, size: 32, offset: 20160)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1371, file: !1372, line: 1328, baseType: !115, size: 32, offset: 20192)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1371, file: !1372, line: 1329, baseType: !1022, size: 128, align: 64, offset: 20224)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1371, file: !1372, line: 1332, baseType: !2581, size: 128, offset: 20352)
!2581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2582, line: 51, size: 128, elements: !2583)
!2582 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2583 = !{!2584, !2589, !2590}
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2581, file: !2582, line: 60, baseType: !2585, size: 64)
!2585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2586, line: 7, size: 64, elements: !2587)
!2586 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2585, file: !2586, line: 12, baseType: !1606, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2581, file: !2582, line: 63, baseType: !882, size: 8, offset: 64)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2581, file: !2582, line: 70, baseType: !882, size: 8, offset: 72)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1371, file: !1372, line: 1335, baseType: !2592, size: 64, offset: 20480)
!2592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2593 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1372, line: 59, flags: DIFlagFwdDecl)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1371, file: !1372, line: 1337, baseType: !2595, size: 128, offset: 20544)
!2595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2582, line: 39, size: 128, elements: !2596)
!2596 = !{!2597, !2881, !2882}
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2595, file: !2582, line: 40, baseType: !2598, size: 64)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !44, line: 74, size: 512, align: 128, elements: !2600)
!2600 = !{!2601, !2602, !2875, !2880}
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2599, file: !44, line: 75, baseType: !511, size: 64)
!2602 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !44, line: 83, baseType: !2603, size: 320, offset: 64)
!2603 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !44, line: 83, size: 320, elements: !2604)
!2604 = !{!2605, !2626, !2640, !2644, !2874}
!2605 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !44, line: 84, baseType: !2606, size: 320)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2603, file: !44, line: 84, size: 320, elements: !2607)
!2607 = !{!2608, !2619, !2620, !2625}
!2608 = !DIDerivedType(tag: DW_TAG_member, scope: !2606, file: !44, line: 90, baseType: !2609, size: 128)
!2609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2606, file: !44, line: 90, size: 128, elements: !2610)
!2610 = !{!2611, !2612, !2617, !2618}
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2609, file: !44, line: 91, baseType: !382, size: 128)
!2612 = !DIDerivedType(tag: DW_TAG_member, scope: !2609, file: !44, line: 94, baseType: !2613, size: 128)
!2613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2609, file: !44, line: 94, size: 128, elements: !2614)
!2614 = !{!2615, !2616}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2613, file: !44, line: 96, baseType: !345, size: 64)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2613, file: !44, line: 98, baseType: !13, size: 32, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2609, file: !44, line: 102, baseType: !382, size: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2609, file: !44, line: 103, baseType: !382, size: 128)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2606, file: !44, line: 106, baseType: !537, size: 64, offset: 128)
!2620 = !DIDerivedType(tag: DW_TAG_member, scope: !2606, file: !44, line: 107, baseType: !2621, size: 64, offset: 192)
!2621 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2606, file: !44, line: 107, size: 64, elements: !2622)
!2622 = !{!2623, !2624}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2621, file: !44, line: 108, baseType: !511, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2621, file: !44, line: 109, baseType: !511, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2606, file: !44, line: 117, baseType: !511, size: 64, offset: 256)
!2626 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !44, line: 119, baseType: !2627, size: 320)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2603, file: !44, line: 119, size: 320, elements: !2628)
!2628 = !{!2629, !2630, !2633, !2634, !2635}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2627, file: !44, line: 124, baseType: !511, size: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2627, file: !44, line: 125, baseType: !2631, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !44, line: 125, flags: DIFlagFwdDecl)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2627, file: !44, line: 126, baseType: !511, size: 64, offset: 128)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2627, file: !44, line: 127, baseType: !511, size: 64, offset: 192)
!2635 = !DIDerivedType(tag: DW_TAG_member, scope: !2627, file: !44, line: 128, baseType: !2636, size: 64, offset: 256)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2627, file: !44, line: 128, size: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2636, file: !44, line: 133, baseType: !511, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2636, file: !44, line: 138, baseType: !806, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !44, line: 141, baseType: !2641, size: 64)
!2641 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2603, file: !44, line: 141, size: 64, elements: !2642)
!2642 = !{!2643}
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2641, file: !44, line: 142, baseType: !511, size: 64)
!2644 = !DIDerivedType(tag: DW_TAG_member, scope: !2603, file: !44, line: 144, baseType: !2645, size: 128)
!2645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2603, file: !44, line: 144, size: 128, elements: !2646)
!2646 = !{!2647, !2873}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2645, file: !44, line: 146, baseType: !2648, size: 64)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !36, line: 126, size: 1216, elements: !2650)
!2650 = !{!2651, !2661, !2682, !2683, !2684, !2685, !2686, !2855, !2856, !2857}
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2649, file: !36, line: 127, baseType: !2652, size: 384)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !36, line: 21, size: 384, elements: !2653)
!2653 = !{!2654, !2655, !2657, !2658, !2659, !2660}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2652, file: !36, line: 22, baseType: !511, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2652, file: !36, line: 23, baseType: !2656, size: 64, offset: 64)
!2656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2652, file: !36, line: 24, baseType: !2656, size: 64, offset: 128)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2652, file: !36, line: 25, baseType: !511, size: 64, offset: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2652, file: !36, line: 26, baseType: !511, size: 64, offset: 256)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2652, file: !36, line: 27, baseType: !511, size: 64, offset: 320)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2649, file: !36, line: 128, baseType: !2662, size: 128, offset: 384)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2663, line: 105, size: 128, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2664 = !{!2665, !2666}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2662, file: !2663, line: 110, baseType: !511, size: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2662, file: !2663, line: 118, baseType: !2667, size: 64, offset: 64)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2663, line: 95, size: 448, elements: !2669)
!2669 = !{!2670, !2671, !2677, !2678, !2679, !2680, !2681}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2668, file: !2663, line: 96, baseType: !806, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2668, file: !2663, line: 97, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2663, line: 60, baseType: !2674)
!2674 = !DISubroutineType(types: !2675)
!2675 = !{null, !2676}
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2668, file: !2663, line: 98, baseType: !2672, size: 64, offset: 128)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2668, file: !2663, line: 99, baseType: !882, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2668, file: !2663, line: 100, baseType: !882, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2668, file: !2663, line: 101, baseType: !1022, size: 128, align: 64, offset: 256)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2668, file: !2663, line: 102, baseType: !2676, size: 64, offset: 384)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2649, file: !36, line: 129, baseType: !751, size: 256, offset: 512)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2649, file: !36, line: 130, baseType: !35, size: 32, offset: 768)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2649, file: !36, line: 131, baseType: !13, size: 32, offset: 800)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2649, file: !36, line: 132, baseType: !511, size: 64, offset: 832)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2649, file: !36, line: 133, baseType: !2687, size: 64, offset: 896)
!2687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2688, size: 64)
!2688 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2689)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !36, line: 77, size: 192, elements: !2690)
!2690 = !{!2691, !2695, !2851}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2689, file: !36, line: 83, baseType: !2692, size: 64)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{null, !2598}
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2689, file: !36, line: 89, baseType: !2696, size: 64, offset: 64)
!2696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2697, size: 64)
!2697 = !DISubroutineType(types: !2698)
!2698 = !{!2699, !2700}
!2699 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !44, line: 1184, baseType: !13)
!2700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2701, size: 64)
!2701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2702, line: 512, size: 896, elements: !2703)
!2702 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2703 = !{!2704, !2818, !2819, !2826, !2833, !2843, !2844, !2845, !2847, !2849}
!2704 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !2702, line: 513, baseType: !2705, size: 320)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2701, file: !2702, line: 513, size: 320, elements: !2706)
!2706 = !{!2707, !2814, !2815, !2816, !2817}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2705, file: !2702, line: 514, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !44, line: 625, size: 1344, elements: !2710)
!2710 = !{!2711, !2720, !2721, !2727, !2734, !2735, !2740, !2741, !2746, !2747, !2750, !2807, !2808, !2809, !2810, !2811, !2812}
!2711 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !44, line: 628, baseType: !2712, size: 128)
!2712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !44, line: 628, size: 128, elements: !2713)
!2713 = !{!2714, !2719}
!2714 = !DIDerivedType(tag: DW_TAG_member, scope: !2712, file: !44, line: 629, baseType: !2715, size: 128)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2712, file: !44, line: 629, size: 128, elements: !2716)
!2716 = !{!2717, !2718}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2715, file: !44, line: 631, baseType: !511, size: 64)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2715, file: !44, line: 632, baseType: !511, size: 64, offset: 64)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2712, file: !44, line: 635, baseType: !1022, size: 128, align: 64)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2709, file: !44, line: 639, baseType: !1658, size: 64, offset: 128)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2709, file: !44, line: 640, baseType: !2722, size: 64, offset: 192)
!2722 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1694, line: 297, baseType: !2723)
!2723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1694, line: 297, size: 64, elements: !2724)
!2724 = !{!2725}
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2723, file: !1694, line: 297, baseType: !2726, size: 64)
!2726 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1699, line: 19, baseType: !511)
!2727 = !DIDerivedType(tag: DW_TAG_member, scope: !2709, file: !44, line: 646, baseType: !2728, size: 64, offset: 256)
!2728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2709, file: !44, line: 646, size: 64, elements: !2729)
!2729 = !{!2730, !2733}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2728, file: !44, line: 647, baseType: !2731, size: 64)
!2731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2732)
!2732 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !44, line: 542, baseType: !511)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2728, file: !44, line: 648, baseType: !2732, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2709, file: !44, line: 666, baseType: !115, size: 32, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2709, file: !44, line: 667, baseType: !2736, size: 64, offset: 384)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !44, line: 579, size: 320, elements: !2738)
!2738 = !{!2739}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2737, file: !44, line: 580, baseType: !1713, size: 320)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2709, file: !44, line: 670, baseType: !882, size: 8, offset: 448)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2709, file: !44, line: 681, baseType: !2742, size: 256, offset: 512)
!2742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2709, file: !44, line: 678, size: 256, elements: !2743)
!2743 = !{!2744, !2745}
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2742, file: !44, line: 679, baseType: !914, size: 192, align: 64)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2742, file: !44, line: 680, baseType: !511, size: 64, offset: 192)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2709, file: !44, line: 689, baseType: !382, size: 128, offset: 768)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2709, file: !44, line: 691, baseType: !2748, size: 64, offset: 896)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !44, line: 691, flags: DIFlagFwdDecl)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2709, file: !44, line: 694, baseType: !2751, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2753)
!2753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2702, line: 563, size: 1024, elements: !2754)
!2754 = !{!2755, !2759, !2760, !2764, !2768, !2772, !2773, !2777, !2781, !2785, !2786, !2787, !2791, !2795, !2799, !2803}
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2753, file: !2702, line: 564, baseType: !2756, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2757, size: 64)
!2757 = !DISubroutineType(types: !2758)
!2758 = !{null, !2708}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2753, file: !2702, line: 569, baseType: !2756, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2753, file: !2702, line: 571, baseType: !2761, size: 64, offset: 128)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!115, !2708, !511}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2753, file: !2702, line: 572, baseType: !2765, size: 64, offset: 192)
!2765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2766, size: 64)
!2766 = !DISubroutineType(types: !2767)
!2767 = !{!115, !2708}
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2753, file: !2702, line: 578, baseType: !2769, size: 64, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DISubroutineType(types: !2771)
!2771 = !{!115, !2708, !511, !511, !511}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2753, file: !2702, line: 580, baseType: !2696, size: 64, offset: 320)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2753, file: !2702, line: 581, baseType: !2774, size: 64, offset: 384)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!2699, !2700, !13}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2753, file: !2702, line: 582, baseType: !2778, size: 64, offset: 448)
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DISubroutineType(types: !2780)
!2780 = !{!2699, !2700, !511, !511}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2753, file: !2702, line: 584, baseType: !2782, size: 64, offset: 512)
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{!511, !2708}
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2753, file: !2702, line: 588, baseType: !2696, size: 64, offset: 576)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2753, file: !2702, line: 591, baseType: !2696, size: 64, offset: 640)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2753, file: !2702, line: 597, baseType: !2788, size: 64, offset: 704)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2789, size: 64)
!2789 = !DISubroutineType(types: !2790)
!2790 = !{!115, !2708, !511, !345, !115, !115}
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2753, file: !2702, line: 603, baseType: !2792, size: 64, offset: 768)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!379, !2708}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2753, file: !2702, line: 613, baseType: !2796, size: 64, offset: 832)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!115, !2708, !2555}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2753, file: !2702, line: 625, baseType: !2800, size: 64, offset: 896)
!2800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2801 = !DISubroutineType(types: !2802)
!2802 = !{!2555, !2708, !511}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2753, file: !2702, line: 633, baseType: !2804, size: 64, offset: 960)
!2804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2805, size: 64)
!2805 = !DISubroutineType(types: !2806)
!2806 = !{!2598, !2708, !511}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2709, file: !44, line: 697, baseType: !511, size: 64, offset: 1024)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2709, file: !44, line: 699, baseType: !1685, size: 64, offset: 1088)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2709, file: !44, line: 700, baseType: !345, size: 64, offset: 1152)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2709, file: !44, line: 711, baseType: !806, size: 64, offset: 1216)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2709, file: !44, line: 717, baseType: !2555, size: 64, offset: 1280)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2709, file: !44, line: 722, baseType: !2813, offset: 1344)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !44, line: 570, elements: !1091)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2705, file: !2702, line: 515, baseType: !346, size: 32, offset: 64)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2705, file: !2702, line: 516, baseType: !511, size: 64, offset: 128)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2705, file: !2702, line: 517, baseType: !511, size: 64, offset: 192)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2705, file: !2702, line: 518, baseType: !511, size: 64, offset: 256)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2701, file: !2702, line: 520, baseType: !43, size: 32, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2701, file: !2702, line: 522, baseType: !2820, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2821, size: 64)
!2821 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1699, line: 22, baseType: !2822)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 22, size: 64, elements: !2823)
!2823 = !{!2824}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2822, file: !1699, line: 22, baseType: !2825, size: 64)
!2825 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1699, line: 15, baseType: !511)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2701, file: !2702, line: 524, baseType: !2827, size: 64, offset: 448)
!2827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2828, size: 64)
!2828 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1694, line: 372, baseType: !2829)
!2829 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1694, line: 372, size: 64, elements: !2830)
!2830 = !{!2831}
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2829, file: !1694, line: 372, baseType: !2832, size: 64)
!2832 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1699, line: 16, baseType: !511)
!2833 = !DIDerivedType(tag: DW_TAG_member, scope: !2701, file: !2702, line: 527, baseType: !2834, size: 64, offset: 512)
!2834 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2701, file: !2702, line: 527, size: 64, elements: !2835)
!2835 = !{!2836, !2842}
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2834, file: !2702, line: 528, baseType: !2837, size: 64)
!2837 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1699, line: 21, baseType: !2838)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1699, line: 21, size: 64, elements: !2839)
!2839 = !{!2840}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2838, file: !1699, line: 21, baseType: !2841, size: 64)
!2841 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1699, line: 14, baseType: !511)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2834, file: !2702, line: 529, baseType: !2821, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2701, file: !2702, line: 534, baseType: !2598, size: 64, offset: 576)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2701, file: !2702, line: 535, baseType: !2598, size: 64, offset: 640)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2701, file: !2702, line: 541, baseType: !2846, size: 64, offset: 704)
!2846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2837, size: 64)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2701, file: !2702, line: 545, baseType: !2848, size: 64, offset: 768)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2701, file: !2702, line: 549, baseType: !2850, size: 64, offset: 832)
!2850 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1694, line: 520, baseType: !2598)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2689, file: !36, line: 100, baseType: !2852, size: 64, offset: 128)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!115, !2648, !511, !511, !115}
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2649, file: !36, line: 134, baseType: !345, size: 64, offset: 960)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2649, file: !36, line: 135, baseType: !115, size: 32, offset: 1024)
!2857 = !DIDerivedType(tag: DW_TAG_member, scope: !2649, file: !36, line: 136, baseType: !2858, size: 128, offset: 1088)
!2858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2649, file: !36, line: 136, size: 128, elements: !2859)
!2859 = !{!2860, !2866}
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2858, file: !36, line: 137, baseType: !2861, size: 128)
!2861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2862, line: 6, size: 128, elements: !2863)
!2862 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2863 = !{!2864, !2865}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2861, file: !2862, line: 7, baseType: !614, size: 64)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2861, file: !2862, line: 8, baseType: !614, size: 64, offset: 64)
!2866 = !DIDerivedType(tag: DW_TAG_member, scope: !2858, file: !36, line: 138, baseType: !2867)
!2867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2858, file: !36, line: 138, elements: !2868)
!2868 = !{!2869, !2871}
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2867, file: !36, line: 138, baseType: !2870)
!2870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2867, file: !36, line: 138, elements: !1091)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2867, file: !36, line: 138, baseType: !2872)
!2872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2861, elements: !1831)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2645, file: !44, line: 147, baseType: !345, size: 64, offset: 64)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2603, file: !44, line: 161, baseType: !1022, size: 128, align: 64)
!2875 = !DIDerivedType(tag: DW_TAG_member, scope: !2599, file: !44, line: 164, baseType: !2876, size: 32, offset: 384)
!2876 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2599, file: !44, line: 164, size: 32, elements: !2877)
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2876, file: !44, line: 169, baseType: !366, size: 32)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2876, file: !44, line: 177, baseType: !13, size: 32)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2599, file: !44, line: 181, baseType: !366, size: 32, offset: 416)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2595, file: !2582, line: 42, baseType: !611, size: 32, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2595, file: !2582, line: 43, baseType: !611, size: 32, offset: 96)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1371, file: !1372, line: 1340, baseType: !2884, size: 64, offset: 20672)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1372, line: 69, flags: DIFlagFwdDecl)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1371, file: !1372, line: 1351, baseType: !115, size: 32, offset: 20736)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1371, file: !1372, line: 1352, baseType: !115, size: 32, offset: 20768)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1371, file: !1372, line: 1354, baseType: !511, size: 64, offset: 20800)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1371, file: !1372, line: 1364, baseType: !614, size: 64, offset: 20864)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1371, file: !1372, line: 1365, baseType: !614, size: 64, offset: 20928)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1371, file: !1372, line: 1412, baseType: !511, size: 64, offset: 20992)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1371, file: !1372, line: 1453, baseType: !2893, size: 64, offset: 21056)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1372, line: 1453, flags: DIFlagFwdDecl)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1371, file: !1372, line: 1457, baseType: !2896, size: 64, offset: 21120)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !60, line: 61, size: 576, elements: !2898)
!2898 = !{!2899, !2900, !2919, !2922, !2923, !2956, !2966}
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2897, file: !60, line: 62, baseType: !59, size: 32)
!2900 = !DIDerivedType(tag: DW_TAG_member, scope: !2897, file: !60, line: 64, baseType: !2901, size: 192, offset: 64)
!2901 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2897, file: !60, line: 64, size: 192, elements: !2902)
!2902 = !{!2903, !2914}
!2903 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !60, line: 65, baseType: !2904, size: 192)
!2904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !60, line: 65, size: 192, elements: !2905)
!2905 = !{!2906, !2913}
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2904, file: !60, line: 66, baseType: !2907, size: 128)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2908, line: 50, size: 128, elements: !2909)
!2908 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2909 = !{!2910, !2911, !2912}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2907, file: !2908, line: 52, baseType: !511, size: 64)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2907, file: !2908, line: 54, baseType: !13, size: 32, offset: 64)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2907, file: !2908, line: 55, baseType: !13, size: 32, offset: 96)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2904, file: !60, line: 67, baseType: !511, size: 64, offset: 128)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2901, file: !60, line: 70, baseType: !2915, size: 192)
!2915 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2901, file: !60, line: 70, size: 192, elements: !2916)
!2916 = !{!2917, !2918}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2915, file: !60, line: 71, baseType: !1022, size: 128, align: 64)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2915, file: !60, line: 72, baseType: !511, size: 64, offset: 128)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2897, file: !60, line: 76, baseType: !2920, size: 64, offset: 256)
!2920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2921, size: 64)
!2921 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !60, line: 76, flags: DIFlagFwdDecl)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2897, file: !60, line: 77, baseType: !511, size: 64, offset: 320)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2897, file: !60, line: 79, baseType: !2924, size: 64, offset: 384)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2908, line: 25, size: 256, elements: !2926)
!2926 = !{!2927, !2933, !2937}
!2927 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2908, line: 26, baseType: !2928, size: 128)
!2928 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !2908, line: 26, size: 128, elements: !2929)
!2929 = !{!2930, !2932}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2928, file: !2908, line: 27, baseType: !2931, size: 128)
!2931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 128, elements: !2150)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2928, file: !2908, line: 28, baseType: !2931, size: 128)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2925, file: !2908, line: 31, baseType: !2934, size: 64, offset: 128)
!2934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2935, size: 64)
!2935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2936)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2908, line: 23, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, scope: !2925, file: !2908, line: 33, baseType: !2938, size: 64, offset: 192)
!2938 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2925, file: !2908, line: 33, size: 64, elements: !2939)
!2939 = !{!2940, !2946, !2951}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2938, file: !2908, line: 38, baseType: !2941, size: 64)
!2941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2908, line: 34, size: 64, elements: !2942)
!2942 = !{!2943, !2944, !2945}
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2941, file: !2908, line: 35, baseType: !798, size: 32)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2941, file: !2908, line: 36, baseType: !419, size: 8, offset: 32)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2941, file: !2908, line: 37, baseType: !419, size: 8, offset: 40)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2938, file: !2908, line: 42, baseType: !2947, size: 16)
!2947 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2908, line: 39, size: 16, elements: !2948)
!2948 = !{!2949, !2950}
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2947, file: !2908, line: 40, baseType: !419, size: 8)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2947, file: !2908, line: 41, baseType: !419, size: 8, offset: 8)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2938, file: !2908, line: 46, baseType: !2952, size: 16)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2938, file: !2908, line: 43, size: 16, elements: !2953)
!2953 = !{!2954, !2955}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2952, file: !2908, line: 44, baseType: !419, size: 8)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2952, file: !2908, line: 45, baseType: !419, size: 8, offset: 8)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2897, file: !60, line: 81, baseType: !2957, size: 64, offset: 448)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !60, line: 85, size: 384, elements: !2959)
!2959 = !{!2960, !2961, !2962, !2963, !2964, !2965}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2958, file: !60, line: 86, baseType: !2920, size: 64)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2958, file: !60, line: 87, baseType: !511, size: 64, offset: 64)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2958, file: !60, line: 88, baseType: !511, size: 64, offset: 128)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2958, file: !60, line: 89, baseType: !511, size: 64, offset: 192)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2958, file: !60, line: 90, baseType: !882, size: 8, offset: 256)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2958, file: !60, line: 92, baseType: !2957, size: 64, offset: 320)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2897, file: !60, line: 82, baseType: !13, size: 32, offset: 512)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1371, file: !1372, line: 1463, baseType: !2968, offset: 21184)
!2968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1372, line: 739, elements: !1091)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1371, file: !1372, line: 1470, baseType: !1022, size: 128, align: 64, offset: 21184)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1371, file: !1372, line: 1471, baseType: !361, size: 32, offset: 21312)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1371, file: !1372, line: 1472, baseType: !115, size: 32, offset: 21344)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1371, file: !1372, line: 1474, baseType: !1370, size: 64, offset: 21376)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1371, file: !1372, line: 1475, baseType: !1044, size: 320, offset: 21440)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1371, file: !1372, line: 1478, baseType: !2975, size: 64, offset: 21760)
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2977, line: 14, flags: DIFlagFwdDecl)
!2977 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1371, file: !1372, line: 1482, baseType: !361, size: 32, offset: 21824)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1371, file: !1372, line: 1489, baseType: !345, size: 64, offset: 21888)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1371, file: !1372, line: 1504, baseType: !345, size: 64, offset: 21952)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1371, file: !1372, line: 1505, baseType: !615, size: 64, offset: 22016)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1371, file: !1372, line: 1506, baseType: !614, size: 64, offset: 22080)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1371, file: !1372, line: 1507, baseType: !615, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1371, file: !1372, line: 1508, baseType: !615, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1371, file: !1372, line: 1509, baseType: !615, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1371, file: !1372, line: 1510, baseType: !1022, size: 128, align: 64, offset: 22208)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1371, file: !1372, line: 1511, baseType: !115, size: 32, offset: 22336)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1371, file: !1372, line: 1515, baseType: !2989, size: 64, offset: 22400)
!2989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1289, line: 56, size: 64, elements: !2990)
!2990 = !{!2991}
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2989, file: !1289, line: 57, baseType: !1292, size: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1371, file: !1372, line: 1518, baseType: !2989, size: 64, offset: 22464)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1371, file: !1372, line: 1528, baseType: !1022, size: 128, align: 64, offset: 22528)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1371, file: !1372, line: 1552, baseType: !2995, size: 35328, offset: 23040)
!2995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2996, line: 430, size: 35328, elements: !2997)
!2996 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2997 = !{!2998, !3016, !3017, !3018, !3019, !3020, !3021, !3022, !3023, !3027, !3028, !3029, !3030, !3031, !3032, !3035, !3036, !3037, !3038}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2995, file: !2996, line: 432, baseType: !2999, size: 192)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3000, size: 192, elements: !462)
!3000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3001, line: 16, size: 64, elements: !3002)
!3001 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3002 = !{!3003, !3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3012, !3013, !3014, !3015}
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3000, file: !3001, line: 17, baseType: !429, size: 16)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3000, file: !3001, line: 18, baseType: !429, size: 16, offset: 16)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3000, file: !3001, line: 19, baseType: !429, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3000, file: !3001, line: 19, baseType: !429, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3000, file: !3001, line: 19, baseType: !429, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3000, file: !3001, line: 19, baseType: !429, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3000, file: !3001, line: 19, baseType: !429, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3000, file: !3001, line: 20, baseType: !429, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3000, file: !3001, line: 20, baseType: !429, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3000, file: !3001, line: 20, baseType: !429, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3000, file: !3001, line: 20, baseType: !429, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3000, file: !3001, line: 20, baseType: !429, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3000, file: !3001, line: 20, baseType: !429, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2995, file: !2996, line: 436, baseType: !511, size: 64, offset: 192)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2995, file: !2996, line: 440, baseType: !431, size: 16, offset: 256)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2995, file: !2996, line: 441, baseType: !431, size: 16, offset: 272)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2995, file: !2996, line: 442, baseType: !431, size: 16, offset: 288)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2995, file: !2996, line: 443, baseType: !431, size: 16, offset: 304)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2995, file: !2996, line: 447, baseType: !511, size: 64, offset: 320)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2995, file: !2996, line: 448, baseType: !511, size: 64, offset: 384)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2995, file: !2996, line: 459, baseType: !3024, size: 256, offset: 448)
!3024 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3025, size: 256, elements: !1032)
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2996, line: 428, flags: DIFlagFwdDecl)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2995, file: !2996, line: 461, baseType: !511, size: 64, offset: 704)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2995, file: !2996, line: 463, baseType: !511, size: 64, offset: 768)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2995, file: !2996, line: 465, baseType: !511, size: 64, offset: 832)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2995, file: !2996, line: 466, baseType: !511, size: 64, offset: 896)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2995, file: !2996, line: 467, baseType: !511, size: 64, offset: 960)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2995, file: !2996, line: 473, baseType: !3033, size: 64, offset: 1024)
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2996, line: 10, flags: DIFlagFwdDecl)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2995, file: !2996, line: 480, baseType: !511, size: 64, offset: 1088)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2995, file: !2996, line: 482, baseType: !13, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2995, file: !2996, line: 491, baseType: !610, size: 32, offset: 1184)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2995, file: !2996, line: 501, baseType: !3039, size: 33792, offset: 1536)
!3039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3040, line: 448, size: 33792, elements: !3041)
!3040 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3041 = !{!3042, !3043, !3044, !3206, !3207, !3213, !3214}
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3039, file: !3040, line: 461, baseType: !13, size: 32)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3039, file: !3040, line: 468, baseType: !511, size: 64, offset: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3039, file: !3040, line: 476, baseType: !3045, size: 64, offset: 128)
!3045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3046, size: 64)
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3040, line: 356, size: 33280, align: 512, elements: !3047)
!3047 = !{!3048, !3049, !3050, !3051, !3052, !3053, !3054, !3055, !3056, !3057}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3046, file: !3040, line: 358, baseType: !13, size: 32)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3046, file: !3040, line: 361, baseType: !13, size: 32, offset: 32)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3046, file: !3040, line: 364, baseType: !614, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3046, file: !3040, line: 367, baseType: !614, size: 64, offset: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3046, file: !3040, line: 370, baseType: !614, size: 64, offset: 192)
!3053 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3046, file: !3040, line: 373, baseType: !13, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3046, file: !3040, line: 376, baseType: !13, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3046, file: !3040, line: 391, baseType: !13, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3046, file: !3040, line: 394, baseType: !13, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3046, file: !3040, line: 397, baseType: !3058, size: 32768, offset: 512)
!3058 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3040, line: 348, size: 32768, elements: !3059)
!3059 = !{!3060, !3075, !3112, !3189, !3202}
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3058, file: !3040, line: 349, baseType: !3061, size: 896)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3040, line: 12, size: 896, elements: !3062)
!3062 = !{!3063, !3064, !3065, !3066, !3067, !3068, !3069, !3070, !3074}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3061, file: !3040, line: 13, baseType: !610, size: 32)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3061, file: !3040, line: 14, baseType: !610, size: 32, offset: 32)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3061, file: !3040, line: 15, baseType: !610, size: 32, offset: 64)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3061, file: !3040, line: 16, baseType: !610, size: 32, offset: 96)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3061, file: !3040, line: 17, baseType: !610, size: 32, offset: 128)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3061, file: !3040, line: 18, baseType: !610, size: 32, offset: 160)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3061, file: !3040, line: 19, baseType: !610, size: 32, offset: 192)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3061, file: !3040, line: 22, baseType: !3071, size: 640, offset: 224)
!3071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 640, elements: !3072)
!3072 = !{!3073}
!3073 = !DISubrange(count: 20)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3061, file: !3040, line: 25, baseType: !610, size: 32, offset: 864)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3058, file: !3040, line: 350, baseType: !3076, size: 4096, align: 128)
!3076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3040, line: 34, size: 4096, align: 128, elements: !3077)
!3077 = !{!3078, !3079, !3080, !3081, !3082, !3097, !3098, !3099, !3101, !3103, !3107}
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3076, file: !3040, line: 35, baseType: !429, size: 16)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3076, file: !3040, line: 36, baseType: !429, size: 16, offset: 16)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3076, file: !3040, line: 37, baseType: !429, size: 16, offset: 32)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3076, file: !3040, line: 38, baseType: !429, size: 16, offset: 48)
!3082 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3040, line: 39, baseType: !3083, size: 128, offset: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3040, line: 39, size: 128, elements: !3084)
!3084 = !{!3085, !3090}
!3085 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3040, line: 40, baseType: !3086, size: 128)
!3086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3040, line: 40, size: 128, elements: !3087)
!3087 = !{!3088, !3089}
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3086, file: !3040, line: 41, baseType: !614, size: 64)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3086, file: !3040, line: 42, baseType: !614, size: 64, offset: 64)
!3090 = !DIDerivedType(tag: DW_TAG_member, scope: !3083, file: !3040, line: 44, baseType: !3091, size: 128)
!3091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3083, file: !3040, line: 44, size: 128, elements: !3092)
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3091, file: !3040, line: 45, baseType: !610, size: 32)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3091, file: !3040, line: 46, baseType: !610, size: 32, offset: 32)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3091, file: !3040, line: 47, baseType: !610, size: 32, offset: 64)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3091, file: !3040, line: 48, baseType: !610, size: 32, offset: 96)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3076, file: !3040, line: 51, baseType: !610, size: 32, offset: 192)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3076, file: !3040, line: 52, baseType: !610, size: 32, offset: 224)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3076, file: !3040, line: 55, baseType: !3100, size: 1024, offset: 256)
!3100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 1024, elements: !623)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3076, file: !3040, line: 58, baseType: !3102, size: 2048, offset: 1280)
!3102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 2048, elements: !466)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3076, file: !3040, line: 60, baseType: !3104, size: 384, offset: 3328)
!3104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 384, elements: !3105)
!3105 = !{!3106}
!3106 = !DISubrange(count: 12)
!3107 = !DIDerivedType(tag: DW_TAG_member, scope: !3076, file: !3040, line: 62, baseType: !3108, size: 384, offset: 3712)
!3108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3076, file: !3040, line: 62, size: 384, elements: !3109)
!3109 = !{!3110, !3111}
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3108, file: !3040, line: 63, baseType: !3104, size: 384)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3108, file: !3040, line: 64, baseType: !3104, size: 384)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3058, file: !3040, line: 351, baseType: !3113, size: 1088)
!3113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3040, line: 79, size: 1088, elements: !3114)
!3114 = !{!3115, !3116, !3117, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3188}
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3113, file: !3040, line: 80, baseType: !610, size: 32)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3113, file: !3040, line: 81, baseType: !610, size: 32, offset: 32)
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3113, file: !3040, line: 82, baseType: !610, size: 32, offset: 64)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3113, file: !3040, line: 83, baseType: !610, size: 32, offset: 96)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3113, file: !3040, line: 84, baseType: !610, size: 32, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3113, file: !3040, line: 85, baseType: !610, size: 32, offset: 160)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3113, file: !3040, line: 86, baseType: !610, size: 32, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3113, file: !3040, line: 88, baseType: !3071, size: 640, offset: 224)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3113, file: !3040, line: 89, baseType: !419, size: 8, offset: 864)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3113, file: !3040, line: 90, baseType: !419, size: 8, offset: 872)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3113, file: !3040, line: 91, baseType: !419, size: 8, offset: 880)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3113, file: !3040, line: 92, baseType: !419, size: 8, offset: 888)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3113, file: !3040, line: 93, baseType: !419, size: 8, offset: 896)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3113, file: !3040, line: 94, baseType: !419, size: 8, offset: 904)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3113, file: !3040, line: 95, baseType: !3130, size: 64, offset: 960)
!3130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3131, size: 64)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3132, line: 11, size: 128, elements: !3133)
!3132 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3133 = !{!3134, !3135}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3131, file: !3132, line: 12, baseType: !497, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3131, file: !3132, line: 13, baseType: !3136, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3137, size: 64)
!3137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3138, line: 103, size: 1344, elements: !3139)
!3138 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3139 = !{!3140, !3141, !3142, !3143, !3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3168, !3169, !3170}
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3137, file: !3138, line: 109, baseType: !511, size: 64)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3137, file: !3138, line: 110, baseType: !511, size: 64, offset: 64)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3137, file: !3138, line: 111, baseType: !511, size: 64, offset: 128)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3137, file: !3138, line: 112, baseType: !511, size: 64, offset: 192)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3137, file: !3138, line: 113, baseType: !511, size: 64, offset: 256)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3137, file: !3138, line: 114, baseType: !511, size: 64, offset: 320)
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3137, file: !3138, line: 117, baseType: !511, size: 64, offset: 384)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3137, file: !3138, line: 118, baseType: !511, size: 64, offset: 448)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3137, file: !3138, line: 119, baseType: !511, size: 64, offset: 512)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3137, file: !3138, line: 120, baseType: !511, size: 64, offset: 576)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3137, file: !3138, line: 121, baseType: !511, size: 64, offset: 640)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3137, file: !3138, line: 122, baseType: !511, size: 64, offset: 704)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3137, file: !3138, line: 123, baseType: !511, size: 64, offset: 768)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3137, file: !3138, line: 124, baseType: !511, size: 64, offset: 832)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3137, file: !3138, line: 125, baseType: !511, size: 64, offset: 896)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3137, file: !3138, line: 139, baseType: !511, size: 64, offset: 960)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3137, file: !3138, line: 142, baseType: !511, size: 64, offset: 1024)
!3157 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3138, line: 144, baseType: !3158, size: 64, offset: 1088)
!3158 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3138, line: 144, size: 64, elements: !3159)
!3159 = !{!3160, !3161, !3162}
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3158, file: !3138, line: 146, baseType: !429, size: 16)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3158, file: !3138, line: 148, baseType: !614, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3158, file: !3138, line: 150, baseType: !3163, size: 64)
!3163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3138, line: 59, size: 64, elements: !3164)
!3164 = !{!3165, !3166, !3167}
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3163, file: !3138, line: 61, baseType: !614, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3163, file: !3138, line: 63, baseType: !614, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3163, file: !3138, line: 65, baseType: !614, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3137, file: !3138, line: 153, baseType: !511, size: 64, offset: 1152)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3137, file: !3138, line: 154, baseType: !511, size: 64, offset: 1216)
!3170 = !DIDerivedType(tag: DW_TAG_member, scope: !3137, file: !3138, line: 156, baseType: !3171, size: 64, offset: 1280)
!3171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3137, file: !3138, line: 156, size: 64, elements: !3172)
!3172 = !{!3173, !3174, !3175}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3171, file: !3138, line: 158, baseType: !429, size: 16)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3171, file: !3138, line: 160, baseType: !614, size: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3171, file: !3138, line: 162, baseType: !3176, size: 64)
!3176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3138, line: 69, size: 64, elements: !3177)
!3177 = !{!3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187}
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3176, file: !3138, line: 71, baseType: !614, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3176, file: !3138, line: 73, baseType: !614, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3176, file: !3138, line: 75, baseType: !614, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3176, file: !3138, line: 77, baseType: !614, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3176, file: !3138, line: 80, baseType: !614, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3176, file: !3138, line: 83, baseType: !614, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3176, file: !3138, line: 86, baseType: !614, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3176, file: !3138, line: 88, baseType: !614, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3176, file: !3138, line: 93, baseType: !614, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3176, file: !3138, line: 100, baseType: !614, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3113, file: !3040, line: 96, baseType: !610, size: 32, offset: 1024)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3058, file: !3040, line: 352, baseType: !3190, size: 4608, align: 512)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3040, line: 333, size: 4608, align: 512, elements: !3191)
!3191 = !{!3192, !3193, !3200}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3190, file: !3040, line: 334, baseType: !3076, size: 4096, align: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3190, file: !3040, line: 335, baseType: !3194, size: 512, offset: 4096)
!3194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3040, line: 312, size: 512, elements: !3195)
!3195 = !{!3196, !3197, !3198}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3194, file: !3040, line: 313, baseType: !614, size: 64)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3194, file: !3040, line: 314, baseType: !614, size: 64, offset: 64)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3194, file: !3040, line: 315, baseType: !3199, size: 384, offset: 128)
!3199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !614, size: 384, elements: !5)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3190, file: !3040, line: 336, baseType: !3201, offset: 4608)
!3201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, elements: !1831)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3058, file: !3040, line: 353, baseType: !3203, size: 32768)
!3203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 32768, elements: !3204)
!3204 = !{!3205}
!3205 = !DISubrange(count: 4096)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3039, file: !3040, line: 484, baseType: !3045, size: 64, offset: 192)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3039, file: !3040, line: 491, baseType: !3208, size: 128, offset: 256)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3040, line: 404, size: 128, elements: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3208, file: !3040, line: 424, baseType: !614, size: 64)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3208, file: !3040, line: 432, baseType: !13, size: 32, offset: 64)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3208, file: !3040, line: 440, baseType: !13, size: 32, offset: 96)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3039, file: !3040, line: 498, baseType: !3208, size: 128, offset: 384)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3039, file: !3040, line: 508, baseType: !3046, size: 33280, align: 512, offset: 512)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "pid_cachep", scope: !1351, file: !1352, line: 31, baseType: !3216, size: 64, offset: 448)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2977, line: 11, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1351, file: !1352, line: 32, baseType: !13, size: 32, offset: 512)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1351, file: !1352, line: 33, baseType: !1350, size: 64, offset: 576)
!3220 = !DIDerivedType(tag: DW_TAG_member, name: "bacct", scope: !1351, file: !1352, line: 35, baseType: !3221, size: 64, offset: 640)
!3221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3222, size: 64)
!3222 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_pin", file: !1352, line: 17, flags: DIFlagFwdDecl)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1351, file: !1352, line: 37, baseType: !1813, size: 64, offset: 704)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1351, file: !1352, line: 38, baseType: !2129, size: 64, offset: 768)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "reboot", scope: !1351, file: !1352, line: 39, baseType: !115, size: 32, offset: 832)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1351, file: !1352, line: 40, baseType: !3227, size: 192, offset: 896)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ns_common", file: !3228, line: 9, size: 192, elements: !3229)
!3228 = !DIFile(filename: "./include/linux/ns_common.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee32b998ca2668ab19e0ae22cd52a10b")
!3229 = !{!3230, !3231, !3235, !3236}
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "stashed", scope: !3227, file: !3228, line: 10, baseType: !806, size: 64)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3227, file: !3228, line: 11, baseType: !3232, size: 64, offset: 64)
!3232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3233, size: 64)
!3233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3234)
!3234 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_ns_operations", file: !3228, line: 7, flags: DIFlagFwdDecl)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "inum", scope: !3227, file: !3228, line: 12, baseType: !13, size: 32, offset: 128)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3227, file: !3228, line: 13, baseType: !361, size: 32, offset: 160)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "memfd_noexec_scope", scope: !1351, file: !1352, line: 42, baseType: !115, size: 32, offset: 1088)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1303, file: !20, line: 951, baseType: !66, size: 32, offset: 128)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1303, file: !20, line: 952, baseType: !547, size: 32, offset: 160)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1303, file: !20, line: 952, baseType: !547, size: 32, offset: 192)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1303, file: !20, line: 953, baseType: !115, size: 32, offset: 224)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1282, file: !20, line: 1012, baseType: !1967, size: 64, offset: 896)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1282, file: !20, line: 1013, baseType: !3244, size: 256, offset: 960)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !20, line: 970, size: 256, elements: !3245)
!3245 = !{!3246, !3247, !3248, !3249, !3250, !3251}
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !3244, file: !20, line: 971, baseType: !511, size: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3244, file: !20, line: 972, baseType: !13, size: 32, offset: 64)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !3244, file: !20, line: 973, baseType: !13, size: 32, offset: 96)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !3244, file: !20, line: 974, baseType: !13, size: 32, offset: 128)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !3244, file: !20, line: 975, baseType: !13, size: 32, offset: 160)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !3244, file: !20, line: 976, baseType: !702, size: 64, offset: 192)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1282, file: !20, line: 1014, baseType: !3253, size: 128, offset: 1216)
!3253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !3254, line: 8, size: 128, elements: !3255)
!3254 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!3255 = !{!3256, !3257}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !3253, file: !3254, line: 9, baseType: !686, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !3253, file: !3254, line: 10, baseType: !576, size: 64, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1282, file: !20, line: 1015, baseType: !541, size: 64, offset: 1344)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1282, file: !20, line: 1016, baseType: !3260, size: 64, offset: 1408)
!3260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3261, size: 64)
!3261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3262)
!3262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !20, line: 1914, size: 2112, elements: !3263)
!3263 = !{!3264, !3265, !3269, !3273, !3277, !3305, !3306, !3312, !3325, !3333, !3337, !3338, !3342, !3343, !3347, !3352, !3353, !3357, !3361, !3367, !3368, !3372, !3373, !3377, !3381, !3385, !3391, !3395, !3399, !3403, !3407, !3408, !3414}
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3262, file: !20, line: 1915, baseType: !731, size: 64)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3262, file: !20, line: 1916, baseType: !3266, size: 64, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3267, size: 64)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!702, !1685, !702, !115}
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3262, file: !20, line: 1917, baseType: !3270, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3271, size: 64)
!3271 = !DISubroutineType(types: !3272)
!3272 = !{!493, !1685, !461, !508, !1265}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3262, file: !20, line: 1918, baseType: !3274, size: 64, offset: 192)
!3274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3275, size: 64)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!493, !1685, !379, !508, !1265}
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3262, file: !20, line: 1919, baseType: !3278, size: 64, offset: 256)
!3278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3279, size: 64)
!3279 = !DISubroutineType(types: !3280)
!3280 = !{!493, !3281, !3303}
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3282, size: 64)
!3282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !20, line: 373, size: 384, elements: !3283)
!3283 = !{!3284, !3285, !3286, !3290, !3291, !3292, !3293}
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !3282, file: !20, line: 374, baseType: !1685, size: 64)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !3282, file: !20, line: 375, baseType: !702, size: 64, offset: 64)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !3282, file: !20, line: 376, baseType: !3287, size: 64, offset: 128)
!3287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3288 = !DISubroutineType(types: !3289)
!3289 = !{null, !3281, !497}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3282, file: !20, line: 377, baseType: !345, size: 64, offset: 192)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !3282, file: !20, line: 378, baseType: !115, size: 32, offset: 256)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !3282, file: !20, line: 379, baseType: !429, size: 16, offset: 288)
!3293 = !DIDerivedType(tag: DW_TAG_member, scope: !3282, file: !20, line: 380, baseType: !3294, size: 64, offset: 320)
!3294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3282, file: !20, line: 380, size: 64, elements: !3295)
!3295 = !{!3296, !3299}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !3294, file: !20, line: 386, baseType: !3297, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !20, line: 386, flags: DIFlagFwdDecl)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !3294, file: !20, line: 395, baseType: !3300, size: 64)
!3300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3301, size: 64)
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!493, !345}
!3303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3304, size: 64)
!3304 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !20, line: 69, flags: DIFlagFwdDecl)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3262, file: !20, line: 1920, baseType: !3278, size: 64, offset: 320)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3262, file: !20, line: 1921, baseType: !3307, size: 64, offset: 384)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DISubroutineType(types: !3309)
!3309 = !{!115, !3281, !3310, !13}
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !20, line: 53, flags: DIFlagFwdDecl)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3262, file: !20, line: 1923, baseType: !3313, size: 64, offset: 448)
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DISubroutineType(types: !3315)
!3315 = !{!115, !1685, !3316}
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !20, line: 1858, size: 128, elements: !3318)
!3318 = !{!3319, !3324}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3317, file: !20, line: 1859, baseType: !3320, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !20, line: 1855, baseType: !3321)
!3321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3322, size: 64)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{!882, !3316, !379, !115, !702, !614, !13}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3317, file: !20, line: 1860, baseType: !702, size: 64, offset: 64)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3262, file: !20, line: 1924, baseType: !3326, size: 64, offset: 512)
!3326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3327, size: 64)
!3327 = !DISubroutineType(types: !3328)
!3328 = !{!3329, !1685, !3331}
!3329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3330, line: 59, baseType: !13)
!3330 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3332, size: 64)
!3332 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !717, line: 31, flags: DIFlagFwdDecl)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3262, file: !20, line: 1925, baseType: !3334, size: 64, offset: 576)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!497, !1685, !13, !511}
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3262, file: !20, line: 1926, baseType: !3334, size: 64, offset: 640)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3262, file: !20, line: 1927, baseType: !3339, size: 64, offset: 704)
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3340, size: 64)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!115, !1685, !2708}
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3262, file: !20, line: 1928, baseType: !511, size: 64, offset: 768)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3262, file: !20, line: 1929, baseType: !3344, size: 64, offset: 832)
!3344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3345, size: 64)
!3345 = !DISubroutineType(types: !3346)
!3346 = !{!115, !541, !1685}
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3262, file: !20, line: 1930, baseType: !3348, size: 64, offset: 896)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!115, !1685, !3351}
!3351 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !20, line: 1061, baseType: !345)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3262, file: !20, line: 1931, baseType: !3344, size: 64, offset: 960)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3262, file: !20, line: 1932, baseType: !3354, size: 64, offset: 1024)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!115, !1685, !702, !702, !115}
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3262, file: !20, line: 1933, baseType: !3358, size: 64, offset: 1088)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DISubroutineType(types: !3360)
!3360 = !{!115, !115, !1685, !115}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3262, file: !20, line: 1934, baseType: !3362, size: 64, offset: 1152)
!3362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3363, size: 64)
!3363 = !DISubroutineType(types: !3364)
!3364 = !{!115, !1685, !115, !3365}
!3365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3366, size: 64)
!3366 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !20, line: 1063, flags: DIFlagFwdDecl)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3262, file: !20, line: 1935, baseType: !1682, size: 64, offset: 1216)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3262, file: !20, line: 1936, baseType: !3369, size: 64, offset: 1280)
!3369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3370, size: 64)
!3370 = !DISubroutineType(types: !3371)
!3371 = !{!115, !115}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3262, file: !20, line: 1937, baseType: !3362, size: 64, offset: 1344)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3262, file: !20, line: 1938, baseType: !3374, size: 64, offset: 1408)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!493, !2592, !1685, !1265, !508, !13}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3262, file: !20, line: 1939, baseType: !3378, size: 64, offset: 1472)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = !DISubroutineType(types: !3380)
!3380 = !{!493, !1685, !1265, !2592, !508, !13}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3262, file: !20, line: 1940, baseType: !3382, size: 64, offset: 1536)
!3382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3383, size: 64)
!3383 = !DISubroutineType(types: !3384)
!3384 = !{null, !1685}
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3262, file: !20, line: 1941, baseType: !3386, size: 64, offset: 1600)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!115, !1685, !115, !3389, !3390}
!3389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3365, size: 64)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3262, file: !20, line: 1942, baseType: !3392, size: 64, offset: 1664)
!3392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3393, size: 64)
!3393 = !DISubroutineType(types: !3394)
!3394 = !{!497, !1685, !115, !702, !702}
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3262, file: !20, line: 1944, baseType: !3396, size: 64, offset: 1728)
!3396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3397, size: 64)
!3397 = !DISubroutineType(types: !3398)
!3398 = !{null, !1244, !1685}
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3262, file: !20, line: 1948, baseType: !3400, size: 64, offset: 1792)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!493, !1685, !702, !1685, !702, !508, !13}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3262, file: !20, line: 1950, baseType: !3404, size: 64, offset: 1856)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!702, !1685, !702, !1685, !702, !702, !13}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3262, file: !20, line: 1953, baseType: !3354, size: 64, offset: 1920)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3262, file: !20, line: 1954, baseType: !3409, size: 64, offset: 1984)
!3409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3410, size: 64)
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!115, !3412, !13}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !20, line: 1911, flags: DIFlagFwdDecl)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3262, file: !20, line: 1955, baseType: !3415, size: 64, offset: 2048)
!3415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3416, size: 64)
!3416 = !DISubroutineType(types: !3417)
!3417 = !{!115, !3412, !3310, !13}
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1282, file: !20, line: 1018, baseType: !614, size: 64, offset: 1472)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1282, file: !20, line: 1020, baseType: !345, size: 64, offset: 1536)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1282, file: !20, line: 1023, baseType: !345, size: 64, offset: 1600)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1282, file: !20, line: 1027, baseType: !3422, size: 64, offset: 1664)
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1282, file: !20, line: 1029, baseType: !537, size: 64, offset: 1728)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1282, file: !20, line: 1030, baseType: !3425, size: 32, offset: 1792)
!3425 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !3426, line: 8, baseType: !610)
!3426 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1282, file: !20, line: 1031, baseType: !3425, size: 32, offset: 1824)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1245, file: !1246, line: 29, baseType: !345, size: 64, offset: 896)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1188, file: !20, line: 2077, baseType: !1241, size: 64, offset: 1088)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1188, file: !20, line: 2078, baseType: !1241, size: 64, offset: 1152)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1188, file: !20, line: 2079, baseType: !1241, size: 64, offset: 1216)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1188, file: !20, line: 2081, baseType: !3433, size: 64, offset: 1280)
!3433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3434, size: 64)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!493, !692, !115, !461, !508, !702}
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1188, file: !20, line: 2082, baseType: !3437, size: 64, offset: 1344)
!3437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3438, size: 64)
!3438 = !DISubroutineType(types: !3439)
!3439 = !{!493, !692, !115, !379, !508, !702}
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1188, file: !20, line: 2083, baseType: !3441, size: 64, offset: 1408)
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3442, size: 64)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!3444, !541}
!3444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3445, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !75, line: 296, size: 1664, elements: !3447)
!3447 = !{!3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455, !3456, !3472, !3473, !3474}
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !3446, file: !75, line: 297, baseType: !1048, size: 128)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !3446, file: !75, line: 298, baseType: !382, size: 128, offset: 128)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !3446, file: !75, line: 299, baseType: !382, size: 128, offset: 256)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !3446, file: !75, line: 300, baseType: !382, size: 128, offset: 384)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !3446, file: !75, line: 301, baseType: !802, size: 256, offset: 512)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !3446, file: !75, line: 302, baseType: !395, size: 32, offset: 768)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !3446, file: !75, line: 303, baseType: !366, size: 32, offset: 800)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !3446, file: !75, line: 304, baseType: !692, size: 64, offset: 832)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !3446, file: !75, line: 305, baseType: !3457, size: 64, offset: 896)
!3457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !75, line: 68, size: 64, elements: !3458)
!3458 = !{!3459, !3471}
!3459 = !DIDerivedType(tag: DW_TAG_member, scope: !3457, file: !75, line: 69, baseType: !3460, size: 32)
!3460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3457, file: !75, line: 69, size: 32, elements: !3461)
!3461 = !{!3462, !3463, !3464}
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3460, file: !75, line: 70, baseType: !547, size: 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3460, file: !75, line: 71, baseType: !556, size: 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !3460, file: !75, line: 72, baseType: !3465, size: 32)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !3466, line: 24, baseType: !3467)
!3466 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!3467 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3466, line: 22, size: 32, elements: !3468)
!3468 = !{!3469}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3467, file: !3466, line: 23, baseType: !3470, size: 32)
!3470 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !3466, line: 20, baseType: !553)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3457, file: !75, line: 74, baseType: !74, size: 32, offset: 32)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !3446, file: !75, line: 306, baseType: !702, size: 64, offset: 960)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !3446, file: !75, line: 307, baseType: !511, size: 64, offset: 1024)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !3446, file: !75, line: 308, baseType: !3475, size: 576, offset: 1088)
!3475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !75, line: 205, size: 576, elements: !3476)
!3476 = !{!3477, !3479, !3480, !3481, !3482, !3483, !3484, !3485, !3486}
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !3475, file: !75, line: 206, baseType: !3478, size: 64)
!3478 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !75, line: 66, baseType: !704)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !3475, file: !75, line: 207, baseType: !3478, size: 64, offset: 64)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !3475, file: !75, line: 208, baseType: !3478, size: 64, offset: 128)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !3475, file: !75, line: 209, baseType: !3478, size: 64, offset: 192)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !3475, file: !75, line: 210, baseType: !3478, size: 64, offset: 256)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !3475, file: !75, line: 211, baseType: !3478, size: 64, offset: 320)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !3475, file: !75, line: 212, baseType: !3478, size: 64, offset: 384)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !3475, file: !75, line: 213, baseType: !2016, size: 64, offset: 448)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !3475, file: !75, line: 214, baseType: !2016, size: 64, offset: 512)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1188, file: !20, line: 2085, baseType: !3488, size: 64, offset: 1472)
!3488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3489, size: 64)
!3489 = !DISubroutineType(types: !3490)
!3490 = !{!497, !692, !3491}
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !3493, line: 15, size: 256, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!3494 = !{!3495, !3496, !3497, !3498, !3499}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !3492, file: !3493, line: 16, baseType: !346, size: 32)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !3492, file: !3493, line: 19, baseType: !115, size: 32, offset: 32)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !3492, file: !3493, line: 26, baseType: !511, size: 64, offset: 64)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !3492, file: !3493, line: 33, baseType: !511, size: 64, offset: 128)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !3492, file: !3493, line: 36, baseType: !3500, size: 64, offset: 192)
!3500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3501, size: 64)
!3501 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !44, line: 33, flags: DIFlagFwdDecl)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1188, file: !20, line: 2087, baseType: !3488, size: 64, offset: 1536)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1188, file: !20, line: 2089, baseType: !727, size: 64, offset: 1600)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !693, file: !20, line: 1198, baseType: !3505, size: 64, offset: 448)
!3505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3506, size: 64)
!3506 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3507)
!3507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !75, line: 324, size: 704, elements: !3508)
!3508 = !{!3509, !3513, !3517, !3521, !3522, !3523, !3524, !3525, !3530, !3535, !3539}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !3507, file: !75, line: 325, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{!115, !3445}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !3507, file: !75, line: 326, baseType: !3514, size: 64, offset: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3515, size: 64)
!3515 = !DISubroutineType(types: !3516)
!3516 = !{!3445, !692, !115}
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !3507, file: !75, line: 327, baseType: !3518, size: 64, offset: 128)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DISubroutineType(types: !3520)
!3520 = !{null, !3445}
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !3507, file: !75, line: 328, baseType: !3510, size: 64, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !3507, file: !75, line: 329, baseType: !3510, size: 64, offset: 256)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !3507, file: !75, line: 330, baseType: !3510, size: 64, offset: 320)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !3507, file: !75, line: 331, baseType: !1216, size: 64, offset: 384)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !3507, file: !75, line: 334, baseType: !3526, size: 64, offset: 448)
!3526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3527, size: 64)
!3527 = !DISubroutineType(types: !3528)
!3528 = !{!3529, !541}
!3529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !3507, file: !75, line: 335, baseType: !3531, size: 64, offset: 512)
!3531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3532, size: 64)
!3532 = !DISubroutineType(types: !3533)
!3533 = !{!115, !541, !3534}
!3534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3465, size: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !3507, file: !75, line: 337, baseType: !3536, size: 64, offset: 576)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!115, !541, !3529}
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3507, file: !75, line: 339, baseType: !3540, size: 64, offset: 640)
!3540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3541, size: 64)
!3541 = !DISubroutineType(types: !3542)
!3542 = !{!115, !692, !3543}
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3457, size: 64)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !693, file: !20, line: 1199, baseType: !3545, size: 64, offset: 512)
!3545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3546, size: 64)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3547)
!3547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !75, line: 430, size: 704, elements: !3548)
!3548 = !{!3549, !3555, !3556, !3560, !3561, !3562, !3577, !3600, !3604, !3605, !3628}
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !3547, file: !75, line: 431, baseType: !3550, size: 64)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!115, !692, !115, !115, !3553}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3554, size: 64)
!3554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3253)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !3547, file: !75, line: 432, baseType: !1216, size: 64, offset: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !3547, file: !75, line: 433, baseType: !3557, size: 64, offset: 128)
!3557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3558, size: 64)
!3558 = !DISubroutineType(types: !3559)
!3559 = !{!115, !692, !13}
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !3547, file: !75, line: 434, baseType: !3557, size: 64, offset: 192)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !3547, file: !75, line: 435, baseType: !1216, size: 64, offset: 256)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !3547, file: !75, line: 436, baseType: !3563, size: 64, offset: 320)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DISubroutineType(types: !3565)
!3565 = !{!115, !692, !115, !3566}
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !75, line: 417, size: 256, elements: !3568)
!3568 = !{!3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !3567, file: !75, line: 418, baseType: !115, size: 32)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !3567, file: !75, line: 419, baseType: !13, size: 32, offset: 32)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !3567, file: !75, line: 420, baseType: !13, size: 32, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !3567, file: !75, line: 422, baseType: !13, size: 32, offset: 96)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !3567, file: !75, line: 423, baseType: !13, size: 32, offset: 128)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !3567, file: !75, line: 424, baseType: !13, size: 32, offset: 160)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !3567, file: !75, line: 425, baseType: !13, size: 32, offset: 192)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !3567, file: !75, line: 426, baseType: !13, size: 32, offset: 224)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !3547, file: !75, line: 437, baseType: !3578, size: 64, offset: 384)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!115, !692, !3457, !3581}
!3581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3582, size: 64)
!3582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !75, line: 345, size: 960, elements: !3583)
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590, !3591, !3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599}
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !3582, file: !75, line: 346, baseType: !115, size: 32)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !3582, file: !75, line: 347, baseType: !614, size: 64, offset: 64)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !3582, file: !75, line: 348, baseType: !614, size: 64, offset: 128)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !3582, file: !75, line: 349, baseType: !614, size: 64, offset: 192)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !3582, file: !75, line: 350, baseType: !614, size: 64, offset: 256)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !3582, file: !75, line: 351, baseType: !614, size: 64, offset: 320)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !3582, file: !75, line: 352, baseType: !614, size: 64, offset: 384)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !3582, file: !75, line: 353, baseType: !812, size: 64, offset: 448)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !3582, file: !75, line: 355, baseType: !812, size: 64, offset: 512)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !3582, file: !75, line: 356, baseType: !115, size: 32, offset: 576)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !3582, file: !75, line: 357, baseType: !115, size: 32, offset: 608)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !3582, file: !75, line: 358, baseType: !614, size: 64, offset: 640)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !3582, file: !75, line: 359, baseType: !614, size: 64, offset: 704)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !3582, file: !75, line: 360, baseType: !614, size: 64, offset: 768)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !3582, file: !75, line: 361, baseType: !812, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !3582, file: !75, line: 362, baseType: !115, size: 32, offset: 896)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !3547, file: !75, line: 438, baseType: !3601, size: 64, offset: 448)
!3601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3602, size: 64)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!115, !692, !3543, !3581}
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !3547, file: !75, line: 440, baseType: !3578, size: 64, offset: 512)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !3547, file: !75, line: 441, baseType: !3606, size: 64, offset: 576)
!3606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3607, size: 64)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!115, !692, !3609}
!3609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3610, size: 64)
!3610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !75, line: 411, size: 1408, elements: !3611)
!3611 = !{!3612, !3613}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !3610, file: !75, line: 412, baseType: !13, size: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !3610, file: !75, line: 413, baseType: !3614, size: 1344, offset: 64)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3615, size: 1344, elements: !462)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !75, line: 397, size: 448, elements: !3616)
!3616 = !{!3617, !3618, !3619, !3620, !3621, !3622, !3623, !3624, !3625, !3627}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3615, file: !75, line: 398, baseType: !13, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !3615, file: !75, line: 399, baseType: !13, size: 32, offset: 32)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !3615, file: !75, line: 401, baseType: !13, size: 32, offset: 64)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !3615, file: !75, line: 402, baseType: !13, size: 32, offset: 96)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !3615, file: !75, line: 403, baseType: !13, size: 32, offset: 128)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !3615, file: !75, line: 404, baseType: !13, size: 32, offset: 160)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !3615, file: !75, line: 405, baseType: !13, size: 32, offset: 192)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3615, file: !75, line: 406, baseType: !616, size: 64, offset: 256)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3615, file: !75, line: 407, baseType: !3626, size: 64, offset: 320)
!3626 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !347, line: 132, baseType: !614)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !3615, file: !75, line: 408, baseType: !3626, size: 64, offset: 384)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !3547, file: !75, line: 442, baseType: !3557, size: 64, offset: 640)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !693, file: !20, line: 1200, baseType: !3630, size: 64, offset: 576)
!3630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3631, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3632)
!3632 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !20, line: 54, flags: DIFlagFwdDecl)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !693, file: !20, line: 1201, baseType: !511, size: 64, offset: 640)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !693, file: !20, line: 1202, baseType: !511, size: 64, offset: 704)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !693, file: !20, line: 1203, baseType: !511, size: 64, offset: 768)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !693, file: !20, line: 1204, baseType: !576, size: 64, offset: 832)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !693, file: !20, line: 1205, baseType: !1713, size: 320, offset: 896)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !693, file: !20, line: 1206, baseType: !115, size: 32, offset: 1216)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !693, file: !20, line: 1207, baseType: !366, size: 32, offset: 1248)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !693, file: !20, line: 1209, baseType: !345, size: 64, offset: 1280)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !693, file: !20, line: 1211, baseType: !3642, size: 64, offset: 1344)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3644, size: 64)
!3644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3645)
!3645 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !20, line: 1211, flags: DIFlagFwdDecl)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !693, file: !20, line: 1223, baseType: !3647, size: 64, offset: 1408)
!3647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !593, line: 34, size: 64, elements: !3648)
!3648 = !{!3649}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3647, file: !593, line: 35, baseType: !596, size: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !693, file: !20, line: 1224, baseType: !382, size: 128, offset: 1472)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !693, file: !20, line: 1225, baseType: !3652, size: 64, offset: 1600)
!3652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3653, size: 64)
!3653 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !20, line: 1225, flags: DIFlagFwdDecl)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !693, file: !20, line: 1226, baseType: !3655, size: 64, offset: 1664)
!3655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3656, size: 64)
!3656 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !20, line: 1226, flags: DIFlagFwdDecl)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !693, file: !20, line: 1227, baseType: !3658, size: 64, offset: 1728)
!3658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3659, size: 64)
!3659 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !20, line: 50, flags: DIFlagFwdDecl)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !693, file: !20, line: 1228, baseType: !3661, size: 64, offset: 1792)
!3661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3662, size: 64)
!3662 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !20, line: 1228, flags: DIFlagFwdDecl)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !693, file: !20, line: 1229, baseType: !1048, size: 128, offset: 1856)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !693, file: !20, line: 1230, baseType: !13, size: 32, offset: 1984)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !693, file: !20, line: 1231, baseType: !3666, size: 2496, offset: 2048)
!3666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !75, line: 521, size: 2496, elements: !3667)
!3667 = !{!3668, !3669, !3670, !3672, !3704}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3666, file: !75, line: 522, baseType: !13, size: 32)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !3666, file: !75, line: 523, baseType: !1713, size: 320, offset: 64)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !3666, file: !75, line: 524, baseType: !3671, size: 192, offset: 384)
!3671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !541, size: 192, elements: !462)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3666, file: !75, line: 525, baseType: !3673, size: 1728, offset: 576)
!3673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3674, size: 1728, elements: !462)
!3674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !75, line: 222, size: 576, elements: !3675)
!3675 = !{!3676, !3696, !3697, !3698, !3699, !3700, !3701, !3702, !3703}
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !3674, file: !75, line: 223, baseType: !3677, size: 64)
!3677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3678, size: 64)
!3678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !75, line: 445, size: 256, elements: !3679)
!3679 = !{!3680, !3681, !3694, !3695}
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !3678, file: !75, line: 446, baseType: !115, size: 32)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !3678, file: !75, line: 447, baseType: !3682, size: 64, offset: 64)
!3682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3683, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3684)
!3684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !75, line: 312, size: 512, elements: !3685)
!3685 = !{!3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !3684, file: !75, line: 313, baseType: !1216, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !3684, file: !75, line: 314, baseType: !1216, size: 64, offset: 64)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !3684, file: !75, line: 315, baseType: !1216, size: 64, offset: 128)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !3684, file: !75, line: 316, baseType: !1216, size: 64, offset: 192)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !3684, file: !75, line: 317, baseType: !3510, size: 64, offset: 256)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !3684, file: !75, line: 318, baseType: !3510, size: 64, offset: 320)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !3684, file: !75, line: 319, baseType: !3510, size: 64, offset: 384)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !3684, file: !75, line: 320, baseType: !3540, size: 64, offset: 448)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !3678, file: !75, line: 448, baseType: !731, size: 64, offset: 128)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !3678, file: !75, line: 449, baseType: !3677, size: 64, offset: 192)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !3674, file: !75, line: 224, baseType: !115, size: 32, offset: 64)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !3674, file: !75, line: 226, baseType: !382, size: 128, offset: 128)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !3674, file: !75, line: 227, baseType: !511, size: 64, offset: 256)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !3674, file: !75, line: 228, baseType: !13, size: 32, offset: 320)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !3674, file: !75, line: 229, baseType: !13, size: 32, offset: 352)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !3674, file: !75, line: 230, baseType: !3478, size: 64, offset: 384)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !3674, file: !75, line: 231, baseType: !3478, size: 64, offset: 448)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !3674, file: !75, line: 232, baseType: !345, size: 64, offset: 512)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3666, file: !75, line: 526, baseType: !3705, size: 192, offset: 2304)
!3705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3682, size: 192, elements: !462)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !693, file: !20, line: 1233, baseType: !3707, size: 2368, offset: 4544)
!3707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !20, line: 1184, size: 2368, elements: !3708)
!3708 = !{!3709, !3710, !3711}
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !3707, file: !20, line: 1185, baseType: !431, size: 16)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !3707, file: !20, line: 1186, baseType: !431, size: 16, offset: 16)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !3707, file: !20, line: 1187, baseType: !3712, size: 2304, offset: 64)
!3712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3713, size: 2304, elements: !462)
!3713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !3714, line: 12, size: 768, elements: !3715)
!3714 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!3715 = !{!3716, !3724, !3725, !3730, !3731}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !3713, file: !3714, line: 13, baseType: !3717, size: 384)
!3717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !3718, line: 17, size: 384, elements: !3719)
!3718 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!3719 = !{!3720, !3721, !3722, !3723}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !3717, file: !3718, line: 18, baseType: !115, size: 32)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !3717, file: !3718, line: 19, baseType: !115, size: 32, offset: 32)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !3717, file: !3718, line: 20, baseType: !1337, size: 192, offset: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !3717, file: !3718, line: 22, baseType: !1022, size: 128, align: 64, offset: 256)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !3713, file: !3714, line: 14, baseType: !874, size: 64, offset: 384)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !3713, file: !3714, line: 15, baseType: !3726, size: 64, offset: 448)
!3726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !3727, line: 16, size: 64, elements: !3728)
!3727 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!3728 = !{!3729}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3726, file: !3727, line: 17, baseType: !1370, size: 64)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !3713, file: !3714, line: 16, baseType: !1337, size: 192, offset: 512)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3713, file: !3714, line: 17, baseType: !366, size: 32, offset: 704)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !693, file: !20, line: 1240, baseType: !345, size: 64, offset: 6912)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !693, file: !20, line: 1243, baseType: !610, size: 32, offset: 6976)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !693, file: !20, line: 1245, baseType: !2016, size: 64, offset: 7040)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !693, file: !20, line: 1246, baseType: !2016, size: 64, offset: 7104)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !693, file: !20, line: 1248, baseType: !611, size: 32, offset: 7168)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !693, file: !20, line: 1249, baseType: !3738, size: 64, offset: 7232)
!3738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3739, size: 64)
!3739 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !20, line: 634, flags: DIFlagFwdDecl)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !693, file: !20, line: 1252, baseType: !3741, size: 256, offset: 7296)
!3741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !623)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !693, file: !20, line: 1253, baseType: !3743, size: 128, offset: 7552)
!3743 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3744, line: 21, baseType: !3745)
!3744 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3745 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3744, line: 19, size: 128, elements: !3746)
!3746 = !{!3747}
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3745, file: !3744, line: 20, baseType: !3748, size: 128)
!3748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !421, size: 128, elements: !2150)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !693, file: !20, line: 1255, baseType: !13, size: 32, offset: 7680)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !693, file: !20, line: 1261, baseType: !802, size: 256, offset: 7744)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !693, file: !20, line: 1267, baseType: !379, size: 64, offset: 8000)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !693, file: !20, line: 1269, baseType: !639, size: 64, offset: 8064)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !693, file: !20, line: 1271, baseType: !3754, size: 448, offset: 8128)
!3754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !3493, line: 63, size: 448, elements: !3755)
!3755 = !{!3756, !3761, !3762, !3763, !3764, !3765, !3766}
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3754, file: !3493, line: 64, baseType: !3757, size: 64)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DISubroutineType(types: !3759)
!3759 = !{!511, !3760, !3491}
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3754, file: !3493, line: 66, baseType: !3757, size: 64, offset: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3754, file: !3493, line: 69, baseType: !497, size: 64, offset: 128)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3754, file: !3493, line: 70, baseType: !115, size: 32, offset: 192)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3754, file: !3493, line: 71, baseType: !13, size: 32, offset: 224)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3754, file: !3493, line: 74, baseType: !382, size: 128, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3754, file: !3493, line: 85, baseType: !3767, size: 64, offset: 384)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !693, file: !20, line: 1274, baseType: !806, size: 64, offset: 8576)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !693, file: !20, line: 1280, baseType: !806, size: 64, offset: 8640)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !693, file: !20, line: 1283, baseType: !115, size: 32, offset: 8704)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !693, file: !20, line: 1286, baseType: !3425, size: 32, offset: 8736)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !693, file: !20, line: 1289, baseType: !1124, size: 64, offset: 8768)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !693, file: !20, line: 1290, baseType: !1172, size: 64, offset: 8832)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !693, file: !20, line: 1297, baseType: !1813, size: 64, offset: 8896)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !693, file: !20, line: 1304, baseType: !3776, size: 64, offset: 8960)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3777, line: 49, size: 64, elements: !3778)
!3777 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3778 = !{!3779}
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3776, file: !3777, line: 50, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3777, line: 41, size: 512, align: 512, elements: !3782)
!3782 = !{!3783, !3784, !3789}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3781, file: !3777, line: 43, baseType: !395, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3781, file: !3777, line: 45, baseType: !3785, size: 192, offset: 64)
!3785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3777, line: 29, size: 192, elements: !3786)
!3786 = !{!3787, !3788}
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3785, file: !3777, line: 30, baseType: !382, size: 128)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3785, file: !3777, line: 32, baseType: !497, size: 64, offset: 128)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3781, file: !3777, line: 46, baseType: !497, size: 64, offset: 256)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !693, file: !20, line: 1305, baseType: !3776, size: 64, offset: 9024)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !693, file: !20, line: 1306, baseType: !1022, size: 128, align: 64, offset: 9088)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !693, file: !20, line: 1307, baseType: !1062, size: 256, offset: 9216)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !693, file: !20, line: 1309, baseType: !802, size: 256, offset: 9472)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !693, file: !20, line: 1314, baseType: !115, size: 32, offset: 9728)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !693, file: !20, line: 1317, baseType: !395, size: 32, align: 512, offset: 10240)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !693, file: !20, line: 1318, baseType: !382, size: 128, offset: 10304)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !693, file: !20, line: 1320, baseType: !395, size: 32, offset: 10432)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !693, file: !20, line: 1321, baseType: !382, size: 128, offset: 10496)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !687, file: !688, line: 73, baseType: !115, size: 32, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !687, file: !688, line: 74, baseType: !3801, size: 64, offset: 192)
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1984, line: 42, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3253, size: 64)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !641, file: !578, line: 141, baseType: !3805, size: 64, offset: 704)
!3805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3806, size: 64)
!3806 = !DISubroutineType(types: !3807)
!3807 = !{!115, !3553, !882}
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !641, file: !578, line: 142, baseType: !3809, size: 64, offset: 768)
!3809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3810, size: 64)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!576, !576, !3812}
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !542)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !577, file: !578, line: 96, baseType: !692, size: 64, offset: 832)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !577, file: !578, line: 97, baseType: !511, size: 64, offset: 896)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !577, file: !578, line: 98, baseType: !345, size: 64, offset: 960)
!3817 = !DIDerivedType(tag: DW_TAG_member, scope: !577, file: !578, line: 100, baseType: !3818, size: 128, offset: 1024)
!3818 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !578, line: 100, size: 128, elements: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3818, file: !578, line: 101, baseType: !382, size: 128)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3818, file: !578, line: 102, baseType: !3822, size: 64)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !577, file: !578, line: 104, baseType: !382, size: 128, offset: 1152)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !577, file: !578, line: 105, baseType: !382, size: 128, offset: 1280)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !577, file: !578, line: 113, baseType: !3826, size: 128, offset: 1408)
!3826 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !577, file: !578, line: 109, size: 128, elements: !3827)
!3827 = !{!3828, !3829, !3830}
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3826, file: !578, line: 110, baseType: !1048, size: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3826, file: !578, line: 111, baseType: !592, size: 128)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3826, file: !578, line: 112, baseType: !1022, size: 128, align: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !570, file: !20, line: 1968, baseType: !3832, size: 64, offset: 64)
!3832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3833, size: 64)
!3833 = !DISubroutineType(types: !3834)
!3834 = !{!379, !576, !541, !3835}
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3837, line: 10, size: 128, elements: !3838)
!3837 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3838 = !{!3839, !3840}
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3836, file: !3837, line: 11, baseType: !845, size: 64)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3836, file: !3837, line: 12, baseType: !345, size: 64, offset: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !570, file: !20, line: 1969, baseType: !3842, size: 64, offset: 128)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!115, !3801, !541, !115}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !570, file: !20, line: 1970, baseType: !3846, size: 64, offset: 192)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!564, !541, !115, !882}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !570, file: !20, line: 1972, baseType: !3850, size: 64, offset: 256)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!115, !576, !461, !115}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !570, file: !20, line: 1974, baseType: !3854, size: 64, offset: 320)
!3854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3855, size: 64)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!115, !3801, !541, !576, !503, !882}
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !570, file: !20, line: 1976, baseType: !3858, size: 64, offset: 384)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = !DISubroutineType(types: !3860)
!3860 = !{!115, !576, !541, !576}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !570, file: !20, line: 1977, baseType: !3862, size: 64, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!115, !541, !576}
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !570, file: !20, line: 1978, baseType: !3866, size: 64, offset: 512)
!3866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3867, size: 64)
!3867 = !DISubroutineType(types: !3868)
!3868 = !{!115, !3801, !541, !576, !379}
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !570, file: !20, line: 1980, baseType: !3870, size: 64, offset: 576)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!115, !3801, !541, !576, !503}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !570, file: !20, line: 1982, baseType: !3862, size: 64, offset: 640)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !570, file: !20, line: 1983, baseType: !3875, size: 64, offset: 704)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!115, !3801, !541, !576, !503, !697}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !570, file: !20, line: 1985, baseType: !3879, size: 64, offset: 768)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!115, !3801, !541, !576, !541, !576, !13}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !570, file: !20, line: 1987, baseType: !3883, size: 64, offset: 832)
!3883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3884, size: 64)
!3884 = !DISubroutineType(types: !3885)
!3885 = !{!115, !3801, !576, !3886}
!3886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3887, size: 64)
!3887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !20, line: 226, size: 640, elements: !3888)
!3888 = !{!3889, !3890, !3891, !3901, !3910, !3911, !3916, !3917, !3918}
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3887, file: !20, line: 227, baseType: !13, size: 32)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3887, file: !20, line: 228, baseType: !503, size: 16, offset: 32)
!3891 = !DIDerivedType(tag: DW_TAG_member, scope: !3887, file: !20, line: 241, baseType: !3892, size: 32, offset: 64)
!3892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !20, line: 241, size: 32, elements: !3893)
!3893 = !{!3894, !3895}
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3892, file: !20, line: 242, baseType: !547, size: 32)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3892, file: !20, line: 243, baseType: !3896, size: 32)
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3897, line: 16, baseType: !3898)
!3897 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3897, line: 14, size: 32, elements: !3899)
!3899 = !{!3900}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3898, file: !3897, line: 15, baseType: !552, size: 32)
!3901 = !DIDerivedType(tag: DW_TAG_member, scope: !3887, file: !20, line: 245, baseType: !3902, size: 32, offset: 96)
!3902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3887, file: !20, line: 245, size: 32, elements: !3903)
!3903 = !{!3904, !3905}
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3902, file: !20, line: 246, baseType: !556, size: 32)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3902, file: !20, line: 247, baseType: !3906, size: 32)
!3906 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3897, line: 20, baseType: !3907)
!3907 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3897, line: 18, size: 32, elements: !3908)
!3908 = !{!3909}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3907, file: !3897, line: 19, baseType: !560, size: 32)
!3910 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3887, file: !20, line: 249, baseType: !702, size: 64, offset: 128)
!3911 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3887, file: !20, line: 250, baseType: !3912, size: 128, offset: 192)
!3912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !2017, line: 13, size: 128, elements: !3913)
!3913 = !{!3914, !3915}
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3912, file: !2017, line: 14, baseType: !2016, size: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3912, file: !2017, line: 15, baseType: !497, size: 64, offset: 64)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3887, file: !20, line: 251, baseType: !3912, size: 128, offset: 320)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3887, file: !20, line: 252, baseType: !3912, size: 128, offset: 448)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3887, file: !20, line: 259, baseType: !1685, size: 64, offset: 576)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !570, file: !20, line: 1988, baseType: !3920, size: 64, offset: 896)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DISubroutineType(types: !3922)
!3922 = !{!115, !3801, !3553, !3923, !610, !13}
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3925, line: 22, size: 1280, elements: !3926)
!3925 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3932, !3933, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3924, file: !3925, line: 23, baseType: !610, size: 32)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3924, file: !3925, line: 24, baseType: !503, size: 16, offset: 32)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3924, file: !3925, line: 25, baseType: !13, size: 32, offset: 64)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3924, file: !3925, line: 26, baseType: !2024, size: 32, offset: 96)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3924, file: !3925, line: 27, baseType: !614, size: 64, offset: 128)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3924, file: !3925, line: 28, baseType: !614, size: 64, offset: 192)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3924, file: !3925, line: 41, baseType: !614, size: 64, offset: 256)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3924, file: !3925, line: 42, baseType: !697, size: 32, offset: 320)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3924, file: !3925, line: 43, baseType: !697, size: 32, offset: 352)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3924, file: !3925, line: 44, baseType: !547, size: 32, offset: 384)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3924, file: !3925, line: 45, baseType: !556, size: 32, offset: 416)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3924, file: !3925, line: 46, baseType: !702, size: 64, offset: 448)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3924, file: !3925, line: 47, baseType: !3912, size: 128, offset: 512)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3924, file: !3925, line: 48, baseType: !3912, size: 128, offset: 640)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3924, file: !3925, line: 49, baseType: !3912, size: 128, offset: 768)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3924, file: !3925, line: 50, baseType: !3912, size: 128, offset: 896)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3924, file: !3925, line: 51, baseType: !614, size: 64, offset: 1024)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3924, file: !3925, line: 52, baseType: !614, size: 64, offset: 1088)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3924, file: !3925, line: 53, baseType: !610, size: 32, offset: 1152)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3924, file: !3925, line: 54, baseType: !610, size: 32, offset: 1184)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3924, file: !3925, line: 55, baseType: !614, size: 64, offset: 1216)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !570, file: !20, line: 1990, baseType: !3949, size: 64, offset: 960)
!3949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3950, size: 64)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!493, !576, !461, !508}
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !570, file: !20, line: 1991, baseType: !3953, size: 64, offset: 1024)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!115, !541, !3956, !614, !614}
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !20, line: 55, flags: DIFlagFwdDecl)
!3958 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !570, file: !20, line: 1993, baseType: !3959, size: 64, offset: 1088)
!3959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3960, size: 64)
!3960 = !DISubroutineType(types: !3961)
!3961 = !{!115, !541, !115}
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !570, file: !20, line: 1994, baseType: !3963, size: 64, offset: 1152)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!115, !541, !576, !1685, !13, !503}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !570, file: !20, line: 1997, baseType: !3967, size: 64, offset: 1216)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!115, !3801, !541, !1685, !503}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !570, file: !20, line: 1999, baseType: !3971, size: 64, offset: 1280)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!564, !3801, !576, !115}
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !570, file: !20, line: 2001, baseType: !3975, size: 64, offset: 1344)
!3975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3976, size: 64)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!115, !3801, !576, !564, !115}
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !570, file: !20, line: 2003, baseType: !3979, size: 64, offset: 1408)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!115, !3801, !576, !3982}
!3982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3983, size: 64)
!3983 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !20, line: 76, flags: DIFlagFwdDecl)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !570, file: !20, line: 2005, baseType: !3985, size: 64, offset: 1472)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = !DISubroutineType(types: !3987)
!3987 = !{!115, !576, !3982}
!3988 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !570, file: !20, line: 2006, baseType: !3989, size: 64, offset: 1536)
!3989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3990, size: 64)
!3990 = !DISubroutineType(types: !3991)
!3991 = !{!3992, !541}
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !20, line: 3192, size: 192, elements: !3994)
!3994 = !{!3995, !3996}
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3993, file: !20, line: 3193, baseType: !1359, size: 128)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3993, file: !20, line: 3194, baseType: !610, size: 32, offset: 128)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !542, file: !20, line: 655, baseType: !692, size: 64, offset: 448)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !542, file: !20, line: 656, baseType: !537, size: 64, offset: 512)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !542, file: !20, line: 659, baseType: !345, size: 64, offset: 576)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !542, file: !20, line: 663, baseType: !511, size: 64, offset: 640)
!4001 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !20, line: 671, baseType: !4002, size: 32, offset: 704)
!4002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !20, line: 671, size: 32, elements: !4003)
!4003 = !{!4004, !4006}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !4002, file: !20, line: 672, baseType: !4005, size: 32)
!4005 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !4002, file: !20, line: 673, baseType: !13, size: 32)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !542, file: !20, line: 675, baseType: !697, size: 32, offset: 736)
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !542, file: !20, line: 676, baseType: !702, size: 64, offset: 768)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !542, file: !20, line: 677, baseType: !3912, size: 128, offset: 832)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !542, file: !20, line: 678, baseType: !3912, size: 128, offset: 960)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !542, file: !20, line: 679, baseType: !3912, size: 128, offset: 1088)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !542, file: !20, line: 680, baseType: !395, size: 32, offset: 1216)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !542, file: !20, line: 681, baseType: !431, size: 16, offset: 1248)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !542, file: !20, line: 682, baseType: !419, size: 8, offset: 1264)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !542, file: !20, line: 683, baseType: !419, size: 8, offset: 1272)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !542, file: !20, line: 684, baseType: !3626, size: 64, offset: 1280)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !542, file: !20, line: 691, baseType: !511, size: 64, offset: 1344)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !542, file: !20, line: 692, baseType: !1713, size: 320, offset: 1408)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !542, file: !20, line: 694, baseType: !511, size: 64, offset: 1728)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !542, file: !20, line: 695, baseType: !511, size: 64, offset: 1792)
!4021 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !542, file: !20, line: 697, baseType: !1048, size: 128, offset: 1856)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !542, file: !20, line: 698, baseType: !382, size: 128, offset: 1984)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !542, file: !20, line: 707, baseType: !382, size: 128, offset: 2112)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !542, file: !20, line: 708, baseType: !382, size: 128, offset: 2240)
!4025 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !20, line: 709, baseType: !4026, size: 128, offset: 2368)
!4026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !20, line: 709, size: 128, elements: !4027)
!4027 = !{!4028, !4029}
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !4026, file: !20, line: 710, baseType: !1172, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !4026, file: !20, line: 711, baseType: !1022, size: 128, align: 64)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !542, file: !20, line: 713, baseType: !808, size: 64, offset: 2496)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !542, file: !20, line: 714, baseType: !808, size: 64, offset: 2560)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !542, file: !20, line: 715, baseType: !366, size: 32, offset: 2624)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !542, file: !20, line: 716, baseType: !366, size: 32, offset: 2656)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !542, file: !20, line: 717, baseType: !366, size: 32, offset: 2688)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !542, file: !20, line: 719, baseType: !366, size: 32, offset: 2720)
!4036 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !20, line: 721, baseType: !4037, size: 64, offset: 2752)
!4037 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !20, line: 721, size: 64, elements: !4038)
!4038 = !{!4039, !4040}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !4037, file: !20, line: 722, baseType: !3260, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !4037, file: !20, line: 723, baseType: !1195, size: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !542, file: !20, line: 725, baseType: !4042, size: 64, offset: 2816)
!4042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4043, size: 64)
!4043 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !20, line: 725, flags: DIFlagFwdDecl)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !542, file: !20, line: 726, baseType: !538, size: 1536, align: 64, offset: 2880)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !542, file: !20, line: 727, baseType: !382, size: 128, offset: 4416)
!4046 = !DIDerivedType(tag: DW_TAG_member, scope: !542, file: !20, line: 728, baseType: !4047, size: 64, offset: 4544)
!4047 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !542, file: !20, line: 728, size: 64, elements: !4048)
!4048 = !{!4049, !4050, !4053, !4054}
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4047, file: !20, line: 729, baseType: !2592, size: 64)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4047, file: !20, line: 730, baseType: !4051, size: 64)
!4051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4052, size: 64)
!4052 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !20, line: 730, flags: DIFlagFwdDecl)
!4053 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4047, file: !20, line: 731, baseType: !461, size: 64)
!4054 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4047, file: !20, line: 732, baseType: !13, size: 32)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !542, file: !20, line: 735, baseType: !611, size: 32, offset: 4608)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !542, file: !20, line: 738, baseType: !611, size: 32, offset: 4640)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !542, file: !20, line: 739, baseType: !3738, size: 64, offset: 4672)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !542, file: !20, line: 750, baseType: !345, size: 64, offset: 4736)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !538, file: !20, line: 474, baseType: !1359, size: 128, offset: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !538, file: !20, line: 475, baseType: !1713, size: 320, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !538, file: !20, line: 476, baseType: !346, size: 32, offset: 512)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !538, file: !20, line: 477, baseType: !366, size: 32, offset: 544)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !538, file: !20, line: 482, baseType: !1541, size: 128, offset: 576)
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !538, file: !20, line: 483, baseType: !511, size: 64, offset: 704)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !538, file: !20, line: 484, baseType: !511, size: 64, offset: 768)
!4066 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !538, file: !20, line: 485, baseType: !4067, size: 64, offset: 832)
!4067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4068, size: 64)
!4068 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4069)
!4069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !20, line: 404, size: 1280, elements: !4070)
!4070 = !{!4071, !4075, !4145, !4149, !4153, !4159, !4164, !4168, !4173, !4177, !4181, !4185, !4186, !4190, !4194, !4198, !4203, !4207, !4214, !4215}
!4071 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !4069, file: !20, line: 405, baseType: !4072, size: 64)
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!115, !2598, !1207}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !4069, file: !20, line: 406, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!115, !1685, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !44, line: 293, size: 1536, elements: !4081)
!4081 = !{!4082, !4112, !4126}
!4082 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !44, line: 295, baseType: !4083, size: 512)
!4083 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !44, line: 295, size: 512, elements: !4084)
!4084 = !{!4085, !4111}
!4085 = !DIDerivedType(tag: DW_TAG_member, scope: !4083, file: !44, line: 296, baseType: !4086, size: 448)
!4086 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4083, file: !44, line: 296, size: 448, elements: !4087)
!4087 = !{!4088, !4089, !4098, !4099, !4100, !4109, !4110}
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4086, file: !44, line: 298, baseType: !511, size: 64)
!4089 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !44, line: 299, baseType: !4090, size: 128, offset: 64)
!4090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4086, file: !44, line: 299, size: 128, elements: !4091)
!4091 = !{!4092, !4093}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !4090, file: !44, line: 300, baseType: !382, size: 128)
!4093 = !DIDerivedType(tag: DW_TAG_member, scope: !4090, file: !44, line: 302, baseType: !4094, size: 128)
!4094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4090, file: !44, line: 302, size: 128, elements: !4095)
!4095 = !{!4096, !4097}
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !4094, file: !44, line: 303, baseType: !345, size: 64)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !4094, file: !44, line: 305, baseType: !13, size: 32, offset: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !4086, file: !44, line: 310, baseType: !537, size: 64, offset: 192)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4086, file: !44, line: 311, baseType: !511, size: 64, offset: 256)
!4100 = !DIDerivedType(tag: DW_TAG_member, scope: !4086, file: !44, line: 312, baseType: !4101, size: 64, offset: 320)
!4101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4086, file: !44, line: 312, size: 64, elements: !4102)
!4102 = !{!4103, !4104}
!4103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !4101, file: !44, line: 313, baseType: !345, size: 64)
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !4101, file: !44, line: 314, baseType: !4105, size: 64)
!4105 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !44, line: 257, baseType: !4106)
!4106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !44, line: 255, size: 64, elements: !4107)
!4107 = !{!4108}
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4106, file: !44, line: 256, baseType: !511, size: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !4086, file: !44, line: 316, baseType: !366, size: 32, offset: 384)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !4086, file: !44, line: 317, baseType: !366, size: 32, offset: 416)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !4083, file: !44, line: 323, baseType: !2599, size: 512, align: 128)
!4112 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !44, line: 325, baseType: !4113, size: 512, offset: 512)
!4113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !44, line: 325, size: 512, elements: !4114)
!4114 = !{!4115, !4125}
!4115 = !DIDerivedType(tag: DW_TAG_member, scope: !4113, file: !44, line: 326, baseType: !4116, size: 320)
!4116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4113, file: !44, line: 326, size: 320, elements: !4117)
!4117 = !{!4118, !4119, !4120, !4121, !4122, !4123, !4124}
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !4116, file: !44, line: 327, baseType: !511, size: 64)
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !4116, file: !44, line: 328, baseType: !511, size: 64, offset: 64)
!4120 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !4116, file: !44, line: 329, baseType: !511, size: 64, offset: 128)
!4121 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !4116, file: !44, line: 331, baseType: !366, size: 32, offset: 192)
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !4116, file: !44, line: 332, baseType: !366, size: 32, offset: 224)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !4116, file: !44, line: 333, baseType: !366, size: 32, offset: 256)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !4116, file: !44, line: 335, baseType: !13, size: 32, offset: 288)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !4113, file: !44, line: 339, baseType: !2599, size: 512, align: 128)
!4126 = !DIDerivedType(tag: DW_TAG_member, scope: !4080, file: !44, line: 341, baseType: !4127, size: 512, offset: 1024)
!4127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4080, file: !44, line: 341, size: 512, elements: !4128)
!4128 = !{!4129, !4138, !4144}
!4129 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !44, line: 342, baseType: !4130, size: 384)
!4130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4127, file: !44, line: 342, size: 384, elements: !4131)
!4131 = !{!4132, !4133, !4134, !4135, !4136, !4137}
!4132 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !4130, file: !44, line: 343, baseType: !511, size: 64)
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !4130, file: !44, line: 344, baseType: !511, size: 64, offset: 64)
!4134 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !4130, file: !44, line: 346, baseType: !345, size: 64, offset: 128)
!4135 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !4130, file: !44, line: 347, baseType: !345, size: 64, offset: 192)
!4136 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !4130, file: !44, line: 348, baseType: !345, size: 64, offset: 256)
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !4130, file: !44, line: 349, baseType: !345, size: 64, offset: 320)
!4138 = !DIDerivedType(tag: DW_TAG_member, scope: !4127, file: !44, line: 352, baseType: !4139, size: 256)
!4139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4127, file: !44, line: 352, size: 256, elements: !4140)
!4140 = !{!4141, !4142, !4143}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !4139, file: !44, line: 353, baseType: !511, size: 64)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !4139, file: !44, line: 354, baseType: !511, size: 64, offset: 64)
!4143 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !4139, file: !44, line: 356, baseType: !382, size: 128, offset: 128)
!4144 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !4127, file: !44, line: 359, baseType: !2599, size: 512, align: 128)
!4145 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !4069, file: !20, line: 409, baseType: !4146, size: 64, offset: 128)
!4146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4147, size: 64)
!4147 = !DISubroutineType(types: !4148)
!4148 = !{!115, !537, !1207}
!4149 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !4069, file: !20, line: 412, baseType: !4150, size: 64, offset: 192)
!4150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4151, size: 64)
!4151 = !DISubroutineType(types: !4152)
!4152 = !{!882, !537, !4079}
!4153 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !4069, file: !20, line: 414, baseType: !4154, size: 64, offset: 256)
!4154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4155, size: 64)
!4155 = !DISubroutineType(types: !4156)
!4156 = !{null, !4157}
!4157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4158, size: 64)
!4158 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !20, line: 310, flags: DIFlagFwdDecl)
!4159 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !4069, file: !20, line: 416, baseType: !4160, size: 64, offset: 320)
!4160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4161, size: 64)
!4161 = !DISubroutineType(types: !4162)
!4162 = !{!115, !1685, !537, !702, !13, !4163, !3390}
!4163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2598, size: 64)
!4164 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !4069, file: !20, line: 419, baseType: !4165, size: 64, offset: 384)
!4165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4166, size: 64)
!4166 = !DISubroutineType(types: !4167)
!4167 = !{!115, !1685, !537, !702, !13, !13, !2598, !345}
!4168 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !4069, file: !20, line: 424, baseType: !4169, size: 64, offset: 448)
!4169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4170, size: 64)
!4170 = !DISubroutineType(types: !4171)
!4171 = !{!4172, !537, !4172}
!4172 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !347, line: 131, baseType: !614)
!4173 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !4069, file: !20, line: 425, baseType: !4174, size: 64, offset: 512)
!4174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4175, size: 64)
!4175 = !DISubroutineType(types: !4176)
!4176 = !{null, !4079, !508, !508}
!4177 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !4069, file: !20, line: 426, baseType: !4178, size: 64, offset: 576)
!4178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4179, size: 64)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!882, !4079, !346}
!4181 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !4069, file: !20, line: 427, baseType: !4182, size: 64, offset: 640)
!4182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4183, size: 64)
!4183 = !DISubroutineType(types: !4184)
!4184 = !{null, !4079}
!4185 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !4069, file: !20, line: 428, baseType: !3278, size: 64, offset: 704)
!4186 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !4069, file: !20, line: 433, baseType: !4187, size: 64, offset: 768)
!4187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4188, size: 64)
!4188 = !DISubroutineType(types: !4189)
!4189 = !{!115, !537, !4079, !4079, !80}
!4190 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !4069, file: !20, line: 435, baseType: !4191, size: 64, offset: 832)
!4191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4192, size: 64)
!4192 = !DISubroutineType(types: !4193)
!4193 = !{!115, !4079}
!4194 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !4069, file: !20, line: 436, baseType: !4195, size: 64, offset: 896)
!4195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4196, size: 64)
!4196 = !DISubroutineType(types: !4197)
!4197 = !{!882, !4079, !508, !508}
!4198 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !4069, file: !20, line: 438, baseType: !4199, size: 64, offset: 960)
!4199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4200, size: 64)
!4200 = !DISubroutineType(types: !4201)
!4201 = !{null, !4079, !4202, !4202}
!4202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!4203 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !4069, file: !20, line: 439, baseType: !4204, size: 64, offset: 1024)
!4204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4205, size: 64)
!4205 = !DISubroutineType(types: !4206)
!4206 = !{!115, !537, !2598}
!4207 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !4069, file: !20, line: 442, baseType: !4208, size: 64, offset: 1088)
!4208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4209, size: 64)
!4209 = !DISubroutineType(types: !4210)
!4210 = !{!115, !4211, !1685, !4213}
!4211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4212, size: 64)
!4212 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !20, line: 66, flags: DIFlagFwdDecl)
!4213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4172, size: 64)
!4214 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !4069, file: !20, line: 444, baseType: !3382, size: 64, offset: 1152)
!4215 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !4069, file: !20, line: 445, baseType: !4216, size: 64, offset: 1216)
!4216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4217, size: 64)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!115, !3281, !3303}
!4219 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !538, file: !20, line: 486, baseType: !511, size: 64, offset: 896)
!4220 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !538, file: !20, line: 487, baseType: !1713, size: 320, offset: 960)
!4221 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !538, file: !20, line: 488, baseType: !3425, size: 32, offset: 1280)
!4222 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !538, file: !20, line: 489, baseType: !395, size: 32, offset: 1312)
!4223 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !538, file: !20, line: 490, baseType: !382, size: 128, offset: 1344)
!4224 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !538, file: !20, line: 491, baseType: !345, size: 64, offset: 1472)
!4225 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !528, file: !487, line: 180, baseType: !4226, size: 64, offset: 320)
!4226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4227, size: 64)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!493, !1685, !388, !527, !461, !702, !508}
!4229 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !528, file: !487, line: 182, baseType: !4226, size: 64, offset: 384)
!4230 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !528, file: !487, line: 184, baseType: !4231, size: 64, offset: 448)
!4231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4232, size: 64)
!4232 = !DISubroutineType(types: !4233)
!4233 = !{!115, !1685, !388, !527, !2708}
!4234 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !516, file: !487, line: 90, baseType: !4235, size: 64, offset: 192)
!4235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!4236 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !516, file: !487, line: 91, baseType: !4237, size: 64, offset: 256)
!4237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!4238 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !477, file: !376, line: 120, baseType: !4239, size: 64, offset: 192)
!4239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4240, size: 64)
!4240 = !DISubroutineType(types: !4241)
!4241 = !{!4242, !444}
!4242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4243, size: 64)
!4243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4244)
!4244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !88, line: 39, size: 384, elements: !4245)
!4245 = !{!4246, !4247, !4251, !4255, !4261, !4265}
!4246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4244, file: !88, line: 40, baseType: !87, size: 32)
!4247 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !4244, file: !88, line: 41, baseType: !4248, size: 64, offset: 64)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4249, size: 64)
!4249 = !DISubroutineType(types: !4250)
!4250 = !{!882}
!4251 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !4244, file: !88, line: 42, baseType: !4252, size: 64, offset: 128)
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4253, size: 64)
!4253 = !DISubroutineType(types: !4254)
!4254 = !{!345}
!4255 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !4244, file: !88, line: 43, baseType: !4256, size: 64, offset: 192)
!4256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4257, size: 64)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!1790, !4259}
!4259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4260, size: 64)
!4260 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !88, line: 19, flags: DIFlagFwdDecl)
!4261 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !4244, file: !88, line: 44, baseType: !4262, size: 64, offset: 256)
!4262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4263, size: 64)
!4263 = !DISubroutineType(types: !4264)
!4264 = !{!1790}
!4265 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !4244, file: !88, line: 45, baseType: !845, size: 64, offset: 320)
!4266 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !477, file: !376, line: 121, baseType: !4267, size: 64, offset: 256)
!4267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4268, size: 64)
!4268 = !DISubroutineType(types: !4269)
!4269 = !{!1790, !444}
!4270 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !477, file: !376, line: 122, baseType: !4271, size: 64, offset: 320)
!4271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4272, size: 64)
!4272 = !DISubroutineType(types: !4273)
!4273 = !{null, !444, !4274, !4275}
!4274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!4275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!4276 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !375, file: !376, line: 70, baseType: !4277, size: 64, offset: 384)
!4277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4278, size: 64)
!4278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !717, line: 190, size: 1152, elements: !4279)
!4279 = !{!4280, !4281, !4282, !4283, !4284, !4285, !4286, !4287, !4359, !4360, !4361, !4362, !4363, !4366}
!4280 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4278, file: !717, line: 191, baseType: !366, size: 32)
!4281 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4278, file: !717, line: 192, baseType: !366, size: 32, offset: 32)
!4282 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4278, file: !717, line: 202, baseType: !4277, size: 64, offset: 64)
!4283 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4278, file: !717, line: 203, baseType: !379, size: 64, offset: 128)
!4284 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !4278, file: !717, line: 205, baseType: !914, size: 192, align: 64, offset: 192)
!4285 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !4278, file: !717, line: 207, baseType: !1790, size: 64, offset: 384)
!4286 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !4278, file: !717, line: 208, baseType: !13, size: 32, offset: 448)
!4287 = !DIDerivedType(tag: DW_TAG_member, scope: !4278, file: !717, line: 209, baseType: !4288, size: 256, offset: 512)
!4288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4278, file: !717, line: 209, size: 256, elements: !4289)
!4289 = !{!4290, !4299, !4303}
!4290 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4288, file: !717, line: 210, baseType: !4291, size: 256)
!4291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !717, line: 153, size: 256, elements: !4292)
!4292 = !{!4293, !4294, !4295, !4298}
!4293 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4291, file: !717, line: 154, baseType: !511, size: 64)
!4294 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4291, file: !717, line: 156, baseType: !1544, size: 64, offset: 64)
!4295 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4291, file: !717, line: 162, baseType: !4296, size: 64, offset: 128)
!4296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4297 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !717, line: 162, flags: DIFlagFwdDecl)
!4298 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4291, file: !717, line: 167, baseType: !511, size: 64, offset: 192)
!4299 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4288, file: !717, line: 211, baseType: !4300, size: 64)
!4300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !717, line: 170, size: 64, elements: !4301)
!4301 = !{!4302}
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4300, file: !717, line: 171, baseType: !4277, size: 64)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4288, file: !717, line: 212, baseType: !4304, size: 256)
!4304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !717, line: 174, size: 256, elements: !4305)
!4305 = !{!4306, !4354, !4357, !4358}
!4306 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4304, file: !717, line: 175, baseType: !4307, size: 64)
!4307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4308, size: 64)
!4308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4309)
!4309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !717, line: 271, size: 768, elements: !4310)
!4310 = !{!4311, !4331, !4335, !4336, !4337, !4338, !4339, !4343, !4344, !4345, !4346, !4350}
!4311 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4309, file: !717, line: 276, baseType: !4312, size: 64)
!4312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4313, size: 64)
!4313 = !DISubroutineType(types: !4314)
!4314 = !{!115, !4315}
!4315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4316, size: 64)
!4316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !717, line: 251, size: 1216, elements: !4317)
!4317 = !{!4318, !4319, !4320, !4321, !4322, !4323, !4324, !4325, !4326, !4327, !4328, !4329, !4330}
!4318 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4316, file: !717, line: 253, baseType: !4277, size: 64)
!4319 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4316, file: !717, line: 254, baseType: !1685, size: 64, offset: 64)
!4320 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4316, file: !717, line: 255, baseType: !1244, size: 64, offset: 128)
!4321 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4316, file: !717, line: 256, baseType: !345, size: 64, offset: 192)
!4322 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4316, file: !717, line: 259, baseType: !802, size: 256, offset: 256)
!4323 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4316, file: !717, line: 260, baseType: !802, size: 256, offset: 512)
!4324 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4316, file: !717, line: 261, baseType: !115, size: 32, offset: 768)
!4325 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4316, file: !717, line: 262, baseType: !382, size: 128, offset: 832)
!4326 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4316, file: !717, line: 263, baseType: !461, size: 64, offset: 960)
!4327 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4316, file: !717, line: 265, baseType: !508, size: 64, offset: 1024)
!4328 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4316, file: !717, line: 266, baseType: !882, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4329 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4316, file: !717, line: 267, baseType: !882, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4316, file: !717, line: 268, baseType: !2751, size: 64, offset: 1152)
!4331 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4309, file: !717, line: 277, baseType: !4332, size: 64, offset: 64)
!4332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4333, size: 64)
!4333 = !DISubroutineType(types: !4334)
!4334 = !{null, !4315}
!4335 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4309, file: !717, line: 290, baseType: !1275, size: 64, offset: 128)
!4336 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4309, file: !717, line: 292, baseType: !1262, size: 64, offset: 192)
!4337 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4309, file: !717, line: 293, baseType: !1271, size: 64, offset: 256)
!4338 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4309, file: !717, line: 294, baseType: !1267, size: 64, offset: 320)
!4339 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4309, file: !717, line: 296, baseType: !4340, size: 64, offset: 384)
!4340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4341, size: 64)
!4341 = !DISubroutineType(types: !4342)
!4342 = !{!493, !4315, !461, !508, !702}
!4343 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4309, file: !717, line: 306, baseType: !508, size: 64, offset: 448)
!4344 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4309, file: !717, line: 313, baseType: !882, size: 8, offset: 512)
!4345 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4309, file: !717, line: 314, baseType: !4340, size: 64, offset: 576)
!4346 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4309, file: !717, line: 317, baseType: !4347, size: 64, offset: 640)
!4347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4348, size: 64)
!4348 = !DISubroutineType(types: !4349)
!4349 = !{!3329, !4315, !3331}
!4350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4309, file: !717, line: 320, baseType: !4351, size: 64, offset: 704)
!4351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4352, size: 64)
!4352 = !DISubroutineType(types: !4353)
!4353 = !{!115, !4315, !2708}
!4354 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4304, file: !717, line: 176, baseType: !4355, size: 64, offset: 64)
!4355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4356, size: 64)
!4356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !717, line: 35, flags: DIFlagFwdDecl)
!4357 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4304, file: !717, line: 177, baseType: !702, size: 64, offset: 128)
!4358 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4304, file: !717, line: 178, baseType: !4277, size: 64, offset: 192)
!4359 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4278, file: !717, line: 215, baseType: !345, size: 64, offset: 768)
!4360 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4278, file: !717, line: 221, baseType: !614, size: 64, offset: 832)
!4361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4278, file: !717, line: 223, baseType: !431, size: 16, offset: 896)
!4362 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4278, file: !717, line: 224, baseType: !503, size: 16, offset: 912)
!4363 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !4278, file: !717, line: 225, baseType: !4364, size: 64, offset: 960)
!4364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4365, size: 64)
!4365 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !717, line: 36, flags: DIFlagFwdDecl)
!4366 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !4278, file: !717, line: 227, baseType: !1022, size: 128, align: 64, offset: 1024)
!4367 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !375, file: !376, line: 71, baseType: !357, size: 32, offset: 448)
!4368 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !375, file: !376, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4369 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !375, file: !376, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4370 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !375, file: !376, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4371 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !375, file: !376, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4372 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !375, file: !376, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4373 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !372, file: !100, line: 707, baseType: !371, size: 64, offset: 512)
!4374 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !372, file: !100, line: 709, baseType: !4375, size: 64, offset: 576)
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !100, line: 37, flags: DIFlagFwdDecl)
!4377 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !372, file: !100, line: 711, baseType: !379, size: 64, offset: 640)
!4378 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !100, line: 712, baseType: !4379, size: 64, offset: 704)
!4379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4380, size: 64)
!4380 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4381)
!4381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !100, line: 89, size: 384, elements: !4382)
!4382 = !{!4383, !4384, !4385, !4391, !4396, !4400}
!4383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4381, file: !100, line: 90, baseType: !379, size: 64)
!4384 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4381, file: !100, line: 91, baseType: !513, size: 64, offset: 64)
!4385 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4381, file: !100, line: 92, baseType: !4386, size: 64, offset: 128)
!4386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4387, size: 64)
!4387 = !DISubroutineType(types: !4388)
!4388 = !{!115, !4389, !456}
!4389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4390, size: 64)
!4390 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!4391 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4381, file: !100, line: 93, baseType: !4392, size: 64, offset: 192)
!4392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4393, size: 64)
!4393 = !DISubroutineType(types: !4394)
!4394 = !{!461, !4389, !4395, !4274, !4275}
!4395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!4396 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4381, file: !100, line: 95, baseType: !4397, size: 64, offset: 256)
!4397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4398, size: 64)
!4398 = !DISubroutineType(types: !4399)
!4399 = !{null, !371}
!4400 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4381, file: !100, line: 97, baseType: !4401, size: 64, offset: 320)
!4401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4402, size: 64)
!4402 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4403)
!4403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !107, line: 286, size: 1472, elements: !4404)
!4404 = !{!4405, !4409, !4410, !4411, !4412, !4413, !4414, !4415, !4416, !4417, !4418, !4419, !4420, !4421, !4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430}
!4405 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4403, file: !107, line: 287, baseType: !4406, size: 64)
!4406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4407, size: 64)
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!115, !371}
!4409 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4403, file: !107, line: 288, baseType: !4397, size: 64, offset: 64)
!4410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4403, file: !107, line: 289, baseType: !4406, size: 64, offset: 128)
!4411 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4403, file: !107, line: 290, baseType: !4406, size: 64, offset: 192)
!4412 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4403, file: !107, line: 291, baseType: !4406, size: 64, offset: 256)
!4413 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4403, file: !107, line: 292, baseType: !4406, size: 64, offset: 320)
!4414 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4403, file: !107, line: 293, baseType: !4406, size: 64, offset: 384)
!4415 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4403, file: !107, line: 294, baseType: !4406, size: 64, offset: 448)
!4416 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4403, file: !107, line: 295, baseType: !4406, size: 64, offset: 512)
!4417 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4403, file: !107, line: 296, baseType: !4406, size: 64, offset: 576)
!4418 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4403, file: !107, line: 297, baseType: !4406, size: 64, offset: 640)
!4419 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4403, file: !107, line: 298, baseType: !4406, size: 64, offset: 704)
!4420 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4403, file: !107, line: 299, baseType: !4406, size: 64, offset: 768)
!4421 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4403, file: !107, line: 300, baseType: !4406, size: 64, offset: 832)
!4422 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4403, file: !107, line: 301, baseType: !4406, size: 64, offset: 896)
!4423 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4403, file: !107, line: 302, baseType: !4406, size: 64, offset: 960)
!4424 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4403, file: !107, line: 303, baseType: !4406, size: 64, offset: 1024)
!4425 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4403, file: !107, line: 304, baseType: !4406, size: 64, offset: 1088)
!4426 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4403, file: !107, line: 305, baseType: !4406, size: 64, offset: 1152)
!4427 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4403, file: !107, line: 306, baseType: !4406, size: 64, offset: 1216)
!4428 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4403, file: !107, line: 307, baseType: !4406, size: 64, offset: 1280)
!4429 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4403, file: !107, line: 308, baseType: !4406, size: 64, offset: 1344)
!4430 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4403, file: !107, line: 309, baseType: !4406, size: 64, offset: 1408)
!4431 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !372, file: !100, line: 714, baseType: !4432, size: 64, offset: 768)
!4432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4433, size: 64)
!4433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4434)
!4434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4435, line: 80, size: 1344, elements: !4436)
!4435 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4436 = !{!4437, !4438, !4439, !4440, !4441, !4442, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495, !4496, !4500}
!4437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4434, file: !4435, line: 81, baseType: !379, size: 64)
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4434, file: !4435, line: 82, baseType: !379, size: 64, offset: 64)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4434, file: !4435, line: 83, baseType: !513, size: 64, offset: 128)
!4440 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4434, file: !4435, line: 84, baseType: !513, size: 64, offset: 192)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4434, file: !4435, line: 85, baseType: !513, size: 64, offset: 256)
!4442 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4434, file: !4435, line: 87, baseType: !4443, size: 64, offset: 320)
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!115, !371, !4446}
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !94, line: 96, size: 1152, elements: !4448)
!4448 = !{!4449, !4450, !4451, !4452, !4453, !4454, !4455, !4459, !4463, !4464, !4465, !4466, !4467, !4475, !4476, !4477, !4478, !4479, !4480}
!4449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4447, file: !94, line: 97, baseType: !379, size: 64)
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4447, file: !94, line: 98, baseType: !4432, size: 64, offset: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4447, file: !94, line: 100, baseType: !731, size: 64, offset: 128)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4447, file: !94, line: 101, baseType: !379, size: 64, offset: 192)
!4453 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4447, file: !94, line: 103, baseType: !882, size: 8, offset: 256)
!4454 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4447, file: !94, line: 104, baseType: !93, size: 32, offset: 288)
!4455 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4447, file: !94, line: 106, baseType: !4456, size: 64, offset: 320)
!4456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4457, size: 64)
!4457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4458)
!4458 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !94, line: 106, flags: DIFlagFwdDecl)
!4459 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4447, file: !94, line: 107, baseType: !4460, size: 64, offset: 384)
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4461, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4462)
!4462 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !94, line: 107, flags: DIFlagFwdDecl)
!4463 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4447, file: !94, line: 109, baseType: !4406, size: 64, offset: 448)
!4464 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4447, file: !94, line: 110, baseType: !4397, size: 64, offset: 512)
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4447, file: !94, line: 111, baseType: !4406, size: 64, offset: 576)
!4466 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4447, file: !94, line: 112, baseType: !4397, size: 64, offset: 640)
!4467 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4447, file: !94, line: 113, baseType: !4468, size: 64, offset: 704)
!4468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4469, size: 64)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!115, !371, !4471}
!4471 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !107, line: 60, baseType: !4472)
!4472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !107, line: 58, size: 32, elements: !4473)
!4473 = !{!4474}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4472, file: !107, line: 59, baseType: !115, size: 32)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4447, file: !94, line: 114, baseType: !4406, size: 64, offset: 768)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4447, file: !94, line: 115, baseType: !513, size: 64, offset: 832)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4447, file: !94, line: 116, baseType: !513, size: 64, offset: 896)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4447, file: !94, line: 118, baseType: !4401, size: 64, offset: 960)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4447, file: !94, line: 119, baseType: !4397, size: 64, offset: 1024)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4447, file: !94, line: 121, baseType: !4481, size: 64, offset: 1088)
!4481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4482, size: 64)
!4482 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !94, line: 121, flags: DIFlagFwdDecl)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4434, file: !4435, line: 88, baseType: !4386, size: 64, offset: 384)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4434, file: !4435, line: 89, baseType: !4406, size: 64, offset: 448)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4434, file: !4435, line: 90, baseType: !4397, size: 64, offset: 512)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4434, file: !4435, line: 91, baseType: !4397, size: 64, offset: 576)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4434, file: !4435, line: 92, baseType: !4397, size: 64, offset: 640)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4434, file: !4435, line: 94, baseType: !4406, size: 64, offset: 704)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4434, file: !4435, line: 95, baseType: !4406, size: 64, offset: 768)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4434, file: !4435, line: 97, baseType: !4468, size: 64, offset: 832)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4434, file: !4435, line: 98, baseType: !4406, size: 64, offset: 896)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4434, file: !4435, line: 100, baseType: !4406, size: 64, offset: 960)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4434, file: !4435, line: 102, baseType: !4406, size: 64, offset: 1024)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4434, file: !4435, line: 103, baseType: !4397, size: 64, offset: 1088)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4434, file: !4435, line: 105, baseType: !4401, size: 64, offset: 1152)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4434, file: !4435, line: 107, baseType: !4497, size: 64, offset: 1216)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4435, line: 107, flags: DIFlagFwdDecl)
!4500 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4434, file: !4435, line: 109, baseType: !882, size: 8, offset: 1280)
!4501 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !372, file: !100, line: 715, baseType: !4446, size: 64, offset: 832)
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !372, file: !100, line: 717, baseType: !345, size: 64, offset: 896)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !372, file: !100, line: 719, baseType: !345, size: 64, offset: 960)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !372, file: !100, line: 721, baseType: !802, size: 256, offset: 1024)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !372, file: !100, line: 725, baseType: !4506, size: 448, offset: 1280)
!4506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !100, line: 517, size: 448, elements: !4507)
!4507 = !{!4508, !4509, !4510, !4511}
!4508 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4506, file: !100, line: 518, baseType: !382, size: 128)
!4509 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4506, file: !100, line: 519, baseType: !382, size: 128, offset: 128)
!4510 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4506, file: !100, line: 520, baseType: !382, size: 128, offset: 256)
!4511 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4506, file: !100, line: 521, baseType: !99, size: 32, offset: 384)
!4512 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !372, file: !100, line: 726, baseType: !4513, size: 2496, offset: 1728)
!4513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !107, line: 663, size: 2496, elements: !4514)
!4514 = !{!4515, !4516, !4517, !4518, !4519, !4520, !4521, !4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4530, !4557, !4558, !4559, !4560, !4561, !4562, !4563, !4564, !4565, !4566, !4567, !4568, !4569, !4570, !4571, !4572, !4573, !4574, !4575, !4576, !4577, !4578, !4579, !4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4597, !4601}
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4513, file: !107, line: 664, baseType: !4471, size: 32)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4513, file: !107, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4513, file: !107, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4513, file: !107, line: 667, baseType: !882, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4513, file: !107, line: 668, baseType: !882, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4513, file: !107, line: 669, baseType: !882, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4521 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4513, file: !107, line: 670, baseType: !882, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4522 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4513, file: !107, line: 671, baseType: !882, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4523 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4513, file: !107, line: 672, baseType: !882, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4513, file: !107, line: 673, baseType: !882, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4525 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4513, file: !107, line: 674, baseType: !882, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4526 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4513, file: !107, line: 675, baseType: !610, size: 32, offset: 64)
!4527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4513, file: !107, line: 676, baseType: !395, size: 32, offset: 96)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4513, file: !107, line: 678, baseType: !382, size: 128, offset: 128)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4513, file: !107, line: 679, baseType: !751, size: 256, offset: 256)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4513, file: !107, line: 680, baseType: !4531, size: 64, offset: 512)
!4531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4532, size: 64)
!4532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4533, line: 43, size: 1536, elements: !4534)
!4533 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4534 = !{!4535, !4536, !4537, !4538, !4539, !4542, !4543, !4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556}
!4535 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4532, file: !4533, line: 44, baseType: !379, size: 64)
!4536 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4532, file: !4533, line: 45, baseType: !115, size: 32, offset: 64)
!4537 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4532, file: !4533, line: 46, baseType: !382, size: 128, offset: 128)
!4538 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4532, file: !4533, line: 47, baseType: !395, size: 32, offset: 256)
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4532, file: !4533, line: 48, baseType: !4540, size: 64, offset: 320)
!4540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4541, size: 64)
!4541 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !107, line: 629, flags: DIFlagFwdDecl)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4532, file: !4533, line: 49, baseType: !1044, size: 320, offset: 384)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4532, file: !4533, line: 50, baseType: !511, size: 64, offset: 704)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4532, file: !4533, line: 51, baseType: !1490, size: 64, offset: 768)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4532, file: !4533, line: 52, baseType: !1490, size: 64, offset: 832)
!4546 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4532, file: !4533, line: 53, baseType: !1490, size: 64, offset: 896)
!4547 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4532, file: !4533, line: 54, baseType: !1490, size: 64, offset: 960)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4532, file: !4533, line: 55, baseType: !1490, size: 64, offset: 1024)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4532, file: !4533, line: 56, baseType: !511, size: 64, offset: 1088)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4532, file: !4533, line: 57, baseType: !511, size: 64, offset: 1152)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4532, file: !4533, line: 58, baseType: !511, size: 64, offset: 1216)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4532, file: !4533, line: 59, baseType: !511, size: 64, offset: 1280)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4532, file: !4533, line: 60, baseType: !511, size: 64, offset: 1344)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4532, file: !4533, line: 61, baseType: !371, size: 64, offset: 1408)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4532, file: !4533, line: 62, baseType: !882, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4532, file: !4533, line: 63, baseType: !882, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4513, file: !107, line: 681, baseType: !882, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4513, file: !107, line: 682, baseType: !882, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4513, file: !107, line: 683, baseType: !882, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4513, file: !107, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4513, file: !107, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4562 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4513, file: !107, line: 690, baseType: !1482, size: 512, offset: 640)
!4563 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4513, file: !107, line: 691, baseType: !614, size: 64, offset: 1152)
!4564 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4513, file: !107, line: 692, baseType: !1062, size: 256, offset: 1216)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4513, file: !107, line: 693, baseType: !1337, size: 192, offset: 1472)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4513, file: !107, line: 694, baseType: !4540, size: 64, offset: 1664)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4513, file: !107, line: 695, baseType: !366, size: 32, offset: 1728)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4513, file: !107, line: 696, baseType: !366, size: 32, offset: 1760)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4513, file: !107, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4513, file: !107, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4571 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4513, file: !107, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4572 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4513, file: !107, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4513, file: !107, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4513, file: !107, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4513, file: !107, line: 703, baseType: !882, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4513, file: !107, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4513, file: !107, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4578 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4513, file: !107, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4579 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4513, file: !107, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4513, file: !107, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4513, file: !107, line: 709, baseType: !13, size: 32, offset: 1824)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4513, file: !107, line: 710, baseType: !106, size: 32, offset: 1856)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4513, file: !107, line: 711, baseType: !114, size: 32, offset: 1888)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4513, file: !107, line: 712, baseType: !114, size: 32, offset: 1920)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4513, file: !107, line: 713, baseType: !115, size: 32, offset: 1952)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4513, file: !107, line: 714, baseType: !115, size: 32, offset: 1984)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4513, file: !107, line: 715, baseType: !614, size: 64, offset: 2048)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4513, file: !107, line: 716, baseType: !614, size: 64, offset: 2112)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4513, file: !107, line: 717, baseType: !614, size: 64, offset: 2176)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4513, file: !107, line: 718, baseType: !614, size: 64, offset: 2240)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4513, file: !107, line: 720, baseType: !4592, size: 64, offset: 2304)
!4592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4593, size: 64)
!4593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !107, line: 632, size: 64, elements: !4594)
!4594 = !{!4595, !4596}
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4593, file: !107, line: 633, baseType: !395, size: 32)
!4596 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4593, file: !107, line: 634, baseType: !13, size: 32, offset: 32)
!4597 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4513, file: !107, line: 721, baseType: !4598, size: 64, offset: 2368)
!4598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4599, size: 64)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{null, !371, !798}
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4513, file: !107, line: 722, baseType: !4602, size: 64, offset: 2432)
!4602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4603, size: 64)
!4603 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !107, line: 722, flags: DIFlagFwdDecl)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !372, file: !100, line: 727, baseType: !4605, size: 64, offset: 4224)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !107, line: 742, size: 1792, elements: !4607)
!4607 = !{!4608, !4609, !4610, !4614, !4615, !4616}
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4606, file: !107, line: 743, baseType: !4403, size: 1472)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4606, file: !107, line: 744, baseType: !4406, size: 64, offset: 1472)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4606, file: !107, line: 745, baseType: !4611, size: 64, offset: 1536)
!4611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4612, size: 64)
!4612 = !DISubroutineType(types: !4613)
!4613 = !{null, !371, !882}
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4606, file: !107, line: 746, baseType: !4406, size: 64, offset: 1600)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4606, file: !107, line: 747, baseType: !4397, size: 64, offset: 1664)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4606, file: !107, line: 748, baseType: !4397, size: 64, offset: 1728)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !372, file: !100, line: 736, baseType: !4618, size: 128, offset: 4288)
!4618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !100, line: 529, size: 128, elements: !4619)
!4619 = !{!4620, !4624}
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4618, file: !100, line: 531, baseType: !4621, size: 64)
!4621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4622, size: 64)
!4622 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4623, line: 13, flags: DIFlagFwdDecl)
!4623 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4618, file: !100, line: 532, baseType: !4625, size: 64, offset: 64)
!4625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4626, size: 64)
!4626 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !100, line: 49, flags: DIFlagFwdDecl)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !372, file: !100, line: 738, baseType: !4628, size: 64, offset: 4416)
!4628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4629, size: 64)
!4629 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4630)
!4630 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !100, line: 738, flags: DIFlagFwdDecl)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !372, file: !100, line: 740, baseType: !4632, size: 64, offset: 4480)
!4632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !372, file: !100, line: 741, baseType: !614, size: 64, offset: 4544)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !372, file: !100, line: 746, baseType: !614, size: 64, offset: 4608)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !372, file: !100, line: 747, baseType: !4636, size: 64, offset: 4672)
!4636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4637, size: 64)
!4637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4638)
!4638 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !100, line: 747, flags: DIFlagFwdDecl)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !372, file: !100, line: 749, baseType: !4640, size: 64, offset: 4736)
!4640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4641, size: 64)
!4641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !100, line: 428, size: 128, elements: !4642)
!4642 = !{!4643, !4644, !4645}
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4641, file: !100, line: 433, baseType: !13, size: 32)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4641, file: !100, line: 434, baseType: !13, size: 32, offset: 32)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4641, file: !100, line: 435, baseType: !511, size: 64, offset: 64)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !372, file: !100, line: 751, baseType: !382, size: 128, offset: 4800)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !372, file: !100, line: 762, baseType: !4648, size: 64, offset: 4928)
!4648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4649, size: 64)
!4649 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !100, line: 762, flags: DIFlagFwdDecl)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !372, file: !100, line: 770, baseType: !4651, offset: 4992)
!4651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4652, line: 5, elements: !1091)
!4652 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !372, file: !100, line: 772, baseType: !4654, size: 64, offset: 4992)
!4654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4655, size: 64)
!4655 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4656, line: 18, flags: DIFlagFwdDecl)
!4656 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !372, file: !100, line: 773, baseType: !4658, size: 64, offset: 5056)
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4435, line: 22, flags: DIFlagFwdDecl)
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !372, file: !100, line: 776, baseType: !115, size: 32, offset: 5120)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !372, file: !100, line: 778, baseType: !697, size: 32, offset: 5152)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !372, file: !100, line: 779, baseType: !610, size: 32, offset: 5184)
!4663 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !372, file: !100, line: 781, baseType: !395, size: 32, offset: 5216)
!4664 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !372, file: !100, line: 782, baseType: !382, size: 128, offset: 5248)
!4665 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !372, file: !100, line: 784, baseType: !4666, size: 64, offset: 5376)
!4666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4667, size: 64)
!4667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4668)
!4668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4669, line: 52, size: 768, elements: !4670)
!4669 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4670 = !{!4671, !4672, !4673, !4674, !4675, !4679, !4683, !4684, !4685, !4686, !4690, !4694}
!4671 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4668, file: !4669, line: 53, baseType: !379, size: 64)
!4672 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4668, file: !4669, line: 55, baseType: !513, size: 64, offset: 64)
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4668, file: !4669, line: 56, baseType: !513, size: 64, offset: 128)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4668, file: !4669, line: 58, baseType: !4386, size: 64, offset: 192)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4668, file: !4669, line: 59, baseType: !4676, size: 64, offset: 256)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{!461, !4389, !4395}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4668, file: !4669, line: 61, baseType: !4680, size: 64, offset: 320)
!4680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4681, size: 64)
!4681 = !DISubroutineType(types: !4682)
!4682 = !{null, !4666}
!4683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4668, file: !4669, line: 62, baseType: !4397, size: 64, offset: 384)
!4684 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4668, file: !4669, line: 64, baseType: !4406, size: 64, offset: 448)
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4668, file: !4669, line: 66, baseType: !4242, size: 64, offset: 512)
!4686 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4668, file: !4669, line: 67, baseType: !4687, size: 64, offset: 576)
!4687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4688, size: 64)
!4688 = !DISubroutineType(types: !4689)
!4689 = !{!1790, !4389}
!4690 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4668, file: !4669, line: 69, baseType: !4691, size: 64, offset: 640)
!4691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4692, size: 64)
!4692 = !DISubroutineType(types: !4693)
!4693 = !{null, !4389, !4274, !4275}
!4694 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4668, file: !4669, line: 71, baseType: !4401, size: 64, offset: 704)
!4695 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !372, file: !100, line: 785, baseType: !513, size: 64, offset: 5440)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !372, file: !100, line: 787, baseType: !4397, size: 64, offset: 5504)
!4697 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !372, file: !100, line: 788, baseType: !4698, size: 64, offset: 5568)
!4698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4699, size: 64)
!4699 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !100, line: 46, flags: DIFlagFwdDecl)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !372, file: !100, line: 789, baseType: !4701, size: 64, offset: 5632)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !100, line: 48, flags: DIFlagFwdDecl)
!4703 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !372, file: !100, line: 791, baseType: !4704, size: 64, offset: 5696)
!4704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4705, size: 64)
!4705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !100, line: 597, size: 128, elements: !4706)
!4706 = !{!4707, !4708, !4709, !4710, !4711}
!4707 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4705, file: !100, line: 598, baseType: !122, size: 32)
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4705, file: !100, line: 599, baseType: !131, size: 32, offset: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4705, file: !100, line: 600, baseType: !136, size: 32, offset: 64)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4705, file: !100, line: 601, baseType: !882, size: 8, offset: 96)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4705, file: !100, line: 602, baseType: !882, size: 8, offset: 104)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !372, file: !100, line: 793, baseType: !141, size: 32, offset: 5760)
!4713 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !372, file: !100, line: 795, baseType: !882, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4714 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !372, file: !100, line: 796, baseType: !882, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !372, file: !100, line: 797, baseType: !882, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4716 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !372, file: !100, line: 798, baseType: !882, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4717 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !372, file: !100, line: 799, baseType: !882, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "managed", scope: !353, file: !305, line: 73, baseType: !4719, size: 256, offset: 128)
!4719 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !353, file: !305, line: 66, size: 256, elements: !4720)
!4720 = !{!4721, !4722, !4723}
!4721 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !4719, file: !305, line: 68, baseType: !382, size: 128)
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "final_kfree", scope: !4719, file: !305, line: 70, baseType: !345, size: 64, offset: 128)
!4723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4719, file: !305, line: 72, baseType: !395, size: 32, offset: 192)
!4724 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !353, file: !305, line: 76, baseType: !4725, size: 64, offset: 384)
!4725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4726, size: 64)
!4726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4727)
!4727 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_driver", file: !4728, line: 42, flags: DIFlagFwdDecl)
!4728 = !DIFile(filename: "./include/drm/drm_legacy.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0a48cbf735602b48f7f8b8e0cbee53a7")
!4729 = !DIDerivedType(tag: DW_TAG_member, name: "dev_private", scope: !353, file: !305, line: 88, baseType: !345, size: 64, offset: 448)
!4730 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !353, file: !305, line: 98, baseType: !4731, size: 64, offset: 512)
!4731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4732, size: 64)
!4732 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_minor", file: !305, line: 13, flags: DIFlagFwdDecl)
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "render", scope: !353, file: !305, line: 107, baseType: !4731, size: 64, offset: 576)
!4734 = !DIDerivedType(tag: DW_TAG_member, name: "accel", scope: !353, file: !305, line: 110, baseType: !4731, size: 64, offset: 640)
!4735 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !353, file: !305, line: 117, baseType: !882, size: 8, offset: 704)
!4736 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !353, file: !305, line: 125, baseType: !4737, size: 64, offset: 768)
!4737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4738, size: 64)
!4738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_master", file: !4739, line: 65, size: 1280, elements: !4740)
!4739 = !DIFile(filename: "./include/drm/drm_auth.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10e944a391afc2612335b30db18d0dee")
!4740 = !{!4741, !4742, !4743, !4744, !4745, !4746, !4747, !4748, !4749, !4750, !4751, !4752}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4738, file: !4739, line: 66, baseType: !357, size: 32)
!4742 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4738, file: !4739, line: 67, baseType: !352, size: 64, offset: 64)
!4743 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !4738, file: !4739, line: 72, baseType: !461, size: 64, offset: 128)
!4744 = !DIDerivedType(tag: DW_TAG_member, name: "unique_len", scope: !4738, file: !4739, line: 77, baseType: !115, size: 32, offset: 192)
!4745 = !DIDerivedType(tag: DW_TAG_member, name: "magic_map", scope: !4738, file: !4739, line: 82, baseType: !1355, size: 192, offset: 256)
!4746 = !DIDerivedType(tag: DW_TAG_member, name: "driver_priv", scope: !4738, file: !4739, line: 83, baseType: !345, size: 64, offset: 448)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "lessor", scope: !4738, file: !4739, line: 99, baseType: !4737, size: 64, offset: 512)
!4748 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_id", scope: !4738, file: !4739, line: 107, baseType: !115, size: 32, offset: 576)
!4749 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_list", scope: !4738, file: !4739, line: 116, baseType: !382, size: 128, offset: 640)
!4750 = !DIDerivedType(tag: DW_TAG_member, name: "lessees", scope: !4738, file: !4739, line: 128, baseType: !382, size: 128, offset: 768)
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "leases", scope: !4738, file: !4739, line: 139, baseType: !1355, size: 192, offset: 896)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "lessee_idr", scope: !4738, file: !4739, line: 147, baseType: !1355, size: 192, offset: 1088)
!4753 = !DIDerivedType(tag: DW_TAG_member, name: "driver_features", scope: !353, file: !305, line: 135, baseType: !610, size: 32, offset: 832)
!4754 = !DIDerivedType(tag: DW_TAG_member, name: "unplugged", scope: !353, file: !305, line: 143, baseType: !882, size: 8, offset: 864)
!4755 = !DIDerivedType(tag: DW_TAG_member, name: "anon_inode", scope: !353, file: !305, line: 146, baseType: !541, size: 64, offset: 896)
!4756 = !DIDerivedType(tag: DW_TAG_member, name: "unique", scope: !353, file: !305, line: 149, baseType: !461, size: 64, offset: 960)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "struct_mutex", scope: !353, file: !305, line: 159, baseType: !802, size: 256, offset: 1024)
!4758 = !DIDerivedType(tag: DW_TAG_member, name: "master_mutex", scope: !353, file: !305, line: 166, baseType: !802, size: 256, offset: 1280)
!4759 = !DIDerivedType(tag: DW_TAG_member, name: "open_count", scope: !353, file: !305, line: 174, baseType: !366, size: 32, offset: 1536)
!4760 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_mutex", scope: !353, file: !305, line: 177, baseType: !802, size: 256, offset: 1600)
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "filelist", scope: !353, file: !305, line: 183, baseType: !382, size: 128, offset: 1856)
!4762 = !DIDerivedType(tag: DW_TAG_member, name: "filelist_internal", scope: !353, file: !305, line: 191, baseType: !382, size: 128, offset: 1984)
!4763 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist_mutex", scope: !353, file: !305, line: 198, baseType: !802, size: 256, offset: 2112)
!4764 = !DIDerivedType(tag: DW_TAG_member, name: "clientlist", scope: !353, file: !305, line: 205, baseType: !382, size: 128, offset: 2368)
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_disable_immediate", scope: !353, file: !305, line: 220, baseType: !882, size: 8, offset: 2496)
!4766 = !DIDerivedType(tag: DW_TAG_member, name: "vblank", scope: !353, file: !305, line: 230, baseType: !4767, size: 64, offset: 2560)
!4767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4768, size: 64)
!4768 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vblank_crtc", file: !305, line: 15, flags: DIFlagFwdDecl)
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_time_lock", scope: !353, file: !305, line: 237, baseType: !395, size: 32, offset: 2624)
!4770 = !DIDerivedType(tag: DW_TAG_member, name: "vbl_lock", scope: !353, file: !305, line: 242, baseType: !395, size: 32, offset: 2656)
!4771 = !DIDerivedType(tag: DW_TAG_member, name: "max_vblank_count", scope: !353, file: !305, line: 265, baseType: !610, size: 32, offset: 2688)
!4772 = !DIDerivedType(tag: DW_TAG_member, name: "vblank_event_list", scope: !353, file: !305, line: 268, baseType: !382, size: 128, offset: 2752)
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "event_lock", scope: !353, file: !305, line: 276, baseType: !395, size: 32, offset: 2880)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtcs", scope: !353, file: !305, line: 279, baseType: !13, size: 32, offset: 2912)
!4775 = !DIDerivedType(tag: DW_TAG_member, name: "mode_config", scope: !353, file: !305, line: 282, baseType: !4776, size: 8704, offset: 2944)
!4776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config", file: !4777, line: 375, size: 8704, elements: !4778)
!4777 = !DIFile(filename: "./include/drm/drm_mode_config.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3fe2bd3e9391801689324df8a16c9607")
!4778 = !{!4779, !4780, !4799, !4812, !4813, !4814, !4815, !4816, !4817, !4818, !4819, !4820, !4824, !4825, !4826, !4827, !4828, !4829, !4830, !4831, !4832, !4833, !4834, !4835, !4836, !4837, !4838, !4839, !5672, !5673, !5674, !5675, !5676, !5677, !5678, !5679, !5680, !5681, !5682, !5683, !5684, !5685, !5686, !5687, !5688, !5689, !5690, !5691, !5692, !5693, !5694, !5695, !5696, !5697, !5698, !5699, !5700, !5701, !5702, !5703, !5704, !5705, !5706, !5707, !5708, !5709, !5710, !5711, !5712, !5713, !5714, !5715, !5716, !5717, !5718, !5719, !5720, !5721, !5722, !5723, !5724, !5725, !5726, !5727, !5728, !5729, !5730, !5731, !5732, !5733, !5734, !5735, !5736, !5737, !5738, !5739, !5740, !5741, !5742, !5743, !5744, !5745, !5746}
!4779 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4776, file: !4777, line: 386, baseType: !802, size: 256)
!4780 = !DIDerivedType(tag: DW_TAG_member, name: "connection_mutex", scope: !4776, file: !4777, line: 396, baseType: !4781, size: 448, offset: 256)
!4781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_lock", file: !4782, line: 85, size: 448, elements: !4783)
!4782 = !DIFile(filename: "./include/drm/drm_modeset_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90e902ea14584677125d9e33023828e6")
!4783 = !{!4784, !4798}
!4784 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4781, file: !4782, line: 89, baseType: !4785, size: 320)
!4785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_mutex", file: !4786, line: 47, size: 320, elements: !4787)
!4786 = !DIFile(filename: "./include/linux/ww_mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a05845e2a030669ed50c8f228f8c6582")
!4787 = !{!4788, !4789}
!4788 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4785, file: !4786, line: 48, baseType: !802, size: 256)
!4789 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !4785, file: !4786, line: 49, baseType: !4790, size: 64, offset: 256)
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ww_acquire_ctx", file: !4786, line: 55, size: 192, elements: !4792)
!4792 = !{!4793, !4794, !4795, !4796, !4797}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !4791, file: !4786, line: 56, baseType: !1370, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "stamp", scope: !4791, file: !4786, line: 57, baseType: !511, size: 64, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "acquired", scope: !4791, file: !4786, line: 58, baseType: !13, size: 32, offset: 128)
!4796 = !DIDerivedType(tag: DW_TAG_member, name: "wounded", scope: !4791, file: !4786, line: 59, baseType: !431, size: 16, offset: 160)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "is_wait_die", scope: !4791, file: !4786, line: 60, baseType: !431, size: 16, offset: 176)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4781, file: !4782, line: 95, baseType: !382, size: 128, offset: 320)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4776, file: !4777, line: 406, baseType: !4800, size: 64, offset: 704)
!4800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4801, size: 64)
!4801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_modeset_acquire_ctx", file: !4782, line: 46, size: 512, elements: !4802)
!4802 = !{!4803, !4804, !4806, !4809, !4810, !4811}
!4803 = !DIDerivedType(tag: DW_TAG_member, name: "ww_ctx", scope: !4801, file: !4782, line: 48, baseType: !4791, size: 192)
!4804 = !DIDerivedType(tag: DW_TAG_member, name: "contended", scope: !4801, file: !4782, line: 55, baseType: !4805, size: 64, offset: 192)
!4805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4781, size: 64)
!4806 = !DIDerivedType(tag: DW_TAG_member, name: "stack_depot", scope: !4801, file: !4782, line: 61, baseType: !4807, size: 32, offset: 256)
!4807 = !DIDerivedType(tag: DW_TAG_typedef, name: "depot_stack_handle_t", file: !4808, line: 27, baseType: !610)
!4808 = !DIFile(filename: "./include/linux/stackdepot.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "787fdf2c1a48da25b4d7ecc2db077a40")
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !4801, file: !4782, line: 66, baseType: !382, size: 128, offset: 320)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_only", scope: !4801, file: !4782, line: 71, baseType: !882, size: 8, offset: 448)
!4811 = !DIDerivedType(tag: DW_TAG_member, name: "interruptible", scope: !4801, file: !4782, line: 74, baseType: !882, size: 8, offset: 456)
!4812 = !DIDerivedType(tag: DW_TAG_member, name: "idr_mutex", scope: !4776, file: !4777, line: 414, baseType: !802, size: 256, offset: 768)
!4813 = !DIDerivedType(tag: DW_TAG_member, name: "object_idr", scope: !4776, file: !4777, line: 422, baseType: !1355, size: 192, offset: 1024)
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "tile_idr", scope: !4776, file: !4777, line: 430, baseType: !1355, size: 192, offset: 1216)
!4815 = !DIDerivedType(tag: DW_TAG_member, name: "fb_lock", scope: !4776, file: !4777, line: 433, baseType: !802, size: 256, offset: 1408)
!4816 = !DIDerivedType(tag: DW_TAG_member, name: "num_fb", scope: !4776, file: !4777, line: 435, baseType: !115, size: 32, offset: 1664)
!4817 = !DIDerivedType(tag: DW_TAG_member, name: "fb_list", scope: !4776, file: !4777, line: 437, baseType: !382, size: 128, offset: 1728)
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list_lock", scope: !4776, file: !4777, line: 443, baseType: !395, size: 32, offset: 1856)
!4819 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4776, file: !4777, line: 448, baseType: !115, size: 32, offset: 1888)
!4820 = !DIDerivedType(tag: DW_TAG_member, name: "connector_ida", scope: !4776, file: !4777, line: 452, baseType: !4821, size: 128, offset: 1920)
!4821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1356, line: 246, size: 128, elements: !4822)
!4822 = !{!4823}
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !4821, file: !1356, line: 247, baseType: !1359, size: 128)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "connector_list", scope: !4776, file: !4777, line: 460, baseType: !382, size: 128, offset: 2048)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_list", scope: !4776, file: !4777, line: 470, baseType: !2989, size: 64, offset: 2176)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "connector_free_work", scope: !4776, file: !4777, line: 474, baseType: !1062, size: 256, offset: 2240)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "num_encoder", scope: !4776, file: !4777, line: 482, baseType: !115, size: 32, offset: 2496)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_list", scope: !4776, file: !4777, line: 490, baseType: !382, size: 128, offset: 2560)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "num_total_plane", scope: !4776, file: !4777, line: 499, baseType: !115, size: 32, offset: 2688)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "plane_list", scope: !4776, file: !4777, line: 506, baseType: !382, size: 128, offset: 2752)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "num_crtc", scope: !4776, file: !4777, line: 514, baseType: !115, size: 32, offset: 2880)
!4832 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_list", scope: !4776, file: !4777, line: 521, baseType: !382, size: 128, offset: 2944)
!4833 = !DIDerivedType(tag: DW_TAG_member, name: "property_list", scope: !4776, file: !4777, line: 530, baseType: !382, size: 128, offset: 3072)
!4834 = !DIDerivedType(tag: DW_TAG_member, name: "privobj_list", scope: !4776, file: !4777, line: 539, baseType: !382, size: 128, offset: 3200)
!4835 = !DIDerivedType(tag: DW_TAG_member, name: "min_width", scope: !4776, file: !4777, line: 541, baseType: !115, size: 32, offset: 3328)
!4836 = !DIDerivedType(tag: DW_TAG_member, name: "min_height", scope: !4776, file: !4777, line: 541, baseType: !115, size: 32, offset: 3360)
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "max_width", scope: !4776, file: !4777, line: 542, baseType: !115, size: 32, offset: 3392)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "max_height", scope: !4776, file: !4777, line: 542, baseType: !115, size: 32, offset: 3424)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4776, file: !4777, line: 543, baseType: !4840, size: 64, offset: 3456)
!4840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4841, size: 64)
!4841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4842)
!4842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_funcs", file: !4777, line: 47, size: 576, elements: !4843)
!4843 = !{!4844, !4868, !4875, !4879, !4921, !5659, !5663, !5667, !5671}
!4844 = !DIDerivedType(tag: DW_TAG_member, name: "fb_create", scope: !4842, file: !4777, line: 83, baseType: !4845, size: 64)
!4845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4846, size: 64)
!4846 = !DISubroutineType(types: !4847)
!4847 = !{!4848, !352, !4850, !4853}
!4848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4849, size: 64)
!4849 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_framebuffer", file: !4777, line: 83, flags: DIFlagFwdDecl)
!4850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4851, size: 64)
!4851 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_file", file: !4852, line: 9, flags: DIFlagFwdDecl)
!4852 = !DIFile(filename: "./include/drm/drm_lease.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f6d675704e04807ddd52843c3d74a46")
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4855)
!4855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_fb_cmd2", file: !223, line: 703, size: 832, elements: !4856)
!4856 = !{!4857, !4858, !4859, !4860, !4861, !4862, !4864, !4865, !4866}
!4857 = !DIDerivedType(tag: DW_TAG_member, name: "fb_id", scope: !4855, file: !223, line: 705, baseType: !611, size: 32)
!4858 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !4855, file: !223, line: 707, baseType: !611, size: 32, offset: 32)
!4859 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !4855, file: !223, line: 709, baseType: !611, size: 32, offset: 64)
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_format", scope: !4855, file: !223, line: 714, baseType: !611, size: 32, offset: 96)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4855, file: !223, line: 719, baseType: !611, size: 32, offset: 128)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "handles", scope: !4855, file: !223, line: 725, baseType: !4863, size: 128, offset: 160)
!4863 = !DICompositeType(tag: DW_TAG_array_type, baseType: !611, size: 128, elements: !1032)
!4864 = !DIDerivedType(tag: DW_TAG_member, name: "pitches", scope: !4855, file: !223, line: 727, baseType: !4863, size: 128, offset: 288)
!4865 = !DIDerivedType(tag: DW_TAG_member, name: "offsets", scope: !4855, file: !223, line: 729, baseType: !4863, size: 128, offset: 416)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "modifier", scope: !4855, file: !223, line: 735, baseType: !4867, size: 256, offset: 576)
!4867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 256, elements: !1032)
!4868 = !DIDerivedType(tag: DW_TAG_member, name: "get_format_info", scope: !4842, file: !4777, line: 98, baseType: !4869, size: 64, offset: 64)
!4869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4870, size: 64)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!4872, !4853}
!4872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4873, size: 64)
!4873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4874)
!4874 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_format_info", file: !4777, line: 38, flags: DIFlagFwdDecl)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_changed", scope: !4842, file: !4777, line: 114, baseType: !4876, size: 64, offset: 128)
!4876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4877, size: 64)
!4877 = !DISubroutineType(types: !4878)
!4878 = !{null, !352}
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "mode_valid", scope: !4842, file: !4777, line: 124, baseType: !4880, size: 64, offset: 192)
!4880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4881, size: 64)
!4881 = !DISubroutineType(types: !4882)
!4882 = !{!147, !352, !4883}
!4883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4884, size: 64)
!4884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4885)
!4885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_mode", file: !148, line: 252, size: 960, elements: !4886)
!4886 = !{!4887, !4888, !4889, !4890, !4891, !4892, !4893, !4894, !4895, !4896, !4897, !4898, !4899, !4900, !4901, !4902, !4903, !4904, !4905, !4906, !4907, !4908, !4909, !4910, !4911, !4912, !4913, !4914, !4915, !4916, !4917, !4918, !4919, !4920}
!4887 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !4885, file: !148, line: 258, baseType: !115, size: 32)
!4888 = !DIDerivedType(tag: DW_TAG_member, name: "hdisplay", scope: !4885, file: !148, line: 259, baseType: !429, size: 16, offset: 32)
!4889 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_start", scope: !4885, file: !148, line: 260, baseType: !429, size: 16, offset: 48)
!4890 = !DIDerivedType(tag: DW_TAG_member, name: "hsync_end", scope: !4885, file: !148, line: 261, baseType: !429, size: 16, offset: 64)
!4891 = !DIDerivedType(tag: DW_TAG_member, name: "htotal", scope: !4885, file: !148, line: 262, baseType: !429, size: 16, offset: 80)
!4892 = !DIDerivedType(tag: DW_TAG_member, name: "hskew", scope: !4885, file: !148, line: 263, baseType: !429, size: 16, offset: 96)
!4893 = !DIDerivedType(tag: DW_TAG_member, name: "vdisplay", scope: !4885, file: !148, line: 264, baseType: !429, size: 16, offset: 112)
!4894 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_start", scope: !4885, file: !148, line: 265, baseType: !429, size: 16, offset: 128)
!4895 = !DIDerivedType(tag: DW_TAG_member, name: "vsync_end", scope: !4885, file: !148, line: 266, baseType: !429, size: 16, offset: 144)
!4896 = !DIDerivedType(tag: DW_TAG_member, name: "vtotal", scope: !4885, file: !148, line: 267, baseType: !429, size: 16, offset: 160)
!4897 = !DIDerivedType(tag: DW_TAG_member, name: "vscan", scope: !4885, file: !148, line: 268, baseType: !429, size: 16, offset: 176)
!4898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4885, file: !148, line: 303, baseType: !610, size: 32, offset: 192)
!4899 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_clock", scope: !4885, file: !148, line: 320, baseType: !115, size: 32, offset: 224)
!4900 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hdisplay", scope: !4885, file: !148, line: 321, baseType: !429, size: 16, offset: 256)
!4901 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_start", scope: !4885, file: !148, line: 322, baseType: !429, size: 16, offset: 272)
!4902 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hblank_end", scope: !4885, file: !148, line: 323, baseType: !429, size: 16, offset: 288)
!4903 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_start", scope: !4885, file: !148, line: 324, baseType: !429, size: 16, offset: 304)
!4904 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hsync_end", scope: !4885, file: !148, line: 325, baseType: !429, size: 16, offset: 320)
!4905 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_htotal", scope: !4885, file: !148, line: 326, baseType: !429, size: 16, offset: 336)
!4906 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_hskew", scope: !4885, file: !148, line: 327, baseType: !429, size: 16, offset: 352)
!4907 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vdisplay", scope: !4885, file: !148, line: 328, baseType: !429, size: 16, offset: 368)
!4908 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_start", scope: !4885, file: !148, line: 329, baseType: !429, size: 16, offset: 384)
!4909 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vblank_end", scope: !4885, file: !148, line: 330, baseType: !429, size: 16, offset: 400)
!4910 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_start", scope: !4885, file: !148, line: 331, baseType: !429, size: 16, offset: 416)
!4911 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vsync_end", scope: !4885, file: !148, line: 332, baseType: !429, size: 16, offset: 432)
!4912 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_vtotal", scope: !4885, file: !148, line: 333, baseType: !429, size: 16, offset: 448)
!4913 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !4885, file: !148, line: 341, baseType: !429, size: 16, offset: 464)
!4914 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !4885, file: !148, line: 349, baseType: !429, size: 16, offset: 480)
!4915 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4885, file: !148, line: 378, baseType: !419, size: 8, offset: 496)
!4916 = !DIDerivedType(tag: DW_TAG_member, name: "expose_to_userspace", scope: !4885, file: !148, line: 389, baseType: !882, size: 8, offset: 504)
!4917 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4885, file: !148, line: 396, baseType: !382, size: 128, offset: 512)
!4918 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4885, file: !148, line: 403, baseType: !3741, size: 256, offset: 640)
!4919 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4885, file: !148, line: 411, baseType: !147, size: 32, offset: 896)
!4920 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !4885, file: !148, line: 418, baseType: !190, size: 32, offset: 928)
!4921 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_check", scope: !4842, file: !4777, line: 201, baseType: !4922, size: 64, offset: 256)
!4922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4923, size: 64)
!4923 = !DISubroutineType(types: !4924)
!4924 = !{!115, !352, !4925}
!4925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4926, size: 64)
!4926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_atomic_state", file: !4927, line: 365, size: 960, elements: !4928)
!4927 = !DIFile(filename: "./include/drm/drm_atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28de65f10f2586a2044f2cca3eae067c")
!4928 = !{!4929, !4930, !4931, !4932, !4933, !4934, !4935, !5596, !5607, !5608, !5617, !5618, !5656, !5657, !5658}
!4929 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !4926, file: !4927, line: 366, baseType: !357, size: 32)
!4930 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4926, file: !4927, line: 368, baseType: !352, size: 64, offset: 64)
!4931 = !DIDerivedType(tag: DW_TAG_member, name: "allow_modeset", scope: !4926, file: !4927, line: 378, baseType: !882, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!4932 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_cursor_update", scope: !4926, file: !4927, line: 390, baseType: !882, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!4933 = !DIDerivedType(tag: DW_TAG_member, name: "async_update", scope: !4926, file: !4927, line: 391, baseType: !882, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!4934 = !DIDerivedType(tag: DW_TAG_member, name: "duplicated", scope: !4926, file: !4927, line: 400, baseType: !882, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!4935 = !DIDerivedType(tag: DW_TAG_member, name: "planes", scope: !4926, file: !4927, line: 401, baseType: !4936, size: 64, offset: 192)
!4936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4937, size: 64)
!4937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_planes_state", file: !4927, line: 160, size: 256, elements: !4938)
!4938 = !{!4939, !4940, !5594, !5595}
!4939 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !4937, file: !4927, line: 161, baseType: !348, size: 64)
!4940 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4937, file: !4927, line: 162, baseType: !4941, size: 64, offset: 64)
!4941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4942, size: 64)
!4942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_state", file: !288, line: 52, size: 1280, elements: !4943)
!4943 = !{!4944, !4945, !5560, !5561, !5564, !5565, !5566, !5567, !5568, !5569, !5570, !5571, !5572, !5573, !5574, !5575, !5576, !5577, !5578, !5579, !5580, !5581, !5589, !5590, !5591, !5592, !5593}
!4944 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !4942, file: !288, line: 54, baseType: !348, size: 64)
!4945 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !4942, file: !288, line: 62, baseType: !4946, size: 64, offset: 64)
!4946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4947, size: 64)
!4947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc", file: !4948, line: 932, size: 8064, elements: !4949)
!4948 = !DIFile(filename: "./include/drm/drm_crtc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99ea98da3699d3be12a3062031f96ca9")
!4949 = !{!4950, !4951, !4952, !4953, !4954, !4955, !4992, !4993, !4994, !4995, !4996, !4997, !4998, !4999, !5000, !5001, !5002, !5518, !5519, !5521, !5525, !5526, !5527, !5528, !5529, !5530, !5531, !5553, !5554, !5555, !5556, !5557}
!4950 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4947, file: !4948, line: 934, baseType: !352, size: 64)
!4951 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4947, file: !4948, line: 936, baseType: !4654, size: 64, offset: 64)
!4952 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4947, file: !4948, line: 944, baseType: !382, size: 128, offset: 128)
!4953 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4947, file: !4948, line: 947, baseType: !461, size: 64, offset: 256)
!4954 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4947, file: !4948, line: 959, baseType: !4781, size: 448, offset: 320)
!4955 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4947, file: !4948, line: 962, baseType: !4956, size: 256, offset: 768)
!4956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_object", file: !4957, line: 55, size: 256, elements: !4958)
!4957 = !DIFile(filename: "./include/drm/drm_mode_object.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ffaf2d776d1d6cf92a08dd44b890967f")
!4958 = !{!4959, !4960, !4961, !4986, !4987}
!4959 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4956, file: !4957, line: 56, baseType: !2024, size: 32)
!4960 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4956, file: !4957, line: 57, baseType: !2024, size: 32, offset: 32)
!4961 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4956, file: !4957, line: 58, baseType: !4962, size: 64, offset: 64)
!4962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4963, size: 64)
!4963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_object_properties", file: !4957, line: 67, size: 3136, elements: !4964)
!4964 = !{!4965, !4966, !4984}
!4965 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4963, file: !4957, line: 73, baseType: !115, size: 32)
!4966 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4963, file: !4957, line: 82, baseType: !4967, size: 1536, offset: 64)
!4967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4968, size: 1536, elements: !4982)
!4968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4969, size: 64)
!4969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property", file: !4970, line: 80, size: 960, elements: !4971)
!4970 = !DIFile(filename: "./include/drm/drm_property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "320ae008033d09c99df86eb5eb8877c7")
!4971 = !{!4972, !4973, !4974, !4975, !4976, !4977, !4980, !4981}
!4972 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !4969, file: !4970, line: 84, baseType: !382, size: 128)
!4973 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !4969, file: !4970, line: 89, baseType: !4956, size: 256, offset: 128)
!4974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4969, file: !4970, line: 166, baseType: !2024, size: 32, offset: 384)
!4975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4969, file: !4970, line: 171, baseType: !3741, size: 256, offset: 416)
!4976 = !DIDerivedType(tag: DW_TAG_member, name: "num_values", scope: !4969, file: !4970, line: 176, baseType: !2024, size: 32, offset: 672)
!4977 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4969, file: !4970, line: 184, baseType: !4978, size: 64, offset: 704)
!4978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4979, size: 64)
!4979 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !347, line: 113, baseType: !614)
!4980 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4969, file: !4970, line: 189, baseType: !352, size: 64, offset: 768)
!4981 = !DIDerivedType(tag: DW_TAG_member, name: "enum_list", scope: !4969, file: !4970, line: 197, baseType: !382, size: 128, offset: 832)
!4982 = !{!4983}
!4983 = !DISubrange(count: 24)
!4984 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !4963, file: !4957, line: 106, baseType: !4985, size: 1536, offset: 1600)
!4985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4979, size: 1536, elements: !4982)
!4986 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4956, file: !4957, line: 59, baseType: !357, size: 32, offset: 128)
!4987 = !DIDerivedType(tag: DW_TAG_member, name: "free_cb", scope: !4956, file: !4957, line: 60, baseType: !4988, size: 64, offset: 192)
!4988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4989, size: 64)
!4989 = !DISubroutineType(types: !4990)
!4990 = !{null, !4991}
!4991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!4992 = !DIDerivedType(tag: DW_TAG_member, name: "primary", scope: !4947, file: !4948, line: 971, baseType: !348, size: 64, offset: 1024)
!4993 = !DIDerivedType(tag: DW_TAG_member, name: "cursor", scope: !4947, file: !4948, line: 980, baseType: !348, size: 64, offset: 1088)
!4994 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !4947, file: !4948, line: 986, baseType: !13, size: 32, offset: 1152)
!4995 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_x", scope: !4947, file: !4948, line: 995, baseType: !115, size: 32, offset: 1184)
!4996 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_y", scope: !4947, file: !4948, line: 1003, baseType: !115, size: 32, offset: 1216)
!4997 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !4947, file: !4948, line: 1013, baseType: !882, size: 8, offset: 1248)
!4998 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !4947, file: !4948, line: 1023, baseType: !4885, size: 960, offset: 1280)
!4999 = !DIDerivedType(tag: DW_TAG_member, name: "hwmode", scope: !4947, file: !4948, line: 1039, baseType: !4885, size: 960, offset: 2240)
!5000 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !4947, file: !4948, line: 1048, baseType: !115, size: 32, offset: 3200)
!5001 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !4947, file: !4948, line: 1056, baseType: !115, size: 32, offset: 3232)
!5002 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !4947, file: !4948, line: 1059, baseType: !5003, size: 64, offset: 3264)
!5003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5004, size: 64)
!5004 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5005)
!5005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_funcs", file: !4948, line: 402, size: 1536, elements: !5006)
!5006 = !{!5007, !5011, !5015, !5019, !5023, !5028, !5029, !5423, !5427, !5431, !5435, !5469, !5473, !5477, !5483, !5487, !5488, !5492, !5497, !5503, !5507, !5511, !5512, !5513}
!5007 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5005, file: !4948, line: 413, baseType: !5008, size: 64)
!5008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5009, size: 64)
!5009 = !DISubroutineType(types: !5010)
!5010 = !{null, !4946}
!5011 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set", scope: !5005, file: !4948, line: 436, baseType: !5012, size: 64, offset: 64)
!5012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5013, size: 64)
!5013 = !DISubroutineType(types: !5014)
!5014 = !{!115, !4946, !4850, !2024, !2024, !2024}
!5015 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_set2", scope: !5005, file: !4948, line: 458, baseType: !5016, size: 64, offset: 128)
!5016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5017, size: 64)
!5017 = !DISubroutineType(types: !5018)
!5018 = !{!115, !4946, !4850, !2024, !2024, !2024, !2001, !2001}
!5019 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_move", scope: !5005, file: !4948, line: 478, baseType: !5020, size: 64, offset: 192)
!5020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5021, size: 64)
!5021 = !DISubroutineType(types: !5022)
!5022 = !{!115, !4946, !115, !115}
!5023 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_set", scope: !5005, file: !4948, line: 493, baseType: !5024, size: 64, offset: 256)
!5024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5025, size: 64)
!5025 = !DISubroutineType(types: !5026)
!5026 = !{!115, !4946, !5027, !5027, !5027, !2024, !4800}
!5027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!5028 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5005, file: !4948, line: 504, baseType: !5008, size: 64, offset: 320)
!5029 = !DIDerivedType(tag: DW_TAG_member, name: "set_config", scope: !5005, file: !4948, line: 520, baseType: !5030, size: 64, offset: 384)
!5030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5031, size: 64)
!5031 = !DISubroutineType(types: !5032)
!5032 = !{!115, !5033, !4800}
!5033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5034, size: 64)
!5034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_set", file: !4948, line: 1193, size: 384, elements: !5035)
!5035 = !{!5036, !5037, !5038, !5040, !5041, !5042, !5422}
!5036 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !5034, file: !4948, line: 1194, baseType: !4848, size: 64)
!5037 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5034, file: !4948, line: 1195, baseType: !4946, size: 64, offset: 64)
!5038 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5034, file: !4948, line: 1196, baseType: !5039, size: 64, offset: 128)
!5039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4885, size: 64)
!5040 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !5034, file: !4948, line: 1198, baseType: !2024, size: 32, offset: 192)
!5041 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !5034, file: !4948, line: 1199, baseType: !2024, size: 32, offset: 224)
!5042 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !5034, file: !4948, line: 1201, baseType: !5043, size: 64, offset: 256)
!5043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5044, size: 64)
!5044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5045, size: 64)
!5045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector", file: !200, line: 1494, size: 10880, elements: !5046)
!5046 = !{!5047, !5048, !5049, !5062, !5063, !5064, !5065, !5066, !5067, !5068, !5069, !5070, !5071, !5072, !5073, !5074, !5075, !5076, !5077, !5078, !5079, !5150, !5306, !5307, !5308, !5309, !5310, !5311, !5312, !5313, !5316, !5328, !5329, !5330, !5332, !5333, !5337, !5359, !5360, !5364, !5365, !5366, !5367, !5368, !5372, !5373, !5375, !5377, !5378, !5381, !5382, !5383, !5384, !5385, !5386, !5387, !5388, !5389, !5398, !5399, !5400, !5401, !5402, !5403, !5405, !5406, !5407}
!5047 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5045, file: !200, line: 1496, baseType: !352, size: 64)
!5048 = !DIDerivedType(tag: DW_TAG_member, name: "kdev", scope: !5045, file: !200, line: 1498, baseType: !371, size: 64, offset: 64)
!5049 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5045, file: !200, line: 1500, baseType: !5050, size: 64, offset: 128)
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !100, line: 106, size: 256, elements: !5052)
!5052 = !{!5053, !5054, !5058}
!5053 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !5051, file: !100, line: 107, baseType: !499, size: 128)
!5054 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !5051, file: !100, line: 108, baseType: !5055, size: 64, offset: 128)
!5055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5056, size: 64)
!5056 = !DISubroutineType(types: !5057)
!5057 = !{!493, !371, !5050, !461}
!5058 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !5051, file: !100, line: 110, baseType: !5059, size: 64, offset: 192)
!5059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5060, size: 64)
!5060 = !DISubroutineType(types: !5061)
!5061 = !{!493, !371, !5050, !379, !508}
!5062 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !5045, file: !200, line: 1508, baseType: !4658, size: 64, offset: 192)
!5063 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5045, file: !200, line: 1518, baseType: !382, size: 128, offset: 256)
!5064 = !DIDerivedType(tag: DW_TAG_member, name: "global_connector_list_entry", scope: !5045, file: !200, line: 1526, baseType: !382, size: 128, offset: 384)
!5065 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5045, file: !200, line: 1529, baseType: !4956, size: 256, offset: 512)
!5066 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5045, file: !200, line: 1532, baseType: !461, size: 64, offset: 768)
!5067 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !5045, file: !200, line: 1539, baseType: !802, size: 256, offset: 832)
!5068 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !5045, file: !200, line: 1547, baseType: !13, size: 32, offset: 1088)
!5069 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type", scope: !5045, file: !200, line: 1553, baseType: !115, size: 32, offset: 1120)
!5070 = !DIDerivedType(tag: DW_TAG_member, name: "connector_type_id", scope: !5045, file: !200, line: 1555, baseType: !115, size: 32, offset: 1152)
!5071 = !DIDerivedType(tag: DW_TAG_member, name: "interlace_allowed", scope: !5045, file: !200, line: 1561, baseType: !882, size: 8, offset: 1184)
!5072 = !DIDerivedType(tag: DW_TAG_member, name: "doublescan_allowed", scope: !5045, file: !200, line: 1567, baseType: !882, size: 8, offset: 1192)
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "stereo_allowed", scope: !5045, file: !200, line: 1573, baseType: !882, size: 8, offset: 1200)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "ycbcr_420_allowed", scope: !5045, file: !200, line: 1581, baseType: !882, size: 8, offset: 1208)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "registration_state", scope: !5045, file: !200, line: 1589, baseType: !199, size: 32, offset: 1216)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "modes", scope: !5045, file: !200, line: 1596, baseType: !382, size: 128, offset: 1280)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !5045, file: !200, line: 1603, baseType: !205, size: 32, offset: 1408)
!5078 = !DIDerivedType(tag: DW_TAG_member, name: "probed_modes", scope: !5045, file: !200, line: 1611, baseType: !382, size: 128, offset: 1472)
!5079 = !DIDerivedType(tag: DW_TAG_member, name: "display_info", scope: !5045, file: !200, line: 1622, baseType: !5080, size: 1536, offset: 1600)
!5080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_display_info", file: !200, line: 651, size: 1536, elements: !5081)
!5081 = !{!5082, !5083, !5084, !5085, !5086, !5087, !5088, !5091, !5092, !5093, !5094, !5095, !5096, !5097, !5098, !5099, !5100, !5101, !5102, !5132, !5133, !5138, !5143, !5144, !5145, !5146, !5148, !5149}
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "width_mm", scope: !5080, file: !200, line: 655, baseType: !13, size: 32)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "height_mm", scope: !5080, file: !200, line: 660, baseType: !13, size: 32, offset: 32)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "bpc", scope: !5080, file: !200, line: 665, baseType: !13, size: 32, offset: 64)
!5085 = !DIDerivedType(tag: DW_TAG_member, name: "subpixel_order", scope: !5080, file: !200, line: 670, baseType: !210, size: 32, offset: 96)
!5086 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5080, file: !200, line: 684, baseType: !115, size: 32, offset: 128)
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "color_formats", scope: !5080, file: !200, line: 692, baseType: !610, size: 32, offset: 160)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "bus_formats", scope: !5080, file: !200, line: 699, baseType: !5089, size: 64, offset: 192)
!5089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5090, size: 64)
!5090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!5091 = !DIDerivedType(tag: DW_TAG_member, name: "num_bus_formats", scope: !5080, file: !200, line: 703, baseType: !13, size: 32, offset: 256)
!5092 = !DIDerivedType(tag: DW_TAG_member, name: "bus_flags", scope: !5080, file: !200, line: 710, baseType: !610, size: 32, offset: 288)
!5093 = !DIDerivedType(tag: DW_TAG_member, name: "max_tmds_clock", scope: !5080, file: !200, line: 716, baseType: !115, size: 32, offset: 320)
!5094 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_dual", scope: !5080, file: !200, line: 721, baseType: !882, size: 8, offset: 352)
!5095 = !DIDerivedType(tag: DW_TAG_member, name: "is_hdmi", scope: !5080, file: !200, line: 729, baseType: !882, size: 8, offset: 360)
!5096 = !DIDerivedType(tag: DW_TAG_member, name: "has_audio", scope: !5080, file: !200, line: 737, baseType: !882, size: 8, offset: 368)
!5097 = !DIDerivedType(tag: DW_TAG_member, name: "has_hdmi_infoframe", scope: !5080, file: !200, line: 742, baseType: !882, size: 8, offset: 376)
!5098 = !DIDerivedType(tag: DW_TAG_member, name: "rgb_quant_range_selectable", scope: !5080, file: !200, line: 748, baseType: !882, size: 8, offset: 384)
!5099 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_rgb444_dc_modes", scope: !5080, file: !200, line: 754, baseType: !419, size: 8, offset: 392)
!5100 = !DIDerivedType(tag: DW_TAG_member, name: "edid_hdmi_ycbcr444_dc_modes", scope: !5080, file: !200, line: 760, baseType: !419, size: 8, offset: 400)
!5101 = !DIDerivedType(tag: DW_TAG_member, name: "cea_rev", scope: !5080, file: !200, line: 765, baseType: !419, size: 8, offset: 408)
!5102 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi", scope: !5080, file: !200, line: 770, baseType: !5103, size: 768, offset: 448)
!5103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_info", file: !200, line: 293, size: 768, elements: !5104)
!5104 = !{!5105, !5115, !5116, !5117, !5118, !5119, !5120}
!5105 = !DIDerivedType(tag: DW_TAG_member, name: "scdc", scope: !5103, file: !200, line: 295, baseType: !5106, size: 32)
!5106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scdc", file: !200, line: 231, size: 32, elements: !5107)
!5107 = !{!5108, !5109, !5110}
!5108 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5106, file: !200, line: 235, baseType: !882, size: 8)
!5109 = !DIDerivedType(tag: DW_TAG_member, name: "read_request", scope: !5106, file: !200, line: 239, baseType: !882, size: 8, offset: 8)
!5110 = !DIDerivedType(tag: DW_TAG_member, name: "scrambling", scope: !5106, file: !200, line: 243, baseType: !5111, size: 16, offset: 16)
!5111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_scrambling", file: !200, line: 214, size: 16, elements: !5112)
!5112 = !{!5113, !5114}
!5113 = !DIDerivedType(tag: DW_TAG_member, name: "supported", scope: !5111, file: !200, line: 218, baseType: !882, size: 8)
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "low_rates", scope: !5111, file: !200, line: 222, baseType: !882, size: 8, offset: 8)
!5115 = !DIDerivedType(tag: DW_TAG_member, name: "y420_vdb_modes", scope: !5103, file: !200, line: 303, baseType: !1035, size: 256, offset: 64)
!5116 = !DIDerivedType(tag: DW_TAG_member, name: "y420_cmdb_modes", scope: !5103, file: !200, line: 311, baseType: !1035, size: 256, offset: 320)
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "y420_dc_modes", scope: !5103, file: !200, line: 314, baseType: !419, size: 8, offset: 576)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5103, file: !200, line: 317, baseType: !419, size: 8, offset: 584)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5103, file: !200, line: 320, baseType: !419, size: 8, offset: 592)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "dsc_cap", scope: !5103, file: !200, line: 323, baseType: !5121, size: 128, offset: 608)
!5121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_hdmi_dsc_cap", file: !200, line: 253, size: 128, elements: !5122)
!5122 = !{!5123, !5124, !5125, !5126, !5127, !5128, !5129, !5130, !5131}
!5123 = !DIDerivedType(tag: DW_TAG_member, name: "v_1p2", scope: !5121, file: !200, line: 255, baseType: !882, size: 8)
!5124 = !DIDerivedType(tag: DW_TAG_member, name: "native_420", scope: !5121, file: !200, line: 258, baseType: !882, size: 8, offset: 8)
!5125 = !DIDerivedType(tag: DW_TAG_member, name: "all_bpp", scope: !5121, file: !200, line: 264, baseType: !882, size: 8, offset: 16)
!5126 = !DIDerivedType(tag: DW_TAG_member, name: "bpc_supported", scope: !5121, file: !200, line: 269, baseType: !419, size: 8, offset: 24)
!5127 = !DIDerivedType(tag: DW_TAG_member, name: "max_slices", scope: !5121, file: !200, line: 272, baseType: !419, size: 8, offset: 32)
!5128 = !DIDerivedType(tag: DW_TAG_member, name: "clk_per_slice", scope: !5121, file: !200, line: 275, baseType: !115, size: 32, offset: 64)
!5129 = !DIDerivedType(tag: DW_TAG_member, name: "max_lanes", scope: !5121, file: !200, line: 278, baseType: !419, size: 8, offset: 96)
!5130 = !DIDerivedType(tag: DW_TAG_member, name: "max_frl_rate_per_lane", scope: !5121, file: !200, line: 281, baseType: !419, size: 8, offset: 104)
!5131 = !DIDerivedType(tag: DW_TAG_member, name: "total_chunk_kbytes", scope: !5121, file: !200, line: 284, baseType: !419, size: 8, offset: 112)
!5132 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop", scope: !5080, file: !200, line: 775, baseType: !882, size: 8, offset: 1216)
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "monitor_range", scope: !5080, file: !200, line: 780, baseType: !5134, size: 32, offset: 1232)
!5134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_monitor_range_info", file: !200, line: 383, size: 32, elements: !5135)
!5135 = !{!5136, !5137}
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "min_vfreq", scope: !5134, file: !200, line: 384, baseType: !429, size: 16)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "max_vfreq", scope: !5134, file: !200, line: 385, baseType: !429, size: 16, offset: 16)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "luminance_range", scope: !5080, file: !200, line: 785, baseType: !5139, size: 64, offset: 1280)
!5139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_luminance_range_info", file: !200, line: 399, size: 64, elements: !5140)
!5140 = !{!5141, !5142}
!5141 = !DIDerivedType(tag: DW_TAG_member, name: "min_luminance", scope: !5139, file: !200, line: 400, baseType: !610, size: 32)
!5142 = !DIDerivedType(tag: DW_TAG_member, name: "max_luminance", scope: !5139, file: !200, line: 401, baseType: !610, size: 32, offset: 32)
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "mso_stream_count", scope: !5080, file: !200, line: 792, baseType: !419, size: 8, offset: 1344)
!5144 = !DIDerivedType(tag: DW_TAG_member, name: "mso_pixel_overlap", scope: !5080, file: !200, line: 797, baseType: !419, size: 8, offset: 1352)
!5145 = !DIDerivedType(tag: DW_TAG_member, name: "max_dsc_bpp", scope: !5080, file: !200, line: 803, baseType: !610, size: 32, offset: 1376)
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "vics", scope: !5080, file: !200, line: 808, baseType: !5147, size: 64, offset: 1408)
!5147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!5148 = !DIDerivedType(tag: DW_TAG_member, name: "vics_len", scope: !5080, file: !200, line: 813, baseType: !115, size: 32, offset: 1472)
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !5080, file: !200, line: 818, baseType: !610, size: 32, offset: 1504)
!5150 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5045, file: !200, line: 1625, baseType: !5151, size: 64, offset: 3136)
!5151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5152, size: 64)
!5152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5153)
!5153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_funcs", file: !200, line: 1034, size: 1024, elements: !5154)
!5154 = !{!5155, !5159, !5163, !5167, !5168, !5172, !5176, !5180, !5181, !5182, !5253, !5257, !5261, !5267, !5301, !5302}
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5153, file: !200, line: 1051, baseType: !5156, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DISubroutineType(types: !5158)
!5158 = !{!115, !5044, !115}
!5159 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5153, file: !200, line: 1063, baseType: !5160, size: 64, offset: 64)
!5160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5161, size: 64)
!5161 = !DISubroutineType(types: !5162)
!5162 = !{null, !5044}
!5163 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !5153, file: !200, line: 1096, baseType: !5164, size: 64, offset: 128)
!5164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5165, size: 64)
!5165 = !DISubroutineType(types: !5166)
!5166 = !{!205, !5044, !882}
!5167 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5153, file: !200, line: 1113, baseType: !5160, size: 64, offset: 192)
!5168 = !DIDerivedType(tag: DW_TAG_member, name: "fill_modes", scope: !5153, file: !200, line: 1138, baseType: !5169, size: 64, offset: 256)
!5169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5170, size: 64)
!5170 = !DISubroutineType(types: !5171)
!5171 = !{!115, !5044, !2024, !2024}
!5172 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5153, file: !200, line: 1154, baseType: !5173, size: 64, offset: 320)
!5173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5174, size: 64)
!5174 = !DISubroutineType(types: !5175)
!5175 = !{!115, !5044, !4968, !4979}
!5176 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5153, file: !200, line: 1173, baseType: !5177, size: 64, offset: 384)
!5177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5178, size: 64)
!5178 = !DISubroutineType(types: !5179)
!5179 = !{!115, !5044}
!5180 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5153, file: !200, line: 1186, baseType: !5160, size: 64, offset: 448)
!5181 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5153, file: !200, line: 1196, baseType: !5160, size: 64, offset: 512)
!5182 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5153, file: !200, line: 1229, baseType: !5183, size: 64, offset: 576)
!5183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5184, size: 64)
!5184 = !DISubroutineType(types: !5185)
!5185 = !{!5186, !5044}
!5186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5187, size: 64)
!5187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_state", file: !200, line: 884, size: 1280, elements: !5188)
!5188 = !{!5189, !5190, !5191, !5194, !5195, !5196, !5210, !5230, !5231, !5232, !5233, !5234, !5235, !5236, !5237, !5240, !5241, !5242, !5243}
!5189 = !DIDerivedType(tag: DW_TAG_member, name: "connector", scope: !5187, file: !200, line: 886, baseType: !5044, size: 64)
!5190 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5187, file: !200, line: 894, baseType: !4946, size: 64, offset: 64)
!5191 = !DIDerivedType(tag: DW_TAG_member, name: "best_encoder", scope: !5187, file: !200, line: 912, baseType: !5192, size: 64, offset: 128)
!5192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5193, size: 64)
!5193 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_encoder", file: !200, line: 41, flags: DIFlagFwdDecl)
!5194 = !DIDerivedType(tag: DW_TAG_member, name: "link_status", scope: !5187, file: !200, line: 918, baseType: !218, size: 32, offset: 192)
!5195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5187, file: !200, line: 921, baseType: !4925, size: 64, offset: 256)
!5196 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5187, file: !200, line: 928, baseType: !5197, size: 64, offset: 320)
!5197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5198, size: 64)
!5198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_commit", file: !4927, line: 72, size: 1152, elements: !5199)
!5199 = !{!5200, !5201, !5202, !5203, !5204, !5205, !5206, !5209}
!5200 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5198, file: !4927, line: 78, baseType: !4946, size: 64)
!5201 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !5198, file: !4927, line: 87, baseType: !357, size: 32, offset: 64)
!5202 = !DIDerivedType(tag: DW_TAG_member, name: "flip_done", scope: !5198, file: !4927, line: 101, baseType: !751, size: 256, offset: 128)
!5203 = !DIDerivedType(tag: DW_TAG_member, name: "hw_done", scope: !5198, file: !4927, line: 119, baseType: !751, size: 256, offset: 384)
!5204 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_done", scope: !5198, file: !4927, line: 133, baseType: !751, size: 256, offset: 640)
!5205 = !DIDerivedType(tag: DW_TAG_member, name: "commit_entry", scope: !5198, file: !4927, line: 141, baseType: !382, size: 128, offset: 896)
!5206 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5198, file: !4927, line: 148, baseType: !5207, size: 64, offset: 1024)
!5207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5208, size: 64)
!5208 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_pending_vblank_event", file: !4948, line: 58, flags: DIFlagFwdDecl)
!5209 = !DIDerivedType(tag: DW_TAG_member, name: "abort_completion", scope: !5198, file: !4927, line: 157, baseType: !882, size: 8, offset: 1088)
!5210 = !DIDerivedType(tag: DW_TAG_member, name: "tv", scope: !5187, file: !200, line: 931, baseType: !5211, size: 448, offset: 384)
!5211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tv_connector_state", file: !200, line: 867, size: 448, elements: !5212)
!5212 = !{!5213, !5214, !5215, !5222, !5223, !5224, !5225, !5226, !5227, !5228, !5229}
!5213 = !DIDerivedType(tag: DW_TAG_member, name: "select_subconnector", scope: !5211, file: !200, line: 868, baseType: !222, size: 32)
!5214 = !DIDerivedType(tag: DW_TAG_member, name: "subconnector", scope: !5211, file: !200, line: 869, baseType: !222, size: 32, offset: 32)
!5215 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5211, file: !200, line: 870, baseType: !5216, size: 128, offset: 64)
!5216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_tv_margins", file: !200, line: 831, size: 128, elements: !5217)
!5217 = !{!5218, !5219, !5220, !5221}
!5218 = !DIDerivedType(tag: DW_TAG_member, name: "bottom", scope: !5216, file: !200, line: 835, baseType: !13, size: 32)
!5219 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !5216, file: !200, line: 840, baseType: !13, size: 32, offset: 32)
!5220 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !5216, file: !200, line: 845, baseType: !13, size: 32, offset: 64)
!5221 = !DIDerivedType(tag: DW_TAG_member, name: "top", scope: !5216, file: !200, line: 850, baseType: !13, size: 32, offset: 96)
!5222 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_mode", scope: !5211, file: !200, line: 871, baseType: !13, size: 32, offset: 192)
!5223 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5211, file: !200, line: 872, baseType: !13, size: 32, offset: 224)
!5224 = !DIDerivedType(tag: DW_TAG_member, name: "brightness", scope: !5211, file: !200, line: 873, baseType: !13, size: 32, offset: 256)
!5225 = !DIDerivedType(tag: DW_TAG_member, name: "contrast", scope: !5211, file: !200, line: 874, baseType: !13, size: 32, offset: 288)
!5226 = !DIDerivedType(tag: DW_TAG_member, name: "flicker_reduction", scope: !5211, file: !200, line: 875, baseType: !13, size: 32, offset: 320)
!5227 = !DIDerivedType(tag: DW_TAG_member, name: "overscan", scope: !5211, file: !200, line: 876, baseType: !13, size: 32, offset: 352)
!5228 = !DIDerivedType(tag: DW_TAG_member, name: "saturation", scope: !5211, file: !200, line: 877, baseType: !13, size: 32, offset: 384)
!5229 = !DIDerivedType(tag: DW_TAG_member, name: "hue", scope: !5211, file: !200, line: 878, baseType: !13, size: 32, offset: 416)
!5230 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_aware", scope: !5187, file: !200, line: 945, baseType: !882, size: 8, offset: 832)
!5231 = !DIDerivedType(tag: DW_TAG_member, name: "picture_aspect_ratio", scope: !5187, file: !200, line: 954, baseType: !190, size: 32, offset: 864)
!5232 = !DIDerivedType(tag: DW_TAG_member, name: "content_type", scope: !5187, file: !200, line: 962, baseType: !13, size: 32, offset: 896)
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type", scope: !5187, file: !200, line: 968, baseType: !13, size: 32, offset: 928)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode", scope: !5187, file: !200, line: 974, baseType: !13, size: 32, offset: 960)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection", scope: !5187, file: !200, line: 980, baseType: !13, size: 32, offset: 992)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace", scope: !5187, file: !200, line: 987, baseType: !238, size: 32, offset: 1024)
!5237 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_job", scope: !5187, file: !200, line: 1000, baseType: !5238, size: 64, offset: 1088)
!5238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5239, size: 64)
!5239 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_writeback_job", file: !200, line: 1000, flags: DIFlagFwdDecl)
!5240 = !DIDerivedType(tag: DW_TAG_member, name: "max_requested_bpc", scope: !5187, file: !200, line: 1006, baseType: !419, size: 8, offset: 1152)
!5241 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc", scope: !5187, file: !200, line: 1012, baseType: !419, size: 8, offset: 1160)
!5242 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state", scope: !5187, file: !200, line: 1018, baseType: !258, size: 32, offset: 1184)
!5243 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata", scope: !5187, file: !200, line: 1024, baseType: !5244, size: 64, offset: 1216)
!5244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5245, size: 64)
!5245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_property_blob", file: !4970, line: 216, size: 704, elements: !5246)
!5246 = !{!5247, !5248, !5249, !5250, !5251, !5252}
!5247 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5245, file: !4970, line: 217, baseType: !4956, size: 256)
!5248 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5245, file: !4970, line: 218, baseType: !352, size: 64, offset: 256)
!5249 = !DIDerivedType(tag: DW_TAG_member, name: "head_global", scope: !5245, file: !4970, line: 219, baseType: !382, size: 128, offset: 320)
!5250 = !DIDerivedType(tag: DW_TAG_member, name: "head_file", scope: !5245, file: !4970, line: 220, baseType: !382, size: 128, offset: 448)
!5251 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !5245, file: !4970, line: 221, baseType: !508, size: 64, offset: 576)
!5252 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !5245, file: !4970, line: 222, baseType: !345, size: 64, offset: 640)
!5253 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5153, file: !200, line: 1239, baseType: !5254, size: 64, offset: 640)
!5254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5255, size: 64)
!5255 = !DISubroutineType(types: !5256)
!5256 = !{null, !5044, !5186}
!5257 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5153, file: !200, line: 1284, baseType: !5258, size: 64, offset: 704)
!5258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5259, size: 64)
!5259 = !DISubroutineType(types: !5260)
!5260 = !{!115, !5044, !5186, !4968, !4979}
!5261 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5153, file: !200, line: 1307, baseType: !5262, size: 64, offset: 768)
!5262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5263, size: 64)
!5263 = !DISubroutineType(types: !5264)
!5264 = !{!115, !5044, !5265, !4968, !4978}
!5265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5266, size: 64)
!5266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5187)
!5267 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5153, file: !200, line: 1321, baseType: !5268, size: 64, offset: 832)
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{null, !5271, !5265}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5272, size: 64)
!5272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !322, line: 76, size: 256, elements: !5273)
!5273 = !{!5274, !5295, !5299, !5300}
!5274 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !5272, file: !322, line: 78, baseType: !5275, size: 64)
!5275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5276, size: 64)
!5276 = !DISubroutineType(types: !5277)
!5277 = !{null, !5271, !5278}
!5278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5279, size: 64)
!5279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !5280, line: 79, size: 128, elements: !5281)
!5280 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5281 = !{!5282, !5283}
!5282 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !5279, file: !5280, line: 80, baseType: !379, size: 64)
!5283 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !5279, file: !5280, line: 81, baseType: !5284, size: 64, offset: 64)
!5284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5285, size: 64)
!5285 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5286, line: 5, baseType: !5287)
!5286 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !5288)
!5288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5289, size: 192, elements: !1610)
!5289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5290)
!5290 = !{!5291, !5292, !5293, !5294}
!5291 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5289, file: !2, baseType: !13, size: 32)
!5292 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5289, file: !2, baseType: !13, size: 32, offset: 32)
!5293 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5289, file: !2, baseType: !345, size: 64, offset: 64)
!5294 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5289, file: !2, baseType: !345, size: 64, offset: 128)
!5295 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !5272, file: !322, line: 79, baseType: !5296, size: 64, offset: 64)
!5296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5297, size: 64)
!5297 = !DISubroutineType(types: !5298)
!5298 = !{null, !5271, !379}
!5299 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !5272, file: !322, line: 80, baseType: !345, size: 64, offset: 128)
!5300 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5272, file: !322, line: 81, baseType: !379, size: 64, offset: 192)
!5301 = !DIDerivedType(tag: DW_TAG_member, name: "oob_hotplug_event", scope: !5153, file: !200, line: 1330, baseType: !5160, size: 64, offset: 896)
!5302 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_init", scope: !5153, file: !200, line: 1337, baseType: !5303, size: 64, offset: 960)
!5303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5304, size: 64)
!5304 = !DISubroutineType(types: !5305)
!5305 = !{null, !5044, !576}
!5306 = !DIDerivedType(tag: DW_TAG_member, name: "edid_blob_ptr", scope: !5045, file: !200, line: 1632, baseType: !5244, size: 64, offset: 3200)
!5307 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !5045, file: !200, line: 1635, baseType: !4963, size: 3136, offset: 3264)
!5308 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !5045, file: !200, line: 1641, baseType: !4968, size: 64, offset: 6400)
!5309 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_capable_property", scope: !5045, file: !200, line: 1652, baseType: !4968, size: 64, offset: 6464)
!5310 = !DIDerivedType(tag: DW_TAG_member, name: "colorspace_property", scope: !5045, file: !200, line: 1658, baseType: !4968, size: 64, offset: 6528)
!5311 = !DIDerivedType(tag: DW_TAG_member, name: "path_blob_ptr", scope: !5045, file: !200, line: 1666, baseType: !5244, size: 64, offset: 6592)
!5312 = !DIDerivedType(tag: DW_TAG_member, name: "max_bpc_property", scope: !5045, file: !200, line: 1672, baseType: !4968, size: 64, offset: 6656)
!5313 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen", scope: !5045, file: !200, line: 1675, baseType: !5314, size: 64, offset: 6720)
!5314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5315, size: 64)
!5315 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_privacy_screen", file: !200, line: 46, flags: DIFlagFwdDecl)
!5316 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_notifier", scope: !5045, file: !200, line: 1678, baseType: !5317, size: 192, offset: 6784)
!5317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !5318, line: 54, size: 192, elements: !5319)
!5318 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!5319 = !{!5320, !5326, !5327}
!5320 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !5317, file: !5318, line: 55, baseType: !5321, size: 64)
!5321 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !5318, line: 51, baseType: !5322)
!5322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5323, size: 64)
!5323 = !DISubroutineType(types: !5324)
!5324 = !{!115, !5325, !511, !345}
!5325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5317, size: 64)
!5326 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5317, file: !5318, line: 56, baseType: !5325, size: 64, offset: 64)
!5327 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !5317, file: !5318, line: 57, baseType: !115, size: 32, offset: 128)
!5328 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_sw_state_property", scope: !5045, file: !200, line: 1684, baseType: !4968, size: 64, offset: 6976)
!5329 = !DIDerivedType(tag: DW_TAG_member, name: "privacy_screen_hw_state_property", scope: !5045, file: !200, line: 1690, baseType: !4968, size: 64, offset: 7040)
!5330 = !DIDerivedType(tag: DW_TAG_member, name: "polled", scope: !5045, file: !200, line: 1717, baseType: !5331, size: 8, offset: 7104)
!5331 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !347, line: 108, baseType: !419)
!5332 = !DIDerivedType(tag: DW_TAG_member, name: "dpms", scope: !5045, file: !200, line: 1725, baseType: !115, size: 32, offset: 7136)
!5333 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !5045, file: !200, line: 1728, baseType: !5334, size: 64, offset: 7168)
!5334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5335, size: 64)
!5335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5336)
!5336 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_connector_helper_funcs", file: !200, line: 37, flags: DIFlagFwdDecl)
!5337 = !DIDerivedType(tag: DW_TAG_member, name: "cmdline_mode", scope: !5045, file: !200, line: 1731, baseType: !5338, size: 768, offset: 7232)
!5338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_cmdline_mode", file: !200, line: 1348, size: 768, elements: !5339)
!5339 = !{!5340, !5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5349, !5350, !5351, !5352, !5353, !5354, !5355, !5356, !5357, !5358}
!5340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5338, file: !200, line: 1354, baseType: !3741, size: 256)
!5341 = !DIDerivedType(tag: DW_TAG_member, name: "specified", scope: !5338, file: !200, line: 1361, baseType: !882, size: 8, offset: 256)
!5342 = !DIDerivedType(tag: DW_TAG_member, name: "refresh_specified", scope: !5338, file: !200, line: 1368, baseType: !882, size: 8, offset: 264)
!5343 = !DIDerivedType(tag: DW_TAG_member, name: "bpp_specified", scope: !5338, file: !200, line: 1375, baseType: !882, size: 8, offset: 272)
!5344 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_clock", scope: !5338, file: !200, line: 1382, baseType: !13, size: 32, offset: 288)
!5345 = !DIDerivedType(tag: DW_TAG_member, name: "xres", scope: !5338, file: !200, line: 1389, baseType: !115, size: 32, offset: 320)
!5346 = !DIDerivedType(tag: DW_TAG_member, name: "yres", scope: !5338, file: !200, line: 1396, baseType: !115, size: 32, offset: 352)
!5347 = !DIDerivedType(tag: DW_TAG_member, name: "bpp", scope: !5338, file: !200, line: 1403, baseType: !115, size: 32, offset: 384)
!5348 = !DIDerivedType(tag: DW_TAG_member, name: "refresh", scope: !5338, file: !200, line: 1410, baseType: !115, size: 32, offset: 416)
!5349 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !5338, file: !200, line: 1417, baseType: !882, size: 8, offset: 448)
!5350 = !DIDerivedType(tag: DW_TAG_member, name: "interlace", scope: !5338, file: !200, line: 1424, baseType: !882, size: 8, offset: 456)
!5351 = !DIDerivedType(tag: DW_TAG_member, name: "cvt", scope: !5338, file: !200, line: 1432, baseType: !882, size: 8, offset: 464)
!5352 = !DIDerivedType(tag: DW_TAG_member, name: "margins", scope: !5338, file: !200, line: 1440, baseType: !882, size: 8, offset: 472)
!5353 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5338, file: !200, line: 1448, baseType: !264, size: 32, offset: 480)
!5354 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_reflection", scope: !5338, file: !200, line: 1458, baseType: !13, size: 32, offset: 512)
!5355 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation", scope: !5338, file: !200, line: 1466, baseType: !270, size: 32, offset: 544)
!5356 = !DIDerivedType(tag: DW_TAG_member, name: "tv_margins", scope: !5338, file: !200, line: 1471, baseType: !5216, size: 128, offset: 576)
!5357 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode", scope: !5338, file: !200, line: 1476, baseType: !277, size: 32, offset: 704)
!5358 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_specified", scope: !5338, file: !200, line: 1483, baseType: !882, size: 8, offset: 736)
!5359 = !DIDerivedType(tag: DW_TAG_member, name: "force", scope: !5045, file: !200, line: 1733, baseType: !264, size: 32, offset: 8000)
!5360 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override", scope: !5045, file: !200, line: 1741, baseType: !5361, size: 64, offset: 8064)
!5361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5362, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5363)
!5363 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_edid", file: !200, line: 1741, flags: DIFlagFwdDecl)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "edid_override_mutex", scope: !5045, file: !200, line: 1746, baseType: !802, size: 256, offset: 8128)
!5365 = !DIDerivedType(tag: DW_TAG_member, name: "epoch_counter", scope: !5045, file: !200, line: 1749, baseType: !614, size: 64, offset: 8384)
!5366 = !DIDerivedType(tag: DW_TAG_member, name: "possible_encoders", scope: !5045, file: !200, line: 1756, baseType: !610, size: 32, offset: 8448)
!5367 = !DIDerivedType(tag: DW_TAG_member, name: "encoder", scope: !5045, file: !200, line: 1764, baseType: !5192, size: 64, offset: 8512)
!5368 = !DIDerivedType(tag: DW_TAG_member, name: "eld", scope: !5045, file: !200, line: 1768, baseType: !5369, size: 1024, offset: 8576)
!5369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5331, size: 1024, elements: !5370)
!5370 = !{!5371}
!5371 = !DISubrange(count: 128)
!5372 = !DIDerivedType(tag: DW_TAG_member, name: "eld_mutex", scope: !5045, file: !200, line: 1770, baseType: !802, size: 256, offset: 9600)
!5373 = !DIDerivedType(tag: DW_TAG_member, name: "latency_present", scope: !5045, file: !200, line: 1773, baseType: !5374, size: 16, offset: 9856)
!5374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 16, elements: !921)
!5375 = !DIDerivedType(tag: DW_TAG_member, name: "video_latency", scope: !5045, file: !200, line: 1778, baseType: !5376, size: 64, offset: 9888)
!5376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !921)
!5377 = !DIDerivedType(tag: DW_TAG_member, name: "audio_latency", scope: !5045, file: !200, line: 1783, baseType: !5376, size: 64, offset: 9952)
!5378 = !DIDerivedType(tag: DW_TAG_member, name: "ddc", scope: !5045, file: !200, line: 1794, baseType: !5379, size: 64, offset: 10048)
!5379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5380, size: 64)
!5380 = !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !200, line: 48, flags: DIFlagFwdDecl)
!5381 = !DIDerivedType(tag: DW_TAG_member, name: "null_edid_counter", scope: !5045, file: !200, line: 1800, baseType: !115, size: 32, offset: 10112)
!5382 = !DIDerivedType(tag: DW_TAG_member, name: "bad_edid_counter", scope: !5045, file: !200, line: 1803, baseType: !13, size: 32, offset: 10144)
!5383 = !DIDerivedType(tag: DW_TAG_member, name: "edid_corrupt", scope: !5045, file: !200, line: 1810, baseType: !882, size: 8, offset: 10176)
!5384 = !DIDerivedType(tag: DW_TAG_member, name: "real_edid_checksum", scope: !5045, file: !200, line: 1816, baseType: !419, size: 8, offset: 10184)
!5385 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !5045, file: !200, line: 1819, baseType: !576, size: 64, offset: 10240)
!5386 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5045, file: !200, line: 1835, baseType: !5186, size: 64, offset: 10304)
!5387 = !DIDerivedType(tag: DW_TAG_member, name: "tile_blob_ptr", scope: !5045, file: !200, line: 1852, baseType: !5244, size: 64, offset: 10368)
!5388 = !DIDerivedType(tag: DW_TAG_member, name: "has_tile", scope: !5045, file: !200, line: 1855, baseType: !882, size: 8, offset: 10432)
!5389 = !DIDerivedType(tag: DW_TAG_member, name: "tile_group", scope: !5045, file: !200, line: 1857, baseType: !5390, size: 64, offset: 10496)
!5390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5391, size: 64)
!5391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_tile_group", file: !200, line: 2058, size: 256, elements: !5392)
!5392 = !{!5393, !5394, !5395, !5396}
!5393 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !5391, file: !200, line: 2059, baseType: !357, size: 32)
!5394 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5391, file: !200, line: 2060, baseType: !352, size: 64, offset: 64)
!5395 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !5391, file: !200, line: 2061, baseType: !115, size: 32, offset: 128)
!5396 = !DIDerivedType(tag: DW_TAG_member, name: "group_data", scope: !5391, file: !200, line: 2062, baseType: !5397, size: 64, offset: 160)
!5397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !419, size: 64, elements: !1525)
!5398 = !DIDerivedType(tag: DW_TAG_member, name: "tile_is_single_monitor", scope: !5045, file: !200, line: 1859, baseType: !882, size: 8, offset: 10560)
!5399 = !DIDerivedType(tag: DW_TAG_member, name: "num_h_tile", scope: !5045, file: !200, line: 1863, baseType: !5331, size: 8, offset: 10568)
!5400 = !DIDerivedType(tag: DW_TAG_member, name: "num_v_tile", scope: !5045, file: !200, line: 1863, baseType: !5331, size: 8, offset: 10576)
!5401 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_loc", scope: !5045, file: !200, line: 1866, baseType: !5331, size: 8, offset: 10584)
!5402 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_loc", scope: !5045, file: !200, line: 1866, baseType: !5331, size: 8, offset: 10592)
!5403 = !DIDerivedType(tag: DW_TAG_member, name: "tile_h_size", scope: !5045, file: !200, line: 1869, baseType: !5404, size: 16, offset: 10608)
!5404 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !347, line: 109, baseType: !429)
!5405 = !DIDerivedType(tag: DW_TAG_member, name: "tile_v_size", scope: !5045, file: !200, line: 1869, baseType: !5404, size: 16, offset: 10624)
!5406 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !5045, file: !200, line: 1878, baseType: !1288, size: 64, offset: 10688)
!5407 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_sink_metadata", scope: !5045, file: !200, line: 1881, baseType: !5408, size: 96, offset: 10752)
!5408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_sink_metadata", file: !191, line: 383, size: 96, elements: !5409)
!5409 = !{!5410, !5411}
!5410 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5408, file: !191, line: 387, baseType: !611, size: 32)
!5411 = !DIDerivedType(tag: DW_TAG_member, scope: !5408, file: !191, line: 391, baseType: !5412, size: 64, offset: 32)
!5412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5408, file: !191, line: 391, size: 64, elements: !5413)
!5413 = !{!5414}
!5414 = !DIDerivedType(tag: DW_TAG_member, name: "hdmi_type1", scope: !5412, file: !191, line: 392, baseType: !5415, size: 64)
!5415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hdr_static_metadata", file: !191, line: 370, size: 64, elements: !5416)
!5416 = !{!5417, !5418, !5419, !5420, !5421}
!5417 = !DIDerivedType(tag: DW_TAG_member, name: "eotf", scope: !5415, file: !191, line: 371, baseType: !421, size: 8)
!5418 = !DIDerivedType(tag: DW_TAG_member, name: "metadata_type", scope: !5415, file: !191, line: 372, baseType: !421, size: 8, offset: 8)
!5419 = !DIDerivedType(tag: DW_TAG_member, name: "max_cll", scope: !5415, file: !191, line: 373, baseType: !430, size: 16, offset: 16)
!5420 = !DIDerivedType(tag: DW_TAG_member, name: "max_fall", scope: !5415, file: !191, line: 374, baseType: !430, size: 16, offset: 32)
!5421 = !DIDerivedType(tag: DW_TAG_member, name: "min_cll", scope: !5415, file: !191, line: 375, baseType: !430, size: 16, offset: 48)
!5422 = !DIDerivedType(tag: DW_TAG_member, name: "num_connectors", scope: !5034, file: !4948, line: 1202, baseType: !508, size: 64, offset: 320)
!5423 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip", scope: !5005, file: !4948, line: 576, baseType: !5424, size: 64, offset: 448)
!5424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5425, size: 64)
!5425 = !DISubroutineType(types: !5426)
!5426 = !{!115, !4946, !4848, !5207, !2024, !4800}
!5427 = !DIDerivedType(tag: DW_TAG_member, name: "page_flip_target", scope: !5005, file: !4948, line: 595, baseType: !5428, size: 64, offset: 512)
!5428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5429, size: 64)
!5429 = !DISubroutineType(types: !5430)
!5430 = !{!115, !4946, !4848, !5207, !2024, !2024, !4800}
!5431 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5005, file: !4948, line: 615, baseType: !5432, size: 64, offset: 576)
!5432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5433, size: 64)
!5433 = !DISubroutineType(types: !5434)
!5434 = !{!115, !4946, !4968, !4979}
!5435 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5005, file: !4948, line: 649, baseType: !5436, size: 64, offset: 640)
!5436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5437, size: 64)
!5437 = !DISubroutineType(types: !5438)
!5438 = !{!5439, !4946}
!5439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5440, size: 64)
!5440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_state", file: !4948, line: 81, size: 2688, elements: !5441)
!5441 = !{!5442, !5443, !5444, !5445, !5446, !5447, !5448, !5449, !5450, !5451, !5452, !5453, !5454, !5455, !5456, !5457, !5458, !5459, !5460, !5461, !5462, !5463, !5464, !5465, !5466, !5467, !5468}
!5442 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !5440, file: !4948, line: 83, baseType: !4946, size: 64)
!5443 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !5440, file: !4948, line: 90, baseType: !882, size: 8, offset: 64)
!5444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !5440, file: !4948, line: 105, baseType: !882, size: 8, offset: 72)
!5445 = !DIDerivedType(tag: DW_TAG_member, name: "planes_changed", scope: !5440, file: !4948, line: 111, baseType: !882, size: 1, offset: 80, flags: DIFlagBitField, extraData: i64 80)
!5446 = !DIDerivedType(tag: DW_TAG_member, name: "mode_changed", scope: !5440, file: !4948, line: 123, baseType: !882, size: 1, offset: 81, flags: DIFlagBitField, extraData: i64 80)
!5447 = !DIDerivedType(tag: DW_TAG_member, name: "active_changed", scope: !5440, file: !4948, line: 130, baseType: !882, size: 1, offset: 82, flags: DIFlagBitField, extraData: i64 80)
!5448 = !DIDerivedType(tag: DW_TAG_member, name: "connectors_changed", scope: !5440, file: !4948, line: 141, baseType: !882, size: 1, offset: 83, flags: DIFlagBitField, extraData: i64 80)
!5449 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_changed", scope: !5440, file: !4948, line: 147, baseType: !882, size: 1, offset: 84, flags: DIFlagBitField, extraData: i64 80)
!5450 = !DIDerivedType(tag: DW_TAG_member, name: "color_mgmt_changed", scope: !5440, file: !4948, line: 153, baseType: !882, size: 1, offset: 85, flags: DIFlagBitField, extraData: i64 80)
!5451 = !DIDerivedType(tag: DW_TAG_member, name: "no_vblank", scope: !5440, file: !4948, line: 189, baseType: !882, size: 1, offset: 86, flags: DIFlagBitField, extraData: i64 80)
!5452 = !DIDerivedType(tag: DW_TAG_member, name: "plane_mask", scope: !5440, file: !4948, line: 195, baseType: !610, size: 32, offset: 96)
!5453 = !DIDerivedType(tag: DW_TAG_member, name: "connector_mask", scope: !5440, file: !4948, line: 201, baseType: !610, size: 32, offset: 128)
!5454 = !DIDerivedType(tag: DW_TAG_member, name: "encoder_mask", scope: !5440, file: !4948, line: 207, baseType: !610, size: 32, offset: 160)
!5455 = !DIDerivedType(tag: DW_TAG_member, name: "adjusted_mode", scope: !5440, file: !4948, line: 222, baseType: !4885, size: 960, offset: 192)
!5456 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !5440, file: !4948, line: 239, baseType: !4885, size: 960, offset: 1152)
!5457 = !DIDerivedType(tag: DW_TAG_member, name: "mode_blob", scope: !5440, file: !4948, line: 245, baseType: !5244, size: 64, offset: 2112)
!5458 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut", scope: !5440, file: !4948, line: 254, baseType: !5244, size: 64, offset: 2176)
!5459 = !DIDerivedType(tag: DW_TAG_member, name: "ctm", scope: !5440, file: !4948, line: 262, baseType: !5244, size: 64, offset: 2240)
!5460 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut", scope: !5440, file: !4948, line: 275, baseType: !5244, size: 64, offset: 2304)
!5461 = !DIDerivedType(tag: DW_TAG_member, name: "target_vblank", scope: !5440, file: !4948, line: 283, baseType: !610, size: 32, offset: 2368)
!5462 = !DIDerivedType(tag: DW_TAG_member, name: "async_flip", scope: !5440, file: !4948, line: 291, baseType: !882, size: 8, offset: 2400)
!5463 = !DIDerivedType(tag: DW_TAG_member, name: "vrr_enabled", scope: !5440, file: !4948, line: 300, baseType: !882, size: 8, offset: 2408)
!5464 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_active", scope: !5440, file: !4948, line: 311, baseType: !882, size: 8, offset: 2416)
!5465 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !5440, file: !4948, line: 318, baseType: !287, size: 32, offset: 2432)
!5466 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !5440, file: !4948, line: 375, baseType: !5207, size: 64, offset: 2496)
!5467 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5440, file: !4948, line: 384, baseType: !5197, size: 64, offset: 2560)
!5468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5440, file: !4948, line: 387, baseType: !4925, size: 64, offset: 2624)
!5469 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5005, file: !4948, line: 659, baseType: !5470, size: 64, offset: 704)
!5470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5471, size: 64)
!5471 = !DISubroutineType(types: !5472)
!5472 = !{null, !4946, !5439}
!5473 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5005, file: !4948, line: 704, baseType: !5474, size: 64, offset: 768)
!5474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5475, size: 64)
!5475 = !DISubroutineType(types: !5476)
!5476 = !{!115, !4946, !5439, !4968, !4979}
!5477 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5005, file: !4948, line: 726, baseType: !5478, size: 64, offset: 832)
!5478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5479, size: 64)
!5479 = !DISubroutineType(types: !5480)
!5480 = !{!115, !4946, !5481, !4968, !4978}
!5481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5482, size: 64)
!5482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5440)
!5483 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5005, file: !4948, line: 744, baseType: !5484, size: 64, offset: 896)
!5484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5485, size: 64)
!5485 = !DISubroutineType(types: !5486)
!5486 = !{!115, !4946}
!5487 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5005, file: !4948, line: 755, baseType: !5008, size: 64, offset: 960)
!5488 = !DIDerivedType(tag: DW_TAG_member, name: "set_crc_source", scope: !5005, file: !4948, line: 784, baseType: !5489, size: 64, offset: 1024)
!5489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5490, size: 64)
!5490 = !DISubroutineType(types: !5491)
!5491 = !{!115, !4946, !379}
!5492 = !DIDerivedType(tag: DW_TAG_member, name: "verify_crc_source", scope: !5005, file: !4948, line: 800, baseType: !5493, size: 64, offset: 1088)
!5493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5494, size: 64)
!5494 = !DISubroutineType(types: !5495)
!5495 = !{!115, !4946, !379, !5496}
!5496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!5497 = !DIDerivedType(tag: DW_TAG_member, name: "get_crc_sources", scope: !5005, file: !4948, line: 822, baseType: !5498, size: 64, offset: 1152)
!5498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5499, size: 64)
!5499 = !DISubroutineType(types: !5500)
!5500 = !{!5501, !4946, !5496}
!5501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5502, size: 64)
!5502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!5503 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5005, file: !4948, line: 834, baseType: !5504, size: 64, offset: 1216)
!5504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5505, size: 64)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{null, !5271, !5481}
!5507 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_counter", scope: !5005, file: !4948, line: 861, baseType: !5508, size: 64, offset: 1280)
!5508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5509, size: 64)
!5509 = !DISubroutineType(types: !5510)
!5510 = !{!610, !4946}
!5511 = !DIDerivedType(tag: DW_TAG_member, name: "enable_vblank", scope: !5005, file: !4948, line: 874, baseType: !5484, size: 64, offset: 1344)
!5512 = !DIDerivedType(tag: DW_TAG_member, name: "disable_vblank", scope: !5005, file: !4948, line: 882, baseType: !5008, size: 64, offset: 1408)
!5513 = !DIDerivedType(tag: DW_TAG_member, name: "get_vblank_timestamp", scope: !5005, file: !4948, line: 920, baseType: !5514, size: 64, offset: 1472)
!5514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5515, size: 64)
!5515 = !DISubroutineType(types: !5516)
!5516 = !{!882, !4946, !931, !5517, !882}
!5517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!5518 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_size", scope: !4947, file: !4948, line: 1068, baseType: !2024, size: 32, offset: 3328)
!5519 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_store", scope: !4947, file: !4948, line: 1077, baseType: !5520, size: 64, offset: 3392)
!5520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5404, size: 64)
!5521 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4947, file: !4948, line: 1080, baseType: !5522, size: 64, offset: 3456)
!5522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5523, size: 64)
!5523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5524)
!5524 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_helper_funcs", file: !4948, line: 63, flags: DIFlagFwdDecl)
!5525 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !4947, file: !4948, line: 1083, baseType: !4963, size: 3136, offset: 3520)
!5526 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !4947, file: !4948, line: 1089, baseType: !4968, size: 64, offset: 6656)
!5527 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4947, file: !4948, line: 1104, baseType: !5439, size: 64, offset: 6720)
!5528 = !DIDerivedType(tag: DW_TAG_member, name: "commit_list", scope: !4947, file: !4948, line: 1121, baseType: !382, size: 128, offset: 6784)
!5529 = !DIDerivedType(tag: DW_TAG_member, name: "commit_lock", scope: !4947, file: !4948, line: 1128, baseType: !395, size: 32, offset: 6912)
!5530 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_entry", scope: !4947, file: !4948, line: 1135, baseType: !576, size: 64, offset: 6976)
!5531 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !4947, file: !4948, line: 1142, baseType: !5532, size: 576, offset: 7040)
!5532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc", file: !5533, line: 53, size: 576, elements: !5534)
!5533 = !DIFile(filename: "./include/drm/drm_debugfs_crc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e277ec0ede400e3d94103804613a92f2")
!5534 = !{!5535, !5536, !5537, !5538, !5539, !5549, !5550, !5551, !5552}
!5535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5532, file: !5533, line: 54, baseType: !395, size: 32)
!5536 = !DIDerivedType(tag: DW_TAG_member, name: "source", scope: !5532, file: !5533, line: 55, baseType: !379, size: 64, offset: 64)
!5537 = !DIDerivedType(tag: DW_TAG_member, name: "opened", scope: !5532, file: !5533, line: 56, baseType: !882, size: 8, offset: 128)
!5538 = !DIDerivedType(tag: DW_TAG_member, name: "overflow", scope: !5532, file: !5533, line: 56, baseType: !882, size: 8, offset: 136)
!5539 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5532, file: !5533, line: 57, baseType: !5540, size: 64, offset: 192)
!5540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5541, size: 64)
!5541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_crtc_crc_entry", file: !5533, line: 33, size: 384, elements: !5542)
!5542 = !{!5543, !5544, !5545}
!5543 = !DIDerivedType(tag: DW_TAG_member, name: "has_frame_counter", scope: !5541, file: !5533, line: 34, baseType: !882, size: 8)
!5544 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !5541, file: !5533, line: 35, baseType: !2024, size: 32, offset: 32)
!5545 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !5541, file: !5533, line: 36, baseType: !5546, size: 320, offset: 64)
!5546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2024, size: 320, elements: !5547)
!5547 = !{!5548}
!5548 = !DISubrange(count: 10)
!5549 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5532, file: !5533, line: 58, baseType: !115, size: 32, offset: 256)
!5550 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5532, file: !5533, line: 58, baseType: !115, size: 32, offset: 288)
!5551 = !DIDerivedType(tag: DW_TAG_member, name: "values_cnt", scope: !5532, file: !5533, line: 59, baseType: !508, size: 64, offset: 320)
!5552 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !5532, file: !5533, line: 60, baseType: !1337, size: 192, offset: 384)
!5553 = !DIDerivedType(tag: DW_TAG_member, name: "fence_context", scope: !4947, file: !4948, line: 1149, baseType: !13, size: 32, offset: 7616)
!5554 = !DIDerivedType(tag: DW_TAG_member, name: "fence_lock", scope: !4947, file: !4948, line: 1156, baseType: !395, size: 32, offset: 7648)
!5555 = !DIDerivedType(tag: DW_TAG_member, name: "fence_seqno", scope: !4947, file: !4948, line: 1163, baseType: !511, size: 64, offset: 7680)
!5556 = !DIDerivedType(tag: DW_TAG_member, name: "timeline_name", scope: !4947, file: !4948, line: 1170, baseType: !3741, size: 256, offset: 7744)
!5557 = !DIDerivedType(tag: DW_TAG_member, name: "self_refresh_data", scope: !4947, file: !4948, line: 1177, baseType: !5558, size: 64, offset: 8000)
!5558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5559, size: 64)
!5559 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_self_refresh_data", file: !4948, line: 44, flags: DIFlagFwdDecl)
!5560 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !4942, file: !288, line: 70, baseType: !4848, size: 64, offset: 128)
!5561 = !DIDerivedType(tag: DW_TAG_member, name: "fence", scope: !4942, file: !288, line: 83, baseType: !5562, size: 64, offset: 192)
!5562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5563, size: 64)
!5563 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_fence", file: !288, line: 83, flags: DIFlagFwdDecl)
!5564 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_x", scope: !4942, file: !288, line: 92, baseType: !2001, size: 32, offset: 256)
!5565 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_y", scope: !4942, file: !288, line: 99, baseType: !2001, size: 32, offset: 288)
!5566 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_w", scope: !4942, file: !288, line: 103, baseType: !2024, size: 32, offset: 320)
!5567 = !DIDerivedType(tag: DW_TAG_member, name: "crtc_h", scope: !4942, file: !288, line: 103, baseType: !2024, size: 32, offset: 352)
!5568 = !DIDerivedType(tag: DW_TAG_member, name: "src_x", scope: !4942, file: !288, line: 109, baseType: !2024, size: 32, offset: 384)
!5569 = !DIDerivedType(tag: DW_TAG_member, name: "src_y", scope: !4942, file: !288, line: 114, baseType: !2024, size: 32, offset: 416)
!5570 = !DIDerivedType(tag: DW_TAG_member, name: "src_h", scope: !4942, file: !288, line: 117, baseType: !2024, size: 32, offset: 448)
!5571 = !DIDerivedType(tag: DW_TAG_member, name: "src_w", scope: !4942, file: !288, line: 117, baseType: !2024, size: 32, offset: 480)
!5572 = !DIDerivedType(tag: DW_TAG_member, name: "alpha", scope: !4942, file: !288, line: 125, baseType: !429, size: 16, offset: 512)
!5573 = !DIDerivedType(tag: DW_TAG_member, name: "pixel_blend_mode", scope: !4942, file: !288, line: 133, baseType: !5404, size: 16, offset: 528)
!5574 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !4942, file: !288, line: 140, baseType: !13, size: 32, offset: 544)
!5575 = !DIDerivedType(tag: DW_TAG_member, name: "zpos", scope: !4942, file: !288, line: 155, baseType: !13, size: 32, offset: 576)
!5576 = !DIDerivedType(tag: DW_TAG_member, name: "normalized_zpos", scope: !4942, file: !288, line: 164, baseType: !13, size: 32, offset: 608)
!5577 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding", scope: !4942, file: !288, line: 171, baseType: !292, size: 32, offset: 640)
!5578 = !DIDerivedType(tag: DW_TAG_member, name: "color_range", scope: !4942, file: !288, line: 178, baseType: !299, size: 32, offset: 672)
!5579 = !DIDerivedType(tag: DW_TAG_member, name: "fb_damage_clips", scope: !4942, file: !288, line: 191, baseType: !5244, size: 64, offset: 704)
!5580 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_damage_clips", scope: !4942, file: !288, line: 201, baseType: !882, size: 8, offset: 768)
!5581 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !4942, file: !288, line: 223, baseType: !5582, size: 128, offset: 800)
!5582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_rect", file: !5583, line: 46, size: 128, elements: !5584)
!5583 = !DIFile(filename: "./include/drm/drm_rect.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16c059bec9955b5d3fc8d798e393cc6b")
!5584 = !{!5585, !5586, !5587, !5588}
!5585 = !DIDerivedType(tag: DW_TAG_member, name: "x1", scope: !5582, file: !5583, line: 47, baseType: !115, size: 32)
!5586 = !DIDerivedType(tag: DW_TAG_member, name: "y1", scope: !5582, file: !5583, line: 47, baseType: !115, size: 32, offset: 32)
!5587 = !DIDerivedType(tag: DW_TAG_member, name: "x2", scope: !5582, file: !5583, line: 47, baseType: !115, size: 32, offset: 64)
!5588 = !DIDerivedType(tag: DW_TAG_member, name: "y2", scope: !5582, file: !5583, line: 47, baseType: !115, size: 32, offset: 96)
!5589 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !4942, file: !288, line: 223, baseType: !5582, size: 128, offset: 928)
!5590 = !DIDerivedType(tag: DW_TAG_member, name: "visible", scope: !4942, file: !288, line: 231, baseType: !882, size: 8, offset: 1056)
!5591 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter", scope: !4942, file: !288, line: 238, baseType: !287, size: 32, offset: 1088)
!5592 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !4942, file: !288, line: 246, baseType: !5197, size: 64, offset: 1152)
!5593 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !4942, file: !288, line: 249, baseType: !4925, size: 64, offset: 1216)
!5594 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !4937, file: !4927, line: 162, baseType: !4941, size: 64, offset: 128)
!5595 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !4937, file: !4927, line: 162, baseType: !4941, size: 64, offset: 192)
!5596 = !DIDerivedType(tag: DW_TAG_member, name: "crtcs", scope: !4926, file: !4927, line: 402, baseType: !5597, size: 64, offset: 256)
!5597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5598, size: 64)
!5598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_crtcs_state", file: !4927, line: 165, size: 448, elements: !5599)
!5599 = !{!5600, !5601, !5602, !5603, !5604, !5605, !5606}
!5600 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5598, file: !4927, line: 166, baseType: !4946, size: 64)
!5601 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5598, file: !4927, line: 167, baseType: !5439, size: 64, offset: 64)
!5602 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5598, file: !4927, line: 167, baseType: !5439, size: 64, offset: 128)
!5603 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5598, file: !4927, line: 167, baseType: !5439, size: 64, offset: 192)
!5604 = !DIDerivedType(tag: DW_TAG_member, name: "commit", scope: !5598, file: !4927, line: 177, baseType: !5197, size: 64, offset: 256)
!5605 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5598, file: !4927, line: 179, baseType: !1758, size: 64, offset: 320)
!5606 = !DIDerivedType(tag: DW_TAG_member, name: "last_vblank_count", scope: !5598, file: !4927, line: 180, baseType: !614, size: 64, offset: 384)
!5607 = !DIDerivedType(tag: DW_TAG_member, name: "num_connector", scope: !4926, file: !4927, line: 403, baseType: !115, size: 32, offset: 320)
!5608 = !DIDerivedType(tag: DW_TAG_member, name: "connectors", scope: !4926, file: !4927, line: 404, baseType: !5609, size: 64, offset: 384)
!5609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5610, size: 64)
!5610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_connnectors_state", file: !4927, line: 183, size: 320, elements: !5611)
!5611 = !{!5612, !5613, !5614, !5615, !5616}
!5612 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5610, file: !4927, line: 184, baseType: !5044, size: 64)
!5613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5610, file: !4927, line: 185, baseType: !5186, size: 64, offset: 64)
!5614 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5610, file: !4927, line: 185, baseType: !5186, size: 64, offset: 128)
!5615 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5610, file: !4927, line: 185, baseType: !5186, size: 64, offset: 192)
!5616 = !DIDerivedType(tag: DW_TAG_member, name: "out_fence_ptr", scope: !5610, file: !4927, line: 193, baseType: !1758, size: 64, offset: 256)
!5617 = !DIDerivedType(tag: DW_TAG_member, name: "num_private_objs", scope: !4926, file: !4927, line: 405, baseType: !115, size: 32, offset: 448)
!5618 = !DIDerivedType(tag: DW_TAG_member, name: "private_objs", scope: !4926, file: !4927, line: 406, baseType: !5619, size: 64, offset: 512)
!5619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5620, size: 64)
!5620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__drm_private_objs_state", file: !4927, line: 343, size: 256, elements: !5621)
!5621 = !{!5622, !5653, !5654, !5655}
!5622 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !5620, file: !4927, line: 344, baseType: !5623, size: 64)
!5623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5624, size: 64)
!5624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_obj", file: !4927, line: 286, size: 704, elements: !5625)
!5625 = !{!5626, !5627, !5628, !5634}
!5626 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5624, file: !4927, line: 291, baseType: !382, size: 128)
!5627 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !5624, file: !4927, line: 296, baseType: !4781, size: 448, offset: 128)
!5628 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5624, file: !4927, line: 301, baseType: !5629, size: 64, offset: 576)
!5629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5630, size: 64)
!5630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state", file: !4927, line: 331, size: 128, elements: !5631)
!5631 = !{!5632, !5633}
!5632 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5630, file: !4927, line: 335, baseType: !4925, size: 64)
!5633 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !5630, file: !4927, line: 340, baseType: !5623, size: 64, offset: 64)
!5634 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !5624, file: !4927, line: 309, baseType: !5635, size: 64, offset: 640)
!5635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5636, size: 64)
!5636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5637)
!5637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_private_state_funcs", file: !4927, line: 209, size: 192, elements: !5638)
!5638 = !{!5639, !5643, !5647}
!5639 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5637, file: !4927, line: 221, baseType: !5640, size: 64)
!5640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5641, size: 64)
!5641 = !DISubroutineType(types: !5642)
!5642 = !{!5629, !5623}
!5643 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5637, file: !4927, line: 228, baseType: !5644, size: 64, offset: 64)
!5644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5645, size: 64)
!5645 = !DISubroutineType(types: !5646)
!5646 = !{null, !5623, !5629}
!5647 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5637, file: !4927, line: 240, baseType: !5648, size: 64, offset: 128)
!5648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5649, size: 64)
!5649 = !DISubroutineType(types: !5650)
!5650 = !{null, !5271, !5651}
!5651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5652, size: 64)
!5652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5630)
!5653 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !5620, file: !4927, line: 345, baseType: !5629, size: 64, offset: 64)
!5654 = !DIDerivedType(tag: DW_TAG_member, name: "old_state", scope: !5620, file: !4927, line: 345, baseType: !5629, size: 64, offset: 128)
!5655 = !DIDerivedType(tag: DW_TAG_member, name: "new_state", scope: !5620, file: !4927, line: 345, baseType: !5629, size: 64, offset: 192)
!5656 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_ctx", scope: !4926, file: !4927, line: 408, baseType: !4800, size: 64, offset: 576)
!5657 = !DIDerivedType(tag: DW_TAG_member, name: "fake_commit", scope: !4926, file: !4927, line: 420, baseType: !5197, size: 64, offset: 640)
!5658 = !DIDerivedType(tag: DW_TAG_member, name: "commit_work", scope: !4926, file: !4927, line: 428, baseType: !1062, size: 256, offset: 704)
!5659 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_commit", scope: !4842, file: !4777, line: 283, baseType: !5660, size: 64, offset: 320)
!5660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5661, size: 64)
!5661 = !DISubroutineType(types: !5662)
!5662 = !{!115, !352, !4925, !882}
!5663 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_alloc", scope: !4842, file: !4777, line: 302, baseType: !5664, size: 64, offset: 384)
!5664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5665, size: 64)
!5665 = !DISubroutineType(types: !5666)
!5666 = !{!4925, !352}
!5667 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_clear", scope: !4842, file: !4777, line: 323, baseType: !5668, size: 64, offset: 448)
!5668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5669, size: 64)
!5669 = !DISubroutineType(types: !5670)
!5670 = !{null, !4925}
!5671 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_state_free", scope: !4842, file: !4777, line: 338, baseType: !5668, size: 64, offset: 512)
!5672 = !DIDerivedType(tag: DW_TAG_member, name: "poll_enabled", scope: !4776, file: !4777, line: 546, baseType: !882, size: 8, offset: 3520)
!5673 = !DIDerivedType(tag: DW_TAG_member, name: "poll_running", scope: !4776, file: !4777, line: 547, baseType: !882, size: 8, offset: 3528)
!5674 = !DIDerivedType(tag: DW_TAG_member, name: "delayed_event", scope: !4776, file: !4777, line: 548, baseType: !882, size: 8, offset: 3536)
!5675 = !DIDerivedType(tag: DW_TAG_member, name: "output_poll_work", scope: !4776, file: !4777, line: 549, baseType: !1119, size: 704, offset: 3584)
!5676 = !DIDerivedType(tag: DW_TAG_member, name: "blob_lock", scope: !4776, file: !4777, line: 557, baseType: !802, size: 256, offset: 4288)
!5677 = !DIDerivedType(tag: DW_TAG_member, name: "property_blob_list", scope: !4776, file: !4777, line: 565, baseType: !382, size: 128, offset: 4544)
!5678 = !DIDerivedType(tag: DW_TAG_member, name: "edid_property", scope: !4776, file: !4777, line: 573, baseType: !4968, size: 64, offset: 4672)
!5679 = !DIDerivedType(tag: DW_TAG_member, name: "dpms_property", scope: !4776, file: !4777, line: 578, baseType: !4968, size: 64, offset: 4736)
!5680 = !DIDerivedType(tag: DW_TAG_member, name: "path_property", scope: !4776, file: !4777, line: 583, baseType: !4968, size: 64, offset: 4800)
!5681 = !DIDerivedType(tag: DW_TAG_member, name: "tile_property", scope: !4776, file: !4777, line: 589, baseType: !4968, size: 64, offset: 4864)
!5682 = !DIDerivedType(tag: DW_TAG_member, name: "link_status_property", scope: !4776, file: !4777, line: 594, baseType: !4968, size: 64, offset: 4928)
!5683 = !DIDerivedType(tag: DW_TAG_member, name: "plane_type_property", scope: !4776, file: !4777, line: 599, baseType: !4968, size: 64, offset: 4992)
!5684 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_x", scope: !4776, file: !4777, line: 604, baseType: !4968, size: 64, offset: 5056)
!5685 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_y", scope: !4776, file: !4777, line: 609, baseType: !4968, size: 64, offset: 5120)
!5686 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_w", scope: !4776, file: !4777, line: 614, baseType: !4968, size: 64, offset: 5184)
!5687 = !DIDerivedType(tag: DW_TAG_member, name: "prop_src_h", scope: !4776, file: !4777, line: 619, baseType: !4968, size: 64, offset: 5248)
!5688 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_x", scope: !4776, file: !4777, line: 624, baseType: !4968, size: 64, offset: 5312)
!5689 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_y", scope: !4776, file: !4777, line: 629, baseType: !4968, size: 64, offset: 5376)
!5690 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_w", scope: !4776, file: !4777, line: 634, baseType: !4968, size: 64, offset: 5440)
!5691 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_h", scope: !4776, file: !4777, line: 639, baseType: !4968, size: 64, offset: 5504)
!5692 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_id", scope: !4776, file: !4777, line: 644, baseType: !4968, size: 64, offset: 5568)
!5693 = !DIDerivedType(tag: DW_TAG_member, name: "prop_in_fence_fd", scope: !4776, file: !4777, line: 649, baseType: !4968, size: 64, offset: 5632)
!5694 = !DIDerivedType(tag: DW_TAG_member, name: "prop_out_fence_ptr", scope: !4776, file: !4777, line: 655, baseType: !4968, size: 64, offset: 5696)
!5695 = !DIDerivedType(tag: DW_TAG_member, name: "prop_crtc_id", scope: !4776, file: !4777, line: 660, baseType: !4968, size: 64, offset: 5760)
!5696 = !DIDerivedType(tag: DW_TAG_member, name: "prop_fb_damage_clips", scope: !4776, file: !4777, line: 669, baseType: !4968, size: 64, offset: 5824)
!5697 = !DIDerivedType(tag: DW_TAG_member, name: "prop_active", scope: !4776, file: !4777, line: 675, baseType: !4968, size: 64, offset: 5888)
!5698 = !DIDerivedType(tag: DW_TAG_member, name: "prop_mode_id", scope: !4776, file: !4777, line: 681, baseType: !4968, size: 64, offset: 5952)
!5699 = !DIDerivedType(tag: DW_TAG_member, name: "prop_vrr_enabled", scope: !4776, file: !4777, line: 686, baseType: !4968, size: 64, offset: 6016)
!5700 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_subconnector_property", scope: !4776, file: !4777, line: 692, baseType: !4968, size: 64, offset: 6080)
!5701 = !DIDerivedType(tag: DW_TAG_member, name: "dvi_i_select_subconnector_property", scope: !4776, file: !4777, line: 697, baseType: !4968, size: 64, offset: 6144)
!5702 = !DIDerivedType(tag: DW_TAG_member, name: "dp_subconnector_property", scope: !4776, file: !4777, line: 703, baseType: !4968, size: 64, offset: 6208)
!5703 = !DIDerivedType(tag: DW_TAG_member, name: "tv_subconnector_property", scope: !4776, file: !4777, line: 709, baseType: !4968, size: 64, offset: 6272)
!5704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_select_subconnector_property", scope: !4776, file: !4777, line: 714, baseType: !4968, size: 64, offset: 6336)
!5705 = !DIDerivedType(tag: DW_TAG_member, name: "legacy_tv_mode_property", scope: !4776, file: !4777, line: 722, baseType: !4968, size: 64, offset: 6400)
!5706 = !DIDerivedType(tag: DW_TAG_member, name: "tv_mode_property", scope: !4776, file: !4777, line: 728, baseType: !4968, size: 64, offset: 6464)
!5707 = !DIDerivedType(tag: DW_TAG_member, name: "tv_left_margin_property", scope: !4776, file: !4777, line: 734, baseType: !4968, size: 64, offset: 6528)
!5708 = !DIDerivedType(tag: DW_TAG_member, name: "tv_right_margin_property", scope: !4776, file: !4777, line: 739, baseType: !4968, size: 64, offset: 6592)
!5709 = !DIDerivedType(tag: DW_TAG_member, name: "tv_top_margin_property", scope: !4776, file: !4777, line: 744, baseType: !4968, size: 64, offset: 6656)
!5710 = !DIDerivedType(tag: DW_TAG_member, name: "tv_bottom_margin_property", scope: !4776, file: !4777, line: 749, baseType: !4968, size: 64, offset: 6720)
!5711 = !DIDerivedType(tag: DW_TAG_member, name: "tv_brightness_property", scope: !4776, file: !4777, line: 754, baseType: !4968, size: 64, offset: 6784)
!5712 = !DIDerivedType(tag: DW_TAG_member, name: "tv_contrast_property", scope: !4776, file: !4777, line: 759, baseType: !4968, size: 64, offset: 6848)
!5713 = !DIDerivedType(tag: DW_TAG_member, name: "tv_flicker_reduction_property", scope: !4776, file: !4777, line: 764, baseType: !4968, size: 64, offset: 6912)
!5714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_overscan_property", scope: !4776, file: !4777, line: 769, baseType: !4968, size: 64, offset: 6976)
!5715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_saturation_property", scope: !4776, file: !4777, line: 774, baseType: !4968, size: 64, offset: 7040)
!5716 = !DIDerivedType(tag: DW_TAG_member, name: "tv_hue_property", scope: !4776, file: !4777, line: 778, baseType: !4968, size: 64, offset: 7104)
!5717 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_mode_property", scope: !4776, file: !4777, line: 784, baseType: !4968, size: 64, offset: 7168)
!5718 = !DIDerivedType(tag: DW_TAG_member, name: "aspect_ratio_property", scope: !4776, file: !4777, line: 789, baseType: !4968, size: 64, offset: 7232)
!5719 = !DIDerivedType(tag: DW_TAG_member, name: "content_type_property", scope: !4776, file: !4777, line: 794, baseType: !4968, size: 64, offset: 7296)
!5720 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_property", scope: !4776, file: !4777, line: 799, baseType: !4968, size: 64, offset: 7360)
!5721 = !DIDerivedType(tag: DW_TAG_member, name: "degamma_lut_size_property", scope: !4776, file: !4777, line: 804, baseType: !4968, size: 64, offset: 7424)
!5722 = !DIDerivedType(tag: DW_TAG_member, name: "ctm_property", scope: !4776, file: !4777, line: 810, baseType: !4968, size: 64, offset: 7488)
!5723 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_property", scope: !4776, file: !4777, line: 816, baseType: !4968, size: 64, offset: 7552)
!5724 = !DIDerivedType(tag: DW_TAG_member, name: "gamma_lut_size_property", scope: !4776, file: !4777, line: 821, baseType: !4968, size: 64, offset: 7616)
!5725 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_x_property", scope: !4776, file: !4777, line: 827, baseType: !4968, size: 64, offset: 7680)
!5726 = !DIDerivedType(tag: DW_TAG_member, name: "suggested_y_property", scope: !4776, file: !4777, line: 832, baseType: !4968, size: 64, offset: 7744)
!5727 = !DIDerivedType(tag: DW_TAG_member, name: "non_desktop_property", scope: !4776, file: !4777, line: 839, baseType: !4968, size: 64, offset: 7808)
!5728 = !DIDerivedType(tag: DW_TAG_member, name: "panel_orientation_property", scope: !4776, file: !4777, line: 846, baseType: !4968, size: 64, offset: 7872)
!5729 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_fb_id_property", scope: !4776, file: !4777, line: 853, baseType: !4968, size: 64, offset: 7936)
!5730 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_pixel_formats_property", scope: !4776, file: !4777, line: 861, baseType: !4968, size: 64, offset: 8000)
!5731 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_out_fence_ptr_property", scope: !4776, file: !4777, line: 869, baseType: !4968, size: 64, offset: 8064)
!5732 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_output_metadata_property", scope: !4776, file: !4777, line: 876, baseType: !4968, size: 64, offset: 8128)
!5733 = !DIDerivedType(tag: DW_TAG_member, name: "content_protection_property", scope: !4776, file: !4777, line: 882, baseType: !4968, size: 64, offset: 8192)
!5734 = !DIDerivedType(tag: DW_TAG_member, name: "hdcp_content_type_property", scope: !4776, file: !4777, line: 888, baseType: !4968, size: 64, offset: 8256)
!5735 = !DIDerivedType(tag: DW_TAG_member, name: "preferred_depth", scope: !4776, file: !4777, line: 891, baseType: !2024, size: 32, offset: 8320)
!5736 = !DIDerivedType(tag: DW_TAG_member, name: "prefer_shadow", scope: !4776, file: !4777, line: 891, baseType: !2024, size: 32, offset: 8352)
!5737 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_xbgr_30bpp", scope: !4776, file: !4777, line: 899, baseType: !882, size: 8, offset: 8384)
!5738 = !DIDerivedType(tag: DW_TAG_member, name: "quirk_addfb_prefer_host_byte_order", scope: !4776, file: !4777, line: 913, baseType: !882, size: 8, offset: 8392)
!5739 = !DIDerivedType(tag: DW_TAG_member, name: "async_page_flip", scope: !4776, file: !4777, line: 919, baseType: !882, size: 8, offset: 8400)
!5740 = !DIDerivedType(tag: DW_TAG_member, name: "fb_modifiers_not_supported", scope: !4776, file: !4777, line: 929, baseType: !882, size: 8, offset: 8408)
!5741 = !DIDerivedType(tag: DW_TAG_member, name: "normalize_zpos", scope: !4776, file: !4777, line: 937, baseType: !882, size: 8, offset: 8416)
!5742 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers_property", scope: !4776, file: !4777, line: 943, baseType: !4968, size: 64, offset: 8448)
!5743 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_width", scope: !4776, file: !4777, line: 946, baseType: !2024, size: 32, offset: 8512)
!5744 = !DIDerivedType(tag: DW_TAG_member, name: "cursor_height", scope: !4776, file: !4777, line: 946, baseType: !2024, size: 32, offset: 8544)
!5745 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_state", scope: !4776, file: !4777, line: 955, baseType: !4925, size: 64, offset: 8576)
!5746 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !4776, file: !4777, line: 957, baseType: !5747, size: 64, offset: 8640)
!5747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5748, size: 64)
!5748 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5749)
!5749 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_mode_config_helper_funcs", file: !4777, line: 957, flags: DIFlagFwdDecl)
!5750 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_lock", scope: !353, file: !305, line: 285, baseType: !802, size: 256, offset: 11648)
!5751 = !DIDerivedType(tag: DW_TAG_member, name: "object_name_idr", scope: !353, file: !305, line: 288, baseType: !1355, size: 192, offset: 11904)
!5752 = !DIDerivedType(tag: DW_TAG_member, name: "vma_offset_manager", scope: !353, file: !305, line: 291, baseType: !5753, size: 64, offset: 12096)
!5753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5754, size: 64)
!5754 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vma_offset_manager", file: !305, line: 16, flags: DIFlagFwdDecl)
!5755 = !DIDerivedType(tag: DW_TAG_member, name: "vram_mm", scope: !353, file: !305, line: 294, baseType: !5756, size: 64, offset: 12160)
!5756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5757, size: 64)
!5757 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_vram_mm", file: !305, line: 17, flags: DIFlagFwdDecl)
!5758 = !DIDerivedType(tag: DW_TAG_member, name: "switch_power_state", scope: !353, file: !305, line: 304, baseType: !304, size: 32, offset: 12224)
!5759 = !DIDerivedType(tag: DW_TAG_member, name: "fb_helper", scope: !353, file: !305, line: 312, baseType: !5760, size: 64, offset: 12288)
!5760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5761, size: 64)
!5761 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_fb_helper", file: !305, line: 18, flags: DIFlagFwdDecl)
!5762 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_mutex", scope: !353, file: !305, line: 319, baseType: !802, size: 256, offset: 12352)
!5763 = !DIDerivedType(tag: DW_TAG_member, name: "debugfs_list", scope: !353, file: !305, line: 327, baseType: !382, size: 128, offset: 12608)
!5764 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !349, file: !288, line: 614, baseType: !382, size: 128, offset: 64)
!5765 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !349, file: !288, line: 617, baseType: !461, size: 64, offset: 192)
!5766 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !349, file: !288, line: 628, baseType: !4781, size: 448, offset: 256)
!5767 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !288, line: 631, baseType: !4956, size: 256, offset: 704)
!5768 = !DIDerivedType(tag: DW_TAG_member, name: "possible_crtcs", scope: !349, file: !288, line: 637, baseType: !2024, size: 32, offset: 960)
!5769 = !DIDerivedType(tag: DW_TAG_member, name: "format_types", scope: !349, file: !288, line: 639, baseType: !5770, size: 64, offset: 1024)
!5770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!5771 = !DIDerivedType(tag: DW_TAG_member, name: "format_count", scope: !349, file: !288, line: 641, baseType: !13, size: 32, offset: 1088)
!5772 = !DIDerivedType(tag: DW_TAG_member, name: "format_default", scope: !349, file: !288, line: 646, baseType: !882, size: 8, offset: 1120)
!5773 = !DIDerivedType(tag: DW_TAG_member, name: "modifiers", scope: !349, file: !288, line: 649, baseType: !4978, size: 64, offset: 1152)
!5774 = !DIDerivedType(tag: DW_TAG_member, name: "modifier_count", scope: !349, file: !288, line: 651, baseType: !13, size: 32, offset: 1216)
!5775 = !DIDerivedType(tag: DW_TAG_member, name: "crtc", scope: !349, file: !288, line: 660, baseType: !4946, size: 64, offset: 1280)
!5776 = !DIDerivedType(tag: DW_TAG_member, name: "fb", scope: !349, file: !288, line: 669, baseType: !4848, size: 64, offset: 1344)
!5777 = !DIDerivedType(tag: DW_TAG_member, name: "old_fb", scope: !349, file: !288, line: 677, baseType: !4848, size: 64, offset: 1408)
!5778 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !349, file: !288, line: 680, baseType: !5779, size: 64, offset: 1472)
!5779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5780, size: 64)
!5780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5781)
!5781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_funcs", file: !288, line: 279, size: 832, elements: !5782)
!5782 = !{!5783, !5787, !5791, !5795, !5796, !5800, !5804, !5808, !5812, !5818, !5822, !5823, !5827}
!5783 = !DIDerivedType(tag: DW_TAG_member, name: "update_plane", scope: !5781, file: !288, line: 306, baseType: !5784, size: 64)
!5784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5785, size: 64)
!5785 = !DISubroutineType(types: !5786)
!5786 = !{!115, !348, !4946, !4848, !115, !115, !13, !13, !2024, !2024, !2024, !2024, !4800}
!5787 = !DIDerivedType(tag: DW_TAG_member, name: "disable_plane", scope: !5781, file: !288, line: 329, baseType: !5788, size: 64, offset: 64)
!5788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5789, size: 64)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{!115, !348, !4800}
!5791 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !5781, file: !288, line: 339, baseType: !5792, size: 64, offset: 128)
!5792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5793, size: 64)
!5793 = !DISubroutineType(types: !5794)
!5794 = !{null, !348}
!5795 = !DIDerivedType(tag: DW_TAG_member, name: "reset", scope: !5781, file: !288, line: 351, baseType: !5792, size: 64, offset: 192)
!5796 = !DIDerivedType(tag: DW_TAG_member, name: "set_property", scope: !5781, file: !288, line: 367, baseType: !5797, size: 64, offset: 256)
!5797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5798, size: 64)
!5798 = !DISubroutineType(types: !5799)
!5799 = !{!115, !348, !4968, !4979}
!5800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_duplicate_state", scope: !5781, file: !288, line: 401, baseType: !5801, size: 64, offset: 320)
!5801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5802, size: 64)
!5802 = !DISubroutineType(types: !5803)
!5803 = !{!4941, !348}
!5804 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_destroy_state", scope: !5781, file: !288, line: 411, baseType: !5805, size: 64, offset: 384)
!5805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5806, size: 64)
!5806 = !DISubroutineType(types: !5807)
!5807 = !{null, !348, !4941}
!5808 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_set_property", scope: !5781, file: !288, line: 456, baseType: !5809, size: 64, offset: 448)
!5809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5810, size: 64)
!5810 = !DISubroutineType(types: !5811)
!5811 = !{!115, !348, !4941, !4968, !4979}
!5812 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_get_property", scope: !5781, file: !288, line: 479, baseType: !5813, size: 64, offset: 512)
!5813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5814, size: 64)
!5814 = !DISubroutineType(types: !5815)
!5815 = !{!115, !348, !5816, !4968, !4978}
!5816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5817, size: 64)
!5817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4942)
!5818 = !DIDerivedType(tag: DW_TAG_member, name: "late_register", scope: !5781, file: !288, line: 496, baseType: !5819, size: 64, offset: 576)
!5819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5820, size: 64)
!5820 = !DISubroutineType(types: !5821)
!5821 = !{!115, !348}
!5822 = !DIDerivedType(tag: DW_TAG_member, name: "early_unregister", scope: !5781, file: !288, line: 507, baseType: !5792, size: 64, offset: 640)
!5823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_print_state", scope: !5781, file: !288, line: 518, baseType: !5824, size: 64, offset: 704)
!5824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5825, size: 64)
!5825 = !DISubroutineType(types: !5826)
!5826 = !{null, !5271, !5816}
!5827 = !DIDerivedType(tag: DW_TAG_member, name: "format_mod_supported", scope: !5781, file: !288, line: 537, baseType: !5828, size: 64, offset: 768)
!5828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5829, size: 64)
!5829 = !DISubroutineType(types: !5830)
!5830 = !{!882, !348, !2024, !4979}
!5831 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !349, file: !288, line: 683, baseType: !4963, size: 3136, offset: 1536)
!5832 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !349, file: !288, line: 686, baseType: !311, size: 32, offset: 4672)
!5833 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !349, file: !288, line: 692, baseType: !13, size: 32, offset: 4704)
!5834 = !DIDerivedType(tag: DW_TAG_member, name: "helper_private", scope: !349, file: !288, line: 695, baseType: !5835, size: 64, offset: 4736)
!5835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5836, size: 64)
!5836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5837)
!5837 = !DICompositeType(tag: DW_TAG_structure_type, name: "drm_plane_helper_funcs", file: !288, line: 695, flags: DIFlagFwdDecl)
!5838 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !288, line: 710, baseType: !4941, size: 64, offset: 4800)
!5839 = !DIDerivedType(tag: DW_TAG_member, name: "alpha_property", scope: !349, file: !288, line: 717, baseType: !4968, size: 64, offset: 4864)
!5840 = !DIDerivedType(tag: DW_TAG_member, name: "zpos_property", scope: !349, file: !288, line: 723, baseType: !4968, size: 64, offset: 4928)
!5841 = !DIDerivedType(tag: DW_TAG_member, name: "rotation_property", scope: !349, file: !288, line: 729, baseType: !4968, size: 64, offset: 4992)
!5842 = !DIDerivedType(tag: DW_TAG_member, name: "blend_mode_property", scope: !349, file: !288, line: 737, baseType: !4968, size: 64, offset: 5056)
!5843 = !DIDerivedType(tag: DW_TAG_member, name: "color_encoding_property", scope: !349, file: !288, line: 746, baseType: !4968, size: 64, offset: 5120)
!5844 = !DIDerivedType(tag: DW_TAG_member, name: "color_range_property", scope: !349, file: !288, line: 754, baseType: !4968, size: 64, offset: 5184)
!5845 = !DIDerivedType(tag: DW_TAG_member, name: "scaling_filter_property", scope: !349, file: !288, line: 760, baseType: !4968, size: 64, offset: 5248)
!5846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4941, size: 64)
!5847 = !{!0, !7, !5848, !5853, !5856, !5861, !5863, !5865, !5867, !5898, !5903, !5905, !5907, !5909, !5914, !5916, !5918, !5920, !5922, !5927, !5929, !5952, !5957, !5959, !5964, !5969, !5971}
!5848 = !DIGlobalVariableExpression(var: !5849, expr: !DIExpression())
!5849 = distinct !DIGlobalVariable(scope: null, file: !2, line: 277, type: !5850, isLocal: true, isDefinition: true)
!5850 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5851)
!5851 = !{!5852}
!5852 = !DISubrange(count: 9)
!5853 = !DIGlobalVariableExpression(var: !5854, expr: !DIExpression())
!5854 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !5855, isLocal: true, isDefinition: true)
!5855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !5547)
!5856 = !DIGlobalVariableExpression(var: !5857, expr: !DIExpression())
!5857 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !5858, isLocal: true, isDefinition: true)
!5858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !5859)
!5859 = !{!5860}
!5860 = !DISubrange(count: 11)
!5861 = !DIGlobalVariableExpression(var: !5862, expr: !DIExpression())
!5862 = distinct !DIGlobalVariable(scope: null, file: !2, line: 280, type: !5858, isLocal: true, isDefinition: true)
!5863 = !DIGlobalVariableExpression(var: !5864, expr: !DIExpression())
!5864 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !5855, isLocal: true, isDefinition: true)
!5865 = !DIGlobalVariableExpression(var: !5866, expr: !DIExpression())
!5866 = distinct !DIGlobalVariable(scope: null, file: !2, line: 282, type: !5855, isLocal: true, isDefinition: true)
!5867 = !DIGlobalVariableExpression(var: !5868, expr: !DIExpression())
!5868 = distinct !DIGlobalVariable(name: "props", scope: !5869, file: !2, line: 276, type: !5892, isLocal: true, isDefinition: true)
!5869 = distinct !DISubprogram(name: "drm_plane_create_rotation_property", scope: !2, file: !2, line: 272, type: !5870, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5872)
!5870 = !DISubroutineType(types: !5871)
!5871 = !{!115, !348, !13, !13}
!5872 = !{!5873, !5874, !5875, !5876, !5877, !5879, !5882, !5884, !5887, !5889}
!5873 = !DILocalVariable(name: "plane", arg: 1, scope: !5869, file: !2, line: 272, type: !348)
!5874 = !DILocalVariable(name: "rotation", arg: 2, scope: !5869, file: !2, line: 273, type: !13)
!5875 = !DILocalVariable(name: "supported_rotations", arg: 3, scope: !5869, file: !2, line: 274, type: !13)
!5876 = !DILocalVariable(name: "prop", scope: !5869, file: !2, line: 284, type: !4968)
!5877 = !DILocalVariable(name: "__ret_warn_on", scope: !5878, file: !2, line: 286, type: !115)
!5878 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 286, column: 2)
!5879 = !DILocalVariable(name: "__flags", scope: !5880, file: !2, line: 286, type: !115)
!5880 = distinct !DILexicalBlock(scope: !5881, file: !2, line: 286, column: 2)
!5881 = distinct !DILexicalBlock(scope: !5878, file: !2, line: 286, column: 2)
!5882 = !DILocalVariable(name: "__ret_warn_on", scope: !5883, file: !2, line: 287, type: !115)
!5883 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 287, column: 2)
!5884 = !DILocalVariable(name: "__flags", scope: !5885, file: !2, line: 287, type: !115)
!5885 = distinct !DILexicalBlock(scope: !5886, file: !2, line: 287, column: 2)
!5886 = distinct !DILexicalBlock(scope: !5883, file: !2, line: 287, column: 2)
!5887 = !DILocalVariable(name: "__ret_warn_on", scope: !5888, file: !2, line: 288, type: !115)
!5888 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 288, column: 2)
!5889 = !DILocalVariable(name: "__flags", scope: !5890, file: !2, line: 288, type: !115)
!5890 = distinct !DILexicalBlock(scope: !5891, file: !2, line: 288, column: 2)
!5891 = distinct !DILexicalBlock(scope: !5888, file: !2, line: 288, column: 2)
!5892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5893, size: 768, elements: !5)
!5893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5894)
!5894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_prop_enum_list", file: !4970, line: 225, size: 128, elements: !5895)
!5895 = !{!5896, !5897}
!5896 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5894, file: !4970, line: 226, baseType: !115, size: 32)
!5897 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5894, file: !4970, line: 227, baseType: !379, size: 64, offset: 64)
!5898 = !DIGlobalVariableExpression(var: !5899, expr: !DIExpression())
!5899 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !5900, isLocal: true, isDefinition: true)
!5900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !5901)
!5901 = !{!5902}
!5902 = !DISubrange(count: 28)
!5903 = !DIGlobalVariableExpression(var: !5904, expr: !DIExpression())
!5904 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !5850, isLocal: true, isDefinition: true)
!5905 = !DIGlobalVariableExpression(var: !5906, expr: !DIExpression())
!5906 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_plane_create_rotation_property309", scope: !9, file: !2, line: 305, type: !345, isLocal: true, isDefinition: true)
!5907 = !DIGlobalVariableExpression(var: !5908, expr: !DIExpression())
!5908 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_rotation_simplify310", scope: !9, file: !2, line: 337, type: !345, isLocal: true, isDefinition: true)
!5909 = !DIGlobalVariableExpression(var: !5910, expr: !DIExpression())
!5910 = distinct !DIGlobalVariable(scope: null, file: !2, line: 375, type: !5911, isLocal: true, isDefinition: true)
!5911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5912)
!5912 = !{!5913}
!5913 = !DISubrange(count: 5)
!5914 = !DIGlobalVariableExpression(var: !5915, expr: !DIExpression())
!5915 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_plane_create_zpos_property311", scope: !9, file: !2, line: 390, type: !345, isLocal: true, isDefinition: true)
!5916 = !DIGlobalVariableExpression(var: !5917, expr: !DIExpression())
!5917 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_plane_create_zpos_immutable_property312", scope: !9, file: !2, line: 429, type: !345, isLocal: true, isDefinition: true)
!5918 = !DIGlobalVariableExpression(var: !5919, expr: !DIExpression())
!5919 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_atomic_normalize_zpos313", scope: !9, file: !2, line: 540, type: !345, isLocal: true, isDefinition: true)
!5920 = !DIGlobalVariableExpression(var: !5921, expr: !DIExpression())
!5921 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !5911, isLocal: true, isDefinition: true)
!5922 = !DIGlobalVariableExpression(var: !5923, expr: !DIExpression())
!5923 = distinct !DIGlobalVariable(scope: null, file: !2, line: 578, type: !5924, isLocal: true, isDefinition: true)
!5924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !5925)
!5925 = !{!5926}
!5926 = !DISubrange(count: 15)
!5927 = !DIGlobalVariableExpression(var: !5928, expr: !DIExpression())
!5928 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !5850, isLocal: true, isDefinition: true)
!5929 = !DIGlobalVariableExpression(var: !5930, expr: !DIExpression())
!5930 = distinct !DIGlobalVariable(name: "props", scope: !5931, file: !2, line: 576, type: !5951, isLocal: true, isDefinition: true)
!5931 = distinct !DISubprogram(name: "drm_plane_create_blend_mode_property", scope: !2, file: !2, line: 571, type: !5932, scopeLine: 573, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5934)
!5932 = !DISubroutineType(types: !5933)
!5933 = !{!115, !348, !13}
!5934 = !{!5935, !5936, !5937, !5938, !5939, !5940, !5941, !5944, !5947}
!5935 = !DILocalVariable(name: "plane", arg: 1, scope: !5931, file: !2, line: 571, type: !348)
!5936 = !DILocalVariable(name: "supported_modes", arg: 2, scope: !5931, file: !2, line: 572, type: !13)
!5937 = !DILocalVariable(name: "dev", scope: !5931, file: !2, line: 574, type: !352)
!5938 = !DILocalVariable(name: "prop", scope: !5931, file: !2, line: 575, type: !4968)
!5939 = !DILocalVariable(name: "valid_mode_mask", scope: !5931, file: !2, line: 581, type: !13)
!5940 = !DILocalVariable(name: "i", scope: !5931, file: !2, line: 584, type: !115)
!5941 = !DILocalVariable(name: "__ret_warn_on", scope: !5942, file: !2, line: 586, type: !115)
!5942 = distinct !DILexicalBlock(scope: !5943, file: !2, line: 586, column: 6)
!5943 = distinct !DILexicalBlock(scope: !5931, file: !2, line: 586, column: 6)
!5944 = !DILocalVariable(name: "__flags", scope: !5945, file: !2, line: 586, type: !115)
!5945 = distinct !DILexicalBlock(scope: !5946, file: !2, line: 586, column: 6)
!5946 = distinct !DILexicalBlock(scope: !5942, file: !2, line: 586, column: 6)
!5947 = !DILocalVariable(name: "ret", scope: !5948, file: !2, line: 597, type: !115)
!5948 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 596, column: 42)
!5949 = distinct !DILexicalBlock(scope: !5950, file: !2, line: 596, column: 2)
!5950 = distinct !DILexicalBlock(scope: !5931, file: !2, line: 596, column: 2)
!5951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5893, size: 384, elements: !462)
!5952 = !DIGlobalVariableExpression(var: !5953, expr: !DIExpression())
!5953 = distinct !DIGlobalVariable(scope: null, file: !2, line: 591, type: !5954, isLocal: true, isDefinition: true)
!5954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !5955)
!5955 = !{!5956}
!5956 = !DISubrange(count: 17)
!5957 = !DIGlobalVariableExpression(var: !5958, expr: !DIExpression())
!5958 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_plane_create_blend_mode_property314", scope: !9, file: !2, line: 617, type: !345, isLocal: true, isDefinition: true)
!5959 = !DIGlobalVariableExpression(var: !5960, expr: !DIExpression())
!5960 = distinct !DIGlobalVariable(scope: null, file: !2, line: 453, type: !5961, isLocal: true, isDefinition: true)
!5961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !5962)
!5962 = !{!5963}
!5963 = !DISubrange(count: 49)
!5964 = !DIGlobalVariableExpression(var: !5965, expr: !DIExpression())
!5965 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !5966, isLocal: true, isDefinition: true)
!5966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !5967)
!5967 = !{!5968}
!5968 = !DISubrange(count: 40)
!5969 = !DIGlobalVariableExpression(var: !5970, expr: !DIExpression())
!5970 = distinct !DIGlobalVariable(scope: null, file: !2, line: 482, type: !5966, isLocal: true, isDefinition: true)
!5971 = !DIGlobalVariableExpression(var: !5972, expr: !DIExpression())
!5972 = distinct !DIGlobalVariable(scope: null, file: !335, line: 480, type: !5973, isLocal: true, isDefinition: true)
!5973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5974)
!5974 = !{!5975}
!5975 = !DISubrange(count: 21)
!5976 = !{i32 7, !"Dwarf Version", i32 5}
!5977 = !{i32 2, !"Debug Info Version", i32 3}
!5978 = !{i32 1, !"wchar_size", i32 2}
!5979 = !{i32 8, !"cf-protection-branch", i32 1}
!5980 = !{i32 4, !"function_return_thunk_extern", i32 1}
!5981 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!5982 = !{i32 1, !"Code Model", i32 2}
!5983 = !{i32 1, !"override-stack-alignment", i32 8}
!5984 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!5985 = distinct !DISubprogram(name: "drm_plane_create_alpha_property", scope: !2, file: !2, line: 219, type: !5820, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !5986)
!5986 = !{!5987, !5988}
!5987 = !DILocalVariable(name: "plane", arg: 1, scope: !5985, file: !2, line: 219, type: !348)
!5988 = !DILocalVariable(name: "prop", scope: !5985, file: !2, line: 221, type: !4968)
!5989 = !DILocation(line: 219, column: 55, scope: !5985)
!5990 = !DILocation(line: 221, column: 2, scope: !5985)
!5991 = !DILocation(line: 221, column: 23, scope: !5985)
!5992 = !DILocation(line: 223, column: 35, scope: !5985)
!5993 = !DILocation(line: 223, column: 42, scope: !5985)
!5994 = !DILocation(line: 223, column: 9, scope: !5985)
!5995 = !DILocation(line: 223, column: 7, scope: !5985)
!5996 = !DILocation(line: 225, column: 7, scope: !5997)
!5997 = distinct !DILexicalBlock(scope: !5985, file: !2, line: 225, column: 6)
!5998 = !DILocation(line: 225, column: 6, scope: !5985)
!5999 = !DILocation(line: 226, column: 3, scope: !5997)
!6000 = !DILocation(line: 228, column: 30, scope: !5985)
!6001 = !DILocation(line: 228, column: 37, scope: !5985)
!6002 = !DILocation(line: 228, column: 43, scope: !5985)
!6003 = !DILocation(line: 228, column: 2, scope: !5985)
!6004 = !DILocation(line: 229, column: 26, scope: !5985)
!6005 = !DILocation(line: 229, column: 2, scope: !5985)
!6006 = !DILocation(line: 229, column: 9, scope: !5985)
!6007 = !DILocation(line: 229, column: 24, scope: !5985)
!6008 = !DILocation(line: 231, column: 6, scope: !6009)
!6009 = distinct !DILexicalBlock(scope: !5985, file: !2, line: 231, column: 6)
!6010 = !DILocation(line: 231, column: 13, scope: !6009)
!6011 = !DILocation(line: 231, column: 6, scope: !5985)
!6012 = !DILocation(line: 232, column: 3, scope: !6009)
!6013 = !DILocation(line: 232, column: 10, scope: !6009)
!6014 = !DILocation(line: 232, column: 17, scope: !6009)
!6015 = !DILocation(line: 232, column: 23, scope: !6009)
!6016 = !DILocation(line: 234, column: 2, scope: !5985)
!6017 = !DILocation(line: 235, column: 1, scope: !5985)
!6018 = !DISubprogram(name: "drm_property_create_range", scope: !4970, file: !4970, line: 262, type: !6019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6019 = !DISubroutineType(types: !6020)
!6020 = !{!4968, !352, !610, !379, !4979, !4979}
!6021 = !DISubprogram(name: "drm_object_attach_property", scope: !4957, file: !4957, line: 137, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !6024, !4968, !4979}
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4956, size: 64)
!6025 = !DILocation(line: 272, column: 58, scope: !5869)
!6026 = !DILocation(line: 273, column: 25, scope: !5869)
!6027 = !DILocation(line: 274, column: 25, scope: !5869)
!6028 = !DILocation(line: 284, column: 2, scope: !5869)
!6029 = !DILocation(line: 284, column: 23, scope: !5869)
!6030 = !DILocation(line: 286, column: 2, scope: !5878)
!6031 = !DILocation(line: 286, column: 2, scope: !5881)
!6032 = !DILocation(line: 286, column: 2, scope: !5880)
!6033 = !DILocation(line: 286, column: 2, scope: !6034)
!6034 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 286, column: 2)
!6035 = !DILocation(line: 286, column: 2, scope: !6036)
!6036 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 286, column: 2)
!6037 = !{i64 2155374521, i64 2155374550, i64 2155374596, i64 2155374654, i64 2155374708, i64 2155374762, i64 2155374817, i64 2155374848, i64 2155375156, i64 2155375162, i64 2155375209, i64 2155375232, i64 2155375258}
!6038 = !DILocation(line: 286, column: 2, scope: !6039)
!6039 = distinct !DILexicalBlock(scope: !5880, file: !2, line: 286, column: 2)
!6040 = !DILocation(line: 286, column: 2, scope: !5869)
!6041 = !DILocation(line: 287, column: 2, scope: !5883)
!6042 = !DILocation(line: 287, column: 2, scope: !5886)
!6043 = !DILocation(line: 287, column: 2, scope: !5885)
!6044 = !DILocation(line: 287, column: 2, scope: !6045)
!6045 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 287, column: 2)
!6046 = !DILocation(line: 287, column: 2, scope: !6047)
!6047 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 287, column: 2)
!6048 = !{i64 2155376208, i64 2155376237, i64 2155376283, i64 2155376341, i64 2155376395, i64 2155376449, i64 2155376504, i64 2155376535, i64 2155376843, i64 2155376849, i64 2155376896, i64 2155376919, i64 2155376945}
!6049 = !DILocation(line: 287, column: 2, scope: !6050)
!6050 = distinct !DILexicalBlock(scope: !5885, file: !2, line: 287, column: 2)
!6051 = !DILocation(line: 287, column: 2, scope: !5869)
!6052 = !DILocation(line: 288, column: 2, scope: !5888)
!6053 = !DILocation(line: 288, column: 2, scope: !5891)
!6054 = !DILocation(line: 288, column: 2, scope: !5890)
!6055 = !DILocation(line: 288, column: 2, scope: !6056)
!6056 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 288, column: 2)
!6057 = !DILocation(line: 288, column: 2, scope: !6058)
!6058 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 288, column: 2)
!6059 = !{i64 2155377730, i64 2155377759, i64 2155377805, i64 2155377863, i64 2155377917, i64 2155377971, i64 2155378026, i64 2155378057, i64 2155378365, i64 2155378371, i64 2155378418, i64 2155378441, i64 2155378467}
!6060 = !DILocation(line: 288, column: 2, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !5890, file: !2, line: 288, column: 2)
!6062 = !DILocation(line: 288, column: 2, scope: !5869)
!6063 = !DILocation(line: 290, column: 37, scope: !5869)
!6064 = !DILocation(line: 290, column: 44, scope: !5869)
!6065 = !DILocation(line: 292, column: 9, scope: !5869)
!6066 = !DILocation(line: 290, column: 9, scope: !5869)
!6067 = !DILocation(line: 290, column: 7, scope: !5869)
!6068 = !DILocation(line: 293, column: 7, scope: !6069)
!6069 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 293, column: 6)
!6070 = !DILocation(line: 293, column: 6, scope: !5869)
!6071 = !DILocation(line: 294, column: 3, scope: !6069)
!6072 = !DILocation(line: 296, column: 30, scope: !5869)
!6073 = !DILocation(line: 296, column: 37, scope: !5869)
!6074 = !DILocation(line: 296, column: 43, scope: !5869)
!6075 = !DILocation(line: 296, column: 49, scope: !5869)
!6076 = !DILocation(line: 296, column: 2, scope: !5869)
!6077 = !DILocation(line: 298, column: 6, scope: !6078)
!6078 = distinct !DILexicalBlock(scope: !5869, file: !2, line: 298, column: 6)
!6079 = !DILocation(line: 298, column: 13, scope: !6078)
!6080 = !DILocation(line: 298, column: 6, scope: !5869)
!6081 = !DILocation(line: 299, column: 28, scope: !6078)
!6082 = !DILocation(line: 299, column: 3, scope: !6078)
!6083 = !DILocation(line: 299, column: 10, scope: !6078)
!6084 = !DILocation(line: 299, column: 17, scope: !6078)
!6085 = !DILocation(line: 299, column: 26, scope: !6078)
!6086 = !DILocation(line: 301, column: 29, scope: !5869)
!6087 = !DILocation(line: 301, column: 2, scope: !5869)
!6088 = !DILocation(line: 301, column: 9, scope: !5869)
!6089 = !DILocation(line: 301, column: 27, scope: !5869)
!6090 = !DILocation(line: 303, column: 2, scope: !5869)
!6091 = !DILocation(line: 304, column: 1, scope: !5869)
!6092 = distinct !DISubprogram(name: "is_power_of_2", scope: !6093, file: !6093, line: 45, type: !6094, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6096)
!6093 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c147744b0ec822ab26cfdb78fa4c3998")
!6094 = !DISubroutineType(types: !6095)
!6095 = !{!882, !511}
!6096 = !{!6097}
!6097 = !DILocalVariable(name: "n", arg: 1, scope: !6092, file: !6093, line: 45, type: !511)
!6098 = !DILocation(line: 45, column: 34, scope: !6092)
!6099 = !DILocation(line: 47, column: 10, scope: !6092)
!6100 = !DILocation(line: 47, column: 12, scope: !6092)
!6101 = !DILocation(line: 47, column: 17, scope: !6092)
!6102 = !DILocation(line: 47, column: 22, scope: !6092)
!6103 = !DILocation(line: 47, column: 27, scope: !6092)
!6104 = !DILocation(line: 47, column: 29, scope: !6092)
!6105 = !DILocation(line: 47, column: 24, scope: !6092)
!6106 = !DILocation(line: 47, column: 35, scope: !6092)
!6107 = !DILocation(line: 0, scope: !6092)
!6108 = !DILocation(line: 47, column: 2, scope: !6092)
!6109 = !DISubprogram(name: "drm_property_create_bitmask", scope: !4970, file: !4970, line: 257, type: !6110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6110 = !DISubroutineType(types: !6111)
!6111 = !{!4968, !352, !610, !379, !6112, !115, !4979}
!6112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5893, size: 64)
!6113 = distinct !DISubprogram(name: "drm_rotation_simplify", scope: !2, file: !2, line: 325, type: !6114, scopeLine: 327, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6116)
!6114 = !DISubroutineType(types: !6115)
!6115 = !{!13, !13, !13}
!6116 = !{!6117, !6118}
!6117 = !DILocalVariable(name: "rotation", arg: 1, scope: !6113, file: !2, line: 325, type: !13)
!6118 = !DILocalVariable(name: "supported_rotations", arg: 2, scope: !6113, file: !2, line: 326, type: !13)
!6119 = !DILocation(line: 325, column: 49, scope: !6113)
!6120 = !DILocation(line: 326, column: 21, scope: !6113)
!6121 = !DILocation(line: 328, column: 6, scope: !6122)
!6122 = distinct !DILexicalBlock(scope: !6113, file: !2, line: 328, column: 6)
!6123 = !DILocation(line: 328, column: 18, scope: !6122)
!6124 = !DILocation(line: 328, column: 17, scope: !6122)
!6125 = !DILocation(line: 328, column: 15, scope: !6122)
!6126 = !DILocation(line: 328, column: 6, scope: !6113)
!6127 = !DILocation(line: 329, column: 12, scope: !6128)
!6128 = distinct !DILexicalBlock(scope: !6122, file: !2, line: 328, column: 39)
!6129 = !DILocation(line: 330, column: 15, scope: !6128)
!6130 = !DILocation(line: 330, column: 24, scope: !6128)
!6131 = !DILocation(line: 330, column: 14, scope: !6128)
!6132 = !DILocation(line: 331, column: 8, scope: !6128)
!6133 = !DILocation(line: 330, column: 49, scope: !6128)
!6134 = !DILocation(line: 330, column: 12, scope: !6128)
!6135 = !DILocation(line: 333, column: 2, scope: !6128)
!6136 = !DILocation(line: 335, column: 9, scope: !6113)
!6137 = !DILocation(line: 335, column: 2, scope: !6113)
!6138 = distinct !DISubprogram(name: "variable_ffs", scope: !6139, file: !6139, line: 305, type: !3370, scopeLine: 306, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6140)
!6139 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!6140 = !{!6141, !6142}
!6141 = !DILocalVariable(name: "x", arg: 1, scope: !6138, file: !6139, line: 305, type: !115)
!6142 = !DILocalVariable(name: "r", scope: !6138, file: !6139, line: 307, type: !115)
!6143 = !DILocation(line: 305, column: 45, scope: !6138)
!6144 = !DILocation(line: 307, column: 2, scope: !6138)
!6145 = !DILocation(line: 307, column: 6, scope: !6138)
!6146 = !DILocation(line: 321, column: 14, scope: !6138)
!6147 = !DILocation(line: 319, column: 2, scope: !6138)
!6148 = !{i64 599812}
!6149 = !DILocation(line: 332, column: 9, scope: !6138)
!6150 = !DILocation(line: 332, column: 11, scope: !6138)
!6151 = !DILocation(line: 333, column: 1, scope: !6138)
!6152 = !DILocation(line: 332, column: 2, scope: !6138)
!6153 = distinct !DISubprogram(name: "drm_plane_create_zpos_property", scope: !2, file: !2, line: 369, type: !6154, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6156)
!6154 = !DISubroutineType(types: !6155)
!6155 = !{!115, !348, !13, !13, !13}
!6156 = !{!6157, !6158, !6159, !6160, !6161}
!6157 = !DILocalVariable(name: "plane", arg: 1, scope: !6153, file: !2, line: 369, type: !348)
!6158 = !DILocalVariable(name: "zpos", arg: 2, scope: !6153, file: !2, line: 370, type: !13)
!6159 = !DILocalVariable(name: "min", arg: 3, scope: !6153, file: !2, line: 371, type: !13)
!6160 = !DILocalVariable(name: "max", arg: 4, scope: !6153, file: !2, line: 371, type: !13)
!6161 = !DILocalVariable(name: "prop", scope: !6153, file: !2, line: 373, type: !4968)
!6162 = !DILocation(line: 369, column: 54, scope: !6153)
!6163 = !DILocation(line: 370, column: 21, scope: !6153)
!6164 = !DILocation(line: 371, column: 21, scope: !6153)
!6165 = !DILocation(line: 371, column: 39, scope: !6153)
!6166 = !DILocation(line: 373, column: 2, scope: !6153)
!6167 = !DILocation(line: 373, column: 23, scope: !6153)
!6168 = !DILocation(line: 375, column: 35, scope: !6153)
!6169 = !DILocation(line: 375, column: 42, scope: !6153)
!6170 = !DILocation(line: 375, column: 58, scope: !6153)
!6171 = !DILocation(line: 375, column: 63, scope: !6153)
!6172 = !DILocation(line: 375, column: 9, scope: !6153)
!6173 = !DILocation(line: 375, column: 7, scope: !6153)
!6174 = !DILocation(line: 376, column: 7, scope: !6175)
!6175 = distinct !DILexicalBlock(scope: !6153, file: !2, line: 376, column: 6)
!6176 = !DILocation(line: 376, column: 6, scope: !6153)
!6177 = !DILocation(line: 377, column: 3, scope: !6175)
!6178 = !DILocation(line: 379, column: 30, scope: !6153)
!6179 = !DILocation(line: 379, column: 37, scope: !6153)
!6180 = !DILocation(line: 379, column: 43, scope: !6153)
!6181 = !DILocation(line: 379, column: 49, scope: !6153)
!6182 = !DILocation(line: 379, column: 2, scope: !6153)
!6183 = !DILocation(line: 381, column: 25, scope: !6153)
!6184 = !DILocation(line: 381, column: 2, scope: !6153)
!6185 = !DILocation(line: 381, column: 9, scope: !6153)
!6186 = !DILocation(line: 381, column: 23, scope: !6153)
!6187 = !DILocation(line: 383, column: 6, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6153, file: !2, line: 383, column: 6)
!6189 = !DILocation(line: 383, column: 13, scope: !6188)
!6190 = !DILocation(line: 383, column: 6, scope: !6153)
!6191 = !DILocation(line: 384, column: 24, scope: !6192)
!6192 = distinct !DILexicalBlock(scope: !6188, file: !2, line: 383, column: 20)
!6193 = !DILocation(line: 384, column: 3, scope: !6192)
!6194 = !DILocation(line: 384, column: 10, scope: !6192)
!6195 = !DILocation(line: 384, column: 17, scope: !6192)
!6196 = !DILocation(line: 384, column: 22, scope: !6192)
!6197 = !DILocation(line: 385, column: 35, scope: !6192)
!6198 = !DILocation(line: 385, column: 3, scope: !6192)
!6199 = !DILocation(line: 385, column: 10, scope: !6192)
!6200 = !DILocation(line: 385, column: 17, scope: !6192)
!6201 = !DILocation(line: 385, column: 33, scope: !6192)
!6202 = !DILocation(line: 386, column: 2, scope: !6192)
!6203 = !DILocation(line: 388, column: 2, scope: !6153)
!6204 = !DILocation(line: 389, column: 1, scope: !6153)
!6205 = distinct !DISubprogram(name: "drm_plane_create_zpos_immutable_property", scope: !2, file: !2, line: 408, type: !5932, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6206)
!6206 = !{!6207, !6208, !6209}
!6207 = !DILocalVariable(name: "plane", arg: 1, scope: !6205, file: !2, line: 408, type: !348)
!6208 = !DILocalVariable(name: "zpos", arg: 2, scope: !6205, file: !2, line: 409, type: !13)
!6209 = !DILocalVariable(name: "prop", scope: !6205, file: !2, line: 411, type: !4968)
!6210 = !DILocation(line: 408, column: 64, scope: !6205)
!6211 = !DILocation(line: 409, column: 24, scope: !6205)
!6212 = !DILocation(line: 411, column: 2, scope: !6205)
!6213 = !DILocation(line: 411, column: 23, scope: !6205)
!6214 = !DILocation(line: 413, column: 35, scope: !6205)
!6215 = !DILocation(line: 413, column: 42, scope: !6205)
!6216 = !DILocation(line: 414, column: 15, scope: !6205)
!6217 = !DILocation(line: 414, column: 21, scope: !6205)
!6218 = !DILocation(line: 413, column: 9, scope: !6205)
!6219 = !DILocation(line: 413, column: 7, scope: !6205)
!6220 = !DILocation(line: 415, column: 7, scope: !6221)
!6221 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 415, column: 6)
!6222 = !DILocation(line: 415, column: 6, scope: !6205)
!6223 = !DILocation(line: 416, column: 3, scope: !6221)
!6224 = !DILocation(line: 418, column: 30, scope: !6205)
!6225 = !DILocation(line: 418, column: 37, scope: !6205)
!6226 = !DILocation(line: 418, column: 43, scope: !6205)
!6227 = !DILocation(line: 418, column: 49, scope: !6205)
!6228 = !DILocation(line: 418, column: 2, scope: !6205)
!6229 = !DILocation(line: 420, column: 25, scope: !6205)
!6230 = !DILocation(line: 420, column: 2, scope: !6205)
!6231 = !DILocation(line: 420, column: 9, scope: !6205)
!6232 = !DILocation(line: 420, column: 23, scope: !6205)
!6233 = !DILocation(line: 422, column: 6, scope: !6234)
!6234 = distinct !DILexicalBlock(scope: !6205, file: !2, line: 422, column: 6)
!6235 = !DILocation(line: 422, column: 13, scope: !6234)
!6236 = !DILocation(line: 422, column: 6, scope: !6205)
!6237 = !DILocation(line: 423, column: 24, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6234, file: !2, line: 422, column: 20)
!6239 = !DILocation(line: 423, column: 3, scope: !6238)
!6240 = !DILocation(line: 423, column: 10, scope: !6238)
!6241 = !DILocation(line: 423, column: 17, scope: !6238)
!6242 = !DILocation(line: 423, column: 22, scope: !6238)
!6243 = !DILocation(line: 424, column: 35, scope: !6238)
!6244 = !DILocation(line: 424, column: 3, scope: !6238)
!6245 = !DILocation(line: 424, column: 10, scope: !6238)
!6246 = !DILocation(line: 424, column: 17, scope: !6238)
!6247 = !DILocation(line: 424, column: 33, scope: !6238)
!6248 = !DILocation(line: 425, column: 2, scope: !6238)
!6249 = !DILocation(line: 427, column: 2, scope: !6205)
!6250 = !DILocation(line: 428, column: 1, scope: !6205)
!6251 = distinct !DISubprogram(name: "drm_atomic_normalize_zpos", scope: !2, file: !2, line: 510, type: !4923, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6252)
!6252 = !{!6253, !6254, !6255, !6256, !6257, !6258, !6259, !6260, !6261, !6262}
!6253 = !DILocalVariable(name: "dev", arg: 1, scope: !6251, file: !2, line: 510, type: !352)
!6254 = !DILocalVariable(name: "state", arg: 2, scope: !6251, file: !2, line: 511, type: !4925)
!6255 = !DILocalVariable(name: "crtc", scope: !6251, file: !2, line: 513, type: !4946)
!6256 = !DILocalVariable(name: "old_crtc_state", scope: !6251, file: !2, line: 514, type: !5439)
!6257 = !DILocalVariable(name: "new_crtc_state", scope: !6251, file: !2, line: 514, type: !5439)
!6258 = !DILocalVariable(name: "plane", scope: !6251, file: !2, line: 515, type: !348)
!6259 = !DILocalVariable(name: "old_plane_state", scope: !6251, file: !2, line: 516, type: !4941)
!6260 = !DILocalVariable(name: "new_plane_state", scope: !6251, file: !2, line: 516, type: !4941)
!6261 = !DILocalVariable(name: "i", scope: !6251, file: !2, line: 517, type: !115)
!6262 = !DILocalVariable(name: "ret", scope: !6251, file: !2, line: 517, type: !115)
!6263 = !DILocation(line: 510, column: 50, scope: !6251)
!6264 = !DILocation(line: 511, column: 35, scope: !6251)
!6265 = !DILocation(line: 513, column: 2, scope: !6251)
!6266 = !DILocation(line: 513, column: 19, scope: !6251)
!6267 = !DILocation(line: 514, column: 2, scope: !6251)
!6268 = !DILocation(line: 514, column: 25, scope: !6251)
!6269 = !DILocation(line: 514, column: 42, scope: !6251)
!6270 = !DILocation(line: 515, column: 2, scope: !6251)
!6271 = !DILocation(line: 515, column: 20, scope: !6251)
!6272 = !DILocation(line: 516, column: 2, scope: !6251)
!6273 = !DILocation(line: 516, column: 26, scope: !6251)
!6274 = !DILocation(line: 516, column: 44, scope: !6251)
!6275 = !DILocation(line: 517, column: 2, scope: !6251)
!6276 = !DILocation(line: 517, column: 6, scope: !6251)
!6277 = !DILocation(line: 517, column: 9, scope: !6251)
!6278 = !DILocation(line: 519, column: 2, scope: !6279)
!6279 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 519, column: 2)
!6280 = !DILocation(line: 519, column: 2, scope: !6281)
!6281 = distinct !DILexicalBlock(scope: !6279, file: !2, line: 519, column: 2)
!6282 = !DILocation(line: 519, column: 2, scope: !6283)
!6283 = distinct !DILexicalBlock(scope: !6281, file: !2, line: 519, column: 2)
!6284 = !DILocation(line: 519, column: 2, scope: !6285)
!6285 = distinct !DILexicalBlock(scope: !6283, file: !2, line: 519, column: 2)
!6286 = !DILocation(line: 520, column: 10, scope: !6287)
!6287 = distinct !DILexicalBlock(scope: !6283, file: !2, line: 519, column: 84)
!6288 = !DILocation(line: 520, column: 27, scope: !6287)
!6289 = !DILocation(line: 520, column: 8, scope: !6287)
!6290 = !DILocation(line: 521, column: 8, scope: !6291)
!6291 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 521, column: 7)
!6292 = !DILocation(line: 521, column: 7, scope: !6287)
!6293 = !DILocation(line: 522, column: 4, scope: !6291)
!6294 = !DILocation(line: 523, column: 7, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6287, file: !2, line: 523, column: 7)
!6296 = !DILocation(line: 523, column: 24, scope: !6295)
!6297 = !DILocation(line: 523, column: 32, scope: !6295)
!6298 = !DILocation(line: 523, column: 49, scope: !6295)
!6299 = !DILocation(line: 523, column: 29, scope: !6295)
!6300 = !DILocation(line: 523, column: 7, scope: !6287)
!6301 = !DILocation(line: 524, column: 51, scope: !6302)
!6302 = distinct !DILexicalBlock(scope: !6295, file: !2, line: 523, column: 55)
!6303 = !DILocation(line: 524, column: 58, scope: !6302)
!6304 = !DILocation(line: 524, column: 21, scope: !6302)
!6305 = !DILocation(line: 524, column: 19, scope: !6302)
!6306 = !DILocation(line: 525, column: 4, scope: !6302)
!6307 = !DILocation(line: 525, column: 20, scope: !6302)
!6308 = !DILocation(line: 525, column: 33, scope: !6302)
!6309 = !DILocation(line: 526, column: 3, scope: !6302)
!6310 = distinct !{!6310, !6278, !6311, !6312, !6313}
!6311 = !DILocation(line: 527, column: 2, scope: !6279)
!6312 = !{!"llvm.loop.mustprogress"}
!6313 = !{!"llvm.loop.unroll.disable"}
!6314 = !DILocation(line: 529, column: 2, scope: !6315)
!6315 = distinct !DILexicalBlock(scope: !6251, file: !2, line: 529, column: 2)
!6316 = !DILocation(line: 529, column: 2, scope: !6317)
!6317 = distinct !DILexicalBlock(scope: !6315, file: !2, line: 529, column: 2)
!6318 = !DILocation(line: 529, column: 2, scope: !6319)
!6319 = distinct !DILexicalBlock(scope: !6317, file: !2, line: 529, column: 2)
!6320 = !DILocation(line: 529, column: 2, scope: !6321)
!6321 = distinct !DILexicalBlock(scope: !6319, file: !2, line: 529, column: 2)
!6322 = !DILocation(line: 530, column: 7, scope: !6323)
!6323 = distinct !DILexicalBlock(scope: !6324, file: !2, line: 530, column: 7)
!6324 = distinct !DILexicalBlock(scope: !6319, file: !2, line: 529, column: 80)
!6325 = !DILocation(line: 530, column: 23, scope: !6323)
!6326 = !DILocation(line: 530, column: 37, scope: !6323)
!6327 = !DILocation(line: 530, column: 53, scope: !6323)
!6328 = !DILocation(line: 530, column: 34, scope: !6323)
!6329 = !DILocation(line: 530, column: 64, scope: !6323)
!6330 = !DILocation(line: 531, column: 7, scope: !6323)
!6331 = !DILocation(line: 531, column: 23, scope: !6323)
!6332 = !DILocation(line: 530, column: 7, scope: !6324)
!6333 = !DILocation(line: 532, column: 48, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6323, file: !2, line: 531, column: 37)
!6335 = !DILocation(line: 533, column: 13, scope: !6334)
!6336 = !DILocation(line: 532, column: 10, scope: !6334)
!6337 = !DILocation(line: 532, column: 8, scope: !6334)
!6338 = !DILocation(line: 534, column: 8, scope: !6339)
!6339 = distinct !DILexicalBlock(scope: !6334, file: !2, line: 534, column: 8)
!6340 = !DILocation(line: 534, column: 8, scope: !6334)
!6341 = !DILocation(line: 535, column: 12, scope: !6339)
!6342 = !DILocation(line: 535, column: 5, scope: !6339)
!6343 = !DILocation(line: 536, column: 3, scope: !6334)
!6344 = distinct !{!6344, !6314, !6345, !6312, !6313}
!6345 = !DILocation(line: 537, column: 2, scope: !6315)
!6346 = !DILocation(line: 538, column: 2, scope: !6251)
!6347 = !DILocation(line: 539, column: 1, scope: !6251)
!6348 = distinct !DISubprogram(name: "drm_atomic_get_new_crtc_state", scope: !4927, file: !4927, line: 579, type: !6349, scopeLine: 581, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6353)
!6349 = !DISubroutineType(types: !6350)
!6350 = !{!5439, !6351, !4946}
!6351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6352, size: 64)
!6352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4926)
!6353 = !{!6354, !6355}
!6354 = !DILocalVariable(name: "state", arg: 1, scope: !6348, file: !4927, line: 579, type: !6351)
!6355 = !DILocalVariable(name: "crtc", arg: 2, scope: !6348, file: !4927, line: 580, type: !4946)
!6356 = !DILocation(line: 579, column: 62, scope: !6348)
!6357 = !DILocation(line: 580, column: 27, scope: !6348)
!6358 = !DILocation(line: 582, column: 9, scope: !6348)
!6359 = !DILocation(line: 582, column: 16, scope: !6348)
!6360 = !DILocation(line: 582, column: 37, scope: !6348)
!6361 = !DILocation(line: 582, column: 22, scope: !6348)
!6362 = !DILocation(line: 582, column: 44, scope: !6348)
!6363 = !DILocation(line: 582, column: 2, scope: !6348)
!6364 = distinct !DISubprogram(name: "drm_atomic_helper_crtc_normalize_zpos", scope: !2, file: !2, line: 442, type: !6365, scopeLine: 444, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6367)
!6365 = !DISubroutineType(types: !6366)
!6366 = !{!115, !4946, !5439}
!6367 = !{!6368, !6369, !6370, !6371, !6372, !6373, !6374, !6375, !6376, !6377, !6378, !6381, !6385, !6387}
!6368 = !DILocalVariable(name: "crtc", arg: 1, scope: !6364, file: !2, line: 442, type: !4946)
!6369 = !DILocalVariable(name: "crtc_state", arg: 2, scope: !6364, file: !2, line: 443, type: !5439)
!6370 = !DILocalVariable(name: "state", scope: !6364, file: !2, line: 445, type: !4925)
!6371 = !DILocalVariable(name: "dev", scope: !6364, file: !2, line: 446, type: !352)
!6372 = !DILocalVariable(name: "total_planes", scope: !6364, file: !2, line: 447, type: !115)
!6373 = !DILocalVariable(name: "states", scope: !6364, file: !2, line: 448, type: !5846)
!6374 = !DILocalVariable(name: "plane", scope: !6364, file: !2, line: 449, type: !348)
!6375 = !DILocalVariable(name: "i", scope: !6364, file: !2, line: 450, type: !115)
!6376 = !DILocalVariable(name: "n", scope: !6364, file: !2, line: 450, type: !115)
!6377 = !DILocalVariable(name: "ret", scope: !6364, file: !2, line: 451, type: !115)
!6378 = !DILocalVariable(name: "__mptr", scope: !6379, file: !2, line: 464, type: !345)
!6379 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 464, column: 2)
!6380 = distinct !DILexicalBlock(scope: !6364, file: !2, line: 464, column: 2)
!6381 = !DILocalVariable(name: "plane_state", scope: !6382, file: !2, line: 465, type: !4941)
!6382 = distinct !DILexicalBlock(scope: !6383, file: !2, line: 464, column: 62)
!6383 = distinct !DILexicalBlock(scope: !6384, file: !2, line: 464, column: 2)
!6384 = distinct !DILexicalBlock(scope: !6380, file: !2, line: 464, column: 2)
!6385 = !DILocalVariable(name: "__mptr", scope: !6386, file: !2, line: 464, type: !345)
!6386 = distinct !DILexicalBlock(scope: !6384, file: !2, line: 464, column: 2)
!6387 = !DILabel(scope: !6364, name: "done", file: !2, line: 487)
!6388 = !DILocation(line: 442, column: 67, scope: !6364)
!6389 = !DILocation(line: 443, column: 31, scope: !6364)
!6390 = !DILocation(line: 445, column: 2, scope: !6364)
!6391 = !DILocation(line: 445, column: 27, scope: !6364)
!6392 = !DILocation(line: 445, column: 35, scope: !6364)
!6393 = !DILocation(line: 445, column: 47, scope: !6364)
!6394 = !DILocation(line: 446, column: 2, scope: !6364)
!6395 = !DILocation(line: 446, column: 21, scope: !6364)
!6396 = !DILocation(line: 446, column: 27, scope: !6364)
!6397 = !DILocation(line: 446, column: 33, scope: !6364)
!6398 = !DILocation(line: 447, column: 2, scope: !6364)
!6399 = !DILocation(line: 447, column: 6, scope: !6364)
!6400 = !DILocation(line: 447, column: 21, scope: !6364)
!6401 = !DILocation(line: 447, column: 26, scope: !6364)
!6402 = !DILocation(line: 447, column: 38, scope: !6364)
!6403 = !DILocation(line: 448, column: 2, scope: !6364)
!6404 = !DILocation(line: 448, column: 27, scope: !6364)
!6405 = !DILocation(line: 449, column: 2, scope: !6364)
!6406 = !DILocation(line: 449, column: 20, scope: !6364)
!6407 = !DILocation(line: 450, column: 2, scope: !6364)
!6408 = !DILocation(line: 450, column: 6, scope: !6364)
!6409 = !DILocation(line: 450, column: 9, scope: !6364)
!6410 = !DILocation(line: 451, column: 2, scope: !6364)
!6411 = !DILocation(line: 451, column: 6, scope: !6364)
!6412 = !DILocation(line: 453, column: 2, scope: !6364)
!6413 = !DILocation(line: 456, column: 25, scope: !6364)
!6414 = !DILocation(line: 456, column: 11, scope: !6364)
!6415 = !DILocation(line: 456, column: 9, scope: !6364)
!6416 = !DILocation(line: 457, column: 7, scope: !6417)
!6417 = distinct !DILexicalBlock(scope: !6364, file: !2, line: 457, column: 6)
!6418 = !DILocation(line: 457, column: 6, scope: !6364)
!6419 = !DILocation(line: 458, column: 3, scope: !6417)
!6420 = !DILocation(line: 464, column: 2, scope: !6379)
!6421 = !DILocation(line: 464, column: 2, scope: !6380)
!6422 = !DILocation(line: 464, column: 2, scope: !6384)
!6423 = !DILocation(line: 464, column: 2, scope: !6383)
!6424 = !DILocation(line: 464, column: 2, scope: !6425)
!6425 = distinct !DILexicalBlock(scope: !6383, file: !2, line: 464, column: 2)
!6426 = !DILocation(line: 465, column: 3, scope: !6382)
!6427 = !DILocation(line: 465, column: 27, scope: !6382)
!6428 = !DILocation(line: 466, column: 31, scope: !6382)
!6429 = !DILocation(line: 466, column: 38, scope: !6382)
!6430 = !DILocation(line: 466, column: 4, scope: !6382)
!6431 = !DILocation(line: 467, column: 14, scope: !6432)
!6432 = distinct !DILexicalBlock(scope: !6382, file: !2, line: 467, column: 7)
!6433 = !DILocation(line: 467, column: 7, scope: !6432)
!6434 = !DILocation(line: 467, column: 7, scope: !6382)
!6435 = !DILocation(line: 468, column: 18, scope: !6436)
!6436 = distinct !DILexicalBlock(scope: !6432, file: !2, line: 467, column: 28)
!6437 = !DILocation(line: 468, column: 10, scope: !6436)
!6438 = !DILocation(line: 468, column: 8, scope: !6436)
!6439 = !DILocation(line: 469, column: 4, scope: !6436)
!6440 = !DILocation(line: 471, column: 17, scope: !6382)
!6441 = !DILocation(line: 471, column: 3, scope: !6382)
!6442 = !DILocation(line: 471, column: 11, scope: !6382)
!6443 = !DILocation(line: 471, column: 15, scope: !6382)
!6444 = !DILocation(line: 472, column: 3, scope: !6382)
!6445 = !DILocation(line: 474, column: 2, scope: !6383)
!6446 = !DILocation(line: 464, column: 2, scope: !6386)
!6447 = distinct !{!6447, !6421, !6448, !6312, !6313}
!6448 = !DILocation(line: 474, column: 2, scope: !6380)
!6449 = !DILocation(line: 476, column: 7, scope: !6364)
!6450 = !DILocation(line: 476, column: 15, scope: !6364)
!6451 = !DILocation(line: 476, column: 2, scope: !6364)
!6452 = !DILocation(line: 478, column: 9, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6364, file: !2, line: 478, column: 2)
!6454 = !DILocation(line: 478, column: 7, scope: !6453)
!6455 = !DILocation(line: 478, column: 14, scope: !6456)
!6456 = distinct !DILexicalBlock(scope: !6453, file: !2, line: 478, column: 2)
!6457 = !DILocation(line: 478, column: 18, scope: !6456)
!6458 = !DILocation(line: 478, column: 16, scope: !6456)
!6459 = !DILocation(line: 478, column: 2, scope: !6453)
!6460 = !DILocation(line: 479, column: 11, scope: !6461)
!6461 = distinct !DILexicalBlock(scope: !6456, file: !2, line: 478, column: 26)
!6462 = !DILocation(line: 479, column: 18, scope: !6461)
!6463 = !DILocation(line: 479, column: 22, scope: !6461)
!6464 = !DILocation(line: 479, column: 9, scope: !6461)
!6465 = !DILocation(line: 481, column: 32, scope: !6461)
!6466 = !DILocation(line: 481, column: 3, scope: !6461)
!6467 = !DILocation(line: 481, column: 10, scope: !6461)
!6468 = !DILocation(line: 481, column: 14, scope: !6461)
!6469 = !DILocation(line: 481, column: 30, scope: !6461)
!6470 = !DILocation(line: 482, column: 3, scope: !6461)
!6471 = !DILocation(line: 484, column: 2, scope: !6461)
!6472 = !DILocation(line: 478, column: 22, scope: !6456)
!6473 = !DILocation(line: 478, column: 2, scope: !6456)
!6474 = distinct !{!6474, !6459, !6475, !6312, !6313}
!6475 = !DILocation(line: 484, column: 2, scope: !6453)
!6476 = !DILocation(line: 485, column: 2, scope: !6364)
!6477 = !DILocation(line: 485, column: 14, scope: !6364)
!6478 = !DILocation(line: 485, column: 27, scope: !6364)
!6479 = !DILocation(line: 487, column: 1, scope: !6364)
!6480 = !DILocation(line: 488, column: 8, scope: !6364)
!6481 = !DILocation(line: 488, column: 2, scope: !6364)
!6482 = !DILocation(line: 489, column: 9, scope: !6364)
!6483 = !DILocation(line: 489, column: 2, scope: !6364)
!6484 = !DILocation(line: 490, column: 1, scope: !6364)
!6485 = !DILocation(line: 571, column: 60, scope: !5931)
!6486 = !DILocation(line: 572, column: 20, scope: !5931)
!6487 = !DILocation(line: 574, column: 2, scope: !5931)
!6488 = !DILocation(line: 574, column: 21, scope: !5931)
!6489 = !DILocation(line: 574, column: 27, scope: !5931)
!6490 = !DILocation(line: 574, column: 34, scope: !5931)
!6491 = !DILocation(line: 575, column: 2, scope: !5931)
!6492 = !DILocation(line: 575, column: 23, scope: !5931)
!6493 = !DILocation(line: 581, column: 2, scope: !5931)
!6494 = !DILocation(line: 581, column: 15, scope: !5931)
!6495 = !DILocation(line: 584, column: 2, scope: !5931)
!6496 = !DILocation(line: 584, column: 6, scope: !5931)
!6497 = !DILocation(line: 586, column: 6, scope: !5942)
!6498 = !DILocation(line: 586, column: 6, scope: !5946)
!6499 = !DILocation(line: 586, column: 6, scope: !5945)
!6500 = !DILocation(line: 586, column: 6, scope: !6501)
!6501 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 586, column: 6)
!6502 = !DILocation(line: 586, column: 6, scope: !6503)
!6503 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 586, column: 6)
!6504 = !{i64 2155398306, i64 2155398335, i64 2155398381, i64 2155398439, i64 2155398493, i64 2155398547, i64 2155398602, i64 2155398633, i64 2155398941, i64 2155398947, i64 2155398994, i64 2155399017, i64 2155399043}
!6505 = !DILocation(line: 586, column: 6, scope: !6506)
!6506 = distinct !DILexicalBlock(scope: !5945, file: !2, line: 586, column: 6)
!6507 = !DILocation(line: 586, column: 6, scope: !5943)
!6508 = !DILocation(line: 586, column: 6, scope: !5931)
!6509 = !DILocation(line: 588, column: 3, scope: !5943)
!6510 = !DILocation(line: 590, column: 29, scope: !5931)
!6511 = !DILocation(line: 592, column: 8, scope: !5931)
!6512 = !DILocation(line: 590, column: 9, scope: !5931)
!6513 = !DILocation(line: 590, column: 7, scope: !5931)
!6514 = !DILocation(line: 593, column: 7, scope: !6515)
!6515 = distinct !DILexicalBlock(scope: !5931, file: !2, line: 593, column: 6)
!6516 = !DILocation(line: 593, column: 6, scope: !5931)
!6517 = !DILocation(line: 594, column: 3, scope: !6515)
!6518 = !DILocation(line: 596, column: 9, scope: !5950)
!6519 = !DILocation(line: 596, column: 7, scope: !5950)
!6520 = !DILocation(line: 596, column: 14, scope: !5949)
!6521 = !DILocation(line: 596, column: 16, scope: !5949)
!6522 = !DILocation(line: 596, column: 2, scope: !5950)
!6523 = !DILocation(line: 597, column: 3, scope: !5948)
!6524 = !DILocation(line: 597, column: 7, scope: !5948)
!6525 = !DILocation(line: 599, column: 9, scope: !6526)
!6526 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 599, column: 7)
!6527 = !DILocation(line: 599, column: 30, scope: !6526)
!6528 = !DILocation(line: 599, column: 28, scope: !6526)
!6529 = !DILocation(line: 599, column: 7, scope: !5948)
!6530 = !DILocation(line: 600, column: 4, scope: !6526)
!6531 = !DILocation(line: 602, column: 31, scope: !5948)
!6532 = !DILocation(line: 602, column: 43, scope: !5948)
!6533 = !DILocation(line: 602, column: 37, scope: !5948)
!6534 = !DILocation(line: 602, column: 46, scope: !5948)
!6535 = !DILocation(line: 603, column: 16, scope: !5948)
!6536 = !DILocation(line: 603, column: 10, scope: !5948)
!6537 = !DILocation(line: 603, column: 19, scope: !5948)
!6538 = !DILocation(line: 602, column: 9, scope: !5948)
!6539 = !DILocation(line: 602, column: 7, scope: !5948)
!6540 = !DILocation(line: 605, column: 7, scope: !6541)
!6541 = distinct !DILexicalBlock(scope: !5948, file: !2, line: 605, column: 7)
!6542 = !DILocation(line: 605, column: 7, scope: !5948)
!6543 = !DILocation(line: 606, column: 25, scope: !6544)
!6544 = distinct !DILexicalBlock(scope: !6541, file: !2, line: 605, column: 12)
!6545 = !DILocation(line: 606, column: 30, scope: !6544)
!6546 = !DILocation(line: 606, column: 4, scope: !6544)
!6547 = !DILocation(line: 608, column: 11, scope: !6544)
!6548 = !DILocation(line: 608, column: 4, scope: !6544)
!6549 = !DILocation(line: 610, column: 2, scope: !5949)
!6550 = !DILocation(line: 610, column: 2, scope: !5948)
!6551 = !DILocation(line: 596, column: 38, scope: !5949)
!6552 = !DILocation(line: 596, column: 2, scope: !5949)
!6553 = distinct !{!6553, !6522, !6554, !6312, !6313}
!6554 = !DILocation(line: 610, column: 2, scope: !5950)
!6555 = !DILocation(line: 612, column: 30, scope: !5931)
!6556 = !DILocation(line: 612, column: 37, scope: !5931)
!6557 = !DILocation(line: 612, column: 43, scope: !5931)
!6558 = !DILocation(line: 612, column: 2, scope: !5931)
!6559 = !DILocation(line: 613, column: 31, scope: !5931)
!6560 = !DILocation(line: 613, column: 2, scope: !5931)
!6561 = !DILocation(line: 613, column: 9, scope: !5931)
!6562 = !DILocation(line: 613, column: 29, scope: !5931)
!6563 = !DILocation(line: 615, column: 2, scope: !5931)
!6564 = !DILocation(line: 616, column: 1, scope: !5931)
!6565 = !DISubprogram(name: "drm_property_create", scope: !4970, file: !4970, line: 250, type: !6566, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6566 = !DISubroutineType(types: !6567)
!6567 = !{!4968, !352, !610, !379, !115}
!6568 = distinct !DISubprogram(name: "__arch_hweight32", scope: !6569, file: !6569, line: 15, type: !6570, scopeLine: 16, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6572)
!6569 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!6570 = !DISubroutineType(types: !6571)
!6571 = !{!13, !13}
!6572 = !{!6573, !6574}
!6573 = !DILocalVariable(name: "w", arg: 1, scope: !6568, file: !6569, line: 15, type: !13)
!6574 = !DILocalVariable(name: "res", scope: !6568, file: !6569, line: 17, type: !13)
!6575 = !DILocation(line: 15, column: 67, scope: !6568)
!6576 = !DILocation(line: 17, column: 2, scope: !6568)
!6577 = !DILocation(line: 17, column: 15, scope: !6568)
!6578 = !DILocation(line: 21, column: 15, scope: !6568)
!6579 = !DILocation(line: 19, column: 2, scope: !6568)
!6580 = !{i64 2148146284, i64 2148146312, i64 2148146318, i64 2148146334, i64 2148146350, i64 2148146377, i64 2148146710, i64 2148146010, i64 2148146716, i64 2148146764, i64 2148146828, i64 2148146892, i64 2148146949, i64 2148146091, i64 2148146116, i64 2148147156, i64 2148147286, i64 2148147217, i64 2148147300, i64 2148146208}
!6581 = !DILocation(line: 23, column: 9, scope: !6568)
!6582 = !DILocation(line: 24, column: 1, scope: !6568)
!6583 = !DILocation(line: 23, column: 2, scope: !6568)
!6584 = !DISubprogram(name: "drm_property_add_enum", scope: !4970, file: !4970, line: 273, type: !6585, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6585 = !DISubroutineType(types: !6586)
!6586 = !{!115, !4968, !4979, !379}
!6587 = !DISubprogram(name: "drm_property_destroy", scope: !4970, file: !4970, line: 275, type: !6588, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6588 = !DISubroutineType(types: !6589)
!6589 = !{null, !352, !4968}
!6590 = distinct !DISubprogram(name: "drm_crtc_index", scope: !4948, file: !4948, line: 1265, type: !6591, scopeLine: 1266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6595)
!6591 = !DISubroutineType(types: !6592)
!6592 = !{!13, !6593}
!6593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6594, size: 64)
!6594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4947)
!6595 = !{!6596}
!6596 = !DILocalVariable(name: "crtc", arg: 1, scope: !6590, file: !4948, line: 1265, type: !6593)
!6597 = !DILocation(line: 1265, column: 66, scope: !6590)
!6598 = !DILocation(line: 1267, column: 9, scope: !6590)
!6599 = !DILocation(line: 1267, column: 15, scope: !6590)
!6600 = !DILocation(line: 1267, column: 2, scope: !6590)
!6601 = !DISubprogram(name: "__drm_dev_dbg", scope: !322, file: !322, line: 411, type: !6602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6602 = !DISubroutineType(types: !6603)
!6603 = !{null, !6604, !4389, !321, !379, null}
!6604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6605, size: 64)
!6605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !6606, line: 16, size: 448, align: 64, elements: !6607)
!6606 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!6607 = !{!6608, !6609, !6610, !6611, !6612, !6613, !6614, !6615}
!6608 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !6605, file: !6606, line: 21, baseType: !379, size: 64)
!6609 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !6605, file: !6606, line: 22, baseType: !379, size: 64, offset: 64)
!6610 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !6605, file: !6606, line: 23, baseType: !379, size: 64, offset: 128)
!6611 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !6605, file: !6606, line: 24, baseType: !379, size: 64, offset: 192)
!6612 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !6605, file: !6606, line: 25, baseType: !13, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!6613 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !6605, file: !6606, line: 27, baseType: !13, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!6614 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6605, file: !6606, line: 52, baseType: !13, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!6615 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6605, file: !6606, line: 57, baseType: !6616, size: 128, offset: 320)
!6616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6605, file: !6606, line: 54, size: 128, elements: !6617)
!6617 = !{!6618, !6633}
!6618 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !6616, file: !6606, line: 55, baseType: !6619, size: 128)
!6619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !1131, line: 359, size: 128, elements: !6620)
!6620 = !{!6621}
!6621 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6619, file: !1131, line: 360, baseType: !6622, size: 128)
!6622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1131, line: 85, size: 128, elements: !6623)
!6623 = !{!6624, !6625}
!6624 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !6622, file: !1131, line: 86, baseType: !366, size: 32)
!6625 = !DIDerivedType(tag: DW_TAG_member, scope: !6622, file: !1131, line: 101, baseType: !6626, size: 64, offset: 64)
!6626 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !6622, file: !1131, line: 101, size: 64, elements: !6627)
!6627 = !{!6628, !6629, !6630}
!6628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !6626, file: !1131, line: 102, baseType: !511, size: 64)
!6629 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !6626, file: !1131, line: 103, baseType: !1129, size: 64)
!6630 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6626, file: !1131, line: 104, baseType: !6631, size: 64)
!6631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6632, size: 64)
!6632 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1131, line: 104, flags: DIFlagFwdDecl)
!6633 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !6616, file: !6606, line: 56, baseType: !6634, size: 128)
!6634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !1131, line: 363, size: 128, elements: !6635)
!6635 = !{!6636}
!6636 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !6634, file: !1131, line: 364, baseType: !6622, size: 128)
!6637 = distinct !DISubprogram(name: "kmalloc_array", scope: !335, file: !335, line: 629, type: !6638, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6640)
!6638 = !DISubroutineType(types: !6639)
!6639 = !{!345, !508, !508, !346}
!6640 = !{!6641, !6642, !6643, !6644}
!6641 = !DILocalVariable(name: "n", arg: 1, scope: !6637, file: !335, line: 629, type: !508)
!6642 = !DILocalVariable(name: "size", arg: 2, scope: !6637, file: !335, line: 629, type: !508)
!6643 = !DILocalVariable(name: "flags", arg: 3, scope: !6637, file: !335, line: 629, type: !346)
!6644 = !DILocalVariable(name: "bytes", scope: !6637, file: !335, line: 631, type: !508)
!6645 = !DILocation(line: 629, column: 61, scope: !6637)
!6646 = !DILocation(line: 629, column: 71, scope: !6637)
!6647 = !DILocation(line: 629, column: 83, scope: !6637)
!6648 = !DILocation(line: 631, column: 2, scope: !6637)
!6649 = !DILocation(line: 631, column: 9, scope: !6637)
!6650 = !DILocation(line: 633, column: 6, scope: !6651)
!6651 = distinct !DILexicalBlock(scope: !6637, file: !335, line: 633, column: 6)
!6652 = !DILocation(line: 633, column: 6, scope: !6637)
!6653 = !DILocation(line: 634, column: 3, scope: !6651)
!6654 = !DILocation(line: 635, column: 27, scope: !6655)
!6655 = distinct !DILexicalBlock(scope: !6637, file: !335, line: 635, column: 6)
!6656 = !DILocation(line: 635, column: 6, scope: !6655)
!6657 = !DILocation(line: 635, column: 30, scope: !6655)
!6658 = !DILocation(line: 635, column: 54, scope: !6655)
!6659 = !DILocation(line: 635, column: 33, scope: !6655)
!6660 = !DILocation(line: 635, column: 6, scope: !6637)
!6661 = !DILocation(line: 636, column: 18, scope: !6655)
!6662 = !DILocation(line: 636, column: 25, scope: !6655)
!6663 = !DILocation(line: 636, column: 10, scope: !6655)
!6664 = !DILocation(line: 636, column: 3, scope: !6655)
!6665 = !DILocation(line: 637, column: 19, scope: !6637)
!6666 = !DILocation(line: 637, column: 26, scope: !6637)
!6667 = !DILocation(line: 637, column: 9, scope: !6637)
!6668 = !DILocation(line: 637, column: 2, scope: !6637)
!6669 = !DILocation(line: 638, column: 1, scope: !6637)
!6670 = distinct !DISubprogram(name: "drm_plane_mask", scope: !288, file: !288, line: 882, type: !6671, scopeLine: 883, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6675)
!6671 = !DISubroutineType(types: !6672)
!6672 = !{!610, !6673}
!6673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6674, size: 64)
!6674 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !349)
!6675 = !{!6676}
!6676 = !DILocalVariable(name: "plane", arg: 1, scope: !6670, file: !288, line: 882, type: !6673)
!6677 = !DILocation(line: 882, column: 58, scope: !6670)
!6678 = !DILocation(line: 884, column: 30, scope: !6670)
!6679 = !DILocation(line: 884, column: 14, scope: !6670)
!6680 = !DILocation(line: 884, column: 11, scope: !6670)
!6681 = !DILocation(line: 884, column: 2, scope: !6670)
!6682 = !DISubprogram(name: "drm_atomic_get_plane_state", scope: !4927, file: !4927, line: 502, type: !6683, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6683 = !DISubroutineType(types: !6684)
!6684 = !{!4941, !4925, !348}
!6685 = distinct !DISubprogram(name: "IS_ERR", scope: !6686, file: !6686, line: 59, type: !6687, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6689)
!6686 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!6687 = !DISubroutineType(types: !6688)
!6688 = !{!882, !1790}
!6689 = !{!6690}
!6690 = !DILocalVariable(name: "ptr", arg: 1, scope: !6685, file: !6686, line: 59, type: !1790)
!6691 = !DILocation(line: 59, column: 60, scope: !6685)
!6692 = !DILocation(line: 61, column: 9, scope: !6685)
!6693 = !DILocation(line: 61, column: 2, scope: !6685)
!6694 = distinct !DISubprogram(name: "PTR_ERR", scope: !6686, file: !6686, line: 49, type: !6695, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6697)
!6695 = !DISubroutineType(types: !6696)
!6696 = !{!497, !1790}
!6697 = !{!6698}
!6698 = !DILocalVariable(name: "ptr", arg: 1, scope: !6694, file: !6686, line: 49, type: !1790)
!6699 = !DILocation(line: 49, column: 61, scope: !6694)
!6700 = !DILocation(line: 51, column: 16, scope: !6694)
!6701 = !DILocation(line: 51, column: 9, scope: !6694)
!6702 = !DILocation(line: 51, column: 2, scope: !6694)
!6703 = !DISubprogram(name: "sort", scope: !6704, file: !6704, line: 12, type: !6705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6704 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!6705 = !DISubroutineType(types: !6706)
!6706 = !{null, !345, !508, !508, !6707, !6711}
!6707 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !347, line: 245, baseType: !6708)
!6708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6709, size: 64)
!6709 = !DISubroutineType(types: !6710)
!6710 = !{!115, !1790, !1790}
!6711 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !347, line: 242, baseType: !6712)
!6712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6713, size: 64)
!6713 = !DISubroutineType(types: !6714)
!6714 = !{null, !345, !345, !115}
!6715 = distinct !DISubprogram(name: "drm_atomic_state_zpos_cmp", scope: !2, file: !2, line: 431, type: !6709, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6716)
!6716 = !{!6717, !6718, !6719, !6720}
!6717 = !DILocalVariable(name: "a", arg: 1, scope: !6715, file: !2, line: 431, type: !1790)
!6718 = !DILocalVariable(name: "b", arg: 2, scope: !6715, file: !2, line: 431, type: !1790)
!6719 = !DILocalVariable(name: "sa", scope: !6715, file: !2, line: 433, type: !5816)
!6720 = !DILocalVariable(name: "sb", scope: !6715, file: !2, line: 434, type: !5816)
!6721 = !DILocation(line: 431, column: 50, scope: !6715)
!6722 = !DILocation(line: 431, column: 65, scope: !6715)
!6723 = !DILocation(line: 433, column: 2, scope: !6715)
!6724 = !DILocation(line: 433, column: 32, scope: !6715)
!6725 = !DILocation(line: 433, column: 65, scope: !6715)
!6726 = !DILocation(line: 433, column: 37, scope: !6715)
!6727 = !DILocation(line: 434, column: 2, scope: !6715)
!6728 = !DILocation(line: 434, column: 32, scope: !6715)
!6729 = !DILocation(line: 434, column: 65, scope: !6715)
!6730 = !DILocation(line: 434, column: 37, scope: !6715)
!6731 = !DILocation(line: 436, column: 6, scope: !6732)
!6732 = distinct !DILexicalBlock(scope: !6715, file: !2, line: 436, column: 6)
!6733 = !DILocation(line: 436, column: 10, scope: !6732)
!6734 = !DILocation(line: 436, column: 18, scope: !6732)
!6735 = !DILocation(line: 436, column: 22, scope: !6732)
!6736 = !DILocation(line: 436, column: 15, scope: !6732)
!6737 = !DILocation(line: 436, column: 6, scope: !6715)
!6738 = !DILocation(line: 437, column: 10, scope: !6732)
!6739 = !DILocation(line: 437, column: 14, scope: !6732)
!6740 = !DILocation(line: 437, column: 21, scope: !6732)
!6741 = !DILocation(line: 437, column: 25, scope: !6732)
!6742 = !DILocation(line: 437, column: 19, scope: !6732)
!6743 = !DILocation(line: 437, column: 3, scope: !6732)
!6744 = !DILocation(line: 439, column: 10, scope: !6732)
!6745 = !DILocation(line: 439, column: 14, scope: !6732)
!6746 = !DILocation(line: 439, column: 21, scope: !6732)
!6747 = !DILocation(line: 439, column: 26, scope: !6732)
!6748 = !DILocation(line: 439, column: 31, scope: !6732)
!6749 = !DILocation(line: 439, column: 35, scope: !6732)
!6750 = !DILocation(line: 439, column: 42, scope: !6732)
!6751 = !DILocation(line: 439, column: 47, scope: !6732)
!6752 = !DILocation(line: 439, column: 29, scope: !6732)
!6753 = !DILocation(line: 439, column: 3, scope: !6732)
!6754 = !DILocation(line: 440, column: 1, scope: !6715)
!6755 = !DISubprogram(name: "kfree", scope: !335, file: !335, line: 227, type: !6756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6756 = !DISubroutineType(types: !6757)
!6757 = !{null, !1790}
!6758 = distinct !DISubprogram(name: "__must_check_overflow", scope: !6759, file: !6759, line: 51, type: !6760, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6762)
!6759 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!6760 = !DISubroutineType(types: !6761)
!6761 = !{!882, !882}
!6762 = !{!6763}
!6763 = !DILocalVariable(name: "overflow", arg: 1, scope: !6758, file: !6759, line: 51, type: !882)
!6764 = !DILocation(line: 51, column: 60, scope: !6758)
!6765 = !DILocation(line: 53, column: 9, scope: !6758)
!6766 = !{i8 0, i8 2}
!6767 = !DILocation(line: 53, column: 2, scope: !6758)
!6768 = distinct !DISubprogram(name: "kmalloc", scope: !335, file: !335, line: 591, type: !6769, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6771)
!6769 = !DISubroutineType(types: !6770)
!6770 = !{!345, !508, !346}
!6771 = !{!6772, !6773, !6774}
!6772 = !DILocalVariable(name: "size", arg: 1, scope: !6768, file: !335, line: 591, type: !508)
!6773 = !DILocalVariable(name: "flags", arg: 2, scope: !6768, file: !335, line: 591, type: !346)
!6774 = !DILocalVariable(name: "index", scope: !6775, file: !335, line: 594, type: !13)
!6775 = distinct !DILexicalBlock(scope: !6776, file: !335, line: 593, column: 42)
!6776 = distinct !DILexicalBlock(scope: !6768, file: !335, line: 593, column: 6)
!6777 = !DILocation(line: 591, column: 61, scope: !6768)
!6778 = !DILocation(line: 591, column: 73, scope: !6768)
!6779 = !DILocation(line: 593, column: 27, scope: !6776)
!6780 = !DILocation(line: 593, column: 6, scope: !6776)
!6781 = !DILocation(line: 593, column: 33, scope: !6776)
!6782 = !DILocation(line: 593, column: 36, scope: !6776)
!6783 = !DILocation(line: 593, column: 6, scope: !6768)
!6784 = !DILocation(line: 594, column: 3, scope: !6775)
!6785 = !DILocation(line: 594, column: 16, scope: !6775)
!6786 = !DILocation(line: 596, column: 7, scope: !6787)
!6787 = distinct !DILexicalBlock(scope: !6775, file: !335, line: 596, column: 7)
!6788 = !DILocation(line: 596, column: 12, scope: !6787)
!6789 = !DILocation(line: 596, column: 7, scope: !6775)
!6790 = !DILocation(line: 597, column: 25, scope: !6787)
!6791 = !DILocation(line: 597, column: 31, scope: !6787)
!6792 = !DILocation(line: 597, column: 11, scope: !6787)
!6793 = !DILocation(line: 597, column: 4, scope: !6787)
!6794 = !DILocation(line: 599, column: 11, scope: !6775)
!6795 = !DILocation(line: 599, column: 9, scope: !6775)
!6796 = !DILocation(line: 601, column: 33, scope: !6775)
!6797 = !DILocation(line: 601, column: 40, scope: !6775)
!6798 = !DILocation(line: 601, column: 20, scope: !6775)
!6799 = !DILocation(line: 601, column: 5, scope: !6775)
!6800 = !DILocation(line: 601, column: 51, scope: !6775)
!6801 = !DILocation(line: 602, column: 5, scope: !6775)
!6802 = !DILocation(line: 602, column: 12, scope: !6775)
!6803 = !DILocation(line: 600, column: 10, scope: !6775)
!6804 = !DILocation(line: 600, column: 3, scope: !6775)
!6805 = !DILocation(line: 603, column: 2, scope: !6776)
!6806 = !DILocation(line: 604, column: 19, scope: !6768)
!6807 = !DILocation(line: 604, column: 25, scope: !6768)
!6808 = !DILocation(line: 604, column: 9, scope: !6768)
!6809 = !DILocation(line: 604, column: 2, scope: !6768)
!6810 = !DILocation(line: 605, column: 1, scope: !6768)
!6811 = !DISubprogram(name: "__kmalloc", scope: !335, file: !335, line: 488, type: !6769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6812 = !DISubprogram(name: "kmalloc_large", scope: !335, file: !335, line: 531, type: !6769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6813 = distinct !DISubprogram(name: "__kmalloc_index", scope: !335, file: !335, line: 444, type: !6814, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6816)
!6814 = !DISubroutineType(types: !6815)
!6815 = !{!13, !508, !882}
!6816 = !{!6817, !6818}
!6817 = !DILocalVariable(name: "size", arg: 1, scope: !6813, file: !335, line: 444, type: !508)
!6818 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6813, file: !335, line: 445, type: !882)
!6819 = !DILocation(line: 444, column: 60, scope: !6813)
!6820 = !DILocation(line: 445, column: 16, scope: !6813)
!6821 = !DILocation(line: 447, column: 7, scope: !6822)
!6822 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 447, column: 6)
!6823 = !DILocation(line: 447, column: 6, scope: !6813)
!6824 = !DILocation(line: 448, column: 3, scope: !6822)
!6825 = !DILocation(line: 450, column: 6, scope: !6826)
!6826 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 450, column: 6)
!6827 = !DILocation(line: 450, column: 11, scope: !6826)
!6828 = !DILocation(line: 450, column: 6, scope: !6813)
!6829 = !DILocation(line: 451, column: 3, scope: !6826)
!6830 = !DILocation(line: 453, column: 32, scope: !6831)
!6831 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 453, column: 6)
!6832 = !DILocation(line: 453, column: 37, scope: !6831)
!6833 = !DILocation(line: 453, column: 42, scope: !6831)
!6834 = !DILocation(line: 453, column: 45, scope: !6831)
!6835 = !DILocation(line: 453, column: 50, scope: !6831)
!6836 = !DILocation(line: 453, column: 6, scope: !6813)
!6837 = !DILocation(line: 454, column: 3, scope: !6831)
!6838 = !DILocation(line: 455, column: 32, scope: !6839)
!6839 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 455, column: 6)
!6840 = !DILocation(line: 455, column: 37, scope: !6839)
!6841 = !DILocation(line: 455, column: 43, scope: !6839)
!6842 = !DILocation(line: 455, column: 46, scope: !6839)
!6843 = !DILocation(line: 455, column: 51, scope: !6839)
!6844 = !DILocation(line: 455, column: 6, scope: !6813)
!6845 = !DILocation(line: 456, column: 3, scope: !6839)
!6846 = !DILocation(line: 457, column: 6, scope: !6847)
!6847 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 457, column: 6)
!6848 = !DILocation(line: 457, column: 11, scope: !6847)
!6849 = !DILocation(line: 457, column: 6, scope: !6813)
!6850 = !DILocation(line: 457, column: 26, scope: !6847)
!6851 = !DILocation(line: 458, column: 6, scope: !6852)
!6852 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 458, column: 6)
!6853 = !DILocation(line: 458, column: 11, scope: !6852)
!6854 = !DILocation(line: 458, column: 6, scope: !6813)
!6855 = !DILocation(line: 458, column: 26, scope: !6852)
!6856 = !DILocation(line: 459, column: 6, scope: !6857)
!6857 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 459, column: 6)
!6858 = !DILocation(line: 459, column: 11, scope: !6857)
!6859 = !DILocation(line: 459, column: 6, scope: !6813)
!6860 = !DILocation(line: 459, column: 26, scope: !6857)
!6861 = !DILocation(line: 460, column: 6, scope: !6862)
!6862 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 460, column: 6)
!6863 = !DILocation(line: 460, column: 11, scope: !6862)
!6864 = !DILocation(line: 460, column: 6, scope: !6813)
!6865 = !DILocation(line: 460, column: 26, scope: !6862)
!6866 = !DILocation(line: 461, column: 6, scope: !6867)
!6867 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 461, column: 6)
!6868 = !DILocation(line: 461, column: 11, scope: !6867)
!6869 = !DILocation(line: 461, column: 6, scope: !6813)
!6870 = !DILocation(line: 461, column: 26, scope: !6867)
!6871 = !DILocation(line: 462, column: 6, scope: !6872)
!6872 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 462, column: 6)
!6873 = !DILocation(line: 462, column: 11, scope: !6872)
!6874 = !DILocation(line: 462, column: 6, scope: !6813)
!6875 = !DILocation(line: 462, column: 26, scope: !6872)
!6876 = !DILocation(line: 463, column: 6, scope: !6877)
!6877 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 463, column: 6)
!6878 = !DILocation(line: 463, column: 11, scope: !6877)
!6879 = !DILocation(line: 463, column: 6, scope: !6813)
!6880 = !DILocation(line: 463, column: 26, scope: !6877)
!6881 = !DILocation(line: 464, column: 6, scope: !6882)
!6882 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 464, column: 6)
!6883 = !DILocation(line: 464, column: 11, scope: !6882)
!6884 = !DILocation(line: 464, column: 6, scope: !6813)
!6885 = !DILocation(line: 464, column: 26, scope: !6882)
!6886 = !DILocation(line: 465, column: 6, scope: !6887)
!6887 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 465, column: 6)
!6888 = !DILocation(line: 465, column: 11, scope: !6887)
!6889 = !DILocation(line: 465, column: 6, scope: !6813)
!6890 = !DILocation(line: 465, column: 26, scope: !6887)
!6891 = !DILocation(line: 466, column: 6, scope: !6892)
!6892 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 466, column: 6)
!6893 = !DILocation(line: 466, column: 11, scope: !6892)
!6894 = !DILocation(line: 466, column: 6, scope: !6813)
!6895 = !DILocation(line: 466, column: 26, scope: !6892)
!6896 = !DILocation(line: 467, column: 6, scope: !6897)
!6897 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 467, column: 6)
!6898 = !DILocation(line: 467, column: 11, scope: !6897)
!6899 = !DILocation(line: 467, column: 6, scope: !6813)
!6900 = !DILocation(line: 467, column: 26, scope: !6897)
!6901 = !DILocation(line: 468, column: 6, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 468, column: 6)
!6903 = !DILocation(line: 468, column: 11, scope: !6902)
!6904 = !DILocation(line: 468, column: 6, scope: !6813)
!6905 = !DILocation(line: 468, column: 26, scope: !6902)
!6906 = !DILocation(line: 469, column: 6, scope: !6907)
!6907 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 469, column: 6)
!6908 = !DILocation(line: 469, column: 11, scope: !6907)
!6909 = !DILocation(line: 469, column: 6, scope: !6813)
!6910 = !DILocation(line: 469, column: 26, scope: !6907)
!6911 = !DILocation(line: 470, column: 6, scope: !6912)
!6912 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 470, column: 6)
!6913 = !DILocation(line: 470, column: 11, scope: !6912)
!6914 = !DILocation(line: 470, column: 6, scope: !6813)
!6915 = !DILocation(line: 470, column: 26, scope: !6912)
!6916 = !DILocation(line: 471, column: 6, scope: !6917)
!6917 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 471, column: 6)
!6918 = !DILocation(line: 471, column: 11, scope: !6917)
!6919 = !DILocation(line: 471, column: 6, scope: !6813)
!6920 = !DILocation(line: 471, column: 26, scope: !6917)
!6921 = !DILocation(line: 472, column: 6, scope: !6922)
!6922 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 472, column: 6)
!6923 = !DILocation(line: 472, column: 11, scope: !6922)
!6924 = !DILocation(line: 472, column: 6, scope: !6813)
!6925 = !DILocation(line: 472, column: 26, scope: !6922)
!6926 = !DILocation(line: 473, column: 6, scope: !6927)
!6927 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 473, column: 6)
!6928 = !DILocation(line: 473, column: 11, scope: !6927)
!6929 = !DILocation(line: 473, column: 6, scope: !6813)
!6930 = !DILocation(line: 473, column: 26, scope: !6927)
!6931 = !DILocation(line: 474, column: 6, scope: !6932)
!6932 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 474, column: 6)
!6933 = !DILocation(line: 474, column: 11, scope: !6932)
!6934 = !DILocation(line: 474, column: 6, scope: !6813)
!6935 = !DILocation(line: 474, column: 27, scope: !6932)
!6936 = !DILocation(line: 475, column: 6, scope: !6937)
!6937 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 475, column: 6)
!6938 = !DILocation(line: 475, column: 11, scope: !6937)
!6939 = !DILocation(line: 475, column: 6, scope: !6813)
!6940 = !DILocation(line: 475, column: 32, scope: !6937)
!6941 = !DILocation(line: 477, column: 50, scope: !6942)
!6942 = distinct !DILexicalBlock(scope: !6813, file: !335, line: 477, column: 6)
!6943 = !DILocation(line: 477, column: 6, scope: !6813)
!6944 = !DILocation(line: 478, column: 3, scope: !6942)
!6945 = !DILocation(line: 478, column: 3, scope: !6946)
!6946 = distinct !DILexicalBlock(scope: !6947, file: !335, line: 478, column: 3)
!6947 = distinct !DILexicalBlock(scope: !6942, file: !335, line: 478, column: 3)
!6948 = !{i32 -2143549193}
!6949 = !DILocation(line: 478, column: 3, scope: !6947)
!6950 = !DILocation(line: 480, column: 3, scope: !6942)
!6951 = !DILocation(line: 480, column: 3, scope: !6952)
!6952 = distinct !DILexicalBlock(scope: !6942, file: !335, line: 480, column: 3)
!6953 = !DILocation(line: 480, column: 3, scope: !6954)
!6954 = distinct !DILexicalBlock(scope: !6952, file: !335, line: 480, column: 3)
!6955 = !DILocation(line: 480, column: 3, scope: !6956)
!6956 = distinct !DILexicalBlock(scope: !6952, file: !335, line: 480, column: 3)
!6957 = !{i64 2151418306, i64 2151418335, i64 2151418381, i64 2151418439, i64 2151418493, i64 2151418547, i64 2151418602, i64 2151418633}
!6958 = !DILocation(line: 483, column: 2, scope: !6813)
!6959 = !DILocation(line: 484, column: 1, scope: !6813)
!6960 = !DISubprogram(name: "kmalloc_trace", scope: !335, file: !335, line: 525, type: !6961, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6961 = !DISubroutineType(types: !6962)
!6962 = !{!345, !3216, !346, !508}
!6963 = distinct !DISubprogram(name: "kmalloc_type", scope: !335, file: !335, line: 401, type: !6964, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6966)
!6964 = !DISubroutineType(types: !6965)
!6965 = !{!334, !346, !511}
!6966 = !{!6967, !6968}
!6967 = !DILocalVariable(name: "flags", arg: 1, scope: !6963, file: !335, line: 401, type: !346)
!6968 = !DILocalVariable(name: "caller", arg: 2, scope: !6963, file: !335, line: 401, type: !511)
!6969 = !DILocation(line: 401, column: 67, scope: !6963)
!6970 = !DILocation(line: 401, column: 88, scope: !6963)
!6971 = !DILocation(line: 407, column: 6, scope: !6972)
!6972 = distinct !DILexicalBlock(scope: !6963, file: !335, line: 407, column: 6)
!6973 = !DILocation(line: 407, column: 6, scope: !6963)
!6974 = !DILocation(line: 413, column: 3, scope: !6972)
!6975 = !DILocation(line: 423, column: 38, scope: !6976)
!6976 = distinct !DILexicalBlock(scope: !6963, file: !335, line: 423, column: 6)
!6977 = !DILocation(line: 423, column: 44, scope: !6976)
!6978 = !DILocation(line: 423, column: 6, scope: !6963)
!6979 = !DILocation(line: 424, column: 3, scope: !6976)
!6980 = !DILocation(line: 426, column: 3, scope: !6981)
!6981 = distinct !DILexicalBlock(scope: !6963, file: !335, line: 425, column: 6)
!6982 = !DILocation(line: 429, column: 1, scope: !6963)
!6983 = !DISubprogram(name: "__compiletime_assert_117", scope: !335, file: !335, line: 478, type: !1167, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6984 = distinct !DISubprogram(name: "drm_plane_index", scope: !288, file: !288, line: 873, type: !6985, scopeLine: 874, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !6987)
!6985 = !DISubroutineType(types: !6986)
!6986 = !{!13, !6673}
!6987 = !{!6988}
!6988 = !DILocalVariable(name: "plane", arg: 1, scope: !6984, file: !288, line: 873, type: !6673)
!6989 = !DILocation(line: 873, column: 68, scope: !6984)
!6990 = !DILocation(line: 875, column: 9, scope: !6984)
!6991 = !DILocation(line: 875, column: 16, scope: !6984)
!6992 = !DILocation(line: 875, column: 2, scope: !6984)

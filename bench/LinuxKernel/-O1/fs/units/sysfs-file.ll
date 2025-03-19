; ModuleID = 'fs/sysfs/file.c'
source_filename = "fs/sysfs/file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_notify: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_notify ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_file_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_file_ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_files: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_files ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_add_file_to_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_add_file_to_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_chmod_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_chmod_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_break_active_protection: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_break_active_protection ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_unbreak_active_protection: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_unbreak_active_protection ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_file_ns: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_file_ns ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_file_self: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_file_self ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_files: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_files ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_file_from_group: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_file_from_group ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_create_bin_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_create_bin_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_remove_bin_file: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_remove_bin_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_file_change_owner: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_file_change_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_change_owner: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_change_owner ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_emit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_emit ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_sysfs_emit_at: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad sysfs_emit_at ; .previous"

%struct.kernfs_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i8, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, ptr, ptr, %struct.rb_node, ptr, i32, %union.anon.13, ptr, i64, i16, i16, ptr, %struct.callback_head }
%struct.rb_node = type { i64, ptr, ptr }
%union.anon.13 = type { %struct.kernfs_elem_dir }
%struct.kernfs_elem_dir = type { i64, %struct.rb_root, ptr, i64 }
%struct.rb_root = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, ptr, ptr, ptr, ptr, ptr }
%struct.iattr = type { i32, i16, %union.anon.14, %union.anon.15, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, ptr }
%union.anon.14 = type { %struct.kuid_t }
%union.anon.15 = type { %struct.kgid_t }
%struct.timespec64 = type { i64, i64 }
%struct.kernfs_elem_symlink = type { ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.kernfs_open_file = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, %struct.list_head, ptr, i64, i8, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seq_file = type { ptr, i64, i64, i64, i64, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.file = type { %union.anon.16, %struct.spinlock, i32, %struct.atomic64_t, %struct.mutex, i64, i32, %struct.fown_struct, ptr, %struct.file_ra_state, %struct.path, ptr, ptr, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.16 = type { %struct.callback_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.17, %struct.qspinlock }
%union.anon.17 = type { %struct.atomic_t }
%struct.file_ra_state = type { i64, i32, i32, i32, i32, i64 }
%struct.path = type { ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.list_head, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i64, %union.anon.19, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, i64, %struct.rw_semaphore, i64, i64, %struct.hlist_node, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.20, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.21, ptr, %struct.address_space, %struct.list_head, %union.anon.22, i32, i32, ptr, ptr }
%union.anon.19 = type { i32 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.hlist_node = type { ptr, ptr }
%union.anon.20 = type { %struct.callback_head }
%union.anon.21 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, i64, i64, ptr, i64, %struct.rw_semaphore, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.22 = type { ptr }

@__UNIQUE_ID___addressable_sysfs_notify291 = internal global ptr @sysfs_notify, section ".discard.addressable", align 8, !dbg !0
@.str = private unnamed_addr constant [54 x i8] c"\013missing sysfs attribute operations for kobject: %s\0A\00", align 1, !dbg !121
@.str.1 = private unnamed_addr constant [16 x i8] c"fs/sysfs/file.c\00", align 1, !dbg !127
@sysfs_prealloc_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_read, i64 0, i8 1, ptr @sysfs_kf_write, ptr null, ptr null }, align 8, !dbg !174
@sysfs_prealloc_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_read, i64 0, i8 1, ptr null, ptr null, ptr null }, align 8, !dbg !4123
@sysfs_prealloc_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i8 1, ptr @sysfs_kf_write, ptr null, ptr null }, align 8, !dbg !4125
@sysfs_file_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr @sysfs_kf_seq_show, ptr null, ptr null, ptr null, ptr null, i64 0, i8 0, ptr @sysfs_kf_write, ptr null, ptr null }, align 8, !dbg !4127
@sysfs_file_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr @sysfs_kf_seq_show, ptr null, ptr null, ptr null, ptr null, i64 0, i8 0, ptr null, ptr null, ptr null }, align 8, !dbg !4139
@sysfs_file_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i8 0, ptr @sysfs_kf_write, ptr null, ptr null }, align 8, !dbg !4141
@sysfs_file_kfops_empty = internal constant %struct.kernfs_ops zeroinitializer, align 8, !dbg !4143
@sysfs_bin_kfops_mmap = internal constant %struct.kernfs_ops { ptr @sysfs_kf_bin_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i64 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr @sysfs_kf_bin_mmap }, align 8, !dbg !4145
@sysfs_bin_kfops_rw = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i64 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr null }, align 8, !dbg !4147
@sysfs_bin_kfops_ro = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sysfs_kf_bin_read, i64 0, i8 0, ptr null, ptr null, ptr null }, align 8, !dbg !4149
@sysfs_bin_kfops_wo = internal constant %struct.kernfs_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, i8 0, ptr @sysfs_kf_bin_write, ptr null, ptr null }, align 8, !dbg !4151
@__UNIQUE_ID___addressable_sysfs_create_file_ns292 = internal global ptr @sysfs_create_file_ns, section ".discard.addressable", align 8, !dbg !132
@__UNIQUE_ID___addressable_sysfs_create_files293 = internal global ptr @sysfs_create_files, section ".discard.addressable", align 8, !dbg !134
@__UNIQUE_ID___addressable_sysfs_add_file_to_group294 = internal global ptr @sysfs_add_file_to_group, section ".discard.addressable", align 8, !dbg !136
@__UNIQUE_ID___addressable_sysfs_chmod_file295 = internal global ptr @sysfs_chmod_file, section ".discard.addressable", align 8, !dbg !138
@__UNIQUE_ID___addressable_sysfs_break_active_protection296 = internal global ptr @sysfs_break_active_protection, section ".discard.addressable", align 8, !dbg !140
@__UNIQUE_ID___addressable_sysfs_unbreak_active_protection297 = internal global ptr @sysfs_unbreak_active_protection, section ".discard.addressable", align 8, !dbg !142
@__UNIQUE_ID___addressable_sysfs_remove_file_ns298 = internal global ptr @sysfs_remove_file_ns, section ".discard.addressable", align 8, !dbg !144
@__UNIQUE_ID___addressable_sysfs_remove_file_self299 = internal global ptr @sysfs_remove_file_self, section ".discard.addressable", align 8, !dbg !146
@__UNIQUE_ID___addressable_sysfs_remove_files300 = internal global ptr @sysfs_remove_files, section ".discard.addressable", align 8, !dbg !148
@__UNIQUE_ID___addressable_sysfs_remove_file_from_group301 = internal global ptr @sysfs_remove_file_from_group, section ".discard.addressable", align 8, !dbg !150
@__UNIQUE_ID___addressable_sysfs_create_bin_file302 = internal global ptr @sysfs_create_bin_file, section ".discard.addressable", align 8, !dbg !152
@__UNIQUE_ID___addressable_sysfs_remove_bin_file303 = internal global ptr @sysfs_remove_bin_file, section ".discard.addressable", align 8, !dbg !154
@__UNIQUE_ID___addressable_sysfs_file_change_owner304 = internal global ptr @sysfs_file_change_owner, section ".discard.addressable", align 8, !dbg !156
@__UNIQUE_ID___addressable_sysfs_change_owner305 = internal global ptr @sysfs_change_owner, section ".discard.addressable", align 8, !dbg !158
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid sysfs_emit: buf:%p\0A\00", align 1, !dbg !160
@__UNIQUE_ID___addressable_sysfs_emit306 = internal global ptr @sysfs_emit, section ".discard.addressable", align 8, !dbg !165
@.str.3 = private unnamed_addr constant [37 x i8] c"invalid sysfs_emit_at: buf:%p at:%d\0A\00", align 1, !dbg !167
@__UNIQUE_ID___addressable_sysfs_emit_at307 = internal global ptr @sysfs_emit_at, section ".discard.addressable", align 8, !dbg !172
@.str.4 = private unnamed_addr constant [42 x i8] c"fill_read_buffer: %pS returned bad count\0A\00", align 1, !dbg !4129
@.str.5 = private unnamed_addr constant [25 x i8] c"include/linux/seq_file.h\00", align 1, !dbg !4134
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID___addressable_sysfs_notify291, ptr @__UNIQUE_ID___addressable_sysfs_create_file_ns292, ptr @__UNIQUE_ID___addressable_sysfs_create_files293, ptr @__UNIQUE_ID___addressable_sysfs_add_file_to_group294, ptr @__UNIQUE_ID___addressable_sysfs_chmod_file295, ptr @__UNIQUE_ID___addressable_sysfs_break_active_protection296, ptr @__UNIQUE_ID___addressable_sysfs_unbreak_active_protection297, ptr @__UNIQUE_ID___addressable_sysfs_remove_file_ns298, ptr @__UNIQUE_ID___addressable_sysfs_remove_file_self299, ptr @__UNIQUE_ID___addressable_sysfs_remove_files300, ptr @__UNIQUE_ID___addressable_sysfs_remove_file_from_group301, ptr @__UNIQUE_ID___addressable_sysfs_create_bin_file302, ptr @__UNIQUE_ID___addressable_sysfs_remove_bin_file303, ptr @__UNIQUE_ID___addressable_sysfs_file_change_owner304, ptr @__UNIQUE_ID___addressable_sysfs_change_owner305, ptr @__UNIQUE_ID___addressable_sysfs_emit306, ptr @__UNIQUE_ID___addressable_sysfs_emit_at307], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_notify(ptr noundef %kobj, ptr noundef %dir, ptr noundef %attr) #0 align 16 !dbg !4162 {
entry:
  %kobj.addr = alloca ptr, align 8
  %dir.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4166, metadata !DIExpression()), !dbg !4171
  store ptr %dir, ptr %dir.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dir.addr, metadata !4167, metadata !DIExpression()), !dbg !4172
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4168, metadata !DIExpression()), !dbg !4173
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4174
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4169, metadata !DIExpression()), !dbg !4175
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4176
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4177
  %1 = load ptr, ptr %sd, align 8, !dbg !4177
  store ptr %1, ptr %kn, align 8, !dbg !4175
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #10, !dbg !4174
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !4170, metadata !DIExpression()), !dbg !4178
  %2 = load ptr, ptr %kn, align 8, !dbg !4179
  %tobool = icmp ne ptr %2, null, !dbg !4179
  br i1 %tobool, label %land.lhs.true, label %if.else, !dbg !4181

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %dir.addr, align 8, !dbg !4182
  %tobool1 = icmp ne ptr %3, null, !dbg !4182
  br i1 %tobool1, label %if.then, label %if.else, !dbg !4183

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %kn, align 8, !dbg !4184
  %5 = load ptr, ptr %dir.addr, align 8, !dbg !4185
  %call = call ptr @kernfs_find_and_get(ptr noundef %4, ptr noundef %5) #11, !dbg !4186
  store ptr %call, ptr %kn, align 8, !dbg !4187
  br label %if.end, !dbg !4188

if.else:                                          ; preds = %land.lhs.true, %entry
  %6 = load ptr, ptr %kn, align 8, !dbg !4189
  call void @kernfs_get(ptr noundef %6) #11, !dbg !4190
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %kn, align 8, !dbg !4191
  %tobool2 = icmp ne ptr %7, null, !dbg !4191
  br i1 %tobool2, label %land.lhs.true3, label %if.end7, !dbg !4193

land.lhs.true3:                                   ; preds = %if.end
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !4194
  %tobool4 = icmp ne ptr %8, null, !dbg !4194
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !4195

if.then5:                                         ; preds = %land.lhs.true3
  %9 = load ptr, ptr %kn, align 8, !dbg !4196
  %10 = load ptr, ptr %attr.addr, align 8, !dbg !4198
  %call6 = call ptr @kernfs_find_and_get(ptr noundef %9, ptr noundef %10) #11, !dbg !4199
  store ptr %call6, ptr %tmp, align 8, !dbg !4200
  %11 = load ptr, ptr %kn, align 8, !dbg !4201
  call void @kernfs_put(ptr noundef %11) #11, !dbg !4202
  %12 = load ptr, ptr %tmp, align 8, !dbg !4203
  store ptr %12, ptr %kn, align 8, !dbg !4204
  br label %if.end7, !dbg !4205

if.end7:                                          ; preds = %if.then5, %land.lhs.true3, %if.end
  %13 = load ptr, ptr %kn, align 8, !dbg !4206
  %tobool8 = icmp ne ptr %13, null, !dbg !4206
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4208

if.then9:                                         ; preds = %if.end7
  %14 = load ptr, ptr %kn, align 8, !dbg !4209
  call void @kernfs_notify(ptr noundef %14) #11, !dbg !4211
  %15 = load ptr, ptr %kn, align 8, !dbg !4212
  call void @kernfs_put(ptr noundef %15) #11, !dbg !4213
  br label %if.end10, !dbg !4214

if.end10:                                         ; preds = %if.then9, %if.end7
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #10, !dbg !4215
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4215
  ret void, !dbg !4215
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kernfs_find_and_get(ptr noundef %kn, ptr noundef %name) #3 align 16 !dbg !4216 {
entry:
  %kn.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4220, metadata !DIExpression()), !dbg !4222
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4221, metadata !DIExpression()), !dbg !4223
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4224
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4225
  %call = call ptr @kernfs_find_and_get_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #11, !dbg !4226
  ret ptr %call, !dbg !4227
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4228 dso_local void @kernfs_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4231 dso_local void @kernfs_put(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4232 dso_local void @kernfs_notify(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_add_file_mode_ns(ptr noundef %parent, ptr noundef %attr, i16 noundef zeroext %mode, i32 %uid.coerce, i32 %gid.coerce, ptr noundef %ns) #0 align 16 !dbg !4233 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %parent.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %ns.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %sysfs_ops = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4239, metadata !DIExpression()), !dbg !4258
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4240, metadata !DIExpression()), !dbg !4259
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4241, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4242, metadata !DIExpression()), !dbg !4261
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4243, metadata !DIExpression()), !dbg !4262
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4244, metadata !DIExpression()), !dbg !4263
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !4264
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !4245, metadata !DIExpression()), !dbg !4265
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4266
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 8, !dbg !4267
  %1 = load ptr, ptr %priv, align 8, !dbg !4267
  store ptr %1, ptr %kobj, align 8, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %sysfs_ops) #10, !dbg !4268
  call void @llvm.dbg.declare(metadata ptr %sysfs_ops, metadata !4246, metadata !DIExpression()), !dbg !4269
  %2 = load ptr, ptr %kobj, align 8, !dbg !4270
  %ktype = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 4, !dbg !4271
  %3 = load ptr, ptr %ktype, align 8, !dbg !4271
  %sysfs_ops2 = getelementptr inbounds %struct.kobj_type, ptr %3, i32 0, i32 1, !dbg !4272
  %4 = load ptr, ptr %sysfs_ops2, align 8, !dbg !4272
  store ptr %4, ptr %sysfs_ops, align 8, !dbg !4269
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4273
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4247, metadata !DIExpression()), !dbg !4274
  store ptr null, ptr %key, align 8, !dbg !4274
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !4275
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4249, metadata !DIExpression()), !dbg !4276
  store ptr null, ptr %ops, align 8, !dbg !4276
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4277
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4250, metadata !DIExpression()), !dbg !4278
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4279
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4251, metadata !DIExpression()), !dbg !4279
  %5 = load ptr, ptr %sysfs_ops, align 8, !dbg !4279
  %tobool = icmp ne ptr %5, null, !dbg !4279
  %lnot = xor i1 %tobool, true, !dbg !4279
  %lnot3 = xor i1 %lnot, true, !dbg !4279
  %lnot4 = xor i1 %lnot3, true, !dbg !4279
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4279
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4279
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4280
  %tobool5 = icmp ne i32 %6, 0, !dbg !4280
  %lnot6 = xor i1 %tobool5, true, !dbg !4280
  %lnot8 = xor i1 %lnot6, true, !dbg !4280
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4280
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4280
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4280
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4280
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4279

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4280

do.body:                                          ; preds = %if.then
  br label %do.body11, !dbg !4281

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !4282

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !4282

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %kobj, align 8, !dbg !4281
  %call = call ptr @kobject_name(ptr noundef %7) #11, !dbg !4281
  call void (ptr, ...) @__warn_printk(ptr noundef @.str, ptr noundef %call) #11, !dbg !4281
  br label %do.body12, !dbg !4281

do.body12:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !4284
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4254, metadata !DIExpression()), !dbg !4284
  store i32 2313, ptr %__flags, align 4, !dbg !4284
  br label %do.body13, !dbg !4284

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !4285

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4285

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !4284

do.body16:                                        ; preds = %do.end15
  %8 = load i32, ptr %__flags, align 4, !dbg !4287
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 267, i32 %8, i64 12) #10, !dbg !4287, !srcloc !4289
  br label %do.cond17, !dbg !4287

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !4287

do.end18:                                         ; preds = %do.cond17
  br label %do.body19, !dbg !4284

do.body19:                                        ; preds = %do.end18
  br label %do.cond20, !dbg !4290

do.cond20:                                        ; preds = %do.body19
  br label %do.end21, !dbg !4290

do.end21:                                         ; preds = %do.cond20
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !4281
  br label %do.cond22, !dbg !4284

do.cond22:                                        ; preds = %do.end21
  br label %do.end23, !dbg !4284

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !4281

do.body24:                                        ; preds = %do.end23
  br label %do.cond25, !dbg !4292

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !4292

do.end26:                                         ; preds = %do.cond25
  br label %do.cond27, !dbg !4281

do.cond27:                                        ; preds = %do.end26
  br label %do.end28, !dbg !4281

do.end28:                                         ; preds = %do.cond27
  br label %if.end, !dbg !4281

if.end:                                           ; preds = %do.end28, %entry
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !4279
  %tobool29 = icmp ne i32 %9, 0, !dbg !4279
  %lnot30 = xor i1 %tobool29, true, !dbg !4279
  %lnot32 = xor i1 %lnot30, true, !dbg !4279
  %lnot.ext33 = zext i1 %lnot32 to i32, !dbg !4279
  %conv34 = sext i32 %lnot.ext33 to i64, !dbg !4279
  %expval35 = call i64 @llvm.expect.i64(i64 %conv34, i64 0), !dbg !4279
  store i64 %expval35, ptr %tmp, align 8, !dbg !4280
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4294
  %10 = load i64, ptr %tmp, align 8, !dbg !4279
  %tobool36 = icmp ne i64 %10, 0, !dbg !4294
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4295

if.then37:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4296
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4296

if.end38:                                         ; preds = %if.end
  %11 = load i16, ptr %mode.addr, align 2, !dbg !4297
  %conv39 = zext i16 %11 to i32, !dbg !4297
  %and = and i32 %conv39, 4096, !dbg !4299
  %tobool40 = icmp ne i32 %and, 0, !dbg !4299
  br i1 %tobool40, label %if.then41, label %if.else55, !dbg !4300

if.then41:                                        ; preds = %if.end38
  %12 = load ptr, ptr %sysfs_ops, align 8, !dbg !4301
  %show = getelementptr inbounds %struct.sysfs_ops, ptr %12, i32 0, i32 0, !dbg !4304
  %13 = load ptr, ptr %show, align 8, !dbg !4304
  %tobool42 = icmp ne ptr %13, null, !dbg !4301
  br i1 %tobool42, label %land.lhs.true, label %if.else, !dbg !4305

land.lhs.true:                                    ; preds = %if.then41
  %14 = load ptr, ptr %sysfs_ops, align 8, !dbg !4306
  %store = getelementptr inbounds %struct.sysfs_ops, ptr %14, i32 0, i32 1, !dbg !4307
  %15 = load ptr, ptr %store, align 8, !dbg !4307
  %tobool43 = icmp ne ptr %15, null, !dbg !4306
  br i1 %tobool43, label %if.then44, label %if.else, !dbg !4308

if.then44:                                        ; preds = %land.lhs.true
  store ptr @sysfs_prealloc_kfops_rw, ptr %ops, align 8, !dbg !4309
  br label %if.end54, !dbg !4310

if.else:                                          ; preds = %land.lhs.true, %if.then41
  %16 = load ptr, ptr %sysfs_ops, align 8, !dbg !4311
  %show45 = getelementptr inbounds %struct.sysfs_ops, ptr %16, i32 0, i32 0, !dbg !4313
  %17 = load ptr, ptr %show45, align 8, !dbg !4313
  %tobool46 = icmp ne ptr %17, null, !dbg !4311
  br i1 %tobool46, label %if.then47, label %if.else48, !dbg !4314

if.then47:                                        ; preds = %if.else
  store ptr @sysfs_prealloc_kfops_ro, ptr %ops, align 8, !dbg !4315
  br label %if.end53, !dbg !4316

if.else48:                                        ; preds = %if.else
  %18 = load ptr, ptr %sysfs_ops, align 8, !dbg !4317
  %store49 = getelementptr inbounds %struct.sysfs_ops, ptr %18, i32 0, i32 1, !dbg !4319
  %19 = load ptr, ptr %store49, align 8, !dbg !4319
  %tobool50 = icmp ne ptr %19, null, !dbg !4317
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !4320

if.then51:                                        ; preds = %if.else48
  store ptr @sysfs_prealloc_kfops_wo, ptr %ops, align 8, !dbg !4321
  br label %if.end52, !dbg !4322

if.end52:                                         ; preds = %if.then51, %if.else48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then47
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.then44
  br label %if.end73, !dbg !4323

if.else55:                                        ; preds = %if.end38
  %20 = load ptr, ptr %sysfs_ops, align 8, !dbg !4324
  %show56 = getelementptr inbounds %struct.sysfs_ops, ptr %20, i32 0, i32 0, !dbg !4327
  %21 = load ptr, ptr %show56, align 8, !dbg !4327
  %tobool57 = icmp ne ptr %21, null, !dbg !4324
  br i1 %tobool57, label %land.lhs.true58, label %if.else62, !dbg !4328

land.lhs.true58:                                  ; preds = %if.else55
  %22 = load ptr, ptr %sysfs_ops, align 8, !dbg !4329
  %store59 = getelementptr inbounds %struct.sysfs_ops, ptr %22, i32 0, i32 1, !dbg !4330
  %23 = load ptr, ptr %store59, align 8, !dbg !4330
  %tobool60 = icmp ne ptr %23, null, !dbg !4329
  br i1 %tobool60, label %if.then61, label %if.else62, !dbg !4331

if.then61:                                        ; preds = %land.lhs.true58
  store ptr @sysfs_file_kfops_rw, ptr %ops, align 8, !dbg !4332
  br label %if.end72, !dbg !4333

if.else62:                                        ; preds = %land.lhs.true58, %if.else55
  %24 = load ptr, ptr %sysfs_ops, align 8, !dbg !4334
  %show63 = getelementptr inbounds %struct.sysfs_ops, ptr %24, i32 0, i32 0, !dbg !4336
  %25 = load ptr, ptr %show63, align 8, !dbg !4336
  %tobool64 = icmp ne ptr %25, null, !dbg !4334
  br i1 %tobool64, label %if.then65, label %if.else66, !dbg !4337

if.then65:                                        ; preds = %if.else62
  store ptr @sysfs_file_kfops_ro, ptr %ops, align 8, !dbg !4338
  br label %if.end71, !dbg !4339

if.else66:                                        ; preds = %if.else62
  %26 = load ptr, ptr %sysfs_ops, align 8, !dbg !4340
  %store67 = getelementptr inbounds %struct.sysfs_ops, ptr %26, i32 0, i32 1, !dbg !4342
  %27 = load ptr, ptr %store67, align 8, !dbg !4342
  %tobool68 = icmp ne ptr %27, null, !dbg !4340
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !4343

if.then69:                                        ; preds = %if.else66
  store ptr @sysfs_file_kfops_wo, ptr %ops, align 8, !dbg !4344
  br label %if.end70, !dbg !4345

if.end70:                                         ; preds = %if.then69, %if.else66
  br label %if.end71

if.end71:                                         ; preds = %if.end70, %if.then65
  br label %if.end72

if.end72:                                         ; preds = %if.end71, %if.then61
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.end54
  %28 = load ptr, ptr %ops, align 8, !dbg !4346
  %tobool74 = icmp ne ptr %28, null, !dbg !4346
  br i1 %tobool74, label %if.end76, label %if.then75, !dbg !4348

if.then75:                                        ; preds = %if.end73
  store ptr @sysfs_file_kfops_empty, ptr %ops, align 8, !dbg !4349
  br label %if.end76, !dbg !4350

if.end76:                                         ; preds = %if.then75, %if.end73
  %29 = load ptr, ptr %parent.addr, align 8, !dbg !4351
  %30 = load ptr, ptr %attr.addr, align 8, !dbg !4352
  %name = getelementptr inbounds %struct.attribute, ptr %30, i32 0, i32 0, !dbg !4353
  %31 = load ptr, ptr %name, align 8, !dbg !4353
  %32 = load i16, ptr %mode.addr, align 2, !dbg !4354
  %conv77 = zext i16 %32 to i32, !dbg !4354
  %and78 = and i32 %conv77, 511, !dbg !4355
  %conv79 = trunc i32 %and78 to i16, !dbg !4354
  %33 = load ptr, ptr %ops, align 8, !dbg !4356
  %34 = load ptr, ptr %attr.addr, align 8, !dbg !4357
  %35 = load ptr, ptr %ns.addr, align 8, !dbg !4358
  %36 = load ptr, ptr %key, align 8, !dbg !4359
  %coerce.dive80 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4360
  %37 = load i32, ptr %coerce.dive80, align 4, !dbg !4360
  %coerce.dive81 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4360
  %38 = load i32, ptr %coerce.dive81, align 4, !dbg !4360
  %call82 = call ptr @__kernfs_create_file(ptr noundef %29, ptr noundef %31, i16 noundef zeroext %conv79, i32 %37, i32 %38, i64 noundef 4096, ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36) #11, !dbg !4360
  store ptr %call82, ptr %kn, align 8, !dbg !4361
  %39 = load ptr, ptr %kn, align 8, !dbg !4362
  %call83 = call zeroext i1 @IS_ERR(ptr noundef %39) #11, !dbg !4364
  br i1 %call83, label %if.then84, label %if.end92, !dbg !4365

if.then84:                                        ; preds = %if.end76
  %40 = load ptr, ptr %kn, align 8, !dbg !4366
  %call85 = call i64 @PTR_ERR(ptr noundef %40) #11, !dbg !4369
  %cmp = icmp eq i64 %call85, -17, !dbg !4370
  br i1 %cmp, label %if.then87, label %if.end89, !dbg !4371

if.then87:                                        ; preds = %if.then84
  %41 = load ptr, ptr %parent.addr, align 8, !dbg !4372
  %42 = load ptr, ptr %attr.addr, align 8, !dbg !4373
  %name88 = getelementptr inbounds %struct.attribute, ptr %42, i32 0, i32 0, !dbg !4374
  %43 = load ptr, ptr %name88, align 8, !dbg !4374
  call void @sysfs_warn_dup(ptr noundef %41, ptr noundef %43) #11, !dbg !4375
  br label %if.end89, !dbg !4375

if.end89:                                         ; preds = %if.then87, %if.then84
  %44 = load ptr, ptr %kn, align 8, !dbg !4376
  %call90 = call i64 @PTR_ERR(ptr noundef %44) #11, !dbg !4377
  %conv91 = trunc i64 %call90 to i32, !dbg !4377
  store i32 %conv91, ptr %retval, align 4, !dbg !4378
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4378

if.end92:                                         ; preds = %if.end76
  store i32 0, ptr %retval, align 4, !dbg !4379
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4379

cleanup:                                          ; preds = %if.end92, %if.end89, %if.then37
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %sysfs_ops) #10, !dbg !4380
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !4380
  %45 = load i32, ptr %retval, align 4, !dbg !4380
  ret i32 %45, !dbg !4380
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4381 dso_local void @__warn_printk(ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !4384 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4386, metadata !DIExpression()), !dbg !4387
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4388
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4389
  %1 = load ptr, ptr %name, align 8, !dbg !4389
  ret ptr %1, !dbg !4390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4391 dso_local ptr @__kernfs_create_file(ptr noundef, ptr noundef, i16 noundef zeroext, i32, i32, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !4394 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4399, metadata !DIExpression()), !dbg !4400
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4401
  %1 = ptrtoint ptr %0 to i64, !dbg !4401
  %2 = inttoptr i64 %1 to ptr, !dbg !4401
  %3 = ptrtoint ptr %2 to i64, !dbg !4401
  %cmp = icmp uge i64 %3, -4095, !dbg !4401
  %lnot = xor i1 %cmp, true, !dbg !4401
  %lnot1 = xor i1 %lnot, true, !dbg !4401
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4401
  %conv = sext i32 %lnot.ext to i64, !dbg !4401
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4401
  %tobool = icmp ne i64 %expval, 0, !dbg !4401
  ret i1 %tobool, !dbg !4402
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !4403 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4407, metadata !DIExpression()), !dbg !4408
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4409
  %1 = ptrtoint ptr %0 to i64, !dbg !4410
  ret i64 %1, !dbg !4411
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4412 dso_local void @sysfs_warn_dup(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_add_bin_file_mode_ns(ptr noundef %parent, ptr noundef %battr, i16 noundef zeroext %mode, i32 %uid.coerce, i32 %gid.coerce, ptr noundef %ns) #0 align 16 !dbg !4416 {
entry:
  %retval = alloca i32, align 4
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %parent.addr = alloca ptr, align 8
  %battr.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %ns.addr = alloca ptr, align 8
  %attr = alloca ptr, align 8
  %key = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive1, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4422, metadata !DIExpression()), !dbg !4432
  store ptr %battr, ptr %battr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %battr.addr, metadata !4423, metadata !DIExpression()), !dbg !4433
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4424, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4425, metadata !DIExpression()), !dbg !4435
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4426, metadata !DIExpression()), !dbg !4436
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4427, metadata !DIExpression()), !dbg !4437
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #10, !dbg !4438
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !4428, metadata !DIExpression()), !dbg !4439
  %0 = load ptr, ptr %battr.addr, align 8, !dbg !4440
  %attr2 = getelementptr inbounds %struct.bin_attribute, ptr %0, i32 0, i32 0, !dbg !4441
  store ptr %attr2, ptr %attr, align 8, !dbg !4439
  call void @llvm.lifetime.start.p0(i64 8, ptr %key) #10, !dbg !4442
  call void @llvm.dbg.declare(metadata ptr %key, metadata !4429, metadata !DIExpression()), !dbg !4443
  store ptr null, ptr %key, align 8, !dbg !4443
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !4430, metadata !DIExpression()), !dbg !4445
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4431, metadata !DIExpression()), !dbg !4447
  %1 = load ptr, ptr %battr.addr, align 8, !dbg !4448
  %mmap = getelementptr inbounds %struct.bin_attribute, ptr %1, i32 0, i32 6, !dbg !4450
  %2 = load ptr, ptr %mmap, align 8, !dbg !4450
  %tobool = icmp ne ptr %2, null, !dbg !4448
  br i1 %tobool, label %if.then, label %if.else, !dbg !4451

if.then:                                          ; preds = %entry
  store ptr @sysfs_bin_kfops_mmap, ptr %ops, align 8, !dbg !4452
  br label %if.end17, !dbg !4453

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %battr.addr, align 8, !dbg !4454
  %read = getelementptr inbounds %struct.bin_attribute, ptr %3, i32 0, i32 4, !dbg !4456
  %4 = load ptr, ptr %read, align 8, !dbg !4456
  %tobool3 = icmp ne ptr %4, null, !dbg !4454
  br i1 %tobool3, label %land.lhs.true, label %if.else6, !dbg !4457

land.lhs.true:                                    ; preds = %if.else
  %5 = load ptr, ptr %battr.addr, align 8, !dbg !4458
  %write = getelementptr inbounds %struct.bin_attribute, ptr %5, i32 0, i32 5, !dbg !4459
  %6 = load ptr, ptr %write, align 8, !dbg !4459
  %tobool4 = icmp ne ptr %6, null, !dbg !4458
  br i1 %tobool4, label %if.then5, label %if.else6, !dbg !4460

if.then5:                                         ; preds = %land.lhs.true
  store ptr @sysfs_bin_kfops_rw, ptr %ops, align 8, !dbg !4461
  br label %if.end16, !dbg !4462

if.else6:                                         ; preds = %land.lhs.true, %if.else
  %7 = load ptr, ptr %battr.addr, align 8, !dbg !4463
  %read7 = getelementptr inbounds %struct.bin_attribute, ptr %7, i32 0, i32 4, !dbg !4465
  %8 = load ptr, ptr %read7, align 8, !dbg !4465
  %tobool8 = icmp ne ptr %8, null, !dbg !4463
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4466

if.then9:                                         ; preds = %if.else6
  store ptr @sysfs_bin_kfops_ro, ptr %ops, align 8, !dbg !4467
  br label %if.end15, !dbg !4468

if.else10:                                        ; preds = %if.else6
  %9 = load ptr, ptr %battr.addr, align 8, !dbg !4469
  %write11 = getelementptr inbounds %struct.bin_attribute, ptr %9, i32 0, i32 5, !dbg !4471
  %10 = load ptr, ptr %write11, align 8, !dbg !4471
  %tobool12 = icmp ne ptr %10, null, !dbg !4469
  br i1 %tobool12, label %if.then13, label %if.else14, !dbg !4472

if.then13:                                        ; preds = %if.else10
  store ptr @sysfs_bin_kfops_wo, ptr %ops, align 8, !dbg !4473
  br label %if.end, !dbg !4474

if.else14:                                        ; preds = %if.else10
  store ptr @sysfs_file_kfops_empty, ptr %ops, align 8, !dbg !4475
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then13
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.then5
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.then
  %11 = load ptr, ptr %parent.addr, align 8, !dbg !4476
  %12 = load ptr, ptr %attr, align 8, !dbg !4477
  %name = getelementptr inbounds %struct.attribute, ptr %12, i32 0, i32 0, !dbg !4478
  %13 = load ptr, ptr %name, align 8, !dbg !4478
  %14 = load i16, ptr %mode.addr, align 2, !dbg !4479
  %conv = zext i16 %14 to i32, !dbg !4479
  %and = and i32 %conv, 511, !dbg !4480
  %conv18 = trunc i32 %and to i16, !dbg !4479
  %15 = load ptr, ptr %battr.addr, align 8, !dbg !4481
  %size = getelementptr inbounds %struct.bin_attribute, ptr %15, i32 0, i32 1, !dbg !4482
  %16 = load i64, ptr %size, align 8, !dbg !4482
  %17 = load ptr, ptr %ops, align 8, !dbg !4483
  %18 = load ptr, ptr %attr, align 8, !dbg !4484
  %19 = load ptr, ptr %ns.addr, align 8, !dbg !4485
  %20 = load ptr, ptr %key, align 8, !dbg !4486
  %coerce.dive19 = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4487
  %21 = load i32, ptr %coerce.dive19, align 4, !dbg !4487
  %coerce.dive20 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4487
  %22 = load i32, ptr %coerce.dive20, align 4, !dbg !4487
  %call = call ptr @__kernfs_create_file(ptr noundef %11, ptr noundef %13, i16 noundef zeroext %conv18, i32 %21, i32 %22, i64 noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, ptr noundef %20) #11, !dbg !4487
  store ptr %call, ptr %kn, align 8, !dbg !4488
  %23 = load ptr, ptr %kn, align 8, !dbg !4489
  %call21 = call zeroext i1 @IS_ERR(ptr noundef %23) #11, !dbg !4491
  br i1 %call21, label %if.then22, label %if.end30, !dbg !4492

if.then22:                                        ; preds = %if.end17
  %24 = load ptr, ptr %kn, align 8, !dbg !4493
  %call23 = call i64 @PTR_ERR(ptr noundef %24) #11, !dbg !4496
  %cmp = icmp eq i64 %call23, -17, !dbg !4497
  br i1 %cmp, label %if.then25, label %if.end27, !dbg !4498

if.then25:                                        ; preds = %if.then22
  %25 = load ptr, ptr %parent.addr, align 8, !dbg !4499
  %26 = load ptr, ptr %attr, align 8, !dbg !4500
  %name26 = getelementptr inbounds %struct.attribute, ptr %26, i32 0, i32 0, !dbg !4501
  %27 = load ptr, ptr %name26, align 8, !dbg !4501
  call void @sysfs_warn_dup(ptr noundef %25, ptr noundef %27) #11, !dbg !4502
  br label %if.end27, !dbg !4502

if.end27:                                         ; preds = %if.then25, %if.then22
  %28 = load ptr, ptr %kn, align 8, !dbg !4503
  %call28 = call i64 @PTR_ERR(ptr noundef %28) #11, !dbg !4504
  %conv29 = trunc i64 %call28 to i32, !dbg !4504
  store i32 %conv29, ptr %retval, align 4, !dbg !4505
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4505

if.end30:                                         ; preds = %if.end17
  store i32 0, ptr %retval, align 4, !dbg !4506
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4506

cleanup:                                          ; preds = %if.end30, %if.end27
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 8, ptr %key) #10, !dbg !4507
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #10, !dbg !4507
  %29 = load i32, ptr %retval, align 4, !dbg !4507
  ret i32 %29, !dbg !4507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_file_ns(ptr noundef %kobj, ptr noundef %attr, ptr noundef %ns) #0 align 16 !dbg !4508 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4512, metadata !DIExpression()), !dbg !4523
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4513, metadata !DIExpression()), !dbg !4524
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4514, metadata !DIExpression()), !dbg !4525
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #10, !dbg !4526
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4515, metadata !DIExpression()), !dbg !4527
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #10, !dbg !4528
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4516, metadata !DIExpression()), !dbg !4529
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4517, metadata !DIExpression()), !dbg !4530
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4530
  %tobool = icmp ne ptr %0, null, !dbg !4530
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !4530

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4530
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !4530
  %2 = load ptr, ptr %sd, align 8, !dbg !4530
  %tobool1 = icmp ne ptr %2, null, !dbg !4530
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !4530

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4530
  %tobool2 = icmp ne ptr %3, null, !dbg !4530
  %lnot = xor i1 %tobool2, true, !dbg !4530
  br label %lor.end, !dbg !4530

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %4, true, !dbg !4530
  %lnot4 = xor i1 %lnot3, true, !dbg !4530
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4530
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4530
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4531
  %tobool5 = icmp ne i32 %5, 0, !dbg !4531
  %lnot6 = xor i1 %tobool5, true, !dbg !4531
  %lnot8 = xor i1 %lnot6, true, !dbg !4531
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4531
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4531
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4531
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4531
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4530

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4531

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !4532
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4520, metadata !DIExpression()), !dbg !4532
  store i32 2305, ptr %__flags, align 4, !dbg !4532
  br label %do.body11, !dbg !4532

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !4533

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !4533

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !4532

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4535
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 351, i32 %6, i64 12) #10, !dbg !4535, !srcloc !4537
  br label %do.cond13, !dbg !4535

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4535

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4532

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4538

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4538

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !4531
  br label %do.cond18, !dbg !4532

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4532

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !4532

if.end:                                           ; preds = %do.end19, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4530
  %tobool20 = icmp ne i32 %7, 0, !dbg !4530
  %lnot21 = xor i1 %tobool20, true, !dbg !4530
  %lnot23 = xor i1 %lnot21, true, !dbg !4530
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4530
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4530
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4530
  store i64 %expval26, ptr %tmp, align 8, !dbg !4531
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4540
  %8 = load i64, ptr %tmp, align 8, !dbg !4530
  %tobool27 = icmp ne i64 %8, 0, !dbg !4540
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4541

if.then28:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4542

if.end29:                                         ; preds = %if.end
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !4543
  call void @kobject_get_ownership(ptr noundef %9, ptr noundef %uid, ptr noundef %gid) #11, !dbg !4544
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !4545
  %sd30 = getelementptr inbounds %struct.kobject, ptr %10, i32 0, i32 5, !dbg !4546
  %11 = load ptr, ptr %sd30, align 8, !dbg !4546
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !4547
  %13 = load ptr, ptr %attr.addr, align 8, !dbg !4548
  %mode = getelementptr inbounds %struct.attribute, ptr %13, i32 0, i32 1, !dbg !4549
  %14 = load i16, ptr %mode, align 8, !dbg !4549
  %15 = load ptr, ptr %ns.addr, align 8, !dbg !4550
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4551
  %16 = load i32, ptr %coerce.dive, align 4, !dbg !4551
  %coerce.dive31 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4551
  %17 = load i32, ptr %coerce.dive31, align 4, !dbg !4551
  %call = call i32 @sysfs_add_file_mode_ns(ptr noundef %11, ptr noundef %12, i16 noundef zeroext %14, i32 %16, i32 %17, ptr noundef %15) #11, !dbg !4551
  store i32 %call, ptr %retval, align 4, !dbg !4552
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4552

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #10, !dbg !4553
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #10, !dbg !4553
  %18 = load i32, ptr %retval, align 4, !dbg !4553
  ret i32 %18, !dbg !4553
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4554 dso_local void @kobject_get_ownership(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_files(ptr noundef %kobj, ptr noundef %ptr) #0 align 16 !dbg !4555 {
entry:
  %kobj.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4561, metadata !DIExpression()), !dbg !4565
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4562, metadata !DIExpression()), !dbg !4566
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #10, !dbg !4567
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4563, metadata !DIExpression()), !dbg !4568
  store i32 0, ptr %err, align 4, !dbg !4568
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4569
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4564, metadata !DIExpression()), !dbg !4570
  store i32 0, ptr %i, align 4, !dbg !4571
  br label %for.cond, !dbg !4573

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4574
  %1 = load i32, ptr %i, align 4, !dbg !4576
  %idxprom = sext i32 %1 to i64, !dbg !4574
  %arrayidx = getelementptr ptr, ptr %0, i64 %idxprom, !dbg !4574
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4574
  %tobool = icmp ne ptr %2, null, !dbg !4574
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !4577

land.rhs:                                         ; preds = %for.cond
  %3 = load i32, ptr %err, align 4, !dbg !4578
  %tobool1 = icmp ne i32 %3, 0, !dbg !4579
  %lnot = xor i1 %tobool1, true, !dbg !4579
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %4 = phi i1 [ false, %for.cond ], [ %lnot, %land.rhs ], !dbg !4580
  br i1 %4, label %for.body, label %for.end, !dbg !4581

for.body:                                         ; preds = %land.end
  %5 = load ptr, ptr %kobj.addr, align 8, !dbg !4582
  %6 = load ptr, ptr %ptr.addr, align 8, !dbg !4583
  %7 = load i32, ptr %i, align 4, !dbg !4584
  %idxprom2 = sext i32 %7 to i64, !dbg !4583
  %arrayidx3 = getelementptr ptr, ptr %6, i64 %idxprom2, !dbg !4583
  %8 = load ptr, ptr %arrayidx3, align 8, !dbg !4583
  %call = call i32 @sysfs_create_file(ptr noundef %5, ptr noundef %8) #11, !dbg !4585
  store i32 %call, ptr %err, align 4, !dbg !4586
  br label %for.inc, !dbg !4587

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !dbg !4588
  %inc = add i32 %9, 1, !dbg !4588
  store i32 %inc, ptr %i, align 4, !dbg !4588
  br label %for.cond, !dbg !4589, !llvm.loop !4590

for.end:                                          ; preds = %land.end
  %10 = load i32, ptr %err, align 4, !dbg !4594
  %tobool4 = icmp ne i32 %10, 0, !dbg !4594
  br i1 %tobool4, label %if.then, label %if.end, !dbg !4596

if.then:                                          ; preds = %for.end
  br label %while.cond, !dbg !4597

while.cond:                                       ; preds = %while.body, %if.then
  %11 = load i32, ptr %i, align 4, !dbg !4598
  %dec = add i32 %11, -1, !dbg !4598
  store i32 %dec, ptr %i, align 4, !dbg !4598
  %cmp = icmp sge i32 %dec, 0, !dbg !4599
  br i1 %cmp, label %while.body, label %while.end, !dbg !4597

while.body:                                       ; preds = %while.cond
  %12 = load ptr, ptr %kobj.addr, align 8, !dbg !4600
  %13 = load ptr, ptr %ptr.addr, align 8, !dbg !4601
  %14 = load i32, ptr %i, align 4, !dbg !4602
  %idxprom5 = sext i32 %14 to i64, !dbg !4601
  %arrayidx6 = getelementptr ptr, ptr %13, i64 %idxprom5, !dbg !4601
  %15 = load ptr, ptr %arrayidx6, align 8, !dbg !4601
  call void @sysfs_remove_file(ptr noundef %12, ptr noundef %15) #11, !dbg !4603
  br label %while.cond, !dbg !4597, !llvm.loop !4604

while.end:                                        ; preds = %while.cond
  br label %if.end, !dbg !4597

if.end:                                           ; preds = %while.end, %for.end
  %16 = load i32, ptr %err, align 4, !dbg !4606
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4607
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #10, !dbg !4607
  ret i32 %16, !dbg !4608
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !4609 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4613, metadata !DIExpression()), !dbg !4615
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4614, metadata !DIExpression()), !dbg !4616
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4617
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !4618
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #11, !dbg !4619
  ret i32 %call, !dbg !4620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !4621 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4625, metadata !DIExpression()), !dbg !4627
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4626, metadata !DIExpression()), !dbg !4628
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4629
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !4630
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #11, !dbg !4631
  ret void, !dbg !4632
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_add_file_to_group(ptr noundef %kobj, ptr noundef %attr, ptr noundef %group) #0 align 16 !dbg !4633 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4637, metadata !DIExpression()), !dbg !4644
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4638, metadata !DIExpression()), !dbg !4645
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4639, metadata !DIExpression()), !dbg !4646
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !4647
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4640, metadata !DIExpression()), !dbg !4648
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #10, !dbg !4649
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4641, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #10, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4642, metadata !DIExpression()), !dbg !4652
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %error, metadata !4643, metadata !DIExpression()), !dbg !4654
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4655
  %tobool = icmp ne ptr %0, null, !dbg !4655
  br i1 %tobool, label %if.then, label %if.else, !dbg !4657

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4658
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !4660
  %2 = load ptr, ptr %sd, align 8, !dbg !4660
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4661
  %call = call ptr @kernfs_find_and_get(ptr noundef %2, ptr noundef %3) #11, !dbg !4662
  store ptr %call, ptr %parent, align 8, !dbg !4663
  br label %if.end, !dbg !4664

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !4665
  %sd1 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 5, !dbg !4667
  %5 = load ptr, ptr %sd1, align 8, !dbg !4667
  store ptr %5, ptr %parent, align 8, !dbg !4668
  %6 = load ptr, ptr %parent, align 8, !dbg !4669
  call void @kernfs_get(ptr noundef %6) #11, !dbg !4670
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %parent, align 8, !dbg !4671
  %tobool2 = icmp ne ptr %7, null, !dbg !4671
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !4673

if.then3:                                         ; preds = %if.end
  store i32 -2, ptr %retval, align 4, !dbg !4674
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4674

if.end4:                                          ; preds = %if.end
  %8 = load ptr, ptr %kobj.addr, align 8, !dbg !4675
  call void @kobject_get_ownership(ptr noundef %8, ptr noundef %uid, ptr noundef %gid) #11, !dbg !4676
  %9 = load ptr, ptr %parent, align 8, !dbg !4677
  %10 = load ptr, ptr %attr.addr, align 8, !dbg !4678
  %11 = load ptr, ptr %attr.addr, align 8, !dbg !4679
  %mode = getelementptr inbounds %struct.attribute, ptr %11, i32 0, i32 1, !dbg !4680
  %12 = load i16, ptr %mode, align 8, !dbg !4680
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4681
  %13 = load i32, ptr %coerce.dive, align 4, !dbg !4681
  %coerce.dive5 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4681
  %14 = load i32, ptr %coerce.dive5, align 4, !dbg !4681
  %call6 = call i32 @sysfs_add_file_mode_ns(ptr noundef %9, ptr noundef %10, i16 noundef zeroext %12, i32 %13, i32 %14, ptr noundef null) #11, !dbg !4681
  store i32 %call6, ptr %error, align 4, !dbg !4682
  %15 = load ptr, ptr %parent, align 8, !dbg !4683
  call void @kernfs_put(ptr noundef %15) #11, !dbg !4684
  %16 = load i32, ptr %error, align 4, !dbg !4685
  store i32 %16, ptr %retval, align 4, !dbg !4686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4686

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #10, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #10, !dbg !4687
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !4687
  %17 = load i32, ptr %retval, align 4, !dbg !4687
  ret i32 %17, !dbg !4687
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_chmod_file(ptr noundef %kobj, ptr noundef %attr, i16 noundef zeroext %mode) #0 align 16 !dbg !4688 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %mode.addr = alloca i16, align 2
  %kn = alloca ptr, align 8
  %newattrs = alloca %struct.iattr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4692, metadata !DIExpression()), !dbg !4698
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4693, metadata !DIExpression()), !dbg !4699
  store i16 %mode, ptr %mode.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %mode.addr, metadata !4694, metadata !DIExpression()), !dbg !4700
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4701
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4695, metadata !DIExpression()), !dbg !4702
  call void @llvm.lifetime.start.p0(i64 80, ptr %newattrs) #10, !dbg !4703
  call void @llvm.dbg.declare(metadata ptr %newattrs, metadata !4696, metadata !DIExpression()), !dbg !4704
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #10, !dbg !4705
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !4697, metadata !DIExpression()), !dbg !4706
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4707
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4708
  %1 = load ptr, ptr %sd, align 8, !dbg !4708
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !4709
  %name = getelementptr inbounds %struct.attribute, ptr %2, i32 0, i32 0, !dbg !4710
  %3 = load ptr, ptr %name, align 8, !dbg !4710
  %call = call ptr @kernfs_find_and_get(ptr noundef %1, ptr noundef %3) #11, !dbg !4711
  store ptr %call, ptr %kn, align 8, !dbg !4712
  %4 = load ptr, ptr %kn, align 8, !dbg !4713
  %tobool = icmp ne ptr %4, null, !dbg !4713
  br i1 %tobool, label %if.end, label %if.then, !dbg !4715

if.then:                                          ; preds = %entry
  store i32 -2, ptr %retval, align 4, !dbg !4716
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4716

if.end:                                           ; preds = %entry
  %5 = load i16, ptr %mode.addr, align 2, !dbg !4717
  %conv = zext i16 %5 to i32, !dbg !4717
  %and = and i32 %conv, 4095, !dbg !4718
  %6 = load ptr, ptr %kn, align 8, !dbg !4719
  %mode1 = getelementptr inbounds %struct.kernfs_node, ptr %6, i32 0, i32 11, !dbg !4720
  %7 = load i16, ptr %mode1, align 2, !dbg !4720
  %conv2 = zext i16 %7 to i32, !dbg !4719
  %and3 = and i32 %conv2, -4096, !dbg !4721
  %or = or i32 %and, %and3, !dbg !4722
  %conv4 = trunc i32 %or to i16, !dbg !4723
  %ia_mode = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 1, !dbg !4724
  store i16 %conv4, ptr %ia_mode, align 4, !dbg !4725
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 0, !dbg !4726
  store i32 1, ptr %ia_valid, align 8, !dbg !4727
  %8 = load ptr, ptr %kn, align 8, !dbg !4728
  %call5 = call i32 @kernfs_setattr(ptr noundef %8, ptr noundef %newattrs) #11, !dbg !4729
  store i32 %call5, ptr %rc, align 4, !dbg !4730
  %9 = load ptr, ptr %kn, align 8, !dbg !4731
  call void @kernfs_put(ptr noundef %9) #11, !dbg !4732
  %10 = load i32, ptr %rc, align 4, !dbg !4733
  store i32 %10, ptr %retval, align 4, !dbg !4734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4734

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #10, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 80, ptr %newattrs) #10, !dbg !4735
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4735
  %11 = load i32, ptr %retval, align 4, !dbg !4735
  ret i32 %11, !dbg !4735
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4736 dso_local i32 @kernfs_setattr(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @sysfs_break_active_protection(ptr noundef %kobj, ptr noundef %attr) #0 align 16 !dbg !4741 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4745, metadata !DIExpression()), !dbg !4748
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4746, metadata !DIExpression()), !dbg !4749
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4750
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4747, metadata !DIExpression()), !dbg !4751
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4752
  %call = call ptr @kobject_get(ptr noundef %0) #11, !dbg !4753
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4754
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !4755
  %2 = load ptr, ptr %sd, align 8, !dbg !4755
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4756
  %name = getelementptr inbounds %struct.attribute, ptr %3, i32 0, i32 0, !dbg !4757
  %4 = load ptr, ptr %name, align 8, !dbg !4757
  %call1 = call ptr @kernfs_find_and_get(ptr noundef %2, ptr noundef %4) #11, !dbg !4758
  store ptr %call1, ptr %kn, align 8, !dbg !4759
  %5 = load ptr, ptr %kn, align 8, !dbg !4760
  %tobool = icmp ne ptr %5, null, !dbg !4760
  br i1 %tobool, label %if.then, label %if.else, !dbg !4762

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %kn, align 8, !dbg !4763
  call void @kernfs_break_active_protection(ptr noundef %6) #11, !dbg !4764
  br label %if.end, !dbg !4764

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !4765
  call void @kobject_put(ptr noundef %7) #11, !dbg !4766
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %kn, align 8, !dbg !4767
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4768
  ret ptr %8, !dbg !4769
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4770 dso_local ptr @kobject_get(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4773 dso_local void @kernfs_break_active_protection(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4774 dso_local void @kobject_put(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_unbreak_active_protection(ptr noundef %kn) #0 align 16 !dbg !4775 {
entry:
  %kn.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !4777, metadata !DIExpression()), !dbg !4779
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !4780
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !4778, metadata !DIExpression()), !dbg !4781
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !4782
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !4783
  %1 = load ptr, ptr %parent, align 8, !dbg !4783
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !4784
  %2 = load ptr, ptr %priv, align 8, !dbg !4784
  store ptr %2, ptr %kobj, align 8, !dbg !4781
  %3 = load ptr, ptr %kn.addr, align 8, !dbg !4785
  call void @kernfs_unbreak_active_protection(ptr noundef %3) #11, !dbg !4786
  %4 = load ptr, ptr %kn.addr, align 8, !dbg !4787
  call void @kernfs_put(ptr noundef %4) #11, !dbg !4788
  %5 = load ptr, ptr %kobj, align 8, !dbg !4789
  call void @kobject_put(ptr noundef %5) #11, !dbg !4790
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !4791
  ret void, !dbg !4791
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4792 dso_local void @kernfs_unbreak_active_protection(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_file_ns(ptr noundef %kobj, ptr noundef %attr, ptr noundef %ns) #0 align 16 !dbg !4793 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %ns.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4797, metadata !DIExpression()), !dbg !4801
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4798, metadata !DIExpression()), !dbg !4802
  store ptr %ns, ptr %ns.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ns.addr, metadata !4799, metadata !DIExpression()), !dbg !4803
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !4804
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4800, metadata !DIExpression()), !dbg !4805
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4806
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4807
  %1 = load ptr, ptr %sd, align 8, !dbg !4807
  store ptr %1, ptr %parent, align 8, !dbg !4805
  %2 = load ptr, ptr %parent, align 8, !dbg !4808
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4809
  %name = getelementptr inbounds %struct.attribute, ptr %3, i32 0, i32 0, !dbg !4810
  %4 = load ptr, ptr %name, align 8, !dbg !4810
  %5 = load ptr, ptr %ns.addr, align 8, !dbg !4811
  %call = call i32 @kernfs_remove_by_name_ns(ptr noundef %2, ptr noundef %4, ptr noundef %5) #11, !dbg !4812
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !4813
  ret void, !dbg !4813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4814 dso_local i32 @kernfs_remove_by_name_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @sysfs_remove_file_self(ptr noundef %kobj, ptr noundef %attr) #0 align 16 !dbg !4817 {
entry:
  %retval = alloca i1, align 1
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %ret = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4821, metadata !DIExpression()), !dbg !4832
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4822, metadata !DIExpression()), !dbg !4833
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !4834
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4823, metadata !DIExpression()), !dbg !4835
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4836
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !4837
  %1 = load ptr, ptr %sd, align 8, !dbg !4837
  store ptr %1, ptr %parent, align 8, !dbg !4835
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !4838
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !4824, metadata !DIExpression()), !dbg !4839
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #10, !dbg !4840
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4825, metadata !DIExpression()), !dbg !4841
  %2 = load ptr, ptr %parent, align 8, !dbg !4842
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4843
  %name = getelementptr inbounds %struct.attribute, ptr %3, i32 0, i32 0, !dbg !4844
  %4 = load ptr, ptr %name, align 8, !dbg !4844
  %call = call ptr @kernfs_find_and_get(ptr noundef %2, ptr noundef %4) #11, !dbg !4845
  store ptr %call, ptr %kn, align 8, !dbg !4846
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4847
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4826, metadata !DIExpression()), !dbg !4847
  %5 = load ptr, ptr %kn, align 8, !dbg !4847
  %tobool = icmp ne ptr %5, null, !dbg !4847
  %lnot = xor i1 %tobool, true, !dbg !4847
  %lnot1 = xor i1 %lnot, true, !dbg !4847
  %lnot2 = xor i1 %lnot1, true, !dbg !4847
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4847
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4847
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !4848
  %tobool3 = icmp ne i32 %6, 0, !dbg !4848
  %lnot4 = xor i1 %tobool3, true, !dbg !4848
  %lnot6 = xor i1 %lnot4, true, !dbg !4848
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4848
  %conv = sext i32 %lnot.ext7 to i64, !dbg !4848
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4848
  %tobool8 = icmp ne i64 %expval, 0, !dbg !4848
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4847

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4848

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !4849
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4829, metadata !DIExpression()), !dbg !4849
  store i32 2307, ptr %__flags, align 4, !dbg !4849
  br label %do.body9, !dbg !4849

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4850

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4850

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4849

do.body10:                                        ; preds = %do.end
  %7 = load i32, ptr %__flags, align 4, !dbg !4852
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 511, i32 %7, i64 12) #10, !dbg !4852, !srcloc !4854
  br label %do.cond11, !dbg !4852

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4852

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !4849

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !4855

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !4855

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !4848
  br label %do.cond16, !dbg !4849

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !4849

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !4849

if.end:                                           ; preds = %do.end17, %entry
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !4847
  %tobool18 = icmp ne i32 %8, 0, !dbg !4847
  %lnot19 = xor i1 %tobool18, true, !dbg !4847
  %lnot21 = xor i1 %lnot19, true, !dbg !4847
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4847
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4847
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4847
  store i64 %expval24, ptr %tmp, align 8, !dbg !4848
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4857
  %9 = load i64, ptr %tmp, align 8, !dbg !4847
  %tobool25 = icmp ne i64 %9, 0, !dbg !4857
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !4858

if.then26:                                        ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4859
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4859

if.end27:                                         ; preds = %if.end
  %10 = load ptr, ptr %kn, align 8, !dbg !4860
  %call28 = call zeroext i1 @kernfs_remove_self(ptr noundef %10) #11, !dbg !4861
  %frombool = zext i1 %call28 to i8, !dbg !4862
  store i8 %frombool, ptr %ret, align 1, !dbg !4862
  %11 = load ptr, ptr %kn, align 8, !dbg !4863
  call void @kernfs_put(ptr noundef %11) #11, !dbg !4864
  %12 = load i8, ptr %ret, align 1, !dbg !4865, !range !4866, !noundef !1240
  %tobool29 = trunc i8 %12 to i1, !dbg !4865
  store i1 %tobool29, ptr %retval, align 1, !dbg !4867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4867

cleanup:                                          ; preds = %if.end27, %if.then26
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #10, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !4868
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !4868
  %13 = load i1, ptr %retval, align 1, !dbg !4868
  ret i1 %13, !dbg !4868
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4869 dso_local zeroext i1 @kernfs_remove_self(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_files(ptr noundef %kobj, ptr noundef %ptr) #0 align 16 !dbg !4872 {
entry:
  %kobj.addr = alloca ptr, align 8
  %ptr.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4876, metadata !DIExpression()), !dbg !4879
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4877, metadata !DIExpression()), !dbg !4880
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4881
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4878, metadata !DIExpression()), !dbg !4882
  store i32 0, ptr %i, align 4, !dbg !4883
  br label %for.cond, !dbg !4885

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !4886
  %1 = load i32, ptr %i, align 4, !dbg !4888
  %idxprom = sext i32 %1 to i64, !dbg !4886
  %arrayidx = getelementptr ptr, ptr %0, i64 %idxprom, !dbg !4886
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !4886
  %tobool = icmp ne ptr %2, null, !dbg !4889
  br i1 %tobool, label %for.body, label %for.end, !dbg !4889

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !4890
  %4 = load ptr, ptr %ptr.addr, align 8, !dbg !4891
  %5 = load i32, ptr %i, align 4, !dbg !4892
  %idxprom1 = sext i32 %5 to i64, !dbg !4891
  %arrayidx2 = getelementptr ptr, ptr %4, i64 %idxprom1, !dbg !4891
  %6 = load ptr, ptr %arrayidx2, align 8, !dbg !4891
  call void @sysfs_remove_file(ptr noundef %3, ptr noundef %6) #11, !dbg !4893
  br label %for.inc, !dbg !4893

for.inc:                                          ; preds = %for.body
  %7 = load i32, ptr %i, align 4, !dbg !4894
  %inc = add i32 %7, 1, !dbg !4894
  store i32 %inc, ptr %i, align 4, !dbg !4894
  br label %for.cond, !dbg !4895, !llvm.loop !4896

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4898
  ret void, !dbg !4898
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_file_from_group(ptr noundef %kobj, ptr noundef %attr, ptr noundef %group) #0 align 16 !dbg !4899 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %group.addr = alloca ptr, align 8
  %parent = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4903, metadata !DIExpression()), !dbg !4907
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4904, metadata !DIExpression()), !dbg !4908
  store ptr %group, ptr %group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %group.addr, metadata !4905, metadata !DIExpression()), !dbg !4909
  call void @llvm.lifetime.start.p0(i64 8, ptr %parent) #10, !dbg !4910
  call void @llvm.dbg.declare(metadata ptr %parent, metadata !4906, metadata !DIExpression()), !dbg !4911
  %0 = load ptr, ptr %group.addr, align 8, !dbg !4912
  %tobool = icmp ne ptr %0, null, !dbg !4912
  br i1 %tobool, label %if.then, label %if.else, !dbg !4914

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4915
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !4917
  %2 = load ptr, ptr %sd, align 8, !dbg !4917
  %3 = load ptr, ptr %group.addr, align 8, !dbg !4918
  %call = call ptr @kernfs_find_and_get(ptr noundef %2, ptr noundef %3) #11, !dbg !4919
  store ptr %call, ptr %parent, align 8, !dbg !4920
  br label %if.end, !dbg !4921

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !4922
  %sd1 = getelementptr inbounds %struct.kobject, ptr %4, i32 0, i32 5, !dbg !4924
  %5 = load ptr, ptr %sd1, align 8, !dbg !4924
  store ptr %5, ptr %parent, align 8, !dbg !4925
  %6 = load ptr, ptr %parent, align 8, !dbg !4926
  call void @kernfs_get(ptr noundef %6) #11, !dbg !4927
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %7 = load ptr, ptr %parent, align 8, !dbg !4928
  %tobool2 = icmp ne ptr %7, null, !dbg !4928
  br i1 %tobool2, label %if.then3, label %if.end5, !dbg !4930

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %parent, align 8, !dbg !4931
  %9 = load ptr, ptr %attr.addr, align 8, !dbg !4933
  %name = getelementptr inbounds %struct.attribute, ptr %9, i32 0, i32 0, !dbg !4934
  %10 = load ptr, ptr %name, align 8, !dbg !4934
  %call4 = call i32 @kernfs_remove_by_name(ptr noundef %8, ptr noundef %10) #11, !dbg !4935
  %11 = load ptr, ptr %parent, align 8, !dbg !4936
  call void @kernfs_put(ptr noundef %11) #11, !dbg !4937
  br label %if.end5, !dbg !4938

if.end5:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %parent) #10, !dbg !4939
  ret void, !dbg !4939
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_remove_by_name(ptr noundef %parent, ptr noundef %name) #3 align 16 !dbg !4940 {
entry:
  %parent.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !4944, metadata !DIExpression()), !dbg !4946
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !4945, metadata !DIExpression()), !dbg !4947
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !4948
  %1 = load ptr, ptr %name.addr, align 8, !dbg !4949
  %call = call i32 @kernfs_remove_by_name_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #11, !dbg !4950
  ret i32 %call, !dbg !4951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_create_bin_file(ptr noundef %kobj, ptr noundef %attr) #0 align 16 !dbg !4952 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %uid = alloca %struct.kuid_t, align 4
  %gid = alloca %struct.kgid_t, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4956, metadata !DIExpression()), !dbg !4966
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4957, metadata !DIExpression()), !dbg !4967
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #10, !dbg !4968
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !4958, metadata !DIExpression()), !dbg !4969
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #10, !dbg !4970
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !4959, metadata !DIExpression()), !dbg !4971
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4972
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4960, metadata !DIExpression()), !dbg !4972
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4972
  %tobool = icmp ne ptr %0, null, !dbg !4972
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !4972

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !4972
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !4972
  %2 = load ptr, ptr %sd, align 8, !dbg !4972
  %tobool1 = icmp ne ptr %2, null, !dbg !4972
  br i1 %tobool1, label %lor.rhs, label %lor.end, !dbg !4972

lor.rhs:                                          ; preds = %lor.lhs.false
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !4972
  %tobool2 = icmp ne ptr %3, null, !dbg !4972
  %lnot = xor i1 %tobool2, true, !dbg !4972
  br label %lor.end, !dbg !4972

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false, %entry
  %4 = phi i1 [ true, %lor.lhs.false ], [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot3 = xor i1 %4, true, !dbg !4972
  %lnot4 = xor i1 %lnot3, true, !dbg !4972
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4972
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4972
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !4973
  %tobool5 = icmp ne i32 %5, 0, !dbg !4973
  %lnot6 = xor i1 %tobool5, true, !dbg !4973
  %lnot8 = xor i1 %lnot6, true, !dbg !4973
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !4973
  %conv = sext i32 %lnot.ext9 to i64, !dbg !4973
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4973
  %tobool10 = icmp ne i64 %expval, 0, !dbg !4973
  br i1 %tobool10, label %if.then, label %if.end, !dbg !4972

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !4973

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !4974
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4963, metadata !DIExpression()), !dbg !4974
  store i32 2305, ptr %__flags, align 4, !dbg !4974
  br label %do.body11, !dbg !4974

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !4975

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !4975

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !4974

do.body12:                                        ; preds = %do.end
  %6 = load i32, ptr %__flags, align 4, !dbg !4977
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 566, i32 %6, i64 12) #10, !dbg !4977, !srcloc !4979
  br label %do.cond13, !dbg !4977

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !4977

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !4974

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !4980

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !4980

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !4973
  br label %do.cond18, !dbg !4974

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !4974

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !4974

if.end:                                           ; preds = %do.end19, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !4972
  %tobool20 = icmp ne i32 %7, 0, !dbg !4972
  %lnot21 = xor i1 %tobool20, true, !dbg !4972
  %lnot23 = xor i1 %lnot21, true, !dbg !4972
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !4972
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !4972
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !4972
  store i64 %expval26, ptr %tmp, align 8, !dbg !4973
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !4982
  %8 = load i64, ptr %tmp, align 8, !dbg !4972
  %tobool27 = icmp ne i64 %8, 0, !dbg !4982
  br i1 %tobool27, label %if.then28, label %if.end29, !dbg !4983

if.then28:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !4984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4984

if.end29:                                         ; preds = %if.end
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !4985
  call void @kobject_get_ownership(ptr noundef %9, ptr noundef %uid, ptr noundef %gid) #11, !dbg !4986
  %10 = load ptr, ptr %kobj.addr, align 8, !dbg !4987
  %sd30 = getelementptr inbounds %struct.kobject, ptr %10, i32 0, i32 5, !dbg !4988
  %11 = load ptr, ptr %sd30, align 8, !dbg !4988
  %12 = load ptr, ptr %attr.addr, align 8, !dbg !4989
  %13 = load ptr, ptr %attr.addr, align 8, !dbg !4990
  %attr31 = getelementptr inbounds %struct.bin_attribute, ptr %13, i32 0, i32 0, !dbg !4991
  %mode = getelementptr inbounds %struct.attribute, ptr %attr31, i32 0, i32 1, !dbg !4992
  %14 = load i16, ptr %mode, align 8, !dbg !4992
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !4993
  %15 = load i32, ptr %coerce.dive, align 4, !dbg !4993
  %coerce.dive32 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !4993
  %16 = load i32, ptr %coerce.dive32, align 4, !dbg !4993
  %call = call i32 @sysfs_add_bin_file_mode_ns(ptr noundef %11, ptr noundef %12, i16 noundef zeroext %14, i32 %15, i32 %16, ptr noundef null) #11, !dbg !4993
  store i32 %call, ptr %retval, align 4, !dbg !4994
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4994

cleanup:                                          ; preds = %if.end29, %if.then28
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #10, !dbg !4995
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #10, !dbg !4995
  %17 = load i32, ptr %retval, align 4, !dbg !4995
  ret i32 %17, !dbg !4995
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sysfs_remove_bin_file(ptr noundef %kobj, ptr noundef %attr) #0 align 16 !dbg !4996 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5000, metadata !DIExpression()), !dbg !5002
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !5001, metadata !DIExpression()), !dbg !5003
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5004
  %sd = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 5, !dbg !5005
  %1 = load ptr, ptr %sd, align 8, !dbg !5005
  %2 = load ptr, ptr %attr.addr, align 8, !dbg !5006
  %attr1 = getelementptr inbounds %struct.bin_attribute, ptr %2, i32 0, i32 0, !dbg !5007
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !5008
  %3 = load ptr, ptr %name, align 8, !dbg !5008
  %call = call i32 @kernfs_remove_by_name(ptr noundef %1, ptr noundef %3) #11, !dbg !5009
  ret void, !dbg !5010
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_link_change_owner(ptr noundef %kobj, ptr noundef %targ, ptr noundef %name, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !5011 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kobj.addr = alloca ptr, align 8
  %targ.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5015, metadata !DIExpression()), !dbg !5023
  store ptr %targ, ptr %targ.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %targ.addr, metadata !5016, metadata !DIExpression()), !dbg !5024
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5017, metadata !DIExpression()), !dbg !5025
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5018, metadata !DIExpression()), !dbg !5026
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5019, metadata !DIExpression()), !dbg !5027
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !5028
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5020, metadata !DIExpression()), !dbg !5029
  store ptr null, ptr %kn, align 8, !dbg !5029
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !5030
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5021, metadata !DIExpression()), !dbg !5031
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5032
  %tobool = icmp ne ptr %0, null, !dbg !5032
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !5034

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !5035
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7, !dbg !5036
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !5036
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5036
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5036
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5036
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !5035
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !5037

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %targ.addr, align 8, !dbg !5038
  %state_in_sysfs4 = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 7, !dbg !5039
  %bf.load5 = load i8, ptr %state_in_sysfs4, align 4, !dbg !5039
  %bf.lshr6 = lshr i8 %bf.load5, 1, !dbg !5039
  %bf.clear7 = and i8 %bf.lshr6, 1, !dbg !5039
  %bf.cast8 = zext i8 %bf.clear7 to i32, !dbg !5039
  %tobool9 = icmp ne i32 %bf.cast8, 0, !dbg !5038
  br i1 %tobool9, label %if.end, label %if.then, !dbg !5040

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !5041
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5041

if.end:                                           ; preds = %lor.lhs.false3
  store i32 -2, ptr %error, align 4, !dbg !5042
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !5043
  %sd = getelementptr inbounds %struct.kobject, ptr %3, i32 0, i32 5, !dbg !5044
  %4 = load ptr, ptr %sd, align 8, !dbg !5044
  %5 = load ptr, ptr %name.addr, align 8, !dbg !5045
  %6 = load ptr, ptr %targ.addr, align 8, !dbg !5046
  %sd10 = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 5, !dbg !5047
  %7 = load ptr, ptr %sd10, align 8, !dbg !5047
  %ns = getelementptr inbounds %struct.kernfs_node, ptr %7, i32 0, i32 5, !dbg !5048
  %8 = load ptr, ptr %ns, align 8, !dbg !5048
  %call = call ptr @kernfs_find_and_get_ns(ptr noundef %4, ptr noundef %5, ptr noundef %8) #11, !dbg !5049
  store ptr %call, ptr %kn, align 8, !dbg !5050
  %9 = load ptr, ptr %kn, align 8, !dbg !5051
  %tobool11 = icmp ne ptr %9, null, !dbg !5051
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5053

if.then12:                                        ; preds = %if.end
  br label %out, !dbg !5054

if.end13:                                         ; preds = %if.end
  store i32 -22, ptr %error, align 4, !dbg !5055
  %10 = load ptr, ptr %kn, align 8, !dbg !5056
  %call14 = call i32 @kernfs_type(ptr noundef %10) #11, !dbg !5058
  %cmp = icmp ne i32 %call14, 4, !dbg !5059
  br i1 %cmp, label %if.then15, label %if.end16, !dbg !5060

if.then15:                                        ; preds = %if.end13
  br label %out, !dbg !5061

if.end16:                                         ; preds = %if.end13
  %11 = load ptr, ptr %kn, align 8, !dbg !5062
  %12 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 7, !dbg !5064
  %target_kn = getelementptr inbounds %struct.kernfs_elem_symlink, ptr %12, i32 0, i32 0, !dbg !5065
  %13 = load ptr, ptr %target_kn, align 8, !dbg !5065
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %13, i32 0, i32 8, !dbg !5066
  %14 = load ptr, ptr %priv, align 8, !dbg !5066
  %15 = load ptr, ptr %targ.addr, align 8, !dbg !5067
  %cmp17 = icmp ne ptr %14, %15, !dbg !5068
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !5069

if.then18:                                        ; preds = %if.end16
  br label %out, !dbg !5070

if.end19:                                         ; preds = %if.end16
  %16 = load ptr, ptr %kn, align 8, !dbg !5071
  %coerce.dive20 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5072
  %17 = load i32, ptr %coerce.dive20, align 4, !dbg !5072
  %coerce.dive21 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5072
  %18 = load i32, ptr %coerce.dive21, align 4, !dbg !5072
  %call22 = call i32 @internal_change_owner(ptr noundef %16, i32 %17, i32 %18) #11, !dbg !5072
  store i32 %call22, ptr %error, align 4, !dbg !5073
  br label %out, !dbg !5074

out:                                              ; preds = %if.end19, %if.then18, %if.then15, %if.then12
  call void @llvm.dbg.label(metadata !5022), !dbg !5075
  %19 = load ptr, ptr %kn, align 8, !dbg !5076
  call void @kernfs_put(ptr noundef %19) #11, !dbg !5077
  %20 = load i32, ptr %error, align 4, !dbg !5078
  store i32 %20, ptr %retval, align 4, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !5080
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !5080
  %21 = load i32, ptr %retval, align 4, !dbg !5080
  ret i32 %21, !dbg !5080
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5081 dso_local ptr @kernfs_find_and_get_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kernfs_type(ptr noundef %kn) #3 align 16 !dbg !5084 {
entry:
  %kn.addr = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5088, metadata !DIExpression()), !dbg !5089
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5090
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 10, !dbg !5091
  %1 = load i16, ptr %flags, align 8, !dbg !5091
  %conv = zext i16 %1 to i32, !dbg !5090
  %and = and i32 %conv, 15, !dbg !5092
  ret i32 %and, !dbg !5093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @internal_change_owner(ptr noundef %kn, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !5094 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kn.addr = alloca ptr, align 8
  %newattrs = alloca %struct.iattr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5098, metadata !DIExpression()), !dbg !5102
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5099, metadata !DIExpression()), !dbg !5103
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5100, metadata !DIExpression()), !dbg !5104
  call void @llvm.lifetime.start.p0(i64 80, ptr %newattrs) #10, !dbg !5105
  call void @llvm.dbg.declare(metadata ptr %newattrs, metadata !5101, metadata !DIExpression()), !dbg !5106
  call void @llvm.memset.p0.i64(ptr align 8 %newattrs, i8 0, i64 80, i1 false), !dbg !5106
  %ia_valid = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 0, !dbg !5107
  store i32 6, ptr %ia_valid, align 8, !dbg !5107
  %0 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 2, !dbg !5107
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 4 %kuid, i64 4, i1 false), !dbg !5108
  %1 = getelementptr inbounds %struct.iattr, ptr %newattrs, i32 0, i32 3, !dbg !5107
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %kgid, i64 4, i1 false), !dbg !5109
  %2 = load ptr, ptr %kn.addr, align 8, !dbg !5110
  %call = call i32 @kernfs_setattr(ptr noundef %2, ptr noundef %newattrs) #11, !dbg !5111
  call void @llvm.lifetime.end.p0(i64 80, ptr %newattrs) #10, !dbg !5112
  ret i32 %call, !dbg !5113
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_file_change_owner(ptr noundef %kobj, ptr noundef %name, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !5114 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kobj.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %kn = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5118, metadata !DIExpression()), !dbg !5124
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5119, metadata !DIExpression()), !dbg !5125
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5120, metadata !DIExpression()), !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5121, metadata !DIExpression()), !dbg !5127
  call void @llvm.lifetime.start.p0(i64 8, ptr %kn) #10, !dbg !5128
  call void @llvm.dbg.declare(metadata ptr %kn, metadata !5122, metadata !DIExpression()), !dbg !5129
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !5130
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5123, metadata !DIExpression()), !dbg !5131
  %0 = load ptr, ptr %name.addr, align 8, !dbg !5132
  %tobool = icmp ne ptr %0, null, !dbg !5132
  br i1 %tobool, label %if.end, label %if.then, !dbg !5134

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5135

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !5136
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 7, !dbg !5138
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !5138
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5138
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5138
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5138
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !5136
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !5139

if.then3:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5140
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5140

if.end4:                                          ; preds = %if.end
  %2 = load ptr, ptr %kobj.addr, align 8, !dbg !5141
  %sd = getelementptr inbounds %struct.kobject, ptr %2, i32 0, i32 5, !dbg !5142
  %3 = load ptr, ptr %sd, align 8, !dbg !5142
  %4 = load ptr, ptr %name.addr, align 8, !dbg !5143
  %call = call ptr @kernfs_find_and_get(ptr noundef %3, ptr noundef %4) #11, !dbg !5144
  store ptr %call, ptr %kn, align 8, !dbg !5145
  %5 = load ptr, ptr %kn, align 8, !dbg !5146
  %tobool5 = icmp ne ptr %5, null, !dbg !5146
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !5148

if.then6:                                         ; preds = %if.end4
  store i32 -2, ptr %retval, align 4, !dbg !5149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5149

if.end7:                                          ; preds = %if.end4
  %6 = load ptr, ptr %kn, align 8, !dbg !5150
  %coerce.dive8 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5151
  %7 = load i32, ptr %coerce.dive8, align 4, !dbg !5151
  %coerce.dive9 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5151
  %8 = load i32, ptr %coerce.dive9, align 4, !dbg !5151
  %call10 = call i32 @internal_change_owner(ptr noundef %6, i32 %7, i32 %8) #11, !dbg !5151
  store i32 %call10, ptr %error, align 4, !dbg !5152
  %9 = load ptr, ptr %kn, align 8, !dbg !5153
  call void @kernfs_put(ptr noundef %9) #11, !dbg !5154
  %10 = load i32, ptr %error, align 4, !dbg !5155
  store i32 %10, ptr %retval, align 4, !dbg !5156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5156

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !5157
  call void @llvm.lifetime.end.p0(i64 8, ptr %kn) #10, !dbg !5157
  %11 = load i32, ptr %retval, align 4, !dbg !5157
  ret i32 %11, !dbg !5157
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_change_owner(ptr noundef %kobj, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !5158 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %kobj.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %ktype = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5162, metadata !DIExpression()), !dbg !5167
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !5163, metadata !DIExpression()), !dbg !5168
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !5164, metadata !DIExpression()), !dbg !5169
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #10, !dbg !5170
  call void @llvm.dbg.declare(metadata ptr %error, metadata !5165, metadata !DIExpression()), !dbg !5171
  call void @llvm.lifetime.start.p0(i64 8, ptr %ktype) #10, !dbg !5172
  call void @llvm.dbg.declare(metadata ptr %ktype, metadata !5166, metadata !DIExpression()), !dbg !5173
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5174
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 7, !dbg !5176
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !5176
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !5176
  %bf.clear = and i8 %bf.lshr, 1, !dbg !5176
  %bf.cast = zext i8 %bf.clear to i32, !dbg !5176
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !5174
  br i1 %tobool, label %if.end, label %if.then, !dbg !5177

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !5178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5178

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %kobj.addr, align 8, !dbg !5179
  %sd = getelementptr inbounds %struct.kobject, ptr %1, i32 0, i32 5, !dbg !5180
  %2 = load ptr, ptr %sd, align 8, !dbg !5180
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5181
  %3 = load i32, ptr %coerce.dive2, align 4, !dbg !5181
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5181
  %4 = load i32, ptr %coerce.dive3, align 4, !dbg !5181
  %call = call i32 @internal_change_owner(ptr noundef %2, i32 %3, i32 %4) #11, !dbg !5181
  store i32 %call, ptr %error, align 4, !dbg !5182
  %5 = load i32, ptr %error, align 4, !dbg !5183
  %tobool4 = icmp ne i32 %5, 0, !dbg !5183
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !5185

if.then5:                                         ; preds = %if.end
  %6 = load i32, ptr %error, align 4, !dbg !5186
  store i32 %6, ptr %retval, align 4, !dbg !5187
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5187

if.end6:                                          ; preds = %if.end
  %7 = load ptr, ptr %kobj.addr, align 8, !dbg !5188
  %call7 = call ptr @get_ktype(ptr noundef %7) #11, !dbg !5189
  store ptr %call7, ptr %ktype, align 8, !dbg !5190
  %8 = load ptr, ptr %ktype, align 8, !dbg !5191
  %tobool8 = icmp ne ptr %8, null, !dbg !5191
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !5193

if.then9:                                         ; preds = %if.end6
  %9 = load ptr, ptr %kobj.addr, align 8, !dbg !5194
  %10 = load ptr, ptr %ktype, align 8, !dbg !5196
  %default_groups = getelementptr inbounds %struct.kobj_type, ptr %10, i32 0, i32 2, !dbg !5197
  %11 = load ptr, ptr %default_groups, align 8, !dbg !5197
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !5198
  %12 = load i32, ptr %coerce.dive10, align 4, !dbg !5198
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !5198
  %13 = load i32, ptr %coerce.dive11, align 4, !dbg !5198
  %call12 = call i32 @sysfs_groups_change_owner(ptr noundef %9, ptr noundef %11, i32 %12, i32 %13) #11, !dbg !5198
  store i32 %call12, ptr %error, align 4, !dbg !5199
  %14 = load i32, ptr %error, align 4, !dbg !5200
  %tobool13 = icmp ne i32 %14, 0, !dbg !5200
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !5202

if.then14:                                        ; preds = %if.then9
  %15 = load i32, ptr %error, align 4, !dbg !5203
  store i32 %15, ptr %retval, align 4, !dbg !5204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5204

if.end15:                                         ; preds = %if.then9
  br label %if.end16, !dbg !5205

if.end16:                                         ; preds = %if.end15, %if.end6
  store i32 0, ptr %retval, align 4, !dbg !5206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5206

cleanup:                                          ; preds = %if.end16, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ktype) #10, !dbg !5207
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #10, !dbg !5207
  %16 = load i32, ptr %retval, align 4, !dbg !5207
  ret i32 %16, !dbg !5207
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ktype(ptr noundef %kobj) #3 align 16 !dbg !5208 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5212, metadata !DIExpression()), !dbg !5213
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5214
  %ktype = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4, !dbg !5215
  %1 = load ptr, ptr %ktype, align 8, !dbg !5215
  ret ptr %1, !dbg !5216
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5217 dso_local i32 @sysfs_groups_change_owner(ptr noundef, ptr noundef, i32, i32) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_emit(ptr noundef %buf, ptr noundef %fmt, ...) #0 align 16 !dbg !5220 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5224, metadata !DIExpression()), !dbg !5245
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5225, metadata !DIExpression()), !dbg !5246
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #10, !dbg !5247
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5226, metadata !DIExpression()), !dbg !5248
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5237, metadata !DIExpression()), !dbg !5250
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5238, metadata !DIExpression()), !dbg !5251
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5251
  %tobool = icmp ne ptr %0, null, !dbg !5251
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !5251

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5251
  %2 = ptrtoint ptr %1 to i64, !dbg !5251
  %and = and i64 %2, 4095, !dbg !5251
  %tobool1 = icmp ne i64 %and, 0, !dbg !5251
  br label %lor.end, !dbg !5251

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %tobool1, %lor.rhs ]
  %lnot = xor i1 %3, true, !dbg !5251
  %lnot2 = xor i1 %lnot, true, !dbg !5251
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5251
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5251
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !5252
  %tobool3 = icmp ne i32 %4, 0, !dbg !5252
  %lnot4 = xor i1 %tobool3, true, !dbg !5252
  %lnot6 = xor i1 %lnot4, true, !dbg !5252
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !5252
  %conv = sext i32 %lnot.ext7 to i64, !dbg !5252
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5252
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5252
  br i1 %tobool8, label %if.then, label %if.end, !dbg !5251

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5252

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !5253

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5254

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5254

do.end:                                           ; preds = %do.cond
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !5253
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.2, ptr noundef %5) #11, !dbg !5253
  br label %do.body10, !dbg !5253

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5241, metadata !DIExpression()), !dbg !5256
  store i32 2313, ptr %__flags, align 4, !dbg !5256
  br label %do.body11, !dbg !5256

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !5257

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5257

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5256

do.body14:                                        ; preds = %do.end13
  %6 = load i32, ptr %__flags, align 4, !dbg !5259
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 737, i32 %6, i64 12) #10, !dbg !5259, !srcloc !5261
  br label %do.cond15, !dbg !5259

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5259

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !5256

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !5262

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !5262

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5253
  br label %do.cond20, !dbg !5256

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !5256

do.end21:                                         ; preds = %do.cond20
  br label %do.body22, !dbg !5253

do.body22:                                        ; preds = %do.end21
  br label %do.cond23, !dbg !5264

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !5264

do.end24:                                         ; preds = %do.cond23
  br label %do.cond25, !dbg !5253

do.cond25:                                        ; preds = %do.end24
  br label %do.end26, !dbg !5253

do.end26:                                         ; preds = %do.cond25
  br label %if.end, !dbg !5253

if.end:                                           ; preds = %do.end26, %lor.end
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !5251
  %tobool27 = icmp ne i32 %7, 0, !dbg !5251
  %lnot28 = xor i1 %tobool27, true, !dbg !5251
  %lnot30 = xor i1 %lnot28, true, !dbg !5251
  %lnot.ext31 = zext i1 %lnot30 to i32, !dbg !5251
  %conv32 = sext i32 %lnot.ext31 to i64, !dbg !5251
  %expval33 = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !5251
  store i64 %expval33, ptr %tmp, align 8, !dbg !5252
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5266
  %8 = load i64, ptr %tmp, align 8, !dbg !5251
  %tobool34 = icmp ne i64 %8, 0, !dbg !5266
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !5267

if.then35:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5268
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5268

if.end36:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5269
  call void @llvm.va_start(ptr %arraydecay), !dbg !5269
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !5270
  %10 = load ptr, ptr %fmt.addr, align 8, !dbg !5271
  %arraydecay37 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5272
  %call = call i32 @vscnprintf(ptr noundef %9, i64 noundef 4096, ptr noundef %10, ptr noundef %arraydecay37) #11, !dbg !5273
  store i32 %call, ptr %len, align 4, !dbg !5274
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5275
  call void @llvm.va_end(ptr %arraydecay38), !dbg !5275
  %11 = load i32, ptr %len, align 4, !dbg !5276
  store i32 %11, ptr %retval, align 4, !dbg !5277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5277

cleanup:                                          ; preds = %if.end36, %if.then35
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !5278
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #10, !dbg !5278
  %12 = load i32, ptr %retval, align 4, !dbg !5278
  ret i32 %12, !dbg !5278
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5279 dso_local i32 @vscnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sysfs_emit_at(ptr noundef %buf, i32 noundef %at, ptr noundef %fmt, ...) #0 align 16 !dbg !5284 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca ptr, align 8
  %at.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %len = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5288, metadata !DIExpression()), !dbg !5300
  store i32 %at, ptr %at.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %at.addr, metadata !5289, metadata !DIExpression()), !dbg !5301
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !5290, metadata !DIExpression()), !dbg !5302
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #10, !dbg !5303
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5291, metadata !DIExpression()), !dbg !5304
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #10, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5292, metadata !DIExpression()), !dbg !5306
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5307
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5293, metadata !DIExpression()), !dbg !5307
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !5307
  %tobool = icmp ne ptr %0, null, !dbg !5307
  br i1 %tobool, label %lor.lhs.false, label %lor.end, !dbg !5307

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !5307
  %2 = ptrtoint ptr %1 to i64, !dbg !5307
  %and = and i64 %2, 4095, !dbg !5307
  %tobool1 = icmp ne i64 %and, 0, !dbg !5307
  br i1 %tobool1, label %lor.end, label %lor.lhs.false2, !dbg !5307

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %3 = load i32, ptr %at.addr, align 4, !dbg !5307
  %cmp = icmp slt i32 %3, 0, !dbg !5307
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !5307

lor.rhs:                                          ; preds = %lor.lhs.false2
  %4 = load i32, ptr %at.addr, align 4, !dbg !5307
  %conv = sext i32 %4 to i64, !dbg !5307
  %cmp3 = icmp uge i64 %conv, 4096, !dbg !5307
  br label %lor.end, !dbg !5307

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp3, %lor.rhs ]
  %lnot = xor i1 %5, true, !dbg !5307
  %lnot5 = xor i1 %lnot, true, !dbg !5307
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5307
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5307
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !5308
  %tobool6 = icmp ne i32 %6, 0, !dbg !5308
  %lnot7 = xor i1 %tobool6, true, !dbg !5308
  %lnot9 = xor i1 %lnot7, true, !dbg !5308
  %lnot.ext10 = zext i1 %lnot9 to i32, !dbg !5308
  %conv11 = sext i32 %lnot.ext10 to i64, !dbg !5308
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !5308
  %tobool12 = icmp ne i64 %expval, 0, !dbg !5308
  br i1 %tobool12, label %if.then, label %if.end, !dbg !5307

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !5308

do.body:                                          ; preds = %if.then
  br label %do.body13, !dbg !5309

do.body13:                                        ; preds = %do.body
  br label %do.cond, !dbg !5310

do.cond:                                          ; preds = %do.body13
  br label %do.end, !dbg !5310

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !5309
  %8 = load i32, ptr %at.addr, align 4, !dbg !5309
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.3, ptr noundef %7, i32 noundef %8) #11, !dbg !5309
  br label %do.body14, !dbg !5309

do.body14:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5296, metadata !DIExpression()), !dbg !5312
  store i32 2313, ptr %__flags, align 4, !dbg !5312
  br label %do.body15, !dbg !5312

do.body15:                                        ; preds = %do.body14
  br label %do.cond16, !dbg !5313

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !5313

do.end17:                                         ; preds = %do.cond16
  br label %do.body18, !dbg !5312

do.body18:                                        ; preds = %do.end17
  %9 = load i32, ptr %__flags, align 4, !dbg !5315
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 765, i32 %9, i64 12) #10, !dbg !5315, !srcloc !5317
  br label %do.cond19, !dbg !5315

do.cond19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !5315

do.end20:                                         ; preds = %do.cond19
  br label %do.body21, !dbg !5312

do.body21:                                        ; preds = %do.end20
  br label %do.cond22, !dbg !5318

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !5318

do.end23:                                         ; preds = %do.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5309
  br label %do.cond24, !dbg !5312

do.cond24:                                        ; preds = %do.end23
  br label %do.end25, !dbg !5312

do.end25:                                         ; preds = %do.cond24
  br label %do.body26, !dbg !5309

do.body26:                                        ; preds = %do.end25
  br label %do.cond27, !dbg !5320

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !5320

do.end28:                                         ; preds = %do.cond27
  br label %do.cond29, !dbg !5309

do.cond29:                                        ; preds = %do.end28
  br label %do.end30, !dbg !5309

do.end30:                                         ; preds = %do.cond29
  br label %if.end, !dbg !5309

if.end:                                           ; preds = %do.end30, %lor.end
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !5307
  %tobool31 = icmp ne i32 %10, 0, !dbg !5307
  %lnot32 = xor i1 %tobool31, true, !dbg !5307
  %lnot34 = xor i1 %lnot32, true, !dbg !5307
  %lnot.ext35 = zext i1 %lnot34 to i32, !dbg !5307
  %conv36 = sext i32 %lnot.ext35 to i64, !dbg !5307
  %expval37 = call i64 @llvm.expect.i64(i64 %conv36, i64 0), !dbg !5307
  store i64 %expval37, ptr %tmp, align 8, !dbg !5308
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5322
  %11 = load i64, ptr %tmp, align 8, !dbg !5307
  %tobool38 = icmp ne i64 %11, 0, !dbg !5322
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !5323

if.then39:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !5324
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5324

if.end40:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5325
  call void @llvm.va_start(ptr %arraydecay), !dbg !5325
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !5326
  %13 = load i32, ptr %at.addr, align 4, !dbg !5327
  %idx.ext = sext i32 %13 to i64, !dbg !5328
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !5328
  %14 = load i32, ptr %at.addr, align 4, !dbg !5329
  %conv41 = sext i32 %14 to i64, !dbg !5329
  %sub = sub i64 4096, %conv41, !dbg !5330
  %15 = load ptr, ptr %fmt.addr, align 8, !dbg !5331
  %arraydecay42 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5332
  %call = call i32 @vscnprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef %15, ptr noundef %arraydecay42) #11, !dbg !5333
  store i32 %call, ptr %len, align 4, !dbg !5334
  %arraydecay43 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5335
  call void @llvm.va_end(ptr %arraydecay43), !dbg !5335
  %16 = load i32, ptr %len, align 4, !dbg !5336
  store i32 %16, ptr %retval, align 4, !dbg !5337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5337

cleanup:                                          ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #10, !dbg !5338
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #10, !dbg !5338
  %17 = load i32, ptr %retval, align 4, !dbg !5338
  ret i32 %17, !dbg !5338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sysfs_kf_read(ptr noundef %of, ptr noundef %buf, i64 noundef %count, i64 noundef %pos) #0 align 16 !dbg !5339 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %ops = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %len = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x287 = alloca i64, align 8
  %__UNIQUE_ID___y288 = alloca i64, align 8
  %tmp41 = alloca i64, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5341, metadata !DIExpression()), !dbg !5357
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5342, metadata !DIExpression()), !dbg !5358
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5343, metadata !DIExpression()), !dbg !5359
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5344, metadata !DIExpression()), !dbg !5360
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !5361
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5345, metadata !DIExpression()), !dbg !5362
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5363
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5364
  %1 = load ptr, ptr %kn, align 8, !dbg !5364
  %call = call ptr @sysfs_file_ops(ptr noundef %1) #11, !dbg !5365
  store ptr %call, ptr %ops, align 8, !dbg !5362
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5366
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5346, metadata !DIExpression()), !dbg !5367
  %2 = load ptr, ptr %of.addr, align 8, !dbg !5368
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 0, !dbg !5369
  %3 = load ptr, ptr %kn1, align 8, !dbg !5369
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2, !dbg !5370
  %4 = load ptr, ptr %parent, align 8, !dbg !5370
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8, !dbg !5371
  %5 = load ptr, ptr %priv, align 8, !dbg !5371
  store ptr %5, ptr %kobj, align 8, !dbg !5367
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #10, !dbg !5372
  call void @llvm.dbg.declare(metadata ptr %len, metadata !5347, metadata !DIExpression()), !dbg !5373
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5374
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5348, metadata !DIExpression()), !dbg !5374
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !5374
  %7 = load ptr, ptr %of.addr, align 8, !dbg !5374
  %prealloc_buf = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 8, !dbg !5374
  %8 = load ptr, ptr %prealloc_buf, align 8, !dbg !5374
  %cmp = icmp ne ptr %6, %8, !dbg !5374
  %lnot = xor i1 %cmp, true, !dbg !5374
  %lnot2 = xor i1 %lnot, true, !dbg !5374
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5374
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5374
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !5375
  %tobool = icmp ne i32 %9, 0, !dbg !5375
  %lnot3 = xor i1 %tobool, true, !dbg !5375
  %lnot5 = xor i1 %lnot3, true, !dbg !5375
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5375
  %conv = sext i32 %lnot.ext6 to i64, !dbg !5375
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5375
  %tobool7 = icmp ne i64 %expval, 0, !dbg !5375
  br i1 %tobool7, label %if.then, label %if.end, !dbg !5374

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5375

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5376
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5351, metadata !DIExpression()), !dbg !5376
  store i32 2307, ptr %__flags, align 4, !dbg !5376
  br label %do.body8, !dbg !5376

do.body8:                                         ; preds = %do.body
  br label %do.cond, !dbg !5377

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !5377

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !5376

do.body9:                                         ; preds = %do.end
  %10 = load i32, ptr %__flags, align 4, !dbg !5379
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 112, i32 %10, i64 12) #10, !dbg !5379, !srcloc !5381
  br label %do.cond10, !dbg !5379

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !5379

do.end11:                                         ; preds = %do.cond10
  br label %do.body12, !dbg !5376

do.body12:                                        ; preds = %do.end11
  br label %do.cond13, !dbg !5382

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !5382

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5375
  br label %do.cond15, !dbg !5376

do.cond15:                                        ; preds = %do.end14
  br label %do.end16, !dbg !5376

do.end16:                                         ; preds = %do.cond15
  br label %if.end, !dbg !5376

if.end:                                           ; preds = %do.end16, %entry
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !5374
  %tobool17 = icmp ne i32 %11, 0, !dbg !5374
  %lnot18 = xor i1 %tobool17, true, !dbg !5374
  %lnot20 = xor i1 %lnot18, true, !dbg !5374
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !5374
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !5374
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !5374
  store i64 %expval23, ptr %tmp, align 8, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5384
  %12 = load i64, ptr %tmp, align 8, !dbg !5374
  %tobool24 = icmp ne i64 %12, 0, !dbg !5384
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !5385

if.then25:                                        ; preds = %if.end
  store i64 0, ptr %retval, align 8, !dbg !5386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5386

if.end26:                                         ; preds = %if.end
  %13 = load ptr, ptr %ops, align 8, !dbg !5387
  %show = getelementptr inbounds %struct.sysfs_ops, ptr %13, i32 0, i32 0, !dbg !5388
  %14 = load ptr, ptr %show, align 8, !dbg !5388
  %15 = load ptr, ptr %kobj, align 8, !dbg !5389
  %16 = load ptr, ptr %of.addr, align 8, !dbg !5390
  %kn27 = getelementptr inbounds %struct.kernfs_open_file, ptr %16, i32 0, i32 0, !dbg !5391
  %17 = load ptr, ptr %kn27, align 8, !dbg !5391
  %priv28 = getelementptr inbounds %struct.kernfs_node, ptr %17, i32 0, i32 8, !dbg !5392
  %18 = load ptr, ptr %priv28, align 8, !dbg !5392
  %19 = load ptr, ptr %buf.addr, align 8, !dbg !5393
  %call29 = call i64 %14(ptr noundef %15, ptr noundef %18, ptr noundef %19) #11, !dbg !5387
  store i64 %call29, ptr %len, align 8, !dbg !5394
  %20 = load i64, ptr %len, align 8, !dbg !5395
  %cmp30 = icmp slt i64 %20, 0, !dbg !5397
  br i1 %cmp30, label %if.then32, label %if.end33, !dbg !5398

if.then32:                                        ; preds = %if.end26
  %21 = load i64, ptr %len, align 8, !dbg !5399
  store i64 %21, ptr %retval, align 8, !dbg !5400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5400

if.end33:                                         ; preds = %if.end26
  %22 = load i64, ptr %pos.addr, align 8, !dbg !5401
  %tobool34 = icmp ne i64 %22, 0, !dbg !5401
  br i1 %tobool34, label %if.then35, label %if.end40, !dbg !5403

if.then35:                                        ; preds = %if.end33
  %23 = load i64, ptr %len, align 8, !dbg !5404
  %24 = load i64, ptr %pos.addr, align 8, !dbg !5407
  %cmp36 = icmp sle i64 %23, %24, !dbg !5408
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !5409

if.then38:                                        ; preds = %if.then35
  store i64 0, ptr %retval, align 8, !dbg !5410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5410

if.end39:                                         ; preds = %if.then35
  %25 = load i64, ptr %pos.addr, align 8, !dbg !5411
  %26 = load i64, ptr %len, align 8, !dbg !5412
  %sub = sub i64 %26, %25, !dbg !5412
  store i64 %sub, ptr %len, align 8, !dbg !5412
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !5413
  %28 = load ptr, ptr %buf.addr, align 8, !dbg !5414
  %29 = load i64, ptr %pos.addr, align 8, !dbg !5415
  %add.ptr = getelementptr i8, ptr %28, i64 %29, !dbg !5416
  %30 = load i64, ptr %len, align 8, !dbg !5417
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %27, ptr align 1 %add.ptr, i64 %30, i1 false), !dbg !5418
  br label %if.end40, !dbg !5419

if.end40:                                         ; preds = %if.end39, %if.end33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x287) #10, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x287, metadata !5354, metadata !DIExpression()), !dbg !5420
  %31 = load i64, ptr %count.addr, align 8, !dbg !5420
  store i64 %31, ptr %__UNIQUE_ID___x287, align 8, !dbg !5420
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y288) #10, !dbg !5420
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y288, metadata !5356, metadata !DIExpression()), !dbg !5420
  %32 = load i64, ptr %len, align 8, !dbg !5420
  store i64 %32, ptr %__UNIQUE_ID___y288, align 8, !dbg !5420
  %33 = load i64, ptr %__UNIQUE_ID___x287, align 8, !dbg !5420
  %34 = load i64, ptr %__UNIQUE_ID___y288, align 8, !dbg !5420
  %cmp42 = icmp slt i64 %33, %34, !dbg !5420
  br i1 %cmp42, label %cond.true, label %cond.false, !dbg !5420

cond.true:                                        ; preds = %if.end40
  %35 = load i64, ptr %__UNIQUE_ID___x287, align 8, !dbg !5420
  br label %cond.end, !dbg !5420

cond.false:                                       ; preds = %if.end40
  %36 = load i64, ptr %__UNIQUE_ID___y288, align 8, !dbg !5420
  br label %cond.end, !dbg !5420

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %35, %cond.true ], [ %36, %cond.false ], !dbg !5420
  store i64 %cond, ptr %tmp41, align 8, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y288) #10, !dbg !5421
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x287) #10, !dbg !5421
  %37 = load i64, ptr %tmp41, align 8, !dbg !5420
  store i64 %37, ptr %retval, align 8, !dbg !5422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5422

cleanup:                                          ; preds = %cond.end, %if.then38, %if.then32, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #10, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5423
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !5423
  %38 = load i64, ptr %retval, align 8, !dbg !5423
  ret i64 %38, !dbg !5423
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sysfs_kf_write(ptr noundef %of, ptr noundef %buf, i64 noundef %count, i64 noundef %pos) #0 align 16 !dbg !5424 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %ops = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5426, metadata !DIExpression()), !dbg !5432
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5427, metadata !DIExpression()), !dbg !5433
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5428, metadata !DIExpression()), !dbg !5434
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5429, metadata !DIExpression()), !dbg !5435
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !5436
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5430, metadata !DIExpression()), !dbg !5437
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5438
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5439
  %1 = load ptr, ptr %kn, align 8, !dbg !5439
  %call = call ptr @sysfs_file_ops(ptr noundef %1) #11, !dbg !5440
  store ptr %call, ptr %ops, align 8, !dbg !5437
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5441
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5431, metadata !DIExpression()), !dbg !5442
  %2 = load ptr, ptr %of.addr, align 8, !dbg !5443
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 0, !dbg !5444
  %3 = load ptr, ptr %kn1, align 8, !dbg !5444
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2, !dbg !5445
  %4 = load ptr, ptr %parent, align 8, !dbg !5445
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8, !dbg !5446
  %5 = load ptr, ptr %priv, align 8, !dbg !5446
  store ptr %5, ptr %kobj, align 8, !dbg !5442
  %6 = load i64, ptr %count.addr, align 8, !dbg !5447
  %tobool = icmp ne i64 %6, 0, !dbg !5447
  br i1 %tobool, label %if.end, label %if.then, !dbg !5449

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5450

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %ops, align 8, !dbg !5451
  %store = getelementptr inbounds %struct.sysfs_ops, ptr %7, i32 0, i32 1, !dbg !5452
  %8 = load ptr, ptr %store, align 8, !dbg !5452
  %9 = load ptr, ptr %kobj, align 8, !dbg !5453
  %10 = load ptr, ptr %of.addr, align 8, !dbg !5454
  %kn2 = getelementptr inbounds %struct.kernfs_open_file, ptr %10, i32 0, i32 0, !dbg !5455
  %11 = load ptr, ptr %kn2, align 8, !dbg !5455
  %priv3 = getelementptr inbounds %struct.kernfs_node, ptr %11, i32 0, i32 8, !dbg !5456
  %12 = load ptr, ptr %priv3, align 8, !dbg !5456
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !5457
  %14 = load i64, ptr %count.addr, align 8, !dbg !5458
  %call4 = call i64 %8(ptr noundef %9, ptr noundef %12, ptr noundef %13, i64 noundef %14) #11, !dbg !5451
  store i64 %call4, ptr %retval, align 8, !dbg !5459
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5459

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5460
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !5460
  %15 = load i64, ptr %retval, align 8, !dbg !5460
  ret i64 %15, !dbg !5460
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sysfs_file_ops(ptr noundef %kn) #0 align 16 !dbg !5461 {
entry:
  %kn.addr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  store ptr %kn, ptr %kn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kn.addr, metadata !5465, metadata !DIExpression()), !dbg !5467
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5468
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5466, metadata !DIExpression()), !dbg !5469
  %0 = load ptr, ptr %kn.addr, align 8, !dbg !5470
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %0, i32 0, i32 2, !dbg !5471
  %1 = load ptr, ptr %parent, align 8, !dbg !5471
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5472
  %2 = load ptr, ptr %priv, align 8, !dbg !5472
  store ptr %2, ptr %kobj, align 8, !dbg !5469
  %3 = load ptr, ptr %kn.addr, align 8, !dbg !5473
  %flags = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 10, !dbg !5475
  %4 = load i16, ptr %flags, align 8, !dbg !5475
  %conv = zext i16 %4 to i32, !dbg !5473
  %and = and i32 %conv, 256, !dbg !5476
  %tobool = icmp ne i32 %and, 0, !dbg !5476
  br i1 %tobool, label %if.then, label %if.end, !dbg !5477

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5478

do.body:                                          ; preds = %if.then
  %5 = load ptr, ptr %kn.addr, align 8, !dbg !5479
  br label %do.cond, !dbg !5479

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5479

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !5479

if.end:                                           ; preds = %do.end, %entry
  %6 = load ptr, ptr %kobj, align 8, !dbg !5481
  %ktype = getelementptr inbounds %struct.kobject, ptr %6, i32 0, i32 4, !dbg !5482
  %7 = load ptr, ptr %ktype, align 8, !dbg !5482
  %tobool1 = icmp ne ptr %7, null, !dbg !5481
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !5481

cond.true:                                        ; preds = %if.end
  %8 = load ptr, ptr %kobj, align 8, !dbg !5483
  %ktype2 = getelementptr inbounds %struct.kobject, ptr %8, i32 0, i32 4, !dbg !5484
  %9 = load ptr, ptr %ktype2, align 8, !dbg !5484
  %sysfs_ops = getelementptr inbounds %struct.kobj_type, ptr %9, i32 0, i32 1, !dbg !5485
  %10 = load ptr, ptr %sysfs_ops, align 8, !dbg !5485
  br label %cond.end, !dbg !5481

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !5481

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !5481
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5486
  ret ptr %cond, !dbg !5487
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_kf_seq_show(ptr noundef %sf, ptr noundef %v) #0 align 16 !dbg !5488 {
entry:
  %retval = alloca i32, align 4
  %sf.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %of = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %ops = alloca ptr, align 8
  %count = alloca i64, align 8
  %buf = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp48 = alloca i32, align 4
  store ptr %sf, ptr %sf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sf.addr, metadata !5490, metadata !DIExpression()), !dbg !5503
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !5491, metadata !DIExpression()), !dbg !5504
  call void @llvm.lifetime.start.p0(i64 8, ptr %of) #10, !dbg !5505
  call void @llvm.dbg.declare(metadata ptr %of, metadata !5492, metadata !DIExpression()), !dbg !5506
  %0 = load ptr, ptr %sf.addr, align 8, !dbg !5507
  %private = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11, !dbg !5508
  %1 = load ptr, ptr %private, align 8, !dbg !5508
  store ptr %1, ptr %of, align 8, !dbg !5506
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5509
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5493, metadata !DIExpression()), !dbg !5510
  %2 = load ptr, ptr %of, align 8, !dbg !5511
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %2, i32 0, i32 0, !dbg !5512
  %3 = load ptr, ptr %kn, align 8, !dbg !5512
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %3, i32 0, i32 2, !dbg !5513
  %4 = load ptr, ptr %parent, align 8, !dbg !5513
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 8, !dbg !5514
  %5 = load ptr, ptr %priv, align 8, !dbg !5514
  store ptr %5, ptr %kobj, align 8, !dbg !5510
  call void @llvm.lifetime.start.p0(i64 8, ptr %ops) #10, !dbg !5515
  call void @llvm.dbg.declare(metadata ptr %ops, metadata !5494, metadata !DIExpression()), !dbg !5516
  %6 = load ptr, ptr %of, align 8, !dbg !5517
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %6, i32 0, i32 0, !dbg !5518
  %7 = load ptr, ptr %kn1, align 8, !dbg !5518
  %call = call ptr @sysfs_file_ops(ptr noundef %7) #11, !dbg !5519
  store ptr %call, ptr %ops, align 8, !dbg !5516
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #10, !dbg !5520
  call void @llvm.dbg.declare(metadata ptr %count, metadata !5495, metadata !DIExpression()), !dbg !5521
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #10, !dbg !5522
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !5496, metadata !DIExpression()), !dbg !5523
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5524
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !5497, metadata !DIExpression()), !dbg !5524
  %8 = load ptr, ptr %ops, align 8, !dbg !5524
  %show = getelementptr inbounds %struct.sysfs_ops, ptr %8, i32 0, i32 0, !dbg !5524
  %9 = load ptr, ptr %show, align 8, !dbg !5524
  %tobool = icmp ne ptr %9, null, !dbg !5524
  %lnot = xor i1 %tobool, true, !dbg !5524
  %lnot2 = xor i1 %lnot, true, !dbg !5524
  %lnot3 = xor i1 %lnot2, true, !dbg !5524
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !5524
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !5524
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !5525
  %tobool4 = icmp ne i32 %10, 0, !dbg !5525
  %lnot5 = xor i1 %tobool4, true, !dbg !5525
  %lnot7 = xor i1 %lnot5, true, !dbg !5525
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !5525
  %conv = sext i32 %lnot.ext8 to i64, !dbg !5525
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5525
  %tobool9 = icmp ne i64 %expval, 0, !dbg !5525
  br i1 %tobool9, label %if.then, label %if.end, !dbg !5524

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5525

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #10, !dbg !5526
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !5500, metadata !DIExpression()), !dbg !5526
  store i32 2307, ptr %__flags, align 4, !dbg !5526
  br label %do.body10, !dbg !5526

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !5527

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !5527

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !5526

do.body11:                                        ; preds = %do.end
  %11 = load i32, ptr %__flags, align 4, !dbg !5529
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 48, i32 %11, i64 12) #10, !dbg !5529, !srcloc !5531
  br label %do.cond12, !dbg !5529

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !5529

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !5526

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !5532

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !5532

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #10, !dbg !5525
  br label %do.cond17, !dbg !5526

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !5526

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !5526

if.end:                                           ; preds = %do.end18, %entry
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !5524
  %tobool19 = icmp ne i32 %12, 0, !dbg !5524
  %lnot20 = xor i1 %tobool19, true, !dbg !5524
  %lnot22 = xor i1 %lnot20, true, !dbg !5524
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !5524
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !5524
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !5524
  store i64 %expval25, ptr %tmp, align 8, !dbg !5525
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #10, !dbg !5534
  %13 = load i64, ptr %tmp, align 8, !dbg !5524
  %tobool26 = icmp ne i64 %13, 0, !dbg !5534
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !5535

if.then27:                                        ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !5536
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5536

if.end28:                                         ; preds = %if.end
  %14 = load ptr, ptr %sf.addr, align 8, !dbg !5537
  %call29 = call i64 @seq_get_buf(ptr noundef %14, ptr noundef %buf) #11, !dbg !5538
  store i64 %call29, ptr %count, align 8, !dbg !5539
  %15 = load i64, ptr %count, align 8, !dbg !5540
  %cmp = icmp ult i64 %15, 4096, !dbg !5542
  br i1 %cmp, label %if.then31, label %if.end32, !dbg !5543

if.then31:                                        ; preds = %if.end28
  %16 = load ptr, ptr %sf.addr, align 8, !dbg !5544
  call void @seq_commit(ptr noundef %16, i32 noundef -1) #11, !dbg !5546
  store i32 0, ptr %retval, align 4, !dbg !5547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5547

if.end32:                                         ; preds = %if.end28
  %17 = load ptr, ptr %buf, align 8, !dbg !5548
  call void @llvm.memset.p0.i64(ptr align 1 %17, i8 0, i64 4096, i1 false), !dbg !5549
  %18 = load ptr, ptr %ops, align 8, !dbg !5550
  %show33 = getelementptr inbounds %struct.sysfs_ops, ptr %18, i32 0, i32 0, !dbg !5551
  %19 = load ptr, ptr %show33, align 8, !dbg !5551
  %20 = load ptr, ptr %kobj, align 8, !dbg !5552
  %21 = load ptr, ptr %of, align 8, !dbg !5553
  %kn34 = getelementptr inbounds %struct.kernfs_open_file, ptr %21, i32 0, i32 0, !dbg !5554
  %22 = load ptr, ptr %kn34, align 8, !dbg !5554
  %priv35 = getelementptr inbounds %struct.kernfs_node, ptr %22, i32 0, i32 8, !dbg !5555
  %23 = load ptr, ptr %priv35, align 8, !dbg !5555
  %24 = load ptr, ptr %buf, align 8, !dbg !5556
  %call36 = call i64 %19(ptr noundef %20, ptr noundef %23, ptr noundef %24) #11, !dbg !5550
  store i64 %call36, ptr %count, align 8, !dbg !5557
  %25 = load i64, ptr %count, align 8, !dbg !5558
  %cmp37 = icmp slt i64 %25, 0, !dbg !5560
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !5561

if.then39:                                        ; preds = %if.end32
  %26 = load i64, ptr %count, align 8, !dbg !5562
  %conv40 = trunc i64 %26 to i32, !dbg !5562
  store i32 %conv40, ptr %retval, align 4, !dbg !5563
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5563

if.end41:                                         ; preds = %if.end32
  %27 = load i64, ptr %count, align 8, !dbg !5564
  %cmp42 = icmp sge i64 %27, 4096, !dbg !5566
  br i1 %cmp42, label %if.then44, label %if.end51, !dbg !5567

if.then44:                                        ; preds = %if.end41
  br label %do.body45, !dbg !5568

do.body45:                                        ; preds = %if.then44
  br label %do.cond46, !dbg !5571

do.cond46:                                        ; preds = %do.body45
  br label %do.end47, !dbg !5571

do.end47:                                         ; preds = %do.cond46
  %28 = load ptr, ptr %ops, align 8, !dbg !5568
  %show49 = getelementptr inbounds %struct.sysfs_ops, ptr %28, i32 0, i32 0, !dbg !5568
  %29 = load ptr, ptr %show49, align 8, !dbg !5568
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef @.str.4, ptr noundef %29) #12, !dbg !5568
  store i32 %call50, ptr %tmp48, align 4, !dbg !5571
  %30 = load i32, ptr %tmp48, align 4, !dbg !5568
  store i64 4095, ptr %count, align 8, !dbg !5573
  br label %if.end51, !dbg !5574

if.end51:                                         ; preds = %do.end47, %if.end41
  %31 = load ptr, ptr %sf.addr, align 8, !dbg !5575
  %32 = load i64, ptr %count, align 8, !dbg !5576
  %conv52 = trunc i64 %32 to i32, !dbg !5576
  call void @seq_commit(ptr noundef %31, i32 noundef %conv52) #11, !dbg !5577
  store i32 0, ptr %retval, align 4, !dbg !5578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5578

cleanup:                                          ; preds = %if.end51, %if.then39, %if.then31, %if.then27
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #10, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #10, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 8, ptr %ops) #10, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5579
  call void @llvm.lifetime.end.p0(i64 8, ptr %of) #10, !dbg !5579
  %33 = load i32, ptr %retval, align 4, !dbg !5579
  ret i32 %33, !dbg !5579
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @seq_get_buf(ptr noundef %m, ptr noundef %bufp) #3 align 16 !dbg !5580 {
entry:
  %m.addr = alloca ptr, align 8
  %bufp.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5585, metadata !DIExpression()), !dbg !5587
  store ptr %bufp, ptr %bufp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bufp.addr, metadata !5586, metadata !DIExpression()), !dbg !5588
  br label %do.body, !dbg !5589

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %m.addr, align 8, !dbg !5590
  %count = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 3, !dbg !5590
  %1 = load i64, ptr %count, align 8, !dbg !5590
  %2 = load ptr, ptr %m.addr, align 8, !dbg !5590
  %size = getelementptr inbounds %struct.seq_file, ptr %2, i32 0, i32 1, !dbg !5590
  %3 = load i64, ptr %size, align 8, !dbg !5590
  %cmp = icmp ugt i64 %1, %3, !dbg !5590
  %lnot = xor i1 %cmp, true, !dbg !5590
  %lnot1 = xor i1 %lnot, true, !dbg !5590
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5590
  %conv = sext i32 %lnot.ext to i64, !dbg !5590
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5590
  %tobool = icmp ne i64 %expval, 0, !dbg !5590
  br i1 %tobool, label %if.then, label %if.end, !dbg !5593

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !5590

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !5594

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !5596

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !5594

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 66, i32 0, i64 12) #10, !dbg !5598, !srcloc !5600
  br label %do.end5, !dbg !5598

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !5594

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !5594

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !5593

do.end7:                                          ; preds = %if.end
  %4 = load ptr, ptr %m.addr, align 8, !dbg !5601
  %count8 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 3, !dbg !5603
  %5 = load i64, ptr %count8, align 8, !dbg !5603
  %6 = load ptr, ptr %m.addr, align 8, !dbg !5604
  %size9 = getelementptr inbounds %struct.seq_file, ptr %6, i32 0, i32 1, !dbg !5605
  %7 = load i64, ptr %size9, align 8, !dbg !5605
  %cmp10 = icmp ult i64 %5, %7, !dbg !5606
  br i1 %cmp10, label %if.then12, label %if.else, !dbg !5607

if.then12:                                        ; preds = %do.end7
  %8 = load ptr, ptr %m.addr, align 8, !dbg !5608
  %buf = getelementptr inbounds %struct.seq_file, ptr %8, i32 0, i32 0, !dbg !5609
  %9 = load ptr, ptr %buf, align 8, !dbg !5609
  %10 = load ptr, ptr %m.addr, align 8, !dbg !5610
  %count13 = getelementptr inbounds %struct.seq_file, ptr %10, i32 0, i32 3, !dbg !5611
  %11 = load i64, ptr %count13, align 8, !dbg !5611
  %add.ptr = getelementptr i8, ptr %9, i64 %11, !dbg !5612
  %12 = load ptr, ptr %bufp.addr, align 8, !dbg !5613
  store ptr %add.ptr, ptr %12, align 8, !dbg !5614
  br label %if.end14, !dbg !5615

if.else:                                          ; preds = %do.end7
  %13 = load ptr, ptr %bufp.addr, align 8, !dbg !5616
  store ptr null, ptr %13, align 8, !dbg !5617
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then12
  %14 = load ptr, ptr %m.addr, align 8, !dbg !5618
  %size15 = getelementptr inbounds %struct.seq_file, ptr %14, i32 0, i32 1, !dbg !5619
  %15 = load i64, ptr %size15, align 8, !dbg !5619
  %16 = load ptr, ptr %m.addr, align 8, !dbg !5620
  %count16 = getelementptr inbounds %struct.seq_file, ptr %16, i32 0, i32 3, !dbg !5621
  %17 = load i64, ptr %count16, align 8, !dbg !5621
  %sub = sub i64 %15, %17, !dbg !5622
  ret i64 %sub, !dbg !5623
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @seq_commit(ptr noundef %m, i32 noundef %num) #3 align 16 !dbg !5624 {
entry:
  %m.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !5628, metadata !DIExpression()), !dbg !5630
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5629, metadata !DIExpression()), !dbg !5631
  %0 = load i32, ptr %num.addr, align 4, !dbg !5632
  %cmp = icmp slt i32 %0, 0, !dbg !5634
  br i1 %cmp, label %if.then, label %if.else, !dbg !5635

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %m.addr, align 8, !dbg !5636
  %size = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 1, !dbg !5638
  %2 = load i64, ptr %size, align 8, !dbg !5638
  %3 = load ptr, ptr %m.addr, align 8, !dbg !5639
  %count = getelementptr inbounds %struct.seq_file, ptr %3, i32 0, i32 3, !dbg !5640
  store i64 %2, ptr %count, align 8, !dbg !5641
  br label %if.end17, !dbg !5642

if.else:                                          ; preds = %entry
  br label %do.body, !dbg !5643

do.body:                                          ; preds = %if.else
  %4 = load ptr, ptr %m.addr, align 8, !dbg !5645
  %count1 = getelementptr inbounds %struct.seq_file, ptr %4, i32 0, i32 3, !dbg !5645
  %5 = load i64, ptr %count1, align 8, !dbg !5645
  %6 = load i32, ptr %num.addr, align 4, !dbg !5645
  %conv = sext i32 %6 to i64, !dbg !5645
  %add = add i64 %5, %conv, !dbg !5645
  %7 = load ptr, ptr %m.addr, align 8, !dbg !5645
  %size2 = getelementptr inbounds %struct.seq_file, ptr %7, i32 0, i32 1, !dbg !5645
  %8 = load i64, ptr %size2, align 8, !dbg !5645
  %cmp3 = icmp ugt i64 %add, %8, !dbg !5645
  %lnot = xor i1 %cmp3, true, !dbg !5645
  %lnot5 = xor i1 %lnot, true, !dbg !5645
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !5645
  %conv6 = sext i32 %lnot.ext to i64, !dbg !5645
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !5645
  %tobool = icmp ne i64 %expval, 0, !dbg !5645
  br i1 %tobool, label %if.then7, label %if.end, !dbg !5648

if.then7:                                         ; preds = %do.body
  br label %do.body8, !dbg !5645

do.body8:                                         ; preds = %if.then7
  br label %do.body9, !dbg !5649

do.body9:                                         ; preds = %do.body8
  br label %do.end, !dbg !5651

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !5649

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 89, i32 0, i64 12) #10, !dbg !5653, !srcloc !5655
  br label %do.end11, !dbg !5653

do.end11:                                         ; preds = %do.body10
  unreachable, !dbg !5649

do.end12:                                         ; No predecessors!
  br label %if.end, !dbg !5649

if.end:                                           ; preds = %do.end12, %do.body
  br label %do.end13, !dbg !5648

do.end13:                                         ; preds = %if.end
  %9 = load i32, ptr %num.addr, align 4, !dbg !5656
  %conv14 = sext i32 %9 to i64, !dbg !5656
  %10 = load ptr, ptr %m.addr, align 8, !dbg !5657
  %count15 = getelementptr inbounds %struct.seq_file, ptr %10, i32 0, i32 3, !dbg !5658
  %11 = load i64, ptr %count15, align 8, !dbg !5659
  %add16 = add i64 %11, %conv14, !dbg !5659
  store i64 %add16, ptr %count15, align 8, !dbg !5659
  br label %if.end17

if.end17:                                         ; preds = %do.end13, %if.then
  ret void, !dbg !5660
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5661 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_kf_bin_open(ptr noundef %of) #0 align 16 !dbg !5665 {
entry:
  %of.addr = alloca ptr, align 8
  %battr = alloca ptr, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5667, metadata !DIExpression()), !dbg !5669
  call void @llvm.lifetime.start.p0(i64 8, ptr %battr) #10, !dbg !5670
  call void @llvm.dbg.declare(metadata ptr %battr, metadata !5668, metadata !DIExpression()), !dbg !5671
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5672
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5673
  %1 = load ptr, ptr %kn, align 8, !dbg !5673
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5674
  %2 = load ptr, ptr %priv, align 8, !dbg !5674
  store ptr %2, ptr %battr, align 8, !dbg !5671
  %3 = load ptr, ptr %battr, align 8, !dbg !5675
  %f_mapping = getelementptr inbounds %struct.bin_attribute, ptr %3, i32 0, i32 3, !dbg !5677
  %4 = load ptr, ptr %f_mapping, align 8, !dbg !5677
  %tobool = icmp ne ptr %4, null, !dbg !5675
  br i1 %tobool, label %if.then, label %if.end, !dbg !5678

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %battr, align 8, !dbg !5679
  %f_mapping1 = getelementptr inbounds %struct.bin_attribute, ptr %5, i32 0, i32 3, !dbg !5680
  %6 = load ptr, ptr %f_mapping1, align 8, !dbg !5680
  %call = call ptr %6() #11, !dbg !5679
  %7 = load ptr, ptr %of.addr, align 8, !dbg !5681
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 1, !dbg !5682
  %8 = load ptr, ptr %file, align 8, !dbg !5682
  %f_mapping2 = getelementptr inbounds %struct.file, ptr %8, i32 0, i32 17, !dbg !5683
  store ptr %call, ptr %f_mapping2, align 8, !dbg !5684
  br label %if.end, !dbg !5681

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %battr) #10, !dbg !5685
  ret i32 0, !dbg !5686
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sysfs_kf_bin_read(ptr noundef %of, ptr noundef %buf, i64 noundef %count, i64 noundef %pos) #0 align 16 !dbg !5687 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %battr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5689, metadata !DIExpression()), !dbg !5696
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5690, metadata !DIExpression()), !dbg !5697
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5691, metadata !DIExpression()), !dbg !5698
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5692, metadata !DIExpression()), !dbg !5699
  call void @llvm.lifetime.start.p0(i64 8, ptr %battr) #10, !dbg !5700
  call void @llvm.dbg.declare(metadata ptr %battr, metadata !5693, metadata !DIExpression()), !dbg !5701
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5702
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5703
  %1 = load ptr, ptr %kn, align 8, !dbg !5703
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5704
  %2 = load ptr, ptr %priv, align 8, !dbg !5704
  store ptr %2, ptr %battr, align 8, !dbg !5701
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5705
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5694, metadata !DIExpression()), !dbg !5706
  %3 = load ptr, ptr %of.addr, align 8, !dbg !5707
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 0, !dbg !5708
  %4 = load ptr, ptr %kn1, align 8, !dbg !5708
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2, !dbg !5709
  %5 = load ptr, ptr %parent, align 8, !dbg !5709
  %priv2 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8, !dbg !5710
  %6 = load ptr, ptr %priv2, align 8, !dbg !5710
  store ptr %6, ptr %kobj, align 8, !dbg !5706
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5711
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5695, metadata !DIExpression()), !dbg !5712
  %7 = load ptr, ptr %of.addr, align 8, !dbg !5713
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 1, !dbg !5714
  %8 = load ptr, ptr %file, align 8, !dbg !5714
  %call = call ptr @file_inode(ptr noundef %8) #11, !dbg !5715
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, !dbg !5716
  %9 = load i64, ptr %i_size, align 8, !dbg !5716
  store i64 %9, ptr %size, align 8, !dbg !5712
  %10 = load i64, ptr %count.addr, align 8, !dbg !5717
  %tobool = icmp ne i64 %10, 0, !dbg !5717
  br i1 %tobool, label %if.end, label %if.then, !dbg !5719

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !5720
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5720

if.end:                                           ; preds = %entry
  %11 = load i64, ptr %size, align 8, !dbg !5721
  %tobool3 = icmp ne i64 %11, 0, !dbg !5721
  br i1 %tobool3, label %if.then4, label %if.end10, !dbg !5723

if.then4:                                         ; preds = %if.end
  %12 = load i64, ptr %pos.addr, align 8, !dbg !5724
  %13 = load i64, ptr %size, align 8, !dbg !5727
  %cmp = icmp sge i64 %12, %13, !dbg !5728
  br i1 %cmp, label %if.then5, label %if.end6, !dbg !5729

if.then5:                                         ; preds = %if.then4
  store i64 0, ptr %retval, align 8, !dbg !5730
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5730

if.end6:                                          ; preds = %if.then4
  %14 = load i64, ptr %pos.addr, align 8, !dbg !5731
  %15 = load i64, ptr %count.addr, align 8, !dbg !5733
  %add = add i64 %14, %15, !dbg !5734
  %16 = load i64, ptr %size, align 8, !dbg !5735
  %cmp7 = icmp ugt i64 %add, %16, !dbg !5736
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !5737

if.then8:                                         ; preds = %if.end6
  %17 = load i64, ptr %size, align 8, !dbg !5738
  %18 = load i64, ptr %pos.addr, align 8, !dbg !5739
  %sub = sub i64 %17, %18, !dbg !5740
  store i64 %sub, ptr %count.addr, align 8, !dbg !5741
  br label %if.end9, !dbg !5742

if.end9:                                          ; preds = %if.then8, %if.end6
  br label %if.end10, !dbg !5743

if.end10:                                         ; preds = %if.end9, %if.end
  %19 = load ptr, ptr %battr, align 8, !dbg !5744
  %read = getelementptr inbounds %struct.bin_attribute, ptr %19, i32 0, i32 4, !dbg !5746
  %20 = load ptr, ptr %read, align 8, !dbg !5746
  %tobool11 = icmp ne ptr %20, null, !dbg !5744
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !5747

if.then12:                                        ; preds = %if.end10
  store i64 -5, ptr %retval, align 8, !dbg !5748
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5748

if.end13:                                         ; preds = %if.end10
  %21 = load ptr, ptr %battr, align 8, !dbg !5749
  %read14 = getelementptr inbounds %struct.bin_attribute, ptr %21, i32 0, i32 4, !dbg !5750
  %22 = load ptr, ptr %read14, align 8, !dbg !5750
  %23 = load ptr, ptr %of.addr, align 8, !dbg !5751
  %file15 = getelementptr inbounds %struct.kernfs_open_file, ptr %23, i32 0, i32 1, !dbg !5752
  %24 = load ptr, ptr %file15, align 8, !dbg !5752
  %25 = load ptr, ptr %kobj, align 8, !dbg !5753
  %26 = load ptr, ptr %battr, align 8, !dbg !5754
  %27 = load ptr, ptr %buf.addr, align 8, !dbg !5755
  %28 = load i64, ptr %pos.addr, align 8, !dbg !5756
  %29 = load i64, ptr %count.addr, align 8, !dbg !5757
  %call16 = call i64 %22(ptr noundef %24, ptr noundef %25, ptr noundef %26, ptr noundef %27, i64 noundef %28, i64 noundef %29) #11, !dbg !5749
  store i64 %call16, ptr %retval, align 8, !dbg !5758
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5758

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5759
  call void @llvm.lifetime.end.p0(i64 8, ptr %battr) #10, !dbg !5759
  %30 = load i64, ptr %retval, align 8, !dbg !5759
  ret i64 %30, !dbg !5759
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sysfs_kf_bin_write(ptr noundef %of, ptr noundef %buf, i64 noundef %count, i64 noundef %pos) #0 align 16 !dbg !5760 {
entry:
  %retval = alloca i64, align 8
  %of.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %pos.addr = alloca i64, align 8
  %battr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x289 = alloca i64, align 8
  %__UNIQUE_ID___y290 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5762, metadata !DIExpression()), !dbg !5774
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5763, metadata !DIExpression()), !dbg !5775
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !5764, metadata !DIExpression()), !dbg !5776
  store i64 %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !5765, metadata !DIExpression()), !dbg !5777
  call void @llvm.lifetime.start.p0(i64 8, ptr %battr) #10, !dbg !5778
  call void @llvm.dbg.declare(metadata ptr %battr, metadata !5766, metadata !DIExpression()), !dbg !5779
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5780
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5781
  %1 = load ptr, ptr %kn, align 8, !dbg !5781
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5782
  %2 = load ptr, ptr %priv, align 8, !dbg !5782
  store ptr %2, ptr %battr, align 8, !dbg !5779
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5783
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5767, metadata !DIExpression()), !dbg !5784
  %3 = load ptr, ptr %of.addr, align 8, !dbg !5785
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 0, !dbg !5786
  %4 = load ptr, ptr %kn1, align 8, !dbg !5786
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2, !dbg !5787
  %5 = load ptr, ptr %parent, align 8, !dbg !5787
  %priv2 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8, !dbg !5788
  %6 = load ptr, ptr %priv2, align 8, !dbg !5788
  store ptr %6, ptr %kobj, align 8, !dbg !5784
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #10, !dbg !5789
  call void @llvm.dbg.declare(metadata ptr %size, metadata !5768, metadata !DIExpression()), !dbg !5790
  %7 = load ptr, ptr %of.addr, align 8, !dbg !5791
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %7, i32 0, i32 1, !dbg !5792
  %8 = load ptr, ptr %file, align 8, !dbg !5792
  %call = call ptr @file_inode(ptr noundef %8) #11, !dbg !5793
  %i_size = getelementptr inbounds %struct.inode, ptr %call, i32 0, i32 15, !dbg !5794
  %9 = load i64, ptr %i_size, align 8, !dbg !5794
  store i64 %9, ptr %size, align 8, !dbg !5790
  %10 = load i64, ptr %size, align 8, !dbg !5795
  %tobool = icmp ne i64 %10, 0, !dbg !5795
  br i1 %tobool, label %if.then, label %if.end5, !dbg !5796

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %size, align 8, !dbg !5797
  %12 = load i64, ptr %pos.addr, align 8, !dbg !5799
  %cmp = icmp sle i64 %11, %12, !dbg !5800
  br i1 %cmp, label %if.then3, label %if.end, !dbg !5801

if.then3:                                         ; preds = %if.then
  store i64 -27, ptr %retval, align 8, !dbg !5802
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5802

if.end:                                           ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x289) #10, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x289, metadata !5769, metadata !DIExpression()), !dbg !5803
  %13 = load i64, ptr %count.addr, align 8, !dbg !5803
  store i64 %13, ptr %__UNIQUE_ID___x289, align 8, !dbg !5803
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y290) #10, !dbg !5803
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y290, metadata !5773, metadata !DIExpression()), !dbg !5803
  %14 = load i64, ptr %size, align 8, !dbg !5803
  %15 = load i64, ptr %pos.addr, align 8, !dbg !5803
  %sub = sub i64 %14, %15, !dbg !5803
  store i64 %sub, ptr %__UNIQUE_ID___y290, align 8, !dbg !5803
  %16 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !5803
  %17 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !5803
  %cmp4 = icmp slt i64 %16, %17, !dbg !5803
  br i1 %cmp4, label %cond.true, label %cond.false, !dbg !5803

cond.true:                                        ; preds = %if.end
  %18 = load i64, ptr %__UNIQUE_ID___x289, align 8, !dbg !5803
  br label %cond.end, !dbg !5803

cond.false:                                       ; preds = %if.end
  %19 = load i64, ptr %__UNIQUE_ID___y290, align 8, !dbg !5803
  br label %cond.end, !dbg !5803

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !5803
  store i64 %cond, ptr %tmp, align 8, !dbg !5803
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y290) #10, !dbg !5804
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x289) #10, !dbg !5804
  %20 = load i64, ptr %tmp, align 8, !dbg !5803
  store i64 %20, ptr %count.addr, align 8, !dbg !5805
  br label %if.end5, !dbg !5806

if.end5:                                          ; preds = %cond.end, %entry
  %21 = load i64, ptr %count.addr, align 8, !dbg !5807
  %tobool6 = icmp ne i64 %21, 0, !dbg !5807
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !5809

if.then7:                                         ; preds = %if.end5
  store i64 0, ptr %retval, align 8, !dbg !5810
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5810

if.end8:                                          ; preds = %if.end5
  %22 = load ptr, ptr %battr, align 8, !dbg !5811
  %write = getelementptr inbounds %struct.bin_attribute, ptr %22, i32 0, i32 5, !dbg !5813
  %23 = load ptr, ptr %write, align 8, !dbg !5813
  %tobool9 = icmp ne ptr %23, null, !dbg !5811
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !5814

if.then10:                                        ; preds = %if.end8
  store i64 -5, ptr %retval, align 8, !dbg !5815
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5815

if.end11:                                         ; preds = %if.end8
  %24 = load ptr, ptr %battr, align 8, !dbg !5816
  %write12 = getelementptr inbounds %struct.bin_attribute, ptr %24, i32 0, i32 5, !dbg !5817
  %25 = load ptr, ptr %write12, align 8, !dbg !5817
  %26 = load ptr, ptr %of.addr, align 8, !dbg !5818
  %file13 = getelementptr inbounds %struct.kernfs_open_file, ptr %26, i32 0, i32 1, !dbg !5819
  %27 = load ptr, ptr %file13, align 8, !dbg !5819
  %28 = load ptr, ptr %kobj, align 8, !dbg !5820
  %29 = load ptr, ptr %battr, align 8, !dbg !5821
  %30 = load ptr, ptr %buf.addr, align 8, !dbg !5822
  %31 = load i64, ptr %pos.addr, align 8, !dbg !5823
  %32 = load i64, ptr %count.addr, align 8, !dbg !5824
  %call14 = call i64 %25(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30, i64 noundef %31, i64 noundef %32) #11, !dbg !5816
  store i64 %call14, ptr %retval, align 8, !dbg !5825
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5825

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #10, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5826
  call void @llvm.lifetime.end.p0(i64 8, ptr %battr) #10, !dbg !5826
  %33 = load i64, ptr %retval, align 8, !dbg !5826
  ret i64 %33, !dbg !5826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_kf_bin_mmap(ptr noundef %of, ptr noundef %vma) #0 align 16 !dbg !5827 {
entry:
  %of.addr = alloca ptr, align 8
  %vma.addr = alloca ptr, align 8
  %battr = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  store ptr %of, ptr %of.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %of.addr, metadata !5829, metadata !DIExpression()), !dbg !5833
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !5830, metadata !DIExpression()), !dbg !5834
  call void @llvm.lifetime.start.p0(i64 8, ptr %battr) #10, !dbg !5835
  call void @llvm.dbg.declare(metadata ptr %battr, metadata !5831, metadata !DIExpression()), !dbg !5836
  %0 = load ptr, ptr %of.addr, align 8, !dbg !5837
  %kn = getelementptr inbounds %struct.kernfs_open_file, ptr %0, i32 0, i32 0, !dbg !5838
  %1 = load ptr, ptr %kn, align 8, !dbg !5838
  %priv = getelementptr inbounds %struct.kernfs_node, ptr %1, i32 0, i32 8, !dbg !5839
  %2 = load ptr, ptr %priv, align 8, !dbg !5839
  store ptr %2, ptr %battr, align 8, !dbg !5836
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #10, !dbg !5840
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !5832, metadata !DIExpression()), !dbg !5841
  %3 = load ptr, ptr %of.addr, align 8, !dbg !5842
  %kn1 = getelementptr inbounds %struct.kernfs_open_file, ptr %3, i32 0, i32 0, !dbg !5843
  %4 = load ptr, ptr %kn1, align 8, !dbg !5843
  %parent = getelementptr inbounds %struct.kernfs_node, ptr %4, i32 0, i32 2, !dbg !5844
  %5 = load ptr, ptr %parent, align 8, !dbg !5844
  %priv2 = getelementptr inbounds %struct.kernfs_node, ptr %5, i32 0, i32 8, !dbg !5845
  %6 = load ptr, ptr %priv2, align 8, !dbg !5845
  store ptr %6, ptr %kobj, align 8, !dbg !5841
  %7 = load ptr, ptr %battr, align 8, !dbg !5846
  %mmap = getelementptr inbounds %struct.bin_attribute, ptr %7, i32 0, i32 6, !dbg !5847
  %8 = load ptr, ptr %mmap, align 8, !dbg !5847
  %9 = load ptr, ptr %of.addr, align 8, !dbg !5848
  %file = getelementptr inbounds %struct.kernfs_open_file, ptr %9, i32 0, i32 1, !dbg !5849
  %10 = load ptr, ptr %file, align 8, !dbg !5849
  %11 = load ptr, ptr %kobj, align 8, !dbg !5850
  %12 = load ptr, ptr %battr, align 8, !dbg !5851
  %13 = load ptr, ptr %vma.addr, align 8, !dbg !5852
  %call = call i32 %8(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %13) #11, !dbg !5846
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #10, !dbg !5853
  call void @llvm.lifetime.end.p0(i64 8, ptr %battr) #10, !dbg !5853
  ret i32 %call, !dbg !5854
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @file_inode(ptr noundef %f) #3 align 16 !dbg !5855 {
entry:
  %f.addr = alloca ptr, align 8
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !5859, metadata !DIExpression()), !dbg !5860
  %0 = load ptr, ptr %f.addr, align 8, !dbg !5861
  %f_inode = getelementptr inbounds %struct.file, ptr %0, i32 0, i32 11, !dbg !5862
  %1 = load ptr, ptr %f_inode, align 8, !dbg !5862
  ret ptr %1, !dbg !5863
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4153, !4154, !4155, !4156, !4157, !4158, !4159, !4160}
!llvm.ident = !{!4161}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_notify291", scope: !2, file: !3, line: 200, type: !112, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF fs/sysfs/.file.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22fs/sysfs/file\22 -D KBUILD_BASENAME=\22file\22 -D KBUILD_MODNAME=\22file\22 -D __KBUILD_MODNAME=kmod_file -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o fs/sysfs/file.ll fs/sysfs/file.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !111, globals: !120, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "fs/sysfs/file.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da6db52bd1f68d6fcd2d7ad98b36912e")
!4 = !{!5, !13, !18, !26, !42, !50, !56, !61, !67, !74, !81, !87, !92, !98}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !14, line: 2052, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!17 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !19, line: 9, baseType: !7, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!22 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!23 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!24 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!25 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !27, line: 1325, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!28 = !{!29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!29 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!30 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!31 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!32 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!33 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!34 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!35 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!36 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!37 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!38 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!39 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!40 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!41 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !43, line: 68, baseType: !7, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!44 = !{!45, !46, !47, !48, !49}
!45 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!46 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!47 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!48 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!49 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !51, line: 54, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "USRQUOTA", value: 0)
!54 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!55 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !57, line: 65, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!58 = !{!59, !60}
!59 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!60 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !62, line: 16, baseType: !7, size: 32, elements: !63)
!62 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!63 = !{!64, !65, !66}
!64 = !DIEnumerator(name: "TT_NONE", value: 0)
!65 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!66 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !68, line: 51, baseType: !7, size: 32, elements: !69)
!68 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!69 = !{!70, !71, !72, !73}
!70 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!71 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!72 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!73 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !75, line: 15, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!78 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!79 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!80 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !82, line: 26, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!83 = !{!84, !85, !86}
!84 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!85 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!86 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_type", file: !93, line: 94, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!94 = !{!95, !96, !97}
!95 = !DIEnumerator(name: "KERNFS_DIR", value: 1)
!96 = !DIEnumerator(name: "KERNFS_FILE", value: 2)
!97 = !DIEnumerator(name: "KERNFS_LINK", value: 4)
!98 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kernfs_node_flag", file: !93, line: 105, baseType: !7, size: 32, elements: !99)
!99 = !{!100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110}
!100 = !DIEnumerator(name: "KERNFS_ACTIVATED", value: 16)
!101 = !DIEnumerator(name: "KERNFS_NS", value: 32)
!102 = !DIEnumerator(name: "KERNFS_HAS_SEQ_SHOW", value: 64)
!103 = !DIEnumerator(name: "KERNFS_HAS_MMAP", value: 128)
!104 = !DIEnumerator(name: "KERNFS_LOCKDEP", value: 256)
!105 = !DIEnumerator(name: "KERNFS_HIDDEN", value: 512)
!106 = !DIEnumerator(name: "KERNFS_SUICIDAL", value: 1024)
!107 = !DIEnumerator(name: "KERNFS_SUICIDED", value: 2048)
!108 = !DIEnumerator(name: "KERNFS_EMPTY_DIR", value: 4096)
!109 = !DIEnumerator(name: "KERNFS_HAS_RELEASE", value: 8192)
!110 = !DIEnumerator(name: "KERNFS_REMOVING", value: 16384)
!111 = !{!112, !113, !114, !119}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !115, line: 66, baseType: !116)
!115 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !117, line: 73, baseType: !118)
!117 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !117, line: 15, baseType: !119)
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !{!0, !121, !127, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !165, !167, !172, !174, !4123, !4125, !4127, !4129, !4134, !4139, !4141, !4143, !4145, !4147, !4149, !4151}
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 432, elements: !125)
!124 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!126}
!126 = !DISubrange(count: 54)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 128, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 16)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_file_ns292", scope: !2, file: !3, line: 357, type: !112, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_files293", scope: !2, file: !3, line: 371, type: !112, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_add_file_to_group294", scope: !2, file: !3, line: 404, type: !112, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_chmod_file295", scope: !2, file: !3, line: 432, type: !112, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_break_active_protection296", scope: !2, file: !3, line: 457, type: !112, isLocal: true, isDefinition: true)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_unbreak_active_protection297", scope: !2, file: !3, line: 478, type: !112, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_file_ns298", scope: !2, file: !3, line: 495, type: !112, isLocal: true, isDefinition: true)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_file_self299", scope: !2, file: !3, line: 519, type: !112, isLocal: true, isDefinition: true)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_files300", scope: !2, file: !3, line: 528, type: !112, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_file_from_group301", scope: !2, file: !3, line: 553, type: !112, isLocal: true, isDefinition: true)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_create_bin_file302", scope: !2, file: !3, line: 573, type: !112, isLocal: true, isDefinition: true)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_remove_bin_file303", scope: !2, file: !3, line: 585, type: !112, isLocal: true, isDefinition: true)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_file_change_owner304", scope: !2, file: !3, line: 673, type: !112, isLocal: true, isDefinition: true)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_change_owner305", scope: !2, file: !3, line: 720, type: !112, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !3, line: 736, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 224, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 28)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_emit306", scope: !2, file: !3, line: 746, type: !112, isLocal: true, isDefinition: true)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !3, line: 764, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 296, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 37)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_sysfs_emit_at307", scope: !2, file: !3, line: 774, type: !112, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "sysfs_prealloc_kfops_rw", scope: !2, file: !3, line: 228, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !93, line: 271, size: 768, elements: !178)
!178 = !{!179, !4100, !4104, !4105, !4106, !4107, !4108, !4112, !4113, !4114, !4115, !4119}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !177, file: !93, line: 276, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DISubroutineType(types: !182)
!182 = !{!183, !184}
!183 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !93, line: 251, size: 1216, elements: !186)
!186 = !{!187, !268, !4089, !4090, !4091, !4092, !4093, !4094, !4095, !4096, !4097, !4098, !4099}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !185, file: !93, line: 253, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !93, line: 190, size: 1152, elements: !190)
!190 = !{!191, !196, !197, !198, !201, !209, !212, !213, !245, !246, !252, !254, !256, !259}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !189, file: !93, line: 191, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !115, line: 174, baseType: !193)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 172, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !193, file: !115, line: 173, baseType: !183, size: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !189, file: !93, line: 192, baseType: !192, size: 32, offset: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !189, file: !93, line: 202, baseType: !188, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !189, file: !93, line: 203, baseType: !199, size: 64, offset: 128)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !189, file: !93, line: 205, baseType: !202, size: 192, align: 64, offset: 192)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !203, line: 5, size: 192, align: 64, elements: !204)
!203 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!204 = !{!205, !206, !208}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !202, file: !203, line: 6, baseType: !113, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !202, file: !203, line: 7, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !202, file: !203, line: 8, baseType: !207, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !189, file: !93, line: 207, baseType: !210, size: 64, offset: 384)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !189, file: !93, line: 208, baseType: !7, size: 32, offset: 448)
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !93, line: 209, baseType: !214, size: 256, offset: 512)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !189, file: !93, line: 209, size: 256, elements: !215)
!215 = !{!216, !228, !232}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !214, file: !93, line: 210, baseType: !217, size: 256)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !93, line: 153, size: 256, elements: !218)
!218 = !{!219, !220, !224, !227}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !217, file: !93, line: 154, baseType: !113, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !217, file: !93, line: 156, baseType: !221, size: 64, offset: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !203, line: 12, size: 64, elements: !222)
!222 = !{!223}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !221, file: !203, line: 13, baseType: !207, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !217, file: !93, line: 162, baseType: !225, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !93, line: 162, flags: DIFlagFwdDecl)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !217, file: !93, line: 167, baseType: !113, size: 64, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !214, file: !93, line: 211, baseType: !229, size: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !93, line: 170, size: 64, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !229, file: !93, line: 171, baseType: !188, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !214, file: !93, line: 212, baseType: !233, size: 256)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !93, line: 174, size: 256, elements: !234)
!234 = !{!235, !237, !240, !244}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !233, file: !93, line: 175, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !233, file: !93, line: 176, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !93, line: 35, flags: DIFlagFwdDecl)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !93, line: 177, baseType: !241, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !115, line: 52, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !117, line: 88, baseType: !243)
!243 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !233, file: !93, line: 178, baseType: !188, size: 64, offset: 192)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !189, file: !93, line: 215, baseType: !112, size: 64, offset: 768)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !189, file: !93, line: 221, baseType: !247, size: 64, offset: 832)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !248, line: 23, baseType: !249)
!248 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !250, line: 31, baseType: !251)
!250 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!251 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !93, line: 223, baseType: !253, size: 16, offset: 896)
!253 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !189, file: !93, line: 224, baseType: !255, size: 16, offset: 912)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !115, line: 24, baseType: !253)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !189, file: !93, line: 225, baseType: !257, size: 64, offset: 960)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !93, line: 36, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !189, file: !93, line: 227, baseType: !260, size: 128, align: 64, offset: 1024)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !115, line: 232, size: 128, align: 64, elements: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !115, line: 233, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !260, file: !115, line: 234, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !263}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !185, file: !93, line: 254, baseType: !269, size: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !271)
!271 = !{!272, !283, !319, !321, !330, !348, !349, !350, !431, !645, !654, !4079, !4080, !4081, !4082, !4083, !4084, !4086, !4087, !4088}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !14, line: 995, baseType: !273, size: 128)
!273 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !270, file: !14, line: 995, size: 128, elements: !274)
!274 = !{!275, !281, !282}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !273, file: !14, line: 996, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !277, line: 60, size: 64, elements: !278)
!277 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!278 = !{!279}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !276, file: !277, line: 61, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !273, file: !14, line: 997, baseType: !260, size: 128, align: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !273, file: !14, line: 998, baseType: !7, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !270, file: !14, line: 1005, baseType: !284, size: 32, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !285, line: 29, baseType: !286)
!285 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !285, line: 17, size: 32, elements: !287)
!287 = !{!288}
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !286, file: !285, line: 18, baseType: !289, size: 32)
!289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !286, file: !285, line: 18, size: 32, elements: !290)
!290 = !{!291}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !289, file: !285, line: 19, baseType: !292, size: 32)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !293, line: 14, size: 32, elements: !294)
!293 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !292, file: !293, line: 15, baseType: !296, size: 32)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !297, line: 44, baseType: !298)
!297 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !297, line: 14, size: 32, elements: !299)
!299 = !{!300}
!300 = !DIDerivedType(tag: DW_TAG_member, scope: !298, file: !297, line: 15, baseType: !301, size: 32)
!301 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !298, file: !297, line: 15, size: 32, elements: !302)
!302 = !{!303, !304, !312}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !301, file: !297, line: 16, baseType: !192, size: 32)
!304 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !297, line: 24, baseType: !305, size: 16)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !297, line: 24, size: 16, elements: !306)
!306 = !{!307, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !305, file: !297, line: 25, baseType: !308, size: 8)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !248, line: 17, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !250, line: 21, baseType: !310)
!310 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !305, file: !297, line: 26, baseType: !308, size: 8, offset: 8)
!312 = !DIDerivedType(tag: DW_TAG_member, scope: !301, file: !297, line: 28, baseType: !313, size: 32)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !301, file: !297, line: 28, size: 32, elements: !314)
!314 = !{!315, !318}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !313, file: !297, line: 29, baseType: !316, size: 16)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !248, line: 19, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !250, line: 24, baseType: !253)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !313, file: !297, line: 30, baseType: !316, size: 16, offset: 16)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !270, file: !14, line: 1006, baseType: !320, size: 32, offset: 160)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !115, line: 156, baseType: !7)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !270, file: !14, line: 1007, baseType: !322, size: 64, offset: 192)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !323, line: 13, baseType: !324)
!323 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !115, line: 181, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !115, line: 179, size: 64, elements: !326)
!326 = !{!327}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !325, file: !115, line: 180, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !248, line: 22, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !250, line: 30, baseType: !243)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !270, file: !14, line: 1008, baseType: !331, size: 256, offset: 256)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !332, line: 66, size: 256, elements: !333)
!332 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!333 = !{!334, !335, !337, !342}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !331, file: !332, line: 67, baseType: !322, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !331, file: !332, line: 68, baseType: !336, size: 32, offset: 64)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !293, line: 23, baseType: !292)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !331, file: !332, line: 70, baseType: !338, size: 32, offset: 96)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !339, line: 15, size: 32, elements: !340)
!339 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !338, file: !339, line: 20, baseType: !192, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !331, file: !332, line: 72, baseType: !343, size: 128, offset: 128)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !115, line: 190, size: 128, elements: !344)
!344 = !{!345, !347}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !343, file: !115, line: 191, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !343, file: !115, line: 191, baseType: !346, size: 64, offset: 64)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !270, file: !14, line: 1009, baseType: !241, size: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !270, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !270, file: !14, line: 1011, baseType: !351, size: 256, offset: 640)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !352)
!352 = !{!353, !376, !420, !421, !429, !430}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !351, file: !14, line: 949, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !355, line: 34, baseType: !356)
!355 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !355, line: 25, size: 64, elements: !357)
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !356, file: !355, line: 26, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !360, line: 27, baseType: !361)
!360 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !360, line: 13, size: 64, elements: !362)
!362 = !{!363, !375}
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !361, file: !360, line: 14, baseType: !364, size: 32)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !361, file: !360, line: 14, size: 32, elements: !365)
!365 = !{!366, !367}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !364, file: !360, line: 15, baseType: !192, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !360, line: 16, baseType: !368, size: 32)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !360, line: 16, size: 32, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !368, file: !360, line: 18, baseType: !308, size: 8)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !368, file: !360, line: 19, baseType: !372, size: 24, offset: 8)
!372 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 24, elements: !373)
!373 = !{!374}
!374 = !DISubrange(count: 3)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !361, file: !360, line: 26, baseType: !296, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !351, file: !14, line: 950, baseType: !377, size: 64, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !379)
!379 = !{!380, !386, !387, !388, !401, !402, !409, !410}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !378, file: !19, line: 61, baseType: !381, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !382, line: 113, baseType: !383)
!382 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !382, line: 111, size: 32, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !383, file: !382, line: 112, baseType: !192, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !378, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !378, file: !19, line: 63, baseType: !284, size: 32, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !378, file: !19, line: 65, baseType: !389, size: 256, offset: 128)
!389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 256, elements: !399)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !115, line: 194, size: 64, elements: !391)
!391 = !{!392}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !390, file: !115, line: 195, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !115, line: 198, size: 128, elements: !395)
!395 = !{!396, !397}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !394, file: !115, line: 199, baseType: !393, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !394, file: !115, line: 199, baseType: !398, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!399 = !{!400}
!400 = !DISubrange(count: 4)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !378, file: !19, line: 66, baseType: !390, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !378, file: !19, line: 68, baseType: !403, size: 192, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !404, line: 41, baseType: !405)
!404 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !404, line: 37, size: 192, elements: !406)
!406 = !{!407, !408}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !405, file: !404, line: 38, baseType: !284, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !405, file: !404, line: 39, baseType: !343, size: 128, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !378, file: !19, line: 69, baseType: !260, size: 128, align: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !378, file: !19, line: 70, baseType: !411, offset: 768)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !418)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !413)
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !412, file: !19, line: 55, baseType: !183, size: 32)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !412, file: !19, line: 56, baseType: !416, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!418 = !{!419}
!419 = !DISubrange(count: -1)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !351, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !351, file: !14, line: 952, baseType: !422, size: 32, offset: 160)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !423, line: 23, baseType: !424)
!423 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 21, size: 32, elements: !425)
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !424, file: !423, line: 22, baseType: !427, size: 32)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !115, line: 37, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !117, line: 49, baseType: !7)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !351, file: !14, line: 952, baseType: !422, size: 32, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !351, file: !14, line: 953, baseType: !183, size: 32, offset: 224)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !270, file: !14, line: 1012, baseType: !432, size: 64, offset: 896)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !435, line: 110, size: 1472, elements: !436)
!435 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!436 = !{!437, !438, !439, !446, !447, !448, !449, !450, !451, !452, !453, !459, !460, !461, !462, !463, !464, !590, !591, !592, !593, !594, !625, !628, !632, !640}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !434, file: !435, line: 111, baseType: !322, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !434, file: !435, line: 112, baseType: !422, size: 32, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !434, file: !435, line: 113, baseType: !440, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !423, line: 28, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !423, line: 26, size: 32, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !441, file: !423, line: 27, baseType: !444, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !115, line: 38, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !117, line: 50, baseType: !7)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !434, file: !435, line: 114, baseType: !422, size: 32, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !434, file: !435, line: 115, baseType: !440, size: 32, offset: 160)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !434, file: !435, line: 116, baseType: !422, size: 32, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !434, file: !435, line: 117, baseType: !440, size: 32, offset: 224)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !434, file: !435, line: 118, baseType: !422, size: 32, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !434, file: !435, line: 119, baseType: !440, size: 32, offset: 288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !434, file: !435, line: 120, baseType: !7, size: 32, offset: 320)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !434, file: !435, line: 121, baseType: !454, size: 64, offset: 384)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !455, line: 24, baseType: !456)
!455 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !455, line: 24, size: 64, elements: !457)
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !456, file: !455, line: 24, baseType: !247, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !434, file: !435, line: 122, baseType: !454, size: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !434, file: !435, line: 123, baseType: !454, size: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !434, file: !435, line: 124, baseType: !454, size: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !434, file: !435, line: 125, baseType: !454, size: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !434, file: !435, line: 127, baseType: !310, size: 8, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !434, file: !435, line: 129, baseType: !465, size: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !467, line: 195, size: 1728, elements: !468)
!467 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!468 = !{!469, !470, !475, !480, !489, !492, !493, !500, !501, !502, !503, !508, !509, !510, !512, !513, !554, !575}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !466, file: !467, line: 196, baseType: !381, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !466, file: !467, line: 197, baseType: !471, size: 32, offset: 32)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !467, line: 28, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !115, line: 104, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !248, line: 20, baseType: !474)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !250, line: 26, baseType: !183)
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 198, baseType: !476, size: 192, offset: 64)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 198, size: 192, elements: !477)
!477 = !{!478, !479}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !476, file: !467, line: 199, baseType: !343, size: 128)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !476, file: !467, line: 200, baseType: !202, size: 192, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !466, file: !467, line: 205, baseType: !481, size: 320, offset: 256)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !482, line: 48, size: 320, elements: !483)
!482 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!483 = !{!484, !485, !486, !487, !488}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !481, file: !482, line: 49, baseType: !322, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !481, file: !482, line: 55, baseType: !322, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !481, file: !482, line: 57, baseType: !338, size: 32, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !481, file: !482, line: 59, baseType: !336, size: 32, offset: 160)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !481, file: !482, line: 60, baseType: !343, size: 128, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !466, file: !467, line: 206, baseType: !490, size: 64, offset: 576)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !467, line: 206, flags: DIFlagFwdDecl)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !466, file: !467, line: 207, baseType: !112, size: 64, offset: 640)
!493 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 208, baseType: !494, size: 64, offset: 704)
!494 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 208, size: 64, elements: !495)
!495 = !{!496, !499}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !494, file: !467, line: 209, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !498, line: 8, baseType: !329)
!498 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !494, file: !467, line: 210, baseType: !497, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !466, file: !467, line: 212, baseType: !497, size: 64, offset: 768)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !466, file: !467, line: 213, baseType: !422, size: 32, offset: 832)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !466, file: !467, line: 214, baseType: !440, size: 32, offset: 864)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !466, file: !467, line: 215, baseType: !504, size: 32, offset: 896)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !467, line: 31, baseType: !505)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !115, line: 110, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !248, line: 21, baseType: !507)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !250, line: 27, baseType: !7)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !466, file: !467, line: 216, baseType: !253, size: 16, offset: 928)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !466, file: !467, line: 217, baseType: !253, size: 16, offset: 944)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !466, file: !467, line: 221, baseType: !511, size: 16, offset: 960)
!511 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !466, file: !467, line: 228, baseType: !113, size: 64, offset: 1024)
!513 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 245, baseType: !514, size: 320, offset: 1088)
!514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 245, size: 320, elements: !515)
!515 = !{!516, !545}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !514, file: !467, line: 246, baseType: !517, size: 320)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !467, line: 114, size: 320, elements: !518)
!518 = !{!519, !520, !532, !535, !544}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !517, file: !467, line: 116, baseType: !113, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !467, line: 117, baseType: !521, size: 64, offset: 64)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !467, line: 117, size: 64, elements: !522)
!522 = !{!523, !531}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !467, line: 118, baseType: !524, size: 64)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !467, line: 118, size: 64, elements: !525)
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !524, file: !467, line: 120, baseType: !316, size: 16)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !524, file: !467, line: 121, baseType: !528, size: 48, offset: 16)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 48, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 6)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !521, file: !467, line: 127, baseType: !113, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !467, line: 129, baseType: !533, size: 64, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !467, line: 102, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !517, file: !467, line: 130, baseType: !536, size: 64, offset: 192)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !467, line: 108, size: 192, elements: !538)
!538 = !{!539, !540, !541}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !537, file: !467, line: 109, baseType: !260, size: 128, align: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !537, file: !467, line: 110, baseType: !381, size: 32, offset: 128)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !537, file: !467, line: 111, baseType: !542, size: 8, offset: 160)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !115, line: 35, baseType: !543)
!543 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !517, file: !467, line: 131, baseType: !199, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !514, file: !467, line: 247, baseType: !546, size: 320)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !467, line: 247, size: 320, elements: !547)
!547 = !{!548, !549, !550, !551, !552}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !546, file: !467, line: 248, baseType: !113, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !546, file: !467, line: 249, baseType: !113, size: 64, offset: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !546, file: !467, line: 250, baseType: !533, size: 64, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !546, file: !467, line: 251, baseType: !536, size: 64, offset: 192)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !546, file: !467, line: 252, baseType: !553, size: 64, offset: 256)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, scope: !466, file: !467, line: 260, baseType: !555, size: 256, offset: 1408)
!555 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !466, file: !467, line: 260, size: 256, elements: !556)
!556 = !{!557, !563}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !555, file: !467, line: 261, baseType: !558, size: 256)
!558 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !467, line: 134, size: 256, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !558, file: !467, line: 135, baseType: !112, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !558, file: !467, line: 136, baseType: !562, size: 256)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !399)
!563 = !DIDerivedType(tag: DW_TAG_member, scope: !555, file: !467, line: 262, baseType: !564, size: 256)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !555, file: !467, line: 262, size: 256, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !564, file: !467, line: 264, baseType: !343, size: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !564, file: !467, line: 265, baseType: !568, size: 128, offset: 128)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !569, line: 22, size: 128, elements: !570)
!569 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!570 = !{!571, !574}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !568, file: !569, line: 23, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !569, line: 23, flags: DIFlagFwdDecl)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !568, file: !569, line: 24, baseType: !113, size: 64, offset: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !466, file: !467, line: 280, baseType: !576, size: 64, offset: 1664)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !467, line: 176, size: 192, elements: !578)
!578 = !{!579, !588, !589}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !577, file: !467, line: 177, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !467, line: 171, baseType: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!183, !465, !584, !586, !465}
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !558)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !577, file: !467, line: 178, baseType: !465, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !577, file: !467, line: 179, baseType: !533, size: 64, offset: 128)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !434, file: !435, line: 130, baseType: !465, size: 64, offset: 832)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !434, file: !435, line: 131, baseType: !465, size: 64, offset: 896)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !434, file: !435, line: 132, baseType: !465, size: 64, offset: 960)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !434, file: !435, line: 135, baseType: !112, size: 64, offset: 1024)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !434, file: !435, line: 137, baseType: !595, size: 64, offset: 1088)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !597, line: 14, size: 1088, elements: !598)
!597 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!598 = !{!599, !600, !609, !610, !611, !612, !613, !614}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !596, file: !597, line: 15, baseType: !381, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !596, file: !597, line: 17, baseType: !601, size: 320, offset: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !602, line: 22, size: 320, elements: !603)
!602 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!603 = !{!604, !605, !606, !607}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !602, line: 23, baseType: !336, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !601, file: !602, line: 24, baseType: !328, size: 64, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !601, file: !602, line: 26, baseType: !343, size: 128, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !601, file: !602, line: 28, baseType: !608, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !596, file: !597, line: 19, baseType: !113, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !596, file: !597, line: 20, baseType: !322, size: 64, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !596, file: !597, line: 23, baseType: !394, size: 128, offset: 512)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !596, file: !597, line: 24, baseType: !422, size: 32, offset: 640)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !596, file: !597, line: 29, baseType: !322, size: 64, offset: 704)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !596, file: !597, line: 36, baseType: !615, size: 320, offset: 768)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !616, line: 15, size: 320, elements: !617)
!616 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!617 = !{!618, !619, !620, !621, !622, !623, !624}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !615, file: !616, line: 16, baseType: !336, size: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !615, file: !616, line: 18, baseType: !183, size: 32, offset: 32)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !615, file: !616, line: 19, baseType: !183, size: 32, offset: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !615, file: !616, line: 20, baseType: !183, size: 32, offset: 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !615, file: !616, line: 21, baseType: !183, size: 32, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !615, file: !616, line: 22, baseType: !113, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !615, file: !616, line: 23, baseType: !113, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !434, file: !435, line: 138, baseType: !626, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !423, line: 18, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !434, file: !435, line: 139, baseType: !629, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !631, line: 16, flags: DIFlagFwdDecl)
!631 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!632 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !434, file: !435, line: 140, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !435, line: 25, size: 64, elements: !635)
!635 = !{!636, !637, !638}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !634, file: !435, line: 26, baseType: !192, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !634, file: !435, line: 27, baseType: !183, size: 32, offset: 32)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !634, file: !435, line: 28, baseType: !639, offset: 64)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, elements: !418)
!640 = !DIDerivedType(tag: DW_TAG_member, scope: !434, file: !435, line: 142, baseType: !641, size: 128, offset: 1344)
!641 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !434, file: !435, line: 142, size: 128, elements: !642)
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !641, file: !435, line: 143, baseType: !183, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !641, file: !435, line: 144, baseType: !260, size: 128, align: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !270, file: !14, line: 1013, baseType: !646, size: 256, offset: 960)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !647)
!647 = !{!648, !649, !650, !651, !652, !653}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !646, file: !14, line: 971, baseType: !113, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !646, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !646, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !646, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !646, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !646, file: !14, line: 976, baseType: !241, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !270, file: !14, line: 1014, baseType: !655, size: 128, offset: 1216)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !656, line: 8, size: 128, elements: !657)
!656 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!657 = !{!658, !4078}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !655, file: !656, line: 9, baseType: !659, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !661, line: 70, size: 256, elements: !662)
!661 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!662 = !{!663, !4075, !4076, !4077}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !660, file: !661, line: 71, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !666, line: 82, size: 1536, elements: !667)
!666 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!667 = !{!668, !669, !679, !687, !688, !703, !4042, !4044, !4057, !4058, !4059, !4060, !4061, !4067, !4068, !4069}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !665, file: !666, line: 84, baseType: !7, size: 32)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !665, file: !666, line: 85, baseType: !670, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !671, line: 275, baseType: !672)
!671 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !671, line: 275, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !672, file: !671, line: 275, baseType: !675, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !671, line: 69, baseType: !676)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !671, line: 64, size: 32, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !676, file: !671, line: 65, baseType: !7, size: 32)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !665, file: !666, line: 86, baseType: !680, size: 128, offset: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !681, line: 38, size: 128, elements: !682)
!681 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!682 = !{!683, !685}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !680, file: !681, line: 39, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !680, file: !681, line: 39, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !665, file: !666, line: 87, baseType: !664, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !665, file: !666, line: 88, baseType: !689, size: 128, offset: 256)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !666, line: 49, size: 128, elements: !690)
!690 = !{!691, !700}
!691 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !666, line: 50, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !666, line: 50, size: 64, elements: !693)
!693 = !{!694, !699}
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !666, line: 51, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !692, file: !666, line: 51, size: 64, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !695, file: !666, line: 52, baseType: !506, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !695, file: !666, line: 52, baseType: !506, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !692, file: !666, line: 54, baseType: !247, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !689, file: !666, line: 56, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !665, file: !666, line: 89, baseType: !704, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !706)
!706 = !{!707, !708, !709, !710, !711, !712, !713, !716, !717, !911, !3854, !3855, !3856, !3857, !3863, !3864, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !4024, !4027, !4028, !4029, !4038, !4039, !4040, !4041}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !705, file: !14, line: 642, baseType: !255, size: 16)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !705, file: !14, line: 643, baseType: !253, size: 16, offset: 16)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !705, file: !14, line: 644, baseType: !422, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !705, file: !14, line: 645, baseType: !343, size: 128, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !705, file: !14, line: 646, baseType: !440, size: 32, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !705, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !705, file: !14, line: 650, baseType: !714, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !705, file: !14, line: 651, baseType: !714, size: 64, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !705, file: !14, line: 654, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !721)
!721 = !{!722, !726, !739, !745, !749, !753, !757, !761, !765, !769, !773, !774, !780, !784, !821, !852, !859, !865, !869, !873, !877, !881, !885, !891, !895}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !720, file: !14, line: 1967, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!664, !704, !664, !7}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !720, file: !14, line: 1968, baseType: !727, size: 64, offset: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!199, !664, !704, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !732, line: 10, size: 128, elements: !733)
!732 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!733 = !{!734, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !731, file: !732, line: 11, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !112}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !731, file: !732, line: 12, baseType: !112, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !720, file: !14, line: 1969, baseType: !740, size: 64, offset: 128)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!183, !743, !704, !183}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !455, line: 42, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !720, file: !14, line: 1970, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!714, !704, !183, !542}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !720, file: !14, line: 1972, baseType: !750, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!183, !664, !553, !183}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !720, file: !14, line: 1974, baseType: !754, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{!183, !743, !704, !664, !255, !542}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !720, file: !14, line: 1976, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!183, !664, !704, !664}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !720, file: !14, line: 1977, baseType: !762, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!183, !704, !664}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !720, file: !14, line: 1978, baseType: !766, size: 64, offset: 512)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!183, !743, !704, !664, !199}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !720, file: !14, line: 1980, baseType: !770, size: 64, offset: 576)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!183, !743, !704, !664, !255}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !720, file: !14, line: 1982, baseType: !762, size: 64, offset: 640)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !720, file: !14, line: 1983, baseType: !775, size: 64, offset: 704)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{!183, !743, !704, !664, !255, !778}
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !115, line: 21, baseType: !779)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !115, line: 18, baseType: !506)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !720, file: !14, line: 1985, baseType: !781, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!183, !743, !704, !664, !704, !664, !7}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !720, file: !14, line: 1987, baseType: !785, size: 64, offset: 832)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!183, !743, !664, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !790)
!790 = !{!791, !792, !793, !803, !812, !813, !818, !819, !820}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !789, file: !14, line: 227, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !789, file: !14, line: 228, baseType: !255, size: 16, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !14, line: 241, baseType: !794, size: 32, offset: 64)
!794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !14, line: 241, size: 32, elements: !795)
!795 = !{!796, !797}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !794, file: !14, line: 242, baseType: !422, size: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !794, file: !14, line: 243, baseType: !798, size: 32)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !799, line: 16, baseType: !800)
!799 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 14, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !799, line: 15, baseType: !427, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, scope: !789, file: !14, line: 245, baseType: !804, size: 32, offset: 96)
!804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !789, file: !14, line: 245, size: 32, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !804, file: !14, line: 246, baseType: !440, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !804, file: !14, line: 247, baseType: !808, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !799, line: 20, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 18, size: 32, elements: !810)
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !809, file: !799, line: 19, baseType: !444, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !789, file: !14, line: 249, baseType: !241, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !789, file: !14, line: 250, baseType: !814, size: 128, offset: 192)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !498, line: 13, size: 128, elements: !815)
!815 = !{!816, !817}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !814, file: !498, line: 14, baseType: !497, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !814, file: !498, line: 15, baseType: !119, size: 64, offset: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !789, file: !14, line: 251, baseType: !814, size: 128, offset: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !789, file: !14, line: 252, baseType: !814, size: 128, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !789, file: !14, line: 259, baseType: !269, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !720, file: !14, line: 1988, baseType: !822, size: 64, offset: 896)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!183, !743, !825, !827, !506, !7}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !655)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !829, line: 22, size: 1280, elements: !830)
!829 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !828, file: !829, line: 23, baseType: !506, size: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !828, file: !829, line: 24, baseType: !255, size: 16, offset: 32)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !828, file: !829, line: 25, baseType: !7, size: 32, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !828, file: !829, line: 26, baseType: !505, size: 32, offset: 96)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !828, file: !829, line: 27, baseType: !247, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !828, file: !829, line: 28, baseType: !247, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !828, file: !829, line: 41, baseType: !247, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !828, file: !829, line: 42, baseType: !778, size: 32, offset: 320)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !828, file: !829, line: 43, baseType: !778, size: 32, offset: 352)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !828, file: !829, line: 44, baseType: !422, size: 32, offset: 384)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !828, file: !829, line: 45, baseType: !440, size: 32, offset: 416)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !828, file: !829, line: 46, baseType: !241, size: 64, offset: 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !828, file: !829, line: 47, baseType: !814, size: 128, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !828, file: !829, line: 48, baseType: !814, size: 128, offset: 640)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !828, file: !829, line: 49, baseType: !814, size: 128, offset: 768)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !828, file: !829, line: 50, baseType: !814, size: 128, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !828, file: !829, line: 51, baseType: !247, size: 64, offset: 1024)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !828, file: !829, line: 52, baseType: !247, size: 64, offset: 1088)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !828, file: !829, line: 53, baseType: !506, size: 32, offset: 1152)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !828, file: !829, line: 54, baseType: !506, size: 32, offset: 1184)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !828, file: !829, line: 55, baseType: !247, size: 64, offset: 1216)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !720, file: !14, line: 1990, baseType: !853, size: 64, offset: 960)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DISubroutineType(types: !855)
!855 = !{!114, !664, !553, !856}
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 61, baseType: !857)
!857 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !117, line: 72, baseType: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !117, line: 16, baseType: !113)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !720, file: !14, line: 1991, baseType: !860, size: 64, offset: 1024)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!183, !704, !863, !247, !247}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !720, file: !14, line: 1993, baseType: !866, size: 64, offset: 1088)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DISubroutineType(types: !868)
!868 = !{!183, !704, !183}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !720, file: !14, line: 1994, baseType: !870, size: 64, offset: 1152)
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = !DISubroutineType(types: !872)
!872 = !{!183, !704, !664, !269, !7, !255}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !720, file: !14, line: 1997, baseType: !874, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!183, !743, !704, !269, !255}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !720, file: !14, line: 1999, baseType: !878, size: 64, offset: 1280)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!714, !743, !664, !183}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !720, file: !14, line: 2001, baseType: !882, size: 64, offset: 1344)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DISubroutineType(types: !884)
!884 = !{!183, !743, !664, !714, !183}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !720, file: !14, line: 2003, baseType: !886, size: 64, offset: 1408)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DISubroutineType(types: !888)
!888 = !{!183, !743, !664, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !720, file: !14, line: 2005, baseType: !892, size: 64, offset: 1472)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!183, !664, !889}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !720, file: !14, line: 2006, baseType: !896, size: 64, offset: 1536)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DISubroutineType(types: !898)
!898 = !{!899, !704}
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !901)
!901 = !{!902, !910}
!902 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !900, file: !14, line: 3193, baseType: !903, size: 128)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !904, line: 296, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!905 = !{!906, !907, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !903, file: !904, line: 297, baseType: !284, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !903, file: !904, line: 299, baseType: !908, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !115, line: 154, baseType: !7)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !903, file: !904, line: 300, baseType: !112, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !900, file: !14, line: 3194, baseType: !506, size: 32, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !705, file: !14, line: 655, baseType: !912, size: 64, offset: 448)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !2157, !2328, !2368, !2451, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2468, !2472, !2473, !2476, !2479, !2482, !2485, !2486, !2487, !2528, !3729, !3730, !3731, !3732, !3733, !3734, !3737, !3739, !3746, !3747, !3748, !3749, !3808, !3823, !3824, !3825, !3826, !3827, !3828, !3829, !3830, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !913, file: !14, line: 1191, baseType: !343, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !913, file: !14, line: 1192, baseType: !778, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !913, file: !14, line: 1193, baseType: !310, size: 8, offset: 160)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !913, file: !14, line: 1194, baseType: !113, size: 64, offset: 192)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !913, file: !14, line: 1195, baseType: !241, size: 64, offset: 256)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !913, file: !14, line: 1196, baseType: !921, size: 64, offset: 320)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !923)
!923 = !{!924, !925, !926, !932, !936, !940, !944, !2145, !2146, !2147, !2149, !2150, !2151, !2153, !2154, !2155, !2156}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !922, file: !14, line: 2367, baseType: !199, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !922, file: !14, line: 2368, baseType: !183, size: 32, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !922, file: !14, line: 2376, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!183, !930}
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !93, line: 32, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !922, file: !14, line: 2377, baseType: !933, size: 64, offset: 192)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !935)
!935 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !922, file: !14, line: 2378, baseType: !937, size: 64, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!664, !921, !183, !199, !112}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !922, file: !14, line: 2380, baseType: !941, size: 64, offset: 320)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !912}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !922, file: !14, line: 2381, baseType: !945, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !947)
!947 = !{!948, !949, !950, !954, !1801, !1827, !1828, !1829, !1830, !1834, !1837, !1838, !1839, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1907, !1911, !1931, !1949, !1950, !1951, !1952, !1961, !1984, !1985, !1988, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !2002, !2003, !2103, !2111, !2112, !2113, !2115, !2119, !2120, !2124, !2125, !2126, !2127, !2129, !2130, !2131, !2138, !2139, !2140, !2144}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !946, file: !6, line: 403, baseType: !5, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !946, file: !6, line: 406, baseType: !343, size: 128, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !6, line: 409, baseType: !951, size: 448, offset: 192)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 448, elements: !952)
!952 = !{!953}
!953 = !DISubrange(count: 56)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !946, file: !6, line: 417, baseType: !955, size: 768, offset: 640)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !956)
!956 = !{!957, !1794, !1795, !1796, !1799}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !955, file: !6, line: 46, baseType: !958, size: 512)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !959, line: 64, size: 512, elements: !960)
!959 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!960 = !{!961, !962, !963, !965, !1009, !1783, !1784, !1789, !1790, !1791, !1792, !1793}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !958, file: !959, line: 65, baseType: !199, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !958, file: !959, line: 66, baseType: !343, size: 128, offset: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !958, file: !959, line: 67, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !958, file: !959, line: 68, baseType: !966, size: 64, offset: 256)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !959, line: 168, size: 768, elements: !968)
!968 = !{!969, !970, !971, !972}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !967, file: !959, line: 169, baseType: !343, size: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !967, file: !959, line: 170, baseType: !284, size: 32, offset: 128)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !967, file: !959, line: 171, baseType: !958, size: 512, offset: 192)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !967, file: !959, line: 172, baseType: !973, size: 64, offset: 704)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !959, line: 133, size: 192, elements: !976)
!976 = !{!977, !984, !989}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !975, file: !959, line: 134, baseType: !978, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!183, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !975, file: !959, line: 135, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !986)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!199, !982}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !975, file: !959, line: 136, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !991)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!183, !982, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !959, line: 125, size: 20736, elements: !996)
!996 = !{!997, !999, !1003, !1004, !1008}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !995, file: !959, line: 126, baseType: !998, size: 192)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 192, elements: !373)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !995, file: !959, line: 127, baseType: !1000, size: 4096, offset: 192)
!1000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !553, size: 4096, elements: !1001)
!1001 = !{!1002}
!1002 = !DISubrange(count: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !995, file: !959, line: 128, baseType: !183, size: 32, offset: 4288)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !995, file: !959, line: 129, baseType: !1005, size: 16384, offset: 4320)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 16384, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 2048)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !995, file: !959, line: 130, baseType: !183, size: 32, offset: 20704)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !958, file: !959, line: 69, baseType: !1010, size: 64, offset: 320)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !959, line: 116, size: 384, elements: !1013)
!1013 = !{!1014, !1018, !1037, !1745, !1773, !1777}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1012, file: !959, line: 117, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !964}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1012, file: !959, line: 118, baseType: !1019, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1022, line: 254, size: 128, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1023 = !{!1024, !1033}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1021, file: !1022, line: 255, baseType: !1025, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DISubroutineType(types: !1027)
!1027 = !{!114, !964, !1028, !553}
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1022, line: 30, size: 128, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1029, file: !1022, line: 31, baseType: !199, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1029, file: !1022, line: 32, baseType: !255, size: 16, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1021, file: !1022, line: 256, baseType: !1034, size: 64, offset: 64)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!114, !964, !1028, !199, !856}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1012, file: !959, line: 119, baseType: !1038, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1022, line: 84, size: 320, elements: !1042)
!1042 = !{!1043, !1044, !1048, !1741, !1743}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1041, file: !1022, line: 85, baseType: !199, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1041, file: !1022, line: 86, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!255, !964, !1028, !183}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1041, file: !1022, line: 88, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!255, !964, !1052, !183}
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1022, line: 175, size: 512, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1732, !1736, !1737}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1053, file: !1022, line: 176, baseType: !1029, size: 128)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1053, file: !1022, line: 177, baseType: !856, size: 64, offset: 128)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1053, file: !1022, line: 178, baseType: !112, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1053, file: !1022, line: 179, baseType: !1059, size: 64, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DISubroutineType(types: !1061)
!1061 = !{!1062}
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !1064)
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1075, !1076, !1077, !1724, !1725, !1726, !1729, !1730, !1731}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1063, file: !14, line: 473, baseType: !704, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1063, file: !14, line: 474, baseType: !903, size: 128, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1063, file: !14, line: 475, baseType: !481, size: 320, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1063, file: !14, line: 476, baseType: !908, size: 32, offset: 512)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1063, file: !14, line: 477, baseType: !192, size: 32, offset: 544)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1063, file: !14, line: 482, baseType: !1071, size: 128, offset: 576)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !203, line: 26, size: 128, elements: !1072)
!1072 = !{!1073, !1074}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1071, file: !203, line: 27, baseType: !221, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1071, file: !203, line: 28, baseType: !207, size: 64, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1063, file: !14, line: 483, baseType: !113, size: 64, offset: 704)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1063, file: !14, line: 484, baseType: !113, size: 64, offset: 768)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1063, file: !14, line: 485, baseType: !1078, size: 64, offset: 832)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1080)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !1081)
!1081 = !{!1082, !1549, !1619, !1623, !1627, !1633, !1639, !1643, !1648, !1652, !1656, !1660, !1688, !1692, !1696, !1700, !1705, !1709, !1716, !1720}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1080, file: !14, line: 405, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!183, !1086, !1547}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !27, line: 74, size: 512, align: 128, elements: !1088)
!1088 = !{!1089, !1090, !1541, !1546}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !27, line: 75, baseType: !113, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !27, line: 83, baseType: !1091, size: 320, offset: 64)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !27, line: 83, size: 320, elements: !1092)
!1092 = !{!1093, !1114, !1128, !1132, !1540}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !27, line: 84, baseType: !1094, size: 320)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !27, line: 84, size: 320, elements: !1095)
!1095 = !{!1096, !1107, !1108, !1113}
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !27, line: 90, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !27, line: 90, size: 128, elements: !1098)
!1098 = !{!1099, !1100, !1105, !1106}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1097, file: !27, line: 91, baseType: !343, size: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1097, file: !27, line: 94, baseType: !1101, size: 128)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1097, file: !27, line: 94, size: 128, elements: !1102)
!1102 = !{!1103, !1104}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1101, file: !27, line: 96, baseType: !112, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1101, file: !27, line: 98, baseType: !7, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1097, file: !27, line: 102, baseType: !343, size: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1097, file: !27, line: 103, baseType: !343, size: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1094, file: !27, line: 106, baseType: !1062, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !27, line: 107, baseType: !1109, size: 64, offset: 192)
!1109 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1094, file: !27, line: 107, size: 64, elements: !1110)
!1110 = !{!1111, !1112}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1109, file: !27, line: 108, baseType: !113, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1109, file: !27, line: 109, baseType: !113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1094, file: !27, line: 117, baseType: !113, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !27, line: 119, baseType: !1115, size: 320)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !27, line: 119, size: 320, elements: !1116)
!1116 = !{!1117, !1118, !1121, !1122, !1123}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1115, file: !27, line: 124, baseType: !113, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1115, file: !27, line: 125, baseType: !1119, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !27, line: 125, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1115, file: !27, line: 126, baseType: !113, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1115, file: !27, line: 127, baseType: !113, size: 64, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !27, line: 128, baseType: !1124, size: 64, offset: 256)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1115, file: !27, line: 128, size: 64, elements: !1125)
!1125 = !{!1126, !1127}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1124, file: !27, line: 133, baseType: !113, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1124, file: !27, line: 138, baseType: !322, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !27, line: 141, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !27, line: 141, size: 64, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1129, file: !27, line: 142, baseType: !113, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !27, line: 144, baseType: !1133, size: 128)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !27, line: 144, size: 128, elements: !1134)
!1134 = !{!1135, !1539}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1133, file: !27, line: 146, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !43, line: 126, size: 1216, elements: !1138)
!1138 = !{!1139, !1149, !1170, !1181, !1182, !1183, !1184, !1521, !1522, !1523}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1137, file: !43, line: 127, baseType: !1140, size: 384)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !43, line: 21, size: 384, elements: !1141)
!1141 = !{!1142, !1143, !1145, !1146, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1140, file: !43, line: 22, baseType: !113, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1140, file: !43, line: 23, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1140, file: !43, line: 24, baseType: !1144, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1140, file: !43, line: 25, baseType: !113, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1140, file: !43, line: 26, baseType: !113, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1140, file: !43, line: 27, baseType: !113, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1137, file: !43, line: 128, baseType: !1150, size: 128, offset: 384)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1151, line: 105, size: 128, elements: !1152)
!1151 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1150, file: !1151, line: 110, baseType: !113, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1150, file: !1151, line: 118, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1151, line: 95, size: 448, elements: !1157)
!1157 = !{!1158, !1159, !1165, !1166, !1167, !1168, !1169}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1156, file: !1151, line: 96, baseType: !322, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1156, file: !1151, line: 97, baseType: !1160, size: 64, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1151, line: 60, baseType: !1162)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !1164}
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1156, file: !1151, line: 98, baseType: !1160, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1156, file: !1151, line: 99, baseType: !542, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1156, file: !1151, line: 100, baseType: !542, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1156, file: !1151, line: 101, baseType: !260, size: 128, align: 64, offset: 256)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1156, file: !1151, line: 102, baseType: !1164, size: 64, offset: 384)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1137, file: !43, line: 129, baseType: !1171, size: 256, offset: 512)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1172, line: 26, size: 256, elements: !1173)
!1172 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1171, file: !1172, line: 27, baseType: !7, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1171, file: !1172, line: 28, baseType: !1176, size: 192, offset: 64)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1177, line: 43, size: 192, elements: !1178)
!1177 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1176, file: !1177, line: 44, baseType: !336, size: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1176, file: !1177, line: 45, baseType: !343, size: 128, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1137, file: !43, line: 130, baseType: !42, size: 32, offset: 768)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1137, file: !43, line: 131, baseType: !7, size: 32, offset: 800)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1137, file: !43, line: 132, baseType: !113, size: 64, offset: 832)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1137, file: !43, line: 133, baseType: !1185, size: 64, offset: 896)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !43, line: 77, size: 192, elements: !1188)
!1188 = !{!1189, !1193, !1517}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1187, file: !43, line: 83, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = !DISubroutineType(types: !1192)
!1192 = !{null, !1086}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1187, file: !43, line: 89, baseType: !1194, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!1197, !1198}
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !27, line: 1184, baseType: !7)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1200, line: 512, size: 896, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1201 = !{!1202, !1484, !1485, !1492, !1499, !1509, !1510, !1511, !1513, !1515}
!1202 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1200, line: 513, baseType: !1203, size: 320)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1199, file: !1200, line: 513, size: 320, elements: !1204)
!1204 = !{!1205, !1480, !1481, !1482, !1483}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1203, file: !1200, line: 514, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !27, line: 625, size: 1344, elements: !1208)
!1208 = !{!1209, !1218, !1385, !1391, !1398, !1399, !1404, !1405, !1410, !1411, !1414, !1473, !1474, !1475, !1476, !1477, !1478}
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !27, line: 628, baseType: !1210, size: 128)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !27, line: 628, size: 128, elements: !1211)
!1211 = !{!1212, !1217}
!1212 = !DIDerivedType(tag: DW_TAG_member, scope: !1210, file: !27, line: 629, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1210, file: !27, line: 629, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1213, file: !27, line: 631, baseType: !113, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1213, file: !27, line: 632, baseType: !113, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1210, file: !27, line: 635, baseType: !260, size: 128, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1207, file: !27, line: 639, baseType: !1219, size: 64, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !27, line: 733, size: 10240, elements: !1221)
!1221 = !{!1222, !1383}
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1220, file: !27, line: 734, baseType: !1223, size: 10240)
!1223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1220, file: !27, line: 734, size: 10240, elements: !1224)
!1224 = !{!1225, !1229, !1243, !1247, !1248, !1249, !1250, !1251, !1252, !1261, !1262, !1263, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1302, !1304, !1307, !1352, !1353, !1354, !1357, !1358, !1359, !1362, !1363, !1364, !1370, !1371}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !27, line: 739, baseType: !1226, size: 512, align: 512)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !27, line: 739, size: 512, align: 512, elements: !1227)
!1227 = !{!1228}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1226, file: !27, line: 747, baseType: !192, size: 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1223, file: !27, line: 750, baseType: !1230, size: 128, offset: 512)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1231, line: 218, size: 128, elements: !1232)
!1231 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1232 = !{!1233, !1241, !1242}
!1233 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !1231, line: 219, baseType: !1234, size: 32)
!1234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1230, file: !1231, line: 219, size: 32, elements: !1235)
!1235 = !{!1236, !1237}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1234, file: !1231, line: 220, baseType: !284, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1234, file: !1231, line: 221, baseType: !1238)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1231, line: 197, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1231, line: 197, elements: !1240)
!1240 = !{}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1230, file: !1231, line: 223, baseType: !7, size: 32, offset: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1230, file: !1231, line: 224, baseType: !112, size: 64, offset: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1223, file: !27, line: 752, baseType: !1244, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!113, !269, !113, !113, !113, !113}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1223, file: !27, line: 756, baseType: !113, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1223, file: !27, line: 757, baseType: !113, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1223, file: !27, line: 760, baseType: !113, size: 64, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1223, file: !27, line: 761, baseType: !113, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1223, file: !27, line: 763, baseType: !113, size: 64, offset: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1223, file: !27, line: 764, baseType: !1253, size: 64, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1255, line: 299, baseType: !1256)
!1255 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1255, line: 299, size: 64, elements: !1257)
!1257 = !{!1258}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1256, file: !1255, line: 299, baseType: !1259, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1260, line: 18, baseType: !113)
!1260 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1223, file: !27, line: 773, baseType: !192, size: 32, offset: 1088)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1223, file: !27, line: 785, baseType: !192, size: 32, offset: 1120)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1223, file: !27, line: 795, baseType: !1264, size: 64, offset: 1152)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !27, line: 726, size: 128, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1265, file: !27, line: 727, baseType: !247, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1265, file: !27, line: 728, baseType: !183, size: 32, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1223, file: !27, line: 801, baseType: !113, size: 64, offset: 1216)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1223, file: !27, line: 804, baseType: !322, size: 64, offset: 1280)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1223, file: !27, line: 806, baseType: !183, size: 32, offset: 1344)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1223, file: !27, line: 808, baseType: !284, size: 32, offset: 1376)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1223, file: !27, line: 823, baseType: !481, size: 320, offset: 1408)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1223, file: !27, line: 825, baseType: !343, size: 128, offset: 1728)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1223, file: !27, line: 845, baseType: !183, size: 32, offset: 1856)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1223, file: !27, line: 849, baseType: !113, size: 64, offset: 1920)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1223, file: !27, line: 850, baseType: !113, size: 64, offset: 1984)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1223, file: !27, line: 852, baseType: !113, size: 64, offset: 2048)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1223, file: !27, line: 853, baseType: !113, size: 64, offset: 2112)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1223, file: !27, line: 854, baseType: !324, size: 64, offset: 2176)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1223, file: !27, line: 855, baseType: !113, size: 64, offset: 2240)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1223, file: !27, line: 856, baseType: !113, size: 64, offset: 2304)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1223, file: !27, line: 857, baseType: !113, size: 64, offset: 2368)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1223, file: !27, line: 858, baseType: !113, size: 64, offset: 2432)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1223, file: !27, line: 865, baseType: !675, size: 32, offset: 2496)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1223, file: !27, line: 867, baseType: !284, size: 32, offset: 2528)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1223, file: !27, line: 869, baseType: !113, size: 64, offset: 2560)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1223, file: !27, line: 869, baseType: !113, size: 64, offset: 2624)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1223, file: !27, line: 869, baseType: !113, size: 64, offset: 2688)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1223, file: !27, line: 869, baseType: !113, size: 64, offset: 2752)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1223, file: !27, line: 870, baseType: !113, size: 64, offset: 2816)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1223, file: !27, line: 870, baseType: !113, size: 64, offset: 2880)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1223, file: !27, line: 870, baseType: !113, size: 64, offset: 2944)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1223, file: !27, line: 871, baseType: !113, size: 64, offset: 3008)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1223, file: !27, line: 871, baseType: !113, size: 64, offset: 3072)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1223, file: !27, line: 871, baseType: !113, size: 64, offset: 3136)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1223, file: !27, line: 871, baseType: !113, size: 64, offset: 3200)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1223, file: !27, line: 873, baseType: !1299, size: 3328, offset: 3264)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 52)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1223, file: !27, line: 875, baseType: !1303, size: 1280, offset: 6592)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !601, size: 1280, elements: !399)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1223, file: !27, line: 877, baseType: !1305, size: 64, offset: 7872)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !27, line: 877, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1223, file: !27, line: 880, baseType: !1308, size: 1088, offset: 7936)
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1309, line: 72, baseType: !1310)
!1309 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1309, line: 23, size: 1088, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315, !1316, !1319, !1320, !1321, !1322, !1347, !1348, !1349}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1310, file: !1309, line: 28, baseType: !247, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1310, file: !1309, line: 38, baseType: !324, size: 64, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1310, file: !1309, line: 40, baseType: !113, size: 64, offset: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1310, file: !1309, line: 43, baseType: !481, size: 320, offset: 192)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1310, file: !1309, line: 44, baseType: !1317, size: 64, offset: 512)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1309, line: 44, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1310, file: !1309, line: 48, baseType: !113, size: 64, offset: 576)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1310, file: !1309, line: 59, baseType: !331, size: 256, offset: 640)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1310, file: !1309, line: 60, baseType: !112, size: 64, offset: 896)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1310, file: !1309, line: 61, baseType: !1323, size: 64, offset: 960)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1326, line: 13, size: 1216, elements: !1327)
!1326 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1327 = !{!1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1325, file: !1326, line: 14, baseType: !112, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1325, file: !1326, line: 15, baseType: !113, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1325, file: !1326, line: 17, baseType: !113, size: 64, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1325, file: !1326, line: 17, baseType: !113, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1325, file: !1326, line: 18, baseType: !113, size: 64, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1325, file: !1326, line: 18, baseType: !113, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1325, file: !1326, line: 19, baseType: !210, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1325, file: !1326, line: 21, baseType: !119, size: 64, offset: 448)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1325, file: !1326, line: 23, baseType: !119, size: 64, offset: 512)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1325, file: !1326, line: 24, baseType: !119, size: 64, offset: 576)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1325, file: !1326, line: 25, baseType: !119, size: 64, offset: 640)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1325, file: !1326, line: 26, baseType: !119, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1325, file: !1326, line: 27, baseType: !119, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1325, file: !1326, line: 28, baseType: !119, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1325, file: !1326, line: 29, baseType: !119, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1325, file: !1326, line: 30, baseType: !119, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1325, file: !1326, line: 31, baseType: !119, size: 64, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1325, file: !1326, line: 32, baseType: !119, size: 64, offset: 1088)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1325, file: !1326, line: 33, baseType: !119, size: 64, offset: 1152)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1310, file: !1309, line: 63, baseType: !192, size: 32, offset: 1024)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1310, file: !1309, line: 69, baseType: !316, size: 16, offset: 1056)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1310, file: !1309, line: 70, baseType: !1350, size: 16, offset: 1072)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !248, line: 18, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !250, line: 23, baseType: !511)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1223, file: !27, line: 882, baseType: !113, size: 64, offset: 9024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1223, file: !27, line: 885, baseType: !284, size: 32, offset: 9088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1223, file: !27, line: 886, baseType: !1355, size: 64, offset: 9152)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !27, line: 732, flags: DIFlagFwdDecl)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1223, file: !27, line: 901, baseType: !626, size: 64, offset: 9216)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1223, file: !27, line: 904, baseType: !269, size: 64, offset: 9280)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1223, file: !27, line: 906, baseType: !1360, size: 64, offset: 9344)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !27, line: 906, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1223, file: !27, line: 930, baseType: !192, size: 32, offset: 9408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1223, file: !27, line: 933, baseType: !192, size: 32, offset: 9440)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1223, file: !27, line: 935, baseType: !1365, size: 64, offset: 9472)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !68, line: 103, size: 64, elements: !1366)
!1366 = !{!1367}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1365, file: !68, line: 104, baseType: !1368, size: 64)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !68, line: 101, flags: DIFlagFwdDecl)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1223, file: !27, line: 940, baseType: !322, size: 64, offset: 9536)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1223, file: !27, line: 942, baseType: !1372, size: 256, offset: 9600)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1373, line: 98, size: 256, elements: !1374)
!1373 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1374 = !{!1375, !1376, !1377}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1372, file: !1373, line: 99, baseType: !322, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1372, file: !1373, line: 100, baseType: !343, size: 128, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1372, file: !1373, line: 101, baseType: !1378, size: 64, offset: 192)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1373, line: 21, baseType: !1379)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !1382}
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1220, file: !27, line: 986, baseType: !1384, offset: 10240)
!1384 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !418)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1207, file: !27, line: 640, baseType: !1386, size: 64, offset: 192)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1255, line: 297, baseType: !1387)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1255, line: 297, size: 64, elements: !1388)
!1388 = !{!1389}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1387, file: !1255, line: 297, baseType: !1390, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1260, line: 19, baseType: !113)
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !27, line: 646, baseType: !1392, size: 64, offset: 256)
!1392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1207, file: !27, line: 646, size: 64, elements: !1393)
!1393 = !{!1394, !1397}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1392, file: !27, line: 647, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !27, line: 542, baseType: !113)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1392, file: !27, line: 648, baseType: !1396, size: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1207, file: !27, line: 666, baseType: !183, size: 32, offset: 320)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1207, file: !27, line: 667, baseType: !1400, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !27, line: 579, size: 320, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !27, line: 580, baseType: !481, size: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1207, file: !27, line: 670, baseType: !542, size: 8, offset: 448)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1207, file: !27, line: 681, baseType: !1406, size: 256, offset: 512)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !27, line: 678, size: 256, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1406, file: !27, line: 679, baseType: !202, size: 192, align: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1406, file: !27, line: 680, baseType: !113, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1207, file: !27, line: 689, baseType: !343, size: 128, offset: 768)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1207, file: !27, line: 691, baseType: !1412, size: 64, offset: 896)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !27, line: 691, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1207, file: !27, line: 694, baseType: !1415, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1200, line: 563, size: 1024, elements: !1418)
!1418 = !{!1419, !1423, !1424, !1428, !1432, !1436, !1437, !1441, !1445, !1449, !1450, !1451, !1455, !1459, !1465, !1469}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1417, file: !1200, line: 564, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{null, !1206}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1417, file: !1200, line: 569, baseType: !1420, size: 64, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1417, file: !1200, line: 571, baseType: !1425, size: 64, offset: 128)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{!183, !1206, !113}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1417, file: !1200, line: 572, baseType: !1429, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = !DISubroutineType(types: !1431)
!1431 = !{!183, !1206}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1417, file: !1200, line: 578, baseType: !1433, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!183, !1206, !113, !113, !113}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1417, file: !1200, line: 580, baseType: !1194, size: 64, offset: 320)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1417, file: !1200, line: 581, baseType: !1438, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1197, !1198, !7}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1417, file: !1200, line: 582, baseType: !1442, size: 64, offset: 448)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1197, !1198, !113, !113}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1417, file: !1200, line: 584, baseType: !1446, size: 64, offset: 512)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{!113, !1206}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1417, file: !1200, line: 588, baseType: !1194, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1417, file: !1200, line: 591, baseType: !1194, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1417, file: !1200, line: 597, baseType: !1452, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{!183, !1206, !113, !112, !183, !183}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1417, file: !1200, line: 603, baseType: !1456, size: 64, offset: 768)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DISubroutineType(types: !1458)
!1458 = !{!199, !1206}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1417, file: !1200, line: 613, baseType: !1460, size: 64, offset: 832)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{!183, !1206, !1463}
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !27, line: 717, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1417, file: !1200, line: 625, baseType: !1466, size: 64, offset: 896)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1463, !1206, !113}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1417, file: !1200, line: 633, baseType: !1470, size: 64, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1086, !1206, !113}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1207, file: !27, line: 697, baseType: !113, size: 64, offset: 1024)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1207, file: !27, line: 699, baseType: !269, size: 64, offset: 1088)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1207, file: !27, line: 700, baseType: !112, size: 64, offset: 1152)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1207, file: !27, line: 711, baseType: !322, size: 64, offset: 1216)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1207, file: !27, line: 717, baseType: !1463, size: 64, offset: 1280)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1207, file: !27, line: 722, baseType: !1479, offset: 1344)
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !27, line: 570, elements: !1240)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1203, file: !1200, line: 515, baseType: !908, size: 32, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1203, file: !1200, line: 516, baseType: !113, size: 64, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1203, file: !1200, line: 517, baseType: !113, size: 64, offset: 192)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1203, file: !1200, line: 518, baseType: !113, size: 64, offset: 256)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1199, file: !1200, line: 520, baseType: !26, size: 32, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1199, file: !1200, line: 522, baseType: !1486, size: 64, offset: 384)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1260, line: 22, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1260, line: 22, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1488, file: !1260, line: 22, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1260, line: 15, baseType: !113)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1199, file: !1200, line: 524, baseType: !1493, size: 64, offset: 448)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1255, line: 372, baseType: !1495)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1255, line: 372, size: 64, elements: !1496)
!1496 = !{!1497}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1495, file: !1255, line: 372, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1260, line: 16, baseType: !113)
!1499 = !DIDerivedType(tag: DW_TAG_member, scope: !1199, file: !1200, line: 527, baseType: !1500, size: 64, offset: 512)
!1500 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1199, file: !1200, line: 527, size: 64, elements: !1501)
!1501 = !{!1502, !1508}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1500, file: !1200, line: 528, baseType: !1503, size: 64)
!1503 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1260, line: 21, baseType: !1504)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1260, line: 21, size: 64, elements: !1505)
!1505 = !{!1506}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1504, file: !1260, line: 21, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1260, line: 14, baseType: !113)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1500, file: !1200, line: 529, baseType: !1487, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1199, file: !1200, line: 534, baseType: !1086, size: 64, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1199, file: !1200, line: 535, baseType: !1086, size: 64, offset: 640)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1199, file: !1200, line: 541, baseType: !1512, size: 64, offset: 704)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1199, file: !1200, line: 545, baseType: !1514, size: 64, offset: 768)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1199, file: !1200, line: 549, baseType: !1516, size: 64, offset: 832)
!1516 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1255, line: 520, baseType: !1086)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1187, file: !43, line: 100, baseType: !1518, size: 64, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!183, !1136, !113, !113, !183}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1137, file: !43, line: 134, baseType: !112, size: 64, offset: 960)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1137, file: !43, line: 135, baseType: !183, size: 32, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !43, line: 136, baseType: !1524, size: 128, offset: 1088)
!1524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1137, file: !43, line: 136, size: 128, elements: !1525)
!1525 = !{!1526, !1532}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1524, file: !43, line: 137, baseType: !1527, size: 128)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1528, line: 6, size: 128, elements: !1529)
!1528 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1527, file: !1528, line: 7, baseType: !247, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1527, file: !1528, line: 8, baseType: !247, size: 64, offset: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, scope: !1524, file: !43, line: 138, baseType: !1533)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1524, file: !43, line: 138, elements: !1534)
!1534 = !{!1535, !1537}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1533, file: !43, line: 138, baseType: !1536)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1533, file: !43, line: 138, elements: !1240)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1533, file: !43, line: 138, baseType: !1538)
!1538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1527, elements: !418)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1133, file: !27, line: 147, baseType: !112, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1091, file: !27, line: 161, baseType: !260, size: 128, align: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !27, line: 164, baseType: !1542, size: 32, offset: 384)
!1542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !27, line: 164, size: 32, elements: !1543)
!1543 = !{!1544, !1545}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1542, file: !27, line: 169, baseType: !192, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1542, file: !27, line: 177, baseType: !7, size: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1087, file: !27, line: 181, baseType: !192, size: 32, offset: 416)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1080, file: !14, line: 406, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!183, !269, !1553}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !27, line: 293, size: 1536, elements: !1555)
!1555 = !{!1556, !1586, !1600}
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !27, line: 295, baseType: !1557, size: 512)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !27, line: 295, size: 512, elements: !1558)
!1558 = !{!1559, !1585}
!1559 = !DIDerivedType(tag: DW_TAG_member, scope: !1557, file: !27, line: 296, baseType: !1560, size: 448)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1557, file: !27, line: 296, size: 448, elements: !1561)
!1561 = !{!1562, !1563, !1572, !1573, !1574, !1583, !1584}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1560, file: !27, line: 298, baseType: !113, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !27, line: 299, baseType: !1564, size: 128, offset: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !27, line: 299, size: 128, elements: !1565)
!1565 = !{!1566, !1567}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1564, file: !27, line: 300, baseType: !343, size: 128)
!1567 = !DIDerivedType(tag: DW_TAG_member, scope: !1564, file: !27, line: 302, baseType: !1568, size: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1564, file: !27, line: 302, size: 128, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1568, file: !27, line: 303, baseType: !112, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1568, file: !27, line: 305, baseType: !7, size: 32, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1560, file: !27, line: 310, baseType: !1062, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1560, file: !27, line: 311, baseType: !113, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1560, file: !27, line: 312, baseType: !1575, size: 64, offset: 320)
!1575 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1560, file: !27, line: 312, size: 64, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1575, file: !27, line: 313, baseType: !112, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1575, file: !27, line: 314, baseType: !1579, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !27, line: 257, baseType: !1580)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !27, line: 255, size: 64, elements: !1581)
!1581 = !{!1582}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1580, file: !27, line: 256, baseType: !113, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1560, file: !27, line: 316, baseType: !192, size: 32, offset: 384)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1560, file: !27, line: 317, baseType: !192, size: 32, offset: 416)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1557, file: !27, line: 323, baseType: !1087, size: 512, align: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !27, line: 325, baseType: !1587, size: 512, offset: 512)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !27, line: 325, size: 512, elements: !1588)
!1588 = !{!1589, !1599}
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1587, file: !27, line: 326, baseType: !1590, size: 320)
!1590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1587, file: !27, line: 326, size: 320, elements: !1591)
!1591 = !{!1592, !1593, !1594, !1595, !1596, !1597, !1598}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1590, file: !27, line: 327, baseType: !113, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1590, file: !27, line: 328, baseType: !113, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1590, file: !27, line: 329, baseType: !113, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1590, file: !27, line: 331, baseType: !192, size: 32, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1590, file: !27, line: 332, baseType: !192, size: 32, offset: 224)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1590, file: !27, line: 333, baseType: !192, size: 32, offset: 256)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1590, file: !27, line: 335, baseType: !7, size: 32, offset: 288)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1587, file: !27, line: 339, baseType: !1087, size: 512, align: 128)
!1600 = !DIDerivedType(tag: DW_TAG_member, scope: !1554, file: !27, line: 341, baseType: !1601, size: 512, offset: 1024)
!1601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1554, file: !27, line: 341, size: 512, elements: !1602)
!1602 = !{!1603, !1612, !1618}
!1603 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !27, line: 342, baseType: !1604, size: 384)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !27, line: 342, size: 384, elements: !1605)
!1605 = !{!1606, !1607, !1608, !1609, !1610, !1611}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1604, file: !27, line: 343, baseType: !113, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1604, file: !27, line: 344, baseType: !113, size: 64, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1604, file: !27, line: 346, baseType: !112, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1604, file: !27, line: 347, baseType: !112, size: 64, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1604, file: !27, line: 348, baseType: !112, size: 64, offset: 256)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1604, file: !27, line: 349, baseType: !112, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_member, scope: !1601, file: !27, line: 352, baseType: !1613, size: 256)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1601, file: !27, line: 352, size: 256, elements: !1614)
!1614 = !{!1615, !1616, !1617}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1613, file: !27, line: 353, baseType: !113, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1613, file: !27, line: 354, baseType: !113, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1613, file: !27, line: 356, baseType: !343, size: 128, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1601, file: !27, line: 359, baseType: !1087, size: 512, align: 128)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1080, file: !14, line: 409, baseType: !1620, size: 64, offset: 128)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!183, !1062, !1547}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1080, file: !14, line: 412, baseType: !1624, size: 64, offset: 192)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{!542, !1062, !1553}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1080, file: !14, line: 414, baseType: !1628, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{null, !1631}
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1080, file: !14, line: 416, baseType: !1634, size: 64, offset: 320)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!183, !269, !1062, !241, !7, !1637, !1638}
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1080, file: !14, line: 419, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!183, !269, !1062, !241, !7, !7, !1086, !112}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1080, file: !14, line: 424, baseType: !1644, size: 64, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1647, !1062, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !115, line: 131, baseType: !247)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1080, file: !14, line: 425, baseType: !1649, size: 64, offset: 512)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !1553, !856, !856}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1080, file: !14, line: 426, baseType: !1653, size: 64, offset: 576)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!542, !1553, !908}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1080, file: !14, line: 427, baseType: !1657, size: 64, offset: 640)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{null, !1553}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1080, file: !14, line: 428, baseType: !1661, size: 64, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!114, !1664, !1686}
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1666)
!1666 = !{!1667, !1668, !1669, !1673, !1674, !1675, !1676}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1665, file: !14, line: 374, baseType: !269, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1665, file: !14, line: 375, baseType: !241, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1665, file: !14, line: 376, baseType: !1670, size: 64, offset: 128)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{null, !1664, !119}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1665, file: !14, line: 377, baseType: !112, size: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1665, file: !14, line: 378, baseType: !183, size: 32, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1665, file: !14, line: 379, baseType: !316, size: 16, offset: 288)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1665, file: !14, line: 380, baseType: !1677, size: 64, offset: 320)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1665, file: !14, line: 380, size: 64, elements: !1678)
!1678 = !{!1679, !1682}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1677, file: !14, line: 386, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1677, file: !14, line: 395, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!114, !112}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !14, line: 69, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1080, file: !14, line: 433, baseType: !1689, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!183, !1062, !1553, !1553, !74}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1080, file: !14, line: 435, baseType: !1693, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!183, !1553}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1080, file: !14, line: 436, baseType: !1697, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!542, !1553, !856, !856}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1080, file: !14, line: 438, baseType: !1701, size: 64, offset: 960)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{null, !1553, !1704, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1080, file: !14, line: 439, baseType: !1706, size: 64, offset: 1024)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!183, !1062, !1086}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1080, file: !14, line: 442, baseType: !1710, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!183, !1713, !269, !1715}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!1715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1080, file: !14, line: 444, baseType: !1717, size: 64, offset: 1152)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !269}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1080, file: !14, line: 445, baseType: !1721, size: 64, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!183, !1664, !1686}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1063, file: !14, line: 486, baseType: !113, size: 64, offset: 896)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1063, file: !14, line: 487, baseType: !481, size: 320, offset: 960)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1063, file: !14, line: 488, baseType: !1727, size: 32, offset: 1280)
!1727 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1728, line: 8, baseType: !506)
!1728 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1063, file: !14, line: 489, baseType: !284, size: 32, offset: 1312)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1063, file: !14, line: 490, baseType: !343, size: 128, offset: 1344)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1063, file: !14, line: 491, baseType: !112, size: 64, offset: 1472)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1053, file: !1022, line: 180, baseType: !1733, size: 64, offset: 320)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!114, !269, !964, !1052, !553, !241, !856}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1053, file: !1022, line: 182, baseType: !1733, size: 64, offset: 384)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1053, file: !1022, line: 184, baseType: !1738, size: 64, offset: 448)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!183, !269, !964, !1052, !1206}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1041, file: !1022, line: 90, baseType: !1742, size: 64, offset: 192)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1041, file: !1022, line: 91, baseType: !1744, size: 64, offset: 256)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1012, file: !959, line: 120, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1749, !982}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1751)
!1751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !82, line: 39, size: 384, elements: !1752)
!1752 = !{!1753, !1754, !1758, !1762, !1768, !1772}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1751, file: !82, line: 40, baseType: !81, size: 32)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1751, file: !82, line: 41, baseType: !1755, size: 64, offset: 64)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DISubroutineType(types: !1757)
!1757 = !{!542}
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1751, file: !82, line: 42, baseType: !1759, size: 64, offset: 128)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{!112}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1751, file: !82, line: 43, baseType: !1763, size: 64, offset: 192)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!210, !1766}
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !82, line: 19, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1751, file: !82, line: 44, baseType: !1769, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!210}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1751, file: !82, line: 45, baseType: !735, size: 64, offset: 320)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1012, file: !959, line: 121, baseType: !1774, size: 64, offset: 256)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!210, !982}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1012, file: !959, line: 122, baseType: !1778, size: 64, offset: 320)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{null, !982, !1781, !1782}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !958, file: !959, line: 70, baseType: !188, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !958, file: !959, line: 71, baseType: !1785, size: 32, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1786, line: 19, size: 32, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1785, file: !1786, line: 20, baseType: !381, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !958, file: !959, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !958, file: !959, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !958, file: !959, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !958, file: !959, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !958, file: !959, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !955, file: !6, line: 47, baseType: !945, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !955, file: !6, line: 48, baseType: !964, size: 64, offset: 576)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !955, file: !6, line: 49, baseType: !1797, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !955, file: !6, line: 50, baseType: !1800, size: 64, offset: 704)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !946, file: !6, line: 418, baseType: !1802, size: 64, offset: 1408)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !1804)
!1804 = !{!1805, !1806, !1811, !1815, !1819, !1823}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1803, file: !6, line: 54, baseType: !1029, size: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1803, file: !6, line: 55, baseType: !1807, size: 64, offset: 128)
!1807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!114, !1802, !1810, !553}
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1803, file: !6, line: 57, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!114, !1802, !1810, !199, !856}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1803, file: !6, line: 59, baseType: !1816, size: 64, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !945, !199}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1803, file: !6, line: 60, baseType: !1820, size: 64, offset: 320)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!183, !945}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1803, file: !6, line: 61, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{null, !945}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !946, file: !6, line: 419, baseType: !199, size: 64, offset: 1472)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !946, file: !6, line: 420, baseType: !199, size: 64, offset: 1536)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !946, file: !6, line: 421, baseType: !964, size: 64, offset: 1600)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !946, file: !6, line: 424, baseType: !1831, size: 64, offset: 1664)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1833)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !946, file: !6, line: 425, baseType: !1835, size: 64, offset: 1728)
!1835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1836, size: 64)
!1836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !946, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !946, file: !6, line: 435, baseType: !331, size: 256, offset: 1856)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !946, file: !6, line: 437, baseType: !1840, size: 64, offset: 2112)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1842, line: 69, size: 320, elements: !1843)
!1842 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1843 = !{!1844, !1845, !1846, !1863, !1865, !1869, !1870}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1841, file: !1842, line: 70, baseType: !199, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1841, file: !1842, line: 71, baseType: !945, size: 64, offset: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1841, file: !1842, line: 72, baseType: !1847, size: 64, offset: 128)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1842, line: 47, size: 256, elements: !1850)
!1850 = !{!1851, !1852, !1858, !1862}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1849, file: !1842, line: 49, baseType: !7, size: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1849, file: !1842, line: 51, baseType: !1853, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DISubroutineType(types: !1855)
!1855 = !{!183, !199, !1856}
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1849, file: !1842, line: 53, baseType: !1859, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!183, !553, !1856}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1849, file: !1842, line: 55, baseType: !735, size: 64, offset: 192)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1841, file: !1842, line: 73, baseType: !1864, size: 16, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !316)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1841, file: !1842, line: 74, baseType: !1866, size: 8, offset: 208)
!1866 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !248, line: 16, baseType: !1867)
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !250, line: 20, baseType: !1868)
!1868 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !1842, line: 75, baseType: !308, size: 8, offset: 216)
!1870 = !DIDerivedType(tag: DW_TAG_member, scope: !1841, file: !1842, line: 76, baseType: !1871, size: 64, offset: 256)
!1871 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1841, file: !1842, line: 76, size: 64, elements: !1872)
!1872 = !{!1873, !1874, !1881}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1871, file: !1842, line: 77, baseType: !112, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1871, file: !1842, line: 78, baseType: !1875, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1877)
!1877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1842, line: 86, size: 128, elements: !1878)
!1878 = !{!1879, !1880}
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1877, file: !1842, line: 87, baseType: !7, size: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1877, file: !1842, line: 88, baseType: !553, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1871, file: !1842, line: 79, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1842, line: 92, size: 256, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1890, !1891}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1884, file: !1842, line: 94, baseType: !7, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1884, file: !1842, line: 95, baseType: !7, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1884, file: !1842, line: 96, baseType: !1889, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1884, file: !1842, line: 97, baseType: !1847, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1884, file: !1842, line: 98, baseType: !112, size: 64, offset: 192)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !946, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !946, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !946, file: !6, line: 442, baseType: !1831, size: 64, offset: 2240)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !946, file: !6, line: 443, baseType: !1835, size: 64, offset: 2304)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !946, file: !6, line: 444, baseType: !542, size: 8, offset: 2368)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !946, file: !6, line: 451, baseType: !542, size: 8, offset: 2376)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !946, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !946, file: !6, line: 455, baseType: !1900, size: 64, offset: 2432)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1902, line: 23, size: 96, elements: !1903)
!1902 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1903 = !{!1904, !1905, !1906}
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1901, file: !1902, line: 24, baseType: !183, size: 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1901, file: !1902, line: 24, baseType: !183, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1901, file: !1902, line: 24, baseType: !183, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !946, file: !6, line: 458, baseType: !1908, size: 64, offset: 2496)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{!183}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !946, file: !6, line: 460, baseType: !1912, size: 4032, align: 512, offset: 2560)
!1912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 4032, elements: !1929)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !1914)
!1914 = !{!1915, !1916, !1917}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1913, file: !6, line: 363, baseType: !112, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1913, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1913, file: !6, line: 367, baseType: !1918, size: 448, offset: 128)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !1919)
!1919 = !{!1920, !1921}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1918, file: !6, line: 320, baseType: !945, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1918, file: !6, line: 321, baseType: !1922, size: 384, offset: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1923, line: 40, size: 384, elements: !1924)
!1923 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1924 = !{!1925}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1922, file: !1923, line: 41, baseType: !1926, size: 384, align: 64)
!1926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 384, align: 64, elements: !1927)
!1927 = !{!1928}
!1928 = !DISubrange(count: 2)
!1929 = !{!1930}
!1930 = !DISubrange(count: 7)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !946, file: !6, line: 463, baseType: !1932, size: 192, offset: 6592)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1933, line: 8, size: 192, elements: !1934)
!1933 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1934 = !{!1935, !1936, !1938}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1932, file: !1933, line: 10, baseType: !7, size: 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1932, file: !1933, line: 11, baseType: !1937, size: 64, offset: 64)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1932, file: !1933, line: 12, baseType: !1939, size: 64, offset: 128)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1941, line: 59, size: 48, elements: !1942)
!1941 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1942 = !{!1943, !1944, !1945, !1946, !1947, !1948}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1940, file: !1941, line: 60, baseType: !1350, size: 16)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1940, file: !1941, line: 61, baseType: !1350, size: 16, offset: 16)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1940, file: !1941, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1940, file: !1941, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1940, file: !1941, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1940, file: !1941, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !946, file: !6, line: 465, baseType: !113, size: 64, offset: 6784)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !946, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !946, file: !6, line: 470, baseType: !343, size: 128, offset: 6912)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !946, file: !6, line: 471, baseType: !1953, size: 64, offset: 7040)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1955, line: 33, size: 96, elements: !1956)
!1955 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1956 = !{!1957, !1958, !1959, !1960}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1954, file: !1955, line: 37, baseType: !183, size: 32)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1954, file: !1955, line: 43, baseType: !183, size: 32, offset: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1954, file: !1955, line: 45, baseType: !253, size: 16, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1955, line: 47, baseType: !253, size: 16, offset: 80)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !946, file: !6, line: 476, baseType: !1962, size: 64, offset: 7104)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !1964)
!1964 = !{!1965, !1981, !1982, !1983}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1963, file: !6, line: 379, baseType: !1966, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1968, line: 204, baseType: !1969)
!1968 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1968, line: 197, size: 192, elements: !1970)
!1970 = !{!1971, !1973, !1974, !1975, !1977, !1979}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1969, file: !1968, line: 198, baseType: !1972, size: 32)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1968, line: 21, baseType: !507)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1969, file: !1968, line: 199, baseType: !310, size: 8, offset: 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1969, file: !1968, line: 200, baseType: !310, size: 8, offset: 40)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1969, file: !1968, line: 201, baseType: !1976, size: 16, offset: 48)
!1976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1968, line: 17, baseType: !317)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1969, file: !1968, line: 202, baseType: !1978, size: 64, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1968, line: 16, baseType: !249)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1969, file: !1968, line: 203, baseType: !1980, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1968, line: 22, baseType: !249)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1963, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1963, file: !6, line: 381, baseType: !553, size: 64, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1963, file: !6, line: 382, baseType: !553, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !946, file: !6, line: 477, baseType: !1963, size: 256, offset: 7168)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !946, file: !6, line: 480, baseType: !1986, size: 64, offset: 7424)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !946, file: !6, line: 483, baseType: !1989, size: 64, offset: 7488)
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !946, file: !6, line: 488, baseType: !553, size: 64, offset: 7552)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !946, file: !6, line: 492, baseType: !112, size: 64, offset: 7616)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !946, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !946, file: !6, line: 495, baseType: !112, size: 64, offset: 7744)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !946, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !946, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !946, file: !6, line: 500, baseType: !1998, size: 64, offset: 7872)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2000, line: 45, baseType: !2001)
!2000 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !183)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !946, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !946, file: !6, line: 504, baseType: !2004, size: 64, offset: 8000)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2007, line: 96, size: 192, elements: !2008)
!2007 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2008 = !{!2009, !2010, !2064, !2067}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2006, file: !2007, line: 97, baseType: !7, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2006, file: !2007, line: 98, baseType: !2011, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2007, line: 24, size: 3072, elements: !2013)
!2013 = !{!2014, !2016, !2017, !2018, !2019, !2033, !2034, !2035, !2036, !2048, !2049, !2050, !2061, !2062, !2063}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2012, file: !2007, line: 26, baseType: !2015, size: 128)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !322, size: 128, elements: !1927)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2012, file: !2007, line: 27, baseType: !2015, size: 128, offset: 128)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2012, file: !2007, line: 28, baseType: !183, size: 32, offset: 256)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2012, file: !2007, line: 31, baseType: !284, size: 32, align: 512, offset: 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2012, file: !2007, line: 32, baseType: !2020, size: 960, offset: 576)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2021, line: 206, size: 960, elements: !2022)
!2021 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2022 = !{!2023, !2024, !2027, !2029, !2030, !2032}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2020, file: !2021, line: 207, baseType: !263, size: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2020, file: !2021, line: 208, baseType: !2025, size: 256, offset: 64)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2026, size: 256, elements: !399)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2020, file: !2021, line: 209, baseType: !2028, size: 256, offset: 320)
!2028 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !399)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2020, file: !2021, line: 213, baseType: !119, size: 64, offset: 576)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2020, file: !2021, line: 215, baseType: !2031, size: 256, offset: 640)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 256, elements: !399)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2020, file: !2021, line: 216, baseType: !308, size: 8, offset: 896)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2012, file: !2007, line: 33, baseType: !113, size: 64, offset: 1536)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2012, file: !2007, line: 34, baseType: !113, size: 64, offset: 1600)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2012, file: !2007, line: 35, baseType: !542, size: 8, offset: 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2012, file: !2007, line: 36, baseType: !2037, size: 320, offset: 1728)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2038, line: 11, size: 320, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2039 = !{!2040, !2041, !2042, !2047}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2037, file: !2038, line: 16, baseType: !394, size: 128)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2037, file: !2038, line: 17, baseType: !113, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2037, file: !2038, line: 18, baseType: !2043, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !2046}
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2037, file: !2038, line: 19, baseType: !506, size: 32, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2012, file: !2007, line: 37, baseType: !1372, size: 256, offset: 2048)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2012, file: !2007, line: 38, baseType: !260, size: 128, align: 64, offset: 2304)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2012, file: !2007, line: 39, baseType: !2051, size: 64, offset: 2432)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2007, line: 49, size: 768, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057, !2058, !2059, !2060}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2052, file: !2007, line: 50, baseType: !284, size: 32)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2052, file: !2007, line: 51, baseType: !2028, size: 256, offset: 64)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2052, file: !2007, line: 53, baseType: !2028, size: 256, offset: 320)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2052, file: !2007, line: 54, baseType: !113, size: 64, offset: 576)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2052, file: !2007, line: 55, baseType: !2051, size: 64, offset: 640)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2052, file: !2007, line: 56, baseType: !183, size: 32, offset: 704)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2052, file: !2007, line: 57, baseType: !183, size: 32, offset: 736)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2012, file: !2007, line: 40, baseType: !113, size: 64, offset: 2496)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2012, file: !2007, line: 42, baseType: !183, size: 32, offset: 2560)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2012, file: !2007, line: 43, baseType: !2005, size: 64, offset: 2624)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2006, file: !2007, line: 99, baseType: !2065, offset: 128)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2066, line: 211, elements: !1240)
!2066 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2006, file: !2007, line: 100, baseType: !2068, size: 64, offset: 128)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2007, line: 63, size: 3008, elements: !2070)
!2070 = !{!2071, !2072, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2102}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2069, file: !2007, line: 64, baseType: !2051, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2069, file: !2007, line: 65, baseType: !2073, size: 192, offset: 64)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2051, size: 192, elements: !373)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2069, file: !2007, line: 67, baseType: !183, size: 32, offset: 256)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2069, file: !2007, line: 68, baseType: !331, size: 256, offset: 320)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2069, file: !2007, line: 69, baseType: !284, size: 32, offset: 576)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2069, file: !2007, line: 70, baseType: !331, size: 256, offset: 640)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2069, file: !2007, line: 71, baseType: !113, size: 64, offset: 896)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2069, file: !2007, line: 72, baseType: !113, size: 64, offset: 960)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2069, file: !2007, line: 73, baseType: !113, size: 64, offset: 1024)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2069, file: !2007, line: 74, baseType: !113, size: 64, offset: 1088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2069, file: !2007, line: 75, baseType: !113, size: 64, offset: 1152)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2069, file: !2007, line: 76, baseType: !113, size: 64, offset: 1216)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2069, file: !2007, line: 77, baseType: !113, size: 64, offset: 1280)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2069, file: !2007, line: 78, baseType: !113, size: 64, offset: 1344)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2069, file: !2007, line: 79, baseType: !542, size: 8, offset: 1408)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2069, file: !2007, line: 80, baseType: !113, size: 64, offset: 1472)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2069, file: !2007, line: 81, baseType: !331, size: 256, offset: 1536)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2069, file: !2007, line: 82, baseType: !1171, size: 256, offset: 1792)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2069, file: !2007, line: 84, baseType: !192, size: 32, offset: 2048)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2069, file: !2007, line: 87, baseType: !113, size: 64, offset: 2112)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2069, file: !2007, line: 88, baseType: !113, size: 64, offset: 2176)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2069, file: !2007, line: 89, baseType: !2094, size: 704, offset: 2240)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1373, line: 111, size: 704, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2101}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2094, file: !1373, line: 112, baseType: !1372, size: 256)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2094, file: !1373, line: 113, baseType: !2037, size: 320, offset: 256)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2094, file: !1373, line: 116, baseType: !2099, size: 64, offset: 576)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1373, line: 18, flags: DIFlagFwdDecl)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2094, file: !1373, line: 117, baseType: !183, size: 32, offset: 640)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2069, file: !2007, line: 90, baseType: !2005, size: 64, offset: 2944)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !946, file: !6, line: 515, baseType: !2104, size: 64, offset: 8064)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2106, line: 117, size: 128, elements: !2107)
!2106 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2107 = !{!2108, !2109, !2110}
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2105, file: !2106, line: 118, baseType: !473, size: 32)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2105, file: !2106, line: 119, baseType: !473, size: 32, offset: 32)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2105, file: !2106, line: 120, baseType: !119, size: 64, offset: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !946, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !946, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !946, file: !6, line: 520, baseType: !2114, size: 64, offset: 8192)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !946, file: !6, line: 523, baseType: !2116, size: 64, offset: 8256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2118, size: 64)
!2118 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !946, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !946, file: !6, line: 525, baseType: !2121, size: 64, offset: 8384)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !946, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !946, file: !6, line: 533, baseType: !112, size: 64, offset: 8512)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !946, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !946, file: !6, line: 535, baseType: !2128, size: 64, offset: 8640)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !946, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !946, file: !6, line: 539, baseType: !183, size: 32, offset: 8736)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !946, file: !6, line: 540, baseType: !2132, size: 64, offset: 8768)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2134, line: 32, size: 64, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2135 = !{!2136, !2137}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2133, file: !2134, line: 33, baseType: !473, size: 32)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2133, file: !2134, line: 34, baseType: !473, size: 32, offset: 32)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !946, file: !6, line: 563, baseType: !343, size: 128, offset: 8832)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !946, file: !6, line: 565, baseType: !343, size: 128, offset: 8960)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !946, file: !6, line: 568, baseType: !2141, size: 64, offset: 9088)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{null}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !946, file: !6, line: 570, baseType: !192, size: 32, offset: 9152)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !14, line: 2382, baseType: !921, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !922, file: !14, line: 2383, baseType: !390, size: 64, offset: 512)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !922, file: !14, line: 2385, baseType: !2148, offset: 576)
!2148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2066, line: 206, elements: !1240)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !922, file: !14, line: 2386, baseType: !2148, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !922, file: !14, line: 2387, baseType: !2148, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !922, file: !14, line: 2388, baseType: !2152, offset: 576)
!2152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2148, elements: !373)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !922, file: !14, line: 2390, baseType: !2148, offset: 576)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !922, file: !14, line: 2391, baseType: !2148, offset: 576)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !922, file: !14, line: 2392, baseType: !2148, offset: 576)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !922, file: !14, line: 2393, baseType: !2148, offset: 576)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !913, file: !14, line: 1197, baseType: !2158, size: 64, offset: 384)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2160)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !2161)
!2161 = !{!2162, !2166, !2170, !2171, !2175, !2179, !2183, !2184, !2185, !2189, !2193, !2197, !2198, !2199, !2205, !2209, !2210, !2253, !2254, !2255, !2256, !2260, !2264, !2311, !2326, !2327}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2160, file: !14, line: 2058, baseType: !2163, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!704, !912}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2160, file: !14, line: 2059, baseType: !2167, size: 64, offset: 64)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{null, !704}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2160, file: !14, line: 2060, baseType: !2167, size: 64, offset: 128)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2160, file: !14, line: 2062, baseType: !2172, size: 64, offset: 192)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{null, !704, !183}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2160, file: !14, line: 2063, baseType: !2176, size: 64, offset: 256)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!183, !704, !1547}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2160, file: !14, line: 2064, baseType: !2180, size: 64, offset: 320)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!183, !704}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2160, file: !14, line: 2065, baseType: !2167, size: 64, offset: 384)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2160, file: !14, line: 2066, baseType: !941, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2160, file: !14, line: 2067, baseType: !2186, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!183, !912, !183}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2160, file: !14, line: 2068, baseType: !2190, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!183, !912, !13}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2160, file: !14, line: 2069, baseType: !2194, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!183, !912}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2160, file: !14, line: 2070, baseType: !2190, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2160, file: !14, line: 2071, baseType: !2194, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2160, file: !14, line: 2072, baseType: !2200, size: 64, offset: 832)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!183, !664, !2203}
!2203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2160, file: !14, line: 2073, baseType: !2206, size: 64, offset: 896)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!183, !912, !1937, !553}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2160, file: !14, line: 2074, baseType: !941, size: 64, offset: 960)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2160, file: !14, line: 2076, baseType: !2211, size: 64, offset: 1024)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!183, !2214, !664}
!2214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2215, size: 64)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !2216, line: 17, size: 960, elements: !2217)
!2216 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224, !2225, !2226, !2248, !2249, !2252}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2215, file: !2216, line: 18, baseType: !553, size: 64)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2215, file: !2216, line: 19, baseType: !856, size: 64, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !2215, file: !2216, line: 20, baseType: !856, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2215, file: !2216, line: 21, baseType: !856, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !2215, file: !2216, line: 22, baseType: !856, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2215, file: !2216, line: 23, baseType: !241, size: 64, offset: 320)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !2215, file: !2216, line: 24, baseType: !241, size: 64, offset: 384)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2215, file: !2216, line: 25, baseType: !331, size: 256, offset: 448)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !2215, file: !2216, line: 26, baseType: !2227, size: 64, offset: 704)
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2229)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !2216, line: 32, size: 256, elements: !2230)
!2230 = !{!2231, !2236, !2240, !2244}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2229, file: !2216, line: 33, baseType: !2232, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!112, !2214, !2235}
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !2229, file: !2216, line: 34, baseType: !2237, size: 64, offset: 64)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2214, !112}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2229, file: !2216, line: 35, baseType: !2241, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!112, !2214, !112, !2235}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2229, file: !2216, line: 36, baseType: !2245, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{!183, !2214, !112}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !2215, file: !2216, line: 27, baseType: !183, size: 32, offset: 768)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2215, file: !2216, line: 28, baseType: !2250, size: 64, offset: 832)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2215, file: !2216, line: 29, baseType: !112, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2160, file: !14, line: 2077, baseType: !2211, size: 64, offset: 1088)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2160, file: !14, line: 2078, baseType: !2211, size: 64, offset: 1152)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2160, file: !14, line: 2079, baseType: !2211, size: 64, offset: 1216)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2160, file: !14, line: 2081, baseType: !2257, size: 64, offset: 1280)
!2257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2258, size: 64)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!114, !912, !183, !553, !856, !241}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2160, file: !14, line: 2082, baseType: !2261, size: 64, offset: 1344)
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DISubroutineType(types: !2263)
!2263 = !{!114, !912, !183, !199, !856, !241}
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2160, file: !14, line: 2083, baseType: !2265, size: 64, offset: 1408)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!2268, !704}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !51, line: 296, size: 1664, elements: !2271)
!2271 = !{!2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2296, !2297, !2298}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2270, file: !51, line: 297, baseType: !394, size: 128)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2270, file: !51, line: 298, baseType: !343, size: 128, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2270, file: !51, line: 299, baseType: !343, size: 128, offset: 256)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2270, file: !51, line: 300, baseType: !343, size: 128, offset: 384)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2270, file: !51, line: 301, baseType: !331, size: 256, offset: 512)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2270, file: !51, line: 302, baseType: !284, size: 32, offset: 768)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2270, file: !51, line: 303, baseType: !192, size: 32, offset: 800)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2270, file: !51, line: 304, baseType: !912, size: 64, offset: 832)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2270, file: !51, line: 305, baseType: !2281, size: 64, offset: 896)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !51, line: 68, size: 64, elements: !2282)
!2282 = !{!2283, !2295}
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2281, file: !51, line: 69, baseType: !2284, size: 32)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2281, file: !51, line: 69, size: 32, elements: !2285)
!2285 = !{!2286, !2287, !2288}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2284, file: !51, line: 70, baseType: !422, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2284, file: !51, line: 71, baseType: !440, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2284, file: !51, line: 72, baseType: !2289, size: 32)
!2289 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2290, line: 24, baseType: !2291)
!2290 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2290, line: 22, size: 32, elements: !2292)
!2292 = !{!2293}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2291, file: !2290, line: 23, baseType: !2294, size: 32)
!2294 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2290, line: 20, baseType: !428)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2281, file: !51, line: 74, baseType: !50, size: 32, offset: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2270, file: !51, line: 306, baseType: !241, size: 64, offset: 960)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2270, file: !51, line: 307, baseType: !113, size: 64, offset: 1024)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2270, file: !51, line: 308, baseType: !2299, size: 576, offset: 1088)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !51, line: 205, size: 576, elements: !2300)
!2300 = !{!2301, !2303, !2304, !2305, !2306, !2307, !2308, !2309, !2310}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2299, file: !51, line: 206, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !51, line: 66, baseType: !243)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2299, file: !51, line: 207, baseType: !2302, size: 64, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2299, file: !51, line: 208, baseType: !2302, size: 64, offset: 128)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2299, file: !51, line: 209, baseType: !2302, size: 64, offset: 192)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2299, file: !51, line: 210, baseType: !2302, size: 64, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2299, file: !51, line: 211, baseType: !2302, size: 64, offset: 320)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2299, file: !51, line: 212, baseType: !2302, size: 64, offset: 384)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2299, file: !51, line: 213, baseType: !497, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2299, file: !51, line: 214, baseType: !497, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2160, file: !14, line: 2085, baseType: !2312, size: 64, offset: 1472)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!119, !912, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2317, line: 15, size: 256, elements: !2318)
!2317 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2318 = !{!2319, !2320, !2321, !2322, !2323}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2316, file: !2317, line: 16, baseType: !908, size: 32)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2316, file: !2317, line: 19, baseType: !183, size: 32, offset: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2316, file: !2317, line: 26, baseType: !113, size: 64, offset: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2316, file: !2317, line: 33, baseType: !113, size: 64, offset: 128)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2316, file: !2317, line: 36, baseType: !2324, size: 64, offset: 192)
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2325 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !27, line: 33, flags: DIFlagFwdDecl)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2160, file: !14, line: 2087, baseType: !2312, size: 64, offset: 1536)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2160, file: !14, line: 2089, baseType: !941, size: 64, offset: 1600)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !913, file: !14, line: 1198, baseType: !2329, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2331)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !51, line: 324, size: 704, elements: !2332)
!2332 = !{!2333, !2337, !2341, !2345, !2346, !2347, !2348, !2349, !2354, !2359, !2363}
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2331, file: !51, line: 325, baseType: !2334, size: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!183, !2269}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2331, file: !51, line: 326, baseType: !2338, size: 64, offset: 64)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!2269, !912, !183}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2331, file: !51, line: 327, baseType: !2342, size: 64, offset: 128)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2269}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2331, file: !51, line: 328, baseType: !2334, size: 64, offset: 192)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2331, file: !51, line: 329, baseType: !2334, size: 64, offset: 256)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2331, file: !51, line: 330, baseType: !2334, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2331, file: !51, line: 331, baseType: !2186, size: 64, offset: 384)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2331, file: !51, line: 334, baseType: !2350, size: 64, offset: 448)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!2353, !704}
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2331, file: !51, line: 335, baseType: !2355, size: 64, offset: 512)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!183, !704, !2358}
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2331, file: !51, line: 337, baseType: !2360, size: 64, offset: 576)
!2360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2361, size: 64)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!183, !704, !2353}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2331, file: !51, line: 339, baseType: !2364, size: 64, offset: 640)
!2364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2365, size: 64)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{!183, !912, !2367}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !913, file: !14, line: 1199, baseType: !2369, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2371)
!2371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !51, line: 430, size: 704, elements: !2372)
!2372 = !{!2373, !2377, !2378, !2382, !2383, !2384, !2399, !2422, !2426, !2427, !2450}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2371, file: !51, line: 431, baseType: !2374, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!183, !912, !183, !183, !825}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2371, file: !51, line: 432, baseType: !2186, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2371, file: !51, line: 433, baseType: !2379, size: 64, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!183, !912, !7}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2371, file: !51, line: 434, baseType: !2379, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2371, file: !51, line: 435, baseType: !2186, size: 64, offset: 256)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2371, file: !51, line: 436, baseType: !2385, size: 64, offset: 320)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!183, !912, !183, !2388}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !51, line: 417, size: 256, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394, !2395, !2396, !2397, !2398}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2389, file: !51, line: 418, baseType: !183, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2389, file: !51, line: 419, baseType: !7, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2389, file: !51, line: 420, baseType: !7, size: 32, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2389, file: !51, line: 422, baseType: !7, size: 32, offset: 96)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2389, file: !51, line: 423, baseType: !7, size: 32, offset: 128)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2389, file: !51, line: 424, baseType: !7, size: 32, offset: 160)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2389, file: !51, line: 425, baseType: !7, size: 32, offset: 192)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2389, file: !51, line: 426, baseType: !7, size: 32, offset: 224)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2371, file: !51, line: 437, baseType: !2400, size: 64, offset: 384)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!183, !912, !2281, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !51, line: 345, size: 960, elements: !2405)
!2405 = !{!2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418, !2419, !2420, !2421}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2404, file: !51, line: 346, baseType: !183, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2404, file: !51, line: 347, baseType: !247, size: 64, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2404, file: !51, line: 348, baseType: !247, size: 64, offset: 128)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2404, file: !51, line: 349, baseType: !247, size: 64, offset: 192)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2404, file: !51, line: 350, baseType: !247, size: 64, offset: 256)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2404, file: !51, line: 351, baseType: !247, size: 64, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2404, file: !51, line: 352, baseType: !247, size: 64, offset: 384)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2404, file: !51, line: 353, baseType: !328, size: 64, offset: 448)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2404, file: !51, line: 355, baseType: !328, size: 64, offset: 512)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2404, file: !51, line: 356, baseType: !183, size: 32, offset: 576)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2404, file: !51, line: 357, baseType: !183, size: 32, offset: 608)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2404, file: !51, line: 358, baseType: !247, size: 64, offset: 640)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2404, file: !51, line: 359, baseType: !247, size: 64, offset: 704)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2404, file: !51, line: 360, baseType: !247, size: 64, offset: 768)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2404, file: !51, line: 361, baseType: !328, size: 64, offset: 832)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2404, file: !51, line: 362, baseType: !183, size: 32, offset: 896)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2371, file: !51, line: 438, baseType: !2423, size: 64, offset: 448)
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!183, !912, !2367, !2403}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2371, file: !51, line: 440, baseType: !2400, size: 64, offset: 512)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2371, file: !51, line: 441, baseType: !2428, size: 64, offset: 576)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!183, !912, !2431}
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !51, line: 411, size: 1408, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2432, file: !51, line: 412, baseType: !7, size: 32)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2432, file: !51, line: 413, baseType: !2436, size: 1344, offset: 64)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2437, size: 1344, elements: !373)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !51, line: 397, size: 448, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2442, !2443, !2444, !2445, !2446, !2447, !2449}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2437, file: !51, line: 398, baseType: !7, size: 32)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2437, file: !51, line: 399, baseType: !7, size: 32, offset: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2437, file: !51, line: 401, baseType: !7, size: 32, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2437, file: !51, line: 402, baseType: !7, size: 32, offset: 96)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2437, file: !51, line: 403, baseType: !7, size: 32, offset: 128)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2437, file: !51, line: 404, baseType: !7, size: 32, offset: 160)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2437, file: !51, line: 405, baseType: !7, size: 32, offset: 192)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2437, file: !51, line: 406, baseType: !251, size: 64, offset: 256)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2437, file: !51, line: 407, baseType: !2448, size: 64, offset: 320)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !115, line: 132, baseType: !247)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2437, file: !51, line: 408, baseType: !2448, size: 64, offset: 384)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2371, file: !51, line: 442, baseType: !2379, size: 64, offset: 640)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !913, file: !14, line: 1200, baseType: !2452, size: 64, offset: 576)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !913, file: !14, line: 1201, baseType: !113, size: 64, offset: 640)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !913, file: !14, line: 1202, baseType: !113, size: 64, offset: 704)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !913, file: !14, line: 1203, baseType: !113, size: 64, offset: 768)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !913, file: !14, line: 1204, baseType: !664, size: 64, offset: 832)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !913, file: !14, line: 1205, baseType: !481, size: 320, offset: 896)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !913, file: !14, line: 1206, baseType: !183, size: 32, offset: 1216)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !913, file: !14, line: 1207, baseType: !192, size: 32, offset: 1248)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !913, file: !14, line: 1209, baseType: !112, size: 64, offset: 1280)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !913, file: !14, line: 1211, baseType: !2464, size: 64, offset: 1344)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2467 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !913, file: !14, line: 1223, baseType: !2469, size: 64, offset: 1408)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !681, line: 34, size: 64, elements: !2470)
!2470 = !{!2471}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2469, file: !681, line: 35, baseType: !684, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !913, file: !14, line: 1224, baseType: !343, size: 128, offset: 1472)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !913, file: !14, line: 1225, baseType: !2474, size: 64, offset: 1600)
!2474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2475, size: 64)
!2475 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !913, file: !14, line: 1226, baseType: !2477, size: 64, offset: 1664)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !913, file: !14, line: 1227, baseType: !2480, size: 64, offset: 1728)
!2480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2481, size: 64)
!2481 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !913, file: !14, line: 1228, baseType: !2483, size: 64, offset: 1792)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !913, file: !14, line: 1229, baseType: !394, size: 128, offset: 1856)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !913, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !913, file: !14, line: 1231, baseType: !2488, size: 2496, offset: 2048)
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !51, line: 521, size: 2496, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2494, !2526}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2488, file: !51, line: 522, baseType: !7, size: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2488, file: !51, line: 523, baseType: !481, size: 320, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2488, file: !51, line: 524, baseType: !2493, size: 192, offset: 384)
!2493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !704, size: 192, elements: !373)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2488, file: !51, line: 525, baseType: !2495, size: 1728, offset: 576)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2496, size: 1728, elements: !373)
!2496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !51, line: 222, size: 576, elements: !2497)
!2497 = !{!2498, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525}
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2496, file: !51, line: 223, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !51, line: 445, size: 256, elements: !2501)
!2501 = !{!2502, !2503, !2516, !2517}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2500, file: !51, line: 446, baseType: !183, size: 32)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2500, file: !51, line: 447, baseType: !2504, size: 64, offset: 64)
!2504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2505, size: 64)
!2505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2506)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !51, line: 312, size: 512, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2506, file: !51, line: 313, baseType: !2186, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2506, file: !51, line: 314, baseType: !2186, size: 64, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2506, file: !51, line: 315, baseType: !2186, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2506, file: !51, line: 316, baseType: !2186, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2506, file: !51, line: 317, baseType: !2334, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2506, file: !51, line: 318, baseType: !2334, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2506, file: !51, line: 319, baseType: !2334, size: 64, offset: 384)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2506, file: !51, line: 320, baseType: !2364, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2500, file: !51, line: 448, baseType: !945, size: 64, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2500, file: !51, line: 449, baseType: !2499, size: 64, offset: 192)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2496, file: !51, line: 224, baseType: !183, size: 32, offset: 64)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2496, file: !51, line: 226, baseType: !343, size: 128, offset: 128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2496, file: !51, line: 227, baseType: !113, size: 64, offset: 256)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2496, file: !51, line: 228, baseType: !7, size: 32, offset: 320)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2496, file: !51, line: 229, baseType: !7, size: 32, offset: 352)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2496, file: !51, line: 230, baseType: !2302, size: 64, offset: 384)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2496, file: !51, line: 231, baseType: !2302, size: 64, offset: 448)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2496, file: !51, line: 232, baseType: !112, size: 64, offset: 512)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2488, file: !51, line: 526, baseType: !2527, size: 192, offset: 2304)
!2527 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2504, size: 192, elements: !373)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !913, file: !14, line: 1233, baseType: !2529, size: 2368, offset: 4544)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2529, file: !14, line: 1185, baseType: !253, size: 16)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2529, file: !14, line: 1186, baseType: !253, size: 16, offset: 16)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2529, file: !14, line: 1187, baseType: !2534, size: 2304, offset: 64)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2535, size: 2304, elements: !373)
!2535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2536, line: 12, size: 768, elements: !2537)
!2536 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2537 = !{!2538, !2546, !2547, !3727, !3728}
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2535, file: !2536, line: 13, baseType: !2539, size: 384)
!2539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2540, line: 17, size: 384, elements: !2541)
!2540 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2541 = !{!2542, !2543, !2544, !2545}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2539, file: !2540, line: 18, baseType: !183, size: 32)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2539, file: !2540, line: 19, baseType: !183, size: 32, offset: 32)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2539, file: !2540, line: 20, baseType: !403, size: 192, offset: 64)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2539, file: !2540, line: 22, baseType: !260, size: 128, align: 64, offset: 256)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2535, file: !2536, line: 14, baseType: !1889, size: 64, offset: 384)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2535, file: !2536, line: 15, baseType: !2548, size: 64, offset: 448)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2549, line: 16, size: 64, elements: !2550)
!2549 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2550 = !{!2551}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2548, file: !2549, line: 17, baseType: !2552, size: 64)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2554, line: 746, size: 58368, elements: !2555)
!2554 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2555 = !{!2556, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2636, !2647, !2735, !2739, !2742, !2773, !2774, !2775, !2776, !2787, !2789, !2790, !2791, !2792, !2793, !2794, !2805, !2806, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2823, !2824, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2912, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2960, !2966, !2967, !2968, !2969, !2970, !2971, !2974, !2981, !2986, !2989, !2992, !2995, !2999, !3137, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3175, !3176, !3177, !3186, !3194, !3195, !3196, !3197, !3198, !3203, !3204, !3205, !3208, !3209, !3212, !3215, !3218, !3226, !3229, !3230, !3316, !3317, !3318, !3319, !3320, !3326, !3327, !3328, !3329, !3332, !3333, !3336, !3339, !3340, !3343, !3344, !3345, !3348, !3349, !3350, !3351, !3352, !3353, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3385, !3388, !3394, !3397, !3398, !3399, !3400, !3401, !3402, !3403, !3406, !3478, !3480, !3481, !3482, !3483, !3484, !3485, !3488, !3489, !3490, !3491, !3492, !3493, !3494, !3495, !3496, !3497, !3498, !3502, !3503, !3504}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2553, file: !2554, line: 752, baseType: !2557, size: 192)
!2557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2558, line: 56, size: 192, elements: !2559)
!2558 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2559 = !{!2560, !2561, !2562, !2563}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2557, file: !2558, line: 57, baseType: !113, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2557, file: !2558, line: 58, baseType: !113, size: 64, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2557, file: !2558, line: 59, baseType: !506, size: 32, offset: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2557, file: !2558, line: 61, baseType: !506, size: 32, offset: 160)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2553, file: !2554, line: 754, baseType: !7, size: 32, offset: 192)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2553, file: !2554, line: 767, baseType: !112, size: 64, offset: 256)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2553, file: !2554, line: 768, baseType: !381, size: 32, offset: 320)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2553, file: !2554, line: 770, baseType: !7, size: 32, offset: 352)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2553, file: !2554, line: 771, baseType: !7, size: 32, offset: 384)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2553, file: !2554, line: 774, baseType: !183, size: 32, offset: 416)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2553, file: !2554, line: 775, baseType: !2571, size: 128, offset: 448)
!2571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2572, line: 58, size: 128, elements: !2573)
!2572 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2573 = !{!2574, !2575, !2580, !2581}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2571, file: !2572, line: 59, baseType: !276, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, scope: !2571, file: !2572, line: 60, baseType: !2576, size: 32, offset: 64)
!2576 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2571, file: !2572, line: 60, size: 32, elements: !2577)
!2577 = !{!2578, !2579}
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2576, file: !2572, line: 61, baseType: !7, size: 32)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2576, file: !2572, line: 62, baseType: !192, size: 32)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2571, file: !2572, line: 65, baseType: !316, size: 16, offset: 96)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2571, file: !2572, line: 65, baseType: !316, size: 16, offset: 112)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2553, file: !2554, line: 776, baseType: !7, size: 32, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2553, file: !2554, line: 777, baseType: !113, size: 64, offset: 640)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2553, file: !2554, line: 778, baseType: !2552, size: 64, offset: 704)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2553, file: !2554, line: 787, baseType: !183, size: 32, offset: 768)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2553, file: !2554, line: 788, baseType: !183, size: 32, offset: 800)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2553, file: !2554, line: 790, baseType: !183, size: 32, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2553, file: !2554, line: 792, baseType: !183, size: 32, offset: 864)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2553, file: !2554, line: 793, baseType: !183, size: 32, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2553, file: !2554, line: 794, baseType: !183, size: 32, offset: 928)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2553, file: !2554, line: 795, baseType: !7, size: 32, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2553, file: !2554, line: 797, baseType: !2593, size: 2048, offset: 1024)
!2593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2554, line: 551, size: 2048, elements: !2594)
!2594 = !{!2595, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2615, !2618, !2619, !2620}
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2593, file: !2554, line: 553, baseType: !2596, size: 128)
!2596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2554, line: 411, size: 128, elements: !2597)
!2597 = !{!2598, !2599}
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2596, file: !2554, line: 412, baseType: !113, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2596, file: !2554, line: 413, baseType: !506, size: 32, offset: 64)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2593, file: !2554, line: 554, baseType: !202, size: 192, align: 64, offset: 128)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2593, file: !2554, line: 555, baseType: !247, size: 64, offset: 320)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2593, file: !2554, line: 556, baseType: !247, size: 64, offset: 384)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2593, file: !2554, line: 558, baseType: !343, size: 128, offset: 448)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2593, file: !2554, line: 559, baseType: !7, size: 32, offset: 576)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2593, file: !2554, line: 561, baseType: !247, size: 64, offset: 640)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2593, file: !2554, line: 562, baseType: !247, size: 64, offset: 704)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2593, file: !2554, line: 563, baseType: !247, size: 64, offset: 768)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2593, file: !2554, line: 564, baseType: !247, size: 64, offset: 832)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2593, file: !2554, line: 565, baseType: !328, size: 64, offset: 896)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2593, file: !2554, line: 566, baseType: !247, size: 64, offset: 960)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2593, file: !2554, line: 568, baseType: !247, size: 64, offset: 1024)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2593, file: !2554, line: 571, baseType: !183, size: 32, offset: 1088)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2593, file: !2554, line: 572, baseType: !2614, size: 64, offset: 1152)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2593, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2593, file: !2554, line: 574, baseType: !2616, size: 64, offset: 1216)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2554, line: 49, flags: DIFlagFwdDecl)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2593, file: !2554, line: 576, baseType: !2616, size: 64, offset: 1280)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2593, file: !2554, line: 578, baseType: !113, size: 64, offset: 1344)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2593, file: !2554, line: 588, baseType: !2621, size: 512, align: 512, offset: 1536)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2554, line: 497, size: 512, align: 512, elements: !2622)
!2622 = !{!2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2621, file: !2554, line: 498, baseType: !247, size: 64)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2621, file: !2554, line: 499, baseType: !247, size: 64, offset: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2621, file: !2554, line: 500, baseType: !247, size: 64, offset: 128)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2621, file: !2554, line: 501, baseType: !506, size: 32, offset: 192)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2621, file: !2554, line: 502, baseType: !506, size: 32, offset: 224)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2621, file: !2554, line: 503, baseType: !113, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2621, file: !2554, line: 504, baseType: !113, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2621, file: !2554, line: 505, baseType: !113, size: 64, offset: 384)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2621, file: !2554, line: 506, baseType: !2632, size: 64, align: 64, offset: 448)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2554, line: 445, size: 64, align: 64, elements: !2633)
!2633 = !{!2634, !2635}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2632, file: !2554, line: 446, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2632, file: !2554, line: 447, baseType: !7, size: 32, offset: 32)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2553, file: !2554, line: 798, baseType: !2637, size: 384, offset: 3072)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2554, line: 592, size: 384, elements: !2638)
!2638 = !{!2639, !2640, !2641, !2642, !2643, !2644, !2645}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2637, file: !2554, line: 593, baseType: !343, size: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2637, file: !2554, line: 594, baseType: !113, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2637, file: !2554, line: 595, baseType: !113, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2637, file: !2554, line: 596, baseType: !7, size: 32, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2637, file: !2554, line: 597, baseType: !253, size: 16, offset: 288)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2637, file: !2554, line: 598, baseType: !253, size: 16, offset: 304)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2637, file: !2554, line: 600, baseType: !2646, size: 64, offset: 320)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2637, size: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2553, file: !2554, line: 799, baseType: !2648, size: 1792, offset: 3456)
!2648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2554, line: 610, size: 1792, elements: !2649)
!2649 = !{!2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2661, !2662, !2663, !2732, !2733}
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2648, file: !2554, line: 611, baseType: !202, size: 192, align: 64)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2648, file: !2554, line: 618, baseType: !247, size: 64, offset: 192)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2648, file: !2554, line: 619, baseType: !247, size: 64, offset: 256)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2648, file: !2554, line: 620, baseType: !247, size: 64, offset: 320)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2648, file: !2554, line: 621, baseType: !247, size: 64, offset: 384)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2648, file: !2554, line: 622, baseType: !247, size: 64, offset: 448)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2648, file: !2554, line: 629, baseType: !328, size: 64, offset: 512)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2648, file: !2554, line: 630, baseType: !247, size: 64, offset: 576)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2648, file: !2554, line: 631, baseType: !7, size: 32, offset: 640)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2648, file: !2554, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2648, file: !2554, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2648, file: !2554, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2648, file: !2554, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2648, file: !2554, line: 662, baseType: !2664, size: 512, offset: 704)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !57, line: 118, size: 512, elements: !2665)
!2665 = !{!2666, !2674, !2675, !2680, !2728, !2729, !2730, !2731}
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2664, file: !57, line: 119, baseType: !2667, size: 256)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2668, line: 9, size: 256, elements: !2669)
!2668 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2669 = !{!2670, !2671}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2667, file: !2668, line: 10, baseType: !202, size: 192, align: 64)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2667, file: !2668, line: 11, baseType: !2672, size: 64, offset: 192)
!2672 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2673, line: 29, baseType: !328)
!2673 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2664, file: !57, line: 120, baseType: !2672, size: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2664, file: !57, line: 121, baseType: !2676, size: 64, offset: 320)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!56, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2664, file: !57, line: 122, baseType: !2681, size: 64, offset: 384)
!2681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2682, size: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !57, line: 159, size: 512, align: 512, elements: !2683)
!2683 = !{!2684, !2709, !2710, !2713, !2718, !2719, !2723, !2727}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2682, file: !57, line: 160, baseType: !2685, size: 64)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2686, size: 64)
!2686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !57, line: 215, size: 4608, align: 512, elements: !2687)
!2687 = !{!2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695, !2696, !2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705}
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2686, file: !57, line: 216, baseType: !336, size: 32)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2686, file: !57, line: 217, baseType: !7, size: 32, offset: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2686, file: !57, line: 218, baseType: !7, size: 32, offset: 64)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2686, file: !57, line: 219, baseType: !7, size: 32, offset: 96)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2686, file: !57, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2686, file: !57, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2686, file: !57, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2686, file: !57, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2686, file: !57, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2686, file: !57, line: 226, baseType: !7, size: 32, offset: 160)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2686, file: !57, line: 227, baseType: !253, size: 16, offset: 192)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2686, file: !57, line: 228, baseType: !253, size: 16, offset: 208)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2686, file: !57, line: 229, baseType: !7, size: 32, offset: 224)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2686, file: !57, line: 235, baseType: !2672, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2686, file: !57, line: 236, baseType: !2679, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2686, file: !57, line: 237, baseType: !2672, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2686, file: !57, line: 238, baseType: !2679, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2686, file: !57, line: 239, baseType: !2706, size: 4096, align: 512, offset: 512)
!2706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2682, size: 4096, align: 512, elements: !2707)
!2707 = !{!2708}
!2708 = !DISubrange(count: 8)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2682, file: !57, line: 161, baseType: !7, size: 32, offset: 64)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2682, file: !57, line: 162, baseType: !2711, size: 32, offset: 96)
!2711 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !115, line: 32, baseType: !2712)
!2712 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !117, line: 96, baseType: !183)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2682, file: !57, line: 163, baseType: !2714, size: 32, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !671, line: 274, baseType: !2715)
!2715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !671, line: 274, size: 32, elements: !2716)
!2716 = !{!2717}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2715, file: !671, line: 274, baseType: !675, size: 32)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2682, file: !57, line: 164, baseType: !2679, size: 64, offset: 192)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2682, file: !57, line: 165, baseType: !2720, size: 128, offset: 256)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2668, line: 14, size: 128, elements: !2721)
!2721 = !{!2722}
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2720, file: !2668, line: 15, baseType: !1071, size: 128)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2682, file: !57, line: 166, baseType: !2724, size: 64, offset: 384)
!2724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2725, size: 64)
!2725 = !DISubroutineType(types: !2726)
!2726 = !{!2672}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2682, file: !57, line: 167, baseType: !2672, size: 64, offset: 448)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2664, file: !57, line: 123, baseType: !308, size: 8, offset: 448)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2664, file: !57, line: 124, baseType: !308, size: 8, offset: 456)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2664, file: !57, line: 125, baseType: !308, size: 8, offset: 464)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2664, file: !57, line: 126, baseType: !308, size: 8, offset: 472)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2648, file: !2554, line: 671, baseType: !2664, size: 512, offset: 1216)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2648, file: !2554, line: 679, baseType: !2734, size: 64, offset: 1728)
!2734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2648, size: 64)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2553, file: !2554, line: 800, baseType: !2736, size: 64, offset: 5248)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2738)
!2738 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2554, line: 800, flags: DIFlagFwdDecl)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2553, file: !2554, line: 809, baseType: !2740, size: 64, offset: 5312)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2554, line: 70, flags: DIFlagFwdDecl)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2553, file: !2554, line: 825, baseType: !2743, size: 2048, align: 512, offset: 5632)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2554, line: 509, size: 2048, align: 512, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2743, file: !2554, line: 511, baseType: !247, size: 64)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2743, file: !2554, line: 512, baseType: !247, size: 64, offset: 64)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2743, file: !2554, line: 513, baseType: !247, size: 64, offset: 128)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2743, file: !2554, line: 514, baseType: !247, size: 64, offset: 192)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2743, file: !2554, line: 515, baseType: !247, size: 64, offset: 256)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2743, file: !2554, line: 516, baseType: !247, size: 64, offset: 320)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2743, file: !2554, line: 518, baseType: !247, size: 64, offset: 384)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2743, file: !2554, line: 519, baseType: !247, size: 64, offset: 448)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2743, file: !2554, line: 520, baseType: !328, size: 64, offset: 512)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2743, file: !2554, line: 522, baseType: !247, size: 64, offset: 576)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2743, file: !2554, line: 523, baseType: !247, size: 64, offset: 640)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2743, file: !2554, line: 524, baseType: !328, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2743, file: !2554, line: 526, baseType: !328, size: 64, offset: 768)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2743, file: !2554, line: 527, baseType: !247, size: 64, offset: 832)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2743, file: !2554, line: 529, baseType: !247, size: 64, offset: 896)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2743, file: !2554, line: 530, baseType: !247, size: 64, offset: 960)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2743, file: !2554, line: 531, baseType: !247, size: 64, offset: 1024)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2743, file: !2554, line: 532, baseType: !247, size: 64, offset: 1088)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2743, file: !2554, line: 533, baseType: !247, size: 64, offset: 1152)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2743, file: !2554, line: 535, baseType: !247, size: 64, offset: 1216)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2743, file: !2554, line: 536, baseType: !247, size: 64, offset: 1280)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2743, file: !2554, line: 537, baseType: !247, size: 64, offset: 1344)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2743, file: !2554, line: 538, baseType: !247, size: 64, offset: 1408)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2743, file: !2554, line: 539, baseType: !247, size: 64, offset: 1472)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2743, file: !2554, line: 540, baseType: !247, size: 64, offset: 1536)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2743, file: !2554, line: 541, baseType: !247, size: 64, offset: 1600)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2743, file: !2554, line: 542, baseType: !247, size: 64, offset: 1664)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2743, file: !2554, line: 543, baseType: !247, size: 64, offset: 1728)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2553, file: !2554, line: 833, baseType: !7, size: 32, offset: 7680)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2553, file: !2554, line: 836, baseType: !7, size: 32, offset: 7712)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2553, file: !2554, line: 837, baseType: !183, size: 32, offset: 7744)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2553, file: !2554, line: 838, baseType: !2777, size: 64, offset: 7808)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !2780, line: 19, baseType: !2781)
!2780 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2780, line: 19, size: 64, elements: !2782)
!2782 = !{!2783}
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2781, file: !2780, line: 19, baseType: !2784, size: 64)
!2784 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !2785)
!2785 = !{!2786}
!2786 = !DISubrange(count: 1)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2553, file: !2554, line: 839, baseType: !2788, size: 64, offset: 7872)
!2788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2553, file: !2554, line: 840, baseType: !2779, size: 64, offset: 7936)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2553, file: !2554, line: 841, baseType: !112, size: 64, offset: 8000)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2553, file: !2554, line: 843, baseType: !253, size: 16, offset: 8064)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2553, file: !2554, line: 845, baseType: !253, size: 16, offset: 8080)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2553, file: !2554, line: 848, baseType: !183, size: 32, offset: 8096)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2553, file: !2554, line: 849, baseType: !2795, size: 32, offset: 8128)
!2795 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2554, line: 718, size: 32, elements: !2796)
!2796 = !{!2797, !2804}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2795, file: !2554, line: 724, baseType: !2798, size: 32)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2795, file: !2554, line: 719, size: 32, elements: !2799)
!2799 = !{!2800, !2801, !2802, !2803}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2798, file: !2554, line: 720, baseType: !308, size: 8)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2798, file: !2554, line: 721, baseType: !308, size: 8, offset: 8)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2798, file: !2554, line: 722, baseType: !308, size: 8, offset: 16)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2798, file: !2554, line: 723, baseType: !308, size: 8, offset: 24)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2795, file: !2554, line: 725, baseType: !506, size: 32)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2553, file: !2554, line: 850, baseType: !343, size: 128, offset: 8192)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2553, file: !2554, line: 851, baseType: !2807, size: 64, offset: 8320)
!2807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2808, size: 64)
!2808 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2554, line: 60, flags: DIFlagFwdDecl)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2553, file: !2554, line: 855, baseType: !113, size: 64, offset: 8384)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2553, file: !2554, line: 856, baseType: !308, size: 8, offset: 8448)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2553, file: !2554, line: 857, baseType: !308, size: 8, offset: 8456)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2553, file: !2554, line: 858, baseType: !183, size: 32, offset: 8480)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2553, file: !2554, line: 859, baseType: !343, size: 128, offset: 8512)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2553, file: !2554, line: 860, baseType: !183, size: 32, offset: 8640)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2553, file: !2554, line: 861, baseType: !343, size: 128, offset: 8704)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2553, file: !2554, line: 873, baseType: !2817, size: 256, offset: 8832)
!2817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2554, line: 376, size: 256, elements: !2818)
!2818 = !{!2819, !2820, !2821, !2822}
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2817, file: !2554, line: 381, baseType: !113, size: 64)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2817, file: !2554, line: 384, baseType: !251, size: 64, offset: 64)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2817, file: !2554, line: 389, baseType: !251, size: 64, offset: 128)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2817, file: !2554, line: 392, baseType: !251, size: 64, offset: 192)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2553, file: !2554, line: 875, baseType: !343, size: 128, offset: 9088)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2553, file: !2554, line: 877, baseType: !2825, size: 320, offset: 9216)
!2825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2826, line: 86, size: 320, elements: !2827)
!2826 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2827 = !{!2828, !2829, !2830}
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2825, file: !2826, line: 87, baseType: !183, size: 32)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2825, file: !2826, line: 88, baseType: !343, size: 128, offset: 64)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2825, file: !2826, line: 89, baseType: !343, size: 128, offset: 192)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2553, file: !2554, line: 878, baseType: !202, size: 192, align: 64, offset: 9536)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2553, file: !2554, line: 881, baseType: !1219, size: 64, offset: 9728)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2553, file: !2554, line: 882, baseType: !1219, size: 64, offset: 9792)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2553, file: !2554, line: 884, baseType: !183, size: 32, offset: 9856)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2553, file: !2554, line: 885, baseType: !183, size: 32, offset: 9888)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2553, file: !2554, line: 886, baseType: !183, size: 32, offset: 9920)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2553, file: !2554, line: 888, baseType: !183, size: 32, offset: 9952)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2553, file: !2554, line: 890, baseType: !113, size: 64, offset: 9984)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2553, file: !2554, line: 893, baseType: !7, size: 32, offset: 10048)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2553, file: !2554, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2553, file: !2554, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2553, file: !2554, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2553, file: !2554, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2553, file: !2554, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2553, file: !2554, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2553, file: !2554, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2553, file: !2554, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2553, file: !2554, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2553, file: !2554, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2553, file: !2554, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2553, file: !2554, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2553, file: !2554, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2553, file: !2554, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2553, file: !2554, line: 969, baseType: !113, size: 64, offset: 10176)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2553, file: !2554, line: 971, baseType: !2856, size: 448, offset: 10240)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !62, line: 25, size: 448, elements: !2857)
!2857 = !{!2858, !2859, !2864}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2856, file: !62, line: 26, baseType: !113, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2856, file: !62, line: 27, baseType: !2860, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!119, !2863}
!2863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!2864 = !DIDerivedType(tag: DW_TAG_member, scope: !2856, file: !62, line: 28, baseType: !2865, size: 320, offset: 128)
!2865 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2856, file: !62, line: 28, size: 320, elements: !2866)
!2866 = !{!2867, !2877, !2902}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2865, file: !62, line: 37, baseType: !2868, size: 320)
!2868 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2865, file: !62, line: 30, size: 320, elements: !2869)
!2869 = !{!2870, !2872, !2873, !2874, !2875, !2876}
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2868, file: !62, line: 31, baseType: !2871, size: 64)
!2871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2868, file: !62, line: 32, baseType: !506, size: 32, offset: 64)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2868, file: !62, line: 33, baseType: !506, size: 32, offset: 96)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2868, file: !62, line: 34, baseType: !506, size: 32, offset: 128)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2868, file: !62, line: 35, baseType: !247, size: 64, offset: 192)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2868, file: !62, line: 36, baseType: !2871, size: 64, offset: 256)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2865, file: !62, line: 47, baseType: !2878, size: 192)
!2878 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2865, file: !62, line: 39, size: 192, elements: !2879)
!2879 = !{!2880, !2881, !2882, !2901}
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2878, file: !62, line: 40, baseType: !2711, size: 32)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2878, file: !62, line: 41, baseType: !61, size: 32, offset: 32)
!2882 = !DIDerivedType(tag: DW_TAG_member, scope: !2878, file: !62, line: 42, baseType: !2883, size: 64, offset: 64)
!2883 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2878, file: !62, line: 42, size: 64, elements: !2884)
!2884 = !{!2885, !2893}
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2883, file: !62, line: 43, baseType: !2886, size: 64)
!2886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2887, size: 64)
!2887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2888, line: 7, size: 128, elements: !2889)
!2888 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2889 = !{!2890, !2892}
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2887, file: !2888, line: 8, baseType: !2891, size: 64)
!2891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !117, line: 93, baseType: !243)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2887, file: !2888, line: 9, baseType: !243, size: 64, offset: 64)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2883, file: !62, line: 44, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2896, line: 7, size: 64, elements: !2897)
!2896 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2897 = !{!2898, !2900}
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2895, file: !2896, line: 8, baseType: !2899, size: 32)
!2899 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2896, line: 5, baseType: !473)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2895, file: !2896, line: 9, baseType: !473, size: 32, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2878, file: !62, line: 46, baseType: !247, size: 64, offset: 128)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2865, file: !62, line: 55, baseType: !2903, size: 256)
!2903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2865, file: !62, line: 49, size: 256, elements: !2904)
!2904 = !{!2905, !2908, !2909, !2910, !2911}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2903, file: !62, line: 50, baseType: !2906, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2907, size: 64)
!2907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !62, line: 14, flags: DIFlagFwdDecl)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2903, file: !62, line: 51, baseType: !183, size: 32, offset: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2903, file: !62, line: 52, baseType: !183, size: 32, offset: 96)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2903, file: !62, line: 53, baseType: !113, size: 64, offset: 128)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2903, file: !62, line: 54, baseType: !113, size: 64, offset: 192)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2553, file: !2554, line: 973, baseType: !2913, size: 32, offset: 10688)
!2913 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !115, line: 27, baseType: !2914)
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !117, line: 28, baseType: !183)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2553, file: !2554, line: 974, baseType: !2913, size: 32, offset: 10720)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2553, file: !2554, line: 978, baseType: !113, size: 64, offset: 10752)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2553, file: !2554, line: 987, baseType: !2552, size: 64, offset: 10816)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2553, file: !2554, line: 990, baseType: !2552, size: 64, offset: 10880)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2553, file: !2554, line: 995, baseType: !343, size: 128, offset: 10944)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2553, file: !2554, line: 996, baseType: !343, size: 128, offset: 11072)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2553, file: !2554, line: 997, baseType: !2552, size: 64, offset: 11200)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2553, file: !2554, line: 1005, baseType: !343, size: 128, offset: 11264)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2553, file: !2554, line: 1006, baseType: !343, size: 128, offset: 11392)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2553, file: !2554, line: 1009, baseType: !377, size: 64, offset: 11520)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2553, file: !2554, line: 1010, baseType: !2926, size: 512, offset: 11584)
!2926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !394, size: 512, elements: !399)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2553, file: !2554, line: 1011, baseType: !343, size: 128, offset: 12096)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2553, file: !2554, line: 1012, baseType: !343, size: 128, offset: 12224)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2553, file: !2554, line: 1014, baseType: !1800, size: 64, offset: 12352)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2553, file: !2554, line: 1017, baseType: !1937, size: 64, offset: 12416)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2553, file: !2554, line: 1020, baseType: !1937, size: 64, offset: 12480)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2553, file: !2554, line: 1023, baseType: !112, size: 64, offset: 12544)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2553, file: !2554, line: 1025, baseType: !247, size: 64, offset: 12608)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2553, file: !2554, line: 1026, baseType: !247, size: 64, offset: 12672)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2553, file: !2554, line: 1031, baseType: !247, size: 64, offset: 12736)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2553, file: !2554, line: 1032, baseType: !2937, size: 192, offset: 12800)
!2937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2554, line: 324, size: 192, elements: !2938)
!2938 = !{!2939, !2940, !2941}
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2937, file: !2554, line: 326, baseType: !247, size: 64)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2937, file: !2554, line: 327, baseType: !247, size: 64, offset: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2937, file: !2554, line: 328, baseType: !336, size: 32, offset: 128)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2553, file: !2554, line: 1041, baseType: !113, size: 64, offset: 12992)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2553, file: !2554, line: 1042, baseType: !113, size: 64, offset: 13056)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2553, file: !2554, line: 1045, baseType: !247, size: 64, offset: 13120)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2553, file: !2554, line: 1048, baseType: !247, size: 64, offset: 13184)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2553, file: !2554, line: 1051, baseType: !113, size: 64, offset: 13248)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2553, file: !2554, line: 1052, baseType: !113, size: 64, offset: 13312)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2553, file: !2554, line: 1055, baseType: !2949, size: 640, offset: 13376)
!2949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2950, line: 132, size: 640, elements: !2951)
!2950 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2951 = !{!2952, !2958, !2959}
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2949, file: !2950, line: 133, baseType: !2953, size: 576)
!2953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2954, size: 576, elements: !373)
!2954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2950, line: 117, size: 192, elements: !2955)
!2955 = !{!2956, !2957}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2954, file: !2950, line: 118, baseType: !247, size: 64)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2954, file: !2950, line: 119, baseType: !2720, size: 128, offset: 64)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2949, file: !2950, line: 134, baseType: !7, size: 32, offset: 576)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2949, file: !2950, line: 135, baseType: !7, size: 32, offset: 608)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2553, file: !2554, line: 1058, baseType: !2961, size: 448, offset: 14016)
!2961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2950, line: 144, size: 448, elements: !2962)
!2962 = !{!2963, !2964, !2965}
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2961, file: !2950, line: 145, baseType: !260, size: 128, align: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2961, file: !2950, line: 146, baseType: !331, size: 256, offset: 128)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2961, file: !2950, line: 147, baseType: !7, size: 32, offset: 384)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2553, file: !2554, line: 1064, baseType: !432, size: 64, offset: 14464)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2553, file: !2554, line: 1067, baseType: !432, size: 64, offset: 14528)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2553, file: !2554, line: 1070, baseType: !432, size: 64, offset: 14592)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2553, file: !2554, line: 1074, baseType: !465, size: 64, offset: 14656)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2553, file: !2554, line: 1084, baseType: !129, size: 128, offset: 14720)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2553, file: !2554, line: 1086, baseType: !2972, size: 64, offset: 14848)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2554, line: 55, flags: DIFlagFwdDecl)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2553, file: !2554, line: 1089, baseType: !2975, size: 64, offset: 14912)
!2975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2976, line: 12, size: 64, elements: !2977)
!2976 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2977 = !{!2978}
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2975, file: !2976, line: 13, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2980, size: 64)
!2980 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2976, line: 8, flags: DIFlagFwdDecl)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2553, file: !2554, line: 1090, baseType: !2982, size: 128, offset: 14976)
!2982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2983, line: 13, size: 128, elements: !2984)
!2983 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2984 = !{!2985}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2982, file: !2983, line: 14, baseType: !343, size: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2553, file: !2554, line: 1097, baseType: !2987, size: 64, offset: 15104)
!2987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2988, size: 64)
!2988 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2554, line: 50, flags: DIFlagFwdDecl)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2553, file: !2554, line: 1100, baseType: !2990, size: 64, offset: 15168)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2554, line: 1100, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2553, file: !2554, line: 1103, baseType: !2993, size: 64, offset: 15232)
!2993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2994, size: 64)
!2994 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2554, line: 53, flags: DIFlagFwdDecl)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2553, file: !2554, line: 1107, baseType: !2996, size: 64, offset: 15296)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2997, size: 64)
!2997 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2998, line: 35, flags: DIFlagFwdDecl)
!2998 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2553, file: !2554, line: 1110, baseType: !3000, size: 64, offset: 15360)
!3000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3001, size: 64)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3002, line: 93, size: 8768, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3003 = !{!3004, !3005, !3006, !3007, !3008, !3009, !3010, !3011, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3039, !3040, !3041, !3042, !3043, !3044, !3045, !3051, !3060, !3061, !3063, !3064, !3065, !3068, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3106, !3107, !3114, !3124, !3127, !3128, !3131, !3132, !3133, !3134, !3135, !3136}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3001, file: !3002, line: 94, baseType: !381, size: 32)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3001, file: !3002, line: 95, baseType: !192, size: 32, offset: 32)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3001, file: !3002, line: 96, baseType: !183, size: 32, offset: 64)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3001, file: !3002, line: 97, baseType: !183, size: 32, offset: 96)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3001, file: !3002, line: 98, baseType: !343, size: 128, offset: 128)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3001, file: !3002, line: 100, baseType: !403, size: 192, offset: 256)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3001, file: !3002, line: 103, baseType: !2552, size: 64, offset: 448)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3001, file: !3002, line: 106, baseType: !3012, size: 192, offset: 512)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !631, line: 32, size: 192, elements: !3013)
!3013 = !{!3014, !3015}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3012, file: !631, line: 33, baseType: !343, size: 128)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3012, file: !631, line: 34, baseType: !3016, size: 64, offset: 128)
!3016 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3017, line: 25, baseType: !3018)
!3017 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3017, line: 23, size: 64, elements: !3019)
!3019 = !{!3020}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3018, file: !3017, line: 24, baseType: !2784, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3001, file: !3002, line: 109, baseType: !390, size: 64, offset: 704)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3001, file: !3002, line: 112, baseType: !183, size: 32, offset: 768)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3001, file: !3002, line: 114, baseType: !183, size: 32, offset: 800)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3001, file: !3002, line: 115, baseType: !2552, size: 64, offset: 832)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3001, file: !3002, line: 118, baseType: !183, size: 32, offset: 896)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3001, file: !3002, line: 119, baseType: !7, size: 32, offset: 928)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3001, file: !3002, line: 121, baseType: !3028, size: 64, offset: 960)
!3028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3029, size: 64)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3002, line: 80, size: 448, elements: !3030)
!3030 = !{!3031, !3032, !3038}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3029, file: !3002, line: 81, baseType: !192, size: 32)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3029, file: !3002, line: 82, baseType: !3033, size: 128, offset: 64)
!3033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3002, line: 75, size: 128, elements: !3034)
!3034 = !{!3035, !3036}
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3033, file: !3002, line: 76, baseType: !2552, size: 64)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3033, file: !3002, line: 77, baseType: !3037, size: 64, offset: 64)
!3037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3029, file: !3002, line: 83, baseType: !1171, size: 256, offset: 192)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3001, file: !3002, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3001, file: !3002, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3001, file: !3002, line: 138, baseType: !7, size: 32, offset: 1056)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3001, file: !3002, line: 139, baseType: !343, size: 128, offset: 1088)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3001, file: !3002, line: 142, baseType: !2664, size: 512, offset: 1216)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3001, file: !3002, line: 143, baseType: !2672, size: 64, offset: 1728)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3001, file: !3002, line: 150, baseType: !3046, size: 256, offset: 1792)
!3046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3047, size: 256, elements: !1927)
!3047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3002, line: 38, size: 128, elements: !3048)
!3048 = !{!3049, !3050}
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3047, file: !3002, line: 39, baseType: !247, size: 64)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3047, file: !3002, line: 40, baseType: !247, size: 64, offset: 64)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3001, file: !3002, line: 156, baseType: !3052, size: 192, offset: 2048)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3002, line: 66, size: 192, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3052, file: !3002, line: 67, baseType: !3055, size: 192)
!3055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3002, line: 47, size: 192, elements: !3056)
!3056 = !{!3057, !3058, !3059}
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3055, file: !3002, line: 48, baseType: !324, size: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3055, file: !3002, line: 49, baseType: !324, size: 64, offset: 64)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3055, file: !3002, line: 50, baseType: !324, size: 64, offset: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3001, file: !3002, line: 160, baseType: !2949, size: 640, offset: 2240)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3001, file: !3002, line: 163, baseType: !3062, size: 256, offset: 2880)
!3062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !377, size: 256, elements: !399)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3001, file: !3002, line: 169, baseType: !377, size: 64, offset: 3136)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3001, file: !3002, line: 172, baseType: !183, size: 32, offset: 3200)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3001, file: !3002, line: 174, baseType: !3066, size: 64, offset: 3264)
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3002, line: 174, flags: DIFlagFwdDecl)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3001, file: !3002, line: 185, baseType: !3069, size: 64, offset: 3328)
!3069 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !671, line: 860, baseType: !3070)
!3070 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !671, line: 853, size: 64, elements: !3071)
!3071 = !{!3072, !3073}
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3070, file: !671, line: 858, baseType: !670, size: 32)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3070, file: !671, line: 859, baseType: !284, size: 32, offset: 32)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3001, file: !3002, line: 186, baseType: !247, size: 64, offset: 3392)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3001, file: !3002, line: 186, baseType: !247, size: 64, offset: 3456)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3001, file: !3002, line: 186, baseType: !247, size: 64, offset: 3520)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3001, file: !3002, line: 186, baseType: !247, size: 64, offset: 3584)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3001, file: !3002, line: 187, baseType: !247, size: 64, offset: 3648)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3001, file: !3002, line: 188, baseType: !247, size: 64, offset: 3712)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3001, file: !3002, line: 189, baseType: !2937, size: 192, offset: 3776)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3001, file: !3002, line: 190, baseType: !113, size: 64, offset: 3968)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3001, file: !3002, line: 190, baseType: !113, size: 64, offset: 4032)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3001, file: !3002, line: 190, baseType: !113, size: 64, offset: 4096)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3001, file: !3002, line: 190, baseType: !113, size: 64, offset: 4160)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3001, file: !3002, line: 191, baseType: !113, size: 64, offset: 4224)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3001, file: !3002, line: 191, baseType: !113, size: 64, offset: 4288)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3001, file: !3002, line: 191, baseType: !113, size: 64, offset: 4352)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3001, file: !3002, line: 191, baseType: !113, size: 64, offset: 4416)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3001, file: !3002, line: 192, baseType: !113, size: 64, offset: 4480)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3001, file: !3002, line: 192, baseType: !113, size: 64, offset: 4544)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3001, file: !3002, line: 192, baseType: !113, size: 64, offset: 4608)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3001, file: !3002, line: 192, baseType: !113, size: 64, offset: 4672)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3001, file: !3002, line: 193, baseType: !113, size: 64, offset: 4736)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3001, file: !3002, line: 193, baseType: !113, size: 64, offset: 4800)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3001, file: !3002, line: 194, baseType: !3096, size: 448, offset: 4864)
!3096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3097, line: 12, size: 448, elements: !3098)
!3097 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3098 = !{!3099, !3100, !3101, !3102, !3103, !3104, !3105}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3096, file: !3097, line: 15, baseType: !247, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3096, file: !3097, line: 17, baseType: !247, size: 64, offset: 64)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3096, file: !3097, line: 19, baseType: !247, size: 64, offset: 128)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3096, file: !3097, line: 21, baseType: !247, size: 64, offset: 192)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3096, file: !3097, line: 29, baseType: !247, size: 64, offset: 256)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3096, file: !3097, line: 35, baseType: !247, size: 64, offset: 320)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3096, file: !3097, line: 44, baseType: !247, size: 64, offset: 384)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3001, file: !3002, line: 202, baseType: !251, size: 64, offset: 5312)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3001, file: !3002, line: 213, baseType: !3108, size: 2048, offset: 5376)
!3108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3109, size: 2048, elements: !130)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3110, line: 43, size: 128, elements: !3111)
!3110 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3111 = !{!3112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3109, file: !3110, line: 44, baseType: !858, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3109, file: !3110, line: 45, baseType: !858, size: 64, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3001, file: !3002, line: 216, baseType: !3115, size: 448, offset: 7424)
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3002, line: 30, size: 448, elements: !3116)
!3116 = !{!3117, !3118, !3119, !3120, !3121, !3122, !3123}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3115, file: !3002, line: 31, baseType: !183, size: 32)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3115, file: !3002, line: 32, baseType: !119, size: 64, offset: 64)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3115, file: !3002, line: 33, baseType: !113, size: 64, offset: 128)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3115, file: !3002, line: 34, baseType: !247, size: 64, offset: 192)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3115, file: !3002, line: 34, baseType: !247, size: 64, offset: 256)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3115, file: !3002, line: 35, baseType: !113, size: 64, offset: 320)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3115, file: !3002, line: 35, baseType: !113, size: 64, offset: 384)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3001, file: !3002, line: 219, baseType: !3125, size: 64, offset: 7872)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3002, line: 219, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3001, file: !3002, line: 222, baseType: !7, size: 32, offset: 7936)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3001, file: !3002, line: 223, baseType: !3129, size: 64, offset: 8000)
!3129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3130, size: 64)
!3130 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3002, line: 223, flags: DIFlagFwdDecl)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3001, file: !3002, line: 230, baseType: !542, size: 8, offset: 8064)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3001, file: !3002, line: 231, baseType: !511, size: 16, offset: 8080)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3001, file: !3002, line: 232, baseType: !511, size: 16, offset: 8096)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3001, file: !3002, line: 234, baseType: !1219, size: 64, offset: 8128)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3001, file: !3002, line: 237, baseType: !331, size: 256, offset: 8192)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3001, file: !3002, line: 243, baseType: !481, size: 320, offset: 8448)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2553, file: !2554, line: 1111, baseType: !3138, size: 64, offset: 15424)
!3138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3139, size: 64)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3002, line: 20, size: 16640, elements: !3140)
!3140 = !{!3141, !3142, !3143, !3144}
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3139, file: !3002, line: 21, baseType: !284, size: 32)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3139, file: !3002, line: 22, baseType: !381, size: 32, offset: 32)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3139, file: !3002, line: 23, baseType: !403, size: 192, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3139, file: !3002, line: 24, baseType: !3145, size: 16384, offset: 256)
!3145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3146, size: 16384, elements: !1001)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !631, line: 51, size: 256, elements: !3147)
!3147 = !{!3148}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3146, file: !631, line: 52, baseType: !3149, size: 256)
!3149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !631, line: 37, size: 256, elements: !3150)
!3150 = !{!3151, !3158, !3159, !3163}
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3149, file: !631, line: 39, baseType: !3152, size: 64)
!3152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3153, line: 83, baseType: !3154)
!3153 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3153, line: 82, baseType: !3156)
!3156 = !DISubroutineType(types: !3157)
!3157 = !{null, !183}
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3149, file: !631, line: 40, baseType: !113, size: 64, offset: 64)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3149, file: !631, line: 46, baseType: !3160, size: 64, offset: 128)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3153, line: 86, baseType: !3161)
!3161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3162, size: 64)
!3162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3153, line: 85, baseType: !2142)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3149, file: !631, line: 48, baseType: !3016, size: 64, offset: 192)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2553, file: !2554, line: 1112, baseType: !3016, size: 64, offset: 15488)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2553, file: !2554, line: 1113, baseType: !3016, size: 64, offset: 15552)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2553, file: !2554, line: 1115, baseType: !3016, size: 64, offset: 15616)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2553, file: !2554, line: 1116, baseType: !3012, size: 192, offset: 15680)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2553, file: !2554, line: 1117, baseType: !113, size: 64, offset: 15872)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2553, file: !2554, line: 1118, baseType: !856, size: 64, offset: 15936)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2553, file: !2554, line: 1119, baseType: !7, size: 32, offset: 16000)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2553, file: !2554, line: 1121, baseType: !263, size: 64, offset: 16064)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2553, file: !2554, line: 1125, baseType: !3173, size: 64, offset: 16128)
!3173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3174, size: 64)
!3174 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2554, line: 43, flags: DIFlagFwdDecl)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2553, file: !2554, line: 1127, baseType: !422, size: 32, offset: 16192)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2553, file: !2554, line: 1128, baseType: !7, size: 32, offset: 16224)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2553, file: !2554, line: 1130, baseType: !3178, size: 128, offset: 16256)
!3178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3179, line: 37, size: 128, elements: !3180)
!3179 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3180 = !{!3181, !3182, !3183}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3178, file: !3179, line: 38, baseType: !183, size: 32)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3178, file: !3179, line: 39, baseType: !192, size: 32, offset: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3178, file: !3179, line: 40, baseType: !3184, size: 64, offset: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3179, line: 24, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2553, file: !2554, line: 1131, baseType: !3187, size: 256, offset: 16384)
!3187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3188, line: 12, size: 256, elements: !3189)
!3188 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3189 = !{!3190, !3191, !3192, !3193}
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3187, file: !3188, line: 13, baseType: !553, size: 64)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3187, file: !3188, line: 14, baseType: !113, size: 64, offset: 64)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3187, file: !3188, line: 15, baseType: !113, size: 64, offset: 128)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3187, file: !3188, line: 16, baseType: !542, size: 8, offset: 192)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2553, file: !2554, line: 1134, baseType: !247, size: 64, offset: 16640)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2553, file: !2554, line: 1135, baseType: !247, size: 64, offset: 16704)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2553, file: !2554, line: 1138, baseType: !284, size: 32, offset: 16768)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2553, file: !2554, line: 1141, baseType: !336, size: 32, offset: 16800)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2553, file: !2554, line: 1143, baseType: !3199, size: 64, offset: 16832)
!3199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2554, line: 735, size: 64, elements: !3200)
!3200 = !{!3201}
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3199, file: !2554, line: 736, baseType: !3202, size: 64)
!3202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3199, size: 64)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2553, file: !2554, line: 1147, baseType: !1071, size: 128, offset: 16896)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2553, file: !2554, line: 1149, baseType: !2552, size: 64, offset: 17024)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2553, file: !2554, line: 1151, baseType: !3206, size: 64, offset: 17088)
!3206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3207, size: 64)
!3207 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2554, line: 1151, flags: DIFlagFwdDecl)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2553, file: !2554, line: 1188, baseType: !112, size: 64, offset: 17152)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2553, file: !2554, line: 1191, baseType: !3210, size: 64, offset: 17216)
!3210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3211, size: 64)
!3211 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2554, line: 44, flags: DIFlagFwdDecl)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2553, file: !2554, line: 1194, baseType: !3213, size: 64, offset: 17280)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2554, line: 45, flags: DIFlagFwdDecl)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2553, file: !2554, line: 1197, baseType: !3216, size: 64, offset: 17344)
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2554, line: 61, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2553, file: !2554, line: 1199, baseType: !3219, size: 64, offset: 17408)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3221, line: 99, size: 128, elements: !3222)
!3221 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3222 = !{!3223, !3224, !3225}
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3220, file: !3221, line: 100, baseType: !322, size: 64)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3220, file: !3221, line: 101, baseType: !192, size: 32, offset: 64)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3220, file: !3221, line: 103, baseType: !253, size: 16, offset: 96)
!3226 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2553, file: !2554, line: 1202, baseType: !3227, size: 64, offset: 17472)
!3227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3228, size: 64)
!3228 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2554, line: 48, flags: DIFlagFwdDecl)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2553, file: !2554, line: 1205, baseType: !113, size: 64, offset: 17536)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2553, file: !2554, line: 1206, baseType: !3231, size: 64, offset: 17600)
!3231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3232, size: 64)
!3232 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !631, line: 14, baseType: !3233)
!3233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !631, line: 12, size: 384, elements: !3234)
!3234 = !{!3235}
!3235 = !DIDerivedType(tag: DW_TAG_member, scope: !3233, file: !631, line: 13, baseType: !3236, size: 384)
!3236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3233, file: !631, line: 13, size: 384, elements: !3237)
!3237 = !{!3238, !3239, !3240, !3241}
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3236, file: !631, line: 13, baseType: !183, size: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3236, file: !631, line: 13, baseType: !183, size: 32, offset: 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3236, file: !631, line: 13, baseType: !183, size: 32, offset: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3236, file: !631, line: 13, baseType: !3242, size: 256, offset: 128)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3243, line: 37, size: 256, elements: !3244)
!3243 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3244 = !{!3245, !3250, !3263, !3269, !3278, !3305, !3310}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3242, file: !3243, line: 42, baseType: !3246, size: 64)
!3246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 39, size: 64, elements: !3247)
!3247 = !{!3248, !3249}
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3246, file: !3243, line: 40, baseType: !2914, size: 32)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3246, file: !3243, line: 41, baseType: !428, size: 32, offset: 32)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3242, file: !3243, line: 50, baseType: !3251, size: 192)
!3251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 45, size: 192, elements: !3252)
!3252 = !{!3253, !3255, !3256, !3262}
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3251, file: !3243, line: 46, baseType: !3254, size: 32)
!3254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !117, line: 95, baseType: !183)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3251, file: !3243, line: 47, baseType: !183, size: 32, offset: 32)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3251, file: !3243, line: 48, baseType: !3257, size: 64, offset: 64)
!3257 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3243, line: 11, baseType: !3258)
!3258 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3243, line: 8, size: 64, elements: !3259)
!3259 = !{!3260, !3261}
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3258, file: !3243, line: 9, baseType: !183, size: 32)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3258, file: !3243, line: 10, baseType: !112, size: 64)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3251, file: !3243, line: 49, baseType: !183, size: 32, offset: 128)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3242, file: !3243, line: 57, baseType: !3264, size: 128)
!3264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 53, size: 128, elements: !3265)
!3265 = !{!3266, !3267, !3268}
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3264, file: !3243, line: 54, baseType: !2914, size: 32)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3264, file: !3243, line: 55, baseType: !428, size: 32, offset: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3264, file: !3243, line: 56, baseType: !3257, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3242, file: !3243, line: 66, baseType: !3270, size: 256)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 60, size: 256, elements: !3271)
!3271 = !{!3272, !3273, !3274, !3275, !3277}
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3270, file: !3243, line: 61, baseType: !2914, size: 32)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3270, file: !3243, line: 62, baseType: !428, size: 32, offset: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3270, file: !3243, line: 63, baseType: !183, size: 32, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3270, file: !3243, line: 64, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !117, line: 94, baseType: !118)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3270, file: !3243, line: 65, baseType: !3276, size: 64, offset: 192)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3242, file: !3243, line: 105, baseType: !3279, size: 256)
!3279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 69, size: 256, elements: !3280)
!3280 = !{!3281, !3282}
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3279, file: !3243, line: 70, baseType: !112, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, scope: !3279, file: !3243, line: 79, baseType: !3283, size: 192, offset: 64)
!3283 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3279, file: !3243, line: 79, size: 192, elements: !3284)
!3284 = !{!3285, !3286, !3287, !3294, !3299}
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3283, file: !3243, line: 81, baseType: !183, size: 32)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3283, file: !3243, line: 86, baseType: !511, size: 16)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3283, file: !3243, line: 92, baseType: !3288, size: 192)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !3243, line: 88, size: 192, elements: !3289)
!3289 = !{!3290, !3292, !3293}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3288, file: !3243, line: 89, baseType: !3291, size: 64)
!3291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 64, elements: !2707)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3288, file: !3243, line: 90, baseType: !112, size: 64, offset: 64)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3288, file: !3243, line: 91, baseType: !112, size: 64, offset: 128)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3283, file: !3243, line: 97, baseType: !3295, size: 96)
!3295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !3243, line: 94, size: 96, elements: !3296)
!3296 = !{!3297, !3298}
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3295, file: !3243, line: 95, baseType: !3291, size: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3295, file: !3243, line: 96, baseType: !507, size: 32, offset: 64)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3283, file: !3243, line: 103, baseType: !3300, size: 128)
!3300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3283, file: !3243, line: 99, size: 128, elements: !3301)
!3301 = !{!3302, !3303, !3304}
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3300, file: !3243, line: 100, baseType: !113, size: 64)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3300, file: !3243, line: 101, baseType: !507, size: 32, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3300, file: !3243, line: 102, baseType: !507, size: 32, offset: 96)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3242, file: !3243, line: 111, baseType: !3306, size: 128)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 108, size: 128, elements: !3307)
!3307 = !{!3308, !3309}
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3306, file: !3243, line: 109, baseType: !119, size: 64)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3306, file: !3243, line: 110, baseType: !183, size: 32, offset: 64)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3242, file: !3243, line: 118, baseType: !3311, size: 128)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3242, file: !3243, line: 114, size: 128, elements: !3312)
!3312 = !{!3313, !3314, !3315}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3311, file: !3243, line: 115, baseType: !112, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3311, file: !3243, line: 116, baseType: !183, size: 32, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3311, file: !3243, line: 117, baseType: !7, size: 32, offset: 96)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2553, file: !2554, line: 1208, baseType: !3096, size: 448, offset: 17664)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2553, file: !2554, line: 1215, baseType: !247, size: 64, offset: 18112)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2553, file: !2554, line: 1217, baseType: !247, size: 64, offset: 18176)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2553, file: !2554, line: 1219, baseType: !247, size: 64, offset: 18240)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2553, file: !2554, line: 1223, baseType: !3321, size: 64, offset: 18304)
!3321 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3322, line: 99, baseType: !3323)
!3322 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3323 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3322, line: 99, size: 64, elements: !3324)
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3323, file: !3322, line: 99, baseType: !2784, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2553, file: !2554, line: 1225, baseType: !670, size: 32, offset: 18368)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2553, file: !2554, line: 1226, baseType: !183, size: 32, offset: 18400)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2553, file: !2554, line: 1227, baseType: !183, size: 32, offset: 18432)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2553, file: !2554, line: 1231, baseType: !3330, size: 64, offset: 18496)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2554, line: 1231, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2553, file: !2554, line: 1233, baseType: !343, size: 128, offset: 18560)
!3333 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2553, file: !2554, line: 1240, baseType: !3334, size: 64, offset: 18688)
!3334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3335, size: 64)
!3335 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2554, line: 62, flags: DIFlagFwdDecl)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2553, file: !2554, line: 1242, baseType: !3337, size: 64, offset: 18752)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2554, line: 1242, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2553, file: !2554, line: 1244, baseType: !343, size: 128, offset: 18816)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2553, file: !2554, line: 1245, baseType: !3341, size: 64, offset: 18944)
!3341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3342, size: 64)
!3342 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2554, line: 51, flags: DIFlagFwdDecl)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2553, file: !2554, line: 1246, baseType: !331, size: 256, offset: 19008)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2553, file: !2554, line: 1247, baseType: !7, size: 32, offset: 19264)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2553, file: !2554, line: 1250, baseType: !3346, size: 64, offset: 19328)
!3346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3347, size: 64)
!3347 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2554, line: 57, flags: DIFlagFwdDecl)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2553, file: !2554, line: 1251, baseType: !331, size: 256, offset: 19392)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2553, file: !2554, line: 1252, baseType: !343, size: 128, offset: 19648)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2553, file: !2554, line: 1259, baseType: !1463, size: 64, offset: 19776)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2553, file: !2554, line: 1260, baseType: !511, size: 16, offset: 19840)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2553, file: !2554, line: 1261, baseType: !511, size: 16, offset: 19856)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2553, file: !2554, line: 1314, baseType: !3354, size: 64, offset: 19904)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3356, line: 62, size: 256, align: 256, elements: !3357)
!3356 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3355, file: !3356, line: 75, baseType: !507, size: 32)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3355, file: !3356, line: 90, baseType: !507, size: 32, offset: 32)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3355, file: !3356, line: 112, baseType: !249, size: 64, offset: 64)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3355, file: !3356, line: 132, baseType: !507, size: 32, offset: 128)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3355, file: !3356, line: 140, baseType: !507, size: 32, offset: 160)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3355, file: !3356, line: 149, baseType: !507, size: 32, offset: 192)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3355, file: !3356, line: 154, baseType: !3365, offset: 224)
!3365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, elements: !418)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2553, file: !2554, line: 1315, baseType: !506, size: 32, offset: 19968)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2553, file: !2554, line: 1316, baseType: !506, size: 32, offset: 20000)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2553, file: !2554, line: 1321, baseType: !113, size: 64, offset: 20032)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2553, file: !2554, line: 1325, baseType: !183, size: 32, offset: 20096)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2553, file: !2554, line: 1326, baseType: !183, size: 32, offset: 20128)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2553, file: !2554, line: 1327, baseType: !183, size: 32, offset: 20160)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2553, file: !2554, line: 1328, baseType: !183, size: 32, offset: 20192)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2553, file: !2554, line: 1329, baseType: !260, size: 128, align: 64, offset: 20224)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2553, file: !2554, line: 1332, baseType: !3375, size: 128, offset: 20352)
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3376, line: 51, size: 128, elements: !3377)
!3376 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3377 = !{!3378, !3383, !3384}
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3375, file: !3376, line: 60, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3380, line: 7, size: 64, elements: !3381)
!3380 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3381 = !{!3382}
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3379, file: !3380, line: 12, baseType: !2781, size: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3375, file: !3376, line: 63, baseType: !542, size: 8, offset: 64)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3375, file: !3376, line: 70, baseType: !542, size: 8, offset: 72)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2553, file: !2554, line: 1335, baseType: !3386, size: 64, offset: 20480)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2554, line: 59, flags: DIFlagFwdDecl)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2553, file: !2554, line: 1337, baseType: !3389, size: 128, offset: 20544)
!3389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3376, line: 39, size: 128, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3389, file: !3376, line: 40, baseType: !1086, size: 64)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3389, file: !3376, line: 42, baseType: !507, size: 32, offset: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3389, file: !3376, line: 43, baseType: !507, size: 32, offset: 96)
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2553, file: !2554, line: 1340, baseType: !3395, size: 64, offset: 20672)
!3395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3396, size: 64)
!3396 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2554, line: 69, flags: DIFlagFwdDecl)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2553, file: !2554, line: 1351, baseType: !183, size: 32, offset: 20736)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2553, file: !2554, line: 1352, baseType: !183, size: 32, offset: 20768)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2553, file: !2554, line: 1354, baseType: !113, size: 64, offset: 20800)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2553, file: !2554, line: 1364, baseType: !247, size: 64, offset: 20864)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2553, file: !2554, line: 1365, baseType: !247, size: 64, offset: 20928)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2553, file: !2554, line: 1412, baseType: !113, size: 64, offset: 20992)
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2553, file: !2554, line: 1453, baseType: !3404, size: 64, offset: 21056)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2554, line: 1453, flags: DIFlagFwdDecl)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2553, file: !2554, line: 1457, baseType: !3407, size: 64, offset: 21120)
!3407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3408, size: 64)
!3408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !68, line: 61, size: 576, elements: !3409)
!3409 = !{!3410, !3411, !3430, !3433, !3434, !3467, !3477}
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3408, file: !68, line: 62, baseType: !67, size: 32)
!3411 = !DIDerivedType(tag: DW_TAG_member, scope: !3408, file: !68, line: 64, baseType: !3412, size: 192, offset: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3408, file: !68, line: 64, size: 192, elements: !3413)
!3413 = !{!3414, !3425}
!3414 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !68, line: 65, baseType: !3415, size: 192)
!3415 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !68, line: 65, size: 192, elements: !3416)
!3416 = !{!3417, !3424}
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3415, file: !68, line: 66, baseType: !3418, size: 128)
!3418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3419, line: 50, size: 128, elements: !3420)
!3419 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3420 = !{!3421, !3422, !3423}
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3418, file: !3419, line: 52, baseType: !113, size: 64)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3418, file: !3419, line: 54, baseType: !7, size: 32, offset: 64)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3418, file: !3419, line: 55, baseType: !7, size: 32, offset: 96)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3415, file: !68, line: 67, baseType: !113, size: 64, offset: 128)
!3425 = !DIDerivedType(tag: DW_TAG_member, scope: !3412, file: !68, line: 70, baseType: !3426, size: 192)
!3426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3412, file: !68, line: 70, size: 192, elements: !3427)
!3427 = !{!3428, !3429}
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3426, file: !68, line: 71, baseType: !260, size: 128, align: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3426, file: !68, line: 72, baseType: !113, size: 64, offset: 128)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3408, file: !68, line: 76, baseType: !3431, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3432, size: 64)
!3432 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !68, line: 76, flags: DIFlagFwdDecl)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3408, file: !68, line: 77, baseType: !113, size: 64, offset: 320)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3408, file: !68, line: 79, baseType: !3435, size: 64, offset: 384)
!3435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3436, size: 64)
!3436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3419, line: 25, size: 256, elements: !3437)
!3437 = !{!3438, !3444, !3448}
!3438 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3419, line: 26, baseType: !3439, size: 128)
!3439 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3419, line: 26, size: 128, elements: !3440)
!3440 = !{!3441, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3439, file: !3419, line: 27, baseType: !3442, size: 128)
!3442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 128, elements: !130)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3439, file: !3419, line: 28, baseType: !3442, size: 128)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3436, file: !3419, line: 31, baseType: !3445, size: 64, offset: 128)
!3445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3446, size: 64)
!3446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3447)
!3447 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3419, line: 23, flags: DIFlagFwdDecl)
!3448 = !DIDerivedType(tag: DW_TAG_member, scope: !3436, file: !3419, line: 33, baseType: !3449, size: 64, offset: 192)
!3449 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3436, file: !3419, line: 33, size: 64, elements: !3450)
!3450 = !{!3451, !3457, !3462}
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3449, file: !3419, line: 38, baseType: !3452, size: 64)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 34, size: 64, elements: !3453)
!3453 = !{!3454, !3455, !3456}
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3452, file: !3419, line: 35, baseType: !473, size: 32)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3452, file: !3419, line: 36, baseType: !308, size: 8, offset: 32)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3452, file: !3419, line: 37, baseType: !308, size: 8, offset: 40)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3449, file: !3419, line: 42, baseType: !3458, size: 16)
!3458 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 39, size: 16, elements: !3459)
!3459 = !{!3460, !3461}
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3458, file: !3419, line: 40, baseType: !308, size: 8)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3458, file: !3419, line: 41, baseType: !308, size: 8, offset: 8)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3449, file: !3419, line: 46, baseType: !3463, size: 16)
!3463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3449, file: !3419, line: 43, size: 16, elements: !3464)
!3464 = !{!3465, !3466}
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3463, file: !3419, line: 44, baseType: !308, size: 8)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3463, file: !3419, line: 45, baseType: !308, size: 8, offset: 8)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3408, file: !68, line: 81, baseType: !3468, size: 64, offset: 448)
!3468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3469, size: 64)
!3469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !68, line: 85, size: 384, elements: !3470)
!3470 = !{!3471, !3472, !3473, !3474, !3475, !3476}
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3469, file: !68, line: 86, baseType: !3431, size: 64)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3469, file: !68, line: 87, baseType: !113, size: 64, offset: 64)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3469, file: !68, line: 88, baseType: !113, size: 64, offset: 128)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3469, file: !68, line: 89, baseType: !113, size: 64, offset: 192)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3469, file: !68, line: 90, baseType: !542, size: 8, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3469, file: !68, line: 92, baseType: !3468, size: 64, offset: 320)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3408, file: !68, line: 82, baseType: !7, size: 32, offset: 512)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2553, file: !2554, line: 1463, baseType: !3479, offset: 21184)
!3479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2554, line: 739, elements: !1240)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2553, file: !2554, line: 1470, baseType: !260, size: 128, align: 64, offset: 21184)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2553, file: !2554, line: 1471, baseType: !381, size: 32, offset: 21312)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2553, file: !2554, line: 1472, baseType: !183, size: 32, offset: 21344)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2553, file: !2554, line: 1474, baseType: !2552, size: 64, offset: 21376)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2553, file: !2554, line: 1475, baseType: !2037, size: 320, offset: 21440)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2553, file: !2554, line: 1478, baseType: !3486, size: 64, offset: 21760)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2554, line: 1478, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2553, file: !2554, line: 1482, baseType: !381, size: 32, offset: 21824)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2553, file: !2554, line: 1489, baseType: !112, size: 64, offset: 21888)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2553, file: !2554, line: 1504, baseType: !112, size: 64, offset: 21952)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2553, file: !2554, line: 1505, baseType: !249, size: 64, offset: 22016)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2553, file: !2554, line: 1506, baseType: !247, size: 64, offset: 22080)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2553, file: !2554, line: 1507, baseType: !249, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2553, file: !2554, line: 1508, baseType: !249, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2553, file: !2554, line: 1509, baseType: !249, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2553, file: !2554, line: 1510, baseType: !260, size: 128, align: 64, offset: 22208)
!3497 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2553, file: !2554, line: 1511, baseType: !183, size: 32, offset: 22336)
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2553, file: !2554, line: 1515, baseType: !3499, size: 64, offset: 22400)
!3499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !277, line: 56, size: 64, elements: !3500)
!3500 = !{!3501}
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3499, file: !277, line: 57, baseType: !280, size: 64)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2553, file: !2554, line: 1518, baseType: !3499, size: 64, offset: 22464)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2553, file: !2554, line: 1528, baseType: !260, size: 128, align: 64, offset: 22528)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2553, file: !2554, line: 1552, baseType: !3505, size: 35328, offset: 23040)
!3505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3506, line: 430, size: 35328, elements: !3507)
!3506 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3507 = !{!3508, !3526, !3527, !3528, !3529, !3530, !3531, !3532, !3533, !3537, !3538, !3539, !3540, !3541, !3542, !3545, !3546, !3547, !3548}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3505, file: !3506, line: 432, baseType: !3509, size: 192)
!3509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3510, size: 192, elements: !373)
!3510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3511, line: 16, size: 64, elements: !3512)
!3511 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3510, file: !3511, line: 17, baseType: !316, size: 16)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3510, file: !3511, line: 18, baseType: !316, size: 16, offset: 16)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3510, file: !3511, line: 19, baseType: !316, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3510, file: !3511, line: 19, baseType: !316, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3510, file: !3511, line: 19, baseType: !316, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3510, file: !3511, line: 19, baseType: !316, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3510, file: !3511, line: 19, baseType: !316, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3510, file: !3511, line: 20, baseType: !316, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3510, file: !3511, line: 20, baseType: !316, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3510, file: !3511, line: 20, baseType: !316, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3510, file: !3511, line: 20, baseType: !316, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3510, file: !3511, line: 20, baseType: !316, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3510, file: !3511, line: 20, baseType: !316, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3505, file: !3506, line: 436, baseType: !113, size: 64, offset: 192)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3505, file: !3506, line: 440, baseType: !253, size: 16, offset: 256)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3505, file: !3506, line: 441, baseType: !253, size: 16, offset: 272)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3505, file: !3506, line: 442, baseType: !253, size: 16, offset: 288)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3505, file: !3506, line: 443, baseType: !253, size: 16, offset: 304)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3505, file: !3506, line: 447, baseType: !113, size: 64, offset: 320)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3505, file: !3506, line: 448, baseType: !113, size: 64, offset: 384)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3505, file: !3506, line: 459, baseType: !3534, size: 256, offset: 448)
!3534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3535, size: 256, elements: !399)
!3535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3536, size: 64)
!3536 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3506, line: 428, flags: DIFlagFwdDecl)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3505, file: !3506, line: 461, baseType: !113, size: 64, offset: 704)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3505, file: !3506, line: 463, baseType: !113, size: 64, offset: 768)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3505, file: !3506, line: 465, baseType: !113, size: 64, offset: 832)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3505, file: !3506, line: 466, baseType: !113, size: 64, offset: 896)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3505, file: !3506, line: 467, baseType: !113, size: 64, offset: 960)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3505, file: !3506, line: 473, baseType: !3543, size: 64, offset: 1024)
!3543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3544, size: 64)
!3544 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3506, line: 10, flags: DIFlagFwdDecl)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3505, file: !3506, line: 480, baseType: !113, size: 64, offset: 1088)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3505, file: !3506, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3505, file: !3506, line: 491, baseType: !506, size: 32, offset: 1184)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3505, file: !3506, line: 501, baseType: !3549, size: 33792, offset: 1536)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3550, line: 448, size: 33792, elements: !3551)
!3550 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3551 = !{!3552, !3553, !3554, !3718, !3719, !3725, !3726}
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3549, file: !3550, line: 461, baseType: !7, size: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3549, file: !3550, line: 468, baseType: !113, size: 64, offset: 64)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3549, file: !3550, line: 476, baseType: !3555, size: 64, offset: 128)
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3550, line: 356, size: 33280, align: 512, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3556, file: !3550, line: 358, baseType: !7, size: 32)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3556, file: !3550, line: 361, baseType: !7, size: 32, offset: 32)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3556, file: !3550, line: 364, baseType: !247, size: 64, offset: 64)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3556, file: !3550, line: 367, baseType: !247, size: 64, offset: 128)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3556, file: !3550, line: 370, baseType: !247, size: 64, offset: 192)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3556, file: !3550, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3556, file: !3550, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3556, file: !3550, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3556, file: !3550, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3556, file: !3550, line: 397, baseType: !3568, size: 32768, offset: 512)
!3568 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3550, line: 348, size: 32768, elements: !3569)
!3569 = !{!3570, !3585, !3624, !3701, !3714}
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3568, file: !3550, line: 349, baseType: !3571, size: 896)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3550, line: 12, size: 896, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3584}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3571, file: !3550, line: 13, baseType: !506, size: 32)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3571, file: !3550, line: 14, baseType: !506, size: 32, offset: 32)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3571, file: !3550, line: 15, baseType: !506, size: 32, offset: 64)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3571, file: !3550, line: 16, baseType: !506, size: 32, offset: 96)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3571, file: !3550, line: 17, baseType: !506, size: 32, offset: 128)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3571, file: !3550, line: 18, baseType: !506, size: 32, offset: 160)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3571, file: !3550, line: 19, baseType: !506, size: 32, offset: 192)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3571, file: !3550, line: 22, baseType: !3581, size: 640, offset: 224)
!3581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 640, elements: !3582)
!3582 = !{!3583}
!3583 = !DISubrange(count: 20)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3571, file: !3550, line: 25, baseType: !506, size: 32, offset: 864)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3568, file: !3550, line: 350, baseType: !3586, size: 4096, align: 128)
!3586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3550, line: 34, size: 4096, align: 128, elements: !3587)
!3587 = !{!3588, !3589, !3590, !3591, !3592, !3607, !3608, !3609, !3613, !3615, !3619}
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3586, file: !3550, line: 35, baseType: !316, size: 16)
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3586, file: !3550, line: 36, baseType: !316, size: 16, offset: 16)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3586, file: !3550, line: 37, baseType: !316, size: 16, offset: 32)
!3591 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3586, file: !3550, line: 38, baseType: !316, size: 16, offset: 48)
!3592 = !DIDerivedType(tag: DW_TAG_member, scope: !3586, file: !3550, line: 39, baseType: !3593, size: 128, offset: 64)
!3593 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3586, file: !3550, line: 39, size: 128, elements: !3594)
!3594 = !{!3595, !3600}
!3595 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !3550, line: 40, baseType: !3596, size: 128)
!3596 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3593, file: !3550, line: 40, size: 128, elements: !3597)
!3597 = !{!3598, !3599}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3596, file: !3550, line: 41, baseType: !247, size: 64)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3596, file: !3550, line: 42, baseType: !247, size: 64, offset: 64)
!3600 = !DIDerivedType(tag: DW_TAG_member, scope: !3593, file: !3550, line: 44, baseType: !3601, size: 128)
!3601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3593, file: !3550, line: 44, size: 128, elements: !3602)
!3602 = !{!3603, !3604, !3605, !3606}
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3601, file: !3550, line: 45, baseType: !506, size: 32)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3601, file: !3550, line: 46, baseType: !506, size: 32, offset: 32)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3601, file: !3550, line: 47, baseType: !506, size: 32, offset: 64)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3601, file: !3550, line: 48, baseType: !506, size: 32, offset: 96)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3586, file: !3550, line: 51, baseType: !506, size: 32, offset: 192)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3586, file: !3550, line: 52, baseType: !506, size: 32, offset: 224)
!3609 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3586, file: !3550, line: 55, baseType: !3610, size: 1024, offset: 256)
!3610 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 1024, elements: !3611)
!3611 = !{!3612}
!3612 = !DISubrange(count: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3586, file: !3550, line: 58, baseType: !3614, size: 2048, offset: 1280)
!3614 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 2048, elements: !1001)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3586, file: !3550, line: 60, baseType: !3616, size: 384, offset: 3328)
!3616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !506, size: 384, elements: !3617)
!3617 = !{!3618}
!3618 = !DISubrange(count: 12)
!3619 = !DIDerivedType(tag: DW_TAG_member, scope: !3586, file: !3550, line: 62, baseType: !3620, size: 384, offset: 3712)
!3620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3586, file: !3550, line: 62, size: 384, elements: !3621)
!3621 = !{!3622, !3623}
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3620, file: !3550, line: 63, baseType: !3616, size: 384)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3620, file: !3550, line: 64, baseType: !3616, size: 384)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3568, file: !3550, line: 351, baseType: !3625, size: 1088)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3550, line: 79, size: 1088, elements: !3626)
!3626 = !{!3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639, !3640, !3641, !3700}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3625, file: !3550, line: 80, baseType: !506, size: 32)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3625, file: !3550, line: 81, baseType: !506, size: 32, offset: 32)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3625, file: !3550, line: 82, baseType: !506, size: 32, offset: 64)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3625, file: !3550, line: 83, baseType: !506, size: 32, offset: 96)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3625, file: !3550, line: 84, baseType: !506, size: 32, offset: 128)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3625, file: !3550, line: 85, baseType: !506, size: 32, offset: 160)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3625, file: !3550, line: 86, baseType: !506, size: 32, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3625, file: !3550, line: 88, baseType: !3581, size: 640, offset: 224)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3625, file: !3550, line: 89, baseType: !308, size: 8, offset: 864)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3625, file: !3550, line: 90, baseType: !308, size: 8, offset: 872)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3625, file: !3550, line: 91, baseType: !308, size: 8, offset: 880)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3625, file: !3550, line: 92, baseType: !308, size: 8, offset: 888)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3625, file: !3550, line: 93, baseType: !308, size: 8, offset: 896)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3625, file: !3550, line: 94, baseType: !308, size: 8, offset: 904)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3625, file: !3550, line: 95, baseType: !3642, size: 64, offset: 960)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3644, line: 11, size: 128, elements: !3645)
!3644 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3645 = !{!3646, !3647}
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3643, file: !3644, line: 12, baseType: !119, size: 64)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3643, file: !3644, line: 13, baseType: !3648, size: 64, offset: 64)
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3649, size: 64)
!3649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3650, line: 103, size: 1344, elements: !3651)
!3650 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3651 = !{!3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663, !3664, !3665, !3666, !3667, !3668, !3669, !3680, !3681, !3682}
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3649, file: !3650, line: 109, baseType: !113, size: 64)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3649, file: !3650, line: 110, baseType: !113, size: 64, offset: 64)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3649, file: !3650, line: 111, baseType: !113, size: 64, offset: 128)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3649, file: !3650, line: 112, baseType: !113, size: 64, offset: 192)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3649, file: !3650, line: 113, baseType: !113, size: 64, offset: 256)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3649, file: !3650, line: 114, baseType: !113, size: 64, offset: 320)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3649, file: !3650, line: 117, baseType: !113, size: 64, offset: 384)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3649, file: !3650, line: 118, baseType: !113, size: 64, offset: 448)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3649, file: !3650, line: 119, baseType: !113, size: 64, offset: 512)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3649, file: !3650, line: 120, baseType: !113, size: 64, offset: 576)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3649, file: !3650, line: 121, baseType: !113, size: 64, offset: 640)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3649, file: !3650, line: 122, baseType: !113, size: 64, offset: 704)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3649, file: !3650, line: 123, baseType: !113, size: 64, offset: 768)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3649, file: !3650, line: 124, baseType: !113, size: 64, offset: 832)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3649, file: !3650, line: 125, baseType: !113, size: 64, offset: 896)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3649, file: !3650, line: 139, baseType: !113, size: 64, offset: 960)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3649, file: !3650, line: 142, baseType: !113, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !3650, line: 144, baseType: !3670, size: 64, offset: 1088)
!3670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3649, file: !3650, line: 144, size: 64, elements: !3671)
!3671 = !{!3672, !3673, !3674}
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3670, file: !3650, line: 146, baseType: !316, size: 16)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3670, file: !3650, line: 148, baseType: !247, size: 64)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3670, file: !3650, line: 150, baseType: !3675, size: 64)
!3675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3650, line: 59, size: 64, elements: !3676)
!3676 = !{!3677, !3678, !3679}
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3675, file: !3650, line: 61, baseType: !247, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3675, file: !3650, line: 63, baseType: !247, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3675, file: !3650, line: 65, baseType: !247, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3649, file: !3650, line: 153, baseType: !113, size: 64, offset: 1152)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3649, file: !3650, line: 154, baseType: !113, size: 64, offset: 1216)
!3682 = !DIDerivedType(tag: DW_TAG_member, scope: !3649, file: !3650, line: 156, baseType: !3683, size: 64, offset: 1280)
!3683 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3649, file: !3650, line: 156, size: 64, elements: !3684)
!3684 = !{!3685, !3686, !3687}
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3683, file: !3650, line: 158, baseType: !316, size: 16)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3683, file: !3650, line: 160, baseType: !247, size: 64)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3683, file: !3650, line: 162, baseType: !3688, size: 64)
!3688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3650, line: 69, size: 64, elements: !3689)
!3689 = !{!3690, !3691, !3692, !3693, !3694, !3695, !3696, !3697, !3698, !3699}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3688, file: !3650, line: 71, baseType: !247, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3688, file: !3650, line: 73, baseType: !247, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3688, file: !3650, line: 75, baseType: !247, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3688, file: !3650, line: 77, baseType: !247, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3688, file: !3650, line: 80, baseType: !247, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3688, file: !3650, line: 83, baseType: !247, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3688, file: !3650, line: 86, baseType: !247, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3688, file: !3650, line: 88, baseType: !247, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3688, file: !3650, line: 93, baseType: !247, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3688, file: !3650, line: 100, baseType: !247, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3625, file: !3550, line: 96, baseType: !506, size: 32, offset: 1024)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3568, file: !3550, line: 352, baseType: !3702, size: 4608, align: 512)
!3702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3550, line: 333, size: 4608, align: 512, elements: !3703)
!3703 = !{!3704, !3705, !3712}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3702, file: !3550, line: 334, baseType: !3586, size: 4096, align: 128)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3702, file: !3550, line: 335, baseType: !3706, size: 512, offset: 4096)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3550, line: 312, size: 512, elements: !3707)
!3707 = !{!3708, !3709, !3710}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3706, file: !3550, line: 313, baseType: !247, size: 64)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3706, file: !3550, line: 314, baseType: !247, size: 64, offset: 64)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3706, file: !3550, line: 315, baseType: !3711, size: 384, offset: 128)
!3711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 384, elements: !529)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3702, file: !3550, line: 336, baseType: !3713, offset: 4608)
!3713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, elements: !418)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3568, file: !3550, line: 353, baseType: !3715, size: 32768)
!3715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 32768, elements: !3716)
!3716 = !{!3717}
!3717 = !DISubrange(count: 4096)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3549, file: !3550, line: 484, baseType: !3555, size: 64, offset: 192)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3549, file: !3550, line: 491, baseType: !3720, size: 128, offset: 256)
!3720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3550, line: 404, size: 128, elements: !3721)
!3721 = !{!3722, !3723, !3724}
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3720, file: !3550, line: 424, baseType: !247, size: 64)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3720, file: !3550, line: 432, baseType: !7, size: 32, offset: 64)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3720, file: !3550, line: 440, baseType: !7, size: 32, offset: 96)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3549, file: !3550, line: 498, baseType: !3720, size: 128, offset: 384)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3549, file: !3550, line: 508, baseType: !3556, size: 33280, align: 512, offset: 512)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2535, file: !2536, line: 16, baseType: !403, size: 192, offset: 512)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2535, file: !2536, line: 17, baseType: !192, size: 32, offset: 704)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !913, file: !14, line: 1240, baseType: !112, size: 64, offset: 6912)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !913, file: !14, line: 1243, baseType: !506, size: 32, offset: 6976)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !913, file: !14, line: 1245, baseType: !497, size: 64, offset: 7040)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !913, file: !14, line: 1246, baseType: !497, size: 64, offset: 7104)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !913, file: !14, line: 1248, baseType: !507, size: 32, offset: 7168)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !913, file: !14, line: 1249, baseType: !3735, size: 64, offset: 7232)
!3735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3736, size: 64)
!3736 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !913, file: !14, line: 1252, baseType: !3738, size: 256, offset: 7296)
!3738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 256, elements: !3611)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !913, file: !14, line: 1253, baseType: !3740, size: 128, offset: 7552)
!3740 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3741, line: 21, baseType: !3742)
!3741 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3742 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3741, line: 19, size: 128, elements: !3743)
!3743 = !{!3744}
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3742, file: !3741, line: 20, baseType: !3745, size: 128)
!3745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 128, elements: !130)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !913, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !913, file: !14, line: 1261, baseType: !331, size: 256, offset: 7744)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !913, file: !14, line: 1267, baseType: !199, size: 64, offset: 8000)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !913, file: !14, line: 1269, baseType: !3750, size: 64, offset: 8064)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3752)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !666, line: 128, size: 1024, align: 512, elements: !3753)
!3753 = !{!3754, !3758, !3759, !3766, !3772, !3776, !3780, !3784, !3785, !3789, !3793, !3798, !3802}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3752, file: !666, line: 129, baseType: !3755, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3756, size: 64)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!183, !664, !7}
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3752, file: !666, line: 130, baseType: !3755, size: 64, offset: 64)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3752, file: !666, line: 131, baseType: !3760, size: 64, offset: 128)
!3760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3761, size: 64)
!3761 = !DISubroutineType(types: !3762)
!3762 = !{!183, !3763, !3765}
!3763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3764, size: 64)
!3764 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !665)
!3765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3752, file: !666, line: 132, baseType: !3767, size: 64, offset: 192)
!3767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3768, size: 64)
!3768 = !DISubroutineType(types: !3769)
!3769 = !{!183, !3763, !7, !199, !3770}
!3770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3771, size: 64)
!3771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !689)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3752, file: !666, line: 134, baseType: !3773, size: 64, offset: 256)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DISubroutineType(types: !3775)
!3775 = !{!183, !3763}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3752, file: !666, line: 135, baseType: !3777, size: 64, offset: 320)
!3777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3778, size: 64)
!3778 = !DISubroutineType(types: !3779)
!3779 = !{!183, !664}
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3752, file: !666, line: 136, baseType: !3781, size: 64, offset: 384)
!3781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3782, size: 64)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{null, !664}
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3752, file: !666, line: 137, baseType: !3781, size: 64, offset: 448)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3752, file: !666, line: 138, baseType: !3786, size: 64, offset: 512)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DISubroutineType(types: !3788)
!3788 = !{null, !664, !704}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3752, file: !666, line: 139, baseType: !3790, size: 64, offset: 576)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = !DISubroutineType(types: !3792)
!3792 = !{!553, !664, !553, !183}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3752, file: !666, line: 140, baseType: !3794, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!659, !3797}
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3752, file: !666, line: 141, baseType: !3799, size: 64, offset: 704)
!3799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3800, size: 64)
!3800 = !DISubroutineType(types: !3801)
!3801 = !{!183, !825, !542}
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3752, file: !666, line: 142, baseType: !3803, size: 64, offset: 768)
!3803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3804, size: 64)
!3804 = !DISubroutineType(types: !3805)
!3805 = !{!664, !664, !3806}
!3806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3807, size: 64)
!3807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !913, file: !14, line: 1271, baseType: !3809, size: 448, offset: 8128)
!3809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2317, line: 63, size: 448, elements: !3810)
!3810 = !{!3811, !3816, !3817, !3818, !3819, !3820, !3821}
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3809, file: !2317, line: 64, baseType: !3812, size: 64)
!3812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3813, size: 64)
!3813 = !DISubroutineType(types: !3814)
!3814 = !{!113, !3815, !2315}
!3815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3809, size: 64)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3809, file: !2317, line: 66, baseType: !3812, size: 64, offset: 64)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3809, file: !2317, line: 69, baseType: !119, size: 64, offset: 128)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3809, file: !2317, line: 70, baseType: !183, size: 32, offset: 192)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3809, file: !2317, line: 71, baseType: !7, size: 32, offset: 224)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3809, file: !2317, line: 74, baseType: !343, size: 128, offset: 256)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3809, file: !2317, line: 85, baseType: !3822, size: 64, offset: 384)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !913, file: !14, line: 1274, baseType: !322, size: 64, offset: 8576)
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !913, file: !14, line: 1280, baseType: !322, size: 64, offset: 8640)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !913, file: !14, line: 1283, baseType: !183, size: 32, offset: 8704)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !913, file: !14, line: 1286, baseType: !1727, size: 32, offset: 8736)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !913, file: !14, line: 1289, baseType: !2099, size: 64, offset: 8768)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !913, file: !14, line: 1290, baseType: !390, size: 64, offset: 8832)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !913, file: !14, line: 1297, baseType: !626, size: 64, offset: 8896)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !913, file: !14, line: 1304, baseType: !3831, size: 64, offset: 8960)
!3831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3832, line: 49, size: 64, elements: !3833)
!3832 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3833 = !{!3834}
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3831, file: !3832, line: 50, baseType: !3835, size: 64)
!3835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3836, size: 64)
!3836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3832, line: 41, size: 512, align: 512, elements: !3837)
!3837 = !{!3838, !3839, !3844}
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3836, file: !3832, line: 43, baseType: !284, size: 32)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3836, file: !3832, line: 45, baseType: !3840, size: 192, offset: 64)
!3840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3832, line: 29, size: 192, elements: !3841)
!3841 = !{!3842, !3843}
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3840, file: !3832, line: 30, baseType: !343, size: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3840, file: !3832, line: 32, baseType: !119, size: 64, offset: 128)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3836, file: !3832, line: 46, baseType: !119, size: 64, offset: 256)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !913, file: !14, line: 1305, baseType: !3831, size: 64, offset: 9024)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !913, file: !14, line: 1306, baseType: !260, size: 128, align: 64, offset: 9088)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !913, file: !14, line: 1307, baseType: !1372, size: 256, offset: 9216)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !913, file: !14, line: 1309, baseType: !331, size: 256, offset: 9472)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !913, file: !14, line: 1314, baseType: !183, size: 32, offset: 9728)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !913, file: !14, line: 1317, baseType: !284, size: 32, align: 512, offset: 10240)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !913, file: !14, line: 1318, baseType: !343, size: 128, offset: 10304)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !913, file: !14, line: 1320, baseType: !284, size: 32, offset: 10432)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !913, file: !14, line: 1321, baseType: !343, size: 128, offset: 10496)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !705, file: !14, line: 656, baseType: !1062, size: 64, offset: 512)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !705, file: !14, line: 659, baseType: !112, size: 64, offset: 576)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !705, file: !14, line: 663, baseType: !113, size: 64, offset: 640)
!3857 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !14, line: 671, baseType: !3858, size: 32, offset: 704)
!3858 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !14, line: 671, size: 32, elements: !3859)
!3859 = !{!3860, !3862}
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3858, file: !14, line: 672, baseType: !3861, size: 32)
!3861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3858, file: !14, line: 673, baseType: !7, size: 32)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !705, file: !14, line: 675, baseType: !778, size: 32, offset: 736)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !705, file: !14, line: 676, baseType: !241, size: 64, offset: 768)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !705, file: !14, line: 677, baseType: !814, size: 128, offset: 832)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !705, file: !14, line: 678, baseType: !814, size: 128, offset: 960)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !705, file: !14, line: 679, baseType: !814, size: 128, offset: 1088)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !705, file: !14, line: 680, baseType: !284, size: 32, offset: 1216)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !705, file: !14, line: 681, baseType: !253, size: 16, offset: 1248)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !705, file: !14, line: 682, baseType: !308, size: 8, offset: 1264)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !705, file: !14, line: 683, baseType: !308, size: 8, offset: 1272)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !705, file: !14, line: 684, baseType: !2448, size: 64, offset: 1280)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !705, file: !14, line: 691, baseType: !113, size: 64, offset: 1344)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !705, file: !14, line: 692, baseType: !481, size: 320, offset: 1408)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !705, file: !14, line: 694, baseType: !113, size: 64, offset: 1728)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !705, file: !14, line: 695, baseType: !113, size: 64, offset: 1792)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !705, file: !14, line: 697, baseType: !394, size: 128, offset: 1856)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !705, file: !14, line: 698, baseType: !343, size: 128, offset: 1984)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !705, file: !14, line: 707, baseType: !343, size: 128, offset: 2112)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !705, file: !14, line: 708, baseType: !343, size: 128, offset: 2240)
!3881 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !14, line: 709, baseType: !3882, size: 128, offset: 2368)
!3882 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !14, line: 709, size: 128, elements: !3883)
!3883 = !{!3884, !3885}
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3882, file: !14, line: 710, baseType: !390, size: 64)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3882, file: !14, line: 711, baseType: !260, size: 128, align: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !705, file: !14, line: 713, baseType: !324, size: 64, offset: 2496)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !705, file: !14, line: 714, baseType: !324, size: 64, offset: 2560)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !705, file: !14, line: 715, baseType: !192, size: 32, offset: 2624)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !705, file: !14, line: 716, baseType: !192, size: 32, offset: 2656)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !705, file: !14, line: 717, baseType: !192, size: 32, offset: 2688)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !705, file: !14, line: 719, baseType: !192, size: 32, offset: 2720)
!3892 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !14, line: 721, baseType: !3893, size: 64, offset: 2752)
!3893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !14, line: 721, size: 64, elements: !3894)
!3894 = !{!3895, !4023}
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3893, file: !14, line: 722, baseType: !3896, size: 64)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3898)
!3898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !3899)
!3899 = !{!3900, !3901, !3905, !3909, !3913, !3914, !3915, !3921, !3934, !3942, !3946, !3947, !3951, !3952, !3956, !3961, !3962, !3966, !3970, !3976, !3977, !3981, !3982, !3986, !3990, !3991, !3996, !4000, !4004, !4008, !4012, !4013, !4019}
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3898, file: !14, line: 1915, baseType: !945, size: 64)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3898, file: !14, line: 1916, baseType: !3902, size: 64, offset: 64)
!3902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3903, size: 64)
!3903 = !DISubroutineType(types: !3904)
!3904 = !{!241, !269, !241, !183}
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3898, file: !14, line: 1917, baseType: !3906, size: 64, offset: 128)
!3906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3907, size: 64)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!114, !269, !553, !856, !2235}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3898, file: !14, line: 1918, baseType: !3910, size: 64, offset: 192)
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DISubroutineType(types: !3912)
!3912 = !{!114, !269, !199, !856, !2235}
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3898, file: !14, line: 1919, baseType: !1661, size: 64, offset: 256)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3898, file: !14, line: 1920, baseType: !1661, size: 64, offset: 320)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3898, file: !14, line: 1921, baseType: !3916, size: 64, offset: 384)
!3916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3917 = !DISubroutineType(types: !3918)
!3918 = !{!183, !1664, !3919, !7}
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3898, file: !14, line: 1923, baseType: !3922, size: 64, offset: 448)
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3923, size: 64)
!3923 = !DISubroutineType(types: !3924)
!3924 = !{!183, !269, !3925}
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !3927)
!3927 = !{!3928, !3933}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3926, file: !14, line: 1859, baseType: !3929, size: 64)
!3929 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !3930)
!3930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3931, size: 64)
!3931 = !DISubroutineType(types: !3932)
!3932 = !{!542, !3925, !199, !183, !241, !247, !7}
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3926, file: !14, line: 1860, baseType: !241, size: 64, offset: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3898, file: !14, line: 1924, baseType: !3935, size: 64, offset: 512)
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3936, size: 64)
!3936 = !DISubroutineType(types: !3937)
!3937 = !{!3938, !269, !3940}
!3938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !3939, line: 59, baseType: !7)
!3939 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !93, line: 31, flags: DIFlagFwdDecl)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3898, file: !14, line: 1925, baseType: !3943, size: 64, offset: 576)
!3943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3944, size: 64)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!119, !269, !7, !113}
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3898, file: !14, line: 1926, baseType: !3943, size: 64, offset: 640)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3898, file: !14, line: 1927, baseType: !3948, size: 64, offset: 704)
!3948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3949, size: 64)
!3949 = !DISubroutineType(types: !3950)
!3950 = !{!183, !269, !1206}
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3898, file: !14, line: 1928, baseType: !113, size: 64, offset: 768)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3898, file: !14, line: 1929, baseType: !3953, size: 64, offset: 832)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DISubroutineType(types: !3955)
!3955 = !{!183, !704, !269}
!3956 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3898, file: !14, line: 1930, baseType: !3957, size: 64, offset: 896)
!3957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3958, size: 64)
!3958 = !DISubroutineType(types: !3959)
!3959 = !{!183, !269, !3960}
!3960 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !112)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3898, file: !14, line: 1931, baseType: !3953, size: 64, offset: 960)
!3962 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3898, file: !14, line: 1932, baseType: !3963, size: 64, offset: 1024)
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{!183, !269, !241, !241, !183}
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3898, file: !14, line: 1933, baseType: !3967, size: 64, offset: 1088)
!3967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3968, size: 64)
!3968 = !DISubroutineType(types: !3969)
!3969 = !{!183, !183, !269, !183}
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3898, file: !14, line: 1934, baseType: !3971, size: 64, offset: 1152)
!3971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3972, size: 64)
!3972 = !DISubroutineType(types: !3973)
!3973 = !{!183, !269, !183, !3974}
!3974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3975, size: 64)
!3975 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3898, file: !14, line: 1935, baseType: !1244, size: 64, offset: 1216)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3898, file: !14, line: 1936, baseType: !3978, size: 64, offset: 1280)
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DISubroutineType(types: !3980)
!3980 = !{!183, !183}
!3981 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3898, file: !14, line: 1937, baseType: !3971, size: 64, offset: 1344)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3898, file: !14, line: 1938, baseType: !3983, size: 64, offset: 1408)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!114, !3386, !269, !2235, !856, !7}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3898, file: !14, line: 1939, baseType: !3987, size: 64, offset: 1472)
!3987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3988, size: 64)
!3988 = !DISubroutineType(types: !3989)
!3989 = !{!114, !269, !2235, !3386, !856, !7}
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3898, file: !14, line: 1940, baseType: !1717, size: 64, offset: 1536)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3898, file: !14, line: 1941, baseType: !3992, size: 64, offset: 1600)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{!183, !269, !183, !3995, !1638}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3898, file: !14, line: 1942, baseType: !3997, size: 64, offset: 1664)
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DISubroutineType(types: !3999)
!3999 = !{!119, !269, !183, !241, !241}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3898, file: !14, line: 1944, baseType: !4001, size: 64, offset: 1728)
!4001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4002, size: 64)
!4002 = !DISubroutineType(types: !4003)
!4003 = !{null, !2214, !269}
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3898, file: !14, line: 1948, baseType: !4005, size: 64, offset: 1792)
!4005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4006, size: 64)
!4006 = !DISubroutineType(types: !4007)
!4007 = !{!114, !269, !241, !269, !241, !856, !7}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3898, file: !14, line: 1950, baseType: !4009, size: 64, offset: 1856)
!4009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4010, size: 64)
!4010 = !DISubroutineType(types: !4011)
!4011 = !{!241, !269, !241, !269, !241, !241, !7}
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3898, file: !14, line: 1953, baseType: !3963, size: 64, offset: 1920)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3898, file: !14, line: 1954, baseType: !4014, size: 64, offset: 1984)
!4014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4015, size: 64)
!4015 = !DISubroutineType(types: !4016)
!4016 = !{!183, !4017, !7}
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3898, file: !14, line: 1955, baseType: !4020, size: 64, offset: 2048)
!4020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4021, size: 64)
!4021 = !DISubroutineType(types: !4022)
!4022 = !{!183, !4017, !3919, !7}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3893, file: !14, line: 723, baseType: !2167, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !705, file: !14, line: 725, baseType: !4025, size: 64, offset: 2816)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !705, file: !14, line: 726, baseType: !1063, size: 1536, align: 64, offset: 2880)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !705, file: !14, line: 727, baseType: !343, size: 128, offset: 4416)
!4029 = !DIDerivedType(tag: DW_TAG_member, scope: !705, file: !14, line: 728, baseType: !4030, size: 64, offset: 4544)
!4030 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !705, file: !14, line: 728, size: 64, elements: !4031)
!4031 = !{!4032, !4033, !4036, !4037}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !4030, file: !14, line: 729, baseType: !3386, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !4030, file: !14, line: 730, baseType: !4034, size: 64)
!4034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4035, size: 64)
!4035 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !4030, file: !14, line: 731, baseType: !553, size: 64)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !4030, file: !14, line: 732, baseType: !7, size: 32)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !705, file: !14, line: 735, baseType: !507, size: 32, offset: 4608)
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !705, file: !14, line: 738, baseType: !507, size: 32, offset: 4640)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !705, file: !14, line: 739, baseType: !3735, size: 64, offset: 4672)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !705, file: !14, line: 750, baseType: !112, size: 64, offset: 4736)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !665, file: !666, line: 91, baseType: !4043, size: 256, offset: 448)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !3611)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !665, file: !666, line: 94, baseType: !4045, size: 64, offset: 704)
!4045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !4046, line: 25, size: 64, elements: !4047)
!4046 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!4047 = !{!4048}
!4048 = !DIDerivedType(tag: DW_TAG_member, scope: !4045, file: !4046, line: 26, baseType: !4049, size: 64)
!4049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !4045, file: !4046, line: 26, size: 64, elements: !4050)
!4050 = !{!4051, !4052}
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !4049, file: !4046, line: 28, baseType: !249, size: 64, align: 64)
!4052 = !DIDerivedType(tag: DW_TAG_member, scope: !4049, file: !4046, line: 30, baseType: !4053, size: 64)
!4053 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !4049, file: !4046, line: 30, size: 64, elements: !4054)
!4054 = !{!4055, !4056}
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4053, file: !4046, line: 31, baseType: !284, size: 32)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !4053, file: !4046, line: 32, baseType: !183, size: 32, offset: 32)
!4057 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !665, file: !666, line: 95, baseType: !3750, size: 64, offset: 768)
!4058 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !665, file: !666, line: 96, baseType: !912, size: 64, offset: 832)
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !665, file: !666, line: 97, baseType: !113, size: 64, offset: 896)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !665, file: !666, line: 98, baseType: !112, size: 64, offset: 960)
!4061 = !DIDerivedType(tag: DW_TAG_member, scope: !665, file: !666, line: 100, baseType: !4062, size: 128, offset: 1024)
!4062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !666, line: 100, size: 128, elements: !4063)
!4063 = !{!4064, !4065}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !4062, file: !666, line: 101, baseType: !343, size: 128)
!4065 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !4062, file: !666, line: 102, baseType: !4066, size: 64)
!4066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!4067 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !665, file: !666, line: 104, baseType: !343, size: 128, offset: 1152)
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !665, file: !666, line: 105, baseType: !343, size: 128, offset: 1280)
!4069 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !665, file: !666, line: 113, baseType: !4070, size: 128, offset: 1408)
!4070 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !666, line: 109, size: 128, elements: !4071)
!4071 = !{!4072, !4073, !4074}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4070, file: !666, line: 110, baseType: !394, size: 128)
!4073 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4070, file: !666, line: 111, baseType: !680, size: 128)
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4070, file: !666, line: 112, baseType: !260, size: 128, align: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !660, file: !661, line: 72, baseType: !912, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !660, file: !661, line: 73, baseType: !183, size: 32, offset: 128)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !660, file: !661, line: 74, baseType: !743, size: 64, offset: 192)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !655, file: !656, line: 10, baseType: !664, size: 64, offset: 64)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !270, file: !14, line: 1015, baseType: !704, size: 64, offset: 1344)
!4080 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !270, file: !14, line: 1016, baseType: !3896, size: 64, offset: 1408)
!4081 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !270, file: !14, line: 1018, baseType: !247, size: 64, offset: 1472)
!4082 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !270, file: !14, line: 1020, baseType: !112, size: 64, offset: 1536)
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !270, file: !14, line: 1023, baseType: !112, size: 64, offset: 1600)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !270, file: !14, line: 1027, baseType: !4085, size: 64, offset: 1664)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !270, file: !14, line: 1029, baseType: !1062, size: 64, offset: 1728)
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !270, file: !14, line: 1030, baseType: !1727, size: 32, offset: 1792)
!4088 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !270, file: !14, line: 1031, baseType: !1727, size: 32, offset: 1824)
!4089 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !185, file: !93, line: 255, baseType: !2214, size: 64, offset: 128)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !185, file: !93, line: 256, baseType: !112, size: 64, offset: 192)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !185, file: !93, line: 259, baseType: !331, size: 256, offset: 256)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !185, file: !93, line: 260, baseType: !331, size: 256, offset: 512)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !185, file: !93, line: 261, baseType: !183, size: 32, offset: 768)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !185, file: !93, line: 262, baseType: !343, size: 128, offset: 832)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !185, file: !93, line: 263, baseType: !553, size: 64, offset: 960)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !185, file: !93, line: 265, baseType: !856, size: 64, offset: 1024)
!4097 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !185, file: !93, line: 266, baseType: !542, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !185, file: !93, line: 267, baseType: !542, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !185, file: !93, line: 268, baseType: !1415, size: 64, offset: 1152)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !177, file: !93, line: 277, baseType: !4101, size: 64, offset: 64)
!4101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4102, size: 64)
!4102 = !DISubroutineType(types: !4103)
!4103 = !{null, !184}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !177, file: !93, line: 290, baseType: !2245, size: 64, offset: 128)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !177, file: !93, line: 292, baseType: !2232, size: 64, offset: 192)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !177, file: !93, line: 293, baseType: !2241, size: 64, offset: 256)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !177, file: !93, line: 294, baseType: !2237, size: 64, offset: 320)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !177, file: !93, line: 296, baseType: !4109, size: 64, offset: 384)
!4109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4110, size: 64)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!114, !184, !553, !856, !241}
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !177, file: !93, line: 306, baseType: !856, size: 64, offset: 448)
!4113 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !177, file: !93, line: 313, baseType: !542, size: 8, offset: 512)
!4114 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !177, file: !93, line: 314, baseType: !4109, size: 64, offset: 576)
!4115 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !177, file: !93, line: 317, baseType: !4116, size: 64, offset: 640)
!4116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4117, size: 64)
!4117 = !DISubroutineType(types: !4118)
!4118 = !{!3938, !184, !3940}
!4119 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !177, file: !93, line: 320, baseType: !4120, size: 64, offset: 704)
!4120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4121, size: 64)
!4121 = !DISubroutineType(types: !4122)
!4122 = !{!183, !184, !1206}
!4123 = !DIGlobalVariableExpression(var: !4124, expr: !DIExpression())
!4124 = distinct !DIGlobalVariable(name: "sysfs_prealloc_kfops_ro", scope: !2, file: !3, line: 218, type: !176, isLocal: true, isDefinition: true)
!4125 = !DIGlobalVariableExpression(var: !4126, expr: !DIExpression())
!4126 = distinct !DIGlobalVariable(name: "sysfs_prealloc_kfops_wo", scope: !2, file: !3, line: 223, type: !176, isLocal: true, isDefinition: true)
!4127 = !DIGlobalVariableExpression(var: !4128, expr: !DIExpression())
!4128 = distinct !DIGlobalVariable(name: "sysfs_file_kfops_rw", scope: !2, file: !3, line: 213, type: !176, isLocal: true, isDefinition: true)
!4129 = !DIGlobalVariableExpression(var: !4130, expr: !DIExpression())
!4130 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !4131, isLocal: true, isDefinition: true)
!4131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 336, elements: !4132)
!4132 = !{!4133}
!4133 = !DISubrange(count: 42)
!4134 = !DIGlobalVariableExpression(var: !4135, expr: !DIExpression())
!4135 = distinct !DIGlobalVariable(scope: null, file: !2216, line: 66, type: !4136, isLocal: true, isDefinition: true)
!4136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 200, elements: !4137)
!4137 = !{!4138}
!4138 = !DISubrange(count: 25)
!4139 = !DIGlobalVariableExpression(var: !4140, expr: !DIExpression())
!4140 = distinct !DIGlobalVariable(name: "sysfs_file_kfops_ro", scope: !2, file: !3, line: 205, type: !176, isLocal: true, isDefinition: true)
!4141 = !DIGlobalVariableExpression(var: !4142, expr: !DIExpression())
!4142 = distinct !DIGlobalVariable(name: "sysfs_file_kfops_wo", scope: !2, file: !3, line: 209, type: !176, isLocal: true, isDefinition: true)
!4143 = !DIGlobalVariableExpression(var: !4144, expr: !DIExpression())
!4144 = distinct !DIGlobalVariable(name: "sysfs_file_kfops_empty", scope: !2, file: !3, line: 202, type: !176, isLocal: true, isDefinition: true)
!4145 = !DIGlobalVariableExpression(var: !4146, expr: !DIExpression())
!4146 = distinct !DIGlobalVariable(name: "sysfs_bin_kfops_mmap", scope: !2, file: !3, line: 247, type: !176, isLocal: true, isDefinition: true)
!4147 = !DIGlobalVariableExpression(var: !4148, expr: !DIExpression())
!4148 = distinct !DIGlobalVariable(name: "sysfs_bin_kfops_rw", scope: !2, file: !3, line: 242, type: !176, isLocal: true, isDefinition: true)
!4149 = !DIGlobalVariableExpression(var: !4150, expr: !DIExpression())
!4150 = distinct !DIGlobalVariable(name: "sysfs_bin_kfops_ro", scope: !2, file: !3, line: 234, type: !176, isLocal: true, isDefinition: true)
!4151 = !DIGlobalVariableExpression(var: !4152, expr: !DIExpression())
!4152 = distinct !DIGlobalVariable(name: "sysfs_bin_kfops_wo", scope: !2, file: !3, line: 238, type: !176, isLocal: true, isDefinition: true)
!4153 = !{i32 7, !"Dwarf Version", i32 5}
!4154 = !{i32 2, !"Debug Info Version", i32 3}
!4155 = !{i32 1, !"wchar_size", i32 2}
!4156 = !{i32 8, !"cf-protection-branch", i32 1}
!4157 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4158 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4159 = !{i32 1, !"Code Model", i32 2}
!4160 = !{i32 1, !"override-stack-alignment", i32 8}
!4161 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4162 = distinct !DISubprogram(name: "sysfs_notify", scope: !3, file: !3, line: 180, type: !4163, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4163 = !DISubroutineType(types: !4164)
!4164 = !{null, !964, !199, !199}
!4165 = !{!4166, !4167, !4168, !4169, !4170}
!4166 = !DILocalVariable(name: "kobj", arg: 1, scope: !4162, file: !3, line: 180, type: !964)
!4167 = !DILocalVariable(name: "dir", arg: 2, scope: !4162, file: !3, line: 180, type: !199)
!4168 = !DILocalVariable(name: "attr", arg: 3, scope: !4162, file: !3, line: 180, type: !199)
!4169 = !DILocalVariable(name: "kn", scope: !4162, file: !3, line: 182, type: !188)
!4170 = !DILocalVariable(name: "tmp", scope: !4162, file: !3, line: 182, type: !188)
!4171 = !DILocation(line: 180, column: 35, scope: !4162)
!4172 = !DILocation(line: 180, column: 53, scope: !4162)
!4173 = !DILocation(line: 180, column: 70, scope: !4162)
!4174 = !DILocation(line: 182, column: 2, scope: !4162)
!4175 = !DILocation(line: 182, column: 22, scope: !4162)
!4176 = !DILocation(line: 182, column: 27, scope: !4162)
!4177 = !DILocation(line: 182, column: 33, scope: !4162)
!4178 = !DILocation(line: 182, column: 38, scope: !4162)
!4179 = !DILocation(line: 184, column: 6, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 184, column: 6)
!4181 = !DILocation(line: 184, column: 9, scope: !4180)
!4182 = !DILocation(line: 184, column: 12, scope: !4180)
!4183 = !DILocation(line: 184, column: 6, scope: !4162)
!4184 = !DILocation(line: 185, column: 28, scope: !4180)
!4185 = !DILocation(line: 185, column: 32, scope: !4180)
!4186 = !DILocation(line: 185, column: 8, scope: !4180)
!4187 = !DILocation(line: 185, column: 6, scope: !4180)
!4188 = !DILocation(line: 185, column: 3, scope: !4180)
!4189 = !DILocation(line: 187, column: 14, scope: !4180)
!4190 = !DILocation(line: 187, column: 3, scope: !4180)
!4191 = !DILocation(line: 189, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 189, column: 6)
!4193 = !DILocation(line: 189, column: 9, scope: !4192)
!4194 = !DILocation(line: 189, column: 12, scope: !4192)
!4195 = !DILocation(line: 189, column: 6, scope: !4162)
!4196 = !DILocation(line: 190, column: 29, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 189, column: 18)
!4198 = !DILocation(line: 190, column: 33, scope: !4197)
!4199 = !DILocation(line: 190, column: 9, scope: !4197)
!4200 = !DILocation(line: 190, column: 7, scope: !4197)
!4201 = !DILocation(line: 191, column: 14, scope: !4197)
!4202 = !DILocation(line: 191, column: 3, scope: !4197)
!4203 = !DILocation(line: 192, column: 8, scope: !4197)
!4204 = !DILocation(line: 192, column: 6, scope: !4197)
!4205 = !DILocation(line: 193, column: 2, scope: !4197)
!4206 = !DILocation(line: 195, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4162, file: !3, line: 195, column: 6)
!4208 = !DILocation(line: 195, column: 6, scope: !4162)
!4209 = !DILocation(line: 196, column: 17, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 195, column: 10)
!4211 = !DILocation(line: 196, column: 3, scope: !4210)
!4212 = !DILocation(line: 197, column: 14, scope: !4210)
!4213 = !DILocation(line: 197, column: 3, scope: !4210)
!4214 = !DILocation(line: 198, column: 2, scope: !4210)
!4215 = !DILocation(line: 199, column: 1, scope: !4162)
!4216 = distinct !DISubprogram(name: "kernfs_find_and_get", scope: !93, file: !93, line: 601, type: !4217, scopeLine: 602, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4219)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!188, !188, !199}
!4219 = !{!4220, !4221}
!4220 = !DILocalVariable(name: "kn", arg: 1, scope: !4216, file: !93, line: 601, type: !188)
!4221 = !DILocalVariable(name: "name", arg: 2, scope: !4216, file: !93, line: 601, type: !199)
!4222 = !DILocation(line: 601, column: 41, scope: !4216)
!4223 = !DILocation(line: 601, column: 57, scope: !4216)
!4224 = !DILocation(line: 603, column: 32, scope: !4216)
!4225 = !DILocation(line: 603, column: 36, scope: !4216)
!4226 = !DILocation(line: 603, column: 9, scope: !4216)
!4227 = !DILocation(line: 603, column: 2, scope: !4216)
!4228 = !DISubprogram(name: "kernfs_get", scope: !93, file: !93, line: 406, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4229 = !DISubroutineType(types: !4230)
!4230 = !{null, !188}
!4231 = !DISubprogram(name: "kernfs_put", scope: !93, file: !93, line: 407, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4232 = !DISubprogram(name: "kernfs_notify", scope: !93, file: !93, line: 448, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4233 = distinct !DISubprogram(name: "sysfs_add_file_mode_ns", scope: !3, file: !3, line: 254, type: !4234, scopeLine: 257, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4238)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{!183, !188, !4236, !255, !422, !440, !210}
!4236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4237, size: 64)
!4237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1029)
!4238 = !{!4239, !4240, !4241, !4242, !4243, !4244, !4245, !4246, !4247, !4249, !4250, !4251, !4254}
!4239 = !DILocalVariable(name: "parent", arg: 1, scope: !4233, file: !3, line: 254, type: !188)
!4240 = !DILocalVariable(name: "attr", arg: 2, scope: !4233, file: !3, line: 255, type: !4236)
!4241 = !DILocalVariable(name: "mode", arg: 3, scope: !4233, file: !3, line: 255, type: !255)
!4242 = !DILocalVariable(name: "uid", arg: 4, scope: !4233, file: !3, line: 255, type: !422)
!4243 = !DILocalVariable(name: "gid", arg: 5, scope: !4233, file: !3, line: 256, type: !440)
!4244 = !DILocalVariable(name: "ns", arg: 6, scope: !4233, file: !3, line: 256, type: !210)
!4245 = !DILocalVariable(name: "kobj", scope: !4233, file: !3, line: 258, type: !964)
!4246 = !DILocalVariable(name: "sysfs_ops", scope: !4233, file: !3, line: 259, type: !1019)
!4247 = !DILocalVariable(name: "key", scope: !4233, file: !3, line: 260, type: !4248)
!4248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!4249 = !DILocalVariable(name: "ops", scope: !4233, file: !3, line: 261, type: !236)
!4250 = !DILocalVariable(name: "kn", scope: !4233, file: !3, line: 262, type: !188)
!4251 = !DILocalVariable(name: "__ret_warn_on", scope: !4252, file: !3, line: 265, type: !183)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 265, column: 6)
!4253 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 265, column: 6)
!4254 = !DILocalVariable(name: "__flags", scope: !4255, file: !3, line: 265, type: !183)
!4255 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 265, column: 6)
!4256 = distinct !DILexicalBlock(scope: !4257, file: !3, line: 265, column: 6)
!4257 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 265, column: 6)
!4258 = !DILocation(line: 254, column: 48, scope: !4233)
!4259 = !DILocation(line: 255, column: 27, scope: !4233)
!4260 = !DILocation(line: 255, column: 41, scope: !4233)
!4261 = !DILocation(line: 255, column: 54, scope: !4233)
!4262 = !DILocation(line: 256, column: 10, scope: !4233)
!4263 = !DILocation(line: 256, column: 27, scope: !4233)
!4264 = !DILocation(line: 258, column: 2, scope: !4233)
!4265 = !DILocation(line: 258, column: 18, scope: !4233)
!4266 = !DILocation(line: 258, column: 25, scope: !4233)
!4267 = !DILocation(line: 258, column: 33, scope: !4233)
!4268 = !DILocation(line: 259, column: 2, scope: !4233)
!4269 = !DILocation(line: 259, column: 26, scope: !4233)
!4270 = !DILocation(line: 259, column: 38, scope: !4233)
!4271 = !DILocation(line: 259, column: 44, scope: !4233)
!4272 = !DILocation(line: 259, column: 51, scope: !4233)
!4273 = !DILocation(line: 260, column: 2, scope: !4233)
!4274 = !DILocation(line: 260, column: 25, scope: !4233)
!4275 = !DILocation(line: 261, column: 2, scope: !4233)
!4276 = !DILocation(line: 261, column: 27, scope: !4233)
!4277 = !DILocation(line: 262, column: 2, scope: !4233)
!4278 = !DILocation(line: 262, column: 22, scope: !4233)
!4279 = !DILocation(line: 265, column: 6, scope: !4252)
!4280 = !DILocation(line: 265, column: 6, scope: !4257)
!4281 = !DILocation(line: 265, column: 6, scope: !4256)
!4282 = !DILocation(line: 265, column: 6, scope: !4283)
!4283 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 265, column: 6)
!4284 = !DILocation(line: 265, column: 6, scope: !4255)
!4285 = !DILocation(line: 265, column: 6, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 265, column: 6)
!4287 = !DILocation(line: 265, column: 6, scope: !4288)
!4288 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 265, column: 6)
!4289 = !{i64 2154189731, i64 2154189760, i64 2154189806, i64 2154189864, i64 2154189918, i64 2154189972, i64 2154190027, i64 2154190058, i64 2154190366, i64 2154190372, i64 2154190419, i64 2154190442, i64 2154190468}
!4290 = !DILocation(line: 265, column: 6, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4255, file: !3, line: 265, column: 6)
!4292 = !DILocation(line: 265, column: 6, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 265, column: 6)
!4294 = !DILocation(line: 265, column: 6, scope: !4253)
!4295 = !DILocation(line: 265, column: 6, scope: !4233)
!4296 = !DILocation(line: 268, column: 3, scope: !4253)
!4297 = !DILocation(line: 270, column: 6, scope: !4298)
!4298 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 270, column: 6)
!4299 = !DILocation(line: 270, column: 11, scope: !4298)
!4300 = !DILocation(line: 270, column: 6, scope: !4233)
!4301 = !DILocation(line: 271, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 271, column: 7)
!4303 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 270, column: 29)
!4304 = !DILocation(line: 271, column: 18, scope: !4302)
!4305 = !DILocation(line: 271, column: 23, scope: !4302)
!4306 = !DILocation(line: 271, column: 26, scope: !4302)
!4307 = !DILocation(line: 271, column: 37, scope: !4302)
!4308 = !DILocation(line: 271, column: 7, scope: !4303)
!4309 = !DILocation(line: 272, column: 8, scope: !4302)
!4310 = !DILocation(line: 272, column: 4, scope: !4302)
!4311 = !DILocation(line: 273, column: 12, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4302, file: !3, line: 273, column: 12)
!4313 = !DILocation(line: 273, column: 23, scope: !4312)
!4314 = !DILocation(line: 273, column: 12, scope: !4302)
!4315 = !DILocation(line: 274, column: 8, scope: !4312)
!4316 = !DILocation(line: 274, column: 4, scope: !4312)
!4317 = !DILocation(line: 275, column: 12, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 275, column: 12)
!4319 = !DILocation(line: 275, column: 23, scope: !4318)
!4320 = !DILocation(line: 275, column: 12, scope: !4312)
!4321 = !DILocation(line: 276, column: 8, scope: !4318)
!4322 = !DILocation(line: 276, column: 4, scope: !4318)
!4323 = !DILocation(line: 277, column: 2, scope: !4303)
!4324 = !DILocation(line: 278, column: 7, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 278, column: 7)
!4326 = distinct !DILexicalBlock(scope: !4298, file: !3, line: 277, column: 9)
!4327 = !DILocation(line: 278, column: 18, scope: !4325)
!4328 = !DILocation(line: 278, column: 23, scope: !4325)
!4329 = !DILocation(line: 278, column: 26, scope: !4325)
!4330 = !DILocation(line: 278, column: 37, scope: !4325)
!4331 = !DILocation(line: 278, column: 7, scope: !4326)
!4332 = !DILocation(line: 279, column: 8, scope: !4325)
!4333 = !DILocation(line: 279, column: 4, scope: !4325)
!4334 = !DILocation(line: 280, column: 12, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4325, file: !3, line: 280, column: 12)
!4336 = !DILocation(line: 280, column: 23, scope: !4335)
!4337 = !DILocation(line: 280, column: 12, scope: !4325)
!4338 = !DILocation(line: 281, column: 8, scope: !4335)
!4339 = !DILocation(line: 281, column: 4, scope: !4335)
!4340 = !DILocation(line: 282, column: 12, scope: !4341)
!4341 = distinct !DILexicalBlock(scope: !4335, file: !3, line: 282, column: 12)
!4342 = !DILocation(line: 282, column: 23, scope: !4341)
!4343 = !DILocation(line: 282, column: 12, scope: !4335)
!4344 = !DILocation(line: 283, column: 8, scope: !4341)
!4345 = !DILocation(line: 283, column: 4, scope: !4341)
!4346 = !DILocation(line: 286, column: 7, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 286, column: 6)
!4348 = !DILocation(line: 286, column: 6, scope: !4233)
!4349 = !DILocation(line: 287, column: 7, scope: !4347)
!4350 = !DILocation(line: 287, column: 3, scope: !4347)
!4351 = !DILocation(line: 294, column: 28, scope: !4233)
!4352 = !DILocation(line: 294, column: 36, scope: !4233)
!4353 = !DILocation(line: 294, column: 42, scope: !4233)
!4354 = !DILocation(line: 294, column: 48, scope: !4233)
!4355 = !DILocation(line: 294, column: 53, scope: !4233)
!4356 = !DILocation(line: 295, column: 18, scope: !4233)
!4357 = !DILocation(line: 295, column: 31, scope: !4233)
!4358 = !DILocation(line: 295, column: 37, scope: !4233)
!4359 = !DILocation(line: 295, column: 41, scope: !4233)
!4360 = !DILocation(line: 294, column: 7, scope: !4233)
!4361 = !DILocation(line: 294, column: 5, scope: !4233)
!4362 = !DILocation(line: 296, column: 13, scope: !4363)
!4363 = distinct !DILexicalBlock(scope: !4233, file: !3, line: 296, column: 6)
!4364 = !DILocation(line: 296, column: 6, scope: !4363)
!4365 = !DILocation(line: 296, column: 6, scope: !4233)
!4366 = !DILocation(line: 297, column: 15, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 297, column: 7)
!4368 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 296, column: 18)
!4369 = !DILocation(line: 297, column: 7, scope: !4367)
!4370 = !DILocation(line: 297, column: 19, scope: !4367)
!4371 = !DILocation(line: 297, column: 7, scope: !4368)
!4372 = !DILocation(line: 298, column: 19, scope: !4367)
!4373 = !DILocation(line: 298, column: 27, scope: !4367)
!4374 = !DILocation(line: 298, column: 33, scope: !4367)
!4375 = !DILocation(line: 298, column: 4, scope: !4367)
!4376 = !DILocation(line: 299, column: 18, scope: !4368)
!4377 = !DILocation(line: 299, column: 10, scope: !4368)
!4378 = !DILocation(line: 299, column: 3, scope: !4368)
!4379 = !DILocation(line: 301, column: 2, scope: !4233)
!4380 = !DILocation(line: 302, column: 1, scope: !4233)
!4381 = !DISubprogram(name: "__warn_printk", scope: !1955, file: !1955, line: 93, type: !4382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{null, !199, null}
!4384 = distinct !DISubprogram(name: "kobject_name", scope: !959, file: !959, line: 87, type: !987, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4385 = !{!4386}
!4386 = !DILocalVariable(name: "kobj", arg: 1, scope: !4384, file: !959, line: 87, type: !982)
!4387 = !DILocation(line: 87, column: 62, scope: !4384)
!4388 = !DILocation(line: 89, column: 9, scope: !4384)
!4389 = !DILocation(line: 89, column: 15, scope: !4384)
!4390 = !DILocation(line: 89, column: 2, scope: !4384)
!4391 = !DISubprogram(name: "__kernfs_create_file", scope: !93, file: !93, line: 425, type: !4392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!188, !188, !199, !255, !422, !440, !241, !236, !112, !210, !4248}
!4394 = distinct !DISubprogram(name: "IS_ERR", scope: !4395, file: !4395, line: 59, type: !4396, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4398)
!4395 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4396 = !DISubroutineType(types: !4397)
!4397 = !{!542, !210}
!4398 = !{!4399}
!4399 = !DILocalVariable(name: "ptr", arg: 1, scope: !4394, file: !4395, line: 59, type: !210)
!4400 = !DILocation(line: 59, column: 60, scope: !4394)
!4401 = !DILocation(line: 61, column: 9, scope: !4394)
!4402 = !DILocation(line: 61, column: 2, scope: !4394)
!4403 = distinct !DISubprogram(name: "PTR_ERR", scope: !4395, file: !4395, line: 49, type: !4404, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4404 = !DISubroutineType(types: !4405)
!4405 = !{!119, !210}
!4406 = !{!4407}
!4407 = !DILocalVariable(name: "ptr", arg: 1, scope: !4403, file: !4395, line: 49, type: !210)
!4408 = !DILocation(line: 49, column: 61, scope: !4403)
!4409 = !DILocation(line: 51, column: 16, scope: !4403)
!4410 = !DILocation(line: 51, column: 9, scope: !4403)
!4411 = !DILocation(line: 51, column: 2, scope: !4403)
!4412 = !DISubprogram(name: "sysfs_warn_dup", scope: !4413, file: !4413, line: 25, type: !4414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4413 = !DIFile(filename: "fs/sysfs/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4631698ebb8109fce5156a8976a3a952")
!4414 = !DISubroutineType(types: !4415)
!4415 = !{null, !188, !199}
!4416 = distinct !DISubprogram(name: "sysfs_add_bin_file_mode_ns", scope: !3, file: !3, line: 304, type: !4417, scopeLine: 307, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4421)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{!183, !188, !4419, !255, !422, !440, !210}
!4419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4420, size: 64)
!4420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1053)
!4421 = !{!4422, !4423, !4424, !4425, !4426, !4427, !4428, !4429, !4430, !4431}
!4422 = !DILocalVariable(name: "parent", arg: 1, scope: !4416, file: !3, line: 304, type: !188)
!4423 = !DILocalVariable(name: "battr", arg: 2, scope: !4416, file: !3, line: 305, type: !4419)
!4424 = !DILocalVariable(name: "mode", arg: 3, scope: !4416, file: !3, line: 305, type: !255)
!4425 = !DILocalVariable(name: "uid", arg: 4, scope: !4416, file: !3, line: 306, type: !422)
!4426 = !DILocalVariable(name: "gid", arg: 5, scope: !4416, file: !3, line: 306, type: !440)
!4427 = !DILocalVariable(name: "ns", arg: 6, scope: !4416, file: !3, line: 306, type: !210)
!4428 = !DILocalVariable(name: "attr", scope: !4416, file: !3, line: 308, type: !4236)
!4429 = !DILocalVariable(name: "key", scope: !4416, file: !3, line: 309, type: !4248)
!4430 = !DILocalVariable(name: "ops", scope: !4416, file: !3, line: 310, type: !236)
!4431 = !DILocalVariable(name: "kn", scope: !4416, file: !3, line: 311, type: !188)
!4432 = !DILocation(line: 304, column: 52, scope: !4416)
!4433 = !DILocation(line: 305, column: 31, scope: !4416)
!4434 = !DILocation(line: 305, column: 46, scope: !4416)
!4435 = !DILocation(line: 306, column: 10, scope: !4416)
!4436 = !DILocation(line: 306, column: 22, scope: !4416)
!4437 = !DILocation(line: 306, column: 39, scope: !4416)
!4438 = !DILocation(line: 308, column: 2, scope: !4416)
!4439 = !DILocation(line: 308, column: 26, scope: !4416)
!4440 = !DILocation(line: 308, column: 34, scope: !4416)
!4441 = !DILocation(line: 308, column: 41, scope: !4416)
!4442 = !DILocation(line: 309, column: 2, scope: !4416)
!4443 = !DILocation(line: 309, column: 25, scope: !4416)
!4444 = !DILocation(line: 310, column: 2, scope: !4416)
!4445 = !DILocation(line: 310, column: 27, scope: !4416)
!4446 = !DILocation(line: 311, column: 2, scope: !4416)
!4447 = !DILocation(line: 311, column: 22, scope: !4416)
!4448 = !DILocation(line: 313, column: 6, scope: !4449)
!4449 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 313, column: 6)
!4450 = !DILocation(line: 313, column: 13, scope: !4449)
!4451 = !DILocation(line: 313, column: 6, scope: !4416)
!4452 = !DILocation(line: 314, column: 7, scope: !4449)
!4453 = !DILocation(line: 314, column: 3, scope: !4449)
!4454 = !DILocation(line: 315, column: 11, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 315, column: 11)
!4456 = !DILocation(line: 315, column: 18, scope: !4455)
!4457 = !DILocation(line: 315, column: 23, scope: !4455)
!4458 = !DILocation(line: 315, column: 26, scope: !4455)
!4459 = !DILocation(line: 315, column: 33, scope: !4455)
!4460 = !DILocation(line: 315, column: 11, scope: !4449)
!4461 = !DILocation(line: 316, column: 7, scope: !4455)
!4462 = !DILocation(line: 316, column: 3, scope: !4455)
!4463 = !DILocation(line: 317, column: 11, scope: !4464)
!4464 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 317, column: 11)
!4465 = !DILocation(line: 317, column: 18, scope: !4464)
!4466 = !DILocation(line: 317, column: 11, scope: !4455)
!4467 = !DILocation(line: 318, column: 7, scope: !4464)
!4468 = !DILocation(line: 318, column: 3, scope: !4464)
!4469 = !DILocation(line: 319, column: 11, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 319, column: 11)
!4471 = !DILocation(line: 319, column: 18, scope: !4470)
!4472 = !DILocation(line: 319, column: 11, scope: !4464)
!4473 = !DILocation(line: 320, column: 7, scope: !4470)
!4474 = !DILocation(line: 320, column: 3, scope: !4470)
!4475 = !DILocation(line: 322, column: 7, scope: !4470)
!4476 = !DILocation(line: 329, column: 28, scope: !4416)
!4477 = !DILocation(line: 329, column: 36, scope: !4416)
!4478 = !DILocation(line: 329, column: 42, scope: !4416)
!4479 = !DILocation(line: 329, column: 48, scope: !4416)
!4480 = !DILocation(line: 329, column: 53, scope: !4416)
!4481 = !DILocation(line: 330, column: 7, scope: !4416)
!4482 = !DILocation(line: 330, column: 14, scope: !4416)
!4483 = !DILocation(line: 330, column: 20, scope: !4416)
!4484 = !DILocation(line: 330, column: 33, scope: !4416)
!4485 = !DILocation(line: 330, column: 39, scope: !4416)
!4486 = !DILocation(line: 330, column: 43, scope: !4416)
!4487 = !DILocation(line: 329, column: 7, scope: !4416)
!4488 = !DILocation(line: 329, column: 5, scope: !4416)
!4489 = !DILocation(line: 331, column: 13, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4416, file: !3, line: 331, column: 6)
!4491 = !DILocation(line: 331, column: 6, scope: !4490)
!4492 = !DILocation(line: 331, column: 6, scope: !4416)
!4493 = !DILocation(line: 332, column: 15, scope: !4494)
!4494 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 332, column: 7)
!4495 = distinct !DILexicalBlock(scope: !4490, file: !3, line: 331, column: 18)
!4496 = !DILocation(line: 332, column: 7, scope: !4494)
!4497 = !DILocation(line: 332, column: 19, scope: !4494)
!4498 = !DILocation(line: 332, column: 7, scope: !4495)
!4499 = !DILocation(line: 333, column: 19, scope: !4494)
!4500 = !DILocation(line: 333, column: 27, scope: !4494)
!4501 = !DILocation(line: 333, column: 33, scope: !4494)
!4502 = !DILocation(line: 333, column: 4, scope: !4494)
!4503 = !DILocation(line: 334, column: 18, scope: !4495)
!4504 = !DILocation(line: 334, column: 10, scope: !4495)
!4505 = !DILocation(line: 334, column: 3, scope: !4495)
!4506 = !DILocation(line: 336, column: 2, scope: !4416)
!4507 = !DILocation(line: 337, column: 1, scope: !4416)
!4508 = distinct !DISubprogram(name: "sysfs_create_file_ns", scope: !3, file: !3, line: 345, type: !4509, scopeLine: 347, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!183, !964, !4236, !210}
!4511 = !{!4512, !4513, !4514, !4515, !4516, !4517, !4520}
!4512 = !DILocalVariable(name: "kobj", arg: 1, scope: !4508, file: !3, line: 345, type: !964)
!4513 = !DILocalVariable(name: "attr", arg: 2, scope: !4508, file: !3, line: 345, type: !4236)
!4514 = !DILocalVariable(name: "ns", arg: 3, scope: !4508, file: !3, line: 346, type: !210)
!4515 = !DILocalVariable(name: "uid", scope: !4508, file: !3, line: 348, type: !422)
!4516 = !DILocalVariable(name: "gid", scope: !4508, file: !3, line: 349, type: !440)
!4517 = !DILocalVariable(name: "__ret_warn_on", scope: !4518, file: !3, line: 351, type: !183)
!4518 = distinct !DILexicalBlock(scope: !4519, file: !3, line: 351, column: 6)
!4519 = distinct !DILexicalBlock(scope: !4508, file: !3, line: 351, column: 6)
!4520 = !DILocalVariable(name: "__flags", scope: !4521, file: !3, line: 351, type: !183)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 351, column: 6)
!4522 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 351, column: 6)
!4523 = !DILocation(line: 345, column: 42, scope: !4508)
!4524 = !DILocation(line: 345, column: 72, scope: !4508)
!4525 = !DILocation(line: 346, column: 17, scope: !4508)
!4526 = !DILocation(line: 348, column: 2, scope: !4508)
!4527 = !DILocation(line: 348, column: 9, scope: !4508)
!4528 = !DILocation(line: 349, column: 2, scope: !4508)
!4529 = !DILocation(line: 349, column: 9, scope: !4508)
!4530 = !DILocation(line: 351, column: 6, scope: !4518)
!4531 = !DILocation(line: 351, column: 6, scope: !4522)
!4532 = !DILocation(line: 351, column: 6, scope: !4521)
!4533 = !DILocation(line: 351, column: 6, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 351, column: 6)
!4535 = !DILocation(line: 351, column: 6, scope: !4536)
!4536 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 351, column: 6)
!4537 = !{i64 2154191341, i64 2154191370, i64 2154191416, i64 2154191474, i64 2154191528, i64 2154191582, i64 2154191637, i64 2154191668, i64 2154191976, i64 2154191982, i64 2154192029, i64 2154192052, i64 2154192078}
!4538 = !DILocation(line: 351, column: 6, scope: !4539)
!4539 = distinct !DILexicalBlock(scope: !4521, file: !3, line: 351, column: 6)
!4540 = !DILocation(line: 351, column: 6, scope: !4519)
!4541 = !DILocation(line: 351, column: 6, scope: !4508)
!4542 = !DILocation(line: 352, column: 3, scope: !4519)
!4543 = !DILocation(line: 354, column: 24, scope: !4508)
!4544 = !DILocation(line: 354, column: 2, scope: !4508)
!4545 = !DILocation(line: 355, column: 32, scope: !4508)
!4546 = !DILocation(line: 355, column: 38, scope: !4508)
!4547 = !DILocation(line: 355, column: 42, scope: !4508)
!4548 = !DILocation(line: 355, column: 48, scope: !4508)
!4549 = !DILocation(line: 355, column: 54, scope: !4508)
!4550 = !DILocation(line: 355, column: 70, scope: !4508)
!4551 = !DILocation(line: 355, column: 9, scope: !4508)
!4552 = !DILocation(line: 355, column: 2, scope: !4508)
!4553 = !DILocation(line: 356, column: 1, scope: !4508)
!4554 = !DISubprogram(name: "kobject_get_ownership", scope: !959, file: !959, line: 113, type: !1779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4555 = distinct !DISubprogram(name: "sysfs_create_files", scope: !3, file: !3, line: 359, type: !4556, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4560)
!4556 = !DISubroutineType(types: !4557)
!4557 = !{!183, !964, !4558}
!4558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4559, size: 64)
!4559 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4236)
!4560 = !{!4561, !4562, !4563, !4564}
!4561 = !DILocalVariable(name: "kobj", arg: 1, scope: !4555, file: !3, line: 359, type: !964)
!4562 = !DILocalVariable(name: "ptr", arg: 2, scope: !4555, file: !3, line: 359, type: !4558)
!4563 = !DILocalVariable(name: "err", scope: !4555, file: !3, line: 361, type: !183)
!4564 = !DILocalVariable(name: "i", scope: !4555, file: !3, line: 362, type: !183)
!4565 = !DILocation(line: 359, column: 40, scope: !4555)
!4566 = !DILocation(line: 359, column: 78, scope: !4555)
!4567 = !DILocation(line: 361, column: 2, scope: !4555)
!4568 = !DILocation(line: 361, column: 6, scope: !4555)
!4569 = !DILocation(line: 362, column: 2, scope: !4555)
!4570 = !DILocation(line: 362, column: 6, scope: !4555)
!4571 = !DILocation(line: 364, column: 9, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 364, column: 2)
!4573 = !DILocation(line: 364, column: 7, scope: !4572)
!4574 = !DILocation(line: 364, column: 14, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4572, file: !3, line: 364, column: 2)
!4576 = !DILocation(line: 364, column: 18, scope: !4575)
!4577 = !DILocation(line: 364, column: 21, scope: !4575)
!4578 = !DILocation(line: 364, column: 25, scope: !4575)
!4579 = !DILocation(line: 364, column: 24, scope: !4575)
!4580 = !DILocation(line: 0, scope: !4575)
!4581 = !DILocation(line: 364, column: 2, scope: !4572)
!4582 = !DILocation(line: 365, column: 27, scope: !4575)
!4583 = !DILocation(line: 365, column: 33, scope: !4575)
!4584 = !DILocation(line: 365, column: 37, scope: !4575)
!4585 = !DILocation(line: 365, column: 9, scope: !4575)
!4586 = !DILocation(line: 365, column: 7, scope: !4575)
!4587 = !DILocation(line: 365, column: 3, scope: !4575)
!4588 = !DILocation(line: 364, column: 31, scope: !4575)
!4589 = !DILocation(line: 364, column: 2, scope: !4575)
!4590 = distinct !{!4590, !4581, !4591, !4592, !4593}
!4591 = !DILocation(line: 365, column: 39, scope: !4572)
!4592 = !{!"llvm.loop.mustprogress"}
!4593 = !{!"llvm.loop.unroll.disable"}
!4594 = !DILocation(line: 366, column: 6, scope: !4595)
!4595 = distinct !DILexicalBlock(scope: !4555, file: !3, line: 366, column: 6)
!4596 = !DILocation(line: 366, column: 6, scope: !4555)
!4597 = !DILocation(line: 367, column: 3, scope: !4595)
!4598 = !DILocation(line: 367, column: 10, scope: !4595)
!4599 = !DILocation(line: 367, column: 14, scope: !4595)
!4600 = !DILocation(line: 368, column: 22, scope: !4595)
!4601 = !DILocation(line: 368, column: 28, scope: !4595)
!4602 = !DILocation(line: 368, column: 32, scope: !4595)
!4603 = !DILocation(line: 368, column: 4, scope: !4595)
!4604 = distinct !{!4604, !4597, !4605, !4592, !4593}
!4605 = !DILocation(line: 368, column: 34, scope: !4595)
!4606 = !DILocation(line: 369, column: 9, scope: !4555)
!4607 = !DILocation(line: 370, column: 1, scope: !4555)
!4608 = !DILocation(line: 369, column: 2, scope: !4555)
!4609 = distinct !DISubprogram(name: "sysfs_create_file", scope: !1022, file: !1022, line: 620, type: !4610, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4612)
!4610 = !DISubroutineType(types: !4611)
!4611 = !{!183, !964, !4236}
!4612 = !{!4613, !4614}
!4613 = !DILocalVariable(name: "kobj", arg: 1, scope: !4609, file: !1022, line: 620, type: !964)
!4614 = !DILocalVariable(name: "attr", arg: 2, scope: !4609, file: !1022, line: 621, type: !4236)
!4615 = !DILocation(line: 620, column: 66, scope: !4609)
!4616 = !DILocation(line: 621, column: 32, scope: !4609)
!4617 = !DILocation(line: 623, column: 30, scope: !4609)
!4618 = !DILocation(line: 623, column: 36, scope: !4609)
!4619 = !DILocation(line: 623, column: 9, scope: !4609)
!4620 = !DILocation(line: 623, column: 2, scope: !4609)
!4621 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !1022, file: !1022, line: 626, type: !4622, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4624)
!4622 = !DISubroutineType(types: !4623)
!4623 = !{null, !964, !4236}
!4624 = !{!4625, !4626}
!4625 = !DILocalVariable(name: "kobj", arg: 1, scope: !4621, file: !1022, line: 626, type: !964)
!4626 = !DILocalVariable(name: "attr", arg: 2, scope: !4621, file: !1022, line: 627, type: !4236)
!4627 = !DILocation(line: 626, column: 54, scope: !4621)
!4628 = !DILocation(line: 627, column: 34, scope: !4621)
!4629 = !DILocation(line: 629, column: 23, scope: !4621)
!4630 = !DILocation(line: 629, column: 29, scope: !4621)
!4631 = !DILocation(line: 629, column: 2, scope: !4621)
!4632 = !DILocation(line: 630, column: 1, scope: !4621)
!4633 = distinct !DISubprogram(name: "sysfs_add_file_to_group", scope: !3, file: !3, line: 379, type: !4634, scopeLine: 381, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4636)
!4634 = !DISubroutineType(types: !4635)
!4635 = !{!183, !964, !4236, !199}
!4636 = !{!4637, !4638, !4639, !4640, !4641, !4642, !4643}
!4637 = !DILocalVariable(name: "kobj", arg: 1, scope: !4633, file: !3, line: 379, type: !964)
!4638 = !DILocalVariable(name: "attr", arg: 2, scope: !4633, file: !3, line: 380, type: !4236)
!4639 = !DILocalVariable(name: "group", arg: 3, scope: !4633, file: !3, line: 380, type: !199)
!4640 = !DILocalVariable(name: "parent", scope: !4633, file: !3, line: 382, type: !188)
!4641 = !DILocalVariable(name: "uid", scope: !4633, file: !3, line: 383, type: !422)
!4642 = !DILocalVariable(name: "gid", scope: !4633, file: !3, line: 384, type: !440)
!4643 = !DILocalVariable(name: "error", scope: !4633, file: !3, line: 385, type: !183)
!4644 = !DILocation(line: 379, column: 45, scope: !4633)
!4645 = !DILocation(line: 380, column: 27, scope: !4633)
!4646 = !DILocation(line: 380, column: 45, scope: !4633)
!4647 = !DILocation(line: 382, column: 2, scope: !4633)
!4648 = !DILocation(line: 382, column: 22, scope: !4633)
!4649 = !DILocation(line: 383, column: 2, scope: !4633)
!4650 = !DILocation(line: 383, column: 9, scope: !4633)
!4651 = !DILocation(line: 384, column: 2, scope: !4633)
!4652 = !DILocation(line: 384, column: 9, scope: !4633)
!4653 = !DILocation(line: 385, column: 2, scope: !4633)
!4654 = !DILocation(line: 385, column: 6, scope: !4633)
!4655 = !DILocation(line: 387, column: 6, scope: !4656)
!4656 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 387, column: 6)
!4657 = !DILocation(line: 387, column: 6, scope: !4633)
!4658 = !DILocation(line: 388, column: 32, scope: !4659)
!4659 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 387, column: 13)
!4660 = !DILocation(line: 388, column: 38, scope: !4659)
!4661 = !DILocation(line: 388, column: 42, scope: !4659)
!4662 = !DILocation(line: 388, column: 12, scope: !4659)
!4663 = !DILocation(line: 388, column: 10, scope: !4659)
!4664 = !DILocation(line: 389, column: 2, scope: !4659)
!4665 = !DILocation(line: 390, column: 12, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4656, file: !3, line: 389, column: 9)
!4667 = !DILocation(line: 390, column: 18, scope: !4666)
!4668 = !DILocation(line: 390, column: 10, scope: !4666)
!4669 = !DILocation(line: 391, column: 14, scope: !4666)
!4670 = !DILocation(line: 391, column: 3, scope: !4666)
!4671 = !DILocation(line: 394, column: 7, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4633, file: !3, line: 394, column: 6)
!4673 = !DILocation(line: 394, column: 6, scope: !4633)
!4674 = !DILocation(line: 395, column: 3, scope: !4672)
!4675 = !DILocation(line: 397, column: 24, scope: !4633)
!4676 = !DILocation(line: 397, column: 2, scope: !4633)
!4677 = !DILocation(line: 398, column: 33, scope: !4633)
!4678 = !DILocation(line: 398, column: 41, scope: !4633)
!4679 = !DILocation(line: 398, column: 47, scope: !4633)
!4680 = !DILocation(line: 398, column: 53, scope: !4633)
!4681 = !DILocation(line: 398, column: 10, scope: !4633)
!4682 = !DILocation(line: 398, column: 8, scope: !4633)
!4683 = !DILocation(line: 400, column: 13, scope: !4633)
!4684 = !DILocation(line: 400, column: 2, scope: !4633)
!4685 = !DILocation(line: 402, column: 9, scope: !4633)
!4686 = !DILocation(line: 402, column: 2, scope: !4633)
!4687 = !DILocation(line: 403, column: 1, scope: !4633)
!4688 = distinct !DISubprogram(name: "sysfs_chmod_file", scope: !3, file: !3, line: 413, type: !4689, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4691)
!4689 = !DISubroutineType(types: !4690)
!4690 = !{!183, !964, !4236, !255}
!4691 = !{!4692, !4693, !4694, !4695, !4696, !4697}
!4692 = !DILocalVariable(name: "kobj", arg: 1, scope: !4688, file: !3, line: 413, type: !964)
!4693 = !DILocalVariable(name: "attr", arg: 2, scope: !4688, file: !3, line: 413, type: !4236)
!4694 = !DILocalVariable(name: "mode", arg: 3, scope: !4688, file: !3, line: 414, type: !255)
!4695 = !DILocalVariable(name: "kn", scope: !4688, file: !3, line: 416, type: !188)
!4696 = !DILocalVariable(name: "newattrs", scope: !4688, file: !3, line: 417, type: !789)
!4697 = !DILocalVariable(name: "rc", scope: !4688, file: !3, line: 418, type: !183)
!4698 = !DILocation(line: 413, column: 38, scope: !4688)
!4699 = !DILocation(line: 413, column: 68, scope: !4688)
!4700 = !DILocation(line: 414, column: 16, scope: !4688)
!4701 = !DILocation(line: 416, column: 2, scope: !4688)
!4702 = !DILocation(line: 416, column: 22, scope: !4688)
!4703 = !DILocation(line: 417, column: 2, scope: !4688)
!4704 = !DILocation(line: 417, column: 15, scope: !4688)
!4705 = !DILocation(line: 418, column: 2, scope: !4688)
!4706 = !DILocation(line: 418, column: 6, scope: !4688)
!4707 = !DILocation(line: 420, column: 27, scope: !4688)
!4708 = !DILocation(line: 420, column: 33, scope: !4688)
!4709 = !DILocation(line: 420, column: 37, scope: !4688)
!4710 = !DILocation(line: 420, column: 43, scope: !4688)
!4711 = !DILocation(line: 420, column: 7, scope: !4688)
!4712 = !DILocation(line: 420, column: 5, scope: !4688)
!4713 = !DILocation(line: 421, column: 7, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 421, column: 6)
!4715 = !DILocation(line: 421, column: 6, scope: !4688)
!4716 = !DILocation(line: 422, column: 3, scope: !4714)
!4717 = !DILocation(line: 424, column: 22, scope: !4688)
!4718 = !DILocation(line: 424, column: 27, scope: !4688)
!4719 = !DILocation(line: 424, column: 43, scope: !4688)
!4720 = !DILocation(line: 424, column: 47, scope: !4688)
!4721 = !DILocation(line: 424, column: 52, scope: !4688)
!4722 = !DILocation(line: 424, column: 40, scope: !4688)
!4723 = !DILocation(line: 424, column: 21, scope: !4688)
!4724 = !DILocation(line: 424, column: 11, scope: !4688)
!4725 = !DILocation(line: 424, column: 19, scope: !4688)
!4726 = !DILocation(line: 425, column: 11, scope: !4688)
!4727 = !DILocation(line: 425, column: 20, scope: !4688)
!4728 = !DILocation(line: 427, column: 22, scope: !4688)
!4729 = !DILocation(line: 427, column: 7, scope: !4688)
!4730 = !DILocation(line: 427, column: 5, scope: !4688)
!4731 = !DILocation(line: 429, column: 13, scope: !4688)
!4732 = !DILocation(line: 429, column: 2, scope: !4688)
!4733 = !DILocation(line: 430, column: 9, scope: !4688)
!4734 = !DILocation(line: 430, column: 2, scope: !4688)
!4735 = !DILocation(line: 431, column: 1, scope: !4688)
!4736 = !DISubprogram(name: "kernfs_setattr", scope: !93, file: !93, line: 445, type: !4737, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4737 = !DISubroutineType(types: !4738)
!4738 = !{!183, !188, !4739}
!4739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4740, size: 64)
!4740 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!4741 = distinct !DISubprogram(name: "sysfs_break_active_protection", scope: !3, file: !3, line: 444, type: !4742, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4744)
!4742 = !DISubroutineType(types: !4743)
!4743 = !{!188, !964, !4236}
!4744 = !{!4745, !4746, !4747}
!4745 = !DILocalVariable(name: "kobj", arg: 1, scope: !4741, file: !3, line: 444, type: !964)
!4746 = !DILocalVariable(name: "attr", arg: 2, scope: !4741, file: !3, line: 445, type: !4236)
!4747 = !DILocalVariable(name: "kn", scope: !4741, file: !3, line: 447, type: !188)
!4748 = !DILocation(line: 444, column: 67, scope: !4741)
!4749 = !DILocation(line: 445, column: 33, scope: !4741)
!4750 = !DILocation(line: 447, column: 2, scope: !4741)
!4751 = !DILocation(line: 447, column: 22, scope: !4741)
!4752 = !DILocation(line: 449, column: 14, scope: !4741)
!4753 = !DILocation(line: 449, column: 2, scope: !4741)
!4754 = !DILocation(line: 450, column: 27, scope: !4741)
!4755 = !DILocation(line: 450, column: 33, scope: !4741)
!4756 = !DILocation(line: 450, column: 37, scope: !4741)
!4757 = !DILocation(line: 450, column: 43, scope: !4741)
!4758 = !DILocation(line: 450, column: 7, scope: !4741)
!4759 = !DILocation(line: 450, column: 5, scope: !4741)
!4760 = !DILocation(line: 451, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4741, file: !3, line: 451, column: 6)
!4762 = !DILocation(line: 451, column: 6, scope: !4741)
!4763 = !DILocation(line: 452, column: 34, scope: !4761)
!4764 = !DILocation(line: 452, column: 3, scope: !4761)
!4765 = !DILocation(line: 454, column: 15, scope: !4761)
!4766 = !DILocation(line: 454, column: 3, scope: !4761)
!4767 = !DILocation(line: 455, column: 9, scope: !4741)
!4768 = !DILocation(line: 456, column: 1, scope: !4741)
!4769 = !DILocation(line: 455, column: 2, scope: !4741)
!4770 = !DISubprogram(name: "kobject_get", scope: !959, file: !959, line: 108, type: !4771, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!964, !964}
!4773 = !DISubprogram(name: "kernfs_break_active_protection", scope: !93, file: !93, line: 438, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4774 = !DISubprogram(name: "kobject_put", scope: !959, file: !959, line: 110, type: !1016, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4775 = distinct !DISubprogram(name: "sysfs_unbreak_active_protection", scope: !3, file: !3, line: 470, type: !4229, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4776)
!4776 = !{!4777, !4778}
!4777 = !DILocalVariable(name: "kn", arg: 1, scope: !4775, file: !3, line: 470, type: !188)
!4778 = !DILocalVariable(name: "kobj", scope: !4775, file: !3, line: 472, type: !964)
!4779 = !DILocation(line: 470, column: 58, scope: !4775)
!4780 = !DILocation(line: 472, column: 2, scope: !4775)
!4781 = !DILocation(line: 472, column: 18, scope: !4775)
!4782 = !DILocation(line: 472, column: 25, scope: !4775)
!4783 = !DILocation(line: 472, column: 29, scope: !4775)
!4784 = !DILocation(line: 472, column: 37, scope: !4775)
!4785 = !DILocation(line: 474, column: 35, scope: !4775)
!4786 = !DILocation(line: 474, column: 2, scope: !4775)
!4787 = !DILocation(line: 475, column: 13, scope: !4775)
!4788 = !DILocation(line: 475, column: 2, scope: !4775)
!4789 = !DILocation(line: 476, column: 14, scope: !4775)
!4790 = !DILocation(line: 476, column: 2, scope: !4775)
!4791 = !DILocation(line: 477, column: 1, scope: !4775)
!4792 = !DISubprogram(name: "kernfs_unbreak_active_protection", scope: !93, file: !93, line: 439, type: !4229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4793 = distinct !DISubprogram(name: "sysfs_remove_file_ns", scope: !3, file: !3, line: 488, type: !4794, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4796)
!4794 = !DISubroutineType(types: !4795)
!4795 = !{null, !964, !4236, !210}
!4796 = !{!4797, !4798, !4799, !4800}
!4797 = !DILocalVariable(name: "kobj", arg: 1, scope: !4793, file: !3, line: 488, type: !964)
!4798 = !DILocalVariable(name: "attr", arg: 2, scope: !4793, file: !3, line: 488, type: !4236)
!4799 = !DILocalVariable(name: "ns", arg: 3, scope: !4793, file: !3, line: 489, type: !210)
!4800 = !DILocalVariable(name: "parent", scope: !4793, file: !3, line: 491, type: !188)
!4801 = !DILocation(line: 488, column: 43, scope: !4793)
!4802 = !DILocation(line: 488, column: 73, scope: !4793)
!4803 = !DILocation(line: 489, column: 18, scope: !4793)
!4804 = !DILocation(line: 491, column: 2, scope: !4793)
!4805 = !DILocation(line: 491, column: 22, scope: !4793)
!4806 = !DILocation(line: 491, column: 31, scope: !4793)
!4807 = !DILocation(line: 491, column: 37, scope: !4793)
!4808 = !DILocation(line: 493, column: 27, scope: !4793)
!4809 = !DILocation(line: 493, column: 35, scope: !4793)
!4810 = !DILocation(line: 493, column: 41, scope: !4793)
!4811 = !DILocation(line: 493, column: 47, scope: !4793)
!4812 = !DILocation(line: 493, column: 2, scope: !4793)
!4813 = !DILocation(line: 494, column: 1, scope: !4793)
!4814 = !DISubprogram(name: "kernfs_remove_by_name_ns", scope: !93, file: !93, line: 441, type: !4815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!183, !188, !199, !210}
!4817 = distinct !DISubprogram(name: "sysfs_remove_file_self", scope: !3, file: !3, line: 504, type: !4818, scopeLine: 505, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4820)
!4818 = !DISubroutineType(types: !4819)
!4819 = !{!542, !964, !4236}
!4820 = !{!4821, !4822, !4823, !4824, !4825, !4826, !4829}
!4821 = !DILocalVariable(name: "kobj", arg: 1, scope: !4817, file: !3, line: 504, type: !964)
!4822 = !DILocalVariable(name: "attr", arg: 2, scope: !4817, file: !3, line: 504, type: !4236)
!4823 = !DILocalVariable(name: "parent", scope: !4817, file: !3, line: 506, type: !188)
!4824 = !DILocalVariable(name: "kn", scope: !4817, file: !3, line: 507, type: !188)
!4825 = !DILocalVariable(name: "ret", scope: !4817, file: !3, line: 508, type: !542)
!4826 = !DILocalVariable(name: "__ret_warn_on", scope: !4827, file: !3, line: 511, type: !183)
!4827 = distinct !DILexicalBlock(scope: !4828, file: !3, line: 511, column: 6)
!4828 = distinct !DILexicalBlock(scope: !4817, file: !3, line: 511, column: 6)
!4829 = !DILocalVariable(name: "__flags", scope: !4830, file: !3, line: 511, type: !183)
!4830 = distinct !DILexicalBlock(scope: !4831, file: !3, line: 511, column: 6)
!4831 = distinct !DILexicalBlock(scope: !4827, file: !3, line: 511, column: 6)
!4832 = !DILocation(line: 504, column: 45, scope: !4817)
!4833 = !DILocation(line: 504, column: 75, scope: !4817)
!4834 = !DILocation(line: 506, column: 2, scope: !4817)
!4835 = !DILocation(line: 506, column: 22, scope: !4817)
!4836 = !DILocation(line: 506, column: 31, scope: !4817)
!4837 = !DILocation(line: 506, column: 37, scope: !4817)
!4838 = !DILocation(line: 507, column: 2, scope: !4817)
!4839 = !DILocation(line: 507, column: 22, scope: !4817)
!4840 = !DILocation(line: 508, column: 2, scope: !4817)
!4841 = !DILocation(line: 508, column: 7, scope: !4817)
!4842 = !DILocation(line: 510, column: 27, scope: !4817)
!4843 = !DILocation(line: 510, column: 35, scope: !4817)
!4844 = !DILocation(line: 510, column: 41, scope: !4817)
!4845 = !DILocation(line: 510, column: 7, scope: !4817)
!4846 = !DILocation(line: 510, column: 5, scope: !4817)
!4847 = !DILocation(line: 511, column: 6, scope: !4827)
!4848 = !DILocation(line: 511, column: 6, scope: !4831)
!4849 = !DILocation(line: 511, column: 6, scope: !4830)
!4850 = !DILocation(line: 511, column: 6, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 511, column: 6)
!4852 = !DILocation(line: 511, column: 6, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 511, column: 6)
!4854 = !{i64 2154206671, i64 2154206700, i64 2154206746, i64 2154206804, i64 2154206858, i64 2154206912, i64 2154206967, i64 2154206998, i64 2154207306, i64 2154207312, i64 2154207359, i64 2154207382, i64 2154207408}
!4855 = !DILocation(line: 511, column: 6, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4830, file: !3, line: 511, column: 6)
!4857 = !DILocation(line: 511, column: 6, scope: !4828)
!4858 = !DILocation(line: 511, column: 6, scope: !4817)
!4859 = !DILocation(line: 512, column: 3, scope: !4828)
!4860 = !DILocation(line: 514, column: 27, scope: !4817)
!4861 = !DILocation(line: 514, column: 8, scope: !4817)
!4862 = !DILocation(line: 514, column: 6, scope: !4817)
!4863 = !DILocation(line: 516, column: 13, scope: !4817)
!4864 = !DILocation(line: 516, column: 2, scope: !4817)
!4865 = !DILocation(line: 517, column: 9, scope: !4817)
!4866 = !{i8 0, i8 2}
!4867 = !DILocation(line: 517, column: 2, scope: !4817)
!4868 = !DILocation(line: 518, column: 1, scope: !4817)
!4869 = !DISubprogram(name: "kernfs_remove_self", scope: !93, file: !93, line: 440, type: !4870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4870 = !DISubroutineType(types: !4871)
!4871 = !{!542, !188}
!4872 = distinct !DISubprogram(name: "sysfs_remove_files", scope: !3, file: !3, line: 521, type: !4873, scopeLine: 522, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4875)
!4873 = !DISubroutineType(types: !4874)
!4874 = !{null, !964, !4558}
!4875 = !{!4876, !4877, !4878}
!4876 = !DILocalVariable(name: "kobj", arg: 1, scope: !4872, file: !3, line: 521, type: !964)
!4877 = !DILocalVariable(name: "ptr", arg: 2, scope: !4872, file: !3, line: 521, type: !4558)
!4878 = !DILocalVariable(name: "i", scope: !4872, file: !3, line: 523, type: !183)
!4879 = !DILocation(line: 521, column: 41, scope: !4872)
!4880 = !DILocation(line: 521, column: 79, scope: !4872)
!4881 = !DILocation(line: 523, column: 2, scope: !4872)
!4882 = !DILocation(line: 523, column: 6, scope: !4872)
!4883 = !DILocation(line: 525, column: 9, scope: !4884)
!4884 = distinct !DILexicalBlock(scope: !4872, file: !3, line: 525, column: 2)
!4885 = !DILocation(line: 525, column: 7, scope: !4884)
!4886 = !DILocation(line: 525, column: 14, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 525, column: 2)
!4888 = !DILocation(line: 525, column: 18, scope: !4887)
!4889 = !DILocation(line: 525, column: 2, scope: !4884)
!4890 = !DILocation(line: 526, column: 21, scope: !4887)
!4891 = !DILocation(line: 526, column: 27, scope: !4887)
!4892 = !DILocation(line: 526, column: 31, scope: !4887)
!4893 = !DILocation(line: 526, column: 3, scope: !4887)
!4894 = !DILocation(line: 525, column: 23, scope: !4887)
!4895 = !DILocation(line: 525, column: 2, scope: !4887)
!4896 = distinct !{!4896, !4889, !4897, !4592, !4593}
!4897 = !DILocation(line: 526, column: 33, scope: !4884)
!4898 = !DILocation(line: 527, column: 1, scope: !4872)
!4899 = distinct !DISubprogram(name: "sysfs_remove_file_from_group", scope: !3, file: !3, line: 536, type: !4900, scopeLine: 538, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4902)
!4900 = !DISubroutineType(types: !4901)
!4901 = !{null, !964, !4236, !199}
!4902 = !{!4903, !4904, !4905, !4906}
!4903 = !DILocalVariable(name: "kobj", arg: 1, scope: !4899, file: !3, line: 536, type: !964)
!4904 = !DILocalVariable(name: "attr", arg: 2, scope: !4899, file: !3, line: 537, type: !4236)
!4905 = !DILocalVariable(name: "group", arg: 3, scope: !4899, file: !3, line: 537, type: !199)
!4906 = !DILocalVariable(name: "parent", scope: !4899, file: !3, line: 539, type: !188)
!4907 = !DILocation(line: 536, column: 51, scope: !4899)
!4908 = !DILocation(line: 537, column: 27, scope: !4899)
!4909 = !DILocation(line: 537, column: 45, scope: !4899)
!4910 = !DILocation(line: 539, column: 2, scope: !4899)
!4911 = !DILocation(line: 539, column: 22, scope: !4899)
!4912 = !DILocation(line: 541, column: 6, scope: !4913)
!4913 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 541, column: 6)
!4914 = !DILocation(line: 541, column: 6, scope: !4899)
!4915 = !DILocation(line: 542, column: 32, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 541, column: 13)
!4917 = !DILocation(line: 542, column: 38, scope: !4916)
!4918 = !DILocation(line: 542, column: 42, scope: !4916)
!4919 = !DILocation(line: 542, column: 12, scope: !4916)
!4920 = !DILocation(line: 542, column: 10, scope: !4916)
!4921 = !DILocation(line: 543, column: 2, scope: !4916)
!4922 = !DILocation(line: 544, column: 12, scope: !4923)
!4923 = distinct !DILexicalBlock(scope: !4913, file: !3, line: 543, column: 9)
!4924 = !DILocation(line: 544, column: 18, scope: !4923)
!4925 = !DILocation(line: 544, column: 10, scope: !4923)
!4926 = !DILocation(line: 545, column: 14, scope: !4923)
!4927 = !DILocation(line: 545, column: 3, scope: !4923)
!4928 = !DILocation(line: 548, column: 6, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4899, file: !3, line: 548, column: 6)
!4930 = !DILocation(line: 548, column: 6, scope: !4899)
!4931 = !DILocation(line: 549, column: 25, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4929, file: !3, line: 548, column: 14)
!4933 = !DILocation(line: 549, column: 33, scope: !4932)
!4934 = !DILocation(line: 549, column: 39, scope: !4932)
!4935 = !DILocation(line: 549, column: 3, scope: !4932)
!4936 = !DILocation(line: 550, column: 14, scope: !4932)
!4937 = !DILocation(line: 550, column: 3, scope: !4932)
!4938 = !DILocation(line: 551, column: 2, scope: !4932)
!4939 = !DILocation(line: 552, column: 1, scope: !4899)
!4940 = distinct !DISubprogram(name: "kernfs_remove_by_name", scope: !93, file: !93, line: 621, type: !4941, scopeLine: 623, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4943)
!4941 = !DISubroutineType(types: !4942)
!4942 = !{!183, !188, !199}
!4943 = !{!4944, !4945}
!4944 = !DILocalVariable(name: "parent", arg: 1, scope: !4940, file: !93, line: 621, type: !188)
!4945 = !DILocalVariable(name: "name", arg: 2, scope: !4940, file: !93, line: 622, type: !199)
!4946 = !DILocation(line: 621, column: 61, scope: !4940)
!4947 = !DILocation(line: 622, column: 18, scope: !4940)
!4948 = !DILocation(line: 624, column: 34, scope: !4940)
!4949 = !DILocation(line: 624, column: 42, scope: !4940)
!4950 = !DILocation(line: 624, column: 9, scope: !4940)
!4951 = !DILocation(line: 624, column: 2, scope: !4940)
!4952 = distinct !DISubprogram(name: "sysfs_create_bin_file", scope: !3, file: !3, line: 560, type: !4953, scopeLine: 562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4955)
!4953 = !DISubroutineType(types: !4954)
!4954 = !{!183, !964, !4419}
!4955 = !{!4956, !4957, !4958, !4959, !4960, !4963}
!4956 = !DILocalVariable(name: "kobj", arg: 1, scope: !4952, file: !3, line: 560, type: !964)
!4957 = !DILocalVariable(name: "attr", arg: 2, scope: !4952, file: !3, line: 561, type: !4419)
!4958 = !DILocalVariable(name: "uid", scope: !4952, file: !3, line: 563, type: !422)
!4959 = !DILocalVariable(name: "gid", scope: !4952, file: !3, line: 564, type: !440)
!4960 = !DILocalVariable(name: "__ret_warn_on", scope: !4961, file: !3, line: 566, type: !183)
!4961 = distinct !DILexicalBlock(scope: !4962, file: !3, line: 566, column: 6)
!4962 = distinct !DILexicalBlock(scope: !4952, file: !3, line: 566, column: 6)
!4963 = !DILocalVariable(name: "__flags", scope: !4964, file: !3, line: 566, type: !183)
!4964 = distinct !DILexicalBlock(scope: !4965, file: !3, line: 566, column: 6)
!4965 = distinct !DILexicalBlock(scope: !4961, file: !3, line: 566, column: 6)
!4966 = !DILocation(line: 560, column: 43, scope: !4952)
!4967 = !DILocation(line: 561, column: 34, scope: !4952)
!4968 = !DILocation(line: 563, column: 2, scope: !4952)
!4969 = !DILocation(line: 563, column: 9, scope: !4952)
!4970 = !DILocation(line: 564, column: 2, scope: !4952)
!4971 = !DILocation(line: 564, column: 9, scope: !4952)
!4972 = !DILocation(line: 566, column: 6, scope: !4961)
!4973 = !DILocation(line: 566, column: 6, scope: !4965)
!4974 = !DILocation(line: 566, column: 6, scope: !4964)
!4975 = !DILocation(line: 566, column: 6, scope: !4976)
!4976 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 566, column: 6)
!4977 = !DILocation(line: 566, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 566, column: 6)
!4979 = !{i64 2154214018, i64 2154214047, i64 2154214093, i64 2154214151, i64 2154214205, i64 2154214259, i64 2154214314, i64 2154214345, i64 2154214653, i64 2154214659, i64 2154214706, i64 2154214729, i64 2154214755}
!4980 = !DILocation(line: 566, column: 6, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 566, column: 6)
!4982 = !DILocation(line: 566, column: 6, scope: !4962)
!4983 = !DILocation(line: 566, column: 6, scope: !4952)
!4984 = !DILocation(line: 567, column: 3, scope: !4962)
!4985 = !DILocation(line: 569, column: 24, scope: !4952)
!4986 = !DILocation(line: 569, column: 2, scope: !4952)
!4987 = !DILocation(line: 570, column: 36, scope: !4952)
!4988 = !DILocation(line: 570, column: 42, scope: !4952)
!4989 = !DILocation(line: 570, column: 46, scope: !4952)
!4990 = !DILocation(line: 570, column: 52, scope: !4952)
!4991 = !DILocation(line: 570, column: 58, scope: !4952)
!4992 = !DILocation(line: 570, column: 63, scope: !4952)
!4993 = !DILocation(line: 570, column: 9, scope: !4952)
!4994 = !DILocation(line: 570, column: 2, scope: !4952)
!4995 = !DILocation(line: 572, column: 1, scope: !4952)
!4996 = distinct !DISubprogram(name: "sysfs_remove_bin_file", scope: !3, file: !3, line: 580, type: !4997, scopeLine: 582, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4999)
!4997 = !DISubroutineType(types: !4998)
!4998 = !{null, !964, !4419}
!4999 = !{!5000, !5001}
!5000 = !DILocalVariable(name: "kobj", arg: 1, scope: !4996, file: !3, line: 580, type: !964)
!5001 = !DILocalVariable(name: "attr", arg: 2, scope: !4996, file: !3, line: 581, type: !4419)
!5002 = !DILocation(line: 580, column: 44, scope: !4996)
!5003 = !DILocation(line: 581, column: 35, scope: !4996)
!5004 = !DILocation(line: 583, column: 24, scope: !4996)
!5005 = !DILocation(line: 583, column: 30, scope: !4996)
!5006 = !DILocation(line: 583, column: 34, scope: !4996)
!5007 = !DILocation(line: 583, column: 40, scope: !4996)
!5008 = !DILocation(line: 583, column: 45, scope: !4996)
!5009 = !DILocation(line: 583, column: 2, scope: !4996)
!5010 = !DILocation(line: 584, column: 1, scope: !4996)
!5011 = distinct !DISubprogram(name: "sysfs_link_change_owner", scope: !3, file: !3, line: 612, type: !5012, scopeLine: 614, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5014)
!5012 = !DISubroutineType(types: !5013)
!5013 = !{!183, !964, !964, !199, !422, !440}
!5014 = !{!5015, !5016, !5017, !5018, !5019, !5020, !5021, !5022}
!5015 = !DILocalVariable(name: "kobj", arg: 1, scope: !5011, file: !3, line: 612, type: !964)
!5016 = !DILocalVariable(name: "targ", arg: 2, scope: !5011, file: !3, line: 612, type: !964)
!5017 = !DILocalVariable(name: "name", arg: 3, scope: !5011, file: !3, line: 613, type: !199)
!5018 = !DILocalVariable(name: "kuid", arg: 4, scope: !5011, file: !3, line: 613, type: !422)
!5019 = !DILocalVariable(name: "kgid", arg: 5, scope: !5011, file: !3, line: 613, type: !440)
!5020 = !DILocalVariable(name: "kn", scope: !5011, file: !3, line: 615, type: !188)
!5021 = !DILocalVariable(name: "error", scope: !5011, file: !3, line: 616, type: !183)
!5022 = !DILabel(scope: !5011, name: "out", file: !3, line: 634)
!5023 = !DILocation(line: 612, column: 45, scope: !5011)
!5024 = !DILocation(line: 612, column: 67, scope: !5011)
!5025 = !DILocation(line: 613, column: 20, scope: !5011)
!5026 = !DILocation(line: 613, column: 33, scope: !5011)
!5027 = !DILocation(line: 613, column: 46, scope: !5011)
!5028 = !DILocation(line: 615, column: 2, scope: !5011)
!5029 = !DILocation(line: 615, column: 22, scope: !5011)
!5030 = !DILocation(line: 616, column: 2, scope: !5011)
!5031 = !DILocation(line: 616, column: 6, scope: !5011)
!5032 = !DILocation(line: 618, column: 7, scope: !5033)
!5033 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 618, column: 6)
!5034 = !DILocation(line: 618, column: 12, scope: !5033)
!5035 = !DILocation(line: 618, column: 16, scope: !5033)
!5036 = !DILocation(line: 618, column: 22, scope: !5033)
!5037 = !DILocation(line: 618, column: 37, scope: !5033)
!5038 = !DILocation(line: 618, column: 41, scope: !5033)
!5039 = !DILocation(line: 618, column: 47, scope: !5033)
!5040 = !DILocation(line: 618, column: 6, scope: !5011)
!5041 = !DILocation(line: 619, column: 3, scope: !5033)
!5042 = !DILocation(line: 621, column: 8, scope: !5011)
!5043 = !DILocation(line: 622, column: 30, scope: !5011)
!5044 = !DILocation(line: 622, column: 36, scope: !5011)
!5045 = !DILocation(line: 622, column: 40, scope: !5011)
!5046 = !DILocation(line: 622, column: 46, scope: !5011)
!5047 = !DILocation(line: 622, column: 52, scope: !5011)
!5048 = !DILocation(line: 622, column: 56, scope: !5011)
!5049 = !DILocation(line: 622, column: 7, scope: !5011)
!5050 = !DILocation(line: 622, column: 5, scope: !5011)
!5051 = !DILocation(line: 623, column: 7, scope: !5052)
!5052 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 623, column: 6)
!5053 = !DILocation(line: 623, column: 6, scope: !5011)
!5054 = !DILocation(line: 624, column: 3, scope: !5052)
!5055 = !DILocation(line: 626, column: 8, scope: !5011)
!5056 = !DILocation(line: 627, column: 18, scope: !5057)
!5057 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 627, column: 6)
!5058 = !DILocation(line: 627, column: 6, scope: !5057)
!5059 = !DILocation(line: 627, column: 22, scope: !5057)
!5060 = !DILocation(line: 627, column: 6, scope: !5011)
!5061 = !DILocation(line: 628, column: 3, scope: !5057)
!5062 = !DILocation(line: 629, column: 6, scope: !5063)
!5063 = distinct !DILexicalBlock(scope: !5011, file: !3, line: 629, column: 6)
!5064 = !DILocation(line: 629, column: 10, scope: !5063)
!5065 = !DILocation(line: 629, column: 18, scope: !5063)
!5066 = !DILocation(line: 629, column: 29, scope: !5063)
!5067 = !DILocation(line: 629, column: 37, scope: !5063)
!5068 = !DILocation(line: 629, column: 34, scope: !5063)
!5069 = !DILocation(line: 629, column: 6, scope: !5011)
!5070 = !DILocation(line: 630, column: 3, scope: !5063)
!5071 = !DILocation(line: 632, column: 32, scope: !5011)
!5072 = !DILocation(line: 632, column: 10, scope: !5011)
!5073 = !DILocation(line: 632, column: 8, scope: !5011)
!5074 = !DILocation(line: 632, column: 2, scope: !5011)
!5075 = !DILocation(line: 634, column: 1, scope: !5011)
!5076 = !DILocation(line: 635, column: 13, scope: !5011)
!5077 = !DILocation(line: 635, column: 2, scope: !5011)
!5078 = !DILocation(line: 636, column: 9, scope: !5011)
!5079 = !DILocation(line: 636, column: 2, scope: !5011)
!5080 = !DILocation(line: 637, column: 1, scope: !5011)
!5081 = !DISubprogram(name: "kernfs_find_and_get_ns", scope: !93, file: !93, line: 402, type: !5082, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5082 = !DISubroutineType(types: !5083)
!5083 = !{!188, !188, !199, !210}
!5084 = distinct !DISubprogram(name: "kernfs_type", scope: !93, file: !93, line: 337, type: !5085, scopeLine: 338, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5087)
!5085 = !DISubroutineType(types: !5086)
!5086 = !{!92, !188}
!5087 = !{!5088}
!5088 = !DILocalVariable(name: "kn", arg: 1, scope: !5084, file: !93, line: 337, type: !188)
!5089 = !DILocation(line: 337, column: 69, scope: !5084)
!5090 = !DILocation(line: 339, column: 9, scope: !5084)
!5091 = !DILocation(line: 339, column: 13, scope: !5084)
!5092 = !DILocation(line: 339, column: 19, scope: !5084)
!5093 = !DILocation(line: 339, column: 2, scope: !5084)
!5094 = distinct !DISubprogram(name: "internal_change_owner", scope: !3, file: !3, line: 587, type: !5095, scopeLine: 589, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5097)
!5095 = !DISubroutineType(types: !5096)
!5096 = !{!183, !188, !422, !440}
!5097 = !{!5098, !5099, !5100, !5101}
!5098 = !DILocalVariable(name: "kn", arg: 1, scope: !5094, file: !3, line: 587, type: !188)
!5099 = !DILocalVariable(name: "kuid", arg: 2, scope: !5094, file: !3, line: 587, type: !422)
!5100 = !DILocalVariable(name: "kgid", arg: 3, scope: !5094, file: !3, line: 588, type: !440)
!5101 = !DILocalVariable(name: "newattrs", scope: !5094, file: !3, line: 590, type: !789)
!5102 = !DILocation(line: 587, column: 54, scope: !5094)
!5103 = !DILocation(line: 587, column: 65, scope: !5094)
!5104 = !DILocation(line: 588, column: 13, scope: !5094)
!5105 = !DILocation(line: 590, column: 2, scope: !5094)
!5106 = !DILocation(line: 590, column: 15, scope: !5094)
!5107 = !DILocation(line: 590, column: 26, scope: !5094)
!5108 = !DILocation(line: 592, column: 13, scope: !5094)
!5109 = !DILocation(line: 593, column: 13, scope: !5094)
!5110 = !DILocation(line: 595, column: 24, scope: !5094)
!5111 = !DILocation(line: 595, column: 9, scope: !5094)
!5112 = !DILocation(line: 596, column: 1, scope: !5094)
!5113 = !DILocation(line: 595, column: 2, scope: !5094)
!5114 = distinct !DISubprogram(name: "sysfs_file_change_owner", scope: !3, file: !3, line: 651, type: !5115, scopeLine: 653, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5117)
!5115 = !DISubroutineType(types: !5116)
!5116 = !{!183, !964, !199, !422, !440}
!5117 = !{!5118, !5119, !5120, !5121, !5122, !5123}
!5118 = !DILocalVariable(name: "kobj", arg: 1, scope: !5114, file: !3, line: 651, type: !964)
!5119 = !DILocalVariable(name: "name", arg: 2, scope: !5114, file: !3, line: 651, type: !199)
!5120 = !DILocalVariable(name: "kuid", arg: 3, scope: !5114, file: !3, line: 651, type: !422)
!5121 = !DILocalVariable(name: "kgid", arg: 4, scope: !5114, file: !3, line: 652, type: !440)
!5122 = !DILocalVariable(name: "kn", scope: !5114, file: !3, line: 654, type: !188)
!5123 = !DILocalVariable(name: "error", scope: !5114, file: !3, line: 655, type: !183)
!5124 = !DILocation(line: 651, column: 45, scope: !5114)
!5125 = !DILocation(line: 651, column: 63, scope: !5114)
!5126 = !DILocation(line: 651, column: 76, scope: !5114)
!5127 = !DILocation(line: 652, column: 15, scope: !5114)
!5128 = !DILocation(line: 654, column: 2, scope: !5114)
!5129 = !DILocation(line: 654, column: 22, scope: !5114)
!5130 = !DILocation(line: 655, column: 2, scope: !5114)
!5131 = !DILocation(line: 655, column: 6, scope: !5114)
!5132 = !DILocation(line: 657, column: 7, scope: !5133)
!5133 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 657, column: 6)
!5134 = !DILocation(line: 657, column: 6, scope: !5114)
!5135 = !DILocation(line: 658, column: 3, scope: !5133)
!5136 = !DILocation(line: 660, column: 7, scope: !5137)
!5137 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 660, column: 6)
!5138 = !DILocation(line: 660, column: 13, scope: !5137)
!5139 = !DILocation(line: 660, column: 6, scope: !5114)
!5140 = !DILocation(line: 661, column: 3, scope: !5137)
!5141 = !DILocation(line: 663, column: 27, scope: !5114)
!5142 = !DILocation(line: 663, column: 33, scope: !5114)
!5143 = !DILocation(line: 663, column: 37, scope: !5114)
!5144 = !DILocation(line: 663, column: 7, scope: !5114)
!5145 = !DILocation(line: 663, column: 5, scope: !5114)
!5146 = !DILocation(line: 664, column: 7, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !5114, file: !3, line: 664, column: 6)
!5148 = !DILocation(line: 664, column: 6, scope: !5114)
!5149 = !DILocation(line: 665, column: 3, scope: !5147)
!5150 = !DILocation(line: 667, column: 32, scope: !5114)
!5151 = !DILocation(line: 667, column: 10, scope: !5114)
!5152 = !DILocation(line: 667, column: 8, scope: !5114)
!5153 = !DILocation(line: 669, column: 13, scope: !5114)
!5154 = !DILocation(line: 669, column: 2, scope: !5114)
!5155 = !DILocation(line: 671, column: 9, scope: !5114)
!5156 = !DILocation(line: 671, column: 2, scope: !5114)
!5157 = !DILocation(line: 672, column: 1, scope: !5114)
!5158 = distinct !DISubprogram(name: "sysfs_change_owner", scope: !3, file: !3, line: 693, type: !5159, scopeLine: 694, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5161)
!5159 = !DISubroutineType(types: !5160)
!5160 = !{!183, !964, !422, !440}
!5161 = !{!5162, !5163, !5164, !5165, !5166}
!5162 = !DILocalVariable(name: "kobj", arg: 1, scope: !5158, file: !3, line: 693, type: !964)
!5163 = !DILocalVariable(name: "kuid", arg: 2, scope: !5158, file: !3, line: 693, type: !422)
!5164 = !DILocalVariable(name: "kgid", arg: 3, scope: !5158, file: !3, line: 693, type: !440)
!5165 = !DILocalVariable(name: "error", scope: !5158, file: !3, line: 695, type: !183)
!5166 = !DILocalVariable(name: "ktype", scope: !5158, file: !3, line: 696, type: !1010)
!5167 = !DILocation(line: 693, column: 40, scope: !5158)
!5168 = !DILocation(line: 693, column: 53, scope: !5158)
!5169 = !DILocation(line: 693, column: 66, scope: !5158)
!5170 = !DILocation(line: 695, column: 2, scope: !5158)
!5171 = !DILocation(line: 695, column: 6, scope: !5158)
!5172 = !DILocation(line: 696, column: 2, scope: !5158)
!5173 = !DILocation(line: 696, column: 26, scope: !5158)
!5174 = !DILocation(line: 698, column: 7, scope: !5175)
!5175 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 698, column: 6)
!5176 = !DILocation(line: 698, column: 13, scope: !5175)
!5177 = !DILocation(line: 698, column: 6, scope: !5158)
!5178 = !DILocation(line: 699, column: 3, scope: !5175)
!5179 = !DILocation(line: 702, column: 32, scope: !5158)
!5180 = !DILocation(line: 702, column: 38, scope: !5158)
!5181 = !DILocation(line: 702, column: 10, scope: !5158)
!5182 = !DILocation(line: 702, column: 8, scope: !5158)
!5183 = !DILocation(line: 703, column: 6, scope: !5184)
!5184 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 703, column: 6)
!5185 = !DILocation(line: 703, column: 6, scope: !5158)
!5186 = !DILocation(line: 704, column: 10, scope: !5184)
!5187 = !DILocation(line: 704, column: 3, scope: !5184)
!5188 = !DILocation(line: 706, column: 20, scope: !5158)
!5189 = !DILocation(line: 706, column: 10, scope: !5158)
!5190 = !DILocation(line: 706, column: 8, scope: !5158)
!5191 = !DILocation(line: 707, column: 6, scope: !5192)
!5192 = distinct !DILexicalBlock(scope: !5158, file: !3, line: 707, column: 6)
!5193 = !DILocation(line: 707, column: 6, scope: !5158)
!5194 = !DILocation(line: 712, column: 37, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5192, file: !3, line: 707, column: 13)
!5196 = !DILocation(line: 712, column: 43, scope: !5195)
!5197 = !DILocation(line: 712, column: 50, scope: !5195)
!5198 = !DILocation(line: 712, column: 11, scope: !5195)
!5199 = !DILocation(line: 712, column: 9, scope: !5195)
!5200 = !DILocation(line: 714, column: 7, scope: !5201)
!5201 = distinct !DILexicalBlock(scope: !5195, file: !3, line: 714, column: 7)
!5202 = !DILocation(line: 714, column: 7, scope: !5195)
!5203 = !DILocation(line: 715, column: 11, scope: !5201)
!5204 = !DILocation(line: 715, column: 4, scope: !5201)
!5205 = !DILocation(line: 716, column: 2, scope: !5195)
!5206 = !DILocation(line: 718, column: 2, scope: !5158)
!5207 = !DILocation(line: 719, column: 1, scope: !5158)
!5208 = distinct !DISubprogram(name: "get_ktype", scope: !959, file: !959, line: 196, type: !5209, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5211)
!5209 = !DISubroutineType(types: !5210)
!5210 = !{!1010, !982}
!5211 = !{!5212}
!5212 = !DILocalVariable(name: "kobj", arg: 1, scope: !5208, file: !959, line: 196, type: !982)
!5213 = !DILocation(line: 196, column: 71, scope: !5208)
!5214 = !DILocation(line: 198, column: 9, scope: !5208)
!5215 = !DILocation(line: 198, column: 15, scope: !5208)
!5216 = !DILocation(line: 198, column: 2, scope: !5208)
!5217 = !DISubprogram(name: "sysfs_groups_change_owner", scope: !1022, file: !1022, line: 350, type: !5218, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5218 = !DISubroutineType(types: !5219)
!5219 = !{!183, !964, !1038, !422, !440}
!5220 = distinct !DISubprogram(name: "sysfs_emit", scope: !3, file: !3, line: 731, type: !5221, scopeLine: 732, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5223)
!5221 = !DISubroutineType(types: !5222)
!5222 = !{!183, !553, !199, null}
!5223 = !{!5224, !5225, !5226, !5237, !5238, !5241}
!5224 = !DILocalVariable(name: "buf", arg: 1, scope: !5220, file: !3, line: 731, type: !553)
!5225 = !DILocalVariable(name: "fmt", arg: 2, scope: !5220, file: !3, line: 731, type: !199)
!5226 = !DILocalVariable(name: "args", scope: !5220, file: !3, line: 733, type: !5227)
!5227 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !5228, line: 5, baseType: !5229)
!5228 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!5229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !5230)
!5230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5231, size: 192, elements: !2785)
!5231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !5232)
!5232 = !{!5233, !5234, !5235, !5236}
!5233 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !5231, file: !3, line: 733, baseType: !7, size: 32)
!5234 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !5231, file: !3, line: 733, baseType: !7, size: 32, offset: 32)
!5235 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !5231, file: !3, line: 733, baseType: !112, size: 64, offset: 64)
!5236 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !5231, file: !3, line: 733, baseType: !112, size: 64, offset: 128)
!5237 = !DILocalVariable(name: "len", scope: !5220, file: !3, line: 734, type: !183)
!5238 = !DILocalVariable(name: "__ret_warn_on", scope: !5239, file: !3, line: 736, type: !183)
!5239 = distinct !DILexicalBlock(scope: !5240, file: !3, line: 736, column: 6)
!5240 = distinct !DILexicalBlock(scope: !5220, file: !3, line: 736, column: 6)
!5241 = !DILocalVariable(name: "__flags", scope: !5242, file: !3, line: 736, type: !183)
!5242 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 736, column: 6)
!5243 = distinct !DILexicalBlock(scope: !5244, file: !3, line: 736, column: 6)
!5244 = distinct !DILexicalBlock(scope: !5239, file: !3, line: 736, column: 6)
!5245 = !DILocation(line: 731, column: 22, scope: !5220)
!5246 = !DILocation(line: 731, column: 39, scope: !5220)
!5247 = !DILocation(line: 733, column: 2, scope: !5220)
!5248 = !DILocation(line: 733, column: 10, scope: !5220)
!5249 = !DILocation(line: 734, column: 2, scope: !5220)
!5250 = !DILocation(line: 734, column: 6, scope: !5220)
!5251 = !DILocation(line: 736, column: 6, scope: !5239)
!5252 = !DILocation(line: 736, column: 6, scope: !5244)
!5253 = !DILocation(line: 736, column: 6, scope: !5243)
!5254 = !DILocation(line: 736, column: 6, scope: !5255)
!5255 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 736, column: 6)
!5256 = !DILocation(line: 736, column: 6, scope: !5242)
!5257 = !DILocation(line: 736, column: 6, scope: !5258)
!5258 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 736, column: 6)
!5259 = !DILocation(line: 736, column: 6, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 736, column: 6)
!5261 = !{i64 2154227648, i64 2154227677, i64 2154227723, i64 2154227781, i64 2154227835, i64 2154227889, i64 2154227944, i64 2154227975, i64 2154228283, i64 2154228289, i64 2154228336, i64 2154228359, i64 2154228385}
!5262 = !DILocation(line: 736, column: 6, scope: !5263)
!5263 = distinct !DILexicalBlock(scope: !5242, file: !3, line: 736, column: 6)
!5264 = !DILocation(line: 736, column: 6, scope: !5265)
!5265 = distinct !DILexicalBlock(scope: !5243, file: !3, line: 736, column: 6)
!5266 = !DILocation(line: 736, column: 6, scope: !5240)
!5267 = !DILocation(line: 736, column: 6, scope: !5220)
!5268 = !DILocation(line: 738, column: 3, scope: !5240)
!5269 = !DILocation(line: 740, column: 2, scope: !5220)
!5270 = !DILocation(line: 741, column: 19, scope: !5220)
!5271 = !DILocation(line: 741, column: 35, scope: !5220)
!5272 = !DILocation(line: 741, column: 40, scope: !5220)
!5273 = !DILocation(line: 741, column: 8, scope: !5220)
!5274 = !DILocation(line: 741, column: 6, scope: !5220)
!5275 = !DILocation(line: 742, column: 2, scope: !5220)
!5276 = !DILocation(line: 744, column: 9, scope: !5220)
!5277 = !DILocation(line: 744, column: 2, scope: !5220)
!5278 = !DILocation(line: 745, column: 1, scope: !5220)
!5279 = !DISubprogram(name: "vscnprintf", scope: !5280, file: !5280, line: 15, type: !5281, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5280 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!5281 = !DISubroutineType(types: !5282)
!5282 = !{!183, !553, !856, !199, !5283}
!5283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5231, size: 64)
!5284 = distinct !DISubprogram(name: "sysfs_emit_at", scope: !3, file: !3, line: 759, type: !5285, scopeLine: 760, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5287)
!5285 = !DISubroutineType(types: !5286)
!5286 = !{!183, !553, !183, !199, null}
!5287 = !{!5288, !5289, !5290, !5291, !5292, !5293, !5296}
!5288 = !DILocalVariable(name: "buf", arg: 1, scope: !5284, file: !3, line: 759, type: !553)
!5289 = !DILocalVariable(name: "at", arg: 2, scope: !5284, file: !3, line: 759, type: !183)
!5290 = !DILocalVariable(name: "fmt", arg: 3, scope: !5284, file: !3, line: 759, type: !199)
!5291 = !DILocalVariable(name: "args", scope: !5284, file: !3, line: 761, type: !5227)
!5292 = !DILocalVariable(name: "len", scope: !5284, file: !3, line: 762, type: !183)
!5293 = !DILocalVariable(name: "__ret_warn_on", scope: !5294, file: !3, line: 764, type: !183)
!5294 = distinct !DILexicalBlock(scope: !5295, file: !3, line: 764, column: 6)
!5295 = distinct !DILexicalBlock(scope: !5284, file: !3, line: 764, column: 6)
!5296 = !DILocalVariable(name: "__flags", scope: !5297, file: !3, line: 764, type: !183)
!5297 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 764, column: 6)
!5298 = distinct !DILexicalBlock(scope: !5299, file: !3, line: 764, column: 6)
!5299 = distinct !DILexicalBlock(scope: !5294, file: !3, line: 764, column: 6)
!5300 = !DILocation(line: 759, column: 25, scope: !5284)
!5301 = !DILocation(line: 759, column: 34, scope: !5284)
!5302 = !DILocation(line: 759, column: 50, scope: !5284)
!5303 = !DILocation(line: 761, column: 2, scope: !5284)
!5304 = !DILocation(line: 761, column: 10, scope: !5284)
!5305 = !DILocation(line: 762, column: 2, scope: !5284)
!5306 = !DILocation(line: 762, column: 6, scope: !5284)
!5307 = !DILocation(line: 764, column: 6, scope: !5294)
!5308 = !DILocation(line: 764, column: 6, scope: !5299)
!5309 = !DILocation(line: 764, column: 6, scope: !5298)
!5310 = !DILocation(line: 764, column: 6, scope: !5311)
!5311 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 764, column: 6)
!5312 = !DILocation(line: 764, column: 6, scope: !5297)
!5313 = !DILocation(line: 764, column: 6, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 764, column: 6)
!5315 = !DILocation(line: 764, column: 6, scope: !5316)
!5316 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 764, column: 6)
!5317 = !{i64 2154231435, i64 2154231464, i64 2154231510, i64 2154231568, i64 2154231622, i64 2154231676, i64 2154231731, i64 2154231762, i64 2154232070, i64 2154232076, i64 2154232123, i64 2154232146, i64 2154232172}
!5318 = !DILocation(line: 764, column: 6, scope: !5319)
!5319 = distinct !DILexicalBlock(scope: !5297, file: !3, line: 764, column: 6)
!5320 = !DILocation(line: 764, column: 6, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5298, file: !3, line: 764, column: 6)
!5322 = !DILocation(line: 764, column: 6, scope: !5295)
!5323 = !DILocation(line: 764, column: 6, scope: !5284)
!5324 = !DILocation(line: 766, column: 3, scope: !5295)
!5325 = !DILocation(line: 768, column: 2, scope: !5284)
!5326 = !DILocation(line: 769, column: 19, scope: !5284)
!5327 = !DILocation(line: 769, column: 25, scope: !5284)
!5328 = !DILocation(line: 769, column: 23, scope: !5284)
!5329 = !DILocation(line: 769, column: 41, scope: !5284)
!5330 = !DILocation(line: 769, column: 39, scope: !5284)
!5331 = !DILocation(line: 769, column: 45, scope: !5284)
!5332 = !DILocation(line: 769, column: 50, scope: !5284)
!5333 = !DILocation(line: 769, column: 8, scope: !5284)
!5334 = !DILocation(line: 769, column: 6, scope: !5284)
!5335 = !DILocation(line: 770, column: 2, scope: !5284)
!5336 = !DILocation(line: 772, column: 9, scope: !5284)
!5337 = !DILocation(line: 772, column: 2, scope: !5284)
!5338 = !DILocation(line: 773, column: 1, scope: !5284)
!5339 = distinct !DISubprogram(name: "sysfs_kf_read", scope: !3, file: !3, line: 101, type: !4110, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5340)
!5340 = !{!5341, !5342, !5343, !5344, !5345, !5346, !5347, !5348, !5351, !5354, !5356}
!5341 = !DILocalVariable(name: "of", arg: 1, scope: !5339, file: !3, line: 101, type: !184)
!5342 = !DILocalVariable(name: "buf", arg: 2, scope: !5339, file: !3, line: 101, type: !553)
!5343 = !DILocalVariable(name: "count", arg: 3, scope: !5339, file: !3, line: 102, type: !856)
!5344 = !DILocalVariable(name: "pos", arg: 4, scope: !5339, file: !3, line: 102, type: !241)
!5345 = !DILocalVariable(name: "ops", scope: !5339, file: !3, line: 104, type: !1019)
!5346 = !DILocalVariable(name: "kobj", scope: !5339, file: !3, line: 105, type: !964)
!5347 = !DILocalVariable(name: "len", scope: !5339, file: !3, line: 106, type: !114)
!5348 = !DILocalVariable(name: "__ret_warn_on", scope: !5349, file: !3, line: 112, type: !183)
!5349 = distinct !DILexicalBlock(scope: !5350, file: !3, line: 112, column: 6)
!5350 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 112, column: 6)
!5351 = !DILocalVariable(name: "__flags", scope: !5352, file: !3, line: 112, type: !183)
!5352 = distinct !DILexicalBlock(scope: !5353, file: !3, line: 112, column: 6)
!5353 = distinct !DILexicalBlock(scope: !5349, file: !3, line: 112, column: 6)
!5354 = !DILocalVariable(name: "__UNIQUE_ID___x287", scope: !5355, file: !3, line: 123, type: !114)
!5355 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 123, column: 9)
!5356 = !DILocalVariable(name: "__UNIQUE_ID___y288", scope: !5355, file: !3, line: 123, type: !114)
!5357 = !DILocation(line: 101, column: 55, scope: !5339)
!5358 = !DILocation(line: 101, column: 65, scope: !5339)
!5359 = !DILocation(line: 102, column: 16, scope: !5339)
!5360 = !DILocation(line: 102, column: 30, scope: !5339)
!5361 = !DILocation(line: 104, column: 2, scope: !5339)
!5362 = !DILocation(line: 104, column: 26, scope: !5339)
!5363 = !DILocation(line: 104, column: 47, scope: !5339)
!5364 = !DILocation(line: 104, column: 51, scope: !5339)
!5365 = !DILocation(line: 104, column: 32, scope: !5339)
!5366 = !DILocation(line: 105, column: 2, scope: !5339)
!5367 = !DILocation(line: 105, column: 18, scope: !5339)
!5368 = !DILocation(line: 105, column: 25, scope: !5339)
!5369 = !DILocation(line: 105, column: 29, scope: !5339)
!5370 = !DILocation(line: 105, column: 33, scope: !5339)
!5371 = !DILocation(line: 105, column: 41, scope: !5339)
!5372 = !DILocation(line: 106, column: 2, scope: !5339)
!5373 = !DILocation(line: 106, column: 10, scope: !5339)
!5374 = !DILocation(line: 112, column: 6, scope: !5349)
!5375 = !DILocation(line: 112, column: 6, scope: !5353)
!5376 = !DILocation(line: 112, column: 6, scope: !5352)
!5377 = !DILocation(line: 112, column: 6, scope: !5378)
!5378 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 112, column: 6)
!5379 = !DILocation(line: 112, column: 6, scope: !5380)
!5380 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 112, column: 6)
!5381 = !{i64 2154162516, i64 2154162545, i64 2154162591, i64 2154162649, i64 2154162703, i64 2154162757, i64 2154162812, i64 2154162843, i64 2154163151, i64 2154163157, i64 2154163204, i64 2154163227, i64 2154163253}
!5382 = !DILocation(line: 112, column: 6, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5352, file: !3, line: 112, column: 6)
!5384 = !DILocation(line: 112, column: 6, scope: !5350)
!5385 = !DILocation(line: 112, column: 6, scope: !5339)
!5386 = !DILocation(line: 113, column: 3, scope: !5350)
!5387 = !DILocation(line: 114, column: 8, scope: !5339)
!5388 = !DILocation(line: 114, column: 13, scope: !5339)
!5389 = !DILocation(line: 114, column: 18, scope: !5339)
!5390 = !DILocation(line: 114, column: 24, scope: !5339)
!5391 = !DILocation(line: 114, column: 28, scope: !5339)
!5392 = !DILocation(line: 114, column: 32, scope: !5339)
!5393 = !DILocation(line: 114, column: 38, scope: !5339)
!5394 = !DILocation(line: 114, column: 6, scope: !5339)
!5395 = !DILocation(line: 115, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 115, column: 6)
!5397 = !DILocation(line: 115, column: 10, scope: !5396)
!5398 = !DILocation(line: 115, column: 6, scope: !5339)
!5399 = !DILocation(line: 116, column: 10, scope: !5396)
!5400 = !DILocation(line: 116, column: 3, scope: !5396)
!5401 = !DILocation(line: 117, column: 6, scope: !5402)
!5402 = distinct !DILexicalBlock(scope: !5339, file: !3, line: 117, column: 6)
!5403 = !DILocation(line: 117, column: 6, scope: !5339)
!5404 = !DILocation(line: 118, column: 7, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !5406, file: !3, line: 118, column: 7)
!5406 = distinct !DILexicalBlock(scope: !5402, file: !3, line: 117, column: 11)
!5407 = !DILocation(line: 118, column: 14, scope: !5405)
!5408 = !DILocation(line: 118, column: 11, scope: !5405)
!5409 = !DILocation(line: 118, column: 7, scope: !5406)
!5410 = !DILocation(line: 119, column: 4, scope: !5405)
!5411 = !DILocation(line: 120, column: 10, scope: !5406)
!5412 = !DILocation(line: 120, column: 7, scope: !5406)
!5413 = !DILocation(line: 121, column: 11, scope: !5406)
!5414 = !DILocation(line: 121, column: 16, scope: !5406)
!5415 = !DILocation(line: 121, column: 22, scope: !5406)
!5416 = !DILocation(line: 121, column: 20, scope: !5406)
!5417 = !DILocation(line: 121, column: 27, scope: !5406)
!5418 = !DILocation(line: 121, column: 3, scope: !5406)
!5419 = !DILocation(line: 122, column: 2, scope: !5406)
!5420 = !DILocation(line: 123, column: 9, scope: !5355)
!5421 = !DILocation(line: 123, column: 9, scope: !5339)
!5422 = !DILocation(line: 123, column: 2, scope: !5339)
!5423 = !DILocation(line: 124, column: 1, scope: !5339)
!5424 = distinct !DISubprogram(name: "sysfs_kf_write", scope: !3, file: !3, line: 127, type: !4110, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5425)
!5425 = !{!5426, !5427, !5428, !5429, !5430, !5431}
!5426 = !DILocalVariable(name: "of", arg: 1, scope: !5424, file: !3, line: 127, type: !184)
!5427 = !DILocalVariable(name: "buf", arg: 2, scope: !5424, file: !3, line: 127, type: !553)
!5428 = !DILocalVariable(name: "count", arg: 3, scope: !5424, file: !3, line: 128, type: !856)
!5429 = !DILocalVariable(name: "pos", arg: 4, scope: !5424, file: !3, line: 128, type: !241)
!5430 = !DILocalVariable(name: "ops", scope: !5424, file: !3, line: 130, type: !1019)
!5431 = !DILocalVariable(name: "kobj", scope: !5424, file: !3, line: 131, type: !964)
!5432 = !DILocation(line: 127, column: 56, scope: !5424)
!5433 = !DILocation(line: 127, column: 66, scope: !5424)
!5434 = !DILocation(line: 128, column: 17, scope: !5424)
!5435 = !DILocation(line: 128, column: 31, scope: !5424)
!5436 = !DILocation(line: 130, column: 2, scope: !5424)
!5437 = !DILocation(line: 130, column: 26, scope: !5424)
!5438 = !DILocation(line: 130, column: 47, scope: !5424)
!5439 = !DILocation(line: 130, column: 51, scope: !5424)
!5440 = !DILocation(line: 130, column: 32, scope: !5424)
!5441 = !DILocation(line: 131, column: 2, scope: !5424)
!5442 = !DILocation(line: 131, column: 18, scope: !5424)
!5443 = !DILocation(line: 131, column: 25, scope: !5424)
!5444 = !DILocation(line: 131, column: 29, scope: !5424)
!5445 = !DILocation(line: 131, column: 33, scope: !5424)
!5446 = !DILocation(line: 131, column: 41, scope: !5424)
!5447 = !DILocation(line: 133, column: 7, scope: !5448)
!5448 = distinct !DILexicalBlock(scope: !5424, file: !3, line: 133, column: 6)
!5449 = !DILocation(line: 133, column: 6, scope: !5424)
!5450 = !DILocation(line: 134, column: 3, scope: !5448)
!5451 = !DILocation(line: 136, column: 9, scope: !5424)
!5452 = !DILocation(line: 136, column: 14, scope: !5424)
!5453 = !DILocation(line: 136, column: 20, scope: !5424)
!5454 = !DILocation(line: 136, column: 26, scope: !5424)
!5455 = !DILocation(line: 136, column: 30, scope: !5424)
!5456 = !DILocation(line: 136, column: 34, scope: !5424)
!5457 = !DILocation(line: 136, column: 40, scope: !5424)
!5458 = !DILocation(line: 136, column: 45, scope: !5424)
!5459 = !DILocation(line: 136, column: 2, scope: !5424)
!5460 = !DILocation(line: 137, column: 1, scope: !5424)
!5461 = distinct !DISubprogram(name: "sysfs_file_ops", scope: !3, file: !3, line: 26, type: !5462, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5464)
!5462 = !DISubroutineType(types: !5463)
!5463 = !{!1019, !188}
!5464 = !{!5465, !5466}
!5465 = !DILocalVariable(name: "kn", arg: 1, scope: !5461, file: !3, line: 26, type: !188)
!5466 = !DILocalVariable(name: "kobj", scope: !5461, file: !3, line: 28, type: !964)
!5467 = !DILocation(line: 26, column: 67, scope: !5461)
!5468 = !DILocation(line: 28, column: 2, scope: !5461)
!5469 = !DILocation(line: 28, column: 18, scope: !5461)
!5470 = !DILocation(line: 28, column: 25, scope: !5461)
!5471 = !DILocation(line: 28, column: 29, scope: !5461)
!5472 = !DILocation(line: 28, column: 37, scope: !5461)
!5473 = !DILocation(line: 30, column: 6, scope: !5474)
!5474 = distinct !DILexicalBlock(scope: !5461, file: !3, line: 30, column: 6)
!5475 = !DILocation(line: 30, column: 10, scope: !5474)
!5476 = !DILocation(line: 30, column: 16, scope: !5474)
!5477 = !DILocation(line: 30, column: 6, scope: !5461)
!5478 = !DILocation(line: 31, column: 3, scope: !5474)
!5479 = !DILocation(line: 31, column: 3, scope: !5480)
!5480 = distinct !DILexicalBlock(scope: !5474, file: !3, line: 31, column: 3)
!5481 = !DILocation(line: 32, column: 9, scope: !5461)
!5482 = !DILocation(line: 32, column: 15, scope: !5461)
!5483 = !DILocation(line: 32, column: 23, scope: !5461)
!5484 = !DILocation(line: 32, column: 29, scope: !5461)
!5485 = !DILocation(line: 32, column: 36, scope: !5461)
!5486 = !DILocation(line: 33, column: 1, scope: !5461)
!5487 = !DILocation(line: 32, column: 2, scope: !5461)
!5488 = distinct !DISubprogram(name: "sysfs_kf_seq_show", scope: !3, file: !3, line: 40, type: !2246, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5489)
!5489 = !{!5490, !5491, !5492, !5493, !5494, !5495, !5496, !5497, !5500}
!5490 = !DILocalVariable(name: "sf", arg: 1, scope: !5488, file: !3, line: 40, type: !2214)
!5491 = !DILocalVariable(name: "v", arg: 2, scope: !5488, file: !3, line: 40, type: !112)
!5492 = !DILocalVariable(name: "of", scope: !5488, file: !3, line: 42, type: !184)
!5493 = !DILocalVariable(name: "kobj", scope: !5488, file: !3, line: 43, type: !964)
!5494 = !DILocalVariable(name: "ops", scope: !5488, file: !3, line: 44, type: !1019)
!5495 = !DILocalVariable(name: "count", scope: !5488, file: !3, line: 45, type: !114)
!5496 = !DILocalVariable(name: "buf", scope: !5488, file: !3, line: 46, type: !553)
!5497 = !DILocalVariable(name: "__ret_warn_on", scope: !5498, file: !3, line: 48, type: !183)
!5498 = distinct !DILexicalBlock(scope: !5499, file: !3, line: 48, column: 6)
!5499 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 48, column: 6)
!5500 = !DILocalVariable(name: "__flags", scope: !5501, file: !3, line: 48, type: !183)
!5501 = distinct !DILexicalBlock(scope: !5502, file: !3, line: 48, column: 6)
!5502 = distinct !DILexicalBlock(scope: !5498, file: !3, line: 48, column: 6)
!5503 = !DILocation(line: 40, column: 47, scope: !5488)
!5504 = !DILocation(line: 40, column: 57, scope: !5488)
!5505 = !DILocation(line: 42, column: 2, scope: !5488)
!5506 = !DILocation(line: 42, column: 27, scope: !5488)
!5507 = !DILocation(line: 42, column: 32, scope: !5488)
!5508 = !DILocation(line: 42, column: 36, scope: !5488)
!5509 = !DILocation(line: 43, column: 2, scope: !5488)
!5510 = !DILocation(line: 43, column: 18, scope: !5488)
!5511 = !DILocation(line: 43, column: 25, scope: !5488)
!5512 = !DILocation(line: 43, column: 29, scope: !5488)
!5513 = !DILocation(line: 43, column: 33, scope: !5488)
!5514 = !DILocation(line: 43, column: 41, scope: !5488)
!5515 = !DILocation(line: 44, column: 2, scope: !5488)
!5516 = !DILocation(line: 44, column: 26, scope: !5488)
!5517 = !DILocation(line: 44, column: 47, scope: !5488)
!5518 = !DILocation(line: 44, column: 51, scope: !5488)
!5519 = !DILocation(line: 44, column: 32, scope: !5488)
!5520 = !DILocation(line: 45, column: 2, scope: !5488)
!5521 = !DILocation(line: 45, column: 10, scope: !5488)
!5522 = !DILocation(line: 46, column: 2, scope: !5488)
!5523 = !DILocation(line: 46, column: 8, scope: !5488)
!5524 = !DILocation(line: 48, column: 6, scope: !5498)
!5525 = !DILocation(line: 48, column: 6, scope: !5502)
!5526 = !DILocation(line: 48, column: 6, scope: !5501)
!5527 = !DILocation(line: 48, column: 6, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 48, column: 6)
!5529 = !DILocation(line: 48, column: 6, scope: !5530)
!5530 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 48, column: 6)
!5531 = !{i64 2154160418, i64 2154160447, i64 2154160493, i64 2154160551, i64 2154160605, i64 2154160659, i64 2154160714, i64 2154160745, i64 2154161053, i64 2154161059, i64 2154161106, i64 2154161129, i64 2154161155}
!5532 = !DILocation(line: 48, column: 6, scope: !5533)
!5533 = distinct !DILexicalBlock(scope: !5501, file: !3, line: 48, column: 6)
!5534 = !DILocation(line: 48, column: 6, scope: !5499)
!5535 = !DILocation(line: 48, column: 6, scope: !5488)
!5536 = !DILocation(line: 49, column: 3, scope: !5499)
!5537 = !DILocation(line: 52, column: 22, scope: !5488)
!5538 = !DILocation(line: 52, column: 10, scope: !5488)
!5539 = !DILocation(line: 52, column: 8, scope: !5488)
!5540 = !DILocation(line: 53, column: 6, scope: !5541)
!5541 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 53, column: 6)
!5542 = !DILocation(line: 53, column: 12, scope: !5541)
!5543 = !DILocation(line: 53, column: 6, scope: !5488)
!5544 = !DILocation(line: 54, column: 14, scope: !5545)
!5545 = distinct !DILexicalBlock(scope: !5541, file: !3, line: 53, column: 25)
!5546 = !DILocation(line: 54, column: 3, scope: !5545)
!5547 = !DILocation(line: 55, column: 3, scope: !5545)
!5548 = !DILocation(line: 57, column: 9, scope: !5488)
!5549 = !DILocation(line: 57, column: 2, scope: !5488)
!5550 = !DILocation(line: 59, column: 10, scope: !5488)
!5551 = !DILocation(line: 59, column: 15, scope: !5488)
!5552 = !DILocation(line: 59, column: 20, scope: !5488)
!5553 = !DILocation(line: 59, column: 26, scope: !5488)
!5554 = !DILocation(line: 59, column: 30, scope: !5488)
!5555 = !DILocation(line: 59, column: 34, scope: !5488)
!5556 = !DILocation(line: 59, column: 40, scope: !5488)
!5557 = !DILocation(line: 59, column: 8, scope: !5488)
!5558 = !DILocation(line: 60, column: 6, scope: !5559)
!5559 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 60, column: 6)
!5560 = !DILocation(line: 60, column: 12, scope: !5559)
!5561 = !DILocation(line: 60, column: 6, scope: !5488)
!5562 = !DILocation(line: 61, column: 10, scope: !5559)
!5563 = !DILocation(line: 61, column: 3, scope: !5559)
!5564 = !DILocation(line: 67, column: 6, scope: !5565)
!5565 = distinct !DILexicalBlock(scope: !5488, file: !3, line: 67, column: 6)
!5566 = !DILocation(line: 67, column: 12, scope: !5565)
!5567 = !DILocation(line: 67, column: 6, scope: !5488)
!5568 = !DILocation(line: 68, column: 3, scope: !5569)
!5569 = distinct !DILexicalBlock(scope: !5570, file: !3, line: 68, column: 3)
!5570 = distinct !DILexicalBlock(scope: !5565, file: !3, line: 67, column: 35)
!5571 = !DILocation(line: 68, column: 3, scope: !5572)
!5572 = distinct !DILexicalBlock(scope: !5569, file: !3, line: 68, column: 3)
!5573 = !DILocation(line: 71, column: 9, scope: !5570)
!5574 = !DILocation(line: 72, column: 2, scope: !5570)
!5575 = !DILocation(line: 73, column: 13, scope: !5488)
!5576 = !DILocation(line: 73, column: 17, scope: !5488)
!5577 = !DILocation(line: 73, column: 2, scope: !5488)
!5578 = !DILocation(line: 74, column: 2, scope: !5488)
!5579 = !DILocation(line: 75, column: 1, scope: !5488)
!5580 = distinct !DISubprogram(name: "seq_get_buf", scope: !2216, file: !2216, line: 64, type: !5581, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5584)
!5581 = !DISubroutineType(types: !5582)
!5582 = !{!856, !2214, !5583}
!5583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!5584 = !{!5585, !5586}
!5585 = !DILocalVariable(name: "m", arg: 1, scope: !5580, file: !2216, line: 64, type: !2214)
!5586 = !DILocalVariable(name: "bufp", arg: 2, scope: !5580, file: !2216, line: 64, type: !5583)
!5587 = !DILocation(line: 64, column: 51, scope: !5580)
!5588 = !DILocation(line: 64, column: 61, scope: !5580)
!5589 = !DILocation(line: 66, column: 2, scope: !5580)
!5590 = !DILocation(line: 66, column: 2, scope: !5591)
!5591 = distinct !DILexicalBlock(scope: !5592, file: !2216, line: 66, column: 2)
!5592 = distinct !DILexicalBlock(scope: !5580, file: !2216, line: 66, column: 2)
!5593 = !DILocation(line: 66, column: 2, scope: !5592)
!5594 = !DILocation(line: 66, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5591, file: !2216, line: 66, column: 2)
!5596 = !DILocation(line: 66, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5595, file: !2216, line: 66, column: 2)
!5598 = !DILocation(line: 66, column: 2, scope: !5599)
!5599 = distinct !DILexicalBlock(scope: !5595, file: !2216, line: 66, column: 2)
!5600 = !{i64 2153636794, i64 2153636823, i64 2153636869, i64 2153636927, i64 2153636981, i64 2153637035, i64 2153637090, i64 2153637121}
!5601 = !DILocation(line: 67, column: 6, scope: !5602)
!5602 = distinct !DILexicalBlock(scope: !5580, file: !2216, line: 67, column: 6)
!5603 = !DILocation(line: 67, column: 9, scope: !5602)
!5604 = !DILocation(line: 67, column: 17, scope: !5602)
!5605 = !DILocation(line: 67, column: 20, scope: !5602)
!5606 = !DILocation(line: 67, column: 15, scope: !5602)
!5607 = !DILocation(line: 67, column: 6, scope: !5580)
!5608 = !DILocation(line: 68, column: 11, scope: !5602)
!5609 = !DILocation(line: 68, column: 14, scope: !5602)
!5610 = !DILocation(line: 68, column: 20, scope: !5602)
!5611 = !DILocation(line: 68, column: 23, scope: !5602)
!5612 = !DILocation(line: 68, column: 18, scope: !5602)
!5613 = !DILocation(line: 68, column: 4, scope: !5602)
!5614 = !DILocation(line: 68, column: 9, scope: !5602)
!5615 = !DILocation(line: 68, column: 3, scope: !5602)
!5616 = !DILocation(line: 70, column: 4, scope: !5602)
!5617 = !DILocation(line: 70, column: 9, scope: !5602)
!5618 = !DILocation(line: 72, column: 9, scope: !5580)
!5619 = !DILocation(line: 72, column: 12, scope: !5580)
!5620 = !DILocation(line: 72, column: 19, scope: !5580)
!5621 = !DILocation(line: 72, column: 22, scope: !5580)
!5622 = !DILocation(line: 72, column: 17, scope: !5580)
!5623 = !DILocation(line: 72, column: 2, scope: !5580)
!5624 = distinct !DISubprogram(name: "seq_commit", scope: !2216, file: !2216, line: 84, type: !5625, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5627)
!5625 = !DISubroutineType(types: !5626)
!5626 = !{null, !2214, !183}
!5627 = !{!5628, !5629}
!5628 = !DILocalVariable(name: "m", arg: 1, scope: !5624, file: !2216, line: 84, type: !2214)
!5629 = !DILocalVariable(name: "num", arg: 2, scope: !5624, file: !2216, line: 84, type: !183)
!5630 = !DILocation(line: 84, column: 48, scope: !5624)
!5631 = !DILocation(line: 84, column: 55, scope: !5624)
!5632 = !DILocation(line: 86, column: 6, scope: !5633)
!5633 = distinct !DILexicalBlock(scope: !5624, file: !2216, line: 86, column: 6)
!5634 = !DILocation(line: 86, column: 10, scope: !5633)
!5635 = !DILocation(line: 86, column: 6, scope: !5624)
!5636 = !DILocation(line: 87, column: 14, scope: !5637)
!5637 = distinct !DILexicalBlock(scope: !5633, file: !2216, line: 86, column: 15)
!5638 = !DILocation(line: 87, column: 17, scope: !5637)
!5639 = !DILocation(line: 87, column: 3, scope: !5637)
!5640 = !DILocation(line: 87, column: 6, scope: !5637)
!5641 = !DILocation(line: 87, column: 12, scope: !5637)
!5642 = !DILocation(line: 88, column: 2, scope: !5637)
!5643 = !DILocation(line: 89, column: 3, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5633, file: !2216, line: 88, column: 9)
!5645 = !DILocation(line: 89, column: 3, scope: !5646)
!5646 = distinct !DILexicalBlock(scope: !5647, file: !2216, line: 89, column: 3)
!5647 = distinct !DILexicalBlock(scope: !5644, file: !2216, line: 89, column: 3)
!5648 = !DILocation(line: 89, column: 3, scope: !5647)
!5649 = !DILocation(line: 89, column: 3, scope: !5650)
!5650 = distinct !DILexicalBlock(scope: !5646, file: !2216, line: 89, column: 3)
!5651 = !DILocation(line: 89, column: 3, scope: !5652)
!5652 = distinct !DILexicalBlock(scope: !5650, file: !2216, line: 89, column: 3)
!5653 = !DILocation(line: 89, column: 3, scope: !5654)
!5654 = distinct !DILexicalBlock(scope: !5650, file: !2216, line: 89, column: 3)
!5655 = !{i64 2153637981, i64 2153638010, i64 2153638056, i64 2153638114, i64 2153638168, i64 2153638222, i64 2153638277, i64 2153638308}
!5656 = !DILocation(line: 90, column: 15, scope: !5644)
!5657 = !DILocation(line: 90, column: 3, scope: !5644)
!5658 = !DILocation(line: 90, column: 6, scope: !5644)
!5659 = !DILocation(line: 90, column: 12, scope: !5644)
!5660 = !DILocation(line: 92, column: 1, scope: !5624)
!5661 = !DISubprogram(name: "_printk", scope: !5662, file: !5662, line: 153, type: !5663, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5662 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!5663 = !DISubroutineType(types: !5664)
!5664 = !{!183, !199, null}
!5665 = distinct !DISubprogram(name: "sysfs_kf_bin_open", scope: !3, file: !3, line: 170, type: !181, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5666)
!5666 = !{!5667, !5668}
!5667 = !DILocalVariable(name: "of", arg: 1, scope: !5665, file: !3, line: 170, type: !184)
!5668 = !DILocalVariable(name: "battr", scope: !5665, file: !3, line: 172, type: !1052)
!5669 = !DILocation(line: 170, column: 55, scope: !5665)
!5670 = !DILocation(line: 172, column: 2, scope: !5665)
!5671 = !DILocation(line: 172, column: 24, scope: !5665)
!5672 = !DILocation(line: 172, column: 32, scope: !5665)
!5673 = !DILocation(line: 172, column: 36, scope: !5665)
!5674 = !DILocation(line: 172, column: 40, scope: !5665)
!5675 = !DILocation(line: 174, column: 6, scope: !5676)
!5676 = distinct !DILexicalBlock(scope: !5665, file: !3, line: 174, column: 6)
!5677 = !DILocation(line: 174, column: 13, scope: !5676)
!5678 = !DILocation(line: 174, column: 6, scope: !5665)
!5679 = !DILocation(line: 175, column: 25, scope: !5676)
!5680 = !DILocation(line: 175, column: 32, scope: !5676)
!5681 = !DILocation(line: 175, column: 3, scope: !5676)
!5682 = !DILocation(line: 175, column: 7, scope: !5676)
!5683 = !DILocation(line: 175, column: 13, scope: !5676)
!5684 = !DILocation(line: 175, column: 23, scope: !5676)
!5685 = !DILocation(line: 178, column: 1, scope: !5665)
!5686 = !DILocation(line: 177, column: 2, scope: !5665)
!5687 = distinct !DISubprogram(name: "sysfs_kf_bin_read", scope: !3, file: !3, line: 77, type: !4110, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5688)
!5688 = !{!5689, !5690, !5691, !5692, !5693, !5694, !5695}
!5689 = !DILocalVariable(name: "of", arg: 1, scope: !5687, file: !3, line: 77, type: !184)
!5690 = !DILocalVariable(name: "buf", arg: 2, scope: !5687, file: !3, line: 77, type: !553)
!5691 = !DILocalVariable(name: "count", arg: 3, scope: !5687, file: !3, line: 78, type: !856)
!5692 = !DILocalVariable(name: "pos", arg: 4, scope: !5687, file: !3, line: 78, type: !241)
!5693 = !DILocalVariable(name: "battr", scope: !5687, file: !3, line: 80, type: !1052)
!5694 = !DILocalVariable(name: "kobj", scope: !5687, file: !3, line: 81, type: !964)
!5695 = !DILocalVariable(name: "size", scope: !5687, file: !3, line: 82, type: !241)
!5696 = !DILocation(line: 77, column: 59, scope: !5687)
!5697 = !DILocation(line: 77, column: 69, scope: !5687)
!5698 = !DILocation(line: 78, column: 13, scope: !5687)
!5699 = !DILocation(line: 78, column: 27, scope: !5687)
!5700 = !DILocation(line: 80, column: 2, scope: !5687)
!5701 = !DILocation(line: 80, column: 24, scope: !5687)
!5702 = !DILocation(line: 80, column: 32, scope: !5687)
!5703 = !DILocation(line: 80, column: 36, scope: !5687)
!5704 = !DILocation(line: 80, column: 40, scope: !5687)
!5705 = !DILocation(line: 81, column: 2, scope: !5687)
!5706 = !DILocation(line: 81, column: 18, scope: !5687)
!5707 = !DILocation(line: 81, column: 25, scope: !5687)
!5708 = !DILocation(line: 81, column: 29, scope: !5687)
!5709 = !DILocation(line: 81, column: 33, scope: !5687)
!5710 = !DILocation(line: 81, column: 41, scope: !5687)
!5711 = !DILocation(line: 82, column: 2, scope: !5687)
!5712 = !DILocation(line: 82, column: 9, scope: !5687)
!5713 = !DILocation(line: 82, column: 27, scope: !5687)
!5714 = !DILocation(line: 82, column: 31, scope: !5687)
!5715 = !DILocation(line: 82, column: 16, scope: !5687)
!5716 = !DILocation(line: 82, column: 38, scope: !5687)
!5717 = !DILocation(line: 84, column: 7, scope: !5718)
!5718 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 84, column: 6)
!5719 = !DILocation(line: 84, column: 6, scope: !5687)
!5720 = !DILocation(line: 85, column: 3, scope: !5718)
!5721 = !DILocation(line: 87, column: 6, scope: !5722)
!5722 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 87, column: 6)
!5723 = !DILocation(line: 87, column: 6, scope: !5687)
!5724 = !DILocation(line: 88, column: 7, scope: !5725)
!5725 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 88, column: 7)
!5726 = distinct !DILexicalBlock(scope: !5722, file: !3, line: 87, column: 12)
!5727 = !DILocation(line: 88, column: 14, scope: !5725)
!5728 = !DILocation(line: 88, column: 11, scope: !5725)
!5729 = !DILocation(line: 88, column: 7, scope: !5726)
!5730 = !DILocation(line: 89, column: 4, scope: !5725)
!5731 = !DILocation(line: 90, column: 7, scope: !5732)
!5732 = distinct !DILexicalBlock(scope: !5726, file: !3, line: 90, column: 7)
!5733 = !DILocation(line: 90, column: 13, scope: !5732)
!5734 = !DILocation(line: 90, column: 11, scope: !5732)
!5735 = !DILocation(line: 90, column: 21, scope: !5732)
!5736 = !DILocation(line: 90, column: 19, scope: !5732)
!5737 = !DILocation(line: 90, column: 7, scope: !5726)
!5738 = !DILocation(line: 91, column: 12, scope: !5732)
!5739 = !DILocation(line: 91, column: 19, scope: !5732)
!5740 = !DILocation(line: 91, column: 17, scope: !5732)
!5741 = !DILocation(line: 91, column: 10, scope: !5732)
!5742 = !DILocation(line: 91, column: 4, scope: !5732)
!5743 = !DILocation(line: 92, column: 2, scope: !5726)
!5744 = !DILocation(line: 94, column: 7, scope: !5745)
!5745 = distinct !DILexicalBlock(scope: !5687, file: !3, line: 94, column: 6)
!5746 = !DILocation(line: 94, column: 14, scope: !5745)
!5747 = !DILocation(line: 94, column: 6, scope: !5687)
!5748 = !DILocation(line: 95, column: 3, scope: !5745)
!5749 = !DILocation(line: 97, column: 9, scope: !5687)
!5750 = !DILocation(line: 97, column: 16, scope: !5687)
!5751 = !DILocation(line: 97, column: 21, scope: !5687)
!5752 = !DILocation(line: 97, column: 25, scope: !5687)
!5753 = !DILocation(line: 97, column: 31, scope: !5687)
!5754 = !DILocation(line: 97, column: 37, scope: !5687)
!5755 = !DILocation(line: 97, column: 44, scope: !5687)
!5756 = !DILocation(line: 97, column: 49, scope: !5687)
!5757 = !DILocation(line: 97, column: 54, scope: !5687)
!5758 = !DILocation(line: 97, column: 2, scope: !5687)
!5759 = !DILocation(line: 98, column: 1, scope: !5687)
!5760 = distinct !DISubprogram(name: "sysfs_kf_bin_write", scope: !3, file: !3, line: 140, type: !4110, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5761)
!5761 = !{!5762, !5763, !5764, !5765, !5766, !5767, !5768, !5769, !5773}
!5762 = !DILocalVariable(name: "of", arg: 1, scope: !5760, file: !3, line: 140, type: !184)
!5763 = !DILocalVariable(name: "buf", arg: 2, scope: !5760, file: !3, line: 140, type: !553)
!5764 = !DILocalVariable(name: "count", arg: 3, scope: !5760, file: !3, line: 141, type: !856)
!5765 = !DILocalVariable(name: "pos", arg: 4, scope: !5760, file: !3, line: 141, type: !241)
!5766 = !DILocalVariable(name: "battr", scope: !5760, file: !3, line: 143, type: !1052)
!5767 = !DILocalVariable(name: "kobj", scope: !5760, file: !3, line: 144, type: !964)
!5768 = !DILocalVariable(name: "size", scope: !5760, file: !3, line: 145, type: !241)
!5769 = !DILocalVariable(name: "__UNIQUE_ID___x289", scope: !5770, file: !3, line: 150, type: !114)
!5770 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 150, column: 11)
!5771 = distinct !DILexicalBlock(scope: !5772, file: !3, line: 147, column: 12)
!5772 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 147, column: 6)
!5773 = !DILocalVariable(name: "__UNIQUE_ID___y290", scope: !5770, file: !3, line: 150, type: !114)
!5774 = !DILocation(line: 140, column: 60, scope: !5760)
!5775 = !DILocation(line: 140, column: 70, scope: !5760)
!5776 = !DILocation(line: 141, column: 14, scope: !5760)
!5777 = !DILocation(line: 141, column: 28, scope: !5760)
!5778 = !DILocation(line: 143, column: 2, scope: !5760)
!5779 = !DILocation(line: 143, column: 24, scope: !5760)
!5780 = !DILocation(line: 143, column: 32, scope: !5760)
!5781 = !DILocation(line: 143, column: 36, scope: !5760)
!5782 = !DILocation(line: 143, column: 40, scope: !5760)
!5783 = !DILocation(line: 144, column: 2, scope: !5760)
!5784 = !DILocation(line: 144, column: 18, scope: !5760)
!5785 = !DILocation(line: 144, column: 25, scope: !5760)
!5786 = !DILocation(line: 144, column: 29, scope: !5760)
!5787 = !DILocation(line: 144, column: 33, scope: !5760)
!5788 = !DILocation(line: 144, column: 41, scope: !5760)
!5789 = !DILocation(line: 145, column: 2, scope: !5760)
!5790 = !DILocation(line: 145, column: 9, scope: !5760)
!5791 = !DILocation(line: 145, column: 27, scope: !5760)
!5792 = !DILocation(line: 145, column: 31, scope: !5760)
!5793 = !DILocation(line: 145, column: 16, scope: !5760)
!5794 = !DILocation(line: 145, column: 38, scope: !5760)
!5795 = !DILocation(line: 147, column: 6, scope: !5772)
!5796 = !DILocation(line: 147, column: 6, scope: !5760)
!5797 = !DILocation(line: 148, column: 7, scope: !5798)
!5798 = distinct !DILexicalBlock(scope: !5771, file: !3, line: 148, column: 7)
!5799 = !DILocation(line: 148, column: 15, scope: !5798)
!5800 = !DILocation(line: 148, column: 12, scope: !5798)
!5801 = !DILocation(line: 148, column: 7, scope: !5771)
!5802 = !DILocation(line: 149, column: 4, scope: !5798)
!5803 = !DILocation(line: 150, column: 11, scope: !5770)
!5804 = !DILocation(line: 150, column: 11, scope: !5771)
!5805 = !DILocation(line: 150, column: 9, scope: !5771)
!5806 = !DILocation(line: 151, column: 2, scope: !5771)
!5807 = !DILocation(line: 152, column: 7, scope: !5808)
!5808 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 152, column: 6)
!5809 = !DILocation(line: 152, column: 6, scope: !5760)
!5810 = !DILocation(line: 153, column: 3, scope: !5808)
!5811 = !DILocation(line: 155, column: 7, scope: !5812)
!5812 = distinct !DILexicalBlock(scope: !5760, file: !3, line: 155, column: 6)
!5813 = !DILocation(line: 155, column: 14, scope: !5812)
!5814 = !DILocation(line: 155, column: 6, scope: !5760)
!5815 = !DILocation(line: 156, column: 3, scope: !5812)
!5816 = !DILocation(line: 158, column: 9, scope: !5760)
!5817 = !DILocation(line: 158, column: 16, scope: !5760)
!5818 = !DILocation(line: 158, column: 22, scope: !5760)
!5819 = !DILocation(line: 158, column: 26, scope: !5760)
!5820 = !DILocation(line: 158, column: 32, scope: !5760)
!5821 = !DILocation(line: 158, column: 38, scope: !5760)
!5822 = !DILocation(line: 158, column: 45, scope: !5760)
!5823 = !DILocation(line: 158, column: 50, scope: !5760)
!5824 = !DILocation(line: 158, column: 55, scope: !5760)
!5825 = !DILocation(line: 158, column: 2, scope: !5760)
!5826 = !DILocation(line: 159, column: 1, scope: !5760)
!5827 = distinct !DISubprogram(name: "sysfs_kf_bin_mmap", scope: !3, file: !3, line: 161, type: !4121, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5828)
!5828 = !{!5829, !5830, !5831, !5832}
!5829 = !DILocalVariable(name: "of", arg: 1, scope: !5827, file: !3, line: 161, type: !184)
!5830 = !DILocalVariable(name: "vma", arg: 2, scope: !5827, file: !3, line: 162, type: !1206)
!5831 = !DILocalVariable(name: "battr", scope: !5827, file: !3, line: 164, type: !1052)
!5832 = !DILocalVariable(name: "kobj", scope: !5827, file: !3, line: 165, type: !964)
!5833 = !DILocation(line: 161, column: 55, scope: !5827)
!5834 = !DILocation(line: 162, column: 32, scope: !5827)
!5835 = !DILocation(line: 164, column: 2, scope: !5827)
!5836 = !DILocation(line: 164, column: 24, scope: !5827)
!5837 = !DILocation(line: 164, column: 32, scope: !5827)
!5838 = !DILocation(line: 164, column: 36, scope: !5827)
!5839 = !DILocation(line: 164, column: 40, scope: !5827)
!5840 = !DILocation(line: 165, column: 2, scope: !5827)
!5841 = !DILocation(line: 165, column: 18, scope: !5827)
!5842 = !DILocation(line: 165, column: 25, scope: !5827)
!5843 = !DILocation(line: 165, column: 29, scope: !5827)
!5844 = !DILocation(line: 165, column: 33, scope: !5827)
!5845 = !DILocation(line: 165, column: 41, scope: !5827)
!5846 = !DILocation(line: 167, column: 9, scope: !5827)
!5847 = !DILocation(line: 167, column: 16, scope: !5827)
!5848 = !DILocation(line: 167, column: 21, scope: !5827)
!5849 = !DILocation(line: 167, column: 25, scope: !5827)
!5850 = !DILocation(line: 167, column: 31, scope: !5827)
!5851 = !DILocation(line: 167, column: 37, scope: !5827)
!5852 = !DILocation(line: 167, column: 44, scope: !5827)
!5853 = !DILocation(line: 168, column: 1, scope: !5827)
!5854 = !DILocation(line: 167, column: 2, scope: !5827)
!5855 = distinct !DISubprogram(name: "file_inode", scope: !14, file: !14, line: 1073, type: !5856, scopeLine: 1074, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5858)
!5856 = !DISubroutineType(types: !5857)
!5857 = !{!704, !2250}
!5858 = !{!5859}
!5859 = !DILocalVariable(name: "f", arg: 1, scope: !5855, file: !14, line: 1073, type: !2250)
!5860 = !DILocation(line: 1073, column: 59, scope: !5855)
!5861 = !DILocation(line: 1075, column: 9, scope: !5855)
!5862 = !DILocation(line: 1075, column: 12, scope: !5855)
!5863 = !DILocation(line: 1075, column: 2, scope: !5855)

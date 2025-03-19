; ModuleID = 'kernel/params.c'
source_filename = "kernel/params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_byte: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_byte ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_short: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_short ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_short: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_short ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_short: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_short ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_ushort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_ushort ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_ushort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_ushort ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_ushort: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_ushort ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_int: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_int ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_uint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_uint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_uint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_uint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_uint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_uint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_long: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_long ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_long: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_long ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_long: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_long ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_ulong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_ulong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_ulong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_ulong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_ulong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_ulong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_ullong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_ullong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_ullong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_ullong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_ullong: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_ullong ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_hexint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_hexint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_hexint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_hexint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_hexint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_hexint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_uint_minmax: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_uint_minmax ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_charp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_charp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_charp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_charp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_free_charp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_free_charp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_charp: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_charp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_bool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_bool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_bool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_bool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_bool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_bool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_bool_enable_only: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_bool_enable_only ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_bool_enable_only: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_bool_enable_only ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_invbool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_invbool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_invbool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_invbool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_invbool: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_invbool ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_bint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_bint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_bint: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_bint ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_array_ops: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_array_ops ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_set_copystring: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_set_copystring ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_get_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_get_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_param_ops_string: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad param_ops_string ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_param_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_param_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_kernel_param_unlock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad kernel_param_unlock ; .previous"
module asm ".section\09\22.initcall4.init..kmod_params__337_974_param_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_params__337_974_param_sysfs_init4:\09\09\09"
module asm ".long\09__initstub__kmod_params__337_974_param_sysfs_init4 - .\09"
module asm ".previous\09\09\09\09\09"
module asm ".section\09\22.initcall7.init..kmod_params__339_990_param_sysfs_builtin_init\22, \22a\22\09\09"
module asm "__initcall__kmod_params__339_990_param_sysfs_builtin_init7:\09\09\09"
module asm ".long\09__initstub__kmod_params__339_990_param_sysfs_builtin_init7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.sysfs_ops = type { ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.kset_uevent_ops = type { ptr, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.kmalloced_param = type { %struct.list_head, [0 x i8] }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.module = type { i32, %struct.list_head, [56 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [7 x %struct.module_memory], %struct.mod_arch_specific, i64, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.module_memory = type { ptr, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i64, ptr, ptr }
%struct.mod_arch_specific = type { i32, ptr, ptr }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.module_param_attrs = type { i32, %struct.attribute_group, [0 x %struct.param_attribute] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.param_attribute = type { %struct.module_attribute, ptr }

@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"\014%s: option '%s' enabled irq's!\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"\013%s: Unknown parameter `%s'\0A\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [41 x i8] c"\013%s: `%s' too large for parameter `%s'\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !22
@.str.5 = private unnamed_addr constant [39 x i8] c"\013%s: `%s' invalid for parameter `%s'\0A\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [6 x i8] c"%hhu\0A\00", align 1, !dbg !32
@param_ops_byte = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_byte, ptr @param_get_byte, ptr null }, align 8, !dbg !37
@__UNIQUE_ID___addressable_param_set_byte289 = internal global ptr @param_set_byte, section ".discard.addressable", align 8, !dbg !4153
@__UNIQUE_ID___addressable_param_get_byte290 = internal global ptr @param_get_byte, section ".discard.addressable", align 8, !dbg !4155
@__UNIQUE_ID___addressable_param_ops_byte291 = internal global ptr @param_ops_byte, section ".discard.addressable", align 8, !dbg !4157
@.str.7 = private unnamed_addr constant [5 x i8] c"%hi\0A\00", align 1, !dbg !4159
@param_ops_short = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_short, ptr @param_get_short, ptr null }, align 8, !dbg !4164
@__UNIQUE_ID___addressable_param_set_short292 = internal global ptr @param_set_short, section ".discard.addressable", align 8, !dbg !4166
@__UNIQUE_ID___addressable_param_get_short293 = internal global ptr @param_get_short, section ".discard.addressable", align 8, !dbg !4168
@__UNIQUE_ID___addressable_param_ops_short294 = internal global ptr @param_ops_short, section ".discard.addressable", align 8, !dbg !4170
@.str.8 = private unnamed_addr constant [5 x i8] c"%hu\0A\00", align 1, !dbg !4172
@param_ops_ushort = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_ushort, ptr @param_get_ushort, ptr null }, align 8, !dbg !4174
@__UNIQUE_ID___addressable_param_set_ushort295 = internal global ptr @param_set_ushort, section ".discard.addressable", align 8, !dbg !4176
@__UNIQUE_ID___addressable_param_get_ushort296 = internal global ptr @param_get_ushort, section ".discard.addressable", align 8, !dbg !4178
@__UNIQUE_ID___addressable_param_ops_ushort297 = internal global ptr @param_ops_ushort, section ".discard.addressable", align 8, !dbg !4180
@.str.9 = private unnamed_addr constant [4 x i8] c"%i\0A\00", align 1, !dbg !4182
@param_ops_int = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_int, ptr @param_get_int, ptr null }, align 8, !dbg !4185
@__UNIQUE_ID___addressable_param_set_int298 = internal global ptr @param_set_int, section ".discard.addressable", align 8, !dbg !4187
@__UNIQUE_ID___addressable_param_get_int299 = internal global ptr @param_get_int, section ".discard.addressable", align 8, !dbg !4189
@__UNIQUE_ID___addressable_param_ops_int300 = internal global ptr @param_ops_int, section ".discard.addressable", align 8, !dbg !4191
@.str.10 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !4193
@param_ops_uint = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_uint, ptr @param_get_uint, ptr null }, align 8, !dbg !4195
@__UNIQUE_ID___addressable_param_set_uint301 = internal global ptr @param_set_uint, section ".discard.addressable", align 8, !dbg !4197
@__UNIQUE_ID___addressable_param_get_uint302 = internal global ptr @param_get_uint, section ".discard.addressable", align 8, !dbg !4199
@__UNIQUE_ID___addressable_param_ops_uint303 = internal global ptr @param_ops_uint, section ".discard.addressable", align 8, !dbg !4201
@.str.11 = private unnamed_addr constant [5 x i8] c"%li\0A\00", align 1, !dbg !4203
@param_ops_long = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_long, ptr @param_get_long, ptr null }, align 8, !dbg !4205
@__UNIQUE_ID___addressable_param_set_long304 = internal global ptr @param_set_long, section ".discard.addressable", align 8, !dbg !4207
@__UNIQUE_ID___addressable_param_get_long305 = internal global ptr @param_get_long, section ".discard.addressable", align 8, !dbg !4209
@__UNIQUE_ID___addressable_param_ops_long306 = internal global ptr @param_ops_long, section ".discard.addressable", align 8, !dbg !4211
@.str.12 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !4213
@param_ops_ulong = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_ulong, ptr @param_get_ulong, ptr null }, align 8, !dbg !4215
@__UNIQUE_ID___addressable_param_set_ulong307 = internal global ptr @param_set_ulong, section ".discard.addressable", align 8, !dbg !4217
@__UNIQUE_ID___addressable_param_get_ulong308 = internal global ptr @param_get_ulong, section ".discard.addressable", align 8, !dbg !4219
@__UNIQUE_ID___addressable_param_ops_ulong309 = internal global ptr @param_ops_ulong, section ".discard.addressable", align 8, !dbg !4221
@.str.13 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !4223
@param_ops_ullong = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_ullong, ptr @param_get_ullong, ptr null }, align 8, !dbg !4225
@__UNIQUE_ID___addressable_param_set_ullong310 = internal global ptr @param_set_ullong, section ".discard.addressable", align 8, !dbg !4227
@__UNIQUE_ID___addressable_param_get_ullong311 = internal global ptr @param_get_ullong, section ".discard.addressable", align 8, !dbg !4229
@__UNIQUE_ID___addressable_param_ops_ullong312 = internal global ptr @param_ops_ullong, section ".discard.addressable", align 8, !dbg !4231
@.str.14 = private unnamed_addr constant [7 x i8] c"%#08x\0A\00", align 1, !dbg !4233
@param_ops_hexint = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_hexint, ptr @param_get_hexint, ptr null }, align 8, !dbg !4236
@__UNIQUE_ID___addressable_param_set_hexint313 = internal global ptr @param_set_hexint, section ".discard.addressable", align 8, !dbg !4238
@__UNIQUE_ID___addressable_param_get_hexint314 = internal global ptr @param_get_hexint, section ".discard.addressable", align 8, !dbg !4240
@__UNIQUE_ID___addressable_param_ops_hexint315 = internal global ptr @param_ops_hexint, section ".discard.addressable", align 8, !dbg !4242
@__UNIQUE_ID___addressable_param_set_uint_minmax316 = internal global ptr @param_set_uint_minmax, section ".discard.addressable", align 8, !dbg !4244
@.str.15 = private unnamed_addr constant [33 x i8] c"\013%s: string parameter too long\0A\00", align 1, !dbg !4246
@__UNIQUE_ID___addressable_param_set_charp317 = internal global ptr @param_set_charp, section ".discard.addressable", align 8, !dbg !4251
@.str.16 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !4253
@__UNIQUE_ID___addressable_param_get_charp318 = internal global ptr @param_get_charp, section ".discard.addressable", align 8, !dbg !4255
@__UNIQUE_ID___addressable_param_free_charp319 = internal global ptr @param_free_charp, section ".discard.addressable", align 8, !dbg !4257
@param_ops_charp = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_charp, ptr @param_get_charp, ptr @param_free_charp }, align 8, !dbg !4259
@__UNIQUE_ID___addressable_param_ops_charp320 = internal global ptr @param_ops_charp, section ".discard.addressable", align 8, !dbg !4261
@.str.17 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !4263
@__UNIQUE_ID___addressable_param_set_bool321 = internal global ptr @param_set_bool, section ".discard.addressable", align 8, !dbg !4266
@.str.18 = private unnamed_addr constant [4 x i8] c"%c\0A\00", align 1, !dbg !4268
@__UNIQUE_ID___addressable_param_get_bool322 = internal global ptr @param_get_bool, section ".discard.addressable", align 8, !dbg !4270
@param_ops_bool = hidden constant %struct.kernel_param_ops { i32 1, ptr @param_set_bool, ptr @param_get_bool, ptr null }, align 8, !dbg !4272
@__UNIQUE_ID___addressable_param_ops_bool323 = internal global ptr @param_ops_bool, section ".discard.addressable", align 8, !dbg !4274
@__UNIQUE_ID___addressable_param_set_bool_enable_only324 = internal global ptr @param_set_bool_enable_only, section ".discard.addressable", align 8, !dbg !4276
@param_ops_bool_enable_only = hidden constant %struct.kernel_param_ops { i32 1, ptr @param_set_bool_enable_only, ptr @param_get_bool, ptr null }, align 8, !dbg !4278
@__UNIQUE_ID___addressable_param_ops_bool_enable_only325 = internal global ptr @param_ops_bool_enable_only, section ".discard.addressable", align 8, !dbg !4280
@__UNIQUE_ID___addressable_param_set_invbool326 = internal global ptr @param_set_invbool, section ".discard.addressable", align 8, !dbg !4282
@__UNIQUE_ID___addressable_param_get_invbool327 = internal global ptr @param_get_invbool, section ".discard.addressable", align 8, !dbg !4284
@param_ops_invbool = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_invbool, ptr @param_get_invbool, ptr null }, align 8, !dbg !4286
@__UNIQUE_ID___addressable_param_ops_invbool328 = internal global ptr @param_ops_invbool, section ".discard.addressable", align 8, !dbg !4288
@__UNIQUE_ID___addressable_param_set_bint329 = internal global ptr @param_set_bint, section ".discard.addressable", align 8, !dbg !4290
@param_ops_bint = hidden constant %struct.kernel_param_ops { i32 1, ptr @param_set_bint, ptr @param_get_int, ptr null }, align 8, !dbg !4292
@__UNIQUE_ID___addressable_param_ops_bint330 = internal global ptr @param_ops_bint, section ".discard.addressable", align 8, !dbg !4294
@param_array_ops = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_array_set, ptr @param_array_get, ptr @param_array_free }, align 8, !dbg !4296
@__UNIQUE_ID___addressable_param_array_ops331 = internal global ptr @param_array_ops, section ".discard.addressable", align 8, !dbg !4298
@.str.19 = private unnamed_addr constant [39 x i8] c"\013%s: string doesn't fit in %u chars.\0A\00", align 1, !dbg !4300
@__UNIQUE_ID___addressable_param_set_copystring332 = internal global ptr @param_set_copystring, section ".discard.addressable", align 8, !dbg !4302
@__UNIQUE_ID___addressable_param_get_string333 = internal global ptr @param_get_string, section ".discard.addressable", align 8, !dbg !4304
@param_ops_string = hidden constant %struct.kernel_param_ops { i32 0, ptr @param_set_copystring, ptr @param_get_string, ptr null }, align 8, !dbg !4306
@__UNIQUE_ID___addressable_param_ops_string334 = internal global ptr @param_ops_string, section ".discard.addressable", align 8, !dbg !4308
@param_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @param_lock, i64 16), ptr getelementptr (i8, ptr @param_lock, i64 16) } }, align 8, !dbg !4347
@__UNIQUE_ID___addressable_kernel_param_lock335 = internal global ptr @kernel_param_lock, section ".discard.addressable", align 8, !dbg !4310
@__UNIQUE_ID___addressable_kernel_param_unlock336 = internal global ptr @kernel_param_unlock, section ".discard.addressable", align 8, !dbg !4312
@module_sysfs_ops = internal constant %struct.sysfs_ops { ptr @module_attr_show, ptr @module_attr_store }, align 8, !dbg !4354
@module_ktype = hidden constant %struct.kobj_type { ptr @module_kobj_release, ptr @module_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4314
@__UNIQUE_ID___addressable___initstub__kmod_params__337_974_param_sysfs_init4338 = internal global ptr @__initstub__kmod_params__337_974_param_sysfs_init4, section ".discard.addressable", align 8, !dbg !4316
@__UNIQUE_ID___addressable___initstub__kmod_params__339_990_param_sysfs_builtin_init7340 = internal global ptr @__initstub__kmod_params__339_990_param_sysfs_builtin_init7, section ".discard.addressable", align 8, !dbg !4318
@module_kset = hidden global ptr null, align 8, !dbg !4320
@.str.20 = private unnamed_addr constant [49 x i8] c"\015Setting dangerous option %s - tainting kernel\0A\00", align 1, !dbg !4322
@kmalloced_params_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !4327
@kmalloced_params = internal global %struct.list_head { ptr @kmalloced_params, ptr @kmalloced_params }, align 8, !dbg !4329
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4331
@.str.22 = private unnamed_addr constant [34 x i8] c"\013%s: can only take %i arguments\0A\00", align 1, !dbg !4336
@.str.23 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !4338
@.str.24 = private unnamed_addr constant [35 x i8] c"\013%s: needs at least %i arguments\0A\00", align 1, !dbg !4340
@.str.25 = private unnamed_addr constant [16 x i8] c"kernel/params.c\00", align 1, !dbg !4345
@.str.26 = private unnamed_addr constant [11 x i8] c"parameters\00", align 1, !dbg !4349
@.str.27 = private unnamed_addr constant [7 x i8] c"module\00", align 1, !dbg !4356
@module_uevent_ops = internal constant %struct.kset_uevent_ops { ptr @uevent_filter, ptr null, ptr null }, align 8, !dbg !4360
@.str.28 = private unnamed_addr constant [32 x i8] c"\014%s (%d): error creating kset\0A\00", align 1, !dbg !4358
@__start___modver = external dso_local constant [0 x %struct.module_version_attribute], align 8
@__stop___modver = external dso_local constant [0 x %struct.module_version_attribute], align 8
@.str.29 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !4362
@module_uevent = external dso_local global %struct.module_attribute, align 8
@.str.30 = private unnamed_addr constant [72 x i8] c"\012Adding module '%s' to sysfs failed (%d), the system may be unstable.\0A\00", align 1, !dbg !4364
@__start___param = external dso_local constant [0 x %struct.kernel_param], align 8
@__stop___param = external dso_local constant [0 x %struct.kernel_param], align 8
@.str.31 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1, !dbg !4369
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID___addressable_param_set_byte289, ptr @__UNIQUE_ID___addressable_param_get_byte290, ptr @__UNIQUE_ID___addressable_param_ops_byte291, ptr @__UNIQUE_ID___addressable_param_set_short292, ptr @__UNIQUE_ID___addressable_param_get_short293, ptr @__UNIQUE_ID___addressable_param_ops_short294, ptr @__UNIQUE_ID___addressable_param_set_ushort295, ptr @__UNIQUE_ID___addressable_param_get_ushort296, ptr @__UNIQUE_ID___addressable_param_ops_ushort297, ptr @__UNIQUE_ID___addressable_param_set_int298, ptr @__UNIQUE_ID___addressable_param_get_int299, ptr @__UNIQUE_ID___addressable_param_ops_int300, ptr @__UNIQUE_ID___addressable_param_set_uint301, ptr @__UNIQUE_ID___addressable_param_get_uint302, ptr @__UNIQUE_ID___addressable_param_ops_uint303, ptr @__UNIQUE_ID___addressable_param_set_long304, ptr @__UNIQUE_ID___addressable_param_get_long305, ptr @__UNIQUE_ID___addressable_param_ops_long306, ptr @__UNIQUE_ID___addressable_param_set_ulong307, ptr @__UNIQUE_ID___addressable_param_get_ulong308, ptr @__UNIQUE_ID___addressable_param_ops_ulong309, ptr @__UNIQUE_ID___addressable_param_set_ullong310, ptr @__UNIQUE_ID___addressable_param_get_ullong311, ptr @__UNIQUE_ID___addressable_param_ops_ullong312, ptr @__UNIQUE_ID___addressable_param_set_hexint313, ptr @__UNIQUE_ID___addressable_param_get_hexint314, ptr @__UNIQUE_ID___addressable_param_ops_hexint315, ptr @__UNIQUE_ID___addressable_param_set_uint_minmax316, ptr @__UNIQUE_ID___addressable_param_set_charp317, ptr @__UNIQUE_ID___addressable_param_get_charp318, ptr @__UNIQUE_ID___addressable_param_free_charp319, ptr @__UNIQUE_ID___addressable_param_ops_charp320, ptr @__UNIQUE_ID___addressable_param_set_bool321, ptr @__UNIQUE_ID___addressable_param_get_bool322, ptr @__UNIQUE_ID___addressable_param_ops_bool323, ptr @__UNIQUE_ID___addressable_param_set_bool_enable_only324, ptr @__UNIQUE_ID___addressable_param_ops_bool_enable_only325, ptr @__UNIQUE_ID___addressable_param_set_invbool326, ptr @__UNIQUE_ID___addressable_param_get_invbool327, ptr @__UNIQUE_ID___addressable_param_ops_invbool328, ptr @__UNIQUE_ID___addressable_param_set_bint329, ptr @__UNIQUE_ID___addressable_param_ops_bint330, ptr @__UNIQUE_ID___addressable_param_array_ops331, ptr @__UNIQUE_ID___addressable_param_set_copystring332, ptr @__UNIQUE_ID___addressable_param_get_string333, ptr @__UNIQUE_ID___addressable_param_ops_string334, ptr @__UNIQUE_ID___addressable_kernel_param_lock335, ptr @__UNIQUE_ID___addressable_kernel_param_unlock336, ptr @__UNIQUE_ID___addressable___initstub__kmod_params__337_974_param_sysfs_init4338, ptr @__UNIQUE_ID___addressable___initstub__kmod_params__339_990_param_sysfs_builtin_init7340], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @parameqn(ptr noundef %a, ptr noundef %b, i64 noundef %n) #0 align 16 !dbg !4380 {
entry:
  %retval = alloca i1, align 1
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %i = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4384, metadata !DIExpression()), !dbg !4388
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4385, metadata !DIExpression()), !dbg !4389
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4386, metadata !DIExpression()), !dbg !4390
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #18, !dbg !4391
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4387, metadata !DIExpression()), !dbg !4392
  store i64 0, ptr %i, align 8, !dbg !4393
  br label %for.cond, !dbg !4395

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, ptr %i, align 8, !dbg !4396
  %1 = load i64, ptr %n.addr, align 8, !dbg !4398
  %cmp = icmp ult i64 %0, %1, !dbg !4399
  br i1 %cmp, label %for.body, label %for.end, !dbg !4400

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %a.addr, align 8, !dbg !4401
  %3 = load i64, ptr %i, align 8, !dbg !4404
  %arrayidx = getelementptr i8, ptr %2, i64 %3, !dbg !4401
  %4 = load i8, ptr %arrayidx, align 1, !dbg !4401
  %call = call zeroext i8 @dash2underscore(i8 noundef zeroext %4) #19, !dbg !4405
  %conv = zext i8 %call to i32, !dbg !4405
  %5 = load ptr, ptr %b.addr, align 8, !dbg !4406
  %6 = load i64, ptr %i, align 8, !dbg !4407
  %arrayidx1 = getelementptr i8, ptr %5, i64 %6, !dbg !4406
  %7 = load i8, ptr %arrayidx1, align 1, !dbg !4406
  %call2 = call zeroext i8 @dash2underscore(i8 noundef zeroext %7) #19, !dbg !4408
  %conv3 = zext i8 %call2 to i32, !dbg !4408
  %cmp4 = icmp ne i32 %conv, %conv3, !dbg !4409
  br i1 %cmp4, label %if.then, label %if.end, !dbg !4410

if.then:                                          ; preds = %for.body
  store i1 false, ptr %retval, align 1, !dbg !4411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4411

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !4412

for.inc:                                          ; preds = %if.end
  %8 = load i64, ptr %i, align 8, !dbg !4413
  %inc = add i64 %8, 1, !dbg !4413
  store i64 %inc, ptr %i, align 8, !dbg !4413
  br label %for.cond, !dbg !4414, !llvm.loop !4415

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !4419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4419

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #18, !dbg !4420
  %9 = load i1, ptr %retval, align 1, !dbg !4420
  ret i1 %9, !dbg !4420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @dash2underscore(i8 noundef zeroext %c) #0 align 16 !dbg !4421 {
entry:
  %retval = alloca i8, align 1
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4425, metadata !DIExpression()), !dbg !4426
  %0 = load i8, ptr %c.addr, align 1, !dbg !4427
  %conv = zext i8 %0 to i32, !dbg !4427
  %cmp = icmp eq i32 %conv, 45, !dbg !4429
  br i1 %cmp, label %if.then, label %if.end, !dbg !4430

if.then:                                          ; preds = %entry
  store i8 95, ptr %retval, align 1, !dbg !4431
  br label %return, !dbg !4431

if.end:                                           ; preds = %entry
  %1 = load i8, ptr %c.addr, align 1, !dbg !4432
  store i8 %1, ptr %retval, align 1, !dbg !4433
  br label %return, !dbg !4433

return:                                           ; preds = %if.end, %if.then
  %2 = load i8, ptr %retval, align 1, !dbg !4434
  ret i8 %2, !dbg !4434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @parameq(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !4435 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !4439, metadata !DIExpression()), !dbg !4441
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !4440, metadata !DIExpression()), !dbg !4442
  %0 = load ptr, ptr %a.addr, align 8, !dbg !4443
  %1 = load ptr, ptr %b.addr, align 8, !dbg !4444
  %2 = load ptr, ptr %a.addr, align 8, !dbg !4445
  %call = call i64 @strlen(ptr noundef %2) #19, !dbg !4446
  %add = add i64 %call, 1, !dbg !4447
  %call1 = call zeroext i1 @parameqn(ptr noundef %0, ptr noundef %1, i64 noundef %add) #19, !dbg !4448
  ret i1 %call1, !dbg !4449
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4450 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @parse_args(ptr noundef %doing, ptr noundef %args, ptr noundef %params, i32 noundef %num, i16 noundef signext %min_level, i16 noundef signext %max_level, ptr noundef %arg, ptr noundef %unknown) #0 align 16 !dbg !4454 {
entry:
  %retval = alloca ptr, align 8
  %doing.addr = alloca ptr, align 8
  %args.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %min_level.addr = alloca i16, align 2
  %max_level.addr = alloca i16, align 2
  %arg.addr = alloca ptr, align 8
  %unknown.addr = alloca ptr, align 8
  %param = alloca ptr, align 8
  %val = alloca ptr, align 8
  %err = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %ret = alloca i32, align 4
  %irq_was_disabled = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  %__dummy12 = alloca i64, align 8
  %__dummy213 = alloca i64, align 8
  %tmp16 = alloca i32, align 4
  %tmp17 = alloca i32, align 4
  %_flags22 = alloca i64, align 8
  %__dummy24 = alloca i64, align 8
  %__dummy225 = alloca i64, align 8
  %tmp28 = alloca i32, align 4
  %tmp32 = alloca i32, align 4
  %__dummy33 = alloca i64, align 8
  %__dummy234 = alloca i64, align 8
  %tmp37 = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp45 = alloca i32, align 4
  %tmp52 = alloca i32, align 4
  %tmp58 = alloca i32, align 4
  %tmp68 = alloca i32, align 4
  store ptr %doing, ptr %doing.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %doing.addr, metadata !4461, metadata !DIExpression()), !dbg !4496
  store ptr %args, ptr %args.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %args.addr, metadata !4462, metadata !DIExpression()), !dbg !4497
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !4463, metadata !DIExpression()), !dbg !4498
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !4464, metadata !DIExpression()), !dbg !4499
  store i16 %min_level, ptr %min_level.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %min_level.addr, metadata !4465, metadata !DIExpression()), !dbg !4500
  store i16 %max_level, ptr %max_level.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %max_level.addr, metadata !4466, metadata !DIExpression()), !dbg !4501
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4467, metadata !DIExpression()), !dbg !4502
  store ptr %unknown, ptr %unknown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %unknown.addr, metadata !4468, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 8, ptr %param) #18, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %param, metadata !4469, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #18, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4470, metadata !DIExpression()), !dbg !4506
  call void @llvm.lifetime.start.p0(i64 8, ptr %err) #18, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4471, metadata !DIExpression()), !dbg !4507
  store ptr null, ptr %err, align 8, !dbg !4507
  %0 = load ptr, ptr %args.addr, align 8, !dbg !4508
  %call = call ptr @skip_spaces(ptr noundef %0) #19, !dbg !4509
  store ptr %call, ptr %args.addr, align 8, !dbg !4510
  %1 = load ptr, ptr %args.addr, align 8, !dbg !4511
  %2 = load i8, ptr %1, align 1, !dbg !4513
  %tobool = icmp ne i8 %2, 0, !dbg !4513
  br i1 %tobool, label %if.then, label %if.end, !dbg !4514

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4515
  %3 = load i32, ptr %tmp, align 4, !dbg !4518
  br label %if.end, !dbg !4519

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond, !dbg !4520

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %if.end
  %4 = load ptr, ptr %args.addr, align 8, !dbg !4521
  %5 = load i8, ptr %4, align 1, !dbg !4522
  %tobool1 = icmp ne i8 %5, 0, !dbg !4520
  br i1 %tobool1, label %while.body, label %while.end, !dbg !4520

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4523
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4472, metadata !DIExpression()), !dbg !4524
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq_was_disabled) #18, !dbg !4525
  call void @llvm.dbg.declare(metadata ptr %irq_was_disabled, metadata !4474, metadata !DIExpression()), !dbg !4526
  %6 = load ptr, ptr %args.addr, align 8, !dbg !4527
  %call2 = call ptr @next_arg(ptr noundef %6, ptr noundef %param, ptr noundef %val) #19, !dbg !4528
  store ptr %call2, ptr %args.addr, align 8, !dbg !4529
  %7 = load ptr, ptr %val, align 8, !dbg !4530
  %tobool3 = icmp ne ptr %7, null, !dbg !4530
  br i1 %tobool3, label %if.end7, label %land.lhs.true, !dbg !4532

land.lhs.true:                                    ; preds = %while.body
  %8 = load ptr, ptr %param, align 8, !dbg !4533
  %call4 = call i32 @strcmp(ptr noundef %8, ptr noundef @.str) #19, !dbg !4534
  %cmp = icmp eq i32 %call4, 0, !dbg !4535
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !4536

if.then5:                                         ; preds = %land.lhs.true
  %9 = load ptr, ptr %err, align 8, !dbg !4537
  %tobool6 = icmp ne ptr %9, null, !dbg !4537
  br i1 %tobool6, label %cond.true, label %cond.false, !dbg !4537

cond.true:                                        ; preds = %if.then5
  br label %cond.end, !dbg !4537

cond.false:                                       ; preds = %if.then5
  %10 = load ptr, ptr %args.addr, align 8, !dbg !4538
  br label %cond.end, !dbg !4537

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %9, %cond.true ], [ %10, %cond.false ], !dbg !4537
  store ptr %cond, ptr %retval, align 8, !dbg !4539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4539

if.end7:                                          ; preds = %land.lhs.true, %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags) #18, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %_flags, metadata !4475, metadata !DIExpression()), !dbg !4540
  br label %do.body, !dbg !4540

do.body:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #18, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !4477, metadata !DIExpression()), !dbg !4541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #18, !dbg !4541
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !4480, metadata !DIExpression()), !dbg !4541
  %cmp8 = icmp eq ptr %__dummy, %__dummy2, !dbg !4541
  %conv = zext i1 %cmp8 to i32, !dbg !4541
  store i32 1, ptr %tmp9, align 4, !dbg !4541
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #18, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #18, !dbg !4542
  %11 = load i32, ptr %tmp9, align 4, !dbg !4541
  %call10 = call i64 @arch_local_save_flags() #19, !dbg !4542
  store i64 %call10, ptr %_flags, align 8, !dbg !4542
  br label %do.cond, !dbg !4542

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4542

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy12) #18, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %__dummy12, metadata !4481, metadata !DIExpression()), !dbg !4543
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy213) #18, !dbg !4543
  call void @llvm.dbg.declare(metadata ptr %__dummy213, metadata !4484, metadata !DIExpression()), !dbg !4543
  %cmp14 = icmp eq ptr %__dummy12, %__dummy213, !dbg !4543
  %conv15 = zext i1 %cmp14 to i32, !dbg !4543
  store i32 1, ptr %tmp16, align 4, !dbg !4543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy213) #18, !dbg !4544
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy12) #18, !dbg !4544
  %12 = load i32, ptr %tmp16, align 4, !dbg !4543
  %13 = load i64, ptr %_flags, align 8, !dbg !4544
  %call18 = call i32 @arch_irqs_disabled_flags(i64 noundef %13) #19, !dbg !4544
  store i32 %call18, ptr %tmp17, align 4, !dbg !4544
  %14 = load i32, ptr %tmp17, align 4, !dbg !4544
  store i32 %14, ptr %tmp11, align 4, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags) #18, !dbg !4545
  %15 = load i32, ptr %tmp11, align 4, !dbg !4540
  store i32 %15, ptr %irq_was_disabled, align 4, !dbg !4546
  %16 = load ptr, ptr %param, align 8, !dbg !4547
  %17 = load ptr, ptr %val, align 8, !dbg !4548
  %18 = load ptr, ptr %doing.addr, align 8, !dbg !4549
  %19 = load ptr, ptr %params.addr, align 8, !dbg !4550
  %20 = load i32, ptr %num.addr, align 4, !dbg !4551
  %21 = load i16, ptr %min_level.addr, align 2, !dbg !4552
  %22 = load i16, ptr %max_level.addr, align 2, !dbg !4553
  %23 = load ptr, ptr %arg.addr, align 8, !dbg !4554
  %24 = load ptr, ptr %unknown.addr, align 8, !dbg !4555
  %call19 = call i32 @parse_one(ptr noundef %16, ptr noundef %17, ptr noundef %18, ptr noundef %19, i32 noundef %20, i16 noundef signext %21, i16 noundef signext %22, ptr noundef %23, ptr noundef %24) #19, !dbg !4556
  store i32 %call19, ptr %ret, align 4, !dbg !4557
  %25 = load i32, ptr %irq_was_disabled, align 4, !dbg !4558
  %tobool20 = icmp ne i32 %25, 0, !dbg !4558
  br i1 %tobool20, label %land.lhs.true21, label %if.end47, !dbg !4559

land.lhs.true21:                                  ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_flags22) #18, !dbg !4560
  call void @llvm.dbg.declare(metadata ptr %_flags22, metadata !4485, metadata !DIExpression()), !dbg !4560
  br label %do.body23, !dbg !4560

do.body23:                                        ; preds = %land.lhs.true21
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy24) #18, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %__dummy24, metadata !4488, metadata !DIExpression()), !dbg !4561
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy225) #18, !dbg !4561
  call void @llvm.dbg.declare(metadata ptr %__dummy225, metadata !4491, metadata !DIExpression()), !dbg !4561
  %cmp26 = icmp eq ptr %__dummy24, %__dummy225, !dbg !4561
  %conv27 = zext i1 %cmp26 to i32, !dbg !4561
  store i32 1, ptr %tmp28, align 4, !dbg !4561
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy225) #18, !dbg !4562
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy24) #18, !dbg !4562
  %26 = load i32, ptr %tmp28, align 4, !dbg !4561
  %call29 = call i64 @arch_local_save_flags() #19, !dbg !4562
  store i64 %call29, ptr %_flags22, align 8, !dbg !4562
  br label %do.cond30, !dbg !4562

do.cond30:                                        ; preds = %do.body23
  br label %do.end31, !dbg !4562

do.end31:                                         ; preds = %do.cond30
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy33) #18, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %__dummy33, metadata !4492, metadata !DIExpression()), !dbg !4563
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy234) #18, !dbg !4563
  call void @llvm.dbg.declare(metadata ptr %__dummy234, metadata !4495, metadata !DIExpression()), !dbg !4563
  %cmp35 = icmp eq ptr %__dummy33, %__dummy234, !dbg !4563
  %conv36 = zext i1 %cmp35 to i32, !dbg !4563
  store i32 1, ptr %tmp37, align 4, !dbg !4563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy234) #18, !dbg !4564
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy33) #18, !dbg !4564
  %27 = load i32, ptr %tmp37, align 4, !dbg !4563
  %28 = load i64, ptr %_flags22, align 8, !dbg !4564
  %call39 = call i32 @arch_irqs_disabled_flags(i64 noundef %28) #19, !dbg !4564
  store i32 %call39, ptr %tmp38, align 4, !dbg !4564
  %29 = load i32, ptr %tmp38, align 4, !dbg !4564
  store i32 %29, ptr %tmp32, align 4, !dbg !4562
  call void @llvm.lifetime.end.p0(i64 8, ptr %_flags22) #18, !dbg !4565
  %30 = load i32, ptr %tmp32, align 4, !dbg !4560
  %tobool40 = icmp ne i32 %30, 0, !dbg !4565
  br i1 %tobool40, label %if.end47, label %if.then41, !dbg !4566

if.then41:                                        ; preds = %do.end31
  br label %do.body42, !dbg !4567

do.body42:                                        ; preds = %if.then41
  br label %do.cond43, !dbg !4569

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !4569

do.end44:                                         ; preds = %do.cond43
  %31 = load ptr, ptr %doing.addr, align 8, !dbg !4567
  %32 = load ptr, ptr %param, align 8, !dbg !4567
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %31, ptr noundef %32) #20, !dbg !4567
  store i32 %call46, ptr %tmp45, align 4, !dbg !4569
  %33 = load i32, ptr %tmp45, align 4, !dbg !4567
  br label %if.end47, !dbg !4571

if.end47:                                         ; preds = %do.end44, %do.end31, %do.end
  %34 = load i32, ptr %ret, align 4, !dbg !4572
  switch i32 %34, label %sw.default [
    i32 0, label %sw.bb
    i32 -2, label %sw.bb48
    i32 -28, label %sw.bb54
  ], !dbg !4573

sw.bb:                                            ; preds = %if.end47
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4574, !llvm.loop !4576

sw.bb48:                                          ; preds = %if.end47
  br label %do.body49, !dbg !4578

do.body49:                                        ; preds = %sw.bb48
  br label %do.cond50, !dbg !4580

do.cond50:                                        ; preds = %do.body49
  br label %do.end51, !dbg !4580

do.end51:                                         ; preds = %do.cond50
  %35 = load ptr, ptr %doing.addr, align 8, !dbg !4578
  %36 = load ptr, ptr %param, align 8, !dbg !4578
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %35, ptr noundef %36) #20, !dbg !4578
  store i32 %call53, ptr %tmp52, align 4, !dbg !4580
  %37 = load i32, ptr %tmp52, align 4, !dbg !4578
  br label %sw.epilog, !dbg !4582

sw.bb54:                                          ; preds = %if.end47
  br label %do.body55, !dbg !4583

do.body55:                                        ; preds = %sw.bb54
  br label %do.cond56, !dbg !4585

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !4585

do.end57:                                         ; preds = %do.cond56
  %38 = load ptr, ptr %doing.addr, align 8, !dbg !4583
  %39 = load ptr, ptr %val, align 8, !dbg !4583
  %tobool59 = icmp ne ptr %39, null, !dbg !4583
  br i1 %tobool59, label %cond.true60, label %cond.false61, !dbg !4583

cond.true60:                                      ; preds = %do.end57
  br label %cond.end62, !dbg !4583

cond.false61:                                     ; preds = %do.end57
  br label %cond.end62, !dbg !4583

cond.end62:                                       ; preds = %cond.false61, %cond.true60
  %cond63 = phi ptr [ %39, %cond.true60 ], [ @.str.4, %cond.false61 ], !dbg !4583
  %40 = load ptr, ptr %param, align 8, !dbg !4583
  %call64 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %38, ptr noundef %cond63, ptr noundef %40) #20, !dbg !4583
  store i32 %call64, ptr %tmp58, align 4, !dbg !4585
  %41 = load i32, ptr %tmp58, align 4, !dbg !4583
  br label %sw.epilog, !dbg !4587

sw.default:                                       ; preds = %if.end47
  br label %do.body65, !dbg !4588

do.body65:                                        ; preds = %sw.default
  br label %do.cond66, !dbg !4590

do.cond66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !4590

do.end67:                                         ; preds = %do.cond66
  %42 = load ptr, ptr %doing.addr, align 8, !dbg !4588
  %43 = load ptr, ptr %val, align 8, !dbg !4588
  %tobool69 = icmp ne ptr %43, null, !dbg !4588
  br i1 %tobool69, label %cond.true70, label %cond.false71, !dbg !4588

cond.true70:                                      ; preds = %do.end67
  br label %cond.end72, !dbg !4588

cond.false71:                                     ; preds = %do.end67
  br label %cond.end72, !dbg !4588

cond.end72:                                       ; preds = %cond.false71, %cond.true70
  %cond73 = phi ptr [ %43, %cond.true70 ], [ @.str.4, %cond.false71 ], !dbg !4588
  %44 = load ptr, ptr %param, align 8, !dbg !4588
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef @.str.5, ptr noundef %42, ptr noundef %cond73, ptr noundef %44) #20, !dbg !4588
  store i32 %call74, ptr %tmp68, align 4, !dbg !4590
  %45 = load i32, ptr %tmp68, align 4, !dbg !4588
  br label %sw.epilog, !dbg !4592

sw.epilog:                                        ; preds = %cond.end72, %cond.end62, %do.end51
  %46 = load i32, ptr %ret, align 4, !dbg !4593
  %conv75 = sext i32 %46 to i64, !dbg !4593
  %call76 = call ptr @ERR_PTR(i64 noundef %conv75) #19, !dbg !4594
  store ptr %call76, ptr %err, align 8, !dbg !4595
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4577
  br label %cleanup, !dbg !4577

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq_was_disabled) #18, !dbg !4577
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4577
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup78 [
    i32 0, label %cleanup.cont
    i32 2, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !4520, !llvm.loop !4576

while.end:                                        ; preds = %while.cond
  %47 = load ptr, ptr %err, align 8, !dbg !4596
  store ptr %47, ptr %retval, align 8, !dbg !4597
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup78, !dbg !4597

cleanup78:                                        ; preds = %while.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %err) #18, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #18, !dbg !4598
  call void @llvm.lifetime.end.p0(i64 8, ptr %param) #18, !dbg !4598
  %48 = load ptr, ptr %retval, align 8, !dbg !4598
  ret ptr %48, !dbg !4598
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4599 dso_local ptr @skip_spaces(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4602 dso_local ptr @next_arg(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4606 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #4 align 16 !dbg !4609 {
entry:
  %call = call i64 @native_save_fl() #19, !dbg !4613
  ret i64 %call, !dbg !4614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #4 align 16 !dbg !4615 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4619, metadata !DIExpression()), !dbg !4620
  %0 = load i64, ptr %flags.addr, align 8, !dbg !4621
  %and = and i64 %0, 512, !dbg !4622
  %tobool = icmp ne i64 %and, 0, !dbg !4623
  %lnot = xor i1 %tobool, true, !dbg !4623
  %lnot.ext = zext i1 %lnot to i32, !dbg !4623
  ret i32 %lnot.ext, !dbg !4624
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @parse_one(ptr noundef %param, ptr noundef %val, ptr noundef %doing, ptr noundef %params, i32 noundef %num_params, i16 noundef signext %min_level, i16 noundef signext %max_level, ptr noundef %arg, ptr noundef %handle_unknown) #0 align 16 !dbg !4625 {
entry:
  %retval = alloca i32, align 4
  %param.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %doing.addr = alloca ptr, align 8
  %params.addr = alloca ptr, align 8
  %num_params.addr = alloca i32, align 4
  %min_level.addr = alloca i16, align 2
  %max_level.addr = alloca i16, align 2
  %arg.addr = alloca ptr, align 8
  %handle_unknown.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp41 = alloca i32, align 4
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !4629, metadata !DIExpression()), !dbg !4640
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4630, metadata !DIExpression()), !dbg !4641
  store ptr %doing, ptr %doing.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %doing.addr, metadata !4631, metadata !DIExpression()), !dbg !4642
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !4632, metadata !DIExpression()), !dbg !4643
  store i32 %num_params, ptr %num_params.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_params.addr, metadata !4633, metadata !DIExpression()), !dbg !4644
  store i16 %min_level, ptr %min_level.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %min_level.addr, metadata !4634, metadata !DIExpression()), !dbg !4645
  store i16 %max_level, ptr %max_level.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %max_level.addr, metadata !4635, metadata !DIExpression()), !dbg !4646
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !4636, metadata !DIExpression()), !dbg !4647
  store ptr %handle_unknown, ptr %handle_unknown.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle_unknown.addr, metadata !4637, metadata !DIExpression()), !dbg !4648
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !4649
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4638, metadata !DIExpression()), !dbg !4650
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %err, metadata !4639, metadata !DIExpression()), !dbg !4652
  store i32 0, ptr %i, align 4, !dbg !4653
  br label %for.cond, !dbg !4655

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !4656
  %1 = load i32, ptr %num_params.addr, align 4, !dbg !4658
  %cmp = icmp ult i32 %0, %1, !dbg !4659
  br i1 %cmp, label %for.body, label %for.end, !dbg !4660

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %param.addr, align 8, !dbg !4661
  %3 = load ptr, ptr %params.addr, align 8, !dbg !4664
  %4 = load i32, ptr %i, align 4, !dbg !4665
  %idxprom = zext i32 %4 to i64, !dbg !4664
  %arrayidx = getelementptr %struct.kernel_param, ptr %3, i64 %idxprom, !dbg !4664
  %name = getelementptr inbounds %struct.kernel_param, ptr %arrayidx, i32 0, i32 0, !dbg !4666
  %5 = load ptr, ptr %name, align 8, !dbg !4666
  %call = call zeroext i1 @parameq(ptr noundef %2, ptr noundef %5) #19, !dbg !4667
  br i1 %call, label %if.then, label %if.end35, !dbg !4668

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %params.addr, align 8, !dbg !4669
  %7 = load i32, ptr %i, align 4, !dbg !4672
  %idxprom1 = zext i32 %7 to i64, !dbg !4669
  %arrayidx2 = getelementptr %struct.kernel_param, ptr %6, i64 %idxprom1, !dbg !4669
  %level = getelementptr inbounds %struct.kernel_param, ptr %arrayidx2, i32 0, i32 4, !dbg !4673
  %8 = load i8, ptr %level, align 2, !dbg !4673
  %conv = sext i8 %8 to i32, !dbg !4669
  %9 = load i16, ptr %min_level.addr, align 2, !dbg !4674
  %conv3 = sext i16 %9 to i32, !dbg !4674
  %cmp4 = icmp slt i32 %conv, %conv3, !dbg !4675
  br i1 %cmp4, label %if.then13, label %lor.lhs.false, !dbg !4676

lor.lhs.false:                                    ; preds = %if.then
  %10 = load ptr, ptr %params.addr, align 8, !dbg !4677
  %11 = load i32, ptr %i, align 4, !dbg !4678
  %idxprom6 = zext i32 %11 to i64, !dbg !4677
  %arrayidx7 = getelementptr %struct.kernel_param, ptr %10, i64 %idxprom6, !dbg !4677
  %level8 = getelementptr inbounds %struct.kernel_param, ptr %arrayidx7, i32 0, i32 4, !dbg !4679
  %12 = load i8, ptr %level8, align 2, !dbg !4679
  %conv9 = sext i8 %12 to i32, !dbg !4677
  %13 = load i16, ptr %max_level.addr, align 2, !dbg !4680
  %conv10 = sext i16 %13 to i32, !dbg !4680
  %cmp11 = icmp sgt i32 %conv9, %conv10, !dbg !4681
  br i1 %cmp11, label %if.then13, label %if.end, !dbg !4682

if.then13:                                        ; preds = %lor.lhs.false, %if.then
  store i32 0, ptr %retval, align 4, !dbg !4683
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4683

if.end:                                           ; preds = %lor.lhs.false
  %14 = load ptr, ptr %val.addr, align 8, !dbg !4684
  %tobool = icmp ne ptr %14, null, !dbg !4684
  br i1 %tobool, label %if.end18, label %land.lhs.true, !dbg !4686

land.lhs.true:                                    ; preds = %if.end
  %15 = load ptr, ptr %params.addr, align 8, !dbg !4687
  %16 = load i32, ptr %i, align 4, !dbg !4688
  %idxprom14 = zext i32 %16 to i64, !dbg !4687
  %arrayidx15 = getelementptr %struct.kernel_param, ptr %15, i64 %idxprom14, !dbg !4687
  %ops = getelementptr inbounds %struct.kernel_param, ptr %arrayidx15, i32 0, i32 2, !dbg !4689
  %17 = load ptr, ptr %ops, align 8, !dbg !4689
  %flags = getelementptr inbounds %struct.kernel_param_ops, ptr %17, i32 0, i32 0, !dbg !4690
  %18 = load i32, ptr %flags, align 8, !dbg !4690
  %and = and i32 %18, 1, !dbg !4691
  %tobool16 = icmp ne i32 %and, 0, !dbg !4691
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4692

if.then17:                                        ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !4693
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4693

if.end18:                                         ; preds = %land.lhs.true, %if.end
  store i32 0, ptr %tmp, align 4, !dbg !4694
  %19 = load i32, ptr %tmp, align 4, !dbg !4697
  %20 = load ptr, ptr %params.addr, align 8, !dbg !4698
  %21 = load i32, ptr %i, align 4, !dbg !4699
  %idxprom19 = zext i32 %21 to i64, !dbg !4698
  %arrayidx20 = getelementptr %struct.kernel_param, ptr %20, i64 %idxprom19, !dbg !4698
  %mod = getelementptr inbounds %struct.kernel_param, ptr %arrayidx20, i32 0, i32 1, !dbg !4700
  %22 = load ptr, ptr %mod, align 8, !dbg !4700
  call void @kernel_param_lock(ptr noundef %22) #19, !dbg !4701
  %23 = load ptr, ptr %params.addr, align 8, !dbg !4702
  %24 = load i32, ptr %i, align 4, !dbg !4704
  %idxprom21 = zext i32 %24 to i64, !dbg !4702
  %arrayidx22 = getelementptr %struct.kernel_param, ptr %23, i64 %idxprom21, !dbg !4702
  %call23 = call zeroext i1 @param_check_unsafe(ptr noundef %arrayidx22) #19, !dbg !4705
  br i1 %call23, label %if.then24, label %if.else, !dbg !4706

if.then24:                                        ; preds = %if.end18
  %25 = load ptr, ptr %params.addr, align 8, !dbg !4707
  %26 = load i32, ptr %i, align 4, !dbg !4708
  %idxprom25 = zext i32 %26 to i64, !dbg !4707
  %arrayidx26 = getelementptr %struct.kernel_param, ptr %25, i64 %idxprom25, !dbg !4707
  %ops27 = getelementptr inbounds %struct.kernel_param, ptr %arrayidx26, i32 0, i32 2, !dbg !4709
  %27 = load ptr, ptr %ops27, align 8, !dbg !4709
  %set = getelementptr inbounds %struct.kernel_param_ops, ptr %27, i32 0, i32 1, !dbg !4710
  %28 = load ptr, ptr %set, align 8, !dbg !4710
  %29 = load ptr, ptr %val.addr, align 8, !dbg !4711
  %30 = load ptr, ptr %params.addr, align 8, !dbg !4712
  %31 = load i32, ptr %i, align 4, !dbg !4713
  %idxprom28 = zext i32 %31 to i64, !dbg !4712
  %arrayidx29 = getelementptr %struct.kernel_param, ptr %30, i64 %idxprom28, !dbg !4712
  %call30 = call i32 %28(ptr noundef %29, ptr noundef %arrayidx29) #19, !dbg !4707
  store i32 %call30, ptr %err, align 4, !dbg !4714
  br label %if.end31, !dbg !4715

if.else:                                          ; preds = %if.end18
  store i32 -1, ptr %err, align 4, !dbg !4716
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then24
  %32 = load ptr, ptr %params.addr, align 8, !dbg !4717
  %33 = load i32, ptr %i, align 4, !dbg !4718
  %idxprom32 = zext i32 %33 to i64, !dbg !4717
  %arrayidx33 = getelementptr %struct.kernel_param, ptr %32, i64 %idxprom32, !dbg !4717
  %mod34 = getelementptr inbounds %struct.kernel_param, ptr %arrayidx33, i32 0, i32 1, !dbg !4719
  %34 = load ptr, ptr %mod34, align 8, !dbg !4719
  call void @kernel_param_unlock(ptr noundef %34) #19, !dbg !4720
  %35 = load i32, ptr %err, align 4, !dbg !4721
  store i32 %35, ptr %retval, align 4, !dbg !4722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4722

if.end35:                                         ; preds = %for.body
  br label %for.inc, !dbg !4723

for.inc:                                          ; preds = %if.end35
  %36 = load i32, ptr %i, align 4, !dbg !4724
  %inc = add i32 %36, 1, !dbg !4724
  store i32 %inc, ptr %i, align 4, !dbg !4724
  br label %for.cond, !dbg !4725, !llvm.loop !4726

for.end:                                          ; preds = %for.cond
  %37 = load ptr, ptr %handle_unknown.addr, align 8, !dbg !4728
  %tobool36 = icmp ne ptr %37, null, !dbg !4728
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !4730

if.then37:                                        ; preds = %for.end
  store i32 0, ptr %tmp38, align 4, !dbg !4731
  %38 = load i32, ptr %tmp38, align 4, !dbg !4735
  %39 = load ptr, ptr %handle_unknown.addr, align 8, !dbg !4736
  %40 = load ptr, ptr %param.addr, align 8, !dbg !4737
  %41 = load ptr, ptr %val.addr, align 8, !dbg !4738
  %42 = load ptr, ptr %doing.addr, align 8, !dbg !4739
  %43 = load ptr, ptr %arg.addr, align 8, !dbg !4740
  %call39 = call i32 %39(ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43) #19, !dbg !4736
  store i32 %call39, ptr %retval, align 4, !dbg !4741
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4741

if.end40:                                         ; preds = %for.end
  store i32 0, ptr %tmp41, align 4, !dbg !4742
  %44 = load i32, ptr %tmp41, align 4, !dbg !4745
  store i32 -2, ptr %retval, align 4, !dbg !4746
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4746

cleanup:                                          ; preds = %if.end40, %if.then37, %if.end31, %if.then17, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !4747
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !4747
  %45 = load i32, ptr %retval, align 4, !dbg !4747
  ret i32 %45, !dbg !4747
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4748 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #6 align 16 !dbg !4752 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !4757, metadata !DIExpression()), !dbg !4758
  %0 = load i64, ptr %error.addr, align 8, !dbg !4759
  %1 = inttoptr i64 %0 to ptr, !dbg !4760
  ret ptr %1, !dbg !4761
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_byte(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4762 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4764, metadata !DIExpression()), !dbg !4766
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4765, metadata !DIExpression()), !dbg !4766
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4766
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4766
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4766
  %3 = load ptr, ptr %2, align 8, !dbg !4766
  %call = call i32 @kstrtou8(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4766
  ret i32 %call, !dbg !4766
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4767 dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_byte(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4772 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4774, metadata !DIExpression()), !dbg !4776
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4775, metadata !DIExpression()), !dbg !4776
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4776
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4776
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4776
  %3 = load ptr, ptr %2, align 8, !dbg !4776
  %4 = load i8, ptr %3, align 1, !dbg !4776
  %conv = zext i8 %4 to i32, !dbg !4776
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.6, i32 noundef %conv) #19, !dbg !4776
  ret i32 %call, !dbg !4776
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4777 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_short(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4781 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4783, metadata !DIExpression()), !dbg !4785
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4784, metadata !DIExpression()), !dbg !4785
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4785
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4785
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4785
  %3 = load ptr, ptr %2, align 8, !dbg !4785
  %call = call i32 @kstrtos16(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4785
  ret i32 %call, !dbg !4785
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4786 dso_local i32 @kstrtos16(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_short(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4790 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4792, metadata !DIExpression()), !dbg !4794
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4793, metadata !DIExpression()), !dbg !4794
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4794
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4794
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4794
  %3 = load ptr, ptr %2, align 8, !dbg !4794
  %4 = load i16, ptr %3, align 2, !dbg !4794
  %conv = sext i16 %4 to i32, !dbg !4794
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.7, i32 noundef %conv) #19, !dbg !4794
  ret i32 %call, !dbg !4794
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_ushort(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4795 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4797, metadata !DIExpression()), !dbg !4799
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4798, metadata !DIExpression()), !dbg !4799
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4799
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4799
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4799
  %3 = load ptr, ptr %2, align 8, !dbg !4799
  %call = call i32 @kstrtou16(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4799
  ret i32 %call, !dbg !4799
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4800 dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_ushort(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4804 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4806, metadata !DIExpression()), !dbg !4808
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4807, metadata !DIExpression()), !dbg !4808
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4808
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4808
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4808
  %3 = load ptr, ptr %2, align 8, !dbg !4808
  %4 = load i16, ptr %3, align 2, !dbg !4808
  %conv = zext i16 %4 to i32, !dbg !4808
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.8, i32 noundef %conv) #19, !dbg !4808
  ret i32 %call, !dbg !4808
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_int(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4809 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4811, metadata !DIExpression()), !dbg !4813
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4812, metadata !DIExpression()), !dbg !4813
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4813
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4813
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4813
  %3 = load ptr, ptr %2, align 8, !dbg !4813
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4813
  ret i32 %call, !dbg !4813
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4814 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_int(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4817 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4819, metadata !DIExpression()), !dbg !4821
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4820, metadata !DIExpression()), !dbg !4821
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4821
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4821
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4821
  %3 = load ptr, ptr %2, align 8, !dbg !4821
  %4 = load i32, ptr %3, align 4, !dbg !4821
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.9, i32 noundef %4) #19, !dbg !4821
  ret i32 %call, !dbg !4821
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4822 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4824, metadata !DIExpression()), !dbg !4826
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4825, metadata !DIExpression()), !dbg !4826
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4826
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4826
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4826
  %3 = load ptr, ptr %2, align 8, !dbg !4826
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4826
  ret i32 %call, !dbg !4826
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4827 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_uint(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4830 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4832, metadata !DIExpression()), !dbg !4834
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4833, metadata !DIExpression()), !dbg !4834
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4834
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4834
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4834
  %3 = load ptr, ptr %2, align 8, !dbg !4834
  %4 = load i32, ptr %3, align 4, !dbg !4834
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.10, i32 noundef %4) #19, !dbg !4834
  ret i32 %call, !dbg !4834
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_long(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4835 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4837, metadata !DIExpression()), !dbg !4839
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4839
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4839
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4839
  %3 = load ptr, ptr %2, align 8, !dbg !4839
  %call = call i32 @kstrtol(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4839
  ret i32 %call, !dbg !4839
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #6 align 16 !dbg !4840 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4844, metadata !DIExpression()), !dbg !4847
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4845, metadata !DIExpression()), !dbg !4848
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4846, metadata !DIExpression()), !dbg !4849
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4850
  %1 = load i32, ptr %base.addr, align 4, !dbg !4852
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4853
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #19, !dbg !4854
  ret i32 %call, !dbg !4855
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_long(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4856 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4858, metadata !DIExpression()), !dbg !4860
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4859, metadata !DIExpression()), !dbg !4860
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4860
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4860
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4860
  %3 = load ptr, ptr %2, align 8, !dbg !4860
  %4 = load i64, ptr %3, align 8, !dbg !4860
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.11, i64 noundef %4) #19, !dbg !4860
  ret i32 %call, !dbg !4860
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_ulong(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4861 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4863, metadata !DIExpression()), !dbg !4865
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4864, metadata !DIExpression()), !dbg !4865
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4865
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4865
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4865
  %3 = load ptr, ptr %2, align 8, !dbg !4865
  %call = call i32 @kstrtoul(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4865
  ret i32 %call, !dbg !4865
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtoul(ptr noundef %s, i32 noundef %base, ptr noundef %res) #6 align 16 !dbg !4866 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !4870, metadata !DIExpression()), !dbg !4873
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !4871, metadata !DIExpression()), !dbg !4874
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !4872, metadata !DIExpression()), !dbg !4875
  %0 = load ptr, ptr %s.addr, align 8, !dbg !4876
  %1 = load i32, ptr %base.addr, align 4, !dbg !4878
  %2 = load ptr, ptr %res.addr, align 8, !dbg !4879
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef %1, ptr noundef %2) #19, !dbg !4880
  ret i32 %call, !dbg !4881
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_ulong(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4882 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4884, metadata !DIExpression()), !dbg !4886
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4885, metadata !DIExpression()), !dbg !4886
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4886
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4886
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4886
  %3 = load ptr, ptr %2, align 8, !dbg !4886
  %4 = load i64, ptr %3, align 8, !dbg !4886
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.12, i64 noundef %4) #19, !dbg !4886
  ret i32 %call, !dbg !4886
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_ullong(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4887 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4889, metadata !DIExpression()), !dbg !4891
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4890, metadata !DIExpression()), !dbg !4891
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4891
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4891
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4891
  %3 = load ptr, ptr %2, align 8, !dbg !4891
  %call = call i32 @kstrtoull(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4891
  ret i32 %call, !dbg !4891
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4892 dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_ullong(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4895 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4897, metadata !DIExpression()), !dbg !4899
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4898, metadata !DIExpression()), !dbg !4899
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4899
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4899
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4899
  %3 = load ptr, ptr %2, align 8, !dbg !4899
  %4 = load i64, ptr %3, align 8, !dbg !4899
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.13, i64 noundef %4) #19, !dbg !4899
  ret i32 %call, !dbg !4899
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_hexint(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4900 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4902, metadata !DIExpression()), !dbg !4904
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4903, metadata !DIExpression()), !dbg !4904
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4904
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4904
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4904
  %3 = load ptr, ptr %2, align 8, !dbg !4904
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %3) #19, !dbg !4904
  ret i32 %call, !dbg !4904
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_hexint(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !4905 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !4907, metadata !DIExpression()), !dbg !4909
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4908, metadata !DIExpression()), !dbg !4909
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !4909
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4909
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !4909
  %3 = load ptr, ptr %2, align 8, !dbg !4909
  %4 = load i32, ptr %3, align 4, !dbg !4909
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.14, i32 noundef %4) #19, !dbg !4909
  ret i32 %call, !dbg !4909
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_uint_minmax(ptr noundef %val, ptr noundef %kp, i32 noundef %min, i32 noundef %max) #0 align 16 !dbg !4910 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %num = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4914, metadata !DIExpression()), !dbg !4920
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4915, metadata !DIExpression()), !dbg !4921
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !4916, metadata !DIExpression()), !dbg !4922
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !4917, metadata !DIExpression()), !dbg !4923
  call void @llvm.lifetime.start.p0(i64 4, ptr %num) #18, !dbg !4924
  call void @llvm.dbg.declare(metadata ptr %num, metadata !4918, metadata !DIExpression()), !dbg !4925
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !4926
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4919, metadata !DIExpression()), !dbg !4927
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4928
  %tobool = icmp ne ptr %0, null, !dbg !4928
  br i1 %tobool, label %if.end, label %if.then, !dbg !4930

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !4931
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4931

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !4932
  %call = call i32 @kstrtouint(ptr noundef %1, i32 noundef 0, ptr noundef %num) #19, !dbg !4933
  store i32 %call, ptr %ret, align 4, !dbg !4934
  %2 = load i32, ptr %ret, align 4, !dbg !4935
  %tobool1 = icmp ne i32 %2, 0, !dbg !4935
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !4937

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %ret, align 4, !dbg !4938
  store i32 %3, ptr %retval, align 4, !dbg !4939
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4939

if.end3:                                          ; preds = %if.end
  %4 = load i32, ptr %num, align 4, !dbg !4940
  %5 = load i32, ptr %min.addr, align 4, !dbg !4942
  %cmp = icmp ult i32 %4, %5, !dbg !4943
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !4944

lor.lhs.false:                                    ; preds = %if.end3
  %6 = load i32, ptr %num, align 4, !dbg !4945
  %7 = load i32, ptr %max.addr, align 4, !dbg !4946
  %cmp4 = icmp ugt i32 %6, %7, !dbg !4947
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4948

if.then5:                                         ; preds = %lor.lhs.false, %if.end3
  store i32 -22, ptr %retval, align 4, !dbg !4949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4949

if.end6:                                          ; preds = %lor.lhs.false
  %8 = load i32, ptr %num, align 4, !dbg !4950
  %9 = load ptr, ptr %kp.addr, align 8, !dbg !4951
  %10 = getelementptr inbounds %struct.kernel_param, ptr %9, i32 0, i32 6, !dbg !4952
  %11 = load ptr, ptr %10, align 8, !dbg !4952
  store i32 %8, ptr %11, align 4, !dbg !4953
  store i32 0, ptr %retval, align 4, !dbg !4954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4954

cleanup:                                          ; preds = %if.end6, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !4955
  call void @llvm.lifetime.end.p0(i64 4, ptr %num) #18, !dbg !4955
  %12 = load i32, ptr %retval, align 4, !dbg !4955
  ret i32 %12, !dbg !4955
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_charp(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !4956 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !4958, metadata !DIExpression()), !dbg !4960
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !4959, metadata !DIExpression()), !dbg !4961
  %0 = load ptr, ptr %val.addr, align 8, !dbg !4962
  %call = call i64 @strlen(ptr noundef %0) #19, !dbg !4964
  %cmp = icmp ugt i64 %call, 1024, !dbg !4965
  br i1 %cmp, label %if.then, label %if.end, !dbg !4966

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4967

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !4970

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !4967
  %name = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 0, !dbg !4967
  %2 = load ptr, ptr %name, align 8, !dbg !4967
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.15, ptr noundef %2) #20, !dbg !4967
  store i32 %call1, ptr %tmp, align 4, !dbg !4970
  %3 = load i32, ptr %tmp, align 4, !dbg !4967
  store i32 -28, ptr %retval, align 4, !dbg !4972
  br label %return, !dbg !4972

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %kp.addr, align 8, !dbg !4973
  %5 = getelementptr inbounds %struct.kernel_param, ptr %4, i32 0, i32 6, !dbg !4974
  %6 = load ptr, ptr %5, align 8, !dbg !4974
  %7 = load ptr, ptr %6, align 8, !dbg !4975
  call void @maybe_kfree_parameter(ptr noundef %7) #19, !dbg !4976
  %call2 = call zeroext i1 @slab_is_available() #19, !dbg !4977
  br i1 %call2, label %if.then3, label %if.else, !dbg !4979

if.then3:                                         ; preds = %if.end
  %8 = load ptr, ptr %val.addr, align 8, !dbg !4980
  %call4 = call i64 @strlen(ptr noundef %8) #19, !dbg !4982
  %add = add i64 %call4, 1, !dbg !4983
  %conv = trunc i64 %add to i32, !dbg !4982
  %call5 = call ptr @kmalloc_parameter(i32 noundef %conv) #19, !dbg !4984
  %9 = load ptr, ptr %kp.addr, align 8, !dbg !4985
  %10 = getelementptr inbounds %struct.kernel_param, ptr %9, i32 0, i32 6, !dbg !4986
  %11 = load ptr, ptr %10, align 8, !dbg !4986
  store ptr %call5, ptr %11, align 8, !dbg !4987
  %12 = load ptr, ptr %kp.addr, align 8, !dbg !4988
  %13 = getelementptr inbounds %struct.kernel_param, ptr %12, i32 0, i32 6, !dbg !4990
  %14 = load ptr, ptr %13, align 8, !dbg !4990
  %15 = load ptr, ptr %14, align 8, !dbg !4991
  %tobool = icmp ne ptr %15, null, !dbg !4991
  br i1 %tobool, label %if.end7, label %if.then6, !dbg !4992

if.then6:                                         ; preds = %if.then3
  store i32 -12, ptr %retval, align 4, !dbg !4993
  br label %return, !dbg !4993

if.end7:                                          ; preds = %if.then3
  %16 = load ptr, ptr %kp.addr, align 8, !dbg !4994
  %17 = getelementptr inbounds %struct.kernel_param, ptr %16, i32 0, i32 6, !dbg !4995
  %18 = load ptr, ptr %17, align 8, !dbg !4995
  %19 = load ptr, ptr %18, align 8, !dbg !4996
  %20 = load ptr, ptr %val.addr, align 8, !dbg !4997
  %call8 = call ptr @strcpy(ptr noundef %19, ptr noundef %20) #19, !dbg !4998
  br label %if.end9, !dbg !4999

if.else:                                          ; preds = %if.end
  %21 = load ptr, ptr %val.addr, align 8, !dbg !5000
  %22 = load ptr, ptr %kp.addr, align 8, !dbg !5001
  %23 = getelementptr inbounds %struct.kernel_param, ptr %22, i32 0, i32 6, !dbg !5002
  %24 = load ptr, ptr %23, align 8, !dbg !5002
  store ptr %21, ptr %24, align 8, !dbg !5003
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.end7
  store i32 0, ptr %retval, align 4, !dbg !5004
  br label %return, !dbg !5004

return:                                           ; preds = %if.end9, %if.then6, %do.end
  %25 = load i32, ptr %retval, align 4, !dbg !5005
  ret i32 %25, !dbg !5005
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @maybe_kfree_parameter(ptr noundef %param) #0 align 16 !dbg !5006 {
entry:
  %param.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %param, ptr %param.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %param.addr, metadata !5008, metadata !DIExpression()), !dbg !5016
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5009, metadata !DIExpression()), !dbg !5018
  call void @spin_lock(ptr noundef @kmalloced_params_lock) #19, !dbg !5019
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5020
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5010, metadata !DIExpression()), !dbg !5020
  %0 = load ptr, ptr @kmalloced_params, align 8, !dbg !5020
  store ptr %0, ptr %__mptr, align 8, !dbg !5020
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5020
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5020
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5020
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5021
  %2 = load ptr, ptr %tmp, align 8, !dbg !5020
  store ptr %2, ptr %p, align 8, !dbg !5021
  br label %for.cond, !dbg !5021

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %p, align 8, !dbg !5022
  %list = getelementptr inbounds %struct.kmalloced_param, ptr %3, i32 0, i32 0, !dbg !5022
  %cmp = icmp eq ptr %list, @kmalloced_params, !dbg !5022
  %lnot = xor i1 %cmp, true, !dbg !5022
  br i1 %lnot, label %for.body, label %for.end, !dbg !5021

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %p, align 8, !dbg !5023
  %val = getelementptr inbounds %struct.kmalloced_param, ptr %4, i32 0, i32 1, !dbg !5026
  %arraydecay = getelementptr inbounds [0 x i8], ptr %val, i64 0, i64 0, !dbg !5023
  %5 = load ptr, ptr %param.addr, align 8, !dbg !5027
  %cmp1 = icmp eq ptr %arraydecay, %5, !dbg !5028
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5029

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %p, align 8, !dbg !5030
  %list2 = getelementptr inbounds %struct.kmalloced_param, ptr %6, i32 0, i32 0, !dbg !5032
  call void @list_del(ptr noundef %list2) #19, !dbg !5033
  %7 = load ptr, ptr %p, align 8, !dbg !5034
  call void @kfree(ptr noundef %7) #19, !dbg !5035
  br label %for.end, !dbg !5036

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !5037

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #18, !dbg !5038
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !5013, metadata !DIExpression()), !dbg !5038
  %8 = load ptr, ptr %p, align 8, !dbg !5038
  %list4 = getelementptr inbounds %struct.kmalloced_param, ptr %8, i32 0, i32 0, !dbg !5038
  %next = getelementptr inbounds %struct.list_head, ptr %list4, i32 0, i32 0, !dbg !5038
  %9 = load ptr, ptr %next, align 8, !dbg !5038
  store ptr %9, ptr %__mptr3, align 8, !dbg !5038
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !5038
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !5038
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !5038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #18, !dbg !5022
  %11 = load ptr, ptr %tmp5, align 8, !dbg !5038
  store ptr %11, ptr %p, align 8, !dbg !5022
  br label %for.cond, !dbg !5022, !llvm.loop !5039

for.end:                                          ; preds = %if.then, %for.cond
  call void @spin_unlock(ptr noundef @kmalloced_params_lock) #19, !dbg !5041
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5042
  ret void, !dbg !5042
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5043 dso_local zeroext i1 @slab_is_available() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kmalloc_parameter(i32 noundef %size) #0 align 16 !dbg !5044 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5048, metadata !DIExpression()), !dbg !5050
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #18, !dbg !5051
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5049, metadata !DIExpression()), !dbg !5052
  %0 = load i32, ptr %size.addr, align 4, !dbg !5053
  %conv = zext i32 %0 to i64, !dbg !5053
  %add = add i64 16, %conv, !dbg !5054
  %call = call noalias ptr @kmalloc(i64 noundef %add, i32 noundef 3264) #21, !dbg !5055
  store ptr %call, ptr %p, align 8, !dbg !5056
  %1 = load ptr, ptr %p, align 8, !dbg !5057
  %tobool = icmp ne ptr %1, null, !dbg !5057
  br i1 %tobool, label %if.end, label %if.then, !dbg !5059

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !5060
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5060

if.end:                                           ; preds = %entry
  call void @spin_lock(ptr noundef @kmalloced_params_lock) #19, !dbg !5061
  %2 = load ptr, ptr %p, align 8, !dbg !5062
  %list = getelementptr inbounds %struct.kmalloced_param, ptr %2, i32 0, i32 0, !dbg !5063
  call void @list_add(ptr noundef %list, ptr noundef @kmalloced_params) #19, !dbg !5064
  call void @spin_unlock(ptr noundef @kmalloced_params_lock) #19, !dbg !5065
  %3 = load ptr, ptr %p, align 8, !dbg !5066
  %val = getelementptr inbounds %struct.kmalloced_param, ptr %3, i32 0, i32 1, !dbg !5067
  %arraydecay = getelementptr inbounds [0 x i8], ptr %val, i64 0, i64 0, !dbg !5066
  store ptr %arraydecay, ptr %retval, align 8, !dbg !5068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5068

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #18, !dbg !5069
  %4 = load ptr, ptr %retval, align 8, !dbg !5069
  ret ptr %4, !dbg !5069
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5070 dso_local ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_charp(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !5073 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5075, metadata !DIExpression()), !dbg !5077
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5076, metadata !DIExpression()), !dbg !5078
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5079
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !5080
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !5081
  %3 = load ptr, ptr %2, align 8, !dbg !5081
  %4 = load ptr, ptr %3, align 8, !dbg !5082
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %0, i64 noundef 4096, ptr noundef @.str.16, ptr noundef %4) #19, !dbg !5083
  ret i32 %call, !dbg !5084
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @param_free_charp(ptr noundef %arg) #0 align 16 !dbg !5085 {
entry:
  %arg.addr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5087, metadata !DIExpression()), !dbg !5088
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !5089
  %1 = load ptr, ptr %0, align 8, !dbg !5090
  call void @maybe_kfree_parameter(ptr noundef %1) #19, !dbg !5091
  ret void, !dbg !5092
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_bool(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5093 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5095, metadata !DIExpression()), !dbg !5097
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5096, metadata !DIExpression()), !dbg !5098
  %0 = load ptr, ptr %val.addr, align 8, !dbg !5099
  %tobool = icmp ne ptr %0, null, !dbg !5099
  br i1 %tobool, label %if.end, label %if.then, !dbg !5101

if.then:                                          ; preds = %entry
  store ptr @.str.17, ptr %val.addr, align 8, !dbg !5102
  br label %if.end, !dbg !5103

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr %val.addr, align 8, !dbg !5104
  %2 = load ptr, ptr %kp.addr, align 8, !dbg !5105
  %3 = getelementptr inbounds %struct.kernel_param, ptr %2, i32 0, i32 6, !dbg !5106
  %4 = load ptr, ptr %3, align 8, !dbg !5106
  %call = call i32 @kstrtobool(ptr noundef %1, ptr noundef %4) #19, !dbg !5107
  ret i32 %call, !dbg !5108
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5109 dso_local i32 @kstrtobool(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_bool(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !5112 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5114, metadata !DIExpression()), !dbg !5116
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5115, metadata !DIExpression()), !dbg !5117
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5118
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !5119
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !5120
  %3 = load ptr, ptr %2, align 8, !dbg !5120
  %4 = load i8, ptr %3, align 1, !dbg !5121, !range !5122, !noundef !895
  %tobool = trunc i8 %4 to i1, !dbg !5121
  %5 = zext i1 %tobool to i64, !dbg !5121
  %cond = select i1 %tobool, i32 89, i32 78, !dbg !5121
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.18, i32 noundef %cond) #19, !dbg !5123
  ret i32 %call, !dbg !5124
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5125 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_bool_enable_only(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5128 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  %new_value = alloca i8, align 1
  %orig_value = alloca i8, align 1
  %dummy_kp = alloca %struct.kernel_param, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5130, metadata !DIExpression()), !dbg !5136
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5131, metadata !DIExpression()), !dbg !5137
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !5138
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5132, metadata !DIExpression()), !dbg !5139
  call void @llvm.lifetime.start.p0(i64 1, ptr %new_value) #18, !dbg !5140
  call void @llvm.dbg.declare(metadata ptr %new_value, metadata !5133, metadata !DIExpression()), !dbg !5141
  call void @llvm.lifetime.start.p0(i64 1, ptr %orig_value) #18, !dbg !5142
  call void @llvm.dbg.declare(metadata ptr %orig_value, metadata !5134, metadata !DIExpression()), !dbg !5143
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5144
  %1 = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 6, !dbg !5145
  %2 = load ptr, ptr %1, align 8, !dbg !5145
  %3 = load i8, ptr %2, align 1, !dbg !5146, !range !5122, !noundef !895
  %tobool = trunc i8 %3 to i1, !dbg !5146
  %frombool = zext i1 %tobool to i8, !dbg !5143
  store i8 %frombool, ptr %orig_value, align 1, !dbg !5143
  call void @llvm.lifetime.start.p0(i64 40, ptr %dummy_kp) #18, !dbg !5147
  call void @llvm.dbg.declare(metadata ptr %dummy_kp, metadata !5135, metadata !DIExpression()), !dbg !5148
  %4 = load ptr, ptr %kp.addr, align 8, !dbg !5149
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %dummy_kp, ptr align 8 %4, i64 40, i1 false), !dbg !5150
  %5 = getelementptr inbounds %struct.kernel_param, ptr %dummy_kp, i32 0, i32 6, !dbg !5151
  store ptr %new_value, ptr %5, align 8, !dbg !5152
  %6 = load ptr, ptr %val.addr, align 8, !dbg !5153
  %call = call i32 @param_set_bool(ptr noundef %6, ptr noundef %dummy_kp) #19, !dbg !5154
  store i32 %call, ptr %err, align 4, !dbg !5155
  %7 = load i32, ptr %err, align 4, !dbg !5156
  %tobool1 = icmp ne i32 %7, 0, !dbg !5156
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5158

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %err, align 4, !dbg !5159
  store i32 %8, ptr %retval, align 4, !dbg !5160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5160

if.end:                                           ; preds = %entry
  %9 = load i8, ptr %new_value, align 1, !dbg !5161, !range !5122, !noundef !895
  %tobool2 = trunc i8 %9 to i1, !dbg !5161
  br i1 %tobool2, label %if.end5, label %land.lhs.true, !dbg !5163

land.lhs.true:                                    ; preds = %if.end
  %10 = load i8, ptr %orig_value, align 1, !dbg !5164, !range !5122, !noundef !895
  %tobool3 = trunc i8 %10 to i1, !dbg !5164
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5165

if.then4:                                         ; preds = %land.lhs.true
  store i32 -30, ptr %retval, align 4, !dbg !5166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5166

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i8, ptr %new_value, align 1, !dbg !5167, !range !5122, !noundef !895
  %tobool6 = trunc i8 %11 to i1, !dbg !5167
  br i1 %tobool6, label %if.then7, label %if.end9, !dbg !5169

if.then7:                                         ; preds = %if.end5
  %12 = load ptr, ptr %val.addr, align 8, !dbg !5170
  %13 = load ptr, ptr %kp.addr, align 8, !dbg !5171
  %call8 = call i32 @param_set_bool(ptr noundef %12, ptr noundef %13) #19, !dbg !5172
  store i32 %call8, ptr %err, align 4, !dbg !5173
  br label %if.end9, !dbg !5174

if.end9:                                          ; preds = %if.then7, %if.end5
  %14 = load i32, ptr %err, align 4, !dbg !5175
  store i32 %14, ptr %retval, align 4, !dbg !5176
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5176

cleanup:                                          ; preds = %if.end9, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 40, ptr %dummy_kp) #18, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 1, ptr %orig_value) #18, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 1, ptr %new_value) #18, !dbg !5177
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !5177
  %15 = load i32, ptr %retval, align 4, !dbg !5177
  ret i32 %15, !dbg !5177
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_invbool(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5178 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %boolval = alloca i8, align 1
  %dummy = alloca %struct.kernel_param, align 8
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5180, metadata !DIExpression()), !dbg !5185
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5181, metadata !DIExpression()), !dbg !5186
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5187
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5182, metadata !DIExpression()), !dbg !5188
  call void @llvm.lifetime.start.p0(i64 1, ptr %boolval) #18, !dbg !5189
  call void @llvm.dbg.declare(metadata ptr %boolval, metadata !5183, metadata !DIExpression()), !dbg !5190
  call void @llvm.lifetime.start.p0(i64 40, ptr %dummy) #18, !dbg !5191
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !5184, metadata !DIExpression()), !dbg !5192
  %0 = getelementptr inbounds %struct.kernel_param, ptr %dummy, i32 0, i32 6, !dbg !5193
  store ptr %boolval, ptr %0, align 8, !dbg !5194
  %1 = load ptr, ptr %val.addr, align 8, !dbg !5195
  %call = call i32 @param_set_bool(ptr noundef %1, ptr noundef %dummy) #19, !dbg !5196
  store i32 %call, ptr %ret, align 4, !dbg !5197
  %2 = load i32, ptr %ret, align 4, !dbg !5198
  %cmp = icmp eq i32 %2, 0, !dbg !5200
  br i1 %cmp, label %if.then, label %if.end, !dbg !5201

if.then:                                          ; preds = %entry
  %3 = load i8, ptr %boolval, align 1, !dbg !5202, !range !5122, !noundef !895
  %tobool = trunc i8 %3 to i1, !dbg !5202
  %lnot = xor i1 %tobool, true, !dbg !5203
  %4 = load ptr, ptr %kp.addr, align 8, !dbg !5204
  %5 = getelementptr inbounds %struct.kernel_param, ptr %4, i32 0, i32 6, !dbg !5205
  %6 = load ptr, ptr %5, align 8, !dbg !5205
  %frombool = zext i1 %lnot to i8, !dbg !5206
  store i8 %frombool, ptr %6, align 1, !dbg !5206
  br label %if.end, !dbg !5207

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !5208
  call void @llvm.lifetime.end.p0(i64 40, ptr %dummy) #18, !dbg !5209
  call void @llvm.lifetime.end.p0(i64 1, ptr %boolval) #18, !dbg !5209
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5209
  ret i32 %7, !dbg !5210
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_invbool(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !5211 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5213, metadata !DIExpression()), !dbg !5215
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5214, metadata !DIExpression()), !dbg !5216
  %0 = load ptr, ptr %buffer.addr, align 8, !dbg !5217
  %1 = load ptr, ptr %kp.addr, align 8, !dbg !5218
  %2 = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 6, !dbg !5219
  %3 = load ptr, ptr %2, align 8, !dbg !5219
  %4 = load i8, ptr %3, align 1, !dbg !5220, !range !5122, !noundef !895
  %tobool = trunc i8 %4 to i1, !dbg !5220
  %5 = zext i1 %tobool to i64, !dbg !5221
  %cond = select i1 %tobool, i32 78, i32 89, !dbg !5221
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.18, i32 noundef %cond) #19, !dbg !5222
  ret i32 %call, !dbg !5223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_bint(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5224 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %boolkp = alloca %struct.kernel_param, align 8
  %v = alloca i8, align 1
  %ret = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5226, metadata !DIExpression()), !dbg !5231
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5227, metadata !DIExpression()), !dbg !5232
  call void @llvm.lifetime.start.p0(i64 40, ptr %boolkp) #18, !dbg !5233
  call void @llvm.dbg.declare(metadata ptr %boolkp, metadata !5228, metadata !DIExpression()), !dbg !5234
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5235
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %boolkp, ptr align 8 %0, i64 40, i1 false), !dbg !5236
  call void @llvm.lifetime.start.p0(i64 1, ptr %v) #18, !dbg !5237
  call void @llvm.dbg.declare(metadata ptr %v, metadata !5229, metadata !DIExpression()), !dbg !5238
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5239
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5230, metadata !DIExpression()), !dbg !5240
  %1 = getelementptr inbounds %struct.kernel_param, ptr %boolkp, i32 0, i32 6, !dbg !5241
  store ptr %v, ptr %1, align 8, !dbg !5242
  %2 = load ptr, ptr %val.addr, align 8, !dbg !5243
  %call = call i32 @param_set_bool(ptr noundef %2, ptr noundef %boolkp) #19, !dbg !5244
  store i32 %call, ptr %ret, align 4, !dbg !5245
  %3 = load i32, ptr %ret, align 4, !dbg !5246
  %cmp = icmp eq i32 %3, 0, !dbg !5248
  br i1 %cmp, label %if.then, label %if.end, !dbg !5249

if.then:                                          ; preds = %entry
  %4 = load i8, ptr %v, align 1, !dbg !5250, !range !5122, !noundef !895
  %tobool = trunc i8 %4 to i1, !dbg !5250
  %conv = zext i1 %tobool to i32, !dbg !5250
  %5 = load ptr, ptr %kp.addr, align 8, !dbg !5251
  %6 = getelementptr inbounds %struct.kernel_param, ptr %5, i32 0, i32 6, !dbg !5252
  %7 = load ptr, ptr %6, align 8, !dbg !5252
  store i32 %conv, ptr %7, align 4, !dbg !5253
  br label %if.end, !dbg !5254

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, ptr %ret, align 4, !dbg !5255
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 1, ptr %v) #18, !dbg !5256
  call void @llvm.lifetime.end.p0(i64 40, ptr %boolkp) #18, !dbg !5256
  ret i32 %8, !dbg !5257
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_array_set(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5258 {
entry:
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %arr = alloca ptr, align 8
  %temp_num = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5260, metadata !DIExpression()), !dbg !5264
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5261, metadata !DIExpression()), !dbg !5265
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #18, !dbg !5266
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !5262, metadata !DIExpression()), !dbg !5267
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5268
  %1 = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 6, !dbg !5269
  %2 = load ptr, ptr %1, align 8, !dbg !5269
  store ptr %2, ptr %arr, align 8, !dbg !5267
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp_num) #18, !dbg !5270
  call void @llvm.dbg.declare(metadata ptr %temp_num, metadata !5263, metadata !DIExpression()), !dbg !5271
  %3 = load ptr, ptr %kp.addr, align 8, !dbg !5272
  %mod = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 1, !dbg !5273
  %4 = load ptr, ptr %mod, align 8, !dbg !5273
  %5 = load ptr, ptr %kp.addr, align 8, !dbg !5274
  %name = getelementptr inbounds %struct.kernel_param, ptr %5, i32 0, i32 0, !dbg !5275
  %6 = load ptr, ptr %name, align 8, !dbg !5275
  %7 = load ptr, ptr %val.addr, align 8, !dbg !5276
  %8 = load ptr, ptr %arr, align 8, !dbg !5277
  %max = getelementptr inbounds %struct.kparam_array, ptr %8, i32 0, i32 0, !dbg !5278
  %9 = load i32, ptr %max, align 8, !dbg !5278
  %10 = load ptr, ptr %arr, align 8, !dbg !5279
  %elem = getelementptr inbounds %struct.kparam_array, ptr %10, i32 0, i32 4, !dbg !5280
  %11 = load ptr, ptr %elem, align 8, !dbg !5280
  %12 = load ptr, ptr %arr, align 8, !dbg !5281
  %elemsize = getelementptr inbounds %struct.kparam_array, ptr %12, i32 0, i32 1, !dbg !5282
  %13 = load i32, ptr %elemsize, align 4, !dbg !5282
  %14 = load ptr, ptr %arr, align 8, !dbg !5283
  %ops = getelementptr inbounds %struct.kparam_array, ptr %14, i32 0, i32 3, !dbg !5284
  %15 = load ptr, ptr %ops, align 8, !dbg !5284
  %set = getelementptr inbounds %struct.kernel_param_ops, ptr %15, i32 0, i32 1, !dbg !5285
  %16 = load ptr, ptr %set, align 8, !dbg !5285
  %17 = load ptr, ptr %kp.addr, align 8, !dbg !5286
  %level = getelementptr inbounds %struct.kernel_param, ptr %17, i32 0, i32 4, !dbg !5287
  %18 = load i8, ptr %level, align 2, !dbg !5287
  %conv = sext i8 %18 to i16, !dbg !5286
  %19 = load ptr, ptr %arr, align 8, !dbg !5288
  %num = getelementptr inbounds %struct.kparam_array, ptr %19, i32 0, i32 2, !dbg !5289
  %20 = load ptr, ptr %num, align 8, !dbg !5289
  %tobool = icmp ne ptr %20, null, !dbg !5288
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5288

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !5288

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5288

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %20, %cond.true ], [ %temp_num, %cond.false ], !dbg !5288
  %call = call i32 @param_array(ptr noundef %4, ptr noundef %6, ptr noundef %7, i32 noundef 1, i32 noundef %9, ptr noundef %11, i32 noundef %13, ptr noundef %16, i16 noundef signext %conv, ptr noundef %cond) #19, !dbg !5290
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp_num) #18, !dbg !5291
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #18, !dbg !5291
  ret i32 %call, !dbg !5292
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_array_get(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !5293 {
entry:
  %retval = alloca i32, align 4
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %off = alloca i32, align 4
  %ret = alloca i32, align 4
  %arr = alloca ptr, align 8
  %p = alloca %struct.kernel_param, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5295, metadata !DIExpression()), !dbg !5302
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5296, metadata !DIExpression()), !dbg !5303
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5297, metadata !DIExpression()), !dbg !5305
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #18, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %off, metadata !5298, metadata !DIExpression()), !dbg !5306
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !5304
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5299, metadata !DIExpression()), !dbg !5307
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #18, !dbg !5308
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !5300, metadata !DIExpression()), !dbg !5309
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5310
  %1 = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 6, !dbg !5311
  %2 = load ptr, ptr %1, align 8, !dbg !5311
  store ptr %2, ptr %arr, align 8, !dbg !5309
  call void @llvm.lifetime.start.p0(i64 40, ptr %p) #18, !dbg !5312
  call void @llvm.dbg.declare(metadata ptr %p, metadata !5301, metadata !DIExpression()), !dbg !5313
  %3 = load ptr, ptr %kp.addr, align 8, !dbg !5314
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %p, ptr align 8 %3, i64 40, i1 false), !dbg !5315
  store i32 0, ptr %off, align 4, !dbg !5316
  store i32 0, ptr %i, align 4, !dbg !5318
  br label %for.cond, !dbg !5319

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, ptr %i, align 4, !dbg !5320
  %5 = load ptr, ptr %arr, align 8, !dbg !5322
  %num = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 2, !dbg !5323
  %6 = load ptr, ptr %num, align 8, !dbg !5323
  %tobool = icmp ne ptr %6, null, !dbg !5322
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5322

cond.true:                                        ; preds = %for.cond
  %7 = load ptr, ptr %arr, align 8, !dbg !5324
  %num1 = getelementptr inbounds %struct.kparam_array, ptr %7, i32 0, i32 2, !dbg !5325
  %8 = load ptr, ptr %num1, align 8, !dbg !5325
  %9 = load i32, ptr %8, align 4, !dbg !5326
  br label %cond.end, !dbg !5322

cond.false:                                       ; preds = %for.cond
  %10 = load ptr, ptr %arr, align 8, !dbg !5327
  %max = getelementptr inbounds %struct.kparam_array, ptr %10, i32 0, i32 0, !dbg !5328
  %11 = load i32, ptr %max, align 8, !dbg !5328
  br label %cond.end, !dbg !5322

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ], !dbg !5322
  %cmp = icmp ult i32 %4, %cond, !dbg !5329
  br i1 %cmp, label %for.body, label %for.end, !dbg !5330

for.body:                                         ; preds = %cond.end
  %12 = load i32, ptr %i, align 4, !dbg !5331
  %tobool2 = icmp ne i32 %12, 0, !dbg !5331
  br i1 %tobool2, label %if.then, label %if.end, !dbg !5334

if.then:                                          ; preds = %for.body
  %13 = load ptr, ptr %buffer.addr, align 8, !dbg !5335
  %14 = load i32, ptr %off, align 4, !dbg !5336
  %sub = sub i32 %14, 1, !dbg !5337
  %idxprom = sext i32 %sub to i64, !dbg !5335
  %arrayidx = getelementptr i8, ptr %13, i64 %idxprom, !dbg !5335
  store i8 44, ptr %arrayidx, align 1, !dbg !5338
  br label %if.end, !dbg !5335

if.end:                                           ; preds = %if.then, %for.body
  %15 = load ptr, ptr %arr, align 8, !dbg !5339
  %elem = getelementptr inbounds %struct.kparam_array, ptr %15, i32 0, i32 4, !dbg !5340
  %16 = load ptr, ptr %elem, align 8, !dbg !5340
  %17 = load ptr, ptr %arr, align 8, !dbg !5341
  %elemsize = getelementptr inbounds %struct.kparam_array, ptr %17, i32 0, i32 1, !dbg !5342
  %18 = load i32, ptr %elemsize, align 4, !dbg !5342
  %19 = load i32, ptr %i, align 4, !dbg !5343
  %mul = mul i32 %18, %19, !dbg !5344
  %idx.ext = zext i32 %mul to i64, !dbg !5345
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !5345
  %20 = getelementptr inbounds %struct.kernel_param, ptr %p, i32 0, i32 6, !dbg !5346
  store ptr %add.ptr, ptr %20, align 8, !dbg !5347
  %mod = getelementptr inbounds %struct.kernel_param, ptr %p, i32 0, i32 1, !dbg !5348
  %21 = load ptr, ptr %mod, align 8, !dbg !5348
  call void @check_kparam_locked(ptr noundef %21) #19, !dbg !5349
  %22 = load ptr, ptr %arr, align 8, !dbg !5350
  %ops = getelementptr inbounds %struct.kparam_array, ptr %22, i32 0, i32 3, !dbg !5351
  %23 = load ptr, ptr %ops, align 8, !dbg !5351
  %get = getelementptr inbounds %struct.kernel_param_ops, ptr %23, i32 0, i32 2, !dbg !5352
  %24 = load ptr, ptr %get, align 8, !dbg !5352
  %25 = load ptr, ptr %buffer.addr, align 8, !dbg !5353
  %26 = load i32, ptr %off, align 4, !dbg !5354
  %idx.ext3 = sext i32 %26 to i64, !dbg !5355
  %add.ptr4 = getelementptr i8, ptr %25, i64 %idx.ext3, !dbg !5355
  %call = call i32 %24(ptr noundef %add.ptr4, ptr noundef %p) #19, !dbg !5350
  store i32 %call, ptr %ret, align 4, !dbg !5356
  %27 = load i32, ptr %ret, align 4, !dbg !5357
  %cmp5 = icmp slt i32 %27, 0, !dbg !5359
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !5360

if.then6:                                         ; preds = %if.end
  %28 = load i32, ptr %ret, align 4, !dbg !5361
  store i32 %28, ptr %retval, align 4, !dbg !5362
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5362

if.end7:                                          ; preds = %if.end
  %29 = load i32, ptr %ret, align 4, !dbg !5363
  %30 = load i32, ptr %off, align 4, !dbg !5364
  %add = add i32 %30, %29, !dbg !5364
  store i32 %add, ptr %off, align 4, !dbg !5364
  br label %for.inc, !dbg !5365

for.inc:                                          ; preds = %if.end7
  %31 = load i32, ptr %i, align 4, !dbg !5366
  %inc = add i32 %31, 1, !dbg !5366
  store i32 %inc, ptr %i, align 4, !dbg !5366
  br label %for.cond, !dbg !5367, !llvm.loop !5368

for.end:                                          ; preds = %cond.end
  %32 = load ptr, ptr %buffer.addr, align 8, !dbg !5370
  %33 = load i32, ptr %off, align 4, !dbg !5371
  %idxprom8 = sext i32 %33 to i64, !dbg !5370
  %arrayidx9 = getelementptr i8, ptr %32, i64 %idxprom8, !dbg !5370
  store i8 0, ptr %arrayidx9, align 1, !dbg !5372
  %34 = load i32, ptr %off, align 4, !dbg !5373
  store i32 %34, ptr %retval, align 4, !dbg !5374
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5374

cleanup:                                          ; preds = %for.end, %if.then6
  call void @llvm.lifetime.end.p0(i64 40, ptr %p) #18, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #18, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #18, !dbg !5375
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5375
  %35 = load i32, ptr %retval, align 4, !dbg !5375
  ret i32 %35, !dbg !5375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @param_array_free(ptr noundef %arg) #0 align 16 !dbg !5376 {
entry:
  %arg.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %arr = alloca ptr, align 8
  store ptr %arg, ptr %arg.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %arg.addr, metadata !5378, metadata !DIExpression()), !dbg !5381
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5382
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5379, metadata !DIExpression()), !dbg !5383
  call void @llvm.lifetime.start.p0(i64 8, ptr %arr) #18, !dbg !5384
  call void @llvm.dbg.declare(metadata ptr %arr, metadata !5380, metadata !DIExpression()), !dbg !5385
  %0 = load ptr, ptr %arg.addr, align 8, !dbg !5386
  store ptr %0, ptr %arr, align 8, !dbg !5385
  %1 = load ptr, ptr %arr, align 8, !dbg !5387
  %ops = getelementptr inbounds %struct.kparam_array, ptr %1, i32 0, i32 3, !dbg !5389
  %2 = load ptr, ptr %ops, align 8, !dbg !5389
  %free = getelementptr inbounds %struct.kernel_param_ops, ptr %2, i32 0, i32 3, !dbg !5390
  %3 = load ptr, ptr %free, align 8, !dbg !5390
  %tobool = icmp ne ptr %3, null, !dbg !5387
  br i1 %tobool, label %if.then, label %if.end, !dbg !5391

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !5392
  br label %for.cond, !dbg !5394

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, ptr %i, align 4, !dbg !5395
  %5 = load ptr, ptr %arr, align 8, !dbg !5397
  %num = getelementptr inbounds %struct.kparam_array, ptr %5, i32 0, i32 2, !dbg !5398
  %6 = load ptr, ptr %num, align 8, !dbg !5398
  %tobool1 = icmp ne ptr %6, null, !dbg !5397
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !5397

cond.true:                                        ; preds = %for.cond
  %7 = load ptr, ptr %arr, align 8, !dbg !5399
  %num2 = getelementptr inbounds %struct.kparam_array, ptr %7, i32 0, i32 2, !dbg !5400
  %8 = load ptr, ptr %num2, align 8, !dbg !5400
  %9 = load i32, ptr %8, align 4, !dbg !5401
  br label %cond.end, !dbg !5397

cond.false:                                       ; preds = %for.cond
  %10 = load ptr, ptr %arr, align 8, !dbg !5402
  %max = getelementptr inbounds %struct.kparam_array, ptr %10, i32 0, i32 0, !dbg !5403
  %11 = load i32, ptr %max, align 8, !dbg !5403
  br label %cond.end, !dbg !5397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %9, %cond.true ], [ %11, %cond.false ], !dbg !5397
  %cmp = icmp ult i32 %4, %cond, !dbg !5404
  br i1 %cmp, label %for.body, label %for.end, !dbg !5405

for.body:                                         ; preds = %cond.end
  %12 = load ptr, ptr %arr, align 8, !dbg !5406
  %ops3 = getelementptr inbounds %struct.kparam_array, ptr %12, i32 0, i32 3, !dbg !5407
  %13 = load ptr, ptr %ops3, align 8, !dbg !5407
  %free4 = getelementptr inbounds %struct.kernel_param_ops, ptr %13, i32 0, i32 3, !dbg !5408
  %14 = load ptr, ptr %free4, align 8, !dbg !5408
  %15 = load ptr, ptr %arr, align 8, !dbg !5409
  %elem = getelementptr inbounds %struct.kparam_array, ptr %15, i32 0, i32 4, !dbg !5410
  %16 = load ptr, ptr %elem, align 8, !dbg !5410
  %17 = load ptr, ptr %arr, align 8, !dbg !5411
  %elemsize = getelementptr inbounds %struct.kparam_array, ptr %17, i32 0, i32 1, !dbg !5412
  %18 = load i32, ptr %elemsize, align 4, !dbg !5412
  %19 = load i32, ptr %i, align 4, !dbg !5413
  %mul = mul i32 %18, %19, !dbg !5414
  %idx.ext = zext i32 %mul to i64, !dbg !5415
  %add.ptr = getelementptr i8, ptr %16, i64 %idx.ext, !dbg !5415
  call void %14(ptr noundef %add.ptr) #19, !dbg !5406
  br label %for.inc, !dbg !5406

for.inc:                                          ; preds = %for.body
  %20 = load i32, ptr %i, align 4, !dbg !5416
  %inc = add i32 %20, 1, !dbg !5416
  store i32 %inc, ptr %i, align 4, !dbg !5416
  br label %for.cond, !dbg !5417, !llvm.loop !5418

for.end:                                          ; preds = %cond.end
  br label %if.end, !dbg !5419

if.end:                                           ; preds = %for.end, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %arr) #18, !dbg !5420
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5420
  ret void, !dbg !5420
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_set_copystring(ptr noundef %val, ptr noundef %kp) #0 align 16 !dbg !5421 {
entry:
  %retval = alloca i32, align 4
  %val.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %kps = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !5423, metadata !DIExpression()), !dbg !5426
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5424, metadata !DIExpression()), !dbg !5427
  call void @llvm.lifetime.start.p0(i64 8, ptr %kps) #18, !dbg !5428
  call void @llvm.dbg.declare(metadata ptr %kps, metadata !5425, metadata !DIExpression()), !dbg !5429
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5430
  %1 = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 6, !dbg !5431
  %2 = load ptr, ptr %1, align 8, !dbg !5431
  store ptr %2, ptr %kps, align 8, !dbg !5429
  %3 = load ptr, ptr %val.addr, align 8, !dbg !5432
  %call = call i64 @strlen(ptr noundef %3) #19, !dbg !5434
  %add = add i64 %call, 1, !dbg !5435
  %4 = load ptr, ptr %kps, align 8, !dbg !5436
  %maxlen = getelementptr inbounds %struct.kparam_string, ptr %4, i32 0, i32 0, !dbg !5437
  %5 = load i32, ptr %maxlen, align 8, !dbg !5437
  %conv = zext i32 %5 to i64, !dbg !5436
  %cmp = icmp ugt i64 %add, %conv, !dbg !5438
  br i1 %cmp, label %if.then, label %if.end, !dbg !5439

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5440

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5443

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5443

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %kp.addr, align 8, !dbg !5440
  %name = getelementptr inbounds %struct.kernel_param, ptr %6, i32 0, i32 0, !dbg !5440
  %7 = load ptr, ptr %name, align 8, !dbg !5440
  %8 = load ptr, ptr %kps, align 8, !dbg !5440
  %maxlen2 = getelementptr inbounds %struct.kparam_string, ptr %8, i32 0, i32 0, !dbg !5440
  %9 = load i32, ptr %maxlen2, align 8, !dbg !5440
  %sub = sub i32 %9, 1, !dbg !5440
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.19, ptr noundef %7, i32 noundef %sub) #20, !dbg !5440
  store i32 %call3, ptr %tmp, align 4, !dbg !5443
  %10 = load i32, ptr %tmp, align 4, !dbg !5440
  store i32 -28, ptr %retval, align 4, !dbg !5445
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5445

if.end:                                           ; preds = %entry
  %11 = load ptr, ptr %kps, align 8, !dbg !5446
  %string = getelementptr inbounds %struct.kparam_string, ptr %11, i32 0, i32 1, !dbg !5447
  %12 = load ptr, ptr %string, align 8, !dbg !5447
  %13 = load ptr, ptr %val.addr, align 8, !dbg !5448
  %call4 = call ptr @strcpy(ptr noundef %12, ptr noundef %13) #19, !dbg !5449
  store i32 0, ptr %retval, align 4, !dbg !5450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5450

cleanup:                                          ; preds = %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %kps) #18, !dbg !5451
  %14 = load i32, ptr %retval, align 4, !dbg !5451
  ret i32 %14, !dbg !5451
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @param_get_string(ptr noundef %buffer, ptr noundef %kp) #0 align 16 !dbg !5452 {
entry:
  %buffer.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %kps = alloca ptr, align 8
  store ptr %buffer, ptr %buffer.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buffer.addr, metadata !5454, metadata !DIExpression()), !dbg !5457
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5455, metadata !DIExpression()), !dbg !5458
  call void @llvm.lifetime.start.p0(i64 8, ptr %kps) #18, !dbg !5459
  call void @llvm.dbg.declare(metadata ptr %kps, metadata !5456, metadata !DIExpression()), !dbg !5460
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5461
  %1 = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 6, !dbg !5462
  %2 = load ptr, ptr %1, align 8, !dbg !5462
  store ptr %2, ptr %kps, align 8, !dbg !5460
  %3 = load ptr, ptr %buffer.addr, align 8, !dbg !5463
  %4 = load ptr, ptr %kps, align 8, !dbg !5464
  %string = getelementptr inbounds %struct.kparam_string, ptr %4, i32 0, i32 1, !dbg !5465
  %5 = load ptr, ptr %string, align 8, !dbg !5465
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %3, i64 noundef 4096, ptr noundef @.str.16, ptr noundef %5) #19, !dbg !5466
  call void @llvm.lifetime.end.p0(i64 8, ptr %kps) #18, !dbg !5467
  ret i32 %call, !dbg !5468
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernel_param_lock(ptr noundef %mod) #0 align 16 !dbg !5469 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5471, metadata !DIExpression()), !dbg !5472
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5473
  %tobool = icmp ne ptr %0, null, !dbg !5473
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5473

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !5473
  %param_lock = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 11, !dbg !5473
  br label %cond.end, !dbg !5473

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5473

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %param_lock, %cond.true ], [ @param_lock, %cond.false ], !dbg !5473
  call void @mutex_lock(ptr noundef %cond) #19, !dbg !5474
  ret void, !dbg !5475
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5476 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @kernel_param_unlock(ptr noundef %mod) #0 align 16 !dbg !5480 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5482, metadata !DIExpression()), !dbg !5483
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5484
  %tobool = icmp ne ptr %0, null, !dbg !5484
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !5484

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !5484
  %param_lock = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 11, !dbg !5484
  br label %cond.end, !dbg !5484

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !5484

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %param_lock, %cond.true ], [ @param_lock, %cond.false ], !dbg !5484
  call void @mutex_unlock(ptr noundef %cond) #19, !dbg !5485
  ret void, !dbg !5486
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5487 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @module_param_sysfs_setup(ptr noundef %mod, ptr noundef %kparam, i32 noundef %num_params) #0 align 16 !dbg !5488 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %kparam.addr = alloca ptr, align 8
  %num_params.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %params = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5492, metadata !DIExpression()), !dbg !5498
  store ptr %kparam, ptr %kparam.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kparam.addr, metadata !5493, metadata !DIExpression()), !dbg !5499
  store i32 %num_params, ptr %num_params.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num_params.addr, metadata !5494, metadata !DIExpression()), !dbg !5500
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5495, metadata !DIExpression()), !dbg !5502
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !5501
  call void @llvm.dbg.declare(metadata ptr %err, metadata !5496, metadata !DIExpression()), !dbg !5503
  call void @llvm.lifetime.start.p0(i64 1, ptr %params) #18, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %params, metadata !5497, metadata !DIExpression()), !dbg !5505
  store i8 0, ptr %params, align 1, !dbg !5505
  store i32 0, ptr %i, align 4, !dbg !5506
  br label %for.cond, !dbg !5508

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5509
  %1 = load i32, ptr %num_params.addr, align 4, !dbg !5511
  %cmp = icmp ult i32 %0, %1, !dbg !5512
  br i1 %cmp, label %for.body, label %for.end, !dbg !5513

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %kparam.addr, align 8, !dbg !5514
  %3 = load i32, ptr %i, align 4, !dbg !5517
  %idxprom = sext i32 %3 to i64, !dbg !5514
  %arrayidx = getelementptr %struct.kernel_param, ptr %2, i64 %idxprom, !dbg !5514
  %perm = getelementptr inbounds %struct.kernel_param, ptr %arrayidx, i32 0, i32 3, !dbg !5518
  %4 = load i16, ptr %perm, align 8, !dbg !5518
  %conv = zext i16 %4 to i32, !dbg !5514
  %cmp1 = icmp eq i32 %conv, 0, !dbg !5519
  br i1 %cmp1, label %if.then, label %if.end, !dbg !5520

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !5521

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5522
  %mkobj = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 3, !dbg !5523
  %6 = load ptr, ptr %kparam.addr, align 8, !dbg !5524
  %7 = load i32, ptr %i, align 4, !dbg !5525
  %idxprom3 = sext i32 %7 to i64, !dbg !5524
  %arrayidx4 = getelementptr %struct.kernel_param, ptr %6, i64 %idxprom3, !dbg !5524
  %8 = load ptr, ptr %kparam.addr, align 8, !dbg !5526
  %9 = load i32, ptr %i, align 4, !dbg !5527
  %idxprom5 = sext i32 %9 to i64, !dbg !5526
  %arrayidx6 = getelementptr %struct.kernel_param, ptr %8, i64 %idxprom5, !dbg !5526
  %name = getelementptr inbounds %struct.kernel_param, ptr %arrayidx6, i32 0, i32 0, !dbg !5528
  %10 = load ptr, ptr %name, align 8, !dbg !5528
  %call = call i32 @add_sysfs_param(ptr noundef %mkobj, ptr noundef %arrayidx4, ptr noundef %10) #19, !dbg !5529
  store i32 %call, ptr %err, align 4, !dbg !5530
  %11 = load i32, ptr %err, align 4, !dbg !5531
  %tobool = icmp ne i32 %11, 0, !dbg !5531
  br i1 %tobool, label %if.then7, label %if.end9, !dbg !5533

if.then7:                                         ; preds = %if.end
  %12 = load ptr, ptr %mod.addr, align 8, !dbg !5534
  %mkobj8 = getelementptr inbounds %struct.module, ptr %12, i32 0, i32 3, !dbg !5536
  call void @free_module_param_attrs(ptr noundef %mkobj8) #19, !dbg !5537
  %13 = load i32, ptr %err, align 4, !dbg !5538
  store i32 %13, ptr %retval, align 4, !dbg !5539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5539

if.end9:                                          ; preds = %if.end
  store i8 1, ptr %params, align 1, !dbg !5540
  br label %for.inc, !dbg !5541

for.inc:                                          ; preds = %if.end9, %if.then
  %14 = load i32, ptr %i, align 4, !dbg !5542
  %inc = add i32 %14, 1, !dbg !5542
  store i32 %inc, ptr %i, align 4, !dbg !5542
  br label %for.cond, !dbg !5543, !llvm.loop !5544

for.end:                                          ; preds = %for.cond
  %15 = load i8, ptr %params, align 1, !dbg !5546, !range !5122, !noundef !895
  %tobool10 = trunc i8 %15 to i1, !dbg !5546
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !5548

if.then11:                                        ; preds = %for.end
  store i32 0, ptr %retval, align 4, !dbg !5549
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5549

if.end12:                                         ; preds = %for.end
  %16 = load ptr, ptr %mod.addr, align 8, !dbg !5550
  %mkobj13 = getelementptr inbounds %struct.module, ptr %16, i32 0, i32 3, !dbg !5551
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj13, i32 0, i32 0, !dbg !5552
  %17 = load ptr, ptr %mod.addr, align 8, !dbg !5553
  %mkobj14 = getelementptr inbounds %struct.module, ptr %17, i32 0, i32 3, !dbg !5554
  %mp = getelementptr inbounds %struct.module_kobject, ptr %mkobj14, i32 0, i32 3, !dbg !5555
  %18 = load ptr, ptr %mp, align 16, !dbg !5555
  %grp = getelementptr inbounds %struct.module_param_attrs, ptr %18, i32 0, i32 1, !dbg !5556
  %call15 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %grp) #19, !dbg !5557
  store i32 %call15, ptr %err, align 4, !dbg !5558
  %19 = load i32, ptr %err, align 4, !dbg !5559
  %tobool16 = icmp ne i32 %19, 0, !dbg !5559
  br i1 %tobool16, label %if.then17, label %if.end19, !dbg !5561

if.then17:                                        ; preds = %if.end12
  %20 = load ptr, ptr %mod.addr, align 8, !dbg !5562
  %mkobj18 = getelementptr inbounds %struct.module, ptr %20, i32 0, i32 3, !dbg !5563
  call void @free_module_param_attrs(ptr noundef %mkobj18) #19, !dbg !5564
  br label %if.end19, !dbg !5564

if.end19:                                         ; preds = %if.then17, %if.end12
  %21 = load i32, ptr %err, align 4, !dbg !5565
  store i32 %21, ptr %retval, align 4, !dbg !5566
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5566

cleanup:                                          ; preds = %if.end19, %if.then11, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %params) #18, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !5567
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5567
  %22 = load i32, ptr %retval, align 4, !dbg !5567
  ret i32 %22, !dbg !5567
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_sysfs_param(ptr noundef %mk, ptr noundef %kp, ptr noundef %name) #0 align 16 !dbg !5568 {
entry:
  %retval = alloca i32, align 4
  %mk.addr = alloca ptr, align 8
  %kp.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %new_mp = alloca ptr, align 8
  %new_attrs = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !5572, metadata !DIExpression()), !dbg !5578
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5573, metadata !DIExpression()), !dbg !5579
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !5574, metadata !DIExpression()), !dbg !5580
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_mp) #18, !dbg !5581
  call void @llvm.dbg.declare(metadata ptr %new_mp, metadata !5575, metadata !DIExpression()), !dbg !5582
  call void @llvm.lifetime.start.p0(i64 8, ptr %new_attrs) #18, !dbg !5583
  call void @llvm.dbg.declare(metadata ptr %new_attrs, metadata !5576, metadata !DIExpression()), !dbg !5584
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5585
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5577, metadata !DIExpression()), !dbg !5586
  br label %do.body, !dbg !5587

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5588
  %perm = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 3, !dbg !5588
  %1 = load i16, ptr %perm, align 8, !dbg !5588
  %tobool = icmp ne i16 %1, 0, !dbg !5588
  %lnot = xor i1 %tobool, true, !dbg !5588
  %lnot1 = xor i1 %lnot, true, !dbg !5588
  %lnot2 = xor i1 %lnot1, true, !dbg !5588
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !5588
  %conv = sext i32 %lnot.ext to i64, !dbg !5588
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5588
  %tobool3 = icmp ne i64 %expval, 0, !dbg !5588
  br i1 %tobool3, label %if.then, label %if.end, !dbg !5591

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !5588

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !5592

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !5594

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !5594

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !5592

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 635, i32 0, i64 12) #18, !dbg !5596, !srcloc !5598
  br label %do.cond7, !dbg !5596

do.cond7:                                         ; preds = %do.body6
  br label %do.end8, !dbg !5596

do.end8:                                          ; preds = %do.cond7
  unreachable, !dbg !5592

do.cond9:                                         ; No predecessors!
  br label %do.end10, !dbg !5592

do.end10:                                         ; preds = %do.cond9
  br label %if.end, !dbg !5592

if.end:                                           ; preds = %do.end10, %do.body
  br label %do.cond11, !dbg !5591

do.cond11:                                        ; preds = %if.end
  br label %do.end12, !dbg !5591

do.end12:                                         ; preds = %do.cond11
  %2 = load ptr, ptr %mk.addr, align 8, !dbg !5599
  %mp = getelementptr inbounds %struct.module_kobject, ptr %2, i32 0, i32 3, !dbg !5601
  %3 = load ptr, ptr %mp, align 8, !dbg !5601
  %tobool13 = icmp ne ptr %3, null, !dbg !5599
  br i1 %tobool13, label %if.end31, label %if.then14, !dbg !5602

if.then14:                                        ; preds = %do.end12
  %call = call noalias ptr @kzalloc(i64 noundef 48, i32 noundef 3264) #21, !dbg !5603
  %4 = load ptr, ptr %mk.addr, align 8, !dbg !5605
  %mp15 = getelementptr inbounds %struct.module_kobject, ptr %4, i32 0, i32 3, !dbg !5606
  store ptr %call, ptr %mp15, align 8, !dbg !5607
  %5 = load ptr, ptr %mk.addr, align 8, !dbg !5608
  %mp16 = getelementptr inbounds %struct.module_kobject, ptr %5, i32 0, i32 3, !dbg !5610
  %6 = load ptr, ptr %mp16, align 8, !dbg !5610
  %tobool17 = icmp ne ptr %6, null, !dbg !5608
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !5611

if.then18:                                        ; preds = %if.then14
  store i32 -12, ptr %retval, align 4, !dbg !5612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5612

if.end19:                                         ; preds = %if.then14
  %7 = load ptr, ptr %mk.addr, align 8, !dbg !5613
  %mp20 = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 3, !dbg !5614
  %8 = load ptr, ptr %mp20, align 8, !dbg !5614
  %grp = getelementptr inbounds %struct.module_param_attrs, ptr %8, i32 0, i32 1, !dbg !5615
  %name21 = getelementptr inbounds %struct.attribute_group, ptr %grp, i32 0, i32 0, !dbg !5616
  store ptr @.str.26, ptr %name21, align 8, !dbg !5617
  %call22 = call noalias ptr @kzalloc(i64 noundef 8, i32 noundef 3264) #21, !dbg !5618
  %9 = load ptr, ptr %mk.addr, align 8, !dbg !5619
  %mp23 = getelementptr inbounds %struct.module_kobject, ptr %9, i32 0, i32 3, !dbg !5620
  %10 = load ptr, ptr %mp23, align 8, !dbg !5620
  %grp24 = getelementptr inbounds %struct.module_param_attrs, ptr %10, i32 0, i32 1, !dbg !5621
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %grp24, i32 0, i32 3, !dbg !5622
  store ptr %call22, ptr %attrs, align 8, !dbg !5623
  %11 = load ptr, ptr %mk.addr, align 8, !dbg !5624
  %mp25 = getelementptr inbounds %struct.module_kobject, ptr %11, i32 0, i32 3, !dbg !5626
  %12 = load ptr, ptr %mp25, align 8, !dbg !5626
  %grp26 = getelementptr inbounds %struct.module_param_attrs, ptr %12, i32 0, i32 1, !dbg !5627
  %attrs27 = getelementptr inbounds %struct.attribute_group, ptr %grp26, i32 0, i32 3, !dbg !5628
  %13 = load ptr, ptr %attrs27, align 8, !dbg !5628
  %tobool28 = icmp ne ptr %13, null, !dbg !5624
  br i1 %tobool28, label %if.end30, label %if.then29, !dbg !5629

if.then29:                                        ; preds = %if.end19
  store i32 -12, ptr %retval, align 4, !dbg !5630
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5630

if.end30:                                         ; preds = %if.end19
  br label %if.end31, !dbg !5631

if.end31:                                         ; preds = %if.end30, %do.end12
  %14 = load ptr, ptr %mk.addr, align 8, !dbg !5632
  %mp32 = getelementptr inbounds %struct.module_kobject, ptr %14, i32 0, i32 3, !dbg !5633
  %15 = load ptr, ptr %mp32, align 8, !dbg !5633
  %16 = load ptr, ptr %mk.addr, align 8, !dbg !5634
  %mp33 = getelementptr inbounds %struct.module_kobject, ptr %16, i32 0, i32 3, !dbg !5635
  %17 = load ptr, ptr %mp33, align 8, !dbg !5635
  %num = getelementptr inbounds %struct.module_param_attrs, ptr %17, i32 0, i32 0, !dbg !5636
  %18 = load i32, ptr %num, align 8, !dbg !5636
  %add = add i32 %18, 1, !dbg !5637
  %conv34 = zext i32 %add to i64, !dbg !5638
  %mul = mul i64 64, %conv34, !dbg !5639
  %add35 = add i64 48, %mul, !dbg !5640
  %call36 = call ptr @krealloc(ptr noundef %15, i64 noundef %add35, i32 noundef 3264) #22, !dbg !5641
  store ptr %call36, ptr %new_mp, align 8, !dbg !5642
  %19 = load ptr, ptr %new_mp, align 8, !dbg !5643
  %tobool37 = icmp ne ptr %19, null, !dbg !5643
  br i1 %tobool37, label %if.end39, label %if.then38, !dbg !5645

if.then38:                                        ; preds = %if.end31
  store i32 -12, ptr %retval, align 4, !dbg !5646
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5646

if.end39:                                         ; preds = %if.end31
  %20 = load ptr, ptr %new_mp, align 8, !dbg !5647
  %21 = load ptr, ptr %mk.addr, align 8, !dbg !5648
  %mp40 = getelementptr inbounds %struct.module_kobject, ptr %21, i32 0, i32 3, !dbg !5649
  store ptr %20, ptr %mp40, align 8, !dbg !5650
  %22 = load ptr, ptr %mk.addr, align 8, !dbg !5651
  %mp41 = getelementptr inbounds %struct.module_kobject, ptr %22, i32 0, i32 3, !dbg !5652
  %23 = load ptr, ptr %mp41, align 8, !dbg !5652
  %grp42 = getelementptr inbounds %struct.module_param_attrs, ptr %23, i32 0, i32 1, !dbg !5653
  %attrs43 = getelementptr inbounds %struct.attribute_group, ptr %grp42, i32 0, i32 3, !dbg !5654
  %24 = load ptr, ptr %attrs43, align 8, !dbg !5654
  %25 = load ptr, ptr %mk.addr, align 8, !dbg !5655
  %mp44 = getelementptr inbounds %struct.module_kobject, ptr %25, i32 0, i32 3, !dbg !5656
  %26 = load ptr, ptr %mp44, align 8, !dbg !5656
  %num45 = getelementptr inbounds %struct.module_param_attrs, ptr %26, i32 0, i32 0, !dbg !5657
  %27 = load i32, ptr %num45, align 8, !dbg !5657
  %add46 = add i32 %27, 2, !dbg !5658
  %conv47 = zext i32 %add46 to i64, !dbg !5659
  %mul48 = mul i64 8, %conv47, !dbg !5660
  %call49 = call ptr @krealloc(ptr noundef %24, i64 noundef %mul48, i32 noundef 3264) #22, !dbg !5661
  store ptr %call49, ptr %new_attrs, align 8, !dbg !5662
  %28 = load ptr, ptr %new_attrs, align 8, !dbg !5663
  %tobool50 = icmp ne ptr %28, null, !dbg !5663
  br i1 %tobool50, label %if.end52, label %if.then51, !dbg !5665

if.then51:                                        ; preds = %if.end39
  store i32 -12, ptr %retval, align 4, !dbg !5666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5666

if.end52:                                         ; preds = %if.end39
  %29 = load ptr, ptr %new_attrs, align 8, !dbg !5667
  %30 = load ptr, ptr %mk.addr, align 8, !dbg !5668
  %mp53 = getelementptr inbounds %struct.module_kobject, ptr %30, i32 0, i32 3, !dbg !5669
  %31 = load ptr, ptr %mp53, align 8, !dbg !5669
  %grp54 = getelementptr inbounds %struct.module_param_attrs, ptr %31, i32 0, i32 1, !dbg !5670
  %attrs55 = getelementptr inbounds %struct.attribute_group, ptr %grp54, i32 0, i32 3, !dbg !5671
  store ptr %29, ptr %attrs55, align 8, !dbg !5672
  %32 = load ptr, ptr %mk.addr, align 8, !dbg !5673
  %mp56 = getelementptr inbounds %struct.module_kobject, ptr %32, i32 0, i32 3, !dbg !5674
  %33 = load ptr, ptr %mp56, align 8, !dbg !5674
  %attrs57 = getelementptr inbounds %struct.module_param_attrs, ptr %33, i32 0, i32 2, !dbg !5675
  %34 = load ptr, ptr %mk.addr, align 8, !dbg !5676
  %mp58 = getelementptr inbounds %struct.module_kobject, ptr %34, i32 0, i32 3, !dbg !5677
  %35 = load ptr, ptr %mp58, align 8, !dbg !5677
  %num59 = getelementptr inbounds %struct.module_param_attrs, ptr %35, i32 0, i32 0, !dbg !5678
  %36 = load i32, ptr %num59, align 8, !dbg !5678
  %idxprom = zext i32 %36 to i64, !dbg !5673
  %arrayidx = getelementptr [0 x %struct.param_attribute], ptr %attrs57, i64 0, i64 %idxprom, !dbg !5673
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx, i8 0, i64 64, i1 false), !dbg !5679
  br label %do.body60, !dbg !5680

do.body60:                                        ; preds = %if.end52
  br label %do.cond61, !dbg !5681

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !5681

do.end62:                                         ; preds = %do.cond61
  %37 = load ptr, ptr %kp.addr, align 8, !dbg !5683
  %38 = load ptr, ptr %mk.addr, align 8, !dbg !5684
  %mp63 = getelementptr inbounds %struct.module_kobject, ptr %38, i32 0, i32 3, !dbg !5685
  %39 = load ptr, ptr %mp63, align 8, !dbg !5685
  %attrs64 = getelementptr inbounds %struct.module_param_attrs, ptr %39, i32 0, i32 2, !dbg !5686
  %40 = load ptr, ptr %mk.addr, align 8, !dbg !5687
  %mp65 = getelementptr inbounds %struct.module_kobject, ptr %40, i32 0, i32 3, !dbg !5688
  %41 = load ptr, ptr %mp65, align 8, !dbg !5688
  %num66 = getelementptr inbounds %struct.module_param_attrs, ptr %41, i32 0, i32 0, !dbg !5689
  %42 = load i32, ptr %num66, align 8, !dbg !5689
  %idxprom67 = zext i32 %42 to i64, !dbg !5684
  %arrayidx68 = getelementptr [0 x %struct.param_attribute], ptr %attrs64, i64 0, i64 %idxprom67, !dbg !5684
  %param = getelementptr inbounds %struct.param_attribute, ptr %arrayidx68, i32 0, i32 1, !dbg !5690
  store ptr %37, ptr %param, align 8, !dbg !5691
  %43 = load ptr, ptr %mk.addr, align 8, !dbg !5692
  %mp69 = getelementptr inbounds %struct.module_kobject, ptr %43, i32 0, i32 3, !dbg !5693
  %44 = load ptr, ptr %mp69, align 8, !dbg !5693
  %attrs70 = getelementptr inbounds %struct.module_param_attrs, ptr %44, i32 0, i32 2, !dbg !5694
  %45 = load ptr, ptr %mk.addr, align 8, !dbg !5695
  %mp71 = getelementptr inbounds %struct.module_kobject, ptr %45, i32 0, i32 3, !dbg !5696
  %46 = load ptr, ptr %mp71, align 8, !dbg !5696
  %num72 = getelementptr inbounds %struct.module_param_attrs, ptr %46, i32 0, i32 0, !dbg !5697
  %47 = load i32, ptr %num72, align 8, !dbg !5697
  %idxprom73 = zext i32 %47 to i64, !dbg !5692
  %arrayidx74 = getelementptr [0 x %struct.param_attribute], ptr %attrs70, i64 0, i64 %idxprom73, !dbg !5692
  %mattr = getelementptr inbounds %struct.param_attribute, ptr %arrayidx74, i32 0, i32 0, !dbg !5698
  %show = getelementptr inbounds %struct.module_attribute, ptr %mattr, i32 0, i32 1, !dbg !5699
  store ptr @param_attr_show, ptr %show, align 8, !dbg !5700
  %48 = load ptr, ptr %kp.addr, align 8, !dbg !5701
  %perm75 = getelementptr inbounds %struct.kernel_param, ptr %48, i32 0, i32 3, !dbg !5703
  %49 = load i16, ptr %perm75, align 8, !dbg !5703
  %conv76 = zext i16 %49 to i32, !dbg !5701
  %and = and i32 %conv76, 146, !dbg !5704
  %cmp = icmp ne i32 %and, 0, !dbg !5705
  br i1 %cmp, label %if.then78, label %if.else, !dbg !5706

if.then78:                                        ; preds = %do.end62
  %50 = load ptr, ptr %mk.addr, align 8, !dbg !5707
  %mp79 = getelementptr inbounds %struct.module_kobject, ptr %50, i32 0, i32 3, !dbg !5708
  %51 = load ptr, ptr %mp79, align 8, !dbg !5708
  %attrs80 = getelementptr inbounds %struct.module_param_attrs, ptr %51, i32 0, i32 2, !dbg !5709
  %52 = load ptr, ptr %mk.addr, align 8, !dbg !5710
  %mp81 = getelementptr inbounds %struct.module_kobject, ptr %52, i32 0, i32 3, !dbg !5711
  %53 = load ptr, ptr %mp81, align 8, !dbg !5711
  %num82 = getelementptr inbounds %struct.module_param_attrs, ptr %53, i32 0, i32 0, !dbg !5712
  %54 = load i32, ptr %num82, align 8, !dbg !5712
  %idxprom83 = zext i32 %54 to i64, !dbg !5707
  %arrayidx84 = getelementptr [0 x %struct.param_attribute], ptr %attrs80, i64 0, i64 %idxprom83, !dbg !5707
  %mattr85 = getelementptr inbounds %struct.param_attribute, ptr %arrayidx84, i32 0, i32 0, !dbg !5713
  %store = getelementptr inbounds %struct.module_attribute, ptr %mattr85, i32 0, i32 2, !dbg !5714
  store ptr @param_attr_store, ptr %store, align 8, !dbg !5715
  br label %if.end94, !dbg !5707

if.else:                                          ; preds = %do.end62
  %55 = load ptr, ptr %mk.addr, align 8, !dbg !5716
  %mp86 = getelementptr inbounds %struct.module_kobject, ptr %55, i32 0, i32 3, !dbg !5717
  %56 = load ptr, ptr %mp86, align 8, !dbg !5717
  %attrs87 = getelementptr inbounds %struct.module_param_attrs, ptr %56, i32 0, i32 2, !dbg !5718
  %57 = load ptr, ptr %mk.addr, align 8, !dbg !5719
  %mp88 = getelementptr inbounds %struct.module_kobject, ptr %57, i32 0, i32 3, !dbg !5720
  %58 = load ptr, ptr %mp88, align 8, !dbg !5720
  %num89 = getelementptr inbounds %struct.module_param_attrs, ptr %58, i32 0, i32 0, !dbg !5721
  %59 = load i32, ptr %num89, align 8, !dbg !5721
  %idxprom90 = zext i32 %59 to i64, !dbg !5716
  %arrayidx91 = getelementptr [0 x %struct.param_attribute], ptr %attrs87, i64 0, i64 %idxprom90, !dbg !5716
  %mattr92 = getelementptr inbounds %struct.param_attribute, ptr %arrayidx91, i32 0, i32 0, !dbg !5722
  %store93 = getelementptr inbounds %struct.module_attribute, ptr %mattr92, i32 0, i32 2, !dbg !5723
  store ptr null, ptr %store93, align 8, !dbg !5724
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then78
  %60 = load ptr, ptr %name.addr, align 8, !dbg !5725
  %61 = load ptr, ptr %mk.addr, align 8, !dbg !5726
  %mp95 = getelementptr inbounds %struct.module_kobject, ptr %61, i32 0, i32 3, !dbg !5727
  %62 = load ptr, ptr %mp95, align 8, !dbg !5727
  %attrs96 = getelementptr inbounds %struct.module_param_attrs, ptr %62, i32 0, i32 2, !dbg !5728
  %63 = load ptr, ptr %mk.addr, align 8, !dbg !5729
  %mp97 = getelementptr inbounds %struct.module_kobject, ptr %63, i32 0, i32 3, !dbg !5730
  %64 = load ptr, ptr %mp97, align 8, !dbg !5730
  %num98 = getelementptr inbounds %struct.module_param_attrs, ptr %64, i32 0, i32 0, !dbg !5731
  %65 = load i32, ptr %num98, align 8, !dbg !5731
  %idxprom99 = zext i32 %65 to i64, !dbg !5726
  %arrayidx100 = getelementptr [0 x %struct.param_attribute], ptr %attrs96, i64 0, i64 %idxprom99, !dbg !5726
  %mattr101 = getelementptr inbounds %struct.param_attribute, ptr %arrayidx100, i32 0, i32 0, !dbg !5732
  %attr = getelementptr inbounds %struct.module_attribute, ptr %mattr101, i32 0, i32 0, !dbg !5733
  %name102 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !5734
  store ptr %60, ptr %name102, align 8, !dbg !5735
  %66 = load ptr, ptr %kp.addr, align 8, !dbg !5736
  %perm103 = getelementptr inbounds %struct.kernel_param, ptr %66, i32 0, i32 3, !dbg !5737
  %67 = load i16, ptr %perm103, align 8, !dbg !5737
  %68 = load ptr, ptr %mk.addr, align 8, !dbg !5738
  %mp104 = getelementptr inbounds %struct.module_kobject, ptr %68, i32 0, i32 3, !dbg !5739
  %69 = load ptr, ptr %mp104, align 8, !dbg !5739
  %attrs105 = getelementptr inbounds %struct.module_param_attrs, ptr %69, i32 0, i32 2, !dbg !5740
  %70 = load ptr, ptr %mk.addr, align 8, !dbg !5741
  %mp106 = getelementptr inbounds %struct.module_kobject, ptr %70, i32 0, i32 3, !dbg !5742
  %71 = load ptr, ptr %mp106, align 8, !dbg !5742
  %num107 = getelementptr inbounds %struct.module_param_attrs, ptr %71, i32 0, i32 0, !dbg !5743
  %72 = load i32, ptr %num107, align 8, !dbg !5743
  %idxprom108 = zext i32 %72 to i64, !dbg !5738
  %arrayidx109 = getelementptr [0 x %struct.param_attribute], ptr %attrs105, i64 0, i64 %idxprom108, !dbg !5738
  %mattr110 = getelementptr inbounds %struct.param_attribute, ptr %arrayidx109, i32 0, i32 0, !dbg !5744
  %attr111 = getelementptr inbounds %struct.module_attribute, ptr %mattr110, i32 0, i32 0, !dbg !5745
  %mode = getelementptr inbounds %struct.attribute, ptr %attr111, i32 0, i32 1, !dbg !5746
  store i16 %67, ptr %mode, align 8, !dbg !5747
  %73 = load ptr, ptr %mk.addr, align 8, !dbg !5748
  %mp112 = getelementptr inbounds %struct.module_kobject, ptr %73, i32 0, i32 3, !dbg !5749
  %74 = load ptr, ptr %mp112, align 8, !dbg !5749
  %num113 = getelementptr inbounds %struct.module_param_attrs, ptr %74, i32 0, i32 0, !dbg !5750
  %75 = load i32, ptr %num113, align 8, !dbg !5751
  %inc = add i32 %75, 1, !dbg !5751
  store i32 %inc, ptr %num113, align 8, !dbg !5751
  store i32 0, ptr %i, align 4, !dbg !5752
  br label %for.cond, !dbg !5754

for.cond:                                         ; preds = %for.inc, %if.end94
  %76 = load i32, ptr %i, align 4, !dbg !5755
  %77 = load ptr, ptr %mk.addr, align 8, !dbg !5757
  %mp114 = getelementptr inbounds %struct.module_kobject, ptr %77, i32 0, i32 3, !dbg !5758
  %78 = load ptr, ptr %mp114, align 8, !dbg !5758
  %num115 = getelementptr inbounds %struct.module_param_attrs, ptr %78, i32 0, i32 0, !dbg !5759
  %79 = load i32, ptr %num115, align 8, !dbg !5759
  %cmp116 = icmp ult i32 %76, %79, !dbg !5760
  br i1 %cmp116, label %for.body, label %for.end, !dbg !5761

for.body:                                         ; preds = %for.cond
  %80 = load ptr, ptr %mk.addr, align 8, !dbg !5762
  %mp118 = getelementptr inbounds %struct.module_kobject, ptr %80, i32 0, i32 3, !dbg !5763
  %81 = load ptr, ptr %mp118, align 8, !dbg !5763
  %attrs119 = getelementptr inbounds %struct.module_param_attrs, ptr %81, i32 0, i32 2, !dbg !5764
  %82 = load i32, ptr %i, align 4, !dbg !5765
  %idxprom120 = zext i32 %82 to i64, !dbg !5762
  %arrayidx121 = getelementptr [0 x %struct.param_attribute], ptr %attrs119, i64 0, i64 %idxprom120, !dbg !5762
  %mattr122 = getelementptr inbounds %struct.param_attribute, ptr %arrayidx121, i32 0, i32 0, !dbg !5766
  %attr123 = getelementptr inbounds %struct.module_attribute, ptr %mattr122, i32 0, i32 0, !dbg !5767
  %83 = load ptr, ptr %mk.addr, align 8, !dbg !5768
  %mp124 = getelementptr inbounds %struct.module_kobject, ptr %83, i32 0, i32 3, !dbg !5769
  %84 = load ptr, ptr %mp124, align 8, !dbg !5769
  %grp125 = getelementptr inbounds %struct.module_param_attrs, ptr %84, i32 0, i32 1, !dbg !5770
  %attrs126 = getelementptr inbounds %struct.attribute_group, ptr %grp125, i32 0, i32 3, !dbg !5771
  %85 = load ptr, ptr %attrs126, align 8, !dbg !5771
  %86 = load i32, ptr %i, align 4, !dbg !5772
  %idxprom127 = zext i32 %86 to i64, !dbg !5768
  %arrayidx128 = getelementptr ptr, ptr %85, i64 %idxprom127, !dbg !5768
  store ptr %attr123, ptr %arrayidx128, align 8, !dbg !5773
  br label %for.inc, !dbg !5768

for.inc:                                          ; preds = %for.body
  %87 = load i32, ptr %i, align 4, !dbg !5774
  %inc129 = add i32 %87, 1, !dbg !5774
  store i32 %inc129, ptr %i, align 4, !dbg !5774
  br label %for.cond, !dbg !5775, !llvm.loop !5776

for.end:                                          ; preds = %for.cond
  %88 = load ptr, ptr %mk.addr, align 8, !dbg !5778
  %mp130 = getelementptr inbounds %struct.module_kobject, ptr %88, i32 0, i32 3, !dbg !5779
  %89 = load ptr, ptr %mp130, align 8, !dbg !5779
  %grp131 = getelementptr inbounds %struct.module_param_attrs, ptr %89, i32 0, i32 1, !dbg !5780
  %attrs132 = getelementptr inbounds %struct.attribute_group, ptr %grp131, i32 0, i32 3, !dbg !5781
  %90 = load ptr, ptr %attrs132, align 8, !dbg !5781
  %91 = load ptr, ptr %mk.addr, align 8, !dbg !5782
  %mp133 = getelementptr inbounds %struct.module_kobject, ptr %91, i32 0, i32 3, !dbg !5783
  %92 = load ptr, ptr %mp133, align 8, !dbg !5783
  %num134 = getelementptr inbounds %struct.module_param_attrs, ptr %92, i32 0, i32 0, !dbg !5784
  %93 = load i32, ptr %num134, align 8, !dbg !5784
  %idxprom135 = zext i32 %93 to i64, !dbg !5778
  %arrayidx136 = getelementptr ptr, ptr %90, i64 %idxprom135, !dbg !5778
  store ptr null, ptr %arrayidx136, align 8, !dbg !5785
  store i32 0, ptr %retval, align 4, !dbg !5786
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5786

cleanup:                                          ; preds = %for.end, %if.then51, %if.then38, %if.then29, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_attrs) #18, !dbg !5787
  call void @llvm.lifetime.end.p0(i64 8, ptr %new_mp) #18, !dbg !5787
  %94 = load i32, ptr %retval, align 4, !dbg !5787
  ret i32 %94, !dbg !5787
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @free_module_param_attrs(ptr noundef %mk) #0 align 16 !dbg !5788 {
entry:
  %mk.addr = alloca ptr, align 8
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !5792, metadata !DIExpression()), !dbg !5793
  %0 = load ptr, ptr %mk.addr, align 8, !dbg !5794
  %mp = getelementptr inbounds %struct.module_kobject, ptr %0, i32 0, i32 3, !dbg !5796
  %1 = load ptr, ptr %mp, align 8, !dbg !5796
  %tobool = icmp ne ptr %1, null, !dbg !5794
  br i1 %tobool, label %if.then, label %if.end, !dbg !5797

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mk.addr, align 8, !dbg !5798
  %mp1 = getelementptr inbounds %struct.module_kobject, ptr %2, i32 0, i32 3, !dbg !5799
  %3 = load ptr, ptr %mp1, align 8, !dbg !5799
  %grp = getelementptr inbounds %struct.module_param_attrs, ptr %3, i32 0, i32 1, !dbg !5800
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %grp, i32 0, i32 3, !dbg !5801
  %4 = load ptr, ptr %attrs, align 8, !dbg !5801
  call void @kfree(ptr noundef %4) #19, !dbg !5802
  br label %if.end, !dbg !5802

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %mk.addr, align 8, !dbg !5803
  %mp2 = getelementptr inbounds %struct.module_kobject, ptr %5, i32 0, i32 3, !dbg !5804
  %6 = load ptr, ptr %mp2, align 8, !dbg !5804
  call void @kfree(ptr noundef %6) #19, !dbg !5805
  %7 = load ptr, ptr %mk.addr, align 8, !dbg !5806
  %mp3 = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 3, !dbg !5807
  store ptr null, ptr %mp3, align 8, !dbg !5808
  ret void, !dbg !5809
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5810 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @module_param_sysfs_remove(ptr noundef %mod) #0 align 16 !dbg !5813 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !5815, metadata !DIExpression()), !dbg !5816
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !5817
  %mkobj = getelementptr inbounds %struct.module, ptr %0, i32 0, i32 3, !dbg !5819
  %mp = getelementptr inbounds %struct.module_kobject, ptr %mkobj, i32 0, i32 3, !dbg !5820
  %1 = load ptr, ptr %mp, align 16, !dbg !5820
  %tobool = icmp ne ptr %1, null, !dbg !5817
  br i1 %tobool, label %if.then, label %if.end, !dbg !5821

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %mod.addr, align 8, !dbg !5822
  %mkobj1 = getelementptr inbounds %struct.module, ptr %2, i32 0, i32 3, !dbg !5824
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %mkobj1, i32 0, i32 0, !dbg !5825
  %3 = load ptr, ptr %mod.addr, align 8, !dbg !5826
  %mkobj2 = getelementptr inbounds %struct.module, ptr %3, i32 0, i32 3, !dbg !5827
  %mp3 = getelementptr inbounds %struct.module_kobject, ptr %mkobj2, i32 0, i32 3, !dbg !5828
  %4 = load ptr, ptr %mp3, align 16, !dbg !5828
  %grp = getelementptr inbounds %struct.module_param_attrs, ptr %4, i32 0, i32 1, !dbg !5829
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %grp) #19, !dbg !5830
  %5 = load ptr, ptr %mod.addr, align 8, !dbg !5831
  %mkobj4 = getelementptr inbounds %struct.module, ptr %5, i32 0, i32 3, !dbg !5832
  call void @free_module_param_attrs(ptr noundef %mkobj4) #19, !dbg !5833
  br label %if.end, !dbg !5834

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5835
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5836 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @destroy_params(ptr noundef %params, i32 noundef %num) #0 align 16 !dbg !5839 {
entry:
  %params.addr = alloca ptr, align 8
  %num.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %params, ptr %params.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %params.addr, metadata !5843, metadata !DIExpression()), !dbg !5846
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !5844, metadata !DIExpression()), !dbg !5847
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #18, !dbg !5848
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5845, metadata !DIExpression()), !dbg !5849
  store i32 0, ptr %i, align 4, !dbg !5850
  br label %for.cond, !dbg !5852

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5853
  %1 = load i32, ptr %num.addr, align 4, !dbg !5855
  %cmp = icmp ult i32 %0, %1, !dbg !5856
  br i1 %cmp, label %for.body, label %for.end, !dbg !5857

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %params.addr, align 8, !dbg !5858
  %3 = load i32, ptr %i, align 4, !dbg !5860
  %idxprom = zext i32 %3 to i64, !dbg !5858
  %arrayidx = getelementptr %struct.kernel_param, ptr %2, i64 %idxprom, !dbg !5858
  %ops = getelementptr inbounds %struct.kernel_param, ptr %arrayidx, i32 0, i32 2, !dbg !5861
  %4 = load ptr, ptr %ops, align 8, !dbg !5861
  %free = getelementptr inbounds %struct.kernel_param_ops, ptr %4, i32 0, i32 3, !dbg !5862
  %5 = load ptr, ptr %free, align 8, !dbg !5862
  %tobool = icmp ne ptr %5, null, !dbg !5858
  br i1 %tobool, label %if.then, label %if.end, !dbg !5863

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %params.addr, align 8, !dbg !5864
  %7 = load i32, ptr %i, align 4, !dbg !5865
  %idxprom1 = zext i32 %7 to i64, !dbg !5864
  %arrayidx2 = getelementptr %struct.kernel_param, ptr %6, i64 %idxprom1, !dbg !5864
  %ops3 = getelementptr inbounds %struct.kernel_param, ptr %arrayidx2, i32 0, i32 2, !dbg !5866
  %8 = load ptr, ptr %ops3, align 8, !dbg !5866
  %free4 = getelementptr inbounds %struct.kernel_param_ops, ptr %8, i32 0, i32 3, !dbg !5867
  %9 = load ptr, ptr %free4, align 8, !dbg !5867
  %10 = load ptr, ptr %params.addr, align 8, !dbg !5868
  %11 = load i32, ptr %i, align 4, !dbg !5869
  %idxprom5 = zext i32 %11 to i64, !dbg !5868
  %arrayidx6 = getelementptr %struct.kernel_param, ptr %10, i64 %idxprom5, !dbg !5868
  %12 = getelementptr inbounds %struct.kernel_param, ptr %arrayidx6, i32 0, i32 6, !dbg !5870
  %13 = load ptr, ptr %12, align 8, !dbg !5870
  call void %9(ptr noundef %13) #19, !dbg !5864
  br label %if.end, !dbg !5864

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !5862

for.inc:                                          ; preds = %if.end
  %14 = load i32, ptr %i, align 4, !dbg !5871
  %inc = add i32 %14, 1, !dbg !5871
  store i32 %inc, ptr %i, align 4, !dbg !5871
  br label %for.cond, !dbg !5872, !llvm.loop !5873

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #18, !dbg !5875
  ret void, !dbg !5875
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @__modver_version_show(ptr noundef %mattr, ptr noundef %mk, ptr noundef %buf) #0 align 16 !dbg !5876 {
entry:
  %mattr.addr = alloca ptr, align 8
  %mk.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %vattr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %mattr, ptr %mattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mattr.addr, metadata !5878, metadata !DIExpression()), !dbg !5884
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !5879, metadata !DIExpression()), !dbg !5885
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !5880, metadata !DIExpression()), !dbg !5886
  call void @llvm.lifetime.start.p0(i64 8, ptr %vattr) #18, !dbg !5887
  call void @llvm.dbg.declare(metadata ptr %vattr, metadata !5881, metadata !DIExpression()), !dbg !5888
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5889
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5882, metadata !DIExpression()), !dbg !5889
  %0 = load ptr, ptr %mattr.addr, align 8, !dbg !5889
  store ptr %0, ptr %__mptr, align 8, !dbg !5889
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5889
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5889
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5889
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5890
  %2 = load ptr, ptr %tmp, align 8, !dbg !5889
  store ptr %2, ptr %vattr, align 8, !dbg !5888
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !5891
  %4 = load ptr, ptr %vattr, align 8, !dbg !5892
  %version = getelementptr inbounds %struct.module_version_attribute, ptr %4, i32 0, i32 2, !dbg !5893
  %5 = load ptr, ptr %version, align 8, !dbg !5893
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %3, i64 noundef 4096, ptr noundef @.str.16, ptr noundef %5) #19, !dbg !5894
  %conv = sext i32 %call to i64, !dbg !5894
  call void @llvm.lifetime.end.p0(i64 8, ptr %vattr) #18, !dbg !5895
  ret i64 %conv, !dbg !5896
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @module_kobj_release(ptr noundef %kobj) #0 align 16 !dbg !5897 {
entry:
  %kobj.addr = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !5899, metadata !DIExpression()), !dbg !5903
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !5904
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !5900, metadata !DIExpression()), !dbg !5905
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !5906
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !5901, metadata !DIExpression()), !dbg !5906
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !5906
  store ptr %0, ptr %__mptr, align 8, !dbg !5906
  %1 = load ptr, ptr %__mptr, align 8, !dbg !5906
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !5906
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !5906
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !5907
  %2 = load ptr, ptr %tmp, align 8, !dbg !5906
  store ptr %2, ptr %mk, align 8, !dbg !5905
  %3 = load ptr, ptr %mk, align 8, !dbg !5908
  %kobj_completion = getelementptr inbounds %struct.module_kobject, ptr %3, i32 0, i32 4, !dbg !5909
  %4 = load ptr, ptr %kobj_completion, align 8, !dbg !5909
  call void @complete(ptr noundef %4) #19, !dbg !5910
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !5911
  ret void, !dbg !5911
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_params__337_974_param_sysfs_init4() #8 section ".init.text" align 16 !dbg !5912 {
entry:
  %call = call i32 @param_sysfs_init() #20, !dbg !5913
  ret i32 %call, !dbg !5913
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @param_sysfs_init() #8 section ".init.text" align 16 !dbg !5914 {
entry:
  %retval = alloca i32, align 4
  %tmp = alloca i32, align 4
  %call = call ptr @kset_create_and_add(ptr noundef @.str.27, ptr noundef @module_uevent_ops, ptr noundef null) #19, !dbg !5915
  store ptr %call, ptr @module_kset, align 8, !dbg !5916
  %0 = load ptr, ptr @module_kset, align 8, !dbg !5917
  %tobool = icmp ne ptr %0, null, !dbg !5917
  br i1 %tobool, label %if.end, label %if.then, !dbg !5919

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5920

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !5923

do.end:                                           ; preds = %do.body
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.28, ptr noundef @.str.25, i32 noundef 968) #20, !dbg !5920
  store i32 %call1, ptr %tmp, align 4, !dbg !5923
  %1 = load i32, ptr %tmp, align 4, !dbg !5920
  store i32 -12, ptr %retval, align 4, !dbg !5925
  br label %return, !dbg !5925

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5926
  br label %return, !dbg !5926

return:                                           ; preds = %if.end, %do.end
  %2 = load i32, ptr %retval, align 4, !dbg !5927
  ret i32 %2, !dbg !5927
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_params__339_990_param_sysfs_builtin_init7() #8 section ".init.text" align 16 !dbg !5928 {
entry:
  %call = call i32 @param_sysfs_builtin_init() #20, !dbg !5929
  ret i32 %call, !dbg !5929
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @param_sysfs_builtin_init() #8 section ".init.text" align 16 !dbg !5930 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @module_kset, align 8, !dbg !5931
  %tobool = icmp ne ptr %0, null, !dbg !5931
  br i1 %tobool, label %if.end, label %if.then, !dbg !5933

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !5934
  br label %return, !dbg !5934

if.end:                                           ; preds = %entry
  call void @version_sysfs_builtin() #20, !dbg !5935
  call void @param_sysfs_builtin() #20, !dbg !5936
  store i32 0, ptr %retval, align 4, !dbg !5937
  br label %return, !dbg !5937

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !5938
  ret i32 %1, !dbg !5938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #4 align 16 !dbg !5939 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #18, !dbg !5942
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !5941, metadata !DIExpression()), !dbg !5943
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #18, !dbg !5944, !srcloc !5945
  %0 = load i64, ptr %flags, align 8, !dbg !5946
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #18, !dbg !5947
  ret i64 %0, !dbg !5948
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @param_check_unsafe(ptr noundef %kp) #0 align 16 !dbg !5949 {
entry:
  %retval = alloca i1, align 1
  %kp.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %kp, ptr %kp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kp.addr, metadata !5953, metadata !DIExpression()), !dbg !5954
  %0 = load ptr, ptr %kp.addr, align 8, !dbg !5955
  %flags = getelementptr inbounds %struct.kernel_param, ptr %0, i32 0, i32 5, !dbg !5957
  %1 = load i8, ptr %flags, align 1, !dbg !5957
  %conv = zext i8 %1 to i32, !dbg !5955
  %and = and i32 %conv, 2, !dbg !5958
  %tobool = icmp ne i32 %and, 0, !dbg !5958
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !5959

land.lhs.true:                                    ; preds = %entry
  %call = call i32 @security_locked_down(i32 noundef 13) #19, !dbg !5960
  %tobool1 = icmp ne i32 %call, 0, !dbg !5960
  br i1 %tobool1, label %if.then, label %if.end, !dbg !5961

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !5962
  br label %return, !dbg !5962

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %kp.addr, align 8, !dbg !5963
  %flags2 = getelementptr inbounds %struct.kernel_param, ptr %2, i32 0, i32 5, !dbg !5965
  %3 = load i8, ptr %flags2, align 1, !dbg !5965
  %conv3 = zext i8 %3 to i32, !dbg !5963
  %and4 = and i32 %conv3, 1, !dbg !5966
  %tobool5 = icmp ne i32 %and4, 0, !dbg !5966
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !5967

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !5968

do.body:                                          ; preds = %if.then6
  br label %do.end, !dbg !5971

do.end:                                           ; preds = %do.body
  %4 = load ptr, ptr %kp.addr, align 8, !dbg !5968
  %name = getelementptr inbounds %struct.kernel_param, ptr %4, i32 0, i32 0, !dbg !5968
  %5 = load ptr, ptr %name, align 8, !dbg !5968
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef @.str.20, ptr noundef %5) #20, !dbg !5968
  store i32 %call7, ptr %tmp, align 4, !dbg !5971
  %6 = load i32, ptr %tmp, align 4, !dbg !5968
  call void @add_taint(i32 noundef 6, i32 noundef 0) #19, !dbg !5973
  br label %if.end8, !dbg !5974

if.end8:                                          ; preds = %do.end, %if.end
  store i1 true, ptr %retval, align 1, !dbg !5975
  br label %return, !dbg !5975

return:                                           ; preds = %if.end8, %if.then
  %7 = load i1, ptr %retval, align 1, !dbg !5976
  ret i1 %7, !dbg !5976
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5977 dso_local i32 @security_locked_down(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5980 dso_local void @add_taint(i32 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5983 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #4 align 16 !dbg !5986 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !5991, metadata !DIExpression()), !dbg !5992
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !5993
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !5993
  call void @_raw_spin_lock(ptr noundef %1) #19, !dbg !5993
  ret void, !dbg !5994
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #6 align 16 !dbg !5995 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6000, metadata !DIExpression()), !dbg !6001
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6002
  call void @__list_del_entry(ptr noundef %0) #19, !dbg !6003
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6004
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !6005
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !6006
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !6007
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !6008
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !6009
  ret void, !dbg !6010
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6011 dso_local void @kfree(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #4 align 16 !dbg !6014 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !6016, metadata !DIExpression()), !dbg !6017
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !6018
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !6018
  call void @_raw_spin_unlock(ptr noundef %1) #19, !dbg !6018
  ret void, !dbg !6019
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6020 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #6 align 16 !dbg !6025 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6027, metadata !DIExpression()), !dbg !6028
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !6029
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #19, !dbg !6031
  br i1 %call, label %if.end, label %if.then, !dbg !6032

if.then:                                          ; preds = %entry
  br label %return, !dbg !6033

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !6034
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6035
  %2 = load ptr, ptr %prev, align 8, !dbg !6035
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !6036
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6037
  %4 = load ptr, ptr %next, align 8, !dbg !6037
  call void @__list_del(ptr noundef %2, ptr noundef %4) #19, !dbg !6038
  br label %return, !dbg !6039

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !6039
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #6 align 16 !dbg !6040 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !6044, metadata !DIExpression()), !dbg !6045
  ret i1 true, !dbg !6046
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6047 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6051, metadata !DIExpression()), !dbg !6053
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6052, metadata !DIExpression()), !dbg !6054
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !6055
  %1 = load ptr, ptr %next.addr, align 8, !dbg !6056
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !6057
  store ptr %0, ptr %prev1, align 8, !dbg !6058
  br label %do.body, !dbg !6059

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !6060

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !6062

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !6060

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6064
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !6064
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !6064
  store volatile ptr %2, ptr %next4, align 8, !dbg !6064
  br label %do.end5, !dbg !6064

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !6060

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !6066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6067 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #9 align 16 !dbg !6068 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6072, metadata !DIExpression()), !dbg !6077
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6073, metadata !DIExpression()), !dbg !6078
  %0 = load i64, ptr %size.addr, align 8, !dbg !6079
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !6080
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !6081

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !6082
  %tobool = icmp ne i64 %2, 0, !dbg !6082
  br i1 %tobool, label %if.then, label %if.end7, !dbg !6083

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #18, !dbg !6084
  call void @llvm.dbg.declare(metadata ptr %index, metadata !6074, metadata !DIExpression()), !dbg !6085
  %3 = load i64, ptr %size.addr, align 8, !dbg !6086
  %cmp = icmp ugt i64 %3, 8192, !dbg !6088
  br i1 %cmp, label %if.then1, label %if.end, !dbg !6089

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !6090
  %5 = load i32, ptr %flags.addr, align 4, !dbg !6091
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #21, !dbg !6092
  store ptr %call, ptr %retval, align 8, !dbg !6093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6093

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !6094
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #19, !dbg !6094
  store i32 %call2, ptr %index, align 4, !dbg !6095
  %7 = load i32, ptr %flags.addr, align 4, !dbg !6096
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !6097
  %9 = ptrtoint ptr %8 to i64, !dbg !6097
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #19, !dbg !6098
  %idxprom = zext i32 %call3 to i64, !dbg !6099
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !6099
  %10 = load i32, ptr %index, align 4, !dbg !6100
  %idxprom4 = zext i32 %10 to i64, !dbg !6099
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !6099
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !6099
  %12 = load i32, ptr %flags.addr, align 4, !dbg !6101
  %13 = load i64, ptr %size.addr, align 8, !dbg !6102
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #23, !dbg !6103
  store ptr %call6, ptr %retval, align 8, !dbg !6104
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6104

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #18, !dbg !6105
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !6106
  %15 = load i32, ptr %flags.addr, align 4, !dbg !6107
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #21, !dbg !6108
  store ptr %call8, ptr %retval, align 8, !dbg !6109
  br label %return, !dbg !6109

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !6110
  ret ptr %16, !dbg !6110
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #6 align 16 !dbg !6111 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6113, metadata !DIExpression()), !dbg !6115
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !6114, metadata !DIExpression()), !dbg !6116
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6117
  %1 = load ptr, ptr %head.addr, align 8, !dbg !6118
  %2 = load ptr, ptr %head.addr, align 8, !dbg !6119
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !6120
  %3 = load ptr, ptr %next, align 8, !dbg !6120
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #19, !dbg !6121
  ret void, !dbg !6122
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6123 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #4 align 16 !dbg !6124 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6128, metadata !DIExpression()), !dbg !6130
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !6129, metadata !DIExpression()), !dbg !6131
  %0 = load i64, ptr %size.addr, align 8, !dbg !6132
  %tobool = icmp ne i64 %0, 0, !dbg !6132
  br i1 %tobool, label %if.end, label %if.then, !dbg !6134

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6135
  br label %return, !dbg !6135

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !6136
  %cmp = icmp ule i64 %1, 8, !dbg !6138
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !6139

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !6140
  br label %return, !dbg !6140

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !6141
  %cmp3 = icmp ugt i64 %2, 64, !dbg !6143
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !6144

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !6145
  %cmp4 = icmp ule i64 %3, 96, !dbg !6146
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !6147

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !6148
  br label %return, !dbg !6148

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !6149
  %cmp7 = icmp ugt i64 %4, 128, !dbg !6151
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !6152

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !6153
  %cmp9 = icmp ule i64 %5, 192, !dbg !6154
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !6155

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !6156
  br label %return, !dbg !6156

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !6157
  %cmp12 = icmp ule i64 %6, 8, !dbg !6159
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !6160

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !6161
  br label %return, !dbg !6161

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !6162
  %cmp15 = icmp ule i64 %7, 16, !dbg !6164
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !6165

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !6166
  br label %return, !dbg !6166

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !6167
  %cmp18 = icmp ule i64 %8, 32, !dbg !6169
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !6170

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !6171
  br label %return, !dbg !6171

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !6172
  %cmp21 = icmp ule i64 %9, 64, !dbg !6174
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !6175

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !6176
  br label %return, !dbg !6176

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !6177
  %cmp24 = icmp ule i64 %10, 128, !dbg !6179
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !6180

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !6181
  br label %return, !dbg !6181

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !6182
  %cmp27 = icmp ule i64 %11, 256, !dbg !6184
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !6185

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !6186
  br label %return, !dbg !6186

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !6187
  %cmp30 = icmp ule i64 %12, 512, !dbg !6189
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !6190

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !6191
  br label %return, !dbg !6191

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !6192
  %cmp33 = icmp ule i64 %13, 1024, !dbg !6194
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !6195

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !6196
  br label %return, !dbg !6196

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !6197
  %cmp36 = icmp ule i64 %14, 2048, !dbg !6199
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !6200

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !6201
  br label %return, !dbg !6201

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !6202
  %cmp39 = icmp ule i64 %15, 4096, !dbg !6204
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !6205

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !6206
  br label %return, !dbg !6206

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !6207
  %cmp42 = icmp ule i64 %16, 8192, !dbg !6209
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !6210

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !6211
  br label %return, !dbg !6211

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !6212
  %cmp45 = icmp ule i64 %17, 16384, !dbg !6214
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !6215

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !6216
  br label %return, !dbg !6216

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !6217
  %cmp48 = icmp ule i64 %18, 32768, !dbg !6219
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !6220

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !6221
  br label %return, !dbg !6221

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !6222
  %cmp51 = icmp ule i64 %19, 65536, !dbg !6224
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !6225

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !6226
  br label %return, !dbg !6226

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !6227
  %cmp54 = icmp ule i64 %20, 131072, !dbg !6229
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !6230

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !6231
  br label %return, !dbg !6231

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !6232
  %cmp57 = icmp ule i64 %21, 262144, !dbg !6234
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !6235

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !6236
  br label %return, !dbg !6236

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !6237
  %cmp60 = icmp ule i64 %22, 524288, !dbg !6239
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !6240

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !6241
  br label %return, !dbg !6241

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !6242
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !6244
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !6245

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !6246
  br label %return, !dbg !6246

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !6247
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !6249
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !6250

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !6251
  br label %return, !dbg !6251

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !6252, !range !5122, !noundef !895
  %tobool69 = trunc i8 %25 to i1, !dbg !6252
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !6254

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !6255

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #24, !dbg !6256, !srcloc !6259
  unreachable, !dbg !6256

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !6260

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !6261

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !6262

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !6264

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !6262

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.21, i32 480, i32 0, i64 12) #18, !dbg !6266, !srcloc !6268
  br label %do.end75, !dbg !6266

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !6262

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !6269
  br label %return, !dbg !6269

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !6270
  ret i32 %26, !dbg !6270
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !6271 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #4 align 16 !dbg !6277 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6281, metadata !DIExpression()), !dbg !6283
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !6282, metadata !DIExpression()), !dbg !6284
  %0 = load i32, ptr %flags.addr, align 4, !dbg !6285
  %and = and i32 %0, 17, !dbg !6285
  %cmp = icmp eq i32 %and, 0, !dbg !6285
  %lnot = xor i1 %cmp, true, !dbg !6285
  %lnot1 = xor i1 %lnot, true, !dbg !6285
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !6285
  %conv = sext i32 %lnot.ext to i64, !dbg !6285
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !6285
  %tobool = icmp ne i64 %expval, 0, !dbg !6285
  br i1 %tobool, label %if.then, label %if.end, !dbg !6287

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6288
  br label %return, !dbg !6288

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6289
  %and2 = and i32 %1, 1, !dbg !6291
  %tobool3 = icmp ne i32 %and2, 0, !dbg !6291
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !6292

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !6293
  br label %return, !dbg !6293

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !6294
  br label %return, !dbg !6294

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !6296
  ret i32 %2, !dbg !6296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !6297 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !6298 dso_local void @__compiletime_assert_204() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6299 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6303, metadata !DIExpression()), !dbg !6306
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6304, metadata !DIExpression()), !dbg !6307
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6305, metadata !DIExpression()), !dbg !6308
  %0 = load ptr, ptr %new.addr, align 8, !dbg !6309
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !6311
  %2 = load ptr, ptr %next.addr, align 8, !dbg !6312
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #19, !dbg !6313
  br i1 %call, label %if.end, label %if.then, !dbg !6314

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !6315

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !6316
  %4 = load ptr, ptr %next.addr, align 8, !dbg !6317
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !6318
  store ptr %3, ptr %prev1, align 8, !dbg !6319
  %5 = load ptr, ptr %next.addr, align 8, !dbg !6320
  %6 = load ptr, ptr %new.addr, align 8, !dbg !6321
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !6322
  store ptr %5, ptr %next2, align 8, !dbg !6323
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !6324
  %8 = load ptr, ptr %new.addr, align 8, !dbg !6325
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !6326
  store ptr %7, ptr %prev3, align 8, !dbg !6327
  br label %do.body, !dbg !6328

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !6329

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !6331

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !6329

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !6333
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !6333
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !6333
  store volatile ptr %9, ptr %next6, align 8, !dbg !6333
  br label %do.end7, !dbg !6333

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !6329

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !6335
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #6 align 16 !dbg !6336 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !6340, metadata !DIExpression()), !dbg !6343
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !6341, metadata !DIExpression()), !dbg !6344
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !6342, metadata !DIExpression()), !dbg !6345
  ret i1 true, !dbg !6346
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @param_array(ptr noundef %mod, ptr noundef %name, ptr noundef %val, i32 noundef %min, i32 noundef %max, ptr noundef %elem, i32 noundef %elemsize, ptr noundef %set, i16 noundef signext %level, ptr noundef %num) #0 align 16 !dbg !6347 {
entry:
  %retval = alloca i32, align 4
  %mod.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %val.addr = alloca ptr, align 8
  %min.addr = alloca i32, align 4
  %max.addr = alloca i32, align 4
  %elem.addr = alloca ptr, align 8
  %elemsize.addr = alloca i32, align 4
  %set.addr = alloca ptr, align 8
  %level.addr = alloca i16, align 2
  %num.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %kp = alloca %struct.kernel_param, align 8
  %save = alloca i8, align 1
  %len = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp27 = alloca i32, align 4
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !6351, metadata !DIExpression()), !dbg !6366
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6352, metadata !DIExpression()), !dbg !6367
  store ptr %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !6353, metadata !DIExpression()), !dbg !6368
  store i32 %min, ptr %min.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %min.addr, metadata !6354, metadata !DIExpression()), !dbg !6369
  store i32 %max, ptr %max.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max.addr, metadata !6355, metadata !DIExpression()), !dbg !6370
  store ptr %elem, ptr %elem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %elem.addr, metadata !6356, metadata !DIExpression()), !dbg !6371
  store i32 %elemsize, ptr %elemsize.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %elemsize.addr, metadata !6357, metadata !DIExpression()), !dbg !6372
  store ptr %set, ptr %set.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %set.addr, metadata !6358, metadata !DIExpression()), !dbg !6373
  store i16 %level, ptr %level.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !6359, metadata !DIExpression()), !dbg !6374
  store ptr %num, ptr %num.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !6360, metadata !DIExpression()), !dbg !6375
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6376
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6361, metadata !DIExpression()), !dbg !6377
  call void @llvm.lifetime.start.p0(i64 40, ptr %kp) #18, !dbg !6378
  call void @llvm.dbg.declare(metadata ptr %kp, metadata !6362, metadata !DIExpression()), !dbg !6379
  call void @llvm.lifetime.start.p0(i64 1, ptr %save) #18, !dbg !6380
  call void @llvm.dbg.declare(metadata ptr %save, metadata !6363, metadata !DIExpression()), !dbg !6381
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6382
  %name1 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 0, !dbg !6383
  store ptr %0, ptr %name1, align 8, !dbg !6384
  %1 = load ptr, ptr %elem.addr, align 8, !dbg !6385
  %2 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6, !dbg !6386
  store ptr %1, ptr %2, align 8, !dbg !6387
  %3 = load i16, ptr %level.addr, align 2, !dbg !6388
  %conv = trunc i16 %3 to i8, !dbg !6388
  %level2 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 4, !dbg !6389
  store i8 %conv, ptr %level2, align 2, !dbg !6390
  %4 = load ptr, ptr %num.addr, align 8, !dbg !6391
  store i32 0, ptr %4, align 4, !dbg !6392
  br label %do.body, !dbg !6393

do.body:                                          ; preds = %do.cond16, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #18, !dbg !6394
  call void @llvm.dbg.declare(metadata ptr %len, metadata !6364, metadata !DIExpression()), !dbg !6395
  %5 = load ptr, ptr %num.addr, align 8, !dbg !6396
  %6 = load i32, ptr %5, align 4, !dbg !6398
  %7 = load i32, ptr %max.addr, align 4, !dbg !6399
  %cmp = icmp eq i32 %6, %7, !dbg !6400
  br i1 %cmp, label %if.then, label %if.end, !dbg !6401

if.then:                                          ; preds = %do.body
  br label %do.body4, !dbg !6402

do.body4:                                         ; preds = %if.then
  br label %do.cond, !dbg !6405

do.cond:                                          ; preds = %do.body4
  br label %do.end, !dbg !6405

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %name.addr, align 8, !dbg !6402
  %9 = load i32, ptr %max.addr, align 4, !dbg !6402
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.22, ptr noundef %8, i32 noundef %9) #20, !dbg !6402
  store i32 %call, ptr %tmp, align 4, !dbg !6405
  %10 = load i32, ptr %tmp, align 4, !dbg !6402
  store i32 -22, ptr %retval, align 4, !dbg !6407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6407

if.end:                                           ; preds = %do.body
  %11 = load ptr, ptr %val.addr, align 8, !dbg !6408
  %call5 = call i64 @strcspn(ptr noundef %11, ptr noundef @.str.23) #19, !dbg !6409
  %conv6 = trunc i64 %call5 to i32, !dbg !6409
  store i32 %conv6, ptr %len, align 4, !dbg !6410
  %12 = load ptr, ptr %val.addr, align 8, !dbg !6411
  %13 = load i32, ptr %len, align 4, !dbg !6412
  %idxprom = sext i32 %13 to i64, !dbg !6411
  %arrayidx = getelementptr i8, ptr %12, i64 %idxprom, !dbg !6411
  %14 = load i8, ptr %arrayidx, align 1, !dbg !6411
  store i8 %14, ptr %save, align 1, !dbg !6413
  %15 = load ptr, ptr %val.addr, align 8, !dbg !6414
  %16 = load i32, ptr %len, align 4, !dbg !6415
  %idxprom7 = sext i32 %16 to i64, !dbg !6416
  %arrayidx8 = getelementptr i8, ptr %15, i64 %idxprom7, !dbg !6416
  store i8 0, ptr %arrayidx8, align 1, !dbg !6417
  %17 = load ptr, ptr %mod.addr, align 8, !dbg !6418
  call void @check_kparam_locked(ptr noundef %17) #19, !dbg !6419
  %18 = load ptr, ptr %set.addr, align 8, !dbg !6420
  %19 = load ptr, ptr %val.addr, align 8, !dbg !6421
  %call9 = call i32 %18(ptr noundef %19, ptr noundef %kp) #19, !dbg !6420
  store i32 %call9, ptr %ret, align 4, !dbg !6422
  %20 = load i32, ptr %ret, align 4, !dbg !6423
  %cmp10 = icmp ne i32 %20, 0, !dbg !6425
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !6426

if.then12:                                        ; preds = %if.end
  %21 = load i32, ptr %ret, align 4, !dbg !6427
  store i32 %21, ptr %retval, align 4, !dbg !6428
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6428

if.end13:                                         ; preds = %if.end
  %22 = load i32, ptr %elemsize.addr, align 4, !dbg !6429
  %23 = getelementptr inbounds %struct.kernel_param, ptr %kp, i32 0, i32 6, !dbg !6430
  %24 = load ptr, ptr %23, align 8, !dbg !6431
  %idx.ext = sext i32 %22 to i64, !dbg !6431
  %add.ptr = getelementptr i8, ptr %24, i64 %idx.ext, !dbg !6431
  store ptr %add.ptr, ptr %23, align 8, !dbg !6431
  %25 = load i32, ptr %len, align 4, !dbg !6432
  %add = add i32 %25, 1, !dbg !6433
  %26 = load ptr, ptr %val.addr, align 8, !dbg !6434
  %idx.ext14 = sext i32 %add to i64, !dbg !6434
  %add.ptr15 = getelementptr i8, ptr %26, i64 %idx.ext14, !dbg !6434
  store ptr %add.ptr15, ptr %val.addr, align 8, !dbg !6434
  %27 = load ptr, ptr %num.addr, align 8, !dbg !6435
  %28 = load i32, ptr %27, align 4, !dbg !6436
  %inc = add i32 %28, 1, !dbg !6436
  store i32 %inc, ptr %27, align 4, !dbg !6436
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6437
  br label %cleanup, !dbg !6437

cleanup:                                          ; preds = %if.end13, %if.then12, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #18, !dbg !6437
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup30 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.cond16, !dbg !6438

do.cond16:                                        ; preds = %cleanup.cont
  %29 = load i8, ptr %save, align 1, !dbg !6439
  %conv17 = zext i8 %29 to i32, !dbg !6439
  %cmp18 = icmp eq i32 %conv17, 44, !dbg !6440
  br i1 %cmp18, label %do.body, label %do.end20, !dbg !6438, !llvm.loop !6441

do.end20:                                         ; preds = %do.cond16
  %30 = load ptr, ptr %num.addr, align 8, !dbg !6443
  %31 = load i32, ptr %30, align 4, !dbg !6445
  %32 = load i32, ptr %min.addr, align 4, !dbg !6446
  %cmp21 = icmp ult i32 %31, %32, !dbg !6447
  br i1 %cmp21, label %if.then23, label %if.end29, !dbg !6448

if.then23:                                        ; preds = %do.end20
  br label %do.body24, !dbg !6449

do.body24:                                        ; preds = %if.then23
  br label %do.cond25, !dbg !6452

do.cond25:                                        ; preds = %do.body24
  br label %do.end26, !dbg !6452

do.end26:                                         ; preds = %do.cond25
  %33 = load ptr, ptr %name.addr, align 8, !dbg !6449
  %34 = load i32, ptr %min.addr, align 4, !dbg !6449
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef @.str.24, ptr noundef %33, i32 noundef %34) #20, !dbg !6449
  store i32 %call28, ptr %tmp27, align 4, !dbg !6452
  %35 = load i32, ptr %tmp27, align 4, !dbg !6449
  store i32 -22, ptr %retval, align 4, !dbg !6454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !6454

if.end29:                                         ; preds = %do.end20
  store i32 0, ptr %retval, align 4, !dbg !6455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup30, !dbg !6455

cleanup30:                                        ; preds = %if.end29, %do.end26, %cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr %save) #18, !dbg !6456
  call void @llvm.lifetime.end.p0(i64 40, ptr %kp) #18, !dbg !6456
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6456
  %36 = load i32, ptr %retval, align 4, !dbg !6456
  ret i32 %36, !dbg !6456
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6457 dso_local i64 @strcspn(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_kparam_locked(ptr noundef %mod) #6 align 16 !dbg !6460 {
entry:
  %mod.addr = alloca ptr, align 8
  store ptr %mod, ptr %mod.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mod.addr, metadata !6462, metadata !DIExpression()), !dbg !6463
  br label %do.body, !dbg !6464

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %mod.addr, align 8, !dbg !6465
  %tobool = icmp ne ptr %0, null, !dbg !6465
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !6465

cond.true:                                        ; preds = %do.body
  %1 = load ptr, ptr %mod.addr, align 8, !dbg !6465
  %param_lock = getelementptr inbounds %struct.module, ptr %1, i32 0, i32 11, !dbg !6465
  br label %cond.end, !dbg !6465

cond.false:                                       ; preds = %do.body
  br label %cond.end, !dbg !6465

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %param_lock, %cond.true ], [ @param_lock, %cond.false ], !dbg !6465
  %call = call zeroext i1 @mutex_is_locked(ptr noundef %cond) #19, !dbg !6465
  %lnot = xor i1 %call, true, !dbg !6465
  %lnot1 = xor i1 %lnot, true, !dbg !6465
  %lnot2 = xor i1 %lnot1, true, !dbg !6465
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !6465
  %conv = sext i32 %lnot.ext to i64, !dbg !6465
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6465
  %tobool3 = icmp ne i64 %expval, 0, !dbg !6465
  br i1 %tobool3, label %if.then, label %if.end, !dbg !6468

if.then:                                          ; preds = %cond.end
  br label %do.body4, !dbg !6465

do.body4:                                         ; preds = %if.then
  br label %do.body5, !dbg !6469

do.body5:                                         ; preds = %do.body4
  br label %do.end, !dbg !6471

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !6469

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 31, i32 0, i64 12) #18, !dbg !6473, !srcloc !6475
  br label %do.end7, !dbg !6473

do.end7:                                          ; preds = %do.body6
  unreachable, !dbg !6469

do.end8:                                          ; No predecessors!
  br label %if.end, !dbg !6469

if.end:                                           ; preds = %do.end8, %cond.end
  br label %do.end9, !dbg !6468

do.end9:                                          ; preds = %if.end
  ret void, !dbg !6476
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6477 dso_local zeroext i1 @mutex_is_locked(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #15 align 16 !dbg !6480 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !6482, metadata !DIExpression()), !dbg !6484
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !6483, metadata !DIExpression()), !dbg !6485
  %0 = load i64, ptr %size.addr, align 8, !dbg !6486
  %1 = load i32, ptr %flags.addr, align 4, !dbg !6487
  %or = or i32 %1, 256, !dbg !6488
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #21, !dbg !6489
  ret ptr %call, !dbg !6490
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !6491 dso_local ptr @krealloc(ptr noundef, i64 noundef, i32 noundef) #16

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #17

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @param_attr_show(ptr noundef %mattr, ptr noundef %mk, ptr noundef %buf) #0 align 16 !dbg !6494 {
entry:
  %retval = alloca i64, align 8
  %mattr.addr = alloca ptr, align 8
  %mk.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i32, align 4
  %attribute = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mattr, ptr %mattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mattr.addr, metadata !6496, metadata !DIExpression()), !dbg !6503
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !6497, metadata !DIExpression()), !dbg !6504
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6498, metadata !DIExpression()), !dbg !6505
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #18, !dbg !6506
  call void @llvm.dbg.declare(metadata ptr %count, metadata !6499, metadata !DIExpression()), !dbg !6507
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #18, !dbg !6508
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6500, metadata !DIExpression()), !dbg !6509
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6510
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6501, metadata !DIExpression()), !dbg !6510
  %0 = load ptr, ptr %mattr.addr, align 8, !dbg !6510
  store ptr %0, ptr %__mptr, align 8, !dbg !6510
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6510
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6510
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6510
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6511
  %2 = load ptr, ptr %tmp, align 8, !dbg !6510
  store ptr %2, ptr %attribute, align 8, !dbg !6509
  %3 = load ptr, ptr %attribute, align 8, !dbg !6512
  %param = getelementptr inbounds %struct.param_attribute, ptr %3, i32 0, i32 1, !dbg !6514
  %4 = load ptr, ptr %param, align 8, !dbg !6514
  %ops = getelementptr inbounds %struct.kernel_param, ptr %4, i32 0, i32 2, !dbg !6515
  %5 = load ptr, ptr %ops, align 8, !dbg !6515
  %get = getelementptr inbounds %struct.kernel_param_ops, ptr %5, i32 0, i32 2, !dbg !6516
  %6 = load ptr, ptr %get, align 8, !dbg !6516
  %tobool = icmp ne ptr %6, null, !dbg !6512
  br i1 %tobool, label %if.end, label %if.then, !dbg !6517

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6518
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6518

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %mk.addr, align 8, !dbg !6519
  %mod = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 1, !dbg !6520
  %8 = load ptr, ptr %mod, align 8, !dbg !6520
  call void @kernel_param_lock(ptr noundef %8) #19, !dbg !6521
  %9 = load ptr, ptr %attribute, align 8, !dbg !6522
  %param1 = getelementptr inbounds %struct.param_attribute, ptr %9, i32 0, i32 1, !dbg !6523
  %10 = load ptr, ptr %param1, align 8, !dbg !6523
  %ops2 = getelementptr inbounds %struct.kernel_param, ptr %10, i32 0, i32 2, !dbg !6524
  %11 = load ptr, ptr %ops2, align 8, !dbg !6524
  %get3 = getelementptr inbounds %struct.kernel_param_ops, ptr %11, i32 0, i32 2, !dbg !6525
  %12 = load ptr, ptr %get3, align 8, !dbg !6525
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !6526
  %14 = load ptr, ptr %attribute, align 8, !dbg !6527
  %param4 = getelementptr inbounds %struct.param_attribute, ptr %14, i32 0, i32 1, !dbg !6528
  %15 = load ptr, ptr %param4, align 8, !dbg !6528
  %call = call i32 %12(ptr noundef %13, ptr noundef %15) #19, !dbg !6522
  store i32 %call, ptr %count, align 4, !dbg !6529
  %16 = load ptr, ptr %mk.addr, align 8, !dbg !6530
  %mod5 = getelementptr inbounds %struct.module_kobject, ptr %16, i32 0, i32 1, !dbg !6531
  %17 = load ptr, ptr %mod5, align 8, !dbg !6531
  call void @kernel_param_unlock(ptr noundef %17) #19, !dbg !6532
  %18 = load i32, ptr %count, align 4, !dbg !6533
  %conv = sext i32 %18 to i64, !dbg !6533
  store i64 %conv, ptr %retval, align 8, !dbg !6534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6534

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #18, !dbg !6535
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #18, !dbg !6535
  %19 = load i64, ptr %retval, align 8, !dbg !6535
  ret i64 %19, !dbg !6535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @param_attr_store(ptr noundef %mattr, ptr noundef %mk, ptr noundef %buf, i64 noundef %len) #0 align 16 !dbg !6536 {
entry:
  %retval = alloca i64, align 8
  %mattr.addr = alloca ptr, align 8
  %mk.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %err = alloca i32, align 4
  %attribute = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mattr, ptr %mattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mattr.addr, metadata !6538, metadata !DIExpression()), !dbg !6546
  store ptr %mk, ptr %mk.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mk.addr, metadata !6539, metadata !DIExpression()), !dbg !6547
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6540, metadata !DIExpression()), !dbg !6548
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6541, metadata !DIExpression()), !dbg !6549
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6550
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6542, metadata !DIExpression()), !dbg !6551
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #18, !dbg !6552
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6543, metadata !DIExpression()), !dbg !6553
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6554
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6544, metadata !DIExpression()), !dbg !6554
  %0 = load ptr, ptr %mattr.addr, align 8, !dbg !6554
  store ptr %0, ptr %__mptr, align 8, !dbg !6554
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6554
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6554
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6554
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6555
  %2 = load ptr, ptr %tmp, align 8, !dbg !6554
  store ptr %2, ptr %attribute, align 8, !dbg !6553
  %3 = load ptr, ptr %attribute, align 8, !dbg !6556
  %param = getelementptr inbounds %struct.param_attribute, ptr %3, i32 0, i32 1, !dbg !6558
  %4 = load ptr, ptr %param, align 8, !dbg !6558
  %ops = getelementptr inbounds %struct.kernel_param, ptr %4, i32 0, i32 2, !dbg !6559
  %5 = load ptr, ptr %ops, align 8, !dbg !6559
  %set = getelementptr inbounds %struct.kernel_param_ops, ptr %5, i32 0, i32 1, !dbg !6560
  %6 = load ptr, ptr %set, align 8, !dbg !6560
  %tobool = icmp ne ptr %6, null, !dbg !6556
  br i1 %tobool, label %if.end, label %if.then, !dbg !6561

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !6562
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6562

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %mk.addr, align 8, !dbg !6563
  %mod = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 1, !dbg !6564
  %8 = load ptr, ptr %mod, align 8, !dbg !6564
  call void @kernel_param_lock(ptr noundef %8) #19, !dbg !6565
  %9 = load ptr, ptr %attribute, align 8, !dbg !6566
  %param1 = getelementptr inbounds %struct.param_attribute, ptr %9, i32 0, i32 1, !dbg !6568
  %10 = load ptr, ptr %param1, align 8, !dbg !6568
  %call = call zeroext i1 @param_check_unsafe(ptr noundef %10) #19, !dbg !6569
  br i1 %call, label %if.then2, label %if.else, !dbg !6570

if.then2:                                         ; preds = %if.end
  %11 = load ptr, ptr %attribute, align 8, !dbg !6571
  %param3 = getelementptr inbounds %struct.param_attribute, ptr %11, i32 0, i32 1, !dbg !6572
  %12 = load ptr, ptr %param3, align 8, !dbg !6572
  %ops4 = getelementptr inbounds %struct.kernel_param, ptr %12, i32 0, i32 2, !dbg !6573
  %13 = load ptr, ptr %ops4, align 8, !dbg !6573
  %set5 = getelementptr inbounds %struct.kernel_param_ops, ptr %13, i32 0, i32 1, !dbg !6574
  %14 = load ptr, ptr %set5, align 8, !dbg !6574
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !6575
  %16 = load ptr, ptr %attribute, align 8, !dbg !6576
  %param6 = getelementptr inbounds %struct.param_attribute, ptr %16, i32 0, i32 1, !dbg !6577
  %17 = load ptr, ptr %param6, align 8, !dbg !6577
  %call7 = call i32 %14(ptr noundef %15, ptr noundef %17) #19, !dbg !6571
  store i32 %call7, ptr %err, align 4, !dbg !6578
  br label %if.end8, !dbg !6579

if.else:                                          ; preds = %if.end
  store i32 -1, ptr %err, align 4, !dbg !6580
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then2
  %18 = load ptr, ptr %mk.addr, align 8, !dbg !6581
  %mod9 = getelementptr inbounds %struct.module_kobject, ptr %18, i32 0, i32 1, !dbg !6582
  %19 = load ptr, ptr %mod9, align 8, !dbg !6582
  call void @kernel_param_unlock(ptr noundef %19) #19, !dbg !6583
  %20 = load i32, ptr %err, align 4, !dbg !6584
  %tobool10 = icmp ne i32 %20, 0, !dbg !6584
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !6586

if.then11:                                        ; preds = %if.end8
  %21 = load i64, ptr %len.addr, align 8, !dbg !6587
  store i64 %21, ptr %retval, align 8, !dbg !6588
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6588

if.end12:                                         ; preds = %if.end8
  %22 = load i32, ptr %err, align 4, !dbg !6589
  %conv = sext i32 %22 to i64, !dbg !6589
  store i64 %conv, ptr %retval, align 8, !dbg !6590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6590

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #18, !dbg !6591
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6591
  %23 = load i64, ptr %retval, align 8, !dbg !6591
  ret i64 %23, !dbg !6591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6592 dso_local void @complete(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @module_attr_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !6595 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %attribute = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6597, metadata !DIExpression()), !dbg !6607
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6598, metadata !DIExpression()), !dbg !6608
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6599, metadata !DIExpression()), !dbg !6609
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #18, !dbg !6610
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6600, metadata !DIExpression()), !dbg !6611
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !6612
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !6601, metadata !DIExpression()), !dbg !6613
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6614
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6602, metadata !DIExpression()), !dbg !6615
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6616
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6603, metadata !DIExpression()), !dbg !6616
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6616
  store ptr %0, ptr %__mptr, align 8, !dbg !6616
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6616
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6616
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6616
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6617
  %2 = load ptr, ptr %tmp, align 8, !dbg !6616
  store ptr %2, ptr %attribute, align 8, !dbg !6618
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !6619
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6605, metadata !DIExpression()), !dbg !6619
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6619
  store ptr %3, ptr %__mptr1, align 8, !dbg !6619
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6619
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !6619
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6619
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !6620
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6619
  store ptr %5, ptr %mk, align 8, !dbg !6621
  %6 = load ptr, ptr %attribute, align 8, !dbg !6622
  %show = getelementptr inbounds %struct.module_attribute, ptr %6, i32 0, i32 1, !dbg !6624
  %7 = load ptr, ptr %show, align 8, !dbg !6624
  %tobool = icmp ne ptr %7, null, !dbg !6622
  br i1 %tobool, label %if.end, label %if.then, !dbg !6625

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6626
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6626

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %attribute, align 8, !dbg !6627
  %show4 = getelementptr inbounds %struct.module_attribute, ptr %8, i32 0, i32 1, !dbg !6628
  %9 = load ptr, ptr %show4, align 8, !dbg !6628
  %10 = load ptr, ptr %attribute, align 8, !dbg !6629
  %11 = load ptr, ptr %mk, align 8, !dbg !6630
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !6631
  %call = call i64 %9(ptr noundef %10, ptr noundef %11, ptr noundef %12) #19, !dbg !6627
  %conv = trunc i64 %call to i32, !dbg !6627
  store i32 %conv, ptr %ret, align 4, !dbg !6632
  %13 = load i32, ptr %ret, align 4, !dbg !6633
  %conv5 = sext i32 %13 to i64, !dbg !6633
  store i64 %conv5, ptr %retval, align 8, !dbg !6634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6634

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6635
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !6635
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #18, !dbg !6635
  %14 = load i64, ptr %retval, align 8, !dbg !6635
  ret i64 %14, !dbg !6635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @module_attr_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %len) #0 align 16 !dbg !6636 {
entry:
  %retval = alloca i64, align 8
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %attribute = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6638, metadata !DIExpression()), !dbg !6649
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6639, metadata !DIExpression()), !dbg !6650
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !6640, metadata !DIExpression()), !dbg !6651
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !6641, metadata !DIExpression()), !dbg !6652
  call void @llvm.lifetime.start.p0(i64 8, ptr %attribute) #18, !dbg !6653
  call void @llvm.dbg.declare(metadata ptr %attribute, metadata !6642, metadata !DIExpression()), !dbg !6654
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !6655
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !6643, metadata !DIExpression()), !dbg !6656
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #18, !dbg !6657
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !6644, metadata !DIExpression()), !dbg !6658
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6659
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6645, metadata !DIExpression()), !dbg !6659
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !6659
  store ptr %0, ptr %__mptr, align 8, !dbg !6659
  %1 = load ptr, ptr %__mptr, align 8, !dbg !6659
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !6659
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6659
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6660
  %2 = load ptr, ptr %tmp, align 8, !dbg !6659
  store ptr %2, ptr %attribute, align 8, !dbg !6661
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #18, !dbg !6662
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !6647, metadata !DIExpression()), !dbg !6662
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !6662
  store ptr %3, ptr %__mptr1, align 8, !dbg !6662
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !6662
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !6662
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !6662
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #18, !dbg !6663
  %5 = load ptr, ptr %tmp2, align 8, !dbg !6662
  store ptr %5, ptr %mk, align 8, !dbg !6664
  %6 = load ptr, ptr %attribute, align 8, !dbg !6665
  %store = getelementptr inbounds %struct.module_attribute, ptr %6, i32 0, i32 2, !dbg !6667
  %7 = load ptr, ptr %store, align 8, !dbg !6667
  %tobool = icmp ne ptr %7, null, !dbg !6665
  br i1 %tobool, label %if.end, label %if.then, !dbg !6668

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !6669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6669

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr %attribute, align 8, !dbg !6670
  %store4 = getelementptr inbounds %struct.module_attribute, ptr %8, i32 0, i32 2, !dbg !6671
  %9 = load ptr, ptr %store4, align 8, !dbg !6671
  %10 = load ptr, ptr %attribute, align 8, !dbg !6672
  %11 = load ptr, ptr %mk, align 8, !dbg !6673
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !6674
  %13 = load i64, ptr %len.addr, align 8, !dbg !6675
  %call = call i64 %9(ptr noundef %10, ptr noundef %11, ptr noundef %12, i64 noundef %13) #19, !dbg !6670
  %conv = trunc i64 %call to i32, !dbg !6670
  store i32 %conv, ptr %ret, align 4, !dbg !6676
  %14 = load i32, ptr %ret, align 4, !dbg !6677
  %conv5 = sext i32 %14 to i64, !dbg !6677
  store i64 %conv5, ptr %retval, align 8, !dbg !6678
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6678

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #18, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !6679
  call void @llvm.lifetime.end.p0(i64 8, ptr %attribute) #18, !dbg !6679
  %15 = load i64, ptr %retval, align 8, !dbg !6679
  ret i64 %15, !dbg !6679
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6680 dso_local ptr @kset_create_and_add(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @uevent_filter(ptr noundef %kobj) #0 align 16 !dbg !6683 {
entry:
  %retval = alloca i32, align 4
  %kobj.addr = alloca ptr, align 8
  %ktype = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6685, metadata !DIExpression()), !dbg !6687
  call void @llvm.lifetime.start.p0(i64 8, ptr %ktype) #18, !dbg !6688
  call void @llvm.dbg.declare(metadata ptr %ktype, metadata !6686, metadata !DIExpression()), !dbg !6689
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6690
  %call = call ptr @get_ktype(ptr noundef %0) #19, !dbg !6691
  store ptr %call, ptr %ktype, align 8, !dbg !6689
  %1 = load ptr, ptr %ktype, align 8, !dbg !6692
  %cmp = icmp eq ptr %1, @module_ktype, !dbg !6694
  br i1 %cmp, label %if.then, label %if.end, !dbg !6695

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !6696
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6696

if.end:                                           ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !6697
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6697

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ktype) #18, !dbg !6698
  %2 = load i32, ptr %retval, align 4, !dbg !6698
  ret i32 %2, !dbg !6698
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_ktype(ptr noundef %kobj) #6 align 16 !dbg !6699 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6703, metadata !DIExpression()), !dbg !6704
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6705
  %ktype = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 4, !dbg !6706
  %1 = load ptr, ptr %ktype, align 8, !dbg !6706
  ret ptr %1, !dbg !6707
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @version_sysfs_builtin() #8 section ".init.text" align 16 !dbg !6708 {
entry:
  %vattr = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %err = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %vattr) #18, !dbg !6725
  call void @llvm.dbg.declare(metadata ptr %vattr, metadata !6710, metadata !DIExpression()), !dbg !6726
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !6727
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !6713, metadata !DIExpression()), !dbg !6728
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6729
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6714, metadata !DIExpression()), !dbg !6730
  store ptr @__start___modver, ptr %vattr, align 8, !dbg !6731
  br label %for.cond, !dbg !6732

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %vattr, align 8, !dbg !6733
  %cmp = icmp ult ptr %0, @__stop___modver, !dbg !6734
  br i1 %cmp, label %for.body, label %for.end, !dbg !6735

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %vattr, align 8, !dbg !6736
  %module_name = getelementptr inbounds %struct.module_version_attribute, ptr %1, i32 0, i32 1, !dbg !6737
  %2 = load ptr, ptr %module_name, align 8, !dbg !6737
  %call = call ptr @locate_module_kobject(ptr noundef %2) #20, !dbg !6738
  store ptr %call, ptr %mk, align 8, !dbg !6739
  %3 = load ptr, ptr %mk, align 8, !dbg !6740
  %tobool = icmp ne ptr %3, null, !dbg !6740
  br i1 %tobool, label %if.then, label %if.end30, !dbg !6741

if.then:                                          ; preds = %for.body
  %4 = load ptr, ptr %mk, align 8, !dbg !6742
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %4, i32 0, i32 0, !dbg !6743
  %5 = load ptr, ptr %vattr, align 8, !dbg !6744
  %mattr = getelementptr inbounds %struct.module_version_attribute, ptr %5, i32 0, i32 0, !dbg !6745
  %attr = getelementptr inbounds %struct.module_attribute, ptr %mattr, i32 0, i32 0, !dbg !6746
  %call1 = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #19, !dbg !6747
  store i32 %call1, ptr %err, align 4, !dbg !6748
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6749
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !6715, metadata !DIExpression()), !dbg !6749
  %6 = load i32, ptr %err, align 4, !dbg !6749
  %tobool2 = icmp ne i32 %6, 0, !dbg !6749
  %lnot = xor i1 %tobool2, true, !dbg !6749
  %lnot3 = xor i1 %lnot, true, !dbg !6749
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !6749
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !6749
  %7 = load i32, ptr %__ret_warn_on, align 4, !dbg !6750
  %tobool4 = icmp ne i32 %7, 0, !dbg !6750
  %lnot5 = xor i1 %tobool4, true, !dbg !6750
  %lnot7 = xor i1 %lnot5, true, !dbg !6750
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !6750
  %conv = sext i32 %lnot.ext8 to i64, !dbg !6750
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6750
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6750
  br i1 %tobool9, label %if.then10, label %if.end, !dbg !6749

if.then10:                                        ; preds = %if.then
  br label %do.body, !dbg !6750

do.body:                                          ; preds = %if.then10
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #18, !dbg !6751
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !6722, metadata !DIExpression()), !dbg !6751
  store i32 2307, ptr %__flags, align 4, !dbg !6751
  br label %do.body11, !dbg !6751

do.body11:                                        ; preds = %do.body
  br label %do.cond, !dbg !6752

do.cond:                                          ; preds = %do.body11
  br label %do.end, !dbg !6752

do.end:                                           ; preds = %do.cond
  br label %do.body12, !dbg !6751

do.body12:                                        ; preds = %do.end
  %8 = load i32, ptr %__flags, align 4, !dbg !6754
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 878, i32 %8, i64 12) #18, !dbg !6754, !srcloc !6756
  br label %do.cond13, !dbg !6754

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !6754

do.end14:                                         ; preds = %do.cond13
  br label %do.body15, !dbg !6751

do.body15:                                        ; preds = %do.end14
  br label %do.cond16, !dbg !6757

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !6757

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #18, !dbg !6750
  br label %do.cond18, !dbg !6751

do.cond18:                                        ; preds = %do.end17
  br label %do.end19, !dbg !6751

do.end19:                                         ; preds = %do.cond18
  br label %if.end, !dbg !6751

if.end:                                           ; preds = %do.end19, %if.then
  %9 = load i32, ptr %__ret_warn_on, align 4, !dbg !6749
  %tobool20 = icmp ne i32 %9, 0, !dbg !6749
  %lnot21 = xor i1 %tobool20, true, !dbg !6749
  %lnot23 = xor i1 %lnot21, true, !dbg !6749
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !6749
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !6749
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !6749
  store i64 %expval26, ptr %tmp, align 8, !dbg !6750
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #18, !dbg !6759
  %10 = load i64, ptr %tmp, align 8, !dbg !6749
  %11 = load ptr, ptr %mk, align 8, !dbg !6760
  %kobj27 = getelementptr inbounds %struct.module_kobject, ptr %11, i32 0, i32 0, !dbg !6761
  %call28 = call i32 @kobject_uevent(ptr noundef %kobj27, i32 noundef 0) #19, !dbg !6762
  %12 = load ptr, ptr %mk, align 8, !dbg !6763
  %kobj29 = getelementptr inbounds %struct.module_kobject, ptr %12, i32 0, i32 0, !dbg !6764
  call void @kobject_put(ptr noundef %kobj29) #19, !dbg !6765
  br label %if.end30, !dbg !6766

if.end30:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !6767

for.inc:                                          ; preds = %if.end30
  %13 = load ptr, ptr %vattr, align 8, !dbg !6768
  %incdec.ptr = getelementptr %struct.module_version_attribute, ptr %13, i32 1, !dbg !6768
  store ptr %incdec.ptr, ptr %vattr, align 8, !dbg !6768
  br label %for.cond, !dbg !6769, !llvm.loop !6770

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !6772
  call void @llvm.lifetime.end.p0(i64 8, ptr %vattr) #18, !dbg !6772
  ret void, !dbg !6772
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @param_sysfs_builtin() #8 section ".init.text" align 16 !dbg !6773 {
entry:
  %kp = alloca ptr, align 8
  %name_len = alloca i32, align 4
  %modname = alloca [56 x i8], align 16
  %dot = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %kp) #18, !dbg !6782
  call void @llvm.dbg.declare(metadata ptr %kp, metadata !6775, metadata !DIExpression()), !dbg !6783
  call void @llvm.lifetime.start.p0(i64 4, ptr %name_len) #18, !dbg !6784
  call void @llvm.dbg.declare(metadata ptr %name_len, metadata !6776, metadata !DIExpression()), !dbg !6785
  call void @llvm.lifetime.start.p0(i64 56, ptr %modname) #18, !dbg !6786
  call void @llvm.dbg.declare(metadata ptr %modname, metadata !6777, metadata !DIExpression()), !dbg !6787
  store ptr @__start___param, ptr %kp, align 8, !dbg !6788
  br label %for.cond, !dbg !6789

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load ptr, ptr %kp, align 8, !dbg !6790
  %cmp = icmp ult ptr %0, @__stop___param, !dbg !6791
  br i1 %cmp, label %for.body, label %for.end, !dbg !6792

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %dot) #18, !dbg !6793
  call void @llvm.dbg.declare(metadata ptr %dot, metadata !6778, metadata !DIExpression()), !dbg !6794
  %1 = load ptr, ptr %kp, align 8, !dbg !6795
  %perm = getelementptr inbounds %struct.kernel_param, ptr %1, i32 0, i32 3, !dbg !6797
  %2 = load i16, ptr %perm, align 8, !dbg !6797
  %conv = zext i16 %2 to i32, !dbg !6795
  %cmp1 = icmp eq i32 %conv, 0, !dbg !6798
  br i1 %cmp1, label %if.then, label %if.end, !dbg !6799

if.then:                                          ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6800

if.end:                                           ; preds = %for.body
  %3 = load ptr, ptr %kp, align 8, !dbg !6801
  %name = getelementptr inbounds %struct.kernel_param, ptr %3, i32 0, i32 0, !dbg !6802
  %4 = load ptr, ptr %name, align 8, !dbg !6802
  %call = call ptr @strchr(ptr noundef %4, i32 noundef 46) #19, !dbg !6803
  store ptr %call, ptr %dot, align 8, !dbg !6804
  %5 = load ptr, ptr %dot, align 8, !dbg !6805
  %tobool = icmp ne ptr %5, null, !dbg !6805
  br i1 %tobool, label %if.else, label %if.then3, !dbg !6807

if.then3:                                         ; preds = %if.end
  %arraydecay = getelementptr inbounds [56 x i8], ptr %modname, i64 0, i64 0, !dbg !6808
  %call4 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.31) #19, !dbg !6810
  store i32 0, ptr %name_len, align 4, !dbg !6811
  br label %if.end11, !dbg !6812

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %dot, align 8, !dbg !6813
  %7 = load ptr, ptr %kp, align 8, !dbg !6815
  %name5 = getelementptr inbounds %struct.kernel_param, ptr %7, i32 0, i32 0, !dbg !6816
  %8 = load ptr, ptr %name5, align 8, !dbg !6816
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64, !dbg !6817
  %sub.ptr.rhs.cast = ptrtoint ptr %8 to i64, !dbg !6817
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !6817
  %add = add i64 %sub.ptr.sub, 1, !dbg !6818
  %conv6 = trunc i64 %add to i32, !dbg !6813
  store i32 %conv6, ptr %name_len, align 4, !dbg !6819
  %arraydecay7 = getelementptr inbounds [56 x i8], ptr %modname, i64 0, i64 0, !dbg !6820
  %9 = load ptr, ptr %kp, align 8, !dbg !6821
  %name8 = getelementptr inbounds %struct.kernel_param, ptr %9, i32 0, i32 0, !dbg !6822
  %10 = load ptr, ptr %name8, align 8, !dbg !6822
  %11 = load i32, ptr %name_len, align 4, !dbg !6823
  %conv9 = zext i32 %11 to i64, !dbg !6823
  %call10 = call i64 @strscpy(ptr noundef %arraydecay7, ptr noundef %10, i64 noundef %conv9) #19, !dbg !6824
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then3
  %arraydecay12 = getelementptr inbounds [56 x i8], ptr %modname, i64 0, i64 0, !dbg !6825
  %12 = load ptr, ptr %kp, align 8, !dbg !6826
  %13 = load i32, ptr %name_len, align 4, !dbg !6827
  call void @kernel_add_sysfs_param(ptr noundef %arraydecay12, ptr noundef %12, i32 noundef %13) #20, !dbg !6828
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !6829
  br label %cleanup, !dbg !6829

cleanup:                                          ; preds = %if.end11, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dot) #18, !dbg !6829
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !6830

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %14 = load ptr, ptr %kp, align 8, !dbg !6831
  %incdec.ptr = getelementptr %struct.kernel_param, ptr %14, i32 1, !dbg !6831
  store ptr %incdec.ptr, ptr %kp, align 8, !dbg !6831
  br label %for.cond, !dbg !6832, !llvm.loop !6833

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 56, ptr %modname) #18, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 4, ptr %name_len) #18, !dbg !6835
  call void @llvm.lifetime.end.p0(i64 8, ptr %kp) #18, !dbg !6835
  ret void, !dbg !6835

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal ptr @locate_module_kobject(ptr noundef %name) #8 section ".init.text" align 16 !dbg !6836 {
entry:
  %retval = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %mk = alloca ptr, align 8
  %kobj = alloca ptr, align 8
  %err = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp30 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6840, metadata !DIExpression()), !dbg !6848
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !6849
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !6841, metadata !DIExpression()), !dbg !6850
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #18, !dbg !6851
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !6842, metadata !DIExpression()), !dbg !6852
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6853
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6843, metadata !DIExpression()), !dbg !6854
  %0 = load ptr, ptr @module_kset, align 8, !dbg !6855
  %1 = load ptr, ptr %name.addr, align 8, !dbg !6856
  %call = call ptr @kset_find_obj(ptr noundef %0, ptr noundef %1) #19, !dbg !6857
  store ptr %call, ptr %kobj, align 8, !dbg !6858
  %2 = load ptr, ptr %kobj, align 8, !dbg !6859
  %tobool = icmp ne ptr %2, null, !dbg !6859
  br i1 %tobool, label %if.then, label %if.else, !dbg !6860

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #18, !dbg !6861
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !6844, metadata !DIExpression()), !dbg !6861
  %3 = load ptr, ptr %kobj, align 8, !dbg !6861
  store ptr %3, ptr %__mptr, align 8, !dbg !6861
  %4 = load ptr, ptr %__mptr, align 8, !dbg !6861
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !6861
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !6861
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #18, !dbg !6862
  %5 = load ptr, ptr %tmp, align 8, !dbg !6861
  store ptr %5, ptr %mk, align 8, !dbg !6863
  br label %if.end35, !dbg !6864

if.else:                                          ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 96, i32 noundef 3264) #21, !dbg !6865
  store ptr %call1, ptr %mk, align 8, !dbg !6867
  br label %do.body, !dbg !6868

do.body:                                          ; preds = %if.else
  %6 = load ptr, ptr %mk, align 8, !dbg !6869
  %tobool2 = icmp ne ptr %6, null, !dbg !6869
  %lnot = xor i1 %tobool2, true, !dbg !6869
  %lnot3 = xor i1 %lnot, true, !dbg !6869
  %lnot4 = xor i1 %lnot3, true, !dbg !6869
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !6869
  %conv = sext i32 %lnot.ext to i64, !dbg !6869
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6869
  %tobool5 = icmp ne i64 %expval, 0, !dbg !6869
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !6872

if.then6:                                         ; preds = %do.body
  br label %do.body7, !dbg !6869

do.body7:                                         ; preds = %if.then6
  br label %do.body8, !dbg !6873

do.body8:                                         ; preds = %do.body7
  br label %do.cond, !dbg !6875

do.cond:                                          ; preds = %do.body8
  br label %do.end, !dbg !6875

do.end:                                           ; preds = %do.cond
  br label %do.body9, !dbg !6873

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 773, i32 0, i64 12) #18, !dbg !6877, !srcloc !6879
  br label %do.cond10, !dbg !6877

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !6877

do.end11:                                         ; preds = %do.cond10
  unreachable, !dbg !6873

do.cond12:                                        ; No predecessors!
  br label %do.end13, !dbg !6873

do.end13:                                         ; preds = %do.cond12
  br label %if.end, !dbg !6873

if.end:                                           ; preds = %do.end13, %do.body
  br label %do.cond14, !dbg !6872

do.cond14:                                        ; preds = %if.end
  br label %do.end15, !dbg !6872

do.end15:                                         ; preds = %do.cond14
  %7 = load ptr, ptr %mk, align 8, !dbg !6880
  %mod = getelementptr inbounds %struct.module_kobject, ptr %7, i32 0, i32 1, !dbg !6881
  store ptr null, ptr %mod, align 8, !dbg !6882
  %8 = load ptr, ptr @module_kset, align 8, !dbg !6883
  %9 = load ptr, ptr %mk, align 8, !dbg !6884
  %kobj16 = getelementptr inbounds %struct.module_kobject, ptr %9, i32 0, i32 0, !dbg !6885
  %kset = getelementptr inbounds %struct.kobject, ptr %kobj16, i32 0, i32 3, !dbg !6886
  store ptr %8, ptr %kset, align 8, !dbg !6887
  %10 = load ptr, ptr %mk, align 8, !dbg !6888
  %kobj17 = getelementptr inbounds %struct.module_kobject, ptr %10, i32 0, i32 0, !dbg !6889
  %11 = load ptr, ptr %name.addr, align 8, !dbg !6890
  %call18 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj17, ptr noundef @module_ktype, ptr noundef null, ptr noundef @.str.29, ptr noundef %11) #19, !dbg !6891
  store i32 %call18, ptr %err, align 4, !dbg !6892
  %12 = load i32, ptr %err, align 4, !dbg !6893
  %tobool19 = icmp ne i32 %12, 0, !dbg !6893
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !6895

if.then20:                                        ; preds = %do.end15
  %13 = load ptr, ptr %mk, align 8, !dbg !6896
  %kobj21 = getelementptr inbounds %struct.module_kobject, ptr %13, i32 0, i32 0, !dbg !6897
  %call22 = call i32 @sysfs_create_file(ptr noundef %kobj21, ptr noundef @module_uevent) #19, !dbg !6898
  store i32 %call22, ptr %err, align 4, !dbg !6899
  br label %if.end23, !dbg !6900

if.end23:                                         ; preds = %if.then20, %do.end15
  %14 = load i32, ptr %err, align 4, !dbg !6901
  %tobool24 = icmp ne i32 %14, 0, !dbg !6901
  br i1 %tobool24, label %if.then25, label %if.end32, !dbg !6903

if.then25:                                        ; preds = %if.end23
  %15 = load ptr, ptr %mk, align 8, !dbg !6904
  %kobj26 = getelementptr inbounds %struct.module_kobject, ptr %15, i32 0, i32 0, !dbg !6906
  call void @kobject_put(ptr noundef %kobj26) #19, !dbg !6907
  br label %do.body27, !dbg !6908

do.body27:                                        ; preds = %if.then25
  br label %do.cond28, !dbg !6910

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !6910

do.end29:                                         ; preds = %do.cond28
  %16 = load ptr, ptr %name.addr, align 8, !dbg !6908
  %17 = load i32, ptr %err, align 4, !dbg !6908
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef @.str.30, ptr noundef %16, i32 noundef %17) #20, !dbg !6908
  store i32 %call31, ptr %tmp30, align 4, !dbg !6910
  %18 = load i32, ptr %tmp30, align 4, !dbg !6908
  store ptr null, ptr %retval, align 8, !dbg !6912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6912

if.end32:                                         ; preds = %if.end23
  %19 = load ptr, ptr %mk, align 8, !dbg !6913
  %kobj33 = getelementptr inbounds %struct.module_kobject, ptr %19, i32 0, i32 0, !dbg !6914
  %call34 = call ptr @kobject_get(ptr noundef %kobj33) #19, !dbg !6915
  br label %if.end35

if.end35:                                         ; preds = %if.end32, %if.then
  %20 = load ptr, ptr %mk, align 8, !dbg !6916
  store ptr %20, ptr %retval, align 8, !dbg !6917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6917

cleanup:                                          ; preds = %if.end35, %do.end29
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !6918
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #18, !dbg !6918
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !6918
  %21 = load ptr, ptr %retval, align 8, !dbg !6918
  ret ptr %21, !dbg !6918
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #6 align 16 !dbg !6919 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !6925, metadata !DIExpression()), !dbg !6927
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !6926, metadata !DIExpression()), !dbg !6928
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !6929
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !6930
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #19, !dbg !6931
  ret i32 %call, !dbg !6932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6933 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6936 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6937 dso_local ptr @kset_find_obj(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6940 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6943 dso_local ptr @kobject_get(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6946 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6949 dso_local ptr @strchr(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !6952 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @kernel_add_sysfs_param(ptr noundef %name, ptr noundef %kparam, i32 noundef %name_skip) #8 section ".init.text" align 16 !dbg !6955 {
entry:
  %name.addr = alloca ptr, align 8
  %kparam.addr = alloca ptr, align 8
  %name_skip.addr = alloca i32, align 4
  %mk = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !6959, metadata !DIExpression()), !dbg !6964
  store ptr %kparam, ptr %kparam.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kparam.addr, metadata !6960, metadata !DIExpression()), !dbg !6965
  store i32 %name_skip, ptr %name_skip.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %name_skip.addr, metadata !6961, metadata !DIExpression()), !dbg !6966
  call void @llvm.lifetime.start.p0(i64 8, ptr %mk) #18, !dbg !6967
  call void @llvm.dbg.declare(metadata ptr %mk, metadata !6962, metadata !DIExpression()), !dbg !6968
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #18, !dbg !6969
  call void @llvm.dbg.declare(metadata ptr %err, metadata !6963, metadata !DIExpression()), !dbg !6970
  %0 = load ptr, ptr %name.addr, align 8, !dbg !6971
  %call = call ptr @locate_module_kobject(ptr noundef %0) #20, !dbg !6972
  store ptr %call, ptr %mk, align 8, !dbg !6973
  %1 = load ptr, ptr %mk, align 8, !dbg !6974
  %tobool = icmp ne ptr %1, null, !dbg !6974
  br i1 %tobool, label %if.end, label %if.then, !dbg !6976

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !6977

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %mk, align 8, !dbg !6978
  %mp = getelementptr inbounds %struct.module_kobject, ptr %2, i32 0, i32 3, !dbg !6980
  %3 = load ptr, ptr %mp, align 8, !dbg !6980
  %tobool1 = icmp ne ptr %3, null, !dbg !6978
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !6981

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr %mk, align 8, !dbg !6982
  %kobj = getelementptr inbounds %struct.module_kobject, ptr %4, i32 0, i32 0, !dbg !6983
  %5 = load ptr, ptr %mk, align 8, !dbg !6984
  %mp3 = getelementptr inbounds %struct.module_kobject, ptr %5, i32 0, i32 3, !dbg !6985
  %6 = load ptr, ptr %mp3, align 8, !dbg !6985
  %grp = getelementptr inbounds %struct.module_param_attrs, ptr %6, i32 0, i32 1, !dbg !6986
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef %grp) #19, !dbg !6987
  br label %if.end4, !dbg !6987

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load ptr, ptr %mk, align 8, !dbg !6988
  %8 = load ptr, ptr %kparam.addr, align 8, !dbg !6989
  %9 = load ptr, ptr %kparam.addr, align 8, !dbg !6990
  %name5 = getelementptr inbounds %struct.kernel_param, ptr %9, i32 0, i32 0, !dbg !6991
  %10 = load ptr, ptr %name5, align 8, !dbg !6991
  %11 = load i32, ptr %name_skip.addr, align 4, !dbg !6992
  %idx.ext = zext i32 %11 to i64, !dbg !6993
  %add.ptr = getelementptr i8, ptr %10, i64 %idx.ext, !dbg !6993
  %call6 = call i32 @add_sysfs_param(ptr noundef %7, ptr noundef %8, ptr noundef %add.ptr) #19, !dbg !6994
  store i32 %call6, ptr %err, align 4, !dbg !6995
  br label %do.body, !dbg !6996

do.body:                                          ; preds = %if.end4
  %12 = load i32, ptr %err, align 4, !dbg !6997
  %tobool7 = icmp ne i32 %12, 0, !dbg !6997
  %lnot = xor i1 %tobool7, true, !dbg !6997
  %lnot8 = xor i1 %lnot, true, !dbg !6997
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !6997
  %conv = sext i32 %lnot.ext to i64, !dbg !6997
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !6997
  %tobool9 = icmp ne i64 %expval, 0, !dbg !6997
  br i1 %tobool9, label %if.then10, label %if.end18, !dbg !7000

if.then10:                                        ; preds = %do.body
  br label %do.body11, !dbg !6997

do.body11:                                        ; preds = %if.then10
  br label %do.body12, !dbg !7001

do.body12:                                        ; preds = %do.body11
  br label %do.cond, !dbg !7003

do.cond:                                          ; preds = %do.body12
  br label %do.end, !dbg !7003

do.end:                                           ; preds = %do.cond
  br label %do.body13, !dbg !7001

do.body13:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 814, i32 0, i64 12) #18, !dbg !7005, !srcloc !7007
  br label %do.cond14, !dbg !7005

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !7005

do.end15:                                         ; preds = %do.cond14
  unreachable, !dbg !7001

do.cond16:                                        ; No predecessors!
  br label %do.end17, !dbg !7001

do.end17:                                         ; preds = %do.cond16
  br label %if.end18, !dbg !7001

if.end18:                                         ; preds = %do.end17, %do.body
  br label %do.cond19, !dbg !7000

do.cond19:                                        ; preds = %if.end18
  br label %do.end20, !dbg !7000

do.end20:                                         ; preds = %do.cond19
  %13 = load ptr, ptr %mk, align 8, !dbg !7008
  %kobj21 = getelementptr inbounds %struct.module_kobject, ptr %13, i32 0, i32 0, !dbg !7009
  %14 = load ptr, ptr %mk, align 8, !dbg !7010
  %mp22 = getelementptr inbounds %struct.module_kobject, ptr %14, i32 0, i32 3, !dbg !7011
  %15 = load ptr, ptr %mp22, align 8, !dbg !7011
  %grp23 = getelementptr inbounds %struct.module_param_attrs, ptr %15, i32 0, i32 1, !dbg !7012
  %call24 = call i32 @sysfs_create_group(ptr noundef %kobj21, ptr noundef %grp23) #19, !dbg !7013
  store i32 %call24, ptr %err, align 4, !dbg !7014
  br label %do.body25, !dbg !7015

do.body25:                                        ; preds = %do.end20
  %16 = load i32, ptr %err, align 4, !dbg !7016
  %tobool26 = icmp ne i32 %16, 0, !dbg !7016
  %lnot27 = xor i1 %tobool26, true, !dbg !7016
  %lnot29 = xor i1 %lnot27, true, !dbg !7016
  %lnot.ext30 = zext i1 %lnot29 to i32, !dbg !7016
  %conv31 = sext i32 %lnot.ext30 to i64, !dbg !7016
  %expval32 = call i64 @llvm.expect.i64(i64 %conv31, i64 0), !dbg !7016
  %tobool33 = icmp ne i64 %expval32, 0, !dbg !7016
  br i1 %tobool33, label %if.then34, label %if.end44, !dbg !7019

if.then34:                                        ; preds = %do.body25
  br label %do.body35, !dbg !7016

do.body35:                                        ; preds = %if.then34
  br label %do.body36, !dbg !7020

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !7022

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !7022

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !7020

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.25, i32 816, i32 0, i64 12) #18, !dbg !7024, !srcloc !7026
  br label %do.cond40, !dbg !7024

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !7024

do.end41:                                         ; preds = %do.cond40
  unreachable, !dbg !7020

do.cond42:                                        ; No predecessors!
  br label %do.end43, !dbg !7020

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !7020

if.end44:                                         ; preds = %do.end43, %do.body25
  br label %do.cond45, !dbg !7019

do.cond45:                                        ; preds = %if.end44
  br label %do.end46, !dbg !7019

do.end46:                                         ; preds = %do.cond45
  %17 = load ptr, ptr %mk, align 8, !dbg !7027
  %kobj47 = getelementptr inbounds %struct.module_kobject, ptr %17, i32 0, i32 0, !dbg !7028
  %call48 = call i32 @kobject_uevent(ptr noundef %kobj47, i32 noundef 0) #19, !dbg !7029
  %18 = load ptr, ptr %mk, align 8, !dbg !7030
  %kobj49 = getelementptr inbounds %struct.module_kobject, ptr %18, i32 0, i32 0, !dbg !7031
  call void @kobject_put(ptr noundef %kobj49) #19, !dbg !7032
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !7033
  br label %cleanup, !dbg !7033

cleanup:                                          ; preds = %do.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #18, !dbg !7033
  call void @llvm.lifetime.end.p0(i64 8, ptr %mk) #18, !dbg !7033
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !7033

unreachable:                                      ; preds = %cleanup
  unreachable
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #18 = { nounwind }
attributes #19 = { noredzone }
attributes #20 = { cold noredzone }
attributes #21 = { noredzone allocsize(0) }
attributes #22 = { noredzone allocsize(1) }
attributes #23 = { noredzone allocsize(2) }
attributes #24 = { noredzone noreturn }

!llvm.dbg.cu = !{!39}
!llvm.module.flags = !{!4371, !4372, !4373, !4374, !4375, !4376, !4377, !4378}
!llvm.ident = !{!4379}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 186, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/params.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1ba64d973fe74b0a6cd9f1a6f9cbcc38")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 30)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 41)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 202, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 1)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 206, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 39)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 6)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "param_ops_byte", scope: !39, file: !2, line: 237, type: !639, isLocal: false, isDefinition: true)
!39 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/.params.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/params\22 -D KBUILD_BASENAME=\22params\22 -D KBUILD_MODNAME=\22params\22 -D __KBUILD_MODNAME=kmod_params -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/params.ll kernel/params.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !40, retainedTypes: !195, globals: !4152, splitDebugInlining: false, nameTableKind: None)
!40 = !{!41, !47, !54, !59, !65, !70, !78, !94, !102, !108, !115, !122, !128, !132, !136, !169, !174, !184}
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !42, line: 10, baseType: !43, size: 32, elements: !44)
!42 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!43 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "false", value: 0)
!46 = !DIEnumerator(name: "true", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !48, line: 312, baseType: !43, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!49 = !{!50, !51, !52, !53}
!50 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!51 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!52 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!53 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !55, line: 2052, baseType: !43, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!58 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !60, line: 54, baseType: !43, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "USRQUOTA", value: 0)
!63 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!64 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !66, line: 65, baseType: !43, size: 32, elements: !67)
!66 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!69 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !71, line: 9, baseType: !43, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!72 = !{!73, !74, !75, !76, !77}
!73 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!74 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!75 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!76 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!77 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !79, line: 1325, baseType: !43, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93}
!81 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!82 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!83 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!84 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!85 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!86 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!87 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!88 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!89 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!90 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!91 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!92 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!93 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !95, line: 68, baseType: !43, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!96 = !{!97, !98, !99, !100, !101}
!97 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!98 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!99 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!100 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!101 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!102 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !103, line: 16, baseType: !43, size: 32, elements: !104)
!103 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!104 = !{!105, !106, !107}
!105 = !DIEnumerator(name: "TT_NONE", value: 0)
!106 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!107 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !109, line: 51, baseType: !43, size: 32, elements: !110)
!109 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!110 = !{!111, !112, !113, !114}
!111 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!112 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!113 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!114 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!115 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !116, line: 15, baseType: !43, size: 32, elements: !117)
!116 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!117 = !{!118, !119, !120, !121}
!118 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!119 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!120 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!121 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !123, line: 26, baseType: !43, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!124 = !{!125, !126, !127}
!125 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!126 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!127 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 43, baseType: !43, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!130 = !{!131}
!131 = !DIEnumerator(name: "KERNEL_PARAM_OPS_FL_NOARG", value: 1)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !129, line: 64, baseType: !43, size: 32, elements: !133)
!133 = !{!134, !135}
!134 = !DIEnumerator(name: "KERNEL_PARAM_FL_UNSAFE", value: 1)
!135 = !DIEnumerator(name: "KERNEL_PARAM_FL_HWPARAM", value: 2)
!136 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdown_reason", file: !137, line: 107, baseType: !43, size: 32, elements: !138)
!137 = !DIFile(filename: "./include/linux/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3374f455cef64217c954e3336d4198f")
!138 = !{!139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!139 = !DIEnumerator(name: "LOCKDOWN_NONE", value: 0)
!140 = !DIEnumerator(name: "LOCKDOWN_MODULE_SIGNATURE", value: 1)
!141 = !DIEnumerator(name: "LOCKDOWN_DEV_MEM", value: 2)
!142 = !DIEnumerator(name: "LOCKDOWN_EFI_TEST", value: 3)
!143 = !DIEnumerator(name: "LOCKDOWN_KEXEC", value: 4)
!144 = !DIEnumerator(name: "LOCKDOWN_HIBERNATION", value: 5)
!145 = !DIEnumerator(name: "LOCKDOWN_PCI_ACCESS", value: 6)
!146 = !DIEnumerator(name: "LOCKDOWN_IOPORT", value: 7)
!147 = !DIEnumerator(name: "LOCKDOWN_MSR", value: 8)
!148 = !DIEnumerator(name: "LOCKDOWN_ACPI_TABLES", value: 9)
!149 = !DIEnumerator(name: "LOCKDOWN_DEVICE_TREE", value: 10)
!150 = !DIEnumerator(name: "LOCKDOWN_PCMCIA_CIS", value: 11)
!151 = !DIEnumerator(name: "LOCKDOWN_TIOCSSERIAL", value: 12)
!152 = !DIEnumerator(name: "LOCKDOWN_MODULE_PARAMETERS", value: 13)
!153 = !DIEnumerator(name: "LOCKDOWN_MMIOTRACE", value: 14)
!154 = !DIEnumerator(name: "LOCKDOWN_DEBUGFS", value: 15)
!155 = !DIEnumerator(name: "LOCKDOWN_XMON_WR", value: 16)
!156 = !DIEnumerator(name: "LOCKDOWN_BPF_WRITE_USER", value: 17)
!157 = !DIEnumerator(name: "LOCKDOWN_DBG_WRITE_KERNEL", value: 18)
!158 = !DIEnumerator(name: "LOCKDOWN_RTAS_ERROR_INJECTION", value: 19)
!159 = !DIEnumerator(name: "LOCKDOWN_INTEGRITY_MAX", value: 20)
!160 = !DIEnumerator(name: "LOCKDOWN_KCORE", value: 21)
!161 = !DIEnumerator(name: "LOCKDOWN_KPROBES", value: 22)
!162 = !DIEnumerator(name: "LOCKDOWN_BPF_READ_KERNEL", value: 23)
!163 = !DIEnumerator(name: "LOCKDOWN_DBG_READ_KERNEL", value: 24)
!164 = !DIEnumerator(name: "LOCKDOWN_PERF", value: 25)
!165 = !DIEnumerator(name: "LOCKDOWN_TRACEFS", value: 26)
!166 = !DIEnumerator(name: "LOCKDOWN_XMON_RW", value: 27)
!167 = !DIEnumerator(name: "LOCKDOWN_XFRM_SECRET", value: 28)
!168 = !DIEnumerator(name: "LOCKDOWN_CONFIDENTIALITY_MAX", value: 29)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lockdep_ok", file: !170, line: 87, baseType: !43, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!171 = !{!172, !173}
!172 = !DIEnumerator(name: "LOCKDEP_STILL_OK", value: 0)
!173 = !DIEnumerator(name: "LOCKDEP_NOW_UNRELIABLE", value: 1)
!174 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !175, line: 364, baseType: !43, size: 32, elements: !176)
!175 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!178 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!179 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!180 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!181 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!182 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!183 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!184 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !185, line: 53, baseType: !43, size: 32, elements: !186)
!185 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!186 = !{!187, !188, !189, !190, !191, !192, !193, !194}
!187 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!188 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!189 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!190 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!191 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!192 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!193 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!194 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!195 = !{!196, !198, !199, !201, !203, !205, !206, !208, !210, !212, !214, !217, !221, !4143, !4144, !4149, !1128, !209, !213, !4151, !243, !242, !586}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !219, line: 35, baseType: !220)
!219 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!220 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_version_attribute", file: !48, line: 64, size: 576, elements: !223)
!223 = !{!224, !4141, !4142}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !222, file: !48, line: 65, baseType: !225, size: 448)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !48, line: 53, size: 448, elements: !226)
!226 = !{!227, !234, !4125, !4129, !4133, !4137}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !225, file: !48, line: 54, baseType: !228, size: 128)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !229, line: 30, size: 128, elements: !230)
!229 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !229, line: 31, baseType: !215, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !228, file: !229, line: 32, baseType: !233, size: 16, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !219, line: 24, baseType: !202)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !225, file: !48, line: 55, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!238, !242, !243, !213}
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !219, line: 66, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !240, line: 73, baseType: !241)
!240 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !240, line: 15, baseType: !207)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !48, line: 45, size: 768, elements: !245)
!245 = !{!246, !4110, !4111, !4112, !4124}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !244, file: !48, line: 46, baseType: !247, size: 512)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !185, line: 64, size: 512, elements: !248)
!248 = !{!249, !250, !256, !258, !342, !3997, !4100, !4105, !4106, !4107, !4108, !4109}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !185, line: 65, baseType: !215, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !247, file: !185, line: 66, baseType: !251, size: 128, offset: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !219, line: 190, size: 128, elements: !252)
!252 = !{!253, !255}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !251, file: !219, line: 191, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !251, file: !219, line: 191, baseType: !254, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !247, file: !185, line: 67, baseType: !257, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !247, file: !185, line: 68, baseType: !259, size: 64, offset: 256)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !185, line: 168, size: 768, elements: !261)
!261 = !{!262, !263, !304, !305}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !260, file: !185, line: 169, baseType: !251, size: 128)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !260, file: !185, line: 170, baseType: !264, size: 32, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !265, line: 29, baseType: !266)
!265 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !265, line: 17, size: 32, elements: !267)
!267 = !{!268}
!268 = !DIDerivedType(tag: DW_TAG_member, scope: !266, file: !265, line: 18, baseType: !269, size: 32)
!269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !266, file: !265, line: 18, size: 32, elements: !270)
!270 = !{!271}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !269, file: !265, line: 19, baseType: !272, size: 32)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !273, line: 14, size: 32, elements: !274)
!273 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !272, file: !273, line: 15, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !277, line: 44, baseType: !278)
!277 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !277, line: 14, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 15, baseType: !281, size: 32)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 15, size: 32, elements: !282)
!282 = !{!283, !288, !297}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !281, file: !277, line: 16, baseType: !284, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !219, line: 174, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 172, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !285, file: !219, line: 173, baseType: !204, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !277, line: 24, baseType: !289, size: 16)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !277, line: 24, size: 16, elements: !290)
!290 = !{!291, !296}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !289, file: !277, line: 25, baseType: !292, size: 8)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !293, line: 17, baseType: !294)
!293 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !295, line: 21, baseType: !197)
!295 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !289, file: !277, line: 26, baseType: !292, size: 8, offset: 8)
!297 = !DIDerivedType(tag: DW_TAG_member, scope: !281, file: !277, line: 28, baseType: !298, size: 32)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !281, file: !277, line: 28, size: 32, elements: !299)
!299 = !{!300, !303}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !298, file: !277, line: 29, baseType: !301, size: 16)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !293, line: 19, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !295, line: 24, baseType: !202)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !298, file: !277, line: 30, baseType: !301, size: 16, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !260, file: !185, line: 171, baseType: !247, size: 512, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !260, file: !185, line: 172, baseType: !306, size: 64, offset: 704)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !185, line: 133, size: 192, elements: !309)
!309 = !{!310, !317, !322}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !308, file: !185, line: 134, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!204, !315}
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !185, line: 135, baseType: !318, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !319)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!215, !315}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !308, file: !185, line: 136, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{!204, !315, !327}
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !185, line: 125, size: 20736, elements: !329)
!329 = !{!330, !332, !336, !337, !341}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !328, file: !185, line: 126, baseType: !331, size: 192)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 192, elements: !5)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !328, file: !185, line: 127, baseType: !333, size: 4096, offset: 192)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !213, size: 4096, elements: !334)
!334 = !{!335}
!335 = !DISubrange(count: 64)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !328, file: !185, line: 128, baseType: !204, size: 32, offset: 4288)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !328, file: !185, line: 129, baseType: !338, size: 16384, offset: 4320)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 2048)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !328, file: !185, line: 130, baseType: !204, size: 32, offset: 20704)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !247, file: !185, line: 69, baseType: !343, size: 64, offset: 320)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !185, line: 116, size: 384, elements: !346)
!346 = !{!347, !351, !368, !3959, !3987, !3991}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !345, file: !185, line: 117, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !257}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !345, file: !185, line: 118, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !229, line: 254, size: 128, elements: !355)
!355 = !{!356, !361}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !354, file: !229, line: 255, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!238, !257, !360, !213}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !354, file: !229, line: 256, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = !DISubroutineType(types: !364)
!364 = !{!238, !257, !360, !215, !365}
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !219, line: 61, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !240, line: 72, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !240, line: 16, baseType: !209)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !345, file: !185, line: 119, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !229, line: 84, size: 320, elements: !373)
!373 = !{!374, !375, !379, !3955, !3957}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !229, line: 85, baseType: !215, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !372, file: !229, line: 86, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!233, !257, !360, !204}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !372, file: !229, line: 88, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!233, !257, !383, !204}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !229, line: 175, size: 512, elements: !385)
!385 = !{!386, !387, !388, !389, !3946, !3950, !3951}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !384, file: !229, line: 176, baseType: !228, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !384, file: !229, line: 177, baseType: !365, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !384, file: !229, line: 178, baseType: !198, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !384, file: !229, line: 179, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !55, line: 472, size: 1536, align: 64, elements: !395)
!395 = !{!396, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3940, !3941, !3942, !3943, !3944, !3945}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !394, file: !55, line: 473, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !55, line: 641, size: 4800, elements: !399)
!399 = !{!400, !401, !402, !410, !411, !418, !419, !422, !423, !3719, !3720, !3721, !3722, !3723, !3729, !3730, !3731, !3732, !3733, !3734, !3735, !3736, !3737, !3738, !3739, !3740, !3741, !3742, !3743, !3744, !3745, !3746, !3747, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3763, !3766, !3767, !3768, !3777, !3778, !3779, !3780}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !398, file: !55, line: 642, baseType: !233, size: 16)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !398, file: !55, line: 643, baseType: !202, size: 16, offset: 16)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !398, file: !55, line: 644, baseType: !403, size: 32, offset: 32)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !404, line: 23, baseType: !405)
!404 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 21, size: 32, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !405, file: !404, line: 22, baseType: !408, size: 32)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !219, line: 37, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !240, line: 49, baseType: !43)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !398, file: !55, line: 645, baseType: !251, size: 128, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !398, file: !55, line: 646, baseType: !412, size: 32, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !404, line: 28, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !404, line: 26, size: 32, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !413, file: !404, line: 27, baseType: !416, size: 32)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !219, line: 38, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !240, line: 50, baseType: !43)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !398, file: !55, line: 647, baseType: !43, size: 32, offset: 224)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !398, file: !55, line: 650, baseType: !420, size: 64, offset: 256)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !55, line: 607, flags: DIFlagFwdDecl)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !398, file: !55, line: 651, baseType: !420, size: 64, offset: 320)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !398, file: !55, line: 654, baseType: !424, size: 64, offset: 384)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !55, line: 1966, size: 2048, align: 512, elements: !427)
!427 = !{!428, !3547, !3557, !3561, !3565, !3569, !3573, !3577, !3581, !3585, !3589, !3590, !3594, !3598, !3635, !3664, !3668, !3674, !3678, !3682, !3686, !3690, !3694, !3700, !3704}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !426, file: !55, line: 1967, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !397, !432, !43}
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !434, line: 82, size: 1536, elements: !435)
!434 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!435 = !{!436, !437, !447, !455, !456, !475, !476, !480, !493, !3530, !3531, !3532, !3533, !3539, !3540, !3541}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !433, file: !434, line: 84, baseType: !43, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !433, file: !434, line: 85, baseType: !438, size: 32, offset: 32)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !439, line: 275, baseType: !440)
!439 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !439, line: 275, size: 32, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !440, file: !439, line: 275, baseType: !443, size: 32)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !439, line: 69, baseType: !444)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !439, line: 64, size: 32, elements: !445)
!445 = !{!446}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !444, file: !439, line: 65, baseType: !43, size: 32)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !433, file: !434, line: 86, baseType: !448, size: 128, offset: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !449, line: 38, size: 128, elements: !450)
!449 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!450 = !{!451, !453}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !448, file: !449, line: 39, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !448, file: !449, line: 39, baseType: !454, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !433, file: !434, line: 87, baseType: !432, size: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !433, file: !434, line: 88, baseType: !457, size: 128, offset: 256)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !434, line: 49, size: 128, elements: !458)
!458 = !{!459, !472}
!459 = !DIDerivedType(tag: DW_TAG_member, scope: !457, file: !434, line: 50, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !457, file: !434, line: 50, size: 64, elements: !461)
!461 = !{!462, !469}
!462 = !DIDerivedType(tag: DW_TAG_member, scope: !460, file: !434, line: 51, baseType: !463, size: 64)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !460, file: !434, line: 51, size: 64, elements: !464)
!464 = !{!465, !468}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !463, file: !434, line: 52, baseType: !466, size: 32)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !293, line: 21, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !295, line: 27, baseType: !43)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !463, file: !434, line: 52, baseType: !466, size: 32, offset: 32)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !460, file: !434, line: 54, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !293, line: 23, baseType: !471)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !295, line: 31, baseType: !211)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !457, file: !434, line: 56, baseType: !473, size: 64, offset: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !433, file: !434, line: 89, baseType: !397, size: 64, offset: 384)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !433, file: !434, line: 91, baseType: !477, size: 256, offset: 448)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !197, size: 256, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !433, file: !434, line: 94, baseType: !481, size: 64, offset: 704)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !482, line: 25, size: 64, elements: !483)
!482 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !482, line: 26, baseType: !485, size: 64)
!485 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !482, line: 26, size: 64, elements: !486)
!486 = !{!487, !488}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !485, file: !482, line: 28, baseType: !471, size: 64, align: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, scope: !485, file: !482, line: 30, baseType: !489, size: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !485, file: !482, line: 30, size: 64, elements: !490)
!490 = !{!491, !492}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !489, file: !482, line: 31, baseType: !264, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !489, file: !482, line: 32, baseType: !204, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !433, file: !434, line: 95, baseType: !494, size: 64, offset: 768)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !434, line: 128, size: 1024, align: 512, elements: !497)
!497 = !{!498, !502, !503, !510, !516, !520, !524, !528, !529, !533, !537, !3520, !3524}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !496, file: !434, line: 129, baseType: !499, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DISubroutineType(types: !501)
!501 = !{!204, !432, !43}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !496, file: !434, line: 130, baseType: !499, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !496, file: !434, line: 131, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DISubroutineType(types: !506)
!506 = !{!204, !507, !509}
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !496, file: !434, line: 132, baseType: !511, size: 64, offset: 192)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!204, !507, !43, !215, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !457)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !496, file: !434, line: 134, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!204, !507}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !496, file: !434, line: 135, baseType: !521, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!204, !432}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !496, file: !434, line: 136, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{null, !432}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !496, file: !434, line: 137, baseType: !525, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !496, file: !434, line: 138, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !432, !397}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !496, file: !434, line: 139, baseType: !534, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!213, !432, !213, !204}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !496, file: !434, line: 140, baseType: !538, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!541, !3519}
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !543, line: 70, size: 256, elements: !544)
!543 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!544 = !{!545, !546, !3515, !3516}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !542, file: !543, line: 71, baseType: !432, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !542, file: !543, line: 72, baseType: !547, size: 64, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !55, line: 1190, size: 10752, elements: !549)
!549 = !{!550, !551, !554, !555, !556, !560, !997, !1137, !1177, !1267, !1271, !1272, !1273, !1274, !1275, !1284, !1285, !1286, !1287, !1292, !1296, !1297, !1300, !1303, !1306, !1309, !1310, !1311, !1352, !3448, !3449, !3450, !3451, !3452, !3453, !3456, !3458, !3465, !3466, !3467, !3468, !3469, !3484, !3485, !3486, !3487, !3488, !3489, !3490, !3491, !3506, !3507, !3508, !3509, !3510, !3511, !3512, !3513, !3514}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !548, file: !55, line: 1191, baseType: !251, size: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !548, file: !55, line: 1192, baseType: !552, size: 32, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !219, line: 21, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !219, line: 18, baseType: !466)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !548, file: !55, line: 1193, baseType: !197, size: 8, offset: 160)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !548, file: !55, line: 1194, baseType: !209, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !548, file: !55, line: 1195, baseType: !557, size: 64, offset: 256)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !219, line: 52, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !240, line: 88, baseType: !559)
!559 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !548, file: !55, line: 1196, baseType: !561, size: 64, offset: 320)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !55, line: 2366, size: 576, elements: !563)
!563 = !{!564, !565, !566, !573, !577, !581, !585, !982, !983, !987, !989, !990, !991, !993, !994, !995, !996}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !562, file: !55, line: 2367, baseType: !215, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !562, file: !55, line: 2368, baseType: !204, size: 32, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !562, file: !55, line: 2376, baseType: !567, size: 64, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DISubroutineType(types: !569)
!569 = !{!204, !570}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !572, line: 32, flags: DIFlagFwdDecl)
!572 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!573 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !562, file: !55, line: 2377, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !55, line: 75, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !562, file: !55, line: 2378, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!432, !561, !204, !215, !198}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !562, file: !55, line: 2380, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !547}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !562, file: !55, line: 2381, baseType: !586, size: 64, offset: 384)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !48, line: 402, size: 9216, align: 512, elements: !588)
!588 = !{!589, !590, !591, !595, !596, !597, !598, !599, !600, !604, !609, !610, !631, !685, !686, !687, !688, !689, !690, !691, !692, !700, !704, !731, !750, !751, !752, !753, !762, !785, !786, !789, !792, !793, !794, !795, !796, !797, !798, !803, !804, !942, !950, !951, !952, !953, !957, !958, !962, !963, !964, !965, !966, !967, !968, !975, !976, !977, !981}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !587, file: !48, line: 403, baseType: !47, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !587, file: !48, line: 406, baseType: !251, size: 128, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !587, file: !48, line: 409, baseType: !592, size: 448, offset: 192)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 56)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !587, file: !48, line: 417, baseType: !244, size: 768, offset: 640)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !587, file: !48, line: 418, baseType: !242, size: 64, offset: 1408)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !587, file: !48, line: 419, baseType: !215, size: 64, offset: 1472)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !587, file: !48, line: 420, baseType: !215, size: 64, offset: 1536)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !587, file: !48, line: 421, baseType: !257, size: 64, offset: 1600)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !587, file: !48, line: 424, baseType: !601, size: 64, offset: 1664)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !48, line: 424, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !587, file: !48, line: 425, baseType: !605, size: 64, offset: 1728)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !293, line: 20, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !295, line: 26, baseType: !204)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !587, file: !48, line: 426, baseType: !43, size: 32, offset: 1792)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !587, file: !48, line: 435, baseType: !611, size: 256, offset: 1856)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !612, line: 66, size: 256, elements: !613)
!612 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!613 = !{!614, !623, !625, !630}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !612, line: 67, baseType: !615, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !616, line: 13, baseType: !617)
!616 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !219, line: 181, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !219, line: 179, size: 64, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !618, file: !219, line: 180, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !293, line: 22, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !295, line: 30, baseType: !559)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !611, file: !612, line: 68, baseType: !624, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !273, line: 23, baseType: !272)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !611, file: !612, line: 70, baseType: !626, size: 32, offset: 96)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !627, line: 15, size: 32, elements: !628)
!627 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !626, file: !627, line: 20, baseType: !284, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !611, file: !612, line: 72, baseType: !251, size: 128, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !587, file: !48, line: 437, baseType: !632, size: 64, offset: 2112)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !129, line: 69, size: 320, elements: !634)
!634 = !{!635, !636, !637, !657, !659, !663, !664}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !633, file: !129, line: 70, baseType: !215, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !633, file: !129, line: 71, baseType: !586, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !633, file: !129, line: 72, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !129, line: 47, size: 256, elements: !641)
!641 = !{!642, !643, !649, !653}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !129, line: 49, baseType: !43, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !640, file: !129, line: 51, baseType: !644, size: 64, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!204, !215, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !640, file: !129, line: 53, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!204, !213, !647}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !640, file: !129, line: 55, baseType: !654, size: 64, offset: 192)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{null, !198}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !633, file: !129, line: 73, baseType: !658, size: 16, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !301)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !633, file: !129, line: 74, baseType: !660, size: 8, offset: 208)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !293, line: 16, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !295, line: 20, baseType: !662)
!662 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !633, file: !129, line: 75, baseType: !292, size: 8, offset: 216)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !633, file: !129, line: 76, baseType: !665, size: 64, offset: 256)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !633, file: !129, line: 76, size: 64, elements: !666)
!666 = !{!667, !668, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !665, file: !129, line: 77, baseType: !198, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !665, file: !129, line: 78, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !129, line: 86, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !671, file: !129, line: 87, baseType: !43, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !671, file: !129, line: 88, baseType: !213, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !665, file: !129, line: 79, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !129, line: 92, size: 256, elements: !679)
!679 = !{!680, !681, !682, !683, !684}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !678, file: !129, line: 94, baseType: !43, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !678, file: !129, line: 95, baseType: !43, size: 32, offset: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !678, file: !129, line: 96, baseType: !205, size: 64, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !678, file: !129, line: 97, baseType: !638, size: 64, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !678, file: !129, line: 98, baseType: !198, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !587, file: !48, line: 438, baseType: !43, size: 32, offset: 2176)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !587, file: !48, line: 441, baseType: !43, size: 32, offset: 2208)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !587, file: !48, line: 442, baseType: !601, size: 64, offset: 2240)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !587, file: !48, line: 443, baseType: !605, size: 64, offset: 2304)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !587, file: !48, line: 444, baseType: !218, size: 8, offset: 2368)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !587, file: !48, line: 451, baseType: !218, size: 8, offset: 2376)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !587, file: !48, line: 454, baseType: !43, size: 32, offset: 2400)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !587, file: !48, line: 455, baseType: !693, size: 64, offset: 2432)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !695, line: 23, size: 96, elements: !696)
!695 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!696 = !{!697, !698, !699}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !694, file: !695, line: 24, baseType: !204, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !694, file: !695, line: 24, baseType: !204, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !694, file: !695, line: 24, baseType: !204, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !587, file: !48, line: 458, baseType: !701, size: 64, offset: 2496)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!204}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !587, file: !48, line: 460, baseType: !705, size: 4032, align: 512, offset: 2560)
!705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !706, size: 4032, elements: !729)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !48, line: 362, size: 576, elements: !707)
!707 = !{!708, !709, !710}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !706, file: !48, line: 363, baseType: !198, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !706, file: !48, line: 364, baseType: !43, size: 32, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !706, file: !48, line: 367, baseType: !711, size: 448, offset: 128)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !48, line: 319, size: 448, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !711, file: !48, line: 320, baseType: !586, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !711, file: !48, line: 321, baseType: !715, size: 384, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !716, line: 40, size: 384, elements: !717)
!716 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!717 = !{!718}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !716, line: 41, baseType: !719, size: 384, align: 64)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !720, size: 384, align: 64, elements: !727)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !721, line: 5, size: 192, align: 64, elements: !722)
!721 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!722 = !{!723, !724, !726}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !720, file: !721, line: 6, baseType: !209, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !720, file: !721, line: 7, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !720, file: !721, line: 8, baseType: !725, size: 64, offset: 128)
!727 = !{!728}
!728 = !DISubrange(count: 2)
!729 = !{!730}
!730 = !DISubrange(count: 7)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !587, file: !48, line: 463, baseType: !732, size: 192, offset: 6592)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !733, line: 8, size: 192, elements: !734)
!733 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!734 = !{!735, !736, !737}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !732, file: !733, line: 10, baseType: !43, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !732, file: !733, line: 11, baseType: !203, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !732, file: !733, line: 12, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !740, line: 59, size: 48, elements: !741)
!740 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!741 = !{!742, !745, !746, !747, !748, !749}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !739, file: !740, line: 60, baseType: !743, size: 16)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !293, line: 18, baseType: !744)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !295, line: 23, baseType: !200)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !739, file: !740, line: 61, baseType: !743, size: 16, offset: 16)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !739, file: !740, line: 63, baseType: !43, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !739, file: !740, line: 64, baseType: !43, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !739, file: !740, line: 65, baseType: !43, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !739, file: !740, line: 66, baseType: !43, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !587, file: !48, line: 465, baseType: !209, size: 64, offset: 6784)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !587, file: !48, line: 469, baseType: !43, size: 32, offset: 6848)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !587, file: !48, line: 470, baseType: !251, size: 128, offset: 6912)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !587, file: !48, line: 471, baseType: !754, size: 64, offset: 7040)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !756, line: 33, size: 96, elements: !757)
!756 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!757 = !{!758, !759, !760, !761}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !755, file: !756, line: 37, baseType: !204, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !755, file: !756, line: 43, baseType: !204, size: 32, offset: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !755, file: !756, line: 45, baseType: !202, size: 16, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !755, file: !756, line: 47, baseType: !202, size: 16, offset: 80)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !587, file: !48, line: 476, baseType: !763, size: 64, offset: 7104)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !48, line: 378, size: 256, elements: !765)
!765 = !{!766, !782, !783, !784}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !764, file: !48, line: 379, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !769, line: 204, baseType: !770)
!769 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !769, line: 197, size: 192, elements: !771)
!771 = !{!772, !774, !775, !776, !778, !780}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !770, file: !769, line: 198, baseType: !773, size: 32)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !769, line: 21, baseType: !467)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !770, file: !769, line: 199, baseType: !197, size: 8, offset: 32)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !770, file: !769, line: 200, baseType: !197, size: 8, offset: 40)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !770, file: !769, line: 201, baseType: !777, size: 16, offset: 48)
!777 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !769, line: 17, baseType: !302)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !770, file: !769, line: 202, baseType: !779, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !769, line: 16, baseType: !471)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !770, file: !769, line: 203, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !769, line: 22, baseType: !471)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !764, file: !48, line: 380, baseType: !43, size: 32, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !764, file: !48, line: 381, baseType: !213, size: 64, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !764, file: !48, line: 382, baseType: !213, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !587, file: !48, line: 477, baseType: !764, size: 256, offset: 7168)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !587, file: !48, line: 480, baseType: !787, size: 64, offset: 7424)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !48, line: 480, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !587, file: !48, line: 483, baseType: !790, size: 64, offset: 7488)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !48, line: 483, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !587, file: !48, line: 488, baseType: !213, size: 64, offset: 7552)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !587, file: !48, line: 492, baseType: !198, size: 64, offset: 7616)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !587, file: !48, line: 493, baseType: !43, size: 32, offset: 7680)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !587, file: !48, line: 495, baseType: !198, size: 64, offset: 7744)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !587, file: !48, line: 496, baseType: !43, size: 32, offset: 7808)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !587, file: !48, line: 499, baseType: !43, size: 32, offset: 7840)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !587, file: !48, line: 500, baseType: !799, size: 64, offset: 7872)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !801, line: 45, baseType: !802)
!801 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !587, file: !48, line: 503, baseType: !43, size: 32, offset: 7936)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !587, file: !48, line: 504, baseType: !805, size: 64, offset: 8000)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !808, line: 96, size: 192, elements: !809)
!808 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!809 = !{!810, !811, !892, !896}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !807, file: !808, line: 97, baseType: !43, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !807, file: !808, line: 98, baseType: !812, size: 64, offset: 64)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !808, line: 24, size: 3072, elements: !814)
!814 = !{!815, !817, !818, !819, !820, !844, !845, !846, !847, !865, !877, !878, !889, !890, !891}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !813, file: !808, line: 26, baseType: !816, size: 128)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !615, size: 128, elements: !727)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !813, file: !808, line: 27, baseType: !816, size: 128, offset: 128)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !813, file: !808, line: 28, baseType: !204, size: 32, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !813, file: !808, line: 31, baseType: !264, size: 32, align: 512, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !813, file: !808, line: 32, baseType: !821, size: 960, offset: 576)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !822, line: 206, size: 960, elements: !823)
!822 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!823 = !{!824, !833, !838, !840, !841, !843}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !821, file: !822, line: 207, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !219, line: 232, size: 128, align: 64, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !826, file: !219, line: 233, baseType: !825, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !826, file: !219, line: 234, baseType: !830, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{null, !825}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !821, file: !822, line: 208, baseType: !834, size: 256, offset: 64)
!834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !835, size: 256, elements: !836)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!836 = !{!837}
!837 = !DISubrange(count: 4)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !821, file: !822, line: 209, baseType: !839, size: 256, offset: 320)
!839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 256, elements: !836)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !821, file: !822, line: 213, baseType: !207, size: 64, offset: 576)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !821, file: !822, line: 215, baseType: !842, size: 256, offset: 640)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 256, elements: !836)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !821, file: !822, line: 216, baseType: !292, size: 8, offset: 896)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !813, file: !808, line: 33, baseType: !209, size: 64, offset: 1536)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !813, file: !808, line: 34, baseType: !209, size: 64, offset: 1600)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !813, file: !808, line: 35, baseType: !218, size: 8, offset: 1664)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !813, file: !808, line: 36, baseType: !848, size: 320, offset: 1728)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !849, line: 11, size: 320, elements: !850)
!849 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!850 = !{!851, !858, !859, !864}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !848, file: !849, line: 16, baseType: !852, size: 128)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !219, line: 198, size: 128, elements: !853)
!853 = !{!854, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !219, line: 199, baseType: !855, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !852, file: !219, line: 199, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !848, file: !849, line: 17, baseType: !209, size: 64, offset: 128)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !848, file: !849, line: 18, baseType: !860, size: 64, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{null, !863}
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !848, file: !849, line: 19, baseType: !466, size: 32, offset: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !813, file: !808, line: 37, baseType: !866, size: 256, offset: 2048)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !867, line: 98, size: 256, elements: !868)
!867 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!868 = !{!869, !870, !871}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !866, file: !867, line: 99, baseType: !615, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !866, file: !867, line: 100, baseType: !251, size: 128, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !867, line: 101, baseType: !872, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !867, line: 21, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{null, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !813, file: !808, line: 38, baseType: !826, size: 128, align: 64, offset: 2304)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !813, file: !808, line: 39, baseType: !879, size: 64, offset: 2432)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !808, line: 49, size: 768, elements: !881)
!881 = !{!882, !883, !884, !885, !886, !887, !888}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !880, file: !808, line: 50, baseType: !264, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !880, file: !808, line: 51, baseType: !839, size: 256, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !880, file: !808, line: 53, baseType: !839, size: 256, offset: 320)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !880, file: !808, line: 54, baseType: !209, size: 64, offset: 576)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !880, file: !808, line: 55, baseType: !879, size: 64, offset: 640)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !880, file: !808, line: 56, baseType: !204, size: 32, offset: 704)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !880, file: !808, line: 57, baseType: !204, size: 32, offset: 736)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !813, file: !808, line: 40, baseType: !209, size: 64, offset: 2496)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !813, file: !808, line: 42, baseType: !204, size: 32, offset: 2560)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !813, file: !808, line: 43, baseType: !806, size: 64, offset: 2624)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !807, file: !808, line: 99, baseType: !893, offset: 128)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !894, line: 211, elements: !895)
!894 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!895 = !{}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !807, file: !808, line: 100, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !808, line: 63, size: 3008, elements: !899)
!899 = !{!900, !901, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916, !917, !918, !929, !930, !931, !932, !941}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !898, file: !808, line: 64, baseType: !879, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !898, file: !808, line: 65, baseType: !902, size: 192, offset: 64)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !879, size: 192, elements: !5)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !898, file: !808, line: 67, baseType: !204, size: 32, offset: 256)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !898, file: !808, line: 68, baseType: !611, size: 256, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !898, file: !808, line: 69, baseType: !264, size: 32, offset: 576)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !898, file: !808, line: 70, baseType: !611, size: 256, offset: 640)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !898, file: !808, line: 71, baseType: !209, size: 64, offset: 896)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !898, file: !808, line: 72, baseType: !209, size: 64, offset: 960)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !898, file: !808, line: 73, baseType: !209, size: 64, offset: 1024)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !898, file: !808, line: 74, baseType: !209, size: 64, offset: 1088)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !898, file: !808, line: 75, baseType: !209, size: 64, offset: 1152)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !898, file: !808, line: 76, baseType: !209, size: 64, offset: 1216)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !898, file: !808, line: 77, baseType: !209, size: 64, offset: 1280)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !898, file: !808, line: 78, baseType: !209, size: 64, offset: 1344)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !898, file: !808, line: 79, baseType: !218, size: 8, offset: 1408)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !898, file: !808, line: 80, baseType: !209, size: 64, offset: 1472)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !898, file: !808, line: 81, baseType: !611, size: 256, offset: 1536)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !898, file: !808, line: 82, baseType: !919, size: 256, offset: 1792)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !920, line: 26, size: 256, elements: !921)
!920 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !919, file: !920, line: 27, baseType: !43, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !919, file: !920, line: 28, baseType: !924, size: 192, offset: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !925, line: 43, size: 192, elements: !926)
!925 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!926 = !{!927, !928}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !925, line: 44, baseType: !624, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !924, file: !925, line: 45, baseType: !251, size: 128, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !898, file: !808, line: 84, baseType: !284, size: 32, offset: 2048)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !898, file: !808, line: 87, baseType: !209, size: 64, offset: 2112)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !898, file: !808, line: 88, baseType: !209, size: 64, offset: 2176)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !898, file: !808, line: 89, baseType: !933, size: 704, offset: 2240)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !867, line: 111, size: 704, elements: !934)
!934 = !{!935, !936, !937, !940}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !933, file: !867, line: 112, baseType: !866, size: 256)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !933, file: !867, line: 113, baseType: !848, size: 320, offset: 256)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !933, file: !867, line: 116, baseType: !938, size: 64, offset: 576)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !867, line: 18, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !933, file: !867, line: 117, baseType: !204, size: 32, offset: 640)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !898, file: !808, line: 90, baseType: !806, size: 64, offset: 2944)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !587, file: !48, line: 515, baseType: !943, size: 64, offset: 8064)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !945, line: 117, size: 128, elements: !946)
!945 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !944, file: !945, line: 118, baseType: !607, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !944, file: !945, line: 119, baseType: !607, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !944, file: !945, line: 120, baseType: !207, size: 64, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !587, file: !48, line: 516, baseType: !43, size: 32, offset: 8128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !587, file: !48, line: 519, baseType: !43, size: 32, offset: 8160)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !587, file: !48, line: 520, baseType: !214, size: 64, offset: 8192)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !587, file: !48, line: 523, baseType: !954, size: 64, offset: 8256)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !48, line: 523, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !587, file: !48, line: 524, baseType: !43, size: 32, offset: 8320)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !587, file: !48, line: 525, baseType: !959, size: 64, offset: 8384)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !48, line: 525, flags: DIFlagFwdDecl)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !587, file: !48, line: 526, baseType: !43, size: 32, offset: 8448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !587, file: !48, line: 533, baseType: !198, size: 64, offset: 8512)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !587, file: !48, line: 534, baseType: !43, size: 32, offset: 8576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !587, file: !48, line: 535, baseType: !208, size: 64, offset: 8640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !587, file: !48, line: 536, baseType: !43, size: 32, offset: 8704)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !587, file: !48, line: 539, baseType: !204, size: 32, offset: 8736)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !587, file: !48, line: 540, baseType: !969, size: 64, offset: 8768)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !971, line: 32, size: 64, elements: !972)
!971 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !970, file: !971, line: 33, baseType: !607, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !970, file: !971, line: 34, baseType: !607, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !587, file: !48, line: 563, baseType: !251, size: 128, offset: 8832)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !587, file: !48, line: 565, baseType: !251, size: 128, offset: 8960)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !587, file: !48, line: 568, baseType: !978, size: 64, offset: 9088)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{null}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !587, file: !48, line: 570, baseType: !284, size: 32, offset: 9152)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !562, file: !55, line: 2382, baseType: !561, size: 64, offset: 448)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !562, file: !55, line: 2383, baseType: !984, size: 64, offset: 512)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !219, line: 194, size: 64, elements: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !984, file: !219, line: 195, baseType: !855, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !562, file: !55, line: 2385, baseType: !988, offset: 576)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !894, line: 206, elements: !895)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !562, file: !55, line: 2386, baseType: !988, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !562, file: !55, line: 2387, baseType: !988, offset: 576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !562, file: !55, line: 2388, baseType: !992, offset: 576)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !988, elements: !5)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !562, file: !55, line: 2390, baseType: !988, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !562, file: !55, line: 2391, baseType: !988, offset: 576)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !562, file: !55, line: 2392, baseType: !988, offset: 576)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !562, file: !55, line: 2393, baseType: !988, offset: 576)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !548, file: !55, line: 1197, baseType: !998, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !55, line: 2057, size: 1664, elements: !1001)
!1001 = !{!1002, !1006, !1010, !1011, !1015, !1021, !1025, !1026, !1027, !1031, !1035, !1039, !1040, !1041, !1047, !1051, !1052, !1059, !1060, !1061, !1062, !1066, !1070, !1119, !1135, !1136}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !1000, file: !55, line: 2058, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!397, !547}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !1000, file: !55, line: 2059, baseType: !1007, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{null, !397}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !1000, file: !55, line: 2060, baseType: !1007, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !1000, file: !55, line: 2062, baseType: !1012, size: 64, offset: 192)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{null, !397, !204}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !1000, file: !55, line: 2063, baseType: !1016, size: 64, offset: 256)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!204, !397, !1019}
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !55, line: 309, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !1000, file: !55, line: 2064, baseType: !1022, size: 64, offset: 320)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DISubroutineType(types: !1024)
!1024 = !{!204, !397}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !1000, file: !55, line: 2065, baseType: !1007, size: 64, offset: 384)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !1000, file: !55, line: 2066, baseType: !582, size: 64, offset: 448)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !1000, file: !55, line: 2067, baseType: !1028, size: 64, offset: 512)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!204, !547, !204}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !1000, file: !55, line: 2068, baseType: !1032, size: 64, offset: 576)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DISubroutineType(types: !1034)
!1034 = !{!204, !547, !54}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !1000, file: !55, line: 2069, baseType: !1036, size: 64, offset: 640)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!204, !547}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !1000, file: !55, line: 2070, baseType: !1032, size: 64, offset: 704)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !1000, file: !55, line: 2071, baseType: !1036, size: 64, offset: 768)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !1000, file: !55, line: 2072, baseType: !1042, size: 64, offset: 832)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{!204, !432, !1045}
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !55, line: 62, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !1000, file: !55, line: 2073, baseType: !1048, size: 64, offset: 896)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!204, !547, !203, !213}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !1000, file: !55, line: 2074, baseType: !582, size: 64, offset: 960)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1000, file: !55, line: 2076, baseType: !1053, size: 64, offset: 1024)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!204, !1056, !432}
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1058, line: 66, flags: DIFlagFwdDecl)
!1058 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !1000, file: !55, line: 2077, baseType: !1053, size: 64, offset: 1088)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1000, file: !55, line: 2078, baseType: !1053, size: 64, offset: 1152)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !1000, file: !55, line: 2079, baseType: !1053, size: 64, offset: 1216)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !1000, file: !55, line: 2081, baseType: !1063, size: 64, offset: 1280)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!238, !547, !204, !213, !365, !557}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !1000, file: !55, line: 2082, baseType: !1067, size: 64, offset: 1344)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DISubroutineType(types: !1069)
!1069 = !{!238, !547, !204, !215, !365, !557}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !1000, file: !55, line: 2083, baseType: !1071, size: 64, offset: 1408)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!1074, !397}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !60, line: 296, size: 1664, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1102, !1103, !1104}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1076, file: !60, line: 297, baseType: !852, size: 128)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1076, file: !60, line: 298, baseType: !251, size: 128, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1076, file: !60, line: 299, baseType: !251, size: 128, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1076, file: !60, line: 300, baseType: !251, size: 128, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1076, file: !60, line: 301, baseType: !611, size: 256, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1076, file: !60, line: 302, baseType: !264, size: 32, offset: 768)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1076, file: !60, line: 303, baseType: !284, size: 32, offset: 800)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1076, file: !60, line: 304, baseType: !547, size: 64, offset: 832)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1076, file: !60, line: 305, baseType: !1087, size: 64, offset: 896)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !60, line: 68, size: 64, elements: !1088)
!1088 = !{!1089, !1101}
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !60, line: 69, baseType: !1090, size: 32)
!1090 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1087, file: !60, line: 69, size: 32, elements: !1091)
!1091 = !{!1092, !1093, !1094}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1090, file: !60, line: 70, baseType: !403, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1090, file: !60, line: 71, baseType: !412, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1090, file: !60, line: 72, baseType: !1095, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1096, line: 24, baseType: !1097)
!1096 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1096, line: 22, size: 32, elements: !1098)
!1098 = !{!1099}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1097, file: !1096, line: 23, baseType: !1100, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1096, line: 20, baseType: !409)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1087, file: !60, line: 74, baseType: !59, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1076, file: !60, line: 306, baseType: !557, size: 64, offset: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1076, file: !60, line: 307, baseType: !209, size: 64, offset: 1024)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1076, file: !60, line: 308, baseType: !1105, size: 576, offset: 1088)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !60, line: 205, size: 576, elements: !1106)
!1106 = !{!1107, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1118}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1105, file: !60, line: 206, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !60, line: 66, baseType: !559)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1105, file: !60, line: 207, baseType: !1108, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1105, file: !60, line: 208, baseType: !1108, size: 64, offset: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1105, file: !60, line: 209, baseType: !1108, size: 64, offset: 192)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1105, file: !60, line: 210, baseType: !1108, size: 64, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1105, file: !60, line: 211, baseType: !1108, size: 64, offset: 320)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1105, file: !60, line: 212, baseType: !1108, size: 64, offset: 384)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1105, file: !60, line: 213, baseType: !1116, size: 64, offset: 448)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !1117, line: 8, baseType: !622)
!1117 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1105, file: !60, line: 214, baseType: !1116, size: 64, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !1000, file: !55, line: 2085, baseType: !1120, size: 64, offset: 1472)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!207, !547, !1123}
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1125, line: 15, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1126 = !{!1127, !1129, !1130, !1131, !1132}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1124, file: !1125, line: 16, baseType: !1128, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !219, line: 154, baseType: !43)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1124, file: !1125, line: 19, baseType: !204, size: 32, offset: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1124, file: !1125, line: 26, baseType: !209, size: 64, offset: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1124, file: !1125, line: 33, baseType: !209, size: 64, offset: 128)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1124, file: !1125, line: 36, baseType: !1133, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !79, line: 33, flags: DIFlagFwdDecl)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !1000, file: !55, line: 2087, baseType: !1120, size: 64, offset: 1536)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1000, file: !55, line: 2089, baseType: !582, size: 64, offset: 1600)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !548, file: !55, line: 1198, baseType: !1138, size: 64, offset: 448)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1140)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !60, line: 324, size: 704, elements: !1141)
!1141 = !{!1142, !1146, !1150, !1154, !1155, !1156, !1157, !1158, !1163, !1168, !1172}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1140, file: !60, line: 325, baseType: !1143, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DISubroutineType(types: !1145)
!1145 = !{!204, !1075}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1140, file: !60, line: 326, baseType: !1147, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!1075, !547, !204}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1140, file: !60, line: 327, baseType: !1151, size: 64, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DISubroutineType(types: !1153)
!1153 = !{null, !1075}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1140, file: !60, line: 328, baseType: !1143, size: 64, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1140, file: !60, line: 329, baseType: !1143, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1140, file: !60, line: 330, baseType: !1143, size: 64, offset: 320)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1140, file: !60, line: 331, baseType: !1028, size: 64, offset: 384)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1140, file: !60, line: 334, baseType: !1159, size: 64, offset: 448)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1160 = !DISubroutineType(types: !1161)
!1161 = !{!1162, !397}
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1140, file: !60, line: 335, baseType: !1164, size: 64, offset: 512)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{!204, !397, !1167}
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1140, file: !60, line: 337, baseType: !1169, size: 64, offset: 576)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!204, !397, !1162}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1140, file: !60, line: 339, baseType: !1173, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!204, !547, !1176}
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !548, file: !55, line: 1199, baseType: !1178, size: 64, offset: 512)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !60, line: 430, size: 704, elements: !1181)
!1181 = !{!1182, !1193, !1194, !1198, !1199, !1200, !1215, !1238, !1242, !1243, !1266}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1180, file: !60, line: 431, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!204, !547, !204, !204, !1186}
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1188)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !1189, line: 8, size: 128, elements: !1190)
!1189 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !1188, file: !1189, line: 9, baseType: !541, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !1188, file: !1189, line: 10, baseType: !432, size: 64, offset: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1180, file: !60, line: 432, baseType: !1028, size: 64, offset: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1180, file: !60, line: 433, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{!204, !547, !43}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1180, file: !60, line: 434, baseType: !1195, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1180, file: !60, line: 435, baseType: !1028, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1180, file: !60, line: 436, baseType: !1201, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = !DISubroutineType(types: !1203)
!1203 = !{!204, !547, !204, !1204}
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !60, line: 417, size: 256, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1205, file: !60, line: 418, baseType: !204, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1205, file: !60, line: 419, baseType: !43, size: 32, offset: 32)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1205, file: !60, line: 420, baseType: !43, size: 32, offset: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1205, file: !60, line: 422, baseType: !43, size: 32, offset: 96)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1205, file: !60, line: 423, baseType: !43, size: 32, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1205, file: !60, line: 424, baseType: !43, size: 32, offset: 160)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1205, file: !60, line: 425, baseType: !43, size: 32, offset: 192)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1205, file: !60, line: 426, baseType: !43, size: 32, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1180, file: !60, line: 437, baseType: !1216, size: 64, offset: 384)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1217, size: 64)
!1217 = !DISubroutineType(types: !1218)
!1218 = !{!204, !547, !1087, !1219}
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !60, line: 345, size: 960, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1220, file: !60, line: 346, baseType: !204, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1220, file: !60, line: 347, baseType: !470, size: 64, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1220, file: !60, line: 348, baseType: !470, size: 64, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1220, file: !60, line: 349, baseType: !470, size: 64, offset: 192)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1220, file: !60, line: 350, baseType: !470, size: 64, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1220, file: !60, line: 351, baseType: !470, size: 64, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1220, file: !60, line: 352, baseType: !470, size: 64, offset: 384)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1220, file: !60, line: 353, baseType: !621, size: 64, offset: 448)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1220, file: !60, line: 355, baseType: !621, size: 64, offset: 512)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1220, file: !60, line: 356, baseType: !204, size: 32, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1220, file: !60, line: 357, baseType: !204, size: 32, offset: 608)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1220, file: !60, line: 358, baseType: !470, size: 64, offset: 640)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1220, file: !60, line: 359, baseType: !470, size: 64, offset: 704)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1220, file: !60, line: 360, baseType: !470, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1220, file: !60, line: 361, baseType: !621, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1220, file: !60, line: 362, baseType: !204, size: 32, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1180, file: !60, line: 438, baseType: !1239, size: 64, offset: 448)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DISubroutineType(types: !1241)
!1241 = !{!204, !547, !1176, !1219}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1180, file: !60, line: 440, baseType: !1216, size: 64, offset: 512)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1180, file: !60, line: 441, baseType: !1244, size: 64, offset: 576)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!204, !547, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !60, line: 411, size: 1408, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1248, file: !60, line: 412, baseType: !43, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1248, file: !60, line: 413, baseType: !1252, size: 1344, offset: 64)
!1252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1253, size: 1344, elements: !5)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !60, line: 397, size: 448, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1265}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1253, file: !60, line: 398, baseType: !43, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1253, file: !60, line: 399, baseType: !43, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1253, file: !60, line: 401, baseType: !43, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1253, file: !60, line: 402, baseType: !43, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1253, file: !60, line: 403, baseType: !43, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1253, file: !60, line: 404, baseType: !43, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1253, file: !60, line: 405, baseType: !43, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1253, file: !60, line: 406, baseType: !211, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1253, file: !60, line: 407, baseType: !1264, size: 64, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !219, line: 132, baseType: !470)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1253, file: !60, line: 408, baseType: !1264, size: 64, offset: 384)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1180, file: !60, line: 442, baseType: !1195, size: 64, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !548, file: !55, line: 1200, baseType: !1268, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1270)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !55, line: 54, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !548, file: !55, line: 1201, baseType: !209, size: 64, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !548, file: !55, line: 1202, baseType: !209, size: 64, offset: 704)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !548, file: !55, line: 1203, baseType: !209, size: 64, offset: 768)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !548, file: !55, line: 1204, baseType: !432, size: 64, offset: 832)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !548, file: !55, line: 1205, baseType: !1276, size: 320, offset: 896)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !1277, line: 48, size: 320, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!1278 = !{!1279, !1280, !1281, !1282, !1283}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1276, file: !1277, line: 49, baseType: !615, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1276, file: !1277, line: 55, baseType: !615, size: 64, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !1276, file: !1277, line: 57, baseType: !626, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1276, file: !1277, line: 59, baseType: !624, size: 32, offset: 160)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !1276, file: !1277, line: 60, baseType: !251, size: 128, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !548, file: !55, line: 1206, baseType: !204, size: 32, offset: 1216)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !548, file: !55, line: 1207, baseType: !284, size: 32, offset: 1248)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !548, file: !55, line: 1209, baseType: !198, size: 64, offset: 1280)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !548, file: !55, line: 1211, baseType: !1288, size: 64, offset: 1344)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1291)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !55, line: 1211, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !548, file: !55, line: 1223, baseType: !1293, size: 64, offset: 1408)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !449, line: 34, size: 64, elements: !1294)
!1294 = !{!1295}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1293, file: !449, line: 35, baseType: !452, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !548, file: !55, line: 1224, baseType: !251, size: 128, offset: 1472)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !548, file: !55, line: 1225, baseType: !1298, size: 64, offset: 1600)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !55, line: 1225, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !548, file: !55, line: 1226, baseType: !1301, size: 64, offset: 1664)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !55, line: 1226, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !548, file: !55, line: 1227, baseType: !1304, size: 64, offset: 1728)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !55, line: 50, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !548, file: !55, line: 1228, baseType: !1307, size: 64, offset: 1792)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !55, line: 1228, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !548, file: !55, line: 1229, baseType: !852, size: 128, offset: 1856)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !548, file: !55, line: 1230, baseType: !43, size: 32, offset: 1984)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !548, file: !55, line: 1231, baseType: !1312, size: 2496, offset: 2048)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !60, line: 521, size: 2496, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1318, !1350}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1312, file: !60, line: 522, baseType: !43, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1312, file: !60, line: 523, baseType: !1276, size: 320, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1312, file: !60, line: 524, baseType: !1317, size: 192, offset: 384)
!1317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 192, elements: !5)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1312, file: !60, line: 525, baseType: !1319, size: 1728, offset: 576)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1320, size: 1728, elements: !5)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !60, line: 222, size: 576, elements: !1321)
!1321 = !{!1322, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1320, file: !60, line: 223, baseType: !1323, size: 64)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !60, line: 445, size: 256, elements: !1325)
!1325 = !{!1326, !1327, !1340, !1341}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1324, file: !60, line: 446, baseType: !204, size: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1324, file: !60, line: 447, baseType: !1328, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !60, line: 312, size: 512, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1330, file: !60, line: 313, baseType: !1028, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1330, file: !60, line: 314, baseType: !1028, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1330, file: !60, line: 315, baseType: !1028, size: 64, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1330, file: !60, line: 316, baseType: !1028, size: 64, offset: 192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1330, file: !60, line: 317, baseType: !1143, size: 64, offset: 256)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1330, file: !60, line: 318, baseType: !1143, size: 64, offset: 320)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1330, file: !60, line: 319, baseType: !1143, size: 64, offset: 384)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1330, file: !60, line: 320, baseType: !1173, size: 64, offset: 448)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1324, file: !60, line: 448, baseType: !586, size: 64, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1324, file: !60, line: 449, baseType: !1323, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1320, file: !60, line: 224, baseType: !204, size: 32, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1320, file: !60, line: 226, baseType: !251, size: 128, offset: 128)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1320, file: !60, line: 227, baseType: !209, size: 64, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1320, file: !60, line: 228, baseType: !43, size: 32, offset: 320)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1320, file: !60, line: 229, baseType: !43, size: 32, offset: 352)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1320, file: !60, line: 230, baseType: !1108, size: 64, offset: 384)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1320, file: !60, line: 231, baseType: !1108, size: 64, offset: 448)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1320, file: !60, line: 232, baseType: !198, size: 64, offset: 512)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1312, file: !60, line: 526, baseType: !1351, size: 192, offset: 2304)
!1351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1328, size: 192, elements: !5)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !548, file: !55, line: 1233, baseType: !1353, size: 2368, offset: 4544)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !55, line: 1184, size: 2368, elements: !1354)
!1354 = !{!1355, !1356, !1357}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1353, file: !55, line: 1185, baseType: !202, size: 16)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1353, file: !55, line: 1186, baseType: !202, size: 16, offset: 16)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1353, file: !55, line: 1187, baseType: !1358, size: 2304, offset: 64)
!1358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1359, size: 2304, elements: !5)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1360, line: 12, size: 768, elements: !1361)
!1360 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1361 = !{!1362, !1376, !1377, !3446, !3447}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1359, file: !1360, line: 13, baseType: !1363, size: 384)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1364, line: 17, size: 384, elements: !1365)
!1364 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1365 = !{!1366, !1367, !1368, !1375}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1363, file: !1364, line: 18, baseType: !204, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1363, file: !1364, line: 19, baseType: !204, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1363, file: !1364, line: 20, baseType: !1369, size: 192, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1370, line: 41, baseType: !1371)
!1370 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1370, line: 37, size: 192, elements: !1372)
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1371, file: !1370, line: 38, baseType: !264, size: 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1371, file: !1370, line: 39, baseType: !251, size: 128, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1363, file: !1364, line: 22, baseType: !826, size: 128, align: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1359, file: !1360, line: 14, baseType: !205, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1359, file: !1360, line: 15, baseType: !1378, size: 64, offset: 448)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1379, line: 16, size: 64, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1378, file: !1379, line: 17, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1058, line: 746, size: 58368, elements: !1384)
!1384 = !{!1385, !1393, !1394, !1395, !1401, !1402, !1403, !1404, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1475, !1486, !1581, !1585, !1588, !1619, !1620, !1621, !1622, !1631, !1633, !1634, !1635, !1636, !1637, !1638, !1649, !1650, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1667, !1668, !1675, !1676, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2631, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644, !2646, !2647, !2648, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2662, !2663, !2664, !2665, !2666, !2667, !2668, !2680, !2686, !2687, !2688, !2689, !2690, !2694, !2697, !2704, !2709, !2712, !2715, !2718, !2722, !2860, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2898, !2899, !2900, !2909, !2917, !2918, !2919, !2920, !2921, !2926, !2927, !2928, !2931, !2932, !2935, !2938, !2941, !2949, !2952, !2953, !3039, !3040, !3041, !3042, !3043, !3049, !3050, !3051, !3052, !3055, !3056, !3059, !3062, !3063, !3066, !3067, !3068, !3071, !3072, !3073, !3074, !3075, !3076, !3089, !3090, !3091, !3092, !3093, !3094, !3095, !3096, !3097, !3108, !3109, !3115, !3118, !3119, !3120, !3121, !3122, !3123, !3124, !3127, !3199, !3201, !3202, !3203, !3204, !3205, !3206, !3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3217, !3218, !3219, !3223, !3224, !3225}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1383, file: !1058, line: 752, baseType: !1386, size: 192)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1387, line: 56, size: 192, elements: !1388)
!1387 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1388 = !{!1389, !1390, !1391, !1392}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1386, file: !1387, line: 57, baseType: !209, size: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1386, file: !1387, line: 58, baseType: !209, size: 64, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1386, file: !1387, line: 59, baseType: !466, size: 32, offset: 128)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1386, file: !1387, line: 61, baseType: !466, size: 32, offset: 160)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1383, file: !1058, line: 754, baseType: !43, size: 32, offset: 192)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1383, file: !1058, line: 767, baseType: !198, size: 64, offset: 256)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1383, file: !1058, line: 768, baseType: !1396, size: 32, offset: 320)
!1396 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !1397, line: 113, baseType: !1398)
!1397 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !1397, line: 111, size: 32, elements: !1399)
!1399 = !{!1400}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !1398, file: !1397, line: 112, baseType: !284, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1383, file: !1058, line: 770, baseType: !43, size: 32, offset: 352)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1383, file: !1058, line: 771, baseType: !43, size: 32, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1383, file: !1058, line: 774, baseType: !204, size: 32, offset: 416)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1383, file: !1058, line: 775, baseType: !1405, size: 128, offset: 448)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1406, line: 58, size: 128, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1407 = !{!1408, !1414, !1419, !1420}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1405, file: !1406, line: 59, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !1410, line: 60, size: 64, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!1411 = !{!1412}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1409, file: !1410, line: 61, baseType: !1413, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1406, line: 60, baseType: !1415, size: 32, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1405, file: !1406, line: 60, size: 32, elements: !1416)
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1415, file: !1406, line: 61, baseType: !43, size: 32)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1415, file: !1406, line: 62, baseType: !284, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1405, file: !1406, line: 65, baseType: !301, size: 16, offset: 96)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1405, file: !1406, line: 65, baseType: !301, size: 16, offset: 112)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1383, file: !1058, line: 776, baseType: !43, size: 32, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1383, file: !1058, line: 777, baseType: !209, size: 64, offset: 640)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1383, file: !1058, line: 778, baseType: !1382, size: 64, offset: 704)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1383, file: !1058, line: 787, baseType: !204, size: 32, offset: 768)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1383, file: !1058, line: 788, baseType: !204, size: 32, offset: 800)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1383, file: !1058, line: 790, baseType: !204, size: 32, offset: 832)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1383, file: !1058, line: 792, baseType: !204, size: 32, offset: 864)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1383, file: !1058, line: 793, baseType: !204, size: 32, offset: 896)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1383, file: !1058, line: 794, baseType: !204, size: 32, offset: 928)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1383, file: !1058, line: 795, baseType: !43, size: 32, offset: 960)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1383, file: !1058, line: 797, baseType: !1432, size: 2048, offset: 1024)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1058, line: 551, size: 2048, elements: !1433)
!1433 = !{!1434, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1454, !1457, !1458, !1459}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1432, file: !1058, line: 553, baseType: !1435, size: 128)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1058, line: 411, size: 128, elements: !1436)
!1436 = !{!1437, !1438}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1435, file: !1058, line: 412, baseType: !209, size: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1435, file: !1058, line: 413, baseType: !466, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1432, file: !1058, line: 554, baseType: !720, size: 192, align: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1432, file: !1058, line: 555, baseType: !470, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1432, file: !1058, line: 556, baseType: !470, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1432, file: !1058, line: 558, baseType: !251, size: 128, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1432, file: !1058, line: 559, baseType: !43, size: 32, offset: 576)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1432, file: !1058, line: 561, baseType: !470, size: 64, offset: 640)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1432, file: !1058, line: 562, baseType: !470, size: 64, offset: 704)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1432, file: !1058, line: 563, baseType: !470, size: 64, offset: 768)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1432, file: !1058, line: 564, baseType: !470, size: 64, offset: 832)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1432, file: !1058, line: 565, baseType: !621, size: 64, offset: 896)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1432, file: !1058, line: 566, baseType: !470, size: 64, offset: 960)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1432, file: !1058, line: 568, baseType: !470, size: 64, offset: 1024)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1432, file: !1058, line: 571, baseType: !204, size: 32, offset: 1088)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1432, file: !1058, line: 572, baseType: !1453, size: 64, offset: 1152)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1432, file: !1058, line: 574, baseType: !1455, size: 64, offset: 1216)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1058, line: 49, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1432, file: !1058, line: 576, baseType: !1455, size: 64, offset: 1280)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1432, file: !1058, line: 578, baseType: !209, size: 64, offset: 1344)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1432, file: !1058, line: 588, baseType: !1460, size: 512, align: 512, offset: 1536)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1058, line: 497, size: 512, align: 512, elements: !1461)
!1461 = !{!1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1460, file: !1058, line: 498, baseType: !470, size: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1460, file: !1058, line: 499, baseType: !470, size: 64, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1460, file: !1058, line: 500, baseType: !470, size: 64, offset: 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1460, file: !1058, line: 501, baseType: !466, size: 32, offset: 192)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1460, file: !1058, line: 502, baseType: !466, size: 32, offset: 224)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1460, file: !1058, line: 503, baseType: !209, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1460, file: !1058, line: 504, baseType: !209, size: 64, offset: 320)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1460, file: !1058, line: 505, baseType: !209, size: 64, offset: 384)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1460, file: !1058, line: 506, baseType: !1471, size: 64, align: 64, offset: 448)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1058, line: 445, size: 64, align: 64, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1471, file: !1058, line: 446, baseType: !43, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1471, file: !1058, line: 447, baseType: !43, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1383, file: !1058, line: 798, baseType: !1476, size: 384, offset: 3072)
!1476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1058, line: 592, size: 384, elements: !1477)
!1477 = !{!1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1476, file: !1058, line: 593, baseType: !251, size: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1476, file: !1058, line: 594, baseType: !209, size: 64, offset: 128)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1476, file: !1058, line: 595, baseType: !209, size: 64, offset: 192)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1476, file: !1058, line: 596, baseType: !43, size: 32, offset: 256)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1476, file: !1058, line: 597, baseType: !202, size: 16, offset: 288)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1476, file: !1058, line: 598, baseType: !202, size: 16, offset: 304)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1476, file: !1058, line: 600, baseType: !1485, size: 64, offset: 320)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1383, file: !1058, line: 799, baseType: !1487, size: 1792, offset: 3456)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1058, line: 610, size: 1792, elements: !1488)
!1488 = !{!1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1578, !1579}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1487, file: !1058, line: 611, baseType: !720, size: 192, align: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1487, file: !1058, line: 618, baseType: !470, size: 64, offset: 192)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1487, file: !1058, line: 619, baseType: !470, size: 64, offset: 256)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1487, file: !1058, line: 620, baseType: !470, size: 64, offset: 320)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1487, file: !1058, line: 621, baseType: !470, size: 64, offset: 384)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1487, file: !1058, line: 622, baseType: !470, size: 64, offset: 448)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1487, file: !1058, line: 629, baseType: !621, size: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1487, file: !1058, line: 630, baseType: !470, size: 64, offset: 576)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1487, file: !1058, line: 631, baseType: !43, size: 32, offset: 640)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1487, file: !1058, line: 653, baseType: !43, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1487, file: !1058, line: 654, baseType: !43, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1487, file: !1058, line: 655, baseType: !43, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1487, file: !1058, line: 656, baseType: !43, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1487, file: !1058, line: 662, baseType: !1503, size: 512, offset: 704)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !66, line: 118, size: 512, elements: !1504)
!1504 = !{!1505, !1513, !1514, !1519, !1574, !1575, !1576, !1577}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1503, file: !66, line: 119, baseType: !1506, size: 256)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1507, line: 9, size: 256, elements: !1508)
!1507 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1508 = !{!1509, !1510}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1506, file: !1507, line: 10, baseType: !720, size: 192, align: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1506, file: !1507, line: 11, baseType: !1511, size: 64, offset: 192)
!1511 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1512, line: 29, baseType: !621)
!1512 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1503, file: !66, line: 120, baseType: !1511, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1503, file: !66, line: 121, baseType: !1515, size: 64, offset: 320)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!65, !1518}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1503, file: !66, line: 122, baseType: !1520, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !66, line: 159, size: 512, align: 512, elements: !1522)
!1522 = !{!1523, !1548, !1549, !1552, !1557, !1558, !1569, !1573}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1521, file: !66, line: 160, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !66, line: 215, size: 4608, align: 512, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1525, file: !66, line: 216, baseType: !624, size: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1525, file: !66, line: 217, baseType: !43, size: 32, offset: 32)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1525, file: !66, line: 218, baseType: !43, size: 32, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1525, file: !66, line: 219, baseType: !43, size: 32, offset: 96)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1525, file: !66, line: 220, baseType: !43, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1525, file: !66, line: 221, baseType: !43, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1525, file: !66, line: 222, baseType: !43, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1525, file: !66, line: 223, baseType: !43, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1525, file: !66, line: 224, baseType: !43, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1525, file: !66, line: 226, baseType: !43, size: 32, offset: 160)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1525, file: !66, line: 227, baseType: !202, size: 16, offset: 192)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1525, file: !66, line: 228, baseType: !202, size: 16, offset: 208)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1525, file: !66, line: 229, baseType: !43, size: 32, offset: 224)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1525, file: !66, line: 235, baseType: !1511, size: 64, offset: 256)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1525, file: !66, line: 236, baseType: !1518, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1525, file: !66, line: 237, baseType: !1511, size: 64, offset: 384)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1525, file: !66, line: 238, baseType: !1518, size: 64, offset: 448)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1525, file: !66, line: 239, baseType: !1545, size: 4096, align: 512, offset: 512)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1521, size: 4096, align: 512, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 8)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1521, file: !66, line: 161, baseType: !43, size: 32, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1521, file: !66, line: 162, baseType: !1550, size: 32, offset: 96)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !219, line: 32, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !240, line: 96, baseType: !204)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1521, file: !66, line: 163, baseType: !1553, size: 32, offset: 128)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !439, line: 274, baseType: !1554)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !439, line: 274, size: 32, elements: !1555)
!1555 = !{!1556}
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1554, file: !439, line: 274, baseType: !443, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1521, file: !66, line: 164, baseType: !1518, size: 64, offset: 192)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1521, file: !66, line: 165, baseType: !1559, size: 128, offset: 256)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1507, line: 14, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1559, file: !1507, line: 15, baseType: !1562, size: 128)
!1562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !721, line: 26, size: 128, elements: !1563)
!1563 = !{!1564, !1568}
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1562, file: !721, line: 27, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !721, line: 12, size: 64, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1565, file: !721, line: 13, baseType: !725, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1562, file: !721, line: 28, baseType: !725, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1521, file: !66, line: 166, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{!1511}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1521, file: !66, line: 167, baseType: !1511, size: 64, offset: 448)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1503, file: !66, line: 123, baseType: !292, size: 8, offset: 448)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1503, file: !66, line: 124, baseType: !292, size: 8, offset: 456)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1503, file: !66, line: 125, baseType: !292, size: 8, offset: 464)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1503, file: !66, line: 126, baseType: !292, size: 8, offset: 472)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1487, file: !1058, line: 671, baseType: !1503, size: 512, offset: 1216)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1487, file: !1058, line: 679, baseType: !1580, size: 64, offset: 1728)
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1383, file: !1058, line: 800, baseType: !1582, size: 64, offset: 5248)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1584)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1058, line: 800, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1383, file: !1058, line: 809, baseType: !1586, size: 64, offset: 5312)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1058, line: 70, flags: DIFlagFwdDecl)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1383, file: !1058, line: 825, baseType: !1589, size: 2048, align: 512, offset: 5632)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1058, line: 509, size: 2048, align: 512, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1589, file: !1058, line: 511, baseType: !470, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1589, file: !1058, line: 512, baseType: !470, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1589, file: !1058, line: 513, baseType: !470, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1589, file: !1058, line: 514, baseType: !470, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1589, file: !1058, line: 515, baseType: !470, size: 64, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1589, file: !1058, line: 516, baseType: !470, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1589, file: !1058, line: 518, baseType: !470, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1589, file: !1058, line: 519, baseType: !470, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1589, file: !1058, line: 520, baseType: !621, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1589, file: !1058, line: 522, baseType: !470, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1589, file: !1058, line: 523, baseType: !470, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1589, file: !1058, line: 524, baseType: !621, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1589, file: !1058, line: 526, baseType: !621, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1589, file: !1058, line: 527, baseType: !470, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1589, file: !1058, line: 529, baseType: !470, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1589, file: !1058, line: 530, baseType: !470, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1589, file: !1058, line: 531, baseType: !470, size: 64, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1589, file: !1058, line: 532, baseType: !470, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1589, file: !1058, line: 533, baseType: !470, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1589, file: !1058, line: 535, baseType: !470, size: 64, offset: 1216)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1589, file: !1058, line: 536, baseType: !470, size: 64, offset: 1280)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1589, file: !1058, line: 537, baseType: !470, size: 64, offset: 1344)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1589, file: !1058, line: 538, baseType: !470, size: 64, offset: 1408)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1589, file: !1058, line: 539, baseType: !470, size: 64, offset: 1472)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1589, file: !1058, line: 540, baseType: !470, size: 64, offset: 1536)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1589, file: !1058, line: 541, baseType: !470, size: 64, offset: 1600)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1589, file: !1058, line: 542, baseType: !470, size: 64, offset: 1664)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1589, file: !1058, line: 543, baseType: !470, size: 64, offset: 1728)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1383, file: !1058, line: 833, baseType: !43, size: 32, offset: 7680)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1383, file: !1058, line: 836, baseType: !43, size: 32, offset: 7712)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1383, file: !1058, line: 837, baseType: !204, size: 32, offset: 7744)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1383, file: !1058, line: 838, baseType: !1623, size: 64, offset: 7808)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1625)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1626, line: 19, baseType: !1627)
!1626 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1626, line: 19, size: 64, elements: !1628)
!1628 = !{!1629}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1627, file: !1626, line: 19, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 64, elements: !25)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1383, file: !1058, line: 839, baseType: !1632, size: 64, offset: 7872)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1383, file: !1058, line: 840, baseType: !1625, size: 64, offset: 7936)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1383, file: !1058, line: 841, baseType: !198, size: 64, offset: 8000)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1383, file: !1058, line: 843, baseType: !202, size: 16, offset: 8064)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1383, file: !1058, line: 845, baseType: !202, size: 16, offset: 8080)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1383, file: !1058, line: 848, baseType: !204, size: 32, offset: 8096)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1383, file: !1058, line: 849, baseType: !1639, size: 32, offset: 8128)
!1639 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1058, line: 718, size: 32, elements: !1640)
!1640 = !{!1641, !1648}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1639, file: !1058, line: 724, baseType: !1642, size: 32)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1639, file: !1058, line: 719, size: 32, elements: !1643)
!1643 = !{!1644, !1645, !1646, !1647}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1642, file: !1058, line: 720, baseType: !292, size: 8)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1642, file: !1058, line: 721, baseType: !292, size: 8, offset: 8)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1642, file: !1058, line: 722, baseType: !292, size: 8, offset: 16)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1642, file: !1058, line: 723, baseType: !292, size: 8, offset: 24)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1639, file: !1058, line: 725, baseType: !466, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1383, file: !1058, line: 850, baseType: !251, size: 128, offset: 8192)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1383, file: !1058, line: 851, baseType: !1651, size: 64, offset: 8320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1058, line: 60, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1383, file: !1058, line: 855, baseType: !209, size: 64, offset: 8384)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1383, file: !1058, line: 856, baseType: !292, size: 8, offset: 8448)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1383, file: !1058, line: 857, baseType: !292, size: 8, offset: 8456)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1383, file: !1058, line: 858, baseType: !204, size: 32, offset: 8480)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1383, file: !1058, line: 859, baseType: !251, size: 128, offset: 8512)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1383, file: !1058, line: 860, baseType: !204, size: 32, offset: 8640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1383, file: !1058, line: 861, baseType: !251, size: 128, offset: 8704)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1383, file: !1058, line: 873, baseType: !1661, size: 256, offset: 8832)
!1661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1058, line: 376, size: 256, elements: !1662)
!1662 = !{!1663, !1664, !1665, !1666}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1661, file: !1058, line: 381, baseType: !209, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1661, file: !1058, line: 384, baseType: !211, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1661, file: !1058, line: 389, baseType: !211, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1661, file: !1058, line: 392, baseType: !211, size: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1383, file: !1058, line: 875, baseType: !251, size: 128, offset: 9088)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1383, file: !1058, line: 877, baseType: !1669, size: 320, offset: 9216)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1670, line: 86, size: 320, elements: !1671)
!1670 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1671 = !{!1672, !1673, !1674}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1669, file: !1670, line: 87, baseType: !204, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1669, file: !1670, line: 88, baseType: !251, size: 128, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1669, file: !1670, line: 89, baseType: !251, size: 128, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1383, file: !1058, line: 878, baseType: !720, size: 192, align: 64, offset: 9536)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1383, file: !1058, line: 881, baseType: !1677, size: 64, offset: 9728)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !79, line: 733, size: 10240, elements: !1679)
!1679 = !{!1680, !2550}
!1680 = !DIDerivedType(tag: DW_TAG_member, scope: !1678, file: !79, line: 734, baseType: !1681, size: 10240)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1678, file: !79, line: 734, size: 10240, elements: !1682)
!1682 = !{!1683, !1687, !1700, !2427, !2428, !2429, !2430, !2431, !2432, !2439, !2440, !2441, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469, !2470, !2471, !2472, !2473, !2474, !2475, !2476, !2480, !2482, !2485, !2530, !2531, !2532, !2535, !2536, !2537, !2540, !2541, !2542, !2548, !2549}
!1683 = !DIDerivedType(tag: DW_TAG_member, scope: !1681, file: !79, line: 739, baseType: !1684, size: 512, align: 512)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1681, file: !79, line: 739, size: 512, align: 512, elements: !1685)
!1685 = !{!1686}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1684, file: !79, line: 747, baseType: !284, size: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1681, file: !79, line: 750, baseType: !1688, size: 128, offset: 512)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1689, line: 218, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1690 = !{!1691, !1698, !1699}
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1688, file: !1689, line: 219, baseType: !1692, size: 32)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1688, file: !1689, line: 219, size: 32, elements: !1693)
!1693 = !{!1694, !1695}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1692, file: !1689, line: 220, baseType: !264, size: 32)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1692, file: !1689, line: 221, baseType: !1696)
!1696 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1689, line: 197, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1689, line: 197, elements: !895)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1688, file: !1689, line: 223, baseType: !43, size: 32, offset: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1688, file: !1689, line: 224, baseType: !198, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1681, file: !79, line: 752, baseType: !1701, size: 64, offset: 640)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!209, !1704, !209, !209, !209, !209}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !55, line: 994, size: 1856, align: 64, elements: !1706)
!1706 = !{!1707, !1713, !1714, !1716, !1717, !1718, !1719, !1720, !1770, !1957, !1966, !1967, !1968, !2417, !2418, !2419, !2420, !2422, !2423, !2426}
!1707 = !DIDerivedType(tag: DW_TAG_member, scope: !1705, file: !55, line: 995, baseType: !1708, size: 128)
!1708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1705, file: !55, line: 995, size: 128, elements: !1709)
!1709 = !{!1710, !1711, !1712}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !1708, file: !55, line: 996, baseType: !1409, size: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !1708, file: !55, line: 997, baseType: !826, size: 128, align: 64)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !1708, file: !55, line: 998, baseType: !43, size: 32)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !1705, file: !55, line: 1005, baseType: !264, size: 32, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !1705, file: !55, line: 1006, baseType: !1715, size: 32, offset: 160)
!1715 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !219, line: 156, baseType: !43)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !1705, file: !55, line: 1007, baseType: !615, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !1705, file: !55, line: 1008, baseType: !611, size: 256, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !1705, file: !55, line: 1009, baseType: !557, size: 64, offset: 512)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !1705, file: !55, line: 1010, baseType: !43, size: 32, offset: 576)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !1705, file: !55, line: 1011, baseType: !1721, size: 256, offset: 640)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !55, line: 948, size: 256, elements: !1722)
!1722 = !{!1723, !1744, !1766, !1767, !1768, !1769}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1721, file: !55, line: 949, baseType: !1724, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !1725, line: 34, baseType: !1726)
!1725 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1725, line: 25, size: 64, elements: !1727)
!1727 = !{!1728}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !1726, file: !1725, line: 26, baseType: !1729, size: 64)
!1729 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !1730, line: 27, baseType: !1731)
!1730 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !1730, line: 13, size: 64, elements: !1732)
!1732 = !{!1733, !1743}
!1733 = !DIDerivedType(tag: DW_TAG_member, scope: !1731, file: !1730, line: 14, baseType: !1734, size: 32)
!1734 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1731, file: !1730, line: 14, size: 32, elements: !1735)
!1735 = !{!1736, !1737}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !1734, file: !1730, line: 15, baseType: !284, size: 32)
!1737 = !DIDerivedType(tag: DW_TAG_member, scope: !1734, file: !1730, line: 16, baseType: !1738, size: 32)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1734, file: !1730, line: 16, size: 32, elements: !1739)
!1739 = !{!1740, !1741}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !1738, file: !1730, line: 18, baseType: !292, size: 8)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !1738, file: !1730, line: 19, baseType: !1742, size: 24, offset: 8)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 24, elements: !5)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !1731, file: !1730, line: 26, baseType: !276, size: 32, offset: 32)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1721, file: !55, line: 950, baseType: !1745, size: 64, offset: 64)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !71, line: 59, size: 768, elements: !1747)
!1747 = !{!1748, !1749, !1750, !1751, !1753, !1754, !1755, !1756}
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1746, file: !71, line: 61, baseType: !1396, size: 32)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1746, file: !71, line: 62, baseType: !43, size: 32, offset: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1746, file: !71, line: 63, baseType: !264, size: 32, offset: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1746, file: !71, line: 65, baseType: !1752, size: 256, offset: 128)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 256, elements: !836)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !1746, file: !71, line: 66, baseType: !984, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !1746, file: !71, line: 68, baseType: !1369, size: 192, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1746, file: !71, line: 69, baseType: !826, size: 128, align: 64, offset: 640)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !1746, file: !71, line: 70, baseType: !1757, offset: 768)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1758, elements: !1764)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !71, line: 54, size: 128, elements: !1759)
!1759 = !{!1760, !1761}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !1758, file: !71, line: 55, baseType: !204, size: 32)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1758, file: !71, line: 56, baseType: !1762, size: 64, offset: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !71, line: 56, flags: DIFlagFwdDecl)
!1764 = !{!1765}
!1765 = !DISubrange(count: -1)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !1721, file: !55, line: 951, baseType: !70, size: 32, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1721, file: !55, line: 952, baseType: !403, size: 32, offset: 160)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1721, file: !55, line: 952, baseType: !403, size: 32, offset: 192)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !1721, file: !55, line: 953, baseType: !204, size: 32, offset: 224)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !1705, file: !55, line: 1012, baseType: !1771, size: 64, offset: 896)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1773)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1774, line: 110, size: 1472, elements: !1775)
!1774 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1792, !1793, !1794, !1795, !1796, !1797, !1902, !1903, !1904, !1905, !1906, !1937, !1940, !1944, !1952}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1773, file: !1774, line: 111, baseType: !615, size: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1773, file: !1774, line: 112, baseType: !403, size: 32, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1773, file: !1774, line: 113, baseType: !412, size: 32, offset: 96)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !1773, file: !1774, line: 114, baseType: !403, size: 32, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !1773, file: !1774, line: 115, baseType: !412, size: 32, offset: 160)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !1773, file: !1774, line: 116, baseType: !403, size: 32, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !1773, file: !1774, line: 117, baseType: !412, size: 32, offset: 224)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !1773, file: !1774, line: 118, baseType: !403, size: 32, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !1773, file: !1774, line: 119, baseType: !412, size: 32, offset: 288)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !1773, file: !1774, line: 120, baseType: !43, size: 32, offset: 320)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !1773, file: !1774, line: 121, baseType: !1787, size: 64, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !1788, line: 24, baseType: !1789)
!1788 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1788, line: 24, size: 64, elements: !1790)
!1790 = !{!1791}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1789, file: !1788, line: 24, baseType: !470, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !1773, file: !1774, line: 122, baseType: !1787, size: 64, offset: 448)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !1773, file: !1774, line: 123, baseType: !1787, size: 64, offset: 512)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !1773, file: !1774, line: 124, baseType: !1787, size: 64, offset: 576)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !1773, file: !1774, line: 125, baseType: !1787, size: 64, offset: 640)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !1773, file: !1774, line: 127, baseType: !197, size: 8, offset: 704)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !1773, file: !1774, line: 129, baseType: !1798, size: 64, offset: 768)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !1800, line: 195, size: 1728, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!1801 = !{!1802, !1803, !1806, !1811, !1812, !1815, !1816, !1821, !1822, !1823, !1824, !1827, !1828, !1829, !1830, !1831, !1866, !1887}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1799, file: !1800, line: 196, baseType: !1396, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1799, file: !1800, line: 197, baseType: !1804, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !1800, line: 28, baseType: !1805)
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !219, line: 104, baseType: !607)
!1806 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 198, baseType: !1807, size: 192, offset: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 198, size: 192, elements: !1808)
!1808 = !{!1809, !1810}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !1807, file: !1800, line: 199, baseType: !251, size: 128)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !1807, file: !1800, line: 200, baseType: !720, size: 192, align: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !1799, file: !1800, line: 205, baseType: !1276, size: 320, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1799, file: !1800, line: 206, baseType: !1813, size: 64, offset: 576)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !1800, line: 206, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1799, file: !1800, line: 207, baseType: !198, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 208, baseType: !1817, size: 64, offset: 704)
!1817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 208, size: 64, elements: !1818)
!1818 = !{!1819, !1820}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !1817, file: !1800, line: 209, baseType: !1116, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !1817, file: !1800, line: 210, baseType: !1116, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !1799, file: !1800, line: 212, baseType: !1116, size: 64, offset: 768)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1799, file: !1800, line: 213, baseType: !403, size: 32, offset: 832)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1799, file: !1800, line: 214, baseType: !412, size: 32, offset: 864)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1799, file: !1800, line: 215, baseType: !1825, size: 32, offset: 896)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !1800, line: 31, baseType: !1826)
!1826 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !219, line: 110, baseType: !466)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !1799, file: !1800, line: 216, baseType: !202, size: 16, offset: 928)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !1799, file: !1800, line: 217, baseType: !202, size: 16, offset: 944)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1799, file: !1800, line: 221, baseType: !200, size: 16, offset: 960)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 228, baseType: !209, size: 64, offset: 1024)
!1831 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 245, baseType: !1832, size: 320, offset: 1088)
!1832 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 245, size: 320, elements: !1833)
!1833 = !{!1834, !1858}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !1832, file: !1800, line: 246, baseType: !1835, size: 320)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !1800, line: 114, size: 320, elements: !1836)
!1836 = !{!1837, !1838, !1847, !1850, !1857}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1835, file: !1800, line: 116, baseType: !209, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, scope: !1835, file: !1800, line: 117, baseType: !1839, size: 64, offset: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1835, file: !1800, line: 117, size: 64, elements: !1840)
!1840 = !{!1841, !1846}
!1841 = !DIDerivedType(tag: DW_TAG_member, scope: !1839, file: !1800, line: 118, baseType: !1842, size: 64)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1839, file: !1800, line: 118, size: 64, elements: !1843)
!1843 = !{!1844, !1845}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !1842, file: !1800, line: 120, baseType: !301, size: 16)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1842, file: !1800, line: 121, baseType: !34, size: 48, offset: 16)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1839, file: !1800, line: 127, baseType: !209, size: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1800, line: 129, baseType: !1848, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !1800, line: 102, flags: DIFlagFwdDecl)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1835, file: !1800, line: 130, baseType: !1851, size: 64, offset: 192)
!1851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1852, size: 64)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !1800, line: 108, size: 192, elements: !1853)
!1853 = !{!1854, !1855, !1856}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1852, file: !1800, line: 109, baseType: !826, size: 128, align: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1852, file: !1800, line: 110, baseType: !1396, size: 32, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !1852, file: !1800, line: 111, baseType: !218, size: 8, offset: 160)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1835, file: !1800, line: 131, baseType: !215, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, scope: !1832, file: !1800, line: 247, baseType: !1859, size: 320)
!1859 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1832, file: !1800, line: 247, size: 320, elements: !1860)
!1860 = !{!1861, !1862, !1863, !1864, !1865}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1859, file: !1800, line: 248, baseType: !209, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !1859, file: !1800, line: 249, baseType: !209, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1859, file: !1800, line: 250, baseType: !1848, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !1859, file: !1800, line: 251, baseType: !1851, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !1859, file: !1800, line: 252, baseType: !213, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1799, file: !1800, line: 260, baseType: !1867, size: 256, offset: 1408)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1799, file: !1800, line: 260, size: 256, elements: !1868)
!1868 = !{!1869, !1875}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !1867, file: !1800, line: 261, baseType: !1870, size: 256)
!1870 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !1800, line: 134, size: 256, elements: !1871)
!1871 = !{!1872, !1873}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !1870, file: !1800, line: 135, baseType: !198, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1870, file: !1800, line: 136, baseType: !1874, size: 256)
!1874 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 256, elements: !836)
!1875 = !DIDerivedType(tag: DW_TAG_member, scope: !1867, file: !1800, line: 262, baseType: !1876, size: 256)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1867, file: !1800, line: 262, size: 256, elements: !1877)
!1877 = !{!1878, !1879}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !1876, file: !1800, line: 264, baseType: !251, size: 128)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !1876, file: !1800, line: 265, baseType: !1880, size: 128, offset: 128)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !1881, line: 22, size: 128, elements: !1882)
!1881 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!1882 = !{!1883, !1886}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1880, file: !1881, line: 23, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !1881, line: 23, flags: DIFlagFwdDecl)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !1880, file: !1881, line: 24, baseType: !209, size: 64, offset: 64)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !1799, file: !1800, line: 280, baseType: !1888, size: 64, offset: 1664)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !1800, line: 176, size: 192, elements: !1890)
!1890 = !{!1891, !1900, !1901}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !1889, file: !1800, line: 177, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !1800, line: 171, baseType: !1893)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DISubroutineType(types: !1895)
!1895 = !{!204, !1798, !1896, !1898, !1798}
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1870)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1889, file: !1800, line: 178, baseType: !1798, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !1889, file: !1800, line: 179, baseType: !1848, size: 64, offset: 128)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !1773, file: !1774, line: 130, baseType: !1798, size: 64, offset: 832)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !1773, file: !1774, line: 131, baseType: !1798, size: 64, offset: 896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !1773, file: !1774, line: 132, baseType: !1798, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1773, file: !1774, line: 135, baseType: !198, size: 64, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !1773, file: !1774, line: 137, baseType: !1907, size: 64, offset: 1088)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !1909, line: 14, size: 1088, elements: !1910)
!1909 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!1910 = !{!1911, !1912, !1921, !1922, !1923, !1924, !1925, !1926}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1908, file: !1909, line: 15, baseType: !1396, size: 32)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !1908, file: !1909, line: 17, baseType: !1913, size: 320, offset: 64)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !1914, line: 22, size: 320, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!1915 = !{!1916, !1917, !1918, !1919}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1913, file: !1914, line: 23, baseType: !624, size: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1913, file: !1914, line: 24, baseType: !621, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1913, file: !1914, line: 26, baseType: !251, size: 128, offset: 128)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1913, file: !1914, line: 28, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !1908, file: !1909, line: 19, baseType: !209, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !1908, file: !1909, line: 20, baseType: !615, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !1908, file: !1909, line: 23, baseType: !852, size: 128, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1908, file: !1909, line: 24, baseType: !403, size: 32, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1908, file: !1909, line: 29, baseType: !615, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !1908, file: !1909, line: 36, baseType: !1927, size: 320, offset: 768)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !1928, line: 15, size: 320, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!1929 = !{!1930, !1931, !1932, !1933, !1934, !1935, !1936}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1927, file: !1928, line: 16, baseType: !624, size: 32)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !1927, file: !1928, line: 18, baseType: !204, size: 32, offset: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !1927, file: !1928, line: 19, baseType: !204, size: 32, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !1927, file: !1928, line: 20, baseType: !204, size: 32, offset: 96)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !1927, file: !1928, line: 21, baseType: !204, size: 32, offset: 128)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !1927, file: !1928, line: 22, baseType: !209, size: 64, offset: 192)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1927, file: !1928, line: 23, baseType: !209, size: 64, offset: 256)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1773, file: !1774, line: 138, baseType: !1938, size: 64, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !404, line: 18, flags: DIFlagFwdDecl)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !1773, file: !1774, line: 139, baseType: !1941, size: 64, offset: 1216)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !1943, line: 16, flags: DIFlagFwdDecl)
!1943 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !1773, file: !1774, line: 140, baseType: !1945, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !1774, line: 25, size: 64, elements: !1947)
!1947 = !{!1948, !1949, !1950}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1946, file: !1774, line: 26, baseType: !284, size: 32)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !1946, file: !1774, line: 27, baseType: !204, size: 32, offset: 32)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1946, file: !1774, line: 28, baseType: !1951, offset: 64)
!1951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, elements: !1764)
!1952 = !DIDerivedType(tag: DW_TAG_member, scope: !1773, file: !1774, line: 142, baseType: !1953, size: 128, offset: 1344)
!1953 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1773, file: !1774, line: 142, size: 128, elements: !1954)
!1954 = !{!1955, !1956}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !1953, file: !1774, line: 143, baseType: !204, size: 32)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1953, file: !1774, line: 144, baseType: !826, size: 128, align: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !1705, file: !55, line: 1013, baseType: !1958, size: 256, offset: 960)
!1958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !55, line: 970, size: 256, elements: !1959)
!1959 = !{!1960, !1961, !1962, !1963, !1964, !1965}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1958, file: !55, line: 971, baseType: !209, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1958, file: !55, line: 972, baseType: !43, size: 32, offset: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !1958, file: !55, line: 973, baseType: !43, size: 32, offset: 96)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !1958, file: !55, line: 974, baseType: !43, size: 32, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !1958, file: !55, line: 975, baseType: !43, size: 32, offset: 160)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !1958, file: !55, line: 976, baseType: !557, size: 64, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !1705, file: !55, line: 1014, baseType: !1188, size: 128, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !1705, file: !55, line: 1015, baseType: !397, size: 64, offset: 1344)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !1705, file: !55, line: 1016, baseType: !1969, size: 64, offset: 1408)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !55, line: 1914, size: 2112, elements: !1972)
!1972 = !{!1973, !1974, !1978, !1983, !1987, !2015, !2016, !2022, !2035, !2043, !2047, !2048, !2339, !2340, !2344, !2349, !2350, !2354, !2358, !2364, !2365, !2369, !2370, !2376, !2380, !2384, !2390, !2394, !2398, !2402, !2406, !2407, !2413}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1971, file: !55, line: 1915, baseType: !586, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !1971, file: !55, line: 1916, baseType: !1975, size: 64, offset: 64)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!557, !1704, !557, !204}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1971, file: !55, line: 1917, baseType: !1979, size: 64, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DISubroutineType(types: !1981)
!1981 = !{!238, !1704, !213, !365, !1982}
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1971, file: !55, line: 1918, baseType: !1984, size: 64, offset: 192)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!238, !1704, !215, !365, !1982}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !1971, file: !55, line: 1919, baseType: !1988, size: 64, offset: 256)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!238, !1991, !2013}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !55, line: 373, size: 384, elements: !1993)
!1993 = !{!1994, !1995, !1996, !2000, !2001, !2002, !2003}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1992, file: !55, line: 374, baseType: !1704, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1992, file: !55, line: 375, baseType: !557, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1992, file: !55, line: 376, baseType: !1997, size: 64, offset: 128)
!1997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1998, size: 64)
!1998 = !DISubroutineType(types: !1999)
!1999 = !{null, !1991, !207}
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1992, file: !55, line: 377, baseType: !198, size: 64, offset: 192)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1992, file: !55, line: 378, baseType: !204, size: 32, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1992, file: !55, line: 379, baseType: !301, size: 16, offset: 288)
!2003 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !55, line: 380, baseType: !2004, size: 64, offset: 320)
!2004 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1992, file: !55, line: 380, size: 64, elements: !2005)
!2005 = !{!2006, !2009}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !2004, file: !55, line: 386, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !55, line: 386, flags: DIFlagFwdDecl)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !2004, file: !55, line: 395, baseType: !2010, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!238, !198}
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !55, line: 69, flags: DIFlagFwdDecl)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !1971, file: !55, line: 1920, baseType: !1988, size: 64, offset: 320)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !1971, file: !55, line: 1921, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!204, !1991, !2020, !43}
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !55, line: 53, flags: DIFlagFwdDecl)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !1971, file: !55, line: 1923, baseType: !2023, size: 64, offset: 448)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!204, !1704, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !55, line: 1858, size: 128, elements: !2028)
!2028 = !{!2029, !2034}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2027, file: !55, line: 1859, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !55, line: 1855, baseType: !2031)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!218, !2026, !215, !204, !557, !470, !43}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2027, file: !55, line: 1860, baseType: !557, size: 64, offset: 64)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1971, file: !55, line: 1924, baseType: !2036, size: 64, offset: 512)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!2039, !1704, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !2040, line: 59, baseType: !43)
!2040 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !572, line: 31, flags: DIFlagFwdDecl)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !1971, file: !55, line: 1925, baseType: !2044, size: 64, offset: 576)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!207, !1704, !43, !209}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !1971, file: !55, line: 1926, baseType: !2044, size: 64, offset: 640)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1971, file: !55, line: 1927, baseType: !2049, size: 64, offset: 704)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{!204, !1704, !2052}
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !79, line: 625, size: 1344, elements: !2054)
!2054 = !{!2055, !2064, !2065, !2073, !2080, !2081, !2086, !2087, !2092, !2093, !2096, !2332, !2333, !2334, !2335, !2336, !2337}
!2055 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !79, line: 628, baseType: !2056, size: 128)
!2056 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !79, line: 628, size: 128, elements: !2057)
!2057 = !{!2058, !2063}
!2058 = !DIDerivedType(tag: DW_TAG_member, scope: !2056, file: !79, line: 629, baseType: !2059, size: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2056, file: !79, line: 629, size: 128, elements: !2060)
!2060 = !{!2061, !2062}
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !2059, file: !79, line: 631, baseType: !209, size: 64)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !2059, file: !79, line: 632, baseType: !209, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !2056, file: !79, line: 635, baseType: !826, size: 128, align: 64)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !2053, file: !79, line: 639, baseType: !1677, size: 64, offset: 128)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !2053, file: !79, line: 640, baseType: !2066, size: 64, offset: 192)
!2066 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !2067, line: 297, baseType: !2068)
!2067 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!2068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !2067, line: 297, size: 64, elements: !2069)
!2069 = !{!2070}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !2068, file: !2067, line: 297, baseType: !2071, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !2072, line: 19, baseType: !209)
!2072 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!2073 = !DIDerivedType(tag: DW_TAG_member, scope: !2053, file: !79, line: 646, baseType: !2074, size: 64, offset: 256)
!2074 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2053, file: !79, line: 646, size: 64, elements: !2075)
!2075 = !{!2076, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !2074, file: !79, line: 647, baseType: !2077, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !79, line: 542, baseType: !209)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !2074, file: !79, line: 648, baseType: !2078, size: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !2053, file: !79, line: 666, baseType: !204, size: 32, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !2053, file: !79, line: 667, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !79, line: 579, size: 320, elements: !2084)
!2084 = !{!2085}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2083, file: !79, line: 580, baseType: !1276, size: 320)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !2053, file: !79, line: 670, baseType: !218, size: 8, offset: 448)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !2053, file: !79, line: 681, baseType: !2088, size: 256, offset: 512)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2053, file: !79, line: 678, size: 256, elements: !2089)
!2089 = !{!2090, !2091}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !2088, file: !79, line: 679, baseType: !720, size: 192, align: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !2088, file: !79, line: 680, baseType: !209, size: 64, offset: 192)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !2053, file: !79, line: 689, baseType: !251, size: 128, offset: 768)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !2053, file: !79, line: 691, baseType: !2094, size: 64, offset: 896)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !79, line: 691, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !2053, file: !79, line: 694, baseType: !2097, size: 64, offset: 960)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2099)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !2100, line: 563, size: 1024, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!2101 = !{!2102, !2106, !2107, !2111, !2115, !2119, !2296, !2300, !2304, !2308, !2309, !2310, !2314, !2318, !2324, !2328}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2099, file: !2100, line: 564, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{null, !2052}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !2099, file: !2100, line: 569, baseType: !2103, size: 64, offset: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !2099, file: !2100, line: 571, baseType: !2108, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!204, !2052, !209}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !2099, file: !2100, line: 572, baseType: !2112, size: 64, offset: 192)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!204, !2052}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !2099, file: !2100, line: 578, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!204, !2052, !209, !209, !209}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !2099, file: !2100, line: 580, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2123, !2124}
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !79, line: 1184, baseType: !43)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !2100, line: 512, size: 896, elements: !2126)
!2126 = !{!2127, !2135, !2136, !2143, !2150, !2160, !2289, !2290, !2292, !2294}
!2127 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2100, line: 513, baseType: !2128, size: 320)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2125, file: !2100, line: 513, size: 320, elements: !2129)
!2129 = !{!2130, !2131, !2132, !2133, !2134}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !2128, file: !2100, line: 514, baseType: !2052, size: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2128, file: !2100, line: 515, baseType: !1128, size: 32, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !2128, file: !2100, line: 516, baseType: !209, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2128, file: !2100, line: 517, baseType: !209, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !2128, file: !2100, line: 518, baseType: !209, size: 64, offset: 256)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2125, file: !2100, line: 520, baseType: !78, size: 32, offset: 320)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2125, file: !2100, line: 522, baseType: !2137, size: 64, offset: 384)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !2072, line: 22, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2072, line: 22, size: 64, elements: !2140)
!2140 = !{!2141}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !2139, file: !2072, line: 22, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !2072, line: 15, baseType: !209)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2125, file: !2100, line: 524, baseType: !2144, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !2067, line: 372, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2067, line: 372, size: 64, elements: !2147)
!2147 = !{!2148}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !2146, file: !2067, line: 372, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !2072, line: 16, baseType: !209)
!2150 = !DIDerivedType(tag: DW_TAG_member, scope: !2125, file: !2100, line: 527, baseType: !2151, size: 64, offset: 512)
!2151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2125, file: !2100, line: 527, size: 64, elements: !2152)
!2152 = !{!2153, !2159}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !2151, file: !2100, line: 528, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !2072, line: 21, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2072, line: 21, size: 64, elements: !2156)
!2156 = !{!2157}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2155, file: !2072, line: 21, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !2072, line: 14, baseType: !209)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !2151, file: !2100, line: 529, baseType: !2138, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !2125, file: !2100, line: 534, baseType: !2161, size: 64, offset: 576)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !79, line: 74, size: 512, align: 128, elements: !2163)
!2163 = !{!2164, !2165, !2283, !2288}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !79, line: 75, baseType: !209, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !79, line: 83, baseType: !2166, size: 320, offset: 64)
!2166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !79, line: 83, size: 320, elements: !2167)
!2167 = !{!2168, !2189, !2203, !2207, !2282}
!2168 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !79, line: 84, baseType: !2169, size: 320)
!2169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !79, line: 84, size: 320, elements: !2170)
!2170 = !{!2171, !2182, !2183, !2188}
!2171 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !79, line: 90, baseType: !2172, size: 128)
!2172 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !79, line: 90, size: 128, elements: !2173)
!2173 = !{!2174, !2175, !2180, !2181}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2172, file: !79, line: 91, baseType: !251, size: 128)
!2175 = !DIDerivedType(tag: DW_TAG_member, scope: !2172, file: !79, line: 94, baseType: !2176, size: 128)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2172, file: !79, line: 94, size: 128, elements: !2177)
!2177 = !{!2178, !2179}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2176, file: !79, line: 96, baseType: !198, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2176, file: !79, line: 98, baseType: !43, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2172, file: !79, line: 102, baseType: !251, size: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2172, file: !79, line: 103, baseType: !251, size: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2169, file: !79, line: 106, baseType: !393, size: 64, offset: 128)
!2183 = !DIDerivedType(tag: DW_TAG_member, scope: !2169, file: !79, line: 107, baseType: !2184, size: 64, offset: 192)
!2184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2169, file: !79, line: 107, size: 64, elements: !2185)
!2185 = !{!2186, !2187}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2184, file: !79, line: 108, baseType: !209, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2184, file: !79, line: 109, baseType: !209, size: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2169, file: !79, line: 117, baseType: !209, size: 64, offset: 256)
!2189 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !79, line: 119, baseType: !2190, size: 320)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !79, line: 119, size: 320, elements: !2191)
!2191 = !{!2192, !2193, !2196, !2197, !2198}
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2190, file: !79, line: 124, baseType: !209, size: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2190, file: !79, line: 125, baseType: !2194, size: 64, offset: 64)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !79, line: 125, flags: DIFlagFwdDecl)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2190, file: !79, line: 126, baseType: !209, size: 64, offset: 128)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2190, file: !79, line: 127, baseType: !209, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_member, scope: !2190, file: !79, line: 128, baseType: !2199, size: 64, offset: 256)
!2199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2190, file: !79, line: 128, size: 64, elements: !2200)
!2200 = !{!2201, !2202}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2199, file: !79, line: 133, baseType: !209, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2199, file: !79, line: 138, baseType: !615, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !79, line: 141, baseType: !2204, size: 64)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !79, line: 141, size: 64, elements: !2205)
!2205 = !{!2206}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2204, file: !79, line: 142, baseType: !209, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, scope: !2166, file: !79, line: 144, baseType: !2208, size: 128)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2166, file: !79, line: 144, size: 128, elements: !2209)
!2209 = !{!2210, !2281}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2208, file: !79, line: 146, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !95, line: 126, size: 1216, elements: !2213)
!2213 = !{!2214, !2224, !2245, !2246, !2247, !2248, !2249, !2263, !2264, !2265}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !2212, file: !95, line: 127, baseType: !2215, size: 384)
!2215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !95, line: 21, size: 384, elements: !2216)
!2216 = !{!2217, !2218, !2220, !2221, !2222, !2223}
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !2215, file: !95, line: 22, baseType: !209, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !2215, file: !95, line: 23, baseType: !2219, size: 64, offset: 64)
!2219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !2215, file: !95, line: 24, baseType: !2219, size: 64, offset: 128)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2215, file: !95, line: 25, baseType: !209, size: 64, offset: 192)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2215, file: !95, line: 26, baseType: !209, size: 64, offset: 256)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2215, file: !95, line: 27, baseType: !209, size: 64, offset: 320)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2212, file: !95, line: 128, baseType: !2225, size: 128, offset: 384)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !2226, line: 105, size: 128, elements: !2227)
!2226 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !2225, file: !2226, line: 110, baseType: !209, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2225, file: !2226, line: 118, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !2226, line: 95, size: 448, elements: !2232)
!2232 = !{!2233, !2234, !2240, !2241, !2242, !2243, !2244}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2231, file: !2226, line: 96, baseType: !615, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2231, file: !2226, line: 97, baseType: !2235, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !2226, line: 60, baseType: !2237)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{null, !2239}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !2231, file: !2226, line: 98, baseType: !2235, size: 64, offset: 128)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !2231, file: !2226, line: 99, baseType: !218, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !2231, file: !2226, line: 100, baseType: !218, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2231, file: !2226, line: 101, baseType: !826, size: 128, align: 64, offset: 256)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !2231, file: !2226, line: 102, baseType: !2239, size: 64, offset: 384)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2212, file: !95, line: 129, baseType: !919, size: 256, offset: 512)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2212, file: !95, line: 130, baseType: !94, size: 32, offset: 768)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2212, file: !95, line: 131, baseType: !43, size: 32, offset: 800)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !2212, file: !95, line: 132, baseType: !209, size: 64, offset: 832)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2212, file: !95, line: 133, baseType: !2250, size: 64, offset: 896)
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2252)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !95, line: 77, size: 192, elements: !2253)
!2253 = !{!2254, !2258, !2259}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !2252, file: !95, line: 83, baseType: !2255, size: 64)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !2161}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !2252, file: !95, line: 89, baseType: !2120, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !2252, file: !95, line: 100, baseType: !2260, size: 64, offset: 128)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!204, !2211, !209, !209, !204}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2212, file: !95, line: 134, baseType: !198, size: 64, offset: 960)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !2212, file: !95, line: 135, baseType: !204, size: 32, offset: 1024)
!2265 = !DIDerivedType(tag: DW_TAG_member, scope: !2212, file: !95, line: 136, baseType: !2266, size: 128, offset: 1088)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2212, file: !95, line: 136, size: 128, elements: !2267)
!2267 = !{!2268, !2274}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !2266, file: !95, line: 137, baseType: !2269, size: 128)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !2270, line: 6, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!2271 = !{!2272, !2273}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2269, file: !2270, line: 7, baseType: !470, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2269, file: !2270, line: 8, baseType: !470, size: 64, offset: 64)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !95, line: 138, baseType: !2275)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2266, file: !95, line: 138, elements: !2276)
!2276 = !{!2277, !2279}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !2275, file: !95, line: 138, baseType: !2278)
!2278 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !95, line: 138, elements: !895)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !2275, file: !95, line: 138, baseType: !2280)
!2280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2269, elements: !1764)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2208, file: !79, line: 147, baseType: !198, size: 64, offset: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2166, file: !79, line: 161, baseType: !826, size: 128, align: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !2162, file: !79, line: 164, baseType: !2284, size: 32, offset: 384)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2162, file: !79, line: 164, size: 32, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2284, file: !79, line: 169, baseType: !284, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2284, file: !79, line: 177, baseType: !43, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2162, file: !79, line: 181, baseType: !284, size: 32, offset: 416)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2125, file: !2100, line: 535, baseType: !2161, size: 64, offset: 640)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !2125, file: !2100, line: 541, baseType: !2291, size: 64, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !2125, file: !2100, line: 545, baseType: !2293, size: 64, offset: 768)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !2125, file: !2100, line: 549, baseType: !2295, size: 64, offset: 832)
!2295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !2067, line: 520, baseType: !2161)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !2099, file: !2100, line: 581, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!2123, !2124, !43}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !2099, file: !2100, line: 582, baseType: !2301, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!2123, !2124, !209, !209}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2099, file: !2100, line: 584, baseType: !2305, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!209, !2052}
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !2099, file: !2100, line: 588, baseType: !2120, size: 64, offset: 576)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !2099, file: !2100, line: 591, baseType: !2120, size: 64, offset: 640)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !2099, file: !2100, line: 597, baseType: !2311, size: 64, offset: 704)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!204, !2052, !209, !198, !204, !204}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2099, file: !2100, line: 603, baseType: !2315, size: 64, offset: 768)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!215, !2052}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !2099, file: !2100, line: 613, baseType: !2319, size: 64, offset: 832)
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!204, !2052, !2322}
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !79, line: 717, flags: DIFlagFwdDecl)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !2099, file: !2100, line: 625, baseType: !2325, size: 64, offset: 896)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DISubroutineType(types: !2327)
!2327 = !{!2322, !2052, !209}
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !2099, file: !2100, line: 633, baseType: !2329, size: 64, offset: 960)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DISubroutineType(types: !2331)
!2331 = !{!2161, !2052, !209}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !2053, file: !79, line: 697, baseType: !209, size: 64, offset: 1024)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !2053, file: !79, line: 699, baseType: !1704, size: 64, offset: 1088)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !2053, file: !79, line: 700, baseType: !198, size: 64, offset: 1152)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !2053, file: !79, line: 711, baseType: !615, size: 64, offset: 1216)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !2053, file: !79, line: 717, baseType: !2322, size: 64, offset: 1280)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !2053, file: !79, line: 722, baseType: !2338, offset: 1344)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !79, line: 570, elements: !895)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !1971, file: !55, line: 1928, baseType: !209, size: 64, offset: 768)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1971, file: !55, line: 1929, baseType: !2341, size: 64, offset: 832)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!204, !397, !1704}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !1971, file: !55, line: 1930, baseType: !2345, size: 64, offset: 896)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!204, !1704, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !55, line: 1061, baseType: !198)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1971, file: !55, line: 1931, baseType: !2341, size: 64, offset: 960)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !1971, file: !55, line: 1932, baseType: !2351, size: 64, offset: 1024)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!204, !1704, !557, !557, !204}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !1971, file: !55, line: 1933, baseType: !2355, size: 64, offset: 1088)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!204, !204, !1704, !204}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1971, file: !55, line: 1934, baseType: !2359, size: 64, offset: 1152)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!204, !1704, !204, !2362}
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !55, line: 1063, flags: DIFlagFwdDecl)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1971, file: !55, line: 1935, baseType: !1701, size: 64, offset: 1216)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !1971, file: !55, line: 1936, baseType: !2366, size: 64, offset: 1280)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!204, !204}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !1971, file: !55, line: 1937, baseType: !2359, size: 64, offset: 1344)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !1971, file: !55, line: 1938, baseType: !2371, size: 64, offset: 1408)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DISubroutineType(types: !2373)
!2373 = !{!238, !2374, !1704, !1982, !365, !43}
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1058, line: 59, flags: DIFlagFwdDecl)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !1971, file: !55, line: 1939, baseType: !2377, size: 64, offset: 1472)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!238, !1704, !1982, !2374, !365, !43}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !1971, file: !55, line: 1940, baseType: !2381, size: 64, offset: 1536)
!2381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2382, size: 64)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{null, !1704}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !1971, file: !55, line: 1941, baseType: !2385, size: 64, offset: 1600)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!204, !1704, !204, !2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !1971, file: !55, line: 1942, baseType: !2391, size: 64, offset: 1664)
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!207, !1704, !204, !557, !557}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !1971, file: !55, line: 1944, baseType: !2395, size: 64, offset: 1728)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{null, !1056, !1704}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !1971, file: !55, line: 1948, baseType: !2399, size: 64, offset: 1792)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!238, !1704, !557, !1704, !557, !365, !43}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !1971, file: !55, line: 1950, baseType: !2403, size: 64, offset: 1856)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{!557, !1704, !557, !1704, !557, !557, !43}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !1971, file: !55, line: 1953, baseType: !2351, size: 64, offset: 1920)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !1971, file: !55, line: 1954, baseType: !2408, size: 64, offset: 1984)
!2408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2409, size: 64)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!204, !2411, !43}
!2411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!2412 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !55, line: 1911, flags: DIFlagFwdDecl)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !1971, file: !55, line: 1955, baseType: !2414, size: 64, offset: 2048)
!2414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2415, size: 64)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!204, !2411, !2020, !43}
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !1705, file: !55, line: 1018, baseType: !470, size: 64, offset: 1472)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !1705, file: !55, line: 1020, baseType: !198, size: 64, offset: 1536)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1705, file: !55, line: 1023, baseType: !198, size: 64, offset: 1600)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !1705, file: !55, line: 1027, baseType: !2421, size: 64, offset: 1664)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1705, file: !55, line: 1029, baseType: !393, size: 64, offset: 1728)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !1705, file: !55, line: 1030, baseType: !2424, size: 32, offset: 1792)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !2425, line: 8, baseType: !466)
!2425 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !1705, file: !55, line: 1031, baseType: !2424, size: 32, offset: 1824)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1681, file: !79, line: 756, baseType: !209, size: 64, offset: 704)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1681, file: !79, line: 757, baseType: !209, size: 64, offset: 768)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1681, file: !79, line: 760, baseType: !209, size: 64, offset: 832)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1681, file: !79, line: 761, baseType: !209, size: 64, offset: 896)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1681, file: !79, line: 763, baseType: !209, size: 64, offset: 960)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1681, file: !79, line: 764, baseType: !2433, size: 64, offset: 1024)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !2067, line: 299, baseType: !2435)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2067, line: 299, size: 64, elements: !2436)
!2436 = !{!2437}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !2435, file: !2067, line: 299, baseType: !2438, size: 64)
!2438 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !2072, line: 18, baseType: !209)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1681, file: !79, line: 773, baseType: !284, size: 32, offset: 1088)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1681, file: !79, line: 785, baseType: !284, size: 32, offset: 1120)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1681, file: !79, line: 795, baseType: !2442, size: 64, offset: 1152)
!2442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2443, size: 64)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !79, line: 726, size: 128, elements: !2444)
!2444 = !{!2445, !2446}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2443, file: !79, line: 727, baseType: !470, size: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !2443, file: !79, line: 728, baseType: !204, size: 32, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1681, file: !79, line: 801, baseType: !209, size: 64, offset: 1216)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1681, file: !79, line: 804, baseType: !615, size: 64, offset: 1280)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1681, file: !79, line: 806, baseType: !204, size: 32, offset: 1344)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1681, file: !79, line: 808, baseType: !264, size: 32, offset: 1376)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1681, file: !79, line: 823, baseType: !1276, size: 320, offset: 1408)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1681, file: !79, line: 825, baseType: !251, size: 128, offset: 1728)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1681, file: !79, line: 845, baseType: !204, size: 32, offset: 1856)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1681, file: !79, line: 849, baseType: !209, size: 64, offset: 1920)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1681, file: !79, line: 850, baseType: !209, size: 64, offset: 1984)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1681, file: !79, line: 852, baseType: !209, size: 64, offset: 2048)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1681, file: !79, line: 853, baseType: !209, size: 64, offset: 2112)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1681, file: !79, line: 854, baseType: !617, size: 64, offset: 2176)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1681, file: !79, line: 855, baseType: !209, size: 64, offset: 2240)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1681, file: !79, line: 856, baseType: !209, size: 64, offset: 2304)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1681, file: !79, line: 857, baseType: !209, size: 64, offset: 2368)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1681, file: !79, line: 858, baseType: !209, size: 64, offset: 2432)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1681, file: !79, line: 865, baseType: !443, size: 32, offset: 2496)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1681, file: !79, line: 867, baseType: !264, size: 32, offset: 2528)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1681, file: !79, line: 869, baseType: !209, size: 64, offset: 2560)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1681, file: !79, line: 869, baseType: !209, size: 64, offset: 2624)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1681, file: !79, line: 869, baseType: !209, size: 64, offset: 2688)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1681, file: !79, line: 869, baseType: !209, size: 64, offset: 2752)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1681, file: !79, line: 870, baseType: !209, size: 64, offset: 2816)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1681, file: !79, line: 870, baseType: !209, size: 64, offset: 2880)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1681, file: !79, line: 870, baseType: !209, size: 64, offset: 2944)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1681, file: !79, line: 871, baseType: !209, size: 64, offset: 3008)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1681, file: !79, line: 871, baseType: !209, size: 64, offset: 3072)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1681, file: !79, line: 871, baseType: !209, size: 64, offset: 3136)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1681, file: !79, line: 871, baseType: !209, size: 64, offset: 3200)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1681, file: !79, line: 873, baseType: !2477, size: 3328, offset: 3264)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, size: 3328, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 52)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1681, file: !79, line: 875, baseType: !2481, size: 1280, offset: 6592)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1913, size: 1280, elements: !836)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1681, file: !79, line: 877, baseType: !2483, size: 64, offset: 7872)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !79, line: 877, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1681, file: !79, line: 880, baseType: !2486, size: 1088, offset: 7936)
!2486 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !2487, line: 72, baseType: !2488)
!2487 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!2488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2487, line: 23, size: 1088, elements: !2489)
!2489 = !{!2490, !2491, !2492, !2493, !2494, !2497, !2498, !2499, !2500, !2527, !2528, !2529}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !2488, file: !2487, line: 28, baseType: !470, size: 64)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !2488, file: !2487, line: 38, baseType: !617, size: 64, offset: 64)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !2488, file: !2487, line: 40, baseType: !209, size: 64, offset: 128)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !2488, file: !2487, line: 43, baseType: !1276, size: 320, offset: 192)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !2488, file: !2487, line: 44, baseType: !2495, size: 64, offset: 512)
!2495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2496, size: 64)
!2496 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !2487, line: 44, flags: DIFlagFwdDecl)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2488, file: !2487, line: 48, baseType: !209, size: 64, offset: 576)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2488, file: !2487, line: 59, baseType: !611, size: 256, offset: 640)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !2488, file: !2487, line: 60, baseType: !198, size: 64, offset: 896)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !2488, file: !2487, line: 61, baseType: !2501, size: 64, offset: 960)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2502, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2503)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !2504, line: 13, size: 1216, elements: !2505)
!2504 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2503, file: !2504, line: 14, baseType: !198, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2503, file: !2504, line: 15, baseType: !209, size: 64, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !2503, file: !2504, line: 17, baseType: !209, size: 64, offset: 128)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !2503, file: !2504, line: 17, baseType: !209, size: 64, offset: 192)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !2503, file: !2504, line: 18, baseType: !209, size: 64, offset: 256)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !2503, file: !2504, line: 18, baseType: !209, size: 64, offset: 320)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !2503, file: !2504, line: 19, baseType: !2513, size: 64, offset: 384)
!2513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2514, size: 64)
!2514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !2503, file: !2504, line: 21, baseType: !207, size: 64, offset: 448)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !2503, file: !2504, line: 23, baseType: !207, size: 64, offset: 512)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !2503, file: !2504, line: 24, baseType: !207, size: 64, offset: 576)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !2503, file: !2504, line: 25, baseType: !207, size: 64, offset: 640)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !2503, file: !2504, line: 26, baseType: !207, size: 64, offset: 704)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !2503, file: !2504, line: 27, baseType: !207, size: 64, offset: 768)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !2503, file: !2504, line: 28, baseType: !207, size: 64, offset: 832)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !2503, file: !2504, line: 29, baseType: !207, size: 64, offset: 896)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !2503, file: !2504, line: 30, baseType: !207, size: 64, offset: 960)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !2503, file: !2504, line: 31, baseType: !207, size: 64, offset: 1024)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !2503, file: !2504, line: 32, baseType: !207, size: 64, offset: 1088)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !2503, file: !2504, line: 33, baseType: !207, size: 64, offset: 1152)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !2488, file: !2487, line: 63, baseType: !284, size: 32, offset: 1024)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !2488, file: !2487, line: 69, baseType: !301, size: 16, offset: 1056)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !2488, file: !2487, line: 70, baseType: !743, size: 16, offset: 1072)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1681, file: !79, line: 882, baseType: !209, size: 64, offset: 9024)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1681, file: !79, line: 885, baseType: !264, size: 32, offset: 9088)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1681, file: !79, line: 886, baseType: !2533, size: 64, offset: 9152)
!2533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2534, size: 64)
!2534 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !79, line: 732, flags: DIFlagFwdDecl)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1681, file: !79, line: 901, baseType: !1938, size: 64, offset: 9216)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1681, file: !79, line: 904, baseType: !1704, size: 64, offset: 9280)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1681, file: !79, line: 906, baseType: !2538, size: 64, offset: 9344)
!2538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2539, size: 64)
!2539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !79, line: 906, flags: DIFlagFwdDecl)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1681, file: !79, line: 930, baseType: !284, size: 32, offset: 9408)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1681, file: !79, line: 933, baseType: !284, size: 32, offset: 9440)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1681, file: !79, line: 935, baseType: !2543, size: 64, offset: 9472)
!2543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !109, line: 103, size: 64, elements: !2544)
!2544 = !{!2545}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !2543, file: !109, line: 104, baseType: !2546, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !109, line: 101, flags: DIFlagFwdDecl)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1681, file: !79, line: 940, baseType: !615, size: 64, offset: 9536)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1681, file: !79, line: 942, baseType: !866, size: 256, offset: 9600)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1678, file: !79, line: 986, baseType: !2551, offset: 10240)
!2551 = !DICompositeType(tag: DW_TAG_array_type, baseType: !209, elements: !1764)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1383, file: !1058, line: 882, baseType: !1677, size: 64, offset: 9792)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1383, file: !1058, line: 884, baseType: !204, size: 32, offset: 9856)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1383, file: !1058, line: 885, baseType: !204, size: 32, offset: 9888)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1383, file: !1058, line: 886, baseType: !204, size: 32, offset: 9920)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1383, file: !1058, line: 888, baseType: !204, size: 32, offset: 9952)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1383, file: !1058, line: 890, baseType: !209, size: 64, offset: 9984)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1383, file: !1058, line: 893, baseType: !43, size: 32, offset: 10048)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1383, file: !1058, line: 896, baseType: !43, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1383, file: !1058, line: 897, baseType: !43, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1383, file: !1058, line: 898, baseType: !43, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1383, file: !1058, line: 899, baseType: !43, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1383, file: !1058, line: 919, baseType: !43, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1383, file: !1058, line: 922, baseType: !43, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1383, file: !1058, line: 923, baseType: !43, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1383, file: !1058, line: 925, baseType: !43, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1383, file: !1058, line: 939, baseType: !43, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1383, file: !1058, line: 941, baseType: !43, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1383, file: !1058, line: 944, baseType: !43, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1383, file: !1058, line: 956, baseType: !43, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1383, file: !1058, line: 962, baseType: !43, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1383, file: !1058, line: 966, baseType: !43, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1383, file: !1058, line: 969, baseType: !209, size: 64, offset: 10176)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1383, file: !1058, line: 971, baseType: !2575, size: 448, offset: 10240)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !103, line: 25, size: 448, elements: !2576)
!2576 = !{!2577, !2578, !2583}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2575, file: !103, line: 26, baseType: !209, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2575, file: !103, line: 27, baseType: !2579, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!207, !2582}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2575, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_member, scope: !2575, file: !103, line: 28, baseType: !2584, size: 320, offset: 128)
!2584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2575, file: !103, line: 28, size: 320, elements: !2585)
!2585 = !{!2586, !2596, !2621}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2584, file: !103, line: 37, baseType: !2587, size: 320)
!2587 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !103, line: 30, size: 320, elements: !2588)
!2588 = !{!2589, !2591, !2592, !2593, !2594, !2595}
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2587, file: !103, line: 31, baseType: !2590, size: 64)
!2590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2587, file: !103, line: 32, baseType: !466, size: 32, offset: 64)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2587, file: !103, line: 33, baseType: !466, size: 32, offset: 96)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2587, file: !103, line: 34, baseType: !466, size: 32, offset: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2587, file: !103, line: 35, baseType: !470, size: 64, offset: 192)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2587, file: !103, line: 36, baseType: !2590, size: 64, offset: 256)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2584, file: !103, line: 47, baseType: !2597, size: 192)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !103, line: 39, size: 192, elements: !2598)
!2598 = !{!2599, !2600, !2601, !2620}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2597, file: !103, line: 40, baseType: !1550, size: 32)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2597, file: !103, line: 41, baseType: !102, size: 32, offset: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, scope: !2597, file: !103, line: 42, baseType: !2602, size: 64, offset: 64)
!2602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2597, file: !103, line: 42, size: 64, elements: !2603)
!2603 = !{!2604, !2612}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2602, file: !103, line: 43, baseType: !2605, size: 64)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2607, line: 7, size: 128, elements: !2608)
!2607 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2608 = !{!2609, !2611}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2606, file: !2607, line: 8, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !240, line: 93, baseType: !559)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2606, file: !2607, line: 9, baseType: !559, size: 64, offset: 64)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2602, file: !103, line: 44, baseType: !2613, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2615, line: 7, size: 64, elements: !2616)
!2615 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2616 = !{!2617, !2619}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2614, file: !2615, line: 8, baseType: !2618, size: 32)
!2618 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2615, line: 5, baseType: !607)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2614, file: !2615, line: 9, baseType: !607, size: 32, offset: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2597, file: !103, line: 46, baseType: !470, size: 64, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2584, file: !103, line: 55, baseType: !2622, size: 256)
!2622 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2584, file: !103, line: 49, size: 256, elements: !2623)
!2623 = !{!2624, !2627, !2628, !2629, !2630}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2622, file: !103, line: 50, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !103, line: 14, flags: DIFlagFwdDecl)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2622, file: !103, line: 51, baseType: !204, size: 32, offset: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2622, file: !103, line: 52, baseType: !204, size: 32, offset: 96)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2622, file: !103, line: 53, baseType: !209, size: 64, offset: 128)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2622, file: !103, line: 54, baseType: !209, size: 64, offset: 192)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1383, file: !1058, line: 973, baseType: !2632, size: 32, offset: 10688)
!2632 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !219, line: 27, baseType: !2633)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !240, line: 28, baseType: !204)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1383, file: !1058, line: 974, baseType: !2632, size: 32, offset: 10720)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1383, file: !1058, line: 978, baseType: !209, size: 64, offset: 10752)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1383, file: !1058, line: 987, baseType: !1382, size: 64, offset: 10816)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1383, file: !1058, line: 990, baseType: !1382, size: 64, offset: 10880)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1383, file: !1058, line: 995, baseType: !251, size: 128, offset: 10944)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1383, file: !1058, line: 996, baseType: !251, size: 128, offset: 11072)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1383, file: !1058, line: 997, baseType: !1382, size: 64, offset: 11200)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1383, file: !1058, line: 1005, baseType: !251, size: 128, offset: 11264)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1383, file: !1058, line: 1006, baseType: !251, size: 128, offset: 11392)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1383, file: !1058, line: 1009, baseType: !1745, size: 64, offset: 11520)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1383, file: !1058, line: 1010, baseType: !2645, size: 512, offset: 11584)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 512, elements: !836)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1383, file: !1058, line: 1011, baseType: !251, size: 128, offset: 12096)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1383, file: !1058, line: 1012, baseType: !251, size: 128, offset: 12224)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1383, file: !1058, line: 1014, baseType: !2649, size: 64, offset: 12352)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1383, file: !1058, line: 1017, baseType: !203, size: 64, offset: 12416)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1383, file: !1058, line: 1020, baseType: !203, size: 64, offset: 12480)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1383, file: !1058, line: 1023, baseType: !198, size: 64, offset: 12544)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1383, file: !1058, line: 1025, baseType: !470, size: 64, offset: 12608)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1383, file: !1058, line: 1026, baseType: !470, size: 64, offset: 12672)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1383, file: !1058, line: 1031, baseType: !470, size: 64, offset: 12736)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1383, file: !1058, line: 1032, baseType: !2657, size: 192, offset: 12800)
!2657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1058, line: 324, size: 192, elements: !2658)
!2658 = !{!2659, !2660, !2661}
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2657, file: !1058, line: 326, baseType: !470, size: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2657, file: !1058, line: 327, baseType: !470, size: 64, offset: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2657, file: !1058, line: 328, baseType: !624, size: 32, offset: 128)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1383, file: !1058, line: 1041, baseType: !209, size: 64, offset: 12992)
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1383, file: !1058, line: 1042, baseType: !209, size: 64, offset: 13056)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1383, file: !1058, line: 1045, baseType: !470, size: 64, offset: 13120)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1383, file: !1058, line: 1048, baseType: !470, size: 64, offset: 13184)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1383, file: !1058, line: 1051, baseType: !209, size: 64, offset: 13248)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1383, file: !1058, line: 1052, baseType: !209, size: 64, offset: 13312)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1383, file: !1058, line: 1055, baseType: !2669, size: 640, offset: 13376)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2670, line: 132, size: 640, elements: !2671)
!2670 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2671 = !{!2672, !2678, !2679}
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2669, file: !2670, line: 133, baseType: !2673, size: 576)
!2673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2674, size: 576, elements: !5)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2670, line: 117, size: 192, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2674, file: !2670, line: 118, baseType: !470, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2674, file: !2670, line: 119, baseType: !1559, size: 128, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2669, file: !2670, line: 134, baseType: !43, size: 32, offset: 576)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2669, file: !2670, line: 135, baseType: !43, size: 32, offset: 608)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1383, file: !1058, line: 1058, baseType: !2681, size: 448, offset: 14016)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2670, line: 144, size: 448, elements: !2682)
!2682 = !{!2683, !2684, !2685}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2681, file: !2670, line: 145, baseType: !826, size: 128, align: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2681, file: !2670, line: 146, baseType: !611, size: 256, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2681, file: !2670, line: 147, baseType: !43, size: 32, offset: 384)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1383, file: !1058, line: 1064, baseType: !1771, size: 64, offset: 14464)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1383, file: !1058, line: 1067, baseType: !1771, size: 64, offset: 14528)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1383, file: !1058, line: 1070, baseType: !1771, size: 64, offset: 14592)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1383, file: !1058, line: 1074, baseType: !1798, size: 64, offset: 14656)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1383, file: !1058, line: 1084, baseType: !2691, size: 128, offset: 14720)
!2691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !2692)
!2692 = !{!2693}
!2693 = !DISubrange(count: 16)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1383, file: !1058, line: 1086, baseType: !2695, size: 64, offset: 14848)
!2695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2696 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1058, line: 55, flags: DIFlagFwdDecl)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1383, file: !1058, line: 1089, baseType: !2698, size: 64, offset: 14912)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2699, line: 12, size: 64, elements: !2700)
!2699 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2700 = !{!2701}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2698, file: !2699, line: 13, baseType: !2702, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2699, line: 8, flags: DIFlagFwdDecl)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1383, file: !1058, line: 1090, baseType: !2705, size: 128, offset: 14976)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2706, line: 13, size: 128, elements: !2707)
!2706 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2707 = !{!2708}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2705, file: !2706, line: 14, baseType: !251, size: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1383, file: !1058, line: 1097, baseType: !2710, size: 64, offset: 15104)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1058, line: 50, flags: DIFlagFwdDecl)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1383, file: !1058, line: 1100, baseType: !2713, size: 64, offset: 15168)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1058, line: 1100, flags: DIFlagFwdDecl)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1383, file: !1058, line: 1103, baseType: !2716, size: 64, offset: 15232)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2717, size: 64)
!2717 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1058, line: 53, flags: DIFlagFwdDecl)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1383, file: !1058, line: 1107, baseType: !2719, size: 64, offset: 15296)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2721, line: 35, flags: DIFlagFwdDecl)
!2721 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "416ba9a5f312864a58b70a55a5e6c298")
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1383, file: !1058, line: 1110, baseType: !2723, size: 64, offset: 15360)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2725, line: 93, size: 8768, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2726 = !{!2727, !2728, !2729, !2730, !2731, !2732, !2733, !2734, !2744, !2745, !2746, !2747, !2748, !2749, !2750, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2774, !2783, !2784, !2786, !2787, !2788, !2791, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2829, !2830, !2837, !2847, !2850, !2851, !2854, !2855, !2856, !2857, !2858, !2859}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2724, file: !2725, line: 94, baseType: !1396, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2724, file: !2725, line: 95, baseType: !284, size: 32, offset: 32)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2724, file: !2725, line: 96, baseType: !204, size: 32, offset: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2724, file: !2725, line: 97, baseType: !204, size: 32, offset: 96)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2724, file: !2725, line: 98, baseType: !251, size: 128, offset: 128)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2724, file: !2725, line: 100, baseType: !1369, size: 192, offset: 256)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2724, file: !2725, line: 103, baseType: !1382, size: 64, offset: 448)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2724, file: !2725, line: 106, baseType: !2735, size: 192, offset: 512)
!2735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1943, line: 32, size: 192, elements: !2736)
!2736 = !{!2737, !2738}
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2735, file: !1943, line: 33, baseType: !251, size: 128)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2735, file: !1943, line: 34, baseType: !2739, size: 64, offset: 128)
!2739 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2740, line: 25, baseType: !2741)
!2740 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2740, line: 23, size: 64, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2741, file: !2740, line: 24, baseType: !1630, size: 64)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2724, file: !2725, line: 109, baseType: !984, size: 64, offset: 704)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2724, file: !2725, line: 112, baseType: !204, size: 32, offset: 768)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2724, file: !2725, line: 114, baseType: !204, size: 32, offset: 800)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2724, file: !2725, line: 115, baseType: !1382, size: 64, offset: 832)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2724, file: !2725, line: 118, baseType: !204, size: 32, offset: 896)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2724, file: !2725, line: 119, baseType: !43, size: 32, offset: 928)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2724, file: !2725, line: 121, baseType: !2751, size: 64, offset: 960)
!2751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2752, size: 64)
!2752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2725, line: 80, size: 448, elements: !2753)
!2753 = !{!2754, !2755, !2761}
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2752, file: !2725, line: 81, baseType: !284, size: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2752, file: !2725, line: 82, baseType: !2756, size: 128, offset: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2725, line: 75, size: 128, elements: !2757)
!2757 = !{!2758, !2759}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2756, file: !2725, line: 76, baseType: !1382, size: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2756, file: !2725, line: 77, baseType: !2760, size: 64, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2752, file: !2725, line: 83, baseType: !919, size: 256, offset: 192)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2724, file: !2725, line: 132, baseType: !43, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2724, file: !2725, line: 133, baseType: !43, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2724, file: !2725, line: 138, baseType: !43, size: 32, offset: 1056)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2724, file: !2725, line: 139, baseType: !251, size: 128, offset: 1088)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2724, file: !2725, line: 142, baseType: !1503, size: 512, offset: 1216)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2724, file: !2725, line: 143, baseType: !1511, size: 64, offset: 1728)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2724, file: !2725, line: 150, baseType: !2769, size: 256, offset: 1792)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2770, size: 256, elements: !727)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2725, line: 38, size: 128, elements: !2771)
!2771 = !{!2772, !2773}
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2770, file: !2725, line: 39, baseType: !470, size: 64)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2770, file: !2725, line: 40, baseType: !470, size: 64, offset: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2724, file: !2725, line: 156, baseType: !2775, size: 192, offset: 2048)
!2775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2725, line: 66, size: 192, elements: !2776)
!2776 = !{!2777}
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2775, file: !2725, line: 67, baseType: !2778, size: 192)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2725, line: 47, size: 192, elements: !2779)
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2778, file: !2725, line: 48, baseType: !617, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2778, file: !2725, line: 49, baseType: !617, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2778, file: !2725, line: 50, baseType: !617, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2724, file: !2725, line: 160, baseType: !2669, size: 640, offset: 2240)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2724, file: !2725, line: 163, baseType: !2785, size: 256, offset: 2880)
!2785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1745, size: 256, elements: !836)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2724, file: !2725, line: 169, baseType: !1745, size: 64, offset: 3136)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2724, file: !2725, line: 172, baseType: !204, size: 32, offset: 3200)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2724, file: !2725, line: 174, baseType: !2789, size: 64, offset: 3264)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2725, line: 174, flags: DIFlagFwdDecl)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2724, file: !2725, line: 185, baseType: !2792, size: 64, offset: 3328)
!2792 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !439, line: 860, baseType: !2793)
!2793 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !439, line: 853, size: 64, elements: !2794)
!2794 = !{!2795, !2796}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2793, file: !439, line: 858, baseType: !438, size: 32)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2793, file: !439, line: 859, baseType: !264, size: 32, offset: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2724, file: !2725, line: 186, baseType: !470, size: 64, offset: 3392)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2724, file: !2725, line: 186, baseType: !470, size: 64, offset: 3456)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2724, file: !2725, line: 186, baseType: !470, size: 64, offset: 3520)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2724, file: !2725, line: 186, baseType: !470, size: 64, offset: 3584)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2724, file: !2725, line: 187, baseType: !470, size: 64, offset: 3648)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2724, file: !2725, line: 188, baseType: !470, size: 64, offset: 3712)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2724, file: !2725, line: 189, baseType: !2657, size: 192, offset: 3776)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2724, file: !2725, line: 190, baseType: !209, size: 64, offset: 3968)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2724, file: !2725, line: 190, baseType: !209, size: 64, offset: 4032)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2724, file: !2725, line: 190, baseType: !209, size: 64, offset: 4096)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2724, file: !2725, line: 190, baseType: !209, size: 64, offset: 4160)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2724, file: !2725, line: 191, baseType: !209, size: 64, offset: 4224)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2724, file: !2725, line: 191, baseType: !209, size: 64, offset: 4288)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2724, file: !2725, line: 191, baseType: !209, size: 64, offset: 4352)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2724, file: !2725, line: 191, baseType: !209, size: 64, offset: 4416)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2724, file: !2725, line: 192, baseType: !209, size: 64, offset: 4480)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2724, file: !2725, line: 192, baseType: !209, size: 64, offset: 4544)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2724, file: !2725, line: 192, baseType: !209, size: 64, offset: 4608)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2724, file: !2725, line: 192, baseType: !209, size: 64, offset: 4672)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2724, file: !2725, line: 193, baseType: !209, size: 64, offset: 4736)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2724, file: !2725, line: 193, baseType: !209, size: 64, offset: 4800)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2724, file: !2725, line: 194, baseType: !2819, size: 448, offset: 4864)
!2819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2820, line: 12, size: 448, elements: !2821)
!2820 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2827, !2828}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2819, file: !2820, line: 15, baseType: !470, size: 64)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2819, file: !2820, line: 17, baseType: !470, size: 64, offset: 64)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2819, file: !2820, line: 19, baseType: !470, size: 64, offset: 128)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2819, file: !2820, line: 21, baseType: !470, size: 64, offset: 192)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2819, file: !2820, line: 29, baseType: !470, size: 64, offset: 256)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2819, file: !2820, line: 35, baseType: !470, size: 64, offset: 320)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2819, file: !2820, line: 44, baseType: !470, size: 64, offset: 384)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2724, file: !2725, line: 202, baseType: !211, size: 64, offset: 5312)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2724, file: !2725, line: 213, baseType: !2831, size: 2048, offset: 5376)
!2831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2832, size: 2048, elements: !2692)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2833, line: 43, size: 128, elements: !2834)
!2833 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2834 = !{!2835, !2836}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2832, file: !2833, line: 44, baseType: !367, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2832, file: !2833, line: 45, baseType: !367, size: 64, offset: 64)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2724, file: !2725, line: 216, baseType: !2838, size: 448, offset: 7424)
!2838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2725, line: 30, size: 448, elements: !2839)
!2839 = !{!2840, !2841, !2842, !2843, !2844, !2845, !2846}
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2838, file: !2725, line: 31, baseType: !204, size: 32)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2838, file: !2725, line: 32, baseType: !207, size: 64, offset: 64)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2838, file: !2725, line: 33, baseType: !209, size: 64, offset: 128)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2838, file: !2725, line: 34, baseType: !470, size: 64, offset: 192)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2838, file: !2725, line: 34, baseType: !470, size: 64, offset: 256)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2838, file: !2725, line: 35, baseType: !209, size: 64, offset: 320)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2838, file: !2725, line: 35, baseType: !209, size: 64, offset: 384)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2724, file: !2725, line: 219, baseType: !2848, size: 64, offset: 7872)
!2848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2849, size: 64)
!2849 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2725, line: 219, flags: DIFlagFwdDecl)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2724, file: !2725, line: 222, baseType: !43, size: 32, offset: 7936)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2724, file: !2725, line: 223, baseType: !2852, size: 64, offset: 8000)
!2852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2853, size: 64)
!2853 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2725, line: 223, flags: DIFlagFwdDecl)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2724, file: !2725, line: 230, baseType: !218, size: 8, offset: 8064)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2724, file: !2725, line: 231, baseType: !200, size: 16, offset: 8080)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2724, file: !2725, line: 232, baseType: !200, size: 16, offset: 8096)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2724, file: !2725, line: 234, baseType: !1677, size: 64, offset: 8128)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2724, file: !2725, line: 237, baseType: !611, size: 256, offset: 8192)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2724, file: !2725, line: 243, baseType: !1276, size: 320, offset: 8448)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1383, file: !1058, line: 1111, baseType: !2861, size: 64, offset: 15424)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2725, line: 20, size: 16640, elements: !2863)
!2863 = !{!2864, !2865, !2866, !2867}
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2862, file: !2725, line: 21, baseType: !264, size: 32)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2862, file: !2725, line: 22, baseType: !1396, size: 32, offset: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2862, file: !2725, line: 23, baseType: !1369, size: 192, offset: 64)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2862, file: !2725, line: 24, baseType: !2868, size: 16384, offset: 256)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2869, size: 16384, elements: !334)
!2869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !1943, line: 51, size: 256, elements: !2870)
!2870 = !{!2871}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2869, file: !1943, line: 52, baseType: !2872, size: 256)
!2872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !1943, line: 37, size: 256, elements: !2873)
!2873 = !{!2874, !2881, !2882, !2886}
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2872, file: !1943, line: 39, baseType: !2875, size: 64)
!2875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2876, line: 83, baseType: !2877)
!2876 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2876, line: 82, baseType: !2879)
!2879 = !DISubroutineType(types: !2880)
!2880 = !{null, !204}
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2872, file: !1943, line: 40, baseType: !209, size: 64, offset: 64)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2872, file: !1943, line: 46, baseType: !2883, size: 64, offset: 128)
!2883 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2876, line: 86, baseType: !2884)
!2884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2885, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2876, line: 85, baseType: !979)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2872, file: !1943, line: 48, baseType: !2739, size: 64, offset: 192)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1383, file: !1058, line: 1112, baseType: !2739, size: 64, offset: 15488)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1383, file: !1058, line: 1113, baseType: !2739, size: 64, offset: 15552)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1383, file: !1058, line: 1115, baseType: !2739, size: 64, offset: 15616)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1383, file: !1058, line: 1116, baseType: !2735, size: 192, offset: 15680)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1383, file: !1058, line: 1117, baseType: !209, size: 64, offset: 15872)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1383, file: !1058, line: 1118, baseType: !365, size: 64, offset: 15936)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1383, file: !1058, line: 1119, baseType: !43, size: 32, offset: 16000)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1383, file: !1058, line: 1121, baseType: !825, size: 64, offset: 16064)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1383, file: !1058, line: 1125, baseType: !2896, size: 64, offset: 16128)
!2896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2897, size: 64)
!2897 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1058, line: 43, flags: DIFlagFwdDecl)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1383, file: !1058, line: 1127, baseType: !403, size: 32, offset: 16192)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1383, file: !1058, line: 1128, baseType: !43, size: 32, offset: 16224)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1383, file: !1058, line: 1130, baseType: !2901, size: 128, offset: 16256)
!2901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2902, line: 37, size: 128, elements: !2903)
!2902 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2901, file: !2902, line: 38, baseType: !204, size: 32)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2901, file: !2902, line: 39, baseType: !284, size: 32, offset: 32)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2901, file: !2902, line: 40, baseType: !2907, size: 64, offset: 64)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2902, line: 24, flags: DIFlagFwdDecl)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1383, file: !1058, line: 1131, baseType: !2910, size: 256, offset: 16384)
!2910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2911, line: 12, size: 256, elements: !2912)
!2911 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2912 = !{!2913, !2914, !2915, !2916}
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2910, file: !2911, line: 13, baseType: !213, size: 64)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2910, file: !2911, line: 14, baseType: !209, size: 64, offset: 64)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2910, file: !2911, line: 15, baseType: !209, size: 64, offset: 128)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2910, file: !2911, line: 16, baseType: !218, size: 8, offset: 192)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1383, file: !1058, line: 1134, baseType: !470, size: 64, offset: 16640)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1383, file: !1058, line: 1135, baseType: !470, size: 64, offset: 16704)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1383, file: !1058, line: 1138, baseType: !264, size: 32, offset: 16768)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1383, file: !1058, line: 1141, baseType: !624, size: 32, offset: 16800)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1383, file: !1058, line: 1143, baseType: !2922, size: 64, offset: 16832)
!2922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1058, line: 735, size: 64, elements: !2923)
!2923 = !{!2924}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2922, file: !1058, line: 736, baseType: !2925, size: 64)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1383, file: !1058, line: 1147, baseType: !1562, size: 128, offset: 16896)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1383, file: !1058, line: 1149, baseType: !1382, size: 64, offset: 17024)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1383, file: !1058, line: 1151, baseType: !2929, size: 64, offset: 17088)
!2929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2930, size: 64)
!2930 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1058, line: 1151, flags: DIFlagFwdDecl)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1383, file: !1058, line: 1188, baseType: !198, size: 64, offset: 17152)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1383, file: !1058, line: 1191, baseType: !2933, size: 64, offset: 17216)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1058, line: 44, flags: DIFlagFwdDecl)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1383, file: !1058, line: 1194, baseType: !2936, size: 64, offset: 17280)
!2936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2937, size: 64)
!2937 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1058, line: 45, flags: DIFlagFwdDecl)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1383, file: !1058, line: 1197, baseType: !2939, size: 64, offset: 17344)
!2939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2940, size: 64)
!2940 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1058, line: 61, flags: DIFlagFwdDecl)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1383, file: !1058, line: 1199, baseType: !2942, size: 64, offset: 17408)
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2944, line: 99, size: 128, elements: !2945)
!2944 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2945 = !{!2946, !2947, !2948}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2943, file: !2944, line: 100, baseType: !615, size: 64)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2943, file: !2944, line: 101, baseType: !284, size: 32, offset: 64)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2943, file: !2944, line: 103, baseType: !202, size: 16, offset: 96)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1383, file: !1058, line: 1202, baseType: !2950, size: 64, offset: 17472)
!2950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!2951 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1058, line: 48, flags: DIFlagFwdDecl)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1383, file: !1058, line: 1205, baseType: !209, size: 64, offset: 17536)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1383, file: !1058, line: 1206, baseType: !2954, size: 64, offset: 17600)
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1943, line: 14, baseType: !2956)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1943, line: 12, size: 384, elements: !2957)
!2957 = !{!2958}
!2958 = !DIDerivedType(tag: DW_TAG_member, scope: !2956, file: !1943, line: 13, baseType: !2959, size: 384)
!2959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2956, file: !1943, line: 13, size: 384, elements: !2960)
!2960 = !{!2961, !2962, !2963, !2964}
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2959, file: !1943, line: 13, baseType: !204, size: 32)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2959, file: !1943, line: 13, baseType: !204, size: 32, offset: 32)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2959, file: !1943, line: 13, baseType: !204, size: 32, offset: 64)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2959, file: !1943, line: 13, baseType: !2965, size: 256, offset: 128)
!2965 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2966, line: 37, size: 256, elements: !2967)
!2966 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2967 = !{!2968, !2973, !2986, !2992, !3001, !3028, !3033}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2965, file: !2966, line: 42, baseType: !2969, size: 64)
!2969 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 39, size: 64, elements: !2970)
!2970 = !{!2971, !2972}
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2969, file: !2966, line: 40, baseType: !2633, size: 32)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2969, file: !2966, line: 41, baseType: !409, size: 32, offset: 32)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2965, file: !2966, line: 50, baseType: !2974, size: 192)
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 45, size: 192, elements: !2975)
!2975 = !{!2976, !2978, !2979, !2985}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2974, file: !2966, line: 46, baseType: !2977, size: 32)
!2977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !240, line: 95, baseType: !204)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2974, file: !2966, line: 47, baseType: !204, size: 32, offset: 32)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2974, file: !2966, line: 48, baseType: !2980, size: 64, offset: 64)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2966, line: 11, baseType: !2981)
!2981 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2966, line: 8, size: 64, elements: !2982)
!2982 = !{!2983, !2984}
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2981, file: !2966, line: 9, baseType: !204, size: 32)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2981, file: !2966, line: 10, baseType: !198, size: 64)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2974, file: !2966, line: 49, baseType: !204, size: 32, offset: 128)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2965, file: !2966, line: 57, baseType: !2987, size: 128)
!2987 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 53, size: 128, elements: !2988)
!2988 = !{!2989, !2990, !2991}
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2987, file: !2966, line: 54, baseType: !2633, size: 32)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2987, file: !2966, line: 55, baseType: !409, size: 32, offset: 32)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2987, file: !2966, line: 56, baseType: !2980, size: 64, offset: 64)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2965, file: !2966, line: 66, baseType: !2993, size: 256)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 60, size: 256, elements: !2994)
!2994 = !{!2995, !2996, !2997, !2998, !3000}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2993, file: !2966, line: 61, baseType: !2633, size: 32)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2993, file: !2966, line: 62, baseType: !409, size: 32, offset: 32)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2993, file: !2966, line: 63, baseType: !204, size: 32, offset: 64)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2993, file: !2966, line: 64, baseType: !2999, size: 64, offset: 128)
!2999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !240, line: 94, baseType: !241)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2993, file: !2966, line: 65, baseType: !2999, size: 64, offset: 192)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2965, file: !2966, line: 105, baseType: !3002, size: 256)
!3002 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 69, size: 256, elements: !3003)
!3003 = !{!3004, !3005}
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3002, file: !2966, line: 70, baseType: !198, size: 64)
!3005 = !DIDerivedType(tag: DW_TAG_member, scope: !3002, file: !2966, line: 79, baseType: !3006, size: 192, offset: 64)
!3006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3002, file: !2966, line: 79, size: 192, elements: !3007)
!3007 = !{!3008, !3009, !3010, !3017, !3022}
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3006, file: !2966, line: 81, baseType: !204, size: 32)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3006, file: !2966, line: 86, baseType: !200, size: 16)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3006, file: !2966, line: 92, baseType: !3011, size: 192)
!3011 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3006, file: !2966, line: 88, size: 192, elements: !3012)
!3012 = !{!3013, !3015, !3016}
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3011, file: !2966, line: 89, baseType: !3014, size: 64)
!3014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1546)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3011, file: !2966, line: 90, baseType: !198, size: 64, offset: 64)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3011, file: !2966, line: 91, baseType: !198, size: 64, offset: 128)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3006, file: !2966, line: 97, baseType: !3018, size: 96)
!3018 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3006, file: !2966, line: 94, size: 96, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3018, file: !2966, line: 95, baseType: !3014, size: 64)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3018, file: !2966, line: 96, baseType: !467, size: 32, offset: 64)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3006, file: !2966, line: 103, baseType: !3023, size: 128)
!3023 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3006, file: !2966, line: 99, size: 128, elements: !3024)
!3024 = !{!3025, !3026, !3027}
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3023, file: !2966, line: 100, baseType: !209, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3023, file: !2966, line: 101, baseType: !467, size: 32, offset: 64)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3023, file: !2966, line: 102, baseType: !467, size: 32, offset: 96)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2965, file: !2966, line: 111, baseType: !3029, size: 128)
!3029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 108, size: 128, elements: !3030)
!3030 = !{!3031, !3032}
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3029, file: !2966, line: 109, baseType: !207, size: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3029, file: !2966, line: 110, baseType: !204, size: 32, offset: 64)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2965, file: !2966, line: 118, baseType: !3034, size: 128)
!3034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2965, file: !2966, line: 114, size: 128, elements: !3035)
!3035 = !{!3036, !3037, !3038}
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3034, file: !2966, line: 115, baseType: !198, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3034, file: !2966, line: 116, baseType: !204, size: 32, offset: 64)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3034, file: !2966, line: 117, baseType: !43, size: 32, offset: 96)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1383, file: !1058, line: 1208, baseType: !2819, size: 448, offset: 17664)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1383, file: !1058, line: 1215, baseType: !470, size: 64, offset: 18112)
!3041 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1383, file: !1058, line: 1217, baseType: !470, size: 64, offset: 18176)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1383, file: !1058, line: 1219, baseType: !470, size: 64, offset: 18240)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1383, file: !1058, line: 1223, baseType: !3044, size: 64, offset: 18304)
!3044 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3045, line: 99, baseType: !3046)
!3045 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3046 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3045, line: 99, size: 64, elements: !3047)
!3047 = !{!3048}
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3046, file: !3045, line: 99, baseType: !1630, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1383, file: !1058, line: 1225, baseType: !438, size: 32, offset: 18368)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1383, file: !1058, line: 1226, baseType: !204, size: 32, offset: 18400)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1383, file: !1058, line: 1227, baseType: !204, size: 32, offset: 18432)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1383, file: !1058, line: 1231, baseType: !3053, size: 64, offset: 18496)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3054, size: 64)
!3054 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1058, line: 1231, flags: DIFlagFwdDecl)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1383, file: !1058, line: 1233, baseType: !251, size: 128, offset: 18560)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1383, file: !1058, line: 1240, baseType: !3057, size: 64, offset: 18688)
!3057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3058, size: 64)
!3058 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1058, line: 62, flags: DIFlagFwdDecl)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1383, file: !1058, line: 1242, baseType: !3060, size: 64, offset: 18752)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1058, line: 1242, flags: DIFlagFwdDecl)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1383, file: !1058, line: 1244, baseType: !251, size: 128, offset: 18816)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1383, file: !1058, line: 1245, baseType: !3064, size: 64, offset: 18944)
!3064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3065, size: 64)
!3065 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1058, line: 51, flags: DIFlagFwdDecl)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1383, file: !1058, line: 1246, baseType: !611, size: 256, offset: 19008)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1383, file: !1058, line: 1247, baseType: !43, size: 32, offset: 19264)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1383, file: !1058, line: 1250, baseType: !3069, size: 64, offset: 19328)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1058, line: 57, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1383, file: !1058, line: 1251, baseType: !611, size: 256, offset: 19392)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1383, file: !1058, line: 1252, baseType: !251, size: 128, offset: 19648)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1383, file: !1058, line: 1259, baseType: !2322, size: 64, offset: 19776)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1383, file: !1058, line: 1260, baseType: !200, size: 16, offset: 19840)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1383, file: !1058, line: 1261, baseType: !200, size: 16, offset: 19856)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1383, file: !1058, line: 1314, baseType: !3077, size: 64, offset: 19904)
!3077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3078, size: 64)
!3078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3079, line: 62, size: 256, align: 256, elements: !3080)
!3079 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3080 = !{!3081, !3082, !3083, !3084, !3085, !3086, !3087}
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3078, file: !3079, line: 75, baseType: !467, size: 32)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3078, file: !3079, line: 90, baseType: !467, size: 32, offset: 32)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3078, file: !3079, line: 112, baseType: !471, size: 64, offset: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3078, file: !3079, line: 132, baseType: !467, size: 32, offset: 128)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3078, file: !3079, line: 140, baseType: !467, size: 32, offset: 160)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3078, file: !3079, line: 149, baseType: !467, size: 32, offset: 192)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3078, file: !3079, line: 154, baseType: !3088, offset: 224)
!3088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !1764)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1383, file: !1058, line: 1315, baseType: !466, size: 32, offset: 19968)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1383, file: !1058, line: 1316, baseType: !466, size: 32, offset: 20000)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1383, file: !1058, line: 1321, baseType: !209, size: 64, offset: 20032)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1383, file: !1058, line: 1325, baseType: !204, size: 32, offset: 20096)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1383, file: !1058, line: 1326, baseType: !204, size: 32, offset: 20128)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1383, file: !1058, line: 1327, baseType: !204, size: 32, offset: 20160)
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1383, file: !1058, line: 1328, baseType: !204, size: 32, offset: 20192)
!3096 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1383, file: !1058, line: 1329, baseType: !826, size: 128, align: 64, offset: 20224)
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1383, file: !1058, line: 1332, baseType: !3098, size: 128, offset: 20352)
!3098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3099, line: 51, size: 128, elements: !3100)
!3099 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3100 = !{!3101, !3106, !3107}
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3098, file: !3099, line: 60, baseType: !3102, size: 64)
!3102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3103, line: 7, size: 64, elements: !3104)
!3103 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3104 = !{!3105}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3102, file: !3103, line: 12, baseType: !1627, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3098, file: !3099, line: 63, baseType: !218, size: 8, offset: 64)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3098, file: !3099, line: 70, baseType: !218, size: 8, offset: 72)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1383, file: !1058, line: 1335, baseType: !2374, size: 64, offset: 20480)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1383, file: !1058, line: 1337, baseType: !3110, size: 128, offset: 20544)
!3110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3099, line: 39, size: 128, elements: !3111)
!3111 = !{!3112, !3113, !3114}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3110, file: !3099, line: 40, baseType: !2161, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3110, file: !3099, line: 42, baseType: !467, size: 32, offset: 64)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3110, file: !3099, line: 43, baseType: !467, size: 32, offset: 96)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1383, file: !1058, line: 1340, baseType: !3116, size: 64, offset: 20672)
!3116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3117, size: 64)
!3117 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1058, line: 69, flags: DIFlagFwdDecl)
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1383, file: !1058, line: 1351, baseType: !204, size: 32, offset: 20736)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1383, file: !1058, line: 1352, baseType: !204, size: 32, offset: 20768)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1383, file: !1058, line: 1354, baseType: !209, size: 64, offset: 20800)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1383, file: !1058, line: 1364, baseType: !470, size: 64, offset: 20864)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1383, file: !1058, line: 1365, baseType: !470, size: 64, offset: 20928)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1383, file: !1058, line: 1412, baseType: !209, size: 64, offset: 20992)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1383, file: !1058, line: 1453, baseType: !3125, size: 64, offset: 21056)
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3126, size: 64)
!3126 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1058, line: 1453, flags: DIFlagFwdDecl)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1383, file: !1058, line: 1457, baseType: !3128, size: 64, offset: 21120)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !109, line: 61, size: 576, elements: !3130)
!3130 = !{!3131, !3132, !3151, !3154, !3155, !3188, !3198}
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3129, file: !109, line: 62, baseType: !108, size: 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, scope: !3129, file: !109, line: 64, baseType: !3133, size: 192, offset: 64)
!3133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3129, file: !109, line: 64, size: 192, elements: !3134)
!3134 = !{!3135, !3146}
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !109, line: 65, baseType: !3136, size: 192)
!3136 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !109, line: 65, size: 192, elements: !3137)
!3137 = !{!3138, !3145}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3136, file: !109, line: 66, baseType: !3139, size: 128)
!3139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3140, line: 50, size: 128, elements: !3141)
!3140 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3141 = !{!3142, !3143, !3144}
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3139, file: !3140, line: 52, baseType: !209, size: 64)
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3139, file: !3140, line: 54, baseType: !43, size: 32, offset: 64)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3139, file: !3140, line: 55, baseType: !43, size: 32, offset: 96)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3136, file: !109, line: 67, baseType: !209, size: 64, offset: 128)
!3146 = !DIDerivedType(tag: DW_TAG_member, scope: !3133, file: !109, line: 70, baseType: !3147, size: 192)
!3147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3133, file: !109, line: 70, size: 192, elements: !3148)
!3148 = !{!3149, !3150}
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3147, file: !109, line: 71, baseType: !826, size: 128, align: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3147, file: !109, line: 72, baseType: !209, size: 64, offset: 128)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3129, file: !109, line: 76, baseType: !3152, size: 64, offset: 256)
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !109, line: 76, flags: DIFlagFwdDecl)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3129, file: !109, line: 77, baseType: !209, size: 64, offset: 320)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3129, file: !109, line: 79, baseType: !3156, size: 64, offset: 384)
!3156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3157, size: 64)
!3157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3140, line: 25, size: 256, elements: !3158)
!3158 = !{!3159, !3165, !3169}
!3159 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3140, line: 26, baseType: !3160, size: 128)
!3160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3140, line: 26, size: 128, elements: !3161)
!3161 = !{!3162, !3164}
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3160, file: !3140, line: 27, baseType: !3163, size: 128)
!3163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !2692)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3160, file: !3140, line: 28, baseType: !3163, size: 128)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3157, file: !3140, line: 31, baseType: !3166, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3167, size: 64)
!3167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3168)
!3168 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3140, line: 23, flags: DIFlagFwdDecl)
!3169 = !DIDerivedType(tag: DW_TAG_member, scope: !3157, file: !3140, line: 33, baseType: !3170, size: 64, offset: 192)
!3170 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3157, file: !3140, line: 33, size: 64, elements: !3171)
!3171 = !{!3172, !3178, !3183}
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3170, file: !3140, line: 38, baseType: !3173, size: 64)
!3173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3140, line: 34, size: 64, elements: !3174)
!3174 = !{!3175, !3176, !3177}
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3173, file: !3140, line: 35, baseType: !607, size: 32)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3173, file: !3140, line: 36, baseType: !292, size: 8, offset: 32)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3173, file: !3140, line: 37, baseType: !292, size: 8, offset: 40)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3170, file: !3140, line: 42, baseType: !3179, size: 16)
!3179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3140, line: 39, size: 16, elements: !3180)
!3180 = !{!3181, !3182}
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3179, file: !3140, line: 40, baseType: !292, size: 8)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3179, file: !3140, line: 41, baseType: !292, size: 8, offset: 8)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3170, file: !3140, line: 46, baseType: !3184, size: 16)
!3184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3170, file: !3140, line: 43, size: 16, elements: !3185)
!3185 = !{!3186, !3187}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3184, file: !3140, line: 44, baseType: !292, size: 8)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3184, file: !3140, line: 45, baseType: !292, size: 8, offset: 8)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3129, file: !109, line: 81, baseType: !3189, size: 64, offset: 448)
!3189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !109, line: 85, size: 384, elements: !3191)
!3191 = !{!3192, !3193, !3194, !3195, !3196, !3197}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3190, file: !109, line: 86, baseType: !3152, size: 64)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3190, file: !109, line: 87, baseType: !209, size: 64, offset: 64)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3190, file: !109, line: 88, baseType: !209, size: 64, offset: 128)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3190, file: !109, line: 89, baseType: !209, size: 64, offset: 192)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3190, file: !109, line: 90, baseType: !218, size: 8, offset: 256)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3190, file: !109, line: 92, baseType: !3189, size: 64, offset: 320)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3129, file: !109, line: 82, baseType: !43, size: 32, offset: 512)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1383, file: !1058, line: 1463, baseType: !3200, offset: 21184)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1058, line: 739, elements: !895)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1383, file: !1058, line: 1470, baseType: !826, size: 128, align: 64, offset: 21184)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1383, file: !1058, line: 1471, baseType: !1396, size: 32, offset: 21312)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1383, file: !1058, line: 1472, baseType: !204, size: 32, offset: 21344)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1383, file: !1058, line: 1474, baseType: !1382, size: 64, offset: 21376)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1383, file: !1058, line: 1475, baseType: !848, size: 320, offset: 21440)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1383, file: !1058, line: 1478, baseType: !3207, size: 64, offset: 21760)
!3207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3208, size: 64)
!3208 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1058, line: 1478, flags: DIFlagFwdDecl)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1383, file: !1058, line: 1482, baseType: !1396, size: 32, offset: 21824)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1383, file: !1058, line: 1489, baseType: !198, size: 64, offset: 21888)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1383, file: !1058, line: 1504, baseType: !198, size: 64, offset: 21952)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1383, file: !1058, line: 1505, baseType: !471, size: 64, offset: 22016)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1383, file: !1058, line: 1506, baseType: !470, size: 64, offset: 22080)
!3214 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1383, file: !1058, line: 1507, baseType: !471, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1383, file: !1058, line: 1508, baseType: !471, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1383, file: !1058, line: 1509, baseType: !471, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1383, file: !1058, line: 1510, baseType: !826, size: 128, align: 64, offset: 22208)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1383, file: !1058, line: 1511, baseType: !204, size: 32, offset: 22336)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1383, file: !1058, line: 1515, baseType: !3220, size: 64, offset: 22400)
!3220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !1410, line: 56, size: 64, elements: !3221)
!3221 = !{!3222}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3220, file: !1410, line: 57, baseType: !1413, size: 64)
!3223 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1383, file: !1058, line: 1518, baseType: !3220, size: 64, offset: 22464)
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1383, file: !1058, line: 1528, baseType: !826, size: 128, align: 64, offset: 22528)
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1383, file: !1058, line: 1552, baseType: !3226, size: 35328, offset: 23040)
!3226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3227, line: 430, size: 35328, elements: !3228)
!3227 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3228 = !{!3229, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3258, !3259, !3260, !3261, !3262, !3263, !3266, !3267, !3268, !3269}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3226, file: !3227, line: 432, baseType: !3230, size: 192)
!3230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3231, size: 192, elements: !5)
!3231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3232, line: 16, size: 64, elements: !3233)
!3232 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3233 = !{!3234, !3235, !3236, !3237, !3238, !3239, !3240, !3241, !3242, !3243, !3244, !3245, !3246}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3231, file: !3232, line: 17, baseType: !301, size: 16)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3231, file: !3232, line: 18, baseType: !301, size: 16, offset: 16)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3231, file: !3232, line: 19, baseType: !301, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3231, file: !3232, line: 19, baseType: !301, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3231, file: !3232, line: 19, baseType: !301, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3231, file: !3232, line: 19, baseType: !301, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3231, file: !3232, line: 19, baseType: !301, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3231, file: !3232, line: 20, baseType: !301, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3231, file: !3232, line: 20, baseType: !301, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3231, file: !3232, line: 20, baseType: !301, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3231, file: !3232, line: 20, baseType: !301, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3231, file: !3232, line: 20, baseType: !301, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3231, file: !3232, line: 20, baseType: !301, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3226, file: !3227, line: 436, baseType: !209, size: 64, offset: 192)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3226, file: !3227, line: 440, baseType: !202, size: 16, offset: 256)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3226, file: !3227, line: 441, baseType: !202, size: 16, offset: 272)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3226, file: !3227, line: 442, baseType: !202, size: 16, offset: 288)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3226, file: !3227, line: 443, baseType: !202, size: 16, offset: 304)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3226, file: !3227, line: 447, baseType: !209, size: 64, offset: 320)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3226, file: !3227, line: 448, baseType: !209, size: 64, offset: 384)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3226, file: !3227, line: 459, baseType: !3255, size: 256, offset: 448)
!3255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3256, size: 256, elements: !836)
!3256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3257, size: 64)
!3257 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3227, line: 428, flags: DIFlagFwdDecl)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3226, file: !3227, line: 461, baseType: !209, size: 64, offset: 704)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3226, file: !3227, line: 463, baseType: !209, size: 64, offset: 768)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3226, file: !3227, line: 465, baseType: !209, size: 64, offset: 832)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3226, file: !3227, line: 466, baseType: !209, size: 64, offset: 896)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3226, file: !3227, line: 467, baseType: !209, size: 64, offset: 960)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3226, file: !3227, line: 473, baseType: !3264, size: 64, offset: 1024)
!3264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3265 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3227, line: 10, flags: DIFlagFwdDecl)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3226, file: !3227, line: 480, baseType: !209, size: 64, offset: 1088)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3226, file: !3227, line: 482, baseType: !43, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3226, file: !3227, line: 491, baseType: !466, size: 32, offset: 1184)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3226, file: !3227, line: 501, baseType: !3270, size: 33792, offset: 1536)
!3270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3271, line: 448, size: 33792, elements: !3272)
!3271 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3272 = !{!3273, !3274, !3275, !3437, !3438, !3444, !3445}
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3270, file: !3271, line: 461, baseType: !43, size: 32)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3270, file: !3271, line: 468, baseType: !209, size: 64, offset: 64)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3270, file: !3271, line: 476, baseType: !3276, size: 64, offset: 128)
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3271, line: 356, size: 33280, align: 512, elements: !3278)
!3278 = !{!3279, !3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3277, file: !3271, line: 358, baseType: !43, size: 32)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3277, file: !3271, line: 361, baseType: !43, size: 32, offset: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3277, file: !3271, line: 364, baseType: !470, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3277, file: !3271, line: 367, baseType: !470, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3277, file: !3271, line: 370, baseType: !470, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3277, file: !3271, line: 373, baseType: !43, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3277, file: !3271, line: 376, baseType: !43, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3277, file: !3271, line: 391, baseType: !43, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3277, file: !3271, line: 394, baseType: !43, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3277, file: !3271, line: 397, baseType: !3289, size: 32768, offset: 512)
!3289 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3271, line: 348, size: 32768, elements: !3290)
!3290 = !{!3291, !3306, !3343, !3420, !3433}
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3289, file: !3271, line: 349, baseType: !3292, size: 896)
!3292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3271, line: 12, size: 896, elements: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3305}
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3292, file: !3271, line: 13, baseType: !466, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3292, file: !3271, line: 14, baseType: !466, size: 32, offset: 32)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3292, file: !3271, line: 15, baseType: !466, size: 32, offset: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3292, file: !3271, line: 16, baseType: !466, size: 32, offset: 96)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3292, file: !3271, line: 17, baseType: !466, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3292, file: !3271, line: 18, baseType: !466, size: 32, offset: 160)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3292, file: !3271, line: 19, baseType: !466, size: 32, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3292, file: !3271, line: 22, baseType: !3302, size: 640, offset: 224)
!3302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 640, elements: !3303)
!3303 = !{!3304}
!3304 = !DISubrange(count: 20)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3292, file: !3271, line: 25, baseType: !466, size: 32, offset: 864)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3289, file: !3271, line: 350, baseType: !3307, size: 4096, align: 128)
!3307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3271, line: 34, size: 4096, align: 128, elements: !3308)
!3308 = !{!3309, !3310, !3311, !3312, !3313, !3328, !3329, !3330, !3332, !3334, !3338}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3307, file: !3271, line: 35, baseType: !301, size: 16)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3307, file: !3271, line: 36, baseType: !301, size: 16, offset: 16)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3307, file: !3271, line: 37, baseType: !301, size: 16, offset: 32)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3307, file: !3271, line: 38, baseType: !301, size: 16, offset: 48)
!3313 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3271, line: 39, baseType: !3314, size: 128, offset: 64)
!3314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3271, line: 39, size: 128, elements: !3315)
!3315 = !{!3316, !3321}
!3316 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3271, line: 40, baseType: !3317, size: 128)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3271, line: 40, size: 128, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3317, file: !3271, line: 41, baseType: !470, size: 64)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3317, file: !3271, line: 42, baseType: !470, size: 64, offset: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, scope: !3314, file: !3271, line: 44, baseType: !3322, size: 128)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3314, file: !3271, line: 44, size: 128, elements: !3323)
!3323 = !{!3324, !3325, !3326, !3327}
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3322, file: !3271, line: 45, baseType: !466, size: 32)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3322, file: !3271, line: 46, baseType: !466, size: 32, offset: 32)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3322, file: !3271, line: 47, baseType: !466, size: 32, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3322, file: !3271, line: 48, baseType: !466, size: 32, offset: 96)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3307, file: !3271, line: 51, baseType: !466, size: 32, offset: 192)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3307, file: !3271, line: 52, baseType: !466, size: 32, offset: 224)
!3330 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3307, file: !3271, line: 55, baseType: !3331, size: 1024, offset: 256)
!3331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 1024, elements: !478)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3307, file: !3271, line: 58, baseType: !3333, size: 2048, offset: 1280)
!3333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 2048, elements: !334)
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3307, file: !3271, line: 60, baseType: !3335, size: 384, offset: 3328)
!3335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !466, size: 384, elements: !3336)
!3336 = !{!3337}
!3337 = !DISubrange(count: 12)
!3338 = !DIDerivedType(tag: DW_TAG_member, scope: !3307, file: !3271, line: 62, baseType: !3339, size: 384, offset: 3712)
!3339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3307, file: !3271, line: 62, size: 384, elements: !3340)
!3340 = !{!3341, !3342}
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3339, file: !3271, line: 63, baseType: !3335, size: 384)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3339, file: !3271, line: 64, baseType: !3335, size: 384)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3289, file: !3271, line: 351, baseType: !3344, size: 1088)
!3344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3271, line: 79, size: 1088, elements: !3345)
!3345 = !{!3346, !3347, !3348, !3349, !3350, !3351, !3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3419}
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3344, file: !3271, line: 80, baseType: !466, size: 32)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3344, file: !3271, line: 81, baseType: !466, size: 32, offset: 32)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3344, file: !3271, line: 82, baseType: !466, size: 32, offset: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3344, file: !3271, line: 83, baseType: !466, size: 32, offset: 96)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3344, file: !3271, line: 84, baseType: !466, size: 32, offset: 128)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3344, file: !3271, line: 85, baseType: !466, size: 32, offset: 160)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3344, file: !3271, line: 86, baseType: !466, size: 32, offset: 192)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3344, file: !3271, line: 88, baseType: !3302, size: 640, offset: 224)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3344, file: !3271, line: 89, baseType: !292, size: 8, offset: 864)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3344, file: !3271, line: 90, baseType: !292, size: 8, offset: 872)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3344, file: !3271, line: 91, baseType: !292, size: 8, offset: 880)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3344, file: !3271, line: 92, baseType: !292, size: 8, offset: 888)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3344, file: !3271, line: 93, baseType: !292, size: 8, offset: 896)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3344, file: !3271, line: 94, baseType: !292, size: 8, offset: 904)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3344, file: !3271, line: 95, baseType: !3361, size: 64, offset: 960)
!3361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3362, size: 64)
!3362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3363, line: 11, size: 128, elements: !3364)
!3363 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3364 = !{!3365, !3366}
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3362, file: !3363, line: 12, baseType: !207, size: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3362, file: !3363, line: 13, baseType: !3367, size: 64, offset: 64)
!3367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3368, size: 64)
!3368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3369, line: 103, size: 1344, elements: !3370)
!3369 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3370 = !{!3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3399, !3400, !3401}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3368, file: !3369, line: 109, baseType: !209, size: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3368, file: !3369, line: 110, baseType: !209, size: 64, offset: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3368, file: !3369, line: 111, baseType: !209, size: 64, offset: 128)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3368, file: !3369, line: 112, baseType: !209, size: 64, offset: 192)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3368, file: !3369, line: 113, baseType: !209, size: 64, offset: 256)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3368, file: !3369, line: 114, baseType: !209, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3368, file: !3369, line: 117, baseType: !209, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3368, file: !3369, line: 118, baseType: !209, size: 64, offset: 448)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3368, file: !3369, line: 119, baseType: !209, size: 64, offset: 512)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3368, file: !3369, line: 120, baseType: !209, size: 64, offset: 576)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3368, file: !3369, line: 121, baseType: !209, size: 64, offset: 640)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3368, file: !3369, line: 122, baseType: !209, size: 64, offset: 704)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3368, file: !3369, line: 123, baseType: !209, size: 64, offset: 768)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3368, file: !3369, line: 124, baseType: !209, size: 64, offset: 832)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3368, file: !3369, line: 125, baseType: !209, size: 64, offset: 896)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3368, file: !3369, line: 139, baseType: !209, size: 64, offset: 960)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3368, file: !3369, line: 142, baseType: !209, size: 64, offset: 1024)
!3388 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 144, baseType: !3389, size: 64, offset: 1088)
!3389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 144, size: 64, elements: !3390)
!3390 = !{!3391, !3392, !3393}
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3389, file: !3369, line: 146, baseType: !301, size: 16)
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3389, file: !3369, line: 148, baseType: !470, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3389, file: !3369, line: 150, baseType: !3394, size: 64)
!3394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3369, line: 59, size: 64, elements: !3395)
!3395 = !{!3396, !3397, !3398}
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3394, file: !3369, line: 61, baseType: !470, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3394, file: !3369, line: 63, baseType: !470, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3394, file: !3369, line: 65, baseType: !470, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3368, file: !3369, line: 153, baseType: !209, size: 64, offset: 1152)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3368, file: !3369, line: 154, baseType: !209, size: 64, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, scope: !3368, file: !3369, line: 156, baseType: !3402, size: 64, offset: 1280)
!3402 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3368, file: !3369, line: 156, size: 64, elements: !3403)
!3403 = !{!3404, !3405, !3406}
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3402, file: !3369, line: 158, baseType: !301, size: 16)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3402, file: !3369, line: 160, baseType: !470, size: 64)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3402, file: !3369, line: 162, baseType: !3407, size: 64)
!3407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3369, line: 69, size: 64, elements: !3408)
!3408 = !{!3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3417, !3418}
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3407, file: !3369, line: 71, baseType: !470, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3407, file: !3369, line: 73, baseType: !470, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3407, file: !3369, line: 75, baseType: !470, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3407, file: !3369, line: 77, baseType: !470, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3407, file: !3369, line: 80, baseType: !470, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3407, file: !3369, line: 83, baseType: !470, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3407, file: !3369, line: 86, baseType: !470, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3407, file: !3369, line: 88, baseType: !470, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3407, file: !3369, line: 93, baseType: !470, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3407, file: !3369, line: 100, baseType: !470, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3344, file: !3271, line: 96, baseType: !466, size: 32, offset: 1024)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3289, file: !3271, line: 352, baseType: !3421, size: 4608, align: 512)
!3421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3271, line: 333, size: 4608, align: 512, elements: !3422)
!3422 = !{!3423, !3424, !3431}
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3421, file: !3271, line: 334, baseType: !3307, size: 4096, align: 128)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3421, file: !3271, line: 335, baseType: !3425, size: 512, offset: 4096)
!3425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3271, line: 312, size: 512, elements: !3426)
!3426 = !{!3427, !3428, !3429}
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3425, file: !3271, line: 313, baseType: !470, size: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3425, file: !3271, line: 314, baseType: !470, size: 64, offset: 64)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3425, file: !3271, line: 315, baseType: !3430, size: 384, offset: 128)
!3430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !470, size: 384, elements: !35)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3421, file: !3271, line: 336, baseType: !3432, offset: 4608)
!3432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !1764)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3289, file: !3271, line: 353, baseType: !3434, size: 32768)
!3434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32768, elements: !3435)
!3435 = !{!3436}
!3436 = !DISubrange(count: 4096)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3270, file: !3271, line: 484, baseType: !3276, size: 64, offset: 192)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3270, file: !3271, line: 491, baseType: !3439, size: 128, offset: 256)
!3439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3271, line: 404, size: 128, elements: !3440)
!3440 = !{!3441, !3442, !3443}
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3439, file: !3271, line: 424, baseType: !470, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3439, file: !3271, line: 432, baseType: !43, size: 32, offset: 64)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3439, file: !3271, line: 440, baseType: !43, size: 32, offset: 96)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3270, file: !3271, line: 498, baseType: !3439, size: 128, offset: 384)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3270, file: !3271, line: 508, baseType: !3277, size: 33280, align: 512, offset: 512)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1359, file: !1360, line: 16, baseType: !1369, size: 192, offset: 512)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1359, file: !1360, line: 17, baseType: !284, size: 32, offset: 704)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !548, file: !55, line: 1240, baseType: !198, size: 64, offset: 6912)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !548, file: !55, line: 1243, baseType: !466, size: 32, offset: 6976)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !548, file: !55, line: 1245, baseType: !1116, size: 64, offset: 7040)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !548, file: !55, line: 1246, baseType: !1116, size: 64, offset: 7104)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !548, file: !55, line: 1248, baseType: !467, size: 32, offset: 7168)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !548, file: !55, line: 1249, baseType: !3454, size: 64, offset: 7232)
!3454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3455 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !55, line: 634, flags: DIFlagFwdDecl)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !548, file: !55, line: 1252, baseType: !3457, size: 256, offset: 7296)
!3457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !478)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !548, file: !55, line: 1253, baseType: !3459, size: 128, offset: 7552)
!3459 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3460, line: 21, baseType: !3461)
!3460 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3460, line: 19, size: 128, elements: !3462)
!3462 = !{!3463}
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3461, file: !3460, line: 20, baseType: !3464, size: 128)
!3464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 128, elements: !2692)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !548, file: !55, line: 1255, baseType: !43, size: 32, offset: 7680)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !548, file: !55, line: 1261, baseType: !611, size: 256, offset: 7744)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !548, file: !55, line: 1267, baseType: !215, size: 64, offset: 8000)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !548, file: !55, line: 1269, baseType: !494, size: 64, offset: 8064)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !548, file: !55, line: 1271, baseType: !3470, size: 448, offset: 8128)
!3470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1125, line: 63, size: 448, elements: !3471)
!3471 = !{!3472, !3477, !3478, !3479, !3480, !3481, !3482}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3470, file: !1125, line: 64, baseType: !3473, size: 64)
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!209, !3476, !1123}
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3470, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3470, file: !1125, line: 66, baseType: !3473, size: 64, offset: 64)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3470, file: !1125, line: 69, baseType: !207, size: 64, offset: 128)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3470, file: !1125, line: 70, baseType: !204, size: 32, offset: 192)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3470, file: !1125, line: 71, baseType: !43, size: 32, offset: 224)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3470, file: !1125, line: 74, baseType: !251, size: 128, offset: 256)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3470, file: !1125, line: 85, baseType: !3483, size: 64, offset: 384)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !548, file: !55, line: 1274, baseType: !615, size: 64, offset: 8576)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !548, file: !55, line: 1280, baseType: !615, size: 64, offset: 8640)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !548, file: !55, line: 1283, baseType: !204, size: 32, offset: 8704)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !548, file: !55, line: 1286, baseType: !2424, size: 32, offset: 8736)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !548, file: !55, line: 1289, baseType: !938, size: 64, offset: 8768)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !548, file: !55, line: 1290, baseType: !984, size: 64, offset: 8832)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !548, file: !55, line: 1297, baseType: !1938, size: 64, offset: 8896)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !548, file: !55, line: 1304, baseType: !3492, size: 64, offset: 8960)
!3492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3493, line: 49, size: 64, elements: !3494)
!3493 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3494 = !{!3495}
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3492, file: !3493, line: 50, baseType: !3496, size: 64)
!3496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3497, size: 64)
!3497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3493, line: 41, size: 512, align: 512, elements: !3498)
!3498 = !{!3499, !3500, !3505}
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3497, file: !3493, line: 43, baseType: !264, size: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3497, file: !3493, line: 45, baseType: !3501, size: 192, offset: 64)
!3501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3493, line: 29, size: 192, elements: !3502)
!3502 = !{!3503, !3504}
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3501, file: !3493, line: 30, baseType: !251, size: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3501, file: !3493, line: 32, baseType: !207, size: 64, offset: 128)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3497, file: !3493, line: 46, baseType: !207, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !548, file: !55, line: 1305, baseType: !3492, size: 64, offset: 9024)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !548, file: !55, line: 1306, baseType: !826, size: 128, align: 64, offset: 9088)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !548, file: !55, line: 1307, baseType: !866, size: 256, offset: 9216)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !548, file: !55, line: 1309, baseType: !611, size: 256, offset: 9472)
!3510 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !548, file: !55, line: 1314, baseType: !204, size: 32, offset: 9728)
!3511 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !548, file: !55, line: 1317, baseType: !264, size: 32, align: 512, offset: 10240)
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !548, file: !55, line: 1318, baseType: !251, size: 128, offset: 10304)
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !548, file: !55, line: 1320, baseType: !264, size: 32, offset: 10432)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !548, file: !55, line: 1321, baseType: !251, size: 128, offset: 10496)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !542, file: !543, line: 73, baseType: !204, size: 32, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !542, file: !543, line: 74, baseType: !3517, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3518, size: 64)
!3518 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !1788, line: 42, flags: DIFlagFwdDecl)
!3519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !496, file: !434, line: 141, baseType: !3521, size: 64, offset: 704)
!3521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3522, size: 64)
!3522 = !DISubroutineType(types: !3523)
!3523 = !{!204, !1186, !218}
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !496, file: !434, line: 142, baseType: !3525, size: 64, offset: 768)
!3525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3526, size: 64)
!3526 = !DISubroutineType(types: !3527)
!3527 = !{!432, !432, !3528}
!3528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3529, size: 64)
!3529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !398)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !433, file: !434, line: 96, baseType: !547, size: 64, offset: 832)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !433, file: !434, line: 97, baseType: !209, size: 64, offset: 896)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !433, file: !434, line: 98, baseType: !198, size: 64, offset: 960)
!3533 = !DIDerivedType(tag: DW_TAG_member, scope: !433, file: !434, line: 100, baseType: !3534, size: 128, offset: 1024)
!3534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 100, size: 128, elements: !3535)
!3535 = !{!3536, !3537}
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3534, file: !434, line: 101, baseType: !251, size: 128)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3534, file: !434, line: 102, baseType: !3538, size: 64)
!3538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !433, file: !434, line: 104, baseType: !251, size: 128, offset: 1152)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !433, file: !434, line: 105, baseType: !251, size: 128, offset: 1280)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !433, file: !434, line: 113, baseType: !3542, size: 128, offset: 1408)
!3542 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !433, file: !434, line: 109, size: 128, elements: !3543)
!3543 = !{!3544, !3545, !3546}
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3542, file: !434, line: 110, baseType: !852, size: 128)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3542, file: !434, line: 111, baseType: !448, size: 128)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3542, file: !434, line: 112, baseType: !826, size: 128, align: 64)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !426, file: !55, line: 1968, baseType: !3548, size: 64, offset: 64)
!3548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3549, size: 64)
!3549 = !DISubroutineType(types: !3550)
!3550 = !{!215, !432, !397, !3551}
!3551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3552, size: 64)
!3552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3553, line: 10, size: 128, elements: !3554)
!3553 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3554 = !{!3555, !3556}
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3552, file: !3553, line: 11, baseType: !654, size: 64)
!3556 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3552, file: !3553, line: 12, baseType: !198, size: 64, offset: 64)
!3557 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !426, file: !55, line: 1969, baseType: !3558, size: 64, offset: 128)
!3558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3559, size: 64)
!3559 = !DISubroutineType(types: !3560)
!3560 = !{!204, !3517, !397, !204}
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !426, file: !55, line: 1970, baseType: !3562, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3563, size: 64)
!3563 = !DISubroutineType(types: !3564)
!3564 = !{!420, !397, !204, !218}
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !426, file: !55, line: 1972, baseType: !3566, size: 64, offset: 256)
!3566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3567, size: 64)
!3567 = !DISubroutineType(types: !3568)
!3568 = !{!204, !432, !213, !204}
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !426, file: !55, line: 1974, baseType: !3570, size: 64, offset: 320)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!204, !3517, !397, !432, !233, !218}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !426, file: !55, line: 1976, baseType: !3574, size: 64, offset: 384)
!3574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3575, size: 64)
!3575 = !DISubroutineType(types: !3576)
!3576 = !{!204, !432, !397, !432}
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !426, file: !55, line: 1977, baseType: !3578, size: 64, offset: 448)
!3578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3579, size: 64)
!3579 = !DISubroutineType(types: !3580)
!3580 = !{!204, !397, !432}
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !426, file: !55, line: 1978, baseType: !3582, size: 64, offset: 512)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = !DISubroutineType(types: !3584)
!3584 = !{!204, !3517, !397, !432, !215}
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !426, file: !55, line: 1980, baseType: !3586, size: 64, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3587, size: 64)
!3587 = !DISubroutineType(types: !3588)
!3588 = !{!204, !3517, !397, !432, !233}
!3589 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !426, file: !55, line: 1982, baseType: !3578, size: 64, offset: 640)
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !426, file: !55, line: 1983, baseType: !3591, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!204, !3517, !397, !432, !233, !552}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !426, file: !55, line: 1985, baseType: !3595, size: 64, offset: 768)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DISubroutineType(types: !3597)
!3597 = !{!204, !3517, !397, !432, !397, !432, !43}
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !426, file: !55, line: 1987, baseType: !3599, size: 64, offset: 832)
!3599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3600, size: 64)
!3600 = !DISubroutineType(types: !3601)
!3601 = !{!204, !3517, !432, !3602}
!3602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !55, line: 226, size: 640, elements: !3604)
!3604 = !{!3605, !3606, !3607, !3617, !3626, !3627, !3632, !3633, !3634}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3603, file: !55, line: 227, baseType: !43, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3603, file: !55, line: 228, baseType: !233, size: 16, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, scope: !3603, file: !55, line: 241, baseType: !3608, size: 32, offset: 64)
!3608 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !55, line: 241, size: 32, elements: !3609)
!3609 = !{!3610, !3611}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3608, file: !55, line: 242, baseType: !403, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3608, file: !55, line: 243, baseType: !3612, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3613, line: 16, baseType: !3614)
!3613 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3614 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3613, line: 14, size: 32, elements: !3615)
!3615 = !{!3616}
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3614, file: !3613, line: 15, baseType: !408, size: 32)
!3617 = !DIDerivedType(tag: DW_TAG_member, scope: !3603, file: !55, line: 245, baseType: !3618, size: 32, offset: 96)
!3618 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3603, file: !55, line: 245, size: 32, elements: !3619)
!3619 = !{!3620, !3621}
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3618, file: !55, line: 246, baseType: !412, size: 32)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3618, file: !55, line: 247, baseType: !3622, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3613, line: 20, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3613, line: 18, size: 32, elements: !3624)
!3624 = !{!3625}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3623, file: !3613, line: 19, baseType: !416, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3603, file: !55, line: 249, baseType: !557, size: 64, offset: 128)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3603, file: !55, line: 250, baseType: !3628, size: 128, offset: 192)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !1117, line: 13, size: 128, elements: !3629)
!3629 = !{!3630, !3631}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3628, file: !1117, line: 14, baseType: !1116, size: 64)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3628, file: !1117, line: 15, baseType: !207, size: 64, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3603, file: !55, line: 251, baseType: !3628, size: 128, offset: 320)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3603, file: !55, line: 252, baseType: !3628, size: 128, offset: 448)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3603, file: !55, line: 259, baseType: !1704, size: 64, offset: 576)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !426, file: !55, line: 1988, baseType: !3636, size: 64, offset: 896)
!3636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3637, size: 64)
!3637 = !DISubroutineType(types: !3638)
!3638 = !{!204, !3517, !1186, !3639, !466, !43}
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3640, size: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3641, line: 22, size: 1280, elements: !3642)
!3641 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3642 = !{!3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654, !3655, !3656, !3657, !3658, !3659, !3660, !3661, !3662, !3663}
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3640, file: !3641, line: 23, baseType: !466, size: 32)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3640, file: !3641, line: 24, baseType: !233, size: 16, offset: 32)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3640, file: !3641, line: 25, baseType: !43, size: 32, offset: 64)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3640, file: !3641, line: 26, baseType: !1826, size: 32, offset: 96)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3640, file: !3641, line: 27, baseType: !470, size: 64, offset: 128)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3640, file: !3641, line: 28, baseType: !470, size: 64, offset: 192)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3640, file: !3641, line: 41, baseType: !470, size: 64, offset: 256)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3640, file: !3641, line: 42, baseType: !552, size: 32, offset: 320)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3640, file: !3641, line: 43, baseType: !552, size: 32, offset: 352)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3640, file: !3641, line: 44, baseType: !403, size: 32, offset: 384)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3640, file: !3641, line: 45, baseType: !412, size: 32, offset: 416)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3640, file: !3641, line: 46, baseType: !557, size: 64, offset: 448)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3640, file: !3641, line: 47, baseType: !3628, size: 128, offset: 512)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3640, file: !3641, line: 48, baseType: !3628, size: 128, offset: 640)
!3657 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3640, file: !3641, line: 49, baseType: !3628, size: 128, offset: 768)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3640, file: !3641, line: 50, baseType: !3628, size: 128, offset: 896)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3640, file: !3641, line: 51, baseType: !470, size: 64, offset: 1024)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3640, file: !3641, line: 52, baseType: !470, size: 64, offset: 1088)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3640, file: !3641, line: 53, baseType: !466, size: 32, offset: 1152)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3640, file: !3641, line: 54, baseType: !466, size: 32, offset: 1184)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3640, file: !3641, line: 55, baseType: !470, size: 64, offset: 1216)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !426, file: !55, line: 1990, baseType: !3665, size: 64, offset: 960)
!3665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3666, size: 64)
!3666 = !DISubroutineType(types: !3667)
!3667 = !{!238, !432, !213, !365}
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !426, file: !55, line: 1991, baseType: !3669, size: 64, offset: 1024)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DISubroutineType(types: !3671)
!3671 = !{!204, !397, !3672, !470, !470}
!3672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3673, size: 64)
!3673 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !55, line: 55, flags: DIFlagFwdDecl)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !426, file: !55, line: 1993, baseType: !3675, size: 64, offset: 1088)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!204, !397, !204}
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !426, file: !55, line: 1994, baseType: !3679, size: 64, offset: 1152)
!3679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3680, size: 64)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!204, !397, !432, !1704, !43, !233}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !426, file: !55, line: 1997, baseType: !3683, size: 64, offset: 1216)
!3683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3684, size: 64)
!3684 = !DISubroutineType(types: !3685)
!3685 = !{!204, !3517, !397, !1704, !233}
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !426, file: !55, line: 1999, baseType: !3687, size: 64, offset: 1280)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DISubroutineType(types: !3689)
!3689 = !{!420, !3517, !432, !204}
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !426, file: !55, line: 2001, baseType: !3691, size: 64, offset: 1344)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!204, !3517, !432, !420, !204}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !426, file: !55, line: 2003, baseType: !3695, size: 64, offset: 1408)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!204, !3517, !432, !3698}
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !55, line: 76, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !426, file: !55, line: 2005, baseType: !3701, size: 64, offset: 1472)
!3701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3702, size: 64)
!3702 = !DISubroutineType(types: !3703)
!3703 = !{!204, !432, !3698}
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !426, file: !55, line: 2006, baseType: !3705, size: 64, offset: 1536)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3706, size: 64)
!3706 = !DISubroutineType(types: !3707)
!3707 = !{!3708, !397}
!3708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3709, size: 64)
!3709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !55, line: 3192, size: 192, elements: !3710)
!3710 = !{!3711, !3718}
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3709, file: !55, line: 3193, baseType: !3712, size: 128)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3713, line: 296, size: 128, elements: !3714)
!3713 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3714 = !{!3715, !3716, !3717}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3712, file: !3713, line: 297, baseType: !264, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3712, file: !3713, line: 299, baseType: !1128, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3712, file: !3713, line: 300, baseType: !198, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3709, file: !55, line: 3194, baseType: !466, size: 32, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !398, file: !55, line: 655, baseType: !547, size: 64, offset: 448)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !398, file: !55, line: 656, baseType: !393, size: 64, offset: 512)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !398, file: !55, line: 659, baseType: !198, size: 64, offset: 576)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !398, file: !55, line: 663, baseType: !209, size: 64, offset: 640)
!3723 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !55, line: 671, baseType: !3724, size: 32, offset: 704)
!3724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !55, line: 671, size: 32, elements: !3725)
!3725 = !{!3726, !3728}
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3724, file: !55, line: 672, baseType: !3727, size: 32)
!3727 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3724, file: !55, line: 673, baseType: !43, size: 32)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !398, file: !55, line: 675, baseType: !552, size: 32, offset: 736)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !398, file: !55, line: 676, baseType: !557, size: 64, offset: 768)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !398, file: !55, line: 677, baseType: !3628, size: 128, offset: 832)
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !398, file: !55, line: 678, baseType: !3628, size: 128, offset: 960)
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !398, file: !55, line: 679, baseType: !3628, size: 128, offset: 1088)
!3734 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !398, file: !55, line: 680, baseType: !264, size: 32, offset: 1216)
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !398, file: !55, line: 681, baseType: !202, size: 16, offset: 1248)
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !398, file: !55, line: 682, baseType: !292, size: 8, offset: 1264)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !398, file: !55, line: 683, baseType: !292, size: 8, offset: 1272)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !398, file: !55, line: 684, baseType: !1264, size: 64, offset: 1280)
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !398, file: !55, line: 691, baseType: !209, size: 64, offset: 1344)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !398, file: !55, line: 692, baseType: !1276, size: 320, offset: 1408)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !398, file: !55, line: 694, baseType: !209, size: 64, offset: 1728)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !398, file: !55, line: 695, baseType: !209, size: 64, offset: 1792)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !398, file: !55, line: 697, baseType: !852, size: 128, offset: 1856)
!3744 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !398, file: !55, line: 698, baseType: !251, size: 128, offset: 1984)
!3745 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !398, file: !55, line: 707, baseType: !251, size: 128, offset: 2112)
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !398, file: !55, line: 708, baseType: !251, size: 128, offset: 2240)
!3747 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !55, line: 709, baseType: !3748, size: 128, offset: 2368)
!3748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !55, line: 709, size: 128, elements: !3749)
!3749 = !{!3750, !3751}
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3748, file: !55, line: 710, baseType: !984, size: 64)
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3748, file: !55, line: 711, baseType: !826, size: 128, align: 64)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !398, file: !55, line: 713, baseType: !617, size: 64, offset: 2496)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !398, file: !55, line: 714, baseType: !617, size: 64, offset: 2560)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !398, file: !55, line: 715, baseType: !284, size: 32, offset: 2624)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !398, file: !55, line: 716, baseType: !284, size: 32, offset: 2656)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !398, file: !55, line: 717, baseType: !284, size: 32, offset: 2688)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !398, file: !55, line: 719, baseType: !284, size: 32, offset: 2720)
!3758 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !55, line: 721, baseType: !3759, size: 64, offset: 2752)
!3759 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !55, line: 721, size: 64, elements: !3760)
!3760 = !{!3761, !3762}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3759, file: !55, line: 722, baseType: !1969, size: 64)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3759, file: !55, line: 723, baseType: !1007, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !398, file: !55, line: 725, baseType: !3764, size: 64, offset: 2816)
!3764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3765, size: 64)
!3765 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !55, line: 725, flags: DIFlagFwdDecl)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !398, file: !55, line: 726, baseType: !394, size: 1536, align: 64, offset: 2880)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !398, file: !55, line: 727, baseType: !251, size: 128, offset: 4416)
!3768 = !DIDerivedType(tag: DW_TAG_member, scope: !398, file: !55, line: 728, baseType: !3769, size: 64, offset: 4544)
!3769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !398, file: !55, line: 728, size: 64, elements: !3770)
!3770 = !{!3771, !3772, !3775, !3776}
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3769, file: !55, line: 729, baseType: !2374, size: 64)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3769, file: !55, line: 730, baseType: !3773, size: 64)
!3773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3774, size: 64)
!3774 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !55, line: 730, flags: DIFlagFwdDecl)
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3769, file: !55, line: 731, baseType: !213, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3769, file: !55, line: 732, baseType: !43, size: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !398, file: !55, line: 735, baseType: !467, size: 32, offset: 4608)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !398, file: !55, line: 738, baseType: !467, size: 32, offset: 4640)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !398, file: !55, line: 739, baseType: !3454, size: 64, offset: 4672)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !398, file: !55, line: 750, baseType: !198, size: 64, offset: 4736)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !394, file: !55, line: 474, baseType: !3712, size: 128, offset: 64)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !394, file: !55, line: 475, baseType: !1276, size: 320, offset: 192)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !394, file: !55, line: 476, baseType: !1128, size: 32, offset: 512)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !394, file: !55, line: 477, baseType: !284, size: 32, offset: 544)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !394, file: !55, line: 482, baseType: !1562, size: 128, offset: 576)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !394, file: !55, line: 483, baseType: !209, size: 64, offset: 704)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !394, file: !55, line: 484, baseType: !209, size: 64, offset: 768)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !394, file: !55, line: 485, baseType: !3789, size: 64, offset: 832)
!3789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3790, size: 64)
!3790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3791)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !55, line: 404, size: 1280, elements: !3792)
!3792 = !{!3793, !3797, !3867, !3871, !3875, !3881, !3886, !3890, !3895, !3899, !3903, !3907, !3908, !3912, !3916, !3920, !3924, !3928, !3935, !3936}
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3791, file: !55, line: 405, baseType: !3794, size: 64)
!3794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3795, size: 64)
!3795 = !DISubroutineType(types: !3796)
!3796 = !{!204, !2161, !1019}
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3791, file: !55, line: 406, baseType: !3798, size: 64, offset: 64)
!3798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3799, size: 64)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!204, !1704, !3801}
!3801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3802, size: 64)
!3802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !79, line: 293, size: 1536, elements: !3803)
!3803 = !{!3804, !3834, !3848}
!3804 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !79, line: 295, baseType: !3805, size: 512)
!3805 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !79, line: 295, size: 512, elements: !3806)
!3806 = !{!3807, !3833}
!3807 = !DIDerivedType(tag: DW_TAG_member, scope: !3805, file: !79, line: 296, baseType: !3808, size: 448)
!3808 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3805, file: !79, line: 296, size: 448, elements: !3809)
!3809 = !{!3810, !3811, !3820, !3821, !3822, !3831, !3832}
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3808, file: !79, line: 298, baseType: !209, size: 64)
!3811 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !79, line: 299, baseType: !3812, size: 128, offset: 64)
!3812 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !79, line: 299, size: 128, elements: !3813)
!3813 = !{!3814, !3815}
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3812, file: !79, line: 300, baseType: !251, size: 128)
!3815 = !DIDerivedType(tag: DW_TAG_member, scope: !3812, file: !79, line: 302, baseType: !3816, size: 128)
!3816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3812, file: !79, line: 302, size: 128, elements: !3817)
!3817 = !{!3818, !3819}
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3816, file: !79, line: 303, baseType: !198, size: 64)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3816, file: !79, line: 305, baseType: !43, size: 32, offset: 64)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3808, file: !79, line: 310, baseType: !393, size: 64, offset: 192)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3808, file: !79, line: 311, baseType: !209, size: 64, offset: 256)
!3822 = !DIDerivedType(tag: DW_TAG_member, scope: !3808, file: !79, line: 312, baseType: !3823, size: 64, offset: 320)
!3823 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3808, file: !79, line: 312, size: 64, elements: !3824)
!3824 = !{!3825, !3826}
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3823, file: !79, line: 313, baseType: !198, size: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3823, file: !79, line: 314, baseType: !3827, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !79, line: 257, baseType: !3828)
!3828 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !79, line: 255, size: 64, elements: !3829)
!3829 = !{!3830}
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3828, file: !79, line: 256, baseType: !209, size: 64)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3808, file: !79, line: 316, baseType: !284, size: 32, offset: 384)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3808, file: !79, line: 317, baseType: !284, size: 32, offset: 416)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3805, file: !79, line: 323, baseType: !2162, size: 512, align: 128)
!3834 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !79, line: 325, baseType: !3835, size: 512, offset: 512)
!3835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !79, line: 325, size: 512, elements: !3836)
!3836 = !{!3837, !3847}
!3837 = !DIDerivedType(tag: DW_TAG_member, scope: !3835, file: !79, line: 326, baseType: !3838, size: 320)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3835, file: !79, line: 326, size: 320, elements: !3839)
!3839 = !{!3840, !3841, !3842, !3843, !3844, !3845, !3846}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3838, file: !79, line: 327, baseType: !209, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3838, file: !79, line: 328, baseType: !209, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3838, file: !79, line: 329, baseType: !209, size: 64, offset: 128)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3838, file: !79, line: 331, baseType: !284, size: 32, offset: 192)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3838, file: !79, line: 332, baseType: !284, size: 32, offset: 224)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3838, file: !79, line: 333, baseType: !284, size: 32, offset: 256)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3838, file: !79, line: 335, baseType: !43, size: 32, offset: 288)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3835, file: !79, line: 339, baseType: !2162, size: 512, align: 128)
!3848 = !DIDerivedType(tag: DW_TAG_member, scope: !3802, file: !79, line: 341, baseType: !3849, size: 512, offset: 1024)
!3849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3802, file: !79, line: 341, size: 512, elements: !3850)
!3850 = !{!3851, !3860, !3866}
!3851 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !79, line: 342, baseType: !3852, size: 384)
!3852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3849, file: !79, line: 342, size: 384, elements: !3853)
!3853 = !{!3854, !3855, !3856, !3857, !3858, !3859}
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3852, file: !79, line: 343, baseType: !209, size: 64)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3852, file: !79, line: 344, baseType: !209, size: 64, offset: 64)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3852, file: !79, line: 346, baseType: !198, size: 64, offset: 128)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3852, file: !79, line: 347, baseType: !198, size: 64, offset: 192)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3852, file: !79, line: 348, baseType: !198, size: 64, offset: 256)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3852, file: !79, line: 349, baseType: !198, size: 64, offset: 320)
!3860 = !DIDerivedType(tag: DW_TAG_member, scope: !3849, file: !79, line: 352, baseType: !3861, size: 256)
!3861 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3849, file: !79, line: 352, size: 256, elements: !3862)
!3862 = !{!3863, !3864, !3865}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3861, file: !79, line: 353, baseType: !209, size: 64)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3861, file: !79, line: 354, baseType: !209, size: 64, offset: 64)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3861, file: !79, line: 356, baseType: !251, size: 128, offset: 128)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3849, file: !79, line: 359, baseType: !2162, size: 512, align: 128)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3791, file: !55, line: 409, baseType: !3868, size: 64, offset: 128)
!3868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3869, size: 64)
!3869 = !DISubroutineType(types: !3870)
!3870 = !{!204, !393, !1019}
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3791, file: !55, line: 412, baseType: !3872, size: 64, offset: 192)
!3872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3873, size: 64)
!3873 = !DISubroutineType(types: !3874)
!3874 = !{!218, !393, !3801}
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3791, file: !55, line: 414, baseType: !3876, size: 64, offset: 256)
!3876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3877, size: 64)
!3877 = !DISubroutineType(types: !3878)
!3878 = !{null, !3879}
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !55, line: 310, flags: DIFlagFwdDecl)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3791, file: !55, line: 416, baseType: !3882, size: 64, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DISubroutineType(types: !3884)
!3884 = !{!204, !1704, !393, !557, !43, !3885, !2389}
!3885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3791, file: !55, line: 419, baseType: !3887, size: 64, offset: 384)
!3887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3888, size: 64)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{!204, !1704, !393, !557, !43, !43, !2161, !198}
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3791, file: !55, line: 424, baseType: !3891, size: 64, offset: 448)
!3891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3892, size: 64)
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!3894, !393, !3894}
!3894 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !219, line: 131, baseType: !470)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3791, file: !55, line: 425, baseType: !3896, size: 64, offset: 512)
!3896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3897, size: 64)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3801, !365, !365}
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3791, file: !55, line: 426, baseType: !3900, size: 64, offset: 576)
!3900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3901, size: 64)
!3901 = !DISubroutineType(types: !3902)
!3902 = !{!218, !3801, !1128}
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3791, file: !55, line: 427, baseType: !3904, size: 64, offset: 640)
!3904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3905, size: 64)
!3905 = !DISubroutineType(types: !3906)
!3906 = !{null, !3801}
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3791, file: !55, line: 428, baseType: !1988, size: 64, offset: 704)
!3908 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3791, file: !55, line: 433, baseType: !3909, size: 64, offset: 768)
!3909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3910 = !DISubroutineType(types: !3911)
!3911 = !{!204, !393, !3801, !3801, !115}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3791, file: !55, line: 435, baseType: !3913, size: 64, offset: 832)
!3913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3914, size: 64)
!3914 = !DISubroutineType(types: !3915)
!3915 = !{!204, !3801}
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3791, file: !55, line: 436, baseType: !3917, size: 64, offset: 896)
!3917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3918, size: 64)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!218, !3801, !365, !365}
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3791, file: !55, line: 438, baseType: !3921, size: 64, offset: 960)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{null, !3801, !217, !217}
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3791, file: !55, line: 439, baseType: !3925, size: 64, offset: 1024)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DISubroutineType(types: !3927)
!3927 = !{!204, !393, !2161}
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3791, file: !55, line: 442, baseType: !3929, size: 64, offset: 1088)
!3929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3930, size: 64)
!3930 = !DISubroutineType(types: !3931)
!3931 = !{!204, !3932, !1704, !3934}
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3933, size: 64)
!3933 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !55, line: 66, flags: DIFlagFwdDecl)
!3934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3791, file: !55, line: 444, baseType: !2381, size: 64, offset: 1152)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3791, file: !55, line: 445, baseType: !3937, size: 64, offset: 1216)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!204, !1991, !2013}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !394, file: !55, line: 486, baseType: !209, size: 64, offset: 896)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !394, file: !55, line: 487, baseType: !1276, size: 320, offset: 960)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !394, file: !55, line: 488, baseType: !2424, size: 32, offset: 1280)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !394, file: !55, line: 489, baseType: !264, size: 32, offset: 1312)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !394, file: !55, line: 490, baseType: !251, size: 128, offset: 1344)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !394, file: !55, line: 491, baseType: !198, size: 64, offset: 1472)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !384, file: !229, line: 180, baseType: !3947, size: 64, offset: 320)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DISubroutineType(types: !3949)
!3949 = !{!238, !1704, !257, !383, !213, !557, !365}
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !384, file: !229, line: 182, baseType: !3947, size: 64, offset: 384)
!3951 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !384, file: !229, line: 184, baseType: !3952, size: 64, offset: 448)
!3952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3953, size: 64)
!3953 = !DISubroutineType(types: !3954)
!3954 = !{!204, !1704, !257, !383, !2052}
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !372, file: !229, line: 90, baseType: !3956, size: 64, offset: 192)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!3957 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !372, file: !229, line: 91, baseType: !3958, size: 64, offset: 256)
!3958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !345, file: !185, line: 120, baseType: !3960, size: 64, offset: 192)
!3960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3961, size: 64)
!3961 = !DISubroutineType(types: !3962)
!3962 = !{!3963, !315}
!3963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3964, size: 64)
!3964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3965)
!3965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !123, line: 39, size: 384, elements: !3966)
!3966 = !{!3967, !3968, !3972, !3976, !3982, !3986}
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3965, file: !123, line: 40, baseType: !122, size: 32)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3965, file: !123, line: 41, baseType: !3969, size: 64, offset: 64)
!3969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3970, size: 64)
!3970 = !DISubroutineType(types: !3971)
!3971 = !{!218}
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3965, file: !123, line: 42, baseType: !3973, size: 64, offset: 128)
!3973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3974, size: 64)
!3974 = !DISubroutineType(types: !3975)
!3975 = !{!198}
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3965, file: !123, line: 43, baseType: !3977, size: 64, offset: 192)
!3977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3978, size: 64)
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!2513, !3980}
!3980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3981, size: 64)
!3981 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !123, line: 19, flags: DIFlagFwdDecl)
!3982 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3965, file: !123, line: 44, baseType: !3983, size: 64, offset: 256)
!3983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3984, size: 64)
!3984 = !DISubroutineType(types: !3985)
!3985 = !{!2513}
!3986 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3965, file: !123, line: 45, baseType: !654, size: 64, offset: 320)
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !345, file: !185, line: 121, baseType: !3988, size: 64, offset: 256)
!3988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3989, size: 64)
!3989 = !DISubroutineType(types: !3990)
!3990 = !{!2513, !315}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !345, file: !185, line: 122, baseType: !3992, size: 64, offset: 320)
!3992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3993, size: 64)
!3993 = !DISubroutineType(types: !3994)
!3994 = !{null, !315, !3995, !3996}
!3995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!3996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !247, file: !185, line: 70, baseType: !3998, size: 64, offset: 384)
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3999, size: 64)
!3999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !572, line: 190, size: 1152, elements: !4000)
!4000 = !{!4001, !4002, !4003, !4004, !4005, !4006, !4007, !4008, !4092, !4093, !4094, !4095, !4096, !4099}
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3999, file: !572, line: 191, baseType: !284, size: 32)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3999, file: !572, line: 192, baseType: !284, size: 32, offset: 32)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3999, file: !572, line: 202, baseType: !3998, size: 64, offset: 64)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3999, file: !572, line: 203, baseType: !215, size: 64, offset: 128)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3999, file: !572, line: 205, baseType: !720, size: 192, align: 64, offset: 192)
!4006 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3999, file: !572, line: 207, baseType: !2513, size: 64, offset: 384)
!4007 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3999, file: !572, line: 208, baseType: !43, size: 32, offset: 448)
!4008 = !DIDerivedType(tag: DW_TAG_member, scope: !3999, file: !572, line: 209, baseType: !4009, size: 256, offset: 512)
!4009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3999, file: !572, line: 209, size: 256, elements: !4010)
!4010 = !{!4011, !4020, !4024}
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !4009, file: !572, line: 210, baseType: !4012, size: 256)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !572, line: 153, size: 256, elements: !4013)
!4013 = !{!4014, !4015, !4016, !4019}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !4012, file: !572, line: 154, baseType: !209, size: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !4012, file: !572, line: 156, baseType: !1565, size: 64, offset: 64)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !4012, file: !572, line: 162, baseType: !4017, size: 64, offset: 128)
!4017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4018, size: 64)
!4018 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !572, line: 162, flags: DIFlagFwdDecl)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !4012, file: !572, line: 167, baseType: !209, size: 64, offset: 192)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !4009, file: !572, line: 211, baseType: !4021, size: 64)
!4021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !572, line: 170, size: 64, elements: !4022)
!4022 = !{!4023}
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !4021, file: !572, line: 171, baseType: !3998, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !4009, file: !572, line: 212, baseType: !4025, size: 256)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !572, line: 174, size: 256, elements: !4026)
!4026 = !{!4027, !4087, !4090, !4091}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4025, file: !572, line: 175, baseType: !4028, size: 64)
!4028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4029, size: 64)
!4029 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4030)
!4030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !572, line: 271, size: 768, elements: !4031)
!4031 = !{!4032, !4052, !4056, !4060, !4064, !4068, !4072, !4076, !4077, !4078, !4079, !4083}
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4030, file: !572, line: 276, baseType: !4033, size: 64)
!4033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4034, size: 64)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!204, !4036}
!4036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4037, size: 64)
!4037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !572, line: 251, size: 1216, elements: !4038)
!4038 = !{!4039, !4040, !4041, !4042, !4043, !4044, !4045, !4046, !4047, !4048, !4049, !4050, !4051}
!4039 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !4037, file: !572, line: 253, baseType: !3998, size: 64)
!4040 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !4037, file: !572, line: 254, baseType: !1704, size: 64, offset: 64)
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !4037, file: !572, line: 255, baseType: !1056, size: 64, offset: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !4037, file: !572, line: 256, baseType: !198, size: 64, offset: 192)
!4043 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4037, file: !572, line: 259, baseType: !611, size: 256, offset: 256)
!4044 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !4037, file: !572, line: 260, baseType: !611, size: 256, offset: 512)
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4037, file: !572, line: 261, baseType: !204, size: 32, offset: 768)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4037, file: !572, line: 262, baseType: !251, size: 128, offset: 832)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !4037, file: !572, line: 263, baseType: !213, size: 64, offset: 960)
!4048 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4037, file: !572, line: 265, baseType: !365, size: 64, offset: 1024)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !4037, file: !572, line: 266, baseType: !218, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!4050 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !4037, file: !572, line: 267, baseType: !218, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !4037, file: !572, line: 268, baseType: !2097, size: 64, offset: 1152)
!4052 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4030, file: !572, line: 277, baseType: !4053, size: 64, offset: 64)
!4053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4054, size: 64)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{null, !4036}
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !4030, file: !572, line: 290, baseType: !4057, size: 64, offset: 128)
!4057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4058, size: 64)
!4058 = !DISubroutineType(types: !4059)
!4059 = !{!204, !1056, !198}
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !4030, file: !572, line: 292, baseType: !4061, size: 64, offset: 192)
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4062, size: 64)
!4062 = !DISubroutineType(types: !4063)
!4063 = !{!198, !1056, !1982}
!4064 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !4030, file: !572, line: 293, baseType: !4065, size: 64, offset: 256)
!4065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4066, size: 64)
!4066 = !DISubroutineType(types: !4067)
!4067 = !{!198, !1056, !198, !1982}
!4068 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !4030, file: !572, line: 294, baseType: !4069, size: 64, offset: 320)
!4069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !1056, !198}
!4072 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !4030, file: !572, line: 296, baseType: !4073, size: 64, offset: 384)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DISubroutineType(types: !4075)
!4075 = !{!238, !4036, !213, !365, !557}
!4076 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !4030, file: !572, line: 306, baseType: !365, size: 64, offset: 448)
!4077 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !4030, file: !572, line: 313, baseType: !218, size: 8, offset: 512)
!4078 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !4030, file: !572, line: 314, baseType: !4073, size: 64, offset: 576)
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !4030, file: !572, line: 317, baseType: !4080, size: 64, offset: 640)
!4080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4081, size: 64)
!4081 = !DISubroutineType(types: !4082)
!4082 = !{!2039, !4036, !2041}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !4030, file: !572, line: 320, baseType: !4084, size: 64, offset: 704)
!4084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4085, size: 64)
!4085 = !DISubroutineType(types: !4086)
!4086 = !{!204, !4036, !2052}
!4087 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !4025, file: !572, line: 176, baseType: !4088, size: 64, offset: 64)
!4088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4089, size: 64)
!4089 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !572, line: 35, flags: DIFlagFwdDecl)
!4090 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !4025, file: !572, line: 177, baseType: !557, size: 64, offset: 128)
!4091 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !4025, file: !572, line: 178, baseType: !3998, size: 64, offset: 192)
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3999, file: !572, line: 215, baseType: !198, size: 64, offset: 768)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3999, file: !572, line: 221, baseType: !470, size: 64, offset: 832)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3999, file: !572, line: 223, baseType: !202, size: 16, offset: 896)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3999, file: !572, line: 224, baseType: !233, size: 16, offset: 912)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3999, file: !572, line: 225, baseType: !4097, size: 64, offset: 960)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4098, size: 64)
!4098 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !572, line: 36, flags: DIFlagFwdDecl)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3999, file: !572, line: 227, baseType: !826, size: 128, align: 64, offset: 1024)
!4100 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !247, file: !185, line: 71, baseType: !4101, size: 32, offset: 448)
!4101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !4102, line: 19, size: 32, elements: !4103)
!4102 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!4103 = !{!4104}
!4104 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4101, file: !4102, line: 20, baseType: !1396, size: 32)
!4105 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !247, file: !185, line: 73, baseType: !43, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!4106 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !247, file: !185, line: 74, baseType: !43, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !247, file: !185, line: 75, baseType: !43, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !247, file: !185, line: 76, baseType: !43, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !247, file: !185, line: 77, baseType: !43, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !244, file: !48, line: 47, baseType: !586, size: 64, offset: 512)
!4111 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !244, file: !48, line: 48, baseType: !257, size: 64, offset: 576)
!4112 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !244, file: !48, line: 49, baseType: !4113, size: 64, offset: 640)
!4113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4114, size: 64)
!4114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !2, line: 548, size: 384, elements: !4115)
!4115 = !{!4116, !4117, !4118}
!4116 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !4114, file: !2, line: 550, baseType: !43, size: 32)
!4117 = !DIDerivedType(tag: DW_TAG_member, name: "grp", scope: !4114, file: !2, line: 551, baseType: !372, size: 320, offset: 64)
!4118 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !4114, file: !2, line: 552, baseType: !4119, offset: 384)
!4119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4120, elements: !1764)
!4120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "param_attribute", file: !2, line: 542, size: 512, elements: !4121)
!4121 = !{!4122, !4123}
!4122 = !DIDerivedType(tag: DW_TAG_member, name: "mattr", scope: !4120, file: !2, line: 544, baseType: !225, size: 448)
!4123 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !4120, file: !2, line: 545, baseType: !647, size: 64, offset: 448)
!4124 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !244, file: !48, line: 50, baseType: !2649, size: 64, offset: 704)
!4125 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !225, file: !48, line: 57, baseType: !4126, size: 64, offset: 192)
!4126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4127, size: 64)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!238, !242, !243, !215, !365}
!4129 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !225, file: !48, line: 59, baseType: !4130, size: 64, offset: 256)
!4130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4131, size: 64)
!4131 = !DISubroutineType(types: !4132)
!4132 = !{null, !586, !215}
!4133 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !225, file: !48, line: 60, baseType: !4134, size: 64, offset: 320)
!4134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4135, size: 64)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!204, !586}
!4137 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !225, file: !48, line: 61, baseType: !4138, size: 64, offset: 384)
!4138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4139, size: 64)
!4139 = !DISubroutineType(types: !4140)
!4140 = !{null, !586}
!4141 = !DIDerivedType(tag: DW_TAG_member, name: "module_name", scope: !222, file: !48, line: 66, baseType: !215, size: 64, offset: 448)
!4142 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !222, file: !48, line: 67, baseType: !215, size: 64, offset: 512)
!4143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4145, size: 64)
!4145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmalloced_param", file: !2, line: 40, size: 128, elements: !4146)
!4146 = !{!4147, !4148}
!4147 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !4145, file: !2, line: 41, baseType: !251, size: 128)
!4148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !4145, file: !2, line: 42, baseType: !3088, offset: 128)
!4149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4150, size: 64)
!4150 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !254)
!4151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4120, size: 64)
!4152 = !{!0, !7, !12, !17, !22, !27, !32, !37, !4153, !4155, !4157, !4159, !4164, !4166, !4168, !4170, !4172, !4174, !4176, !4178, !4180, !4182, !4185, !4187, !4189, !4191, !4193, !4195, !4197, !4199, !4201, !4203, !4205, !4207, !4209, !4211, !4213, !4215, !4217, !4219, !4221, !4223, !4225, !4227, !4229, !4231, !4233, !4236, !4238, !4240, !4242, !4244, !4246, !4251, !4253, !4255, !4257, !4259, !4261, !4263, !4266, !4268, !4270, !4272, !4274, !4276, !4278, !4280, !4282, !4284, !4286, !4288, !4290, !4292, !4294, !4296, !4298, !4300, !4302, !4304, !4306, !4308, !4310, !4312, !4314, !4316, !4318, !4320, !4322, !4327, !4329, !4331, !4336, !4338, !4340, !4345, !4347, !4349, !4354, !4356, !4358, !4360, !4362, !4364, !4369}
!4153 = !DIGlobalVariableExpression(var: !4154, expr: !DIExpression())
!4154 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_byte289", scope: !39, file: !2, line: 237, type: !198, isLocal: true, isDefinition: true)
!4155 = !DIGlobalVariableExpression(var: !4156, expr: !DIExpression())
!4156 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_byte290", scope: !39, file: !2, line: 237, type: !198, isLocal: true, isDefinition: true)
!4157 = !DIGlobalVariableExpression(var: !4158, expr: !DIExpression())
!4158 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_byte291", scope: !39, file: !2, line: 237, type: !198, isLocal: true, isDefinition: true)
!4159 = !DIGlobalVariableExpression(var: !4160, expr: !DIExpression())
!4160 = distinct !DIGlobalVariable(scope: null, file: !2, line: 238, type: !4161, isLocal: true, isDefinition: true)
!4161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !4162)
!4162 = !{!4163}
!4163 = !DISubrange(count: 5)
!4164 = !DIGlobalVariableExpression(var: !4165, expr: !DIExpression())
!4165 = distinct !DIGlobalVariable(name: "param_ops_short", scope: !39, file: !2, line: 238, type: !639, isLocal: false, isDefinition: true)
!4166 = !DIGlobalVariableExpression(var: !4167, expr: !DIExpression())
!4167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_short292", scope: !39, file: !2, line: 238, type: !198, isLocal: true, isDefinition: true)
!4168 = !DIGlobalVariableExpression(var: !4169, expr: !DIExpression())
!4169 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_short293", scope: !39, file: !2, line: 238, type: !198, isLocal: true, isDefinition: true)
!4170 = !DIGlobalVariableExpression(var: !4171, expr: !DIExpression())
!4171 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_short294", scope: !39, file: !2, line: 238, type: !198, isLocal: true, isDefinition: true)
!4172 = !DIGlobalVariableExpression(var: !4173, expr: !DIExpression())
!4173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !4161, isLocal: true, isDefinition: true)
!4174 = !DIGlobalVariableExpression(var: !4175, expr: !DIExpression())
!4175 = distinct !DIGlobalVariable(name: "param_ops_ushort", scope: !39, file: !2, line: 239, type: !639, isLocal: false, isDefinition: true)
!4176 = !DIGlobalVariableExpression(var: !4177, expr: !DIExpression())
!4177 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_ushort295", scope: !39, file: !2, line: 239, type: !198, isLocal: true, isDefinition: true)
!4178 = !DIGlobalVariableExpression(var: !4179, expr: !DIExpression())
!4179 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_ushort296", scope: !39, file: !2, line: 239, type: !198, isLocal: true, isDefinition: true)
!4180 = !DIGlobalVariableExpression(var: !4181, expr: !DIExpression())
!4181 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_ushort297", scope: !39, file: !2, line: 239, type: !198, isLocal: true, isDefinition: true)
!4182 = !DIGlobalVariableExpression(var: !4183, expr: !DIExpression())
!4183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !4184, isLocal: true, isDefinition: true)
!4184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !836)
!4185 = !DIGlobalVariableExpression(var: !4186, expr: !DIExpression())
!4186 = distinct !DIGlobalVariable(name: "param_ops_int", scope: !39, file: !2, line: 240, type: !639, isLocal: false, isDefinition: true)
!4187 = !DIGlobalVariableExpression(var: !4188, expr: !DIExpression())
!4188 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_int298", scope: !39, file: !2, line: 240, type: !198, isLocal: true, isDefinition: true)
!4189 = !DIGlobalVariableExpression(var: !4190, expr: !DIExpression())
!4190 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_int299", scope: !39, file: !2, line: 240, type: !198, isLocal: true, isDefinition: true)
!4191 = !DIGlobalVariableExpression(var: !4192, expr: !DIExpression())
!4192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_int300", scope: !39, file: !2, line: 240, type: !198, isLocal: true, isDefinition: true)
!4193 = !DIGlobalVariableExpression(var: !4194, expr: !DIExpression())
!4194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !4184, isLocal: true, isDefinition: true)
!4195 = !DIGlobalVariableExpression(var: !4196, expr: !DIExpression())
!4196 = distinct !DIGlobalVariable(name: "param_ops_uint", scope: !39, file: !2, line: 241, type: !639, isLocal: false, isDefinition: true)
!4197 = !DIGlobalVariableExpression(var: !4198, expr: !DIExpression())
!4198 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_uint301", scope: !39, file: !2, line: 241, type: !198, isLocal: true, isDefinition: true)
!4199 = !DIGlobalVariableExpression(var: !4200, expr: !DIExpression())
!4200 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_uint302", scope: !39, file: !2, line: 241, type: !198, isLocal: true, isDefinition: true)
!4201 = !DIGlobalVariableExpression(var: !4202, expr: !DIExpression())
!4202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_uint303", scope: !39, file: !2, line: 241, type: !198, isLocal: true, isDefinition: true)
!4203 = !DIGlobalVariableExpression(var: !4204, expr: !DIExpression())
!4204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 242, type: !4161, isLocal: true, isDefinition: true)
!4205 = !DIGlobalVariableExpression(var: !4206, expr: !DIExpression())
!4206 = distinct !DIGlobalVariable(name: "param_ops_long", scope: !39, file: !2, line: 242, type: !639, isLocal: false, isDefinition: true)
!4207 = !DIGlobalVariableExpression(var: !4208, expr: !DIExpression())
!4208 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_long304", scope: !39, file: !2, line: 242, type: !198, isLocal: true, isDefinition: true)
!4209 = !DIGlobalVariableExpression(var: !4210, expr: !DIExpression())
!4210 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_long305", scope: !39, file: !2, line: 242, type: !198, isLocal: true, isDefinition: true)
!4211 = !DIGlobalVariableExpression(var: !4212, expr: !DIExpression())
!4212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_long306", scope: !39, file: !2, line: 242, type: !198, isLocal: true, isDefinition: true)
!4213 = !DIGlobalVariableExpression(var: !4214, expr: !DIExpression())
!4214 = distinct !DIGlobalVariable(scope: null, file: !2, line: 243, type: !4161, isLocal: true, isDefinition: true)
!4215 = !DIGlobalVariableExpression(var: !4216, expr: !DIExpression())
!4216 = distinct !DIGlobalVariable(name: "param_ops_ulong", scope: !39, file: !2, line: 243, type: !639, isLocal: false, isDefinition: true)
!4217 = !DIGlobalVariableExpression(var: !4218, expr: !DIExpression())
!4218 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_ulong307", scope: !39, file: !2, line: 243, type: !198, isLocal: true, isDefinition: true)
!4219 = !DIGlobalVariableExpression(var: !4220, expr: !DIExpression())
!4220 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_ulong308", scope: !39, file: !2, line: 243, type: !198, isLocal: true, isDefinition: true)
!4221 = !DIGlobalVariableExpression(var: !4222, expr: !DIExpression())
!4222 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_ulong309", scope: !39, file: !2, line: 243, type: !198, isLocal: true, isDefinition: true)
!4223 = !DIGlobalVariableExpression(var: !4224, expr: !DIExpression())
!4224 = distinct !DIGlobalVariable(scope: null, file: !2, line: 244, type: !34, isLocal: true, isDefinition: true)
!4225 = !DIGlobalVariableExpression(var: !4226, expr: !DIExpression())
!4226 = distinct !DIGlobalVariable(name: "param_ops_ullong", scope: !39, file: !2, line: 244, type: !639, isLocal: false, isDefinition: true)
!4227 = !DIGlobalVariableExpression(var: !4228, expr: !DIExpression())
!4228 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_ullong310", scope: !39, file: !2, line: 244, type: !198, isLocal: true, isDefinition: true)
!4229 = !DIGlobalVariableExpression(var: !4230, expr: !DIExpression())
!4230 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_ullong311", scope: !39, file: !2, line: 244, type: !198, isLocal: true, isDefinition: true)
!4231 = !DIGlobalVariableExpression(var: !4232, expr: !DIExpression())
!4232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_ullong312", scope: !39, file: !2, line: 244, type: !198, isLocal: true, isDefinition: true)
!4233 = !DIGlobalVariableExpression(var: !4234, expr: !DIExpression())
!4234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 245, type: !4235, isLocal: true, isDefinition: true)
!4235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !729)
!4236 = !DIGlobalVariableExpression(var: !4237, expr: !DIExpression())
!4237 = distinct !DIGlobalVariable(name: "param_ops_hexint", scope: !39, file: !2, line: 245, type: !639, isLocal: false, isDefinition: true)
!4238 = !DIGlobalVariableExpression(var: !4239, expr: !DIExpression())
!4239 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_hexint313", scope: !39, file: !2, line: 245, type: !198, isLocal: true, isDefinition: true)
!4240 = !DIGlobalVariableExpression(var: !4241, expr: !DIExpression())
!4241 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_hexint314", scope: !39, file: !2, line: 245, type: !198, isLocal: true, isDefinition: true)
!4242 = !DIGlobalVariableExpression(var: !4243, expr: !DIExpression())
!4243 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_hexint315", scope: !39, file: !2, line: 245, type: !198, isLocal: true, isDefinition: true)
!4244 = !DIGlobalVariableExpression(var: !4245, expr: !DIExpression())
!4245 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_uint_minmax316", scope: !39, file: !2, line: 263, type: !198, isLocal: true, isDefinition: true)
!4246 = !DIGlobalVariableExpression(var: !4247, expr: !DIExpression())
!4247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 268, type: !4248, isLocal: true, isDefinition: true)
!4248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !4249)
!4249 = !{!4250}
!4250 = !DISubrange(count: 33)
!4251 = !DIGlobalVariableExpression(var: !4252, expr: !DIExpression())
!4252 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_charp317", scope: !39, file: !2, line: 286, type: !198, isLocal: true, isDefinition: true)
!4253 = !DIGlobalVariableExpression(var: !4254, expr: !DIExpression())
!4254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 290, type: !4184, isLocal: true, isDefinition: true)
!4255 = !DIGlobalVariableExpression(var: !4256, expr: !DIExpression())
!4256 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_charp318", scope: !39, file: !2, line: 292, type: !198, isLocal: true, isDefinition: true)
!4257 = !DIGlobalVariableExpression(var: !4258, expr: !DIExpression())
!4258 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_free_charp319", scope: !39, file: !2, line: 298, type: !198, isLocal: true, isDefinition: true)
!4259 = !DIGlobalVariableExpression(var: !4260, expr: !DIExpression())
!4260 = distinct !DIGlobalVariable(name: "param_ops_charp", scope: !39, file: !2, line: 300, type: !639, isLocal: false, isDefinition: true)
!4261 = !DIGlobalVariableExpression(var: !4262, expr: !DIExpression())
!4262 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_charp320", scope: !39, file: !2, line: 305, type: !198, isLocal: true, isDefinition: true)
!4263 = !DIGlobalVariableExpression(var: !4264, expr: !DIExpression())
!4264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !4265, isLocal: true, isDefinition: true)
!4265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !727)
!4266 = !DIGlobalVariableExpression(var: !4267, expr: !DIExpression())
!4267 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_bool321", scope: !39, file: !2, line: 316, type: !198, isLocal: true, isDefinition: true)
!4268 = !DIGlobalVariableExpression(var: !4269, expr: !DIExpression())
!4269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 321, type: !4184, isLocal: true, isDefinition: true)
!4270 = !DIGlobalVariableExpression(var: !4271, expr: !DIExpression())
!4271 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_bool322", scope: !39, file: !2, line: 323, type: !198, isLocal: true, isDefinition: true)
!4272 = !DIGlobalVariableExpression(var: !4273, expr: !DIExpression())
!4273 = distinct !DIGlobalVariable(name: "param_ops_bool", scope: !39, file: !2, line: 325, type: !639, isLocal: false, isDefinition: true)
!4274 = !DIGlobalVariableExpression(var: !4275, expr: !DIExpression())
!4275 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_bool323", scope: !39, file: !2, line: 330, type: !198, isLocal: true, isDefinition: true)
!4276 = !DIGlobalVariableExpression(var: !4277, expr: !DIExpression())
!4277 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_bool_enable_only324", scope: !39, file: !2, line: 354, type: !198, isLocal: true, isDefinition: true)
!4278 = !DIGlobalVariableExpression(var: !4279, expr: !DIExpression())
!4279 = distinct !DIGlobalVariable(name: "param_ops_bool_enable_only", scope: !39, file: !2, line: 356, type: !639, isLocal: false, isDefinition: true)
!4280 = !DIGlobalVariableExpression(var: !4281, expr: !DIExpression())
!4281 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_bool_enable_only325", scope: !39, file: !2, line: 361, type: !198, isLocal: true, isDefinition: true)
!4282 = !DIGlobalVariableExpression(var: !4283, expr: !DIExpression())
!4283 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_invbool326", scope: !39, file: !2, line: 376, type: !198, isLocal: true, isDefinition: true)
!4284 = !DIGlobalVariableExpression(var: !4285, expr: !DIExpression())
!4285 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_invbool327", scope: !39, file: !2, line: 382, type: !198, isLocal: true, isDefinition: true)
!4286 = !DIGlobalVariableExpression(var: !4287, expr: !DIExpression())
!4287 = distinct !DIGlobalVariable(name: "param_ops_invbool", scope: !39, file: !2, line: 384, type: !639, isLocal: false, isDefinition: true)
!4288 = !DIGlobalVariableExpression(var: !4289, expr: !DIExpression())
!4289 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_invbool328", scope: !39, file: !2, line: 388, type: !198, isLocal: true, isDefinition: true)
!4290 = !DIGlobalVariableExpression(var: !4291, expr: !DIExpression())
!4291 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_bint329", scope: !39, file: !2, line: 404, type: !198, isLocal: true, isDefinition: true)
!4292 = !DIGlobalVariableExpression(var: !4293, expr: !DIExpression())
!4293 = distinct !DIGlobalVariable(name: "param_ops_bint", scope: !39, file: !2, line: 406, type: !639, isLocal: false, isDefinition: true)
!4294 = !DIGlobalVariableExpression(var: !4295, expr: !DIExpression())
!4295 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_bint330", scope: !39, file: !2, line: 411, type: !198, isLocal: true, isDefinition: true)
!4296 = !DIGlobalVariableExpression(var: !4297, expr: !DIExpression())
!4297 = distinct !DIGlobalVariable(name: "param_array_ops", scope: !39, file: !2, line: 504, type: !639, isLocal: false, isDefinition: true)
!4298 = !DIGlobalVariableExpression(var: !4299, expr: !DIExpression())
!4299 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_array_ops331", scope: !39, file: !2, line: 509, type: !198, isLocal: true, isDefinition: true)
!4300 = !DIGlobalVariableExpression(var: !4301, expr: !DIExpression())
!4301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !29, isLocal: true, isDefinition: true)
!4302 = !DIGlobalVariableExpression(var: !4303, expr: !DIExpression())
!4303 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_set_copystring332", scope: !39, file: !2, line: 523, type: !198, isLocal: true, isDefinition: true)
!4304 = !DIGlobalVariableExpression(var: !4305, expr: !DIExpression())
!4305 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_get_string333", scope: !39, file: !2, line: 530, type: !198, isLocal: true, isDefinition: true)
!4306 = !DIGlobalVariableExpression(var: !4307, expr: !DIExpression())
!4307 = distinct !DIGlobalVariable(name: "param_ops_string", scope: !39, file: !2, line: 532, type: !639, isLocal: false, isDefinition: true)
!4308 = !DIGlobalVariableExpression(var: !4309, expr: !DIExpression())
!4309 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_param_ops_string334", scope: !39, file: !2, line: 536, type: !198, isLocal: true, isDefinition: true)
!4310 = !DIGlobalVariableExpression(var: !4311, expr: !DIExpression())
!4311 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_param_lock335", scope: !39, file: !2, line: 613, type: !198, isLocal: true, isDefinition: true)
!4312 = !DIGlobalVariableExpression(var: !4313, expr: !DIExpression())
!4313 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_kernel_param_unlock336", scope: !39, file: !2, line: 614, type: !198, isLocal: true, isDefinition: true)
!4314 = !DIGlobalVariableExpression(var: !4315, expr: !DIExpression())
!4315 = distinct !DIGlobalVariable(name: "module_ktype", scope: !39, file: !2, line: 951, type: !344, isLocal: false, isDefinition: true)
!4316 = !DIGlobalVariableExpression(var: !4317, expr: !DIExpression())
!4317 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_params__337_974_param_sysfs_init4338", scope: !39, file: !2, line: 974, type: !198, isLocal: true, isDefinition: true)
!4318 = !DIGlobalVariableExpression(var: !4319, expr: !DIExpression())
!4319 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_params__339_990_param_sysfs_builtin_init7340", scope: !39, file: !2, line: 990, type: !198, isLocal: true, isDefinition: true)
!4320 = !DIGlobalVariableExpression(var: !4321, expr: !DIExpression())
!4321 = distinct !DIGlobalVariable(name: "module_kset", scope: !39, file: !2, line: 943, type: !259, isLocal: false, isDefinition: true)
!4322 = !DIGlobalVariableExpression(var: !4323, expr: !DIExpression())
!4323 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !4324, isLocal: true, isDefinition: true)
!4324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !4325)
!4325 = !{!4326}
!4326 = !DISubrange(count: 49)
!4327 = !DIGlobalVariableExpression(var: !4328, expr: !DIExpression())
!4328 = distinct !DIGlobalVariable(name: "kmalloced_params_lock", scope: !39, file: !2, line: 45, type: !264, isLocal: true, isDefinition: true)
!4329 = !DIGlobalVariableExpression(var: !4330, expr: !DIExpression())
!4330 = distinct !DIGlobalVariable(name: "kmalloced_params", scope: !39, file: !2, line: 44, type: !251, isLocal: true, isDefinition: true)
!4331 = !DIGlobalVariableExpression(var: !4332, expr: !DIExpression())
!4332 = distinct !DIGlobalVariable(scope: null, file: !175, line: 480, type: !4333, isLocal: true, isDefinition: true)
!4333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !4334)
!4334 = !{!4335}
!4335 = !DISubrange(count: 21)
!4336 = !DIGlobalVariableExpression(var: !4337, expr: !DIExpression())
!4337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 438, type: !9, isLocal: true, isDefinition: true)
!4338 = !DIGlobalVariableExpression(var: !4339, expr: !DIExpression())
!4339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 441, type: !4265, isLocal: true, isDefinition: true)
!4340 = !DIGlobalVariableExpression(var: !4341, expr: !DIExpression())
!4341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !4342, isLocal: true, isDefinition: true)
!4342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !4343)
!4343 = !{!4344}
!4344 = !DISubrange(count: 35)
!4345 = !DIGlobalVariableExpression(var: !4346, expr: !DIExpression())
!4346 = distinct !DIGlobalVariable(scope: null, file: !2, line: 31, type: !2691, isLocal: true, isDefinition: true)
!4347 = !DIGlobalVariableExpression(var: !4348, expr: !DIExpression())
!4348 = distinct !DIGlobalVariable(name: "param_lock", scope: !39, file: !2, line: 20, type: !611, isLocal: true, isDefinition: true)
!4349 = !DIGlobalVariableExpression(var: !4350, expr: !DIExpression())
!4350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 642, type: !4351, isLocal: true, isDefinition: true)
!4351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !4352)
!4352 = !{!4353}
!4353 = !DISubrange(count: 11)
!4354 = !DIGlobalVariableExpression(var: !4355, expr: !DIExpression())
!4355 = distinct !DIGlobalVariable(name: "module_sysfs_ops", scope: !39, file: !2, line: 925, type: !353, isLocal: true, isDefinition: true)
!4356 = !DIGlobalVariableExpression(var: !4357, expr: !DIExpression())
!4357 = distinct !DIGlobalVariable(scope: null, file: !2, line: 965, type: !4235, isLocal: true, isDefinition: true)
!4358 = !DIGlobalVariableExpression(var: !4359, expr: !DIExpression())
!4359 = distinct !DIGlobalVariable(scope: null, file: !2, line: 967, type: !3457, isLocal: true, isDefinition: true)
!4360 = !DIGlobalVariableExpression(var: !4361, expr: !DIExpression())
!4361 = distinct !DIGlobalVariable(name: "module_uevent_ops", scope: !39, file: !2, line: 939, type: !307, isLocal: true, isDefinition: true)
!4362 = !DIGlobalVariableExpression(var: !4363, expr: !DIExpression())
!4363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 778, type: !3, isLocal: true, isDefinition: true)
!4364 = !DIGlobalVariableExpression(var: !4365, expr: !DIExpression())
!4365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !4366, isLocal: true, isDefinition: true)
!4366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 576, elements: !4367)
!4367 = !{!4368}
!4368 = !DISubrange(count: 72)
!4369 = !DIGlobalVariableExpression(var: !4370, expr: !DIExpression())
!4370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 846, type: !4235, isLocal: true, isDefinition: true)
!4371 = !{i32 7, !"Dwarf Version", i32 5}
!4372 = !{i32 2, !"Debug Info Version", i32 3}
!4373 = !{i32 1, !"wchar_size", i32 2}
!4374 = !{i32 8, !"cf-protection-branch", i32 1}
!4375 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4376 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4377 = !{i32 1, !"Code Model", i32 2}
!4378 = !{i32 1, !"override-stack-alignment", i32 8}
!4379 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4380 = distinct !DISubprogram(name: "parameqn", scope: !2, file: !2, line: 85, type: !4381, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4383)
!4381 = !DISubroutineType(types: !4382)
!4382 = !{!218, !215, !215, !365}
!4383 = !{!4384, !4385, !4386, !4387}
!4384 = !DILocalVariable(name: "a", arg: 1, scope: !4380, file: !2, line: 85, type: !215)
!4385 = !DILocalVariable(name: "b", arg: 2, scope: !4380, file: !2, line: 85, type: !215)
!4386 = !DILocalVariable(name: "n", arg: 3, scope: !4380, file: !2, line: 85, type: !365)
!4387 = !DILocalVariable(name: "i", scope: !4380, file: !2, line: 87, type: !365)
!4388 = !DILocation(line: 85, column: 27, scope: !4380)
!4389 = !DILocation(line: 85, column: 42, scope: !4380)
!4390 = !DILocation(line: 85, column: 52, scope: !4380)
!4391 = !DILocation(line: 87, column: 2, scope: !4380)
!4392 = !DILocation(line: 87, column: 9, scope: !4380)
!4393 = !DILocation(line: 89, column: 9, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !4380, file: !2, line: 89, column: 2)
!4395 = !DILocation(line: 89, column: 7, scope: !4394)
!4396 = !DILocation(line: 89, column: 14, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !2, line: 89, column: 2)
!4398 = !DILocation(line: 89, column: 18, scope: !4397)
!4399 = !DILocation(line: 89, column: 16, scope: !4397)
!4400 = !DILocation(line: 89, column: 2, scope: !4394)
!4401 = !DILocation(line: 90, column: 23, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !2, line: 90, column: 7)
!4403 = distinct !DILexicalBlock(scope: !4397, file: !2, line: 89, column: 26)
!4404 = !DILocation(line: 90, column: 25, scope: !4402)
!4405 = !DILocation(line: 90, column: 7, scope: !4402)
!4406 = !DILocation(line: 90, column: 48, scope: !4402)
!4407 = !DILocation(line: 90, column: 50, scope: !4402)
!4408 = !DILocation(line: 90, column: 32, scope: !4402)
!4409 = !DILocation(line: 90, column: 29, scope: !4402)
!4410 = !DILocation(line: 90, column: 7, scope: !4403)
!4411 = !DILocation(line: 91, column: 4, scope: !4402)
!4412 = !DILocation(line: 92, column: 2, scope: !4403)
!4413 = !DILocation(line: 89, column: 22, scope: !4397)
!4414 = !DILocation(line: 89, column: 2, scope: !4397)
!4415 = distinct !{!4415, !4400, !4416, !4417, !4418}
!4416 = !DILocation(line: 92, column: 2, scope: !4394)
!4417 = !{!"llvm.loop.mustprogress"}
!4418 = !{!"llvm.loop.unroll.disable"}
!4419 = !DILocation(line: 93, column: 2, scope: !4380)
!4420 = !DILocation(line: 94, column: 1, scope: !4380)
!4421 = distinct !DISubprogram(name: "dash2underscore", scope: !2, file: !2, line: 78, type: !4422, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4424)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!4, !4}
!4424 = !{!4425}
!4425 = !DILocalVariable(name: "c", arg: 1, scope: !4421, file: !2, line: 78, type: !4)
!4426 = !DILocation(line: 78, column: 34, scope: !4421)
!4427 = !DILocation(line: 80, column: 6, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4421, file: !2, line: 80, column: 6)
!4429 = !DILocation(line: 80, column: 8, scope: !4428)
!4430 = !DILocation(line: 80, column: 6, scope: !4421)
!4431 = !DILocation(line: 81, column: 3, scope: !4428)
!4432 = !DILocation(line: 82, column: 9, scope: !4421)
!4433 = !DILocation(line: 82, column: 2, scope: !4421)
!4434 = !DILocation(line: 83, column: 1, scope: !4421)
!4435 = distinct !DISubprogram(name: "parameq", scope: !2, file: !2, line: 96, type: !4436, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!218, !215, !215}
!4438 = !{!4439, !4440}
!4439 = !DILocalVariable(name: "a", arg: 1, scope: !4435, file: !2, line: 96, type: !215)
!4440 = !DILocalVariable(name: "b", arg: 2, scope: !4435, file: !2, line: 96, type: !215)
!4441 = !DILocation(line: 96, column: 26, scope: !4435)
!4442 = !DILocation(line: 96, column: 41, scope: !4435)
!4443 = !DILocation(line: 98, column: 18, scope: !4435)
!4444 = !DILocation(line: 98, column: 21, scope: !4435)
!4445 = !DILocation(line: 98, column: 31, scope: !4435)
!4446 = !DILocation(line: 98, column: 24, scope: !4435)
!4447 = !DILocation(line: 98, column: 33, scope: !4435)
!4448 = !DILocation(line: 98, column: 9, scope: !4435)
!4449 = !DILocation(line: 98, column: 2, scope: !4435)
!4450 = !DISubprogram(name: "strlen", scope: !4451, file: !4451, line: 128, type: !4452, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4451 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4452 = !DISubroutineType(types: !4453)
!4453 = !{!209, !215}
!4454 = distinct !DISubprogram(name: "parse_args", scope: !2, file: !2, line: 162, type: !4455, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4460)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{!213, !215, !213, !647, !43, !743, !743, !198, !4457}
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!204, !213, !213, !215, !198}
!4460 = !{!4461, !4462, !4463, !4464, !4465, !4466, !4467, !4468, !4469, !4470, !4471, !4472, !4474, !4475, !4477, !4480, !4481, !4484, !4485, !4488, !4491, !4492, !4495}
!4461 = !DILocalVariable(name: "doing", arg: 1, scope: !4454, file: !2, line: 162, type: !215)
!4462 = !DILocalVariable(name: "args", arg: 2, scope: !4454, file: !2, line: 163, type: !213)
!4463 = !DILocalVariable(name: "params", arg: 3, scope: !4454, file: !2, line: 164, type: !647)
!4464 = !DILocalVariable(name: "num", arg: 4, scope: !4454, file: !2, line: 165, type: !43)
!4465 = !DILocalVariable(name: "min_level", arg: 5, scope: !4454, file: !2, line: 166, type: !743)
!4466 = !DILocalVariable(name: "max_level", arg: 6, scope: !4454, file: !2, line: 167, type: !743)
!4467 = !DILocalVariable(name: "arg", arg: 7, scope: !4454, file: !2, line: 168, type: !198)
!4468 = !DILocalVariable(name: "unknown", arg: 8, scope: !4454, file: !2, line: 169, type: !4457)
!4469 = !DILocalVariable(name: "param", scope: !4454, file: !2, line: 172, type: !213)
!4470 = !DILocalVariable(name: "val", scope: !4454, file: !2, line: 172, type: !213)
!4471 = !DILocalVariable(name: "err", scope: !4454, file: !2, line: 172, type: !213)
!4472 = !DILocalVariable(name: "ret", scope: !4473, file: !2, line: 181, type: !204)
!4473 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 180, column: 16)
!4474 = !DILocalVariable(name: "irq_was_disabled", scope: !4473, file: !2, line: 182, type: !204)
!4475 = !DILocalVariable(name: "_flags", scope: !4476, file: !2, line: 188, type: !209)
!4476 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 188, column: 22)
!4477 = !DILocalVariable(name: "__dummy", scope: !4478, file: !2, line: 188, type: !209)
!4478 = distinct !DILexicalBlock(scope: !4479, file: !2, line: 188, column: 22)
!4479 = distinct !DILexicalBlock(scope: !4476, file: !2, line: 188, column: 22)
!4480 = !DILocalVariable(name: "__dummy2", scope: !4478, file: !2, line: 188, type: !209)
!4481 = !DILocalVariable(name: "__dummy", scope: !4482, file: !2, line: 188, type: !209)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !2, line: 188, column: 22)
!4483 = distinct !DILexicalBlock(scope: !4476, file: !2, line: 188, column: 22)
!4484 = !DILocalVariable(name: "__dummy2", scope: !4482, file: !2, line: 188, type: !209)
!4485 = !DILocalVariable(name: "_flags", scope: !4486, file: !2, line: 191, type: !209)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 191, column: 28)
!4487 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 191, column: 7)
!4488 = !DILocalVariable(name: "__dummy", scope: !4489, file: !2, line: 191, type: !209)
!4489 = distinct !DILexicalBlock(scope: !4490, file: !2, line: 191, column: 28)
!4490 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 191, column: 28)
!4491 = !DILocalVariable(name: "__dummy2", scope: !4489, file: !2, line: 191, type: !209)
!4492 = !DILocalVariable(name: "__dummy", scope: !4493, file: !2, line: 191, type: !209)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !2, line: 191, column: 28)
!4494 = distinct !DILexicalBlock(scope: !4486, file: !2, line: 191, column: 28)
!4495 = !DILocalVariable(name: "__dummy2", scope: !4493, file: !2, line: 191, type: !209)
!4496 = !DILocation(line: 162, column: 30, scope: !4454)
!4497 = !DILocation(line: 163, column: 10, scope: !4454)
!4498 = !DILocation(line: 164, column: 31, scope: !4454)
!4499 = !DILocation(line: 165, column: 13, scope: !4454)
!4500 = !DILocation(line: 166, column: 8, scope: !4454)
!4501 = !DILocation(line: 167, column: 8, scope: !4454)
!4502 = !DILocation(line: 168, column: 10, scope: !4454)
!4503 = !DILocation(line: 169, column: 10, scope: !4454)
!4504 = !DILocation(line: 172, column: 2, scope: !4454)
!4505 = !DILocation(line: 172, column: 8, scope: !4454)
!4506 = !DILocation(line: 172, column: 16, scope: !4454)
!4507 = !DILocation(line: 172, column: 22, scope: !4454)
!4508 = !DILocation(line: 175, column: 21, scope: !4454)
!4509 = !DILocation(line: 175, column: 9, scope: !4454)
!4510 = !DILocation(line: 175, column: 7, scope: !4454)
!4511 = !DILocation(line: 177, column: 7, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4454, file: !2, line: 177, column: 6)
!4513 = !DILocation(line: 177, column: 6, scope: !4512)
!4514 = !DILocation(line: 177, column: 6, scope: !4454)
!4515 = !DILocation(line: 178, column: 3, scope: !4516)
!4516 = distinct !DILexicalBlock(scope: !4517, file: !2, line: 178, column: 3)
!4517 = distinct !DILexicalBlock(scope: !4512, file: !2, line: 178, column: 3)
!4518 = !DILocation(line: 178, column: 3, scope: !4517)
!4519 = !DILocation(line: 178, column: 3, scope: !4512)
!4520 = !DILocation(line: 180, column: 2, scope: !4454)
!4521 = !DILocation(line: 180, column: 10, scope: !4454)
!4522 = !DILocation(line: 180, column: 9, scope: !4454)
!4523 = !DILocation(line: 181, column: 3, scope: !4473)
!4524 = !DILocation(line: 181, column: 7, scope: !4473)
!4525 = !DILocation(line: 182, column: 3, scope: !4473)
!4526 = !DILocation(line: 182, column: 7, scope: !4473)
!4527 = !DILocation(line: 184, column: 19, scope: !4473)
!4528 = !DILocation(line: 184, column: 10, scope: !4473)
!4529 = !DILocation(line: 184, column: 8, scope: !4473)
!4530 = !DILocation(line: 186, column: 8, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 186, column: 7)
!4532 = !DILocation(line: 186, column: 12, scope: !4531)
!4533 = !DILocation(line: 186, column: 22, scope: !4531)
!4534 = !DILocation(line: 186, column: 15, scope: !4531)
!4535 = !DILocation(line: 186, column: 35, scope: !4531)
!4536 = !DILocation(line: 186, column: 7, scope: !4473)
!4537 = !DILocation(line: 187, column: 11, scope: !4531)
!4538 = !DILocation(line: 187, column: 18, scope: !4531)
!4539 = !DILocation(line: 187, column: 4, scope: !4531)
!4540 = !DILocation(line: 188, column: 22, scope: !4476)
!4541 = !DILocation(line: 188, column: 22, scope: !4478)
!4542 = !DILocation(line: 188, column: 22, scope: !4479)
!4543 = !DILocation(line: 188, column: 22, scope: !4482)
!4544 = !DILocation(line: 188, column: 22, scope: !4483)
!4545 = !DILocation(line: 188, column: 22, scope: !4473)
!4546 = !DILocation(line: 188, column: 20, scope: !4473)
!4547 = !DILocation(line: 189, column: 19, scope: !4473)
!4548 = !DILocation(line: 189, column: 26, scope: !4473)
!4549 = !DILocation(line: 189, column: 31, scope: !4473)
!4550 = !DILocation(line: 189, column: 38, scope: !4473)
!4551 = !DILocation(line: 189, column: 46, scope: !4473)
!4552 = !DILocation(line: 190, column: 5, scope: !4473)
!4553 = !DILocation(line: 190, column: 16, scope: !4473)
!4554 = !DILocation(line: 190, column: 27, scope: !4473)
!4555 = !DILocation(line: 190, column: 32, scope: !4473)
!4556 = !DILocation(line: 189, column: 9, scope: !4473)
!4557 = !DILocation(line: 189, column: 7, scope: !4473)
!4558 = !DILocation(line: 191, column: 7, scope: !4487)
!4559 = !DILocation(line: 191, column: 24, scope: !4487)
!4560 = !DILocation(line: 191, column: 28, scope: !4486)
!4561 = !DILocation(line: 191, column: 28, scope: !4489)
!4562 = !DILocation(line: 191, column: 28, scope: !4490)
!4563 = !DILocation(line: 191, column: 28, scope: !4493)
!4564 = !DILocation(line: 191, column: 28, scope: !4494)
!4565 = !DILocation(line: 191, column: 28, scope: !4487)
!4566 = !DILocation(line: 191, column: 7, scope: !4473)
!4567 = !DILocation(line: 192, column: 4, scope: !4568)
!4568 = distinct !DILexicalBlock(scope: !4487, file: !2, line: 192, column: 4)
!4569 = !DILocation(line: 192, column: 4, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4568, file: !2, line: 192, column: 4)
!4571 = !DILocation(line: 192, column: 4, scope: !4487)
!4572 = !DILocation(line: 195, column: 11, scope: !4473)
!4573 = !DILocation(line: 195, column: 3, scope: !4473)
!4574 = !DILocation(line: 197, column: 4, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4473, file: !2, line: 195, column: 16)
!4576 = distinct !{!4576, !4520, !4577, !4417, !4418}
!4577 = !DILocation(line: 212, column: 2, scope: !4454)
!4578 = !DILocation(line: 199, column: 4, scope: !4579)
!4579 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 199, column: 4)
!4580 = !DILocation(line: 199, column: 4, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4579, file: !2, line: 199, column: 4)
!4582 = !DILocation(line: 200, column: 4, scope: !4575)
!4583 = !DILocation(line: 202, column: 4, scope: !4584)
!4584 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 202, column: 4)
!4585 = !DILocation(line: 202, column: 4, scope: !4586)
!4586 = distinct !DILexicalBlock(scope: !4584, file: !2, line: 202, column: 4)
!4587 = !DILocation(line: 204, column: 4, scope: !4575)
!4588 = !DILocation(line: 206, column: 4, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4575, file: !2, line: 206, column: 4)
!4590 = !DILocation(line: 206, column: 4, scope: !4591)
!4591 = distinct !DILexicalBlock(scope: !4589, file: !2, line: 206, column: 4)
!4592 = !DILocation(line: 208, column: 4, scope: !4575)
!4593 = !DILocation(line: 211, column: 17, scope: !4473)
!4594 = !DILocation(line: 211, column: 9, scope: !4473)
!4595 = !DILocation(line: 211, column: 7, scope: !4473)
!4596 = !DILocation(line: 214, column: 9, scope: !4454)
!4597 = !DILocation(line: 214, column: 2, scope: !4454)
!4598 = !DILocation(line: 215, column: 1, scope: !4454)
!4599 = !DISubprogram(name: "skip_spaces", scope: !4451, file: !4451, line: 112, type: !4600, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4600 = !DISubroutineType(types: !4601)
!4601 = !{!213, !215}
!4602 = !DISubprogram(name: "next_arg", scope: !4603, file: !4603, line: 211, type: !4604, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4603 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!4604 = !DISubroutineType(types: !4605)
!4605 = !{!213, !213, !212, !212}
!4606 = !DISubprogram(name: "strcmp", scope: !4451, file: !4451, line: 88, type: !4607, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DISubroutineType(types: !4608)
!4608 = !{!204, !215, !215}
!4609 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !4610, file: !4610, line: 65, type: !4611, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!4610 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!209}
!4613 = !DILocation(line: 67, column: 9, scope: !4609)
!4614 = !DILocation(line: 67, column: 2, scope: !4609)
!4615 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !4610, file: !4610, line: 120, type: !4616, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4618)
!4616 = !DISubroutineType(types: !4617)
!4617 = !{!204, !209}
!4618 = !{!4619}
!4619 = !DILocalVariable(name: "flags", arg: 1, scope: !4615, file: !4610, line: 120, type: !209)
!4620 = !DILocation(line: 120, column: 67, scope: !4615)
!4621 = !DILocation(line: 122, column: 11, scope: !4615)
!4622 = !DILocation(line: 122, column: 17, scope: !4615)
!4623 = !DILocation(line: 122, column: 9, scope: !4615)
!4624 = !DILocation(line: 122, column: 2, scope: !4615)
!4625 = distinct !DISubprogram(name: "parse_one", scope: !2, file: !2, line: 116, type: !4626, scopeLine: 126, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4628)
!4626 = !DISubroutineType(types: !4627)
!4627 = !{!204, !213, !213, !215, !647, !43, !743, !743, !198, !4457}
!4628 = !{!4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639}
!4629 = !DILocalVariable(name: "param", arg: 1, scope: !4625, file: !2, line: 116, type: !213)
!4630 = !DILocalVariable(name: "val", arg: 2, scope: !4625, file: !2, line: 117, type: !213)
!4631 = !DILocalVariable(name: "doing", arg: 3, scope: !4625, file: !2, line: 118, type: !215)
!4632 = !DILocalVariable(name: "params", arg: 4, scope: !4625, file: !2, line: 119, type: !647)
!4633 = !DILocalVariable(name: "num_params", arg: 5, scope: !4625, file: !2, line: 120, type: !43)
!4634 = !DILocalVariable(name: "min_level", arg: 6, scope: !4625, file: !2, line: 121, type: !743)
!4635 = !DILocalVariable(name: "max_level", arg: 7, scope: !4625, file: !2, line: 122, type: !743)
!4636 = !DILocalVariable(name: "arg", arg: 8, scope: !4625, file: !2, line: 123, type: !198)
!4637 = !DILocalVariable(name: "handle_unknown", arg: 9, scope: !4625, file: !2, line: 124, type: !4457)
!4638 = !DILocalVariable(name: "i", scope: !4625, file: !2, line: 127, type: !43)
!4639 = !DILocalVariable(name: "err", scope: !4625, file: !2, line: 128, type: !204)
!4640 = !DILocation(line: 116, column: 28, scope: !4625)
!4641 = !DILocation(line: 117, column: 14, scope: !4625)
!4642 = !DILocation(line: 118, column: 20, scope: !4625)
!4643 = !DILocation(line: 119, column: 35, scope: !4625)
!4644 = !DILocation(line: 120, column: 17, scope: !4625)
!4645 = !DILocation(line: 121, column: 12, scope: !4625)
!4646 = !DILocation(line: 122, column: 12, scope: !4625)
!4647 = !DILocation(line: 123, column: 14, scope: !4625)
!4648 = !DILocation(line: 124, column: 14, scope: !4625)
!4649 = !DILocation(line: 127, column: 2, scope: !4625)
!4650 = !DILocation(line: 127, column: 15, scope: !4625)
!4651 = !DILocation(line: 128, column: 2, scope: !4625)
!4652 = !DILocation(line: 128, column: 6, scope: !4625)
!4653 = !DILocation(line: 131, column: 9, scope: !4654)
!4654 = distinct !DILexicalBlock(scope: !4625, file: !2, line: 131, column: 2)
!4655 = !DILocation(line: 131, column: 7, scope: !4654)
!4656 = !DILocation(line: 131, column: 14, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !2, line: 131, column: 2)
!4658 = !DILocation(line: 131, column: 18, scope: !4657)
!4659 = !DILocation(line: 131, column: 16, scope: !4657)
!4660 = !DILocation(line: 131, column: 2, scope: !4654)
!4661 = !DILocation(line: 132, column: 15, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !2, line: 132, column: 7)
!4663 = distinct !DILexicalBlock(scope: !4657, file: !2, line: 131, column: 35)
!4664 = !DILocation(line: 132, column: 22, scope: !4662)
!4665 = !DILocation(line: 132, column: 29, scope: !4662)
!4666 = !DILocation(line: 132, column: 32, scope: !4662)
!4667 = !DILocation(line: 132, column: 7, scope: !4662)
!4668 = !DILocation(line: 132, column: 7, scope: !4663)
!4669 = !DILocation(line: 133, column: 8, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 133, column: 8)
!4671 = distinct !DILexicalBlock(scope: !4662, file: !2, line: 132, column: 39)
!4672 = !DILocation(line: 133, column: 15, scope: !4670)
!4673 = !DILocation(line: 133, column: 18, scope: !4670)
!4674 = !DILocation(line: 133, column: 26, scope: !4670)
!4675 = !DILocation(line: 133, column: 24, scope: !4670)
!4676 = !DILocation(line: 134, column: 8, scope: !4670)
!4677 = !DILocation(line: 134, column: 11, scope: !4670)
!4678 = !DILocation(line: 134, column: 18, scope: !4670)
!4679 = !DILocation(line: 134, column: 21, scope: !4670)
!4680 = !DILocation(line: 134, column: 29, scope: !4670)
!4681 = !DILocation(line: 134, column: 27, scope: !4670)
!4682 = !DILocation(line: 133, column: 8, scope: !4671)
!4683 = !DILocation(line: 135, column: 5, scope: !4670)
!4684 = !DILocation(line: 137, column: 9, scope: !4685)
!4685 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 137, column: 8)
!4686 = !DILocation(line: 137, column: 13, scope: !4685)
!4687 = !DILocation(line: 138, column: 10, scope: !4685)
!4688 = !DILocation(line: 138, column: 17, scope: !4685)
!4689 = !DILocation(line: 138, column: 20, scope: !4685)
!4690 = !DILocation(line: 138, column: 25, scope: !4685)
!4691 = !DILocation(line: 138, column: 31, scope: !4685)
!4692 = !DILocation(line: 137, column: 8, scope: !4671)
!4693 = !DILocation(line: 139, column: 5, scope: !4685)
!4694 = !DILocation(line: 140, column: 4, scope: !4695)
!4695 = distinct !DILexicalBlock(scope: !4696, file: !2, line: 140, column: 4)
!4696 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 140, column: 4)
!4697 = !DILocation(line: 140, column: 4, scope: !4696)
!4698 = !DILocation(line: 142, column: 22, scope: !4671)
!4699 = !DILocation(line: 142, column: 29, scope: !4671)
!4700 = !DILocation(line: 142, column: 32, scope: !4671)
!4701 = !DILocation(line: 142, column: 4, scope: !4671)
!4702 = !DILocation(line: 143, column: 28, scope: !4703)
!4703 = distinct !DILexicalBlock(scope: !4671, file: !2, line: 143, column: 8)
!4704 = !DILocation(line: 143, column: 35, scope: !4703)
!4705 = !DILocation(line: 143, column: 8, scope: !4703)
!4706 = !DILocation(line: 143, column: 8, scope: !4671)
!4707 = !DILocation(line: 144, column: 11, scope: !4703)
!4708 = !DILocation(line: 144, column: 18, scope: !4703)
!4709 = !DILocation(line: 144, column: 21, scope: !4703)
!4710 = !DILocation(line: 144, column: 26, scope: !4703)
!4711 = !DILocation(line: 144, column: 30, scope: !4703)
!4712 = !DILocation(line: 144, column: 36, scope: !4703)
!4713 = !DILocation(line: 144, column: 43, scope: !4703)
!4714 = !DILocation(line: 144, column: 9, scope: !4703)
!4715 = !DILocation(line: 144, column: 5, scope: !4703)
!4716 = !DILocation(line: 146, column: 9, scope: !4703)
!4717 = !DILocation(line: 147, column: 24, scope: !4671)
!4718 = !DILocation(line: 147, column: 31, scope: !4671)
!4719 = !DILocation(line: 147, column: 34, scope: !4671)
!4720 = !DILocation(line: 147, column: 4, scope: !4671)
!4721 = !DILocation(line: 148, column: 11, scope: !4671)
!4722 = !DILocation(line: 148, column: 4, scope: !4671)
!4723 = !DILocation(line: 150, column: 2, scope: !4663)
!4724 = !DILocation(line: 131, column: 31, scope: !4657)
!4725 = !DILocation(line: 131, column: 2, scope: !4657)
!4726 = distinct !{!4726, !4660, !4727, !4417, !4418}
!4727 = !DILocation(line: 150, column: 2, scope: !4654)
!4728 = !DILocation(line: 152, column: 6, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !4625, file: !2, line: 152, column: 6)
!4730 = !DILocation(line: 152, column: 6, scope: !4625)
!4731 = !DILocation(line: 153, column: 3, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4733, file: !2, line: 153, column: 3)
!4733 = distinct !DILexicalBlock(scope: !4734, file: !2, line: 153, column: 3)
!4734 = distinct !DILexicalBlock(scope: !4729, file: !2, line: 152, column: 22)
!4735 = !DILocation(line: 153, column: 3, scope: !4733)
!4736 = !DILocation(line: 154, column: 10, scope: !4734)
!4737 = !DILocation(line: 154, column: 25, scope: !4734)
!4738 = !DILocation(line: 154, column: 32, scope: !4734)
!4739 = !DILocation(line: 154, column: 37, scope: !4734)
!4740 = !DILocation(line: 154, column: 44, scope: !4734)
!4741 = !DILocation(line: 154, column: 3, scope: !4734)
!4742 = !DILocation(line: 157, column: 2, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4744, file: !2, line: 157, column: 2)
!4744 = distinct !DILexicalBlock(scope: !4625, file: !2, line: 157, column: 2)
!4745 = !DILocation(line: 157, column: 2, scope: !4744)
!4746 = !DILocation(line: 158, column: 2, scope: !4625)
!4747 = !DILocation(line: 159, column: 1, scope: !4625)
!4748 = !DISubprogram(name: "_printk", scope: !4749, file: !4749, line: 153, type: !4750, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4749 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4750 = !DISubroutineType(types: !4751)
!4751 = !{!204, !215, null}
!4752 = distinct !DISubprogram(name: "ERR_PTR", scope: !4753, file: !4753, line: 39, type: !4754, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4756)
!4753 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!198, !207}
!4756 = !{!4757}
!4757 = !DILocalVariable(name: "error", arg: 1, scope: !4752, file: !4753, line: 39, type: !207)
!4758 = !DILocation(line: 39, column: 48, scope: !4752)
!4759 = !DILocation(line: 41, column: 18, scope: !4752)
!4760 = !DILocation(line: 41, column: 9, scope: !4752)
!4761 = !DILocation(line: 41, column: 2, scope: !4752)
!4762 = distinct !DISubprogram(name: "param_set_byte", scope: !2, file: !2, line: 237, type: !645, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4763)
!4763 = !{!4764, !4765}
!4764 = !DILocalVariable(name: "val", arg: 1, scope: !4762, file: !2, line: 237, type: !215)
!4765 = !DILocalVariable(name: "kp", arg: 2, scope: !4762, file: !2, line: 237, type: !647)
!4766 = !DILocation(line: 237, column: 1, scope: !4762)
!4767 = !DISubprogram(name: "kstrtou8", scope: !4768, file: !4768, line: 96, type: !4769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4768 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4769 = !DISubroutineType(types: !4770)
!4770 = !{!204, !215, !43, !4771}
!4771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!4772 = distinct !DISubprogram(name: "param_get_byte", scope: !2, file: !2, line: 237, type: !651, scopeLine: 237, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4773)
!4773 = !{!4774, !4775}
!4774 = !DILocalVariable(name: "buffer", arg: 1, scope: !4772, file: !2, line: 237, type: !213)
!4775 = !DILocalVariable(name: "kp", arg: 2, scope: !4772, file: !2, line: 237, type: !647)
!4776 = !DILocation(line: 237, column: 1, scope: !4772)
!4777 = !DISubprogram(name: "scnprintf", scope: !4778, file: !4778, line: 14, type: !4779, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4778 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4779 = !DISubroutineType(types: !4780)
!4780 = !{!204, !213, !365, !215, null}
!4781 = distinct !DISubprogram(name: "param_set_short", scope: !2, file: !2, line: 238, type: !645, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4782)
!4782 = !{!4783, !4784}
!4783 = !DILocalVariable(name: "val", arg: 1, scope: !4781, file: !2, line: 238, type: !215)
!4784 = !DILocalVariable(name: "kp", arg: 2, scope: !4781, file: !2, line: 238, type: !647)
!4785 = !DILocation(line: 238, column: 1, scope: !4781)
!4786 = !DISubprogram(name: "kstrtos16", scope: !4768, file: !4768, line: 95, type: !4787, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4787 = !DISubroutineType(types: !4788)
!4788 = !{!204, !215, !43, !4789}
!4789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!4790 = distinct !DISubprogram(name: "param_get_short", scope: !2, file: !2, line: 238, type: !651, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4791)
!4791 = !{!4792, !4793}
!4792 = !DILocalVariable(name: "buffer", arg: 1, scope: !4790, file: !2, line: 238, type: !213)
!4793 = !DILocalVariable(name: "kp", arg: 2, scope: !4790, file: !2, line: 238, type: !647)
!4794 = !DILocation(line: 238, column: 1, scope: !4790)
!4795 = distinct !DISubprogram(name: "param_set_ushort", scope: !2, file: !2, line: 239, type: !645, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4796)
!4796 = !{!4797, !4798}
!4797 = !DILocalVariable(name: "val", arg: 1, scope: !4795, file: !2, line: 239, type: !215)
!4798 = !DILocalVariable(name: "kp", arg: 2, scope: !4795, file: !2, line: 239, type: !647)
!4799 = !DILocation(line: 239, column: 1, scope: !4795)
!4800 = !DISubprogram(name: "kstrtou16", scope: !4768, file: !4768, line: 94, type: !4801, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4801 = !DISubroutineType(types: !4802)
!4802 = !{!204, !215, !43, !4803}
!4803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!4804 = distinct !DISubprogram(name: "param_get_ushort", scope: !2, file: !2, line: 239, type: !651, scopeLine: 239, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4805)
!4805 = !{!4806, !4807}
!4806 = !DILocalVariable(name: "buffer", arg: 1, scope: !4804, file: !2, line: 239, type: !213)
!4807 = !DILocalVariable(name: "kp", arg: 2, scope: !4804, file: !2, line: 239, type: !647)
!4808 = !DILocation(line: 239, column: 1, scope: !4804)
!4809 = distinct !DISubprogram(name: "param_set_int", scope: !2, file: !2, line: 240, type: !645, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4810)
!4810 = !{!4811, !4812}
!4811 = !DILocalVariable(name: "val", arg: 1, scope: !4809, file: !2, line: 240, type: !215)
!4812 = !DILocalVariable(name: "kp", arg: 2, scope: !4809, file: !2, line: 240, type: !647)
!4813 = !DILocation(line: 240, column: 1, scope: !4809)
!4814 = !DISubprogram(name: "kstrtoint", scope: !4768, file: !4768, line: 72, type: !4815, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4815 = !DISubroutineType(types: !4816)
!4816 = !{!204, !215, !43, !203}
!4817 = distinct !DISubprogram(name: "param_get_int", scope: !2, file: !2, line: 240, type: !651, scopeLine: 240, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4818)
!4818 = !{!4819, !4820}
!4819 = !DILocalVariable(name: "buffer", arg: 1, scope: !4817, file: !2, line: 240, type: !213)
!4820 = !DILocalVariable(name: "kp", arg: 2, scope: !4817, file: !2, line: 240, type: !647)
!4821 = !DILocation(line: 240, column: 1, scope: !4817)
!4822 = distinct !DISubprogram(name: "param_set_uint", scope: !2, file: !2, line: 241, type: !645, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4823)
!4823 = !{!4824, !4825}
!4824 = !DILocalVariable(name: "val", arg: 1, scope: !4822, file: !2, line: 241, type: !215)
!4825 = !DILocalVariable(name: "kp", arg: 2, scope: !4822, file: !2, line: 241, type: !647)
!4826 = !DILocation(line: 241, column: 1, scope: !4822)
!4827 = !DISubprogram(name: "kstrtouint", scope: !4768, file: !4768, line: 71, type: !4828, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4828 = !DISubroutineType(types: !4829)
!4829 = !{!204, !215, !43, !205}
!4830 = distinct !DISubprogram(name: "param_get_uint", scope: !2, file: !2, line: 241, type: !651, scopeLine: 241, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4831)
!4831 = !{!4832, !4833}
!4832 = !DILocalVariable(name: "buffer", arg: 1, scope: !4830, file: !2, line: 241, type: !213)
!4833 = !DILocalVariable(name: "kp", arg: 2, scope: !4830, file: !2, line: 241, type: !647)
!4834 = !DILocation(line: 241, column: 1, scope: !4830)
!4835 = distinct !DISubprogram(name: "param_set_long", scope: !2, file: !2, line: 242, type: !645, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4836)
!4836 = !{!4837, !4838}
!4837 = !DILocalVariable(name: "val", arg: 1, scope: !4835, file: !2, line: 242, type: !215)
!4838 = !DILocalVariable(name: "kp", arg: 2, scope: !4835, file: !2, line: 242, type: !647)
!4839 = !DILocation(line: 242, column: 1, scope: !4835)
!4840 = distinct !DISubprogram(name: "kstrtol", scope: !4768, file: !4768, line: 58, type: !4841, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4843)
!4841 = !DISubroutineType(types: !4842)
!4842 = !{!204, !215, !43, !206}
!4843 = !{!4844, !4845, !4846}
!4844 = !DILocalVariable(name: "s", arg: 1, scope: !4840, file: !4768, line: 58, type: !215)
!4845 = !DILocalVariable(name: "base", arg: 2, scope: !4840, file: !4768, line: 58, type: !43)
!4846 = !DILocalVariable(name: "res", arg: 3, scope: !4840, file: !4768, line: 58, type: !206)
!4847 = !DILocation(line: 58, column: 52, scope: !4840)
!4848 = !DILocation(line: 58, column: 68, scope: !4840)
!4849 = !DILocation(line: 58, column: 80, scope: !4840)
!4850 = !DILocation(line: 66, column: 19, scope: !4851)
!4851 = distinct !DILexicalBlock(scope: !4840, file: !4768, line: 64, column: 6)
!4852 = !DILocation(line: 66, column: 22, scope: !4851)
!4853 = !DILocation(line: 66, column: 41, scope: !4851)
!4854 = !DILocation(line: 66, column: 10, scope: !4851)
!4855 = !DILocation(line: 66, column: 3, scope: !4851)
!4856 = distinct !DISubprogram(name: "param_get_long", scope: !2, file: !2, line: 242, type: !651, scopeLine: 242, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4857)
!4857 = !{!4858, !4859}
!4858 = !DILocalVariable(name: "buffer", arg: 1, scope: !4856, file: !2, line: 242, type: !213)
!4859 = !DILocalVariable(name: "kp", arg: 2, scope: !4856, file: !2, line: 242, type: !647)
!4860 = !DILocation(line: 242, column: 1, scope: !4856)
!4861 = distinct !DISubprogram(name: "param_set_ulong", scope: !2, file: !2, line: 243, type: !645, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4862)
!4862 = !{!4863, !4864}
!4863 = !DILocalVariable(name: "val", arg: 1, scope: !4861, file: !2, line: 243, type: !215)
!4864 = !DILocalVariable(name: "kp", arg: 2, scope: !4861, file: !2, line: 243, type: !647)
!4865 = !DILocation(line: 243, column: 1, scope: !4861)
!4866 = distinct !DISubprogram(name: "kstrtoul", scope: !4768, file: !4768, line: 30, type: !4867, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4869)
!4867 = !DISubroutineType(types: !4868)
!4868 = !{!204, !215, !43, !208}
!4869 = !{!4870, !4871, !4872}
!4870 = !DILocalVariable(name: "s", arg: 1, scope: !4866, file: !4768, line: 30, type: !215)
!4871 = !DILocalVariable(name: "base", arg: 2, scope: !4866, file: !4768, line: 30, type: !43)
!4872 = !DILocalVariable(name: "res", arg: 3, scope: !4866, file: !4768, line: 30, type: !208)
!4873 = !DILocation(line: 30, column: 53, scope: !4866)
!4874 = !DILocation(line: 30, column: 69, scope: !4866)
!4875 = !DILocation(line: 30, column: 90, scope: !4866)
!4876 = !DILocation(line: 38, column: 20, scope: !4877)
!4877 = distinct !DILexicalBlock(scope: !4866, file: !4768, line: 36, column: 6)
!4878 = !DILocation(line: 38, column: 23, scope: !4877)
!4879 = !DILocation(line: 38, column: 51, scope: !4877)
!4880 = !DILocation(line: 38, column: 10, scope: !4877)
!4881 = !DILocation(line: 38, column: 3, scope: !4877)
!4882 = distinct !DISubprogram(name: "param_get_ulong", scope: !2, file: !2, line: 243, type: !651, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4883)
!4883 = !{!4884, !4885}
!4884 = !DILocalVariable(name: "buffer", arg: 1, scope: !4882, file: !2, line: 243, type: !213)
!4885 = !DILocalVariable(name: "kp", arg: 2, scope: !4882, file: !2, line: 243, type: !647)
!4886 = !DILocation(line: 243, column: 1, scope: !4882)
!4887 = distinct !DISubprogram(name: "param_set_ullong", scope: !2, file: !2, line: 244, type: !645, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4888)
!4888 = !{!4889, !4890}
!4889 = !DILocalVariable(name: "val", arg: 1, scope: !4887, file: !2, line: 244, type: !215)
!4890 = !DILocalVariable(name: "kp", arg: 2, scope: !4887, file: !2, line: 244, type: !647)
!4891 = !DILocation(line: 244, column: 1, scope: !4887)
!4892 = !DISubprogram(name: "kstrtoull", scope: !4768, file: !4768, line: 12, type: !4893, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4893 = !DISubroutineType(types: !4894)
!4894 = !{!204, !215, !43, !210}
!4895 = distinct !DISubprogram(name: "param_get_ullong", scope: !2, file: !2, line: 244, type: !651, scopeLine: 244, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4896)
!4896 = !{!4897, !4898}
!4897 = !DILocalVariable(name: "buffer", arg: 1, scope: !4895, file: !2, line: 244, type: !213)
!4898 = !DILocalVariable(name: "kp", arg: 2, scope: !4895, file: !2, line: 244, type: !647)
!4899 = !DILocation(line: 244, column: 1, scope: !4895)
!4900 = distinct !DISubprogram(name: "param_set_hexint", scope: !2, file: !2, line: 245, type: !645, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4901)
!4901 = !{!4902, !4903}
!4902 = !DILocalVariable(name: "val", arg: 1, scope: !4900, file: !2, line: 245, type: !215)
!4903 = !DILocalVariable(name: "kp", arg: 2, scope: !4900, file: !2, line: 245, type: !647)
!4904 = !DILocation(line: 245, column: 1, scope: !4900)
!4905 = distinct !DISubprogram(name: "param_get_hexint", scope: !2, file: !2, line: 245, type: !651, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4906)
!4906 = !{!4907, !4908}
!4907 = !DILocalVariable(name: "buffer", arg: 1, scope: !4905, file: !2, line: 245, type: !213)
!4908 = !DILocalVariable(name: "kp", arg: 2, scope: !4905, file: !2, line: 245, type: !647)
!4909 = !DILocation(line: 245, column: 1, scope: !4905)
!4910 = distinct !DISubprogram(name: "param_set_uint_minmax", scope: !2, file: !2, line: 247, type: !4911, scopeLine: 249, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4913)
!4911 = !DISubroutineType(types: !4912)
!4912 = !{!204, !215, !647, !43, !43}
!4913 = !{!4914, !4915, !4916, !4917, !4918, !4919}
!4914 = !DILocalVariable(name: "val", arg: 1, scope: !4910, file: !2, line: 247, type: !215)
!4915 = !DILocalVariable(name: "kp", arg: 2, scope: !4910, file: !2, line: 247, type: !647)
!4916 = !DILocalVariable(name: "min", arg: 3, scope: !4910, file: !2, line: 248, type: !43)
!4917 = !DILocalVariable(name: "max", arg: 4, scope: !4910, file: !2, line: 248, type: !43)
!4918 = !DILocalVariable(name: "num", scope: !4910, file: !2, line: 250, type: !43)
!4919 = !DILocalVariable(name: "ret", scope: !4910, file: !2, line: 251, type: !204)
!4920 = !DILocation(line: 247, column: 39, scope: !4910)
!4921 = !DILocation(line: 247, column: 71, scope: !4910)
!4922 = !DILocation(line: 248, column: 16, scope: !4910)
!4923 = !DILocation(line: 248, column: 34, scope: !4910)
!4924 = !DILocation(line: 250, column: 2, scope: !4910)
!4925 = !DILocation(line: 250, column: 15, scope: !4910)
!4926 = !DILocation(line: 251, column: 2, scope: !4910)
!4927 = !DILocation(line: 251, column: 6, scope: !4910)
!4928 = !DILocation(line: 253, column: 7, scope: !4929)
!4929 = distinct !DILexicalBlock(scope: !4910, file: !2, line: 253, column: 6)
!4930 = !DILocation(line: 253, column: 6, scope: !4910)
!4931 = !DILocation(line: 254, column: 3, scope: !4929)
!4932 = !DILocation(line: 255, column: 19, scope: !4910)
!4933 = !DILocation(line: 255, column: 8, scope: !4910)
!4934 = !DILocation(line: 255, column: 6, scope: !4910)
!4935 = !DILocation(line: 256, column: 6, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4910, file: !2, line: 256, column: 6)
!4937 = !DILocation(line: 256, column: 6, scope: !4910)
!4938 = !DILocation(line: 257, column: 10, scope: !4936)
!4939 = !DILocation(line: 257, column: 3, scope: !4936)
!4940 = !DILocation(line: 258, column: 6, scope: !4941)
!4941 = distinct !DILexicalBlock(scope: !4910, file: !2, line: 258, column: 6)
!4942 = !DILocation(line: 258, column: 12, scope: !4941)
!4943 = !DILocation(line: 258, column: 10, scope: !4941)
!4944 = !DILocation(line: 258, column: 16, scope: !4941)
!4945 = !DILocation(line: 258, column: 19, scope: !4941)
!4946 = !DILocation(line: 258, column: 25, scope: !4941)
!4947 = !DILocation(line: 258, column: 23, scope: !4941)
!4948 = !DILocation(line: 258, column: 6, scope: !4910)
!4949 = !DILocation(line: 259, column: 3, scope: !4941)
!4950 = !DILocation(line: 260, column: 31, scope: !4910)
!4951 = !DILocation(line: 260, column: 20, scope: !4910)
!4952 = !DILocation(line: 260, column: 24, scope: !4910)
!4953 = !DILocation(line: 260, column: 29, scope: !4910)
!4954 = !DILocation(line: 261, column: 2, scope: !4910)
!4955 = !DILocation(line: 262, column: 1, scope: !4910)
!4956 = distinct !DISubprogram(name: "param_set_charp", scope: !2, file: !2, line: 265, type: !645, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !4957)
!4957 = !{!4958, !4959}
!4958 = !DILocalVariable(name: "val", arg: 1, scope: !4956, file: !2, line: 265, type: !215)
!4959 = !DILocalVariable(name: "kp", arg: 2, scope: !4956, file: !2, line: 265, type: !647)
!4960 = !DILocation(line: 265, column: 33, scope: !4956)
!4961 = !DILocation(line: 265, column: 65, scope: !4956)
!4962 = !DILocation(line: 267, column: 13, scope: !4963)
!4963 = distinct !DILexicalBlock(scope: !4956, file: !2, line: 267, column: 6)
!4964 = !DILocation(line: 267, column: 6, scope: !4963)
!4965 = !DILocation(line: 267, column: 18, scope: !4963)
!4966 = !DILocation(line: 267, column: 6, scope: !4956)
!4967 = !DILocation(line: 268, column: 3, scope: !4968)
!4968 = distinct !DILexicalBlock(scope: !4969, file: !2, line: 268, column: 3)
!4969 = distinct !DILexicalBlock(scope: !4963, file: !2, line: 267, column: 26)
!4970 = !DILocation(line: 268, column: 3, scope: !4971)
!4971 = distinct !DILexicalBlock(scope: !4968, file: !2, line: 268, column: 3)
!4972 = !DILocation(line: 269, column: 3, scope: !4969)
!4973 = !DILocation(line: 272, column: 34, scope: !4956)
!4974 = !DILocation(line: 272, column: 38, scope: !4956)
!4975 = !DILocation(line: 272, column: 24, scope: !4956)
!4976 = !DILocation(line: 272, column: 2, scope: !4956)
!4977 = !DILocation(line: 276, column: 6, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4956, file: !2, line: 276, column: 6)
!4979 = !DILocation(line: 276, column: 6, scope: !4956)
!4980 = !DILocation(line: 277, column: 48, scope: !4981)
!4981 = distinct !DILexicalBlock(scope: !4978, file: !2, line: 276, column: 27)
!4982 = !DILocation(line: 277, column: 41, scope: !4981)
!4983 = !DILocation(line: 277, column: 52, scope: !4981)
!4984 = !DILocation(line: 277, column: 23, scope: !4981)
!4985 = !DILocation(line: 277, column: 13, scope: !4981)
!4986 = !DILocation(line: 277, column: 17, scope: !4981)
!4987 = !DILocation(line: 277, column: 21, scope: !4981)
!4988 = !DILocation(line: 278, column: 18, scope: !4989)
!4989 = distinct !DILexicalBlock(scope: !4981, file: !2, line: 278, column: 7)
!4990 = !DILocation(line: 278, column: 22, scope: !4989)
!4991 = !DILocation(line: 278, column: 8, scope: !4989)
!4992 = !DILocation(line: 278, column: 7, scope: !4981)
!4993 = !DILocation(line: 279, column: 4, scope: !4989)
!4994 = !DILocation(line: 280, column: 20, scope: !4981)
!4995 = !DILocation(line: 280, column: 24, scope: !4981)
!4996 = !DILocation(line: 280, column: 10, scope: !4981)
!4997 = !DILocation(line: 280, column: 29, scope: !4981)
!4998 = !DILocation(line: 280, column: 3, scope: !4981)
!4999 = !DILocation(line: 281, column: 2, scope: !4981)
!5000 = !DILocation(line: 282, column: 29, scope: !4978)
!5001 = !DILocation(line: 282, column: 19, scope: !4978)
!5002 = !DILocation(line: 282, column: 23, scope: !4978)
!5003 = !DILocation(line: 282, column: 27, scope: !4978)
!5004 = !DILocation(line: 284, column: 2, scope: !4956)
!5005 = !DILocation(line: 285, column: 1, scope: !4956)
!5006 = distinct !DISubprogram(name: "maybe_kfree_parameter", scope: !2, file: !2, line: 63, type: !655, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5007)
!5007 = !{!5008, !5009, !5010, !5013}
!5008 = !DILocalVariable(name: "param", arg: 1, scope: !5006, file: !2, line: 63, type: !198)
!5009 = !DILocalVariable(name: "p", scope: !5006, file: !2, line: 65, type: !4144)
!5010 = !DILocalVariable(name: "__mptr", scope: !5011, file: !2, line: 68, type: !198)
!5011 = distinct !DILexicalBlock(scope: !5012, file: !2, line: 68, column: 2)
!5012 = distinct !DILexicalBlock(scope: !5006, file: !2, line: 68, column: 2)
!5013 = !DILocalVariable(name: "__mptr", scope: !5014, file: !2, line: 68, type: !198)
!5014 = distinct !DILexicalBlock(scope: !5015, file: !2, line: 68, column: 2)
!5015 = distinct !DILexicalBlock(scope: !5012, file: !2, line: 68, column: 2)
!5016 = !DILocation(line: 63, column: 41, scope: !5006)
!5017 = !DILocation(line: 65, column: 2, scope: !5006)
!5018 = !DILocation(line: 65, column: 26, scope: !5006)
!5019 = !DILocation(line: 67, column: 2, scope: !5006)
!5020 = !DILocation(line: 68, column: 2, scope: !5011)
!5021 = !DILocation(line: 68, column: 2, scope: !5012)
!5022 = !DILocation(line: 68, column: 2, scope: !5015)
!5023 = !DILocation(line: 69, column: 7, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !5025, file: !2, line: 69, column: 7)
!5025 = distinct !DILexicalBlock(scope: !5015, file: !2, line: 68, column: 50)
!5026 = !DILocation(line: 69, column: 10, scope: !5024)
!5027 = !DILocation(line: 69, column: 17, scope: !5024)
!5028 = !DILocation(line: 69, column: 14, scope: !5024)
!5029 = !DILocation(line: 69, column: 7, scope: !5025)
!5030 = !DILocation(line: 70, column: 14, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !5024, file: !2, line: 69, column: 24)
!5032 = !DILocation(line: 70, column: 17, scope: !5031)
!5033 = !DILocation(line: 70, column: 4, scope: !5031)
!5034 = !DILocation(line: 71, column: 10, scope: !5031)
!5035 = !DILocation(line: 71, column: 4, scope: !5031)
!5036 = !DILocation(line: 72, column: 4, scope: !5031)
!5037 = !DILocation(line: 74, column: 2, scope: !5025)
!5038 = !DILocation(line: 68, column: 2, scope: !5014)
!5039 = distinct !{!5039, !5021, !5040, !4417, !4418}
!5040 = !DILocation(line: 74, column: 2, scope: !5012)
!5041 = !DILocation(line: 75, column: 2, scope: !5006)
!5042 = !DILocation(line: 76, column: 1, scope: !5006)
!5043 = !DISubprogram(name: "slab_is_available", scope: !175, file: !175, line: 187, type: !3970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5044 = distinct !DISubprogram(name: "kmalloc_parameter", scope: !2, file: !2, line: 47, type: !5045, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5047)
!5045 = !DISubroutineType(types: !5046)
!5046 = !{!198, !43}
!5047 = !{!5048, !5049}
!5048 = !DILocalVariable(name: "size", arg: 1, scope: !5044, file: !2, line: 47, type: !43)
!5049 = !DILocalVariable(name: "p", scope: !5044, file: !2, line: 49, type: !4144)
!5050 = !DILocation(line: 47, column: 45, scope: !5044)
!5051 = !DILocation(line: 49, column: 2, scope: !5044)
!5052 = !DILocation(line: 49, column: 26, scope: !5044)
!5053 = !DILocation(line: 51, column: 27, scope: !5044)
!5054 = !DILocation(line: 51, column: 25, scope: !5044)
!5055 = !DILocation(line: 51, column: 6, scope: !5044)
!5056 = !DILocation(line: 51, column: 4, scope: !5044)
!5057 = !DILocation(line: 52, column: 7, scope: !5058)
!5058 = distinct !DILexicalBlock(scope: !5044, file: !2, line: 52, column: 6)
!5059 = !DILocation(line: 52, column: 6, scope: !5044)
!5060 = !DILocation(line: 53, column: 3, scope: !5058)
!5061 = !DILocation(line: 55, column: 2, scope: !5044)
!5062 = !DILocation(line: 56, column: 12, scope: !5044)
!5063 = !DILocation(line: 56, column: 15, scope: !5044)
!5064 = !DILocation(line: 56, column: 2, scope: !5044)
!5065 = !DILocation(line: 57, column: 2, scope: !5044)
!5066 = !DILocation(line: 59, column: 9, scope: !5044)
!5067 = !DILocation(line: 59, column: 12, scope: !5044)
!5068 = !DILocation(line: 59, column: 2, scope: !5044)
!5069 = !DILocation(line: 60, column: 1, scope: !5044)
!5070 = !DISubprogram(name: "strcpy", scope: !4451, file: !4451, line: 63, type: !5071, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5071 = !DISubroutineType(types: !5072)
!5072 = !{!213, !213, !215}
!5073 = distinct !DISubprogram(name: "param_get_charp", scope: !2, file: !2, line: 288, type: !651, scopeLine: 289, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5074)
!5074 = !{!5075, !5076}
!5075 = !DILocalVariable(name: "buffer", arg: 1, scope: !5073, file: !2, line: 288, type: !213)
!5076 = !DILocalVariable(name: "kp", arg: 2, scope: !5073, file: !2, line: 288, type: !647)
!5077 = !DILocation(line: 288, column: 27, scope: !5073)
!5078 = !DILocation(line: 288, column: 62, scope: !5073)
!5079 = !DILocation(line: 290, column: 19, scope: !5073)
!5080 = !DILocation(line: 290, column: 57, scope: !5073)
!5081 = !DILocation(line: 290, column: 61, scope: !5073)
!5082 = !DILocation(line: 290, column: 46, scope: !5073)
!5083 = !DILocation(line: 290, column: 9, scope: !5073)
!5084 = !DILocation(line: 290, column: 2, scope: !5073)
!5085 = distinct !DISubprogram(name: "param_free_charp", scope: !2, file: !2, line: 294, type: !655, scopeLine: 295, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5086)
!5086 = !{!5087}
!5087 = !DILocalVariable(name: "arg", arg: 1, scope: !5085, file: !2, line: 294, type: !198)
!5088 = !DILocation(line: 294, column: 29, scope: !5085)
!5089 = !DILocation(line: 296, column: 35, scope: !5085)
!5090 = !DILocation(line: 296, column: 24, scope: !5085)
!5091 = !DILocation(line: 296, column: 2, scope: !5085)
!5092 = !DILocation(line: 297, column: 1, scope: !5085)
!5093 = distinct !DISubprogram(name: "param_set_bool", scope: !2, file: !2, line: 308, type: !645, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5094)
!5094 = !{!5095, !5096}
!5095 = !DILocalVariable(name: "val", arg: 1, scope: !5093, file: !2, line: 308, type: !215)
!5096 = !DILocalVariable(name: "kp", arg: 2, scope: !5093, file: !2, line: 308, type: !647)
!5097 = !DILocation(line: 308, column: 32, scope: !5093)
!5098 = !DILocation(line: 308, column: 64, scope: !5093)
!5099 = !DILocation(line: 311, column: 7, scope: !5100)
!5100 = distinct !DILexicalBlock(scope: !5093, file: !2, line: 311, column: 6)
!5101 = !DILocation(line: 311, column: 6, scope: !5093)
!5102 = !DILocation(line: 311, column: 16, scope: !5100)
!5103 = !DILocation(line: 311, column: 12, scope: !5100)
!5104 = !DILocation(line: 314, column: 20, scope: !5093)
!5105 = !DILocation(line: 314, column: 25, scope: !5093)
!5106 = !DILocation(line: 314, column: 29, scope: !5093)
!5107 = !DILocation(line: 314, column: 9, scope: !5093)
!5108 = !DILocation(line: 314, column: 2, scope: !5093)
!5109 = !DISubprogram(name: "kstrtobool", scope: !4768, file: !4768, line: 98, type: !5110, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5110 = !DISubroutineType(types: !5111)
!5111 = !{!204, !215, !217}
!5112 = distinct !DISubprogram(name: "param_get_bool", scope: !2, file: !2, line: 318, type: !651, scopeLine: 319, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5113)
!5113 = !{!5114, !5115}
!5114 = !DILocalVariable(name: "buffer", arg: 1, scope: !5112, file: !2, line: 318, type: !213)
!5115 = !DILocalVariable(name: "kp", arg: 2, scope: !5112, file: !2, line: 318, type: !647)
!5116 = !DILocation(line: 318, column: 26, scope: !5112)
!5117 = !DILocation(line: 318, column: 61, scope: !5112)
!5118 = !DILocation(line: 321, column: 17, scope: !5112)
!5119 = !DILocation(line: 321, column: 42, scope: !5112)
!5120 = !DILocation(line: 321, column: 46, scope: !5112)
!5121 = !DILocation(line: 321, column: 33, scope: !5112)
!5122 = !{i8 0, i8 2}
!5123 = !DILocation(line: 321, column: 9, scope: !5112)
!5124 = !DILocation(line: 321, column: 2, scope: !5112)
!5125 = !DISubprogram(name: "sprintf", scope: !4778, file: !4778, line: 10, type: !5126, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5126 = !DISubroutineType(types: !5127)
!5127 = !{!204, !213, !215, null}
!5128 = distinct !DISubprogram(name: "param_set_bool_enable_only", scope: !2, file: !2, line: 332, type: !645, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5129)
!5129 = !{!5130, !5131, !5132, !5133, !5134, !5135}
!5130 = !DILocalVariable(name: "val", arg: 1, scope: !5128, file: !2, line: 332, type: !215)
!5131 = !DILocalVariable(name: "kp", arg: 2, scope: !5128, file: !2, line: 332, type: !647)
!5132 = !DILocalVariable(name: "err", scope: !5128, file: !2, line: 334, type: !204)
!5133 = !DILocalVariable(name: "new_value", scope: !5128, file: !2, line: 335, type: !218)
!5134 = !DILocalVariable(name: "orig_value", scope: !5128, file: !2, line: 336, type: !218)
!5135 = !DILocalVariable(name: "dummy_kp", scope: !5128, file: !2, line: 337, type: !633)
!5136 = !DILocation(line: 332, column: 44, scope: !5128)
!5137 = !DILocation(line: 332, column: 76, scope: !5128)
!5138 = !DILocation(line: 334, column: 2, scope: !5128)
!5139 = !DILocation(line: 334, column: 6, scope: !5128)
!5140 = !DILocation(line: 335, column: 2, scope: !5128)
!5141 = !DILocation(line: 335, column: 7, scope: !5128)
!5142 = !DILocation(line: 336, column: 2, scope: !5128)
!5143 = !DILocation(line: 336, column: 7, scope: !5128)
!5144 = !DILocation(line: 336, column: 29, scope: !5128)
!5145 = !DILocation(line: 336, column: 33, scope: !5128)
!5146 = !DILocation(line: 336, column: 20, scope: !5128)
!5147 = !DILocation(line: 337, column: 2, scope: !5128)
!5148 = !DILocation(line: 337, column: 22, scope: !5128)
!5149 = !DILocation(line: 337, column: 34, scope: !5128)
!5150 = !DILocation(line: 337, column: 33, scope: !5128)
!5151 = !DILocation(line: 339, column: 11, scope: !5128)
!5152 = !DILocation(line: 339, column: 15, scope: !5128)
!5153 = !DILocation(line: 341, column: 23, scope: !5128)
!5154 = !DILocation(line: 341, column: 8, scope: !5128)
!5155 = !DILocation(line: 341, column: 6, scope: !5128)
!5156 = !DILocation(line: 342, column: 6, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 342, column: 6)
!5158 = !DILocation(line: 342, column: 6, scope: !5128)
!5159 = !DILocation(line: 343, column: 10, scope: !5157)
!5160 = !DILocation(line: 343, column: 3, scope: !5157)
!5161 = !DILocation(line: 346, column: 7, scope: !5162)
!5162 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 346, column: 6)
!5163 = !DILocation(line: 346, column: 17, scope: !5162)
!5164 = !DILocation(line: 346, column: 20, scope: !5162)
!5165 = !DILocation(line: 346, column: 6, scope: !5128)
!5166 = !DILocation(line: 347, column: 3, scope: !5162)
!5167 = !DILocation(line: 349, column: 6, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !5128, file: !2, line: 349, column: 6)
!5169 = !DILocation(line: 349, column: 6, scope: !5128)
!5170 = !DILocation(line: 350, column: 24, scope: !5168)
!5171 = !DILocation(line: 350, column: 29, scope: !5168)
!5172 = !DILocation(line: 350, column: 9, scope: !5168)
!5173 = !DILocation(line: 350, column: 7, scope: !5168)
!5174 = !DILocation(line: 350, column: 3, scope: !5168)
!5175 = !DILocation(line: 352, column: 9, scope: !5128)
!5176 = !DILocation(line: 352, column: 2, scope: !5128)
!5177 = !DILocation(line: 353, column: 1, scope: !5128)
!5178 = distinct !DISubprogram(name: "param_set_invbool", scope: !2, file: !2, line: 364, type: !645, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5179)
!5179 = !{!5180, !5181, !5182, !5183, !5184}
!5180 = !DILocalVariable(name: "val", arg: 1, scope: !5178, file: !2, line: 364, type: !215)
!5181 = !DILocalVariable(name: "kp", arg: 2, scope: !5178, file: !2, line: 364, type: !647)
!5182 = !DILocalVariable(name: "ret", scope: !5178, file: !2, line: 366, type: !204)
!5183 = !DILocalVariable(name: "boolval", scope: !5178, file: !2, line: 367, type: !218)
!5184 = !DILocalVariable(name: "dummy", scope: !5178, file: !2, line: 368, type: !633)
!5185 = !DILocation(line: 364, column: 35, scope: !5178)
!5186 = !DILocation(line: 364, column: 67, scope: !5178)
!5187 = !DILocation(line: 366, column: 2, scope: !5178)
!5188 = !DILocation(line: 366, column: 6, scope: !5178)
!5189 = !DILocation(line: 367, column: 2, scope: !5178)
!5190 = !DILocation(line: 367, column: 7, scope: !5178)
!5191 = !DILocation(line: 368, column: 2, scope: !5178)
!5192 = !DILocation(line: 368, column: 22, scope: !5178)
!5193 = !DILocation(line: 370, column: 8, scope: !5178)
!5194 = !DILocation(line: 370, column: 12, scope: !5178)
!5195 = !DILocation(line: 371, column: 23, scope: !5178)
!5196 = !DILocation(line: 371, column: 8, scope: !5178)
!5197 = !DILocation(line: 371, column: 6, scope: !5178)
!5198 = !DILocation(line: 372, column: 6, scope: !5199)
!5199 = distinct !DILexicalBlock(scope: !5178, file: !2, line: 372, column: 6)
!5200 = !DILocation(line: 372, column: 10, scope: !5199)
!5201 = !DILocation(line: 372, column: 6, scope: !5178)
!5202 = !DILocation(line: 373, column: 23, scope: !5199)
!5203 = !DILocation(line: 373, column: 22, scope: !5199)
!5204 = !DILocation(line: 373, column: 12, scope: !5199)
!5205 = !DILocation(line: 373, column: 16, scope: !5199)
!5206 = !DILocation(line: 373, column: 20, scope: !5199)
!5207 = !DILocation(line: 373, column: 3, scope: !5199)
!5208 = !DILocation(line: 374, column: 9, scope: !5178)
!5209 = !DILocation(line: 375, column: 1, scope: !5178)
!5210 = !DILocation(line: 374, column: 2, scope: !5178)
!5211 = distinct !DISubprogram(name: "param_get_invbool", scope: !2, file: !2, line: 378, type: !651, scopeLine: 379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5212)
!5212 = !{!5213, !5214}
!5213 = !DILocalVariable(name: "buffer", arg: 1, scope: !5211, file: !2, line: 378, type: !213)
!5214 = !DILocalVariable(name: "kp", arg: 2, scope: !5211, file: !2, line: 378, type: !647)
!5215 = !DILocation(line: 378, column: 29, scope: !5211)
!5216 = !DILocation(line: 378, column: 64, scope: !5211)
!5217 = !DILocation(line: 380, column: 17, scope: !5211)
!5218 = !DILocation(line: 380, column: 43, scope: !5211)
!5219 = !DILocation(line: 380, column: 47, scope: !5211)
!5220 = !DILocation(line: 380, column: 34, scope: !5211)
!5221 = !DILocation(line: 380, column: 33, scope: !5211)
!5222 = !DILocation(line: 380, column: 9, scope: !5211)
!5223 = !DILocation(line: 380, column: 2, scope: !5211)
!5224 = distinct !DISubprogram(name: "param_set_bint", scope: !2, file: !2, line: 390, type: !645, scopeLine: 391, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5225)
!5225 = !{!5226, !5227, !5228, !5229, !5230}
!5226 = !DILocalVariable(name: "val", arg: 1, scope: !5224, file: !2, line: 390, type: !215)
!5227 = !DILocalVariable(name: "kp", arg: 2, scope: !5224, file: !2, line: 390, type: !647)
!5228 = !DILocalVariable(name: "boolkp", scope: !5224, file: !2, line: 393, type: !633)
!5229 = !DILocalVariable(name: "v", scope: !5224, file: !2, line: 394, type: !218)
!5230 = !DILocalVariable(name: "ret", scope: !5224, file: !2, line: 395, type: !204)
!5231 = !DILocation(line: 390, column: 32, scope: !5224)
!5232 = !DILocation(line: 390, column: 64, scope: !5224)
!5233 = !DILocation(line: 393, column: 2, scope: !5224)
!5234 = !DILocation(line: 393, column: 22, scope: !5224)
!5235 = !DILocation(line: 393, column: 32, scope: !5224)
!5236 = !DILocation(line: 393, column: 31, scope: !5224)
!5237 = !DILocation(line: 394, column: 2, scope: !5224)
!5238 = !DILocation(line: 394, column: 7, scope: !5224)
!5239 = !DILocation(line: 395, column: 2, scope: !5224)
!5240 = !DILocation(line: 395, column: 6, scope: !5224)
!5241 = !DILocation(line: 397, column: 9, scope: !5224)
!5242 = !DILocation(line: 397, column: 13, scope: !5224)
!5243 = !DILocation(line: 399, column: 23, scope: !5224)
!5244 = !DILocation(line: 399, column: 8, scope: !5224)
!5245 = !DILocation(line: 399, column: 6, scope: !5224)
!5246 = !DILocation(line: 400, column: 6, scope: !5247)
!5247 = distinct !DILexicalBlock(scope: !5224, file: !2, line: 400, column: 6)
!5248 = !DILocation(line: 400, column: 10, scope: !5247)
!5249 = !DILocation(line: 400, column: 6, scope: !5224)
!5250 = !DILocation(line: 401, column: 21, scope: !5247)
!5251 = !DILocation(line: 401, column: 11, scope: !5247)
!5252 = !DILocation(line: 401, column: 15, scope: !5247)
!5253 = !DILocation(line: 401, column: 19, scope: !5247)
!5254 = !DILocation(line: 401, column: 3, scope: !5247)
!5255 = !DILocation(line: 402, column: 9, scope: !5224)
!5256 = !DILocation(line: 403, column: 1, scope: !5224)
!5257 = !DILocation(line: 402, column: 2, scope: !5224)
!5258 = distinct !DISubprogram(name: "param_array_set", scope: !2, file: !2, line: 463, type: !645, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5259)
!5259 = !{!5260, !5261, !5262, !5263}
!5260 = !DILocalVariable(name: "val", arg: 1, scope: !5258, file: !2, line: 463, type: !215)
!5261 = !DILocalVariable(name: "kp", arg: 2, scope: !5258, file: !2, line: 463, type: !647)
!5262 = !DILocalVariable(name: "arr", scope: !5258, file: !2, line: 465, type: !676)
!5263 = !DILocalVariable(name: "temp_num", scope: !5258, file: !2, line: 466, type: !43)
!5264 = !DILocation(line: 463, column: 40, scope: !5258)
!5265 = !DILocation(line: 463, column: 72, scope: !5258)
!5266 = !DILocation(line: 465, column: 2, scope: !5258)
!5267 = !DILocation(line: 465, column: 29, scope: !5258)
!5268 = !DILocation(line: 465, column: 35, scope: !5258)
!5269 = !DILocation(line: 465, column: 39, scope: !5258)
!5270 = !DILocation(line: 466, column: 2, scope: !5258)
!5271 = !DILocation(line: 466, column: 15, scope: !5258)
!5272 = !DILocation(line: 468, column: 21, scope: !5258)
!5273 = !DILocation(line: 468, column: 25, scope: !5258)
!5274 = !DILocation(line: 468, column: 30, scope: !5258)
!5275 = !DILocation(line: 468, column: 34, scope: !5258)
!5276 = !DILocation(line: 468, column: 40, scope: !5258)
!5277 = !DILocation(line: 468, column: 48, scope: !5258)
!5278 = !DILocation(line: 468, column: 53, scope: !5258)
!5279 = !DILocation(line: 468, column: 58, scope: !5258)
!5280 = !DILocation(line: 468, column: 63, scope: !5258)
!5281 = !DILocation(line: 469, column: 7, scope: !5258)
!5282 = !DILocation(line: 469, column: 12, scope: !5258)
!5283 = !DILocation(line: 469, column: 22, scope: !5258)
!5284 = !DILocation(line: 469, column: 27, scope: !5258)
!5285 = !DILocation(line: 469, column: 32, scope: !5258)
!5286 = !DILocation(line: 469, column: 37, scope: !5258)
!5287 = !DILocation(line: 469, column: 41, scope: !5258)
!5288 = !DILocation(line: 470, column: 7, scope: !5258)
!5289 = !DILocation(line: 470, column: 12, scope: !5258)
!5290 = !DILocation(line: 468, column: 9, scope: !5258)
!5291 = !DILocation(line: 471, column: 1, scope: !5258)
!5292 = !DILocation(line: 468, column: 2, scope: !5258)
!5293 = distinct !DISubprogram(name: "param_array_get", scope: !2, file: !2, line: 473, type: !651, scopeLine: 474, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5294)
!5294 = !{!5295, !5296, !5297, !5298, !5299, !5300, !5301}
!5295 = !DILocalVariable(name: "buffer", arg: 1, scope: !5293, file: !2, line: 473, type: !213)
!5296 = !DILocalVariable(name: "kp", arg: 2, scope: !5293, file: !2, line: 473, type: !647)
!5297 = !DILocalVariable(name: "i", scope: !5293, file: !2, line: 475, type: !204)
!5298 = !DILocalVariable(name: "off", scope: !5293, file: !2, line: 475, type: !204)
!5299 = !DILocalVariable(name: "ret", scope: !5293, file: !2, line: 475, type: !204)
!5300 = !DILocalVariable(name: "arr", scope: !5293, file: !2, line: 476, type: !676)
!5301 = !DILocalVariable(name: "p", scope: !5293, file: !2, line: 477, type: !633)
!5302 = !DILocation(line: 473, column: 34, scope: !5293)
!5303 = !DILocation(line: 473, column: 69, scope: !5293)
!5304 = !DILocation(line: 475, column: 2, scope: !5293)
!5305 = !DILocation(line: 475, column: 6, scope: !5293)
!5306 = !DILocation(line: 475, column: 9, scope: !5293)
!5307 = !DILocation(line: 475, column: 14, scope: !5293)
!5308 = !DILocation(line: 476, column: 2, scope: !5293)
!5309 = !DILocation(line: 476, column: 29, scope: !5293)
!5310 = !DILocation(line: 476, column: 35, scope: !5293)
!5311 = !DILocation(line: 476, column: 39, scope: !5293)
!5312 = !DILocation(line: 477, column: 2, scope: !5293)
!5313 = !DILocation(line: 477, column: 22, scope: !5293)
!5314 = !DILocation(line: 477, column: 27, scope: !5293)
!5315 = !DILocation(line: 477, column: 26, scope: !5293)
!5316 = !DILocation(line: 479, column: 15, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5293, file: !2, line: 479, column: 2)
!5318 = !DILocation(line: 479, column: 9, scope: !5317)
!5319 = !DILocation(line: 479, column: 7, scope: !5317)
!5320 = !DILocation(line: 479, column: 20, scope: !5321)
!5321 = distinct !DILexicalBlock(scope: !5317, file: !2, line: 479, column: 2)
!5322 = !DILocation(line: 479, column: 25, scope: !5321)
!5323 = !DILocation(line: 479, column: 30, scope: !5321)
!5324 = !DILocation(line: 479, column: 37, scope: !5321)
!5325 = !DILocation(line: 479, column: 42, scope: !5321)
!5326 = !DILocation(line: 479, column: 36, scope: !5321)
!5327 = !DILocation(line: 479, column: 48, scope: !5321)
!5328 = !DILocation(line: 479, column: 53, scope: !5321)
!5329 = !DILocation(line: 479, column: 22, scope: !5321)
!5330 = !DILocation(line: 479, column: 2, scope: !5317)
!5331 = !DILocation(line: 481, column: 7, scope: !5332)
!5332 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 481, column: 7)
!5333 = distinct !DILexicalBlock(scope: !5321, file: !2, line: 479, column: 64)
!5334 = !DILocation(line: 481, column: 7, scope: !5333)
!5335 = !DILocation(line: 482, column: 4, scope: !5332)
!5336 = !DILocation(line: 482, column: 11, scope: !5332)
!5337 = !DILocation(line: 482, column: 15, scope: !5332)
!5338 = !DILocation(line: 482, column: 20, scope: !5332)
!5339 = !DILocation(line: 483, column: 11, scope: !5333)
!5340 = !DILocation(line: 483, column: 16, scope: !5333)
!5341 = !DILocation(line: 483, column: 23, scope: !5333)
!5342 = !DILocation(line: 483, column: 28, scope: !5333)
!5343 = !DILocation(line: 483, column: 39, scope: !5333)
!5344 = !DILocation(line: 483, column: 37, scope: !5333)
!5345 = !DILocation(line: 483, column: 21, scope: !5333)
!5346 = !DILocation(line: 483, column: 5, scope: !5333)
!5347 = !DILocation(line: 483, column: 9, scope: !5333)
!5348 = !DILocation(line: 484, column: 25, scope: !5333)
!5349 = !DILocation(line: 484, column: 3, scope: !5333)
!5350 = !DILocation(line: 485, column: 9, scope: !5333)
!5351 = !DILocation(line: 485, column: 14, scope: !5333)
!5352 = !DILocation(line: 485, column: 19, scope: !5333)
!5353 = !DILocation(line: 485, column: 23, scope: !5333)
!5354 = !DILocation(line: 485, column: 32, scope: !5333)
!5355 = !DILocation(line: 485, column: 30, scope: !5333)
!5356 = !DILocation(line: 485, column: 7, scope: !5333)
!5357 = !DILocation(line: 486, column: 7, scope: !5358)
!5358 = distinct !DILexicalBlock(scope: !5333, file: !2, line: 486, column: 7)
!5359 = !DILocation(line: 486, column: 11, scope: !5358)
!5360 = !DILocation(line: 486, column: 7, scope: !5333)
!5361 = !DILocation(line: 487, column: 11, scope: !5358)
!5362 = !DILocation(line: 487, column: 4, scope: !5358)
!5363 = !DILocation(line: 488, column: 10, scope: !5333)
!5364 = !DILocation(line: 488, column: 7, scope: !5333)
!5365 = !DILocation(line: 489, column: 2, scope: !5333)
!5366 = !DILocation(line: 479, column: 60, scope: !5321)
!5367 = !DILocation(line: 479, column: 2, scope: !5321)
!5368 = distinct !{!5368, !5330, !5369, !4417, !4418}
!5369 = !DILocation(line: 489, column: 2, scope: !5317)
!5370 = !DILocation(line: 490, column: 2, scope: !5293)
!5371 = !DILocation(line: 490, column: 9, scope: !5293)
!5372 = !DILocation(line: 490, column: 14, scope: !5293)
!5373 = !DILocation(line: 491, column: 9, scope: !5293)
!5374 = !DILocation(line: 491, column: 2, scope: !5293)
!5375 = !DILocation(line: 492, column: 1, scope: !5293)
!5376 = distinct !DISubprogram(name: "param_array_free", scope: !2, file: !2, line: 494, type: !655, scopeLine: 495, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5377)
!5377 = !{!5378, !5379, !5380}
!5378 = !DILocalVariable(name: "arg", arg: 1, scope: !5376, file: !2, line: 494, type: !198)
!5379 = !DILocalVariable(name: "i", scope: !5376, file: !2, line: 496, type: !43)
!5380 = !DILocalVariable(name: "arr", scope: !5376, file: !2, line: 497, type: !676)
!5381 = !DILocation(line: 494, column: 36, scope: !5376)
!5382 = !DILocation(line: 496, column: 2, scope: !5376)
!5383 = !DILocation(line: 496, column: 15, scope: !5376)
!5384 = !DILocation(line: 497, column: 2, scope: !5376)
!5385 = !DILocation(line: 497, column: 29, scope: !5376)
!5386 = !DILocation(line: 497, column: 35, scope: !5376)
!5387 = !DILocation(line: 499, column: 6, scope: !5388)
!5388 = distinct !DILexicalBlock(scope: !5376, file: !2, line: 499, column: 6)
!5389 = !DILocation(line: 499, column: 11, scope: !5388)
!5390 = !DILocation(line: 499, column: 16, scope: !5388)
!5391 = !DILocation(line: 499, column: 6, scope: !5376)
!5392 = !DILocation(line: 500, column: 10, scope: !5393)
!5393 = distinct !DILexicalBlock(scope: !5388, file: !2, line: 500, column: 3)
!5394 = !DILocation(line: 500, column: 8, scope: !5393)
!5395 = !DILocation(line: 500, column: 15, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5393, file: !2, line: 500, column: 3)
!5397 = !DILocation(line: 500, column: 20, scope: !5396)
!5398 = !DILocation(line: 500, column: 25, scope: !5396)
!5399 = !DILocation(line: 500, column: 32, scope: !5396)
!5400 = !DILocation(line: 500, column: 37, scope: !5396)
!5401 = !DILocation(line: 500, column: 31, scope: !5396)
!5402 = !DILocation(line: 500, column: 43, scope: !5396)
!5403 = !DILocation(line: 500, column: 48, scope: !5396)
!5404 = !DILocation(line: 500, column: 17, scope: !5396)
!5405 = !DILocation(line: 500, column: 3, scope: !5393)
!5406 = !DILocation(line: 501, column: 4, scope: !5396)
!5407 = !DILocation(line: 501, column: 9, scope: !5396)
!5408 = !DILocation(line: 501, column: 14, scope: !5396)
!5409 = !DILocation(line: 501, column: 19, scope: !5396)
!5410 = !DILocation(line: 501, column: 24, scope: !5396)
!5411 = !DILocation(line: 501, column: 31, scope: !5396)
!5412 = !DILocation(line: 501, column: 36, scope: !5396)
!5413 = !DILocation(line: 501, column: 47, scope: !5396)
!5414 = !DILocation(line: 501, column: 45, scope: !5396)
!5415 = !DILocation(line: 501, column: 29, scope: !5396)
!5416 = !DILocation(line: 500, column: 55, scope: !5396)
!5417 = !DILocation(line: 500, column: 3, scope: !5396)
!5418 = distinct !{!5418, !5405, !5419, !4417, !4418}
!5419 = !DILocation(line: 501, column: 48, scope: !5393)
!5420 = !DILocation(line: 502, column: 1, scope: !5376)
!5421 = distinct !DISubprogram(name: "param_set_copystring", scope: !2, file: !2, line: 511, type: !645, scopeLine: 512, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5422)
!5422 = !{!5423, !5424, !5425}
!5423 = !DILocalVariable(name: "val", arg: 1, scope: !5421, file: !2, line: 511, type: !215)
!5424 = !DILocalVariable(name: "kp", arg: 2, scope: !5421, file: !2, line: 511, type: !647)
!5425 = !DILocalVariable(name: "kps", scope: !5421, file: !2, line: 513, type: !669)
!5426 = !DILocation(line: 511, column: 38, scope: !5421)
!5427 = !DILocation(line: 511, column: 70, scope: !5421)
!5428 = !DILocation(line: 513, column: 2, scope: !5421)
!5429 = !DILocation(line: 513, column: 30, scope: !5421)
!5430 = !DILocation(line: 513, column: 36, scope: !5421)
!5431 = !DILocation(line: 513, column: 40, scope: !5421)
!5432 = !DILocation(line: 515, column: 13, scope: !5433)
!5433 = distinct !DILexicalBlock(scope: !5421, file: !2, line: 515, column: 6)
!5434 = !DILocation(line: 515, column: 6, scope: !5433)
!5435 = !DILocation(line: 515, column: 17, scope: !5433)
!5436 = !DILocation(line: 515, column: 22, scope: !5433)
!5437 = !DILocation(line: 515, column: 27, scope: !5433)
!5438 = !DILocation(line: 515, column: 20, scope: !5433)
!5439 = !DILocation(line: 515, column: 6, scope: !5421)
!5440 = !DILocation(line: 516, column: 3, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5442, file: !2, line: 516, column: 3)
!5442 = distinct !DILexicalBlock(scope: !5433, file: !2, line: 515, column: 35)
!5443 = !DILocation(line: 516, column: 3, scope: !5444)
!5444 = distinct !DILexicalBlock(scope: !5441, file: !2, line: 516, column: 3)
!5445 = !DILocation(line: 518, column: 3, scope: !5442)
!5446 = !DILocation(line: 520, column: 9, scope: !5421)
!5447 = !DILocation(line: 520, column: 14, scope: !5421)
!5448 = !DILocation(line: 520, column: 22, scope: !5421)
!5449 = !DILocation(line: 520, column: 2, scope: !5421)
!5450 = !DILocation(line: 521, column: 2, scope: !5421)
!5451 = !DILocation(line: 522, column: 1, scope: !5421)
!5452 = distinct !DISubprogram(name: "param_get_string", scope: !2, file: !2, line: 525, type: !651, scopeLine: 526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5453)
!5453 = !{!5454, !5455, !5456}
!5454 = !DILocalVariable(name: "buffer", arg: 1, scope: !5452, file: !2, line: 525, type: !213)
!5455 = !DILocalVariable(name: "kp", arg: 2, scope: !5452, file: !2, line: 525, type: !647)
!5456 = !DILocalVariable(name: "kps", scope: !5452, file: !2, line: 527, type: !669)
!5457 = !DILocation(line: 525, column: 28, scope: !5452)
!5458 = !DILocation(line: 525, column: 63, scope: !5452)
!5459 = !DILocation(line: 527, column: 2, scope: !5452)
!5460 = !DILocation(line: 527, column: 30, scope: !5452)
!5461 = !DILocation(line: 527, column: 36, scope: !5452)
!5462 = !DILocation(line: 527, column: 40, scope: !5452)
!5463 = !DILocation(line: 528, column: 19, scope: !5452)
!5464 = !DILocation(line: 528, column: 46, scope: !5452)
!5465 = !DILocation(line: 528, column: 51, scope: !5452)
!5466 = !DILocation(line: 528, column: 9, scope: !5452)
!5467 = !DILocation(line: 529, column: 1, scope: !5452)
!5468 = !DILocation(line: 528, column: 2, scope: !5452)
!5469 = distinct !DISubprogram(name: "kernel_param_lock", scope: !2, file: !2, line: 603, type: !4139, scopeLine: 604, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5470)
!5470 = !{!5471}
!5471 = !DILocalVariable(name: "mod", arg: 1, scope: !5469, file: !2, line: 603, type: !586)
!5472 = !DILocation(line: 603, column: 39, scope: !5469)
!5473 = !DILocation(line: 605, column: 13, scope: !5469)
!5474 = !DILocation(line: 605, column: 2, scope: !5469)
!5475 = !DILocation(line: 606, column: 1, scope: !5469)
!5476 = !DISubprogram(name: "mutex_lock", scope: !612, file: !612, line: 227, type: !5477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5477 = !DISubroutineType(types: !5478)
!5478 = !{null, !5479}
!5479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !611, size: 64)
!5480 = distinct !DISubprogram(name: "kernel_param_unlock", scope: !2, file: !2, line: 608, type: !4139, scopeLine: 609, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5481)
!5481 = !{!5482}
!5482 = !DILocalVariable(name: "mod", arg: 1, scope: !5480, file: !2, line: 608, type: !586)
!5483 = !DILocation(line: 608, column: 41, scope: !5480)
!5484 = !DILocation(line: 610, column: 15, scope: !5480)
!5485 = !DILocation(line: 610, column: 2, scope: !5480)
!5486 = !DILocation(line: 611, column: 1, scope: !5480)
!5487 = !DISubprogram(name: "mutex_unlock", scope: !612, file: !612, line: 246, type: !5477, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5488 = distinct !DISubprogram(name: "module_param_sysfs_setup", scope: !2, file: !2, line: 707, type: !5489, scopeLine: 710, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5491)
!5489 = !DISubroutineType(types: !5490)
!5490 = !{!204, !586, !647, !43}
!5491 = !{!5492, !5493, !5494, !5495, !5496, !5497}
!5492 = !DILocalVariable(name: "mod", arg: 1, scope: !5488, file: !2, line: 707, type: !586)
!5493 = !DILocalVariable(name: "kparam", arg: 2, scope: !5488, file: !2, line: 708, type: !647)
!5494 = !DILocalVariable(name: "num_params", arg: 3, scope: !5488, file: !2, line: 709, type: !43)
!5495 = !DILocalVariable(name: "i", scope: !5488, file: !2, line: 711, type: !204)
!5496 = !DILocalVariable(name: "err", scope: !5488, file: !2, line: 711, type: !204)
!5497 = !DILocalVariable(name: "params", scope: !5488, file: !2, line: 712, type: !218)
!5498 = !DILocation(line: 707, column: 45, scope: !5488)
!5499 = !DILocation(line: 708, column: 36, scope: !5488)
!5500 = !DILocation(line: 709, column: 22, scope: !5488)
!5501 = !DILocation(line: 711, column: 2, scope: !5488)
!5502 = !DILocation(line: 711, column: 6, scope: !5488)
!5503 = !DILocation(line: 711, column: 9, scope: !5488)
!5504 = !DILocation(line: 712, column: 2, scope: !5488)
!5505 = !DILocation(line: 712, column: 7, scope: !5488)
!5506 = !DILocation(line: 714, column: 9, scope: !5507)
!5507 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 714, column: 2)
!5508 = !DILocation(line: 714, column: 7, scope: !5507)
!5509 = !DILocation(line: 714, column: 14, scope: !5510)
!5510 = distinct !DILexicalBlock(scope: !5507, file: !2, line: 714, column: 2)
!5511 = !DILocation(line: 714, column: 18, scope: !5510)
!5512 = !DILocation(line: 714, column: 16, scope: !5510)
!5513 = !DILocation(line: 714, column: 2, scope: !5507)
!5514 = !DILocation(line: 715, column: 7, scope: !5515)
!5515 = distinct !DILexicalBlock(scope: !5516, file: !2, line: 715, column: 7)
!5516 = distinct !DILexicalBlock(scope: !5510, file: !2, line: 714, column: 35)
!5517 = !DILocation(line: 715, column: 14, scope: !5515)
!5518 = !DILocation(line: 715, column: 17, scope: !5515)
!5519 = !DILocation(line: 715, column: 22, scope: !5515)
!5520 = !DILocation(line: 715, column: 7, scope: !5516)
!5521 = !DILocation(line: 716, column: 4, scope: !5515)
!5522 = !DILocation(line: 717, column: 26, scope: !5516)
!5523 = !DILocation(line: 717, column: 31, scope: !5516)
!5524 = !DILocation(line: 717, column: 39, scope: !5516)
!5525 = !DILocation(line: 717, column: 46, scope: !5516)
!5526 = !DILocation(line: 717, column: 50, scope: !5516)
!5527 = !DILocation(line: 717, column: 57, scope: !5516)
!5528 = !DILocation(line: 717, column: 60, scope: !5516)
!5529 = !DILocation(line: 717, column: 9, scope: !5516)
!5530 = !DILocation(line: 717, column: 7, scope: !5516)
!5531 = !DILocation(line: 718, column: 7, scope: !5532)
!5532 = distinct !DILexicalBlock(scope: !5516, file: !2, line: 718, column: 7)
!5533 = !DILocation(line: 718, column: 7, scope: !5516)
!5534 = !DILocation(line: 719, column: 29, scope: !5535)
!5535 = distinct !DILexicalBlock(scope: !5532, file: !2, line: 718, column: 12)
!5536 = !DILocation(line: 719, column: 34, scope: !5535)
!5537 = !DILocation(line: 719, column: 4, scope: !5535)
!5538 = !DILocation(line: 720, column: 11, scope: !5535)
!5539 = !DILocation(line: 720, column: 4, scope: !5535)
!5540 = !DILocation(line: 722, column: 10, scope: !5516)
!5541 = !DILocation(line: 723, column: 2, scope: !5516)
!5542 = !DILocation(line: 714, column: 31, scope: !5510)
!5543 = !DILocation(line: 714, column: 2, scope: !5510)
!5544 = distinct !{!5544, !5513, !5545, !4417, !4418}
!5545 = !DILocation(line: 723, column: 2, scope: !5507)
!5546 = !DILocation(line: 725, column: 7, scope: !5547)
!5547 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 725, column: 6)
!5548 = !DILocation(line: 725, column: 6, scope: !5488)
!5549 = !DILocation(line: 726, column: 3, scope: !5547)
!5550 = !DILocation(line: 729, column: 28, scope: !5488)
!5551 = !DILocation(line: 729, column: 33, scope: !5488)
!5552 = !DILocation(line: 729, column: 39, scope: !5488)
!5553 = !DILocation(line: 729, column: 46, scope: !5488)
!5554 = !DILocation(line: 729, column: 51, scope: !5488)
!5555 = !DILocation(line: 729, column: 57, scope: !5488)
!5556 = !DILocation(line: 729, column: 61, scope: !5488)
!5557 = !DILocation(line: 729, column: 8, scope: !5488)
!5558 = !DILocation(line: 729, column: 6, scope: !5488)
!5559 = !DILocation(line: 730, column: 6, scope: !5560)
!5560 = distinct !DILexicalBlock(scope: !5488, file: !2, line: 730, column: 6)
!5561 = !DILocation(line: 730, column: 6, scope: !5488)
!5562 = !DILocation(line: 731, column: 28, scope: !5560)
!5563 = !DILocation(line: 731, column: 33, scope: !5560)
!5564 = !DILocation(line: 731, column: 3, scope: !5560)
!5565 = !DILocation(line: 732, column: 9, scope: !5488)
!5566 = !DILocation(line: 732, column: 2, scope: !5488)
!5567 = !DILocation(line: 733, column: 1, scope: !5488)
!5568 = distinct !DISubprogram(name: "add_sysfs_param", scope: !2, file: !2, line: 626, type: !5569, scopeLine: 629, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5571)
!5569 = !DISubroutineType(types: !5570)
!5570 = !{!204, !243, !647, !215}
!5571 = !{!5572, !5573, !5574, !5575, !5576, !5577}
!5572 = !DILocalVariable(name: "mk", arg: 1, scope: !5568, file: !2, line: 626, type: !243)
!5573 = !DILocalVariable(name: "kp", arg: 2, scope: !5568, file: !2, line: 627, type: !647)
!5574 = !DILocalVariable(name: "name", arg: 3, scope: !5568, file: !2, line: 628, type: !215)
!5575 = !DILocalVariable(name: "new_mp", scope: !5568, file: !2, line: 630, type: !4113)
!5576 = !DILocalVariable(name: "new_attrs", scope: !5568, file: !2, line: 631, type: !3956)
!5577 = !DILocalVariable(name: "i", scope: !5568, file: !2, line: 632, type: !43)
!5578 = !DILocation(line: 626, column: 61, scope: !5568)
!5579 = !DILocation(line: 627, column: 37, scope: !5568)
!5580 = !DILocation(line: 628, column: 22, scope: !5568)
!5581 = !DILocation(line: 630, column: 2, scope: !5568)
!5582 = !DILocation(line: 630, column: 29, scope: !5568)
!5583 = !DILocation(line: 631, column: 2, scope: !5568)
!5584 = !DILocation(line: 631, column: 21, scope: !5568)
!5585 = !DILocation(line: 632, column: 2, scope: !5568)
!5586 = !DILocation(line: 632, column: 15, scope: !5568)
!5587 = !DILocation(line: 635, column: 2, scope: !5568)
!5588 = !DILocation(line: 635, column: 2, scope: !5589)
!5589 = distinct !DILexicalBlock(scope: !5590, file: !2, line: 635, column: 2)
!5590 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 635, column: 2)
!5591 = !DILocation(line: 635, column: 2, scope: !5590)
!5592 = !DILocation(line: 635, column: 2, scope: !5593)
!5593 = distinct !DILexicalBlock(scope: !5589, file: !2, line: 635, column: 2)
!5594 = !DILocation(line: 635, column: 2, scope: !5595)
!5595 = distinct !DILexicalBlock(scope: !5593, file: !2, line: 635, column: 2)
!5596 = !DILocation(line: 635, column: 2, scope: !5597)
!5597 = distinct !DILexicalBlock(scope: !5593, file: !2, line: 635, column: 2)
!5598 = !{i64 2154587815, i64 2154587844, i64 2154587890, i64 2154587948, i64 2154588002, i64 2154588056, i64 2154588111, i64 2154588142}
!5599 = !DILocation(line: 637, column: 7, scope: !5600)
!5600 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 637, column: 6)
!5601 = !DILocation(line: 637, column: 11, scope: !5600)
!5602 = !DILocation(line: 637, column: 6, scope: !5568)
!5603 = !DILocation(line: 639, column: 12, scope: !5604)
!5604 = distinct !DILexicalBlock(scope: !5600, file: !2, line: 637, column: 15)
!5605 = !DILocation(line: 639, column: 3, scope: !5604)
!5606 = !DILocation(line: 639, column: 7, scope: !5604)
!5607 = !DILocation(line: 639, column: 10, scope: !5604)
!5608 = !DILocation(line: 640, column: 8, scope: !5609)
!5609 = distinct !DILexicalBlock(scope: !5604, file: !2, line: 640, column: 7)
!5610 = !DILocation(line: 640, column: 12, scope: !5609)
!5611 = !DILocation(line: 640, column: 7, scope: !5604)
!5612 = !DILocation(line: 641, column: 4, scope: !5609)
!5613 = !DILocation(line: 642, column: 3, scope: !5604)
!5614 = !DILocation(line: 642, column: 7, scope: !5604)
!5615 = !DILocation(line: 642, column: 11, scope: !5604)
!5616 = !DILocation(line: 642, column: 15, scope: !5604)
!5617 = !DILocation(line: 642, column: 20, scope: !5604)
!5618 = !DILocation(line: 644, column: 23, scope: !5604)
!5619 = !DILocation(line: 644, column: 3, scope: !5604)
!5620 = !DILocation(line: 644, column: 7, scope: !5604)
!5621 = !DILocation(line: 644, column: 11, scope: !5604)
!5622 = !DILocation(line: 644, column: 15, scope: !5604)
!5623 = !DILocation(line: 644, column: 21, scope: !5604)
!5624 = !DILocation(line: 647, column: 8, scope: !5625)
!5625 = distinct !DILexicalBlock(scope: !5604, file: !2, line: 647, column: 7)
!5626 = !DILocation(line: 647, column: 12, scope: !5625)
!5627 = !DILocation(line: 647, column: 16, scope: !5625)
!5628 = !DILocation(line: 647, column: 20, scope: !5625)
!5629 = !DILocation(line: 647, column: 7, scope: !5604)
!5630 = !DILocation(line: 648, column: 4, scope: !5625)
!5631 = !DILocation(line: 649, column: 2, scope: !5604)
!5632 = !DILocation(line: 652, column: 20, scope: !5568)
!5633 = !DILocation(line: 652, column: 24, scope: !5568)
!5634 = !DILocation(line: 654, column: 34, scope: !5568)
!5635 = !DILocation(line: 654, column: 38, scope: !5568)
!5636 = !DILocation(line: 654, column: 42, scope: !5568)
!5637 = !DILocation(line: 654, column: 46, scope: !5568)
!5638 = !DILocation(line: 654, column: 33, scope: !5568)
!5639 = !DILocation(line: 654, column: 31, scope: !5568)
!5640 = !DILocation(line: 653, column: 22, scope: !5568)
!5641 = !DILocation(line: 652, column: 11, scope: !5568)
!5642 = !DILocation(line: 652, column: 9, scope: !5568)
!5643 = !DILocation(line: 656, column: 7, scope: !5644)
!5644 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 656, column: 6)
!5645 = !DILocation(line: 656, column: 6, scope: !5568)
!5646 = !DILocation(line: 657, column: 3, scope: !5644)
!5647 = !DILocation(line: 658, column: 11, scope: !5568)
!5648 = !DILocation(line: 658, column: 2, scope: !5568)
!5649 = !DILocation(line: 658, column: 6, scope: !5568)
!5650 = !DILocation(line: 658, column: 9, scope: !5568)
!5651 = !DILocation(line: 661, column: 23, scope: !5568)
!5652 = !DILocation(line: 661, column: 27, scope: !5568)
!5653 = !DILocation(line: 661, column: 31, scope: !5568)
!5654 = !DILocation(line: 661, column: 35, scope: !5568)
!5655 = !DILocation(line: 662, column: 41, scope: !5568)
!5656 = !DILocation(line: 662, column: 45, scope: !5568)
!5657 = !DILocation(line: 662, column: 49, scope: !5568)
!5658 = !DILocation(line: 662, column: 53, scope: !5568)
!5659 = !DILocation(line: 662, column: 40, scope: !5568)
!5660 = !DILocation(line: 662, column: 38, scope: !5568)
!5661 = !DILocation(line: 661, column: 14, scope: !5568)
!5662 = !DILocation(line: 661, column: 12, scope: !5568)
!5663 = !DILocation(line: 664, column: 7, scope: !5664)
!5664 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 664, column: 6)
!5665 = !DILocation(line: 664, column: 6, scope: !5568)
!5666 = !DILocation(line: 665, column: 3, scope: !5664)
!5667 = !DILocation(line: 666, column: 22, scope: !5568)
!5668 = !DILocation(line: 666, column: 2, scope: !5568)
!5669 = !DILocation(line: 666, column: 6, scope: !5568)
!5670 = !DILocation(line: 666, column: 10, scope: !5568)
!5671 = !DILocation(line: 666, column: 14, scope: !5568)
!5672 = !DILocation(line: 666, column: 20, scope: !5568)
!5673 = !DILocation(line: 669, column: 10, scope: !5568)
!5674 = !DILocation(line: 669, column: 14, scope: !5568)
!5675 = !DILocation(line: 669, column: 18, scope: !5568)
!5676 = !DILocation(line: 669, column: 24, scope: !5568)
!5677 = !DILocation(line: 669, column: 28, scope: !5568)
!5678 = !DILocation(line: 669, column: 32, scope: !5568)
!5679 = !DILocation(line: 669, column: 2, scope: !5568)
!5680 = !DILocation(line: 670, column: 2, scope: !5568)
!5681 = !DILocation(line: 670, column: 2, scope: !5682)
!5682 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 670, column: 2)
!5683 = !DILocation(line: 671, column: 37, scope: !5568)
!5684 = !DILocation(line: 671, column: 2, scope: !5568)
!5685 = !DILocation(line: 671, column: 6, scope: !5568)
!5686 = !DILocation(line: 671, column: 10, scope: !5568)
!5687 = !DILocation(line: 671, column: 16, scope: !5568)
!5688 = !DILocation(line: 671, column: 20, scope: !5568)
!5689 = !DILocation(line: 671, column: 24, scope: !5568)
!5690 = !DILocation(line: 671, column: 29, scope: !5568)
!5691 = !DILocation(line: 671, column: 35, scope: !5568)
!5692 = !DILocation(line: 672, column: 2, scope: !5568)
!5693 = !DILocation(line: 672, column: 6, scope: !5568)
!5694 = !DILocation(line: 672, column: 10, scope: !5568)
!5695 = !DILocation(line: 672, column: 16, scope: !5568)
!5696 = !DILocation(line: 672, column: 20, scope: !5568)
!5697 = !DILocation(line: 672, column: 24, scope: !5568)
!5698 = !DILocation(line: 672, column: 29, scope: !5568)
!5699 = !DILocation(line: 672, column: 35, scope: !5568)
!5700 = !DILocation(line: 672, column: 40, scope: !5568)
!5701 = !DILocation(line: 674, column: 7, scope: !5702)
!5702 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 674, column: 6)
!5703 = !DILocation(line: 674, column: 11, scope: !5702)
!5704 = !DILocation(line: 674, column: 16, scope: !5702)
!5705 = !DILocation(line: 674, column: 49, scope: !5702)
!5706 = !DILocation(line: 674, column: 6, scope: !5568)
!5707 = !DILocation(line: 675, column: 3, scope: !5702)
!5708 = !DILocation(line: 675, column: 7, scope: !5702)
!5709 = !DILocation(line: 675, column: 11, scope: !5702)
!5710 = !DILocation(line: 675, column: 17, scope: !5702)
!5711 = !DILocation(line: 675, column: 21, scope: !5702)
!5712 = !DILocation(line: 675, column: 25, scope: !5702)
!5713 = !DILocation(line: 675, column: 30, scope: !5702)
!5714 = !DILocation(line: 675, column: 36, scope: !5702)
!5715 = !DILocation(line: 675, column: 42, scope: !5702)
!5716 = !DILocation(line: 677, column: 3, scope: !5702)
!5717 = !DILocation(line: 677, column: 7, scope: !5702)
!5718 = !DILocation(line: 677, column: 11, scope: !5702)
!5719 = !DILocation(line: 677, column: 17, scope: !5702)
!5720 = !DILocation(line: 677, column: 21, scope: !5702)
!5721 = !DILocation(line: 677, column: 25, scope: !5702)
!5722 = !DILocation(line: 677, column: 30, scope: !5702)
!5723 = !DILocation(line: 677, column: 36, scope: !5702)
!5724 = !DILocation(line: 677, column: 42, scope: !5702)
!5725 = !DILocation(line: 678, column: 55, scope: !5568)
!5726 = !DILocation(line: 678, column: 2, scope: !5568)
!5727 = !DILocation(line: 678, column: 6, scope: !5568)
!5728 = !DILocation(line: 678, column: 10, scope: !5568)
!5729 = !DILocation(line: 678, column: 16, scope: !5568)
!5730 = !DILocation(line: 678, column: 20, scope: !5568)
!5731 = !DILocation(line: 678, column: 24, scope: !5568)
!5732 = !DILocation(line: 678, column: 29, scope: !5568)
!5733 = !DILocation(line: 678, column: 35, scope: !5568)
!5734 = !DILocation(line: 678, column: 40, scope: !5568)
!5735 = !DILocation(line: 678, column: 45, scope: !5568)
!5736 = !DILocation(line: 679, column: 47, scope: !5568)
!5737 = !DILocation(line: 679, column: 51, scope: !5568)
!5738 = !DILocation(line: 679, column: 2, scope: !5568)
!5739 = !DILocation(line: 679, column: 6, scope: !5568)
!5740 = !DILocation(line: 679, column: 10, scope: !5568)
!5741 = !DILocation(line: 679, column: 16, scope: !5568)
!5742 = !DILocation(line: 679, column: 20, scope: !5568)
!5743 = !DILocation(line: 679, column: 24, scope: !5568)
!5744 = !DILocation(line: 679, column: 29, scope: !5568)
!5745 = !DILocation(line: 679, column: 35, scope: !5568)
!5746 = !DILocation(line: 679, column: 40, scope: !5568)
!5747 = !DILocation(line: 679, column: 45, scope: !5568)
!5748 = !DILocation(line: 680, column: 2, scope: !5568)
!5749 = !DILocation(line: 680, column: 6, scope: !5568)
!5750 = !DILocation(line: 680, column: 10, scope: !5568)
!5751 = !DILocation(line: 680, column: 13, scope: !5568)
!5752 = !DILocation(line: 683, column: 9, scope: !5753)
!5753 = distinct !DILexicalBlock(scope: !5568, file: !2, line: 683, column: 2)
!5754 = !DILocation(line: 683, column: 7, scope: !5753)
!5755 = !DILocation(line: 683, column: 14, scope: !5756)
!5756 = distinct !DILexicalBlock(scope: !5753, file: !2, line: 683, column: 2)
!5757 = !DILocation(line: 683, column: 18, scope: !5756)
!5758 = !DILocation(line: 683, column: 22, scope: !5756)
!5759 = !DILocation(line: 683, column: 26, scope: !5756)
!5760 = !DILocation(line: 683, column: 16, scope: !5756)
!5761 = !DILocation(line: 683, column: 2, scope: !5753)
!5762 = !DILocation(line: 684, column: 27, scope: !5756)
!5763 = !DILocation(line: 684, column: 31, scope: !5756)
!5764 = !DILocation(line: 684, column: 35, scope: !5756)
!5765 = !DILocation(line: 684, column: 41, scope: !5756)
!5766 = !DILocation(line: 684, column: 44, scope: !5756)
!5767 = !DILocation(line: 684, column: 50, scope: !5756)
!5768 = !DILocation(line: 684, column: 3, scope: !5756)
!5769 = !DILocation(line: 684, column: 7, scope: !5756)
!5770 = !DILocation(line: 684, column: 11, scope: !5756)
!5771 = !DILocation(line: 684, column: 15, scope: !5756)
!5772 = !DILocation(line: 684, column: 21, scope: !5756)
!5773 = !DILocation(line: 684, column: 24, scope: !5756)
!5774 = !DILocation(line: 683, column: 32, scope: !5756)
!5775 = !DILocation(line: 683, column: 2, scope: !5756)
!5776 = distinct !{!5776, !5761, !5777, !4417, !4418}
!5777 = !DILocation(line: 684, column: 50, scope: !5753)
!5778 = !DILocation(line: 685, column: 2, scope: !5568)
!5779 = !DILocation(line: 685, column: 6, scope: !5568)
!5780 = !DILocation(line: 685, column: 10, scope: !5568)
!5781 = !DILocation(line: 685, column: 14, scope: !5568)
!5782 = !DILocation(line: 685, column: 20, scope: !5568)
!5783 = !DILocation(line: 685, column: 24, scope: !5568)
!5784 = !DILocation(line: 685, column: 28, scope: !5568)
!5785 = !DILocation(line: 685, column: 33, scope: !5568)
!5786 = !DILocation(line: 686, column: 2, scope: !5568)
!5787 = !DILocation(line: 687, column: 1, scope: !5568)
!5788 = distinct !DISubprogram(name: "free_module_param_attrs", scope: !2, file: !2, line: 690, type: !5789, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5791)
!5789 = !DISubroutineType(types: !5790)
!5790 = !{null, !243}
!5791 = !{!5792}
!5792 = !DILocalVariable(name: "mk", arg: 1, scope: !5788, file: !2, line: 690, type: !243)
!5793 = !DILocation(line: 690, column: 60, scope: !5788)
!5794 = !DILocation(line: 692, column: 6, scope: !5795)
!5795 = distinct !DILexicalBlock(scope: !5788, file: !2, line: 692, column: 6)
!5796 = !DILocation(line: 692, column: 10, scope: !5795)
!5797 = !DILocation(line: 692, column: 6, scope: !5788)
!5798 = !DILocation(line: 693, column: 9, scope: !5795)
!5799 = !DILocation(line: 693, column: 13, scope: !5795)
!5800 = !DILocation(line: 693, column: 17, scope: !5795)
!5801 = !DILocation(line: 693, column: 21, scope: !5795)
!5802 = !DILocation(line: 693, column: 3, scope: !5795)
!5803 = !DILocation(line: 694, column: 8, scope: !5788)
!5804 = !DILocation(line: 694, column: 12, scope: !5788)
!5805 = !DILocation(line: 694, column: 2, scope: !5788)
!5806 = !DILocation(line: 695, column: 2, scope: !5788)
!5807 = !DILocation(line: 695, column: 6, scope: !5788)
!5808 = !DILocation(line: 695, column: 9, scope: !5788)
!5809 = !DILocation(line: 696, column: 1, scope: !5788)
!5810 = !DISubprogram(name: "sysfs_create_group", scope: !229, file: !229, line: 307, type: !5811, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5811 = !DISubroutineType(types: !5812)
!5812 = !{!204, !257, !370}
!5813 = distinct !DISubprogram(name: "module_param_sysfs_remove", scope: !2, file: !2, line: 742, type: !4139, scopeLine: 743, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5814)
!5814 = !{!5815}
!5815 = !DILocalVariable(name: "mod", arg: 1, scope: !5813, file: !2, line: 742, type: !586)
!5816 = !DILocation(line: 742, column: 47, scope: !5813)
!5817 = !DILocation(line: 744, column: 6, scope: !5818)
!5818 = distinct !DILexicalBlock(scope: !5813, file: !2, line: 744, column: 6)
!5819 = !DILocation(line: 744, column: 11, scope: !5818)
!5820 = !DILocation(line: 744, column: 17, scope: !5818)
!5821 = !DILocation(line: 744, column: 6, scope: !5813)
!5822 = !DILocation(line: 745, column: 23, scope: !5823)
!5823 = distinct !DILexicalBlock(scope: !5818, file: !2, line: 744, column: 21)
!5824 = !DILocation(line: 745, column: 28, scope: !5823)
!5825 = !DILocation(line: 745, column: 34, scope: !5823)
!5826 = !DILocation(line: 745, column: 41, scope: !5823)
!5827 = !DILocation(line: 745, column: 46, scope: !5823)
!5828 = !DILocation(line: 745, column: 52, scope: !5823)
!5829 = !DILocation(line: 745, column: 56, scope: !5823)
!5830 = !DILocation(line: 745, column: 3, scope: !5823)
!5831 = !DILocation(line: 748, column: 28, scope: !5823)
!5832 = !DILocation(line: 748, column: 33, scope: !5823)
!5833 = !DILocation(line: 748, column: 3, scope: !5823)
!5834 = !DILocation(line: 749, column: 2, scope: !5823)
!5835 = !DILocation(line: 750, column: 1, scope: !5813)
!5836 = !DISubprogram(name: "sysfs_remove_group", scope: !229, file: !229, line: 315, type: !5837, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5837 = !DISubroutineType(types: !5838)
!5838 = !{null, !257, !370}
!5839 = distinct !DISubprogram(name: "destroy_params", scope: !2, file: !2, line: 753, type: !5840, scopeLine: 754, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5842)
!5840 = !DISubroutineType(types: !5841)
!5841 = !{null, !647, !43}
!5842 = !{!5843, !5844, !5845}
!5843 = !DILocalVariable(name: "params", arg: 1, scope: !5839, file: !2, line: 753, type: !647)
!5844 = !DILocalVariable(name: "num", arg: 2, scope: !5839, file: !2, line: 753, type: !43)
!5845 = !DILocalVariable(name: "i", scope: !5839, file: !2, line: 755, type: !43)
!5846 = !DILocation(line: 753, column: 48, scope: !5839)
!5847 = !DILocation(line: 753, column: 65, scope: !5839)
!5848 = !DILocation(line: 755, column: 2, scope: !5839)
!5849 = !DILocation(line: 755, column: 15, scope: !5839)
!5850 = !DILocation(line: 757, column: 9, scope: !5851)
!5851 = distinct !DILexicalBlock(scope: !5839, file: !2, line: 757, column: 2)
!5852 = !DILocation(line: 757, column: 7, scope: !5851)
!5853 = !DILocation(line: 757, column: 14, scope: !5854)
!5854 = distinct !DILexicalBlock(scope: !5851, file: !2, line: 757, column: 2)
!5855 = !DILocation(line: 757, column: 18, scope: !5854)
!5856 = !DILocation(line: 757, column: 16, scope: !5854)
!5857 = !DILocation(line: 757, column: 2, scope: !5851)
!5858 = !DILocation(line: 758, column: 7, scope: !5859)
!5859 = distinct !DILexicalBlock(scope: !5854, file: !2, line: 758, column: 7)
!5860 = !DILocation(line: 758, column: 14, scope: !5859)
!5861 = !DILocation(line: 758, column: 17, scope: !5859)
!5862 = !DILocation(line: 758, column: 22, scope: !5859)
!5863 = !DILocation(line: 758, column: 7, scope: !5854)
!5864 = !DILocation(line: 759, column: 4, scope: !5859)
!5865 = !DILocation(line: 759, column: 11, scope: !5859)
!5866 = !DILocation(line: 759, column: 14, scope: !5859)
!5867 = !DILocation(line: 759, column: 19, scope: !5859)
!5868 = !DILocation(line: 759, column: 24, scope: !5859)
!5869 = !DILocation(line: 759, column: 31, scope: !5859)
!5870 = !DILocation(line: 759, column: 34, scope: !5859)
!5871 = !DILocation(line: 757, column: 24, scope: !5854)
!5872 = !DILocation(line: 757, column: 2, scope: !5854)
!5873 = distinct !{!5873, !5857, !5874, !4417, !4418}
!5874 = !DILocation(line: 759, column: 37, scope: !5851)
!5875 = !DILocation(line: 760, column: 1, scope: !5839)
!5876 = distinct !DISubprogram(name: "__modver_version_show", scope: !2, file: !2, line: 856, type: !236, scopeLine: 858, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5877)
!5877 = !{!5878, !5879, !5880, !5881, !5882}
!5878 = !DILocalVariable(name: "mattr", arg: 1, scope: !5876, file: !2, line: 856, type: !242)
!5879 = !DILocalVariable(name: "mk", arg: 2, scope: !5876, file: !2, line: 857, type: !243)
!5880 = !DILocalVariable(name: "buf", arg: 3, scope: !5876, file: !2, line: 857, type: !213)
!5881 = !DILocalVariable(name: "vattr", scope: !5876, file: !2, line: 859, type: !221)
!5882 = !DILocalVariable(name: "__mptr", scope: !5883, file: !2, line: 860, type: !198)
!5883 = distinct !DILexicalBlock(scope: !5876, file: !2, line: 860, column: 3)
!5884 = !DILocation(line: 856, column: 56, scope: !5876)
!5885 = !DILocation(line: 857, column: 33, scope: !5876)
!5886 = !DILocation(line: 857, column: 43, scope: !5876)
!5887 = !DILocation(line: 859, column: 2, scope: !5876)
!5888 = !DILocation(line: 859, column: 35, scope: !5876)
!5889 = !DILocation(line: 860, column: 3, scope: !5883)
!5890 = !DILocation(line: 860, column: 3, scope: !5876)
!5891 = !DILocation(line: 862, column: 19, scope: !5876)
!5892 = !DILocation(line: 862, column: 43, scope: !5876)
!5893 = !DILocation(line: 862, column: 50, scope: !5876)
!5894 = !DILocation(line: 862, column: 9, scope: !5876)
!5895 = !DILocation(line: 863, column: 1, scope: !5876)
!5896 = !DILocation(line: 862, column: 2, scope: !5876)
!5897 = distinct !DISubprogram(name: "module_kobj_release", scope: !2, file: !2, line: 945, type: !349, scopeLine: 946, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5898)
!5898 = !{!5899, !5900, !5901}
!5899 = !DILocalVariable(name: "kobj", arg: 1, scope: !5897, file: !2, line: 945, type: !257)
!5900 = !DILocalVariable(name: "mk", scope: !5897, file: !2, line: 947, type: !243)
!5901 = !DILocalVariable(name: "__mptr", scope: !5902, file: !2, line: 947, type: !198)
!5902 = distinct !DILexicalBlock(scope: !5897, file: !2, line: 947, column: 30)
!5903 = !DILocation(line: 945, column: 49, scope: !5897)
!5904 = !DILocation(line: 947, column: 2, scope: !5897)
!5905 = !DILocation(line: 947, column: 25, scope: !5897)
!5906 = !DILocation(line: 947, column: 30, scope: !5902)
!5907 = !DILocation(line: 947, column: 30, scope: !5897)
!5908 = !DILocation(line: 948, column: 11, scope: !5897)
!5909 = !DILocation(line: 948, column: 15, scope: !5897)
!5910 = !DILocation(line: 948, column: 2, scope: !5897)
!5911 = !DILocation(line: 949, column: 1, scope: !5897)
!5912 = distinct !DISubprogram(name: "__initstub__kmod_params__337_974_param_sysfs_init4", scope: !2, file: !2, line: 974, type: !702, scopeLine: 974, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!5913 = !DILocation(line: 974, column: 1, scope: !5912)
!5914 = distinct !DISubprogram(name: "param_sysfs_init", scope: !2, file: !2, line: 963, type: !702, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!5915 = !DILocation(line: 965, column: 16, scope: !5914)
!5916 = !DILocation(line: 965, column: 14, scope: !5914)
!5917 = !DILocation(line: 966, column: 7, scope: !5918)
!5918 = distinct !DILexicalBlock(scope: !5914, file: !2, line: 966, column: 6)
!5919 = !DILocation(line: 966, column: 6, scope: !5914)
!5920 = !DILocation(line: 967, column: 3, scope: !5921)
!5921 = distinct !DILexicalBlock(scope: !5922, file: !2, line: 967, column: 3)
!5922 = distinct !DILexicalBlock(scope: !5918, file: !2, line: 966, column: 20)
!5923 = !DILocation(line: 967, column: 3, scope: !5924)
!5924 = distinct !DILexicalBlock(scope: !5921, file: !2, line: 967, column: 3)
!5925 = !DILocation(line: 969, column: 3, scope: !5922)
!5926 = !DILocation(line: 972, column: 2, scope: !5914)
!5927 = !DILocation(line: 973, column: 1, scope: !5914)
!5928 = distinct !DISubprogram(name: "__initstub__kmod_params__339_990_param_sysfs_builtin_init7", scope: !2, file: !2, line: 990, type: !702, scopeLine: 990, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!5929 = !DILocation(line: 990, column: 1, scope: !5928)
!5930 = distinct !DISubprogram(name: "param_sysfs_builtin_init", scope: !2, file: !2, line: 980, type: !702, scopeLine: 981, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39)
!5931 = !DILocation(line: 982, column: 7, scope: !5932)
!5932 = distinct !DILexicalBlock(scope: !5930, file: !2, line: 982, column: 6)
!5933 = !DILocation(line: 982, column: 6, scope: !5930)
!5934 = !DILocation(line: 983, column: 3, scope: !5932)
!5935 = !DILocation(line: 985, column: 2, scope: !5930)
!5936 = !DILocation(line: 986, column: 2, scope: !5930)
!5937 = !DILocation(line: 988, column: 2, scope: !5930)
!5938 = !DILocation(line: 989, column: 1, scope: !5930)
!5939 = distinct !DISubprogram(name: "native_save_fl", scope: !4610, file: !4610, line: 17, type: !4611, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5940)
!5940 = !{!5941}
!5941 = !DILocalVariable(name: "flags", scope: !5939, file: !4610, line: 19, type: !209)
!5942 = !DILocation(line: 19, column: 2, scope: !5939)
!5943 = !DILocation(line: 19, column: 16, scope: !5939)
!5944 = !DILocation(line: 26, column: 2, scope: !5939)
!5945 = !{i64 1901769, i64 1901790}
!5946 = !DILocation(line: 32, column: 9, scope: !5939)
!5947 = !DILocation(line: 33, column: 1, scope: !5939)
!5948 = !DILocation(line: 32, column: 2, scope: !5939)
!5949 = distinct !DISubprogram(name: "param_check_unsafe", scope: !2, file: !2, line: 101, type: !5950, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5952)
!5950 = !DISubroutineType(types: !5951)
!5951 = !{!218, !647}
!5952 = !{!5953}
!5953 = !DILocalVariable(name: "kp", arg: 1, scope: !5949, file: !2, line: 101, type: !647)
!5954 = !DILocation(line: 101, column: 59, scope: !5949)
!5955 = !DILocation(line: 103, column: 6, scope: !5956)
!5956 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 103, column: 6)
!5957 = !DILocation(line: 103, column: 10, scope: !5956)
!5958 = !DILocation(line: 103, column: 16, scope: !5956)
!5959 = !DILocation(line: 103, column: 42, scope: !5956)
!5960 = !DILocation(line: 104, column: 6, scope: !5956)
!5961 = !DILocation(line: 103, column: 6, scope: !5949)
!5962 = !DILocation(line: 105, column: 3, scope: !5956)
!5963 = !DILocation(line: 107, column: 6, scope: !5964)
!5964 = distinct !DILexicalBlock(scope: !5949, file: !2, line: 107, column: 6)
!5965 = !DILocation(line: 107, column: 10, scope: !5964)
!5966 = !DILocation(line: 107, column: 16, scope: !5964)
!5967 = !DILocation(line: 107, column: 6, scope: !5949)
!5968 = !DILocation(line: 108, column: 3, scope: !5969)
!5969 = distinct !DILexicalBlock(scope: !5970, file: !2, line: 108, column: 3)
!5970 = distinct !DILexicalBlock(scope: !5964, file: !2, line: 107, column: 42)
!5971 = !DILocation(line: 108, column: 3, scope: !5972)
!5972 = distinct !DILexicalBlock(scope: !5969, file: !2, line: 108, column: 3)
!5973 = !DILocation(line: 110, column: 3, scope: !5970)
!5974 = !DILocation(line: 111, column: 2, scope: !5970)
!5975 = !DILocation(line: 113, column: 2, scope: !5949)
!5976 = !DILocation(line: 114, column: 1, scope: !5949)
!5977 = !DISubprogram(name: "security_locked_down", scope: !137, file: !137, line: 488, type: !5978, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5978 = !DISubroutineType(types: !5979)
!5979 = !{!204, !136}
!5980 = !DISubprogram(name: "add_taint", scope: !170, file: !170, line: 93, type: !5981, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5981 = !DISubroutineType(types: !5982)
!5982 = !{null, !43, !169}
!5983 = !DISubprogram(name: "kstrtoll", scope: !4768, file: !4768, line: 13, type: !5984, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5984 = !DISubroutineType(types: !5985)
!5985 = !{!204, !215, !43, !4143}
!5986 = distinct !DISubprogram(name: "spin_lock", scope: !5987, file: !5987, line: 349, type: !5988, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5990)
!5987 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!5988 = !DISubroutineType(types: !5989)
!5989 = !{null, !2293}
!5990 = !{!5991}
!5991 = !DILocalVariable(name: "lock", arg: 1, scope: !5986, file: !5987, line: 349, type: !2293)
!5992 = !DILocation(line: 349, column: 51, scope: !5986)
!5993 = !DILocation(line: 351, column: 2, scope: !5986)
!5994 = !DILocation(line: 352, column: 1, scope: !5986)
!5995 = distinct !DISubprogram(name: "list_del", scope: !5996, file: !5996, line: 227, type: !5997, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !5999)
!5996 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!5997 = !DISubroutineType(types: !5998)
!5998 = !{null, !254}
!5999 = !{!6000}
!6000 = !DILocalVariable(name: "entry", arg: 1, scope: !5995, file: !5996, line: 227, type: !254)
!6001 = !DILocation(line: 227, column: 47, scope: !5995)
!6002 = !DILocation(line: 229, column: 19, scope: !5995)
!6003 = !DILocation(line: 229, column: 2, scope: !5995)
!6004 = !DILocation(line: 230, column: 2, scope: !5995)
!6005 = !DILocation(line: 230, column: 9, scope: !5995)
!6006 = !DILocation(line: 230, column: 14, scope: !5995)
!6007 = !DILocation(line: 231, column: 2, scope: !5995)
!6008 = !DILocation(line: 231, column: 9, scope: !5995)
!6009 = !DILocation(line: 231, column: 14, scope: !5995)
!6010 = !DILocation(line: 232, column: 1, scope: !5995)
!6011 = !DISubprogram(name: "kfree", scope: !175, file: !175, line: 227, type: !6012, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6012 = !DISubroutineType(types: !6013)
!6013 = !{null, !2513}
!6014 = distinct !DISubprogram(name: "spin_unlock", scope: !5987, file: !5987, line: 389, type: !5988, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6015)
!6015 = !{!6016}
!6016 = !DILocalVariable(name: "lock", arg: 1, scope: !6014, file: !5987, line: 389, type: !2293)
!6017 = !DILocation(line: 389, column: 53, scope: !6014)
!6018 = !DILocation(line: 391, column: 2, scope: !6014)
!6019 = !DILocation(line: 392, column: 1, scope: !6014)
!6020 = !DISubprogram(name: "_raw_spin_lock", scope: !6021, file: !6021, line: 22, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6021 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!6022 = !DISubroutineType(types: !6023)
!6023 = !{null, !6024}
!6024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!6025 = distinct !DISubprogram(name: "__list_del_entry", scope: !5996, file: !5996, line: 213, type: !5997, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6026)
!6026 = !{!6027}
!6027 = !DILocalVariable(name: "entry", arg: 1, scope: !6025, file: !5996, line: 213, type: !254)
!6028 = !DILocation(line: 213, column: 55, scope: !6025)
!6029 = !DILocation(line: 215, column: 30, scope: !6030)
!6030 = distinct !DILexicalBlock(scope: !6025, file: !5996, line: 215, column: 6)
!6031 = !DILocation(line: 215, column: 7, scope: !6030)
!6032 = !DILocation(line: 215, column: 6, scope: !6025)
!6033 = !DILocation(line: 216, column: 3, scope: !6030)
!6034 = !DILocation(line: 218, column: 13, scope: !6025)
!6035 = !DILocation(line: 218, column: 20, scope: !6025)
!6036 = !DILocation(line: 218, column: 26, scope: !6025)
!6037 = !DILocation(line: 218, column: 33, scope: !6025)
!6038 = !DILocation(line: 218, column: 2, scope: !6025)
!6039 = !DILocation(line: 219, column: 1, scope: !6025)
!6040 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !5996, file: !5996, line: 134, type: !6041, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6043)
!6041 = !DISubroutineType(types: !6042)
!6042 = !{!218, !254}
!6043 = !{!6044}
!6044 = !DILocalVariable(name: "entry", arg: 1, scope: !6040, file: !5996, line: 134, type: !254)
!6045 = !DILocation(line: 134, column: 61, scope: !6040)
!6046 = !DILocation(line: 136, column: 2, scope: !6040)
!6047 = distinct !DISubprogram(name: "__list_del", scope: !5996, file: !5996, line: 193, type: !6048, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6050)
!6048 = !DISubroutineType(types: !6049)
!6049 = !{null, !254, !254}
!6050 = !{!6051, !6052}
!6051 = !DILocalVariable(name: "prev", arg: 1, scope: !6047, file: !5996, line: 193, type: !254)
!6052 = !DILocalVariable(name: "next", arg: 2, scope: !6047, file: !5996, line: 193, type: !254)
!6053 = !DILocation(line: 193, column: 50, scope: !6047)
!6054 = !DILocation(line: 193, column: 75, scope: !6047)
!6055 = !DILocation(line: 195, column: 15, scope: !6047)
!6056 = !DILocation(line: 195, column: 2, scope: !6047)
!6057 = !DILocation(line: 195, column: 8, scope: !6047)
!6058 = !DILocation(line: 195, column: 13, scope: !6047)
!6059 = !DILocation(line: 196, column: 2, scope: !6047)
!6060 = !DILocation(line: 196, column: 2, scope: !6061)
!6061 = distinct !DILexicalBlock(scope: !6047, file: !5996, line: 196, column: 2)
!6062 = !DILocation(line: 196, column: 2, scope: !6063)
!6063 = distinct !DILexicalBlock(scope: !6061, file: !5996, line: 196, column: 2)
!6064 = !DILocation(line: 196, column: 2, scope: !6065)
!6065 = distinct !DILexicalBlock(scope: !6061, file: !5996, line: 196, column: 2)
!6066 = !DILocation(line: 197, column: 1, scope: !6047)
!6067 = !DISubprogram(name: "_raw_spin_unlock", scope: !6021, file: !6021, line: 39, type: !6022, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6068 = distinct !DISubprogram(name: "kmalloc", scope: !175, file: !175, line: 591, type: !6069, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6071)
!6069 = !DISubroutineType(types: !6070)
!6070 = !{!198, !365, !1128}
!6071 = !{!6072, !6073, !6074}
!6072 = !DILocalVariable(name: "size", arg: 1, scope: !6068, file: !175, line: 591, type: !365)
!6073 = !DILocalVariable(name: "flags", arg: 2, scope: !6068, file: !175, line: 591, type: !1128)
!6074 = !DILocalVariable(name: "index", scope: !6075, file: !175, line: 594, type: !43)
!6075 = distinct !DILexicalBlock(scope: !6076, file: !175, line: 593, column: 42)
!6076 = distinct !DILexicalBlock(scope: !6068, file: !175, line: 593, column: 6)
!6077 = !DILocation(line: 591, column: 61, scope: !6068)
!6078 = !DILocation(line: 591, column: 73, scope: !6068)
!6079 = !DILocation(line: 593, column: 27, scope: !6076)
!6080 = !DILocation(line: 593, column: 6, scope: !6076)
!6081 = !DILocation(line: 593, column: 33, scope: !6076)
!6082 = !DILocation(line: 593, column: 36, scope: !6076)
!6083 = !DILocation(line: 593, column: 6, scope: !6068)
!6084 = !DILocation(line: 594, column: 3, scope: !6075)
!6085 = !DILocation(line: 594, column: 16, scope: !6075)
!6086 = !DILocation(line: 596, column: 7, scope: !6087)
!6087 = distinct !DILexicalBlock(scope: !6075, file: !175, line: 596, column: 7)
!6088 = !DILocation(line: 596, column: 12, scope: !6087)
!6089 = !DILocation(line: 596, column: 7, scope: !6075)
!6090 = !DILocation(line: 597, column: 25, scope: !6087)
!6091 = !DILocation(line: 597, column: 31, scope: !6087)
!6092 = !DILocation(line: 597, column: 11, scope: !6087)
!6093 = !DILocation(line: 597, column: 4, scope: !6087)
!6094 = !DILocation(line: 599, column: 11, scope: !6075)
!6095 = !DILocation(line: 599, column: 9, scope: !6075)
!6096 = !DILocation(line: 601, column: 33, scope: !6075)
!6097 = !DILocation(line: 601, column: 40, scope: !6075)
!6098 = !DILocation(line: 601, column: 20, scope: !6075)
!6099 = !DILocation(line: 601, column: 5, scope: !6075)
!6100 = !DILocation(line: 601, column: 51, scope: !6075)
!6101 = !DILocation(line: 602, column: 5, scope: !6075)
!6102 = !DILocation(line: 602, column: 12, scope: !6075)
!6103 = !DILocation(line: 600, column: 10, scope: !6075)
!6104 = !DILocation(line: 600, column: 3, scope: !6075)
!6105 = !DILocation(line: 603, column: 2, scope: !6076)
!6106 = !DILocation(line: 604, column: 19, scope: !6068)
!6107 = !DILocation(line: 604, column: 25, scope: !6068)
!6108 = !DILocation(line: 604, column: 9, scope: !6068)
!6109 = !DILocation(line: 604, column: 2, scope: !6068)
!6110 = !DILocation(line: 605, column: 1, scope: !6068)
!6111 = distinct !DISubprogram(name: "list_add", scope: !5996, file: !5996, line: 167, type: !6048, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6112)
!6112 = !{!6113, !6114}
!6113 = !DILocalVariable(name: "new", arg: 1, scope: !6111, file: !5996, line: 167, type: !254)
!6114 = !DILocalVariable(name: "head", arg: 2, scope: !6111, file: !5996, line: 167, type: !254)
!6115 = !DILocation(line: 167, column: 47, scope: !6111)
!6116 = !DILocation(line: 167, column: 70, scope: !6111)
!6117 = !DILocation(line: 169, column: 13, scope: !6111)
!6118 = !DILocation(line: 169, column: 18, scope: !6111)
!6119 = !DILocation(line: 169, column: 24, scope: !6111)
!6120 = !DILocation(line: 169, column: 30, scope: !6111)
!6121 = !DILocation(line: 169, column: 2, scope: !6111)
!6122 = !DILocation(line: 170, column: 1, scope: !6111)
!6123 = !DISubprogram(name: "kmalloc_large", scope: !175, file: !175, line: 531, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6124 = distinct !DISubprogram(name: "__kmalloc_index", scope: !175, file: !175, line: 444, type: !6125, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6127)
!6125 = !DISubroutineType(types: !6126)
!6126 = !{!43, !365, !218}
!6127 = !{!6128, !6129}
!6128 = !DILocalVariable(name: "size", arg: 1, scope: !6124, file: !175, line: 444, type: !365)
!6129 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !6124, file: !175, line: 445, type: !218)
!6130 = !DILocation(line: 444, column: 60, scope: !6124)
!6131 = !DILocation(line: 445, column: 16, scope: !6124)
!6132 = !DILocation(line: 447, column: 7, scope: !6133)
!6133 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 447, column: 6)
!6134 = !DILocation(line: 447, column: 6, scope: !6124)
!6135 = !DILocation(line: 448, column: 3, scope: !6133)
!6136 = !DILocation(line: 450, column: 6, scope: !6137)
!6137 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 450, column: 6)
!6138 = !DILocation(line: 450, column: 11, scope: !6137)
!6139 = !DILocation(line: 450, column: 6, scope: !6124)
!6140 = !DILocation(line: 451, column: 3, scope: !6137)
!6141 = !DILocation(line: 453, column: 32, scope: !6142)
!6142 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 453, column: 6)
!6143 = !DILocation(line: 453, column: 37, scope: !6142)
!6144 = !DILocation(line: 453, column: 42, scope: !6142)
!6145 = !DILocation(line: 453, column: 45, scope: !6142)
!6146 = !DILocation(line: 453, column: 50, scope: !6142)
!6147 = !DILocation(line: 453, column: 6, scope: !6124)
!6148 = !DILocation(line: 454, column: 3, scope: !6142)
!6149 = !DILocation(line: 455, column: 32, scope: !6150)
!6150 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 455, column: 6)
!6151 = !DILocation(line: 455, column: 37, scope: !6150)
!6152 = !DILocation(line: 455, column: 43, scope: !6150)
!6153 = !DILocation(line: 455, column: 46, scope: !6150)
!6154 = !DILocation(line: 455, column: 51, scope: !6150)
!6155 = !DILocation(line: 455, column: 6, scope: !6124)
!6156 = !DILocation(line: 456, column: 3, scope: !6150)
!6157 = !DILocation(line: 457, column: 6, scope: !6158)
!6158 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 457, column: 6)
!6159 = !DILocation(line: 457, column: 11, scope: !6158)
!6160 = !DILocation(line: 457, column: 6, scope: !6124)
!6161 = !DILocation(line: 457, column: 26, scope: !6158)
!6162 = !DILocation(line: 458, column: 6, scope: !6163)
!6163 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 458, column: 6)
!6164 = !DILocation(line: 458, column: 11, scope: !6163)
!6165 = !DILocation(line: 458, column: 6, scope: !6124)
!6166 = !DILocation(line: 458, column: 26, scope: !6163)
!6167 = !DILocation(line: 459, column: 6, scope: !6168)
!6168 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 459, column: 6)
!6169 = !DILocation(line: 459, column: 11, scope: !6168)
!6170 = !DILocation(line: 459, column: 6, scope: !6124)
!6171 = !DILocation(line: 459, column: 26, scope: !6168)
!6172 = !DILocation(line: 460, column: 6, scope: !6173)
!6173 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 460, column: 6)
!6174 = !DILocation(line: 460, column: 11, scope: !6173)
!6175 = !DILocation(line: 460, column: 6, scope: !6124)
!6176 = !DILocation(line: 460, column: 26, scope: !6173)
!6177 = !DILocation(line: 461, column: 6, scope: !6178)
!6178 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 461, column: 6)
!6179 = !DILocation(line: 461, column: 11, scope: !6178)
!6180 = !DILocation(line: 461, column: 6, scope: !6124)
!6181 = !DILocation(line: 461, column: 26, scope: !6178)
!6182 = !DILocation(line: 462, column: 6, scope: !6183)
!6183 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 462, column: 6)
!6184 = !DILocation(line: 462, column: 11, scope: !6183)
!6185 = !DILocation(line: 462, column: 6, scope: !6124)
!6186 = !DILocation(line: 462, column: 26, scope: !6183)
!6187 = !DILocation(line: 463, column: 6, scope: !6188)
!6188 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 463, column: 6)
!6189 = !DILocation(line: 463, column: 11, scope: !6188)
!6190 = !DILocation(line: 463, column: 6, scope: !6124)
!6191 = !DILocation(line: 463, column: 26, scope: !6188)
!6192 = !DILocation(line: 464, column: 6, scope: !6193)
!6193 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 464, column: 6)
!6194 = !DILocation(line: 464, column: 11, scope: !6193)
!6195 = !DILocation(line: 464, column: 6, scope: !6124)
!6196 = !DILocation(line: 464, column: 26, scope: !6193)
!6197 = !DILocation(line: 465, column: 6, scope: !6198)
!6198 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 465, column: 6)
!6199 = !DILocation(line: 465, column: 11, scope: !6198)
!6200 = !DILocation(line: 465, column: 6, scope: !6124)
!6201 = !DILocation(line: 465, column: 26, scope: !6198)
!6202 = !DILocation(line: 466, column: 6, scope: !6203)
!6203 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 466, column: 6)
!6204 = !DILocation(line: 466, column: 11, scope: !6203)
!6205 = !DILocation(line: 466, column: 6, scope: !6124)
!6206 = !DILocation(line: 466, column: 26, scope: !6203)
!6207 = !DILocation(line: 467, column: 6, scope: !6208)
!6208 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 467, column: 6)
!6209 = !DILocation(line: 467, column: 11, scope: !6208)
!6210 = !DILocation(line: 467, column: 6, scope: !6124)
!6211 = !DILocation(line: 467, column: 26, scope: !6208)
!6212 = !DILocation(line: 468, column: 6, scope: !6213)
!6213 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 468, column: 6)
!6214 = !DILocation(line: 468, column: 11, scope: !6213)
!6215 = !DILocation(line: 468, column: 6, scope: !6124)
!6216 = !DILocation(line: 468, column: 26, scope: !6213)
!6217 = !DILocation(line: 469, column: 6, scope: !6218)
!6218 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 469, column: 6)
!6219 = !DILocation(line: 469, column: 11, scope: !6218)
!6220 = !DILocation(line: 469, column: 6, scope: !6124)
!6221 = !DILocation(line: 469, column: 26, scope: !6218)
!6222 = !DILocation(line: 470, column: 6, scope: !6223)
!6223 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 470, column: 6)
!6224 = !DILocation(line: 470, column: 11, scope: !6223)
!6225 = !DILocation(line: 470, column: 6, scope: !6124)
!6226 = !DILocation(line: 470, column: 26, scope: !6223)
!6227 = !DILocation(line: 471, column: 6, scope: !6228)
!6228 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 471, column: 6)
!6229 = !DILocation(line: 471, column: 11, scope: !6228)
!6230 = !DILocation(line: 471, column: 6, scope: !6124)
!6231 = !DILocation(line: 471, column: 26, scope: !6228)
!6232 = !DILocation(line: 472, column: 6, scope: !6233)
!6233 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 472, column: 6)
!6234 = !DILocation(line: 472, column: 11, scope: !6233)
!6235 = !DILocation(line: 472, column: 6, scope: !6124)
!6236 = !DILocation(line: 472, column: 26, scope: !6233)
!6237 = !DILocation(line: 473, column: 6, scope: !6238)
!6238 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 473, column: 6)
!6239 = !DILocation(line: 473, column: 11, scope: !6238)
!6240 = !DILocation(line: 473, column: 6, scope: !6124)
!6241 = !DILocation(line: 473, column: 26, scope: !6238)
!6242 = !DILocation(line: 474, column: 6, scope: !6243)
!6243 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 474, column: 6)
!6244 = !DILocation(line: 474, column: 11, scope: !6243)
!6245 = !DILocation(line: 474, column: 6, scope: !6124)
!6246 = !DILocation(line: 474, column: 27, scope: !6243)
!6247 = !DILocation(line: 475, column: 6, scope: !6248)
!6248 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 475, column: 6)
!6249 = !DILocation(line: 475, column: 11, scope: !6248)
!6250 = !DILocation(line: 475, column: 6, scope: !6124)
!6251 = !DILocation(line: 475, column: 32, scope: !6248)
!6252 = !DILocation(line: 477, column: 50, scope: !6253)
!6253 = distinct !DILexicalBlock(scope: !6124, file: !175, line: 477, column: 6)
!6254 = !DILocation(line: 477, column: 6, scope: !6124)
!6255 = !DILocation(line: 478, column: 3, scope: !6253)
!6256 = !DILocation(line: 478, column: 3, scope: !6257)
!6257 = distinct !DILexicalBlock(scope: !6258, file: !175, line: 478, column: 3)
!6258 = distinct !DILexicalBlock(scope: !6253, file: !175, line: 478, column: 3)
!6259 = !{i32 -2142303033}
!6260 = !DILocation(line: 478, column: 3, scope: !6258)
!6261 = !DILocation(line: 480, column: 3, scope: !6253)
!6262 = !DILocation(line: 480, column: 3, scope: !6263)
!6263 = distinct !DILexicalBlock(scope: !6253, file: !175, line: 480, column: 3)
!6264 = !DILocation(line: 480, column: 3, scope: !6265)
!6265 = distinct !DILexicalBlock(scope: !6263, file: !175, line: 480, column: 3)
!6266 = !DILocation(line: 480, column: 3, scope: !6267)
!6267 = distinct !DILexicalBlock(scope: !6263, file: !175, line: 480, column: 3)
!6268 = !{i64 2152664466, i64 2152664495, i64 2152664541, i64 2152664599, i64 2152664653, i64 2152664707, i64 2152664762, i64 2152664793}
!6269 = !DILocation(line: 483, column: 2, scope: !6124)
!6270 = !DILocation(line: 484, column: 1, scope: !6124)
!6271 = !DISubprogram(name: "kmalloc_trace", scope: !175, file: !175, line: 525, type: !6272, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6272 = !DISubroutineType(types: !6273)
!6273 = !{!198, !6274, !1128, !365}
!6274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6275, size: 64)
!6275 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !6276, line: 11, flags: DIFlagFwdDecl)
!6276 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!6277 = distinct !DISubprogram(name: "kmalloc_type", scope: !175, file: !175, line: 401, type: !6278, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6280)
!6278 = !DISubroutineType(types: !6279)
!6279 = !{!174, !1128, !209}
!6280 = !{!6281, !6282}
!6281 = !DILocalVariable(name: "flags", arg: 1, scope: !6277, file: !175, line: 401, type: !1128)
!6282 = !DILocalVariable(name: "caller", arg: 2, scope: !6277, file: !175, line: 401, type: !209)
!6283 = !DILocation(line: 401, column: 67, scope: !6277)
!6284 = !DILocation(line: 401, column: 88, scope: !6277)
!6285 = !DILocation(line: 407, column: 6, scope: !6286)
!6286 = distinct !DILexicalBlock(scope: !6277, file: !175, line: 407, column: 6)
!6287 = !DILocation(line: 407, column: 6, scope: !6277)
!6288 = !DILocation(line: 413, column: 3, scope: !6286)
!6289 = !DILocation(line: 423, column: 38, scope: !6290)
!6290 = distinct !DILexicalBlock(scope: !6277, file: !175, line: 423, column: 6)
!6291 = !DILocation(line: 423, column: 44, scope: !6290)
!6292 = !DILocation(line: 423, column: 6, scope: !6277)
!6293 = !DILocation(line: 424, column: 3, scope: !6290)
!6294 = !DILocation(line: 426, column: 3, scope: !6295)
!6295 = distinct !DILexicalBlock(scope: !6277, file: !175, line: 425, column: 6)
!6296 = !DILocation(line: 429, column: 1, scope: !6277)
!6297 = !DISubprogram(name: "__kmalloc", scope: !175, file: !175, line: 488, type: !6069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6298 = !DISubprogram(name: "__compiletime_assert_204", scope: !175, file: !175, line: 478, type: !979, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!6299 = distinct !DISubprogram(name: "__list_add", scope: !5996, file: !5996, line: 146, type: !6300, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6302)
!6300 = !DISubroutineType(types: !6301)
!6301 = !{null, !254, !254, !254}
!6302 = !{!6303, !6304, !6305}
!6303 = !DILocalVariable(name: "new", arg: 1, scope: !6299, file: !5996, line: 146, type: !254)
!6304 = !DILocalVariable(name: "prev", arg: 2, scope: !6299, file: !5996, line: 147, type: !254)
!6305 = !DILocalVariable(name: "next", arg: 3, scope: !6299, file: !5996, line: 148, type: !254)
!6306 = !DILocation(line: 146, column: 49, scope: !6299)
!6307 = !DILocation(line: 147, column: 28, scope: !6299)
!6308 = !DILocation(line: 148, column: 28, scope: !6299)
!6309 = !DILocation(line: 150, column: 24, scope: !6310)
!6310 = distinct !DILexicalBlock(scope: !6299, file: !5996, line: 150, column: 6)
!6311 = !DILocation(line: 150, column: 29, scope: !6310)
!6312 = !DILocation(line: 150, column: 35, scope: !6310)
!6313 = !DILocation(line: 150, column: 7, scope: !6310)
!6314 = !DILocation(line: 150, column: 6, scope: !6299)
!6315 = !DILocation(line: 151, column: 3, scope: !6310)
!6316 = !DILocation(line: 153, column: 15, scope: !6299)
!6317 = !DILocation(line: 153, column: 2, scope: !6299)
!6318 = !DILocation(line: 153, column: 8, scope: !6299)
!6319 = !DILocation(line: 153, column: 13, scope: !6299)
!6320 = !DILocation(line: 154, column: 14, scope: !6299)
!6321 = !DILocation(line: 154, column: 2, scope: !6299)
!6322 = !DILocation(line: 154, column: 7, scope: !6299)
!6323 = !DILocation(line: 154, column: 12, scope: !6299)
!6324 = !DILocation(line: 155, column: 14, scope: !6299)
!6325 = !DILocation(line: 155, column: 2, scope: !6299)
!6326 = !DILocation(line: 155, column: 7, scope: !6299)
!6327 = !DILocation(line: 155, column: 12, scope: !6299)
!6328 = !DILocation(line: 156, column: 2, scope: !6299)
!6329 = !DILocation(line: 156, column: 2, scope: !6330)
!6330 = distinct !DILexicalBlock(scope: !6299, file: !5996, line: 156, column: 2)
!6331 = !DILocation(line: 156, column: 2, scope: !6332)
!6332 = distinct !DILexicalBlock(scope: !6330, file: !5996, line: 156, column: 2)
!6333 = !DILocation(line: 156, column: 2, scope: !6334)
!6334 = distinct !DILexicalBlock(scope: !6330, file: !5996, line: 156, column: 2)
!6335 = !DILocation(line: 157, column: 1, scope: !6299)
!6336 = distinct !DISubprogram(name: "__list_add_valid", scope: !5996, file: !5996, line: 128, type: !6337, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6339)
!6337 = !DISubroutineType(types: !6338)
!6338 = !{!218, !254, !254, !254}
!6339 = !{!6340, !6341, !6342}
!6340 = !DILocalVariable(name: "new", arg: 1, scope: !6336, file: !5996, line: 128, type: !254)
!6341 = !DILocalVariable(name: "prev", arg: 2, scope: !6336, file: !5996, line: 129, type: !254)
!6342 = !DILocalVariable(name: "next", arg: 3, scope: !6336, file: !5996, line: 130, type: !254)
!6343 = !DILocation(line: 128, column: 55, scope: !6336)
!6344 = !DILocation(line: 129, column: 23, scope: !6336)
!6345 = !DILocation(line: 130, column: 23, scope: !6336)
!6346 = !DILocation(line: 132, column: 2, scope: !6336)
!6347 = distinct !DISubprogram(name: "param_array", scope: !2, file: !2, line: 414, type: !6348, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6350)
!6348 = !DISubroutineType(types: !6349)
!6349 = !{!204, !586, !215, !215, !43, !43, !198, !204, !644, !743, !205}
!6350 = !{!6351, !6352, !6353, !6354, !6355, !6356, !6357, !6358, !6359, !6360, !6361, !6362, !6363, !6364}
!6351 = !DILocalVariable(name: "mod", arg: 1, scope: !6347, file: !2, line: 414, type: !586)
!6352 = !DILocalVariable(name: "name", arg: 2, scope: !6347, file: !2, line: 415, type: !215)
!6353 = !DILocalVariable(name: "val", arg: 3, scope: !6347, file: !2, line: 416, type: !215)
!6354 = !DILocalVariable(name: "min", arg: 4, scope: !6347, file: !2, line: 417, type: !43)
!6355 = !DILocalVariable(name: "max", arg: 5, scope: !6347, file: !2, line: 417, type: !43)
!6356 = !DILocalVariable(name: "elem", arg: 6, scope: !6347, file: !2, line: 418, type: !198)
!6357 = !DILocalVariable(name: "elemsize", arg: 7, scope: !6347, file: !2, line: 418, type: !204)
!6358 = !DILocalVariable(name: "set", arg: 8, scope: !6347, file: !2, line: 419, type: !644)
!6359 = !DILocalVariable(name: "level", arg: 9, scope: !6347, file: !2, line: 420, type: !743)
!6360 = !DILocalVariable(name: "num", arg: 10, scope: !6347, file: !2, line: 421, type: !205)
!6361 = !DILocalVariable(name: "ret", scope: !6347, file: !2, line: 423, type: !204)
!6362 = !DILocalVariable(name: "kp", scope: !6347, file: !2, line: 424, type: !633)
!6363 = !DILocalVariable(name: "save", scope: !6347, file: !2, line: 425, type: !4)
!6364 = !DILocalVariable(name: "len", scope: !6365, file: !2, line: 435, type: !204)
!6365 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 434, column: 5)
!6366 = !DILocation(line: 414, column: 39, scope: !6347)
!6367 = !DILocation(line: 415, column: 22, scope: !6347)
!6368 = !DILocation(line: 416, column: 22, scope: !6347)
!6369 = !DILocation(line: 417, column: 23, scope: !6347)
!6370 = !DILocation(line: 417, column: 41, scope: !6347)
!6371 = !DILocation(line: 418, column: 16, scope: !6347)
!6372 = !DILocation(line: 418, column: 26, scope: !6347)
!6373 = !DILocation(line: 419, column: 16, scope: !6347)
!6374 = !DILocation(line: 420, column: 14, scope: !6347)
!6375 = !DILocation(line: 421, column: 24, scope: !6347)
!6376 = !DILocation(line: 423, column: 2, scope: !6347)
!6377 = !DILocation(line: 423, column: 6, scope: !6347)
!6378 = !DILocation(line: 424, column: 2, scope: !6347)
!6379 = !DILocation(line: 424, column: 22, scope: !6347)
!6380 = !DILocation(line: 425, column: 2, scope: !6347)
!6381 = !DILocation(line: 425, column: 7, scope: !6347)
!6382 = !DILocation(line: 428, column: 12, scope: !6347)
!6383 = !DILocation(line: 428, column: 5, scope: !6347)
!6384 = !DILocation(line: 428, column: 10, scope: !6347)
!6385 = !DILocation(line: 429, column: 11, scope: !6347)
!6386 = !DILocation(line: 429, column: 5, scope: !6347)
!6387 = !DILocation(line: 429, column: 9, scope: !6347)
!6388 = !DILocation(line: 430, column: 13, scope: !6347)
!6389 = !DILocation(line: 430, column: 5, scope: !6347)
!6390 = !DILocation(line: 430, column: 11, scope: !6347)
!6391 = !DILocation(line: 432, column: 3, scope: !6347)
!6392 = !DILocation(line: 432, column: 7, scope: !6347)
!6393 = !DILocation(line: 434, column: 2, scope: !6347)
!6394 = !DILocation(line: 435, column: 3, scope: !6365)
!6395 = !DILocation(line: 435, column: 7, scope: !6365)
!6396 = !DILocation(line: 437, column: 8, scope: !6397)
!6397 = distinct !DILexicalBlock(scope: !6365, file: !2, line: 437, column: 7)
!6398 = !DILocation(line: 437, column: 7, scope: !6397)
!6399 = !DILocation(line: 437, column: 15, scope: !6397)
!6400 = !DILocation(line: 437, column: 12, scope: !6397)
!6401 = !DILocation(line: 437, column: 7, scope: !6365)
!6402 = !DILocation(line: 438, column: 4, scope: !6403)
!6403 = distinct !DILexicalBlock(scope: !6404, file: !2, line: 438, column: 4)
!6404 = distinct !DILexicalBlock(scope: !6397, file: !2, line: 437, column: 20)
!6405 = !DILocation(line: 438, column: 4, scope: !6406)
!6406 = distinct !DILexicalBlock(scope: !6403, file: !2, line: 438, column: 4)
!6407 = !DILocation(line: 439, column: 4, scope: !6404)
!6408 = !DILocation(line: 441, column: 17, scope: !6365)
!6409 = !DILocation(line: 441, column: 9, scope: !6365)
!6410 = !DILocation(line: 441, column: 7, scope: !6365)
!6411 = !DILocation(line: 444, column: 10, scope: !6365)
!6412 = !DILocation(line: 444, column: 14, scope: !6365)
!6413 = !DILocation(line: 444, column: 8, scope: !6365)
!6414 = !DILocation(line: 445, column: 12, scope: !6365)
!6415 = !DILocation(line: 445, column: 17, scope: !6365)
!6416 = !DILocation(line: 445, column: 3, scope: !6365)
!6417 = !DILocation(line: 445, column: 22, scope: !6365)
!6418 = !DILocation(line: 446, column: 23, scope: !6365)
!6419 = !DILocation(line: 446, column: 3, scope: !6365)
!6420 = !DILocation(line: 447, column: 9, scope: !6365)
!6421 = !DILocation(line: 447, column: 13, scope: !6365)
!6422 = !DILocation(line: 447, column: 7, scope: !6365)
!6423 = !DILocation(line: 449, column: 7, scope: !6424)
!6424 = distinct !DILexicalBlock(scope: !6365, file: !2, line: 449, column: 7)
!6425 = !DILocation(line: 449, column: 11, scope: !6424)
!6426 = !DILocation(line: 449, column: 7, scope: !6365)
!6427 = !DILocation(line: 450, column: 11, scope: !6424)
!6428 = !DILocation(line: 450, column: 4, scope: !6424)
!6429 = !DILocation(line: 451, column: 13, scope: !6365)
!6430 = !DILocation(line: 451, column: 6, scope: !6365)
!6431 = !DILocation(line: 451, column: 10, scope: !6365)
!6432 = !DILocation(line: 452, column: 10, scope: !6365)
!6433 = !DILocation(line: 452, column: 13, scope: !6365)
!6434 = !DILocation(line: 452, column: 7, scope: !6365)
!6435 = !DILocation(line: 453, column: 5, scope: !6365)
!6436 = !DILocation(line: 453, column: 9, scope: !6365)
!6437 = !DILocation(line: 454, column: 2, scope: !6347)
!6438 = !DILocation(line: 454, column: 2, scope: !6365)
!6439 = !DILocation(line: 454, column: 11, scope: !6347)
!6440 = !DILocation(line: 454, column: 16, scope: !6347)
!6441 = distinct !{!6441, !6393, !6442, !4417, !4418}
!6442 = !DILocation(line: 454, column: 22, scope: !6347)
!6443 = !DILocation(line: 456, column: 7, scope: !6444)
!6444 = distinct !DILexicalBlock(scope: !6347, file: !2, line: 456, column: 6)
!6445 = !DILocation(line: 456, column: 6, scope: !6444)
!6446 = !DILocation(line: 456, column: 13, scope: !6444)
!6447 = !DILocation(line: 456, column: 11, scope: !6444)
!6448 = !DILocation(line: 456, column: 6, scope: !6347)
!6449 = !DILocation(line: 457, column: 3, scope: !6450)
!6450 = distinct !DILexicalBlock(scope: !6451, file: !2, line: 457, column: 3)
!6451 = distinct !DILexicalBlock(scope: !6444, file: !2, line: 456, column: 18)
!6452 = !DILocation(line: 457, column: 3, scope: !6453)
!6453 = distinct !DILexicalBlock(scope: !6450, file: !2, line: 457, column: 3)
!6454 = !DILocation(line: 458, column: 3, scope: !6451)
!6455 = !DILocation(line: 460, column: 2, scope: !6347)
!6456 = !DILocation(line: 461, column: 1, scope: !6347)
!6457 = !DISubprogram(name: "strcspn", scope: !4451, file: !4451, line: 143, type: !6458, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6458 = !DISubroutineType(types: !6459)
!6459 = !{!209, !215, !215}
!6460 = distinct !DISubprogram(name: "check_kparam_locked", scope: !2, file: !2, line: 29, type: !4139, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6461)
!6461 = !{!6462}
!6462 = !DILocalVariable(name: "mod", arg: 1, scope: !6460, file: !2, line: 29, type: !586)
!6463 = !DILocation(line: 29, column: 55, scope: !6460)
!6464 = !DILocation(line: 31, column: 2, scope: !6460)
!6465 = !DILocation(line: 31, column: 2, scope: !6466)
!6466 = distinct !DILexicalBlock(scope: !6467, file: !2, line: 31, column: 2)
!6467 = distinct !DILexicalBlock(scope: !6460, file: !2, line: 31, column: 2)
!6468 = !DILocation(line: 31, column: 2, scope: !6467)
!6469 = !DILocation(line: 31, column: 2, scope: !6470)
!6470 = distinct !DILexicalBlock(scope: !6466, file: !2, line: 31, column: 2)
!6471 = !DILocation(line: 31, column: 2, scope: !6472)
!6472 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 31, column: 2)
!6473 = !DILocation(line: 31, column: 2, scope: !6474)
!6474 = distinct !DILexicalBlock(scope: !6470, file: !2, line: 31, column: 2)
!6475 = !{i64 2154466102, i64 2154466131, i64 2154466177, i64 2154466235, i64 2154466289, i64 2154466343, i64 2154466398, i64 2154466429}
!6476 = !DILocation(line: 32, column: 1, scope: !6460)
!6477 = !DISubprogram(name: "mutex_is_locked", scope: !612, file: !612, line: 130, type: !6478, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6478 = !DISubroutineType(types: !6479)
!6479 = !{!218, !5479}
!6480 = distinct !DISubprogram(name: "kzalloc", scope: !175, file: !175, line: 719, type: !6069, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6481)
!6481 = !{!6482, !6483}
!6482 = !DILocalVariable(name: "size", arg: 1, scope: !6480, file: !175, line: 719, type: !365)
!6483 = !DILocalVariable(name: "flags", arg: 2, scope: !6480, file: !175, line: 719, type: !1128)
!6484 = !DILocation(line: 719, column: 52, scope: !6480)
!6485 = !DILocation(line: 719, column: 64, scope: !6480)
!6486 = !DILocation(line: 721, column: 17, scope: !6480)
!6487 = !DILocation(line: 721, column: 23, scope: !6480)
!6488 = !DILocation(line: 721, column: 29, scope: !6480)
!6489 = !DILocation(line: 721, column: 9, scope: !6480)
!6490 = !DILocation(line: 721, column: 2, scope: !6480)
!6491 = !DISubprogram(name: "krealloc", scope: !175, file: !175, line: 226, type: !6492, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6492 = !DISubroutineType(types: !6493)
!6493 = !{!198, !2513, !365, !1128}
!6494 = distinct !DISubprogram(name: "param_attr_show", scope: !2, file: !2, line: 558, type: !236, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6495)
!6495 = !{!6496, !6497, !6498, !6499, !6500, !6501}
!6496 = !DILocalVariable(name: "mattr", arg: 1, scope: !6494, file: !2, line: 558, type: !242)
!6497 = !DILocalVariable(name: "mk", arg: 2, scope: !6494, file: !2, line: 559, type: !243)
!6498 = !DILocalVariable(name: "buf", arg: 3, scope: !6494, file: !2, line: 559, type: !213)
!6499 = !DILocalVariable(name: "count", scope: !6494, file: !2, line: 561, type: !204)
!6500 = !DILocalVariable(name: "attribute", scope: !6494, file: !2, line: 562, type: !4151)
!6501 = !DILocalVariable(name: "__mptr", scope: !6502, file: !2, line: 562, type: !198)
!6502 = distinct !DILexicalBlock(scope: !6494, file: !2, line: 562, column: 38)
!6503 = !DILocation(line: 558, column: 57, scope: !6494)
!6504 = !DILocation(line: 559, column: 34, scope: !6494)
!6505 = !DILocation(line: 559, column: 44, scope: !6494)
!6506 = !DILocation(line: 561, column: 2, scope: !6494)
!6507 = !DILocation(line: 561, column: 6, scope: !6494)
!6508 = !DILocation(line: 562, column: 2, scope: !6494)
!6509 = !DILocation(line: 562, column: 26, scope: !6494)
!6510 = !DILocation(line: 562, column: 38, scope: !6502)
!6511 = !DILocation(line: 562, column: 38, scope: !6494)
!6512 = !DILocation(line: 564, column: 7, scope: !6513)
!6513 = distinct !DILexicalBlock(scope: !6494, file: !2, line: 564, column: 6)
!6514 = !DILocation(line: 564, column: 18, scope: !6513)
!6515 = !DILocation(line: 564, column: 25, scope: !6513)
!6516 = !DILocation(line: 564, column: 30, scope: !6513)
!6517 = !DILocation(line: 564, column: 6, scope: !6494)
!6518 = !DILocation(line: 565, column: 3, scope: !6513)
!6519 = !DILocation(line: 567, column: 20, scope: !6494)
!6520 = !DILocation(line: 567, column: 24, scope: !6494)
!6521 = !DILocation(line: 567, column: 2, scope: !6494)
!6522 = !DILocation(line: 568, column: 10, scope: !6494)
!6523 = !DILocation(line: 568, column: 21, scope: !6494)
!6524 = !DILocation(line: 568, column: 28, scope: !6494)
!6525 = !DILocation(line: 568, column: 33, scope: !6494)
!6526 = !DILocation(line: 568, column: 37, scope: !6494)
!6527 = !DILocation(line: 568, column: 42, scope: !6494)
!6528 = !DILocation(line: 568, column: 53, scope: !6494)
!6529 = !DILocation(line: 568, column: 8, scope: !6494)
!6530 = !DILocation(line: 569, column: 22, scope: !6494)
!6531 = !DILocation(line: 569, column: 26, scope: !6494)
!6532 = !DILocation(line: 569, column: 2, scope: !6494)
!6533 = !DILocation(line: 570, column: 9, scope: !6494)
!6534 = !DILocation(line: 570, column: 2, scope: !6494)
!6535 = !DILocation(line: 571, column: 1, scope: !6494)
!6536 = distinct !DISubprogram(name: "param_attr_store", scope: !2, file: !2, line: 574, type: !4127, scopeLine: 577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6537)
!6537 = !{!6538, !6539, !6540, !6541, !6542, !6543, !6544}
!6538 = !DILocalVariable(name: "mattr", arg: 1, scope: !6536, file: !2, line: 574, type: !242)
!6539 = !DILocalVariable(name: "mk", arg: 2, scope: !6536, file: !2, line: 575, type: !243)
!6540 = !DILocalVariable(name: "buf", arg: 3, scope: !6536, file: !2, line: 576, type: !215)
!6541 = !DILocalVariable(name: "len", arg: 4, scope: !6536, file: !2, line: 576, type: !365)
!6542 = !DILocalVariable(name: "err", scope: !6536, file: !2, line: 578, type: !204)
!6543 = !DILocalVariable(name: "attribute", scope: !6536, file: !2, line: 579, type: !4151)
!6544 = !DILocalVariable(name: "__mptr", scope: !6545, file: !2, line: 579, type: !198)
!6545 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 579, column: 38)
!6546 = !DILocation(line: 574, column: 58, scope: !6536)
!6547 = !DILocation(line: 575, column: 28, scope: !6536)
!6548 = !DILocation(line: 576, column: 17, scope: !6536)
!6549 = !DILocation(line: 576, column: 29, scope: !6536)
!6550 = !DILocation(line: 578, column: 3, scope: !6536)
!6551 = !DILocation(line: 578, column: 7, scope: !6536)
!6552 = !DILocation(line: 579, column: 2, scope: !6536)
!6553 = !DILocation(line: 579, column: 26, scope: !6536)
!6554 = !DILocation(line: 579, column: 38, scope: !6545)
!6555 = !DILocation(line: 579, column: 38, scope: !6536)
!6556 = !DILocation(line: 581, column: 7, scope: !6557)
!6557 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 581, column: 6)
!6558 = !DILocation(line: 581, column: 18, scope: !6557)
!6559 = !DILocation(line: 581, column: 25, scope: !6557)
!6560 = !DILocation(line: 581, column: 30, scope: !6557)
!6561 = !DILocation(line: 581, column: 6, scope: !6536)
!6562 = !DILocation(line: 582, column: 3, scope: !6557)
!6563 = !DILocation(line: 584, column: 20, scope: !6536)
!6564 = !DILocation(line: 584, column: 24, scope: !6536)
!6565 = !DILocation(line: 584, column: 2, scope: !6536)
!6566 = !DILocation(line: 585, column: 25, scope: !6567)
!6567 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 585, column: 6)
!6568 = !DILocation(line: 585, column: 36, scope: !6567)
!6569 = !DILocation(line: 585, column: 6, scope: !6567)
!6570 = !DILocation(line: 585, column: 6, scope: !6536)
!6571 = !DILocation(line: 586, column: 9, scope: !6567)
!6572 = !DILocation(line: 586, column: 20, scope: !6567)
!6573 = !DILocation(line: 586, column: 27, scope: !6567)
!6574 = !DILocation(line: 586, column: 32, scope: !6567)
!6575 = !DILocation(line: 586, column: 36, scope: !6567)
!6576 = !DILocation(line: 586, column: 41, scope: !6567)
!6577 = !DILocation(line: 586, column: 52, scope: !6567)
!6578 = !DILocation(line: 586, column: 7, scope: !6567)
!6579 = !DILocation(line: 586, column: 3, scope: !6567)
!6580 = !DILocation(line: 588, column: 7, scope: !6567)
!6581 = !DILocation(line: 589, column: 22, scope: !6536)
!6582 = !DILocation(line: 589, column: 26, scope: !6536)
!6583 = !DILocation(line: 589, column: 2, scope: !6536)
!6584 = !DILocation(line: 590, column: 7, scope: !6585)
!6585 = distinct !DILexicalBlock(scope: !6536, file: !2, line: 590, column: 6)
!6586 = !DILocation(line: 590, column: 6, scope: !6536)
!6587 = !DILocation(line: 591, column: 10, scope: !6585)
!6588 = !DILocation(line: 591, column: 3, scope: !6585)
!6589 = !DILocation(line: 592, column: 9, scope: !6536)
!6590 = !DILocation(line: 592, column: 2, scope: !6536)
!6591 = !DILocation(line: 593, column: 1, scope: !6536)
!6592 = !DISubprogram(name: "complete", scope: !920, file: !920, line: 118, type: !6593, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6593 = !DISubroutineType(types: !6594)
!6594 = !{null, !2649}
!6595 = distinct !DISubprogram(name: "module_attr_show", scope: !2, file: !2, line: 887, type: !358, scopeLine: 890, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6596)
!6596 = !{!6597, !6598, !6599, !6600, !6601, !6602, !6603, !6605}
!6597 = !DILocalVariable(name: "kobj", arg: 1, scope: !6595, file: !2, line: 887, type: !257)
!6598 = !DILocalVariable(name: "attr", arg: 2, scope: !6595, file: !2, line: 888, type: !360)
!6599 = !DILocalVariable(name: "buf", arg: 3, scope: !6595, file: !2, line: 889, type: !213)
!6600 = !DILocalVariable(name: "attribute", scope: !6595, file: !2, line: 891, type: !242)
!6601 = !DILocalVariable(name: "mk", scope: !6595, file: !2, line: 892, type: !243)
!6602 = !DILocalVariable(name: "ret", scope: !6595, file: !2, line: 893, type: !204)
!6603 = !DILocalVariable(name: "__mptr", scope: !6604, file: !2, line: 895, type: !198)
!6604 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 895, column: 14)
!6605 = !DILocalVariable(name: "__mptr", scope: !6606, file: !2, line: 896, type: !198)
!6606 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 896, column: 7)
!6607 = !DILocation(line: 887, column: 49, scope: !6595)
!6608 = !DILocation(line: 888, column: 23, scope: !6595)
!6609 = !DILocation(line: 889, column: 11, scope: !6595)
!6610 = !DILocation(line: 891, column: 2, scope: !6595)
!6611 = !DILocation(line: 891, column: 27, scope: !6595)
!6612 = !DILocation(line: 892, column: 2, scope: !6595)
!6613 = !DILocation(line: 892, column: 25, scope: !6595)
!6614 = !DILocation(line: 893, column: 2, scope: !6595)
!6615 = !DILocation(line: 893, column: 6, scope: !6595)
!6616 = !DILocation(line: 895, column: 14, scope: !6604)
!6617 = !DILocation(line: 895, column: 14, scope: !6595)
!6618 = !DILocation(line: 895, column: 12, scope: !6595)
!6619 = !DILocation(line: 896, column: 7, scope: !6606)
!6620 = !DILocation(line: 896, column: 7, scope: !6595)
!6621 = !DILocation(line: 896, column: 5, scope: !6595)
!6622 = !DILocation(line: 898, column: 7, scope: !6623)
!6623 = distinct !DILexicalBlock(scope: !6595, file: !2, line: 898, column: 6)
!6624 = !DILocation(line: 898, column: 18, scope: !6623)
!6625 = !DILocation(line: 898, column: 6, scope: !6595)
!6626 = !DILocation(line: 899, column: 3, scope: !6623)
!6627 = !DILocation(line: 901, column: 8, scope: !6595)
!6628 = !DILocation(line: 901, column: 19, scope: !6595)
!6629 = !DILocation(line: 901, column: 24, scope: !6595)
!6630 = !DILocation(line: 901, column: 35, scope: !6595)
!6631 = !DILocation(line: 901, column: 39, scope: !6595)
!6632 = !DILocation(line: 901, column: 6, scope: !6595)
!6633 = !DILocation(line: 903, column: 9, scope: !6595)
!6634 = !DILocation(line: 903, column: 2, scope: !6595)
!6635 = !DILocation(line: 904, column: 1, scope: !6595)
!6636 = distinct !DISubprogram(name: "module_attr_store", scope: !2, file: !2, line: 906, type: !363, scopeLine: 909, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6637)
!6637 = !{!6638, !6639, !6640, !6641, !6642, !6643, !6644, !6645, !6647}
!6638 = !DILocalVariable(name: "kobj", arg: 1, scope: !6636, file: !2, line: 906, type: !257)
!6639 = !DILocalVariable(name: "attr", arg: 2, scope: !6636, file: !2, line: 907, type: !360)
!6640 = !DILocalVariable(name: "buf", arg: 3, scope: !6636, file: !2, line: 908, type: !215)
!6641 = !DILocalVariable(name: "len", arg: 4, scope: !6636, file: !2, line: 908, type: !365)
!6642 = !DILocalVariable(name: "attribute", scope: !6636, file: !2, line: 910, type: !242)
!6643 = !DILocalVariable(name: "mk", scope: !6636, file: !2, line: 911, type: !243)
!6644 = !DILocalVariable(name: "ret", scope: !6636, file: !2, line: 912, type: !204)
!6645 = !DILocalVariable(name: "__mptr", scope: !6646, file: !2, line: 914, type: !198)
!6646 = distinct !DILexicalBlock(scope: !6636, file: !2, line: 914, column: 14)
!6647 = !DILocalVariable(name: "__mptr", scope: !6648, file: !2, line: 915, type: !198)
!6648 = distinct !DILexicalBlock(scope: !6636, file: !2, line: 915, column: 7)
!6649 = !DILocation(line: 906, column: 50, scope: !6636)
!6650 = !DILocation(line: 907, column: 23, scope: !6636)
!6651 = !DILocation(line: 908, column: 17, scope: !6636)
!6652 = !DILocation(line: 908, column: 29, scope: !6636)
!6653 = !DILocation(line: 910, column: 2, scope: !6636)
!6654 = !DILocation(line: 910, column: 27, scope: !6636)
!6655 = !DILocation(line: 911, column: 2, scope: !6636)
!6656 = !DILocation(line: 911, column: 25, scope: !6636)
!6657 = !DILocation(line: 912, column: 2, scope: !6636)
!6658 = !DILocation(line: 912, column: 6, scope: !6636)
!6659 = !DILocation(line: 914, column: 14, scope: !6646)
!6660 = !DILocation(line: 914, column: 14, scope: !6636)
!6661 = !DILocation(line: 914, column: 12, scope: !6636)
!6662 = !DILocation(line: 915, column: 7, scope: !6648)
!6663 = !DILocation(line: 915, column: 7, scope: !6636)
!6664 = !DILocation(line: 915, column: 5, scope: !6636)
!6665 = !DILocation(line: 917, column: 7, scope: !6666)
!6666 = distinct !DILexicalBlock(scope: !6636, file: !2, line: 917, column: 6)
!6667 = !DILocation(line: 917, column: 18, scope: !6666)
!6668 = !DILocation(line: 917, column: 6, scope: !6636)
!6669 = !DILocation(line: 918, column: 3, scope: !6666)
!6670 = !DILocation(line: 920, column: 8, scope: !6636)
!6671 = !DILocation(line: 920, column: 19, scope: !6636)
!6672 = !DILocation(line: 920, column: 25, scope: !6636)
!6673 = !DILocation(line: 920, column: 36, scope: !6636)
!6674 = !DILocation(line: 920, column: 40, scope: !6636)
!6675 = !DILocation(line: 920, column: 45, scope: !6636)
!6676 = !DILocation(line: 920, column: 6, scope: !6636)
!6677 = !DILocation(line: 922, column: 9, scope: !6636)
!6678 = !DILocation(line: 922, column: 2, scope: !6636)
!6679 = !DILocation(line: 923, column: 1, scope: !6636)
!6680 = !DISubprogram(name: "kset_create_and_add", scope: !185, file: !185, line: 178, type: !6681, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6681 = !DISubroutineType(types: !6682)
!6682 = !{!259, !215, !306, !257}
!6683 = distinct !DISubprogram(name: "uevent_filter", scope: !2, file: !2, line: 930, type: !313, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6684)
!6684 = !{!6685, !6686}
!6685 = !DILocalVariable(name: "kobj", arg: 1, scope: !6683, file: !2, line: 930, type: !315)
!6686 = !DILocalVariable(name: "ktype", scope: !6683, file: !2, line: 932, type: !343)
!6687 = !DILocation(line: 930, column: 48, scope: !6683)
!6688 = !DILocation(line: 932, column: 2, scope: !6683)
!6689 = !DILocation(line: 932, column: 26, scope: !6683)
!6690 = !DILocation(line: 932, column: 44, scope: !6683)
!6691 = !DILocation(line: 932, column: 34, scope: !6683)
!6692 = !DILocation(line: 934, column: 6, scope: !6693)
!6693 = distinct !DILexicalBlock(scope: !6683, file: !2, line: 934, column: 6)
!6694 = !DILocation(line: 934, column: 12, scope: !6693)
!6695 = !DILocation(line: 934, column: 6, scope: !6683)
!6696 = !DILocation(line: 935, column: 3, scope: !6693)
!6697 = !DILocation(line: 936, column: 2, scope: !6683)
!6698 = !DILocation(line: 937, column: 1, scope: !6683)
!6699 = distinct !DISubprogram(name: "get_ktype", scope: !185, file: !185, line: 196, type: !6700, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6702)
!6700 = !DISubroutineType(types: !6701)
!6701 = !{!343, !315}
!6702 = !{!6703}
!6703 = !DILocalVariable(name: "kobj", arg: 1, scope: !6699, file: !185, line: 196, type: !315)
!6704 = !DILocation(line: 196, column: 71, scope: !6699)
!6705 = !DILocation(line: 198, column: 9, scope: !6699)
!6706 = !DILocation(line: 198, column: 15, scope: !6699)
!6707 = !DILocation(line: 198, column: 2, scope: !6699)
!6708 = distinct !DISubprogram(name: "version_sysfs_builtin", scope: !2, file: !2, line: 868, type: !979, scopeLine: 869, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6709)
!6709 = !{!6710, !6713, !6714, !6715, !6722}
!6710 = !DILocalVariable(name: "vattr", scope: !6708, file: !2, line: 870, type: !6711)
!6711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6712, size: 64)
!6712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!6713 = !DILocalVariable(name: "mk", scope: !6708, file: !2, line: 871, type: !243)
!6714 = !DILocalVariable(name: "err", scope: !6708, file: !2, line: 872, type: !204)
!6715 = !DILocalVariable(name: "__ret_warn_on", scope: !6716, file: !2, line: 878, type: !204)
!6716 = distinct !DILexicalBlock(scope: !6717, file: !2, line: 878, column: 4)
!6717 = distinct !DILexicalBlock(scope: !6718, file: !2, line: 876, column: 11)
!6718 = distinct !DILexicalBlock(scope: !6719, file: !2, line: 876, column: 7)
!6719 = distinct !DILexicalBlock(scope: !6720, file: !2, line: 874, column: 67)
!6720 = distinct !DILexicalBlock(scope: !6721, file: !2, line: 874, column: 2)
!6721 = distinct !DILexicalBlock(scope: !6708, file: !2, line: 874, column: 2)
!6722 = !DILocalVariable(name: "__flags", scope: !6723, file: !2, line: 878, type: !204)
!6723 = distinct !DILexicalBlock(scope: !6724, file: !2, line: 878, column: 4)
!6724 = distinct !DILexicalBlock(scope: !6716, file: !2, line: 878, column: 4)
!6725 = !DILocation(line: 870, column: 2, scope: !6708)
!6726 = !DILocation(line: 870, column: 41, scope: !6708)
!6727 = !DILocation(line: 871, column: 2, scope: !6708)
!6728 = !DILocation(line: 871, column: 25, scope: !6708)
!6729 = !DILocation(line: 872, column: 2, scope: !6708)
!6730 = !DILocation(line: 872, column: 6, scope: !6708)
!6731 = !DILocation(line: 874, column: 13, scope: !6721)
!6732 = !DILocation(line: 874, column: 7, scope: !6721)
!6733 = !DILocation(line: 874, column: 33, scope: !6720)
!6734 = !DILocation(line: 874, column: 39, scope: !6720)
!6735 = !DILocation(line: 874, column: 2, scope: !6721)
!6736 = !DILocation(line: 875, column: 30, scope: !6719)
!6737 = !DILocation(line: 875, column: 37, scope: !6719)
!6738 = !DILocation(line: 875, column: 8, scope: !6719)
!6739 = !DILocation(line: 875, column: 6, scope: !6719)
!6740 = !DILocation(line: 876, column: 7, scope: !6718)
!6741 = !DILocation(line: 876, column: 7, scope: !6719)
!6742 = !DILocation(line: 877, column: 29, scope: !6717)
!6743 = !DILocation(line: 877, column: 33, scope: !6717)
!6744 = !DILocation(line: 877, column: 40, scope: !6717)
!6745 = !DILocation(line: 877, column: 47, scope: !6717)
!6746 = !DILocation(line: 877, column: 53, scope: !6717)
!6747 = !DILocation(line: 877, column: 10, scope: !6717)
!6748 = !DILocation(line: 877, column: 8, scope: !6717)
!6749 = !DILocation(line: 878, column: 4, scope: !6716)
!6750 = !DILocation(line: 878, column: 4, scope: !6724)
!6751 = !DILocation(line: 878, column: 4, scope: !6723)
!6752 = !DILocation(line: 878, column: 4, scope: !6753)
!6753 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 878, column: 4)
!6754 = !DILocation(line: 878, column: 4, scope: !6755)
!6755 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 878, column: 4)
!6756 = !{i64 2154596743, i64 2154596772, i64 2154596818, i64 2154596876, i64 2154596930, i64 2154596984, i64 2154597039, i64 2154597070, i64 2154597378, i64 2154597384, i64 2154597431, i64 2154597454, i64 2154597480}
!6757 = !DILocation(line: 878, column: 4, scope: !6758)
!6758 = distinct !DILexicalBlock(scope: !6723, file: !2, line: 878, column: 4)
!6759 = !DILocation(line: 878, column: 4, scope: !6717)
!6760 = !DILocation(line: 879, column: 20, scope: !6717)
!6761 = !DILocation(line: 879, column: 24, scope: !6717)
!6762 = !DILocation(line: 879, column: 4, scope: !6717)
!6763 = !DILocation(line: 880, column: 17, scope: !6717)
!6764 = !DILocation(line: 880, column: 21, scope: !6717)
!6765 = !DILocation(line: 880, column: 4, scope: !6717)
!6766 = !DILocation(line: 881, column: 3, scope: !6717)
!6767 = !DILocation(line: 882, column: 2, scope: !6719)
!6768 = !DILocation(line: 874, column: 63, scope: !6720)
!6769 = !DILocation(line: 874, column: 2, scope: !6720)
!6770 = distinct !{!6770, !6735, !6771, !4417, !4418}
!6771 = !DILocation(line: 882, column: 2, scope: !6721)
!6772 = !DILocation(line: 883, column: 1, scope: !6708)
!6773 = distinct !DISubprogram(name: "param_sysfs_builtin", scope: !2, file: !2, line: 831, type: !979, scopeLine: 832, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6774)
!6774 = !{!6775, !6776, !6777, !6778}
!6775 = !DILocalVariable(name: "kp", scope: !6773, file: !2, line: 833, type: !647)
!6776 = !DILocalVariable(name: "name_len", scope: !6773, file: !2, line: 834, type: !43)
!6777 = !DILocalVariable(name: "modname", scope: !6773, file: !2, line: 835, type: !592)
!6778 = !DILocalVariable(name: "dot", scope: !6779, file: !2, line: 838, type: !213)
!6779 = distinct !DILexicalBlock(scope: !6780, file: !2, line: 837, column: 56)
!6780 = distinct !DILexicalBlock(scope: !6781, file: !2, line: 837, column: 2)
!6781 = distinct !DILexicalBlock(scope: !6773, file: !2, line: 837, column: 2)
!6782 = !DILocation(line: 833, column: 2, scope: !6773)
!6783 = !DILocation(line: 833, column: 29, scope: !6773)
!6784 = !DILocation(line: 834, column: 2, scope: !6773)
!6785 = !DILocation(line: 834, column: 15, scope: !6773)
!6786 = !DILocation(line: 835, column: 2, scope: !6773)
!6787 = !DILocation(line: 835, column: 7, scope: !6773)
!6788 = !DILocation(line: 837, column: 10, scope: !6781)
!6789 = !DILocation(line: 837, column: 7, scope: !6781)
!6790 = !DILocation(line: 837, column: 29, scope: !6780)
!6791 = !DILocation(line: 837, column: 32, scope: !6780)
!6792 = !DILocation(line: 837, column: 2, scope: !6781)
!6793 = !DILocation(line: 838, column: 3, scope: !6779)
!6794 = !DILocation(line: 838, column: 9, scope: !6779)
!6795 = !DILocation(line: 840, column: 7, scope: !6796)
!6796 = distinct !DILexicalBlock(scope: !6779, file: !2, line: 840, column: 7)
!6797 = !DILocation(line: 840, column: 11, scope: !6796)
!6798 = !DILocation(line: 840, column: 16, scope: !6796)
!6799 = !DILocation(line: 840, column: 7, scope: !6779)
!6800 = !DILocation(line: 841, column: 4, scope: !6796)
!6801 = !DILocation(line: 843, column: 16, scope: !6779)
!6802 = !DILocation(line: 843, column: 20, scope: !6779)
!6803 = !DILocation(line: 843, column: 9, scope: !6779)
!6804 = !DILocation(line: 843, column: 7, scope: !6779)
!6805 = !DILocation(line: 844, column: 8, scope: !6806)
!6806 = distinct !DILexicalBlock(scope: !6779, file: !2, line: 844, column: 7)
!6807 = !DILocation(line: 844, column: 7, scope: !6779)
!6808 = !DILocation(line: 846, column: 11, scope: !6809)
!6809 = distinct !DILexicalBlock(scope: !6806, file: !2, line: 844, column: 13)
!6810 = !DILocation(line: 846, column: 4, scope: !6809)
!6811 = !DILocation(line: 847, column: 13, scope: !6809)
!6812 = !DILocation(line: 848, column: 3, scope: !6809)
!6813 = !DILocation(line: 849, column: 15, scope: !6814)
!6814 = distinct !DILexicalBlock(scope: !6806, file: !2, line: 848, column: 10)
!6815 = !DILocation(line: 849, column: 21, scope: !6814)
!6816 = !DILocation(line: 849, column: 25, scope: !6814)
!6817 = !DILocation(line: 849, column: 19, scope: !6814)
!6818 = !DILocation(line: 849, column: 30, scope: !6814)
!6819 = !DILocation(line: 849, column: 13, scope: !6814)
!6820 = !DILocation(line: 850, column: 12, scope: !6814)
!6821 = !DILocation(line: 850, column: 21, scope: !6814)
!6822 = !DILocation(line: 850, column: 25, scope: !6814)
!6823 = !DILocation(line: 850, column: 31, scope: !6814)
!6824 = !DILocation(line: 850, column: 4, scope: !6814)
!6825 = !DILocation(line: 852, column: 26, scope: !6779)
!6826 = !DILocation(line: 852, column: 35, scope: !6779)
!6827 = !DILocation(line: 852, column: 39, scope: !6779)
!6828 = !DILocation(line: 852, column: 3, scope: !6779)
!6829 = !DILocation(line: 853, column: 2, scope: !6780)
!6830 = !DILocation(line: 853, column: 2, scope: !6779)
!6831 = !DILocation(line: 837, column: 52, scope: !6780)
!6832 = !DILocation(line: 837, column: 2, scope: !6780)
!6833 = distinct !{!6833, !6792, !6834, !4417, !4418}
!6834 = !DILocation(line: 853, column: 2, scope: !6781)
!6835 = !DILocation(line: 854, column: 1, scope: !6773)
!6836 = distinct !DISubprogram(name: "locate_module_kobject", scope: !2, file: !2, line: 762, type: !6837, scopeLine: 763, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6839)
!6837 = !DISubroutineType(types: !6838)
!6838 = !{!243, !215}
!6839 = !{!6840, !6841, !6842, !6843, !6844}
!6840 = !DILocalVariable(name: "name", arg: 1, scope: !6836, file: !2, line: 762, type: !215)
!6841 = !DILocalVariable(name: "mk", scope: !6836, file: !2, line: 764, type: !243)
!6842 = !DILocalVariable(name: "kobj", scope: !6836, file: !2, line: 765, type: !257)
!6843 = !DILocalVariable(name: "err", scope: !6836, file: !2, line: 766, type: !204)
!6844 = !DILocalVariable(name: "__mptr", scope: !6845, file: !2, line: 770, type: !198)
!6845 = distinct !DILexicalBlock(scope: !6846, file: !2, line: 770, column: 8)
!6846 = distinct !DILexicalBlock(scope: !6847, file: !2, line: 769, column: 12)
!6847 = distinct !DILexicalBlock(scope: !6836, file: !2, line: 769, column: 6)
!6848 = !DILocation(line: 762, column: 73, scope: !6836)
!6849 = !DILocation(line: 764, column: 2, scope: !6836)
!6850 = !DILocation(line: 764, column: 25, scope: !6836)
!6851 = !DILocation(line: 765, column: 2, scope: !6836)
!6852 = !DILocation(line: 765, column: 18, scope: !6836)
!6853 = !DILocation(line: 766, column: 2, scope: !6836)
!6854 = !DILocation(line: 766, column: 6, scope: !6836)
!6855 = !DILocation(line: 768, column: 23, scope: !6836)
!6856 = !DILocation(line: 768, column: 36, scope: !6836)
!6857 = !DILocation(line: 768, column: 9, scope: !6836)
!6858 = !DILocation(line: 768, column: 7, scope: !6836)
!6859 = !DILocation(line: 769, column: 6, scope: !6847)
!6860 = !DILocation(line: 769, column: 6, scope: !6836)
!6861 = !DILocation(line: 770, column: 8, scope: !6845)
!6862 = !DILocation(line: 770, column: 8, scope: !6846)
!6863 = !DILocation(line: 770, column: 6, scope: !6846)
!6864 = !DILocation(line: 771, column: 2, scope: !6846)
!6865 = !DILocation(line: 772, column: 8, scope: !6866)
!6866 = distinct !DILexicalBlock(scope: !6847, file: !2, line: 771, column: 9)
!6867 = !DILocation(line: 772, column: 6, scope: !6866)
!6868 = !DILocation(line: 773, column: 3, scope: !6866)
!6869 = !DILocation(line: 773, column: 3, scope: !6870)
!6870 = distinct !DILexicalBlock(scope: !6871, file: !2, line: 773, column: 3)
!6871 = distinct !DILexicalBlock(scope: !6866, file: !2, line: 773, column: 3)
!6872 = !DILocation(line: 773, column: 3, scope: !6871)
!6873 = !DILocation(line: 773, column: 3, scope: !6874)
!6874 = distinct !DILexicalBlock(scope: !6870, file: !2, line: 773, column: 3)
!6875 = !DILocation(line: 773, column: 3, scope: !6876)
!6876 = distinct !DILexicalBlock(scope: !6874, file: !2, line: 773, column: 3)
!6877 = !DILocation(line: 773, column: 3, scope: !6878)
!6878 = distinct !DILexicalBlock(scope: !6874, file: !2, line: 773, column: 3)
!6879 = !{i64 2154591096, i64 2154591125, i64 2154591171, i64 2154591229, i64 2154591283, i64 2154591337, i64 2154591392, i64 2154591423}
!6880 = !DILocation(line: 775, column: 3, scope: !6866)
!6881 = !DILocation(line: 775, column: 7, scope: !6866)
!6882 = !DILocation(line: 775, column: 11, scope: !6866)
!6883 = !DILocation(line: 776, column: 19, scope: !6866)
!6884 = !DILocation(line: 776, column: 3, scope: !6866)
!6885 = !DILocation(line: 776, column: 7, scope: !6866)
!6886 = !DILocation(line: 776, column: 12, scope: !6866)
!6887 = !DILocation(line: 776, column: 17, scope: !6866)
!6888 = !DILocation(line: 777, column: 31, scope: !6866)
!6889 = !DILocation(line: 777, column: 35, scope: !6866)
!6890 = !DILocation(line: 778, column: 15, scope: !6866)
!6891 = !DILocation(line: 777, column: 9, scope: !6866)
!6892 = !DILocation(line: 777, column: 7, scope: !6866)
!6893 = !DILocation(line: 780, column: 8, scope: !6894)
!6894 = distinct !DILexicalBlock(scope: !6866, file: !2, line: 780, column: 7)
!6895 = !DILocation(line: 780, column: 7, scope: !6866)
!6896 = !DILocation(line: 781, column: 29, scope: !6894)
!6897 = !DILocation(line: 781, column: 33, scope: !6894)
!6898 = !DILocation(line: 781, column: 10, scope: !6894)
!6899 = !DILocation(line: 781, column: 8, scope: !6894)
!6900 = !DILocation(line: 781, column: 4, scope: !6894)
!6901 = !DILocation(line: 783, column: 7, scope: !6902)
!6902 = distinct !DILexicalBlock(scope: !6866, file: !2, line: 783, column: 7)
!6903 = !DILocation(line: 783, column: 7, scope: !6866)
!6904 = !DILocation(line: 784, column: 17, scope: !6905)
!6905 = distinct !DILexicalBlock(scope: !6902, file: !2, line: 783, column: 12)
!6906 = !DILocation(line: 784, column: 21, scope: !6905)
!6907 = !DILocation(line: 784, column: 4, scope: !6905)
!6908 = !DILocation(line: 785, column: 4, scope: !6909)
!6909 = distinct !DILexicalBlock(scope: !6905, file: !2, line: 785, column: 4)
!6910 = !DILocation(line: 785, column: 4, scope: !6911)
!6911 = distinct !DILexicalBlock(scope: !6909, file: !2, line: 785, column: 4)
!6912 = !DILocation(line: 787, column: 4, scope: !6905)
!6913 = !DILocation(line: 791, column: 16, scope: !6866)
!6914 = !DILocation(line: 791, column: 20, scope: !6866)
!6915 = !DILocation(line: 791, column: 3, scope: !6866)
!6916 = !DILocation(line: 794, column: 9, scope: !6836)
!6917 = !DILocation(line: 794, column: 2, scope: !6836)
!6918 = !DILocation(line: 795, column: 1, scope: !6836)
!6919 = distinct !DISubprogram(name: "sysfs_create_file", scope: !229, file: !229, line: 620, type: !6920, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6924)
!6920 = !DISubroutineType(types: !6921)
!6921 = !{!204, !257, !6922}
!6922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6923, size: 64)
!6923 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!6924 = !{!6925, !6926}
!6925 = !DILocalVariable(name: "kobj", arg: 1, scope: !6919, file: !229, line: 620, type: !257)
!6926 = !DILocalVariable(name: "attr", arg: 2, scope: !6919, file: !229, line: 621, type: !6922)
!6927 = !DILocation(line: 620, column: 66, scope: !6919)
!6928 = !DILocation(line: 621, column: 32, scope: !6919)
!6929 = !DILocation(line: 623, column: 30, scope: !6919)
!6930 = !DILocation(line: 623, column: 36, scope: !6919)
!6931 = !DILocation(line: 623, column: 9, scope: !6919)
!6932 = !DILocation(line: 623, column: 2, scope: !6919)
!6933 = !DISubprogram(name: "kobject_uevent", scope: !185, file: !185, line: 214, type: !6934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6934 = !DISubroutineType(types: !6935)
!6935 = !{!204, !257, !184}
!6936 = !DISubprogram(name: "kobject_put", scope: !185, file: !185, line: 110, type: !349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6937 = !DISubprogram(name: "kset_find_obj", scope: !185, file: !185, line: 201, type: !6938, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6938 = !DISubroutineType(types: !6939)
!6939 = !{!257, !259, !215}
!6940 = !DISubprogram(name: "kobject_init_and_add", scope: !185, file: !185, line: 96, type: !6941, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6941 = !DISubroutineType(types: !6942)
!6942 = !{!204, !257, !343, !257, !215, null}
!6943 = !DISubprogram(name: "kobject_get", scope: !185, file: !185, line: 108, type: !6944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6944 = !DISubroutineType(types: !6945)
!6945 = !{!257, !257}
!6946 = !DISubprogram(name: "sysfs_create_file_ns", scope: !229, file: !229, line: 273, type: !6947, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6947 = !DISubroutineType(types: !6948)
!6948 = !{!204, !257, !6922, !2513}
!6949 = !DISubprogram(name: "strchr", scope: !4451, file: !4451, line: 100, type: !6950, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6950 = !DISubroutineType(types: !6951)
!6951 = !{!213, !215, !204}
!6952 = !DISubprogram(name: "strscpy", scope: !4451, file: !4451, line: 72, type: !6953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!6953 = !DISubroutineType(types: !6954)
!6954 = !{!238, !213, !215, !365}
!6955 = distinct !DISubprogram(name: "kernel_add_sysfs_param", scope: !2, file: !2, line: 797, type: !6956, scopeLine: 800, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !39, retainedNodes: !6958)
!6956 = !DISubroutineType(types: !6957)
!6957 = !{null, !215, !647, !43}
!6958 = !{!6959, !6960, !6961, !6962, !6963}
!6959 = !DILocalVariable(name: "name", arg: 1, scope: !6955, file: !2, line: 797, type: !215)
!6960 = !DILocalVariable(name: "kparam", arg: 2, scope: !6955, file: !2, line: 798, type: !647)
!6961 = !DILocalVariable(name: "name_skip", arg: 3, scope: !6955, file: !2, line: 799, type: !43)
!6962 = !DILocalVariable(name: "mk", scope: !6955, file: !2, line: 801, type: !243)
!6963 = !DILocalVariable(name: "err", scope: !6955, file: !2, line: 802, type: !204)
!6964 = !DILocation(line: 797, column: 55, scope: !6955)
!6965 = !DILocation(line: 798, column: 35, scope: !6955)
!6966 = !DILocation(line: 799, column: 21, scope: !6955)
!6967 = !DILocation(line: 801, column: 2, scope: !6955)
!6968 = !DILocation(line: 801, column: 25, scope: !6955)
!6969 = !DILocation(line: 802, column: 2, scope: !6955)
!6970 = !DILocation(line: 802, column: 6, scope: !6955)
!6971 = !DILocation(line: 804, column: 29, scope: !6955)
!6972 = !DILocation(line: 804, column: 7, scope: !6955)
!6973 = !DILocation(line: 804, column: 5, scope: !6955)
!6974 = !DILocation(line: 805, column: 7, scope: !6975)
!6975 = distinct !DILexicalBlock(scope: !6955, file: !2, line: 805, column: 6)
!6976 = !DILocation(line: 805, column: 6, scope: !6955)
!6977 = !DILocation(line: 806, column: 3, scope: !6975)
!6978 = !DILocation(line: 809, column: 6, scope: !6979)
!6979 = distinct !DILexicalBlock(scope: !6955, file: !2, line: 809, column: 6)
!6980 = !DILocation(line: 809, column: 10, scope: !6979)
!6981 = !DILocation(line: 809, column: 6, scope: !6955)
!6982 = !DILocation(line: 810, column: 23, scope: !6979)
!6983 = !DILocation(line: 810, column: 27, scope: !6979)
!6984 = !DILocation(line: 810, column: 34, scope: !6979)
!6985 = !DILocation(line: 810, column: 38, scope: !6979)
!6986 = !DILocation(line: 810, column: 42, scope: !6979)
!6987 = !DILocation(line: 810, column: 3, scope: !6979)
!6988 = !DILocation(line: 813, column: 24, scope: !6955)
!6989 = !DILocation(line: 813, column: 28, scope: !6955)
!6990 = !DILocation(line: 813, column: 36, scope: !6955)
!6991 = !DILocation(line: 813, column: 44, scope: !6955)
!6992 = !DILocation(line: 813, column: 51, scope: !6955)
!6993 = !DILocation(line: 813, column: 49, scope: !6955)
!6994 = !DILocation(line: 813, column: 8, scope: !6955)
!6995 = !DILocation(line: 813, column: 6, scope: !6955)
!6996 = !DILocation(line: 814, column: 2, scope: !6955)
!6997 = !DILocation(line: 814, column: 2, scope: !6998)
!6998 = distinct !DILexicalBlock(scope: !6999, file: !2, line: 814, column: 2)
!6999 = distinct !DILexicalBlock(scope: !6955, file: !2, line: 814, column: 2)
!7000 = !DILocation(line: 814, column: 2, scope: !6999)
!7001 = !DILocation(line: 814, column: 2, scope: !7002)
!7002 = distinct !DILexicalBlock(scope: !6998, file: !2, line: 814, column: 2)
!7003 = !DILocation(line: 814, column: 2, scope: !7004)
!7004 = distinct !DILexicalBlock(scope: !7002, file: !2, line: 814, column: 2)
!7005 = !DILocation(line: 814, column: 2, scope: !7006)
!7006 = distinct !DILexicalBlock(scope: !7002, file: !2, line: 814, column: 2)
!7007 = !{i64 2154592911, i64 2154592940, i64 2154592986, i64 2154593044, i64 2154593098, i64 2154593152, i64 2154593207, i64 2154593238}
!7008 = !DILocation(line: 815, column: 28, scope: !6955)
!7009 = !DILocation(line: 815, column: 32, scope: !6955)
!7010 = !DILocation(line: 815, column: 39, scope: !6955)
!7011 = !DILocation(line: 815, column: 43, scope: !6955)
!7012 = !DILocation(line: 815, column: 47, scope: !6955)
!7013 = !DILocation(line: 815, column: 8, scope: !6955)
!7014 = !DILocation(line: 815, column: 6, scope: !6955)
!7015 = !DILocation(line: 816, column: 2, scope: !6955)
!7016 = !DILocation(line: 816, column: 2, scope: !7017)
!7017 = distinct !DILexicalBlock(scope: !7018, file: !2, line: 816, column: 2)
!7018 = distinct !DILexicalBlock(scope: !6955, file: !2, line: 816, column: 2)
!7019 = !DILocation(line: 816, column: 2, scope: !7018)
!7020 = !DILocation(line: 816, column: 2, scope: !7021)
!7021 = distinct !DILexicalBlock(scope: !7017, file: !2, line: 816, column: 2)
!7022 = !DILocation(line: 816, column: 2, scope: !7023)
!7023 = distinct !DILexicalBlock(scope: !7021, file: !2, line: 816, column: 2)
!7024 = !DILocation(line: 816, column: 2, scope: !7025)
!7025 = distinct !DILexicalBlock(scope: !7021, file: !2, line: 816, column: 2)
!7026 = !{i64 2154593871, i64 2154593900, i64 2154593946, i64 2154594004, i64 2154594058, i64 2154594112, i64 2154594167, i64 2154594198}
!7027 = !DILocation(line: 817, column: 18, scope: !6955)
!7028 = !DILocation(line: 817, column: 22, scope: !6955)
!7029 = !DILocation(line: 817, column: 2, scope: !6955)
!7030 = !DILocation(line: 818, column: 15, scope: !6955)
!7031 = !DILocation(line: 818, column: 19, scope: !6955)
!7032 = !DILocation(line: 818, column: 2, scope: !6955)
!7033 = !DILocation(line: 819, column: 1, scope: !6955)

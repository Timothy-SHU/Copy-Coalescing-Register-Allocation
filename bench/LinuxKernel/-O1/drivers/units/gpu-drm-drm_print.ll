; ModuleID = 'drivers/gpu/drm/drm_print.c'
source_filename = "drivers/gpu/drm/drm_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_debug: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_puts_coredump: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_puts_coredump ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_printfn_coredump: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_printfn_coredump ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_puts_seq_file: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_puts_seq_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_printfn_seq_file: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_printfn_seq_file ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_printfn_info: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_printfn_info ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_printfn_debug: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_printfn_debug ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_printfn_err: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_printfn_err ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_puts: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_puts ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_printf: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_printf ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_print_bits: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_print_bits ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_dev_printk: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_dev_printk ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_dev_dbg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_dev_dbg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol____drm_dbg: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad ___drm_dbg ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___drm_err: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __drm_err ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_drm_print_regset32: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad drm_print_regset32 ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.13 }
%union.anon.13 = type { ptr }
%struct.drm_printer = type { ptr, ptr, ptr, ptr }
%struct.drm_print_iterator = type { ptr, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.va_format = type { ptr, ptr }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i64 }

@__drm_debug = hidden global i64 0, align 8, !dbg !0
@__UNIQUE_ID___addressable___drm_debug268 = internal global ptr @__drm_debug, section ".discard.addressable", align 8, !dbg !3950
@__UNIQUE_ID_debug269 = internal constant [547 x i8] c"drm.parm=debug:Enable debug output, where each bit enables a debug category.\0A\09\09Bit 0 (0x01)  will enable CORE messages (drm core code)\0A\09\09Bit 1 (0x02)  will enable DRIVER messages (drm controller code)\0A\09\09Bit 2 (0x04)  will enable KMS messages (modesetting code)\0A\09\09Bit 3 (0x08)  will enable PRIME messages (prime code)\0A\09\09Bit 4 (0x10)  will enable ATOMIC messages (atomic code)\0A\09\09Bit 5 (0x20)  will enable VBL messages (vblank code)\0A\09\09Bit 7 (0x80)  will enable LEASE messages (leasing code)\0A\09\09Bit 8 (0x100) will enable DP messages (displayport code)\00", section ".modinfo", align 1, !dbg !3952
@__param_str_debug = internal constant [10 x i8] c"drm.debug\00", align 1, !dbg !4052
@param_ops_ulong = external dso_local constant %struct.kernel_param_ops, align 8
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_ulong, i16 384, i8 -1, i8 0, %union.anon.13 { ptr @__drm_debug } }, section "__param", align 8, !dbg !3957
@__UNIQUE_ID_debugtype270 = internal constant [25 x i8] c"drm.parmtype=debug:ulong\00", section ".modinfo", align 1, !dbg !3959
@__UNIQUE_ID___addressable___drm_puts_coredump273 = internal global ptr @__drm_puts_coredump, section ".discard.addressable", align 8, !dbg !3964
@.str = private unnamed_addr constant [4 x i8] c"%pV\00", align 1, !dbg !3966
@__UNIQUE_ID___addressable___drm_printfn_coredump274 = internal global ptr @__drm_printfn_coredump, section ".discard.addressable", align 8, !dbg !3969
@__UNIQUE_ID___addressable___drm_puts_seq_file275 = internal global ptr @__drm_puts_seq_file, section ".discard.addressable", align 8, !dbg !3971
@__UNIQUE_ID___addressable___drm_printfn_seq_file276 = internal global ptr @__drm_printfn_seq_file, section ".discard.addressable", align 8, !dbg !3973
@.str.1 = private unnamed_addr constant [10 x i8] c"[drm] %pV\00", align 1, !dbg !3975
@__UNIQUE_ID___addressable___drm_printfn_info277 = internal global ptr @__drm_printfn_info, section ".discard.addressable", align 8, !dbg !3980
@.str.2 = private unnamed_addr constant [9 x i8] c"\017%s %pV\00", align 1, !dbg !3982
@__UNIQUE_ID___addressable___drm_printfn_debug278 = internal global ptr @__drm_printfn_debug, section ".discard.addressable", align 8, !dbg !3987
@.str.3 = private unnamed_addr constant [17 x i8] c"\013*ERROR* %s %pV\00", align 1, !dbg !3989
@__UNIQUE_ID___addressable___drm_printfn_err279 = internal global ptr @__drm_printfn_err, section ".discard.addressable", align 8, !dbg !3994
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !3996
@__UNIQUE_ID___addressable_drm_puts280 = internal global ptr @drm_puts, section ".discard.addressable", align 8, !dbg !3999
@__UNIQUE_ID___addressable_drm_printf281 = internal global ptr @drm_printf, section ".discard.addressable", align 8, !dbg !4001
@.str.5 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_print.c\00", align 1, !dbg !4003
@.str.6 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !4008
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !4013
@.str.8 = private unnamed_addr constant [2 x i8] c",\00", align 1, !dbg !4016
@.str.9 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1, !dbg !4019
@__UNIQUE_ID___addressable_drm_print_bits282 = internal global ptr @drm_print_bits, section ".discard.addressable", align 8, !dbg !4022
@.str.10 = private unnamed_addr constant [14 x i8] c"[drm:%ps] %pV\00", align 1, !dbg !4024
@.str.11 = private unnamed_addr constant [16 x i8] c"%s[drm:%ps] %pV\00", align 1, !dbg !4029
@__UNIQUE_ID___addressable_drm_dev_printk283 = internal global ptr @drm_dev_printk, section ".discard.addressable", align 8, !dbg !4031
@.str.12 = private unnamed_addr constant [3 x i8] c"\017\00", align 1, !dbg !4033
@.str.13 = private unnamed_addr constant [16 x i8] c"\017[drm:%ps] %pV\00", align 1, !dbg !4035
@__UNIQUE_ID___addressable___drm_dev_dbg284 = internal global ptr @__drm_dev_dbg, section ".discard.addressable", align 8, !dbg !4037
@__UNIQUE_ID___addressable____drm_dbg285 = internal global ptr @___drm_dbg, section ".discard.addressable", align 8, !dbg !4039
@.str.14 = private unnamed_addr constant [24 x i8] c"\013[drm:%ps] *ERROR* %pV\00", align 1, !dbg !4041
@__UNIQUE_ID___addressable___drm_err286 = internal global ptr @__drm_err, section ".discard.addressable", align 8, !dbg !4046
@.str.15 = private unnamed_addr constant [14 x i8] c"%*s = 0x%08x\0A\00", align 1, !dbg !4048
@__UNIQUE_ID___addressable_drm_print_regset32289 = internal global ptr @drm_print_regset32, section ".discard.addressable", align 8, !dbg !4050
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.16 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !4055
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID___addressable___drm_debug268, ptr @__UNIQUE_ID_debug269, ptr @__param_debug, ptr @__UNIQUE_ID_debugtype270, ptr @__UNIQUE_ID___addressable___drm_puts_coredump273, ptr @__UNIQUE_ID___addressable___drm_printfn_coredump274, ptr @__UNIQUE_ID___addressable___drm_puts_seq_file275, ptr @__UNIQUE_ID___addressable___drm_printfn_seq_file276, ptr @__UNIQUE_ID___addressable___drm_printfn_info277, ptr @__UNIQUE_ID___addressable___drm_printfn_debug278, ptr @__UNIQUE_ID___addressable___drm_printfn_err279, ptr @__UNIQUE_ID___addressable_drm_puts280, ptr @__UNIQUE_ID___addressable_drm_printf281, ptr @__UNIQUE_ID___addressable_drm_print_bits282, ptr @__UNIQUE_ID___addressable_drm_dev_printk283, ptr @__UNIQUE_ID___addressable___drm_dev_dbg284, ptr @__UNIQUE_ID___addressable____drm_dbg285, ptr @__UNIQUE_ID___addressable___drm_err286, ptr @__UNIQUE_ID___addressable_drm_print_regset32289], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_puts_coredump(ptr noundef %p, ptr noundef %str) #0 align 16 !dbg !4069 {
entry:
  %p.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  %iterator = alloca ptr, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %copy = alloca i64, align 8
  %pos = alloca i64, align 8
  %__UNIQUE_ID___x271 = alloca i64, align 8
  %__UNIQUE_ID___y272 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4101, metadata !DIExpression()), !dbg !4120
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4102, metadata !DIExpression()), !dbg !4121
  call void @llvm.lifetime.start.p0(i64 8, ptr %iterator) #15, !dbg !4122
  call void @llvm.dbg.declare(metadata ptr %iterator, metadata !4103, metadata !DIExpression()), !dbg !4123
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4124
  %arg = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 2, !dbg !4125
  %1 = load ptr, ptr %arg, align 8, !dbg !4125
  store ptr %1, ptr %iterator, align 8, !dbg !4123
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !4126
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4111, metadata !DIExpression()), !dbg !4127
  %2 = load ptr, ptr %iterator, align 8, !dbg !4128
  %remain = getelementptr inbounds %struct.drm_print_iterator, ptr %2, i32 0, i32 2, !dbg !4130
  %3 = load i64, ptr %remain, align 8, !dbg !4130
  %tobool = icmp ne i64 %3, 0, !dbg !4128
  br i1 %tobool, label %if.end, label %if.then, !dbg !4131

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup46, !dbg !4132

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %iterator, align 8, !dbg !4133
  %offset = getelementptr inbounds %struct.drm_print_iterator, ptr %4, i32 0, i32 3, !dbg !4134
  %5 = load i64, ptr %offset, align 8, !dbg !4134
  %6 = load ptr, ptr %iterator, align 8, !dbg !4135
  %start = getelementptr inbounds %struct.drm_print_iterator, ptr %6, i32 0, i32 1, !dbg !4136
  %7 = load i64, ptr %start, align 8, !dbg !4136
  %cmp = icmp slt i64 %5, %7, !dbg !4137
  br i1 %cmp, label %if.then1, label %if.else, !dbg !4138

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %copy) #15, !dbg !4139
  call void @llvm.dbg.declare(metadata ptr %copy, metadata !4112, metadata !DIExpression()), !dbg !4140
  %8 = load ptr, ptr %str.addr, align 8, !dbg !4141
  %call = call i64 @strlen(ptr noundef %8) #16, !dbg !4142
  store i64 %call, ptr %len, align 8, !dbg !4143
  %9 = load ptr, ptr %iterator, align 8, !dbg !4144
  %offset2 = getelementptr inbounds %struct.drm_print_iterator, ptr %9, i32 0, i32 3, !dbg !4146
  %10 = load i64, ptr %offset2, align 8, !dbg !4146
  %11 = load i64, ptr %len, align 8, !dbg !4147
  %add = add i64 %10, %11, !dbg !4148
  %12 = load ptr, ptr %iterator, align 8, !dbg !4149
  %start3 = getelementptr inbounds %struct.drm_print_iterator, ptr %12, i32 0, i32 1, !dbg !4150
  %13 = load i64, ptr %start3, align 8, !dbg !4150
  %cmp4 = icmp sle i64 %add, %13, !dbg !4151
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !4152

if.then5:                                         ; preds = %if.then1
  %14 = load i64, ptr %len, align 8, !dbg !4153
  %15 = load ptr, ptr %iterator, align 8, !dbg !4155
  %offset6 = getelementptr inbounds %struct.drm_print_iterator, ptr %15, i32 0, i32 3, !dbg !4156
  %16 = load i64, ptr %offset6, align 8, !dbg !4157
  %add7 = add i64 %16, %14, !dbg !4157
  store i64 %add7, ptr %offset6, align 8, !dbg !4157
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4158

if.end8:                                          ; preds = %if.then1
  %17 = load i64, ptr %len, align 8, !dbg !4159
  %18 = load ptr, ptr %iterator, align 8, !dbg !4160
  %start9 = getelementptr inbounds %struct.drm_print_iterator, ptr %18, i32 0, i32 1, !dbg !4161
  %19 = load i64, ptr %start9, align 8, !dbg !4161
  %20 = load ptr, ptr %iterator, align 8, !dbg !4162
  %offset10 = getelementptr inbounds %struct.drm_print_iterator, ptr %20, i32 0, i32 3, !dbg !4163
  %21 = load i64, ptr %offset10, align 8, !dbg !4163
  %sub = sub i64 %19, %21, !dbg !4164
  %sub11 = sub i64 %17, %sub, !dbg !4165
  store i64 %sub11, ptr %copy, align 8, !dbg !4166
  %22 = load i64, ptr %copy, align 8, !dbg !4167
  %23 = load ptr, ptr %iterator, align 8, !dbg !4169
  %remain12 = getelementptr inbounds %struct.drm_print_iterator, ptr %23, i32 0, i32 2, !dbg !4170
  %24 = load i64, ptr %remain12, align 8, !dbg !4170
  %cmp13 = icmp sgt i64 %22, %24, !dbg !4171
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !4172

if.then14:                                        ; preds = %if.end8
  %25 = load ptr, ptr %iterator, align 8, !dbg !4173
  %remain15 = getelementptr inbounds %struct.drm_print_iterator, ptr %25, i32 0, i32 2, !dbg !4174
  %26 = load i64, ptr %remain15, align 8, !dbg !4174
  store i64 %26, ptr %copy, align 8, !dbg !4175
  br label %if.end16, !dbg !4176

if.end16:                                         ; preds = %if.then14, %if.end8
  %27 = load ptr, ptr %iterator, align 8, !dbg !4177
  %data = getelementptr inbounds %struct.drm_print_iterator, ptr %27, i32 0, i32 0, !dbg !4179
  %28 = load ptr, ptr %data, align 8, !dbg !4179
  %tobool17 = icmp ne ptr %28, null, !dbg !4177
  br i1 %tobool17, label %if.then18, label %if.end23, !dbg !4180

if.then18:                                        ; preds = %if.end16
  %29 = load ptr, ptr %iterator, align 8, !dbg !4181
  %data19 = getelementptr inbounds %struct.drm_print_iterator, ptr %29, i32 0, i32 0, !dbg !4182
  %30 = load ptr, ptr %data19, align 8, !dbg !4182
  %31 = load ptr, ptr %str.addr, align 8, !dbg !4183
  %32 = load ptr, ptr %iterator, align 8, !dbg !4184
  %start20 = getelementptr inbounds %struct.drm_print_iterator, ptr %32, i32 0, i32 1, !dbg !4185
  %33 = load i64, ptr %start20, align 8, !dbg !4185
  %34 = load ptr, ptr %iterator, align 8, !dbg !4186
  %offset21 = getelementptr inbounds %struct.drm_print_iterator, ptr %34, i32 0, i32 3, !dbg !4187
  %35 = load i64, ptr %offset21, align 8, !dbg !4187
  %sub22 = sub i64 %33, %35, !dbg !4188
  %add.ptr = getelementptr i8, ptr %31, i64 %sub22, !dbg !4189
  %36 = load i64, ptr %copy, align 8, !dbg !4190
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %30, ptr align 1 %add.ptr, i64 %36, i1 false), !dbg !4191
  br label %if.end23, !dbg !4191

if.end23:                                         ; preds = %if.then18, %if.end16
  %37 = load ptr, ptr %iterator, align 8, !dbg !4192
  %start24 = getelementptr inbounds %struct.drm_print_iterator, ptr %37, i32 0, i32 1, !dbg !4193
  %38 = load i64, ptr %start24, align 8, !dbg !4193
  %39 = load i64, ptr %copy, align 8, !dbg !4194
  %add25 = add i64 %38, %39, !dbg !4195
  %40 = load ptr, ptr %iterator, align 8, !dbg !4196
  %offset26 = getelementptr inbounds %struct.drm_print_iterator, ptr %40, i32 0, i32 3, !dbg !4197
  store i64 %add25, ptr %offset26, align 8, !dbg !4198
  %41 = load i64, ptr %copy, align 8, !dbg !4199
  %42 = load ptr, ptr %iterator, align 8, !dbg !4200
  %remain27 = getelementptr inbounds %struct.drm_print_iterator, ptr %42, i32 0, i32 2, !dbg !4201
  %43 = load i64, ptr %remain27, align 8, !dbg !4202
  %sub28 = sub i64 %43, %41, !dbg !4202
  store i64 %sub28, ptr %remain27, align 8, !dbg !4202
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4203
  br label %cleanup, !dbg !4203

cleanup:                                          ; preds = %if.end23, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %copy) #15, !dbg !4203
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup46 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end45, !dbg !4204

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !4205
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4115, metadata !DIExpression()), !dbg !4206
  %44 = load ptr, ptr %iterator, align 8, !dbg !4207
  %offset29 = getelementptr inbounds %struct.drm_print_iterator, ptr %44, i32 0, i32 3, !dbg !4208
  %45 = load i64, ptr %offset29, align 8, !dbg !4208
  %46 = load ptr, ptr %iterator, align 8, !dbg !4209
  %start30 = getelementptr inbounds %struct.drm_print_iterator, ptr %46, i32 0, i32 1, !dbg !4210
  %47 = load i64, ptr %start30, align 8, !dbg !4210
  %sub31 = sub i64 %45, %47, !dbg !4211
  store i64 %sub31, ptr %pos, align 8, !dbg !4206
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x271) #15, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x271, metadata !4117, metadata !DIExpression()), !dbg !4212
  %48 = load ptr, ptr %str.addr, align 8, !dbg !4212
  %call32 = call i64 @strlen(ptr noundef %48) #16, !dbg !4212
  store i64 %call32, ptr %__UNIQUE_ID___x271, align 8, !dbg !4212
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y272) #15, !dbg !4212
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y272, metadata !4119, metadata !DIExpression()), !dbg !4212
  %49 = load ptr, ptr %iterator, align 8, !dbg !4212
  %remain33 = getelementptr inbounds %struct.drm_print_iterator, ptr %49, i32 0, i32 2, !dbg !4212
  %50 = load i64, ptr %remain33, align 8, !dbg !4212
  store i64 %50, ptr %__UNIQUE_ID___y272, align 8, !dbg !4212
  %51 = load i64, ptr %__UNIQUE_ID___x271, align 8, !dbg !4212
  %52 = load i64, ptr %__UNIQUE_ID___y272, align 8, !dbg !4212
  %cmp34 = icmp slt i64 %51, %52, !dbg !4212
  br i1 %cmp34, label %cond.true, label %cond.false, !dbg !4212

cond.true:                                        ; preds = %if.else
  %53 = load i64, ptr %__UNIQUE_ID___x271, align 8, !dbg !4212
  br label %cond.end, !dbg !4212

cond.false:                                       ; preds = %if.else
  %54 = load i64, ptr %__UNIQUE_ID___y272, align 8, !dbg !4212
  br label %cond.end, !dbg !4212

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %53, %cond.true ], [ %54, %cond.false ], !dbg !4212
  store i64 %cond, ptr %tmp, align 8, !dbg !4212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y272) #15, !dbg !4213
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x271) #15, !dbg !4213
  %55 = load i64, ptr %tmp, align 8, !dbg !4212
  store i64 %55, ptr %len, align 8, !dbg !4214
  %56 = load ptr, ptr %iterator, align 8, !dbg !4215
  %data35 = getelementptr inbounds %struct.drm_print_iterator, ptr %56, i32 0, i32 0, !dbg !4217
  %57 = load ptr, ptr %data35, align 8, !dbg !4217
  %tobool36 = icmp ne ptr %57, null, !dbg !4215
  br i1 %tobool36, label %if.then37, label %if.end40, !dbg !4218

if.then37:                                        ; preds = %cond.end
  %58 = load ptr, ptr %iterator, align 8, !dbg !4219
  %data38 = getelementptr inbounds %struct.drm_print_iterator, ptr %58, i32 0, i32 0, !dbg !4220
  %59 = load ptr, ptr %data38, align 8, !dbg !4220
  %60 = load i64, ptr %pos, align 8, !dbg !4221
  %add.ptr39 = getelementptr i8, ptr %59, i64 %60, !dbg !4222
  %61 = load ptr, ptr %str.addr, align 8, !dbg !4223
  %62 = load i64, ptr %len, align 8, !dbg !4224
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %add.ptr39, ptr align 1 %61, i64 %62, i1 false), !dbg !4225
  br label %if.end40, !dbg !4225

if.end40:                                         ; preds = %if.then37, %cond.end
  %63 = load i64, ptr %len, align 8, !dbg !4226
  %64 = load ptr, ptr %iterator, align 8, !dbg !4227
  %offset41 = getelementptr inbounds %struct.drm_print_iterator, ptr %64, i32 0, i32 3, !dbg !4228
  %65 = load i64, ptr %offset41, align 8, !dbg !4229
  %add42 = add i64 %65, %63, !dbg !4229
  store i64 %add42, ptr %offset41, align 8, !dbg !4229
  %66 = load i64, ptr %len, align 8, !dbg !4230
  %67 = load ptr, ptr %iterator, align 8, !dbg !4231
  %remain43 = getelementptr inbounds %struct.drm_print_iterator, ptr %67, i32 0, i32 2, !dbg !4232
  %68 = load i64, ptr %remain43, align 8, !dbg !4233
  %sub44 = sub i64 %68, %66, !dbg !4233
  store i64 %sub44, ptr %remain43, align 8, !dbg !4233
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !4234
  br label %if.end45

if.end45:                                         ; preds = %if.end40, %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4235
  br label %cleanup46, !dbg !4235

cleanup46:                                        ; preds = %if.end45, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !4235
  call void @llvm.lifetime.end.p0(i64 8, ptr %iterator) #15, !dbg !4235
  %cleanup.dest48 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest48, label %unreachable [
    i32 0, label %cleanup.cont49
    i32 1, label %cleanup.cont49
  ]

cleanup.cont49:                                   ; preds = %cleanup46, %cleanup46
  ret void, !dbg !4235

unreachable:                                      ; preds = %cleanup46
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4236 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_printfn_coredump(ptr noundef %p, ptr noundef %vaf) #0 align 16 !dbg !4240 {
entry:
  %p.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  %iterator = alloca ptr, align 8
  %len = alloca i64, align 8
  %buf = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %pos = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4242, metadata !DIExpression()), !dbg !4250
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !4243, metadata !DIExpression()), !dbg !4251
  call void @llvm.lifetime.start.p0(i64 8, ptr %iterator) #15, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %iterator, metadata !4244, metadata !DIExpression()), !dbg !4253
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4254
  %arg = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 2, !dbg !4255
  %1 = load ptr, ptr %arg, align 8, !dbg !4255
  store ptr %1, ptr %iterator, align 8, !dbg !4253
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !4256
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4245, metadata !DIExpression()), !dbg !4257
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15, !dbg !4258
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4246, metadata !DIExpression()), !dbg !4259
  %2 = load ptr, ptr %iterator, align 8, !dbg !4260
  %remain = getelementptr inbounds %struct.drm_print_iterator, ptr %2, i32 0, i32 2, !dbg !4262
  %3 = load i64, ptr %remain, align 8, !dbg !4262
  %tobool = icmp ne i64 %3, 0, !dbg !4260
  br i1 %tobool, label %if.end, label %if.then, !dbg !4263

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4264

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %vaf.addr, align 8, !dbg !4265
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef @.str, ptr noundef %4) #16, !dbg !4266
  %conv = sext i32 %call to i64, !dbg !4266
  store i64 %conv, ptr %len, align 8, !dbg !4267
  %5 = load ptr, ptr %iterator, align 8, !dbg !4268
  %offset = getelementptr inbounds %struct.drm_print_iterator, ptr %5, i32 0, i32 3, !dbg !4270
  %6 = load i64, ptr %offset, align 8, !dbg !4270
  %7 = load i64, ptr %len, align 8, !dbg !4271
  %add = add i64 %6, %7, !dbg !4272
  %8 = load ptr, ptr %iterator, align 8, !dbg !4273
  %start = getelementptr inbounds %struct.drm_print_iterator, ptr %8, i32 0, i32 1, !dbg !4274
  %9 = load i64, ptr %start, align 8, !dbg !4274
  %cmp = icmp ule i64 %add, %9, !dbg !4275
  br i1 %cmp, label %if.then2, label %if.end5, !dbg !4276

if.then2:                                         ; preds = %if.end
  %10 = load i64, ptr %len, align 8, !dbg !4277
  %11 = load ptr, ptr %iterator, align 8, !dbg !4279
  %offset3 = getelementptr inbounds %struct.drm_print_iterator, ptr %11, i32 0, i32 3, !dbg !4280
  %12 = load i64, ptr %offset3, align 8, !dbg !4281
  %add4 = add i64 %12, %10, !dbg !4281
  store i64 %add4, ptr %offset3, align 8, !dbg !4281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4282

if.end5:                                          ; preds = %if.end
  %13 = load ptr, ptr %iterator, align 8, !dbg !4283
  %offset6 = getelementptr inbounds %struct.drm_print_iterator, ptr %13, i32 0, i32 3, !dbg !4284
  %14 = load i64, ptr %offset6, align 8, !dbg !4284
  %15 = load ptr, ptr %iterator, align 8, !dbg !4285
  %start7 = getelementptr inbounds %struct.drm_print_iterator, ptr %15, i32 0, i32 1, !dbg !4286
  %16 = load i64, ptr %start7, align 8, !dbg !4286
  %cmp8 = icmp sge i64 %14, %16, !dbg !4287
  br i1 %cmp8, label %land.lhs.true, label %if.end26, !dbg !4288

land.lhs.true:                                    ; preds = %if.end5
  %17 = load i64, ptr %len, align 8, !dbg !4289
  %18 = load ptr, ptr %iterator, align 8, !dbg !4290
  %remain10 = getelementptr inbounds %struct.drm_print_iterator, ptr %18, i32 0, i32 2, !dbg !4291
  %19 = load i64, ptr %remain10, align 8, !dbg !4291
  %cmp11 = icmp ult i64 %17, %19, !dbg !4292
  br i1 %cmp11, label %if.then13, label %if.end26, !dbg !4293

if.then13:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #15, !dbg !4294
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !4247, metadata !DIExpression()), !dbg !4295
  %20 = load ptr, ptr %iterator, align 8, !dbg !4296
  %offset14 = getelementptr inbounds %struct.drm_print_iterator, ptr %20, i32 0, i32 3, !dbg !4297
  %21 = load i64, ptr %offset14, align 8, !dbg !4297
  %22 = load ptr, ptr %iterator, align 8, !dbg !4298
  %start15 = getelementptr inbounds %struct.drm_print_iterator, ptr %22, i32 0, i32 1, !dbg !4299
  %23 = load i64, ptr %start15, align 8, !dbg !4299
  %sub = sub i64 %21, %23, !dbg !4300
  store i64 %sub, ptr %pos, align 8, !dbg !4295
  %24 = load ptr, ptr %iterator, align 8, !dbg !4301
  %data = getelementptr inbounds %struct.drm_print_iterator, ptr %24, i32 0, i32 0, !dbg !4303
  %25 = load ptr, ptr %data, align 8, !dbg !4303
  %tobool16 = icmp ne ptr %25, null, !dbg !4301
  br i1 %tobool16, label %if.then17, label %if.end21, !dbg !4304

if.then17:                                        ; preds = %if.then13
  %26 = load ptr, ptr %iterator, align 8, !dbg !4305
  %data18 = getelementptr inbounds %struct.drm_print_iterator, ptr %26, i32 0, i32 0, !dbg !4306
  %27 = load ptr, ptr %data18, align 8, !dbg !4306
  %28 = load i64, ptr %pos, align 8, !dbg !4307
  %add.ptr = getelementptr i8, ptr %27, i64 %28, !dbg !4308
  %29 = load ptr, ptr %iterator, align 8, !dbg !4309
  %remain19 = getelementptr inbounds %struct.drm_print_iterator, ptr %29, i32 0, i32 2, !dbg !4310
  %30 = load i64, ptr %remain19, align 8, !dbg !4310
  %31 = load ptr, ptr %vaf.addr, align 8, !dbg !4311
  %call20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr, i64 noundef %30, ptr noundef @.str, ptr noundef %31) #16, !dbg !4312
  br label %if.end21, !dbg !4312

if.end21:                                         ; preds = %if.then17, %if.then13
  %32 = load i64, ptr %len, align 8, !dbg !4313
  %33 = load ptr, ptr %iterator, align 8, !dbg !4314
  %offset22 = getelementptr inbounds %struct.drm_print_iterator, ptr %33, i32 0, i32 3, !dbg !4315
  %34 = load i64, ptr %offset22, align 8, !dbg !4316
  %add23 = add i64 %34, %32, !dbg !4316
  store i64 %add23, ptr %offset22, align 8, !dbg !4316
  %35 = load i64, ptr %len, align 8, !dbg !4317
  %36 = load ptr, ptr %iterator, align 8, !dbg !4318
  %remain24 = getelementptr inbounds %struct.drm_print_iterator, ptr %36, i32 0, i32 2, !dbg !4319
  %37 = load i64, ptr %remain24, align 8, !dbg !4320
  %sub25 = sub i64 %37, %35, !dbg !4320
  store i64 %sub25, ptr %remain24, align 8, !dbg !4320
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #15, !dbg !4321
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true, %if.end5
  %38 = load i64, ptr %len, align 8, !dbg !4322
  %add27 = add i64 %38, 1, !dbg !4323
  %call28 = call noalias ptr @kmalloc(i64 noundef %add27, i32 noundef 76992) #17, !dbg !4324
  store ptr %call28, ptr %buf, align 8, !dbg !4325
  %39 = load ptr, ptr %buf, align 8, !dbg !4326
  %tobool29 = icmp ne ptr %39, null, !dbg !4326
  br i1 %tobool29, label %if.end31, label %if.then30, !dbg !4328

if.then30:                                        ; preds = %if.end26
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4329

if.end31:                                         ; preds = %if.end26
  %40 = load ptr, ptr %buf, align 8, !dbg !4330
  %41 = load i64, ptr %len, align 8, !dbg !4331
  %add32 = add i64 %41, 1, !dbg !4332
  %42 = load ptr, ptr %vaf.addr, align 8, !dbg !4333
  %call33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %40, i64 noundef %add32, ptr noundef @.str, ptr noundef %42) #16, !dbg !4334
  %43 = load ptr, ptr %p.addr, align 8, !dbg !4335
  %44 = load ptr, ptr %buf, align 8, !dbg !4336
  call void @__drm_puts_coredump(ptr noundef %43, ptr noundef %44) #16, !dbg !4337
  %45 = load ptr, ptr %buf, align 8, !dbg !4338
  call void @kfree(ptr noundef %45) #16, !dbg !4339
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4340
  br label %cleanup, !dbg !4340

cleanup:                                          ; preds = %if.end31, %if.then30, %if.end21, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15, !dbg !4340
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !4340
  call void @llvm.lifetime.end.p0(i64 8, ptr %iterator) #15, !dbg !4340
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4340

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4341 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !4345 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4349, metadata !DIExpression()), !dbg !4354
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4350, metadata !DIExpression()), !dbg !4355
  %0 = load i64, ptr %size.addr, align 8, !dbg !4356
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4357
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4358

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4359
  %tobool = icmp ne i64 %2, 0, !dbg !4359
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4360

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !4361
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4351, metadata !DIExpression()), !dbg !4362
  %3 = load i64, ptr %size.addr, align 8, !dbg !4363
  %cmp = icmp ugt i64 %3, 8192, !dbg !4365
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4366

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4367
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4368
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !4369
  store ptr %call, ptr %retval, align 8, !dbg !4370
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4370

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4371
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !4371
  store i32 %call2, ptr %index, align 4, !dbg !4372
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4373
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4374
  %9 = ptrtoint ptr %8 to i64, !dbg !4374
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !4375
  %idxprom = zext i32 %call3 to i64, !dbg !4376
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4376
  %10 = load i32, ptr %index, align 4, !dbg !4377
  %idxprom4 = zext i32 %10 to i64, !dbg !4376
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4376
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4376
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4378
  %13 = load i64, ptr %size.addr, align 8, !dbg !4379
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4380
  store ptr %call6, ptr %retval, align 8, !dbg !4381
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4381

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !4382
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4383
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4384
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !4385
  store ptr %call8, ptr %retval, align 8, !dbg !4386
  br label %return, !dbg !4386

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4387
  ret ptr %16, !dbg !4387
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4388 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_puts_seq_file(ptr noundef %p, ptr noundef %str) #0 align 16 !dbg !4391 {
entry:
  %p.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4393, metadata !DIExpression()), !dbg !4395
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4394, metadata !DIExpression()), !dbg !4396
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4397
  %arg = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 2, !dbg !4398
  %1 = load ptr, ptr %arg, align 8, !dbg !4398
  %2 = load ptr, ptr %str.addr, align 8, !dbg !4399
  call void @seq_puts(ptr noundef %1, ptr noundef %2) #16, !dbg !4400
  ret void, !dbg !4401
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4402 dso_local void @seq_puts(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_printfn_seq_file(ptr noundef %p, ptr noundef %vaf) #0 align 16 !dbg !4405 {
entry:
  %p.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4407, metadata !DIExpression()), !dbg !4409
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !4408, metadata !DIExpression()), !dbg !4410
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4411
  %arg = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 2, !dbg !4412
  %1 = load ptr, ptr %arg, align 8, !dbg !4412
  %2 = load ptr, ptr %vaf.addr, align 8, !dbg !4413
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %1, ptr noundef @.str, ptr noundef %2) #16, !dbg !4414
  ret void, !dbg !4415
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4416 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_printfn_info(ptr noundef %p, ptr noundef %vaf) #0 align 16 !dbg !4419 {
entry:
  %p.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4421, metadata !DIExpression()), !dbg !4423
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !4422, metadata !DIExpression()), !dbg !4424
  br label %do.body, !dbg !4425

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4427

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4425
  %arg = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 2, !dbg !4425
  %1 = load ptr, ptr %arg, align 8, !dbg !4425
  %2 = load ptr, ptr %vaf.addr, align 8, !dbg !4425
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef @.str.1, ptr noundef %2) #19, !dbg !4425
  ret void, !dbg !4429
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4430 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_printfn_debug(ptr noundef %p, ptr noundef %vaf) #0 align 16 !dbg !4884 {
entry:
  %p.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4886, metadata !DIExpression()), !dbg !4888
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !4887, metadata !DIExpression()), !dbg !4889
  br label %do.body, !dbg !4890

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4892

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4890
  %prefix = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 3, !dbg !4890
  %1 = load ptr, ptr %prefix, align 8, !dbg !4890
  %2 = load ptr, ptr %vaf.addr, align 8, !dbg !4890
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, ptr noundef %1, ptr noundef %2) #19, !dbg !4890
  store i32 %call, ptr %tmp, align 4, !dbg !4892
  %3 = load i32, ptr %tmp, align 4, !dbg !4890
  ret void, !dbg !4894
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !4895 dso_local i32 @_printk(ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_printfn_err(ptr noundef %p, ptr noundef %vaf) #0 align 16 !dbg !4898 {
entry:
  %p.addr = alloca ptr, align 8
  %vaf.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4900, metadata !DIExpression()), !dbg !4902
  store ptr %vaf, ptr %vaf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vaf.addr, metadata !4901, metadata !DIExpression()), !dbg !4903
  br label %do.body, !dbg !4904

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4906

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4904
  %prefix = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 3, !dbg !4904
  %1 = load ptr, ptr %prefix, align 8, !dbg !4904
  %2 = load ptr, ptr %vaf.addr, align 8, !dbg !4904
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, ptr noundef %1, ptr noundef %2) #19, !dbg !4904
  store i32 %call, ptr %tmp, align 4, !dbg !4906
  %3 = load i32, ptr %tmp, align 4, !dbg !4904
  ret void, !dbg !4908
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_puts(ptr noundef %p, ptr noundef %str) #0 align 16 !dbg !4909 {
entry:
  %p.addr = alloca ptr, align 8
  %str.addr = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4911, metadata !DIExpression()), !dbg !4913
  store ptr %str, ptr %str.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %str.addr, metadata !4912, metadata !DIExpression()), !dbg !4914
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4915
  %puts = getelementptr inbounds %struct.drm_printer, ptr %0, i32 0, i32 1, !dbg !4917
  %1 = load ptr, ptr %puts, align 8, !dbg !4917
  %tobool = icmp ne ptr %1, null, !dbg !4915
  br i1 %tobool, label %if.then, label %if.else, !dbg !4918

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4919
  %puts1 = getelementptr inbounds %struct.drm_printer, ptr %2, i32 0, i32 1, !dbg !4920
  %3 = load ptr, ptr %puts1, align 8, !dbg !4920
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4921
  %5 = load ptr, ptr %str.addr, align 8, !dbg !4922
  call void %3(ptr noundef %4, ptr noundef %5) #16, !dbg !4919
  br label %if.end, !dbg !4919

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %p.addr, align 8, !dbg !4923
  %7 = load ptr, ptr %str.addr, align 8, !dbg !4924
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %6, ptr noundef @.str.4, ptr noundef %7) #16, !dbg !4925
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !4926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_printf(ptr noundef %p, ptr noundef %f, ...) #0 align 16 !dbg !4927 {
entry:
  %p.addr = alloca ptr, align 8
  %f.addr = alloca ptr, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4931, metadata !DIExpression()), !dbg !4934
  store ptr %f, ptr %f.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %f.addr, metadata !4932, metadata !DIExpression()), !dbg !4935
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !4936
  call void @llvm.dbg.declare(metadata ptr %args, metadata !4933, metadata !DIExpression()), !dbg !4937
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4938
  call void @llvm.va_start(ptr %arraydecay), !dbg !4938
  %0 = load ptr, ptr %p.addr, align 8, !dbg !4939
  %1 = load ptr, ptr %f.addr, align 8, !dbg !4940
  call void @drm_vprintf(ptr noundef %0, ptr noundef %1, ptr noundef %args) #16, !dbg !4941
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !4942
  call void @llvm.va_end(ptr %arraydecay1), !dbg !4942
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !4943
  ret void, !dbg !4943
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @drm_vprintf(ptr noundef %p, ptr noundef %fmt, ptr noundef %va) #8 align 16 !dbg !4944 {
entry:
  %p.addr = alloca ptr, align 8
  %fmt.addr = alloca ptr, align 8
  %va.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4948, metadata !DIExpression()), !dbg !4952
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !4949, metadata !DIExpression()), !dbg !4953
  store ptr %va, ptr %va.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %va.addr, metadata !4950, metadata !DIExpression()), !dbg !4954
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #15, !dbg !4955
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !4951, metadata !DIExpression()), !dbg !4956
  %fmt1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !4957
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !4958
  store ptr %0, ptr %fmt1, align 8, !dbg !4957
  %va2 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !4957
  %1 = load ptr, ptr %va.addr, align 8, !dbg !4959
  store ptr %1, ptr %va2, align 8, !dbg !4957
  %2 = load ptr, ptr %p.addr, align 8, !dbg !4960
  %printfn = getelementptr inbounds %struct.drm_printer, ptr %2, i32 0, i32 0, !dbg !4961
  %3 = load ptr, ptr %printfn, align 8, !dbg !4961
  %4 = load ptr, ptr %p.addr, align 8, !dbg !4962
  call void %3(ptr noundef %4, ptr noundef %vaf) #16, !dbg !4960
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #15, !dbg !4963
  ret void, !dbg !4963
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_print_bits(ptr noundef %p, i64 noundef %value, ptr noundef %bits, i32 noundef %nbits) #0 align 16 !dbg !4964 {
entry:
  %p.addr = alloca ptr, align 8
  %value.addr = alloca i64, align 8
  %bits.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  %first = alloca i8, align 1
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on33 = alloca i32, align 4
  %__flags51 = alloca i32, align 4
  %tmp64 = alloca i64, align 8
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4970, metadata !DIExpression()), !dbg !4991
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !4971, metadata !DIExpression()), !dbg !4992
  store ptr %bits, ptr %bits.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4972, metadata !DIExpression()), !dbg !4993
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4973, metadata !DIExpression()), !dbg !4994
  call void @llvm.lifetime.start.p0(i64 1, ptr %first) #15, !dbg !4995
  call void @llvm.dbg.declare(metadata ptr %first, metadata !4974, metadata !DIExpression()), !dbg !4996
  store i8 1, ptr %first, align 1, !dbg !4996
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !4997
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4975, metadata !DIExpression()), !dbg !4998
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !4999
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4976, metadata !DIExpression()), !dbg !4999
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4999
  %conv = zext i32 %0 to i64, !dbg !4999
  %cmp = icmp ugt i64 %conv, 64, !dbg !4999
  %lnot = xor i1 %cmp, true, !dbg !4999
  %lnot2 = xor i1 %lnot, true, !dbg !4999
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4999
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !4999
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !5000
  %tobool = icmp ne i32 %1, 0, !dbg !5000
  %lnot3 = xor i1 %tobool, true, !dbg !5000
  %lnot5 = xor i1 %lnot3, true, !dbg !5000
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !5000
  %conv7 = sext i32 %lnot.ext6 to i64, !dbg !5000
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !5000
  %tobool8 = icmp ne i64 %expval, 0, !dbg !5000
  br i1 %tobool8, label %if.then, label %if.end, !dbg !4999

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5000

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !5001
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4979, metadata !DIExpression()), !dbg !5001
  store i32 2307, ptr %__flags, align 4, !dbg !5001
  br label %do.body9, !dbg !5001

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !5002

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !5002

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !5001

do.body10:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !5004
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 249, i32 %2, i64 12) #15, !dbg !5004, !srcloc !5006
  br label %do.cond11, !dbg !5004

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !5004

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !5001

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !5007

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !5007

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !5000
  br label %do.cond16, !dbg !5001

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !5001

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !5001

if.end:                                           ; preds = %do.end17, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !4999
  %tobool18 = icmp ne i32 %3, 0, !dbg !4999
  %lnot19 = xor i1 %tobool18, true, !dbg !4999
  %lnot21 = xor i1 %lnot19, true, !dbg !4999
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !4999
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !4999
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !4999
  store i64 %expval24, ptr %tmp, align 8, !dbg !5000
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !5009
  %4 = load i64, ptr %tmp, align 8, !dbg !4999
  %tobool25 = icmp ne i64 %4, 0, !dbg !5009
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !5010

if.then26:                                        ; preds = %if.end
  store i32 64, ptr %nbits.addr, align 4, !dbg !5011
  br label %if.end27, !dbg !5012

if.end27:                                         ; preds = %if.then26, %if.end
  store i32 0, ptr %i, align 4, !dbg !5013
  br label %for.cond, !dbg !5013

for.cond:                                         ; preds = %for.inc, %if.end27
  %5 = load i32, ptr %nbits.addr, align 4, !dbg !5014
  %conv28 = zext i32 %5 to i64, !dbg !5014
  %6 = load i32, ptr %i, align 4, !dbg !5014
  %conv29 = zext i32 %6 to i64, !dbg !5014
  %call = call i64 @find_next_bit(ptr noundef %value.addr, i64 noundef %conv28, i64 noundef %conv29) #16, !dbg !5014
  %conv30 = trunc i64 %call to i32, !dbg !5014
  store i32 %conv30, ptr %i, align 4, !dbg !5014
  %7 = load i32, ptr %i, align 4, !dbg !5014
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !5014
  %cmp31 = icmp ult i32 %7, %8, !dbg !5014
  br i1 %cmp31, label %for.body, label %for.end, !dbg !5013

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on33) #15, !dbg !5015
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on33, metadata !4982, metadata !DIExpression()), !dbg !5015
  %9 = load ptr, ptr %bits.addr, align 8, !dbg !5015
  %10 = load i32, ptr %i, align 4, !dbg !5015
  %idxprom = zext i32 %10 to i64, !dbg !5015
  %arrayidx = getelementptr ptr, ptr %9, i64 %idxprom, !dbg !5015
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !5015
  %tobool34 = icmp ne ptr %11, null, !dbg !5015
  %lnot35 = xor i1 %tobool34, true, !dbg !5015
  %lnot37 = xor i1 %lnot35, true, !dbg !5015
  %lnot39 = xor i1 %lnot37, true, !dbg !5015
  %lnot.ext40 = zext i1 %lnot39 to i32, !dbg !5015
  store i32 %lnot.ext40, ptr %__ret_warn_on33, align 4, !dbg !5015
  %12 = load i32, ptr %__ret_warn_on33, align 4, !dbg !5016
  %tobool41 = icmp ne i32 %12, 0, !dbg !5016
  %lnot42 = xor i1 %tobool41, true, !dbg !5016
  %lnot44 = xor i1 %lnot42, true, !dbg !5016
  %lnot.ext45 = zext i1 %lnot44 to i32, !dbg !5016
  %conv46 = sext i32 %lnot.ext45 to i64, !dbg !5016
  %expval47 = call i64 @llvm.expect.i64(i64 %conv46, i64 0), !dbg !5016
  %tobool48 = icmp ne i64 %expval47, 0, !dbg !5016
  br i1 %tobool48, label %if.then49, label %if.end63, !dbg !5015

if.then49:                                        ; preds = %for.body
  br label %do.body50, !dbg !5016

do.body50:                                        ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags51) #15, !dbg !5017
  call void @llvm.dbg.declare(metadata ptr %__flags51, metadata !4988, metadata !DIExpression()), !dbg !5017
  store i32 2307, ptr %__flags51, align 4, !dbg !5017
  br label %do.body52, !dbg !5017

do.body52:                                        ; preds = %do.body50
  br label %do.cond53, !dbg !5018

do.cond53:                                        ; preds = %do.body52
  br label %do.end54, !dbg !5018

do.end54:                                         ; preds = %do.cond53
  br label %do.body55, !dbg !5017

do.body55:                                        ; preds = %do.end54
  %13 = load i32, ptr %__flags51, align 4, !dbg !5020
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 253, i32 %13, i64 12) #15, !dbg !5020, !srcloc !5022
  br label %do.cond56, !dbg !5020

do.cond56:                                        ; preds = %do.body55
  br label %do.end57, !dbg !5020

do.end57:                                         ; preds = %do.cond56
  br label %do.body58, !dbg !5017

do.body58:                                        ; preds = %do.end57
  br label %do.cond59, !dbg !5023

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !5023

do.end60:                                         ; preds = %do.cond59
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags51) #15, !dbg !5016
  br label %do.cond61, !dbg !5017

do.cond61:                                        ; preds = %do.end60
  br label %do.end62, !dbg !5017

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !5017

if.end63:                                         ; preds = %do.end62, %for.body
  %14 = load i32, ptr %__ret_warn_on33, align 4, !dbg !5015
  %tobool65 = icmp ne i32 %14, 0, !dbg !5015
  %lnot66 = xor i1 %tobool65, true, !dbg !5015
  %lnot68 = xor i1 %lnot66, true, !dbg !5015
  %lnot.ext69 = zext i1 %lnot68 to i32, !dbg !5015
  %conv70 = sext i32 %lnot.ext69 to i64, !dbg !5015
  %expval71 = call i64 @llvm.expect.i64(i64 %conv70, i64 0), !dbg !5015
  store i64 %expval71, ptr %tmp64, align 8, !dbg !5016
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on33) #15, !dbg !5025
  %15 = load i64, ptr %tmp64, align 8, !dbg !5015
  %tobool72 = icmp ne i64 %15, 0, !dbg !5025
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !5026

if.then73:                                        ; preds = %if.end63
  br label %for.inc, !dbg !5027

if.end74:                                         ; preds = %if.end63
  %16 = load ptr, ptr %p.addr, align 8, !dbg !5028
  %17 = load i8, ptr %first, align 1, !dbg !5029, !range !5030, !noundef !535
  %tobool75 = trunc i8 %17 to i1, !dbg !5029
  %18 = zext i1 %tobool75 to i64, !dbg !5029
  %cond = select i1 %tobool75, ptr @.str.7, ptr @.str.8, !dbg !5029
  %19 = load ptr, ptr %bits.addr, align 8, !dbg !5031
  %20 = load i32, ptr %i, align 4, !dbg !5032
  %idxprom77 = zext i32 %20 to i64, !dbg !5031
  %arrayidx78 = getelementptr ptr, ptr %19, i64 %idxprom77, !dbg !5031
  %21 = load ptr, ptr %arrayidx78, align 8, !dbg !5031
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %16, ptr noundef @.str.6, ptr noundef %cond, ptr noundef %21) #16, !dbg !5033
  store i8 0, ptr %first, align 1, !dbg !5034
  br label %for.inc, !dbg !5035

for.inc:                                          ; preds = %if.end74, %if.then73
  %22 = load i32, ptr %i, align 4, !dbg !5014
  %inc = add i32 %22, 1, !dbg !5014
  store i32 %inc, ptr %i, align 4, !dbg !5014
  br label %for.cond, !dbg !5014, !llvm.loop !5036

for.end:                                          ; preds = %for.cond
  %23 = load i8, ptr %first, align 1, !dbg !5040, !range !5030, !noundef !535
  %tobool79 = trunc i8 %23 to i1, !dbg !5040
  br i1 %tobool79, label %if.then80, label %if.end81, !dbg !5042

if.then80:                                        ; preds = %for.end
  %24 = load ptr, ptr %p.addr, align 8, !dbg !5043
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %24, ptr noundef @.str.9) #16, !dbg !5044
  br label %if.end81, !dbg !5044

if.end81:                                         ; preds = %if.then80, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5045
  call void @llvm.lifetime.end.p0(i64 1, ptr %first) #15, !dbg !5045
  ret void, !dbg !5045
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #8 align 16 !dbg !5046 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5053, metadata !DIExpression()), !dbg !5059
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5054, metadata !DIExpression()), !dbg !5060
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !5055, metadata !DIExpression()), !dbg !5061
  %0 = load i64, ptr %size.addr, align 8, !dbg !5062
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !5062
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !5062

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !5062
  %cmp = icmp ule i64 %2, 64, !dbg !5062
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !5062

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !5062
  %cmp2 = icmp ugt i64 %3, 0, !dbg !5062
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !5063

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #15, !dbg !5064
  call void @llvm.dbg.declare(metadata ptr %val, metadata !5056, metadata !DIExpression()), !dbg !5065
  %4 = load i64, ptr %offset.addr, align 8, !dbg !5066
  %5 = load i64, ptr %size.addr, align 8, !dbg !5066
  %cmp3 = icmp uge i64 %4, %5, !dbg !5066
  %lnot = xor i1 %cmp3, true, !dbg !5066
  %lnot4 = xor i1 %lnot, true, !dbg !5066
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !5066
  %conv = sext i32 %lnot.ext to i64, !dbg !5066
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5066
  %tobool = icmp ne i64 %expval, 0, !dbg !5066
  br i1 %tobool, label %if.then5, label %if.end, !dbg !5068

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !5069
  store i64 %6, ptr %retval, align 8, !dbg !5070
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5070

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !5071
  %8 = load i64, ptr %7, align 8, !dbg !5072
  %9 = load i64, ptr %offset.addr, align 8, !dbg !5073
  %shl = shl i64 1, %9, !dbg !5073
  %sub = sub i64 -1, %shl, !dbg !5073
  %add = add i64 %sub, 1, !dbg !5073
  %10 = load i64, ptr %size.addr, align 8, !dbg !5073
  %sub6 = sub i64 %10, 1, !dbg !5073
  %sub7 = sub i64 63, %sub6, !dbg !5073
  %shr = lshr i64 -1, %sub7, !dbg !5073
  %and = and i64 %add, %shr, !dbg !5073
  %add8 = add i64 0, %and, !dbg !5073
  %and9 = and i64 %8, %add8, !dbg !5074
  store i64 %and9, ptr %val, align 8, !dbg !5075
  %11 = load i64, ptr %val, align 8, !dbg !5076
  %tobool10 = icmp ne i64 %11, 0, !dbg !5076
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !5076

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !5077
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !5077
  br i1 %13, label %cond.true11, label %cond.false, !dbg !5077

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !5077
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !5077
  %cast = trunc i64 %15 to i32, !dbg !5077
  %conv12 = sext i32 %cast to i64, !dbg !5077
  br label %cond.end, !dbg !5077

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !5077
  %call = call i64 @variable__ffs(i64 noundef %16) #16, !dbg !5077
  br label %cond.end, !dbg !5077

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !5077
  br label %cond.end14, !dbg !5076

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !5078
  br label %cond.end14, !dbg !5076

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !5076
  store i64 %cond15, ptr %retval, align 8, !dbg !5079
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5079

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #15, !dbg !5080
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !5081
  %19 = load i64, ptr %size.addr, align 8, !dbg !5082
  %20 = load i64, ptr %offset.addr, align 8, !dbg !5083
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #16, !dbg !5084
  store i64 %call17, ptr %retval, align 8, !dbg !5085
  br label %return, !dbg !5085

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !5086
  ret i64 %21, !dbg !5086
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_dev_printk(ptr noundef %dev, ptr noundef %level, ptr noundef %format, ...) #0 align 16 !dbg !5087 {
entry:
  %dev.addr = alloca ptr, align 8
  %level.addr = alloca ptr, align 8
  %format.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5091, metadata !DIExpression()), !dbg !5096
  store ptr %level, ptr %level.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %level.addr, metadata !5092, metadata !DIExpression()), !dbg !5097
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !5093, metadata !DIExpression()), !dbg !5098
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #15, !dbg !5099
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !5094, metadata !DIExpression()), !dbg !5100
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !5101
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5095, metadata !DIExpression()), !dbg !5102
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5103
  call void @llvm.va_start(ptr %arraydecay), !dbg !5103
  %0 = load ptr, ptr %format.addr, align 8, !dbg !5104
  %fmt = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !5105
  store ptr %0, ptr %fmt, align 8, !dbg !5106
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !5107
  store ptr %args, ptr %va, align 8, !dbg !5108
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !5109
  %tobool = icmp ne ptr %1, null, !dbg !5109
  br i1 %tobool, label %if.then, label %if.else, !dbg !5111

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !5112

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !5114

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5114

do.end:                                           ; preds = %do.cond
  %2 = load ptr, ptr %level.addr, align 8, !dbg !5112
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5112
  %4 = call ptr @llvm.returnaddress(i32 0), !dbg !5112
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef %2, ptr noundef %3, ptr noundef @.str.10, ptr noundef %4, ptr noundef %vaf) #19, !dbg !5112
  br label %if.end, !dbg !5116

if.else:                                          ; preds = %entry
  br label %do.body1, !dbg !5117

do.body1:                                         ; preds = %if.else
  br label %do.cond2, !dbg !5119

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !5119

do.end3:                                          ; preds = %do.cond2
  %5 = load ptr, ptr %level.addr, align 8, !dbg !5117
  %6 = call ptr @llvm.returnaddress(i32 0), !dbg !5117
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.11, ptr noundef %5, ptr noundef %6, ptr noundef %vaf) #19, !dbg !5117
  store i32 %call, ptr %tmp, align 4, !dbg !5119
  %7 = load i32, ptr %tmp, align 4, !dbg !5117
  br label %if.end

if.end:                                           ; preds = %do.end3, %do.end
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5121
  call void @llvm.va_end(ptr %arraydecay4), !dbg !5121
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !5122
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #15, !dbg !5122
  ret void, !dbg !5122
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !5123 dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_dev_dbg(ptr noundef %desc, ptr noundef %dev, i32 noundef %category, ptr noundef %format, ...) #0 align 16 !dbg !5126 {
entry:
  %desc.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %category.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5163, metadata !DIExpression()), !dbg !5169
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !5164, metadata !DIExpression()), !dbg !5170
  store i32 %category, ptr %category.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %category.addr, metadata !5165, metadata !DIExpression()), !dbg !5171
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !5166, metadata !DIExpression()), !dbg !5172
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #15, !dbg !5173
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !5167, metadata !DIExpression()), !dbg !5174
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !5175
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5168, metadata !DIExpression()), !dbg !5176
  %0 = load i32, ptr %category.addr, align 4, !dbg !5177
  %call = call zeroext i1 @drm_debug_enabled_raw(i32 noundef %0) #16, !dbg !5177
  br i1 %call, label %if.end, label %if.then, !dbg !5179

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5180

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5181
  call void @llvm.va_start(ptr %arraydecay), !dbg !5181
  %1 = load ptr, ptr %format.addr, align 8, !dbg !5182
  %fmt = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !5183
  store ptr %1, ptr %fmt, align 8, !dbg !5184
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !5185
  store ptr %args, ptr %va, align 8, !dbg !5186
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !5187
  %tobool = icmp ne ptr %2, null, !dbg !5187
  br i1 %tobool, label %if.then1, label %if.else, !dbg !5189

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !5190

do.body:                                          ; preds = %if.then1
  br label %do.cond, !dbg !5192

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5192

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !5190
  %4 = call ptr @llvm.returnaddress(i32 0), !dbg !5190
  call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef @.str.12, ptr noundef %3, ptr noundef @.str.10, ptr noundef %4, ptr noundef %vaf) #19, !dbg !5190
  br label %if.end6, !dbg !5194

if.else:                                          ; preds = %if.end
  br label %do.body2, !dbg !5195

do.body2:                                         ; preds = %if.else
  br label %do.cond3, !dbg !5197

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !5197

do.end4:                                          ; preds = %do.cond3
  %5 = call ptr @llvm.returnaddress(i32 0), !dbg !5195
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %5, ptr noundef %vaf) #19, !dbg !5195
  store i32 %call5, ptr %tmp, align 4, !dbg !5197
  %6 = load i32, ptr %tmp, align 4, !dbg !5195
  br label %if.end6

if.end6:                                          ; preds = %do.end4, %do.end
  %arraydecay7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5199
  call void @llvm.va_end(ptr %arraydecay7), !dbg !5199
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5200
  br label %cleanup, !dbg !5200

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !5200
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #15, !dbg !5200
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5200

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @drm_debug_enabled_raw(i32 noundef %category) #8 align 16 !dbg !5201 {
entry:
  %category.addr = alloca i32, align 4
  store i32 %category, ptr %category.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %category.addr, metadata !5205, metadata !DIExpression()), !dbg !5206
  %0 = load i64, ptr @__drm_debug, align 8, !dbg !5207
  %1 = load i32, ptr %category.addr, align 4, !dbg !5207
  %sh_prom = zext i32 %1 to i64, !dbg !5207
  %shl = shl i64 1, %sh_prom, !dbg !5207
  %and = and i64 %0, %shl, !dbg !5207
  %tobool = icmp ne i64 %and, 0, !dbg !5207
  %lnot = xor i1 %tobool, true, !dbg !5207
  %lnot1 = xor i1 %lnot, true, !dbg !5207
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5207
  %conv = sext i32 %lnot.ext to i64, !dbg !5207
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !5207
  %tobool2 = icmp ne i64 %expval, 0, !dbg !5207
  ret i1 %tobool2, !dbg !5208
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @___drm_dbg(ptr noundef %desc, i32 noundef %category, ptr noundef %format, ...) #0 align 16 !dbg !5209 {
entry:
  %desc.addr = alloca ptr, align 8
  %category.addr = alloca i32, align 4
  %format.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %desc, ptr %desc.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc.addr, metadata !5213, metadata !DIExpression()), !dbg !5218
  store i32 %category, ptr %category.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %category.addr, metadata !5214, metadata !DIExpression()), !dbg !5219
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !5215, metadata !DIExpression()), !dbg !5220
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #15, !dbg !5221
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !5216, metadata !DIExpression()), !dbg !5222
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !5223
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5217, metadata !DIExpression()), !dbg !5224
  %0 = load i32, ptr %category.addr, align 4, !dbg !5225
  %call = call zeroext i1 @drm_debug_enabled_raw(i32 noundef %0) #16, !dbg !5225
  br i1 %call, label %if.end, label %if.then, !dbg !5227

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !5228

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5229
  call void @llvm.va_start(ptr %arraydecay), !dbg !5229
  %1 = load ptr, ptr %format.addr, align 8, !dbg !5230
  %fmt = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !5231
  store ptr %1, ptr %fmt, align 8, !dbg !5232
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !5233
  store ptr %args, ptr %va, align 8, !dbg !5234
  br label %do.body, !dbg !5235

do.body:                                          ; preds = %if.end
  br label %do.cond, !dbg !5237

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5237

do.end:                                           ; preds = %do.cond
  %2 = call ptr @llvm.returnaddress(i32 0), !dbg !5235
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef @.str.13, ptr noundef %2, ptr noundef %vaf) #19, !dbg !5235
  store i32 %call1, ptr %tmp, align 4, !dbg !5237
  %3 = load i32, ptr %tmp, align 4, !dbg !5235
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5239
  call void @llvm.va_end(ptr %arraydecay2), !dbg !5239
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !5240
  br label %cleanup, !dbg !5240

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !5240
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #15, !dbg !5240
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !5240

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__drm_err(ptr noundef %format, ...) #0 align 16 !dbg !5241 {
entry:
  %format.addr = alloca ptr, align 8
  %vaf = alloca %struct.va_format, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %tmp = alloca i32, align 4
  store ptr %format, ptr %format.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %format.addr, metadata !5245, metadata !DIExpression()), !dbg !5248
  call void @llvm.lifetime.start.p0(i64 16, ptr %vaf) #15, !dbg !5249
  call void @llvm.dbg.declare(metadata ptr %vaf, metadata !5246, metadata !DIExpression()), !dbg !5250
  call void @llvm.lifetime.start.p0(i64 24, ptr %args) #15, !dbg !5251
  call void @llvm.dbg.declare(metadata ptr %args, metadata !5247, metadata !DIExpression()), !dbg !5252
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5253
  call void @llvm.va_start(ptr %arraydecay), !dbg !5253
  %0 = load ptr, ptr %format.addr, align 8, !dbg !5254
  %fmt = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 0, !dbg !5255
  store ptr %0, ptr %fmt, align 8, !dbg !5256
  %va = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1, !dbg !5257
  store ptr %args, ptr %va, align 8, !dbg !5258
  br label %do.body, !dbg !5259

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !5261

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !5261

do.end:                                           ; preds = %do.cond
  %1 = call ptr @llvm.returnaddress(i32 0), !dbg !5259
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.14, ptr noundef %1, ptr noundef %vaf) #19, !dbg !5259
  store i32 %call, ptr %tmp, align 4, !dbg !5261
  %2 = load i32, ptr %tmp, align 4, !dbg !5259
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %args, i64 0, i64 0, !dbg !5263
  call void @llvm.va_end(ptr %arraydecay1), !dbg !5263
  call void @llvm.lifetime.end.p0(i64 24, ptr %args) #15, !dbg !5264
  call void @llvm.lifetime.end.p0(i64 16, ptr %vaf) #15, !dbg !5264
  ret void, !dbg !5264
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @drm_print_regset32(ptr noundef %p, ptr noundef %regset) #0 align 16 !dbg !5265 {
entry:
  %p.addr = alloca ptr, align 8
  %regset.addr = alloca ptr, align 8
  %namelen = alloca i32, align 4
  %i = alloca i32, align 4
  %__UNIQUE_ID___x287 = alloca i32, align 4
  %__UNIQUE_ID___y288 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !5283, metadata !DIExpression()), !dbg !5292
  store ptr %regset, ptr %regset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %regset.addr, metadata !5284, metadata !DIExpression()), !dbg !5293
  call void @llvm.lifetime.start.p0(i64 4, ptr %namelen) #15, !dbg !5294
  call void @llvm.dbg.declare(metadata ptr %namelen, metadata !5285, metadata !DIExpression()), !dbg !5295
  store i32 0, ptr %namelen, align 4, !dbg !5295
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !5296
  call void @llvm.dbg.declare(metadata ptr %i, metadata !5286, metadata !DIExpression()), !dbg !5297
  store i32 0, ptr %i, align 4, !dbg !5298
  br label %for.cond, !dbg !5299

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !5300
  %1 = load ptr, ptr %regset.addr, align 8, !dbg !5301
  %nregs = getelementptr inbounds %struct.debugfs_regset32, ptr %1, i32 0, i32 1, !dbg !5302
  %2 = load i32, ptr %nregs, align 8, !dbg !5302
  %cmp = icmp slt i32 %0, %2, !dbg !5303
  br i1 %cmp, label %for.body, label %for.end, !dbg !5304

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x287) #15, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x287, metadata !5287, metadata !DIExpression()), !dbg !5305
  %3 = load i32, ptr %namelen, align 4, !dbg !5305
  store i32 %3, ptr %__UNIQUE_ID___x287, align 4, !dbg !5305
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y288) #15, !dbg !5305
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y288, metadata !5291, metadata !DIExpression()), !dbg !5305
  %4 = load ptr, ptr %regset.addr, align 8, !dbg !5305
  %regs = getelementptr inbounds %struct.debugfs_regset32, ptr %4, i32 0, i32 0, !dbg !5305
  %5 = load ptr, ptr %regs, align 8, !dbg !5305
  %6 = load i32, ptr %i, align 4, !dbg !5305
  %idxprom = sext i32 %6 to i64, !dbg !5305
  %arrayidx = getelementptr %struct.debugfs_reg32, ptr %5, i64 %idxprom, !dbg !5305
  %name = getelementptr inbounds %struct.debugfs_reg32, ptr %arrayidx, i32 0, i32 0, !dbg !5305
  %7 = load ptr, ptr %name, align 8, !dbg !5305
  %call = call i64 @strlen(ptr noundef %7) #16, !dbg !5305
  %conv = trunc i64 %call to i32, !dbg !5305
  store i32 %conv, ptr %__UNIQUE_ID___y288, align 4, !dbg !5305
  %8 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !5305
  %9 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !5305
  %cmp1 = icmp sgt i32 %8, %9, !dbg !5305
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !5305

cond.true:                                        ; preds = %for.body
  %10 = load i32, ptr %__UNIQUE_ID___x287, align 4, !dbg !5305
  br label %cond.end, !dbg !5305

cond.false:                                       ; preds = %for.body
  %11 = load i32, ptr %__UNIQUE_ID___y288, align 4, !dbg !5305
  br label %cond.end, !dbg !5305

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !5305
  store i32 %cond, ptr %tmp, align 4, !dbg !5305
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y288) #15, !dbg !5306
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x287) #15, !dbg !5306
  %12 = load i32, ptr %tmp, align 4, !dbg !5305
  store i32 %12, ptr %namelen, align 4, !dbg !5307
  br label %for.inc, !dbg !5308

for.inc:                                          ; preds = %cond.end
  %13 = load i32, ptr %i, align 4, !dbg !5309
  %inc = add i32 %13, 1, !dbg !5309
  store i32 %inc, ptr %i, align 4, !dbg !5309
  br label %for.cond, !dbg !5310, !llvm.loop !5311

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !dbg !5313
  br label %for.cond3, !dbg !5315

for.cond3:                                        ; preds = %for.inc16, %for.end
  %14 = load i32, ptr %i, align 4, !dbg !5316
  %15 = load ptr, ptr %regset.addr, align 8, !dbg !5318
  %nregs4 = getelementptr inbounds %struct.debugfs_regset32, ptr %15, i32 0, i32 1, !dbg !5319
  %16 = load i32, ptr %nregs4, align 8, !dbg !5319
  %cmp5 = icmp slt i32 %14, %16, !dbg !5320
  br i1 %cmp5, label %for.body7, label %for.end18, !dbg !5321

for.body7:                                        ; preds = %for.cond3
  %17 = load ptr, ptr %p.addr, align 8, !dbg !5322
  %18 = load i32, ptr %namelen, align 4, !dbg !5324
  %19 = load ptr, ptr %regset.addr, align 8, !dbg !5325
  %regs8 = getelementptr inbounds %struct.debugfs_regset32, ptr %19, i32 0, i32 0, !dbg !5326
  %20 = load ptr, ptr %regs8, align 8, !dbg !5326
  %21 = load i32, ptr %i, align 4, !dbg !5327
  %idxprom9 = sext i32 %21 to i64, !dbg !5325
  %arrayidx10 = getelementptr %struct.debugfs_reg32, ptr %20, i64 %idxprom9, !dbg !5325
  %name11 = getelementptr inbounds %struct.debugfs_reg32, ptr %arrayidx10, i32 0, i32 0, !dbg !5328
  %22 = load ptr, ptr %name11, align 8, !dbg !5328
  %23 = load ptr, ptr %regset.addr, align 8, !dbg !5329
  %base = getelementptr inbounds %struct.debugfs_regset32, ptr %23, i32 0, i32 2, !dbg !5330
  %24 = load ptr, ptr %base, align 8, !dbg !5330
  %25 = load ptr, ptr %regset.addr, align 8, !dbg !5331
  %regs12 = getelementptr inbounds %struct.debugfs_regset32, ptr %25, i32 0, i32 0, !dbg !5332
  %26 = load ptr, ptr %regs12, align 8, !dbg !5332
  %27 = load i32, ptr %i, align 4, !dbg !5333
  %idxprom13 = sext i32 %27 to i64, !dbg !5331
  %arrayidx14 = getelementptr %struct.debugfs_reg32, ptr %26, i64 %idxprom13, !dbg !5331
  %offset = getelementptr inbounds %struct.debugfs_reg32, ptr %arrayidx14, i32 0, i32 1, !dbg !5334
  %28 = load i64, ptr %offset, align 8, !dbg !5334
  %add.ptr = getelementptr i8, ptr %24, i64 %28, !dbg !5335
  %call15 = call i32 @readl(ptr noundef %add.ptr) #16, !dbg !5336
  call void (ptr, ptr, ...) @drm_printf(ptr noundef %17, ptr noundef @.str.15, i32 noundef %18, ptr noundef %22, i32 noundef %call15) #16, !dbg !5337
  br label %for.inc16, !dbg !5338

for.inc16:                                        ; preds = %for.body7
  %29 = load i32, ptr %i, align 4, !dbg !5339
  %inc17 = add i32 %29, 1, !dbg !5339
  store i32 %inc17, ptr %i, align 4, !dbg !5339
  br label %for.cond3, !dbg !5340, !llvm.loop !5341

for.end18:                                        ; preds = %for.cond3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !5343
  call void @llvm.lifetime.end.p0(i64 4, ptr %namelen) #15, !dbg !5343
  ret void, !dbg !5343
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @readl(ptr noundef %addr) #8 align 16 !dbg !5344 {
entry:
  %addr.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !5352, metadata !DIExpression()), !dbg !5354
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !5353, metadata !DIExpression()), !dbg !5354
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !5354
  %1 = call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %0) #15, !dbg !5354, !srcloc !5355
  store i32 %1, ptr %ret, align 4, !dbg !5354
  %2 = load i32, ptr %ret, align 4, !dbg !5354
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !5354
  ret i32 %2, !dbg !5354
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5356 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #12 align 16 !dbg !5357 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !5361, metadata !DIExpression()), !dbg !5363
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !5362, metadata !DIExpression()), !dbg !5364
  %0 = load i64, ptr %size.addr, align 8, !dbg !5365
  %tobool = icmp ne i64 %0, 0, !dbg !5365
  br i1 %tobool, label %if.end, label %if.then, !dbg !5367

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5368
  br label %return, !dbg !5368

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !5369
  %cmp = icmp ule i64 %1, 8, !dbg !5371
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !5372

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !5373
  br label %return, !dbg !5373

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !5374
  %cmp3 = icmp ugt i64 %2, 64, !dbg !5376
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !5377

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !5378
  %cmp4 = icmp ule i64 %3, 96, !dbg !5379
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !5380

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !5381
  br label %return, !dbg !5381

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !5382
  %cmp7 = icmp ugt i64 %4, 128, !dbg !5384
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !5385

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !5386
  %cmp9 = icmp ule i64 %5, 192, !dbg !5387
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !5388

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !5389
  br label %return, !dbg !5389

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !5390
  %cmp12 = icmp ule i64 %6, 8, !dbg !5392
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !5393

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !5394
  br label %return, !dbg !5394

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !5395
  %cmp15 = icmp ule i64 %7, 16, !dbg !5397
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !5398

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !5399
  br label %return, !dbg !5399

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !5400
  %cmp18 = icmp ule i64 %8, 32, !dbg !5402
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !5403

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !5404
  br label %return, !dbg !5404

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !5405
  %cmp21 = icmp ule i64 %9, 64, !dbg !5407
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !5408

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !5409
  br label %return, !dbg !5409

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !5410
  %cmp24 = icmp ule i64 %10, 128, !dbg !5412
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !5413

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !5414
  br label %return, !dbg !5414

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !5415
  %cmp27 = icmp ule i64 %11, 256, !dbg !5417
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !5418

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !5419
  br label %return, !dbg !5419

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !5420
  %cmp30 = icmp ule i64 %12, 512, !dbg !5422
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !5423

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !5424
  br label %return, !dbg !5424

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !5425
  %cmp33 = icmp ule i64 %13, 1024, !dbg !5427
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !5428

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !5429
  br label %return, !dbg !5429

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !5430
  %cmp36 = icmp ule i64 %14, 2048, !dbg !5432
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !5433

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !5434
  br label %return, !dbg !5434

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !5435
  %cmp39 = icmp ule i64 %15, 4096, !dbg !5437
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !5438

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !5439
  br label %return, !dbg !5439

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !5440
  %cmp42 = icmp ule i64 %16, 8192, !dbg !5442
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !5443

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !5444
  br label %return, !dbg !5444

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !5445
  %cmp45 = icmp ule i64 %17, 16384, !dbg !5447
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !5448

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !5449
  br label %return, !dbg !5449

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !5450
  %cmp48 = icmp ule i64 %18, 32768, !dbg !5452
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !5453

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !5454
  br label %return, !dbg !5454

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !5455
  %cmp51 = icmp ule i64 %19, 65536, !dbg !5457
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !5458

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !5459
  br label %return, !dbg !5459

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !5460
  %cmp54 = icmp ule i64 %20, 131072, !dbg !5462
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !5463

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !5464
  br label %return, !dbg !5464

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !5465
  %cmp57 = icmp ule i64 %21, 262144, !dbg !5467
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !5468

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !5469
  br label %return, !dbg !5469

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !5470
  %cmp60 = icmp ule i64 %22, 524288, !dbg !5472
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !5473

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !5474
  br label %return, !dbg !5474

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !5475
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !5477
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !5478

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !5479
  br label %return, !dbg !5479

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !5480
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !5482
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !5483

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !5484
  br label %return, !dbg !5484

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !5485, !range !5030, !noundef !535
  %tobool69 = trunc i8 %25 to i1, !dbg !5485
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !5487

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !5488

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !5489, !srcloc !5492
  unreachable, !dbg !5489

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !5493

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !5494

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !5495

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !5497

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !5495

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 480, i32 0, i64 12) #15, !dbg !5499, !srcloc !5501
  br label %do.end75, !dbg !5499

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !5495

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !5502
  br label %return, !dbg !5502

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !5503
  ret i32 %26, !dbg !5503
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !5504 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #12 align 16 !dbg !5510 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !5514, metadata !DIExpression()), !dbg !5516
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !5515, metadata !DIExpression()), !dbg !5517
  %0 = load i32, ptr %flags.addr, align 4, !dbg !5518
  %and = and i32 %0, 17, !dbg !5518
  %cmp = icmp eq i32 %and, 0, !dbg !5518
  %lnot = xor i1 %cmp, true, !dbg !5518
  %lnot1 = xor i1 %lnot, true, !dbg !5518
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !5518
  %conv = sext i32 %lnot.ext to i64, !dbg !5518
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !5518
  %tobool = icmp ne i64 %expval, 0, !dbg !5518
  br i1 %tobool, label %if.then, label %if.end, !dbg !5520

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !5521
  br label %return, !dbg !5521

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !5522
  %and2 = and i32 %1, 1, !dbg !5524
  %tobool3 = icmp ne i32 %and2, 0, !dbg !5524
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !5525

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !5526
  br label %return, !dbg !5526

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !5527
  br label %return, !dbg !5527

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !5529
  ret i32 %2, !dbg !5529
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !5530 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #11

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !5531 dso_local void @__compiletime_assert_245() #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #12 align 16 !dbg !5532 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !5537, metadata !DIExpression()), !dbg !5538
  %0 = load i64, ptr %word.addr, align 8, !dbg !5539
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #21, !dbg !5540, !srcloc !5541
  store i64 %1, ptr %word.addr, align 8, !dbg !5540
  %2 = load i64, ptr %word.addr, align 8, !dbg !5542
  ret i64 %2, !dbg !5543
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !5544 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone noreturn }
attributes #21 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4060, !4061, !4062, !4063, !4064, !4065, !4066, !4067}
!llvm.ident = !{!4068}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__drm_debug", scope: !2, file: !3, line: 42, type: !302, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/gpu/drm/.drm_print.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/gpu/drm/drm\22 -D KBUILD_BASENAME=\22drm_print\22 -D KBUILD_MODNAME=\22drm\22 -D __KBUILD_MODNAME=kmod_drm -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/gpu/drm/drm_print.ll drivers/gpu/drm/drm_print.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !145, globals: !3949, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/gpu/drm/drm_print.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10afca82b495f331ede87e1c769135fe")
!4 = !{!5, !13, !18, !26, !32, !37, !43, !50, !57, !63, !69, !76, !84, !92, !101, !106, !111, !117, !122, !135}
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
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !27, line: 54, baseType: !7, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!28 = !{!29, !30, !31}
!29 = !DIEnumerator(name: "USRQUOTA", value: 0)
!30 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!31 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !33, line: 65, baseType: !7, size: 32, elements: !34)
!33 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!34 = !{!35, !36}
!35 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!36 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !38, line: 16, baseType: !7, size: 32, elements: !39)
!38 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "TT_NONE", value: 0)
!41 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!42 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !44, line: 51, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!47 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!48 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!49 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !51, line: 15, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!54 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!55 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!56 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !58, line: 26, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!61 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!62 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !64, line: 45, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!67 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!68 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !70, line: 487, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!73 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!74 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!75 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !77, line: 620, baseType: !7, size: 32, elements: !78)
!77 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!78 = !{!79, !80, !81, !82, !83}
!79 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!80 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!81 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!82 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!83 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !77, line: 597, baseType: !85, size: 32, elements: !86)
!85 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!86 = !{!87, !88, !89, !90, !91}
!87 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!88 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!89 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!90 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!91 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !70, line: 547, baseType: !7, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100}
!94 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!95 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!96 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!97 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!98 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!99 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!100 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !70, line: 564, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!104 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!105 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !70, line: 577, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110}
!108 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!109 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!110 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !70, line: 503, baseType: !7, size: 32, elements: !112)
!112 = !{!113, !114, !115, !116}
!113 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!114 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!115 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!116 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !118, line: 10, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!119 = !{!120, !121}
!120 = !DIEnumerator(name: "false", value: 0)
!121 = !DIEnumerator(name: "true", value: 1)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "drm_debug_category", file: !123, line: 330, baseType: !7, size: 32, elements: !124)
!123 = !DIFile(filename: "./include/drm/drm_print.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8183d9b00573922c1c038b9801bc144f")
!124 = !{!125, !126, !127, !128, !129, !130, !131, !132, !133, !134}
!125 = !DIEnumerator(name: "DRM_UT_CORE", value: 0)
!126 = !DIEnumerator(name: "DRM_UT_DRIVER", value: 1)
!127 = !DIEnumerator(name: "DRM_UT_KMS", value: 2)
!128 = !DIEnumerator(name: "DRM_UT_PRIME", value: 3)
!129 = !DIEnumerator(name: "DRM_UT_ATOMIC", value: 4)
!130 = !DIEnumerator(name: "DRM_UT_VBL", value: 5)
!131 = !DIEnumerator(name: "DRM_UT_STATE", value: 6)
!132 = !DIEnumerator(name: "DRM_UT_LEASE", value: 7)
!133 = !DIEnumerator(name: "DRM_UT_DP", value: 8)
!134 = !DIEnumerator(name: "DRM_UT_DRMRES", value: 9)
!135 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !136, line: 364, baseType: !7, size: 32, elements: !137)
!136 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!137 = !{!138, !139, !140, !141, !142, !143, !144}
!138 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!139 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!140 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!141 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!142 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!143 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!144 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!145 = !{!146, !147, !284, !252, !1446, !171, !85, !302, !3947}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !149)
!149 = !{!150, !151, !158, !163, !3623, !3649, !3650, !3651, !3652, !3656, !3659, !3660, !3661, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3728, !3732, !3750, !3767, !3768, !3769, !3770, !3779, !3802, !3803, !3806, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3820, !3821, !3907, !3915, !3916, !3917, !3919, !3923, !3924, !3928, !3929, !3930, !3931, !3933, !3934, !3935, !3942, !3943, !3944, !3946}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !148, file: !6, line: 403, baseType: !5, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !148, file: !6, line: 406, baseType: !152, size: 128, offset: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !153, line: 190, size: 128, elements: !154)
!153 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!154 = !{!155, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !153, line: 191, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !152, file: !153, line: 191, baseType: !156, size: 64, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !148, file: !6, line: 409, baseType: !159, size: 448, offset: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 448, elements: !161)
!160 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!161 = !{!162}
!162 = !DISubrange(count: 56)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !148, file: !6, line: 417, baseType: !164, size: 768, offset: 640)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !165)
!165 = !{!166, !3617, !3618, !3619, !3622}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !164, file: !6, line: 46, baseType: !167, size: 512)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !168, line: 64, size: 512, elements: !169)
!168 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!169 = !{!170, !173, !174, !176, !265, !3515, !3607, !3612, !3613, !3614, !3615, !3616}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 65, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !167, file: !168, line: 66, baseType: !152, size: 128, offset: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !167, file: !168, line: 67, baseType: !175, size: 64, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !167, file: !168, line: 68, baseType: !177, size: 64, offset: 256)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !168, line: 168, size: 768, elements: !179)
!179 = !{!180, !181, !224, !225}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !178, file: !168, line: 169, baseType: !152, size: 128)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !178, file: !168, line: 170, baseType: !182, size: 32, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !183, line: 29, baseType: !184)
!183 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !183, line: 17, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !184, file: !183, line: 18, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !184, file: !183, line: 18, size: 32, elements: !188)
!188 = !{!189}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !187, file: !183, line: 19, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !191, line: 14, size: 32, elements: !192)
!191 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !190, file: !191, line: 15, baseType: !194, size: 32)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !195, line: 44, baseType: !196)
!195 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !195, line: 14, size: 32, elements: !197)
!197 = !{!198}
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !195, line: 15, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !196, file: !195, line: 15, size: 32, elements: !200)
!200 = !{!201, !206, !216}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !199, file: !195, line: 16, baseType: !202, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !153, line: 174, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 172, size: 32, elements: !204)
!204 = !{!205}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !203, file: !153, line: 173, baseType: !85, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 24, baseType: !207, size: 16)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 24, size: 16, elements: !208)
!208 = !{!209, !215}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !207, file: !195, line: 25, baseType: !210, size: 8)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !211, line: 17, baseType: !212)
!211 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !213, line: 21, baseType: !214)
!213 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!214 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !207, file: !195, line: 26, baseType: !210, size: 8, offset: 8)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !199, file: !195, line: 28, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !199, file: !195, line: 28, size: 32, elements: !218)
!218 = !{!219, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !217, file: !195, line: 29, baseType: !220, size: 16)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !211, line: 19, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !213, line: 24, baseType: !222)
!222 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !217, file: !195, line: 30, baseType: !220, size: 16, offset: 16)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !178, file: !168, line: 171, baseType: !167, size: 512, offset: 192)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !178, file: !168, line: 172, baseType: !226, size: 64, offset: 704)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !168, line: 133, size: 192, elements: !229)
!229 = !{!230, !237, !242}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !228, file: !168, line: 134, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!85, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !228, file: !168, line: 135, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!171, !235}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !228, file: !168, line: 136, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!85, !235, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !168, line: 125, size: 20736, elements: !249)
!249 = !{!250, !255, !259, !260, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !248, file: !168, line: 126, baseType: !251, size: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 192, elements: !253)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!253 = !{!254}
!254 = !DISubrange(count: 3)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !248, file: !168, line: 127, baseType: !256, size: 4096, offset: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 4096, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !248, file: !168, line: 128, baseType: !85, size: 32, offset: 4288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !168, line: 129, baseType: !261, size: 16384, offset: 4320)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 16384, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 2048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !248, file: !168, line: 130, baseType: !85, size: 32, offset: 20704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !167, file: !168, line: 69, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !168, line: 116, size: 384, elements: !269)
!269 = !{!270, !274, !303, !3477, !3505, !3509}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !268, file: !168, line: 117, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{null, !175}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !268, file: !168, line: 118, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !278, line: 254, size: 128, elements: !279)
!278 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!279 = !{!280, !295}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !277, file: !278, line: 255, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !175, !289, !252}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !153, line: 66, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !286, line: 73, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !286, line: 15, baseType: !288)
!288 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !278, line: 30, size: 128, elements: !291)
!291 = !{!292, !293}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !290, file: !278, line: 31, baseType: !171, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !290, file: !278, line: 32, baseType: !294, size: 16, offset: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !153, line: 24, baseType: !222)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !277, file: !278, line: 256, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!284, !175, !289, !171, !299}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !153, line: 61, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !286, line: 72, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !286, line: 16, baseType: !302)
!302 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !268, file: !168, line: 119, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !307)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !278, line: 84, size: 320, elements: !308)
!308 = !{!309, !310, !314, !3473, !3475}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !307, file: !278, line: 85, baseType: !171, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !307, file: !278, line: 86, baseType: !311, size: 64, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!294, !175, !289, !85}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !307, file: !278, line: 88, baseType: !315, size: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!294, !175, !318, !85}
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !278, line: 175, size: 512, elements: !320)
!320 = !{!321, !322, !323, !324, !3464, !3468, !3469}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !319, file: !278, line: 176, baseType: !290, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !319, file: !278, line: 177, baseType: !299, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !319, file: !278, line: 178, baseType: !146, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !319, file: !278, line: 179, baseType: !325, size: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !14, line: 472, size: 1536, align: 64, elements: !330)
!330 = !{!331, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3458, !3459, !3460, !3461, !3462, !3463}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !329, file: !14, line: 473, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !14, line: 641, size: 4800, elements: !334)
!334 = !{!335, !336, !337, !345, !346, !353, !354, !357, !358, !3237, !3238, !3239, !3240, !3241, !3247, !3248, !3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257, !3258, !3259, !3260, !3261, !3262, !3263, !3264, !3265, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3281, !3284, !3285, !3286, !3295, !3296, !3297, !3298}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !333, file: !14, line: 642, baseType: !294, size: 16)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !333, file: !14, line: 643, baseType: !222, size: 16, offset: 16)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !333, file: !14, line: 644, baseType: !338, size: 32, offset: 32)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !339, line: 23, baseType: !340)
!339 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 21, size: 32, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !340, file: !339, line: 22, baseType: !343, size: 32)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !153, line: 37, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !286, line: 49, baseType: !7)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !333, file: !14, line: 645, baseType: !152, size: 128, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !333, file: !14, line: 646, baseType: !347, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !339, line: 28, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !339, line: 26, size: 32, elements: !349)
!349 = !{!350}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !348, file: !339, line: 27, baseType: !351, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !153, line: 38, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !286, line: 50, baseType: !7)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !333, file: !14, line: 647, baseType: !7, size: 32, offset: 224)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !333, file: !14, line: 650, baseType: !355, size: 64, offset: 256)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !14, line: 607, flags: DIFlagFwdDecl)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !333, file: !14, line: 651, baseType: !355, size: 64, offset: 320)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !333, file: !14, line: 654, baseType: !359, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !361)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !14, line: 1966, size: 2048, align: 512, elements: !362)
!362 = !{!363, !3062, !3075, !3079, !3083, !3087, !3091, !3095, !3099, !3103, !3107, !3108, !3112, !3116, !3153, !3182, !3186, !3192, !3196, !3200, !3204, !3208, !3212, !3218, !3222}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !361, file: !14, line: 1967, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{!367, !332, !367, !7}
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !369, line: 82, size: 1536, elements: !370)
!369 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!370 = !{!371, !372, !382, !390, !391, !411, !412, !416, !429, !3045, !3046, !3047, !3048, !3054, !3055, !3056}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !368, file: !369, line: 84, baseType: !7, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !368, file: !369, line: 85, baseType: !373, size: 32, offset: 32)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !374, line: 275, baseType: !375)
!374 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !374, line: 275, size: 32, elements: !376)
!376 = !{!377}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !375, file: !374, line: 275, baseType: !378, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !374, line: 69, baseType: !379)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !374, line: 64, size: 32, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !379, file: !374, line: 65, baseType: !7, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !368, file: !369, line: 86, baseType: !383, size: 128, offset: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !384, line: 38, size: 128, elements: !385)
!384 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!385 = !{!386, !388}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !384, line: 39, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !383, file: !384, line: 39, baseType: !389, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !368, file: !369, line: 87, baseType: !367, size: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !368, file: !369, line: 88, baseType: !392, size: 128, offset: 256)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !369, line: 49, size: 128, elements: !393)
!393 = !{!394, !408}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !369, line: 50, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !369, line: 50, size: 64, elements: !396)
!396 = !{!397, !404}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !369, line: 51, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !395, file: !369, line: 51, size: 64, elements: !399)
!399 = !{!400, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !398, file: !369, line: 52, baseType: !401, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !211, line: 21, baseType: !402)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !213, line: 27, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !398, file: !369, line: 52, baseType: !401, size: 32, offset: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !395, file: !369, line: 54, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !211, line: 23, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !213, line: 31, baseType: !407)
!407 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !392, file: !369, line: 56, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !368, file: !369, line: 89, baseType: !332, size: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !368, file: !369, line: 91, baseType: !413, size: 256, offset: 448)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 256, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 32)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !368, file: !369, line: 94, baseType: !417, size: 64, offset: 704)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !418, line: 25, size: 64, elements: !419)
!418 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!419 = !{!420}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !417, file: !418, line: 26, baseType: !421, size: 64)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !418, line: 26, size: 64, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !421, file: !418, line: 28, baseType: !406, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !418, line: 30, baseType: !425, size: 64)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !418, line: 30, size: 64, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !425, file: !418, line: 31, baseType: !182, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !425, file: !418, line: 32, baseType: !85, size: 32, offset: 32)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !368, file: !369, line: 95, baseType: !430, size: 64, offset: 768)
!430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !369, line: 128, size: 1024, align: 512, elements: !433)
!433 = !{!434, !438, !439, !446, !452, !456, !460, !464, !465, !469, !473, !3035, !3039}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !432, file: !369, line: 129, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!85, !367, !7}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !432, file: !369, line: 130, baseType: !435, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !432, file: !369, line: 131, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!85, !443, !445}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !432, file: !369, line: 132, baseType: !447, size: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!85, !443, !7, !171, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !432, file: !369, line: 134, baseType: !453, size: 64, offset: 256)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!85, !443}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !432, file: !369, line: 135, baseType: !457, size: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!85, !367}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !432, file: !369, line: 136, baseType: !461, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !367}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !432, file: !369, line: 137, baseType: !461, size: 64, offset: 448)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !432, file: !369, line: 138, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{null, !367, !332}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !432, file: !369, line: 139, baseType: !470, size: 64, offset: 576)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!252, !367, !252, !85}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !432, file: !369, line: 140, baseType: !474, size: 64, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!477, !3034}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !479, line: 70, size: 256, elements: !480)
!479 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!480 = !{!481, !482, !3030, !3031}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !478, file: !479, line: 71, baseType: !367, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !478, file: !479, line: 72, baseType: !483, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !14, line: 1190, size: 10752, elements: !485)
!485 = !{!486, !487, !490, !491, !492, !496, !544, !1455, !1495, !1580, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592, !1597, !1601, !1602, !1605, !1608, !1611, !1614, !1615, !1616, !1657, !2961, !2962, !2963, !2964, !2965, !2966, !2969, !2971, !2978, !2979, !2980, !2981, !2982, !2997, !2998, !2999, !3000, !3001, !3004, !3005, !3006, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !484, file: !14, line: 1191, baseType: !152, size: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !484, file: !14, line: 1192, baseType: !488, size: 32, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !153, line: 21, baseType: !489)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !153, line: 18, baseType: !401)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !484, file: !14, line: 1193, baseType: !214, size: 8, offset: 160)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !484, file: !14, line: 1194, baseType: !302, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !484, file: !14, line: 1195, baseType: !493, size: 64, offset: 256)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !153, line: 52, baseType: !494)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !286, line: 88, baseType: !495)
!495 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !484, file: !14, line: 1196, baseType: !497, size: 64, offset: 320)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !14, line: 2366, size: 576, elements: !499)
!499 = !{!500, !501, !502, !508, !512, !516, !520, !521, !522, !532, !536, !537, !538, !540, !541, !542, !543}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !498, file: !14, line: 2367, baseType: !171, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !498, file: !14, line: 2368, baseType: !85, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !498, file: !14, line: 2376, baseType: !503, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!85, !506}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !479, line: 21, flags: DIFlagFwdDecl)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !498, file: !14, line: 2377, baseType: !509, size: 64, offset: 192)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !511)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !14, line: 75, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !498, file: !14, line: 2378, baseType: !513, size: 64, offset: 256)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DISubroutineType(types: !515)
!515 = !{!367, !497, !85, !171, !146}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !498, file: !14, line: 2380, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{null, !483}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !498, file: !14, line: 2381, baseType: !147, size: 64, offset: 384)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !498, file: !14, line: 2382, baseType: !497, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !498, file: !14, line: 2383, baseType: !523, size: 64, offset: 512)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !153, line: 194, size: 64, elements: !524)
!524 = !{!525}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !523, file: !153, line: 195, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !153, line: 198, size: 128, elements: !528)
!528 = !{!529, !530}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !527, file: !153, line: 199, baseType: !526, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !527, file: !153, line: 199, baseType: !531, size: 64, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !498, file: !14, line: 2385, baseType: !533, offset: 576)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !534, line: 206, elements: !535)
!534 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!535 = !{}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !498, file: !14, line: 2386, baseType: !533, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !498, file: !14, line: 2387, baseType: !533, offset: 576)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !498, file: !14, line: 2388, baseType: !539, offset: 576)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, elements: !253)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !498, file: !14, line: 2390, baseType: !533, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !498, file: !14, line: 2391, baseType: !533, offset: 576)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !498, file: !14, line: 2392, baseType: !533, offset: 576)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !498, file: !14, line: 2393, baseType: !533, offset: 576)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !484, file: !14, line: 1197, baseType: !545, size: 64, offset: 384)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !14, line: 2057, size: 1664, elements: !548)
!548 = !{!549, !553, !557, !558, !562, !568, !572, !573, !574, !578, !582, !586, !587, !588, !594, !599, !600, !1379, !1380, !1381, !1382, !1386, !1390, !1437, !1453, !1454}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !547, file: !14, line: 2058, baseType: !550, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DISubroutineType(types: !552)
!552 = !{!332, !483}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !547, file: !14, line: 2059, baseType: !554, size: 64, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !332}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !547, file: !14, line: 2060, baseType: !554, size: 64, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !547, file: !14, line: 2062, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !332, !85}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !547, file: !14, line: 2063, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DISubroutineType(types: !565)
!565 = !{!85, !332, !566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !14, line: 309, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !547, file: !14, line: 2064, baseType: !569, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!85, !332}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !547, file: !14, line: 2065, baseType: !554, size: 64, offset: 384)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !547, file: !14, line: 2066, baseType: !517, size: 64, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !547, file: !14, line: 2067, baseType: !575, size: 64, offset: 512)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{!85, !483, !85}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !547, file: !14, line: 2068, baseType: !579, size: 64, offset: 576)
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !580, size: 64)
!580 = !DISubroutineType(types: !581)
!581 = !{!85, !483, !13}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !547, file: !14, line: 2069, baseType: !583, size: 64, offset: 640)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !584, size: 64)
!584 = !DISubroutineType(types: !585)
!585 = !{!85, !483}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !547, file: !14, line: 2070, baseType: !579, size: 64, offset: 704)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !547, file: !14, line: 2071, baseType: !583, size: 64, offset: 768)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !547, file: !14, line: 2072, baseType: !589, size: 64, offset: 832)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DISubroutineType(types: !591)
!591 = !{!85, !367, !592}
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !14, line: 62, flags: DIFlagFwdDecl)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !547, file: !14, line: 2073, baseType: !595, size: 64, offset: 896)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DISubroutineType(types: !597)
!597 = !{!85, !483, !598, !252}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !547, file: !14, line: 2074, baseType: !517, size: 64, offset: 960)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !547, file: !14, line: 2076, baseType: !601, size: 64, offset: 1024)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DISubroutineType(types: !603)
!603 = !{!85, !604, !367}
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !606, line: 17, size: 960, elements: !607)
!606 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!607 = !{!608, !609, !610, !611, !612, !613, !614, !615, !636, !658, !659, !1378}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !605, file: !606, line: 18, baseType: !252, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !605, file: !606, line: 19, baseType: !299, size: 64, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !605, file: !606, line: 20, baseType: !299, size: 64, offset: 128)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !605, file: !606, line: 21, baseType: !299, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !605, file: !606, line: 22, baseType: !299, size: 64, offset: 256)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !605, file: !606, line: 23, baseType: !493, size: 64, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !605, file: !606, line: 24, baseType: !493, size: 64, offset: 384)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !605, file: !606, line: 25, baseType: !616, size: 256, offset: 448)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !617, line: 66, size: 256, elements: !618)
!617 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!618 = !{!619, !628, !630, !635}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !616, file: !617, line: 67, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !621, line: 13, baseType: !622)
!621 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !153, line: 181, baseType: !623)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !153, line: 179, size: 64, elements: !624)
!624 = !{!625}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !623, file: !153, line: 180, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !211, line: 22, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !213, line: 30, baseType: !495)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !616, file: !617, line: 68, baseType: !629, size: 32, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !191, line: 23, baseType: !190)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !616, file: !617, line: 70, baseType: !631, size: 32, offset: 96)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !632, line: 15, size: 32, elements: !633)
!632 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!633 = !{!634}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !631, file: !632, line: 20, baseType: !202, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !616, file: !617, line: 72, baseType: !152, size: 128, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !605, file: !606, line: 26, baseType: !637, size: 64, offset: 704)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !606, line: 32, size: 256, elements: !640)
!640 = !{!641, !646, !650, !654}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !639, file: !606, line: 33, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!146, !604, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !639, file: !606, line: 34, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !604, !146}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !639, file: !606, line: 35, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!146, !604, !146, !645}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !639, file: !606, line: 36, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!85, !604, !146}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !605, file: !606, line: 27, baseType: !85, size: 32, offset: 768)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !605, file: !606, line: 28, baseType: !660, size: 64, offset: 832)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !14, line: 994, size: 1856, align: 64, elements: !663)
!663 = !{!664, !683, !684, !686, !687, !688, !689, !690, !753, !965, !974, !980, !981, !1368, !1369, !1370, !1371, !1373, !1374, !1377}
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !662, file: !14, line: 995, baseType: !665, size: 128)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !662, file: !14, line: 995, size: 128, elements: !666)
!666 = !{!667, !673, !682}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !665, file: !14, line: 996, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !669, line: 60, size: 64, elements: !670)
!669 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !668, file: !669, line: 61, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !665, file: !14, line: 997, baseType: !674, size: 128, align: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !153, line: 232, size: 128, align: 64, elements: !675)
!675 = !{!676, !678}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !153, line: 233, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !674, file: !153, line: 234, baseType: !679, size: 64, offset: 64)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{null, !677}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !665, file: !14, line: 998, baseType: !7, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !662, file: !14, line: 1005, baseType: !182, size: 32, offset: 128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !662, file: !14, line: 1006, baseType: !685, size: 32, offset: 160)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !153, line: 156, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !662, file: !14, line: 1007, baseType: !620, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !662, file: !14, line: 1008, baseType: !616, size: 256, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !662, file: !14, line: 1009, baseType: !493, size: 64, offset: 512)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !662, file: !14, line: 1010, baseType: !7, size: 32, offset: 576)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !662, file: !14, line: 1011, baseType: !691, size: 256, offset: 640)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !14, line: 948, size: 256, elements: !692)
!692 = !{!693, !714, !749, !750, !751, !752}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !691, file: !14, line: 949, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !695, line: 34, baseType: !696)
!695 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !695, line: 25, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !696, file: !695, line: 26, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !700, line: 27, baseType: !701)
!700 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !700, line: 13, size: 64, elements: !702)
!702 = !{!703, !713}
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !701, file: !700, line: 14, baseType: !704, size: 32)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !701, file: !700, line: 14, size: 32, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !704, file: !700, line: 15, baseType: !202, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !700, line: 16, baseType: !708, size: 32)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !700, line: 16, size: 32, elements: !709)
!709 = !{!710, !711}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !708, file: !700, line: 18, baseType: !210, size: 8)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !708, file: !700, line: 19, baseType: !712, size: 24, offset: 8)
!712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 24, elements: !253)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !701, file: !700, line: 26, baseType: !194, size: 32, offset: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !691, file: !14, line: 950, baseType: !715, size: 64, offset: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !19, line: 59, size: 768, elements: !717)
!717 = !{!718, !724, !725, !726, !730, !731, !738, !739}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !716, file: !19, line: 61, baseType: !719, size: 32)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !720, line: 113, baseType: !721)
!720 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !720, line: 111, size: 32, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !721, file: !720, line: 112, baseType: !202, size: 32)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !716, file: !19, line: 62, baseType: !7, size: 32, offset: 32)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !19, line: 63, baseType: !182, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !716, file: !19, line: 65, baseType: !727, size: 256, offset: 128)
!727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 256, elements: !728)
!728 = !{!729}
!729 = !DISubrange(count: 4)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !716, file: !19, line: 66, baseType: !523, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !716, file: !19, line: 68, baseType: !732, size: 192, offset: 448)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !733, line: 41, baseType: !734)
!733 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !733, line: 37, size: 192, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !734, file: !733, line: 38, baseType: !182, size: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !734, file: !733, line: 39, baseType: !152, size: 128, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !716, file: !19, line: 69, baseType: !674, size: 128, align: 64, offset: 640)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !716, file: !19, line: 70, baseType: !740, offset: 768)
!740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !741, elements: !747)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !19, line: 54, size: 128, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !741, file: !19, line: 55, baseType: !85, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !741, file: !19, line: 56, baseType: !745, size: 64, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !19, line: 56, flags: DIFlagFwdDecl)
!747 = !{!748}
!748 = !DISubrange(count: -1)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !691, file: !14, line: 951, baseType: !18, size: 32, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !691, file: !14, line: 952, baseType: !338, size: 32, offset: 160)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !691, file: !14, line: 952, baseType: !338, size: 32, offset: 192)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !691, file: !14, line: 953, baseType: !85, size: 32, offset: 224)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !662, file: !14, line: 1012, baseType: !754, size: 64, offset: 896)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !756)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !757, line: 110, size: 1472, elements: !758)
!757 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !775, !776, !777, !778, !779, !780, !910, !911, !912, !913, !914, !945, !948, !952, !960}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !756, file: !757, line: 111, baseType: !620, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !756, file: !757, line: 112, baseType: !338, size: 32, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !756, file: !757, line: 113, baseType: !347, size: 32, offset: 96)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !756, file: !757, line: 114, baseType: !338, size: 32, offset: 128)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !756, file: !757, line: 115, baseType: !347, size: 32, offset: 160)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !756, file: !757, line: 116, baseType: !338, size: 32, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !756, file: !757, line: 117, baseType: !347, size: 32, offset: 224)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !756, file: !757, line: 118, baseType: !338, size: 32, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !756, file: !757, line: 119, baseType: !347, size: 32, offset: 288)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !756, file: !757, line: 120, baseType: !7, size: 32, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !756, file: !757, line: 121, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !771, line: 24, baseType: !772)
!771 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !771, line: 24, size: 64, elements: !773)
!773 = !{!774}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !772, file: !771, line: 24, baseType: !405, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !756, file: !757, line: 122, baseType: !770, size: 64, offset: 448)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !756, file: !757, line: 123, baseType: !770, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !756, file: !757, line: 124, baseType: !770, size: 64, offset: 576)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !756, file: !757, line: 125, baseType: !770, size: 64, offset: 640)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !756, file: !757, line: 127, baseType: !214, size: 8, offset: 704)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !756, file: !757, line: 129, baseType: !781, size: 64, offset: 768)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !783, line: 195, size: 1728, elements: !784)
!783 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!784 = !{!785, !786, !791, !803, !812, !815, !816, !823, !824, !825, !826, !829, !830, !831, !833, !834, !874, !895}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !782, file: !783, line: 196, baseType: !719, size: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !782, file: !783, line: 197, baseType: !787, size: 32, offset: 32)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !783, line: 28, baseType: !788)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !153, line: 104, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !211, line: 20, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !213, line: 26, baseType: !85)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 198, baseType: !792, size: 192, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 198, size: 192, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !792, file: !783, line: 199, baseType: !152, size: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !792, file: !783, line: 200, baseType: !796, size: 192, align: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !797, line: 5, size: 192, align: 64, elements: !798)
!797 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!798 = !{!799, !800, !802}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !796, file: !797, line: 6, baseType: !302, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !796, file: !797, line: 7, baseType: !801, size: 64, offset: 64)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !796, file: !797, line: 8, baseType: !801, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !782, file: !783, line: 205, baseType: !804, size: 320, offset: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !805, line: 48, size: 320, elements: !806)
!805 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!806 = !{!807, !808, !809, !810, !811}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !804, file: !805, line: 49, baseType: !620, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !804, file: !805, line: 55, baseType: !620, size: 64, offset: 64)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !804, file: !805, line: 57, baseType: !631, size: 32, offset: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !804, file: !805, line: 59, baseType: !629, size: 32, offset: 160)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !804, file: !805, line: 60, baseType: !152, size: 128, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !782, file: !783, line: 206, baseType: !813, size: 64, offset: 576)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !783, line: 206, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !782, file: !783, line: 207, baseType: !146, size: 64, offset: 640)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 208, baseType: !817, size: 64, offset: 704)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 208, size: 64, elements: !818)
!818 = !{!819, !822}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !817, file: !783, line: 209, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !821, line: 8, baseType: !627)
!821 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!822 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !817, file: !783, line: 210, baseType: !820, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !782, file: !783, line: 212, baseType: !820, size: 64, offset: 768)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !782, file: !783, line: 213, baseType: !338, size: 32, offset: 832)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !782, file: !783, line: 214, baseType: !347, size: 32, offset: 864)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !782, file: !783, line: 215, baseType: !827, size: 32, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !783, line: 31, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !153, line: 110, baseType: !401)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !782, file: !783, line: 216, baseType: !222, size: 16, offset: 928)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !782, file: !783, line: 217, baseType: !222, size: 16, offset: 944)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !782, file: !783, line: 221, baseType: !832, size: 16, offset: 960)
!832 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !782, file: !783, line: 228, baseType: !302, size: 64, offset: 1024)
!834 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 245, baseType: !835, size: 320, offset: 1088)
!835 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 245, size: 320, elements: !836)
!836 = !{!837, !866}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !835, file: !783, line: 246, baseType: !838, size: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !783, line: 114, size: 320, elements: !839)
!839 = !{!840, !841, !853, !856, !865}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !838, file: !783, line: 116, baseType: !302, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, scope: !838, file: !783, line: 117, baseType: !842, size: 64, offset: 64)
!842 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !838, file: !783, line: 117, size: 64, elements: !843)
!843 = !{!844, !852}
!844 = !DIDerivedType(tag: DW_TAG_member, scope: !842, file: !783, line: 118, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !842, file: !783, line: 118, size: 64, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !845, file: !783, line: 120, baseType: !220, size: 16)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !845, file: !783, line: 121, baseType: !849, size: 48, offset: 16)
!849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 48, elements: !850)
!850 = !{!851}
!851 = !DISubrange(count: 6)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !842, file: !783, line: 127, baseType: !302, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !838, file: !783, line: 129, baseType: !854, size: 64, offset: 128)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !783, line: 102, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !838, file: !783, line: 130, baseType: !857, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !783, line: 108, size: 192, elements: !859)
!859 = !{!860, !861, !862}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !858, file: !783, line: 109, baseType: !674, size: 128, align: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !858, file: !783, line: 110, baseType: !719, size: 32, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !858, file: !783, line: 111, baseType: !863, size: 8, offset: 160)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !153, line: 35, baseType: !864)
!864 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !838, file: !783, line: 131, baseType: !171, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, scope: !835, file: !783, line: 247, baseType: !867, size: 320)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !835, file: !783, line: 247, size: 320, elements: !868)
!868 = !{!869, !870, !871, !872, !873}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !867, file: !783, line: 248, baseType: !302, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !867, file: !783, line: 249, baseType: !302, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !867, file: !783, line: 250, baseType: !854, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !867, file: !783, line: 251, baseType: !857, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !867, file: !783, line: 252, baseType: !252, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !782, file: !783, line: 260, baseType: !875, size: 256, offset: 1408)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !782, file: !783, line: 260, size: 256, elements: !876)
!876 = !{!877, !883}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !875, file: !783, line: 261, baseType: !878, size: 256)
!878 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !783, line: 134, size: 256, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !878, file: !783, line: 135, baseType: !146, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !878, file: !783, line: 136, baseType: !882, size: 256)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, size: 256, elements: !728)
!883 = !DIDerivedType(tag: DW_TAG_member, scope: !875, file: !783, line: 262, baseType: !884, size: 256)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !875, file: !783, line: 262, size: 256, elements: !885)
!885 = !{!886, !887}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !884, file: !783, line: 264, baseType: !152, size: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !884, file: !783, line: 265, baseType: !888, size: 128, offset: 128)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !889, line: 22, size: 128, elements: !890)
!889 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!890 = !{!891, !894}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !888, file: !889, line: 23, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !889, line: 23, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !888, file: !889, line: 24, baseType: !302, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !782, file: !783, line: 280, baseType: !896, size: 64, offset: 1664)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !783, line: 176, size: 192, elements: !898)
!898 = !{!899, !908, !909}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !897, file: !783, line: 177, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !783, line: 171, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!85, !781, !904, !906, !781}
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !897, file: !783, line: 178, baseType: !781, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !897, file: !783, line: 179, baseType: !854, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !756, file: !757, line: 130, baseType: !781, size: 64, offset: 832)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !756, file: !757, line: 131, baseType: !781, size: 64, offset: 896)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !756, file: !757, line: 132, baseType: !781, size: 64, offset: 960)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !756, file: !757, line: 135, baseType: !146, size: 64, offset: 1024)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !756, file: !757, line: 137, baseType: !915, size: 64, offset: 1088)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !917, line: 14, size: 1088, elements: !918)
!917 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!918 = !{!919, !920, !929, !930, !931, !932, !933, !934}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !916, file: !917, line: 15, baseType: !719, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !916, file: !917, line: 17, baseType: !921, size: 320, offset: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !922, line: 22, size: 320, elements: !923)
!922 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!923 = !{!924, !925, !926, !927}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !921, file: !922, line: 23, baseType: !629, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !921, file: !922, line: 24, baseType: !626, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !921, file: !922, line: 26, baseType: !152, size: 128, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !921, file: !922, line: 28, baseType: !928, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !916, file: !917, line: 19, baseType: !302, size: 64, offset: 384)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !916, file: !917, line: 20, baseType: !620, size: 64, offset: 448)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !916, file: !917, line: 23, baseType: !527, size: 128, offset: 512)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !916, file: !917, line: 24, baseType: !338, size: 32, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !916, file: !917, line: 29, baseType: !620, size: 64, offset: 704)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !916, file: !917, line: 36, baseType: !935, size: 320, offset: 768)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !936, line: 15, size: 320, elements: !937)
!936 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!937 = !{!938, !939, !940, !941, !942, !943, !944}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !935, file: !936, line: 16, baseType: !629, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !935, file: !936, line: 18, baseType: !85, size: 32, offset: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !935, file: !936, line: 19, baseType: !85, size: 32, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !935, file: !936, line: 20, baseType: !85, size: 32, offset: 96)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !935, file: !936, line: 21, baseType: !85, size: 32, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !935, file: !936, line: 22, baseType: !302, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !935, file: !936, line: 23, baseType: !302, size: 64, offset: 256)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !756, file: !757, line: 138, baseType: !946, size: 64, offset: 1152)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !339, line: 18, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !756, file: !757, line: 139, baseType: !949, size: 64, offset: 1216)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !951, line: 16, flags: DIFlagFwdDecl)
!951 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!952 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !756, file: !757, line: 140, baseType: !953, size: 64, offset: 1280)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !757, line: 25, size: 64, elements: !955)
!955 = !{!956, !957, !958}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !954, file: !757, line: 26, baseType: !202, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !954, file: !757, line: 27, baseType: !85, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !954, file: !757, line: 28, baseType: !959, offset: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !347, elements: !747)
!960 = !DIDerivedType(tag: DW_TAG_member, scope: !756, file: !757, line: 142, baseType: !961, size: 128, offset: 1344)
!961 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !756, file: !757, line: 142, size: 128, elements: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !961, file: !757, line: 143, baseType: !85, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !961, file: !757, line: 144, baseType: !674, size: 128, align: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !662, file: !14, line: 1013, baseType: !966, size: 256, offset: 960)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !14, line: 970, size: 256, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !966, file: !14, line: 971, baseType: !302, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !966, file: !14, line: 972, baseType: !7, size: 32, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !966, file: !14, line: 973, baseType: !7, size: 32, offset: 96)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !966, file: !14, line: 974, baseType: !7, size: 32, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !966, file: !14, line: 975, baseType: !7, size: 32, offset: 160)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !966, file: !14, line: 976, baseType: !493, size: 64, offset: 192)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !662, file: !14, line: 1014, baseType: !975, size: 128, offset: 1216)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !976, line: 8, size: 128, elements: !977)
!976 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !975, file: !976, line: 9, baseType: !477, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !975, file: !976, line: 10, baseType: !367, size: 64, offset: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !662, file: !14, line: 1015, baseType: !332, size: 64, offset: 1344)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !662, file: !14, line: 1016, baseType: !982, size: 64, offset: 1408)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !14, line: 1914, size: 2112, elements: !985)
!985 = !{!986, !987, !992, !996, !1000, !1029, !1030, !1036, !1049, !1057, !1061, !1062, !1289, !1290, !1294, !1299, !1300, !1304, !1308, !1314, !1315, !1319, !1320, !1327, !1331, !1335, !1341, !1345, !1349, !1353, !1357, !1358, !1364}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !984, file: !14, line: 1915, baseType: !147, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !984, file: !14, line: 1916, baseType: !988, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!493, !991, !493, !85}
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !984, file: !14, line: 1917, baseType: !993, size: 64, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!284, !991, !252, !299, !645}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !984, file: !14, line: 1918, baseType: !997, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!284, !991, !171, !299, !645}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !984, file: !14, line: 1919, baseType: !1001, size: 64, offset: 256)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{!284, !1004, !1026}
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !14, line: 373, size: 384, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1013, !1014, !1015, !1016}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1005, file: !14, line: 374, baseType: !991, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1005, file: !14, line: 375, baseType: !493, size: 64, offset: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1005, file: !14, line: 376, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{null, !1004, !288}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1005, file: !14, line: 377, baseType: !146, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1005, file: !14, line: 378, baseType: !85, size: 32, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1005, file: !14, line: 379, baseType: !220, size: 16, offset: 288)
!1016 = !DIDerivedType(tag: DW_TAG_member, scope: !1005, file: !14, line: 380, baseType: !1017, size: 64, offset: 320)
!1017 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1005, file: !14, line: 380, size: 64, elements: !1018)
!1018 = !{!1019, !1022}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1017, file: !14, line: 386, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !14, line: 386, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1017, file: !14, line: 395, baseType: !1023, size: 64)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!284, !146}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !1028, line: 17, flags: DIFlagFwdDecl)
!1028 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8868730aa9d47b2b7cd56892f4f0d441")
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !984, file: !14, line: 1920, baseType: !1001, size: 64, offset: 320)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !984, file: !14, line: 1921, baseType: !1031, size: 64, offset: 384)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DISubroutineType(types: !1033)
!1033 = !{!85, !1004, !1034, !7}
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !14, line: 53, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !984, file: !14, line: 1923, baseType: !1037, size: 64, offset: 448)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DISubroutineType(types: !1039)
!1039 = !{!85, !991, !1040}
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !14, line: 1858, size: 128, elements: !1042)
!1042 = !{!1043, !1048}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !1041, file: !14, line: 1859, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !14, line: 1855, baseType: !1045)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DISubroutineType(types: !1047)
!1047 = !{!863, !1040, !171, !85, !493, !405, !7}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !1041, file: !14, line: 1860, baseType: !493, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !984, file: !14, line: 1924, baseType: !1050, size: 64, offset: 512)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DISubroutineType(types: !1052)
!1052 = !{!1053, !991, !1055}
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1054, line: 59, baseType: !7)
!1054 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !14, line: 61, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !984, file: !14, line: 1925, baseType: !1058, size: 64, offset: 576)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DISubroutineType(types: !1060)
!1060 = !{!288, !991, !7, !302}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !984, file: !14, line: 1926, baseType: !1058, size: 64, offset: 640)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !984, file: !14, line: 1927, baseType: !1063, size: 64, offset: 704)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!85, !991, !1066}
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1068, line: 625, size: 1344, elements: !1069)
!1068 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1069 = !{!1070, !1079, !1247, !1253, !1260, !1261, !1266, !1267, !1272, !1273, !1276, !1280, !1281, !1282, !1283, !1284, !1287}
!1070 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !1068, line: 628, baseType: !1071, size: 128)
!1071 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !1068, line: 628, size: 128, elements: !1072)
!1072 = !{!1073, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, scope: !1071, file: !1068, line: 629, baseType: !1074, size: 128)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1071, file: !1068, line: 629, size: 128, elements: !1075)
!1075 = !{!1076, !1077}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1074, file: !1068, line: 631, baseType: !302, size: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1074, file: !1068, line: 632, baseType: !302, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1071, file: !1068, line: 635, baseType: !674, size: 128, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1067, file: !1068, line: 639, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1068, line: 733, size: 10240, elements: !1082)
!1082 = !{!1083, !1245}
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1081, file: !1068, line: 734, baseType: !1084, size: 10240)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1068, line: 734, size: 10240, elements: !1085)
!1085 = !{!1086, !1090, !1103, !1107, !1108, !1109, !1110, !1111, !1112, !1121, !1122, !1123, !1129, !1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1162, !1164, !1167, !1214, !1215, !1216, !1219, !1220, !1221, !1224, !1225, !1226, !1232, !1233}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !1068, line: 739, baseType: !1087, size: 512, align: 512)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !1068, line: 739, size: 512, align: 512, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1087, file: !1068, line: 747, baseType: !202, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1084, file: !1068, line: 750, baseType: !1091, size: 128, offset: 512)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1092, line: 218, size: 128, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1093 = !{!1094, !1101, !1102}
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !1092, line: 219, baseType: !1095, size: 32)
!1095 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !1092, line: 219, size: 32, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1095, file: !1092, line: 220, baseType: !182, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1095, file: !1092, line: 221, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1092, line: 197, baseType: !1100)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1092, line: 197, elements: !535)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1091, file: !1092, line: 223, baseType: !7, size: 32, offset: 32)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1091, file: !1092, line: 224, baseType: !146, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1084, file: !1068, line: 752, baseType: !1104, size: 64, offset: 640)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!302, !991, !302, !302, !302, !302}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1084, file: !1068, line: 756, baseType: !302, size: 64, offset: 704)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1084, file: !1068, line: 757, baseType: !302, size: 64, offset: 768)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1084, file: !1068, line: 760, baseType: !302, size: 64, offset: 832)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1084, file: !1068, line: 761, baseType: !302, size: 64, offset: 896)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1084, file: !1068, line: 763, baseType: !302, size: 64, offset: 960)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1084, file: !1068, line: 764, baseType: !1113, size: 64, offset: 1024)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1115, line: 299, baseType: !1116)
!1115 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1115, line: 299, size: 64, elements: !1117)
!1117 = !{!1118}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1116, file: !1115, line: 299, baseType: !1119, size: 64)
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1120, line: 18, baseType: !302)
!1120 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1084, file: !1068, line: 773, baseType: !202, size: 32, offset: 1088)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1084, file: !1068, line: 785, baseType: !202, size: 32, offset: 1120)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1084, file: !1068, line: 795, baseType: !1124, size: 64, offset: 1152)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1068, line: 726, size: 128, elements: !1126)
!1126 = !{!1127, !1128}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1125, file: !1068, line: 727, baseType: !405, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1125, file: !1068, line: 728, baseType: !85, size: 32, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1084, file: !1068, line: 801, baseType: !302, size: 64, offset: 1216)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1084, file: !1068, line: 804, baseType: !620, size: 64, offset: 1280)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1084, file: !1068, line: 806, baseType: !85, size: 32, offset: 1344)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1084, file: !1068, line: 808, baseType: !182, size: 32, offset: 1376)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1084, file: !1068, line: 823, baseType: !804, size: 320, offset: 1408)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1084, file: !1068, line: 825, baseType: !152, size: 128, offset: 1728)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1084, file: !1068, line: 845, baseType: !85, size: 32, offset: 1856)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1084, file: !1068, line: 849, baseType: !302, size: 64, offset: 1920)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1084, file: !1068, line: 850, baseType: !302, size: 64, offset: 1984)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1084, file: !1068, line: 852, baseType: !302, size: 64, offset: 2048)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1084, file: !1068, line: 853, baseType: !302, size: 64, offset: 2112)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1084, file: !1068, line: 854, baseType: !622, size: 64, offset: 2176)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1084, file: !1068, line: 855, baseType: !302, size: 64, offset: 2240)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1084, file: !1068, line: 856, baseType: !302, size: 64, offset: 2304)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1084, file: !1068, line: 857, baseType: !302, size: 64, offset: 2368)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1084, file: !1068, line: 858, baseType: !302, size: 64, offset: 2432)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1084, file: !1068, line: 865, baseType: !378, size: 32, offset: 2496)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1084, file: !1068, line: 867, baseType: !182, size: 32, offset: 2528)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1084, file: !1068, line: 869, baseType: !302, size: 64, offset: 2560)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1084, file: !1068, line: 869, baseType: !302, size: 64, offset: 2624)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1084, file: !1068, line: 869, baseType: !302, size: 64, offset: 2688)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1084, file: !1068, line: 869, baseType: !302, size: 64, offset: 2752)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1084, file: !1068, line: 870, baseType: !302, size: 64, offset: 2816)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1084, file: !1068, line: 870, baseType: !302, size: 64, offset: 2880)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1084, file: !1068, line: 870, baseType: !302, size: 64, offset: 2944)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1084, file: !1068, line: 871, baseType: !302, size: 64, offset: 3008)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1084, file: !1068, line: 871, baseType: !302, size: 64, offset: 3072)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1084, file: !1068, line: 871, baseType: !302, size: 64, offset: 3136)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1084, file: !1068, line: 871, baseType: !302, size: 64, offset: 3200)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1084, file: !1068, line: 873, baseType: !1159, size: 3328, offset: 3264)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 3328, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 52)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1084, file: !1068, line: 875, baseType: !1163, size: 1280, offset: 6592)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !921, size: 1280, elements: !728)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1084, file: !1068, line: 877, baseType: !1165, size: 64, offset: 7872)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1068, line: 877, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1084, file: !1068, line: 880, baseType: !1168, size: 1088, offset: 7936)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1169, line: 72, baseType: !1170)
!1169 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1169, line: 23, size: 1088, elements: !1171)
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1179, !1180, !1181, !1182, !1209, !1210, !1211}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1170, file: !1169, line: 28, baseType: !405, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1170, file: !1169, line: 38, baseType: !622, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1170, file: !1169, line: 40, baseType: !302, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1170, file: !1169, line: 43, baseType: !804, size: 320, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1170, file: !1169, line: 44, baseType: !1177, size: 64, offset: 512)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1169, line: 44, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !1169, line: 48, baseType: !302, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1170, file: !1169, line: 59, baseType: !616, size: 256, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1170, file: !1169, line: 60, baseType: !146, size: 64, offset: 896)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1170, file: !1169, line: 61, baseType: !1183, size: 64, offset: 960)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1185)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1186, line: 13, size: 1216, elements: !1187)
!1186 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1185, file: !1186, line: 14, baseType: !146, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1185, file: !1186, line: 15, baseType: !302, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1185, file: !1186, line: 17, baseType: !302, size: 64, offset: 128)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1185, file: !1186, line: 17, baseType: !302, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1185, file: !1186, line: 18, baseType: !302, size: 64, offset: 256)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1185, file: !1186, line: 18, baseType: !302, size: 64, offset: 320)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1185, file: !1186, line: 19, baseType: !1195, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1185, file: !1186, line: 21, baseType: !288, size: 64, offset: 448)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1185, file: !1186, line: 23, baseType: !288, size: 64, offset: 512)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1185, file: !1186, line: 24, baseType: !288, size: 64, offset: 576)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1185, file: !1186, line: 25, baseType: !288, size: 64, offset: 640)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1185, file: !1186, line: 26, baseType: !288, size: 64, offset: 704)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1185, file: !1186, line: 27, baseType: !288, size: 64, offset: 768)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1185, file: !1186, line: 28, baseType: !288, size: 64, offset: 832)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1185, file: !1186, line: 29, baseType: !288, size: 64, offset: 896)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1185, file: !1186, line: 30, baseType: !288, size: 64, offset: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1185, file: !1186, line: 31, baseType: !288, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1185, file: !1186, line: 32, baseType: !288, size: 64, offset: 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1185, file: !1186, line: 33, baseType: !288, size: 64, offset: 1152)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1170, file: !1169, line: 63, baseType: !202, size: 32, offset: 1024)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1170, file: !1169, line: 69, baseType: !220, size: 16, offset: 1056)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1170, file: !1169, line: 70, baseType: !1212, size: 16, offset: 1072)
!1212 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !211, line: 18, baseType: !1213)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !213, line: 23, baseType: !832)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1084, file: !1068, line: 882, baseType: !302, size: 64, offset: 9024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1084, file: !1068, line: 885, baseType: !182, size: 32, offset: 9088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1084, file: !1068, line: 886, baseType: !1217, size: 64, offset: 9152)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1068, line: 732, flags: DIFlagFwdDecl)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1084, file: !1068, line: 901, baseType: !946, size: 64, offset: 9216)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1084, file: !1068, line: 904, baseType: !991, size: 64, offset: 9280)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1084, file: !1068, line: 906, baseType: !1222, size: 64, offset: 9344)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1068, line: 906, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1084, file: !1068, line: 930, baseType: !202, size: 32, offset: 9408)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1084, file: !1068, line: 933, baseType: !202, size: 32, offset: 9440)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1084, file: !1068, line: 935, baseType: !1227, size: 64, offset: 9472)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !44, line: 103, size: 64, elements: !1228)
!1228 = !{!1229}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1227, file: !44, line: 104, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !44, line: 101, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1084, file: !1068, line: 940, baseType: !620, size: 64, offset: 9536)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1084, file: !1068, line: 942, baseType: !1234, size: 256, offset: 9600)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1235, line: 98, size: 256, elements: !1236)
!1235 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1236 = !{!1237, !1238, !1239}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1234, file: !1235, line: 99, baseType: !620, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1234, file: !1235, line: 100, baseType: !152, size: 128, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1234, file: !1235, line: 101, baseType: !1240, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1235, line: 21, baseType: !1241)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{null, !1244}
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1081, file: !1068, line: 986, baseType: !1246, offset: 10240)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, elements: !747)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1067, file: !1068, line: 640, baseType: !1248, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1115, line: 297, baseType: !1249)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1115, line: 297, size: 64, elements: !1250)
!1250 = !{!1251}
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1249, file: !1115, line: 297, baseType: !1252, size: 64)
!1252 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1120, line: 19, baseType: !302)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1067, file: !1068, line: 646, baseType: !1254, size: 64, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1067, file: !1068, line: 646, size: 64, elements: !1255)
!1255 = !{!1256, !1259}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1254, file: !1068, line: 647, baseType: !1257, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1258)
!1258 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1068, line: 542, baseType: !302)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1254, file: !1068, line: 648, baseType: !1258, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1067, file: !1068, line: 666, baseType: !85, size: 32, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1067, file: !1068, line: 667, baseType: !1262, size: 64, offset: 384)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1068, line: 579, size: 320, elements: !1264)
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1263, file: !1068, line: 580, baseType: !804, size: 320)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1067, file: !1068, line: 670, baseType: !863, size: 8, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1067, file: !1068, line: 681, baseType: !1268, size: 256, offset: 512)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1067, file: !1068, line: 678, size: 256, elements: !1269)
!1269 = !{!1270, !1271}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1268, file: !1068, line: 679, baseType: !796, size: 192, align: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1268, file: !1068, line: 680, baseType: !302, size: 64, offset: 192)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1067, file: !1068, line: 689, baseType: !152, size: 128, offset: 768)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1067, file: !1068, line: 691, baseType: !1274, size: 64, offset: 896)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1068, line: 691, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1067, file: !1068, line: 694, baseType: !1277, size: 64, offset: 960)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1068, line: 694, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1067, file: !1068, line: 697, baseType: !302, size: 64, offset: 1024)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1067, file: !1068, line: 699, baseType: !991, size: 64, offset: 1088)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1067, file: !1068, line: 700, baseType: !146, size: 64, offset: 1152)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1067, file: !1068, line: 711, baseType: !620, size: 64, offset: 1216)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1067, file: !1068, line: 717, baseType: !1285, size: 64, offset: 1280)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1068, line: 717, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1067, file: !1068, line: 722, baseType: !1288, offset: 1344)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1068, line: 570, elements: !535)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !984, file: !14, line: 1928, baseType: !302, size: 64, offset: 768)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !984, file: !14, line: 1929, baseType: !1291, size: 64, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!85, !332, !991}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !984, file: !14, line: 1930, baseType: !1295, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DISubroutineType(types: !1297)
!1297 = !{!85, !991, !1298}
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !14, line: 1061, baseType: !146)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !984, file: !14, line: 1931, baseType: !1291, size: 64, offset: 960)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !984, file: !14, line: 1932, baseType: !1301, size: 64, offset: 1024)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DISubroutineType(types: !1303)
!1303 = !{!85, !991, !493, !493, !85}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !984, file: !14, line: 1933, baseType: !1305, size: 64, offset: 1088)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!85, !85, !991, !85}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !984, file: !14, line: 1934, baseType: !1309, size: 64, offset: 1152)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!85, !991, !85, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !14, line: 1063, flags: DIFlagFwdDecl)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !984, file: !14, line: 1935, baseType: !1104, size: 64, offset: 1216)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !984, file: !14, line: 1936, baseType: !1316, size: 64, offset: 1280)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!85, !85}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !984, file: !14, line: 1937, baseType: !1309, size: 64, offset: 1344)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !984, file: !14, line: 1938, baseType: !1321, size: 64, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!284, !1324, !991, !645, !299, !7}
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1326, line: 59, flags: DIFlagFwdDecl)
!1326 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !984, file: !14, line: 1939, baseType: !1328, size: 64, offset: 1472)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!284, !991, !645, !1324, !299, !7}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !984, file: !14, line: 1940, baseType: !1332, size: 64, offset: 1536)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{null, !991}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !984, file: !14, line: 1941, baseType: !1336, size: 64, offset: 1600)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!85, !991, !85, !1339, !1340}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !984, file: !14, line: 1942, baseType: !1342, size: 64, offset: 1664)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!288, !991, !85, !493, !493}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !984, file: !14, line: 1944, baseType: !1346, size: 64, offset: 1728)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = !DISubroutineType(types: !1348)
!1348 = !{null, !604, !991}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !984, file: !14, line: 1948, baseType: !1350, size: 64, offset: 1792)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DISubroutineType(types: !1352)
!1352 = !{!284, !991, !493, !991, !493, !299, !7}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !984, file: !14, line: 1950, baseType: !1354, size: 64, offset: 1856)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!493, !991, !493, !991, !493, !493, !7}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !984, file: !14, line: 1953, baseType: !1301, size: 64, offset: 1920)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !984, file: !14, line: 1954, baseType: !1359, size: 64, offset: 1984)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{!85, !1362, !7}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !14, line: 1911, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !984, file: !14, line: 1955, baseType: !1365, size: 64, offset: 2048)
!1365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1366, size: 64)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{!85, !1362, !1034, !7}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !662, file: !14, line: 1018, baseType: !405, size: 64, offset: 1472)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !662, file: !14, line: 1020, baseType: !146, size: 64, offset: 1536)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !662, file: !14, line: 1023, baseType: !146, size: 64, offset: 1600)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !662, file: !14, line: 1027, baseType: !1372, size: 64, offset: 1664)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !662, file: !14, line: 1029, baseType: !328, size: 64, offset: 1728)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !662, file: !14, line: 1030, baseType: !1375, size: 32, offset: 1792)
!1375 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1376, line: 8, baseType: !401)
!1376 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !662, file: !14, line: 1031, baseType: !1375, size: 32, offset: 1824)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !605, file: !606, line: 29, baseType: !146, size: 64, offset: 896)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !547, file: !14, line: 2077, baseType: !601, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !547, file: !14, line: 2078, baseType: !601, size: 64, offset: 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !547, file: !14, line: 2079, baseType: !601, size: 64, offset: 1216)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !547, file: !14, line: 2081, baseType: !1383, size: 64, offset: 1280)
!1383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1384, size: 64)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!284, !483, !85, !252, !299, !493}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !547, file: !14, line: 2082, baseType: !1387, size: 64, offset: 1344)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!284, !483, !85, !171, !299, !493}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !547, file: !14, line: 2083, baseType: !1391, size: 64, offset: 1408)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!1394, !332}
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !27, line: 296, size: 1664, elements: !1397)
!1397 = !{!1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1422, !1423, !1424}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !1396, file: !27, line: 297, baseType: !527, size: 128)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !1396, file: !27, line: 298, baseType: !152, size: 128, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !1396, file: !27, line: 299, baseType: !152, size: 128, offset: 256)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !1396, file: !27, line: 300, baseType: !152, size: 128, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !1396, file: !27, line: 301, baseType: !616, size: 256, offset: 512)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !1396, file: !27, line: 302, baseType: !182, size: 32, offset: 768)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !1396, file: !27, line: 303, baseType: !202, size: 32, offset: 800)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !1396, file: !27, line: 304, baseType: !483, size: 64, offset: 832)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !1396, file: !27, line: 305, baseType: !1407, size: 64, offset: 896)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !27, line: 68, size: 64, elements: !1408)
!1408 = !{!1409, !1421}
!1409 = !DIDerivedType(tag: DW_TAG_member, scope: !1407, file: !27, line: 69, baseType: !1410, size: 32)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1407, file: !27, line: 69, size: 32, elements: !1411)
!1411 = !{!1412, !1413, !1414}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1410, file: !27, line: 70, baseType: !338, size: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1410, file: !27, line: 71, baseType: !347, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !1410, file: !27, line: 72, baseType: !1415, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !1416, line: 24, baseType: !1417)
!1416 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1416, line: 22, size: 32, elements: !1418)
!1418 = !{!1419}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1417, file: !1416, line: 23, baseType: !1420, size: 32)
!1420 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !1416, line: 20, baseType: !344)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1407, file: !27, line: 74, baseType: !26, size: 32, offset: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !1396, file: !27, line: 306, baseType: !493, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !1396, file: !27, line: 307, baseType: !302, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !1396, file: !27, line: 308, baseType: !1425, size: 576, offset: 1088)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !27, line: 205, size: 576, elements: !1426)
!1426 = !{!1427, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !1425, file: !27, line: 206, baseType: !1428, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !27, line: 66, baseType: !495)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !1425, file: !27, line: 207, baseType: !1428, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !1425, file: !27, line: 208, baseType: !1428, size: 64, offset: 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !1425, file: !27, line: 209, baseType: !1428, size: 64, offset: 192)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !1425, file: !27, line: 210, baseType: !1428, size: 64, offset: 256)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !1425, file: !27, line: 211, baseType: !1428, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !1425, file: !27, line: 212, baseType: !1428, size: 64, offset: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !1425, file: !27, line: 213, baseType: !820, size: 64, offset: 448)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !1425, file: !27, line: 214, baseType: !820, size: 64, offset: 512)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !547, file: !14, line: 2085, baseType: !1438, size: 64, offset: 1472)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!288, !483, !1441}
!1441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1442, size: 64)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !1443, line: 15, size: 256, elements: !1444)
!1443 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!1444 = !{!1445, !1447, !1448, !1449, !1450}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1442, file: !1443, line: 16, baseType: !1446, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !153, line: 154, baseType: !7)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !1442, file: !1443, line: 19, baseType: !85, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !1442, file: !1443, line: 26, baseType: !302, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !1442, file: !1443, line: 33, baseType: !302, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !1442, file: !1443, line: 36, baseType: !1451, size: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !1443, line: 36, flags: DIFlagFwdDecl)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !547, file: !14, line: 2087, baseType: !1438, size: 64, offset: 1536)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !547, file: !14, line: 2089, baseType: !517, size: 64, offset: 1600)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !484, file: !14, line: 1198, baseType: !1456, size: 64, offset: 448)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !27, line: 324, size: 704, elements: !1459)
!1459 = !{!1460, !1464, !1468, !1472, !1473, !1474, !1475, !1476, !1481, !1486, !1490}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !1458, file: !27, line: 325, baseType: !1461, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!85, !1395}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !1458, file: !27, line: 326, baseType: !1465, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1466, size: 64)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!1395, !483, !85}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !1458, file: !27, line: 327, baseType: !1469, size: 64, offset: 128)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{null, !1395}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !1458, file: !27, line: 328, baseType: !1461, size: 64, offset: 192)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !1458, file: !27, line: 329, baseType: !1461, size: 64, offset: 256)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !1458, file: !27, line: 330, baseType: !1461, size: 64, offset: 320)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !1458, file: !27, line: 331, baseType: !575, size: 64, offset: 384)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !1458, file: !27, line: 334, baseType: !1477, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{!1480, !332}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !1458, file: !27, line: 335, baseType: !1482, size: 64, offset: 512)
!1482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1483, size: 64)
!1483 = !DISubroutineType(types: !1484)
!1484 = !{!85, !332, !1485}
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !1458, file: !27, line: 337, baseType: !1487, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!85, !332, !1480}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1458, file: !27, line: 339, baseType: !1491, size: 64, offset: 640)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!85, !483, !1494}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !484, file: !14, line: 1199, baseType: !1496, size: 64, offset: 512)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1498)
!1498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !27, line: 430, size: 704, elements: !1499)
!1499 = !{!1500, !1506, !1507, !1511, !1512, !1513, !1528, !1551, !1555, !1556, !1579}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !1498, file: !27, line: 431, baseType: !1501, size: 64)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!85, !483, !85, !85, !1504}
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !1498, file: !27, line: 432, baseType: !575, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !1498, file: !27, line: 433, baseType: !1508, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!85, !483, !7}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !1498, file: !27, line: 434, baseType: !1508, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !1498, file: !27, line: 435, baseType: !575, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !1498, file: !27, line: 436, baseType: !1514, size: 64, offset: 320)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!85, !483, !85, !1517}
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !27, line: 417, size: 256, elements: !1519)
!1519 = !{!1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !1518, file: !27, line: 418, baseType: !85, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !1518, file: !27, line: 419, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !1518, file: !27, line: 420, baseType: !7, size: 32, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !1518, file: !27, line: 422, baseType: !7, size: 32, offset: 96)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !1518, file: !27, line: 423, baseType: !7, size: 32, offset: 128)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !1518, file: !27, line: 424, baseType: !7, size: 32, offset: 160)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !1518, file: !27, line: 425, baseType: !7, size: 32, offset: 192)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !1518, file: !27, line: 426, baseType: !7, size: 32, offset: 224)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !1498, file: !27, line: 437, baseType: !1529, size: 64, offset: 384)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!85, !483, !1407, !1532}
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !27, line: 345, size: 960, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !1533, file: !27, line: 346, baseType: !85, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !1533, file: !27, line: 347, baseType: !405, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !1533, file: !27, line: 348, baseType: !405, size: 64, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !1533, file: !27, line: 349, baseType: !405, size: 64, offset: 192)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !1533, file: !27, line: 350, baseType: !405, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !1533, file: !27, line: 351, baseType: !405, size: 64, offset: 320)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !1533, file: !27, line: 352, baseType: !405, size: 64, offset: 384)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !1533, file: !27, line: 353, baseType: !626, size: 64, offset: 448)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !1533, file: !27, line: 355, baseType: !626, size: 64, offset: 512)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !1533, file: !27, line: 356, baseType: !85, size: 32, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !1533, file: !27, line: 357, baseType: !85, size: 32, offset: 608)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !1533, file: !27, line: 358, baseType: !405, size: 64, offset: 640)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !1533, file: !27, line: 359, baseType: !405, size: 64, offset: 704)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !1533, file: !27, line: 360, baseType: !405, size: 64, offset: 768)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !1533, file: !27, line: 361, baseType: !626, size: 64, offset: 832)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !1533, file: !27, line: 362, baseType: !85, size: 32, offset: 896)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !1498, file: !27, line: 438, baseType: !1552, size: 64, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!85, !483, !1494, !1532}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !1498, file: !27, line: 440, baseType: !1529, size: 64, offset: 512)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !1498, file: !27, line: 441, baseType: !1557, size: 64, offset: 576)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DISubroutineType(types: !1559)
!1559 = !{!85, !483, !1560}
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !27, line: 411, size: 1408, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !1561, file: !27, line: 412, baseType: !7, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !1561, file: !27, line: 413, baseType: !1565, size: 1344, offset: 64)
!1565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1566, size: 1344, elements: !253)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !27, line: 397, size: 448, elements: !1567)
!1567 = !{!1568, !1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1578}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !27, line: 398, baseType: !7, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !1566, file: !27, line: 399, baseType: !7, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !1566, file: !27, line: 401, baseType: !7, size: 32, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !1566, file: !27, line: 402, baseType: !7, size: 32, offset: 96)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !1566, file: !27, line: 403, baseType: !7, size: 32, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !1566, file: !27, line: 404, baseType: !7, size: 32, offset: 160)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !1566, file: !27, line: 405, baseType: !7, size: 32, offset: 192)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1566, file: !27, line: 406, baseType: !407, size: 64, offset: 256)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1566, file: !27, line: 407, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !153, line: 132, baseType: !405)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !1566, file: !27, line: 408, baseType: !1577, size: 64, offset: 384)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !1498, file: !27, line: 442, baseType: !1508, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !484, file: !14, line: 1200, baseType: !1581, size: 64, offset: 576)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !14, line: 54, flags: DIFlagFwdDecl)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !484, file: !14, line: 1201, baseType: !302, size: 64, offset: 640)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !484, file: !14, line: 1202, baseType: !302, size: 64, offset: 704)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !484, file: !14, line: 1203, baseType: !302, size: 64, offset: 768)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !484, file: !14, line: 1204, baseType: !367, size: 64, offset: 832)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !484, file: !14, line: 1205, baseType: !804, size: 320, offset: 896)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !484, file: !14, line: 1206, baseType: !85, size: 32, offset: 1216)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !484, file: !14, line: 1207, baseType: !202, size: 32, offset: 1248)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !484, file: !14, line: 1209, baseType: !146, size: 64, offset: 1280)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !484, file: !14, line: 1211, baseType: !1593, size: 64, offset: 1344)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1596)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !14, line: 1211, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !484, file: !14, line: 1223, baseType: !1598, size: 64, offset: 1408)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !384, line: 34, size: 64, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1598, file: !384, line: 35, baseType: !387, size: 64)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !484, file: !14, line: 1224, baseType: !152, size: 128, offset: 1472)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !484, file: !14, line: 1225, baseType: !1603, size: 64, offset: 1600)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !14, line: 1225, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !484, file: !14, line: 1226, baseType: !1606, size: 64, offset: 1664)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !14, line: 1226, flags: DIFlagFwdDecl)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !484, file: !14, line: 1227, baseType: !1609, size: 64, offset: 1728)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !14, line: 50, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !484, file: !14, line: 1228, baseType: !1612, size: 64, offset: 1792)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !14, line: 1228, flags: DIFlagFwdDecl)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !484, file: !14, line: 1229, baseType: !527, size: 128, offset: 1856)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !484, file: !14, line: 1230, baseType: !7, size: 32, offset: 1984)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !484, file: !14, line: 1231, baseType: !1617, size: 2496, offset: 2048)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !27, line: 521, size: 2496, elements: !1618)
!1618 = !{!1619, !1620, !1621, !1623, !1655}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1617, file: !27, line: 522, baseType: !7, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !1617, file: !27, line: 523, baseType: !804, size: 320, offset: 64)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1617, file: !27, line: 524, baseType: !1622, size: 192, offset: 384)
!1622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !332, size: 192, elements: !253)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1617, file: !27, line: 525, baseType: !1624, size: 1728, offset: 576)
!1624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1625, size: 1728, elements: !253)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !27, line: 222, size: 576, elements: !1626)
!1626 = !{!1627, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !1625, file: !27, line: 223, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !27, line: 445, size: 256, elements: !1630)
!1630 = !{!1631, !1632, !1645, !1646}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !1629, file: !27, line: 446, baseType: !85, size: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !1629, file: !27, line: 447, baseType: !1633, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !27, line: 312, size: 512, elements: !1636)
!1636 = !{!1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !1635, file: !27, line: 313, baseType: !575, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !1635, file: !27, line: 314, baseType: !575, size: 64, offset: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !1635, file: !27, line: 315, baseType: !575, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !1635, file: !27, line: 316, baseType: !575, size: 64, offset: 192)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !1635, file: !27, line: 317, baseType: !1461, size: 64, offset: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !1635, file: !27, line: 318, baseType: !1461, size: 64, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !1635, file: !27, line: 319, baseType: !1461, size: 64, offset: 384)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !1635, file: !27, line: 320, baseType: !1491, size: 64, offset: 448)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !1629, file: !27, line: 448, baseType: !147, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !1629, file: !27, line: 449, baseType: !1628, size: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !1625, file: !27, line: 224, baseType: !85, size: 32, offset: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !1625, file: !27, line: 226, baseType: !152, size: 128, offset: 128)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !1625, file: !27, line: 227, baseType: !302, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !1625, file: !27, line: 228, baseType: !7, size: 32, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !1625, file: !27, line: 229, baseType: !7, size: 32, offset: 352)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !1625, file: !27, line: 230, baseType: !1428, size: 64, offset: 384)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !1625, file: !27, line: 231, baseType: !1428, size: 64, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !1625, file: !27, line: 232, baseType: !146, size: 64, offset: 512)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1617, file: !27, line: 526, baseType: !1656, size: 192, offset: 2304)
!1656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1633, size: 192, elements: !253)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !484, file: !14, line: 1233, baseType: !1658, size: 2368, offset: 4544)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !14, line: 1184, size: 2368, elements: !1659)
!1659 = !{!1660, !1661, !1662}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1658, file: !14, line: 1185, baseType: !222, size: 16)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !1658, file: !14, line: 1186, baseType: !222, size: 16, offset: 16)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !1658, file: !14, line: 1187, baseType: !1663, size: 2304, offset: 64)
!1663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1664, size: 2304, elements: !253)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !1665, line: 12, size: 768, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!1666 = !{!1667, !1675, !1677, !2959, !2960}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !1664, file: !1665, line: 13, baseType: !1668, size: 384)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !1669, line: 17, size: 384, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!1670 = !{!1671, !1672, !1673, !1674}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !1668, file: !1669, line: 18, baseType: !85, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !1668, file: !1669, line: 19, baseType: !85, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !1668, file: !1669, line: 20, baseType: !732, size: 192, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !1668, file: !1669, line: 22, baseType: !674, size: 128, align: 64, offset: 256)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !1664, file: !1665, line: 14, baseType: !1676, size: 64, offset: 384)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !1664, file: !1665, line: 15, baseType: !1678, size: 64, offset: 448)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !1679, line: 16, size: 64, elements: !1680)
!1679 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!1680 = !{!1681}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !1678, file: !1679, line: 17, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !1326, line: 746, size: 58368, elements: !1684)
!1684 = !{!1685, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1765, !1776, !1871, !1875, !1878, !1909, !1910, !1911, !1912, !1923, !1925, !1926, !1927, !1928, !1929, !1930, !1941, !1942, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1959, !1960, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !2048, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2063, !2064, !2065, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2107, !2113, !2114, !2115, !2116, !2117, !2121, !2124, !2131, !2136, !2139, !2142, !2145, !2148, !2288, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2328, !2329, !2330, !2339, !2347, !2348, !2349, !2350, !2351, !2356, !2357, !2358, !2361, !2362, !2365, !2368, !2371, !2379, !2382, !2383, !2469, !2470, !2471, !2472, !2473, !2479, !2480, !2481, !2482, !2485, !2486, !2489, !2492, !2493, !2496, !2497, !2498, !2501, !2502, !2503, !2504, !2505, !2506, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2538, !2539, !2605, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2617, !2689, !2691, !2692, !2693, !2694, !2695, !2707, !2722, !2723, !2724, !2725, !2726, !2727, !2728, !2729, !2730, !2731, !2732, !2736, !2737, !2738}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !1683, file: !1326, line: 752, baseType: !1686, size: 192)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !1687, line: 56, size: 192, elements: !1688)
!1687 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1686, file: !1687, line: 57, baseType: !302, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !1686, file: !1687, line: 58, baseType: !302, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1686, file: !1687, line: 59, baseType: !401, size: 32, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1686, file: !1687, line: 61, baseType: !401, size: 32, offset: 160)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !1683, file: !1326, line: 754, baseType: !7, size: 32, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !1683, file: !1326, line: 767, baseType: !146, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1683, file: !1326, line: 768, baseType: !719, size: 32, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1683, file: !1326, line: 770, baseType: !7, size: 32, offset: 352)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !1683, file: !1326, line: 771, baseType: !7, size: 32, offset: 384)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !1683, file: !1326, line: 774, baseType: !85, size: 32, offset: 416)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !1683, file: !1326, line: 775, baseType: !1700, size: 128, offset: 448)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !1701, line: 58, size: 128, elements: !1702)
!1701 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!1702 = !{!1703, !1704, !1709, !1710}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !1700, file: !1701, line: 59, baseType: !668, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, scope: !1700, file: !1701, line: 60, baseType: !1705, size: 32, offset: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1700, file: !1701, line: 60, size: 32, elements: !1706)
!1706 = !{!1707, !1708}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !1705, file: !1701, line: 61, baseType: !7, size: 32)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !1705, file: !1701, line: 62, baseType: !202, size: 32)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !1700, file: !1701, line: 65, baseType: !220, size: 16, offset: 96)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !1700, file: !1701, line: 65, baseType: !220, size: 16, offset: 112)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !1683, file: !1326, line: 776, baseType: !7, size: 32, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !1683, file: !1326, line: 777, baseType: !302, size: 64, offset: 640)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !1683, file: !1326, line: 778, baseType: !1682, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !1683, file: !1326, line: 787, baseType: !85, size: 32, offset: 768)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !1683, file: !1326, line: 788, baseType: !85, size: 32, offset: 800)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1683, file: !1326, line: 790, baseType: !85, size: 32, offset: 832)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1683, file: !1326, line: 792, baseType: !85, size: 32, offset: 864)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !1683, file: !1326, line: 793, baseType: !85, size: 32, offset: 896)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !1683, file: !1326, line: 794, baseType: !85, size: 32, offset: 928)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !1683, file: !1326, line: 795, baseType: !7, size: 32, offset: 960)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !1683, file: !1326, line: 797, baseType: !1722, size: 2048, offset: 1024)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !1326, line: 551, size: 2048, elements: !1723)
!1723 = !{!1724, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1744, !1747, !1748, !1749}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !1722, file: !1326, line: 553, baseType: !1725, size: 128)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !1326, line: 411, size: 128, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !1725, file: !1326, line: 412, baseType: !302, size: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !1725, file: !1326, line: 413, baseType: !401, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !1722, file: !1326, line: 554, baseType: !796, size: 192, align: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1722, file: !1326, line: 555, baseType: !405, size: 64, offset: 320)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !1722, file: !1326, line: 556, baseType: !405, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !1722, file: !1326, line: 558, baseType: !152, size: 128, offset: 448)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1722, file: !1326, line: 559, baseType: !7, size: 32, offset: 576)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !1722, file: !1326, line: 561, baseType: !405, size: 64, offset: 640)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !1722, file: !1326, line: 562, baseType: !405, size: 64, offset: 704)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !1722, file: !1326, line: 563, baseType: !405, size: 64, offset: 768)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !1722, file: !1326, line: 564, baseType: !405, size: 64, offset: 832)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !1722, file: !1326, line: 565, baseType: !626, size: 64, offset: 896)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !1722, file: !1326, line: 566, baseType: !405, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !1722, file: !1326, line: 568, baseType: !405, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !1722, file: !1326, line: 571, baseType: !85, size: 32, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1722, file: !1326, line: 572, baseType: !1743, size: 64, offset: 1152)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !1722, file: !1326, line: 574, baseType: !1745, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !1326, line: 49, flags: DIFlagFwdDecl)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !1722, file: !1326, line: 576, baseType: !1745, size: 64, offset: 1280)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !1722, file: !1326, line: 578, baseType: !302, size: 64, offset: 1344)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !1722, file: !1326, line: 588, baseType: !1750, size: 512, align: 512, offset: 1536)
!1750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !1326, line: 497, size: 512, align: 512, elements: !1751)
!1751 = !{!1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !1750, file: !1326, line: 498, baseType: !405, size: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !1750, file: !1326, line: 499, baseType: !405, size: 64, offset: 64)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !1750, file: !1326, line: 500, baseType: !405, size: 64, offset: 128)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !1750, file: !1326, line: 501, baseType: !401, size: 32, offset: 192)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !1750, file: !1326, line: 502, baseType: !401, size: 32, offset: 224)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !1750, file: !1326, line: 503, baseType: !302, size: 64, offset: 256)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !1750, file: !1326, line: 504, baseType: !302, size: 64, offset: 320)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !1750, file: !1326, line: 505, baseType: !302, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !1750, file: !1326, line: 506, baseType: !1761, size: 64, align: 64, offset: 448)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !1326, line: 445, size: 64, align: 64, elements: !1762)
!1762 = !{!1763, !1764}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !1761, file: !1326, line: 446, baseType: !7, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !1761, file: !1326, line: 447, baseType: !7, size: 32, offset: 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !1683, file: !1326, line: 798, baseType: !1766, size: 384, offset: 3072)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !1326, line: 592, size: 384, elements: !1767)
!1767 = !{!1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !1766, file: !1326, line: 593, baseType: !152, size: 128)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !1766, file: !1326, line: 594, baseType: !302, size: 64, offset: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !1766, file: !1326, line: 595, baseType: !302, size: 64, offset: 192)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !1766, file: !1326, line: 596, baseType: !7, size: 32, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !1766, file: !1326, line: 597, baseType: !222, size: 16, offset: 288)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !1766, file: !1326, line: 598, baseType: !222, size: 16, offset: 304)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !1766, file: !1326, line: 600, baseType: !1775, size: 64, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !1683, file: !1326, line: 799, baseType: !1777, size: 1792, offset: 3456)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !1326, line: 610, size: 1792, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1868, !1869}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1777, file: !1326, line: 611, baseType: !796, size: 192, align: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !1777, file: !1326, line: 618, baseType: !405, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !1777, file: !1326, line: 619, baseType: !405, size: 64, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !1777, file: !1326, line: 620, baseType: !405, size: 64, offset: 320)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !1777, file: !1326, line: 621, baseType: !405, size: 64, offset: 384)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !1777, file: !1326, line: 622, baseType: !405, size: 64, offset: 448)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !1777, file: !1326, line: 629, baseType: !626, size: 64, offset: 512)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !1777, file: !1326, line: 630, baseType: !405, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1777, file: !1326, line: 631, baseType: !7, size: 32, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !1777, file: !1326, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !1777, file: !1326, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !1777, file: !1326, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !1777, file: !1326, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !1777, file: !1326, line: 662, baseType: !1793, size: 512, offset: 704)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1794)
!1794 = !{!1795, !1803, !1804, !1809, !1864, !1865, !1866, !1867}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1793, file: !33, line: 119, baseType: !1796, size: 256)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1797, line: 9, size: 256, elements: !1798)
!1797 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1798 = !{!1799, !1800}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1796, file: !1797, line: 10, baseType: !796, size: 192, align: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1796, file: !1797, line: 11, baseType: !1801, size: 64, offset: 192)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1802, line: 29, baseType: !626)
!1802 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1793, file: !33, line: 120, baseType: !1801, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1793, file: !33, line: 121, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!32, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1793, file: !33, line: 122, baseType: !1810, size: 64, offset: 384)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1812)
!1812 = !{!1813, !1838, !1839, !1842, !1847, !1848, !1859, !1863}
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1811, file: !33, line: 160, baseType: !1814, size: 64)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1816)
!1816 = !{!1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1815, file: !33, line: 216, baseType: !629, size: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1815, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1815, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1815, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1815, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1815, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1815, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1815, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1815, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1815, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1815, file: !33, line: 227, baseType: !222, size: 16, offset: 192)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1815, file: !33, line: 228, baseType: !222, size: 16, offset: 208)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1815, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1815, file: !33, line: 235, baseType: !1801, size: 64, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1815, file: !33, line: 236, baseType: !1808, size: 64, offset: 320)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1815, file: !33, line: 237, baseType: !1801, size: 64, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1815, file: !33, line: 238, baseType: !1808, size: 64, offset: 448)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1815, file: !33, line: 239, baseType: !1835, size: 4096, align: 512, offset: 512)
!1835 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1811, size: 4096, align: 512, elements: !1836)
!1836 = !{!1837}
!1837 = !DISubrange(count: 8)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1811, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1811, file: !33, line: 162, baseType: !1840, size: 32, offset: 96)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !153, line: 32, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !286, line: 96, baseType: !85)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1811, file: !33, line: 163, baseType: !1843, size: 32, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !374, line: 274, baseType: !1844)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !374, line: 274, size: 32, elements: !1845)
!1845 = !{!1846}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1844, file: !374, line: 274, baseType: !378, size: 32)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1811, file: !33, line: 164, baseType: !1808, size: 64, offset: 192)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1811, file: !33, line: 165, baseType: !1849, size: 128, offset: 256)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1797, line: 14, size: 128, elements: !1850)
!1850 = !{!1851}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1849, file: !1797, line: 15, baseType: !1852, size: 128)
!1852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !797, line: 26, size: 128, elements: !1853)
!1853 = !{!1854, !1858}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1852, file: !797, line: 27, baseType: !1855, size: 64)
!1855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !797, line: 12, size: 64, elements: !1856)
!1856 = !{!1857}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1855, file: !797, line: 13, baseType: !801, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1852, file: !797, line: 28, baseType: !801, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1811, file: !33, line: 166, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!1801}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1811, file: !33, line: 167, baseType: !1801, size: 64, offset: 448)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1793, file: !33, line: 123, baseType: !210, size: 8, offset: 448)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1793, file: !33, line: 124, baseType: !210, size: 8, offset: 456)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1793, file: !33, line: 125, baseType: !210, size: 8, offset: 464)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1793, file: !33, line: 126, baseType: !210, size: 8, offset: 472)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !1777, file: !1326, line: 671, baseType: !1793, size: 512, offset: 1216)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !1777, file: !1326, line: 679, baseType: !1870, size: 64, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !1683, file: !1326, line: 800, baseType: !1872, size: 64, offset: 5248)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !1326, line: 800, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !1683, file: !1326, line: 809, baseType: !1876, size: 64, offset: 5312)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !1326, line: 70, flags: DIFlagFwdDecl)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1683, file: !1326, line: 825, baseType: !1879, size: 2048, align: 512, offset: 5632)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !1326, line: 509, size: 2048, align: 512, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !1879, file: !1326, line: 511, baseType: !405, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !1879, file: !1326, line: 512, baseType: !405, size: 64, offset: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !1879, file: !1326, line: 513, baseType: !405, size: 64, offset: 128)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !1879, file: !1326, line: 514, baseType: !405, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !1879, file: !1326, line: 515, baseType: !405, size: 64, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !1879, file: !1326, line: 516, baseType: !405, size: 64, offset: 320)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !1879, file: !1326, line: 518, baseType: !405, size: 64, offset: 384)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !1879, file: !1326, line: 519, baseType: !405, size: 64, offset: 448)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !1879, file: !1326, line: 520, baseType: !626, size: 64, offset: 512)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !1879, file: !1326, line: 522, baseType: !405, size: 64, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !1879, file: !1326, line: 523, baseType: !405, size: 64, offset: 640)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !1879, file: !1326, line: 524, baseType: !626, size: 64, offset: 704)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !1879, file: !1326, line: 526, baseType: !626, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !1879, file: !1326, line: 527, baseType: !405, size: 64, offset: 832)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !1879, file: !1326, line: 529, baseType: !405, size: 64, offset: 896)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !1879, file: !1326, line: 530, baseType: !405, size: 64, offset: 960)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !1879, file: !1326, line: 531, baseType: !405, size: 64, offset: 1024)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !1879, file: !1326, line: 532, baseType: !405, size: 64, offset: 1088)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !1879, file: !1326, line: 533, baseType: !405, size: 64, offset: 1152)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !1879, file: !1326, line: 535, baseType: !405, size: 64, offset: 1216)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !1879, file: !1326, line: 536, baseType: !405, size: 64, offset: 1280)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !1879, file: !1326, line: 537, baseType: !405, size: 64, offset: 1344)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !1879, file: !1326, line: 538, baseType: !405, size: 64, offset: 1408)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !1879, file: !1326, line: 539, baseType: !405, size: 64, offset: 1472)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !1879, file: !1326, line: 540, baseType: !405, size: 64, offset: 1536)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !1879, file: !1326, line: 541, baseType: !405, size: 64, offset: 1600)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !1879, file: !1326, line: 542, baseType: !405, size: 64, offset: 1664)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !1879, file: !1326, line: 543, baseType: !405, size: 64, offset: 1728)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !1683, file: !1326, line: 833, baseType: !7, size: 32, offset: 7680)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !1683, file: !1326, line: 836, baseType: !7, size: 32, offset: 7712)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !1683, file: !1326, line: 837, baseType: !85, size: 32, offset: 7744)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !1683, file: !1326, line: 838, baseType: !1913, size: 64, offset: 7808)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1915)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !1916, line: 19, baseType: !1917)
!1916 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1916, line: 19, size: 64, elements: !1918)
!1918 = !{!1919}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1917, file: !1916, line: 19, baseType: !1920, size: 64)
!1920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 64, elements: !1921)
!1921 = !{!1922}
!1922 = !DISubrange(count: 1)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !1683, file: !1326, line: 839, baseType: !1924, size: 64, offset: 7872)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !1683, file: !1326, line: 840, baseType: !1915, size: 64, offset: 7936)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !1683, file: !1326, line: 841, baseType: !146, size: 64, offset: 8000)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !1683, file: !1326, line: 843, baseType: !222, size: 16, offset: 8064)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !1683, file: !1326, line: 845, baseType: !222, size: 16, offset: 8080)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !1683, file: !1326, line: 848, baseType: !85, size: 32, offset: 8096)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !1683, file: !1326, line: 849, baseType: !1931, size: 32, offset: 8128)
!1931 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !1326, line: 718, size: 32, elements: !1932)
!1932 = !{!1933, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !1931, file: !1326, line: 724, baseType: !1934, size: 32)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1931, file: !1326, line: 719, size: 32, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1939}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1934, file: !1326, line: 720, baseType: !210, size: 8)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !1934, file: !1326, line: 721, baseType: !210, size: 8, offset: 8)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !1934, file: !1326, line: 722, baseType: !210, size: 8, offset: 16)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !1934, file: !1326, line: 723, baseType: !210, size: 8, offset: 24)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1931, file: !1326, line: 725, baseType: !401, size: 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !1683, file: !1326, line: 850, baseType: !152, size: 128, offset: 8192)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !1683, file: !1326, line: 851, baseType: !1943, size: 64, offset: 8320)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !1326, line: 60, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !1683, file: !1326, line: 855, baseType: !302, size: 64, offset: 8384)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !1683, file: !1326, line: 856, baseType: !210, size: 8, offset: 8448)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !1683, file: !1326, line: 857, baseType: !210, size: 8, offset: 8456)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !1683, file: !1326, line: 858, baseType: !85, size: 32, offset: 8480)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !1683, file: !1326, line: 859, baseType: !152, size: 128, offset: 8512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !1683, file: !1326, line: 860, baseType: !85, size: 32, offset: 8640)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !1683, file: !1326, line: 861, baseType: !152, size: 128, offset: 8704)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !1683, file: !1326, line: 873, baseType: !1953, size: 256, offset: 8832)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !1326, line: 376, size: 256, elements: !1954)
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !1953, file: !1326, line: 381, baseType: !302, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !1953, file: !1326, line: 384, baseType: !407, size: 64, offset: 64)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !1953, file: !1326, line: 389, baseType: !407, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !1953, file: !1326, line: 392, baseType: !407, size: 64, offset: 192)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !1683, file: !1326, line: 875, baseType: !152, size: 128, offset: 9088)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !1683, file: !1326, line: 877, baseType: !1961, size: 320, offset: 9216)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1962, line: 86, size: 320, elements: !1963)
!1962 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1963 = !{!1964, !1965, !1966}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1961, file: !1962, line: 87, baseType: !85, size: 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1961, file: !1962, line: 88, baseType: !152, size: 128, offset: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1961, file: !1962, line: 89, baseType: !152, size: 128, offset: 192)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !1683, file: !1326, line: 878, baseType: !796, size: 192, align: 64, offset: 9536)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !1683, file: !1326, line: 881, baseType: !1080, size: 64, offset: 9728)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !1683, file: !1326, line: 882, baseType: !1080, size: 64, offset: 9792)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !1683, file: !1326, line: 884, baseType: !85, size: 32, offset: 9856)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !1683, file: !1326, line: 885, baseType: !85, size: 32, offset: 9888)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !1683, file: !1326, line: 886, baseType: !85, size: 32, offset: 9920)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !1683, file: !1326, line: 888, baseType: !85, size: 32, offset: 9952)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !1683, file: !1326, line: 890, baseType: !302, size: 64, offset: 9984)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1683, file: !1326, line: 893, baseType: !7, size: 32, offset: 10048)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !1683, file: !1326, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !1683, file: !1326, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !1683, file: !1326, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !1683, file: !1326, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !1683, file: !1326, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !1683, file: !1326, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !1683, file: !1326, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !1683, file: !1326, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !1683, file: !1326, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1683, file: !1326, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !1683, file: !1326, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !1683, file: !1326, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !1683, file: !1326, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !1683, file: !1326, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !1683, file: !1326, line: 969, baseType: !302, size: 64, offset: 10176)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !1683, file: !1326, line: 971, baseType: !1992, size: 448, offset: 10240)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !38, line: 25, size: 448, elements: !1993)
!1993 = !{!1994, !1995, !2000}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !1992, file: !38, line: 26, baseType: !302, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !1992, file: !38, line: 27, baseType: !1996, size: 64, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!288, !1999}
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !38, line: 28, baseType: !2001, size: 320, offset: 128)
!2001 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1992, file: !38, line: 28, size: 320, elements: !2002)
!2002 = !{!2003, !2013, !2038}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2001, file: !38, line: 37, baseType: !2004, size: 320)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !38, line: 30, size: 320, elements: !2005)
!2005 = !{!2006, !2008, !2009, !2010, !2011, !2012}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2004, file: !38, line: 31, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2004, file: !38, line: 32, baseType: !401, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2004, file: !38, line: 33, baseType: !401, size: 32, offset: 96)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2004, file: !38, line: 34, baseType: !401, size: 32, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2004, file: !38, line: 35, baseType: !405, size: 64, offset: 192)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2004, file: !38, line: 36, baseType: !2007, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2001, file: !38, line: 47, baseType: !2014, size: 192)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !38, line: 39, size: 192, elements: !2015)
!2015 = !{!2016, !2017, !2018, !2037}
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2014, file: !38, line: 40, baseType: !1840, size: 32)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2014, file: !38, line: 41, baseType: !37, size: 32, offset: 32)
!2018 = !DIDerivedType(tag: DW_TAG_member, scope: !2014, file: !38, line: 42, baseType: !2019, size: 64, offset: 64)
!2019 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2014, file: !38, line: 42, size: 64, elements: !2020)
!2020 = !{!2021, !2029}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2019, file: !38, line: 43, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2024, line: 7, size: 128, elements: !2025)
!2024 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2025 = !{!2026, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2023, file: !2024, line: 8, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !286, line: 93, baseType: !495)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2023, file: !2024, line: 9, baseType: !495, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2019, file: !38, line: 44, baseType: !2030, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2032, line: 7, size: 64, elements: !2033)
!2032 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2033 = !{!2034, !2036}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2031, file: !2032, line: 8, baseType: !2035, size: 32)
!2035 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2032, line: 5, baseType: !789)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2031, file: !2032, line: 9, baseType: !789, size: 32, offset: 32)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2014, file: !38, line: 46, baseType: !405, size: 64, offset: 128)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2001, file: !38, line: 55, baseType: !2039, size: 256)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2001, file: !38, line: 49, size: 256, elements: !2040)
!2040 = !{!2041, !2044, !2045, !2046, !2047}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2039, file: !38, line: 50, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !38, line: 14, flags: DIFlagFwdDecl)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2039, file: !38, line: 51, baseType: !85, size: 32, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2039, file: !38, line: 52, baseType: !85, size: 32, offset: 96)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2039, file: !38, line: 53, baseType: !302, size: 64, offset: 128)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2039, file: !38, line: 54, baseType: !302, size: 64, offset: 192)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1683, file: !1326, line: 973, baseType: !2049, size: 32, offset: 10688)
!2049 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !153, line: 27, baseType: !2050)
!2050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !286, line: 28, baseType: !85)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !1683, file: !1326, line: 974, baseType: !2049, size: 32, offset: 10720)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !1683, file: !1326, line: 978, baseType: !302, size: 64, offset: 10752)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !1683, file: !1326, line: 987, baseType: !1682, size: 64, offset: 10816)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1683, file: !1326, line: 990, baseType: !1682, size: 64, offset: 10880)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1683, file: !1326, line: 995, baseType: !152, size: 128, offset: 10944)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1683, file: !1326, line: 996, baseType: !152, size: 128, offset: 11072)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !1683, file: !1326, line: 997, baseType: !1682, size: 64, offset: 11200)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !1683, file: !1326, line: 1005, baseType: !152, size: 128, offset: 11264)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !1683, file: !1326, line: 1006, baseType: !152, size: 128, offset: 11392)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !1683, file: !1326, line: 1009, baseType: !715, size: 64, offset: 11520)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !1683, file: !1326, line: 1010, baseType: !2062, size: 512, offset: 11584)
!2062 = !DICompositeType(tag: DW_TAG_array_type, baseType: !527, size: 512, elements: !728)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !1683, file: !1326, line: 1011, baseType: !152, size: 128, offset: 12096)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !1683, file: !1326, line: 1012, baseType: !152, size: 128, offset: 12224)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !1683, file: !1326, line: 1014, baseType: !2066, size: 64, offset: 12352)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !2068, line: 26, size: 256, elements: !2069)
!2068 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!2069 = !{!2070, !2071}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2067, file: !2068, line: 27, baseType: !7, size: 32)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !2067, file: !2068, line: 28, baseType: !2072, size: 192, offset: 64)
!2072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !2073, line: 43, size: 192, elements: !2074)
!2073 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!2074 = !{!2075, !2076}
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2072, file: !2073, line: 44, baseType: !629, size: 32)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !2072, file: !2073, line: 45, baseType: !152, size: 128, offset: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !1683, file: !1326, line: 1017, baseType: !598, size: 64, offset: 12416)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !1683, file: !1326, line: 1020, baseType: !598, size: 64, offset: 12480)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !1683, file: !1326, line: 1023, baseType: !146, size: 64, offset: 12544)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1683, file: !1326, line: 1025, baseType: !405, size: 64, offset: 12608)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1683, file: !1326, line: 1026, baseType: !405, size: 64, offset: 12672)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !1683, file: !1326, line: 1031, baseType: !405, size: 64, offset: 12736)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !1683, file: !1326, line: 1032, baseType: !2084, size: 192, offset: 12800)
!2084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !1326, line: 324, size: 192, elements: !2085)
!2085 = !{!2086, !2087, !2088}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2084, file: !1326, line: 326, baseType: !405, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2084, file: !1326, line: 327, baseType: !405, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2084, file: !1326, line: 328, baseType: !629, size: 32, offset: 128)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !1683, file: !1326, line: 1041, baseType: !302, size: 64, offset: 12992)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !1683, file: !1326, line: 1042, baseType: !302, size: 64, offset: 13056)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1683, file: !1326, line: 1045, baseType: !405, size: 64, offset: 13120)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !1683, file: !1326, line: 1048, baseType: !405, size: 64, offset: 13184)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !1683, file: !1326, line: 1051, baseType: !302, size: 64, offset: 13248)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !1683, file: !1326, line: 1052, baseType: !302, size: 64, offset: 13312)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !1683, file: !1326, line: 1055, baseType: !2096, size: 640, offset: 13376)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2097, line: 132, size: 640, elements: !2098)
!2097 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2098 = !{!2099, !2105, !2106}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2096, file: !2097, line: 133, baseType: !2100, size: 576)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2101, size: 576, elements: !253)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2097, line: 117, size: 192, elements: !2102)
!2102 = !{!2103, !2104}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2101, file: !2097, line: 118, baseType: !405, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2101, file: !2097, line: 119, baseType: !1849, size: 128, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2096, file: !2097, line: 134, baseType: !7, size: 32, offset: 576)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2096, file: !2097, line: 135, baseType: !7, size: 32, offset: 608)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !1683, file: !1326, line: 1058, baseType: !2108, size: 448, offset: 14016)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2097, line: 144, size: 448, elements: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2108, file: !2097, line: 145, baseType: !674, size: 128, align: 64)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2108, file: !2097, line: 146, baseType: !616, size: 256, offset: 128)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2108, file: !2097, line: 147, baseType: !7, size: 32, offset: 384)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !1683, file: !1326, line: 1064, baseType: !754, size: 64, offset: 14464)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !1683, file: !1326, line: 1067, baseType: !754, size: 64, offset: 14528)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !1683, file: !1326, line: 1070, baseType: !754, size: 64, offset: 14592)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !1683, file: !1326, line: 1074, baseType: !781, size: 64, offset: 14656)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !1683, file: !1326, line: 1084, baseType: !2118, size: 128, offset: 14720)
!2118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !2119)
!2119 = !{!2120}
!2120 = !DISubrange(count: 16)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !1683, file: !1326, line: 1086, baseType: !2122, size: 64, offset: 14848)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !1326, line: 55, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !1683, file: !1326, line: 1089, baseType: !2125, size: 64, offset: 14912)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2126, line: 12, size: 64, elements: !2127)
!2126 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2127 = !{!2128}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2125, file: !2126, line: 13, baseType: !2129, size: 64)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2126, line: 8, flags: DIFlagFwdDecl)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !1683, file: !1326, line: 1090, baseType: !2132, size: 128, offset: 14976)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2133, line: 13, size: 128, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2134 = !{!2135}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2132, file: !2133, line: 14, baseType: !152, size: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !1683, file: !1326, line: 1097, baseType: !2137, size: 64, offset: 15104)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !1326, line: 50, flags: DIFlagFwdDecl)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !1683, file: !1326, line: 1100, baseType: !2140, size: 64, offset: 15168)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !1326, line: 1100, flags: DIFlagFwdDecl)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !1683, file: !1326, line: 1103, baseType: !2143, size: 64, offset: 15232)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !1326, line: 53, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !1683, file: !1326, line: 1107, baseType: !2146, size: 64, offset: 15296)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1326, line: 56, flags: DIFlagFwdDecl)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1683, file: !1326, line: 1110, baseType: !2149, size: 64, offset: 15360)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2151, line: 93, size: 8768, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2160, !2170, !2171, !2172, !2173, !2174, !2175, !2176, !2188, !2189, !2190, !2191, !2192, !2193, !2194, !2202, !2211, !2212, !2214, !2215, !2216, !2219, !2225, !2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2235, !2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2257, !2258, !2265, !2275, !2278, !2279, !2282, !2283, !2284, !2285, !2286, !2287}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2150, file: !2151, line: 94, baseType: !719, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2150, file: !2151, line: 95, baseType: !202, size: 32, offset: 32)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2150, file: !2151, line: 96, baseType: !85, size: 32, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2150, file: !2151, line: 97, baseType: !85, size: 32, offset: 96)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2150, file: !2151, line: 98, baseType: !152, size: 128, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2150, file: !2151, line: 100, baseType: !732, size: 192, offset: 256)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2150, file: !2151, line: 103, baseType: !1682, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2150, file: !2151, line: 106, baseType: !2161, size: 192, offset: 512)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !951, line: 32, size: 192, elements: !2162)
!2162 = !{!2163, !2164}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2161, file: !951, line: 33, baseType: !152, size: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2161, file: !951, line: 34, baseType: !2165, size: 64, offset: 128)
!2165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2166, line: 25, baseType: !2167)
!2166 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2166, line: 23, size: 64, elements: !2168)
!2168 = !{!2169}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2167, file: !2166, line: 24, baseType: !1920, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2150, file: !2151, line: 109, baseType: !523, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2150, file: !2151, line: 112, baseType: !85, size: 32, offset: 768)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2150, file: !2151, line: 114, baseType: !85, size: 32, offset: 800)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2150, file: !2151, line: 115, baseType: !1682, size: 64, offset: 832)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2150, file: !2151, line: 118, baseType: !85, size: 32, offset: 896)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2150, file: !2151, line: 119, baseType: !7, size: 32, offset: 928)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2150, file: !2151, line: 121, baseType: !2177, size: 64, offset: 960)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2151, line: 80, size: 448, elements: !2179)
!2179 = !{!2180, !2181, !2187}
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2178, file: !2151, line: 81, baseType: !202, size: 32)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2178, file: !2151, line: 82, baseType: !2182, size: 128, offset: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2151, line: 75, size: 128, elements: !2183)
!2183 = !{!2184, !2185}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2182, file: !2151, line: 76, baseType: !1682, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2182, file: !2151, line: 77, baseType: !2186, size: 64, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2178, file: !2151, line: 83, baseType: !2067, size: 256, offset: 192)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2150, file: !2151, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2150, file: !2151, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2150, file: !2151, line: 138, baseType: !7, size: 32, offset: 1056)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2150, file: !2151, line: 139, baseType: !152, size: 128, offset: 1088)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2150, file: !2151, line: 142, baseType: !1793, size: 512, offset: 1216)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2150, file: !2151, line: 143, baseType: !1801, size: 64, offset: 1728)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2150, file: !2151, line: 150, baseType: !2195, size: 256, offset: 1792)
!2195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2196, size: 256, elements: !2200)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2151, line: 38, size: 128, elements: !2197)
!2197 = !{!2198, !2199}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2196, file: !2151, line: 39, baseType: !405, size: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2196, file: !2151, line: 40, baseType: !405, size: 64, offset: 64)
!2200 = !{!2201}
!2201 = !DISubrange(count: 2)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2150, file: !2151, line: 156, baseType: !2203, size: 192, offset: 2048)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2151, line: 66, size: 192, elements: !2204)
!2204 = !{!2205}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2203, file: !2151, line: 67, baseType: !2206, size: 192)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2151, line: 47, size: 192, elements: !2207)
!2207 = !{!2208, !2209, !2210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2206, file: !2151, line: 48, baseType: !622, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2206, file: !2151, line: 49, baseType: !622, size: 64, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2206, file: !2151, line: 50, baseType: !622, size: 64, offset: 128)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2150, file: !2151, line: 160, baseType: !2096, size: 640, offset: 2240)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2150, file: !2151, line: 163, baseType: !2213, size: 256, offset: 2880)
!2213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !715, size: 256, elements: !728)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2150, file: !2151, line: 169, baseType: !715, size: 64, offset: 3136)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2150, file: !2151, line: 172, baseType: !85, size: 32, offset: 3200)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2150, file: !2151, line: 174, baseType: !2217, size: 64, offset: 3264)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2151, line: 174, flags: DIFlagFwdDecl)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2150, file: !2151, line: 185, baseType: !2220, size: 64, offset: 3328)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !374, line: 860, baseType: !2221)
!2221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 853, size: 64, elements: !2222)
!2222 = !{!2223, !2224}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2221, file: !374, line: 858, baseType: !373, size: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2221, file: !374, line: 859, baseType: !182, size: 32, offset: 32)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2150, file: !2151, line: 186, baseType: !405, size: 64, offset: 3392)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2150, file: !2151, line: 186, baseType: !405, size: 64, offset: 3456)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2150, file: !2151, line: 186, baseType: !405, size: 64, offset: 3520)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2150, file: !2151, line: 186, baseType: !405, size: 64, offset: 3584)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2150, file: !2151, line: 187, baseType: !405, size: 64, offset: 3648)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2150, file: !2151, line: 188, baseType: !405, size: 64, offset: 3712)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2150, file: !2151, line: 189, baseType: !2084, size: 192, offset: 3776)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2150, file: !2151, line: 190, baseType: !302, size: 64, offset: 3968)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2150, file: !2151, line: 190, baseType: !302, size: 64, offset: 4032)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2150, file: !2151, line: 190, baseType: !302, size: 64, offset: 4096)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2150, file: !2151, line: 190, baseType: !302, size: 64, offset: 4160)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2150, file: !2151, line: 191, baseType: !302, size: 64, offset: 4224)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2150, file: !2151, line: 191, baseType: !302, size: 64, offset: 4288)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2150, file: !2151, line: 191, baseType: !302, size: 64, offset: 4352)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2150, file: !2151, line: 191, baseType: !302, size: 64, offset: 4416)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2150, file: !2151, line: 192, baseType: !302, size: 64, offset: 4480)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2150, file: !2151, line: 192, baseType: !302, size: 64, offset: 4544)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2150, file: !2151, line: 192, baseType: !302, size: 64, offset: 4608)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2150, file: !2151, line: 192, baseType: !302, size: 64, offset: 4672)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2150, file: !2151, line: 193, baseType: !302, size: 64, offset: 4736)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2150, file: !2151, line: 193, baseType: !302, size: 64, offset: 4800)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2150, file: !2151, line: 194, baseType: !2247, size: 448, offset: 4864)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !2248, line: 12, size: 448, elements: !2249)
!2248 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255, !2256}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !2247, file: !2248, line: 15, baseType: !405, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !2247, file: !2248, line: 17, baseType: !405, size: 64, offset: 64)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !2247, file: !2248, line: 19, baseType: !405, size: 64, offset: 128)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !2247, file: !2248, line: 21, baseType: !405, size: 64, offset: 192)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !2247, file: !2248, line: 29, baseType: !405, size: 64, offset: 256)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !2247, file: !2248, line: 35, baseType: !405, size: 64, offset: 320)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !2247, file: !2248, line: 44, baseType: !405, size: 64, offset: 384)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2150, file: !2151, line: 202, baseType: !407, size: 64, offset: 5312)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2150, file: !2151, line: 213, baseType: !2259, size: 2048, offset: 5376)
!2259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2260, size: 2048, elements: !2119)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !2261, line: 43, size: 128, elements: !2262)
!2261 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!2262 = !{!2263, !2264}
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !2260, file: !2261, line: 44, baseType: !301, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !2260, file: !2261, line: 45, baseType: !301, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2150, file: !2151, line: 216, baseType: !2266, size: 448, offset: 7424)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2151, line: 30, size: 448, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !2266, file: !2151, line: 31, baseType: !85, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !2266, file: !2151, line: 32, baseType: !288, size: 64, offset: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !2266, file: !2151, line: 33, baseType: !302, size: 64, offset: 128)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !2266, file: !2151, line: 34, baseType: !405, size: 64, offset: 192)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !2266, file: !2151, line: 34, baseType: !405, size: 64, offset: 256)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !2266, file: !2151, line: 35, baseType: !302, size: 64, offset: 320)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !2266, file: !2151, line: 35, baseType: !302, size: 64, offset: 384)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2150, file: !2151, line: 219, baseType: !2276, size: 64, offset: 7872)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2151, line: 219, flags: DIFlagFwdDecl)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2150, file: !2151, line: 222, baseType: !7, size: 32, offset: 7936)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2150, file: !2151, line: 223, baseType: !2280, size: 64, offset: 8000)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2151, line: 223, flags: DIFlagFwdDecl)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2150, file: !2151, line: 230, baseType: !863, size: 8, offset: 8064)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2150, file: !2151, line: 231, baseType: !832, size: 16, offset: 8080)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2150, file: !2151, line: 232, baseType: !832, size: 16, offset: 8096)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2150, file: !2151, line: 234, baseType: !1080, size: 64, offset: 8128)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2150, file: !2151, line: 237, baseType: !616, size: 256, offset: 8192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2150, file: !2151, line: 243, baseType: !804, size: 320, offset: 8448)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !1683, file: !1326, line: 1111, baseType: !2289, size: 64, offset: 15424)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2151, line: 20, size: 16640, elements: !2291)
!2291 = !{!2292, !2293, !2294, !2295}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !2290, file: !2151, line: 21, baseType: !182, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2290, file: !2151, line: 22, baseType: !719, size: 32, offset: 32)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !2290, file: !2151, line: 23, baseType: !732, size: 192, offset: 64)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !2290, file: !2151, line: 24, baseType: !2296, size: 16384, offset: 256)
!2296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2297, size: 16384, elements: !257)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !951, line: 51, size: 256, elements: !2298)
!2298 = !{!2299}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2297, file: !951, line: 52, baseType: !2300, size: 256)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !951, line: 37, size: 256, elements: !2301)
!2301 = !{!2302, !2309, !2310, !2316}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !2300, file: !951, line: 39, baseType: !2303, size: 64)
!2303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !2304, line: 83, baseType: !2305)
!2304 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !2304, line: 82, baseType: !2307)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !85}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !2300, file: !951, line: 40, baseType: !302, size: 64, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !2300, file: !951, line: 46, baseType: !2311, size: 64, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !2304, line: 86, baseType: !2312)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !2304, line: 85, baseType: !2314)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !2300, file: !951, line: 48, baseType: !2165, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !1683, file: !1326, line: 1112, baseType: !2165, size: 64, offset: 15488)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !1683, file: !1326, line: 1113, baseType: !2165, size: 64, offset: 15552)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !1683, file: !1326, line: 1115, baseType: !2165, size: 64, offset: 15616)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !1683, file: !1326, line: 1116, baseType: !2161, size: 192, offset: 15680)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !1683, file: !1326, line: 1117, baseType: !302, size: 64, offset: 15872)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !1683, file: !1326, line: 1118, baseType: !299, size: 64, offset: 15936)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !1683, file: !1326, line: 1119, baseType: !7, size: 32, offset: 16000)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !1683, file: !1326, line: 1121, baseType: !677, size: 64, offset: 16064)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !1683, file: !1326, line: 1125, baseType: !2326, size: 64, offset: 16128)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !1326, line: 43, flags: DIFlagFwdDecl)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !1683, file: !1326, line: 1127, baseType: !338, size: 32, offset: 16192)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !1683, file: !1326, line: 1128, baseType: !7, size: 32, offset: 16224)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !1683, file: !1326, line: 1130, baseType: !2331, size: 128, offset: 16256)
!2331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !2332, line: 37, size: 128, elements: !2333)
!2332 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!2333 = !{!2334, !2335, !2336}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2331, file: !2332, line: 38, baseType: !85, size: 32)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !2331, file: !2332, line: 39, baseType: !202, size: 32, offset: 32)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !2331, file: !2332, line: 40, baseType: !2337, size: 64, offset: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2338, size: 64)
!2338 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !2332, line: 24, flags: DIFlagFwdDecl)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !1683, file: !1326, line: 1131, baseType: !2340, size: 256, offset: 16384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !2341, line: 12, size: 256, elements: !2342)
!2341 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!2342 = !{!2343, !2344, !2345, !2346}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !2340, file: !2341, line: 13, baseType: !252, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2340, file: !2341, line: 14, baseType: !302, size: 64, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2340, file: !2341, line: 15, baseType: !302, size: 64, offset: 128)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !2340, file: !2341, line: 16, baseType: !863, size: 8, offset: 192)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !1683, file: !1326, line: 1134, baseType: !405, size: 64, offset: 16640)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !1683, file: !1326, line: 1135, baseType: !405, size: 64, offset: 16704)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !1683, file: !1326, line: 1138, baseType: !182, size: 32, offset: 16768)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !1683, file: !1326, line: 1141, baseType: !629, size: 32, offset: 16800)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !1683, file: !1326, line: 1143, baseType: !2352, size: 64, offset: 16832)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !1326, line: 735, size: 64, elements: !2353)
!2353 = !{!2354}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2352, file: !1326, line: 736, baseType: !2355, size: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !1683, file: !1326, line: 1147, baseType: !1852, size: 128, offset: 16896)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !1683, file: !1326, line: 1149, baseType: !1682, size: 64, offset: 17024)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !1683, file: !1326, line: 1151, baseType: !2359, size: 64, offset: 17088)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !1326, line: 1151, flags: DIFlagFwdDecl)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !1683, file: !1326, line: 1188, baseType: !146, size: 64, offset: 17152)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !1683, file: !1326, line: 1191, baseType: !2363, size: 64, offset: 17216)
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !1326, line: 44, flags: DIFlagFwdDecl)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !1683, file: !1326, line: 1194, baseType: !2366, size: 64, offset: 17280)
!2366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2367, size: 64)
!2367 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !1326, line: 45, flags: DIFlagFwdDecl)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !1683, file: !1326, line: 1197, baseType: !2369, size: 64, offset: 17344)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !1326, line: 61, flags: DIFlagFwdDecl)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !1683, file: !1326, line: 1199, baseType: !2372, size: 64, offset: 17408)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !2374, line: 99, size: 128, elements: !2375)
!2374 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!2375 = !{!2376, !2377, !2378}
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2373, file: !2374, line: 100, baseType: !620, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !2373, file: !2374, line: 101, baseType: !202, size: 32, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !2373, file: !2374, line: 103, baseType: !222, size: 16, offset: 96)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !1683, file: !1326, line: 1202, baseType: !2380, size: 64, offset: 17472)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !1326, line: 48, flags: DIFlagFwdDecl)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !1683, file: !1326, line: 1205, baseType: !302, size: 64, offset: 17536)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !1683, file: !1326, line: 1206, baseType: !2384, size: 64, offset: 17600)
!2384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2385, size: 64)
!2385 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !951, line: 14, baseType: !2386)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !951, line: 12, size: 384, elements: !2387)
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, scope: !2386, file: !951, line: 13, baseType: !2389, size: 384)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2386, file: !951, line: 13, size: 384, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2394}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !2389, file: !951, line: 13, baseType: !85, size: 32)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !2389, file: !951, line: 13, baseType: !85, size: 32, offset: 32)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !2389, file: !951, line: 13, baseType: !85, size: 32, offset: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !2389, file: !951, line: 13, baseType: !2395, size: 256, offset: 128)
!2395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !2396, line: 37, size: 256, elements: !2397)
!2396 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!2397 = !{!2398, !2403, !2416, !2422, !2431, !2458, !2463}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !2395, file: !2396, line: 42, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 39, size: 64, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2399, file: !2396, line: 40, baseType: !2050, size: 32)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2399, file: !2396, line: 41, baseType: !344, size: 32, offset: 32)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !2395, file: !2396, line: 50, baseType: !2404, size: 192)
!2404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 45, size: 192, elements: !2405)
!2405 = !{!2406, !2408, !2409, !2415}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !2404, file: !2396, line: 46, baseType: !2407, size: 32)
!2407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !286, line: 95, baseType: !85)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !2404, file: !2396, line: 47, baseType: !85, size: 32, offset: 32)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2404, file: !2396, line: 48, baseType: !2410, size: 64, offset: 64)
!2410 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !2396, line: 11, baseType: !2411)
!2411 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !2396, line: 8, size: 64, elements: !2412)
!2412 = !{!2413, !2414}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !2411, file: !2396, line: 9, baseType: !85, size: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !2411, file: !2396, line: 10, baseType: !146, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !2404, file: !2396, line: 49, baseType: !85, size: 32, offset: 128)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !2395, file: !2396, line: 57, baseType: !2417, size: 128)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 53, size: 128, elements: !2418)
!2418 = !{!2419, !2420, !2421}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2417, file: !2396, line: 54, baseType: !2050, size: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2417, file: !2396, line: 55, baseType: !344, size: 32, offset: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !2417, file: !2396, line: 56, baseType: !2410, size: 64, offset: 64)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !2395, file: !2396, line: 66, baseType: !2423, size: 256)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 60, size: 256, elements: !2424)
!2424 = !{!2425, !2426, !2427, !2428, !2430}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !2423, file: !2396, line: 61, baseType: !2050, size: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !2423, file: !2396, line: 62, baseType: !344, size: 32, offset: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !2423, file: !2396, line: 63, baseType: !85, size: 32, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !2423, file: !2396, line: 64, baseType: !2429, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !286, line: 94, baseType: !287)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !2423, file: !2396, line: 65, baseType: !2429, size: 64, offset: 192)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !2395, file: !2396, line: 105, baseType: !2432, size: 256)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 69, size: 256, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !2432, file: !2396, line: 70, baseType: !146, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, scope: !2432, file: !2396, line: 79, baseType: !2436, size: 192, offset: 64)
!2436 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2432, file: !2396, line: 79, size: 192, elements: !2437)
!2437 = !{!2438, !2439, !2440, !2447, !2452}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !2436, file: !2396, line: 81, baseType: !85, size: 32)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !2436, file: !2396, line: 86, baseType: !832, size: 16)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !2436, file: !2396, line: 92, baseType: !2441, size: 192)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !2396, line: 88, size: 192, elements: !2442)
!2442 = !{!2443, !2445, !2446}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !2441, file: !2396, line: 89, baseType: !2444, size: 64)
!2444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 64, elements: !1836)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !2441, file: !2396, line: 90, baseType: !146, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !2441, file: !2396, line: 91, baseType: !146, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !2436, file: !2396, line: 97, baseType: !2448, size: 96)
!2448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !2396, line: 94, size: 96, elements: !2449)
!2449 = !{!2450, !2451}
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !2448, file: !2396, line: 95, baseType: !2444, size: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !2448, file: !2396, line: 96, baseType: !402, size: 32, offset: 64)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !2436, file: !2396, line: 103, baseType: !2453, size: 128)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2436, file: !2396, line: 99, size: 128, elements: !2454)
!2454 = !{!2455, !2456, !2457}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !2453, file: !2396, line: 100, baseType: !302, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !2453, file: !2396, line: 101, baseType: !402, size: 32, offset: 64)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2453, file: !2396, line: 102, baseType: !402, size: 32, offset: 96)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !2395, file: !2396, line: 111, baseType: !2459, size: 128)
!2459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 108, size: 128, elements: !2460)
!2460 = !{!2461, !2462}
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !2459, file: !2396, line: 109, baseType: !288, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !2459, file: !2396, line: 110, baseType: !85, size: 32, offset: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !2395, file: !2396, line: 118, baseType: !2464, size: 128)
!2464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2395, file: !2396, line: 114, size: 128, elements: !2465)
!2465 = !{!2466, !2467, !2468}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !2464, file: !2396, line: 115, baseType: !146, size: 64)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !2464, file: !2396, line: 116, baseType: !85, size: 32, offset: 64)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !2464, file: !2396, line: 117, baseType: !7, size: 32, offset: 96)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !1683, file: !1326, line: 1208, baseType: !2247, size: 448, offset: 17664)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !1683, file: !1326, line: 1215, baseType: !405, size: 64, offset: 18112)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !1683, file: !1326, line: 1217, baseType: !405, size: 64, offset: 18176)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !1683, file: !1326, line: 1219, baseType: !405, size: 64, offset: 18240)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !1683, file: !1326, line: 1223, baseType: !2474, size: 64, offset: 18304)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !2475, line: 99, baseType: !2476)
!2475 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2475, line: 99, size: 64, elements: !2477)
!2477 = !{!2478}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2476, file: !2475, line: 99, baseType: !1920, size: 64)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !1683, file: !1326, line: 1225, baseType: !373, size: 32, offset: 18368)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !1683, file: !1326, line: 1226, baseType: !85, size: 32, offset: 18400)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !1683, file: !1326, line: 1227, baseType: !85, size: 32, offset: 18432)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !1683, file: !1326, line: 1231, baseType: !2483, size: 64, offset: 18496)
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2484, size: 64)
!2484 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !1326, line: 1231, flags: DIFlagFwdDecl)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !1683, file: !1326, line: 1233, baseType: !152, size: 128, offset: 18560)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !1683, file: !1326, line: 1240, baseType: !2487, size: 64, offset: 18688)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !1326, line: 62, flags: DIFlagFwdDecl)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !1683, file: !1326, line: 1242, baseType: !2490, size: 64, offset: 18752)
!2490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2491, size: 64)
!2491 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !1326, line: 1242, flags: DIFlagFwdDecl)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !1683, file: !1326, line: 1244, baseType: !152, size: 128, offset: 18816)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !1683, file: !1326, line: 1245, baseType: !2494, size: 64, offset: 18944)
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !1326, line: 51, flags: DIFlagFwdDecl)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !1683, file: !1326, line: 1246, baseType: !616, size: 256, offset: 19008)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !1683, file: !1326, line: 1247, baseType: !7, size: 32, offset: 19264)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !1683, file: !1326, line: 1250, baseType: !2499, size: 64, offset: 19328)
!2499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2500, size: 64)
!2500 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !1326, line: 57, flags: DIFlagFwdDecl)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !1683, file: !1326, line: 1251, baseType: !616, size: 256, offset: 19392)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !1683, file: !1326, line: 1252, baseType: !152, size: 128, offset: 19648)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !1683, file: !1326, line: 1259, baseType: !1285, size: 64, offset: 19776)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !1683, file: !1326, line: 1260, baseType: !832, size: 16, offset: 19840)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !1683, file: !1326, line: 1261, baseType: !832, size: 16, offset: 19856)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !1683, file: !1326, line: 1314, baseType: !2507, size: 64, offset: 19904)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !2509, line: 62, size: 256, align: 256, elements: !2510)
!2509 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!2510 = !{!2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !2508, file: !2509, line: 75, baseType: !402, size: 32)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !2508, file: !2509, line: 90, baseType: !402, size: 32, offset: 32)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !2508, file: !2509, line: 112, baseType: !406, size: 64, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2508, file: !2509, line: 132, baseType: !402, size: 32, offset: 128)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !2508, file: !2509, line: 140, baseType: !402, size: 32, offset: 160)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2508, file: !2509, line: 149, baseType: !402, size: 32, offset: 192)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2508, file: !2509, line: 154, baseType: !2518, offset: 224)
!2518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !747)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !1683, file: !1326, line: 1315, baseType: !401, size: 32, offset: 19968)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !1683, file: !1326, line: 1316, baseType: !401, size: 32, offset: 20000)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !1683, file: !1326, line: 1321, baseType: !302, size: 64, offset: 20032)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !1683, file: !1326, line: 1325, baseType: !85, size: 32, offset: 20096)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !1683, file: !1326, line: 1326, baseType: !85, size: 32, offset: 20128)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !1683, file: !1326, line: 1327, baseType: !85, size: 32, offset: 20160)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !1683, file: !1326, line: 1328, baseType: !85, size: 32, offset: 20192)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !1683, file: !1326, line: 1329, baseType: !674, size: 128, align: 64, offset: 20224)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !1683, file: !1326, line: 1332, baseType: !2528, size: 128, offset: 20352)
!2528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !2529, line: 51, size: 128, elements: !2530)
!2529 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!2530 = !{!2531, !2536, !2537}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2528, file: !2529, line: 60, baseType: !2532, size: 64)
!2532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !2533, line: 7, size: 64, elements: !2534)
!2533 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!2534 = !{!2535}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !2532, file: !2533, line: 12, baseType: !1917, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !2528, file: !2529, line: 63, baseType: !863, size: 8, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !2528, file: !2529, line: 70, baseType: !863, size: 8, offset: 72)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !1683, file: !1326, line: 1335, baseType: !1324, size: 64, offset: 20480)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !1683, file: !1326, line: 1337, baseType: !2540, size: 128, offset: 20544)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !2529, line: 39, size: 128, elements: !2541)
!2541 = !{!2542, !2603, !2604}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2540, file: !2529, line: 40, baseType: !2543, size: 64)
!2543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2544, size: 64)
!2544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1068, line: 74, size: 512, align: 128, elements: !2545)
!2545 = !{!2546, !2547, !2597, !2602}
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2544, file: !1068, line: 75, baseType: !302, size: 64)
!2547 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !1068, line: 83, baseType: !2548, size: 320, offset: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !1068, line: 83, size: 320, elements: !2549)
!2549 = !{!2550, !2571, !2585, !2589, !2596}
!2550 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !1068, line: 84, baseType: !2551, size: 320)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !1068, line: 84, size: 320, elements: !2552)
!2552 = !{!2553, !2564, !2565, !2570}
!2553 = !DIDerivedType(tag: DW_TAG_member, scope: !2551, file: !1068, line: 90, baseType: !2554, size: 128)
!2554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !1068, line: 90, size: 128, elements: !2555)
!2555 = !{!2556, !2557, !2562, !2563}
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2554, file: !1068, line: 91, baseType: !152, size: 128)
!2557 = !DIDerivedType(tag: DW_TAG_member, scope: !2554, file: !1068, line: 94, baseType: !2558, size: 128)
!2558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2554, file: !1068, line: 94, size: 128, elements: !2559)
!2559 = !{!2560, !2561}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !2558, file: !1068, line: 96, baseType: !146, size: 64)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !2558, file: !1068, line: 98, baseType: !7, size: 32, offset: 64)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !2554, file: !1068, line: 102, baseType: !152, size: 128)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !2554, file: !1068, line: 103, baseType: !152, size: 128)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !2551, file: !1068, line: 106, baseType: !328, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, scope: !2551, file: !1068, line: 107, baseType: !2566, size: 64, offset: 192)
!2566 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2551, file: !1068, line: 107, size: 64, elements: !2567)
!2567 = !{!2568, !2569}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2566, file: !1068, line: 108, baseType: !302, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !2566, file: !1068, line: 109, baseType: !302, size: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !2551, file: !1068, line: 117, baseType: !302, size: 64, offset: 256)
!2571 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !1068, line: 119, baseType: !2572, size: 320)
!2572 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !1068, line: 119, size: 320, elements: !2573)
!2573 = !{!2574, !2575, !2578, !2579, !2580}
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !2572, file: !1068, line: 124, baseType: !302, size: 64)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !2572, file: !1068, line: 125, baseType: !2576, size: 64, offset: 64)
!2576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2577, size: 64)
!2577 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1068, line: 125, flags: DIFlagFwdDecl)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !2572, file: !1068, line: 126, baseType: !302, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !2572, file: !1068, line: 127, baseType: !302, size: 64, offset: 192)
!2580 = !DIDerivedType(tag: DW_TAG_member, scope: !2572, file: !1068, line: 128, baseType: !2581, size: 64, offset: 256)
!2581 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2572, file: !1068, line: 128, size: 64, elements: !2582)
!2582 = !{!2583, !2584}
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !2581, file: !1068, line: 133, baseType: !302, size: 64)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !2581, file: !1068, line: 138, baseType: !620, size: 64)
!2585 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !1068, line: 141, baseType: !2586, size: 64)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !1068, line: 141, size: 64, elements: !2587)
!2587 = !{!2588}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !2586, file: !1068, line: 142, baseType: !302, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_member, scope: !2548, file: !1068, line: 144, baseType: !2590, size: 128)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2548, file: !1068, line: 144, size: 128, elements: !2591)
!2591 = !{!2592, !2595}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !2590, file: !1068, line: 146, baseType: !2593, size: 64)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1068, line: 146, flags: DIFlagFwdDecl)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !2590, file: !1068, line: 147, baseType: !146, size: 64, offset: 64)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !2548, file: !1068, line: 161, baseType: !674, size: 128, align: 64)
!2597 = !DIDerivedType(tag: DW_TAG_member, scope: !2544, file: !1068, line: 164, baseType: !2598, size: 32, offset: 384)
!2598 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2544, file: !1068, line: 164, size: 32, elements: !2599)
!2599 = !{!2600, !2601}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !2598, file: !1068, line: 169, baseType: !202, size: 32)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !2598, file: !1068, line: 177, baseType: !7, size: 32)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !2544, file: !1068, line: 181, baseType: !202, size: 32, offset: 416)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2540, file: !2529, line: 42, baseType: !402, size: 32, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2540, file: !2529, line: 43, baseType: !402, size: 32, offset: 96)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !1683, file: !1326, line: 1340, baseType: !2606, size: 64, offset: 20672)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !1326, line: 69, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !1683, file: !1326, line: 1351, baseType: !85, size: 32, offset: 20736)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !1683, file: !1326, line: 1352, baseType: !85, size: 32, offset: 20768)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !1683, file: !1326, line: 1354, baseType: !302, size: 64, offset: 20800)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !1683, file: !1326, line: 1364, baseType: !405, size: 64, offset: 20864)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !1683, file: !1326, line: 1365, baseType: !405, size: 64, offset: 20928)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !1683, file: !1326, line: 1412, baseType: !302, size: 64, offset: 20992)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !1683, file: !1326, line: 1453, baseType: !2615, size: 64, offset: 21056)
!2615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2616, size: 64)
!2616 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !1326, line: 1453, flags: DIFlagFwdDecl)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !1683, file: !1326, line: 1457, baseType: !2618, size: 64, offset: 21120)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !44, line: 61, size: 576, elements: !2620)
!2620 = !{!2621, !2622, !2641, !2644, !2645, !2678, !2688}
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2619, file: !44, line: 62, baseType: !43, size: 32)
!2622 = !DIDerivedType(tag: DW_TAG_member, scope: !2619, file: !44, line: 64, baseType: !2623, size: 192, offset: 64)
!2623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2619, file: !44, line: 64, size: 192, elements: !2624)
!2624 = !{!2625, !2636}
!2625 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !44, line: 65, baseType: !2626, size: 192)
!2626 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !44, line: 65, size: 192, elements: !2627)
!2627 = !{!2628, !2635}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !2626, file: !44, line: 66, baseType: !2629, size: 128)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !2630, line: 50, size: 128, elements: !2631)
!2630 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!2631 = !{!2632, !2633, !2634}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !2629, file: !2630, line: 52, baseType: !302, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !2629, file: !2630, line: 54, baseType: !7, size: 32, offset: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !2629, file: !2630, line: 55, baseType: !7, size: 32, offset: 96)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !2626, file: !44, line: 67, baseType: !302, size: 64, offset: 128)
!2636 = !DIDerivedType(tag: DW_TAG_member, scope: !2623, file: !44, line: 70, baseType: !2637, size: 192)
!2637 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2623, file: !44, line: 70, size: 192, elements: !2638)
!2638 = !{!2639, !2640}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !2637, file: !44, line: 71, baseType: !674, size: 128, align: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !2637, file: !44, line: 72, baseType: !302, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !2619, file: !44, line: 76, baseType: !2642, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2643, size: 64)
!2643 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !44, line: 76, flags: DIFlagFwdDecl)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !2619, file: !44, line: 77, baseType: !302, size: 64, offset: 320)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !2619, file: !44, line: 79, baseType: !2646, size: 64, offset: 384)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !2630, line: 25, size: 256, elements: !2648)
!2648 = !{!2649, !2655, !2659}
!2649 = !DIDerivedType(tag: DW_TAG_member, scope: !2647, file: !2630, line: 26, baseType: !2650, size: 128)
!2650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2647, file: !2630, line: 26, size: 128, elements: !2651)
!2651 = !{!2652, !2654}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2650, file: !2630, line: 27, baseType: !2653, size: 128)
!2653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 128, elements: !2119)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !2650, file: !2630, line: 28, baseType: !2653, size: 128)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2647, file: !2630, line: 31, baseType: !2656, size: 64, offset: 128)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !2630, line: 23, flags: DIFlagFwdDecl)
!2659 = !DIDerivedType(tag: DW_TAG_member, scope: !2647, file: !2630, line: 33, baseType: !2660, size: 64, offset: 192)
!2660 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2647, file: !2630, line: 33, size: 64, elements: !2661)
!2661 = !{!2662, !2668, !2673}
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !2660, file: !2630, line: 38, baseType: !2663, size: 64)
!2663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2660, file: !2630, line: 34, size: 64, elements: !2664)
!2664 = !{!2665, !2666, !2667}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2663, file: !2630, line: 35, baseType: !789, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2663, file: !2630, line: 36, baseType: !210, size: 8, offset: 32)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !2663, file: !2630, line: 37, baseType: !210, size: 8, offset: 40)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !2660, file: !2630, line: 42, baseType: !2669, size: 16)
!2669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2660, file: !2630, line: 39, size: 16, elements: !2670)
!2670 = !{!2671, !2672}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !2669, file: !2630, line: 40, baseType: !210, size: 8)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2669, file: !2630, line: 41, baseType: !210, size: 8, offset: 8)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !2660, file: !2630, line: 46, baseType: !2674, size: 16)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2660, file: !2630, line: 43, size: 16, elements: !2675)
!2675 = !{!2676, !2677}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !2674, file: !2630, line: 44, baseType: !210, size: 8)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !2674, file: !2630, line: 45, baseType: !210, size: 8, offset: 8)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !2619, file: !44, line: 81, baseType: !2679, size: 64, offset: 448)
!2679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2680, size: 64)
!2680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !44, line: 85, size: 384, elements: !2681)
!2681 = !{!2682, !2683, !2684, !2685, !2686, !2687}
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !2680, file: !44, line: 86, baseType: !2642, size: 64)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2680, file: !44, line: 87, baseType: !302, size: 64, offset: 64)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2680, file: !44, line: 88, baseType: !302, size: 64, offset: 128)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !2680, file: !44, line: 89, baseType: !302, size: 64, offset: 192)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !2680, file: !44, line: 90, baseType: !863, size: 8, offset: 256)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2680, file: !44, line: 92, baseType: !2679, size: 64, offset: 320)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2619, file: !44, line: 82, baseType: !7, size: 32, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !1683, file: !1326, line: 1463, baseType: !2690, offset: 21184)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !1326, line: 739, elements: !535)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1683, file: !1326, line: 1470, baseType: !674, size: 128, align: 64, offset: 21184)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1683, file: !1326, line: 1471, baseType: !719, size: 32, offset: 21312)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !1683, file: !1326, line: 1472, baseType: !85, size: 32, offset: 21344)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !1683, file: !1326, line: 1474, baseType: !1682, size: 64, offset: 21376)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !1683, file: !1326, line: 1475, baseType: !2696, size: 320, offset: 21440)
!2696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2697, line: 11, size: 320, elements: !2698)
!2697 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2698 = !{!2699, !2700, !2701, !2706}
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2696, file: !2697, line: 16, baseType: !527, size: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2696, file: !2697, line: 17, baseType: !302, size: 64, offset: 128)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2696, file: !2697, line: 18, baseType: !2702, size: 64, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DISubroutineType(types: !2704)
!2704 = !{null, !2705}
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2696, size: 64)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2696, file: !2697, line: 19, baseType: !401, size: 32, offset: 256)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !1683, file: !1326, line: 1478, baseType: !2708, size: 64, offset: 21760)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1028, line: 49, size: 512, elements: !2710)
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2717, !2718, !2719, !2721}
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2709, file: !1028, line: 50, baseType: !2708, size: 64)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2709, file: !1028, line: 51, baseType: !146, size: 64, offset: 64)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2709, file: !1028, line: 52, baseType: !302, size: 64, offset: 128)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2709, file: !1028, line: 53, baseType: !302, size: 64, offset: 192)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2709, file: !1028, line: 54, baseType: !2716, size: 64, offset: 256)
!2716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "page_order", scope: !2709, file: !1028, line: 56, baseType: !7, size: 32, offset: 320)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !2709, file: !1028, line: 58, baseType: !7, size: 32, offset: 352)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !2709, file: !1028, line: 59, baseType: !2720, size: 64, offset: 384)
!2720 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !153, line: 159, baseType: !405)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !2709, file: !1028, line: 60, baseType: !1195, size: 64, offset: 448)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !1683, file: !1326, line: 1482, baseType: !719, size: 32, offset: 21824)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !1683, file: !1326, line: 1489, baseType: !146, size: 64, offset: 21888)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !1683, file: !1326, line: 1504, baseType: !146, size: 64, offset: 21952)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !1683, file: !1326, line: 1505, baseType: !406, size: 64, offset: 22016)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !1683, file: !1326, line: 1506, baseType: !405, size: 64, offset: 22080)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !1683, file: !1326, line: 1507, baseType: !406, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !1683, file: !1326, line: 1508, baseType: !406, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !1683, file: !1326, line: 1509, baseType: !406, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !1683, file: !1326, line: 1510, baseType: !674, size: 128, align: 64, offset: 22208)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !1683, file: !1326, line: 1511, baseType: !85, size: 32, offset: 22336)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !1683, file: !1326, line: 1515, baseType: !2733, size: 64, offset: 22400)
!2733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !669, line: 56, size: 64, elements: !2734)
!2734 = !{!2735}
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2733, file: !669, line: 57, baseType: !672, size: 64)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !1683, file: !1326, line: 1518, baseType: !2733, size: 64, offset: 22464)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !1683, file: !1326, line: 1528, baseType: !674, size: 128, align: 64, offset: 22528)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !1683, file: !1326, line: 1552, baseType: !2739, size: 35328, offset: 23040)
!2739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !2740, line: 430, size: 35328, elements: !2741)
!2740 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!2741 = !{!2742, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2771, !2772, !2773, !2774, !2775, !2776, !2779, !2780, !2781, !2782}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !2739, file: !2740, line: 432, baseType: !2743, size: 192)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2744, size: 192, elements: !253)
!2744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !2745, line: 16, size: 64, elements: !2746)
!2745 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!2746 = !{!2747, !2748, !2749, !2750, !2751, !2752, !2753, !2754, !2755, !2756, !2757, !2758, !2759}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !2744, file: !2745, line: 17, baseType: !220, size: 16)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !2744, file: !2745, line: 18, baseType: !220, size: 16, offset: 16)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !2744, file: !2745, line: 19, baseType: !220, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2744, file: !2745, line: 19, baseType: !220, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2744, file: !2745, line: 19, baseType: !220, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !2744, file: !2745, line: 19, baseType: !220, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2744, file: !2745, line: 19, baseType: !220, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !2744, file: !2745, line: 20, baseType: !220, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !2744, file: !2745, line: 20, baseType: !220, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !2744, file: !2745, line: 20, baseType: !220, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !2744, file: !2745, line: 20, baseType: !220, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2744, file: !2745, line: 20, baseType: !220, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !2744, file: !2745, line: 20, baseType: !220, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2739, file: !2740, line: 436, baseType: !302, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !2739, file: !2740, line: 440, baseType: !222, size: 16, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !2739, file: !2740, line: 441, baseType: !222, size: 16, offset: 272)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !2739, file: !2740, line: 442, baseType: !222, size: 16, offset: 288)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !2739, file: !2740, line: 443, baseType: !222, size: 16, offset: 304)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !2739, file: !2740, line: 447, baseType: !302, size: 64, offset: 320)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !2739, file: !2740, line: 448, baseType: !302, size: 64, offset: 384)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !2739, file: !2740, line: 459, baseType: !2768, size: 256, offset: 448)
!2768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2769, size: 256, elements: !728)
!2769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2770, size: 64)
!2770 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !2740, line: 428, flags: DIFlagFwdDecl)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !2739, file: !2740, line: 461, baseType: !302, size: 64, offset: 704)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !2739, file: !2740, line: 463, baseType: !302, size: 64, offset: 768)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !2739, file: !2740, line: 465, baseType: !302, size: 64, offset: 832)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !2739, file: !2740, line: 466, baseType: !302, size: 64, offset: 896)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !2739, file: !2740, line: 467, baseType: !302, size: 64, offset: 960)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !2739, file: !2740, line: 473, baseType: !2777, size: 64, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !2740, line: 10, flags: DIFlagFwdDecl)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !2739, file: !2740, line: 480, baseType: !302, size: 64, offset: 1088)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !2739, file: !2740, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !2739, file: !2740, line: 491, baseType: !401, size: 32, offset: 1184)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !2739, file: !2740, line: 501, baseType: !2783, size: 33792, offset: 1536)
!2783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !2784, line: 448, size: 33792, elements: !2785)
!2784 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!2785 = !{!2786, !2787, !2788, !2950, !2951, !2957, !2958}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !2783, file: !2784, line: 461, baseType: !7, size: 32)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !2783, file: !2784, line: 468, baseType: !302, size: 64, offset: 64)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !2783, file: !2784, line: 476, baseType: !2789, size: 64, offset: 128)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !2784, line: 356, size: 33280, align: 512, elements: !2791)
!2791 = !{!2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2790, file: !2784, line: 358, baseType: !7, size: 32)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !2790, file: !2784, line: 361, baseType: !7, size: 32, offset: 32)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2790, file: !2784, line: 364, baseType: !405, size: 64, offset: 64)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !2790, file: !2784, line: 367, baseType: !405, size: 64, offset: 128)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !2790, file: !2784, line: 370, baseType: !405, size: 64, offset: 192)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !2790, file: !2784, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !2790, file: !2784, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !2790, file: !2784, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !2790, file: !2784, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2790, file: !2784, line: 397, baseType: !2802, size: 32768, offset: 512)
!2802 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !2784, line: 348, size: 32768, elements: !2803)
!2803 = !{!2804, !2819, !2856, !2933, !2946}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !2802, file: !2784, line: 349, baseType: !2805, size: 896)
!2805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !2784, line: 12, size: 896, elements: !2806)
!2806 = !{!2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2818}
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2805, file: !2784, line: 13, baseType: !401, size: 32)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2805, file: !2784, line: 14, baseType: !401, size: 32, offset: 32)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2805, file: !2784, line: 15, baseType: !401, size: 32, offset: 64)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2805, file: !2784, line: 16, baseType: !401, size: 32, offset: 96)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2805, file: !2784, line: 17, baseType: !401, size: 32, offset: 128)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2805, file: !2784, line: 18, baseType: !401, size: 32, offset: 160)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2805, file: !2784, line: 19, baseType: !401, size: 32, offset: 192)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2805, file: !2784, line: 22, baseType: !2815, size: 640, offset: 224)
!2815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 640, elements: !2816)
!2816 = !{!2817}
!2817 = !DISubrange(count: 20)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2805, file: !2784, line: 25, baseType: !401, size: 32, offset: 864)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !2802, file: !2784, line: 350, baseType: !2820, size: 4096, align: 128)
!2820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !2784, line: 34, size: 4096, align: 128, elements: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826, !2841, !2842, !2843, !2845, !2847, !2851}
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2820, file: !2784, line: 35, baseType: !220, size: 16)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2820, file: !2784, line: 36, baseType: !220, size: 16, offset: 16)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2820, file: !2784, line: 37, baseType: !220, size: 16, offset: 32)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !2820, file: !2784, line: 38, baseType: !220, size: 16, offset: 48)
!2826 = !DIDerivedType(tag: DW_TAG_member, scope: !2820, file: !2784, line: 39, baseType: !2827, size: 128, offset: 64)
!2827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2820, file: !2784, line: 39, size: 128, elements: !2828)
!2828 = !{!2829, !2834}
!2829 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2784, line: 40, baseType: !2830, size: 128)
!2830 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2827, file: !2784, line: 40, size: 128, elements: !2831)
!2831 = !{!2832, !2833}
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !2830, file: !2784, line: 41, baseType: !405, size: 64)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !2830, file: !2784, line: 42, baseType: !405, size: 64, offset: 64)
!2834 = !DIDerivedType(tag: DW_TAG_member, scope: !2827, file: !2784, line: 44, baseType: !2835, size: 128)
!2835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2827, file: !2784, line: 44, size: 128, elements: !2836)
!2836 = !{!2837, !2838, !2839, !2840}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2835, file: !2784, line: 45, baseType: !401, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2835, file: !2784, line: 46, baseType: !401, size: 32, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2835, file: !2784, line: 47, baseType: !401, size: 32, offset: 64)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2835, file: !2784, line: 48, baseType: !401, size: 32, offset: 96)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !2820, file: !2784, line: 51, baseType: !401, size: 32, offset: 192)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !2820, file: !2784, line: 52, baseType: !401, size: 32, offset: 224)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2820, file: !2784, line: 55, baseType: !2844, size: 1024, offset: 256)
!2844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 1024, elements: !414)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !2820, file: !2784, line: 58, baseType: !2846, size: 2048, offset: 1280)
!2846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 2048, elements: !257)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !2820, file: !2784, line: 60, baseType: !2848, size: 384, offset: 3328)
!2848 = !DICompositeType(tag: DW_TAG_array_type, baseType: !401, size: 384, elements: !2849)
!2849 = !{!2850}
!2850 = !DISubrange(count: 12)
!2851 = !DIDerivedType(tag: DW_TAG_member, scope: !2820, file: !2784, line: 62, baseType: !2852, size: 384, offset: 3712)
!2852 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2820, file: !2784, line: 62, size: 384, elements: !2853)
!2853 = !{!2854, !2855}
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !2852, file: !2784, line: 63, baseType: !2848, size: 384)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !2852, file: !2784, line: 64, baseType: !2848, size: 384)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !2802, file: !2784, line: 351, baseType: !2857, size: 1088)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !2784, line: 79, size: 1088, elements: !2858)
!2858 = !{!2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2932}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !2857, file: !2784, line: 80, baseType: !401, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !2857, file: !2784, line: 81, baseType: !401, size: 32, offset: 32)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !2857, file: !2784, line: 82, baseType: !401, size: 32, offset: 64)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !2857, file: !2784, line: 83, baseType: !401, size: 32, offset: 96)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !2857, file: !2784, line: 84, baseType: !401, size: 32, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !2857, file: !2784, line: 85, baseType: !401, size: 32, offset: 160)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !2857, file: !2784, line: 86, baseType: !401, size: 32, offset: 192)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !2857, file: !2784, line: 88, baseType: !2815, size: 640, offset: 224)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !2857, file: !2784, line: 89, baseType: !210, size: 8, offset: 864)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !2857, file: !2784, line: 90, baseType: !210, size: 8, offset: 872)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !2857, file: !2784, line: 91, baseType: !210, size: 8, offset: 880)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !2857, file: !2784, line: 92, baseType: !210, size: 8, offset: 888)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !2857, file: !2784, line: 93, baseType: !210, size: 8, offset: 896)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !2857, file: !2784, line: 94, baseType: !210, size: 8, offset: 904)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2857, file: !2784, line: 95, baseType: !2874, size: 64, offset: 960)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !2876, line: 11, size: 128, elements: !2877)
!2876 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!2877 = !{!2878, !2879}
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !2875, file: !2876, line: 12, baseType: !288, size: 64)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2875, file: !2876, line: 13, baseType: !2880, size: 64, offset: 64)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !2882, line: 103, size: 1344, elements: !2883)
!2882 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!2883 = !{!2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2912, !2913, !2914}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !2881, file: !2882, line: 109, baseType: !302, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !2881, file: !2882, line: 110, baseType: !302, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !2881, file: !2882, line: 111, baseType: !302, size: 64, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !2881, file: !2882, line: 112, baseType: !302, size: 64, offset: 192)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !2881, file: !2882, line: 113, baseType: !302, size: 64, offset: 256)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !2881, file: !2882, line: 114, baseType: !302, size: 64, offset: 320)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !2881, file: !2882, line: 117, baseType: !302, size: 64, offset: 384)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !2881, file: !2882, line: 118, baseType: !302, size: 64, offset: 448)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !2881, file: !2882, line: 119, baseType: !302, size: 64, offset: 512)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !2881, file: !2882, line: 120, baseType: !302, size: 64, offset: 576)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !2881, file: !2882, line: 121, baseType: !302, size: 64, offset: 640)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !2881, file: !2882, line: 122, baseType: !302, size: 64, offset: 704)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !2881, file: !2882, line: 123, baseType: !302, size: 64, offset: 768)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !2881, file: !2882, line: 124, baseType: !302, size: 64, offset: 832)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !2881, file: !2882, line: 125, baseType: !302, size: 64, offset: 896)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !2881, file: !2882, line: 139, baseType: !302, size: 64, offset: 960)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !2881, file: !2882, line: 142, baseType: !302, size: 64, offset: 1024)
!2901 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2882, line: 144, baseType: !2902, size: 64, offset: 1088)
!2902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2882, line: 144, size: 64, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2902, file: !2882, line: 146, baseType: !220, size: 16)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !2902, file: !2882, line: 148, baseType: !405, size: 64)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !2902, file: !2882, line: 150, baseType: !2907, size: 64)
!2907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !2882, line: 59, size: 64, elements: !2908)
!2908 = !{!2909, !2910, !2911}
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2907, file: !2882, line: 61, baseType: !405, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !2907, file: !2882, line: 63, baseType: !405, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !2907, file: !2882, line: 65, baseType: !405, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2881, file: !2882, line: 153, baseType: !302, size: 64, offset: 1152)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !2881, file: !2882, line: 154, baseType: !302, size: 64, offset: 1216)
!2914 = !DIDerivedType(tag: DW_TAG_member, scope: !2881, file: !2882, line: 156, baseType: !2915, size: 64, offset: 1280)
!2915 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2881, file: !2882, line: 156, size: 64, elements: !2916)
!2916 = !{!2917, !2918, !2919}
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2915, file: !2882, line: 158, baseType: !220, size: 16)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !2915, file: !2882, line: 160, baseType: !405, size: 64)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !2915, file: !2882, line: 162, baseType: !2920, size: 64)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !2882, line: 69, size: 64, elements: !2921)
!2921 = !{!2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931}
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !2920, file: !2882, line: 71, baseType: !405, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !2920, file: !2882, line: 73, baseType: !405, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !2920, file: !2882, line: 75, baseType: !405, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !2920, file: !2882, line: 77, baseType: !405, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2920, file: !2882, line: 80, baseType: !405, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2920, file: !2882, line: 83, baseType: !405, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !2920, file: !2882, line: 86, baseType: !405, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !2920, file: !2882, line: 88, baseType: !405, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !2920, file: !2882, line: 93, baseType: !405, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !2920, file: !2882, line: 100, baseType: !405, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !2857, file: !2784, line: 96, baseType: !401, size: 32, offset: 1024)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !2802, file: !2784, line: 352, baseType: !2934, size: 4608, align: 512)
!2934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !2784, line: 333, size: 4608, align: 512, elements: !2935)
!2935 = !{!2936, !2937, !2944}
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !2934, file: !2784, line: 334, baseType: !2820, size: 4096, align: 128)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !2934, file: !2784, line: 335, baseType: !2938, size: 512, offset: 4096)
!2938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !2784, line: 312, size: 512, elements: !2939)
!2939 = !{!2940, !2941, !2942}
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !2938, file: !2784, line: 313, baseType: !405, size: 64)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !2938, file: !2784, line: 314, baseType: !405, size: 64, offset: 64)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2938, file: !2784, line: 315, baseType: !2943, size: 384, offset: 128)
!2943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 384, elements: !850)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !2934, file: !2784, line: 336, baseType: !2945, offset: 4608)
!2945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, elements: !747)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !2802, file: !2784, line: 353, baseType: !2947, size: 32768)
!2947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !210, size: 32768, elements: !2948)
!2948 = !{!2949}
!2949 = !DISubrange(count: 4096)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !2783, file: !2784, line: 484, baseType: !2789, size: 64, offset: 192)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2783, file: !2784, line: 491, baseType: !2952, size: 128, offset: 256)
!2952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !2784, line: 404, size: 128, elements: !2953)
!2953 = !{!2954, !2955, !2956}
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !2952, file: !2784, line: 424, baseType: !405, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !2952, file: !2784, line: 432, baseType: !7, size: 32, offset: 64)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !2952, file: !2784, line: 440, baseType: !7, size: 32, offset: 96)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !2783, file: !2784, line: 498, baseType: !2952, size: 128, offset: 384)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !2783, file: !2784, line: 508, baseType: !2790, size: 33280, align: 512, offset: 512)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !1664, file: !1665, line: 16, baseType: !732, size: 192, offset: 512)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1664, file: !1665, line: 17, baseType: !202, size: 32, offset: 704)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !484, file: !14, line: 1240, baseType: !146, size: 64, offset: 6912)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !484, file: !14, line: 1243, baseType: !401, size: 32, offset: 6976)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !484, file: !14, line: 1245, baseType: !820, size: 64, offset: 7040)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !484, file: !14, line: 1246, baseType: !820, size: 64, offset: 7104)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !484, file: !14, line: 1248, baseType: !402, size: 32, offset: 7168)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !484, file: !14, line: 1249, baseType: !2967, size: 64, offset: 7232)
!2967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2968, size: 64)
!2968 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !14, line: 634, flags: DIFlagFwdDecl)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !484, file: !14, line: 1252, baseType: !2970, size: 256, offset: 7296)
!2970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 256, elements: !414)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !484, file: !14, line: 1253, baseType: !2972, size: 128, offset: 7552)
!2972 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2973, line: 21, baseType: !2974)
!2973 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2974 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2973, line: 19, size: 128, elements: !2975)
!2975 = !{!2976}
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2974, file: !2973, line: 20, baseType: !2977, size: 128)
!2977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !212, size: 128, elements: !2119)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !484, file: !14, line: 1255, baseType: !7, size: 32, offset: 7680)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !484, file: !14, line: 1261, baseType: !616, size: 256, offset: 7744)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !484, file: !14, line: 1267, baseType: !171, size: 64, offset: 8000)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !484, file: !14, line: 1269, baseType: !430, size: 64, offset: 8064)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !484, file: !14, line: 1271, baseType: !2983, size: 448, offset: 8128)
!2983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !1443, line: 63, size: 448, elements: !2984)
!2984 = !{!2985, !2990, !2991, !2992, !2993, !2994, !2995}
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2983, file: !1443, line: 64, baseType: !2986, size: 64)
!2986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2987, size: 64)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!302, !2989, !1441}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2983, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2983, file: !1443, line: 66, baseType: !2986, size: 64, offset: 64)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2983, file: !1443, line: 69, baseType: !288, size: 64, offset: 128)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2983, file: !1443, line: 70, baseType: !85, size: 32, offset: 192)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2983, file: !1443, line: 71, baseType: !7, size: 32, offset: 224)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2983, file: !1443, line: 74, baseType: !152, size: 128, offset: 256)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2983, file: !1443, line: 85, baseType: !2996, size: 64, offset: 384)
!2996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !484, file: !14, line: 1274, baseType: !620, size: 64, offset: 8576)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !484, file: !14, line: 1280, baseType: !620, size: 64, offset: 8640)
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !484, file: !14, line: 1283, baseType: !85, size: 32, offset: 8704)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !484, file: !14, line: 1286, baseType: !1375, size: 32, offset: 8736)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !484, file: !14, line: 1289, baseType: !3002, size: 64, offset: 8768)
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1235, line: 18, flags: DIFlagFwdDecl)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !484, file: !14, line: 1290, baseType: !523, size: 64, offset: 8832)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !484, file: !14, line: 1297, baseType: !946, size: 64, offset: 8896)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !484, file: !14, line: 1304, baseType: !3007, size: 64, offset: 8960)
!3007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3008, line: 49, size: 64, elements: !3009)
!3008 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3009 = !{!3010}
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3007, file: !3008, line: 50, baseType: !3011, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3012, size: 64)
!3012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3008, line: 41, size: 512, align: 512, elements: !3013)
!3013 = !{!3014, !3015, !3020}
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3012, file: !3008, line: 43, baseType: !182, size: 32)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3012, file: !3008, line: 45, baseType: !3016, size: 192, offset: 64)
!3016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3008, line: 29, size: 192, elements: !3017)
!3017 = !{!3018, !3019}
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3016, file: !3008, line: 30, baseType: !152, size: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3016, file: !3008, line: 32, baseType: !288, size: 64, offset: 128)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3012, file: !3008, line: 46, baseType: !288, size: 64, offset: 256)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !484, file: !14, line: 1305, baseType: !3007, size: 64, offset: 9024)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !484, file: !14, line: 1306, baseType: !674, size: 128, align: 64, offset: 9088)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !484, file: !14, line: 1307, baseType: !1234, size: 256, offset: 9216)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !484, file: !14, line: 1309, baseType: !616, size: 256, offset: 9472)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !484, file: !14, line: 1314, baseType: !85, size: 32, offset: 9728)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !484, file: !14, line: 1317, baseType: !182, size: 32, align: 512, offset: 10240)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !484, file: !14, line: 1318, baseType: !152, size: 128, offset: 10304)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !484, file: !14, line: 1320, baseType: !182, size: 32, offset: 10432)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !484, file: !14, line: 1321, baseType: !152, size: 128, offset: 10496)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !478, file: !479, line: 73, baseType: !85, size: 32, offset: 128)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !478, file: !479, line: 74, baseType: !3032, size: 64, offset: 192)
!3032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !771, line: 42, flags: DIFlagFwdDecl)
!3034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !432, file: !369, line: 141, baseType: !3036, size: 64, offset: 704)
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!85, !1504, !863}
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !432, file: !369, line: 142, baseType: !3040, size: 64, offset: 768)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!367, !367, !3043}
!3043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !333)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !368, file: !369, line: 96, baseType: !483, size: 64, offset: 832)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !368, file: !369, line: 97, baseType: !302, size: 64, offset: 896)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !368, file: !369, line: 98, baseType: !146, size: 64, offset: 960)
!3048 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !369, line: 100, baseType: !3049, size: 128, offset: 1024)
!3049 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !369, line: 100, size: 128, elements: !3050)
!3050 = !{!3051, !3052}
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3049, file: !369, line: 101, baseType: !152, size: 128)
!3052 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3049, file: !369, line: 102, baseType: !3053, size: 64)
!3053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !368, file: !369, line: 104, baseType: !152, size: 128, offset: 1152)
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !368, file: !369, line: 105, baseType: !152, size: 128, offset: 1280)
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !368, file: !369, line: 113, baseType: !3057, size: 128, offset: 1408)
!3057 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !369, line: 109, size: 128, elements: !3058)
!3058 = !{!3059, !3060, !3061}
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3057, file: !369, line: 110, baseType: !527, size: 128)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3057, file: !369, line: 111, baseType: !383, size: 128)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3057, file: !369, line: 112, baseType: !674, size: 128, align: 64)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !361, file: !14, line: 1968, baseType: !3063, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3064, size: 64)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{!171, !367, !332, !3066}
!3066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !3068, line: 10, size: 128, elements: !3069)
!3068 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!3069 = !{!3070, !3074}
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3067, file: !3068, line: 11, baseType: !3071, size: 64)
!3071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3072, size: 64)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !146}
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3067, file: !3068, line: 12, baseType: !146, size: 64, offset: 64)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !361, file: !14, line: 1969, baseType: !3076, size: 64, offset: 128)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!85, !3032, !332, !85}
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !361, file: !14, line: 1970, baseType: !3080, size: 64, offset: 192)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!355, !332, !85, !863}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !361, file: !14, line: 1972, baseType: !3084, size: 64, offset: 256)
!3084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3085, size: 64)
!3085 = !DISubroutineType(types: !3086)
!3086 = !{!85, !367, !252, !85}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !361, file: !14, line: 1974, baseType: !3088, size: 64, offset: 320)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!85, !3032, !332, !367, !294, !863}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !361, file: !14, line: 1976, baseType: !3092, size: 64, offset: 384)
!3092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3093, size: 64)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!85, !367, !332, !367}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !361, file: !14, line: 1977, baseType: !3096, size: 64, offset: 448)
!3096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3097, size: 64)
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!85, !332, !367}
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !361, file: !14, line: 1978, baseType: !3100, size: 64, offset: 512)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!85, !3032, !332, !367, !171}
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !361, file: !14, line: 1980, baseType: !3104, size: 64, offset: 576)
!3104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3105, size: 64)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!85, !3032, !332, !367, !294}
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !361, file: !14, line: 1982, baseType: !3096, size: 64, offset: 640)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !361, file: !14, line: 1983, baseType: !3109, size: 64, offset: 704)
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3110, size: 64)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!85, !3032, !332, !367, !294, !488}
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !361, file: !14, line: 1985, baseType: !3113, size: 64, offset: 768)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{!85, !3032, !332, !367, !332, !367, !7}
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !361, file: !14, line: 1987, baseType: !3117, size: 64, offset: 832)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DISubroutineType(types: !3119)
!3119 = !{!85, !3032, !367, !3120}
!3120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3121, size: 64)
!3121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !14, line: 226, size: 640, elements: !3122)
!3122 = !{!3123, !3124, !3125, !3135, !3144, !3145, !3150, !3151, !3152}
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !3121, file: !14, line: 227, baseType: !7, size: 32)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !3121, file: !14, line: 228, baseType: !294, size: 16, offset: 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !14, line: 241, baseType: !3126, size: 32, offset: 64)
!3126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !14, line: 241, size: 32, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !3126, file: !14, line: 242, baseType: !338, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !3126, file: !14, line: 243, baseType: !3130, size: 32)
!3130 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !3131, line: 16, baseType: !3132)
!3131 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!3132 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3131, line: 14, size: 32, elements: !3133)
!3133 = !{!3134}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3132, file: !3131, line: 15, baseType: !343, size: 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, scope: !3121, file: !14, line: 245, baseType: !3136, size: 32, offset: 96)
!3136 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3121, file: !14, line: 245, size: 32, elements: !3137)
!3137 = !{!3138, !3139}
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !3136, file: !14, line: 246, baseType: !347, size: 32)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !3136, file: !14, line: 247, baseType: !3140, size: 32)
!3140 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !3131, line: 20, baseType: !3141)
!3141 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3131, line: 18, size: 32, elements: !3142)
!3142 = !{!3143}
!3143 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3141, file: !3131, line: 19, baseType: !351, size: 32)
!3144 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !3121, file: !14, line: 249, baseType: !493, size: 64, offset: 128)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !3121, file: !14, line: 250, baseType: !3146, size: 128, offset: 192)
!3146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !821, line: 13, size: 128, elements: !3147)
!3147 = !{!3148, !3149}
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3146, file: !821, line: 14, baseType: !820, size: 64)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3146, file: !821, line: 15, baseType: !288, size: 64, offset: 64)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !3121, file: !14, line: 251, baseType: !3146, size: 128, offset: 320)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !3121, file: !14, line: 252, baseType: !3146, size: 128, offset: 448)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !3121, file: !14, line: 259, baseType: !991, size: 64, offset: 576)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !361, file: !14, line: 1988, baseType: !3154, size: 64, offset: 896)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DISubroutineType(types: !3156)
!3156 = !{!85, !3032, !1504, !3157, !401, !7}
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !3159, line: 22, size: 1280, elements: !3160)
!3159 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!3160 = !{!3161, !3162, !3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181}
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !3158, file: !3159, line: 23, baseType: !401, size: 32)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3158, file: !3159, line: 24, baseType: !294, size: 16, offset: 32)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !3158, file: !3159, line: 25, baseType: !7, size: 32, offset: 64)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !3158, file: !3159, line: 26, baseType: !828, size: 32, offset: 96)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !3158, file: !3159, line: 27, baseType: !405, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !3158, file: !3159, line: 28, baseType: !405, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !3158, file: !3159, line: 41, baseType: !405, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !3158, file: !3159, line: 42, baseType: !488, size: 32, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !3158, file: !3159, line: 43, baseType: !488, size: 32, offset: 352)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !3158, file: !3159, line: 44, baseType: !338, size: 32, offset: 384)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !3158, file: !3159, line: 45, baseType: !347, size: 32, offset: 416)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3158, file: !3159, line: 46, baseType: !493, size: 64, offset: 448)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !3158, file: !3159, line: 47, baseType: !3146, size: 128, offset: 512)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !3158, file: !3159, line: 48, baseType: !3146, size: 128, offset: 640)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !3158, file: !3159, line: 49, baseType: !3146, size: 128, offset: 768)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !3158, file: !3159, line: 50, baseType: !3146, size: 128, offset: 896)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !3158, file: !3159, line: 51, baseType: !405, size: 64, offset: 1024)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !3158, file: !3159, line: 52, baseType: !405, size: 64, offset: 1088)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !3158, file: !3159, line: 53, baseType: !401, size: 32, offset: 1152)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !3158, file: !3159, line: 54, baseType: !401, size: 32, offset: 1184)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !3158, file: !3159, line: 55, baseType: !405, size: 64, offset: 1216)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !361, file: !14, line: 1990, baseType: !3183, size: 64, offset: 960)
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!284, !367, !252, !299}
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !361, file: !14, line: 1991, baseType: !3187, size: 64, offset: 1024)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3188, size: 64)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!85, !332, !3190, !405, !405}
!3190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3191, size: 64)
!3191 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !14, line: 55, flags: DIFlagFwdDecl)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !361, file: !14, line: 1993, baseType: !3193, size: 64, offset: 1088)
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DISubroutineType(types: !3195)
!3195 = !{!85, !332, !85}
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !361, file: !14, line: 1994, baseType: !3197, size: 64, offset: 1152)
!3197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3198, size: 64)
!3198 = !DISubroutineType(types: !3199)
!3199 = !{!85, !332, !367, !991, !7, !294}
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !361, file: !14, line: 1997, baseType: !3201, size: 64, offset: 1216)
!3201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3202, size: 64)
!3202 = !DISubroutineType(types: !3203)
!3203 = !{!85, !3032, !332, !991, !294}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !361, file: !14, line: 1999, baseType: !3205, size: 64, offset: 1280)
!3205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3206, size: 64)
!3206 = !DISubroutineType(types: !3207)
!3207 = !{!355, !3032, !367, !85}
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !361, file: !14, line: 2001, baseType: !3209, size: 64, offset: 1344)
!3209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3210, size: 64)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!85, !3032, !367, !355, !85}
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !361, file: !14, line: 2003, baseType: !3213, size: 64, offset: 1408)
!3213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3214, size: 64)
!3214 = !DISubroutineType(types: !3215)
!3215 = !{!85, !3032, !367, !3216}
!3216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3217, size: 64)
!3217 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !14, line: 76, flags: DIFlagFwdDecl)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !361, file: !14, line: 2005, baseType: !3219, size: 64, offset: 1472)
!3219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3220, size: 64)
!3220 = !DISubroutineType(types: !3221)
!3221 = !{!85, !367, !3216}
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !361, file: !14, line: 2006, baseType: !3223, size: 64, offset: 1536)
!3223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3224, size: 64)
!3224 = !DISubroutineType(types: !3225)
!3225 = !{!3226, !332}
!3226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3227, size: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !14, line: 3192, size: 192, elements: !3228)
!3228 = !{!3229, !3236}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !3227, file: !14, line: 3193, baseType: !3230, size: 128)
!3230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !3231, line: 296, size: 128, elements: !3232)
!3231 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!3232 = !{!3233, !3234, !3235}
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !3230, file: !3231, line: 297, baseType: !182, size: 32)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !3230, file: !3231, line: 299, baseType: !1446, size: 32, offset: 32)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !3230, file: !3231, line: 300, baseType: !146, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !3227, file: !14, line: 3194, baseType: !401, size: 32, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !333, file: !14, line: 655, baseType: !483, size: 64, offset: 448)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !333, file: !14, line: 656, baseType: !328, size: 64, offset: 512)
!3239 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !333, file: !14, line: 659, baseType: !146, size: 64, offset: 576)
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !333, file: !14, line: 663, baseType: !302, size: 64, offset: 640)
!3241 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !14, line: 671, baseType: !3242, size: 32, offset: 704)
!3242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !14, line: 671, size: 32, elements: !3243)
!3243 = !{!3244, !3246}
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3242, file: !14, line: 672, baseType: !3245, size: 32)
!3245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3242, file: !14, line: 673, baseType: !7, size: 32)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !333, file: !14, line: 675, baseType: !488, size: 32, offset: 736)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !333, file: !14, line: 676, baseType: !493, size: 64, offset: 768)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !333, file: !14, line: 677, baseType: !3146, size: 128, offset: 832)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !333, file: !14, line: 678, baseType: !3146, size: 128, offset: 960)
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !333, file: !14, line: 679, baseType: !3146, size: 128, offset: 1088)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !333, file: !14, line: 680, baseType: !182, size: 32, offset: 1216)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !333, file: !14, line: 681, baseType: !222, size: 16, offset: 1248)
!3254 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !333, file: !14, line: 682, baseType: !210, size: 8, offset: 1264)
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !333, file: !14, line: 683, baseType: !210, size: 8, offset: 1272)
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !333, file: !14, line: 684, baseType: !1577, size: 64, offset: 1280)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !333, file: !14, line: 691, baseType: !302, size: 64, offset: 1344)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !333, file: !14, line: 692, baseType: !804, size: 320, offset: 1408)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !333, file: !14, line: 694, baseType: !302, size: 64, offset: 1728)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !333, file: !14, line: 695, baseType: !302, size: 64, offset: 1792)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !333, file: !14, line: 697, baseType: !527, size: 128, offset: 1856)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !333, file: !14, line: 698, baseType: !152, size: 128, offset: 1984)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !333, file: !14, line: 707, baseType: !152, size: 128, offset: 2112)
!3264 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !333, file: !14, line: 708, baseType: !152, size: 128, offset: 2240)
!3265 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !14, line: 709, baseType: !3266, size: 128, offset: 2368)
!3266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !14, line: 709, size: 128, elements: !3267)
!3267 = !{!3268, !3269}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3266, file: !14, line: 710, baseType: !523, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3266, file: !14, line: 711, baseType: !674, size: 128, align: 64)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !333, file: !14, line: 713, baseType: !622, size: 64, offset: 2496)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !333, file: !14, line: 714, baseType: !622, size: 64, offset: 2560)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !333, file: !14, line: 715, baseType: !202, size: 32, offset: 2624)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !333, file: !14, line: 716, baseType: !202, size: 32, offset: 2656)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !333, file: !14, line: 717, baseType: !202, size: 32, offset: 2688)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !333, file: !14, line: 719, baseType: !202, size: 32, offset: 2720)
!3276 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !14, line: 721, baseType: !3277, size: 64, offset: 2752)
!3277 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !14, line: 721, size: 64, elements: !3278)
!3278 = !{!3279, !3280}
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3277, file: !14, line: 722, baseType: !982, size: 64)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3277, file: !14, line: 723, baseType: !554, size: 64)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !333, file: !14, line: 725, baseType: !3282, size: 64, offset: 2816)
!3282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3283, size: 64)
!3283 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !14, line: 725, flags: DIFlagFwdDecl)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !333, file: !14, line: 726, baseType: !329, size: 1536, align: 64, offset: 2880)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !333, file: !14, line: 727, baseType: !152, size: 128, offset: 4416)
!3286 = !DIDerivedType(tag: DW_TAG_member, scope: !333, file: !14, line: 728, baseType: !3287, size: 64, offset: 4544)
!3287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !333, file: !14, line: 728, size: 64, elements: !3288)
!3288 = !{!3289, !3290, !3293, !3294}
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3287, file: !14, line: 729, baseType: !1324, size: 64)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3287, file: !14, line: 730, baseType: !3291, size: 64)
!3291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3292, size: 64)
!3292 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !14, line: 730, flags: DIFlagFwdDecl)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3287, file: !14, line: 731, baseType: !252, size: 64)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3287, file: !14, line: 732, baseType: !7, size: 32)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !333, file: !14, line: 735, baseType: !402, size: 32, offset: 4608)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !333, file: !14, line: 738, baseType: !402, size: 32, offset: 4640)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !333, file: !14, line: 739, baseType: !2967, size: 64, offset: 4672)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !333, file: !14, line: 750, baseType: !146, size: 64, offset: 4736)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !329, file: !14, line: 474, baseType: !3230, size: 128, offset: 64)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !329, file: !14, line: 475, baseType: !804, size: 320, offset: 192)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !329, file: !14, line: 476, baseType: !1446, size: 32, offset: 512)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !329, file: !14, line: 477, baseType: !202, size: 32, offset: 544)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !329, file: !14, line: 482, baseType: !1852, size: 128, offset: 576)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !329, file: !14, line: 483, baseType: !302, size: 64, offset: 704)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !329, file: !14, line: 484, baseType: !302, size: 64, offset: 768)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !329, file: !14, line: 485, baseType: !3307, size: 64, offset: 832)
!3307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3308, size: 64)
!3308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3309)
!3309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !14, line: 404, size: 1280, elements: !3310)
!3310 = !{!3311, !3315, !3385, !3389, !3393, !3399, !3403, !3407, !3412, !3416, !3420, !3424, !3425, !3429, !3433, !3437, !3442, !3446, !3453, !3454}
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !3309, file: !14, line: 405, baseType: !3312, size: 64)
!3312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3313, size: 64)
!3313 = !DISubroutineType(types: !3314)
!3314 = !{!85, !2543, !566}
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !3309, file: !14, line: 406, baseType: !3316, size: 64, offset: 64)
!3316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!85, !991, !3319}
!3319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3320, size: 64)
!3320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1068, line: 293, size: 1536, elements: !3321)
!3321 = !{!3322, !3352, !3366}
!3322 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !1068, line: 295, baseType: !3323, size: 512)
!3323 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3320, file: !1068, line: 295, size: 512, elements: !3324)
!3324 = !{!3325, !3351}
!3325 = !DIDerivedType(tag: DW_TAG_member, scope: !3323, file: !1068, line: 296, baseType: !3326, size: 448)
!3326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3323, file: !1068, line: 296, size: 448, elements: !3327)
!3327 = !{!3328, !3329, !3338, !3339, !3340, !3349, !3350}
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3326, file: !1068, line: 298, baseType: !302, size: 64)
!3329 = !DIDerivedType(tag: DW_TAG_member, scope: !3326, file: !1068, line: 299, baseType: !3330, size: 128, offset: 64)
!3330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3326, file: !1068, line: 299, size: 128, elements: !3331)
!3331 = !{!3332, !3333}
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3330, file: !1068, line: 300, baseType: !152, size: 128)
!3333 = !DIDerivedType(tag: DW_TAG_member, scope: !3330, file: !1068, line: 302, baseType: !3334, size: 128)
!3334 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3330, file: !1068, line: 302, size: 128, elements: !3335)
!3335 = !{!3336, !3337}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !3334, file: !1068, line: 303, baseType: !146, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !3334, file: !1068, line: 305, baseType: !7, size: 32, offset: 64)
!3338 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !3326, file: !1068, line: 310, baseType: !328, size: 64, offset: 192)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !3326, file: !1068, line: 311, baseType: !302, size: 64, offset: 256)
!3340 = !DIDerivedType(tag: DW_TAG_member, scope: !3326, file: !1068, line: 312, baseType: !3341, size: 64, offset: 320)
!3341 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3326, file: !1068, line: 312, size: 64, elements: !3342)
!3342 = !{!3343, !3344}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !3341, file: !1068, line: 313, baseType: !146, size: 64)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !3341, file: !1068, line: 314, baseType: !3345, size: 64)
!3345 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1068, line: 257, baseType: !3346)
!3346 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1068, line: 255, size: 64, elements: !3347)
!3347 = !{!3348}
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3346, file: !1068, line: 256, baseType: !302, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !3326, file: !1068, line: 316, baseType: !202, size: 32, offset: 384)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !3326, file: !1068, line: 317, baseType: !202, size: 32, offset: 416)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3323, file: !1068, line: 323, baseType: !2544, size: 512, align: 128)
!3352 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !1068, line: 325, baseType: !3353, size: 512, offset: 512)
!3353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3320, file: !1068, line: 325, size: 512, elements: !3354)
!3354 = !{!3355, !3365}
!3355 = !DIDerivedType(tag: DW_TAG_member, scope: !3353, file: !1068, line: 326, baseType: !3356, size: 320)
!3356 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3353, file: !1068, line: 326, size: 320, elements: !3357)
!3357 = !{!3358, !3359, !3360, !3361, !3362, !3363, !3364}
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !3356, file: !1068, line: 327, baseType: !302, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !3356, file: !1068, line: 328, baseType: !302, size: 64, offset: 64)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !3356, file: !1068, line: 329, baseType: !302, size: 64, offset: 128)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !3356, file: !1068, line: 331, baseType: !202, size: 32, offset: 192)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !3356, file: !1068, line: 332, baseType: !202, size: 32, offset: 224)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !3356, file: !1068, line: 333, baseType: !202, size: 32, offset: 256)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !3356, file: !1068, line: 335, baseType: !7, size: 32, offset: 288)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !3353, file: !1068, line: 339, baseType: !2544, size: 512, align: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, scope: !3320, file: !1068, line: 341, baseType: !3367, size: 512, offset: 1024)
!3367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3320, file: !1068, line: 341, size: 512, elements: !3368)
!3368 = !{!3369, !3378, !3384}
!3369 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !1068, line: 342, baseType: !3370, size: 384)
!3370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !1068, line: 342, size: 384, elements: !3371)
!3371 = !{!3372, !3373, !3374, !3375, !3376, !3377}
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !3370, file: !1068, line: 343, baseType: !302, size: 64)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !3370, file: !1068, line: 344, baseType: !302, size: 64, offset: 64)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !3370, file: !1068, line: 346, baseType: !146, size: 64, offset: 128)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !3370, file: !1068, line: 347, baseType: !146, size: 64, offset: 192)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !3370, file: !1068, line: 348, baseType: !146, size: 64, offset: 256)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !3370, file: !1068, line: 349, baseType: !146, size: 64, offset: 320)
!3378 = !DIDerivedType(tag: DW_TAG_member, scope: !3367, file: !1068, line: 352, baseType: !3379, size: 256)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3367, file: !1068, line: 352, size: 256, elements: !3380)
!3380 = !{!3381, !3382, !3383}
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !3379, file: !1068, line: 353, baseType: !302, size: 64)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !3379, file: !1068, line: 354, baseType: !302, size: 64, offset: 64)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !3379, file: !1068, line: 356, baseType: !152, size: 128, offset: 128)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !3367, file: !1068, line: 359, baseType: !2544, size: 512, align: 128)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !3309, file: !14, line: 409, baseType: !3386, size: 64, offset: 128)
!3386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3387, size: 64)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!85, !328, !566}
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !3309, file: !14, line: 412, baseType: !3390, size: 64, offset: 192)
!3390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3391, size: 64)
!3391 = !DISubroutineType(types: !3392)
!3392 = !{!863, !328, !3319}
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !3309, file: !14, line: 414, baseType: !3394, size: 64, offset: 256)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3395, size: 64)
!3395 = !DISubroutineType(types: !3396)
!3396 = !{null, !3397}
!3397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3398, size: 64)
!3398 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !14, line: 310, flags: DIFlagFwdDecl)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !3309, file: !14, line: 416, baseType: !3400, size: 64, offset: 320)
!3400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3401 = !DISubroutineType(types: !3402)
!3402 = !{!85, !991, !328, !493, !7, !2716, !1340}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !3309, file: !14, line: 419, baseType: !3404, size: 64, offset: 384)
!3404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3405, size: 64)
!3405 = !DISubroutineType(types: !3406)
!3406 = !{!85, !991, !328, !493, !7, !7, !2543, !146}
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !3309, file: !14, line: 424, baseType: !3408, size: 64, offset: 448)
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DISubroutineType(types: !3410)
!3410 = !{!3411, !328, !3411}
!3411 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !153, line: 131, baseType: !405)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !3309, file: !14, line: 425, baseType: !3413, size: 64, offset: 512)
!3413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3319, !299, !299}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !3309, file: !14, line: 426, baseType: !3417, size: 64, offset: 576)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3418, size: 64)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{!863, !3319, !1446}
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !3309, file: !14, line: 427, baseType: !3421, size: 64, offset: 640)
!3421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3422, size: 64)
!3422 = !DISubroutineType(types: !3423)
!3423 = !{null, !3319}
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !3309, file: !14, line: 428, baseType: !1001, size: 64, offset: 704)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !3309, file: !14, line: 433, baseType: !3426, size: 64, offset: 768)
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!85, !328, !3319, !3319, !50}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !3309, file: !14, line: 435, baseType: !3430, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3431, size: 64)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!85, !3319}
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !3309, file: !14, line: 436, baseType: !3434, size: 64, offset: 896)
!3434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3435, size: 64)
!3435 = !DISubroutineType(types: !3436)
!3436 = !{!863, !3319, !299, !299}
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !3309, file: !14, line: 438, baseType: !3438, size: 64, offset: 960)
!3438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3439, size: 64)
!3439 = !DISubroutineType(types: !3440)
!3440 = !{null, !3319, !3441, !3441}
!3441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !3309, file: !14, line: 439, baseType: !3443, size: 64, offset: 1024)
!3443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3444, size: 64)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!85, !328, !2543}
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !3309, file: !14, line: 442, baseType: !3447, size: 64, offset: 1088)
!3447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3448, size: 64)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!85, !3450, !991, !3452}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !14, line: 66, flags: DIFlagFwdDecl)
!3452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3411, size: 64)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !3309, file: !14, line: 444, baseType: !1332, size: 64, offset: 1152)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !3309, file: !14, line: 445, baseType: !3455, size: 64, offset: 1216)
!3455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3456, size: 64)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!85, !1004, !1026}
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !329, file: !14, line: 486, baseType: !302, size: 64, offset: 896)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !329, file: !14, line: 487, baseType: !804, size: 320, offset: 960)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !329, file: !14, line: 488, baseType: !1375, size: 32, offset: 1280)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !329, file: !14, line: 489, baseType: !182, size: 32, offset: 1312)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !329, file: !14, line: 490, baseType: !152, size: 128, offset: 1344)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !329, file: !14, line: 491, baseType: !146, size: 64, offset: 1472)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !319, file: !278, line: 180, baseType: !3465, size: 64, offset: 320)
!3465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3466, size: 64)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!284, !991, !175, !318, !252, !493, !299}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !319, file: !278, line: 182, baseType: !3465, size: 64, offset: 384)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !319, file: !278, line: 184, baseType: !3470, size: 64, offset: 448)
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3471, size: 64)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!85, !991, !175, !318, !1066}
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !307, file: !278, line: 90, baseType: !3474, size: 64, offset: 192)
!3474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !307, file: !278, line: 91, baseType: !3476, size: 64, offset: 256)
!3476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !268, file: !168, line: 120, baseType: !3478, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3479, size: 64)
!3479 = !DISubroutineType(types: !3480)
!3480 = !{!3481, !235}
!3481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3482, size: 64)
!3482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3483)
!3483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !58, line: 39, size: 384, elements: !3484)
!3484 = !{!3485, !3486, !3490, !3494, !3500, !3504}
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3483, file: !58, line: 40, baseType: !57, size: 32)
!3486 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !3483, file: !58, line: 41, baseType: !3487, size: 64, offset: 64)
!3487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3488, size: 64)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!863}
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !3483, file: !58, line: 42, baseType: !3491, size: 64, offset: 128)
!3491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3492, size: 64)
!3492 = !DISubroutineType(types: !3493)
!3493 = !{!146}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !3483, file: !58, line: 43, baseType: !3495, size: 64, offset: 192)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DISubroutineType(types: !3497)
!3497 = !{!1195, !3498}
!3498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3499, size: 64)
!3499 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !58, line: 19, flags: DIFlagFwdDecl)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !3483, file: !58, line: 44, baseType: !3501, size: 64, offset: 256)
!3501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3502, size: 64)
!3502 = !DISubroutineType(types: !3503)
!3503 = !{!1195}
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !3483, file: !58, line: 45, baseType: !3071, size: 64, offset: 320)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !268, file: !168, line: 121, baseType: !3506, size: 64, offset: 256)
!3506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3507, size: 64)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!1195, !235}
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !268, file: !168, line: 122, baseType: !3510, size: 64, offset: 320)
!3510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3511 = !DISubroutineType(types: !3512)
!3512 = !{null, !235, !3513, !3514}
!3513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!3514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !167, file: !168, line: 70, baseType: !3516, size: 64, offset: 384)
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !3518, line: 190, size: 1152, elements: !3519)
!3518 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!3519 = !{!3520, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3599, !3600, !3601, !3602, !3603, !3606}
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3517, file: !3518, line: 191, baseType: !202, size: 32)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !3517, file: !3518, line: 192, baseType: !202, size: 32, offset: 32)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !3517, file: !3518, line: 202, baseType: !3516, size: 64, offset: 64)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3517, file: !3518, line: 203, baseType: !171, size: 64, offset: 128)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !3517, file: !3518, line: 205, baseType: !796, size: 192, align: 64, offset: 192)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !3517, file: !3518, line: 207, baseType: !1195, size: 64, offset: 384)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !3517, file: !3518, line: 208, baseType: !7, size: 32, offset: 448)
!3527 = !DIDerivedType(tag: DW_TAG_member, scope: !3517, file: !3518, line: 209, baseType: !3528, size: 256, offset: 512)
!3528 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3517, file: !3518, line: 209, size: 256, elements: !3529)
!3529 = !{!3530, !3539, !3543}
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !3528, file: !3518, line: 210, baseType: !3531, size: 256)
!3531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !3518, line: 153, size: 256, elements: !3532)
!3532 = !{!3533, !3534, !3535, !3538}
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !3531, file: !3518, line: 154, baseType: !302, size: 64)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !3531, file: !3518, line: 156, baseType: !1855, size: 64, offset: 64)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !3531, file: !3518, line: 162, baseType: !3536, size: 64, offset: 128)
!3536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3537, size: 64)
!3537 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !3518, line: 162, flags: DIFlagFwdDecl)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !3531, file: !3518, line: 167, baseType: !302, size: 64, offset: 192)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !3528, file: !3518, line: 211, baseType: !3540, size: 64)
!3540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !3518, line: 170, size: 64, elements: !3541)
!3541 = !{!3542}
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !3540, file: !3518, line: 171, baseType: !3516, size: 64)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3528, file: !3518, line: 212, baseType: !3544, size: 256)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !3518, line: 174, size: 256, elements: !3545)
!3545 = !{!3546, !3594, !3597, !3598}
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3544, file: !3518, line: 175, baseType: !3547, size: 64)
!3547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3548, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3549)
!3549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !3518, line: 271, size: 768, elements: !3550)
!3550 = !{!3551, !3571, !3575, !3576, !3577, !3578, !3579, !3583, !3584, !3585, !3586, !3590}
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3549, file: !3518, line: 276, baseType: !3552, size: 64)
!3552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3553, size: 64)
!3553 = !DISubroutineType(types: !3554)
!3554 = !{!85, !3555}
!3555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !3518, line: 251, size: 1216, elements: !3557)
!3557 = !{!3558, !3559, !3560, !3561, !3562, !3563, !3564, !3565, !3566, !3567, !3568, !3569, !3570}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !3556, file: !3518, line: 253, baseType: !3516, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !3556, file: !3518, line: 254, baseType: !991, size: 64, offset: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !3556, file: !3518, line: 255, baseType: !604, size: 64, offset: 128)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3556, file: !3518, line: 256, baseType: !146, size: 64, offset: 192)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3556, file: !3518, line: 259, baseType: !616, size: 256, offset: 256)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !3556, file: !3518, line: 260, baseType: !616, size: 256, offset: 512)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !3556, file: !3518, line: 261, baseType: !85, size: 32, offset: 768)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3556, file: !3518, line: 262, baseType: !152, size: 128, offset: 832)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !3556, file: !3518, line: 263, baseType: !252, size: 64, offset: 960)
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3556, file: !3518, line: 265, baseType: !299, size: 64, offset: 1024)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !3556, file: !3518, line: 266, baseType: !863, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !3556, file: !3518, line: 267, baseType: !863, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !3556, file: !3518, line: 268, baseType: !1277, size: 64, offset: 1152)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3549, file: !3518, line: 277, baseType: !3572, size: 64, offset: 64)
!3572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3573, size: 64)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{null, !3555}
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !3549, file: !3518, line: 290, baseType: !655, size: 64, offset: 128)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !3549, file: !3518, line: 292, baseType: !642, size: 64, offset: 192)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !3549, file: !3518, line: 293, baseType: !651, size: 64, offset: 256)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !3549, file: !3518, line: 294, baseType: !647, size: 64, offset: 320)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3549, file: !3518, line: 296, baseType: !3580, size: 64, offset: 384)
!3580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3581, size: 64)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!284, !3555, !252, !299, !493}
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !3549, file: !3518, line: 306, baseType: !299, size: 64, offset: 448)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !3549, file: !3518, line: 313, baseType: !863, size: 8, offset: 512)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3549, file: !3518, line: 314, baseType: !3580, size: 64, offset: 576)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3549, file: !3518, line: 317, baseType: !3587, size: 64, offset: 640)
!3587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3588, size: 64)
!3588 = !DISubroutineType(types: !3589)
!3589 = !{!1053, !3555, !1055}
!3590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3549, file: !3518, line: 320, baseType: !3591, size: 64, offset: 704)
!3591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3592, size: 64)
!3592 = !DISubroutineType(types: !3593)
!3593 = !{!85, !3555, !1066}
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3544, file: !3518, line: 176, baseType: !3595, size: 64, offset: 64)
!3595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3596, size: 64)
!3596 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !3518, line: 35, flags: DIFlagFwdDecl)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3544, file: !3518, line: 177, baseType: !493, size: 64, offset: 128)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !3544, file: !3518, line: 178, baseType: !3516, size: 64, offset: 192)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !3517, file: !3518, line: 215, baseType: !146, size: 64, offset: 768)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3517, file: !3518, line: 221, baseType: !405, size: 64, offset: 832)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3517, file: !3518, line: 223, baseType: !222, size: 16, offset: 896)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3517, file: !3518, line: 224, baseType: !294, size: 16, offset: 912)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !3517, file: !3518, line: 225, baseType: !3604, size: 64, offset: 960)
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3605, size: 64)
!3605 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !3518, line: 36, flags: DIFlagFwdDecl)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !3517, file: !3518, line: 227, baseType: !674, size: 128, align: 64, offset: 1024)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !167, file: !168, line: 71, baseType: !3608, size: 32, offset: 448)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !3609, line: 19, size: 32, elements: !3610)
!3609 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!3610 = !{!3611}
!3611 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3608, file: !3609, line: 20, baseType: !719, size: 32)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !167, file: !168, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !167, file: !168, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !167, file: !168, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!3615 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !167, file: !168, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!3616 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !167, file: !168, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !164, file: !6, line: 47, baseType: !147, size: 64, offset: 512)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !164, file: !6, line: 48, baseType: !175, size: 64, offset: 576)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !164, file: !6, line: 49, baseType: !3620, size: 64, offset: 640)
!3620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3621, size: 64)
!3621 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !164, file: !6, line: 50, baseType: !2066, size: 64, offset: 704)
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !148, file: !6, line: 418, baseType: !3624, size: 64, offset: 1408)
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !3626)
!3626 = !{!3627, !3628, !3633, !3637, !3641, !3645}
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !3625, file: !6, line: 54, baseType: !290, size: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !3625, file: !6, line: 55, baseType: !3629, size: 64, offset: 128)
!3629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3630, size: 64)
!3630 = !DISubroutineType(types: !3631)
!3631 = !{!284, !3624, !3632, !252}
!3632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !3625, file: !6, line: 57, baseType: !3634, size: 64, offset: 192)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3635, size: 64)
!3635 = !DISubroutineType(types: !3636)
!3636 = !{!284, !3624, !3632, !171, !299}
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !3625, file: !6, line: 59, baseType: !3638, size: 64, offset: 256)
!3638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3639, size: 64)
!3639 = !DISubroutineType(types: !3640)
!3640 = !{null, !147, !171}
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !3625, file: !6, line: 60, baseType: !3642, size: 64, offset: 320)
!3642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3643, size: 64)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!85, !147}
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3625, file: !6, line: 61, baseType: !3646, size: 64, offset: 384)
!3646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3647, size: 64)
!3647 = !DISubroutineType(types: !3648)
!3648 = !{null, !147}
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !148, file: !6, line: 419, baseType: !171, size: 64, offset: 1472)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !148, file: !6, line: 420, baseType: !171, size: 64, offset: 1536)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !148, file: !6, line: 421, baseType: !175, size: 64, offset: 1600)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !148, file: !6, line: 424, baseType: !3653, size: 64, offset: 1664)
!3653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3654, size: 64)
!3654 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3655)
!3655 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !148, file: !6, line: 425, baseType: !3657, size: 64, offset: 1728)
!3657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3658, size: 64)
!3658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !148, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !148, file: !6, line: 435, baseType: !616, size: 256, offset: 1856)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !148, file: !6, line: 437, baseType: !3662, size: 64, offset: 2112)
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !3664, line: 69, size: 320, elements: !3665)
!3664 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!3665 = !{!3666, !3667, !3668, !3685, !3687, !3691, !3692}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !3663, file: !3664, line: 70, baseType: !171, size: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3663, file: !3664, line: 71, baseType: !147, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3663, file: !3664, line: 72, baseType: !3669, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3670, size: 64)
!3670 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3671)
!3671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !3664, line: 47, size: 256, elements: !3672)
!3672 = !{!3673, !3674, !3680, !3684}
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3671, file: !3664, line: 49, baseType: !7, size: 32)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !3671, file: !3664, line: 51, baseType: !3675, size: 64, offset: 64)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!85, !171, !3678}
!3678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3679, size: 64)
!3679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3663)
!3680 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !3671, file: !3664, line: 53, baseType: !3681, size: 64, offset: 128)
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DISubroutineType(types: !3683)
!3683 = !{!85, !252, !3678}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !3671, file: !3664, line: 55, baseType: !3071, size: 64, offset: 192)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3663, file: !3664, line: 73, baseType: !3686, size: 16, offset: 192)
!3686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3663, file: !3664, line: 74, baseType: !3688, size: 8, offset: 208)
!3688 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !211, line: 16, baseType: !3689)
!3689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !213, line: 20, baseType: !3690)
!3690 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3663, file: !3664, line: 75, baseType: !210, size: 8, offset: 216)
!3692 = !DIDerivedType(tag: DW_TAG_member, scope: !3663, file: !3664, line: 76, baseType: !3693, size: 64, offset: 256)
!3693 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3663, file: !3664, line: 76, size: 64, elements: !3694)
!3694 = !{!3695, !3696, !3703}
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !3693, file: !3664, line: 77, baseType: !146, size: 64)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !3693, file: !3664, line: 78, baseType: !3697, size: 64)
!3697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3698, size: 64)
!3698 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3699)
!3699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !3664, line: 86, size: 128, elements: !3700)
!3700 = !{!3701, !3702}
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !3699, file: !3664, line: 87, baseType: !7, size: 32)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !3699, file: !3664, line: 88, baseType: !252, size: 64, offset: 64)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !3693, file: !3664, line: 79, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3705, size: 64)
!3705 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3706)
!3706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !3664, line: 92, size: 256, elements: !3707)
!3707 = !{!3708, !3709, !3710, !3711, !3712}
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !3706, file: !3664, line: 94, baseType: !7, size: 32)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !3706, file: !3664, line: 95, baseType: !7, size: 32, offset: 32)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3706, file: !3664, line: 96, baseType: !1676, size: 64, offset: 64)
!3711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3706, file: !3664, line: 97, baseType: !3669, size: 64, offset: 128)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !3706, file: !3664, line: 98, baseType: !146, size: 64, offset: 192)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !148, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !148, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !148, file: !6, line: 442, baseType: !3653, size: 64, offset: 2240)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !148, file: !6, line: 443, baseType: !3657, size: 64, offset: 2304)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !148, file: !6, line: 444, baseType: !863, size: 8, offset: 2368)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !148, file: !6, line: 451, baseType: !863, size: 8, offset: 2376)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !148, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !148, file: !6, line: 455, baseType: !3721, size: 64, offset: 2432)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !3723, line: 23, size: 96, elements: !3724)
!3723 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!3724 = !{!3725, !3726, !3727}
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3722, file: !3723, line: 24, baseType: !85, size: 32)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3722, file: !3723, line: 24, baseType: !85, size: 32, offset: 32)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3722, file: !3723, line: 24, baseType: !85, size: 32, offset: 64)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !148, file: !6, line: 458, baseType: !3729, size: 64, offset: 2496)
!3729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3730, size: 64)
!3730 = !DISubroutineType(types: !3731)
!3731 = !{!85}
!3732 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !148, file: !6, line: 460, baseType: !3733, size: 4032, align: 512, offset: 2560)
!3733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3734, size: 4032, elements: !3748)
!3734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !3735)
!3735 = !{!3736, !3737, !3738}
!3736 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3734, file: !6, line: 363, baseType: !146, size: 64)
!3737 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3734, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !3734, file: !6, line: 367, baseType: !3739, size: 448, offset: 128)
!3739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !3740)
!3740 = !{!3741, !3742}
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !3739, file: !6, line: 320, baseType: !147, size: 64)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3739, file: !6, line: 321, baseType: !3743, size: 384, offset: 64)
!3743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !3744, line: 40, size: 384, elements: !3745)
!3744 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!3745 = !{!3746}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3743, file: !3744, line: 41, baseType: !3747, size: 384, align: 64)
!3747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !796, size: 384, align: 64, elements: !2200)
!3748 = !{!3749}
!3749 = !DISubrange(count: 7)
!3750 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !148, file: !6, line: 463, baseType: !3751, size: 192, offset: 6592)
!3751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !3752, line: 8, size: 192, elements: !3753)
!3752 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!3753 = !{!3754, !3755, !3756}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !3751, file: !3752, line: 10, baseType: !7, size: 32)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !3751, file: !3752, line: 11, baseType: !598, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !3751, file: !3752, line: 12, baseType: !3757, size: 64, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !3759, line: 59, size: 48, elements: !3760)
!3759 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !3758, file: !3759, line: 60, baseType: !1212, size: 16)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !3758, file: !3759, line: 61, baseType: !1212, size: 16, offset: 16)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !3758, file: !3759, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !3758, file: !3759, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3758, file: !3759, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3758, file: !3759, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !148, file: !6, line: 465, baseType: !302, size: 64, offset: 6784)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !148, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !148, file: !6, line: 470, baseType: !152, size: 128, offset: 6912)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !148, file: !6, line: 471, baseType: !3771, size: 64, offset: 7040)
!3771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3772, size: 64)
!3772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !3773, line: 33, size: 96, elements: !3774)
!3773 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!3774 = !{!3775, !3776, !3777, !3778}
!3775 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !3772, file: !3773, line: 37, baseType: !85, size: 32)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !3772, file: !3773, line: 43, baseType: !85, size: 32, offset: 32)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !3772, file: !3773, line: 45, baseType: !222, size: 16, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3772, file: !3773, line: 47, baseType: !222, size: 16, offset: 80)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !148, file: !6, line: 476, baseType: !3780, size: 64, offset: 7104)
!3780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !3782)
!3782 = !{!3783, !3799, !3800, !3801}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !3781, file: !6, line: 379, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3785, size: 64)
!3785 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !3786, line: 204, baseType: !3787)
!3786 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!3787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !3786, line: 197, size: 192, elements: !3788)
!3788 = !{!3789, !3791, !3792, !3793, !3795, !3797}
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !3787, file: !3786, line: 198, baseType: !3790, size: 32)
!3790 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !3786, line: 21, baseType: !402)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !3787, file: !3786, line: 199, baseType: !214, size: 8, offset: 32)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !3787, file: !3786, line: 200, baseType: !214, size: 8, offset: 40)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !3787, file: !3786, line: 201, baseType: !3794, size: 16, offset: 48)
!3794 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !3786, line: 17, baseType: !221)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !3787, file: !3786, line: 202, baseType: !3796, size: 64, offset: 64)
!3796 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !3786, line: 16, baseType: !406)
!3797 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3787, file: !3786, line: 203, baseType: !3798, size: 64, offset: 128)
!3798 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !3786, line: 22, baseType: !406)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !3781, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !3781, file: !6, line: 381, baseType: !252, size: 64, offset: 128)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !3781, file: !6, line: 382, baseType: !252, size: 64, offset: 192)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !148, file: !6, line: 477, baseType: !3781, size: 256, offset: 7168)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !148, file: !6, line: 480, baseType: !3804, size: 64, offset: 7424)
!3804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3805, size: 64)
!3805 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !148, file: !6, line: 483, baseType: !3807, size: 64, offset: 7488)
!3807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3808, size: 64)
!3808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !148, file: !6, line: 488, baseType: !252, size: 64, offset: 7552)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !148, file: !6, line: 492, baseType: !146, size: 64, offset: 7616)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !148, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !148, file: !6, line: 495, baseType: !146, size: 64, offset: 7744)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !148, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !148, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !148, file: !6, line: 500, baseType: !3816, size: 64, offset: 7872)
!3816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3817, size: 64)
!3817 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !3818, line: 45, baseType: !3819)
!3818 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!3819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !148, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !148, file: !6, line: 504, baseType: !3822, size: 64, offset: 8000)
!3822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3823, size: 64)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !3825, line: 96, size: 192, elements: !3826)
!3825 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!3826 = !{!3827, !3828, !3871, !3873}
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !3824, file: !3825, line: 97, baseType: !7, size: 32)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !3824, file: !3825, line: 98, baseType: !3829, size: 64, offset: 64)
!3829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3830, size: 64)
!3830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !3825, line: 24, size: 3072, elements: !3831)
!3831 = !{!3832, !3834, !3835, !3836, !3837, !3851, !3852, !3853, !3854, !3855, !3856, !3857, !3868, !3869, !3870}
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !3830, file: !3825, line: 26, baseType: !3833, size: 128)
!3833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !620, size: 128, elements: !2200)
!3834 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !3830, file: !3825, line: 27, baseType: !3833, size: 128, offset: 128)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !3830, file: !3825, line: 28, baseType: !85, size: 32, offset: 256)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3830, file: !3825, line: 31, baseType: !182, size: 32, align: 512, offset: 512)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !3830, file: !3825, line: 32, baseType: !3838, size: 960, offset: 576)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !3839, line: 206, size: 960, elements: !3840)
!3839 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!3840 = !{!3841, !3842, !3845, !3847, !3848, !3850}
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !3838, file: !3839, line: 207, baseType: !677, size: 64)
!3842 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !3838, file: !3839, line: 208, baseType: !3843, size: 256, offset: 64)
!3843 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3844, size: 256, elements: !728)
!3844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !3838, file: !3839, line: 209, baseType: !3846, size: 256, offset: 320)
!3846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !302, size: 256, elements: !728)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3838, file: !3839, line: 213, baseType: !288, size: 64, offset: 576)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !3838, file: !3839, line: 215, baseType: !3849, size: 256, offset: 640)
!3849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 256, elements: !728)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3838, file: !3839, line: 216, baseType: !210, size: 8, offset: 896)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3830, file: !3825, line: 33, baseType: !302, size: 64, offset: 1536)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3830, file: !3825, line: 34, baseType: !302, size: 64, offset: 1600)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !3830, file: !3825, line: 35, baseType: !863, size: 8, offset: 1664)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !3830, file: !3825, line: 36, baseType: !2696, size: 320, offset: 1728)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3830, file: !3825, line: 37, baseType: !1234, size: 256, offset: 2048)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !3830, file: !3825, line: 38, baseType: !674, size: 128, align: 64, offset: 2304)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !3830, file: !3825, line: 39, baseType: !3858, size: 64, offset: 2432)
!3858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3859, size: 64)
!3859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !3825, line: 49, size: 768, elements: !3860)
!3860 = !{!3861, !3862, !3863, !3864, !3865, !3866, !3867}
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3859, file: !3825, line: 50, baseType: !182, size: 32)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !3859, file: !3825, line: 51, baseType: !3846, size: 256, offset: 64)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !3859, file: !3825, line: 53, baseType: !3846, size: 256, offset: 320)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3859, file: !3825, line: 54, baseType: !302, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !3859, file: !3825, line: 55, baseType: !3858, size: 64, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !3859, file: !3825, line: 56, baseType: !85, size: 32, offset: 704)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !3859, file: !3825, line: 57, baseType: !85, size: 32, offset: 736)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !3830, file: !3825, line: 40, baseType: !302, size: 64, offset: 2496)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3830, file: !3825, line: 42, baseType: !85, size: 32, offset: 2560)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !3830, file: !3825, line: 43, baseType: !3823, size: 64, offset: 2624)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !3824, file: !3825, line: 99, baseType: !3872, offset: 128)
!3872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !534, line: 211, elements: !535)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !3824, file: !3825, line: 100, baseType: !3874, size: 64, offset: 128)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !3825, line: 63, size: 3008, elements: !3876)
!3876 = !{!3877, !3878, !3880, !3881, !3882, !3883, !3884, !3885, !3886, !3887, !3888, !3889, !3890, !3891, !3892, !3893, !3894, !3895, !3896, !3897, !3898, !3899, !3906}
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3875, file: !3825, line: 64, baseType: !3858, size: 64)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !3875, file: !3825, line: 65, baseType: !3879, size: 192, offset: 64)
!3879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3858, size: 192, elements: !253)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !3875, file: !3825, line: 67, baseType: !85, size: 32, offset: 256)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !3875, file: !3825, line: 68, baseType: !616, size: 256, offset: 320)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3875, file: !3825, line: 69, baseType: !182, size: 32, offset: 576)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !3875, file: !3825, line: 70, baseType: !616, size: 256, offset: 640)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !3875, file: !3825, line: 71, baseType: !302, size: 64, offset: 896)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !3875, file: !3825, line: 72, baseType: !302, size: 64, offset: 960)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !3875, file: !3825, line: 73, baseType: !302, size: 64, offset: 1024)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !3875, file: !3825, line: 74, baseType: !302, size: 64, offset: 1088)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !3875, file: !3825, line: 75, baseType: !302, size: 64, offset: 1152)
!3889 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !3875, file: !3825, line: 76, baseType: !302, size: 64, offset: 1216)
!3890 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !3875, file: !3825, line: 77, baseType: !302, size: 64, offset: 1280)
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !3875, file: !3825, line: 78, baseType: !302, size: 64, offset: 1344)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !3875, file: !3825, line: 79, baseType: !863, size: 8, offset: 1408)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !3875, file: !3825, line: 80, baseType: !302, size: 64, offset: 1472)
!3894 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !3875, file: !3825, line: 81, baseType: !616, size: 256, offset: 1536)
!3895 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !3875, file: !3825, line: 82, baseType: !2067, size: 256, offset: 1792)
!3896 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !3875, file: !3825, line: 84, baseType: !202, size: 32, offset: 2048)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !3875, file: !3825, line: 87, baseType: !302, size: 64, offset: 2112)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !3875, file: !3825, line: 88, baseType: !302, size: 64, offset: 2176)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3875, file: !3825, line: 89, baseType: !3900, size: 704, offset: 2240)
!3900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1235, line: 111, size: 704, elements: !3901)
!3901 = !{!3902, !3903, !3904, !3905}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3900, file: !1235, line: 112, baseType: !1234, size: 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !3900, file: !1235, line: 113, baseType: !2696, size: 320, offset: 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !3900, file: !1235, line: 116, baseType: !3002, size: 64, offset: 576)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !3900, file: !1235, line: 117, baseType: !85, size: 32, offset: 640)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !3875, file: !3825, line: 90, baseType: !3823, size: 64, offset: 2944)
!3907 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !148, file: !6, line: 515, baseType: !3908, size: 64, offset: 8064)
!3908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3909, size: 64)
!3909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !3910, line: 117, size: 128, elements: !3911)
!3910 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!3911 = !{!3912, !3913, !3914}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !3909, file: !3910, line: 118, baseType: !789, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !3909, file: !3910, line: 119, baseType: !789, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3909, file: !3910, line: 120, baseType: !288, size: 64, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !148, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !148, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !148, file: !6, line: 520, baseType: !3918, size: 64, offset: 8192)
!3918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !148, file: !6, line: 523, baseType: !3920, size: 64, offset: 8256)
!3920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3921, size: 64)
!3921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3922, size: 64)
!3922 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !148, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !148, file: !6, line: 525, baseType: !3925, size: 64, offset: 8384)
!3925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3926, size: 64)
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !148, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !148, file: !6, line: 533, baseType: !146, size: 64, offset: 8512)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !148, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !148, file: !6, line: 535, baseType: !3932, size: 64, offset: 8640)
!3932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!3933 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !148, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !148, file: !6, line: 539, baseType: !85, size: 32, offset: 8736)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !148, file: !6, line: 540, baseType: !3936, size: 64, offset: 8768)
!3936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3937, size: 64)
!3937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !3938, line: 32, size: 64, elements: !3939)
!3938 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!3939 = !{!3940, !3941}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !3937, file: !3938, line: 33, baseType: !789, size: 32)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !3937, file: !3938, line: 34, baseType: !789, size: 32, offset: 32)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !148, file: !6, line: 563, baseType: !152, size: 128, offset: 8832)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !148, file: !6, line: 565, baseType: !152, size: 128, offset: 8960)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !148, file: !6, line: 568, baseType: !3945, size: 64, offset: 9088)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !148, file: !6, line: 570, baseType: !202, size: 32, offset: 9152)
!3947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3948, size: 64)
!3948 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!3949 = !{!3950, !3952, !3957, !3959, !3964, !3966, !3969, !3971, !3973, !3975, !3980, !3982, !3987, !3989, !3994, !3996, !3999, !4001, !4003, !4008, !4013, !4016, !4019, !4022, !4024, !4029, !4031, !4033, !4035, !4037, !4039, !4041, !4046, !4048, !4050, !0, !4052, !4055}
!3950 = !DIGlobalVariableExpression(var: !3951, expr: !DIExpression())
!3951 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_debug268", scope: !2, file: !3, line: 43, type: !146, isLocal: true, isDefinition: true)
!3952 = !DIGlobalVariableExpression(var: !3953, expr: !DIExpression())
!3953 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug269", scope: !2, file: !3, line: 45, type: !3954, isLocal: true, isDefinition: true, align: 8)
!3954 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 4376, elements: !3955)
!3955 = !{!3956}
!3956 = !DISubrange(count: 547)
!3957 = !DIGlobalVariableExpression(var: !3958, expr: !DIExpression())
!3958 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 56, type: !3679, isLocal: true, isDefinition: true, align: 64)
!3959 = !DIGlobalVariableExpression(var: !3960, expr: !DIExpression())
!3960 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype270", scope: !2, file: !3, line: 56, type: !3961, isLocal: true, isDefinition: true, align: 8)
!3961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 200, elements: !3962)
!3962 = !{!3963}
!3963 = !DISubrange(count: 25)
!3964 = !DIGlobalVariableExpression(var: !3965, expr: !DIExpression())
!3965 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_puts_coredump273", scope: !2, file: !3, line: 121, type: !146, isLocal: true, isDefinition: true)
!3966 = !DIGlobalVariableExpression(var: !3967, expr: !DIExpression())
!3967 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !3968, isLocal: true, isDefinition: true)
!3968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 32, elements: !728)
!3969 = !DIGlobalVariableExpression(var: !3970, expr: !DIExpression())
!3970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_printfn_coredump274", scope: !2, file: !3, line: 168, type: !146, isLocal: true, isDefinition: true)
!3971 = !DIGlobalVariableExpression(var: !3972, expr: !DIExpression())
!3972 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_puts_seq_file275", scope: !2, file: !3, line: 174, type: !146, isLocal: true, isDefinition: true)
!3973 = !DIGlobalVariableExpression(var: !3974, expr: !DIExpression())
!3974 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_printfn_seq_file276", scope: !2, file: !3, line: 180, type: !146, isLocal: true, isDefinition: true)
!3975 = !DIGlobalVariableExpression(var: !3976, expr: !DIExpression())
!3976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !3977, isLocal: true, isDefinition: true)
!3977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 80, elements: !3978)
!3978 = !{!3979}
!3979 = !DISubrange(count: 10)
!3980 = !DIGlobalVariableExpression(var: !3981, expr: !DIExpression())
!3981 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_printfn_info277", scope: !2, file: !3, line: 186, type: !146, isLocal: true, isDefinition: true)
!3982 = !DIGlobalVariableExpression(var: !3983, expr: !DIExpression())
!3983 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !3984, isLocal: true, isDefinition: true)
!3984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 72, elements: !3985)
!3985 = !{!3986}
!3986 = !DISubrange(count: 9)
!3987 = !DIGlobalVariableExpression(var: !3988, expr: !DIExpression())
!3988 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_printfn_debug278", scope: !2, file: !3, line: 193, type: !146, isLocal: true, isDefinition: true)
!3989 = !DIGlobalVariableExpression(var: !3990, expr: !DIExpression())
!3990 = distinct !DIGlobalVariable(scope: null, file: !3, line: 197, type: !3991, isLocal: true, isDefinition: true)
!3991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 136, elements: !3992)
!3992 = !{!3993}
!3993 = !DISubrange(count: 17)
!3994 = !DIGlobalVariableExpression(var: !3995, expr: !DIExpression())
!3995 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_printfn_err279", scope: !2, file: !3, line: 199, type: !146, isLocal: true, isDefinition: true)
!3996 = !DIGlobalVariableExpression(var: !3997, expr: !DIExpression())
!3997 = distinct !DIGlobalVariable(scope: null, file: !3, line: 214, type: !3998, isLocal: true, isDefinition: true)
!3998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 24, elements: !253)
!3999 = !DIGlobalVariableExpression(var: !4000, expr: !DIExpression())
!4000 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_puts280", scope: !2, file: !3, line: 216, type: !146, isLocal: true, isDefinition: true)
!4001 = !DIGlobalVariableExpression(var: !4002, expr: !DIExpression())
!4002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_printf281", scope: !2, file: !3, line: 231, type: !146, isLocal: true, isDefinition: true)
!4003 = !DIGlobalVariableExpression(var: !4004, expr: !DIExpression())
!4004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 249, type: !4005, isLocal: true, isDefinition: true)
!4005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 224, elements: !4006)
!4006 = !{!4007}
!4007 = !DISubrange(count: 28)
!4008 = !DIGlobalVariableExpression(var: !4009, expr: !DIExpression())
!4009 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !4010, isLocal: true, isDefinition: true)
!4010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 40, elements: !4011)
!4011 = !{!4012}
!4012 = !DISubrange(count: 5)
!4013 = !DIGlobalVariableExpression(var: !4014, expr: !DIExpression())
!4014 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !4015, isLocal: true, isDefinition: true)
!4015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 8, elements: !1921)
!4016 = !DIGlobalVariableExpression(var: !4017, expr: !DIExpression())
!4017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 255, type: !4018, isLocal: true, isDefinition: true)
!4018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 16, elements: !2200)
!4019 = !DIGlobalVariableExpression(var: !4020, expr: !DIExpression())
!4020 = distinct !DIGlobalVariable(scope: null, file: !3, line: 260, type: !4021, isLocal: true, isDefinition: true)
!4021 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 56, elements: !3748)
!4022 = !DIGlobalVariableExpression(var: !4023, expr: !DIExpression())
!4023 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_print_bits282", scope: !2, file: !3, line: 262, type: !146, isLocal: true, isDefinition: true)
!4024 = !DIGlobalVariableExpression(var: !4025, expr: !DIExpression())
!4025 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !4026, isLocal: true, isDefinition: true)
!4026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 112, elements: !4027)
!4027 = !{!4028}
!4028 = !DISubrange(count: 14)
!4029 = !DIGlobalVariableExpression(var: !4030, expr: !DIExpression())
!4030 = distinct !DIGlobalVariable(scope: null, file: !3, line: 278, type: !2118, isLocal: true, isDefinition: true)
!4031 = !DIGlobalVariableExpression(var: !4032, expr: !DIExpression())
!4032 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_dev_printk283", scope: !2, file: !3, line: 283, type: !146, isLocal: true, isDefinition: true)
!4033 = !DIGlobalVariableExpression(var: !4034, expr: !DIExpression())
!4034 = distinct !DIGlobalVariable(scope: null, file: !3, line: 300, type: !3998, isLocal: true, isDefinition: true)
!4035 = !DIGlobalVariableExpression(var: !4036, expr: !DIExpression())
!4036 = distinct !DIGlobalVariable(scope: null, file: !3, line: 303, type: !2118, isLocal: true, isDefinition: true)
!4037 = !DIGlobalVariableExpression(var: !4038, expr: !DIExpression())
!4038 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_dev_dbg284", scope: !2, file: !3, line: 308, type: !146, isLocal: true, isDefinition: true)
!4039 = !DIGlobalVariableExpression(var: !4040, expr: !DIExpression())
!4040 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable____drm_dbg285", scope: !2, file: !3, line: 327, type: !146, isLocal: true, isDefinition: true)
!4041 = !DIGlobalVariableExpression(var: !4042, expr: !DIExpression())
!4042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !4043, isLocal: true, isDefinition: true)
!4043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 192, elements: !4044)
!4044 = !{!4045}
!4045 = !DISubrange(count: 24)
!4046 = !DIGlobalVariableExpression(var: !4047, expr: !DIExpression())
!4047 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___drm_err286", scope: !2, file: !3, line: 343, type: !146, isLocal: true, isDefinition: true)
!4048 = !DIGlobalVariableExpression(var: !4049, expr: !DIExpression())
!4049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !4026, isLocal: true, isDefinition: true)
!4050 = !DIGlobalVariableExpression(var: !4051, expr: !DIExpression())
!4051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_drm_print_regset32289", scope: !2, file: !3, line: 371, type: !146, isLocal: true, isDefinition: true)
!4052 = !DIGlobalVariableExpression(var: !4053, expr: !DIExpression())
!4053 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 56, type: !4054, isLocal: true, isDefinition: true)
!4054 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 80, elements: !3978)
!4055 = !DIGlobalVariableExpression(var: !4056, expr: !DIExpression())
!4056 = distinct !DIGlobalVariable(scope: null, file: !136, line: 480, type: !4057, isLocal: true, isDefinition: true)
!4057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 168, elements: !4058)
!4058 = !{!4059}
!4059 = !DISubrange(count: 21)
!4060 = !{i32 7, !"Dwarf Version", i32 5}
!4061 = !{i32 2, !"Debug Info Version", i32 3}
!4062 = !{i32 1, !"wchar_size", i32 2}
!4063 = !{i32 8, !"cf-protection-branch", i32 1}
!4064 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4065 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4066 = !{i32 1, !"Code Model", i32 2}
!4067 = !{i32 1, !"override-stack-alignment", i32 8}
!4068 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4069 = distinct !DISubprogram(name: "__drm_puts_coredump", scope: !3, file: !3, line: 79, type: !4070, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4100)
!4070 = !DISubroutineType(types: !4071)
!4071 = !{null, !4072, !171}
!4072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4073, size: 64)
!4073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_printer", file: !123, line: 76, size: 256, elements: !4074)
!4074 = !{!4075, !4096, !4098, !4099}
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "printfn", scope: !4073, file: !123, line: 78, baseType: !4076, size: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{null, !4072, !4079}
!4079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4080, size: 64)
!4080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "va_format", file: !4081, line: 79, size: 128, elements: !4082)
!4081 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!4082 = !{!4083, !4084}
!4083 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !4080, file: !4081, line: 80, baseType: !171, size: 64)
!4084 = !DIDerivedType(tag: DW_TAG_member, name: "va", scope: !4080, file: !4081, line: 81, baseType: !4085, size: 64, offset: 64)
!4085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4086, size: 64)
!4086 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !4087, line: 5, baseType: !4088)
!4087 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!4088 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, baseType: !4089)
!4089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4090, size: 192, elements: !1921)
!4090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !4091)
!4091 = !{!4092, !4093, !4094, !4095}
!4092 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !4090, file: !3, line: 56, baseType: !7, size: 32)
!4093 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !4090, file: !3, line: 56, baseType: !7, size: 32, offset: 32)
!4094 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !4090, file: !3, line: 56, baseType: !146, size: 64, offset: 64)
!4095 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !4090, file: !3, line: 56, baseType: !146, size: 64, offset: 128)
!4096 = !DIDerivedType(tag: DW_TAG_member, name: "puts", scope: !4073, file: !123, line: 79, baseType: !4097, size: 64, offset: 64)
!4097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4070, size: 64)
!4098 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !4073, file: !123, line: 80, baseType: !146, size: 64, offset: 128)
!4099 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !4073, file: !123, line: 81, baseType: !171, size: 64, offset: 192)
!4100 = !{!4101, !4102, !4103, !4111, !4112, !4115, !4117, !4119}
!4101 = !DILocalVariable(name: "p", arg: 1, scope: !4069, file: !3, line: 79, type: !4072)
!4102 = !DILocalVariable(name: "str", arg: 2, scope: !4069, file: !3, line: 79, type: !171)
!4103 = !DILocalVariable(name: "iterator", scope: !4069, file: !3, line: 81, type: !4104)
!4104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4105, size: 64)
!4105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "drm_print_iterator", file: !123, line: 130, size: 256, elements: !4106)
!4106 = !{!4107, !4108, !4109, !4110}
!4107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4105, file: !123, line: 131, baseType: !146, size: 64)
!4108 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4105, file: !123, line: 132, baseType: !284, size: 64, offset: 64)
!4109 = !DIDerivedType(tag: DW_TAG_member, name: "remain", scope: !4105, file: !123, line: 133, baseType: !284, size: 64, offset: 128)
!4110 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !4105, file: !123, line: 135, baseType: !284, size: 64, offset: 192)
!4111 = !DILocalVariable(name: "len", scope: !4069, file: !3, line: 82, type: !284)
!4112 = !DILocalVariable(name: "copy", scope: !4113, file: !3, line: 88, type: !284)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 87, column: 42)
!4114 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 87, column: 6)
!4115 = !DILocalVariable(name: "pos", scope: !4116, file: !3, line: 110, type: !284)
!4116 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 109, column: 9)
!4117 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !4118, file: !3, line: 112, type: !284)
!4118 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 112, column: 9)
!4119 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !4118, file: !3, line: 112, type: !284)
!4120 = !DILocation(line: 79, column: 46, scope: !4069)
!4121 = !DILocation(line: 79, column: 61, scope: !4069)
!4122 = !DILocation(line: 81, column: 2, scope: !4069)
!4123 = !DILocation(line: 81, column: 29, scope: !4069)
!4124 = !DILocation(line: 81, column: 40, scope: !4069)
!4125 = !DILocation(line: 81, column: 43, scope: !4069)
!4126 = !DILocation(line: 82, column: 2, scope: !4069)
!4127 = !DILocation(line: 82, column: 10, scope: !4069)
!4128 = !DILocation(line: 84, column: 7, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4069, file: !3, line: 84, column: 6)
!4130 = !DILocation(line: 84, column: 17, scope: !4129)
!4131 = !DILocation(line: 84, column: 6, scope: !4069)
!4132 = !DILocation(line: 85, column: 3, scope: !4129)
!4133 = !DILocation(line: 87, column: 6, scope: !4114)
!4134 = !DILocation(line: 87, column: 16, scope: !4114)
!4135 = !DILocation(line: 87, column: 25, scope: !4114)
!4136 = !DILocation(line: 87, column: 35, scope: !4114)
!4137 = !DILocation(line: 87, column: 23, scope: !4114)
!4138 = !DILocation(line: 87, column: 6, scope: !4069)
!4139 = !DILocation(line: 88, column: 3, scope: !4113)
!4140 = !DILocation(line: 88, column: 11, scope: !4113)
!4141 = !DILocation(line: 90, column: 16, scope: !4113)
!4142 = !DILocation(line: 90, column: 9, scope: !4113)
!4143 = !DILocation(line: 90, column: 7, scope: !4113)
!4144 = !DILocation(line: 92, column: 7, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 92, column: 7)
!4146 = !DILocation(line: 92, column: 17, scope: !4145)
!4147 = !DILocation(line: 92, column: 26, scope: !4145)
!4148 = !DILocation(line: 92, column: 24, scope: !4145)
!4149 = !DILocation(line: 92, column: 33, scope: !4145)
!4150 = !DILocation(line: 92, column: 43, scope: !4145)
!4151 = !DILocation(line: 92, column: 30, scope: !4145)
!4152 = !DILocation(line: 92, column: 7, scope: !4113)
!4153 = !DILocation(line: 93, column: 24, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4145, file: !3, line: 92, column: 50)
!4155 = !DILocation(line: 93, column: 4, scope: !4154)
!4156 = !DILocation(line: 93, column: 14, scope: !4154)
!4157 = !DILocation(line: 93, column: 21, scope: !4154)
!4158 = !DILocation(line: 94, column: 4, scope: !4154)
!4159 = !DILocation(line: 97, column: 10, scope: !4113)
!4160 = !DILocation(line: 97, column: 17, scope: !4113)
!4161 = !DILocation(line: 97, column: 27, scope: !4113)
!4162 = !DILocation(line: 97, column: 35, scope: !4113)
!4163 = !DILocation(line: 97, column: 45, scope: !4113)
!4164 = !DILocation(line: 97, column: 33, scope: !4113)
!4165 = !DILocation(line: 97, column: 14, scope: !4113)
!4166 = !DILocation(line: 97, column: 8, scope: !4113)
!4167 = !DILocation(line: 99, column: 7, scope: !4168)
!4168 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 99, column: 7)
!4169 = !DILocation(line: 99, column: 14, scope: !4168)
!4170 = !DILocation(line: 99, column: 24, scope: !4168)
!4171 = !DILocation(line: 99, column: 12, scope: !4168)
!4172 = !DILocation(line: 99, column: 7, scope: !4113)
!4173 = !DILocation(line: 100, column: 11, scope: !4168)
!4174 = !DILocation(line: 100, column: 21, scope: !4168)
!4175 = !DILocation(line: 100, column: 9, scope: !4168)
!4176 = !DILocation(line: 100, column: 4, scope: !4168)
!4177 = !DILocation(line: 103, column: 7, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4113, file: !3, line: 103, column: 7)
!4179 = !DILocation(line: 103, column: 17, scope: !4178)
!4180 = !DILocation(line: 103, column: 7, scope: !4113)
!4181 = !DILocation(line: 104, column: 11, scope: !4178)
!4182 = !DILocation(line: 104, column: 21, scope: !4178)
!4183 = !DILocation(line: 105, column: 11, scope: !4178)
!4184 = !DILocation(line: 105, column: 18, scope: !4178)
!4185 = !DILocation(line: 105, column: 28, scope: !4178)
!4186 = !DILocation(line: 105, column: 36, scope: !4178)
!4187 = !DILocation(line: 105, column: 46, scope: !4178)
!4188 = !DILocation(line: 105, column: 34, scope: !4178)
!4189 = !DILocation(line: 105, column: 15, scope: !4178)
!4190 = !DILocation(line: 105, column: 55, scope: !4178)
!4191 = !DILocation(line: 104, column: 4, scope: !4178)
!4192 = !DILocation(line: 107, column: 22, scope: !4113)
!4193 = !DILocation(line: 107, column: 32, scope: !4113)
!4194 = !DILocation(line: 107, column: 40, scope: !4113)
!4195 = !DILocation(line: 107, column: 38, scope: !4113)
!4196 = !DILocation(line: 107, column: 3, scope: !4113)
!4197 = !DILocation(line: 107, column: 13, scope: !4113)
!4198 = !DILocation(line: 107, column: 20, scope: !4113)
!4199 = !DILocation(line: 108, column: 23, scope: !4113)
!4200 = !DILocation(line: 108, column: 3, scope: !4113)
!4201 = !DILocation(line: 108, column: 13, scope: !4113)
!4202 = !DILocation(line: 108, column: 20, scope: !4113)
!4203 = !DILocation(line: 109, column: 2, scope: !4114)
!4204 = !DILocation(line: 109, column: 2, scope: !4113)
!4205 = !DILocation(line: 110, column: 3, scope: !4116)
!4206 = !DILocation(line: 110, column: 11, scope: !4116)
!4207 = !DILocation(line: 110, column: 17, scope: !4116)
!4208 = !DILocation(line: 110, column: 27, scope: !4116)
!4209 = !DILocation(line: 110, column: 36, scope: !4116)
!4210 = !DILocation(line: 110, column: 46, scope: !4116)
!4211 = !DILocation(line: 110, column: 34, scope: !4116)
!4212 = !DILocation(line: 112, column: 9, scope: !4118)
!4213 = !DILocation(line: 112, column: 9, scope: !4116)
!4214 = !DILocation(line: 112, column: 7, scope: !4116)
!4215 = !DILocation(line: 114, column: 7, scope: !4216)
!4216 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 114, column: 7)
!4217 = !DILocation(line: 114, column: 17, scope: !4216)
!4218 = !DILocation(line: 114, column: 7, scope: !4116)
!4219 = !DILocation(line: 115, column: 11, scope: !4216)
!4220 = !DILocation(line: 115, column: 21, scope: !4216)
!4221 = !DILocation(line: 115, column: 28, scope: !4216)
!4222 = !DILocation(line: 115, column: 26, scope: !4216)
!4223 = !DILocation(line: 115, column: 33, scope: !4216)
!4224 = !DILocation(line: 115, column: 38, scope: !4216)
!4225 = !DILocation(line: 115, column: 4, scope: !4216)
!4226 = !DILocation(line: 117, column: 23, scope: !4116)
!4227 = !DILocation(line: 117, column: 3, scope: !4116)
!4228 = !DILocation(line: 117, column: 13, scope: !4116)
!4229 = !DILocation(line: 117, column: 20, scope: !4116)
!4230 = !DILocation(line: 118, column: 23, scope: !4116)
!4231 = !DILocation(line: 118, column: 3, scope: !4116)
!4232 = !DILocation(line: 118, column: 13, scope: !4116)
!4233 = !DILocation(line: 118, column: 20, scope: !4116)
!4234 = !DILocation(line: 119, column: 2, scope: !4114)
!4235 = !DILocation(line: 120, column: 1, scope: !4069)
!4236 = !DISubprogram(name: "strlen", scope: !4237, file: !4237, line: 128, type: !4238, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4237 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!4238 = !DISubroutineType(types: !4239)
!4239 = !{!302, !171}
!4240 = distinct !DISubprogram(name: "__drm_printfn_coredump", scope: !3, file: !3, line: 123, type: !4077, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4241)
!4241 = !{!4242, !4243, !4244, !4245, !4246, !4247}
!4242 = !DILocalVariable(name: "p", arg: 1, scope: !4240, file: !3, line: 123, type: !4072)
!4243 = !DILocalVariable(name: "vaf", arg: 2, scope: !4240, file: !3, line: 123, type: !4079)
!4244 = !DILocalVariable(name: "iterator", scope: !4240, file: !3, line: 125, type: !4104)
!4245 = !DILocalVariable(name: "len", scope: !4240, file: !3, line: 126, type: !299)
!4246 = !DILocalVariable(name: "buf", scope: !4240, file: !3, line: 127, type: !252)
!4247 = !DILocalVariable(name: "pos", scope: !4248, file: !3, line: 143, type: !284)
!4248 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 142, column: 73)
!4249 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 142, column: 6)
!4250 = !DILocation(line: 123, column: 49, scope: !4240)
!4251 = !DILocation(line: 123, column: 70, scope: !4240)
!4252 = !DILocation(line: 125, column: 2, scope: !4240)
!4253 = !DILocation(line: 125, column: 29, scope: !4240)
!4254 = !DILocation(line: 125, column: 40, scope: !4240)
!4255 = !DILocation(line: 125, column: 43, scope: !4240)
!4256 = !DILocation(line: 126, column: 2, scope: !4240)
!4257 = !DILocation(line: 126, column: 9, scope: !4240)
!4258 = !DILocation(line: 127, column: 2, scope: !4240)
!4259 = !DILocation(line: 127, column: 8, scope: !4240)
!4260 = !DILocation(line: 129, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 129, column: 6)
!4262 = !DILocation(line: 129, column: 17, scope: !4261)
!4263 = !DILocation(line: 129, column: 6, scope: !4240)
!4264 = !DILocation(line: 130, column: 3, scope: !4261)
!4265 = !DILocation(line: 133, column: 33, scope: !4240)
!4266 = !DILocation(line: 133, column: 8, scope: !4240)
!4267 = !DILocation(line: 133, column: 6, scope: !4240)
!4268 = !DILocation(line: 136, column: 6, scope: !4269)
!4269 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 136, column: 6)
!4270 = !DILocation(line: 136, column: 16, scope: !4269)
!4271 = !DILocation(line: 136, column: 25, scope: !4269)
!4272 = !DILocation(line: 136, column: 23, scope: !4269)
!4273 = !DILocation(line: 136, column: 32, scope: !4269)
!4274 = !DILocation(line: 136, column: 42, scope: !4269)
!4275 = !DILocation(line: 136, column: 29, scope: !4269)
!4276 = !DILocation(line: 136, column: 6, scope: !4240)
!4277 = !DILocation(line: 137, column: 23, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 136, column: 49)
!4279 = !DILocation(line: 137, column: 3, scope: !4278)
!4280 = !DILocation(line: 137, column: 13, scope: !4278)
!4281 = !DILocation(line: 137, column: 20, scope: !4278)
!4282 = !DILocation(line: 138, column: 3, scope: !4278)
!4283 = !DILocation(line: 142, column: 7, scope: !4249)
!4284 = !DILocation(line: 142, column: 17, scope: !4249)
!4285 = !DILocation(line: 142, column: 27, scope: !4249)
!4286 = !DILocation(line: 142, column: 37, scope: !4249)
!4287 = !DILocation(line: 142, column: 24, scope: !4249)
!4288 = !DILocation(line: 142, column: 44, scope: !4249)
!4289 = !DILocation(line: 142, column: 48, scope: !4249)
!4290 = !DILocation(line: 142, column: 54, scope: !4249)
!4291 = !DILocation(line: 142, column: 64, scope: !4249)
!4292 = !DILocation(line: 142, column: 52, scope: !4249)
!4293 = !DILocation(line: 142, column: 6, scope: !4240)
!4294 = !DILocation(line: 143, column: 3, scope: !4248)
!4295 = !DILocation(line: 143, column: 11, scope: !4248)
!4296 = !DILocation(line: 143, column: 17, scope: !4248)
!4297 = !DILocation(line: 143, column: 27, scope: !4248)
!4298 = !DILocation(line: 143, column: 36, scope: !4248)
!4299 = !DILocation(line: 143, column: 46, scope: !4248)
!4300 = !DILocation(line: 143, column: 34, scope: !4248)
!4301 = !DILocation(line: 145, column: 7, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4248, file: !3, line: 145, column: 7)
!4303 = !DILocation(line: 145, column: 17, scope: !4302)
!4304 = !DILocation(line: 145, column: 7, scope: !4248)
!4305 = !DILocation(line: 146, column: 23, scope: !4302)
!4306 = !DILocation(line: 146, column: 33, scope: !4302)
!4307 = !DILocation(line: 146, column: 41, scope: !4302)
!4308 = !DILocation(line: 146, column: 39, scope: !4302)
!4309 = !DILocation(line: 147, column: 6, scope: !4302)
!4310 = !DILocation(line: 147, column: 16, scope: !4302)
!4311 = !DILocation(line: 147, column: 31, scope: !4302)
!4312 = !DILocation(line: 146, column: 4, scope: !4302)
!4313 = !DILocation(line: 149, column: 23, scope: !4248)
!4314 = !DILocation(line: 149, column: 3, scope: !4248)
!4315 = !DILocation(line: 149, column: 13, scope: !4248)
!4316 = !DILocation(line: 149, column: 20, scope: !4248)
!4317 = !DILocation(line: 150, column: 23, scope: !4248)
!4318 = !DILocation(line: 150, column: 3, scope: !4248)
!4319 = !DILocation(line: 150, column: 13, scope: !4248)
!4320 = !DILocation(line: 150, column: 20, scope: !4248)
!4321 = !DILocation(line: 153, column: 2, scope: !4249)
!4322 = !DILocation(line: 159, column: 16, scope: !4240)
!4323 = !DILocation(line: 159, column: 20, scope: !4240)
!4324 = !DILocation(line: 159, column: 8, scope: !4240)
!4325 = !DILocation(line: 159, column: 6, scope: !4240)
!4326 = !DILocation(line: 160, column: 7, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4240, file: !3, line: 160, column: 6)
!4328 = !DILocation(line: 160, column: 6, scope: !4240)
!4329 = !DILocation(line: 161, column: 3, scope: !4327)
!4330 = !DILocation(line: 163, column: 11, scope: !4240)
!4331 = !DILocation(line: 163, column: 16, scope: !4240)
!4332 = !DILocation(line: 163, column: 20, scope: !4240)
!4333 = !DILocation(line: 163, column: 32, scope: !4240)
!4334 = !DILocation(line: 163, column: 2, scope: !4240)
!4335 = !DILocation(line: 164, column: 22, scope: !4240)
!4336 = !DILocation(line: 164, column: 40, scope: !4240)
!4337 = !DILocation(line: 164, column: 2, scope: !4240)
!4338 = !DILocation(line: 166, column: 8, scope: !4240)
!4339 = !DILocation(line: 166, column: 2, scope: !4240)
!4340 = !DILocation(line: 167, column: 1, scope: !4240)
!4341 = !DISubprogram(name: "snprintf", scope: !4342, file: !4342, line: 12, type: !4343, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4342 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!85, !252, !299, !171, null}
!4345 = distinct !DISubprogram(name: "kmalloc", scope: !136, file: !136, line: 591, type: !4346, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4348)
!4346 = !DISubroutineType(types: !4347)
!4347 = !{!146, !299, !1446}
!4348 = !{!4349, !4350, !4351}
!4349 = !DILocalVariable(name: "size", arg: 1, scope: !4345, file: !136, line: 591, type: !299)
!4350 = !DILocalVariable(name: "flags", arg: 2, scope: !4345, file: !136, line: 591, type: !1446)
!4351 = !DILocalVariable(name: "index", scope: !4352, file: !136, line: 594, type: !7)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !136, line: 593, column: 42)
!4353 = distinct !DILexicalBlock(scope: !4345, file: !136, line: 593, column: 6)
!4354 = !DILocation(line: 591, column: 61, scope: !4345)
!4355 = !DILocation(line: 591, column: 73, scope: !4345)
!4356 = !DILocation(line: 593, column: 27, scope: !4353)
!4357 = !DILocation(line: 593, column: 6, scope: !4353)
!4358 = !DILocation(line: 593, column: 33, scope: !4353)
!4359 = !DILocation(line: 593, column: 36, scope: !4353)
!4360 = !DILocation(line: 593, column: 6, scope: !4345)
!4361 = !DILocation(line: 594, column: 3, scope: !4352)
!4362 = !DILocation(line: 594, column: 16, scope: !4352)
!4363 = !DILocation(line: 596, column: 7, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4352, file: !136, line: 596, column: 7)
!4365 = !DILocation(line: 596, column: 12, scope: !4364)
!4366 = !DILocation(line: 596, column: 7, scope: !4352)
!4367 = !DILocation(line: 597, column: 25, scope: !4364)
!4368 = !DILocation(line: 597, column: 31, scope: !4364)
!4369 = !DILocation(line: 597, column: 11, scope: !4364)
!4370 = !DILocation(line: 597, column: 4, scope: !4364)
!4371 = !DILocation(line: 599, column: 11, scope: !4352)
!4372 = !DILocation(line: 599, column: 9, scope: !4352)
!4373 = !DILocation(line: 601, column: 33, scope: !4352)
!4374 = !DILocation(line: 601, column: 40, scope: !4352)
!4375 = !DILocation(line: 601, column: 20, scope: !4352)
!4376 = !DILocation(line: 601, column: 5, scope: !4352)
!4377 = !DILocation(line: 601, column: 51, scope: !4352)
!4378 = !DILocation(line: 602, column: 5, scope: !4352)
!4379 = !DILocation(line: 602, column: 12, scope: !4352)
!4380 = !DILocation(line: 600, column: 10, scope: !4352)
!4381 = !DILocation(line: 600, column: 3, scope: !4352)
!4382 = !DILocation(line: 603, column: 2, scope: !4353)
!4383 = !DILocation(line: 604, column: 19, scope: !4345)
!4384 = !DILocation(line: 604, column: 25, scope: !4345)
!4385 = !DILocation(line: 604, column: 9, scope: !4345)
!4386 = !DILocation(line: 604, column: 2, scope: !4345)
!4387 = !DILocation(line: 605, column: 1, scope: !4345)
!4388 = !DISubprogram(name: "kfree", scope: !136, file: !136, line: 227, type: !4389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4389 = !DISubroutineType(types: !4390)
!4390 = !{null, !1195}
!4391 = distinct !DISubprogram(name: "__drm_puts_seq_file", scope: !3, file: !3, line: 170, type: !4070, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4392)
!4392 = !{!4393, !4394}
!4393 = !DILocalVariable(name: "p", arg: 1, scope: !4391, file: !3, line: 170, type: !4072)
!4394 = !DILocalVariable(name: "str", arg: 2, scope: !4391, file: !3, line: 170, type: !171)
!4395 = !DILocation(line: 170, column: 46, scope: !4391)
!4396 = !DILocation(line: 170, column: 61, scope: !4391)
!4397 = !DILocation(line: 172, column: 11, scope: !4391)
!4398 = !DILocation(line: 172, column: 14, scope: !4391)
!4399 = !DILocation(line: 172, column: 19, scope: !4391)
!4400 = !DILocation(line: 172, column: 2, scope: !4391)
!4401 = !DILocation(line: 173, column: 1, scope: !4391)
!4402 = !DISubprogram(name: "seq_puts", scope: !606, file: !606, line: 121, type: !4403, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4403 = !DISubroutineType(types: !4404)
!4404 = !{null, !604, !171}
!4405 = distinct !DISubprogram(name: "__drm_printfn_seq_file", scope: !3, file: !3, line: 176, type: !4077, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4406)
!4406 = !{!4407, !4408}
!4407 = !DILocalVariable(name: "p", arg: 1, scope: !4405, file: !3, line: 176, type: !4072)
!4408 = !DILocalVariable(name: "vaf", arg: 2, scope: !4405, file: !3, line: 176, type: !4079)
!4409 = !DILocation(line: 176, column: 49, scope: !4405)
!4410 = !DILocation(line: 176, column: 70, scope: !4405)
!4411 = !DILocation(line: 178, column: 13, scope: !4405)
!4412 = !DILocation(line: 178, column: 16, scope: !4405)
!4413 = !DILocation(line: 178, column: 28, scope: !4405)
!4414 = !DILocation(line: 178, column: 2, scope: !4405)
!4415 = !DILocation(line: 179, column: 1, scope: !4405)
!4416 = !DISubprogram(name: "seq_printf", scope: !606, file: !606, line: 119, type: !4417, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4417 = !DISubroutineType(types: !4418)
!4418 = !{null, !604, !171, null}
!4419 = distinct !DISubprogram(name: "__drm_printfn_info", scope: !3, file: !3, line: 182, type: !4077, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4420)
!4420 = !{!4421, !4422}
!4421 = !DILocalVariable(name: "p", arg: 1, scope: !4419, file: !3, line: 182, type: !4072)
!4422 = !DILocalVariable(name: "vaf", arg: 2, scope: !4419, file: !3, line: 182, type: !4079)
!4423 = !DILocation(line: 182, column: 45, scope: !4419)
!4424 = !DILocation(line: 182, column: 66, scope: !4419)
!4425 = !DILocation(line: 184, column: 2, scope: !4426)
!4426 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 184, column: 2)
!4427 = !DILocation(line: 184, column: 2, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4426, file: !3, line: 184, column: 2)
!4429 = !DILocation(line: 185, column: 1, scope: !4419)
!4430 = !DISubprogram(name: "_dev_info", scope: !4431, file: !4431, line: 56, type: !4432, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4431 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!4432 = !DISubroutineType(types: !4433)
!4433 = !{null, !4434, !171, null}
!4434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4435, size: 64)
!4435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4436)
!4436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !70, line: 705, size: 5824, elements: !4437)
!4437 = !{!4438, !4439, !4441, !4444, !4445, !4496, !4566, !4567, !4568, !4569, !4570, !4577, !4669, !4682, !4692, !4696, !4698, !4699, !4700, !4704, !4711, !4712, !4715, !4718, !4722, !4826, !4827, !4828, !4829, !4830, !4831, !4861, !4862, !4863, !4866, !4869, !4878, !4879, !4880, !4881, !4882, !4883}
!4438 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !4436, file: !70, line: 706, baseType: !167, size: 512)
!4439 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !4436, file: !70, line: 707, baseType: !4440, size: 64, offset: 512)
!4440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4436, size: 64)
!4441 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4436, file: !70, line: 709, baseType: !4442, size: 64, offset: 576)
!4442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4443, size: 64)
!4443 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !70, line: 37, flags: DIFlagFwdDecl)
!4444 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !4436, file: !70, line: 711, baseType: !171, size: 64, offset: 640)
!4445 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4436, file: !70, line: 712, baseType: !4446, size: 64, offset: 704)
!4446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4447, size: 64)
!4447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4448)
!4448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !70, line: 89, size: 384, elements: !4449)
!4449 = !{!4450, !4451, !4452, !4456, !4461, !4465}
!4450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4448, file: !70, line: 90, baseType: !171, size: 64)
!4451 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4448, file: !70, line: 91, baseType: !304, size: 64, offset: 64)
!4452 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4448, file: !70, line: 92, baseType: !4453, size: 64, offset: 128)
!4453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4454, size: 64)
!4454 = !DISubroutineType(types: !4455)
!4455 = !{!85, !4434, !247}
!4456 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4448, file: !70, line: 93, baseType: !4457, size: 64, offset: 192)
!4457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4458, size: 64)
!4458 = !DISubroutineType(types: !4459)
!4459 = !{!252, !4434, !4460, !3513, !3514}
!4460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!4461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4448, file: !70, line: 95, baseType: !4462, size: 64, offset: 256)
!4462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4463, size: 64)
!4463 = !DISubroutineType(types: !4464)
!4464 = !{null, !4440}
!4465 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4448, file: !70, line: 97, baseType: !4466, size: 64, offset: 320)
!4466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4467, size: 64)
!4467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4468)
!4468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !77, line: 286, size: 1472, elements: !4469)
!4469 = !{!4470, !4474, !4475, !4476, !4477, !4478, !4479, !4480, !4481, !4482, !4483, !4484, !4485, !4486, !4487, !4488, !4489, !4490, !4491, !4492, !4493, !4494, !4495}
!4470 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !4468, file: !77, line: 287, baseType: !4471, size: 64)
!4471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4472, size: 64)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!85, !4440}
!4474 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !4468, file: !77, line: 288, baseType: !4462, size: 64, offset: 64)
!4475 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4468, file: !77, line: 289, baseType: !4471, size: 64, offset: 128)
!4476 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4468, file: !77, line: 290, baseType: !4471, size: 64, offset: 192)
!4477 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !4468, file: !77, line: 291, baseType: !4471, size: 64, offset: 256)
!4478 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !4468, file: !77, line: 292, baseType: !4471, size: 64, offset: 320)
!4479 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !4468, file: !77, line: 293, baseType: !4471, size: 64, offset: 384)
!4480 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !4468, file: !77, line: 294, baseType: !4471, size: 64, offset: 448)
!4481 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !4468, file: !77, line: 295, baseType: !4471, size: 64, offset: 512)
!4482 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !4468, file: !77, line: 296, baseType: !4471, size: 64, offset: 576)
!4483 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !4468, file: !77, line: 297, baseType: !4471, size: 64, offset: 640)
!4484 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !4468, file: !77, line: 298, baseType: !4471, size: 64, offset: 704)
!4485 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !4468, file: !77, line: 299, baseType: !4471, size: 64, offset: 768)
!4486 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !4468, file: !77, line: 300, baseType: !4471, size: 64, offset: 832)
!4487 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !4468, file: !77, line: 301, baseType: !4471, size: 64, offset: 896)
!4488 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !4468, file: !77, line: 302, baseType: !4471, size: 64, offset: 960)
!4489 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !4468, file: !77, line: 303, baseType: !4471, size: 64, offset: 1024)
!4490 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !4468, file: !77, line: 304, baseType: !4471, size: 64, offset: 1088)
!4491 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !4468, file: !77, line: 305, baseType: !4471, size: 64, offset: 1152)
!4492 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !4468, file: !77, line: 306, baseType: !4471, size: 64, offset: 1216)
!4493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !4468, file: !77, line: 307, baseType: !4471, size: 64, offset: 1280)
!4494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !4468, file: !77, line: 308, baseType: !4471, size: 64, offset: 1344)
!4495 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !4468, file: !77, line: 309, baseType: !4471, size: 64, offset: 1408)
!4496 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4436, file: !70, line: 714, baseType: !4497, size: 64, offset: 768)
!4497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4498, size: 64)
!4498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4499)
!4499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !4500, line: 80, size: 1344, elements: !4501)
!4500 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!4501 = !{!4502, !4503, !4504, !4505, !4506, !4507, !4548, !4549, !4550, !4551, !4552, !4553, !4554, !4555, !4556, !4557, !4558, !4559, !4560, !4561, !4565}
!4502 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4499, file: !4500, line: 81, baseType: !171, size: 64)
!4503 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !4499, file: !4500, line: 82, baseType: !171, size: 64, offset: 64)
!4504 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !4499, file: !4500, line: 83, baseType: !304, size: 64, offset: 128)
!4505 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4499, file: !4500, line: 84, baseType: !304, size: 64, offset: 192)
!4506 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !4499, file: !4500, line: 85, baseType: !304, size: 64, offset: 256)
!4507 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !4499, file: !4500, line: 87, baseType: !4508, size: 64, offset: 320)
!4508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4509, size: 64)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!85, !4440, !4511}
!4511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4512, size: 64)
!4512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !64, line: 96, size: 1152, elements: !4513)
!4513 = !{!4514, !4515, !4516, !4517, !4518, !4519, !4520, !4524, !4528, !4529, !4530, !4531, !4532, !4540, !4541, !4542, !4543, !4544, !4545}
!4514 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4512, file: !64, line: 97, baseType: !171, size: 64)
!4515 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !4512, file: !64, line: 98, baseType: !4497, size: 64, offset: 64)
!4516 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !4512, file: !64, line: 100, baseType: !147, size: 64, offset: 128)
!4517 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !4512, file: !64, line: 101, baseType: !171, size: 64, offset: 192)
!4518 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !4512, file: !64, line: 103, baseType: !863, size: 8, offset: 256)
!4519 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !4512, file: !64, line: 104, baseType: !63, size: 32, offset: 288)
!4520 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !4512, file: !64, line: 106, baseType: !4521, size: 64, offset: 320)
!4521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4522, size: 64)
!4522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4523)
!4523 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !64, line: 106, flags: DIFlagFwdDecl)
!4524 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !4512, file: !64, line: 107, baseType: !4525, size: 64, offset: 384)
!4525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4526, size: 64)
!4526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4527)
!4527 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !64, line: 107, flags: DIFlagFwdDecl)
!4528 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4512, file: !64, line: 109, baseType: !4471, size: 64, offset: 448)
!4529 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4512, file: !64, line: 110, baseType: !4462, size: 64, offset: 512)
!4530 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4512, file: !64, line: 111, baseType: !4471, size: 64, offset: 576)
!4531 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4512, file: !64, line: 112, baseType: !4462, size: 64, offset: 640)
!4532 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4512, file: !64, line: 113, baseType: !4533, size: 64, offset: 704)
!4533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4534, size: 64)
!4534 = !DISubroutineType(types: !4535)
!4535 = !{!85, !4440, !4536}
!4536 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !77, line: 60, baseType: !4537)
!4537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !77, line: 58, size: 32, elements: !4538)
!4538 = !{!4539}
!4539 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !4537, file: !77, line: 59, baseType: !85, size: 32)
!4540 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4512, file: !64, line: 114, baseType: !4471, size: 64, offset: 768)
!4541 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4512, file: !64, line: 115, baseType: !304, size: 64, offset: 832)
!4542 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4512, file: !64, line: 116, baseType: !304, size: 64, offset: 896)
!4543 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4512, file: !64, line: 118, baseType: !4466, size: 64, offset: 960)
!4544 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !4512, file: !64, line: 119, baseType: !4462, size: 64, offset: 1024)
!4545 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !4512, file: !64, line: 121, baseType: !4546, size: 64, offset: 1088)
!4546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4547, size: 64)
!4547 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !64, line: 121, flags: DIFlagFwdDecl)
!4548 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !4499, file: !4500, line: 88, baseType: !4453, size: 64, offset: 384)
!4549 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !4499, file: !4500, line: 89, baseType: !4471, size: 64, offset: 448)
!4550 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !4499, file: !4500, line: 90, baseType: !4462, size: 64, offset: 512)
!4551 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !4499, file: !4500, line: 91, baseType: !4462, size: 64, offset: 576)
!4552 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !4499, file: !4500, line: 92, baseType: !4462, size: 64, offset: 640)
!4553 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !4499, file: !4500, line: 94, baseType: !4471, size: 64, offset: 704)
!4554 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4499, file: !4500, line: 95, baseType: !4471, size: 64, offset: 768)
!4555 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !4499, file: !4500, line: 97, baseType: !4533, size: 64, offset: 832)
!4556 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !4499, file: !4500, line: 98, baseType: !4471, size: 64, offset: 896)
!4557 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !4499, file: !4500, line: 100, baseType: !4471, size: 64, offset: 960)
!4558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !4499, file: !4500, line: 102, baseType: !4471, size: 64, offset: 1024)
!4559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !4499, file: !4500, line: 103, baseType: !4462, size: 64, offset: 1088)
!4560 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4499, file: !4500, line: 105, baseType: !4466, size: 64, offset: 1152)
!4561 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !4499, file: !4500, line: 107, baseType: !4562, size: 64, offset: 1216)
!4562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4563, size: 64)
!4563 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4564)
!4564 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !4500, line: 107, flags: DIFlagFwdDecl)
!4565 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !4499, file: !4500, line: 109, baseType: !863, size: 8, offset: 1280)
!4566 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !4436, file: !70, line: 715, baseType: !4511, size: 64, offset: 832)
!4567 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !4436, file: !70, line: 717, baseType: !146, size: 64, offset: 896)
!4568 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !4436, file: !70, line: 719, baseType: !146, size: 64, offset: 960)
!4569 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !4436, file: !70, line: 721, baseType: !616, size: 256, offset: 1024)
!4570 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !4436, file: !70, line: 725, baseType: !4571, size: 448, offset: 1280)
!4571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !70, line: 517, size: 448, elements: !4572)
!4572 = !{!4573, !4574, !4575, !4576}
!4573 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4571, file: !70, line: 518, baseType: !152, size: 128)
!4574 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4571, file: !70, line: 519, baseType: !152, size: 128, offset: 128)
!4575 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !4571, file: !70, line: 520, baseType: !152, size: 128, offset: 256)
!4576 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !4571, file: !70, line: 521, baseType: !69, size: 32, offset: 384)
!4577 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !4436, file: !70, line: 726, baseType: !4578, size: 2496, offset: 1728)
!4578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !77, line: 663, size: 2496, elements: !4579)
!4579 = !{!4580, !4581, !4582, !4583, !4584, !4585, !4586, !4587, !4588, !4589, !4590, !4591, !4592, !4593, !4594, !4595, !4622, !4623, !4624, !4625, !4626, !4627, !4628, !4629, !4630, !4631, !4632, !4633, !4634, !4635, !4636, !4637, !4638, !4639, !4640, !4641, !4642, !4643, !4644, !4645, !4646, !4647, !4648, !4649, !4650, !4651, !4652, !4653, !4654, !4655, !4656, !4662, !4666}
!4580 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !4578, file: !77, line: 664, baseType: !4536, size: 32)
!4581 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !4578, file: !77, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!4582 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !4578, file: !77, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!4583 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !4578, file: !77, line: 667, baseType: !863, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!4584 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !4578, file: !77, line: 668, baseType: !863, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!4585 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !4578, file: !77, line: 669, baseType: !863, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!4586 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !4578, file: !77, line: 670, baseType: !863, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!4587 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !4578, file: !77, line: 671, baseType: !863, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!4588 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !4578, file: !77, line: 672, baseType: !863, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!4589 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !4578, file: !77, line: 673, baseType: !863, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!4590 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !4578, file: !77, line: 674, baseType: !863, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!4591 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !4578, file: !77, line: 675, baseType: !401, size: 32, offset: 64)
!4592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4578, file: !77, line: 676, baseType: !182, size: 32, offset: 96)
!4593 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4578, file: !77, line: 678, baseType: !152, size: 128, offset: 128)
!4594 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !4578, file: !77, line: 679, baseType: !2067, size: 256, offset: 256)
!4595 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !4578, file: !77, line: 680, baseType: !4596, size: 64, offset: 512)
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !4598, line: 43, size: 1536, elements: !4599)
!4598 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!4599 = !{!4600, !4601, !4602, !4603, !4604, !4607, !4608, !4609, !4610, !4611, !4612, !4613, !4614, !4615, !4616, !4617, !4618, !4619, !4620, !4621}
!4600 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4597, file: !4598, line: 44, baseType: !171, size: 64)
!4601 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4597, file: !4598, line: 45, baseType: !85, size: 32, offset: 64)
!4602 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !4597, file: !4598, line: 46, baseType: !152, size: 128, offset: 128)
!4603 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4597, file: !4598, line: 47, baseType: !182, size: 32, offset: 256)
!4604 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4597, file: !4598, line: 48, baseType: !4605, size: 64, offset: 320)
!4605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4606, size: 64)
!4606 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !77, line: 629, flags: DIFlagFwdDecl)
!4607 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !4597, file: !4598, line: 49, baseType: !2696, size: 320, offset: 384)
!4608 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4597, file: !4598, line: 50, baseType: !302, size: 64, offset: 704)
!4609 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !4597, file: !4598, line: 51, baseType: !1801, size: 64, offset: 768)
!4610 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !4597, file: !4598, line: 52, baseType: !1801, size: 64, offset: 832)
!4611 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !4597, file: !4598, line: 53, baseType: !1801, size: 64, offset: 896)
!4612 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !4597, file: !4598, line: 54, baseType: !1801, size: 64, offset: 960)
!4613 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !4597, file: !4598, line: 55, baseType: !1801, size: 64, offset: 1024)
!4614 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !4597, file: !4598, line: 56, baseType: !302, size: 64, offset: 1088)
!4615 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !4597, file: !4598, line: 57, baseType: !302, size: 64, offset: 1152)
!4616 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !4597, file: !4598, line: 58, baseType: !302, size: 64, offset: 1216)
!4617 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !4597, file: !4598, line: 59, baseType: !302, size: 64, offset: 1280)
!4618 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !4597, file: !4598, line: 60, baseType: !302, size: 64, offset: 1344)
!4619 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4597, file: !4598, line: 61, baseType: !4440, size: 64, offset: 1408)
!4620 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !4597, file: !4598, line: 62, baseType: !863, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!4621 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !4597, file: !4598, line: 63, baseType: !863, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!4622 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !4578, file: !77, line: 681, baseType: !863, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!4623 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !4578, file: !77, line: 682, baseType: !863, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!4624 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !4578, file: !77, line: 683, baseType: !863, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!4625 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !4578, file: !77, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!4626 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !4578, file: !77, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!4627 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !4578, file: !77, line: 690, baseType: !1793, size: 512, offset: 640)
!4628 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !4578, file: !77, line: 691, baseType: !405, size: 64, offset: 1152)
!4629 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !4578, file: !77, line: 692, baseType: !1234, size: 256, offset: 1216)
!4630 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !4578, file: !77, line: 693, baseType: !732, size: 192, offset: 1472)
!4631 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !4578, file: !77, line: 694, baseType: !4605, size: 64, offset: 1664)
!4632 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !4578, file: !77, line: 695, baseType: !202, size: 32, offset: 1728)
!4633 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !4578, file: !77, line: 696, baseType: !202, size: 32, offset: 1760)
!4634 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !4578, file: !77, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!4635 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !4578, file: !77, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!4636 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !4578, file: !77, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!4637 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !4578, file: !77, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!4638 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !4578, file: !77, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!4639 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !4578, file: !77, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!4640 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !4578, file: !77, line: 703, baseType: !863, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!4641 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !4578, file: !77, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!4642 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !4578, file: !77, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!4643 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !4578, file: !77, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!4644 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !4578, file: !77, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!4645 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !4578, file: !77, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!4646 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !4578, file: !77, line: 709, baseType: !7, size: 32, offset: 1824)
!4647 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !4578, file: !77, line: 710, baseType: !76, size: 32, offset: 1856)
!4648 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !4578, file: !77, line: 711, baseType: !84, size: 32, offset: 1888)
!4649 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !4578, file: !77, line: 712, baseType: !84, size: 32, offset: 1920)
!4650 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !4578, file: !77, line: 713, baseType: !85, size: 32, offset: 1952)
!4651 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !4578, file: !77, line: 714, baseType: !85, size: 32, offset: 1984)
!4652 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !4578, file: !77, line: 715, baseType: !405, size: 64, offset: 2048)
!4653 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !4578, file: !77, line: 716, baseType: !405, size: 64, offset: 2112)
!4654 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !4578, file: !77, line: 717, baseType: !405, size: 64, offset: 2176)
!4655 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !4578, file: !77, line: 718, baseType: !405, size: 64, offset: 2240)
!4656 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !4578, file: !77, line: 720, baseType: !4657, size: 64, offset: 2304)
!4657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4658, size: 64)
!4658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !77, line: 632, size: 64, elements: !4659)
!4659 = !{!4660, !4661}
!4660 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !4658, file: !77, line: 633, baseType: !182, size: 32)
!4661 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !4658, file: !77, line: 634, baseType: !7, size: 32, offset: 32)
!4662 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !4578, file: !77, line: 721, baseType: !4663, size: 64, offset: 2368)
!4663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4664, size: 64)
!4664 = !DISubroutineType(types: !4665)
!4665 = !{null, !4440, !789}
!4666 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !4578, file: !77, line: 722, baseType: !4667, size: 64, offset: 2432)
!4667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4668, size: 64)
!4668 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !77, line: 722, flags: DIFlagFwdDecl)
!4669 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !4436, file: !70, line: 727, baseType: !4670, size: 64, offset: 4224)
!4670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4671, size: 64)
!4671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !77, line: 742, size: 1792, elements: !4672)
!4672 = !{!4673, !4674, !4675, !4679, !4680, !4681}
!4673 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4671, file: !77, line: 743, baseType: !4468, size: 1472)
!4674 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !4671, file: !77, line: 744, baseType: !4471, size: 64, offset: 1472)
!4675 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !4671, file: !77, line: 745, baseType: !4676, size: 64, offset: 1536)
!4676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4677, size: 64)
!4677 = !DISubroutineType(types: !4678)
!4678 = !{null, !4440, !863}
!4679 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !4671, file: !77, line: 746, baseType: !4471, size: 64, offset: 1600)
!4680 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !4671, file: !77, line: 747, baseType: !4462, size: 64, offset: 1664)
!4681 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !4671, file: !77, line: 748, baseType: !4462, size: 64, offset: 1728)
!4682 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !4436, file: !70, line: 736, baseType: !4683, size: 128, offset: 4288)
!4683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !70, line: 529, size: 128, elements: !4684)
!4684 = !{!4685, !4689}
!4685 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !4683, file: !70, line: 531, baseType: !4686, size: 64)
!4686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4687, size: 64)
!4687 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !4688, line: 13, flags: DIFlagFwdDecl)
!4688 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!4689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !4683, file: !70, line: 532, baseType: !4690, size: 64, offset: 64)
!4690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4691, size: 64)
!4691 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !70, line: 49, flags: DIFlagFwdDecl)
!4692 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !4436, file: !70, line: 738, baseType: !4693, size: 64, offset: 4416)
!4693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4694, size: 64)
!4694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4695)
!4695 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !70, line: 738, flags: DIFlagFwdDecl)
!4696 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !4436, file: !70, line: 740, baseType: !4697, size: 64, offset: 4480)
!4697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!4698 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !4436, file: !70, line: 741, baseType: !405, size: 64, offset: 4544)
!4699 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !4436, file: !70, line: 746, baseType: !405, size: 64, offset: 4608)
!4700 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !4436, file: !70, line: 747, baseType: !4701, size: 64, offset: 4672)
!4701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4702, size: 64)
!4702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4703)
!4703 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !70, line: 747, flags: DIFlagFwdDecl)
!4704 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !4436, file: !70, line: 749, baseType: !4705, size: 64, offset: 4736)
!4705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4706, size: 64)
!4706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !70, line: 428, size: 128, elements: !4707)
!4707 = !{!4708, !4709, !4710}
!4708 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !4706, file: !70, line: 433, baseType: !7, size: 32)
!4709 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !4706, file: !70, line: 434, baseType: !7, size: 32, offset: 32)
!4710 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !4706, file: !70, line: 435, baseType: !302, size: 64, offset: 64)
!4711 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !4436, file: !70, line: 751, baseType: !152, size: 128, offset: 4800)
!4712 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !4436, file: !70, line: 762, baseType: !4713, size: 64, offset: 4928)
!4713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4714, size: 64)
!4714 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !70, line: 762, flags: DIFlagFwdDecl)
!4715 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !4436, file: !70, line: 770, baseType: !4716, offset: 4992)
!4716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !4717, line: 5, elements: !535)
!4717 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!4718 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !4436, file: !70, line: 772, baseType: !4719, size: 64, offset: 4992)
!4719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4720, size: 64)
!4720 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !4721, line: 18, flags: DIFlagFwdDecl)
!4721 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!4722 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4436, file: !70, line: 773, baseType: !4723, size: 64, offset: 5056)
!4723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4724, size: 64)
!4724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !4725, line: 41, size: 512, elements: !4726)
!4725 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!4726 = !{!4727, !4728, !4822, !4823, !4824, !4825}
!4727 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !4724, file: !4725, line: 42, baseType: !4723, size: 64)
!4728 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !4724, file: !4725, line: 43, baseType: !4729, size: 64, offset: 64)
!4729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4730, size: 64)
!4730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4731)
!4731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !4725, line: 125, size: 1408, elements: !4732)
!4732 = !{!4733, !4737, !4741, !4747, !4751, !4752, !4757, !4761, !4765, !4769, !4773, !4774, !4778, !4782, !4786, !4797, !4798, !4799, !4800, !4810, !4814, !4818}
!4733 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !4731, file: !4725, line: 126, baseType: !4734, size: 64)
!4734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4735, size: 64)
!4735 = !DISubroutineType(types: !4736)
!4736 = !{!4723, !4723}
!4737 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !4731, file: !4725, line: 127, baseType: !4738, size: 64, offset: 64)
!4738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4739, size: 64)
!4739 = !DISubroutineType(types: !4740)
!4740 = !{null, !4723}
!4741 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !4731, file: !4725, line: 128, baseType: !4742, size: 64, offset: 128)
!4742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4743, size: 64)
!4743 = !DISubroutineType(types: !4744)
!4744 = !{!863, !4745}
!4745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4746, size: 64)
!4746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4724)
!4747 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !4731, file: !4725, line: 129, baseType: !4748, size: 64, offset: 192)
!4748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4749, size: 64)
!4749 = !DISubroutineType(types: !4750)
!4750 = !{!1195, !4745, !4434}
!4751 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !4731, file: !4725, line: 131, baseType: !4742, size: 64, offset: 256)
!4752 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !4731, file: !4725, line: 133, baseType: !4753, size: 64, offset: 320)
!4753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4754, size: 64)
!4754 = !DISubroutineType(types: !4755)
!4755 = !{!4756, !4745}
!4756 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !4725, line: 132, flags: DIFlagFwdDecl)
!4757 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !4731, file: !4725, line: 134, baseType: !4758, size: 64, offset: 384)
!4758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4759, size: 64)
!4759 = !DISubroutineType(types: !4760)
!4760 = !{!863, !4745, !171}
!4761 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !4731, file: !4725, line: 136, baseType: !4762, size: 64, offset: 448)
!4762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4763, size: 64)
!4763 = !DISubroutineType(types: !4764)
!4764 = !{!85, !4745, !171, !7, !146, !299}
!4765 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !4731, file: !4725, line: 141, baseType: !4766, size: 64, offset: 512)
!4766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4767, size: 64)
!4767 = !DISubroutineType(types: !4768)
!4768 = !{!85, !4745, !171, !3918, !299}
!4769 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !4731, file: !4725, line: 144, baseType: !4770, size: 64, offset: 576)
!4770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4771, size: 64)
!4771 = !DISubroutineType(types: !4772)
!4772 = !{!171, !4745}
!4773 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !4731, file: !4725, line: 145, baseType: !4770, size: 64, offset: 640)
!4774 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !4731, file: !4725, line: 146, baseType: !4775, size: 64, offset: 704)
!4775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4776, size: 64)
!4776 = !DISubroutineType(types: !4777)
!4777 = !{!4723, !4745}
!4778 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !4731, file: !4725, line: 148, baseType: !4779, size: 64, offset: 768)
!4779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4780, size: 64)
!4780 = !DISubroutineType(types: !4781)
!4781 = !{!4723, !4745, !4723}
!4782 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !4731, file: !4725, line: 151, baseType: !4783, size: 64, offset: 832)
!4783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4784, size: 64)
!4784 = !DISubroutineType(types: !4785)
!4785 = !{!4723, !4745, !171}
!4786 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !4731, file: !4725, line: 153, baseType: !4787, size: 64, offset: 896)
!4787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4788, size: 64)
!4788 = !DISubroutineType(types: !4789)
!4789 = !{!85, !4745, !171, !171, !7, !7, !4790}
!4790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4791, size: 64)
!4791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !4725, line: 94, size: 640, elements: !4792)
!4792 = !{!4793, !4794, !4795}
!4793 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !4791, file: !4725, line: 95, baseType: !4723, size: 64)
!4794 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !4791, file: !4725, line: 96, baseType: !7, size: 32, offset: 64)
!4795 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !4791, file: !4725, line: 97, baseType: !4796, size: 512, offset: 128)
!4796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 512, elements: !1836)
!4797 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !4731, file: !4725, line: 158, baseType: !4779, size: 64, offset: 960)
!4798 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !4731, file: !4725, line: 161, baseType: !4775, size: 64, offset: 1024)
!4799 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !4731, file: !4725, line: 163, baseType: !4734, size: 64, offset: 1088)
!4800 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !4731, file: !4725, line: 164, baseType: !4801, size: 64, offset: 1152)
!4801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4802, size: 64)
!4802 = !DISubroutineType(types: !4803)
!4803 = !{!85, !4745, !4804}
!4804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4805, size: 64)
!4805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !4725, line: 73, size: 128, elements: !4806)
!4806 = !{!4807, !4808, !4809}
!4807 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !4805, file: !4725, line: 74, baseType: !7, size: 32)
!4808 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4805, file: !4725, line: 75, baseType: !7, size: 32, offset: 32)
!4809 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !4805, file: !4725, line: 76, baseType: !4745, size: 64, offset: 64)
!4810 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !4731, file: !4725, line: 166, baseType: !4811, size: 64, offset: 1216)
!4811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4812, size: 64)
!4812 = !DISubroutineType(types: !4813)
!4813 = !{!146, !4723, !85}
!4814 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !4731, file: !4725, line: 167, baseType: !4815, size: 64, offset: 1280)
!4815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4816, size: 64)
!4816 = !DISubroutineType(types: !4817)
!4817 = !{!85, !4745, !7}
!4818 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !4731, file: !4725, line: 168, baseType: !4819, size: 64, offset: 1344)
!4819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4820, size: 64)
!4820 = !DISubroutineType(types: !4821)
!4821 = !{!85, !4723}
!4822 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !4724, file: !4725, line: 44, baseType: !4440, size: 64, offset: 128)
!4823 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !4724, file: !4725, line: 45, baseType: !152, size: 128, offset: 192)
!4824 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !4724, file: !4725, line: 46, baseType: !152, size: 128, offset: 320)
!4825 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !4724, file: !4725, line: 47, baseType: !210, size: 8, offset: 448)
!4826 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !4436, file: !70, line: 776, baseType: !85, size: 32, offset: 5120)
!4827 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !4436, file: !70, line: 778, baseType: !488, size: 32, offset: 5152)
!4828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !4436, file: !70, line: 779, baseType: !401, size: 32, offset: 5184)
!4829 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !4436, file: !70, line: 781, baseType: !182, size: 32, offset: 5216)
!4830 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !4436, file: !70, line: 782, baseType: !152, size: 128, offset: 5248)
!4831 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !4436, file: !70, line: 784, baseType: !4832, size: 64, offset: 5376)
!4832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4833, size: 64)
!4833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4834)
!4834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !4835, line: 52, size: 768, elements: !4836)
!4835 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!4836 = !{!4837, !4838, !4839, !4840, !4841, !4845, !4849, !4850, !4851, !4852, !4856, !4860}
!4837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !4834, file: !4835, line: 53, baseType: !171, size: 64)
!4838 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !4834, file: !4835, line: 55, baseType: !304, size: 64, offset: 64)
!4839 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !4834, file: !4835, line: 56, baseType: !304, size: 64, offset: 128)
!4840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !4834, file: !4835, line: 58, baseType: !4453, size: 64, offset: 192)
!4841 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !4834, file: !4835, line: 59, baseType: !4842, size: 64, offset: 256)
!4842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4843, size: 64)
!4843 = !DISubroutineType(types: !4844)
!4844 = !{!252, !4434, !4460}
!4845 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !4834, file: !4835, line: 61, baseType: !4846, size: 64, offset: 320)
!4846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4847, size: 64)
!4847 = !DISubroutineType(types: !4848)
!4848 = !{null, !4832}
!4849 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !4834, file: !4835, line: 62, baseType: !4462, size: 64, offset: 384)
!4850 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !4834, file: !4835, line: 64, baseType: !4471, size: 64, offset: 448)
!4851 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !4834, file: !4835, line: 66, baseType: !3481, size: 64, offset: 512)
!4852 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !4834, file: !4835, line: 67, baseType: !4853, size: 64, offset: 576)
!4853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4854, size: 64)
!4854 = !DISubroutineType(types: !4855)
!4855 = !{!1195, !4434}
!4856 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !4834, file: !4835, line: 69, baseType: !4857, size: 64, offset: 640)
!4857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4858, size: 64)
!4858 = !DISubroutineType(types: !4859)
!4859 = !{null, !4434, !3513, !3514}
!4860 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !4834, file: !4835, line: 71, baseType: !4466, size: 64, offset: 704)
!4861 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !4436, file: !70, line: 785, baseType: !304, size: 64, offset: 5440)
!4862 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !4436, file: !70, line: 787, baseType: !4462, size: 64, offset: 5504)
!4863 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !4436, file: !70, line: 788, baseType: !4864, size: 64, offset: 5568)
!4864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4865, size: 64)
!4865 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !70, line: 46, flags: DIFlagFwdDecl)
!4866 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !4436, file: !70, line: 789, baseType: !4867, size: 64, offset: 5632)
!4867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4868, size: 64)
!4868 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !70, line: 48, flags: DIFlagFwdDecl)
!4869 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !4436, file: !70, line: 791, baseType: !4870, size: 64, offset: 5696)
!4870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4871, size: 64)
!4871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !70, line: 597, size: 128, elements: !4872)
!4872 = !{!4873, !4874, !4875, !4876, !4877}
!4873 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !4871, file: !70, line: 598, baseType: !92, size: 32)
!4874 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !4871, file: !70, line: 599, baseType: !101, size: 32, offset: 32)
!4875 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !4871, file: !70, line: 600, baseType: !106, size: 32, offset: 64)
!4876 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !4871, file: !70, line: 601, baseType: !863, size: 8, offset: 96)
!4877 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !4871, file: !70, line: 602, baseType: !863, size: 8, offset: 104)
!4878 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !4436, file: !70, line: 793, baseType: !111, size: 32, offset: 5760)
!4879 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !4436, file: !70, line: 795, baseType: !863, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!4880 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !4436, file: !70, line: 796, baseType: !863, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!4881 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !4436, file: !70, line: 797, baseType: !863, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!4882 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !4436, file: !70, line: 798, baseType: !863, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!4883 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !4436, file: !70, line: 799, baseType: !863, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!4884 = distinct !DISubprogram(name: "__drm_printfn_debug", scope: !3, file: !3, line: 188, type: !4077, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4885)
!4885 = !{!4886, !4887}
!4886 = !DILocalVariable(name: "p", arg: 1, scope: !4884, file: !3, line: 188, type: !4072)
!4887 = !DILocalVariable(name: "vaf", arg: 2, scope: !4884, file: !3, line: 188, type: !4079)
!4888 = !DILocation(line: 188, column: 46, scope: !4884)
!4889 = !DILocation(line: 188, column: 67, scope: !4884)
!4890 = !DILocation(line: 191, column: 2, scope: !4891)
!4891 = distinct !DILexicalBlock(scope: !4884, file: !3, line: 191, column: 2)
!4892 = !DILocation(line: 191, column: 2, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4891, file: !3, line: 191, column: 2)
!4894 = !DILocation(line: 192, column: 1, scope: !4884)
!4895 = !DISubprogram(name: "_printk", scope: !4081, file: !4081, line: 153, type: !4896, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4896 = !DISubroutineType(types: !4897)
!4897 = !{!85, !171, null}
!4898 = distinct !DISubprogram(name: "__drm_printfn_err", scope: !3, file: !3, line: 195, type: !4077, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4899)
!4899 = !{!4900, !4901}
!4900 = !DILocalVariable(name: "p", arg: 1, scope: !4898, file: !3, line: 195, type: !4072)
!4901 = !DILocalVariable(name: "vaf", arg: 2, scope: !4898, file: !3, line: 195, type: !4079)
!4902 = !DILocation(line: 195, column: 44, scope: !4898)
!4903 = !DILocation(line: 195, column: 65, scope: !4898)
!4904 = !DILocation(line: 197, column: 2, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4898, file: !3, line: 197, column: 2)
!4906 = !DILocation(line: 197, column: 2, scope: !4907)
!4907 = distinct !DILexicalBlock(scope: !4905, file: !3, line: 197, column: 2)
!4908 = !DILocation(line: 198, column: 1, scope: !4898)
!4909 = distinct !DISubprogram(name: "drm_puts", scope: !3, file: !3, line: 209, type: !4070, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4910)
!4910 = !{!4911, !4912}
!4911 = !DILocalVariable(name: "p", arg: 1, scope: !4909, file: !3, line: 209, type: !4072)
!4912 = !DILocalVariable(name: "str", arg: 2, scope: !4909, file: !3, line: 209, type: !171)
!4913 = !DILocation(line: 209, column: 35, scope: !4909)
!4914 = !DILocation(line: 209, column: 50, scope: !4909)
!4915 = !DILocation(line: 211, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4909, file: !3, line: 211, column: 6)
!4917 = !DILocation(line: 211, column: 9, scope: !4916)
!4918 = !DILocation(line: 211, column: 6, scope: !4909)
!4919 = !DILocation(line: 212, column: 3, scope: !4916)
!4920 = !DILocation(line: 212, column: 6, scope: !4916)
!4921 = !DILocation(line: 212, column: 11, scope: !4916)
!4922 = !DILocation(line: 212, column: 14, scope: !4916)
!4923 = !DILocation(line: 214, column: 14, scope: !4916)
!4924 = !DILocation(line: 214, column: 23, scope: !4916)
!4925 = !DILocation(line: 214, column: 3, scope: !4916)
!4926 = !DILocation(line: 215, column: 1, scope: !4909)
!4927 = distinct !DISubprogram(name: "drm_printf", scope: !3, file: !3, line: 223, type: !4928, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4930)
!4928 = !DISubroutineType(types: !4929)
!4929 = !{null, !4072, !171, null}
!4930 = !{!4931, !4932, !4933}
!4931 = !DILocalVariable(name: "p", arg: 1, scope: !4927, file: !3, line: 223, type: !4072)
!4932 = !DILocalVariable(name: "f", arg: 2, scope: !4927, file: !3, line: 223, type: !171)
!4933 = !DILocalVariable(name: "args", scope: !4927, file: !3, line: 225, type: !4086)
!4934 = !DILocation(line: 223, column: 37, scope: !4927)
!4935 = !DILocation(line: 223, column: 52, scope: !4927)
!4936 = !DILocation(line: 225, column: 2, scope: !4927)
!4937 = !DILocation(line: 225, column: 10, scope: !4927)
!4938 = !DILocation(line: 227, column: 2, scope: !4927)
!4939 = !DILocation(line: 228, column: 14, scope: !4927)
!4940 = !DILocation(line: 228, column: 17, scope: !4927)
!4941 = !DILocation(line: 228, column: 2, scope: !4927)
!4942 = !DILocation(line: 229, column: 2, scope: !4927)
!4943 = !DILocation(line: 230, column: 1, scope: !4927)
!4944 = distinct !DISubprogram(name: "drm_vprintf", scope: !123, file: !123, line: 107, type: !4945, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4947)
!4945 = !DISubroutineType(types: !4946)
!4946 = !{null, !4072, !171, !4085}
!4947 = !{!4948, !4949, !4950, !4951}
!4948 = !DILocalVariable(name: "p", arg: 1, scope: !4944, file: !123, line: 107, type: !4072)
!4949 = !DILocalVariable(name: "fmt", arg: 2, scope: !4944, file: !123, line: 107, type: !171)
!4950 = !DILocalVariable(name: "va", arg: 3, scope: !4944, file: !123, line: 107, type: !4085)
!4951 = !DILocalVariable(name: "vaf", scope: !4944, file: !123, line: 109, type: !4080)
!4952 = !DILocation(line: 107, column: 33, scope: !4944)
!4953 = !DILocation(line: 107, column: 48, scope: !4944)
!4954 = !DILocation(line: 107, column: 62, scope: !4944)
!4955 = !DILocation(line: 109, column: 2, scope: !4944)
!4956 = !DILocation(line: 109, column: 19, scope: !4944)
!4957 = !DILocation(line: 109, column: 25, scope: !4944)
!4958 = !DILocation(line: 109, column: 34, scope: !4944)
!4959 = !DILocation(line: 109, column: 45, scope: !4944)
!4960 = !DILocation(line: 111, column: 2, scope: !4944)
!4961 = !DILocation(line: 111, column: 5, scope: !4944)
!4962 = !DILocation(line: 111, column: 13, scope: !4944)
!4963 = !DILocation(line: 112, column: 1, scope: !4944)
!4964 = distinct !DISubprogram(name: "drm_print_bits", scope: !3, file: !3, line: 243, type: !4965, scopeLine: 245, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4969)
!4965 = !DISubroutineType(types: !4966)
!4966 = !{null, !4072, !302, !4967, !7}
!4967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4968, size: 64)
!4968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!4969 = !{!4970, !4971, !4972, !4973, !4974, !4975, !4976, !4979, !4982, !4988}
!4970 = !DILocalVariable(name: "p", arg: 1, scope: !4964, file: !3, line: 243, type: !4072)
!4971 = !DILocalVariable(name: "value", arg: 2, scope: !4964, file: !3, line: 243, type: !302)
!4972 = !DILocalVariable(name: "bits", arg: 3, scope: !4964, file: !3, line: 244, type: !4967)
!4973 = !DILocalVariable(name: "nbits", arg: 4, scope: !4964, file: !3, line: 244, type: !7)
!4974 = !DILocalVariable(name: "first", scope: !4964, file: !3, line: 246, type: !863)
!4975 = !DILocalVariable(name: "i", scope: !4964, file: !3, line: 247, type: !7)
!4976 = !DILocalVariable(name: "__ret_warn_on", scope: !4977, file: !3, line: 249, type: !85)
!4977 = distinct !DILexicalBlock(scope: !4978, file: !3, line: 249, column: 6)
!4978 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 249, column: 6)
!4979 = !DILocalVariable(name: "__flags", scope: !4980, file: !3, line: 249, type: !85)
!4980 = distinct !DILexicalBlock(scope: !4981, file: !3, line: 249, column: 6)
!4981 = distinct !DILexicalBlock(scope: !4977, file: !3, line: 249, column: 6)
!4982 = !DILocalVariable(name: "__ret_warn_on", scope: !4983, file: !3, line: 253, type: !85)
!4983 = distinct !DILexicalBlock(scope: !4984, file: !3, line: 253, column: 7)
!4984 = distinct !DILexicalBlock(scope: !4985, file: !3, line: 253, column: 7)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !3, line: 252, column: 37)
!4986 = distinct !DILexicalBlock(scope: !4987, file: !3, line: 252, column: 2)
!4987 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 252, column: 2)
!4988 = !DILocalVariable(name: "__flags", scope: !4989, file: !3, line: 253, type: !85)
!4989 = distinct !DILexicalBlock(scope: !4990, file: !3, line: 253, column: 7)
!4990 = distinct !DILexicalBlock(scope: !4983, file: !3, line: 253, column: 7)
!4991 = !DILocation(line: 243, column: 41, scope: !4964)
!4992 = !DILocation(line: 243, column: 58, scope: !4964)
!4993 = !DILocation(line: 244, column: 26, scope: !4964)
!4994 = !DILocation(line: 244, column: 47, scope: !4964)
!4995 = !DILocation(line: 246, column: 2, scope: !4964)
!4996 = !DILocation(line: 246, column: 7, scope: !4964)
!4997 = !DILocation(line: 247, column: 2, scope: !4964)
!4998 = !DILocation(line: 247, column: 15, scope: !4964)
!4999 = !DILocation(line: 249, column: 6, scope: !4977)
!5000 = !DILocation(line: 249, column: 6, scope: !4981)
!5001 = !DILocation(line: 249, column: 6, scope: !4980)
!5002 = !DILocation(line: 249, column: 6, scope: !5003)
!5003 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 249, column: 6)
!5004 = !DILocation(line: 249, column: 6, scope: !5005)
!5005 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 249, column: 6)
!5006 = !{i64 2154341287, i64 2154341316, i64 2154341362, i64 2154341420, i64 2154341474, i64 2154341528, i64 2154341583, i64 2154341614, i64 2154341922, i64 2154341928, i64 2154341975, i64 2154341998, i64 2154342024}
!5007 = !DILocation(line: 249, column: 6, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4980, file: !3, line: 249, column: 6)
!5009 = !DILocation(line: 249, column: 6, scope: !4978)
!5010 = !DILocation(line: 249, column: 6, scope: !4964)
!5011 = !DILocation(line: 250, column: 9, scope: !4978)
!5012 = !DILocation(line: 250, column: 3, scope: !4978)
!5013 = !DILocation(line: 252, column: 2, scope: !4987)
!5014 = !DILocation(line: 252, column: 2, scope: !4986)
!5015 = !DILocation(line: 253, column: 7, scope: !4983)
!5016 = !DILocation(line: 253, column: 7, scope: !4990)
!5017 = !DILocation(line: 253, column: 7, scope: !4989)
!5018 = !DILocation(line: 253, column: 7, scope: !5019)
!5019 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 253, column: 7)
!5020 = !DILocation(line: 253, column: 7, scope: !5021)
!5021 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 253, column: 7)
!5022 = !{i64 2154342969, i64 2154342998, i64 2154343044, i64 2154343102, i64 2154343156, i64 2154343210, i64 2154343265, i64 2154343296, i64 2154343604, i64 2154343610, i64 2154343657, i64 2154343680, i64 2154343706}
!5023 = !DILocation(line: 253, column: 7, scope: !5024)
!5024 = distinct !DILexicalBlock(scope: !4989, file: !3, line: 253, column: 7)
!5025 = !DILocation(line: 253, column: 7, scope: !4984)
!5026 = !DILocation(line: 253, column: 7, scope: !4985)
!5027 = !DILocation(line: 254, column: 4, scope: !4984)
!5028 = !DILocation(line: 255, column: 14, scope: !4985)
!5029 = !DILocation(line: 255, column: 25, scope: !4985)
!5030 = !{i8 0, i8 2}
!5031 = !DILocation(line: 256, column: 7, scope: !4985)
!5032 = !DILocation(line: 256, column: 12, scope: !4985)
!5033 = !DILocation(line: 255, column: 3, scope: !4985)
!5034 = !DILocation(line: 257, column: 9, scope: !4985)
!5035 = !DILocation(line: 258, column: 2, scope: !4985)
!5036 = distinct !{!5036, !5013, !5037, !5038, !5039}
!5037 = !DILocation(line: 258, column: 2, scope: !4987)
!5038 = !{!"llvm.loop.mustprogress"}
!5039 = !{!"llvm.loop.unroll.disable"}
!5040 = !DILocation(line: 259, column: 6, scope: !5041)
!5041 = distinct !DILexicalBlock(scope: !4964, file: !3, line: 259, column: 6)
!5042 = !DILocation(line: 259, column: 6, scope: !4964)
!5043 = !DILocation(line: 260, column: 14, scope: !5041)
!5044 = !DILocation(line: 260, column: 3, scope: !5041)
!5045 = !DILocation(line: 261, column: 1, scope: !4964)
!5046 = distinct !DISubprogram(name: "find_next_bit", scope: !5047, file: !5047, line: 54, type: !5048, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5052)
!5047 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!5048 = !DISubroutineType(types: !5049)
!5049 = !{!302, !5050, !302, !302}
!5050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5051, size: 64)
!5051 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!5052 = !{!5053, !5054, !5055, !5056}
!5053 = !DILocalVariable(name: "addr", arg: 1, scope: !5046, file: !5047, line: 54, type: !5050)
!5054 = !DILocalVariable(name: "size", arg: 2, scope: !5046, file: !5047, line: 54, type: !302)
!5055 = !DILocalVariable(name: "offset", arg: 3, scope: !5046, file: !5047, line: 55, type: !302)
!5056 = !DILocalVariable(name: "val", scope: !5057, file: !5047, line: 58, type: !302)
!5057 = distinct !DILexicalBlock(scope: !5058, file: !5047, line: 57, column: 31)
!5058 = distinct !DILexicalBlock(scope: !5046, file: !5047, line: 57, column: 6)
!5059 = !DILocation(line: 54, column: 50, scope: !5046)
!5060 = !DILocation(line: 54, column: 70, scope: !5046)
!5061 = !DILocation(line: 55, column: 22, scope: !5046)
!5062 = !DILocation(line: 57, column: 6, scope: !5058)
!5063 = !DILocation(line: 57, column: 6, scope: !5046)
!5064 = !DILocation(line: 58, column: 3, scope: !5057)
!5065 = !DILocation(line: 58, column: 17, scope: !5057)
!5066 = !DILocation(line: 60, column: 7, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5057, file: !5047, line: 60, column: 7)
!5068 = !DILocation(line: 60, column: 7, scope: !5057)
!5069 = !DILocation(line: 61, column: 11, scope: !5067)
!5070 = !DILocation(line: 61, column: 4, scope: !5067)
!5071 = !DILocation(line: 63, column: 10, scope: !5057)
!5072 = !DILocation(line: 63, column: 9, scope: !5057)
!5073 = !DILocation(line: 63, column: 17, scope: !5057)
!5074 = !DILocation(line: 63, column: 15, scope: !5057)
!5075 = !DILocation(line: 63, column: 7, scope: !5057)
!5076 = !DILocation(line: 64, column: 10, scope: !5057)
!5077 = !DILocation(line: 64, column: 16, scope: !5057)
!5078 = !DILocation(line: 64, column: 29, scope: !5057)
!5079 = !DILocation(line: 64, column: 3, scope: !5057)
!5080 = !DILocation(line: 65, column: 2, scope: !5058)
!5081 = !DILocation(line: 67, column: 24, scope: !5046)
!5082 = !DILocation(line: 67, column: 30, scope: !5046)
!5083 = !DILocation(line: 67, column: 36, scope: !5046)
!5084 = !DILocation(line: 67, column: 9, scope: !5046)
!5085 = !DILocation(line: 67, column: 2, scope: !5046)
!5086 = !DILocation(line: 68, column: 1, scope: !5046)
!5087 = distinct !DISubprogram(name: "drm_dev_printk", scope: !3, file: !3, line: 264, type: !5088, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5090)
!5088 = !DISubroutineType(types: !5089)
!5089 = !{null, !4434, !171, !171, null}
!5090 = !{!5091, !5092, !5093, !5094, !5095}
!5091 = !DILocalVariable(name: "dev", arg: 1, scope: !5087, file: !3, line: 264, type: !4434)
!5092 = !DILocalVariable(name: "level", arg: 2, scope: !5087, file: !3, line: 264, type: !171)
!5093 = !DILocalVariable(name: "format", arg: 3, scope: !5087, file: !3, line: 265, type: !171)
!5094 = !DILocalVariable(name: "vaf", scope: !5087, file: !3, line: 267, type: !4080)
!5095 = !DILocalVariable(name: "args", scope: !5087, file: !3, line: 268, type: !4086)
!5096 = !DILocation(line: 264, column: 42, scope: !5087)
!5097 = !DILocation(line: 264, column: 59, scope: !5087)
!5098 = !DILocation(line: 265, column: 19, scope: !5087)
!5099 = !DILocation(line: 267, column: 2, scope: !5087)
!5100 = !DILocation(line: 267, column: 19, scope: !5087)
!5101 = !DILocation(line: 268, column: 2, scope: !5087)
!5102 = !DILocation(line: 268, column: 10, scope: !5087)
!5103 = !DILocation(line: 270, column: 2, scope: !5087)
!5104 = !DILocation(line: 271, column: 12, scope: !5087)
!5105 = !DILocation(line: 271, column: 6, scope: !5087)
!5106 = !DILocation(line: 271, column: 10, scope: !5087)
!5107 = !DILocation(line: 272, column: 6, scope: !5087)
!5108 = !DILocation(line: 272, column: 9, scope: !5087)
!5109 = !DILocation(line: 274, column: 6, scope: !5110)
!5110 = distinct !DILexicalBlock(scope: !5087, file: !3, line: 274, column: 6)
!5111 = !DILocation(line: 274, column: 6, scope: !5087)
!5112 = !DILocation(line: 275, column: 3, scope: !5113)
!5113 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 275, column: 3)
!5114 = !DILocation(line: 275, column: 3, scope: !5115)
!5115 = distinct !DILexicalBlock(scope: !5113, file: !3, line: 275, column: 3)
!5116 = !DILocation(line: 275, column: 3, scope: !5110)
!5117 = !DILocation(line: 278, column: 3, scope: !5118)
!5118 = distinct !DILexicalBlock(scope: !5110, file: !3, line: 278, column: 3)
!5119 = !DILocation(line: 278, column: 3, scope: !5120)
!5120 = distinct !DILexicalBlock(scope: !5118, file: !3, line: 278, column: 3)
!5121 = !DILocation(line: 281, column: 2, scope: !5087)
!5122 = !DILocation(line: 282, column: 1, scope: !5087)
!5123 = !DISubprogram(name: "_dev_printk", scope: !4431, file: !4431, line: 41, type: !5124, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5124 = !DISubroutineType(types: !5125)
!5125 = !{null, !171, !4434, !171, null}
!5126 = distinct !DISubprogram(name: "__drm_dev_dbg", scope: !3, file: !3, line: 285, type: !5127, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5162)
!5127 = !DISubroutineType(types: !5128)
!5128 = !{null, !5129, !4434, !122, !171, null}
!5129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5130, size: 64)
!5130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ddebug", file: !5131, line: 16, size: 448, align: 64, elements: !5132)
!5131 = !DIFile(filename: "./include/linux/dynamic_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5870bc31a25115f490bd43a8eae18abb")
!5132 = !{!5133, !5134, !5135, !5136, !5137, !5138, !5139, !5140}
!5133 = !DIDerivedType(tag: DW_TAG_member, name: "modname", scope: !5130, file: !5131, line: 21, baseType: !171, size: 64)
!5134 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !5130, file: !5131, line: 22, baseType: !171, size: 64, offset: 64)
!5135 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !5130, file: !5131, line: 23, baseType: !171, size: 64, offset: 128)
!5136 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !5130, file: !5131, line: 24, baseType: !171, size: 64, offset: 192)
!5137 = !DIDerivedType(tag: DW_TAG_member, name: "lineno", scope: !5130, file: !5131, line: 25, baseType: !7, size: 18, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!5138 = !DIDerivedType(tag: DW_TAG_member, name: "class_id", scope: !5130, file: !5131, line: 27, baseType: !7, size: 6, offset: 274, flags: DIFlagBitField, extraData: i64 256)
!5139 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !5130, file: !5131, line: 52, baseType: !7, size: 8, offset: 280, flags: DIFlagBitField, extraData: i64 256)
!5140 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5130, file: !5131, line: 57, baseType: !5141, size: 128, offset: 320)
!5141 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5130, file: !5131, line: 54, size: 128, elements: !5142)
!5142 = !{!5143, !5158}
!5143 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_true", scope: !5141, file: !5131, line: 55, baseType: !5144, size: 128)
!5144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_true", file: !3910, line: 359, size: 128, elements: !5145)
!5145 = !{!5146}
!5146 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5144, file: !3910, line: 360, baseType: !5147, size: 128)
!5147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !3910, line: 85, size: 128, elements: !5148)
!5148 = !{!5149, !5150}
!5149 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !5147, file: !3910, line: 86, baseType: !202, size: 32)
!5150 = !DIDerivedType(tag: DW_TAG_member, scope: !5147, file: !3910, line: 101, baseType: !5151, size: 64, offset: 64)
!5151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5147, file: !3910, line: 101, size: 64, elements: !5152)
!5152 = !{!5153, !5154, !5155}
!5153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5151, file: !3910, line: 102, baseType: !302, size: 64)
!5154 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !5151, file: !3910, line: 103, baseType: !3908, size: 64)
!5155 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5151, file: !3910, line: 104, baseType: !5156, size: 64)
!5156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5157, size: 64)
!5157 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !3910, line: 104, flags: DIFlagFwdDecl)
!5158 = !DIDerivedType(tag: DW_TAG_member, name: "dd_key_false", scope: !5141, file: !5131, line: 56, baseType: !5159, size: 128)
!5159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_false", file: !3910, line: 363, size: 128, elements: !5160)
!5160 = !{!5161}
!5161 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5159, file: !3910, line: 364, baseType: !5147, size: 128)
!5162 = !{!5163, !5164, !5165, !5166, !5167, !5168}
!5163 = !DILocalVariable(name: "desc", arg: 1, scope: !5126, file: !3, line: 285, type: !5129)
!5164 = !DILocalVariable(name: "dev", arg: 2, scope: !5126, file: !3, line: 285, type: !4434)
!5165 = !DILocalVariable(name: "category", arg: 3, scope: !5126, file: !3, line: 286, type: !122)
!5166 = !DILocalVariable(name: "format", arg: 4, scope: !5126, file: !3, line: 286, type: !171)
!5167 = !DILocalVariable(name: "vaf", scope: !5126, file: !3, line: 288, type: !4080)
!5168 = !DILocalVariable(name: "args", scope: !5126, file: !3, line: 289, type: !4086)
!5169 = !DILocation(line: 285, column: 36, scope: !5126)
!5170 = !DILocation(line: 285, column: 63, scope: !5126)
!5171 = !DILocation(line: 286, column: 30, scope: !5126)
!5172 = !DILocation(line: 286, column: 52, scope: !5126)
!5173 = !DILocation(line: 288, column: 2, scope: !5126)
!5174 = !DILocation(line: 288, column: 19, scope: !5126)
!5175 = !DILocation(line: 289, column: 2, scope: !5126)
!5176 = !DILocation(line: 289, column: 10, scope: !5126)
!5177 = !DILocation(line: 291, column: 7, scope: !5178)
!5178 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 291, column: 6)
!5179 = !DILocation(line: 291, column: 6, scope: !5126)
!5180 = !DILocation(line: 292, column: 3, scope: !5178)
!5181 = !DILocation(line: 295, column: 2, scope: !5126)
!5182 = !DILocation(line: 296, column: 12, scope: !5126)
!5183 = !DILocation(line: 296, column: 6, scope: !5126)
!5184 = !DILocation(line: 296, column: 10, scope: !5126)
!5185 = !DILocation(line: 297, column: 6, scope: !5126)
!5186 = !DILocation(line: 297, column: 9, scope: !5126)
!5187 = !DILocation(line: 299, column: 6, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5126, file: !3, line: 299, column: 6)
!5189 = !DILocation(line: 299, column: 6, scope: !5126)
!5190 = !DILocation(line: 300, column: 3, scope: !5191)
!5191 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 300, column: 3)
!5192 = !DILocation(line: 300, column: 3, scope: !5193)
!5193 = distinct !DILexicalBlock(scope: !5191, file: !3, line: 300, column: 3)
!5194 = !DILocation(line: 300, column: 3, scope: !5188)
!5195 = !DILocation(line: 303, column: 3, scope: !5196)
!5196 = distinct !DILexicalBlock(scope: !5188, file: !3, line: 303, column: 3)
!5197 = !DILocation(line: 303, column: 3, scope: !5198)
!5198 = distinct !DILexicalBlock(scope: !5196, file: !3, line: 303, column: 3)
!5199 = !DILocation(line: 306, column: 2, scope: !5126)
!5200 = !DILocation(line: 307, column: 1, scope: !5126)
!5201 = distinct !DISubprogram(name: "drm_debug_enabled_raw", scope: !123, file: !123, line: 376, type: !5202, scopeLine: 377, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5204)
!5202 = !DISubroutineType(types: !5203)
!5203 = !{!863, !122}
!5204 = !{!5205}
!5205 = !DILocalVariable(name: "category", arg: 1, scope: !5201, file: !123, line: 376, type: !122)
!5206 = !DILocation(line: 376, column: 66, scope: !5201)
!5207 = !DILocation(line: 378, column: 9, scope: !5201)
!5208 = !DILocation(line: 378, column: 2, scope: !5201)
!5209 = distinct !DISubprogram(name: "___drm_dbg", scope: !3, file: !3, line: 310, type: !5210, scopeLine: 311, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5212)
!5210 = !DISubroutineType(types: !5211)
!5211 = !{null, !5129, !122, !171, null}
!5212 = !{!5213, !5214, !5215, !5216, !5217}
!5213 = !DILocalVariable(name: "desc", arg: 1, scope: !5209, file: !3, line: 310, type: !5129)
!5214 = !DILocalVariable(name: "category", arg: 2, scope: !5209, file: !3, line: 310, type: !122)
!5215 = !DILocalVariable(name: "format", arg: 3, scope: !5209, file: !3, line: 310, type: !171)
!5216 = !DILocalVariable(name: "vaf", scope: !5209, file: !3, line: 312, type: !4080)
!5217 = !DILocalVariable(name: "args", scope: !5209, file: !3, line: 313, type: !4086)
!5218 = !DILocation(line: 310, column: 33, scope: !5209)
!5219 = !DILocation(line: 310, column: 63, scope: !5209)
!5220 = !DILocation(line: 310, column: 85, scope: !5209)
!5221 = !DILocation(line: 312, column: 2, scope: !5209)
!5222 = !DILocation(line: 312, column: 19, scope: !5209)
!5223 = !DILocation(line: 313, column: 2, scope: !5209)
!5224 = !DILocation(line: 313, column: 10, scope: !5209)
!5225 = !DILocation(line: 315, column: 7, scope: !5226)
!5226 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 315, column: 6)
!5227 = !DILocation(line: 315, column: 6, scope: !5209)
!5228 = !DILocation(line: 316, column: 3, scope: !5226)
!5229 = !DILocation(line: 318, column: 2, scope: !5209)
!5230 = !DILocation(line: 319, column: 12, scope: !5209)
!5231 = !DILocation(line: 319, column: 6, scope: !5209)
!5232 = !DILocation(line: 319, column: 10, scope: !5209)
!5233 = !DILocation(line: 320, column: 6, scope: !5209)
!5234 = !DILocation(line: 320, column: 9, scope: !5209)
!5235 = !DILocation(line: 322, column: 2, scope: !5236)
!5236 = distinct !DILexicalBlock(scope: !5209, file: !3, line: 322, column: 2)
!5237 = !DILocation(line: 322, column: 2, scope: !5238)
!5238 = distinct !DILexicalBlock(scope: !5236, file: !3, line: 322, column: 2)
!5239 = !DILocation(line: 325, column: 2, scope: !5209)
!5240 = !DILocation(line: 326, column: 1, scope: !5209)
!5241 = distinct !DISubprogram(name: "__drm_err", scope: !3, file: !3, line: 329, type: !5242, scopeLine: 330, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5244)
!5242 = !DISubroutineType(types: !5243)
!5243 = !{null, !171, null}
!5244 = !{!5245, !5246, !5247}
!5245 = !DILocalVariable(name: "format", arg: 1, scope: !5241, file: !3, line: 329, type: !171)
!5246 = !DILocalVariable(name: "vaf", scope: !5241, file: !3, line: 331, type: !4080)
!5247 = !DILocalVariable(name: "args", scope: !5241, file: !3, line: 332, type: !4086)
!5248 = !DILocation(line: 329, column: 28, scope: !5241)
!5249 = !DILocation(line: 331, column: 2, scope: !5241)
!5250 = !DILocation(line: 331, column: 19, scope: !5241)
!5251 = !DILocation(line: 332, column: 2, scope: !5241)
!5252 = !DILocation(line: 332, column: 10, scope: !5241)
!5253 = !DILocation(line: 334, column: 2, scope: !5241)
!5254 = !DILocation(line: 335, column: 12, scope: !5241)
!5255 = !DILocation(line: 335, column: 6, scope: !5241)
!5256 = !DILocation(line: 335, column: 10, scope: !5241)
!5257 = !DILocation(line: 336, column: 6, scope: !5241)
!5258 = !DILocation(line: 336, column: 9, scope: !5241)
!5259 = !DILocation(line: 338, column: 2, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5241, file: !3, line: 338, column: 2)
!5261 = !DILocation(line: 338, column: 2, scope: !5262)
!5262 = distinct !DILexicalBlock(scope: !5260, file: !3, line: 338, column: 2)
!5263 = !DILocation(line: 341, column: 2, scope: !5241)
!5264 = !DILocation(line: 342, column: 1, scope: !5241)
!5265 = distinct !DISubprogram(name: "drm_print_regset32", scope: !3, file: !3, line: 357, type: !5266, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5282)
!5266 = !DISubroutineType(types: !5267)
!5267 = !{null, !4072, !5268}
!5268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5269, size: 64)
!5269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_regset32", file: !5270, line: 34, size: 256, elements: !5271)
!5270 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!5271 = !{!5272, !5279, !5280, !5281}
!5272 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !5269, file: !5270, line: 35, baseType: !5273, size: 64)
!5273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5274, size: 64)
!5274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5275)
!5275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "debugfs_reg32", file: !5270, line: 29, size: 128, elements: !5276)
!5276 = !{!5277, !5278}
!5277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5275, file: !5270, line: 30, baseType: !252, size: 64)
!5278 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !5275, file: !5270, line: 31, baseType: !302, size: 64, offset: 64)
!5279 = !DIDerivedType(tag: DW_TAG_member, name: "nregs", scope: !5269, file: !5270, line: 36, baseType: !85, size: 32, offset: 64)
!5280 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !5269, file: !5270, line: 37, baseType: !146, size: 64, offset: 128)
!5281 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !5269, file: !5270, line: 38, baseType: !4440, size: 64, offset: 192)
!5282 = !{!5283, !5284, !5285, !5286, !5287, !5291}
!5283 = !DILocalVariable(name: "p", arg: 1, scope: !5265, file: !3, line: 357, type: !4072)
!5284 = !DILocalVariable(name: "regset", arg: 2, scope: !5265, file: !3, line: 357, type: !5268)
!5285 = !DILocalVariable(name: "namelen", scope: !5265, file: !3, line: 359, type: !85)
!5286 = !DILocalVariable(name: "i", scope: !5265, file: !3, line: 360, type: !85)
!5287 = !DILocalVariable(name: "__UNIQUE_ID___x287", scope: !5288, file: !3, line: 363, type: !85)
!5288 = distinct !DILexicalBlock(scope: !5289, file: !3, line: 363, column: 13)
!5289 = distinct !DILexicalBlock(scope: !5290, file: !3, line: 362, column: 2)
!5290 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 362, column: 2)
!5291 = !DILocalVariable(name: "__UNIQUE_ID___y288", scope: !5288, file: !3, line: 363, type: !85)
!5292 = !DILocation(line: 357, column: 45, scope: !5265)
!5293 = !DILocation(line: 357, column: 73, scope: !5265)
!5294 = !DILocation(line: 359, column: 2, scope: !5265)
!5295 = !DILocation(line: 359, column: 6, scope: !5265)
!5296 = !DILocation(line: 360, column: 2, scope: !5265)
!5297 = !DILocation(line: 360, column: 6, scope: !5265)
!5298 = !DILocation(line: 362, column: 9, scope: !5290)
!5299 = !DILocation(line: 362, column: 7, scope: !5290)
!5300 = !DILocation(line: 362, column: 14, scope: !5289)
!5301 = !DILocation(line: 362, column: 18, scope: !5289)
!5302 = !DILocation(line: 362, column: 26, scope: !5289)
!5303 = !DILocation(line: 362, column: 16, scope: !5289)
!5304 = !DILocation(line: 362, column: 2, scope: !5290)
!5305 = !DILocation(line: 363, column: 13, scope: !5288)
!5306 = !DILocation(line: 363, column: 13, scope: !5289)
!5307 = !DILocation(line: 363, column: 11, scope: !5289)
!5308 = !DILocation(line: 363, column: 3, scope: !5289)
!5309 = !DILocation(line: 362, column: 34, scope: !5289)
!5310 = !DILocation(line: 362, column: 2, scope: !5289)
!5311 = distinct !{!5311, !5304, !5312, !5038, !5039}
!5312 = !DILocation(line: 363, column: 13, scope: !5290)
!5313 = !DILocation(line: 365, column: 9, scope: !5314)
!5314 = distinct !DILexicalBlock(scope: !5265, file: !3, line: 365, column: 2)
!5315 = !DILocation(line: 365, column: 7, scope: !5314)
!5316 = !DILocation(line: 365, column: 14, scope: !5317)
!5317 = distinct !DILexicalBlock(scope: !5314, file: !3, line: 365, column: 2)
!5318 = !DILocation(line: 365, column: 18, scope: !5317)
!5319 = !DILocation(line: 365, column: 26, scope: !5317)
!5320 = !DILocation(line: 365, column: 16, scope: !5317)
!5321 = !DILocation(line: 365, column: 2, scope: !5314)
!5322 = !DILocation(line: 366, column: 14, scope: !5323)
!5323 = distinct !DILexicalBlock(scope: !5317, file: !3, line: 365, column: 38)
!5324 = !DILocation(line: 367, column: 7, scope: !5323)
!5325 = !DILocation(line: 367, column: 16, scope: !5323)
!5326 = !DILocation(line: 367, column: 24, scope: !5323)
!5327 = !DILocation(line: 367, column: 29, scope: !5323)
!5328 = !DILocation(line: 367, column: 32, scope: !5323)
!5329 = !DILocation(line: 368, column: 13, scope: !5323)
!5330 = !DILocation(line: 368, column: 21, scope: !5323)
!5331 = !DILocation(line: 368, column: 28, scope: !5323)
!5332 = !DILocation(line: 368, column: 36, scope: !5323)
!5333 = !DILocation(line: 368, column: 41, scope: !5323)
!5334 = !DILocation(line: 368, column: 44, scope: !5323)
!5335 = !DILocation(line: 368, column: 26, scope: !5323)
!5336 = !DILocation(line: 368, column: 7, scope: !5323)
!5337 = !DILocation(line: 366, column: 3, scope: !5323)
!5338 = !DILocation(line: 369, column: 2, scope: !5323)
!5339 = !DILocation(line: 365, column: 34, scope: !5317)
!5340 = !DILocation(line: 365, column: 2, scope: !5317)
!5341 = distinct !{!5341, !5321, !5342, !5038, !5039}
!5342 = !DILocation(line: 369, column: 2, scope: !5314)
!5343 = !DILocation(line: 370, column: 1, scope: !5265)
!5344 = distinct !DISubprogram(name: "readl", scope: !5345, file: !5345, line: 58, type: !5346, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5351)
!5345 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61486da85b514d445321f8c21ee9eef4")
!5346 = !DISubroutineType(types: !5347)
!5347 = !{!7, !5348}
!5348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5349, size: 64)
!5349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5350)
!5350 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5351 = !{!5352, !5353}
!5352 = !DILocalVariable(name: "addr", arg: 1, scope: !5344, file: !5345, line: 58, type: !5348)
!5353 = !DILocalVariable(name: "ret", scope: !5344, file: !5345, line: 58, type: !7)
!5354 = !DILocation(line: 58, column: 1, scope: !5344)
!5355 = !{i64 2148172998}
!5356 = !DISubprogram(name: "kmalloc_large", scope: !136, file: !136, line: 531, type: !4346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5357 = distinct !DISubprogram(name: "__kmalloc_index", scope: !136, file: !136, line: 444, type: !5358, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5360)
!5358 = !DISubroutineType(types: !5359)
!5359 = !{!7, !299, !863}
!5360 = !{!5361, !5362}
!5361 = !DILocalVariable(name: "size", arg: 1, scope: !5357, file: !136, line: 444, type: !299)
!5362 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !5357, file: !136, line: 445, type: !863)
!5363 = !DILocation(line: 444, column: 60, scope: !5357)
!5364 = !DILocation(line: 445, column: 16, scope: !5357)
!5365 = !DILocation(line: 447, column: 7, scope: !5366)
!5366 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 447, column: 6)
!5367 = !DILocation(line: 447, column: 6, scope: !5357)
!5368 = !DILocation(line: 448, column: 3, scope: !5366)
!5369 = !DILocation(line: 450, column: 6, scope: !5370)
!5370 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 450, column: 6)
!5371 = !DILocation(line: 450, column: 11, scope: !5370)
!5372 = !DILocation(line: 450, column: 6, scope: !5357)
!5373 = !DILocation(line: 451, column: 3, scope: !5370)
!5374 = !DILocation(line: 453, column: 32, scope: !5375)
!5375 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 453, column: 6)
!5376 = !DILocation(line: 453, column: 37, scope: !5375)
!5377 = !DILocation(line: 453, column: 42, scope: !5375)
!5378 = !DILocation(line: 453, column: 45, scope: !5375)
!5379 = !DILocation(line: 453, column: 50, scope: !5375)
!5380 = !DILocation(line: 453, column: 6, scope: !5357)
!5381 = !DILocation(line: 454, column: 3, scope: !5375)
!5382 = !DILocation(line: 455, column: 32, scope: !5383)
!5383 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 455, column: 6)
!5384 = !DILocation(line: 455, column: 37, scope: !5383)
!5385 = !DILocation(line: 455, column: 43, scope: !5383)
!5386 = !DILocation(line: 455, column: 46, scope: !5383)
!5387 = !DILocation(line: 455, column: 51, scope: !5383)
!5388 = !DILocation(line: 455, column: 6, scope: !5357)
!5389 = !DILocation(line: 456, column: 3, scope: !5383)
!5390 = !DILocation(line: 457, column: 6, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 457, column: 6)
!5392 = !DILocation(line: 457, column: 11, scope: !5391)
!5393 = !DILocation(line: 457, column: 6, scope: !5357)
!5394 = !DILocation(line: 457, column: 26, scope: !5391)
!5395 = !DILocation(line: 458, column: 6, scope: !5396)
!5396 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 458, column: 6)
!5397 = !DILocation(line: 458, column: 11, scope: !5396)
!5398 = !DILocation(line: 458, column: 6, scope: !5357)
!5399 = !DILocation(line: 458, column: 26, scope: !5396)
!5400 = !DILocation(line: 459, column: 6, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 459, column: 6)
!5402 = !DILocation(line: 459, column: 11, scope: !5401)
!5403 = !DILocation(line: 459, column: 6, scope: !5357)
!5404 = !DILocation(line: 459, column: 26, scope: !5401)
!5405 = !DILocation(line: 460, column: 6, scope: !5406)
!5406 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 460, column: 6)
!5407 = !DILocation(line: 460, column: 11, scope: !5406)
!5408 = !DILocation(line: 460, column: 6, scope: !5357)
!5409 = !DILocation(line: 460, column: 26, scope: !5406)
!5410 = !DILocation(line: 461, column: 6, scope: !5411)
!5411 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 461, column: 6)
!5412 = !DILocation(line: 461, column: 11, scope: !5411)
!5413 = !DILocation(line: 461, column: 6, scope: !5357)
!5414 = !DILocation(line: 461, column: 26, scope: !5411)
!5415 = !DILocation(line: 462, column: 6, scope: !5416)
!5416 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 462, column: 6)
!5417 = !DILocation(line: 462, column: 11, scope: !5416)
!5418 = !DILocation(line: 462, column: 6, scope: !5357)
!5419 = !DILocation(line: 462, column: 26, scope: !5416)
!5420 = !DILocation(line: 463, column: 6, scope: !5421)
!5421 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 463, column: 6)
!5422 = !DILocation(line: 463, column: 11, scope: !5421)
!5423 = !DILocation(line: 463, column: 6, scope: !5357)
!5424 = !DILocation(line: 463, column: 26, scope: !5421)
!5425 = !DILocation(line: 464, column: 6, scope: !5426)
!5426 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 464, column: 6)
!5427 = !DILocation(line: 464, column: 11, scope: !5426)
!5428 = !DILocation(line: 464, column: 6, scope: !5357)
!5429 = !DILocation(line: 464, column: 26, scope: !5426)
!5430 = !DILocation(line: 465, column: 6, scope: !5431)
!5431 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 465, column: 6)
!5432 = !DILocation(line: 465, column: 11, scope: !5431)
!5433 = !DILocation(line: 465, column: 6, scope: !5357)
!5434 = !DILocation(line: 465, column: 26, scope: !5431)
!5435 = !DILocation(line: 466, column: 6, scope: !5436)
!5436 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 466, column: 6)
!5437 = !DILocation(line: 466, column: 11, scope: !5436)
!5438 = !DILocation(line: 466, column: 6, scope: !5357)
!5439 = !DILocation(line: 466, column: 26, scope: !5436)
!5440 = !DILocation(line: 467, column: 6, scope: !5441)
!5441 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 467, column: 6)
!5442 = !DILocation(line: 467, column: 11, scope: !5441)
!5443 = !DILocation(line: 467, column: 6, scope: !5357)
!5444 = !DILocation(line: 467, column: 26, scope: !5441)
!5445 = !DILocation(line: 468, column: 6, scope: !5446)
!5446 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 468, column: 6)
!5447 = !DILocation(line: 468, column: 11, scope: !5446)
!5448 = !DILocation(line: 468, column: 6, scope: !5357)
!5449 = !DILocation(line: 468, column: 26, scope: !5446)
!5450 = !DILocation(line: 469, column: 6, scope: !5451)
!5451 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 469, column: 6)
!5452 = !DILocation(line: 469, column: 11, scope: !5451)
!5453 = !DILocation(line: 469, column: 6, scope: !5357)
!5454 = !DILocation(line: 469, column: 26, scope: !5451)
!5455 = !DILocation(line: 470, column: 6, scope: !5456)
!5456 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 470, column: 6)
!5457 = !DILocation(line: 470, column: 11, scope: !5456)
!5458 = !DILocation(line: 470, column: 6, scope: !5357)
!5459 = !DILocation(line: 470, column: 26, scope: !5456)
!5460 = !DILocation(line: 471, column: 6, scope: !5461)
!5461 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 471, column: 6)
!5462 = !DILocation(line: 471, column: 11, scope: !5461)
!5463 = !DILocation(line: 471, column: 6, scope: !5357)
!5464 = !DILocation(line: 471, column: 26, scope: !5461)
!5465 = !DILocation(line: 472, column: 6, scope: !5466)
!5466 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 472, column: 6)
!5467 = !DILocation(line: 472, column: 11, scope: !5466)
!5468 = !DILocation(line: 472, column: 6, scope: !5357)
!5469 = !DILocation(line: 472, column: 26, scope: !5466)
!5470 = !DILocation(line: 473, column: 6, scope: !5471)
!5471 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 473, column: 6)
!5472 = !DILocation(line: 473, column: 11, scope: !5471)
!5473 = !DILocation(line: 473, column: 6, scope: !5357)
!5474 = !DILocation(line: 473, column: 26, scope: !5471)
!5475 = !DILocation(line: 474, column: 6, scope: !5476)
!5476 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 474, column: 6)
!5477 = !DILocation(line: 474, column: 11, scope: !5476)
!5478 = !DILocation(line: 474, column: 6, scope: !5357)
!5479 = !DILocation(line: 474, column: 27, scope: !5476)
!5480 = !DILocation(line: 475, column: 6, scope: !5481)
!5481 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 475, column: 6)
!5482 = !DILocation(line: 475, column: 11, scope: !5481)
!5483 = !DILocation(line: 475, column: 6, scope: !5357)
!5484 = !DILocation(line: 475, column: 32, scope: !5481)
!5485 = !DILocation(line: 477, column: 50, scope: !5486)
!5486 = distinct !DILexicalBlock(scope: !5357, file: !136, line: 477, column: 6)
!5487 = !DILocation(line: 477, column: 6, scope: !5357)
!5488 = !DILocation(line: 478, column: 3, scope: !5486)
!5489 = !DILocation(line: 478, column: 3, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !5491, file: !136, line: 478, column: 3)
!5491 = distinct !DILexicalBlock(scope: !5486, file: !136, line: 478, column: 3)
!5492 = !{i32 -2141558391}
!5493 = !DILocation(line: 478, column: 3, scope: !5491)
!5494 = !DILocation(line: 480, column: 3, scope: !5486)
!5495 = !DILocation(line: 480, column: 3, scope: !5496)
!5496 = distinct !DILexicalBlock(scope: !5486, file: !136, line: 480, column: 3)
!5497 = !DILocation(line: 480, column: 3, scope: !5498)
!5498 = distinct !DILexicalBlock(scope: !5496, file: !136, line: 480, column: 3)
!5499 = !DILocation(line: 480, column: 3, scope: !5500)
!5500 = distinct !DILexicalBlock(scope: !5496, file: !136, line: 480, column: 3)
!5501 = !{i64 2153409108, i64 2153409137, i64 2153409183, i64 2153409241, i64 2153409295, i64 2153409349, i64 2153409404, i64 2153409435}
!5502 = !DILocation(line: 483, column: 2, scope: !5357)
!5503 = !DILocation(line: 484, column: 1, scope: !5357)
!5504 = !DISubprogram(name: "kmalloc_trace", scope: !136, file: !136, line: 525, type: !5505, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5505 = !DISubroutineType(types: !5506)
!5506 = !{!146, !5507, !1446, !299}
!5507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5508, size: 64)
!5508 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !5509, line: 325, flags: DIFlagFwdDecl)
!5509 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!5510 = distinct !DISubprogram(name: "kmalloc_type", scope: !136, file: !136, line: 401, type: !5511, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5513)
!5511 = !DISubroutineType(types: !5512)
!5512 = !{!135, !1446, !302}
!5513 = !{!5514, !5515}
!5514 = !DILocalVariable(name: "flags", arg: 1, scope: !5510, file: !136, line: 401, type: !1446)
!5515 = !DILocalVariable(name: "caller", arg: 2, scope: !5510, file: !136, line: 401, type: !302)
!5516 = !DILocation(line: 401, column: 67, scope: !5510)
!5517 = !DILocation(line: 401, column: 88, scope: !5510)
!5518 = !DILocation(line: 407, column: 6, scope: !5519)
!5519 = distinct !DILexicalBlock(scope: !5510, file: !136, line: 407, column: 6)
!5520 = !DILocation(line: 407, column: 6, scope: !5510)
!5521 = !DILocation(line: 413, column: 3, scope: !5519)
!5522 = !DILocation(line: 423, column: 38, scope: !5523)
!5523 = distinct !DILexicalBlock(scope: !5510, file: !136, line: 423, column: 6)
!5524 = !DILocation(line: 423, column: 44, scope: !5523)
!5525 = !DILocation(line: 423, column: 6, scope: !5510)
!5526 = !DILocation(line: 424, column: 3, scope: !5523)
!5527 = !DILocation(line: 426, column: 3, scope: !5528)
!5528 = distinct !DILexicalBlock(scope: !5510, file: !136, line: 425, column: 6)
!5529 = !DILocation(line: 429, column: 1, scope: !5510)
!5530 = !DISubprogram(name: "__kmalloc", scope: !136, file: !136, line: 488, type: !4346, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!5531 = !DISubprogram(name: "__compiletime_assert_245", scope: !136, file: !136, line: 478, type: !2314, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!5532 = distinct !DISubprogram(name: "variable__ffs", scope: !5533, file: !5533, line: 250, type: !5534, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !5536)
!5533 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!5534 = !DISubroutineType(types: !5535)
!5535 = !{!302, !302}
!5536 = !{!5537}
!5537 = !DILocalVariable(name: "word", arg: 1, scope: !5532, file: !5533, line: 250, type: !302)
!5538 = !DILocation(line: 250, column: 66, scope: !5532)
!5539 = !DILocation(line: 254, column: 11, scope: !5532)
!5540 = !DILocation(line: 252, column: 2, scope: !5532)
!5541 = !{i64 559644}
!5542 = !DILocation(line: 255, column: 9, scope: !5532)
!5543 = !DILocation(line: 255, column: 2, scope: !5532)
!5544 = !DISubprogram(name: "_find_next_bit", scope: !5047, file: !5047, line: 11, type: !5048, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

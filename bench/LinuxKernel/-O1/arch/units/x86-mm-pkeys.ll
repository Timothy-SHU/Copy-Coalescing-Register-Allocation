; ModuleID = 'arch/x86/mm/pkeys.c'
source_filename = "arch/x86/mm/pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall7.init..kmod_pkeys__298_184_create_init_pkru_value\22, \22a\22\09\09"
module asm "__initcall__kmod_pkeys__298_184_create_init_pkru_value7:\09\09\09"
module asm ".long\09__initstub__kmod_pkeys__298_184_create_init_pkru_value7 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon.20, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.22, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.20 = type { i32 }
%union.anon.22 = type { i64, [88 x i8] }
%struct.pcpu_hot = type { %union.anon.23 }
%union.anon.23 = type { %struct.anon.24, [16 x i8] }
%struct.anon.24 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mm_struct = type { %struct.anon.13, [0 x i64] }
%struct.anon.13 = type { %struct.anon.14, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.14 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon.15, i32, ptr }
%union.anon.15 = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.vm_area_struct = type { %union.anon.16, ptr, %struct.pgprot, %union.anon.18, i32, ptr, i8, %struct.anon.19, %struct.list_head, ptr, ptr, i64, ptr, ptr, %struct.atomic64_t, ptr, %struct.vm_userfaultfd_ctx }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { i64, i64 }
%struct.pgprot = type { i64 }
%union.anon.18 = type { i64 }
%struct.anon.19 = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.vm_userfaultfd_ctx = type {}

@init_pkru_value = hidden global i32 1431655764, align 4, !dbg !0
@__UNIQUE_ID___addressable___initstub__kmod_pkeys__298_184_create_init_pkru_value7299 = internal global ptr @__initstub__kmod_pkeys__298_184_create_init_pkru_value7, section ".discard.addressable", align 8, !dbg !4067
@__setup_str_setup_init_pkru = internal constant [11 x i8] c"init_pkru=\00", section ".init.rodata", align 1, !dbg !4095
@__setup_setup_init_pkru = internal global %struct.obs_kernel_param { ptr @__setup_str_setup_init_pkru, ptr @setup_init_pkru, i32 0 }, section ".init.setup", align 8, !dbg !4069
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [10 x i8] c"init_pkru\00", align 1, !dbg !4080
@arch_debugfs_dir = external dso_local global ptr, align 8
@fops_init_pkru = internal constant %struct.file_operations { ptr null, ptr @default_llseek, ptr @init_pkru_read_file, ptr @init_pkru_write_file, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i64 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !4085
@.str.1 = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1, !dbg !4087
@.str.2 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !4089
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_pkeys__298_184_create_init_pkru_value7299, ptr @__setup_setup_init_pkru], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__execute_only_pkey(ptr noundef %mm) #0 align 16 !dbg !4109 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %need_to_set_mm_pkey = alloca i8, align 1
  %execute_only_pkey = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4113, metadata !DIExpression()), !dbg !4117
  call void @llvm.lifetime.start.p0(i64 1, ptr %need_to_set_mm_pkey) #12, !dbg !4118
  call void @llvm.dbg.declare(metadata ptr %need_to_set_mm_pkey, metadata !4114, metadata !DIExpression()), !dbg !4119
  store i8 0, ptr %need_to_set_mm_pkey, align 1, !dbg !4119
  call void @llvm.lifetime.start.p0(i64 4, ptr %execute_only_pkey) #12, !dbg !4120
  call void @llvm.dbg.declare(metadata ptr %execute_only_pkey, metadata !4115, metadata !DIExpression()), !dbg !4121
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4122
  %1 = getelementptr inbounds %struct.mm_struct, ptr %0, i32 0, i32 0, !dbg !4123
  %context = getelementptr inbounds %struct.anon.13, ptr %1, i32 0, i32 44, !dbg !4123
  %execute_only_pkey1 = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 11, !dbg !4124
  %2 = load i16, ptr %execute_only_pkey1, align 2, !dbg !4124
  %conv = sext i16 %2 to i32, !dbg !4122
  store i32 %conv, ptr %execute_only_pkey, align 4, !dbg !4121
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4125
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4116, metadata !DIExpression()), !dbg !4126
  %3 = load i32, ptr %execute_only_pkey, align 4, !dbg !4127
  %cmp = icmp eq i32 %3, -1, !dbg !4129
  br i1 %cmp, label %if.then, label %if.end6, !dbg !4130

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %mm.addr, align 8, !dbg !4131
  %call = call i32 @mm_pkey_alloc(ptr noundef %4) #13, !dbg !4133
  store i32 %call, ptr %execute_only_pkey, align 4, !dbg !4134
  %5 = load i32, ptr %execute_only_pkey, align 4, !dbg !4135
  %cmp3 = icmp slt i32 %5, 0, !dbg !4137
  br i1 %cmp3, label %if.then5, label %if.end, !dbg !4138

if.then5:                                         ; preds = %if.then
  store i32 -1, ptr %retval, align 4, !dbg !4139
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4139

if.end:                                           ; preds = %if.then
  store i8 1, ptr %need_to_set_mm_pkey, align 1, !dbg !4140
  br label %if.end6, !dbg !4141

if.end6:                                          ; preds = %if.end, %entry
  %6 = load i8, ptr %need_to_set_mm_pkey, align 1, !dbg !4142, !range !4144, !noundef !490
  %tobool = trunc i8 %6 to i1, !dbg !4142
  br i1 %tobool, label %if.end11, label %land.lhs.true, !dbg !4145

land.lhs.true:                                    ; preds = %if.end6
  %call7 = call i32 @read_pkru() #13, !dbg !4146
  %7 = load i32, ptr %execute_only_pkey, align 4, !dbg !4147
  %conv8 = trunc i32 %7 to i16, !dbg !4147
  %call9 = call zeroext i1 @__pkru_allows_read(i32 noundef %call7, i16 noundef zeroext %conv8) #13, !dbg !4148
  br i1 %call9, label %if.end11, label %if.then10, !dbg !4149

if.then10:                                        ; preds = %land.lhs.true
  %8 = load i32, ptr %execute_only_pkey, align 4, !dbg !4150
  store i32 %8, ptr %retval, align 4, !dbg !4152
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4152

if.end11:                                         ; preds = %land.lhs.true, %if.end6
  %call12 = call ptr @get_current() #13, !dbg !4153
  %9 = load i32, ptr %execute_only_pkey, align 4, !dbg !4154
  %call13 = call i32 @arch_set_user_pkey_access(ptr noundef %call12, i32 noundef %9, i64 noundef 1) #13, !dbg !4155
  store i32 %call13, ptr %ret, align 4, !dbg !4156
  %10 = load i32, ptr %ret, align 4, !dbg !4157
  %tobool14 = icmp ne i32 %10, 0, !dbg !4157
  br i1 %tobool14, label %if.then15, label %if.end19, !dbg !4159

if.then15:                                        ; preds = %if.end11
  br label %do.body, !dbg !4160

do.body:                                          ; preds = %if.then15
  %11 = load i32, ptr %execute_only_pkey, align 4, !dbg !4162
  %shl = shl i32 1, %11, !dbg !4162
  %not = xor i32 %shl, -1, !dbg !4162
  %12 = load ptr, ptr %mm.addr, align 8, !dbg !4162
  %13 = getelementptr inbounds %struct.mm_struct, ptr %12, i32 0, i32 0, !dbg !4162
  %context16 = getelementptr inbounds %struct.anon.13, ptr %13, i32 0, i32 44, !dbg !4162
  %pkey_allocation_map = getelementptr inbounds %struct.mm_context_t, ptr %context16, i32 0, i32 10, !dbg !4162
  %14 = load i16, ptr %pkey_allocation_map, align 4, !dbg !4162
  %conv17 = zext i16 %14 to i32, !dbg !4162
  %and = and i32 %conv17, %not, !dbg !4162
  %conv18 = trunc i32 %and to i16, !dbg !4162
  store i16 %conv18, ptr %pkey_allocation_map, align 4, !dbg !4162
  br label %do.cond, !dbg !4162

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4162

do.end:                                           ; preds = %do.cond
  store i32 -1, ptr %retval, align 4, !dbg !4164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4164

if.end19:                                         ; preds = %if.end11
  %15 = load i8, ptr %need_to_set_mm_pkey, align 1, !dbg !4165, !range !4144, !noundef !490
  %tobool20 = trunc i8 %15 to i1, !dbg !4165
  br i1 %tobool20, label %if.then21, label %if.end25, !dbg !4167

if.then21:                                        ; preds = %if.end19
  %16 = load i32, ptr %execute_only_pkey, align 4, !dbg !4168
  %conv22 = trunc i32 %16 to i16, !dbg !4168
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !4169
  %18 = getelementptr inbounds %struct.mm_struct, ptr %17, i32 0, i32 0, !dbg !4170
  %context23 = getelementptr inbounds %struct.anon.13, ptr %18, i32 0, i32 44, !dbg !4170
  %execute_only_pkey24 = getelementptr inbounds %struct.mm_context_t, ptr %context23, i32 0, i32 11, !dbg !4171
  store i16 %conv22, ptr %execute_only_pkey24, align 2, !dbg !4172
  br label %if.end25, !dbg !4169

if.end25:                                         ; preds = %if.then21, %if.end19
  %19 = load i32, ptr %execute_only_pkey, align 4, !dbg !4173
  store i32 %19, ptr %retval, align 4, !dbg !4174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4174

cleanup:                                          ; preds = %if.end25, %do.end, %if.then10, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !4175
  call void @llvm.lifetime.end.p0(i64 4, ptr %execute_only_pkey) #12, !dbg !4175
  call void @llvm.lifetime.end.p0(i64 1, ptr %need_to_set_mm_pkey) #12, !dbg !4175
  %20 = load i32, ptr %retval, align 4, !dbg !4175
  ret i32 %20, !dbg !4175
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @mm_pkey_alloc(ptr noundef %mm) #3 align 16 !dbg !4176 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  %all_pkeys_mask = alloca i16, align 2
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4179, metadata !DIExpression()), !dbg !4182
  call void @llvm.lifetime.start.p0(i64 2, ptr %all_pkeys_mask) #12, !dbg !4183
  call void @llvm.dbg.declare(metadata ptr %all_pkeys_mask, metadata !4180, metadata !DIExpression()), !dbg !4184
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 516) #13, !dbg !4185
  %0 = zext i1 %call to i64, !dbg !4185
  %cond = select i1 %call, i32 16, i32 1, !dbg !4185
  %shl = shl i32 1, %cond, !dbg !4186
  %sub = sub i32 %shl, 1, !dbg !4187
  %conv = trunc i32 %sub to i16, !dbg !4188
  store i16 %conv, ptr %all_pkeys_mask, align 2, !dbg !4184
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #12, !dbg !4189
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4181, metadata !DIExpression()), !dbg !4190
  %1 = load ptr, ptr %mm.addr, align 8, !dbg !4191
  %2 = getelementptr inbounds %struct.mm_struct, ptr %1, i32 0, i32 0, !dbg !4191
  %context = getelementptr inbounds %struct.anon.13, ptr %2, i32 0, i32 44, !dbg !4191
  %pkey_allocation_map = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 10, !dbg !4191
  %3 = load i16, ptr %pkey_allocation_map, align 4, !dbg !4191
  %conv1 = zext i16 %3 to i32, !dbg !4191
  %4 = load i16, ptr %all_pkeys_mask, align 2, !dbg !4193
  %conv2 = zext i16 %4 to i32, !dbg !4193
  %cmp = icmp eq i32 %conv1, %conv2, !dbg !4194
  br i1 %cmp, label %if.then, label %if.end, !dbg !4195

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !4196
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4196

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %mm.addr, align 8, !dbg !4197
  %6 = getelementptr inbounds %struct.mm_struct, ptr %5, i32 0, i32 0, !dbg !4197
  %context4 = getelementptr inbounds %struct.anon.13, ptr %6, i32 0, i32 44, !dbg !4197
  %pkey_allocation_map5 = getelementptr inbounds %struct.mm_context_t, ptr %context4, i32 0, i32 10, !dbg !4197
  %7 = load i16, ptr %pkey_allocation_map5, align 4, !dbg !4197
  %8 = call i1 @llvm.is.constant.i16(i16 %7), !dbg !4197
  br i1 %8, label %cond.true, label %cond.false, !dbg !4197

cond.true:                                        ; preds = %if.end
  %9 = load ptr, ptr %mm.addr, align 8, !dbg !4197
  %10 = getelementptr inbounds %struct.mm_struct, ptr %9, i32 0, i32 0, !dbg !4197
  %context6 = getelementptr inbounds %struct.anon.13, ptr %10, i32 0, i32 44, !dbg !4197
  %pkey_allocation_map7 = getelementptr inbounds %struct.mm_context_t, ptr %context6, i32 0, i32 10, !dbg !4197
  %11 = load i16, ptr %pkey_allocation_map7, align 4, !dbg !4197
  %conv8 = zext i16 %11 to i32, !dbg !4197
  %not = xor i32 %conv8, -1, !dbg !4197
  %conv9 = sext i32 %not to i64, !dbg !4197
  %12 = call i64 @llvm.cttz.i64(i64 %conv9, i1 true), !dbg !4197
  %cast = trunc i64 %12 to i32, !dbg !4197
  %conv10 = sext i32 %cast to i64, !dbg !4197
  br label %cond.end, !dbg !4197

cond.false:                                       ; preds = %if.end
  %13 = load ptr, ptr %mm.addr, align 8, !dbg !4197
  %14 = getelementptr inbounds %struct.mm_struct, ptr %13, i32 0, i32 0, !dbg !4197
  %context11 = getelementptr inbounds %struct.anon.13, ptr %14, i32 0, i32 44, !dbg !4197
  %pkey_allocation_map12 = getelementptr inbounds %struct.mm_context_t, ptr %context11, i32 0, i32 10, !dbg !4197
  %15 = load i16, ptr %pkey_allocation_map12, align 4, !dbg !4197
  %conv13 = zext i16 %15 to i64, !dbg !4197
  %call14 = call i64 @variable_ffz(i64 noundef %conv13) #13, !dbg !4197
  br label %cond.end, !dbg !4197

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond15 = phi i64 [ %conv10, %cond.true ], [ %call14, %cond.false ], !dbg !4197
  %conv16 = trunc i64 %cond15 to i32, !dbg !4197
  store i32 %conv16, ptr %ret, align 4, !dbg !4198
  br label %do.body, !dbg !4199

do.body:                                          ; preds = %cond.end
  %16 = load i32, ptr %ret, align 4, !dbg !4200
  %shl17 = shl i32 1, %16, !dbg !4200
  %17 = load ptr, ptr %mm.addr, align 8, !dbg !4200
  %18 = getelementptr inbounds %struct.mm_struct, ptr %17, i32 0, i32 0, !dbg !4200
  %context18 = getelementptr inbounds %struct.anon.13, ptr %18, i32 0, i32 44, !dbg !4200
  %pkey_allocation_map19 = getelementptr inbounds %struct.mm_context_t, ptr %context18, i32 0, i32 10, !dbg !4200
  %19 = load i16, ptr %pkey_allocation_map19, align 4, !dbg !4200
  %conv20 = zext i16 %19 to i32, !dbg !4200
  %or = or i32 %conv20, %shl17, !dbg !4200
  %conv21 = trunc i32 %or to i16, !dbg !4200
  store i16 %conv21, ptr %pkey_allocation_map19, align 4, !dbg !4200
  br label %do.cond, !dbg !4200

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4200

do.end:                                           ; preds = %do.cond
  %20 = load i32, ptr %ret, align 4, !dbg !4202
  store i32 %20, ptr %retval, align 4, !dbg !4203
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4203

cleanup:                                          ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #12, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 2, ptr %all_pkeys_mask) #12, !dbg !4204
  %21 = load i32, ptr %retval, align 4, !dbg !4204
  ret i32 %21, !dbg !4204
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__pkru_allows_read(i32 noundef %pkru, i16 noundef zeroext %pkey) #3 align 16 !dbg !4205 {
entry:
  %pkru.addr = alloca i32, align 4
  %pkey.addr = alloca i16, align 2
  %pkru_pkey_bits = alloca i32, align 4
  store i32 %pkru, ptr %pkru.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pkru.addr, metadata !4210, metadata !DIExpression()), !dbg !4213
  store i16 %pkey, ptr %pkey.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %pkey.addr, metadata !4211, metadata !DIExpression()), !dbg !4214
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkru_pkey_bits) #12, !dbg !4215
  call void @llvm.dbg.declare(metadata ptr %pkru_pkey_bits, metadata !4212, metadata !DIExpression()), !dbg !4216
  %0 = load i16, ptr %pkey.addr, align 2, !dbg !4217
  %conv = zext i16 %0 to i32, !dbg !4217
  %mul = mul i32 %conv, 2, !dbg !4218
  store i32 %mul, ptr %pkru_pkey_bits, align 4, !dbg !4216
  %1 = load i32, ptr %pkru.addr, align 4, !dbg !4219
  %2 = load i32, ptr %pkru_pkey_bits, align 4, !dbg !4220
  %shl = shl i32 1, %2, !dbg !4221
  %and = and i32 %1, %shl, !dbg !4222
  %tobool = icmp ne i32 %and, 0, !dbg !4223
  %lnot = xor i1 %tobool, true, !dbg !4223
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkru_pkey_bits) #12, !dbg !4224
  ret i1 %lnot, !dbg !4225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_pkru() #3 align 16 !dbg !4226 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !4229

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !4230

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4229

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4230

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !4230

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 516, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !4230
  br i1 %call, label %if.then, label %if.end, !dbg !4230

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 516) #13, !dbg !4230
  br i1 %call5, label %if.then, label %if.end, !dbg !4229

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %call6 = call i32 @rdpkru() #13, !dbg !4232
  store i32 %call6, ptr %retval, align 4, !dbg !4233
  br label %return, !dbg !4233

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4234
  br label %return, !dbg !4234

return:                                           ; preds = %if.end, %if.then
  %0 = load i32, ptr %retval, align 4, !dbg !4235
  ret i32 %0, !dbg !4235
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4236 dso_local i32 @arch_set_user_pkey_access(ptr noundef, i32 noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_current() #5 align 16 !dbg !4239 {
entry:
  %pscr_ret__ = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4250
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !4244, metadata !DIExpression()), !dbg !4250
  br label %do.body, !dbg !4250

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4251
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4246, metadata !DIExpression()), !dbg !4251
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4251
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !4251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #12, !dbg !4250
  br label %do.cond, !dbg !4251

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !4251

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %pfo_val__) #12, !dbg !4252
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !4248, metadata !DIExpression()), !dbg !4252
  %1 = call i64 asm "movq %gs:${1:P}, $0", "=r,p,~{dirflag},~{fpsr},~{flags}"(ptr @pcpu_hot) #14, !dbg !4252, !srcloc !4253
  store i64 %1, ptr %pfo_val__, align 8, !dbg !4252
  %2 = load i64, ptr %pfo_val__, align 8, !dbg !4252
  %3 = inttoptr i64 %2 to ptr, !dbg !4252
  store ptr %3, ptr %tmp, align 8, !dbg !4252
  call void @llvm.lifetime.end.p0(i64 8, ptr %pfo_val__) #12, !dbg !4250
  %4 = load ptr, ptr %tmp, align 8, !dbg !4252
  store ptr %4, ptr %pscr_ret__, align 8, !dbg !4250
  %5 = load ptr, ptr %pscr_ret__, align 8, !dbg !4250
  store ptr %5, ptr %tmp1, align 8, !dbg !4250
  call void @llvm.lifetime.end.p0(i64 8, ptr %pscr_ret__) #12, !dbg !4254
  %6 = load ptr, ptr %tmp1, align 8, !dbg !4250
  ret ptr %6, !dbg !4255
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__arch_override_mprotect_pkey(ptr noundef %vma, i32 noundef %prot, i32 noundef %pkey) #0 align 16 !dbg !4256 {
entry:
  %retval = alloca i32, align 4
  %vma.addr = alloca ptr, align 8
  %prot.addr = alloca i32, align 4
  %pkey.addr = alloca i32, align 4
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !4260, metadata !DIExpression()), !dbg !4263
  store i32 %prot, ptr %prot.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %prot.addr, metadata !4261, metadata !DIExpression()), !dbg !4264
  store i32 %pkey, ptr %pkey.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %pkey.addr, metadata !4262, metadata !DIExpression()), !dbg !4265
  %0 = load i32, ptr %pkey.addr, align 4, !dbg !4266
  %cmp = icmp ne i32 %0, -1, !dbg !4268
  br i1 %cmp, label %if.then, label %if.end, !dbg !4269

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %pkey.addr, align 4, !dbg !4270
  store i32 %1, ptr %retval, align 4, !dbg !4271
  br label %return, !dbg !4271

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %prot.addr, align 4, !dbg !4272
  %cmp1 = icmp eq i32 %2, 4, !dbg !4274
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4275

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !4276
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %3, i32 0, i32 1, !dbg !4278
  %4 = load ptr, ptr %vm_mm, align 8, !dbg !4278
  %call = call i32 @execute_only_pkey(ptr noundef %4) #13, !dbg !4279
  store i32 %call, ptr %pkey.addr, align 4, !dbg !4280
  %5 = load i32, ptr %pkey.addr, align 4, !dbg !4281
  %cmp3 = icmp sgt i32 %5, 0, !dbg !4283
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !4284

if.then4:                                         ; preds = %if.then2
  %6 = load i32, ptr %pkey.addr, align 4, !dbg !4285
  store i32 %6, ptr %retval, align 4, !dbg !4286
  br label %return, !dbg !4286

if.end5:                                          ; preds = %if.then2
  br label %if.end9, !dbg !4287

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %vma.addr, align 8, !dbg !4288
  %call6 = call zeroext i1 @vma_is_pkey_exec_only(ptr noundef %7) #13, !dbg !4290
  br i1 %call6, label %if.then7, label %if.end8, !dbg !4291

if.then7:                                         ; preds = %if.else
  store i32 0, ptr %retval, align 4, !dbg !4292
  br label %return, !dbg !4292

if.end8:                                          ; preds = %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.end5
  %8 = load ptr, ptr %vma.addr, align 8, !dbg !4294
  %call10 = call i32 @vma_pkey(ptr noundef %8) #13, !dbg !4295
  store i32 %call10, ptr %retval, align 4, !dbg !4296
  br label %return, !dbg !4296

return:                                           ; preds = %if.end9, %if.then7, %if.then4, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !4297
  ret i32 %9, !dbg !4297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @execute_only_pkey(ptr noundef %mm) #3 align 16 !dbg !4298 {
entry:
  %retval = alloca i32, align 4
  %mm.addr = alloca ptr, align 8
  store ptr %mm, ptr %mm.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mm.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  br i1 false, label %cond.true, label %cond.false, !dbg !4302

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4303

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4302

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4303

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4303

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 516, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !4303
  br i1 %call, label %if.end, label %if.then, !dbg !4303

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 516) #13, !dbg !4303
  br i1 %call5, label %if.end, label %if.then, !dbg !4302

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4305
  br label %return, !dbg !4305

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %mm.addr, align 8, !dbg !4306
  %call6 = call i32 @__execute_only_pkey(ptr noundef %0) #13, !dbg !4307
  store i32 %call6, ptr %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4309
  ret i32 %1, !dbg !4309
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @vma_is_pkey_exec_only(ptr noundef %vma) #3 align 16 !dbg !4310 {
entry:
  %retval = alloca i1, align 1
  %vma.addr = alloca ptr, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !4314, metadata !DIExpression()), !dbg !4315
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !4316
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !4318
  %2 = load i64, ptr %1, align 8, !dbg !4318
  %and = and i64 %2, 7, !dbg !4319
  %cmp = icmp ne i64 %and, 4, !dbg !4320
  br i1 %cmp, label %if.then, label %if.end, !dbg !4321

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !4322
  br label %return, !dbg !4322

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %vma.addr, align 8, !dbg !4323
  %call = call i32 @vma_pkey(ptr noundef %3) #13, !dbg !4325
  %4 = load ptr, ptr %vma.addr, align 8, !dbg !4326
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %4, i32 0, i32 1, !dbg !4327
  %5 = load ptr, ptr %vm_mm, align 8, !dbg !4327
  %6 = getelementptr inbounds %struct.mm_struct, ptr %5, i32 0, i32 0, !dbg !4328
  %context = getelementptr inbounds %struct.anon.13, ptr %6, i32 0, i32 44, !dbg !4328
  %execute_only_pkey = getelementptr inbounds %struct.mm_context_t, ptr %context, i32 0, i32 11, !dbg !4329
  %7 = load i16, ptr %execute_only_pkey, align 2, !dbg !4329
  %conv = sext i16 %7 to i32, !dbg !4326
  %cmp1 = icmp ne i32 %call, %conv, !dbg !4330
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !4331

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !4332
  br label %return, !dbg !4332

if.end4:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !4333
  br label %return, !dbg !4333

return:                                           ; preds = %if.end4, %if.then3, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !4334
  ret i1 %8, !dbg !4334
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @vma_pkey(ptr noundef %vma) #3 align 16 !dbg !4335 {
entry:
  %vma.addr = alloca ptr, align 8
  %vma_pkey_mask = alloca i64, align 8
  store ptr %vma, ptr %vma.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %vma.addr, metadata !4337, metadata !DIExpression()), !dbg !4339
  call void @llvm.lifetime.start.p0(i64 8, ptr %vma_pkey_mask) #12, !dbg !4340
  call void @llvm.dbg.declare(metadata ptr %vma_pkey_mask, metadata !4338, metadata !DIExpression()), !dbg !4341
  store i64 64424509440, ptr %vma_pkey_mask, align 8, !dbg !4341
  %0 = load ptr, ptr %vma.addr, align 8, !dbg !4342
  %1 = getelementptr inbounds %struct.vm_area_struct, ptr %0, i32 0, i32 3, !dbg !4343
  %2 = load i64, ptr %1, align 8, !dbg !4343
  %3 = load i64, ptr %vma_pkey_mask, align 8, !dbg !4344
  %and = and i64 %2, %3, !dbg !4345
  %shr = lshr i64 %and, 32, !dbg !4346
  %conv = trunc i64 %shr to i32, !dbg !4347
  call void @llvm.lifetime.end.p0(i64 8, ptr %vma_pkey_mask) #12, !dbg !4348
  ret i32 %conv, !dbg !4349
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_pkeys__298_184_create_init_pkru_value7() #6 section ".init.text" align 16 !dbg !4350 {
entry:
  %call = call i32 @create_init_pkru_value() #15, !dbg !4351
  ret i32 %call, !dbg !4351
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @create_init_pkru_value() #6 section ".init.text" align 16 !dbg !4352 {
entry:
  %retval = alloca i32, align 4
  br i1 false, label %cond.true, label %cond.false, !dbg !4353

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !4354

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !4353

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !4354

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !4354

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 516, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !4354
  br i1 %call, label %if.end, label %if.then, !dbg !4354

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 516) #13, !dbg !4354
  br i1 %call5, label %if.end, label %if.then, !dbg !4353

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  store i32 0, ptr %retval, align 4, !dbg !4356
  br label %return, !dbg !4356

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr @arch_debugfs_dir, align 8, !dbg !4357
  %call6 = call ptr @debugfs_create_file(ptr noundef @.str, i16 noundef zeroext 384, ptr noundef %0, ptr noundef null, ptr noundef @fops_init_pkru) #13, !dbg !4358
  store i32 0, ptr %retval, align 4, !dbg !4359
  br label %return, !dbg !4359

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !4360
  ret i32 %1, !dbg !4360
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @setup_init_pkru(ptr noundef %opt) #6 section ".init.text" align 16 !dbg !4361 {
entry:
  %retval = alloca i32, align 4
  %opt.addr = alloca ptr, align 8
  %new_init_pkru = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %opt, ptr %opt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %opt.addr, metadata !4363, metadata !DIExpression()), !dbg !4365
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_init_pkru) #12, !dbg !4366
  call void @llvm.dbg.declare(metadata ptr %new_init_pkru, metadata !4364, metadata !DIExpression()), !dbg !4367
  %0 = load ptr, ptr %opt.addr, align 8, !dbg !4368
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %new_init_pkru) #13, !dbg !4370
  %tobool = icmp ne i32 %call, 0, !dbg !4370
  br i1 %tobool, label %if.then, label %if.end, !dbg !4371

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !4372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4372

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !4373

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !4374

do.body1:                                         ; preds = %do.body
  br label %do.cond, !dbg !4376

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !4376

do.end:                                           ; preds = %do.cond
  br label %do.body2, !dbg !4374

do.body2:                                         ; preds = %do.end
  %1 = load i32, ptr %new_init_pkru, align 4, !dbg !4378
  store volatile i32 %1, ptr @init_pkru_value, align 4, !dbg !4378
  br label %do.cond3, !dbg !4378

do.cond3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !4378

do.end4:                                          ; preds = %do.cond3
  br label %do.cond5, !dbg !4374

do.cond5:                                         ; preds = %do.end4
  br label %do.end6, !dbg !4374

do.end6:                                          ; preds = %do.cond5
  store i32 1, ptr %retval, align 4, !dbg !4380
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4380

cleanup:                                          ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_init_pkru) #12, !dbg !4381
  %2 = load i32, ptr %retval, align 4, !dbg !4381
  ret i32 %2, !dbg !4381
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #5 align 16 !dbg !4382 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !4387, metadata !DIExpression()), !dbg !4390
  %0 = load i16, ptr %bit.addr, align 2, !dbg !4391
  %1 = load i16, ptr %bit.addr, align 2, !dbg !4392
  %conv = zext i16 %1 to i32, !dbg !4392
  %and = and i32 %conv, 7, !dbg !4393
  %shl = shl i32 1, %and, !dbg !4394
  %2 = load i16, ptr %bit.addr, align 2, !dbg !4395
  %conv1 = zext i16 %2 to i32, !dbg !4395
  %shr = ashr i32 %conv1, 3, !dbg !4396
  %idxprom = sext i32 %shr to i64, !dbg !4397
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !4397
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #12
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !4398, !srcloc !4399

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !4398

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !4388), !dbg !4400
  store i1 true, ptr %retval, align 1, !dbg !4401
  br label %return, !dbg !4401

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !4389), !dbg !4402
  store i1 false, ptr %retval, align 1, !dbg !4403
  br label %return, !dbg !4403

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !4404
  ret i1 %3, !dbg !4404
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable_ffz(i64 noundef %word) #5 align 16 !dbg !4405 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4410, metadata !DIExpression()), !dbg !4411
  %0 = load i64, ptr %word.addr, align 8, !dbg !4412
  %not = xor i64 %0, -1, !dbg !4413
  %1 = call i64 asm "rep; bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %not) #14, !dbg !4414, !srcloc !4415
  store i64 %1, ptr %word.addr, align 8, !dbg !4414
  %2 = load i64, ptr %word.addr, align 8, !dbg !4416
  ret i64 %2, !dbg !4417
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4418 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4425, metadata !DIExpression()), !dbg !4427
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4426, metadata !DIExpression()), !dbg !4428
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4429
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4430
  br i1 %1, label %cond.true, label %cond.false, !dbg !4430

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4431
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4432
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !4433
  %conv = zext i1 %call to i32, !dbg !4433
  br label %cond.end, !dbg !4430

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4434
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4435
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !4436
  %conv2 = zext i1 %call1 to i32, !dbg !4436
  br label %cond.end, !dbg !4430

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4430
  %tobool = icmp ne i32 %cond, 0, !dbg !4430
  ret i1 %tobool, !dbg !4437
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdpkru() #3 align 16 !dbg !4438 {
entry:
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %pkru = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #12, !dbg !4444
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !4441, metadata !DIExpression()), !dbg !4445
  store i32 0, ptr %ecx, align 4, !dbg !4445
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #12, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !4442, metadata !DIExpression()), !dbg !4447
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkru) #12, !dbg !4446
  call void @llvm.dbg.declare(metadata ptr %pkru, metadata !4443, metadata !DIExpression()), !dbg !4448
  %0 = load i32, ptr %ecx, align 4, !dbg !4449
  %1 = call { i32, i32 } asm sideeffect ".byte 0x0f,0x01,0xee\0A\09", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #12, !dbg !4450, !srcloc !4451
  %asmresult = extractvalue { i32, i32 } %1, 0, !dbg !4450
  %asmresult1 = extractvalue { i32, i32 } %1, 1, !dbg !4450
  store i32 %asmresult, ptr %pkru, align 4, !dbg !4450
  store i32 %asmresult1, ptr %edx, align 4, !dbg !4450
  %2 = load i32, ptr %pkru, align 4, !dbg !4452
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkru) #12, !dbg !4453
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #12, !dbg !4453
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #12, !dbg !4453
  ret i32 %2, !dbg !4454
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4455 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4459, metadata !DIExpression()), !dbg !4461
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4460, metadata !DIExpression()), !dbg !4462
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4463
  %and = and i64 %0, 63, !dbg !4464
  %shl = shl i64 1, %and, !dbg !4465
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4466
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4467
  %shr = ashr i64 %2, 6, !dbg !4468
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4466
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4466
  %and1 = and i64 %shl, %3, !dbg !4469
  %cmp = icmp ne i64 %and1, 0, !dbg !4470
  ret i1 %cmp, !dbg !4471
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !4472 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4474, metadata !DIExpression()), !dbg !4477
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4475, metadata !DIExpression()), !dbg !4478
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #12, !dbg !4479
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4476, metadata !DIExpression()), !dbg !4480
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4481
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4482
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #12, !dbg !4483, !srcloc !4484
  %3 = icmp ult i8 %2, 2, !dbg !4483
  call void @llvm.assume(i1 %3), !dbg !4483
  store i8 %2, ptr %oldbit, align 1, !dbg !4483
  %4 = load i8, ptr %oldbit, align 1, !dbg !4485, !range !4144, !noundef !490
  %tobool = trunc i8 %4 to i1, !dbg !4485
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #12, !dbg !4486
  ret i1 %tobool, !dbg !4487
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4488 dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @init_pkru_read_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4492 {
entry:
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %buf = alloca [32 x i8], align 16
  %len = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4494, metadata !DIExpression()), !dbg !4500
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !4495, metadata !DIExpression()), !dbg !4501
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4496, metadata !DIExpression()), !dbg !4502
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4497, metadata !DIExpression()), !dbg !4503
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #12, !dbg !4504
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4498, metadata !DIExpression()), !dbg !4505
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #12, !dbg !4506
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4499, metadata !DIExpression()), !dbg !4507
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4508
  %0 = load i32, ptr @init_pkru_value, align 4, !dbg !4509
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.1, i32 noundef %0) #13, !dbg !4510
  store i32 %call, ptr %len, align 4, !dbg !4511
  %1 = load ptr, ptr %user_buf.addr, align 8, !dbg !4512
  %2 = load i64, ptr %count.addr, align 8, !dbg !4513
  %3 = load ptr, ptr %ppos.addr, align 8, !dbg !4514
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4515
  %4 = load i32, ptr %len, align 4, !dbg !4516
  %conv = zext i32 %4 to i64, !dbg !4516
  %call2 = call i64 @simple_read_from_buffer(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %arraydecay1, i64 noundef %conv) #13, !dbg !4517
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #12, !dbg !4518
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #12, !dbg !4518
  ret i64 %call2, !dbg !4519
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @init_pkru_write_file(ptr noundef %file, ptr noundef %user_buf, i64 noundef %count, ptr noundef %ppos) #0 align 16 !dbg !4520 {
entry:
  %retval = alloca i64, align 8
  %file.addr = alloca ptr, align 8
  %user_buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ppos.addr = alloca ptr, align 8
  %buf = alloca [32 x i8], align 16
  %len = alloca i64, align 8
  %new_init_pkru = alloca i32, align 4
  %__UNIQUE_ID___x295 = alloca i64, align 8
  %__UNIQUE_ID___y296 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %file, ptr %file.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %file.addr, metadata !4522, metadata !DIExpression()), !dbg !4532
  store ptr %user_buf, ptr %user_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %user_buf.addr, metadata !4523, metadata !DIExpression()), !dbg !4533
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4524, metadata !DIExpression()), !dbg !4534
  store ptr %ppos, ptr %ppos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ppos.addr, metadata !4525, metadata !DIExpression()), !dbg !4535
  call void @llvm.lifetime.start.p0(i64 32, ptr %buf) #12, !dbg !4536
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !4526, metadata !DIExpression()), !dbg !4537
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #12, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %len, metadata !4527, metadata !DIExpression()), !dbg !4539
  call void @llvm.lifetime.start.p0(i64 4, ptr %new_init_pkru) #12, !dbg !4540
  call void @llvm.dbg.declare(metadata ptr %new_init_pkru, metadata !4528, metadata !DIExpression()), !dbg !4541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x295) #12, !dbg !4542
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x295, metadata !4529, metadata !DIExpression()), !dbg !4542
  %0 = load i64, ptr %count.addr, align 8, !dbg !4542
  store i64 %0, ptr %__UNIQUE_ID___x295, align 8, !dbg !4542
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y296) #12, !dbg !4542
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y296, metadata !4531, metadata !DIExpression()), !dbg !4542
  store i64 31, ptr %__UNIQUE_ID___y296, align 8, !dbg !4542
  %1 = load i64, ptr %__UNIQUE_ID___x295, align 8, !dbg !4542
  %2 = load i64, ptr %__UNIQUE_ID___y296, align 8, !dbg !4542
  %cmp = icmp ult i64 %1, %2, !dbg !4542
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4542

cond.true:                                        ; preds = %entry
  %3 = load i64, ptr %__UNIQUE_ID___x295, align 8, !dbg !4542
  br label %cond.end, !dbg !4542

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %__UNIQUE_ID___y296, align 8, !dbg !4542
  br label %cond.end, !dbg !4542

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !4542
  store i64 %cond, ptr %tmp, align 8, !dbg !4542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y296) #12, !dbg !4543
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x295) #12, !dbg !4543
  %5 = load i64, ptr %tmp, align 8, !dbg !4542
  store i64 %5, ptr %len, align 8, !dbg !4544
  %arraydecay = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4545
  %6 = load ptr, ptr %user_buf.addr, align 8, !dbg !4547
  %7 = load i64, ptr %len, align 8, !dbg !4548
  %call = call i64 @copy_from_user(ptr noundef %arraydecay, ptr noundef %6, i64 noundef %7) #13, !dbg !4549
  %tobool = icmp ne i64 %call, 0, !dbg !4549
  br i1 %tobool, label %if.then, label %if.end, !dbg !4550

if.then:                                          ; preds = %cond.end
  store i64 -14, ptr %retval, align 8, !dbg !4551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4551

if.end:                                           ; preds = %cond.end
  %8 = load i64, ptr %len, align 8, !dbg !4552
  %arrayidx = getelementptr [32 x i8], ptr %buf, i64 0, i64 %8, !dbg !4553
  store i8 0, ptr %arrayidx, align 1, !dbg !4554
  %arraydecay1 = getelementptr inbounds [32 x i8], ptr %buf, i64 0, i64 0, !dbg !4555
  %call2 = call i32 @kstrtouint(ptr noundef %arraydecay1, i32 noundef 0, ptr noundef %new_init_pkru) #13, !dbg !4557
  %tobool3 = icmp ne i32 %call2, 0, !dbg !4557
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4558

if.then4:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !4559
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4559

if.end5:                                          ; preds = %if.end
  %9 = load i32, ptr %new_init_pkru, align 4, !dbg !4560
  %and = and i32 %9, 3, !dbg !4562
  %tobool6 = icmp ne i32 %and, 0, !dbg !4562
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !4563

if.then7:                                         ; preds = %if.end5
  store i64 -22, ptr %retval, align 8, !dbg !4564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4564

if.end8:                                          ; preds = %if.end5
  br label %do.body, !dbg !4565

do.body:                                          ; preds = %if.end8
  br label %do.body9, !dbg !4566

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !4568

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !4568

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !4566

do.body10:                                        ; preds = %do.end
  %10 = load i32, ptr %new_init_pkru, align 4, !dbg !4570
  store volatile i32 %10, ptr @init_pkru_value, align 4, !dbg !4570
  br label %do.cond11, !dbg !4570

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !4570

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !4566

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !4566

do.end14:                                         ; preds = %do.cond13
  %11 = load i64, ptr %count.addr, align 8, !dbg !4572
  store i64 %11, ptr %retval, align 8, !dbg !4573
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4573

cleanup:                                          ; preds = %do.end14, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %new_init_pkru) #12, !dbg !4574
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #12, !dbg !4574
  call void @llvm.lifetime.end.p0(i64 32, ptr %buf) #12, !dbg !4574
  %12 = load i64, ptr %retval, align 8, !dbg !4574
  ret i64 %12, !dbg !4574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4575 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4579 dso_local i64 @simple_read_from_buffer(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_user(ptr noundef %to, ptr noundef %from, i64 noundef %n) #5 align 16 !dbg !4582 {
entry:
  %to.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !4587, metadata !DIExpression()), !dbg !4590
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !4588, metadata !DIExpression()), !dbg !4591
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4589, metadata !DIExpression()), !dbg !4592
  %0 = load ptr, ptr %to.addr, align 8, !dbg !4593
  %1 = load i64, ptr %n.addr, align 8, !dbg !4595
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #13, !dbg !4596
  br i1 %call, label %if.then, label %if.end, !dbg !4597

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %to.addr, align 8, !dbg !4598
  %3 = load ptr, ptr %from.addr, align 8, !dbg !4599
  %4 = load i64, ptr %n.addr, align 8, !dbg !4600
  %call1 = call i64 @_copy_from_user(ptr noundef %2, ptr noundef %3, i64 noundef %4) #13, !dbg !4601
  store i64 %call1, ptr %n.addr, align 8, !dbg !4602
  br label %if.end, !dbg !4603

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !4604
  ret i64 %5, !dbg !4605
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4606 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #5 align 16 !dbg !4610 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4614, metadata !DIExpression()), !dbg !4624
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !4615, metadata !DIExpression()), !dbg !4625
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !4616, metadata !DIExpression()), !dbg !4626
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #12, !dbg !4627
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !4617, metadata !DIExpression()), !dbg !4628
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4629
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !4630
  %conv = trunc i64 %1 to i32, !dbg !4630
  store i32 %conv, ptr %sz, align 4, !dbg !4628
  %2 = load i32, ptr %sz, align 4, !dbg !4631
  %cmp = icmp sge i32 %2, 0, !dbg !4631
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !4631

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !4631
  %conv2 = sext i32 %3 to i64, !dbg !4631
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !4631
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !4631
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !4633
  %lnot = xor i1 %5, true, !dbg !4631
  %lnot5 = xor i1 %lnot, true, !dbg !4631
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !4631
  %conv6 = sext i32 %lnot.ext to i64, !dbg !4631
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !4631
  %tobool = icmp ne i64 %expval, 0, !dbg !4631
  br i1 %tobool, label %if.then, label %if.end12, !dbg !4634

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !4635
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !4638
  br i1 %7, label %if.else, label %if.then7, !dbg !4639

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !4640
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !4641
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #13, !dbg !4642
  br label %if.end11, !dbg !4642

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !4643, !range !4144, !noundef !490
  %tobool8 = trunc i8 %10 to i1, !dbg !4643
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !4645

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #13, !dbg !4646, !srcloc !4647
  br label %if.end, !dbg !4646

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #13, !dbg !4648, !srcloc !4649
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !4650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4650

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4651
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !4618, metadata !DIExpression()), !dbg !4651
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !4651
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !4651
  %lnot15 = xor i1 %cmp13, true, !dbg !4651
  %lnot17 = xor i1 %lnot15, true, !dbg !4651
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !4651
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !4651
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !4652
  %tobool19 = icmp ne i32 %12, 0, !dbg !4652
  %lnot20 = xor i1 %tobool19, true, !dbg !4652
  %lnot22 = xor i1 %lnot20, true, !dbg !4652
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !4652
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !4652
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !4652
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !4652
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !4651

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !4652

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #12, !dbg !4653
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !4621, metadata !DIExpression()), !dbg !4653
  store i32 2307, ptr %__flags, align 4, !dbg !4653
  br label %do.body28, !dbg !4653

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !4654

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !4654

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !4653

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !4656
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 249, i32 %13, i64 12) #12, !dbg !4656, !srcloc !4658
  br label %do.cond30, !dbg !4656

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !4656

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !4653

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !4659

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !4659

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #12, !dbg !4652
  br label %do.cond35, !dbg !4653

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !4653

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !4653

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !4651
  %tobool38 = icmp ne i32 %14, 0, !dbg !4651
  %lnot39 = xor i1 %tobool38, true, !dbg !4651
  %lnot41 = xor i1 %lnot39, true, !dbg !4651
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !4651
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !4651
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !4651
  store i64 %expval44, ptr %tmp, align 8, !dbg !4652
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #12, !dbg !4661
  %15 = load i64, ptr %tmp, align 8, !dbg !4651
  %tobool45 = icmp ne i64 %15, 0, !dbg !4661
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !4662

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !4663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4663

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !4664
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !4665
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !4666, !range !4144, !noundef !490
  %tobool48 = trunc i8 %18 to i1, !dbg !4666
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #13, !dbg !4667
  store i1 true, ptr %retval, align 1, !dbg !4668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4668

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #12, !dbg !4669
  %19 = load i1, ptr %retval, align 1, !dbg !4669
  ret i1 %19, !dbg !4669
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4670 dso_local i64 @_copy_from_user(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #3 align 16 !dbg !4671 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4675, metadata !DIExpression()), !dbg !4677
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !4676, metadata !DIExpression()), !dbg !4678
  %0 = load i32, ptr %size.addr, align 4, !dbg !4679
  %1 = load i64, ptr %count.addr, align 8, !dbg !4681
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #13, !dbg !4682
  ret void, !dbg !4683
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4684 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4685 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #3 align 16 !dbg !4686 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4690, metadata !DIExpression()), !dbg !4693
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4691, metadata !DIExpression()), !dbg !4694
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !4692, metadata !DIExpression()), !dbg !4695
  ret void, !dbg !4696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4697 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { noredzone }
attributes #14 = { nounwind memory(none) }
attributes #15 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4100, !4101, !4102, !4103, !4104, !4105, !4106, !4107}
!llvm.ident = !{!4108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "init_pkru_value", scope: !2, file: !3, line: 121, type: !112, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.pkeys.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/pkeys\22 -D KBUILD_BASENAME=\22pkeys\22 -D KBUILD_MODNAME=\22pkeys\22 -D __KBUILD_MODNAME=kmod_pkeys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/pkeys.ll arch/x86/mm/pkeys.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !92, globals: !4066, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/pkeys.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "143a84f84f7d757ad6c24435827b0a0a")
!4 = !{!5, !14, !21, !29, !45, !52, !58, !63, !69, !74, !80, !87}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pid_type", file: !6, line: 9, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6c8c3c4044af03e8c0068621cd58605")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PIDTYPE_PID", value: 0)
!10 = !DIEnumerator(name: "PIDTYPE_TGID", value: 1)
!11 = !DIEnumerator(name: "PIDTYPE_PGID", value: 2)
!12 = !DIEnumerator(name: "PIDTYPE_SID", value: 3)
!13 = !DIEnumerator(name: "PIDTYPE_MAX", value: 4)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !15, line: 312, baseType: !7, size: 32, elements: !16)
!15 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!16 = !{!17, !18, !19, !20}
!17 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!18 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!19 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!20 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "memory_type", file: !22, line: 68, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/memremap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9fdc8a878c73b8b3e2b17b20cbab6564")
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "MEMORY_DEVICE_PRIVATE", value: 1)
!25 = !DIEnumerator(name: "MEMORY_DEVICE_COHERENT", value: 2)
!26 = !DIEnumerator(name: "MEMORY_DEVICE_FS_DAX", value: 3)
!27 = !DIEnumerator(name: "MEMORY_DEVICE_GENERIC", value: 4)
!28 = !DIEnumerator(name: "MEMORY_DEVICE_PCI_P2PDMA", value: 5)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "fault_flag", file: !30, line: 1325, baseType: !7, size: 32, elements: !31)
!30 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DIEnumerator(name: "FAULT_FLAG_WRITE", value: 1)
!33 = !DIEnumerator(name: "FAULT_FLAG_MKWRITE", value: 2)
!34 = !DIEnumerator(name: "FAULT_FLAG_ALLOW_RETRY", value: 4)
!35 = !DIEnumerator(name: "FAULT_FLAG_RETRY_NOWAIT", value: 8)
!36 = !DIEnumerator(name: "FAULT_FLAG_KILLABLE", value: 16)
!37 = !DIEnumerator(name: "FAULT_FLAG_TRIED", value: 32)
!38 = !DIEnumerator(name: "FAULT_FLAG_USER", value: 64)
!39 = !DIEnumerator(name: "FAULT_FLAG_REMOTE", value: 128)
!40 = !DIEnumerator(name: "FAULT_FLAG_INSTRUCTION", value: 256)
!41 = !DIEnumerator(name: "FAULT_FLAG_INTERRUPTIBLE", value: 512)
!42 = !DIEnumerator(name: "FAULT_FLAG_UNSHARE", value: 1024)
!43 = !DIEnumerator(name: "FAULT_FLAG_ORIG_PTE_VALID", value: 2048)
!44 = !DIEnumerator(name: "FAULT_FLAG_VMA_LOCK", value: 4096)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !46, line: 15, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!47 = !{!48, !49, !50, !51}
!48 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!49 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!50 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!51 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!52 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !53, line: 26, baseType: !7, size: 32, elements: !54)
!53 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!54 = !{!55, !56, !57}
!55 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!56 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!57 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!58 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !59, line: 2052, baseType: !7, size: 32, elements: !60)
!59 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!60 = !{!61, !62}
!61 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!62 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !64, line: 54, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!65 = !{!66, !67, !68}
!66 = !DIEnumerator(name: "USRQUOTA", value: 0)
!67 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!68 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !70, line: 65, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!71 = !{!72, !73}
!72 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!73 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !75, line: 16, baseType: !7, size: 32, elements: !76)
!75 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!76 = !{!77, !78, !79}
!77 = !DIEnumerator(name: "TT_NONE", value: 0)
!78 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!79 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!80 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !81, line: 51, baseType: !7, size: 32, elements: !82)
!81 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!82 = !{!83, !84, !85, !86}
!83 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!84 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!85 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!86 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!87 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !88, line: 10, baseType: !7, size: 32, elements: !89)
!88 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!89 = !{!90, !91}
!90 = !DIEnumerator(name: "false", value: 0)
!91 = !DIEnumerator(name: "true", value: 1)
!92 = !{!93, !94, !95, !98, !99, !100, !101, !4064}
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !103, line: 746, size: 58368, elements: !104)
!103 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!104 = !{!105, !117, !118, !119, !130, !131, !132, !133, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !225, !236, !363, !367, !370, !401, !402, !403, !404, !415, !417, !418, !419, !420, !421, !422, !433, !434, !437, !438, !439, !440, !441, !442, !443, !444, !451, !452, !459, !460, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3211, !3212, !3269, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3281, !3282, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3317, !3323, !3324, !3325, !3326, !3327, !3329, !3332, !3339, !3344, !3347, !3350, !3353, !3356, !3494, !3521, !3522, !3523, !3524, !3525, !3526, !3527, !3528, !3529, !3532, !3533, !3534, !3543, !3551, !3552, !3553, !3554, !3555, !3560, !3561, !3562, !3565, !3566, !3569, !3572, !3575, !3583, !3586, !3587, !3673, !3674, !3675, !3676, !3677, !3683, !3684, !3685, !3686, !3689, !3690, !3693, !3696, !3697, !3700, !3701, !3702, !3705, !3706, !3707, !3708, !3709, !3710, !3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3742, !3743, !3749, !3752, !3753, !3754, !3755, !3756, !3757, !3758, !3761, !3833, !3835, !3836, !3837, !3838, !3839, !3840, !3843, !3844, !3845, !3846, !3847, !3848, !3849, !3850, !3851, !3852, !3853, !3857, !3858, !3859}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !102, file: !103, line: 752, baseType: !106, size: 192)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !107, line: 56, size: 192, elements: !108)
!107 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!108 = !{!109, !110, !111, !116}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !107, line: 57, baseType: !94, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !106, file: !107, line: 58, baseType: !94, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !106, file: !107, line: 59, baseType: !112, size: 32, offset: 128)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !113, line: 21, baseType: !114)
!113 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !115, line: 27, baseType: !7)
!115 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !106, file: !107, line: 61, baseType: !112, size: 32, offset: 160)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !102, file: !103, line: 754, baseType: !7, size: 32, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !102, file: !103, line: 767, baseType: !93, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !102, file: !103, line: 768, baseType: !120, size: 32, offset: 320)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !121, line: 113, baseType: !122)
!121 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !121, line: 111, size: 32, elements: !123)
!123 = !{!124}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !122, file: !121, line: 112, baseType: !125, size: 32)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 174, baseType: !127)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 172, size: 32, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !127, file: !126, line: 173, baseType: !98, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !102, file: !103, line: 770, baseType: !7, size: 32, offset: 352)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !102, file: !103, line: 771, baseType: !7, size: 32, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !102, file: !103, line: 774, baseType: !98, size: 32, offset: 416)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !102, file: !103, line: 775, baseType: !134, size: 128, offset: 448)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !135, line: 58, size: 128, elements: !136)
!135 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!136 = !{!137, !143, !148, !152}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !134, file: !135, line: 59, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !139, line: 60, size: 64, elements: !140)
!139 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !138, file: !139, line: 61, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !135, line: 60, baseType: !144, size: 32, offset: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !135, line: 60, size: 32, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !144, file: !135, line: 61, baseType: !7, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !144, file: !135, line: 62, baseType: !125, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !134, file: !135, line: 65, baseType: !149, size: 16, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !113, line: 19, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !115, line: 24, baseType: !151)
!151 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !134, file: !135, line: 65, baseType: !149, size: 16, offset: 112)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !102, file: !103, line: 776, baseType: !7, size: 32, offset: 576)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !102, file: !103, line: 777, baseType: !94, size: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !102, file: !103, line: 778, baseType: !101, size: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !102, file: !103, line: 787, baseType: !98, size: 32, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !102, file: !103, line: 788, baseType: !98, size: 32, offset: 800)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !102, file: !103, line: 790, baseType: !98, size: 32, offset: 832)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !102, file: !103, line: 792, baseType: !98, size: 32, offset: 864)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !102, file: !103, line: 793, baseType: !98, size: 32, offset: 896)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !102, file: !103, line: 794, baseType: !98, size: 32, offset: 928)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !102, file: !103, line: 795, baseType: !7, size: 32, offset: 960)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !102, file: !103, line: 797, baseType: !164, size: 2048, offset: 1024)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !103, line: 551, size: 2048, elements: !165)
!165 = !{!166, !171, !179, !183, !184, !190, !191, !192, !193, !194, !195, !199, !200, !201, !202, !204, !207, !208, !209}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !164, file: !103, line: 553, baseType: !167, size: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !103, line: 411, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !167, file: !103, line: 412, baseType: !94, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !167, file: !103, line: 413, baseType: !112, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !164, file: !103, line: 554, baseType: !172, size: 192, align: 64, offset: 128)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !173, line: 5, size: 192, align: 64, elements: !174)
!173 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!174 = !{!175, !176, !178}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !172, file: !173, line: 6, baseType: !94, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !172, file: !173, line: 7, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !172, file: !173, line: 8, baseType: !177, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !164, file: !103, line: 555, baseType: !180, size: 64, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !113, line: 23, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !115, line: 31, baseType: !182)
!182 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !164, file: !103, line: 556, baseType: !180, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !164, file: !103, line: 558, baseType: !185, size: 128, offset: 448)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 190, size: 128, elements: !186)
!186 = !{!187, !189}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !185, file: !126, line: 191, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !185, file: !126, line: 191, baseType: !188, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !164, file: !103, line: 559, baseType: !7, size: 32, offset: 576)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !164, file: !103, line: 561, baseType: !180, size: 64, offset: 640)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !164, file: !103, line: 562, baseType: !180, size: 64, offset: 704)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !164, file: !103, line: 563, baseType: !180, size: 64, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !164, file: !103, line: 564, baseType: !180, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !164, file: !103, line: 565, baseType: !196, size: 64, offset: 896)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !113, line: 22, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !115, line: 30, baseType: !198)
!198 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !164, file: !103, line: 566, baseType: !180, size: 64, offset: 960)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !164, file: !103, line: 568, baseType: !180, size: 64, offset: 1024)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !164, file: !103, line: 571, baseType: !98, size: 32, offset: 1088)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !164, file: !103, line: 572, baseType: !203, size: 64, offset: 1152)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !164, file: !103, line: 574, baseType: !205, size: 64, offset: 1216)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !103, line: 49, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !164, file: !103, line: 576, baseType: !205, size: 64, offset: 1280)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !164, file: !103, line: 578, baseType: !94, size: 64, offset: 1344)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !164, file: !103, line: 588, baseType: !210, size: 512, align: 512, offset: 1536)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !103, line: 497, size: 512, align: 512, elements: !211)
!211 = !{!212, !213, !214, !215, !216, !217, !218, !219, !220}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !210, file: !103, line: 498, baseType: !180, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !210, file: !103, line: 499, baseType: !180, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !210, file: !103, line: 500, baseType: !180, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !210, file: !103, line: 501, baseType: !112, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !210, file: !103, line: 502, baseType: !112, size: 32, offset: 224)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !210, file: !103, line: 503, baseType: !94, size: 64, offset: 256)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !210, file: !103, line: 504, baseType: !94, size: 64, offset: 320)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !210, file: !103, line: 505, baseType: !94, size: 64, offset: 384)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !210, file: !103, line: 506, baseType: !221, size: 64, align: 64, offset: 448)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !103, line: 445, size: 64, align: 64, elements: !222)
!222 = !{!223, !224}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !221, file: !103, line: 446, baseType: !7, size: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !221, file: !103, line: 447, baseType: !7, size: 32, offset: 32)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !102, file: !103, line: 798, baseType: !226, size: 384, offset: 3072)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !103, line: 592, size: 384, elements: !227)
!227 = !{!228, !229, !230, !231, !232, !233, !234}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !226, file: !103, line: 593, baseType: !185, size: 128)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !226, file: !103, line: 594, baseType: !94, size: 64, offset: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !226, file: !103, line: 595, baseType: !94, size: 64, offset: 192)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !226, file: !103, line: 596, baseType: !7, size: 32, offset: 256)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !226, file: !103, line: 597, baseType: !151, size: 16, offset: 288)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !226, file: !103, line: 598, baseType: !151, size: 16, offset: 304)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !226, file: !103, line: 600, baseType: !235, size: 64, offset: 320)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !102, file: !103, line: 799, baseType: !237, size: 1792, offset: 3456)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !103, line: 610, size: 1792, elements: !238)
!238 = !{!239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !360, !361}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !237, file: !103, line: 611, baseType: !172, size: 192, align: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !237, file: !103, line: 618, baseType: !180, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !237, file: !103, line: 619, baseType: !180, size: 64, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !237, file: !103, line: 620, baseType: !180, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !237, file: !103, line: 621, baseType: !180, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !237, file: !103, line: 622, baseType: !180, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !237, file: !103, line: 629, baseType: !196, size: 64, offset: 512)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !237, file: !103, line: 630, baseType: !180, size: 64, offset: 576)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !237, file: !103, line: 631, baseType: !7, size: 32, offset: 640)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !237, file: !103, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !237, file: !103, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !237, file: !103, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !237, file: !103, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !237, file: !103, line: 662, baseType: !253, size: 512, offset: 704)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !70, line: 118, size: 512, elements: !254)
!254 = !{!255, !263, !264, !269, !356, !357, !358, !359}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !253, file: !70, line: 119, baseType: !256, size: 256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !257, line: 9, size: 256, elements: !258)
!257 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !256, file: !257, line: 10, baseType: !172, size: 192, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !256, file: !257, line: 11, baseType: !261, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !262, line: 29, baseType: !196)
!262 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !253, file: !70, line: 120, baseType: !261, size: 64, offset: 256)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !253, file: !70, line: 121, baseType: !265, size: 64, offset: 320)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!69, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !253, file: !70, line: 122, baseType: !270, size: 64, offset: 384)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !70, line: 159, size: 512, align: 512, elements: !272)
!272 = !{!273, !324, !325, !329, !339, !340, !351, !355}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !271, file: !70, line: 160, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !70, line: 215, size: 4608, align: 512, elements: !276)
!276 = !{!277, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !275, file: !70, line: 216, baseType: !278, size: 32)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !279, line: 23, baseType: !280)
!279 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !279, line: 14, size: 32, elements: !281)
!281 = !{!282}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !280, file: !279, line: 15, baseType: !283, size: 32)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !284, line: 44, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !284, line: 14, size: 32, elements: !286)
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, scope: !285, file: !284, line: 15, baseType: !288, size: 32)
!288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !285, file: !284, line: 15, size: 32, elements: !289)
!289 = !{!290, !291, !299}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !288, file: !284, line: 16, baseType: !125, size: 32)
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 24, baseType: !292, size: 16)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 24, size: 16, elements: !293)
!293 = !{!294, !298}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !292, file: !284, line: 25, baseType: !295, size: 8)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !113, line: 17, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !115, line: 21, baseType: !297)
!297 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !292, file: !284, line: 26, baseType: !295, size: 8, offset: 8)
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !288, file: !284, line: 28, baseType: !300, size: 32)
!300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !288, file: !284, line: 28, size: 32, elements: !301)
!301 = !{!302, !303}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !300, file: !284, line: 29, baseType: !149, size: 16)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !300, file: !284, line: 30, baseType: !149, size: 16, offset: 16)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !275, file: !70, line: 217, baseType: !7, size: 32, offset: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !275, file: !70, line: 218, baseType: !7, size: 32, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !275, file: !70, line: 219, baseType: !7, size: 32, offset: 96)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !275, file: !70, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !275, file: !70, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !275, file: !70, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !275, file: !70, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !275, file: !70, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !275, file: !70, line: 226, baseType: !7, size: 32, offset: 160)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !275, file: !70, line: 227, baseType: !151, size: 16, offset: 192)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !275, file: !70, line: 228, baseType: !151, size: 16, offset: 208)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !275, file: !70, line: 229, baseType: !7, size: 32, offset: 224)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !275, file: !70, line: 235, baseType: !261, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !275, file: !70, line: 236, baseType: !268, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !275, file: !70, line: 237, baseType: !261, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !275, file: !70, line: 238, baseType: !268, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !275, file: !70, line: 239, baseType: !321, size: 4096, align: 512, offset: 512)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !271, size: 4096, align: 512, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 8)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !271, file: !70, line: 161, baseType: !7, size: 32, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !271, file: !70, line: 162, baseType: !326, size: 32, offset: 96)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 32, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !328, line: 96, baseType: !98)
!328 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!329 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !271, file: !70, line: 163, baseType: !330, size: 32, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !331, line: 274, baseType: !332)
!331 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !331, line: 274, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !332, file: !331, line: 274, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !331, line: 69, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !331, line: 64, size: 32, elements: !337)
!337 = !{!338}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !336, file: !331, line: 65, baseType: !7, size: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !271, file: !70, line: 164, baseType: !268, size: 64, offset: 192)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !271, file: !70, line: 165, baseType: !341, size: 128, offset: 256)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !257, line: 14, size: 128, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !341, file: !257, line: 15, baseType: !344, size: 128)
!344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !173, line: 26, size: 128, elements: !345)
!345 = !{!346, !350}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !344, file: !173, line: 27, baseType: !347, size: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !173, line: 12, size: 64, elements: !348)
!348 = !{!349}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !347, file: !173, line: 13, baseType: !177, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !344, file: !173, line: 28, baseType: !177, size: 64, offset: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !271, file: !70, line: 166, baseType: !352, size: 64, offset: 384)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!261}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !271, file: !70, line: 167, baseType: !261, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !253, file: !70, line: 123, baseType: !295, size: 8, offset: 448)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !253, file: !70, line: 124, baseType: !295, size: 8, offset: 456)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !253, file: !70, line: 125, baseType: !295, size: 8, offset: 464)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !253, file: !70, line: 126, baseType: !295, size: 8, offset: 472)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !237, file: !103, line: 671, baseType: !253, size: 512, offset: 1216)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !237, file: !103, line: 679, baseType: !362, size: 64, offset: 1728)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !102, file: !103, line: 800, baseType: !364, size: 64, offset: 5248)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !103, line: 800, flags: DIFlagFwdDecl)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !102, file: !103, line: 809, baseType: !368, size: 64, offset: 5312)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !103, line: 70, flags: DIFlagFwdDecl)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !102, file: !103, line: 825, baseType: !371, size: 2048, align: 512, offset: 5632)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !103, line: 509, size: 2048, align: 512, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !371, file: !103, line: 511, baseType: !180, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !371, file: !103, line: 512, baseType: !180, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !371, file: !103, line: 513, baseType: !180, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !371, file: !103, line: 514, baseType: !180, size: 64, offset: 192)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !371, file: !103, line: 515, baseType: !180, size: 64, offset: 256)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !371, file: !103, line: 516, baseType: !180, size: 64, offset: 320)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !371, file: !103, line: 518, baseType: !180, size: 64, offset: 384)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !371, file: !103, line: 519, baseType: !180, size: 64, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !371, file: !103, line: 520, baseType: !196, size: 64, offset: 512)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !371, file: !103, line: 522, baseType: !180, size: 64, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !371, file: !103, line: 523, baseType: !180, size: 64, offset: 640)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !371, file: !103, line: 524, baseType: !196, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !371, file: !103, line: 526, baseType: !196, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !371, file: !103, line: 527, baseType: !180, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !371, file: !103, line: 529, baseType: !180, size: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !371, file: !103, line: 530, baseType: !180, size: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !371, file: !103, line: 531, baseType: !180, size: 64, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !371, file: !103, line: 532, baseType: !180, size: 64, offset: 1088)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !371, file: !103, line: 533, baseType: !180, size: 64, offset: 1152)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !371, file: !103, line: 535, baseType: !180, size: 64, offset: 1216)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !371, file: !103, line: 536, baseType: !180, size: 64, offset: 1280)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !371, file: !103, line: 537, baseType: !180, size: 64, offset: 1344)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !371, file: !103, line: 538, baseType: !180, size: 64, offset: 1408)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !371, file: !103, line: 539, baseType: !180, size: 64, offset: 1472)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !371, file: !103, line: 540, baseType: !180, size: 64, offset: 1536)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !371, file: !103, line: 541, baseType: !180, size: 64, offset: 1600)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !371, file: !103, line: 542, baseType: !180, size: 64, offset: 1664)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !371, file: !103, line: 543, baseType: !180, size: 64, offset: 1728)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !102, file: !103, line: 833, baseType: !7, size: 32, offset: 7680)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !102, file: !103, line: 836, baseType: !7, size: 32, offset: 7712)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !102, file: !103, line: 837, baseType: !98, size: 32, offset: 7744)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !102, file: !103, line: 838, baseType: !405, size: 64, offset: 7808)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !407)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !408, line: 19, baseType: !409)
!408 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !408, line: 19, size: 64, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !409, file: !408, line: 19, baseType: !412, size: 64)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 64, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 1)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !102, file: !103, line: 839, baseType: !416, size: 64, offset: 7872)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !102, file: !103, line: 840, baseType: !407, size: 64, offset: 7936)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !102, file: !103, line: 841, baseType: !93, size: 64, offset: 8000)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !102, file: !103, line: 843, baseType: !151, size: 16, offset: 8064)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !102, file: !103, line: 845, baseType: !151, size: 16, offset: 8080)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !102, file: !103, line: 848, baseType: !98, size: 32, offset: 8096)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !102, file: !103, line: 849, baseType: !423, size: 32, offset: 8128)
!423 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !103, line: 718, size: 32, elements: !424)
!424 = !{!425, !432}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !423, file: !103, line: 724, baseType: !426, size: 32)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !103, line: 719, size: 32, elements: !427)
!427 = !{!428, !429, !430, !431}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !426, file: !103, line: 720, baseType: !295, size: 8)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !426, file: !103, line: 721, baseType: !295, size: 8, offset: 8)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !426, file: !103, line: 722, baseType: !295, size: 8, offset: 16)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !426, file: !103, line: 723, baseType: !295, size: 8, offset: 24)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !423, file: !103, line: 725, baseType: !112, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !102, file: !103, line: 850, baseType: !185, size: 128, offset: 8192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !102, file: !103, line: 851, baseType: !435, size: 64, offset: 8320)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !103, line: 60, flags: DIFlagFwdDecl)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !102, file: !103, line: 855, baseType: !94, size: 64, offset: 8384)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !102, file: !103, line: 856, baseType: !295, size: 8, offset: 8448)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !102, file: !103, line: 857, baseType: !295, size: 8, offset: 8456)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !102, file: !103, line: 858, baseType: !98, size: 32, offset: 8480)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !102, file: !103, line: 859, baseType: !185, size: 128, offset: 8512)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !102, file: !103, line: 860, baseType: !98, size: 32, offset: 8640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !102, file: !103, line: 861, baseType: !185, size: 128, offset: 8704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !102, file: !103, line: 873, baseType: !445, size: 256, offset: 8832)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !103, line: 376, size: 256, elements: !446)
!446 = !{!447, !448, !449, !450}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !445, file: !103, line: 381, baseType: !94, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !445, file: !103, line: 384, baseType: !182, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !445, file: !103, line: 389, baseType: !182, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !445, file: !103, line: 392, baseType: !182, size: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !102, file: !103, line: 875, baseType: !185, size: 128, offset: 9088)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !102, file: !103, line: 877, baseType: !453, size: 320, offset: 9216)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !454, line: 86, size: 320, elements: !455)
!454 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!455 = !{!456, !457, !458}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !453, file: !454, line: 87, baseType: !98, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !453, file: !454, line: 88, baseType: !185, size: 128, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !453, file: !454, line: 89, baseType: !185, size: 128, offset: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !102, file: !103, line: 878, baseType: !172, size: 192, align: 64, offset: 9536)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !102, file: !103, line: 881, baseType: !461, size: 64, offset: 9728)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !30, line: 733, size: 10240, elements: !463)
!463 = !{!464, !3188}
!464 = !DIDerivedType(tag: DW_TAG_member, scope: !462, file: !30, line: 734, baseType: !465, size: 10240)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !462, file: !30, line: 734, size: 10240, elements: !466)
!466 = !{!467, !471, !493, !3045, !3046, !3047, !3048, !3049, !3050, !3057, !3058, !3059, !3065, !3066, !3067, !3068, !3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3081, !3082, !3083, !3084, !3085, !3086, !3087, !3088, !3089, !3090, !3091, !3092, !3093, !3094, !3098, !3100, !3103, !3168, !3169, !3170, !3173, !3174, !3175, !3178, !3179, !3180, !3186, !3187}
!467 = !DIDerivedType(tag: DW_TAG_member, scope: !465, file: !30, line: 739, baseType: !468, size: 512, align: 512)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !465, file: !30, line: 739, size: 512, align: 512, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !468, file: !30, line: 747, baseType: !125, size: 32)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !465, file: !30, line: 750, baseType: !472, size: 128, offset: 512)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !473, line: 218, size: 128, elements: !474)
!473 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!474 = !{!475, !491, !492}
!475 = !DIDerivedType(tag: DW_TAG_member, scope: !472, file: !473, line: 219, baseType: !476, size: 32)
!476 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !472, file: !473, line: 219, size: 32, elements: !477)
!477 = !{!478, !487}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !476, file: !473, line: 220, baseType: !479, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !480, line: 29, baseType: !481)
!480 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !480, line: 17, size: 32, elements: !482)
!482 = !{!483}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !480, line: 18, baseType: !484, size: 32)
!484 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !481, file: !480, line: 18, size: 32, elements: !485)
!485 = !{!486}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !484, file: !480, line: 19, baseType: !280, size: 32)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !476, file: !473, line: 221, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !473, line: 197, baseType: !489)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !473, line: 197, elements: !490)
!490 = !{}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !472, file: !473, line: 223, baseType: !7, size: 32, offset: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !472, file: !473, line: 224, baseType: !93, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !465, file: !30, line: 752, baseType: !494, size: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!94, !497, !94, !94, !94, !94}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !59, line: 994, size: 1856, align: 64, elements: !499)
!499 = !{!500, !514, !515, !517, !524, !536, !539, !540, !616, !828, !837, !3035, !3036, !3037, !3038, !3039, !3040, !3042, !3043, !3044}
!500 = !DIDerivedType(tag: DW_TAG_member, scope: !498, file: !59, line: 995, baseType: !501, size: 128)
!501 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !498, file: !59, line: 995, size: 128, elements: !502)
!502 = !{!503, !504, !513}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !501, file: !59, line: 996, baseType: !138, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !501, file: !59, line: 997, baseType: !505, size: 128, align: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 232, size: 128, align: 64, elements: !506)
!506 = !{!507, !509}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !505, file: !126, line: 233, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !505, file: !126, line: 234, baseType: !510, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !508}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !501, file: !59, line: 998, baseType: !7, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !498, file: !59, line: 1005, baseType: !479, size: 32, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !498, file: !59, line: 1006, baseType: !516, size: 32, offset: 160)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !126, line: 156, baseType: !7)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !498, file: !59, line: 1007, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !519, line: 13, baseType: !520)
!519 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 181, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 179, size: 64, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !521, file: !126, line: 180, baseType: !196, size: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !498, file: !59, line: 1008, baseType: !525, size: 256, offset: 256)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !526, line: 66, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!527 = !{!528, !529, !530, !535}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !525, file: !526, line: 67, baseType: !518, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !525, file: !526, line: 68, baseType: !278, size: 32, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !525, file: !526, line: 70, baseType: !531, size: 32, offset: 96)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !532, line: 15, size: 32, elements: !533)
!532 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !531, file: !532, line: 20, baseType: !125, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !525, file: !526, line: 72, baseType: !185, size: 128, offset: 128)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !498, file: !59, line: 1009, baseType: !537, size: 64, offset: 512)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 52, baseType: !538)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !328, line: 88, baseType: !198)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !498, file: !59, line: 1010, baseType: !7, size: 32, offset: 576)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !498, file: !59, line: 1011, baseType: !541, size: 256, offset: 640)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !59, line: 948, size: 256, elements: !542)
!542 = !{!543, !566, !605, !606, !614, !615}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !541, file: !59, line: 949, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !545, line: 34, baseType: !546)
!545 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !545, line: 25, size: 64, elements: !547)
!547 = !{!548}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !546, file: !545, line: 26, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !550, line: 27, baseType: !551)
!550 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !550, line: 13, size: 64, elements: !552)
!552 = !{!553, !565}
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !551, file: !550, line: 14, baseType: !554, size: 32)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !551, file: !550, line: 14, size: 32, elements: !555)
!555 = !{!556, !557}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !554, file: !550, line: 15, baseType: !125, size: 32)
!557 = !DIDerivedType(tag: DW_TAG_member, scope: !554, file: !550, line: 16, baseType: !558, size: 32)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !554, file: !550, line: 16, size: 32, elements: !559)
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !558, file: !550, line: 18, baseType: !295, size: 8)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !558, file: !550, line: 19, baseType: !562, size: 24, offset: 8)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 24, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: 3)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !550, line: 26, baseType: !283, size: 32, offset: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !541, file: !59, line: 950, baseType: !567, size: 64, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !569)
!569 = !{!570, !571, !572, !573, !586, !587, !594, !595}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !568, file: !6, line: 61, baseType: !120, size: 32)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !568, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !568, file: !6, line: 63, baseType: !479, size: 32, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !568, file: !6, line: 65, baseType: !574, size: 256, offset: 128)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 256, elements: !584)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !126, line: 194, size: 64, elements: !576)
!576 = !{!577}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !575, file: !126, line: 195, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 198, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !579, file: !126, line: 199, baseType: !578, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !579, file: !126, line: 199, baseType: !583, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!584 = !{!585}
!585 = !DISubrange(count: 4)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !568, file: !6, line: 66, baseType: !575, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !568, file: !6, line: 68, baseType: !588, size: 192, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !589, line: 41, baseType: !590)
!589 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !589, line: 37, size: 192, elements: !591)
!591 = !{!592, !593}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !590, file: !589, line: 38, baseType: !479, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !590, file: !589, line: 39, baseType: !185, size: 128, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !568, file: !6, line: 69, baseType: !505, size: 128, align: 64, offset: 640)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !568, file: !6, line: 70, baseType: !596, offset: 768)
!596 = !DICompositeType(tag: DW_TAG_array_type, baseType: !597, elements: !603)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !598)
!598 = !{!599, !600}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !597, file: !6, line: 55, baseType: !98, size: 32)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !597, file: !6, line: 56, baseType: !601, size: 64, offset: 64)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!603 = !{!604}
!604 = !DISubrange(count: -1)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !541, file: !59, line: 951, baseType: !5, size: 32, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !541, file: !59, line: 952, baseType: !607, size: 32, offset: 160)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !608, line: 23, baseType: !609)
!608 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 21, size: 32, elements: !610)
!610 = !{!611}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !609, file: !608, line: 22, baseType: !612, size: 32)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 37, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !328, line: 49, baseType: !7)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !541, file: !59, line: 952, baseType: !607, size: 32, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !541, file: !59, line: 953, baseType: !98, size: 32, offset: 224)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !498, file: !59, line: 1012, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !620, line: 110, size: 1472, elements: !621)
!620 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!621 = !{!622, !623, !624, !631, !632, !633, !634, !635, !636, !637, !638, !644, !645, !646, !647, !648, !649, !773, !774, !775, !776, !777, !808, !811, !815, !823}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !619, file: !620, line: 111, baseType: !518, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !619, file: !620, line: 112, baseType: !607, size: 32, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !619, file: !620, line: 113, baseType: !625, size: 32, offset: 96)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !608, line: 28, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !608, line: 26, size: 32, elements: !627)
!627 = !{!628}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !626, file: !608, line: 27, baseType: !629, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 38, baseType: !630)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !328, line: 50, baseType: !7)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !619, file: !620, line: 114, baseType: !607, size: 32, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !619, file: !620, line: 115, baseType: !625, size: 32, offset: 160)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !619, file: !620, line: 116, baseType: !607, size: 32, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !619, file: !620, line: 117, baseType: !625, size: 32, offset: 224)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !619, file: !620, line: 118, baseType: !607, size: 32, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !619, file: !620, line: 119, baseType: !625, size: 32, offset: 288)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !619, file: !620, line: 120, baseType: !7, size: 32, offset: 320)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !619, file: !620, line: 121, baseType: !639, size: 64, offset: 384)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !640, line: 24, baseType: !641)
!640 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !640, line: 24, size: 64, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !641, file: !640, line: 24, baseType: !180, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !619, file: !620, line: 122, baseType: !639, size: 64, offset: 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !619, file: !620, line: 123, baseType: !639, size: 64, offset: 512)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !619, file: !620, line: 124, baseType: !639, size: 64, offset: 576)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !619, file: !620, line: 125, baseType: !639, size: 64, offset: 640)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !619, file: !620, line: 127, baseType: !297, size: 8, offset: 704)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !619, file: !620, line: 129, baseType: !650, size: 64, offset: 768)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !652, line: 195, size: 1728, elements: !653)
!652 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!653 = !{!654, !655, !660, !665, !674, !677, !678, !685, !686, !687, !688, !691, !692, !693, !695, !696, !737, !758}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !651, file: !652, line: 196, baseType: !120, size: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !651, file: !652, line: 197, baseType: !656, size: 32, offset: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !652, line: 28, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !126, line: 104, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !113, line: 20, baseType: !659)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !115, line: 26, baseType: !98)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 198, baseType: !661, size: 192, offset: 64)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 198, size: 192, elements: !662)
!662 = !{!663, !664}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !661, file: !652, line: 199, baseType: !185, size: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !661, file: !652, line: 200, baseType: !172, size: 192, align: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !651, file: !652, line: 205, baseType: !666, size: 320, offset: 256)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !667, line: 48, size: 320, elements: !668)
!667 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!668 = !{!669, !670, !671, !672, !673}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !666, file: !667, line: 49, baseType: !518, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !666, file: !667, line: 55, baseType: !518, size: 64, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !666, file: !667, line: 57, baseType: !531, size: 32, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !666, file: !667, line: 59, baseType: !278, size: 32, offset: 160)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !666, file: !667, line: 60, baseType: !185, size: 128, offset: 192)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !651, file: !652, line: 206, baseType: !675, size: 64, offset: 576)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !652, line: 206, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !651, file: !652, line: 207, baseType: !93, size: 64, offset: 640)
!678 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 208, baseType: !679, size: 64, offset: 704)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 208, size: 64, elements: !680)
!680 = !{!681, !684}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !679, file: !652, line: 209, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !683, line: 8, baseType: !197)
!683 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!684 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !679, file: !652, line: 210, baseType: !682, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !651, file: !652, line: 212, baseType: !682, size: 64, offset: 768)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !651, file: !652, line: 213, baseType: !607, size: 32, offset: 832)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !651, file: !652, line: 214, baseType: !625, size: 32, offset: 864)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !651, file: !652, line: 215, baseType: !689, size: 32, offset: 896)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !652, line: 31, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 110, baseType: !112)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !651, file: !652, line: 216, baseType: !151, size: 16, offset: 928)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !651, file: !652, line: 217, baseType: !151, size: 16, offset: 944)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !651, file: !652, line: 221, baseType: !694, size: 16, offset: 960)
!694 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !651, file: !652, line: 228, baseType: !94, size: 64, offset: 1024)
!696 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 245, baseType: !697, size: 320, offset: 1088)
!697 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 245, size: 320, elements: !698)
!698 = !{!699, !728}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !697, file: !652, line: 246, baseType: !700, size: 320)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !652, line: 114, size: 320, elements: !701)
!701 = !{!702, !703, !715, !718, !727}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !700, file: !652, line: 116, baseType: !94, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !700, file: !652, line: 117, baseType: !704, size: 64, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !700, file: !652, line: 117, size: 64, elements: !705)
!705 = !{!706, !714}
!706 = !DIDerivedType(tag: DW_TAG_member, scope: !704, file: !652, line: 118, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !652, line: 118, size: 64, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !707, file: !652, line: 120, baseType: !149, size: 16)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !707, file: !652, line: 121, baseType: !711, size: 48, offset: 16)
!711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 48, elements: !712)
!712 = !{!713}
!713 = !DISubrange(count: 6)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !704, file: !652, line: 127, baseType: !94, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !700, file: !652, line: 129, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !652, line: 102, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !700, file: !652, line: 130, baseType: !719, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !652, line: 108, size: 192, elements: !721)
!721 = !{!722, !723, !724}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !720, file: !652, line: 109, baseType: !505, size: 128, align: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !720, file: !652, line: 110, baseType: !120, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !720, file: !652, line: 111, baseType: !725, size: 8, offset: 160)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 35, baseType: !726)
!726 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !700, file: !652, line: 131, baseType: !95, size: 64, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !652, line: 247, baseType: !729, size: 320)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !697, file: !652, line: 247, size: 320, elements: !730)
!730 = !{!731, !732, !733, !734, !735}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !729, file: !652, line: 248, baseType: !94, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !729, file: !652, line: 249, baseType: !94, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !729, file: !652, line: 250, baseType: !716, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !729, file: !652, line: 251, baseType: !719, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !729, file: !652, line: 252, baseType: !736, size: 64, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, scope: !651, file: !652, line: 260, baseType: !738, size: 256, offset: 1408)
!738 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !651, file: !652, line: 260, size: 256, elements: !739)
!739 = !{!740, !746}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !738, file: !652, line: 261, baseType: !741, size: 256)
!741 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !652, line: 134, size: 256, elements: !742)
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !741, file: !652, line: 135, baseType: !93, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !741, file: !652, line: 136, baseType: !745, size: 256)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !93, size: 256, elements: !584)
!746 = !DIDerivedType(tag: DW_TAG_member, scope: !738, file: !652, line: 262, baseType: !747, size: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !738, file: !652, line: 262, size: 256, elements: !748)
!748 = !{!749, !750}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !747, file: !652, line: 264, baseType: !185, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !747, file: !652, line: 265, baseType: !751, size: 128, offset: 128)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !752, line: 22, size: 128, elements: !753)
!752 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!753 = !{!754, !757}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !751, file: !752, line: 23, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !752, line: 23, flags: DIFlagFwdDecl)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !751, file: !752, line: 24, baseType: !94, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !651, file: !652, line: 280, baseType: !759, size: 64, offset: 1664)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !652, line: 176, size: 192, elements: !761)
!761 = !{!762, !771, !772}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !760, file: !652, line: 177, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !652, line: 171, baseType: !764)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!98, !650, !767, !769, !650}
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !741)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !760, file: !652, line: 178, baseType: !650, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !760, file: !652, line: 179, baseType: !716, size: 64, offset: 128)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !619, file: !620, line: 130, baseType: !650, size: 64, offset: 832)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !619, file: !620, line: 131, baseType: !650, size: 64, offset: 896)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !619, file: !620, line: 132, baseType: !650, size: 64, offset: 960)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !619, file: !620, line: 135, baseType: !93, size: 64, offset: 1024)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !619, file: !620, line: 137, baseType: !778, size: 64, offset: 1088)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !780, line: 14, size: 1088, elements: !781)
!780 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!781 = !{!782, !783, !792, !793, !794, !795, !796, !797}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !779, file: !780, line: 15, baseType: !120, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !779, file: !780, line: 17, baseType: !784, size: 320, offset: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !785, line: 22, size: 320, elements: !786)
!785 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!786 = !{!787, !788, !789, !790}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !784, file: !785, line: 23, baseType: !278, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !784, file: !785, line: 24, baseType: !196, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !784, file: !785, line: 26, baseType: !185, size: 128, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !784, file: !785, line: 28, baseType: !791, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !779, file: !780, line: 19, baseType: !94, size: 64, offset: 384)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !779, file: !780, line: 20, baseType: !518, size: 64, offset: 448)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !779, file: !780, line: 23, baseType: !579, size: 128, offset: 512)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !779, file: !780, line: 24, baseType: !607, size: 32, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !779, file: !780, line: 29, baseType: !518, size: 64, offset: 704)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !779, file: !780, line: 36, baseType: !798, size: 320, offset: 768)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !799, line: 15, size: 320, elements: !800)
!799 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!800 = !{!801, !802, !803, !804, !805, !806, !807}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !798, file: !799, line: 16, baseType: !278, size: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !798, file: !799, line: 18, baseType: !98, size: 32, offset: 32)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !798, file: !799, line: 19, baseType: !98, size: 32, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !798, file: !799, line: 20, baseType: !98, size: 32, offset: 96)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !798, file: !799, line: 21, baseType: !98, size: 32, offset: 128)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !798, file: !799, line: 22, baseType: !94, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !798, file: !799, line: 23, baseType: !94, size: 64, offset: 256)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !619, file: !620, line: 138, baseType: !809, size: 64, offset: 1152)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !608, line: 18, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !619, file: !620, line: 139, baseType: !812, size: 64, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !814, line: 16, flags: DIFlagFwdDecl)
!814 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!815 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !619, file: !620, line: 140, baseType: !816, size: 64, offset: 1280)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !620, line: 25, size: 64, elements: !818)
!818 = !{!819, !820, !821}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !817, file: !620, line: 26, baseType: !125, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !817, file: !620, line: 27, baseType: !98, size: 32, offset: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !817, file: !620, line: 28, baseType: !822, offset: 64)
!822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !625, elements: !603)
!823 = !DIDerivedType(tag: DW_TAG_member, scope: !619, file: !620, line: 142, baseType: !824, size: 128, offset: 1344)
!824 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !619, file: !620, line: 142, size: 128, elements: !825)
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !824, file: !620, line: 143, baseType: !98, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !824, file: !620, line: 144, baseType: !505, size: 128, align: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !498, file: !59, line: 1013, baseType: !829, size: 256, offset: 960)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !59, line: 970, size: 256, elements: !830)
!830 = !{!831, !832, !833, !834, !835, !836}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !829, file: !59, line: 971, baseType: !94, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !829, file: !59, line: 972, baseType: !7, size: 32, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !829, file: !59, line: 973, baseType: !7, size: 32, offset: 96)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !829, file: !59, line: 974, baseType: !7, size: 32, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !829, file: !59, line: 975, baseType: !7, size: 32, offset: 160)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !829, file: !59, line: 976, baseType: !537, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !498, file: !59, line: 1014, baseType: !838, size: 128, offset: 1216)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !839, line: 8, size: 128, elements: !840)
!839 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!840 = !{!841, !3034}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !838, file: !839, line: 9, baseType: !842, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !844, line: 70, size: 256, elements: !845)
!844 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!845 = !{!846, !3031, !3032, !3033}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !843, file: !844, line: 71, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !849, line: 82, size: 1536, elements: !850)
!849 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!850 = !{!851, !852, !857, !865, !866, !881, !2998, !3000, !3013, !3014, !3015, !3016, !3017, !3023, !3024, !3025}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !848, file: !849, line: 84, baseType: !7, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !848, file: !849, line: 85, baseType: !853, size: 32, offset: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !331, line: 275, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !331, line: 275, size: 32, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !854, file: !331, line: 275, baseType: !335, size: 32)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !848, file: !849, line: 86, baseType: !858, size: 128, offset: 64)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !859, line: 38, size: 128, elements: !860)
!859 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!860 = !{!861, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !858, file: !859, line: 39, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !858, file: !859, line: 39, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !848, file: !849, line: 87, baseType: !847, size: 64, offset: 192)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !848, file: !849, line: 88, baseType: !867, size: 128, offset: 256)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !849, line: 49, size: 128, elements: !868)
!868 = !{!869, !878}
!869 = !DIDerivedType(tag: DW_TAG_member, scope: !867, file: !849, line: 50, baseType: !870, size: 64)
!870 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !867, file: !849, line: 50, size: 64, elements: !871)
!871 = !{!872, !877}
!872 = !DIDerivedType(tag: DW_TAG_member, scope: !870, file: !849, line: 51, baseType: !873, size: 64)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !870, file: !849, line: 51, size: 64, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !873, file: !849, line: 52, baseType: !112, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !873, file: !849, line: 52, baseType: !112, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !870, file: !849, line: 54, baseType: !180, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !867, file: !849, line: 56, baseType: !879, size: 64, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !848, file: !849, line: 89, baseType: !882, size: 64, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !59, line: 641, size: 4800, elements: !884)
!884 = !{!885, !887, !888, !889, !890, !891, !892, !895, !896, !1094, !2812, !2813, !2814, !2815, !2821, !2822, !2823, !2824, !2825, !2826, !2827, !2828, !2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2980, !2983, !2984, !2985, !2994, !2995, !2996, !2997}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !883, file: !59, line: 642, baseType: !886, size: 16)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 24, baseType: !151)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !883, file: !59, line: 643, baseType: !151, size: 16, offset: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !883, file: !59, line: 644, baseType: !607, size: 32, offset: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !883, file: !59, line: 645, baseType: !185, size: 128, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !883, file: !59, line: 646, baseType: !625, size: 32, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !883, file: !59, line: 647, baseType: !7, size: 32, offset: 224)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !883, file: !59, line: 650, baseType: !893, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !59, line: 607, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !883, file: !59, line: 651, baseType: !893, size: 64, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !883, file: !59, line: 654, baseType: !897, size: 64, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !899)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !59, line: 1966, size: 2048, align: 512, elements: !900)
!900 = !{!901, !905, !918, !924, !928, !932, !936, !940, !944, !948, !952, !953, !959, !963, !1001, !1032, !1042, !1048, !1052, !1056, !1060, !1064, !1068, !1074, !1078}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !899, file: !59, line: 1967, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DISubroutineType(types: !904)
!904 = !{!847, !882, !847, !7}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !899, file: !59, line: 1968, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DISubroutineType(types: !908)
!908 = !{!95, !847, !882, !909}
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !911, line: 10, size: 128, elements: !912)
!911 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!912 = !{!913, !917}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !910, file: !911, line: 11, baseType: !914, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !93}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !910, file: !911, line: 12, baseType: !93, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !899, file: !59, line: 1969, baseType: !919, size: 64, offset: 128)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DISubroutineType(types: !921)
!921 = !{!98, !922, !882, !98}
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !640, line: 42, flags: DIFlagFwdDecl)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !899, file: !59, line: 1970, baseType: !925, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!893, !882, !98, !725}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !899, file: !59, line: 1972, baseType: !929, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!98, !847, !736, !98}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !899, file: !59, line: 1974, baseType: !933, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!98, !922, !882, !847, !886, !725}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !899, file: !59, line: 1976, baseType: !937, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!98, !847, !882, !847}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !899, file: !59, line: 1977, baseType: !941, size: 64, offset: 448)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{!98, !882, !847}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !899, file: !59, line: 1978, baseType: !945, size: 64, offset: 512)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!98, !922, !882, !847, !95}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !899, file: !59, line: 1980, baseType: !949, size: 64, offset: 576)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!98, !922, !882, !847, !886}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !899, file: !59, line: 1982, baseType: !941, size: 64, offset: 640)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !899, file: !59, line: 1983, baseType: !954, size: 64, offset: 704)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{!98, !922, !882, !847, !886, !957}
!957 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 21, baseType: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 18, baseType: !112)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !899, file: !59, line: 1985, baseType: !960, size: 64, offset: 768)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!98, !922, !882, !847, !882, !847, !7}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !899, file: !59, line: 1987, baseType: !964, size: 64, offset: 832)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!98, !922, !847, !967}
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !59, line: 226, size: 640, elements: !969)
!969 = !{!970, !971, !972, !982, !991, !992, !998, !999, !1000}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !968, file: !59, line: 227, baseType: !7, size: 32)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !968, file: !59, line: 228, baseType: !886, size: 16, offset: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !59, line: 241, baseType: !973, size: 32, offset: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !59, line: 241, size: 32, elements: !974)
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !973, file: !59, line: 242, baseType: !607, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !973, file: !59, line: 243, baseType: !977, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !978, line: 16, baseType: !979)
!978 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 14, size: 32, elements: !980)
!980 = !{!981}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !979, file: !978, line: 15, baseType: !612, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !59, line: 245, baseType: !983, size: 32, offset: 96)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !59, line: 245, size: 32, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !983, file: !59, line: 246, baseType: !625, size: 32)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !983, file: !59, line: 247, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !978, line: 20, baseType: !988)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !978, line: 18, size: 32, elements: !989)
!989 = !{!990}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !988, file: !978, line: 19, baseType: !629, size: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !968, file: !59, line: 249, baseType: !537, size: 64, offset: 128)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !968, file: !59, line: 250, baseType: !993, size: 128, offset: 192)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !683, line: 13, size: 128, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !993, file: !683, line: 14, baseType: !682, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !993, file: !683, line: 15, baseType: !997, size: 64, offset: 64)
!997 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !968, file: !59, line: 251, baseType: !993, size: 128, offset: 320)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !968, file: !59, line: 252, baseType: !993, size: 128, offset: 448)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !968, file: !59, line: 259, baseType: !497, size: 64, offset: 576)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !899, file: !59, line: 1988, baseType: !1002, size: 64, offset: 896)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!98, !922, !1005, !1007, !112, !7}
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !1009, line: 22, size: 1280, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !1008, file: !1009, line: 23, baseType: !112, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1008, file: !1009, line: 24, baseType: !886, size: 16, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !1008, file: !1009, line: 25, baseType: !7, size: 32, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !1008, file: !1009, line: 26, baseType: !690, size: 32, offset: 96)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1008, file: !1009, line: 27, baseType: !180, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !1008, file: !1009, line: 28, baseType: !180, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !1008, file: !1009, line: 41, baseType: !180, size: 64, offset: 256)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1008, file: !1009, line: 42, baseType: !957, size: 32, offset: 320)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !1008, file: !1009, line: 43, baseType: !957, size: 32, offset: 352)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1008, file: !1009, line: 44, baseType: !607, size: 32, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1008, file: !1009, line: 45, baseType: !625, size: 32, offset: 416)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1008, file: !1009, line: 46, baseType: !537, size: 64, offset: 448)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !1008, file: !1009, line: 47, baseType: !993, size: 128, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !1008, file: !1009, line: 48, baseType: !993, size: 128, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1008, file: !1009, line: 49, baseType: !993, size: 128, offset: 768)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !1008, file: !1009, line: 50, baseType: !993, size: 128, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !1008, file: !1009, line: 51, baseType: !180, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !1008, file: !1009, line: 52, baseType: !180, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !1008, file: !1009, line: 53, baseType: !112, size: 32, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !1008, file: !1009, line: 54, baseType: !112, size: 32, offset: 1184)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !1008, file: !1009, line: 55, baseType: !180, size: 64, offset: 1216)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !899, file: !59, line: 1990, baseType: !1033, size: 64, offset: 960)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!1036, !847, !736, !1039}
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 66, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !328, line: 73, baseType: !1038)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !328, line: 15, baseType: !997)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 61, baseType: !1040)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !328, line: 72, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !328, line: 16, baseType: !94)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !899, file: !59, line: 1991, baseType: !1043, size: 64, offset: 1024)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!98, !882, !1046, !180, !180}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !59, line: 55, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !899, file: !59, line: 1993, baseType: !1049, size: 64, offset: 1088)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DISubroutineType(types: !1051)
!1051 = !{!98, !882, !98}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !899, file: !59, line: 1994, baseType: !1053, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DISubroutineType(types: !1055)
!1055 = !{!98, !882, !847, !497, !7, !886}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !899, file: !59, line: 1997, baseType: !1057, size: 64, offset: 1216)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{!98, !922, !882, !497, !886}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !899, file: !59, line: 1999, baseType: !1061, size: 64, offset: 1280)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!893, !922, !847, !98}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !899, file: !59, line: 2001, baseType: !1065, size: 64, offset: 1344)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{!98, !922, !847, !893, !98}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !899, file: !59, line: 2003, baseType: !1069, size: 64, offset: 1408)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!98, !922, !847, !1072}
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !59, line: 76, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !899, file: !59, line: 2005, baseType: !1075, size: 64, offset: 1472)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!98, !847, !1072}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !899, file: !59, line: 2006, baseType: !1079, size: 64, offset: 1536)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!1082, !882}
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !59, line: 3192, size: 192, elements: !1084)
!1084 = !{!1085, !1093}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1083, file: !59, line: 3193, baseType: !1086, size: 128)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1087, line: 296, size: 128, elements: !1088)
!1087 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1088 = !{!1089, !1090, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1086, file: !1087, line: 297, baseType: !479, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1086, file: !1087, line: 299, baseType: !1091, size: 32, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 154, baseType: !7)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1086, file: !1087, line: 300, baseType: !93, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !1083, file: !59, line: 3194, baseType: !112, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !883, file: !59, line: 655, baseType: !1095, size: 64, offset: 448)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !59, line: 1190, size: 10752, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101, !1102, !1103, !2325, !2457, !2497, !2580, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2597, !2601, !2602, !2605, !2608, !2611, !2614, !2615, !2616, !2657, !2683, !2684, !2685, !2686, !2687, !2688, !2691, !2695, !2704, !2705, !2706, !2707, !2766, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !1096, file: !59, line: 1191, baseType: !185, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !1096, file: !59, line: 1192, baseType: !957, size: 32, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !1096, file: !59, line: 1193, baseType: !297, size: 8, offset: 160)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !1096, file: !59, line: 1194, baseType: !94, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !1096, file: !59, line: 1195, baseType: !537, size: 64, offset: 256)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !1096, file: !59, line: 1196, baseType: !1104, size: 64, offset: 320)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !59, line: 2366, size: 576, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1115, !1119, !1123, !1127, !2313, !2314, !2315, !2317, !2318, !2319, !2321, !2322, !2323, !2324}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1105, file: !59, line: 2367, baseType: !95, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !1105, file: !59, line: 2368, baseType: !98, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !1105, file: !59, line: 2376, baseType: !1110, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!98, !1113}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !844, line: 21, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !1105, file: !59, line: 2377, baseType: !1116, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1118)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !59, line: 75, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !1105, file: !59, line: 2378, baseType: !1120, size: 64, offset: 256)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!847, !1104, !98, !95, !93}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !1105, file: !59, line: 2380, baseType: !1124, size: 64, offset: 320)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DISubroutineType(types: !1126)
!1126 = !{null, !1095}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1105, file: !59, line: 2381, baseType: !1128, size: 64, offset: 384)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1137, !1952, !1978, !1979, !1980, !1981, !1985, !1988, !1989, !1990, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2058, !2062, !2082, !2102, !2103, !2104, !2105, !2114, !2137, !2138, !2141, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2155, !2156, !2267, !2275, !2276, !2277, !2279, !2283, !2284, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2306, !2307, !2308, !2312}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1129, file: !15, line: 403, baseType: !14, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1129, file: !15, line: 406, baseType: !185, size: 128, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1129, file: !15, line: 409, baseType: !1134, size: 448, offset: 192)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 448, elements: !1135)
!1135 = !{!1136}
!1136 = !DISubrange(count: 56)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1129, file: !15, line: 417, baseType: !1138, size: 768, offset: 640)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1139)
!1139 = !{!1140, !1945, !1946, !1947, !1950}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1138, file: !15, line: 46, baseType: !1141, size: 512)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1142, line: 64, size: 512, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1143 = !{!1144, !1145, !1146, !1148, !1192, !1800, !1935, !1940, !1941, !1942, !1943, !1944}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1141, file: !1142, line: 65, baseType: !95, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1141, file: !1142, line: 66, baseType: !185, size: 128, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1141, file: !1142, line: 67, baseType: !1147, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1141, file: !1142, line: 68, baseType: !1149, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1142, line: 168, size: 768, elements: !1151)
!1151 = !{!1152, !1153, !1154, !1155}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1150, file: !1142, line: 169, baseType: !185, size: 128)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1150, file: !1142, line: 170, baseType: !479, size: 32, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1150, file: !1142, line: 171, baseType: !1141, size: 512, offset: 192)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1150, file: !1142, line: 172, baseType: !1156, size: 64, offset: 704)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1142, line: 133, size: 192, elements: !1159)
!1159 = !{!1160, !1167, !1172}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1158, file: !1142, line: 134, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1162)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!98, !1165}
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1141)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1158, file: !1142, line: 135, baseType: !1168, size: 64, offset: 64)
!1168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1169)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!95, !1165}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1158, file: !1142, line: 136, baseType: !1173, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!98, !1165, !1177}
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1142, line: 125, size: 20736, elements: !1179)
!1179 = !{!1180, !1182, !1186, !1187, !1191}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1178, file: !1142, line: 126, baseType: !1181, size: 192)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 192, elements: !563)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1178, file: !1142, line: 127, baseType: !1183, size: 4096, offset: 192)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !736, size: 4096, elements: !1184)
!1184 = !{!1185}
!1185 = !DISubrange(count: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1178, file: !1142, line: 128, baseType: !98, size: 32, offset: 4288)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1178, file: !1142, line: 129, baseType: !1188, size: 16384, offset: 4320)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 16384, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 2048)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1178, file: !1142, line: 130, baseType: !98, size: 32, offset: 20704)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1141, file: !1142, line: 69, baseType: !1193, size: 64, offset: 320)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1195)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1142, line: 116, size: 384, elements: !1196)
!1196 = !{!1197, !1201, !1220, !1760, !1790, !1794}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1195, file: !1142, line: 117, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{null, !1147}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1195, file: !1142, line: 118, baseType: !1202, size: 64, offset: 64)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1204)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1205, line: 254, size: 128, elements: !1206)
!1205 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1206 = !{!1207, !1216}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1204, file: !1205, line: 255, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!1036, !1147, !1211, !736}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1205, line: 30, size: 128, elements: !1213)
!1213 = !{!1214, !1215}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1212, file: !1205, line: 31, baseType: !95, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1212, file: !1205, line: 32, baseType: !886, size: 16, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1204, file: !1205, line: 256, baseType: !1217, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!1036, !1147, !1211, !95, !1039}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1195, file: !1142, line: 119, baseType: !1221, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1224)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1205, line: 84, size: 320, elements: !1225)
!1225 = !{!1226, !1227, !1231, !1756, !1758}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1224, file: !1205, line: 85, baseType: !95, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1224, file: !1205, line: 86, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DISubroutineType(types: !1230)
!1230 = !{!886, !1147, !1211, !98}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1224, file: !1205, line: 88, baseType: !1232, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DISubroutineType(types: !1234)
!1234 = !{!886, !1147, !1235, !98}
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1205, line: 175, size: 512, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241, !1747, !1751, !1752}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1236, file: !1205, line: 176, baseType: !1212, size: 128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1236, file: !1205, line: 177, baseType: !1039, size: 64, offset: 128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1236, file: !1205, line: 178, baseType: !93, size: 64, offset: 192)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1236, file: !1205, line: 179, baseType: !1242, size: 64, offset: 256)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DISubroutineType(types: !1244)
!1244 = !{!1245}
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !59, line: 472, size: 1536, align: 64, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1739, !1740, !1741, !1744, !1745, !1746}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1246, file: !59, line: 473, baseType: !882, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1246, file: !59, line: 474, baseType: !1086, size: 128, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1246, file: !59, line: 475, baseType: !666, size: 320, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1246, file: !59, line: 476, baseType: !1091, size: 32, offset: 512)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1246, file: !59, line: 477, baseType: !125, size: 32, offset: 544)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1246, file: !59, line: 482, baseType: !344, size: 128, offset: 576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1246, file: !59, line: 483, baseType: !94, size: 64, offset: 704)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1246, file: !59, line: 484, baseType: !94, size: 64, offset: 768)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1246, file: !59, line: 485, baseType: !1257, size: 64, offset: 832)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !59, line: 404, size: 1280, elements: !1260)
!1260 = !{!1261, !1564, !1634, !1638, !1642, !1648, !1654, !1658, !1663, !1667, !1671, !1675, !1703, !1707, !1711, !1715, !1720, !1724, !1731, !1735}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1259, file: !59, line: 405, baseType: !1262, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!98, !1265, !1562}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !30, line: 74, size: 512, align: 128, elements: !1267)
!1267 = !{!1268, !1269, !1556, !1561}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1266, file: !30, line: 75, baseType: !94, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !30, line: 83, baseType: !1270, size: 320, offset: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !30, line: 83, size: 320, elements: !1271)
!1271 = !{!1272, !1293, !1307, !1311, !1555}
!1272 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !30, line: 84, baseType: !1273, size: 320)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !30, line: 84, size: 320, elements: !1274)
!1274 = !{!1275, !1286, !1287, !1292}
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !30, line: 90, baseType: !1276, size: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !30, line: 90, size: 128, elements: !1277)
!1277 = !{!1278, !1279, !1284, !1285}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1276, file: !30, line: 91, baseType: !185, size: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, scope: !1276, file: !30, line: 94, baseType: !1280, size: 128)
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1276, file: !30, line: 94, size: 128, elements: !1281)
!1281 = !{!1282, !1283}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1280, file: !30, line: 96, baseType: !93, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1280, file: !30, line: 98, baseType: !7, size: 32, offset: 64)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1276, file: !30, line: 102, baseType: !185, size: 128)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1276, file: !30, line: 103, baseType: !185, size: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1273, file: !30, line: 106, baseType: !1245, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_member, scope: !1273, file: !30, line: 107, baseType: !1288, size: 64, offset: 192)
!1288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1273, file: !30, line: 107, size: 64, elements: !1289)
!1289 = !{!1290, !1291}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1288, file: !30, line: 108, baseType: !94, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1288, file: !30, line: 109, baseType: !94, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1273, file: !30, line: 117, baseType: !94, size: 64, offset: 256)
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !30, line: 119, baseType: !1294, size: 320)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !30, line: 119, size: 320, elements: !1295)
!1295 = !{!1296, !1297, !1300, !1301, !1302}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1294, file: !30, line: 124, baseType: !94, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1294, file: !30, line: 125, baseType: !1298, size: 64, offset: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !30, line: 125, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1294, file: !30, line: 126, baseType: !94, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1294, file: !30, line: 127, baseType: !94, size: 64, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !30, line: 128, baseType: !1303, size: 64, offset: 256)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1294, file: !30, line: 128, size: 64, elements: !1304)
!1304 = !{!1305, !1306}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1303, file: !30, line: 133, baseType: !94, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1303, file: !30, line: 138, baseType: !518, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !30, line: 141, baseType: !1308, size: 64)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !30, line: 141, size: 64, elements: !1309)
!1309 = !{!1310}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1308, file: !30, line: 142, baseType: !94, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !30, line: 144, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1270, file: !30, line: 144, size: 128, elements: !1313)
!1313 = !{!1314, !1554}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1312, file: !30, line: 146, baseType: !1315, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !22, line: 126, size: 1216, elements: !1317)
!1317 = !{!1318, !1328, !1349, !1360, !1361, !1362, !1363, !1536, !1537, !1538}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "altmap", scope: !1316, file: !22, line: 127, baseType: !1319, size: 384)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmem_altmap", file: !22, line: 21, size: 384, elements: !1320)
!1320 = !{!1321, !1322, !1324, !1325, !1326, !1327}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "base_pfn", scope: !1319, file: !22, line: 22, baseType: !94, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "end_pfn", scope: !1319, file: !22, line: 23, baseType: !1323, size: 64, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "reserve", scope: !1319, file: !22, line: 24, baseType: !1323, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1319, file: !22, line: 25, baseType: !94, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1319, file: !22, line: 26, baseType: !94, size: 64, offset: 256)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1319, file: !22, line: 27, baseType: !94, size: 64, offset: 320)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1316, file: !22, line: 128, baseType: !1329, size: 128, offset: 384)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref", file: !1330, line: 105, size: 128, elements: !1331)
!1330 = !DIFile(filename: "./include/linux/percpu-refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4be69e3dcb700658754c20429d5356a")
!1331 = !{!1332, !1333}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_count_ptr", scope: !1329, file: !1330, line: 110, baseType: !94, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1329, file: !1330, line: 118, baseType: !1334, size: 64, offset: 64)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_ref_data", file: !1330, line: 95, size: 448, elements: !1336)
!1336 = !{!1337, !1338, !1344, !1345, !1346, !1347, !1348}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1335, file: !1330, line: 96, baseType: !518, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1335, file: !1330, line: 97, baseType: !1339, size: 64, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "percpu_ref_func_t", file: !1330, line: 60, baseType: !1341)
!1341 = !DISubroutineType(types: !1342)
!1342 = !{null, !1343}
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "confirm_switch", scope: !1335, file: !1330, line: 98, baseType: !1339, size: 64, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "force_atomic", scope: !1335, file: !1330, line: 99, baseType: !725, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "allow_reinit", scope: !1335, file: !1330, line: 100, baseType: !725, size: 1, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1335, file: !1330, line: 101, baseType: !505, size: 128, align: 64, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !1335, file: !1330, line: 102, baseType: !1343, size: 64, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1316, file: !22, line: 129, baseType: !1350, size: 256, offset: 512)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1351, line: 26, size: 256, elements: !1352)
!1351 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1352 = !{!1353, !1354}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1350, file: !1351, line: 27, baseType: !7, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1350, file: !1351, line: 28, baseType: !1355, size: 192, offset: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1356, line: 43, size: 192, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1356, line: 44, baseType: !278, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1355, file: !1356, line: 45, baseType: !185, size: 128, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1316, file: !22, line: 130, baseType: !21, size: 32, offset: 768)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1316, file: !22, line: 131, baseType: !7, size: 32, offset: 800)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "vmemmap_shift", scope: !1316, file: !22, line: 132, baseType: !94, size: 64, offset: 832)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1316, file: !22, line: 133, baseType: !1364, size: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1366)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap_ops", file: !22, line: 77, size: 192, elements: !1367)
!1367 = !{!1368, !1372, !1532}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "page_free", scope: !1366, file: !22, line: 83, baseType: !1369, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DISubroutineType(types: !1371)
!1371 = !{null, !1265}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_to_ram", scope: !1366, file: !22, line: 89, baseType: !1373, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!1376, !1377}
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_fault_t", file: !30, line: 1184, baseType: !7)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_fault", file: !1379, line: 512, size: 896, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/mm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ccbc9a0ee43d0fa4df04cc14e978d750")
!1380 = !{!1381, !1499, !1500, !1507, !1514, !1524, !1525, !1526, !1528, !1530}
!1381 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 513, baseType: !1382, size: 320)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1378, file: !1379, line: 513, size: 320, elements: !1383)
!1383 = !{!1384, !1495, !1496, !1497, !1498}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vma", scope: !1382, file: !1379, line: 514, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !30, line: 625, size: 1344, elements: !1387)
!1387 = !{!1388, !1397, !1398, !1406, !1413, !1414, !1419, !1420, !1425, !1426, !1429, !1488, !1489, !1490, !1491, !1492, !1493}
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !30, line: 628, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !30, line: 628, size: 128, elements: !1390)
!1390 = !{!1391, !1396}
!1391 = !DIDerivedType(tag: DW_TAG_member, scope: !1389, file: !30, line: 629, baseType: !1392, size: 128)
!1392 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1389, file: !30, line: 629, size: 128, elements: !1393)
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1392, file: !30, line: 631, baseType: !94, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1392, file: !30, line: 632, baseType: !94, size: 64, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1389, file: !30, line: 635, baseType: !505, size: 128, align: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1386, file: !30, line: 639, baseType: !461, size: 64, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1386, file: !30, line: 640, baseType: !1399, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1400, line: 297, baseType: !1401)
!1400 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1400, line: 297, size: 64, elements: !1402)
!1402 = !{!1403}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1401, file: !1400, line: 297, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1405, line: 19, baseType: !94)
!1405 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1406 = !DIDerivedType(tag: DW_TAG_member, scope: !1386, file: !30, line: 646, baseType: !1407, size: 64, offset: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1386, file: !30, line: 646, size: 64, elements: !1408)
!1408 = !{!1409, !1412}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1407, file: !30, line: 647, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !30, line: 542, baseType: !94)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1407, file: !30, line: 648, baseType: !1411, size: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1386, file: !30, line: 666, baseType: !98, size: 32, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1386, file: !30, line: 667, baseType: !1415, size: 64, offset: 384)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !30, line: 579, size: 320, elements: !1417)
!1417 = !{!1418}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1416, file: !30, line: 580, baseType: !666, size: 320)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1386, file: !30, line: 670, baseType: !725, size: 8, offset: 448)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1386, file: !30, line: 681, baseType: !1421, size: 256, offset: 512)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1386, file: !30, line: 678, size: 256, elements: !1422)
!1422 = !{!1423, !1424}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1421, file: !30, line: 679, baseType: !172, size: 192, align: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1421, file: !30, line: 680, baseType: !94, size: 64, offset: 192)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1386, file: !30, line: 689, baseType: !185, size: 128, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1386, file: !30, line: 691, baseType: !1427, size: 64, offset: 896)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !30, line: 691, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1386, file: !30, line: 694, baseType: !1430, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1379, line: 563, size: 1024, elements: !1433)
!1433 = !{!1434, !1438, !1439, !1443, !1447, !1451, !1452, !1456, !1460, !1464, !1465, !1466, !1470, !1474, !1480, !1484}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1432, file: !1379, line: 564, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1436, size: 64)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{null, !1385}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !1432, file: !1379, line: 569, baseType: !1435, size: 64, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "may_split", scope: !1432, file: !1379, line: 571, baseType: !1440, size: 64, offset: 128)
!1440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1441, size: 64)
!1441 = !DISubroutineType(types: !1442)
!1442 = !{!98, !1385, !94}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mremap", scope: !1432, file: !1379, line: 572, baseType: !1444, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!98, !1385}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "mprotect", scope: !1432, file: !1379, line: 578, baseType: !1448, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = !DISubroutineType(types: !1450)
!1450 = !{!98, !1385, !94, !94, !94}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fault", scope: !1432, file: !1379, line: 580, baseType: !1373, size: 64, offset: 320)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "huge_fault", scope: !1432, file: !1379, line: 581, baseType: !1453, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1376, !1377, !7}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "map_pages", scope: !1432, file: !1379, line: 582, baseType: !1457, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DISubroutineType(types: !1459)
!1459 = !{!1376, !1377, !94, !94}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !1432, file: !1379, line: 584, baseType: !1461, size: 64, offset: 512)
!1461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1462, size: 64)
!1462 = !DISubroutineType(types: !1463)
!1463 = !{!94, !1385}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "page_mkwrite", scope: !1432, file: !1379, line: 588, baseType: !1373, size: 64, offset: 576)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "pfn_mkwrite", scope: !1432, file: !1379, line: 591, baseType: !1373, size: 64, offset: 640)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "access", scope: !1432, file: !1379, line: 597, baseType: !1467, size: 64, offset: 704)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!98, !1385, !94, !93, !98, !98}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1432, file: !1379, line: 603, baseType: !1471, size: 64, offset: 768)
!1471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1472 = !DISubroutineType(types: !1473)
!1473 = !{!95, !1385}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "set_policy", scope: !1432, file: !1379, line: 613, baseType: !1475, size: 64, offset: 832)
!1475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1476, size: 64)
!1476 = !DISubroutineType(types: !1477)
!1477 = !{!98, !1385, !1478}
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !30, line: 717, flags: DIFlagFwdDecl)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "get_policy", scope: !1432, file: !1379, line: 625, baseType: !1481, size: 64, offset: 896)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!1478, !1385, !94}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "find_special_page", scope: !1432, file: !1379, line: 633, baseType: !1485, size: 64, offset: 960)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{!1265, !1385, !94}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1386, file: !30, line: 697, baseType: !94, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1386, file: !30, line: 699, baseType: !497, size: 64, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1386, file: !30, line: 700, baseType: !93, size: 64, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1386, file: !30, line: 711, baseType: !518, size: 64, offset: 1216)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1386, file: !30, line: 717, baseType: !1478, size: 64, offset: 1280)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1386, file: !30, line: 722, baseType: !1494, offset: 1344)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !30, line: 570, elements: !490)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1382, file: !1379, line: 515, baseType: !1091, size: 32, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "pgoff", scope: !1382, file: !1379, line: 516, baseType: !94, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1382, file: !1379, line: 517, baseType: !94, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "real_address", scope: !1382, file: !1379, line: 518, baseType: !94, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1378, file: !1379, line: 520, baseType: !29, size: 32, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1378, file: !1379, line: 522, baseType: !1501, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmd_t", file: !1405, line: 22, baseType: !1503)
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 22, size: 64, elements: !1504)
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pmd", scope: !1503, file: !1405, line: 22, baseType: !1506, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pmdval_t", file: !1405, line: 15, baseType: !94)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1378, file: !1379, line: 524, baseType: !1508, size: 64, offset: 448)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !1400, line: 372, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 372, size: 64, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !1510, file: !1400, line: 372, baseType: !1513, size: 64)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !1405, line: 16, baseType: !94)
!1514 = !DIDerivedType(tag: DW_TAG_member, scope: !1378, file: !1379, line: 527, baseType: !1515, size: 64, offset: 512)
!1515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1378, file: !1379, line: 527, size: 64, elements: !1516)
!1516 = !{!1517, !1523}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pte", scope: !1515, file: !1379, line: 528, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !1405, line: 21, baseType: !1519)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1405, line: 21, size: 64, elements: !1520)
!1520 = !{!1521}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1519, file: !1405, line: 21, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !1405, line: 14, baseType: !94)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "orig_pmd", scope: !1515, file: !1379, line: 529, baseType: !1502, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cow_page", scope: !1378, file: !1379, line: 534, baseType: !1265, size: 64, offset: 576)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1378, file: !1379, line: 535, baseType: !1265, size: 64, offset: 640)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !1378, file: !1379, line: 541, baseType: !1527, size: 64, offset: 704)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1378, file: !1379, line: 545, baseType: !1529, size: 64, offset: 768)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_pte", scope: !1378, file: !1379, line: 549, baseType: !1531, size: 64, offset: 832)
!1531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !1400, line: 520, baseType: !1265)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "memory_failure", scope: !1366, file: !22, line: 100, baseType: !1533, size: 64, offset: 128)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!98, !1315, !94, !94, !98}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1316, file: !22, line: 134, baseType: !93, size: 64, offset: 960)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "nr_range", scope: !1316, file: !22, line: 135, baseType: !98, size: 32, offset: 1024)
!1538 = !DIDerivedType(tag: DW_TAG_member, scope: !1316, file: !22, line: 136, baseType: !1539, size: 128, offset: 1088)
!1539 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1316, file: !22, line: 136, size: 128, elements: !1540)
!1540 = !{!1541, !1547}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !1539, file: !22, line: 137, baseType: !1542, size: 128)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "range", file: !1543, line: 6, size: 128, elements: !1544)
!1543 = !DIFile(filename: "./include/linux/range.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0d4ed130b9634d4ea80b5f843ace4d76")
!1544 = !{!1545, !1546}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1542, file: !1543, line: 7, baseType: !180, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1542, file: !1543, line: 8, baseType: !180, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, scope: !1539, file: !22, line: 138, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1539, file: !22, line: 138, elements: !1549)
!1549 = !{!1550, !1552}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "__empty_ranges", scope: !1548, file: !22, line: 138, baseType: !1551)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1548, file: !22, line: 138, elements: !490)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "ranges", scope: !1548, file: !22, line: 138, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1542, elements: !603)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1312, file: !30, line: 147, baseType: !93, size: 64, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1270, file: !30, line: 161, baseType: !505, size: 128, align: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !30, line: 164, baseType: !1557, size: 32, offset: 384)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1266, file: !30, line: 164, size: 32, elements: !1558)
!1558 = !{!1559, !1560}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1557, file: !30, line: 169, baseType: !125, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1557, file: !30, line: 177, baseType: !7, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1266, file: !30, line: 181, baseType: !125, size: 32, offset: 416)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !59, line: 309, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1259, file: !59, line: 406, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!98, !497, !1568}
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !30, line: 293, size: 1536, elements: !1570)
!1570 = !{!1571, !1601, !1615}
!1571 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !30, line: 295, baseType: !1572, size: 512)
!1572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !30, line: 295, size: 512, elements: !1573)
!1573 = !{!1574, !1600}
!1574 = !DIDerivedType(tag: DW_TAG_member, scope: !1572, file: !30, line: 296, baseType: !1575, size: 448)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1572, file: !30, line: 296, size: 448, elements: !1576)
!1576 = !{!1577, !1578, !1587, !1588, !1589, !1598, !1599}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1575, file: !30, line: 298, baseType: !94, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !30, line: 299, baseType: !1579, size: 128, offset: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !30, line: 299, size: 128, elements: !1580)
!1580 = !{!1581, !1582}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1579, file: !30, line: 300, baseType: !185, size: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, scope: !1579, file: !30, line: 302, baseType: !1583, size: 128)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1579, file: !30, line: 302, size: 128, elements: !1584)
!1584 = !{!1585, !1586}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1583, file: !30, line: 303, baseType: !93, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1583, file: !30, line: 305, baseType: !7, size: 32, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1575, file: !30, line: 310, baseType: !1245, size: 64, offset: 192)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1575, file: !30, line: 311, baseType: !94, size: 64, offset: 256)
!1589 = !DIDerivedType(tag: DW_TAG_member, scope: !1575, file: !30, line: 312, baseType: !1590, size: 64, offset: 320)
!1590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1575, file: !30, line: 312, size: 64, elements: !1591)
!1591 = !{!1592, !1593}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1590, file: !30, line: 313, baseType: !93, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1590, file: !30, line: 314, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !30, line: 257, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !30, line: 255, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1595, file: !30, line: 256, baseType: !94, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1575, file: !30, line: 316, baseType: !125, size: 32, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1575, file: !30, line: 317, baseType: !125, size: 32, offset: 416)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1572, file: !30, line: 323, baseType: !1266, size: 512, align: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !30, line: 325, baseType: !1602, size: 512, offset: 512)
!1602 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !30, line: 325, size: 512, elements: !1603)
!1603 = !{!1604, !1614}
!1604 = !DIDerivedType(tag: DW_TAG_member, scope: !1602, file: !30, line: 326, baseType: !1605, size: 320)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1602, file: !30, line: 326, size: 320, elements: !1606)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1605, file: !30, line: 327, baseType: !94, size: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1605, file: !30, line: 328, baseType: !94, size: 64, offset: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1605, file: !30, line: 329, baseType: !94, size: 64, offset: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1605, file: !30, line: 331, baseType: !125, size: 32, offset: 192)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1605, file: !30, line: 332, baseType: !125, size: 32, offset: 224)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1605, file: !30, line: 333, baseType: !125, size: 32, offset: 256)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1605, file: !30, line: 335, baseType: !7, size: 32, offset: 288)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1602, file: !30, line: 339, baseType: !1266, size: 512, align: 128)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1569, file: !30, line: 341, baseType: !1616, size: 512, offset: 1024)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1569, file: !30, line: 341, size: 512, elements: !1617)
!1617 = !{!1618, !1627, !1633}
!1618 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !30, line: 342, baseType: !1619, size: 384)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !30, line: 342, size: 384, elements: !1620)
!1620 = !{!1621, !1622, !1623, !1624, !1625, !1626}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1619, file: !30, line: 343, baseType: !94, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1619, file: !30, line: 344, baseType: !94, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1619, file: !30, line: 346, baseType: !93, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1619, file: !30, line: 347, baseType: !93, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1619, file: !30, line: 348, baseType: !93, size: 64, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1619, file: !30, line: 349, baseType: !93, size: 64, offset: 320)
!1627 = !DIDerivedType(tag: DW_TAG_member, scope: !1616, file: !30, line: 352, baseType: !1628, size: 256)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1616, file: !30, line: 352, size: 256, elements: !1629)
!1629 = !{!1630, !1631, !1632}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1628, file: !30, line: 353, baseType: !94, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1628, file: !30, line: 354, baseType: !94, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1628, file: !30, line: 356, baseType: !185, size: 128, offset: 128)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1616, file: !30, line: 359, baseType: !1266, size: 512, align: 128)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1259, file: !59, line: 409, baseType: !1635, size: 64, offset: 128)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!98, !1245, !1562}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1259, file: !59, line: 412, baseType: !1639, size: 64, offset: 192)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!725, !1245, !1568}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1259, file: !59, line: 414, baseType: !1643, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !1646}
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !59, line: 310, flags: DIFlagFwdDecl)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1259, file: !59, line: 416, baseType: !1649, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!98, !497, !1245, !537, !7, !1652, !1653}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1259, file: !59, line: 419, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!98, !497, !1245, !537, !7, !7, !1265, !93}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1259, file: !59, line: 424, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!1662, !1245, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !126, line: 131, baseType: !180)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1259, file: !59, line: 425, baseType: !1664, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{null, !1568, !1039, !1039}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1259, file: !59, line: 426, baseType: !1668, size: 64, offset: 576)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!725, !1568, !1091}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1259, file: !59, line: 427, baseType: !1672, size: 64, offset: 640)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{null, !1568}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1259, file: !59, line: 428, baseType: !1676, size: 64, offset: 704)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1036, !1679, !1701}
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !59, line: 373, size: 384, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1688, !1689, !1690, !1691}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1680, file: !59, line: 374, baseType: !497, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1680, file: !59, line: 375, baseType: !537, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1680, file: !59, line: 376, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{null, !1679, !997}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1680, file: !59, line: 377, baseType: !93, size: 64, offset: 192)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1680, file: !59, line: 378, baseType: !98, size: 32, offset: 256)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1680, file: !59, line: 379, baseType: !149, size: 16, offset: 288)
!1691 = !DIDerivedType(tag: DW_TAG_member, scope: !1680, file: !59, line: 380, baseType: !1692, size: 64, offset: 320)
!1692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1680, file: !59, line: 380, size: 64, elements: !1693)
!1693 = !{!1694, !1697}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1692, file: !59, line: 386, baseType: !1695, size: 64)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !59, line: 386, flags: DIFlagFwdDecl)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1692, file: !59, line: 395, baseType: !1698, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!1036, !93}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !59, line: 69, flags: DIFlagFwdDecl)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1259, file: !59, line: 433, baseType: !1704, size: 64, offset: 768)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!98, !1245, !1568, !1568, !45}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1259, file: !59, line: 435, baseType: !1708, size: 64, offset: 832)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!98, !1568}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1259, file: !59, line: 436, baseType: !1712, size: 64, offset: 896)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!725, !1568, !1039, !1039}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1259, file: !59, line: 438, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{null, !1568, !1719, !1719}
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1259, file: !59, line: 439, baseType: !1721, size: 64, offset: 1024)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!98, !1245, !1265}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1259, file: !59, line: 442, baseType: !1725, size: 64, offset: 1088)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!98, !1728, !497, !1730}
!1728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1729, size: 64)
!1729 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !59, line: 66, flags: DIFlagFwdDecl)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1259, file: !59, line: 444, baseType: !1732, size: 64, offset: 1152)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{null, !497}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1259, file: !59, line: 445, baseType: !1736, size: 64, offset: 1216)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!98, !1679, !1701}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1246, file: !59, line: 486, baseType: !94, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1246, file: !59, line: 487, baseType: !666, size: 320, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1246, file: !59, line: 488, baseType: !1742, size: 32, offset: 1280)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1743, line: 8, baseType: !112)
!1743 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1246, file: !59, line: 489, baseType: !479, size: 32, offset: 1312)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1246, file: !59, line: 490, baseType: !185, size: 128, offset: 1344)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1246, file: !59, line: 491, baseType: !93, size: 64, offset: 1472)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1236, file: !1205, line: 180, baseType: !1748, size: 64, offset: 320)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!1036, !497, !1147, !1235, !736, !537, !1039}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1236, file: !1205, line: 182, baseType: !1748, size: 64, offset: 384)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1236, file: !1205, line: 184, baseType: !1753, size: 64, offset: 448)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!98, !497, !1147, !1235, !1385}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1224, file: !1205, line: 90, baseType: !1757, size: 64, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1224, file: !1205, line: 91, baseType: !1759, size: 64, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1195, file: !1142, line: 120, baseType: !1761, size: 64, offset: 192)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!1764, !1165}
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1766)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !53, line: 39, size: 384, elements: !1767)
!1767 = !{!1768, !1769, !1773, !1777, !1785, !1789}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !53, line: 40, baseType: !52, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1766, file: !53, line: 41, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DISubroutineType(types: !1772)
!1772 = !{!725}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1766, file: !53, line: 42, baseType: !1774, size: 64, offset: 128)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!93}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1766, file: !53, line: 43, baseType: !1778, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DISubroutineType(types: !1780)
!1780 = !{!1781, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !53, line: 19, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1766, file: !53, line: 44, baseType: !1786, size: 64, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DISubroutineType(types: !1788)
!1788 = !{!1781}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1766, file: !53, line: 45, baseType: !914, size: 64, offset: 320)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1195, file: !1142, line: 121, baseType: !1791, size: 64, offset: 256)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!1781, !1165}
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1195, file: !1142, line: 122, baseType: !1795, size: 64, offset: 320)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{null, !1165, !1798, !1799}
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1141, file: !1142, line: 70, baseType: !1801, size: 64, offset: 384)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1803, line: 190, size: 1152, elements: !1804)
!1803 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1927, !1928, !1929, !1930, !1931, !1934}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1802, file: !1803, line: 191, baseType: !125, size: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1802, file: !1803, line: 192, baseType: !125, size: 32, offset: 32)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1802, file: !1803, line: 202, baseType: !1801, size: 64, offset: 64)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1802, file: !1803, line: 203, baseType: !95, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1802, file: !1803, line: 205, baseType: !172, size: 192, align: 64, offset: 192)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1802, file: !1803, line: 207, baseType: !1781, size: 64, offset: 384)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1802, file: !1803, line: 208, baseType: !7, size: 32, offset: 448)
!1812 = !DIDerivedType(tag: DW_TAG_member, scope: !1802, file: !1803, line: 209, baseType: !1813, size: 256, offset: 512)
!1813 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1802, file: !1803, line: 209, size: 256, elements: !1814)
!1814 = !{!1815, !1824, !1828}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1813, file: !1803, line: 210, baseType: !1816, size: 256)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1803, line: 153, size: 256, elements: !1817)
!1817 = !{!1818, !1819, !1820, !1823}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1816, file: !1803, line: 154, baseType: !94, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1816, file: !1803, line: 156, baseType: !347, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1816, file: !1803, line: 162, baseType: !1821, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1803, line: 162, flags: DIFlagFwdDecl)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1816, file: !1803, line: 167, baseType: !94, size: 64, offset: 192)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1813, file: !1803, line: 211, baseType: !1825, size: 64)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1803, line: 170, size: 64, elements: !1826)
!1826 = !{!1827}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1825, file: !1803, line: 171, baseType: !1801, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1813, file: !1803, line: 212, baseType: !1829, size: 256)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1803, line: 174, size: 256, elements: !1830)
!1830 = !{!1831, !1922, !1925, !1926}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1829, file: !1803, line: 175, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1834)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1803, line: 271, size: 768, elements: !1835)
!1835 = !{!1836, !1895, !1899, !1900, !1901, !1902, !1903, !1907, !1908, !1909, !1910, !1918}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1834, file: !1803, line: 276, baseType: !1837, size: 64)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DISubroutineType(types: !1839)
!1839 = !{!98, !1840}
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1803, line: 251, size: 1216, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1841, file: !1803, line: 253, baseType: !1801, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1841, file: !1803, line: 254, baseType: !497, size: 64, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1841, file: !1803, line: 255, baseType: !1846, size: 64, offset: 128)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !1848, line: 17, size: 960, elements: !1849)
!1848 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!1849 = !{!1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1880, !1881, !1884}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1847, file: !1848, line: 18, baseType: !736, size: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1847, file: !1848, line: 19, baseType: !1039, size: 64, offset: 64)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !1847, file: !1848, line: 20, baseType: !1039, size: 64, offset: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1847, file: !1848, line: 21, baseType: !1039, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !1847, file: !1848, line: 22, baseType: !1039, size: 64, offset: 256)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1847, file: !1848, line: 23, baseType: !537, size: 64, offset: 320)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !1847, file: !1848, line: 24, baseType: !537, size: 64, offset: 384)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1847, file: !1848, line: 25, baseType: !525, size: 256, offset: 448)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1847, file: !1848, line: 26, baseType: !1859, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !1848, line: 32, size: 256, elements: !1862)
!1862 = !{!1863, !1868, !1872, !1876}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1861, file: !1848, line: 33, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!93, !1846, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !1861, file: !1848, line: 34, baseType: !1869, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{null, !1846, !93}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1861, file: !1848, line: 35, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!93, !1846, !93, !1867}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1861, file: !1848, line: 36, baseType: !1877, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!98, !1846, !93}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !1847, file: !1848, line: 27, baseType: !98, size: 32, offset: 768)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1847, file: !1848, line: 28, baseType: !1882, size: 64, offset: 832)
!1882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1847, file: !1848, line: 29, baseType: !93, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1841, file: !1803, line: 256, baseType: !93, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1841, file: !1803, line: 259, baseType: !525, size: 256, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1841, file: !1803, line: 260, baseType: !525, size: 256, offset: 512)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1841, file: !1803, line: 261, baseType: !98, size: 32, offset: 768)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1841, file: !1803, line: 262, baseType: !185, size: 128, offset: 832)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1841, file: !1803, line: 263, baseType: !736, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1841, file: !1803, line: 265, baseType: !1039, size: 64, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1841, file: !1803, line: 266, baseType: !725, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1841, file: !1803, line: 267, baseType: !725, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1841, file: !1803, line: 268, baseType: !1430, size: 64, offset: 1152)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1834, file: !1803, line: 277, baseType: !1896, size: 64, offset: 64)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !1840}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1834, file: !1803, line: 290, baseType: !1877, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1834, file: !1803, line: 292, baseType: !1864, size: 64, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1834, file: !1803, line: 293, baseType: !1873, size: 64, offset: 256)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1834, file: !1803, line: 294, baseType: !1869, size: 64, offset: 320)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1834, file: !1803, line: 296, baseType: !1904, size: 64, offset: 384)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!1036, !1840, !736, !1039, !537}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1834, file: !1803, line: 306, baseType: !1039, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1834, file: !1803, line: 313, baseType: !725, size: 8, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1834, file: !1803, line: 314, baseType: !1904, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1834, file: !1803, line: 317, baseType: !1911, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!1914, !1840, !1916}
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1915, line: 59, baseType: !7)
!1915 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !59, line: 61, flags: DIFlagFwdDecl)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1834, file: !1803, line: 320, baseType: !1919, size: 64, offset: 704)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!98, !1840, !1385}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1829, file: !1803, line: 176, baseType: !1923, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1803, line: 35, flags: DIFlagFwdDecl)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1829, file: !1803, line: 177, baseType: !537, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1829, file: !1803, line: 178, baseType: !1801, size: 64, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1802, file: !1803, line: 215, baseType: !93, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1802, file: !1803, line: 221, baseType: !180, size: 64, offset: 832)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1802, file: !1803, line: 223, baseType: !151, size: 16, offset: 896)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1802, file: !1803, line: 224, baseType: !886, size: 16, offset: 912)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1802, file: !1803, line: 225, baseType: !1932, size: 64, offset: 960)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1803, line: 36, flags: DIFlagFwdDecl)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1802, file: !1803, line: 227, baseType: !505, size: 128, align: 64, offset: 1024)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1141, file: !1142, line: 71, baseType: !1936, size: 32, offset: 448)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1937, line: 19, size: 32, elements: !1938)
!1937 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1936, file: !1937, line: 20, baseType: !120, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1141, file: !1142, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1141, file: !1142, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1141, file: !1142, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1141, file: !1142, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1141, file: !1142, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1138, file: !15, line: 47, baseType: !1128, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1138, file: !15, line: 48, baseType: !1147, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1138, file: !15, line: 49, baseType: !1948, size: 64, offset: 640)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1138, file: !15, line: 50, baseType: !1951, size: 64, offset: 704)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1129, file: !15, line: 418, baseType: !1953, size: 64, offset: 1408)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1955)
!1955 = !{!1956, !1957, !1962, !1966, !1970, !1974}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1954, file: !15, line: 54, baseType: !1212, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1954, file: !15, line: 55, baseType: !1958, size: 64, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1036, !1953, !1961, !736}
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1954, file: !15, line: 57, baseType: !1963, size: 64, offset: 192)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1036, !1953, !1961, !95, !1039}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1954, file: !15, line: 59, baseType: !1967, size: 64, offset: 256)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !1128, !95}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1954, file: !15, line: 60, baseType: !1971, size: 64, offset: 320)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!98, !1128}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1954, file: !15, line: 61, baseType: !1975, size: 64, offset: 384)
!1975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1976, size: 64)
!1976 = !DISubroutineType(types: !1977)
!1977 = !{null, !1128}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1129, file: !15, line: 419, baseType: !95, size: 64, offset: 1472)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1129, file: !15, line: 420, baseType: !95, size: 64, offset: 1536)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1129, file: !15, line: 421, baseType: !1147, size: 64, offset: 1600)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1129, file: !15, line: 424, baseType: !1982, size: 64, offset: 1664)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1984)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1129, file: !15, line: 425, baseType: !1986, size: 64, offset: 1728)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !658)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1129, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1129, file: !15, line: 435, baseType: !525, size: 256, offset: 1856)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1129, file: !15, line: 437, baseType: !1991, size: 64, offset: 2112)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1993, line: 69, size: 320, elements: !1994)
!1993 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1994 = !{!1995, !1996, !1997, !2014, !2016, !2020, !2021}
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1992, file: !1993, line: 70, baseType: !95, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1992, file: !1993, line: 71, baseType: !1128, size: 64, offset: 64)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1992, file: !1993, line: 72, baseType: !1998, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2000)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1993, line: 47, size: 256, elements: !2001)
!2001 = !{!2002, !2003, !2009, !2013}
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2000, file: !1993, line: 49, baseType: !7, size: 32)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2000, file: !1993, line: 51, baseType: !2004, size: 64, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!98, !95, !2007}
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2008, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1992)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2000, file: !1993, line: 53, baseType: !2010, size: 64, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2011, size: 64)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!98, !736, !2007}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2000, file: !1993, line: 55, baseType: !914, size: 64, offset: 192)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1992, file: !1993, line: 73, baseType: !2015, size: 16, offset: 192)
!2015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1992, file: !1993, line: 74, baseType: !2017, size: 8, offset: 208)
!2017 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !113, line: 16, baseType: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !115, line: 20, baseType: !2019)
!2019 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1992, file: !1993, line: 75, baseType: !295, size: 8, offset: 216)
!2021 = !DIDerivedType(tag: DW_TAG_member, scope: !1992, file: !1993, line: 76, baseType: !2022, size: 64, offset: 256)
!2022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1992, file: !1993, line: 76, size: 64, elements: !2023)
!2023 = !{!2024, !2025, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2022, file: !1993, line: 77, baseType: !93, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2022, file: !1993, line: 78, baseType: !2026, size: 64)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1993, line: 86, size: 128, elements: !2029)
!2029 = !{!2030, !2031}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2028, file: !1993, line: 87, baseType: !7, size: 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2028, file: !1993, line: 88, baseType: !736, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2022, file: !1993, line: 79, baseType: !2033, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2035)
!2035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1993, line: 92, size: 256, elements: !2036)
!2036 = !{!2037, !2038, !2039, !2041, !2042}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2035, file: !1993, line: 94, baseType: !7, size: 32)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2035, file: !1993, line: 95, baseType: !7, size: 32, offset: 32)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2035, file: !1993, line: 96, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2035, file: !1993, line: 97, baseType: !1998, size: 64, offset: 128)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2035, file: !1993, line: 98, baseType: !93, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1129, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1129, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1129, file: !15, line: 442, baseType: !1982, size: 64, offset: 2240)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1129, file: !15, line: 443, baseType: !1986, size: 64, offset: 2304)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1129, file: !15, line: 444, baseType: !725, size: 8, offset: 2368)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1129, file: !15, line: 451, baseType: !725, size: 8, offset: 2376)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1129, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1129, file: !15, line: 455, baseType: !2051, size: 64, offset: 2432)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !2053, line: 23, size: 96, elements: !2054)
!2053 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!2054 = !{!2055, !2056, !2057}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !2052, file: !2053, line: 24, baseType: !98, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2052, file: !2053, line: 24, baseType: !98, size: 32, offset: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2052, file: !2053, line: 24, baseType: !98, size: 32, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1129, file: !15, line: 458, baseType: !2059, size: 64, offset: 2496)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!98}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1129, file: !15, line: 460, baseType: !2063, size: 4032, align: 512, offset: 2560)
!2063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2064, size: 4032, elements: !2080)
!2064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !2065)
!2065 = !{!2066, !2067, !2068}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2064, file: !15, line: 363, baseType: !93, size: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2064, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !2064, file: !15, line: 367, baseType: !2069, size: 448, offset: 128)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !2070)
!2070 = !{!2071, !2072}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2069, file: !15, line: 320, baseType: !1128, size: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2069, file: !15, line: 321, baseType: !2073, size: 384, offset: 64)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !2074, line: 40, size: 384, elements: !2075)
!2074 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!2075 = !{!2076}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2073, file: !2074, line: 41, baseType: !2077, size: 384, align: 64)
!2077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 384, align: 64, elements: !2078)
!2078 = !{!2079}
!2079 = !DISubrange(count: 2)
!2080 = !{!2081}
!2081 = !DISubrange(count: 7)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1129, file: !15, line: 463, baseType: !2083, size: 192, offset: 6592)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !2084, line: 8, size: 192, elements: !2085)
!2084 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!2085 = !{!2086, !2087, !2089}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !2083, file: !2084, line: 10, baseType: !7, size: 32)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !2083, file: !2084, line: 11, baseType: !2088, size: 64, offset: 64)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !2083, file: !2084, line: 12, baseType: !2090, size: 64, offset: 128)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !2092, line: 59, size: 48, elements: !2093)
!2092 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!2093 = !{!2094, !2097, !2098, !2099, !2100, !2101}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !2091, file: !2092, line: 60, baseType: !2095, size: 16)
!2095 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !113, line: 18, baseType: !2096)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !115, line: 23, baseType: !694)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !2091, file: !2092, line: 61, baseType: !2095, size: 16, offset: 16)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !2091, file: !2092, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !2091, file: !2092, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2091, file: !2092, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2091, file: !2092, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1129, file: !15, line: 465, baseType: !94, size: 64, offset: 6784)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1129, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1129, file: !15, line: 470, baseType: !185, size: 128, offset: 6912)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1129, file: !15, line: 471, baseType: !2106, size: 64, offset: 7040)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !2108, line: 33, size: 96, elements: !2109)
!2108 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!2109 = !{!2110, !2111, !2112, !2113}
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !2107, file: !2108, line: 37, baseType: !98, size: 32)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !2107, file: !2108, line: 43, baseType: !98, size: 32, offset: 32)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2107, file: !2108, line: 45, baseType: !151, size: 16, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2107, file: !2108, line: 47, baseType: !151, size: 16, offset: 80)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1129, file: !15, line: 476, baseType: !2115, size: 64, offset: 7104)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !2117)
!2117 = !{!2118, !2134, !2135, !2136}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2116, file: !15, line: 379, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !2121, line: 204, baseType: !2122)
!2121 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!2122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !2121, line: 197, size: 192, elements: !2123)
!2123 = !{!2124, !2126, !2127, !2128, !2130, !2132}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !2122, file: !2121, line: 198, baseType: !2125, size: 32)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !2121, line: 21, baseType: !114)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !2122, file: !2121, line: 199, baseType: !297, size: 8, offset: 32)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !2122, file: !2121, line: 200, baseType: !297, size: 8, offset: 40)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !2122, file: !2121, line: 201, baseType: !2129, size: 16, offset: 48)
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !2121, line: 17, baseType: !150)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !2122, file: !2121, line: 202, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !2121, line: 16, baseType: !181)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2122, file: !2121, line: 203, baseType: !2133, size: 64, offset: 128)
!2133 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !2121, line: 22, baseType: !181)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !2116, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !2116, file: !15, line: 381, baseType: !736, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !2116, file: !15, line: 382, baseType: !736, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1129, file: !15, line: 477, baseType: !2116, size: 256, offset: 7168)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1129, file: !15, line: 480, baseType: !2139, size: 64, offset: 7424)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1129, file: !15, line: 483, baseType: !2142, size: 64, offset: 7488)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1129, file: !15, line: 488, baseType: !736, size: 64, offset: 7552)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1129, file: !15, line: 492, baseType: !93, size: 64, offset: 7616)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1129, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1129, file: !15, line: 495, baseType: !93, size: 64, offset: 7744)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1129, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1129, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1129, file: !15, line: 500, baseType: !2151, size: 64, offset: 7872)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !2153, line: 45, baseType: !2154)
!2153 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!2154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1129, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1129, file: !15, line: 504, baseType: !2157, size: 64, offset: 8000)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2160, line: 96, size: 192, elements: !2161)
!2160 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2161 = !{!2162, !2163, !2228, !2231}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2159, file: !2160, line: 97, baseType: !7, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2159, file: !2160, line: 98, baseType: !2164, size: 64, offset: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2160, line: 24, size: 3072, elements: !2166)
!2166 = !{!2167, !2169, !2170, !2171, !2172, !2186, !2187, !2188, !2189, !2201, !2213, !2214, !2225, !2226, !2227}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2165, file: !2160, line: 26, baseType: !2168, size: 128)
!2168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !518, size: 128, elements: !2078)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2165, file: !2160, line: 27, baseType: !2168, size: 128, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2165, file: !2160, line: 28, baseType: !98, size: 32, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2165, file: !2160, line: 31, baseType: !479, size: 32, align: 512, offset: 512)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2165, file: !2160, line: 32, baseType: !2173, size: 960, offset: 576)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2174, line: 206, size: 960, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2175 = !{!2176, !2177, !2180, !2182, !2183, !2185}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2173, file: !2174, line: 207, baseType: !508, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2173, file: !2174, line: 208, baseType: !2178, size: 256, offset: 64)
!2178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2179, size: 256, elements: !584)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2173, file: !2174, line: 209, baseType: !2181, size: 256, offset: 320)
!2181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !584)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2173, file: !2174, line: 213, baseType: !997, size: 64, offset: 576)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2173, file: !2174, line: 215, baseType: !2184, size: 256, offset: 640)
!2184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !997, size: 256, elements: !584)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2173, file: !2174, line: 216, baseType: !295, size: 8, offset: 896)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2165, file: !2160, line: 33, baseType: !94, size: 64, offset: 1536)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2165, file: !2160, line: 34, baseType: !94, size: 64, offset: 1600)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2165, file: !2160, line: 35, baseType: !725, size: 8, offset: 1664)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2165, file: !2160, line: 36, baseType: !2190, size: 320, offset: 1728)
!2190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2191, line: 11, size: 320, elements: !2192)
!2191 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2192 = !{!2193, !2194, !2195, !2200}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2190, file: !2191, line: 16, baseType: !579, size: 128)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2190, file: !2191, line: 17, baseType: !94, size: 64, offset: 128)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2190, file: !2191, line: 18, baseType: !2196, size: 64, offset: 192)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !2199}
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2190, file: !2191, line: 19, baseType: !112, size: 32, offset: 256)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2165, file: !2160, line: 37, baseType: !2202, size: 256, offset: 2048)
!2202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !2203, line: 98, size: 256, elements: !2204)
!2203 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2202, file: !2203, line: 99, baseType: !518, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2202, file: !2203, line: 100, baseType: !185, size: 128, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2202, file: !2203, line: 101, baseType: !2208, size: 64, offset: 192)
!2208 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !2203, line: 21, baseType: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{null, !2212}
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2165, file: !2160, line: 38, baseType: !505, size: 128, align: 64, offset: 2304)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2165, file: !2160, line: 39, baseType: !2215, size: 64, offset: 2432)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2160, line: 49, size: 768, elements: !2217)
!2217 = !{!2218, !2219, !2220, !2221, !2222, !2223, !2224}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2216, file: !2160, line: 50, baseType: !479, size: 32)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2216, file: !2160, line: 51, baseType: !2181, size: 256, offset: 64)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2216, file: !2160, line: 53, baseType: !2181, size: 256, offset: 320)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2216, file: !2160, line: 54, baseType: !94, size: 64, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2216, file: !2160, line: 55, baseType: !2215, size: 64, offset: 640)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2216, file: !2160, line: 56, baseType: !98, size: 32, offset: 704)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2216, file: !2160, line: 57, baseType: !98, size: 32, offset: 736)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2165, file: !2160, line: 40, baseType: !94, size: 64, offset: 2496)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2165, file: !2160, line: 42, baseType: !98, size: 32, offset: 2560)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2165, file: !2160, line: 43, baseType: !2158, size: 64, offset: 2624)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2159, file: !2160, line: 99, baseType: !2229, offset: 128)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2230, line: 211, elements: !490)
!2230 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2159, file: !2160, line: 100, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2160, line: 63, size: 3008, elements: !2234)
!2234 = !{!2235, !2236, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2266}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2233, file: !2160, line: 64, baseType: !2215, size: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2233, file: !2160, line: 65, baseType: !2237, size: 192, offset: 64)
!2237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2215, size: 192, elements: !563)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2233, file: !2160, line: 67, baseType: !98, size: 32, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2233, file: !2160, line: 68, baseType: !525, size: 256, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2233, file: !2160, line: 69, baseType: !479, size: 32, offset: 576)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2233, file: !2160, line: 70, baseType: !525, size: 256, offset: 640)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2233, file: !2160, line: 71, baseType: !94, size: 64, offset: 896)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2233, file: !2160, line: 72, baseType: !94, size: 64, offset: 960)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2233, file: !2160, line: 73, baseType: !94, size: 64, offset: 1024)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2233, file: !2160, line: 74, baseType: !94, size: 64, offset: 1088)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2233, file: !2160, line: 75, baseType: !94, size: 64, offset: 1152)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2233, file: !2160, line: 76, baseType: !94, size: 64, offset: 1216)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2233, file: !2160, line: 77, baseType: !94, size: 64, offset: 1280)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2233, file: !2160, line: 78, baseType: !94, size: 64, offset: 1344)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2233, file: !2160, line: 79, baseType: !725, size: 8, offset: 1408)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2233, file: !2160, line: 80, baseType: !94, size: 64, offset: 1472)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2233, file: !2160, line: 81, baseType: !525, size: 256, offset: 1536)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2233, file: !2160, line: 82, baseType: !1350, size: 256, offset: 1792)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2233, file: !2160, line: 84, baseType: !125, size: 32, offset: 2048)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2233, file: !2160, line: 87, baseType: !94, size: 64, offset: 2112)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2233, file: !2160, line: 88, baseType: !94, size: 64, offset: 2176)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2233, file: !2160, line: 89, baseType: !2258, size: 704, offset: 2240)
!2258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !2203, line: 111, size: 704, elements: !2259)
!2259 = !{!2260, !2261, !2262, !2265}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2258, file: !2203, line: 112, baseType: !2202, size: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2258, file: !2203, line: 113, baseType: !2190, size: 320, offset: 256)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2258, file: !2203, line: 116, baseType: !2263, size: 64, offset: 576)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !2203, line: 18, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2258, file: !2203, line: 117, baseType: !98, size: 32, offset: 640)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2233, file: !2160, line: 90, baseType: !2158, size: 64, offset: 2944)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1129, file: !15, line: 515, baseType: !2268, size: 64, offset: 8064)
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2270, line: 117, size: 128, elements: !2271)
!2270 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2271 = !{!2272, !2273, !2274}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2269, file: !2270, line: 118, baseType: !658, size: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2269, file: !2270, line: 119, baseType: !658, size: 32, offset: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2269, file: !2270, line: 120, baseType: !997, size: 64, offset: 64)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1129, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1129, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1129, file: !15, line: 520, baseType: !2278, size: 64, offset: 8192)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1129, file: !15, line: 523, baseType: !2280, size: 64, offset: 8256)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1129, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1129, file: !15, line: 525, baseType: !2285, size: 64, offset: 8384)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !2288, line: 28, size: 192, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!2289 = !{!2290, !2291, !2292}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !2287, file: !2288, line: 29, baseType: !95, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !2287, file: !2288, line: 30, baseType: !95, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !2287, file: !2288, line: 31, baseType: !94, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1129, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1129, file: !15, line: 533, baseType: !93, size: 64, offset: 8512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1129, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1129, file: !15, line: 535, baseType: !99, size: 64, offset: 8640)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1129, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1129, file: !15, line: 539, baseType: !98, size: 32, offset: 8736)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1129, file: !15, line: 540, baseType: !2300, size: 64, offset: 8768)
!2300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2301, size: 64)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2302, line: 32, size: 64, elements: !2303)
!2302 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2303 = !{!2304, !2305}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2301, file: !2302, line: 33, baseType: !658, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2301, file: !2302, line: 34, baseType: !658, size: 32, offset: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1129, file: !15, line: 563, baseType: !185, size: 128, offset: 8832)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1129, file: !15, line: 565, baseType: !185, size: 128, offset: 8960)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1129, file: !15, line: 568, baseType: !2309, size: 64, offset: 9088)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1129, file: !15, line: 570, baseType: !125, size: 32, offset: 9152)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1105, file: !59, line: 2382, baseType: !1104, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !1105, file: !59, line: 2383, baseType: !575, size: 64, offset: 512)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !1105, file: !59, line: 2385, baseType: !2316, offset: 576)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2230, line: 206, elements: !490)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !1105, file: !59, line: 2386, baseType: !2316, offset: 576)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !1105, file: !59, line: 2387, baseType: !2316, offset: 576)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !1105, file: !59, line: 2388, baseType: !2320, offset: 576)
!2320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2316, elements: !563)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !1105, file: !59, line: 2390, baseType: !2316, offset: 576)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !1105, file: !59, line: 2391, baseType: !2316, offset: 576)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !1105, file: !59, line: 2392, baseType: !2316, offset: 576)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !1105, file: !59, line: 2393, baseType: !2316, offset: 576)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !1096, file: !59, line: 1197, baseType: !2326, size: 64, offset: 384)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2328)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !59, line: 2057, size: 1664, elements: !2329)
!2329 = !{!2330, !2334, !2338, !2339, !2343, !2347, !2351, !2352, !2353, !2357, !2361, !2365, !2366, !2367, !2373, !2377, !2378, !2382, !2383, !2384, !2385, !2389, !2393, !2440, !2455, !2456}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2328, file: !59, line: 2058, baseType: !2331, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = !DISubroutineType(types: !2333)
!2333 = !{!882, !1095}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2328, file: !59, line: 2059, baseType: !2335, size: 64, offset: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DISubroutineType(types: !2337)
!2337 = !{null, !882}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2328, file: !59, line: 2060, baseType: !2335, size: 64, offset: 128)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2328, file: !59, line: 2062, baseType: !2340, size: 64, offset: 192)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = !DISubroutineType(types: !2342)
!2342 = !{null, !882, !98}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2328, file: !59, line: 2063, baseType: !2344, size: 64, offset: 256)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!98, !882, !1562}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2328, file: !59, line: 2064, baseType: !2348, size: 64, offset: 320)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!98, !882}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2328, file: !59, line: 2065, baseType: !2335, size: 64, offset: 384)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2328, file: !59, line: 2066, baseType: !1124, size: 64, offset: 448)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2328, file: !59, line: 2067, baseType: !2354, size: 64, offset: 512)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!98, !1095, !98}
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2328, file: !59, line: 2068, baseType: !2358, size: 64, offset: 576)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!98, !1095, !58}
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2328, file: !59, line: 2069, baseType: !2362, size: 64, offset: 640)
!2362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2363, size: 64)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{!98, !1095}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2328, file: !59, line: 2070, baseType: !2358, size: 64, offset: 704)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2328, file: !59, line: 2071, baseType: !2362, size: 64, offset: 768)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2328, file: !59, line: 2072, baseType: !2368, size: 64, offset: 832)
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2369, size: 64)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{!98, !847, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2372, size: 64)
!2372 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !59, line: 62, flags: DIFlagFwdDecl)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2328, file: !59, line: 2073, baseType: !2374, size: 64, offset: 896)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!98, !1095, !2088, !736}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2328, file: !59, line: 2074, baseType: !1124, size: 64, offset: 960)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2328, file: !59, line: 2076, baseType: !2379, size: 64, offset: 1024)
!2379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2380, size: 64)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!98, !1846, !847}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2328, file: !59, line: 2077, baseType: !2379, size: 64, offset: 1088)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2328, file: !59, line: 2078, baseType: !2379, size: 64, offset: 1152)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2328, file: !59, line: 2079, baseType: !2379, size: 64, offset: 1216)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2328, file: !59, line: 2081, baseType: !2386, size: 64, offset: 1280)
!2386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2387, size: 64)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!1036, !1095, !98, !736, !1039, !537}
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2328, file: !59, line: 2082, baseType: !2390, size: 64, offset: 1344)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DISubroutineType(types: !2392)
!2392 = !{!1036, !1095, !98, !95, !1039, !537}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2328, file: !59, line: 2083, baseType: !2394, size: 64, offset: 1408)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!2397, !882}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !64, line: 296, size: 1664, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2425, !2426, !2427}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2399, file: !64, line: 297, baseType: !579, size: 128)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2399, file: !64, line: 298, baseType: !185, size: 128, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2399, file: !64, line: 299, baseType: !185, size: 128, offset: 256)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2399, file: !64, line: 300, baseType: !185, size: 128, offset: 384)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2399, file: !64, line: 301, baseType: !525, size: 256, offset: 512)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2399, file: !64, line: 302, baseType: !479, size: 32, offset: 768)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2399, file: !64, line: 303, baseType: !125, size: 32, offset: 800)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2399, file: !64, line: 304, baseType: !1095, size: 64, offset: 832)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2399, file: !64, line: 305, baseType: !2410, size: 64, offset: 896)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !64, line: 68, size: 64, elements: !2411)
!2411 = !{!2412, !2424}
!2412 = !DIDerivedType(tag: DW_TAG_member, scope: !2410, file: !64, line: 69, baseType: !2413, size: 32)
!2413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2410, file: !64, line: 69, size: 32, elements: !2414)
!2414 = !{!2415, !2416, !2417}
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2413, file: !64, line: 70, baseType: !607, size: 32)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2413, file: !64, line: 71, baseType: !625, size: 32)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2413, file: !64, line: 72, baseType: !2418, size: 32)
!2418 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2419, line: 24, baseType: !2420)
!2419 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2419, line: 22, size: 32, elements: !2421)
!2421 = !{!2422}
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2420, file: !2419, line: 23, baseType: !2423, size: 32)
!2423 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2419, line: 20, baseType: !613)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2410, file: !64, line: 74, baseType: !63, size: 32, offset: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2399, file: !64, line: 306, baseType: !537, size: 64, offset: 960)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2399, file: !64, line: 307, baseType: !94, size: 64, offset: 1024)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2399, file: !64, line: 308, baseType: !2428, size: 576, offset: 1088)
!2428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !64, line: 205, size: 576, elements: !2429)
!2429 = !{!2430, !2432, !2433, !2434, !2435, !2436, !2437, !2438, !2439}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2428, file: !64, line: 206, baseType: !2431, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !64, line: 66, baseType: !198)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2428, file: !64, line: 207, baseType: !2431, size: 64, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2428, file: !64, line: 208, baseType: !2431, size: 64, offset: 128)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2428, file: !64, line: 209, baseType: !2431, size: 64, offset: 192)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2428, file: !64, line: 210, baseType: !2431, size: 64, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2428, file: !64, line: 211, baseType: !2431, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2428, file: !64, line: 212, baseType: !2431, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2428, file: !64, line: 213, baseType: !682, size: 64, offset: 448)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2428, file: !64, line: 214, baseType: !682, size: 64, offset: 512)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2328, file: !59, line: 2085, baseType: !2441, size: 64, offset: 1472)
!2441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2442, size: 64)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!997, !1095, !2444}
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2446, line: 15, size: 256, elements: !2447)
!2446 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2447 = !{!2448, !2449, !2450, !2451, !2452}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2445, file: !2446, line: 16, baseType: !1091, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2445, file: !2446, line: 19, baseType: !98, size: 32, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2445, file: !2446, line: 26, baseType: !94, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2445, file: !2446, line: 33, baseType: !94, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2445, file: !2446, line: 36, baseType: !2453, size: 64, offset: 192)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2446, line: 36, flags: DIFlagFwdDecl)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2328, file: !59, line: 2087, baseType: !2441, size: 64, offset: 1536)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2328, file: !59, line: 2089, baseType: !1124, size: 64, offset: 1600)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !1096, file: !59, line: 1198, baseType: !2458, size: 64, offset: 448)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !64, line: 324, size: 704, elements: !2461)
!2461 = !{!2462, !2466, !2470, !2474, !2475, !2476, !2477, !2478, !2483, !2488, !2492}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2460, file: !64, line: 325, baseType: !2463, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!98, !2398}
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2460, file: !64, line: 326, baseType: !2467, size: 64, offset: 64)
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!2398, !1095, !98}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2460, file: !64, line: 327, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2472, size: 64)
!2472 = !DISubroutineType(types: !2473)
!2473 = !{null, !2398}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2460, file: !64, line: 328, baseType: !2463, size: 64, offset: 192)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2460, file: !64, line: 329, baseType: !2463, size: 64, offset: 256)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2460, file: !64, line: 330, baseType: !2463, size: 64, offset: 320)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2460, file: !64, line: 331, baseType: !2354, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2460, file: !64, line: 334, baseType: !2479, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{!2482, !882}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2431, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2460, file: !64, line: 335, baseType: !2484, size: 64, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!98, !882, !2487}
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2460, file: !64, line: 337, baseType: !2489, size: 64, offset: 576)
!2489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2490, size: 64)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{!98, !882, !2482}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2460, file: !64, line: 339, baseType: !2493, size: 64, offset: 640)
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2494, size: 64)
!2494 = !DISubroutineType(types: !2495)
!2495 = !{!98, !1095, !2496}
!2496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2410, size: 64)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !1096, file: !59, line: 1199, baseType: !2498, size: 64, offset: 512)
!2498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2499, size: 64)
!2499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2500)
!2500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !64, line: 430, size: 704, elements: !2501)
!2501 = !{!2502, !2506, !2507, !2511, !2512, !2513, !2528, !2551, !2555, !2556, !2579}
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2500, file: !64, line: 431, baseType: !2503, size: 64)
!2503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2504, size: 64)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!98, !1095, !98, !98, !1005}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2500, file: !64, line: 432, baseType: !2354, size: 64, offset: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2500, file: !64, line: 433, baseType: !2508, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{!98, !1095, !7}
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2500, file: !64, line: 434, baseType: !2508, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2500, file: !64, line: 435, baseType: !2354, size: 64, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2500, file: !64, line: 436, baseType: !2514, size: 64, offset: 320)
!2514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2515, size: 64)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!98, !1095, !98, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !64, line: 417, size: 256, elements: !2519)
!2519 = !{!2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2518, file: !64, line: 418, baseType: !98, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2518, file: !64, line: 419, baseType: !7, size: 32, offset: 32)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2518, file: !64, line: 420, baseType: !7, size: 32, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2518, file: !64, line: 422, baseType: !7, size: 32, offset: 96)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2518, file: !64, line: 423, baseType: !7, size: 32, offset: 128)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2518, file: !64, line: 424, baseType: !7, size: 32, offset: 160)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2518, file: !64, line: 425, baseType: !7, size: 32, offset: 192)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2518, file: !64, line: 426, baseType: !7, size: 32, offset: 224)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2500, file: !64, line: 437, baseType: !2529, size: 64, offset: 384)
!2529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2530, size: 64)
!2530 = !DISubroutineType(types: !2531)
!2531 = !{!98, !1095, !2410, !2532}
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !64, line: 345, size: 960, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2533, file: !64, line: 346, baseType: !98, size: 32)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2533, file: !64, line: 347, baseType: !180, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2533, file: !64, line: 348, baseType: !180, size: 64, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2533, file: !64, line: 349, baseType: !180, size: 64, offset: 192)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2533, file: !64, line: 350, baseType: !180, size: 64, offset: 256)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2533, file: !64, line: 351, baseType: !180, size: 64, offset: 320)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2533, file: !64, line: 352, baseType: !180, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2533, file: !64, line: 353, baseType: !196, size: 64, offset: 448)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2533, file: !64, line: 355, baseType: !196, size: 64, offset: 512)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2533, file: !64, line: 356, baseType: !98, size: 32, offset: 576)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2533, file: !64, line: 357, baseType: !98, size: 32, offset: 608)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2533, file: !64, line: 358, baseType: !180, size: 64, offset: 640)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2533, file: !64, line: 359, baseType: !180, size: 64, offset: 704)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2533, file: !64, line: 360, baseType: !180, size: 64, offset: 768)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2533, file: !64, line: 361, baseType: !196, size: 64, offset: 832)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2533, file: !64, line: 362, baseType: !98, size: 32, offset: 896)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2500, file: !64, line: 438, baseType: !2552, size: 64, offset: 448)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{!98, !1095, !2496, !2532}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2500, file: !64, line: 440, baseType: !2529, size: 64, offset: 512)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2500, file: !64, line: 441, baseType: !2557, size: 64, offset: 576)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!98, !1095, !2560}
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !64, line: 411, size: 1408, elements: !2562)
!2562 = !{!2563, !2564}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2561, file: !64, line: 412, baseType: !7, size: 32)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2561, file: !64, line: 413, baseType: !2565, size: 1344, offset: 64)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2566, size: 1344, elements: !563)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !64, line: 397, size: 448, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2578}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2566, file: !64, line: 398, baseType: !7, size: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2566, file: !64, line: 399, baseType: !7, size: 32, offset: 32)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2566, file: !64, line: 401, baseType: !7, size: 32, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2566, file: !64, line: 402, baseType: !7, size: 32, offset: 96)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2566, file: !64, line: 403, baseType: !7, size: 32, offset: 128)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2566, file: !64, line: 404, baseType: !7, size: 32, offset: 160)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2566, file: !64, line: 405, baseType: !7, size: 32, offset: 192)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2566, file: !64, line: 406, baseType: !182, size: 64, offset: 256)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2566, file: !64, line: 407, baseType: !2577, size: 64, offset: 320)
!2577 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !126, line: 132, baseType: !180)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2566, file: !64, line: 408, baseType: !2577, size: 64, offset: 384)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2500, file: !64, line: 442, baseType: !2508, size: 64, offset: 640)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !1096, file: !59, line: 1200, baseType: !2581, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2583)
!2583 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !59, line: 54, flags: DIFlagFwdDecl)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !1096, file: !59, line: 1201, baseType: !94, size: 64, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !1096, file: !59, line: 1202, baseType: !94, size: 64, offset: 704)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !1096, file: !59, line: 1203, baseType: !94, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !1096, file: !59, line: 1204, baseType: !847, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !1096, file: !59, line: 1205, baseType: !666, size: 320, offset: 896)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !1096, file: !59, line: 1206, baseType: !98, size: 32, offset: 1216)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !1096, file: !59, line: 1207, baseType: !125, size: 32, offset: 1248)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !1096, file: !59, line: 1209, baseType: !93, size: 64, offset: 1280)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !1096, file: !59, line: 1211, baseType: !2593, size: 64, offset: 1344)
!2593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2595, size: 64)
!2595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2596)
!2596 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !59, line: 1211, flags: DIFlagFwdDecl)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !1096, file: !59, line: 1223, baseType: !2598, size: 64, offset: 1408)
!2598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !859, line: 34, size: 64, elements: !2599)
!2599 = !{!2600}
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2598, file: !859, line: 35, baseType: !862, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !1096, file: !59, line: 1224, baseType: !185, size: 128, offset: 1472)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !1096, file: !59, line: 1225, baseType: !2603, size: 64, offset: 1600)
!2603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2604, size: 64)
!2604 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !59, line: 1225, flags: DIFlagFwdDecl)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !1096, file: !59, line: 1226, baseType: !2606, size: 64, offset: 1664)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !59, line: 1226, flags: DIFlagFwdDecl)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !1096, file: !59, line: 1227, baseType: !2609, size: 64, offset: 1728)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !59, line: 50, flags: DIFlagFwdDecl)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !1096, file: !59, line: 1228, baseType: !2612, size: 64, offset: 1792)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !59, line: 1228, flags: DIFlagFwdDecl)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !1096, file: !59, line: 1229, baseType: !579, size: 128, offset: 1856)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !1096, file: !59, line: 1230, baseType: !7, size: 32, offset: 1984)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !1096, file: !59, line: 1231, baseType: !2617, size: 2496, offset: 2048)
!2617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !64, line: 521, size: 2496, elements: !2618)
!2618 = !{!2619, !2620, !2621, !2623, !2655}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2617, file: !64, line: 522, baseType: !7, size: 32)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2617, file: !64, line: 523, baseType: !666, size: 320, offset: 64)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2617, file: !64, line: 524, baseType: !2622, size: 192, offset: 384)
!2622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !882, size: 192, elements: !563)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2617, file: !64, line: 525, baseType: !2624, size: 1728, offset: 576)
!2624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2625, size: 1728, elements: !563)
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !64, line: 222, size: 576, elements: !2626)
!2626 = !{!2627, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654}
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2625, file: !64, line: 223, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !64, line: 445, size: 256, elements: !2630)
!2630 = !{!2631, !2632, !2645, !2646}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2629, file: !64, line: 446, baseType: !98, size: 32)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2629, file: !64, line: 447, baseType: !2633, size: 64, offset: 64)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2635)
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !64, line: 312, size: 512, elements: !2636)
!2636 = !{!2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2635, file: !64, line: 313, baseType: !2354, size: 64)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2635, file: !64, line: 314, baseType: !2354, size: 64, offset: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2635, file: !64, line: 315, baseType: !2354, size: 64, offset: 128)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2635, file: !64, line: 316, baseType: !2354, size: 64, offset: 192)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2635, file: !64, line: 317, baseType: !2463, size: 64, offset: 256)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2635, file: !64, line: 318, baseType: !2463, size: 64, offset: 320)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2635, file: !64, line: 319, baseType: !2463, size: 64, offset: 384)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2635, file: !64, line: 320, baseType: !2493, size: 64, offset: 448)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2629, file: !64, line: 448, baseType: !1128, size: 64, offset: 128)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2629, file: !64, line: 449, baseType: !2628, size: 64, offset: 192)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2625, file: !64, line: 224, baseType: !98, size: 32, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2625, file: !64, line: 226, baseType: !185, size: 128, offset: 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2625, file: !64, line: 227, baseType: !94, size: 64, offset: 256)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2625, file: !64, line: 228, baseType: !7, size: 32, offset: 320)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2625, file: !64, line: 229, baseType: !7, size: 32, offset: 352)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2625, file: !64, line: 230, baseType: !2431, size: 64, offset: 384)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2625, file: !64, line: 231, baseType: !2431, size: 64, offset: 448)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2625, file: !64, line: 232, baseType: !93, size: 64, offset: 512)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2617, file: !64, line: 526, baseType: !2656, size: 192, offset: 2304)
!2656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2633, size: 192, elements: !563)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !1096, file: !59, line: 1233, baseType: !2658, size: 2368, offset: 4544)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !59, line: 1184, size: 2368, elements: !2659)
!2659 = !{!2660, !2661, !2662}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2658, file: !59, line: 1185, baseType: !151, size: 16)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2658, file: !59, line: 1186, baseType: !151, size: 16, offset: 16)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2658, file: !59, line: 1187, baseType: !2663, size: 2304, offset: 64)
!2663 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2664, size: 2304, elements: !563)
!2664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2665, line: 12, size: 768, elements: !2666)
!2665 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2666 = !{!2667, !2675, !2676, !2681, !2682}
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2664, file: !2665, line: 13, baseType: !2668, size: 384)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2669, line: 17, size: 384, elements: !2670)
!2669 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2670 = !{!2671, !2672, !2673, !2674}
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2668, file: !2669, line: 18, baseType: !98, size: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2668, file: !2669, line: 19, baseType: !98, size: 32, offset: 32)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2668, file: !2669, line: 20, baseType: !588, size: 192, offset: 64)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2668, file: !2669, line: 22, baseType: !505, size: 128, align: 64, offset: 256)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2664, file: !2665, line: 14, baseType: !2040, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2664, file: !2665, line: 15, baseType: !2677, size: 64, offset: 448)
!2677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2678, line: 16, size: 64, elements: !2679)
!2678 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2679 = !{!2680}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2677, file: !2678, line: 17, baseType: !101, size: 64)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2664, file: !2665, line: 16, baseType: !588, size: 192, offset: 512)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2664, file: !2665, line: 17, baseType: !125, size: 32, offset: 704)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !1096, file: !59, line: 1240, baseType: !93, size: 64, offset: 6912)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !1096, file: !59, line: 1243, baseType: !112, size: 32, offset: 6976)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !1096, file: !59, line: 1245, baseType: !682, size: 64, offset: 7040)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !1096, file: !59, line: 1246, baseType: !682, size: 64, offset: 7104)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !1096, file: !59, line: 1248, baseType: !114, size: 32, offset: 7168)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !1096, file: !59, line: 1249, baseType: !2689, size: 64, offset: 7232)
!2689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2690, size: 64)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !59, line: 634, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !1096, file: !59, line: 1252, baseType: !2692, size: 256, offset: 7296)
!2692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 256, elements: !2693)
!2693 = !{!2694}
!2694 = !DISubrange(count: 32)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !1096, file: !59, line: 1253, baseType: !2696, size: 128, offset: 7552)
!2696 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !2697, line: 21, baseType: !2698)
!2697 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2697, line: 19, size: 128, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2698, file: !2697, line: 20, baseType: !2701, size: 128)
!2701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !2702)
!2702 = !{!2703}
!2703 = !DISubrange(count: 16)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !1096, file: !59, line: 1255, baseType: !7, size: 32, offset: 7680)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !1096, file: !59, line: 1261, baseType: !525, size: 256, offset: 7744)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !1096, file: !59, line: 1267, baseType: !95, size: 64, offset: 8000)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !1096, file: !59, line: 1269, baseType: !2708, size: 64, offset: 8064)
!2708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2709, size: 64)
!2709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2710)
!2710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !849, line: 128, size: 1024, align: 512, elements: !2711)
!2711 = !{!2712, !2716, !2717, !2724, !2730, !2734, !2738, !2742, !2743, !2747, !2751, !2756, !2760}
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !2710, file: !849, line: 129, baseType: !2713, size: 64)
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DISubroutineType(types: !2715)
!2715 = !{!98, !847, !7}
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !2710, file: !849, line: 130, baseType: !2713, size: 64, offset: 64)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !2710, file: !849, line: 131, baseType: !2718, size: 64, offset: 128)
!2718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2719, size: 64)
!2719 = !DISubroutineType(types: !2720)
!2720 = !{!98, !2721, !2723}
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2722, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !2710, file: !849, line: 132, baseType: !2725, size: 64, offset: 192)
!2725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2726, size: 64)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!98, !2721, !7, !95, !2728}
!2728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2729, size: 64)
!2729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !867)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !2710, file: !849, line: 134, baseType: !2731, size: 64, offset: 256)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!98, !2721}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !2710, file: !849, line: 135, baseType: !2735, size: 64, offset: 320)
!2735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2736, size: 64)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!98, !847}
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !2710, file: !849, line: 136, baseType: !2739, size: 64, offset: 384)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DISubroutineType(types: !2741)
!2741 = !{null, !847}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !2710, file: !849, line: 137, baseType: !2739, size: 64, offset: 448)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !2710, file: !849, line: 138, baseType: !2744, size: 64, offset: 512)
!2744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2745, size: 64)
!2745 = !DISubroutineType(types: !2746)
!2746 = !{null, !847, !882}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !2710, file: !849, line: 139, baseType: !2748, size: 64, offset: 576)
!2748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2749, size: 64)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!736, !847, !736, !98}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !2710, file: !849, line: 140, baseType: !2752, size: 64, offset: 640)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!842, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !2710, file: !849, line: 141, baseType: !2757, size: 64, offset: 704)
!2757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2758, size: 64)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!98, !1005, !725}
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !2710, file: !849, line: 142, baseType: !2761, size: 64, offset: 768)
!2761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2762, size: 64)
!2762 = !DISubroutineType(types: !2763)
!2763 = !{!847, !847, !2764}
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !883)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !1096, file: !59, line: 1271, baseType: !2767, size: 448, offset: 8128)
!2767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2446, line: 63, size: 448, elements: !2768)
!2768 = !{!2769, !2774, !2775, !2776, !2777, !2778, !2779}
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !2767, file: !2446, line: 64, baseType: !2770, size: 64)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DISubroutineType(types: !2772)
!2772 = !{!94, !2773, !2444}
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2767, size: 64)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !2767, file: !2446, line: 66, baseType: !2770, size: 64, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !2767, file: !2446, line: 69, baseType: !997, size: 64, offset: 128)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !2767, file: !2446, line: 70, baseType: !98, size: 32, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2767, file: !2446, line: 71, baseType: !7, size: 32, offset: 224)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2767, file: !2446, line: 74, baseType: !185, size: 128, offset: 256)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !2767, file: !2446, line: 85, baseType: !2780, size: 64, offset: 384)
!2780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !1096, file: !59, line: 1274, baseType: !518, size: 64, offset: 8576)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !1096, file: !59, line: 1280, baseType: !518, size: 64, offset: 8640)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !1096, file: !59, line: 1283, baseType: !98, size: 32, offset: 8704)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !1096, file: !59, line: 1286, baseType: !1742, size: 32, offset: 8736)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !1096, file: !59, line: 1289, baseType: !2263, size: 64, offset: 8768)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !1096, file: !59, line: 1290, baseType: !575, size: 64, offset: 8832)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !1096, file: !59, line: 1297, baseType: !809, size: 64, offset: 8896)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !1096, file: !59, line: 1304, baseType: !2789, size: 64, offset: 8960)
!2789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !2790, line: 49, size: 64, elements: !2791)
!2790 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!2791 = !{!2792}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2789, file: !2790, line: 50, baseType: !2793, size: 64)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !2790, line: 41, size: 512, align: 512, elements: !2795)
!2795 = !{!2796, !2797, !2802}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2794, file: !2790, line: 43, baseType: !479, size: 32)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !2794, file: !2790, line: 45, baseType: !2798, size: 192, offset: 64)
!2798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !2790, line: 29, size: 192, elements: !2799)
!2799 = !{!2800, !2801}
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2798, file: !2790, line: 30, baseType: !185, size: 128)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2798, file: !2790, line: 32, baseType: !997, size: 64, offset: 128)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !2794, file: !2790, line: 46, baseType: !997, size: 64, offset: 256)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !1096, file: !59, line: 1305, baseType: !2789, size: 64, offset: 9024)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1096, file: !59, line: 1306, baseType: !505, size: 128, align: 64, offset: 9088)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !1096, file: !59, line: 1307, baseType: !2202, size: 256, offset: 9216)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !1096, file: !59, line: 1309, baseType: !525, size: 256, offset: 9472)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !1096, file: !59, line: 1314, baseType: !98, size: 32, offset: 9728)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !1096, file: !59, line: 1317, baseType: !479, size: 32, align: 512, offset: 10240)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !1096, file: !59, line: 1318, baseType: !185, size: 128, offset: 10304)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !1096, file: !59, line: 1320, baseType: !479, size: 32, offset: 10432)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !1096, file: !59, line: 1321, baseType: !185, size: 128, offset: 10496)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !883, file: !59, line: 656, baseType: !1245, size: 64, offset: 512)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !883, file: !59, line: 659, baseType: !93, size: 64, offset: 576)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !883, file: !59, line: 663, baseType: !94, size: 64, offset: 640)
!2815 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !59, line: 671, baseType: !2816, size: 32, offset: 704)
!2816 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !59, line: 671, size: 32, elements: !2817)
!2817 = !{!2818, !2820}
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !2816, file: !59, line: 672, baseType: !2819, size: 32)
!2819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !2816, file: !59, line: 673, baseType: !7, size: 32)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !883, file: !59, line: 675, baseType: !957, size: 32, offset: 736)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !883, file: !59, line: 676, baseType: !537, size: 64, offset: 768)
!2823 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !883, file: !59, line: 677, baseType: !993, size: 128, offset: 832)
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !883, file: !59, line: 678, baseType: !993, size: 128, offset: 960)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !883, file: !59, line: 679, baseType: !993, size: 128, offset: 1088)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !883, file: !59, line: 680, baseType: !479, size: 32, offset: 1216)
!2827 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !883, file: !59, line: 681, baseType: !151, size: 16, offset: 1248)
!2828 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !883, file: !59, line: 682, baseType: !295, size: 8, offset: 1264)
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !883, file: !59, line: 683, baseType: !295, size: 8, offset: 1272)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !883, file: !59, line: 684, baseType: !2577, size: 64, offset: 1280)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !883, file: !59, line: 691, baseType: !94, size: 64, offset: 1344)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !883, file: !59, line: 692, baseType: !666, size: 320, offset: 1408)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !883, file: !59, line: 694, baseType: !94, size: 64, offset: 1728)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !883, file: !59, line: 695, baseType: !94, size: 64, offset: 1792)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !883, file: !59, line: 697, baseType: !579, size: 128, offset: 1856)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !883, file: !59, line: 698, baseType: !185, size: 128, offset: 1984)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !883, file: !59, line: 707, baseType: !185, size: 128, offset: 2112)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !883, file: !59, line: 708, baseType: !185, size: 128, offset: 2240)
!2839 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !59, line: 709, baseType: !2840, size: 128, offset: 2368)
!2840 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !59, line: 709, size: 128, elements: !2841)
!2841 = !{!2842, !2843}
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !2840, file: !59, line: 710, baseType: !575, size: 64)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !2840, file: !59, line: 711, baseType: !505, size: 128, align: 64)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !883, file: !59, line: 713, baseType: !520, size: 64, offset: 2496)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !883, file: !59, line: 714, baseType: !520, size: 64, offset: 2560)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !883, file: !59, line: 715, baseType: !125, size: 32, offset: 2624)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !883, file: !59, line: 716, baseType: !125, size: 32, offset: 2656)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !883, file: !59, line: 717, baseType: !125, size: 32, offset: 2688)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !883, file: !59, line: 719, baseType: !125, size: 32, offset: 2720)
!2850 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !59, line: 721, baseType: !2851, size: 64, offset: 2752)
!2851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !59, line: 721, size: 64, elements: !2852)
!2852 = !{!2853, !2979}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !2851, file: !59, line: 722, baseType: !2854, size: 64)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !59, line: 1914, size: 2112, elements: !2857)
!2857 = !{!2858, !2859, !2863, !2867, !2871, !2872, !2873, !2879, !2892, !2896, !2900, !2901, !2905, !2906, !2910, !2915, !2916, !2920, !2924, !2930, !2931, !2935, !2936, !2942, !2946, !2947, !2952, !2956, !2960, !2964, !2968, !2969, !2975}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2856, file: !59, line: 1915, baseType: !1128, size: 64)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !2856, file: !59, line: 1916, baseType: !2860, size: 64, offset: 64)
!2860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2861, size: 64)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!537, !497, !537, !98}
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !2856, file: !59, line: 1917, baseType: !2864, size: 64, offset: 128)
!2864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2865, size: 64)
!2865 = !DISubroutineType(types: !2866)
!2866 = !{!1036, !497, !736, !1039, !1867}
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !2856, file: !59, line: 1918, baseType: !2868, size: 64, offset: 192)
!2868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2869, size: 64)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!1036, !497, !95, !1039, !1867}
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !2856, file: !59, line: 1919, baseType: !1676, size: 64, offset: 256)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !2856, file: !59, line: 1920, baseType: !1676, size: 64, offset: 320)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !2856, file: !59, line: 1921, baseType: !2874, size: 64, offset: 384)
!2874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2875, size: 64)
!2875 = !DISubroutineType(types: !2876)
!2876 = !{!98, !1679, !2877, !7}
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2878, size: 64)
!2878 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !59, line: 53, flags: DIFlagFwdDecl)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !2856, file: !59, line: 1923, baseType: !2880, size: 64, offset: 448)
!2880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2881, size: 64)
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!98, !497, !2883}
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2884, size: 64)
!2884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !59, line: 1858, size: 128, elements: !2885)
!2885 = !{!2886, !2891}
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !2884, file: !59, line: 1859, baseType: !2887, size: 64)
!2887 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !59, line: 1855, baseType: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!725, !2883, !95, !98, !537, !180, !7}
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2884, file: !59, line: 1860, baseType: !537, size: 64, offset: 64)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2856, file: !59, line: 1924, baseType: !2893, size: 64, offset: 512)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DISubroutineType(types: !2895)
!2895 = !{!1914, !497, !1916}
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !2856, file: !59, line: 1925, baseType: !2897, size: 64, offset: 576)
!2897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2898, size: 64)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!997, !497, !7, !94}
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !2856, file: !59, line: 1926, baseType: !2897, size: 64, offset: 640)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !2856, file: !59, line: 1927, baseType: !2902, size: 64, offset: 704)
!2902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2903, size: 64)
!2903 = !DISubroutineType(types: !2904)
!2904 = !{!98, !497, !1385}
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !2856, file: !59, line: 1928, baseType: !94, size: 64, offset: 768)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !2856, file: !59, line: 1929, baseType: !2907, size: 64, offset: 832)
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2908, size: 64)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!98, !882, !497}
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !2856, file: !59, line: 1930, baseType: !2911, size: 64, offset: 896)
!2911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2912, size: 64)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!98, !497, !2914}
!2914 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !59, line: 1061, baseType: !93)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !2856, file: !59, line: 1931, baseType: !2907, size: 64, offset: 960)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !2856, file: !59, line: 1932, baseType: !2917, size: 64, offset: 1024)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!98, !497, !537, !537, !98}
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !2856, file: !59, line: 1933, baseType: !2921, size: 64, offset: 1088)
!2921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2922, size: 64)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!98, !98, !497, !98}
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2856, file: !59, line: 1934, baseType: !2925, size: 64, offset: 1152)
!2925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2926, size: 64)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!98, !497, !98, !2928}
!2928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2929, size: 64)
!2929 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !59, line: 1063, flags: DIFlagFwdDecl)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !2856, file: !59, line: 1935, baseType: !494, size: 64, offset: 1216)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !2856, file: !59, line: 1936, baseType: !2932, size: 64, offset: 1280)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DISubroutineType(types: !2934)
!2934 = !{!98, !98}
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !2856, file: !59, line: 1937, baseType: !2925, size: 64, offset: 1344)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !2856, file: !59, line: 1938, baseType: !2937, size: 64, offset: 1408)
!2937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2938, size: 64)
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!1036, !2940, !497, !1867, !1039, !7}
!2940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2941, size: 64)
!2941 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !103, line: 59, flags: DIFlagFwdDecl)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !2856, file: !59, line: 1939, baseType: !2943, size: 64, offset: 1472)
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DISubroutineType(types: !2945)
!2945 = !{!1036, !497, !1867, !2940, !1039, !7}
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !2856, file: !59, line: 1940, baseType: !1732, size: 64, offset: 1536)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !2856, file: !59, line: 1941, baseType: !2948, size: 64, offset: 1600)
!2948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2949, size: 64)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!98, !497, !98, !2951, !1653}
!2951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2928, size: 64)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !2856, file: !59, line: 1942, baseType: !2953, size: 64, offset: 1664)
!2953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2954, size: 64)
!2954 = !DISubroutineType(types: !2955)
!2955 = !{!997, !497, !98, !537, !537}
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !2856, file: !59, line: 1944, baseType: !2957, size: 64, offset: 1728)
!2957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2958, size: 64)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !1846, !497}
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !2856, file: !59, line: 1948, baseType: !2961, size: 64, offset: 1792)
!2961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2962, size: 64)
!2962 = !DISubroutineType(types: !2963)
!2963 = !{!1036, !497, !537, !497, !537, !1039, !7}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !2856, file: !59, line: 1950, baseType: !2965, size: 64, offset: 1856)
!2965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2966, size: 64)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!537, !497, !537, !497, !537, !537, !7}
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !2856, file: !59, line: 1953, baseType: !2917, size: 64, offset: 1920)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !2856, file: !59, line: 1954, baseType: !2970, size: 64, offset: 1984)
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DISubroutineType(types: !2972)
!2972 = !{!98, !2973, !7}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !59, line: 1911, flags: DIFlagFwdDecl)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !2856, file: !59, line: 1955, baseType: !2976, size: 64, offset: 2048)
!2976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2977 = !DISubroutineType(types: !2978)
!2978 = !{!98, !2973, !2877, !7}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2851, file: !59, line: 723, baseType: !2335, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !883, file: !59, line: 725, baseType: !2981, size: 64, offset: 2816)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2982, size: 64)
!2982 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !59, line: 725, flags: DIFlagFwdDecl)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !883, file: !59, line: 726, baseType: !1246, size: 1536, align: 64, offset: 2880)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !883, file: !59, line: 727, baseType: !185, size: 128, offset: 4416)
!2985 = !DIDerivedType(tag: DW_TAG_member, scope: !883, file: !59, line: 728, baseType: !2986, size: 64, offset: 4544)
!2986 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !883, file: !59, line: 728, size: 64, elements: !2987)
!2987 = !{!2988, !2989, !2992, !2993}
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !2986, file: !59, line: 729, baseType: !2940, size: 64)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !2986, file: !59, line: 730, baseType: !2990, size: 64)
!2990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2991, size: 64)
!2991 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !59, line: 730, flags: DIFlagFwdDecl)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !2986, file: !59, line: 731, baseType: !736, size: 64)
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !2986, file: !59, line: 732, baseType: !7, size: 32)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !883, file: !59, line: 735, baseType: !114, size: 32, offset: 4608)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !883, file: !59, line: 738, baseType: !114, size: 32, offset: 4640)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !883, file: !59, line: 739, baseType: !2689, size: 64, offset: 4672)
!2997 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !883, file: !59, line: 750, baseType: !93, size: 64, offset: 4736)
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !848, file: !849, line: 91, baseType: !2999, size: 256, offset: 448)
!2999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !2693)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !848, file: !849, line: 94, baseType: !3001, size: 64, offset: 704)
!3001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3002, line: 25, size: 64, elements: !3003)
!3002 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3003 = !{!3004}
!3004 = !DIDerivedType(tag: DW_TAG_member, scope: !3001, file: !3002, line: 26, baseType: !3005, size: 64)
!3005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3001, file: !3002, line: 26, size: 64, elements: !3006)
!3006 = !{!3007, !3008}
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3005, file: !3002, line: 28, baseType: !181, size: 64, align: 64)
!3008 = !DIDerivedType(tag: DW_TAG_member, scope: !3005, file: !3002, line: 30, baseType: !3009, size: 64)
!3009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3005, file: !3002, line: 30, size: 64, elements: !3010)
!3010 = !{!3011, !3012}
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3009, file: !3002, line: 31, baseType: !479, size: 32)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3009, file: !3002, line: 32, baseType: !98, size: 32, offset: 32)
!3013 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !848, file: !849, line: 95, baseType: !2708, size: 64, offset: 768)
!3014 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !848, file: !849, line: 96, baseType: !1095, size: 64, offset: 832)
!3015 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !848, file: !849, line: 97, baseType: !94, size: 64, offset: 896)
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !848, file: !849, line: 98, baseType: !93, size: 64, offset: 960)
!3017 = !DIDerivedType(tag: DW_TAG_member, scope: !848, file: !849, line: 100, baseType: !3018, size: 128, offset: 1024)
!3018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 100, size: 128, elements: !3019)
!3019 = !{!3020, !3021}
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3018, file: !849, line: 101, baseType: !185, size: 128)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3018, file: !849, line: 102, baseType: !3022, size: 64)
!3022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !848, file: !849, line: 104, baseType: !185, size: 128, offset: 1152)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !848, file: !849, line: 105, baseType: !185, size: 128, offset: 1280)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !848, file: !849, line: 113, baseType: !3026, size: 128, offset: 1408)
!3026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !848, file: !849, line: 109, size: 128, elements: !3027)
!3027 = !{!3028, !3029, !3030}
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !3026, file: !849, line: 110, baseType: !579, size: 128)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !3026, file: !849, line: 111, baseType: !858, size: 128)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !3026, file: !849, line: 112, baseType: !505, size: 128, align: 64)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !843, file: !844, line: 72, baseType: !1095, size: 64, offset: 64)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !843, file: !844, line: 73, baseType: !98, size: 32, offset: 128)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !843, file: !844, line: 74, baseType: !922, size: 64, offset: 192)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !838, file: !839, line: 10, baseType: !847, size: 64, offset: 64)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !498, file: !59, line: 1015, baseType: !882, size: 64, offset: 1344)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !498, file: !59, line: 1016, baseType: !2854, size: 64, offset: 1408)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !498, file: !59, line: 1018, baseType: !180, size: 64, offset: 1472)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !498, file: !59, line: 1020, baseType: !93, size: 64, offset: 1536)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !498, file: !59, line: 1023, baseType: !93, size: 64, offset: 1600)
!3040 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !498, file: !59, line: 1027, baseType: !3041, size: 64, offset: 1664)
!3041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!3042 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !498, file: !59, line: 1029, baseType: !1245, size: 64, offset: 1728)
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !498, file: !59, line: 1030, baseType: !1742, size: 32, offset: 1792)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !498, file: !59, line: 1031, baseType: !1742, size: 32, offset: 1824)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !465, file: !30, line: 756, baseType: !94, size: 64, offset: 704)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !465, file: !30, line: 757, baseType: !94, size: 64, offset: 768)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !465, file: !30, line: 760, baseType: !94, size: 64, offset: 832)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !465, file: !30, line: 761, baseType: !94, size: 64, offset: 896)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !465, file: !30, line: 763, baseType: !94, size: 64, offset: 960)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !465, file: !30, line: 764, baseType: !3051, size: 64, offset: 1024)
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3052, size: 64)
!3052 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1400, line: 299, baseType: !3053)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1400, line: 299, size: 64, elements: !3054)
!3054 = !{!3055}
!3055 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !3053, file: !1400, line: 299, baseType: !3056, size: 64)
!3056 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1405, line: 18, baseType: !94)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !465, file: !30, line: 773, baseType: !125, size: 32, offset: 1088)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !465, file: !30, line: 785, baseType: !125, size: 32, offset: 1120)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !465, file: !30, line: 795, baseType: !3060, size: 64, offset: 1152)
!3060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3061, size: 64)
!3061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !30, line: 726, size: 128, elements: !3062)
!3062 = !{!3063, !3064}
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3061, file: !30, line: 727, baseType: !180, size: 64)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !3061, file: !30, line: 728, baseType: !98, size: 32, offset: 64)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !465, file: !30, line: 801, baseType: !94, size: 64, offset: 1216)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !465, file: !30, line: 804, baseType: !518, size: 64, offset: 1280)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !465, file: !30, line: 806, baseType: !98, size: 32, offset: 1344)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !465, file: !30, line: 808, baseType: !479, size: 32, offset: 1376)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !465, file: !30, line: 823, baseType: !666, size: 320, offset: 1408)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !465, file: !30, line: 825, baseType: !185, size: 128, offset: 1728)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !465, file: !30, line: 845, baseType: !98, size: 32, offset: 1856)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !465, file: !30, line: 849, baseType: !94, size: 64, offset: 1920)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !465, file: !30, line: 850, baseType: !94, size: 64, offset: 1984)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !465, file: !30, line: 852, baseType: !94, size: 64, offset: 2048)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !465, file: !30, line: 853, baseType: !94, size: 64, offset: 2112)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !465, file: !30, line: 854, baseType: !520, size: 64, offset: 2176)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !465, file: !30, line: 855, baseType: !94, size: 64, offset: 2240)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !465, file: !30, line: 856, baseType: !94, size: 64, offset: 2304)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !465, file: !30, line: 857, baseType: !94, size: 64, offset: 2368)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !465, file: !30, line: 858, baseType: !94, size: 64, offset: 2432)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !465, file: !30, line: 865, baseType: !335, size: 32, offset: 2496)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !465, file: !30, line: 867, baseType: !479, size: 32, offset: 2528)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !465, file: !30, line: 869, baseType: !94, size: 64, offset: 2560)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !465, file: !30, line: 869, baseType: !94, size: 64, offset: 2624)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !465, file: !30, line: 869, baseType: !94, size: 64, offset: 2688)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !465, file: !30, line: 869, baseType: !94, size: 64, offset: 2752)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !465, file: !30, line: 870, baseType: !94, size: 64, offset: 2816)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !465, file: !30, line: 870, baseType: !94, size: 64, offset: 2880)
!3089 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !465, file: !30, line: 870, baseType: !94, size: 64, offset: 2944)
!3090 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !465, file: !30, line: 871, baseType: !94, size: 64, offset: 3008)
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !465, file: !30, line: 871, baseType: !94, size: 64, offset: 3072)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !465, file: !30, line: 871, baseType: !94, size: 64, offset: 3136)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !465, file: !30, line: 871, baseType: !94, size: 64, offset: 3200)
!3094 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !465, file: !30, line: 873, baseType: !3095, size: 3328, offset: 3264)
!3095 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 3328, elements: !3096)
!3096 = !{!3097}
!3097 = !DISubrange(count: 52)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !465, file: !30, line: 875, baseType: !3099, size: 1280, offset: 6592)
!3099 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 1280, elements: !584)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !465, file: !30, line: 877, baseType: !3101, size: 64, offset: 7872)
!3101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3102, size: 64)
!3102 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !30, line: 877, flags: DIFlagFwdDecl)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !465, file: !30, line: 880, baseType: !3104, size: 1088, offset: 7936)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !3105, line: 72, baseType: !3106)
!3105 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!3106 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3105, line: 23, size: 1088, elements: !3107)
!3107 = !{!3108, !3109, !3110, !3111, !3112, !3137, !3138, !3139, !3140, !3165, !3166, !3167}
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !3106, file: !3105, line: 28, baseType: !180, size: 64)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !3106, file: !3105, line: 38, baseType: !520, size: 64, offset: 64)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !3106, file: !3105, line: 40, baseType: !94, size: 64, offset: 128)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !3106, file: !3105, line: 43, baseType: !666, size: 320, offset: 192)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !3106, file: !3105, line: 44, baseType: !3113, size: 64, offset: 512)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !3115, line: 30, size: 128, elements: !3116)
!3115 = !DIFile(filename: "./arch/x86/include/asm/mmu_context.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e7349a2ab0563256af671ddc4b36d96")
!3116 = !{!3117, !3135, !3136}
!3117 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !3114, file: !3115, line: 37, baseType: !3118, size: 64)
!3118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3119, size: 64)
!3119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3120, line: 16, size: 64, elements: !3121)
!3120 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3121 = !{!3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3131, !3132, !3133, !3134}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3119, file: !3120, line: 17, baseType: !149, size: 16)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3119, file: !3120, line: 18, baseType: !149, size: 16, offset: 16)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3119, file: !3120, line: 19, baseType: !149, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3119, file: !3120, line: 19, baseType: !149, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3119, file: !3120, line: 19, baseType: !149, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3119, file: !3120, line: 19, baseType: !149, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3119, file: !3120, line: 19, baseType: !149, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3119, file: !3120, line: 20, baseType: !149, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3119, file: !3120, line: 20, baseType: !149, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3131 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3119, file: !3120, line: 20, baseType: !149, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3119, file: !3120, line: 20, baseType: !149, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3119, file: !3120, line: 20, baseType: !149, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3119, file: !3120, line: 20, baseType: !149, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "nr_entries", scope: !3114, file: !3115, line: 38, baseType: !7, size: 32, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !3114, file: !3115, line: 49, baseType: !98, size: 32, offset: 96)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3106, file: !3105, line: 48, baseType: !94, size: 64, offset: 576)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3106, file: !3105, line: 59, baseType: !525, size: 256, offset: 640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !3106, file: !3105, line: 60, baseType: !93, size: 64, offset: 896)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !3106, file: !3105, line: 61, baseType: !3141, size: 64, offset: 960)
!3141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3142, size: 64)
!3142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3143)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !3144, line: 13, size: 1216, elements: !3145)
!3144 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!3145 = !{!3146, !3147, !3148, !3149, !3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3164}
!3146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !3143, file: !3144, line: 14, baseType: !93, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3143, file: !3144, line: 15, baseType: !94, size: 64, offset: 64)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !3143, file: !3144, line: 17, baseType: !94, size: 64, offset: 128)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !3143, file: !3144, line: 17, baseType: !94, size: 64, offset: 192)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !3143, file: !3144, line: 18, baseType: !94, size: 64, offset: 256)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !3143, file: !3144, line: 18, baseType: !94, size: 64, offset: 320)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !3143, file: !3144, line: 19, baseType: !1781, size: 64, offset: 384)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !3143, file: !3144, line: 21, baseType: !997, size: 64, offset: 448)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !3143, file: !3144, line: 23, baseType: !997, size: 64, offset: 512)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !3143, file: !3144, line: 24, baseType: !997, size: 64, offset: 576)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !3143, file: !3144, line: 25, baseType: !997, size: 64, offset: 640)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !3143, file: !3144, line: 26, baseType: !997, size: 64, offset: 704)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !3143, file: !3144, line: 27, baseType: !997, size: 64, offset: 768)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !3143, file: !3144, line: 28, baseType: !997, size: 64, offset: 832)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !3143, file: !3144, line: 29, baseType: !997, size: 64, offset: 896)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !3143, file: !3144, line: 30, baseType: !997, size: 64, offset: 960)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !3143, file: !3144, line: 31, baseType: !997, size: 64, offset: 1024)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !3143, file: !3144, line: 32, baseType: !997, size: 64, offset: 1088)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !3143, file: !3144, line: 33, baseType: !997, size: 64, offset: 1152)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !3106, file: !3105, line: 63, baseType: !125, size: 32, offset: 1024)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !3106, file: !3105, line: 69, baseType: !149, size: 16, offset: 1056)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !3106, file: !3105, line: 70, baseType: !2095, size: 16, offset: 1072)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !465, file: !30, line: 882, baseType: !94, size: 64, offset: 9024)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !465, file: !30, line: 885, baseType: !479, size: 32, offset: 9088)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !465, file: !30, line: 886, baseType: !3171, size: 64, offset: 9152)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !30, line: 732, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !465, file: !30, line: 901, baseType: !809, size: 64, offset: 9216)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !465, file: !30, line: 904, baseType: !497, size: 64, offset: 9280)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !465, file: !30, line: 906, baseType: !3176, size: 64, offset: 9344)
!3176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3177, size: 64)
!3177 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !30, line: 906, flags: DIFlagFwdDecl)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !465, file: !30, line: 930, baseType: !125, size: 32, offset: 9408)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !465, file: !30, line: 933, baseType: !125, size: 32, offset: 9440)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !465, file: !30, line: 935, baseType: !3181, size: 64, offset: 9472)
!3181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !81, line: 103, size: 64, elements: !3182)
!3182 = !{!3183}
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !3181, file: !81, line: 104, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3185, size: 64)
!3185 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !81, line: 101, flags: DIFlagFwdDecl)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !465, file: !30, line: 940, baseType: !518, size: 64, offset: 9536)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !465, file: !30, line: 942, baseType: !2202, size: 256, offset: 9600)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !462, file: !30, line: 986, baseType: !3189, offset: 10240)
!3189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, elements: !603)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !102, file: !103, line: 882, baseType: !461, size: 64, offset: 9792)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !102, file: !103, line: 884, baseType: !98, size: 32, offset: 9856)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !102, file: !103, line: 885, baseType: !98, size: 32, offset: 9888)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !102, file: !103, line: 886, baseType: !98, size: 32, offset: 9920)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !102, file: !103, line: 888, baseType: !98, size: 32, offset: 9952)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !102, file: !103, line: 890, baseType: !94, size: 64, offset: 9984)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !102, file: !103, line: 893, baseType: !7, size: 32, offset: 10048)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !102, file: !103, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !102, file: !103, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !102, file: !103, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !102, file: !103, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !102, file: !103, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !102, file: !103, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!3203 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !102, file: !103, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !102, file: !103, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !102, file: !103, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !102, file: !103, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !102, file: !103, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!3208 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !102, file: !103, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!3209 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !102, file: !103, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !102, file: !103, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !102, file: !103, line: 969, baseType: !94, size: 64, offset: 10176)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !102, file: !103, line: 971, baseType: !3213, size: 448, offset: 10240)
!3213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !75, line: 25, size: 448, elements: !3214)
!3214 = !{!3215, !3216, !3221}
!3215 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !3213, file: !75, line: 26, baseType: !94, size: 64)
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !3213, file: !75, line: 27, baseType: !3217, size: 64, offset: 64)
!3217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3218, size: 64)
!3218 = !DISubroutineType(types: !3219)
!3219 = !{!997, !3220}
!3220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3213, size: 64)
!3221 = !DIDerivedType(tag: DW_TAG_member, scope: !3213, file: !75, line: 28, baseType: !3222, size: 320, offset: 128)
!3222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3213, file: !75, line: 28, size: 320, elements: !3223)
!3223 = !{!3224, !3234, !3259}
!3224 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !3222, file: !75, line: 37, baseType: !3225, size: 320)
!3225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !75, line: 30, size: 320, elements: !3226)
!3226 = !{!3227, !3229, !3230, !3231, !3232, !3233}
!3227 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !3225, file: !75, line: 31, baseType: !3228, size: 64)
!3228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !3225, file: !75, line: 32, baseType: !112, size: 32, offset: 64)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3225, file: !75, line: 33, baseType: !112, size: 32, offset: 96)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !3225, file: !75, line: 34, baseType: !112, size: 32, offset: 128)
!3232 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !3225, file: !75, line: 35, baseType: !180, size: 64, offset: 192)
!3233 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !3225, file: !75, line: 36, baseType: !3228, size: 64, offset: 256)
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !3222, file: !75, line: 47, baseType: !3235, size: 192)
!3235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !75, line: 39, size: 192, elements: !3236)
!3236 = !{!3237, !3238, !3239, !3258}
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !3235, file: !75, line: 40, baseType: !326, size: 32)
!3238 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3235, file: !75, line: 41, baseType: !74, size: 32, offset: 32)
!3239 = !DIDerivedType(tag: DW_TAG_member, scope: !3235, file: !75, line: 42, baseType: !3240, size: 64, offset: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3235, file: !75, line: 42, size: 64, elements: !3241)
!3241 = !{!3242, !3250}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !3240, file: !75, line: 43, baseType: !3243, size: 64)
!3243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3244, size: 64)
!3244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !3245, line: 7, size: 128, elements: !3246)
!3245 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!3246 = !{!3247, !3249}
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3244, file: !3245, line: 8, baseType: !3248, size: 64)
!3248 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !328, line: 93, baseType: !198)
!3249 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3244, file: !3245, line: 9, baseType: !198, size: 64, offset: 64)
!3250 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !3240, file: !75, line: 44, baseType: !3251, size: 64)
!3251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3252, size: 64)
!3252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !3253, line: 7, size: 64, elements: !3254)
!3253 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!3254 = !{!3255, !3257}
!3255 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3252, file: !3253, line: 8, baseType: !3256, size: 32)
!3256 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !3253, line: 5, baseType: !658)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3252, file: !3253, line: 9, baseType: !658, size: 32, offset: 32)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3235, file: !75, line: 46, baseType: !180, size: 64, offset: 128)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3222, file: !75, line: 55, baseType: !3260, size: 256)
!3260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3222, file: !75, line: 49, size: 256, elements: !3261)
!3261 = !{!3262, !3265, !3266, !3267, !3268}
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !3260, file: !75, line: 50, baseType: !3263, size: 64)
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !75, line: 14, flags: DIFlagFwdDecl)
!3265 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !3260, file: !75, line: 51, baseType: !98, size: 32, offset: 64)
!3266 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !3260, file: !75, line: 52, baseType: !98, size: 32, offset: 96)
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3260, file: !75, line: 53, baseType: !94, size: 64, offset: 128)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3260, file: !75, line: 54, baseType: !94, size: 64, offset: 192)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !102, file: !103, line: 973, baseType: !3270, size: 32, offset: 10688)
!3270 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 27, baseType: !3271)
!3271 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !328, line: 28, baseType: !98)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !102, file: !103, line: 974, baseType: !3270, size: 32, offset: 10720)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !102, file: !103, line: 978, baseType: !94, size: 64, offset: 10752)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !102, file: !103, line: 987, baseType: !101, size: 64, offset: 10816)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 990, baseType: !101, size: 64, offset: 10880)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !102, file: !103, line: 995, baseType: !185, size: 128, offset: 10944)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !102, file: !103, line: 996, baseType: !185, size: 128, offset: 11072)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !102, file: !103, line: 997, baseType: !101, size: 64, offset: 11200)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !102, file: !103, line: 1005, baseType: !185, size: 128, offset: 11264)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !102, file: !103, line: 1006, baseType: !185, size: 128, offset: 11392)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !102, file: !103, line: 1009, baseType: !567, size: 64, offset: 11520)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !102, file: !103, line: 1010, baseType: !3283, size: 512, offset: 11584)
!3283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !579, size: 512, elements: !584)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !102, file: !103, line: 1011, baseType: !185, size: 128, offset: 12096)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !102, file: !103, line: 1012, baseType: !185, size: 128, offset: 12224)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !102, file: !103, line: 1014, baseType: !1951, size: 64, offset: 12352)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !102, file: !103, line: 1017, baseType: !2088, size: 64, offset: 12416)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !102, file: !103, line: 1020, baseType: !2088, size: 64, offset: 12480)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !102, file: !103, line: 1023, baseType: !93, size: 64, offset: 12544)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !102, file: !103, line: 1025, baseType: !180, size: 64, offset: 12608)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !102, file: !103, line: 1026, baseType: !180, size: 64, offset: 12672)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !102, file: !103, line: 1031, baseType: !180, size: 64, offset: 12736)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !102, file: !103, line: 1032, baseType: !3294, size: 192, offset: 12800)
!3294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !103, line: 324, size: 192, elements: !3295)
!3295 = !{!3296, !3297, !3298}
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3294, file: !103, line: 326, baseType: !180, size: 64)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3294, file: !103, line: 327, baseType: !180, size: 64, offset: 64)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3294, file: !103, line: 328, baseType: !278, size: 32, offset: 128)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !102, file: !103, line: 1041, baseType: !94, size: 64, offset: 12992)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !102, file: !103, line: 1042, baseType: !94, size: 64, offset: 13056)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !102, file: !103, line: 1045, baseType: !180, size: 64, offset: 13120)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !102, file: !103, line: 1048, baseType: !180, size: 64, offset: 13184)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !102, file: !103, line: 1051, baseType: !94, size: 64, offset: 13248)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !102, file: !103, line: 1052, baseType: !94, size: 64, offset: 13312)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !102, file: !103, line: 1055, baseType: !3306, size: 640, offset: 13376)
!3306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !3307, line: 132, size: 640, elements: !3308)
!3307 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!3308 = !{!3309, !3315, !3316}
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !3306, file: !3307, line: 133, baseType: !3310, size: 576)
!3310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3311, size: 576, elements: !563)
!3311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !3307, line: 117, size: 192, elements: !3312)
!3312 = !{!3313, !3314}
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !3311, file: !3307, line: 118, baseType: !180, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !3311, file: !3307, line: 119, baseType: !341, size: 128, offset: 64)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !3306, file: !3307, line: 134, baseType: !7, size: 32, offset: 576)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !3306, file: !3307, line: 135, baseType: !7, size: 32, offset: 608)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !102, file: !103, line: 1058, baseType: !3318, size: 448, offset: 14016)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !3307, line: 144, size: 448, elements: !3319)
!3319 = !{!3320, !3321, !3322}
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !3318, file: !3307, line: 145, baseType: !505, size: 128, align: 64)
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !3318, file: !3307, line: 146, baseType: !525, size: 256, offset: 128)
!3322 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !3318, file: !3307, line: 147, baseType: !7, size: 32, offset: 384)
!3323 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !102, file: !103, line: 1064, baseType: !617, size: 64, offset: 14464)
!3324 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !102, file: !103, line: 1067, baseType: !617, size: 64, offset: 14528)
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !102, file: !103, line: 1070, baseType: !617, size: 64, offset: 14592)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !102, file: !103, line: 1074, baseType: !650, size: 64, offset: 14656)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !102, file: !103, line: 1084, baseType: !3328, size: 128, offset: 14720)
!3328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 128, elements: !2702)
!3329 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !102, file: !103, line: 1086, baseType: !3330, size: 64, offset: 14848)
!3330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3331, size: 64)
!3331 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !103, line: 55, flags: DIFlagFwdDecl)
!3332 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !102, file: !103, line: 1089, baseType: !3333, size: 64, offset: 14912)
!3333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !3334, line: 12, size: 64, elements: !3335)
!3334 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!3335 = !{!3336}
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !3333, file: !3334, line: 13, baseType: !3337, size: 64)
!3337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3338, size: 64)
!3338 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !3334, line: 8, flags: DIFlagFwdDecl)
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !102, file: !103, line: 1090, baseType: !3340, size: 128, offset: 14976)
!3340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !3341, line: 13, size: 128, elements: !3342)
!3341 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!3342 = !{!3343}
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !3340, file: !3341, line: 14, baseType: !185, size: 128)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !102, file: !103, line: 1097, baseType: !3345, size: 64, offset: 15104)
!3345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3346, size: 64)
!3346 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !103, line: 50, flags: DIFlagFwdDecl)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !102, file: !103, line: 1100, baseType: !3348, size: 64, offset: 15168)
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !103, line: 1100, flags: DIFlagFwdDecl)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !102, file: !103, line: 1103, baseType: !3351, size: 64, offset: 15232)
!3351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3352, size: 64)
!3352 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !103, line: 53, flags: DIFlagFwdDecl)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !102, file: !103, line: 1107, baseType: !3354, size: 64, offset: 15296)
!3354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3355, size: 64)
!3355 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !103, line: 56, flags: DIFlagFwdDecl)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !102, file: !103, line: 1110, baseType: !3357, size: 64, offset: 15360)
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !3359, line: 93, size: 8768, elements: !3360)
!3359 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!3360 = !{!3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3396, !3397, !3398, !3399, !3400, !3401, !3402, !3408, !3417, !3418, !3420, !3421, !3422, !3425, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3463, !3464, !3471, !3481, !3484, !3485, !3488, !3489, !3490, !3491, !3492, !3493}
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !3358, file: !3359, line: 94, baseType: !120, size: 32)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !3358, file: !3359, line: 95, baseType: !125, size: 32, offset: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3358, file: !3359, line: 96, baseType: !98, size: 32, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !3358, file: !3359, line: 97, baseType: !98, size: 32, offset: 96)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !3358, file: !3359, line: 98, baseType: !185, size: 128, offset: 128)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !3358, file: !3359, line: 100, baseType: !588, size: 192, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !3358, file: !3359, line: 103, baseType: !101, size: 64, offset: 448)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !3358, file: !3359, line: 106, baseType: !3369, size: 192, offset: 512)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !814, line: 32, size: 192, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3369, file: !814, line: 33, baseType: !185, size: 128)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !3369, file: !814, line: 34, baseType: !3373, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !3374, line: 25, baseType: !3375)
!3374 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!3375 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3374, line: 23, size: 64, elements: !3376)
!3376 = !{!3377}
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !3375, file: !3374, line: 24, baseType: !412, size: 64)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !3358, file: !3359, line: 109, baseType: !575, size: 64, offset: 704)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !3358, file: !3359, line: 112, baseType: !98, size: 32, offset: 768)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !3358, file: !3359, line: 114, baseType: !98, size: 32, offset: 800)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !3358, file: !3359, line: 115, baseType: !101, size: 64, offset: 832)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !3358, file: !3359, line: 118, baseType: !98, size: 32, offset: 896)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3358, file: !3359, line: 119, baseType: !7, size: 32, offset: 928)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !3358, file: !3359, line: 121, baseType: !3385, size: 64, offset: 960)
!3385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3386, size: 64)
!3386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !3359, line: 80, size: 448, elements: !3387)
!3387 = !{!3388, !3389, !3395}
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !3386, file: !3359, line: 81, baseType: !125, size: 32)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !3386, file: !3359, line: 82, baseType: !3390, size: 128, offset: 64)
!3390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !3359, line: 75, size: 128, elements: !3391)
!3391 = !{!3392, !3393}
!3392 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !3390, file: !3359, line: 76, baseType: !101, size: 64)
!3393 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3390, file: !3359, line: 77, baseType: !3394, size: 64, offset: 64)
!3394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3390, size: 64)
!3395 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !3386, file: !3359, line: 83, baseType: !1350, size: 256, offset: 192)
!3396 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !3358, file: !3359, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !3358, file: !3359, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !3358, file: !3359, line: 138, baseType: !7, size: 32, offset: 1056)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !3358, file: !3359, line: 139, baseType: !185, size: 128, offset: 1088)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !3358, file: !3359, line: 142, baseType: !253, size: 512, offset: 1216)
!3401 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !3358, file: !3359, line: 143, baseType: !261, size: 64, offset: 1728)
!3402 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !3358, file: !3359, line: 150, baseType: !3403, size: 256, offset: 1792)
!3403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3404, size: 256, elements: !2078)
!3404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !3359, line: 38, size: 128, elements: !3405)
!3405 = !{!3406, !3407}
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !3404, file: !3359, line: 39, baseType: !180, size: 64)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !3404, file: !3359, line: 40, baseType: !180, size: 64, offset: 64)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !3358, file: !3359, line: 156, baseType: !3409, size: 192, offset: 2048)
!3409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !3359, line: 66, size: 192, elements: !3410)
!3410 = !{!3411}
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !3409, file: !3359, line: 67, baseType: !3412, size: 192)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !3359, line: 47, size: 192, elements: !3413)
!3413 = !{!3414, !3415, !3416}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3412, file: !3359, line: 48, baseType: !520, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3412, file: !3359, line: 49, baseType: !520, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !3412, file: !3359, line: 50, baseType: !520, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !3358, file: !3359, line: 160, baseType: !3306, size: 640, offset: 2240)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !3358, file: !3359, line: 163, baseType: !3419, size: 256, offset: 2880)
!3419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 256, elements: !584)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !3358, file: !3359, line: 169, baseType: !567, size: 64, offset: 3136)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !3358, file: !3359, line: 172, baseType: !98, size: 32, offset: 3200)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !3358, file: !3359, line: 174, baseType: !3423, size: 64, offset: 3264)
!3423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3424 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !3359, line: 174, flags: DIFlagFwdDecl)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !3358, file: !3359, line: 185, baseType: !3426, size: 64, offset: 3328)
!3426 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !331, line: 860, baseType: !3427)
!3427 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 853, size: 64, elements: !3428)
!3428 = !{!3429, !3430}
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3427, file: !331, line: 858, baseType: !853, size: 32)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3427, file: !331, line: 859, baseType: !479, size: 32, offset: 32)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !3358, file: !3359, line: 186, baseType: !180, size: 64, offset: 3392)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !3358, file: !3359, line: 186, baseType: !180, size: 64, offset: 3456)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !3358, file: !3359, line: 186, baseType: !180, size: 64, offset: 3520)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !3358, file: !3359, line: 186, baseType: !180, size: 64, offset: 3584)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !3358, file: !3359, line: 187, baseType: !180, size: 64, offset: 3648)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !3358, file: !3359, line: 188, baseType: !180, size: 64, offset: 3712)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !3358, file: !3359, line: 189, baseType: !3294, size: 192, offset: 3776)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !3358, file: !3359, line: 190, baseType: !94, size: 64, offset: 3968)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !3358, file: !3359, line: 190, baseType: !94, size: 64, offset: 4032)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !3358, file: !3359, line: 190, baseType: !94, size: 64, offset: 4096)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !3358, file: !3359, line: 190, baseType: !94, size: 64, offset: 4160)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !3358, file: !3359, line: 191, baseType: !94, size: 64, offset: 4224)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !3358, file: !3359, line: 191, baseType: !94, size: 64, offset: 4288)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !3358, file: !3359, line: 191, baseType: !94, size: 64, offset: 4352)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !3358, file: !3359, line: 191, baseType: !94, size: 64, offset: 4416)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !3358, file: !3359, line: 192, baseType: !94, size: 64, offset: 4480)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !3358, file: !3359, line: 192, baseType: !94, size: 64, offset: 4544)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !3358, file: !3359, line: 192, baseType: !94, size: 64, offset: 4608)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !3358, file: !3359, line: 192, baseType: !94, size: 64, offset: 4672)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !3358, file: !3359, line: 193, baseType: !94, size: 64, offset: 4736)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !3358, file: !3359, line: 193, baseType: !94, size: 64, offset: 4800)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !3358, file: !3359, line: 194, baseType: !3453, size: 448, offset: 4864)
!3453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3454, line: 12, size: 448, elements: !3455)
!3454 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3455 = !{!3456, !3457, !3458, !3459, !3460, !3461, !3462}
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3453, file: !3454, line: 15, baseType: !180, size: 64)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3453, file: !3454, line: 17, baseType: !180, size: 64, offset: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3453, file: !3454, line: 19, baseType: !180, size: 64, offset: 128)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3453, file: !3454, line: 21, baseType: !180, size: 64, offset: 192)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3453, file: !3454, line: 29, baseType: !180, size: 64, offset: 256)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3453, file: !3454, line: 35, baseType: !180, size: 64, offset: 320)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3453, file: !3454, line: 44, baseType: !180, size: 64, offset: 384)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !3358, file: !3359, line: 202, baseType: !182, size: 64, offset: 5312)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !3358, file: !3359, line: 213, baseType: !3465, size: 2048, offset: 5376)
!3465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3466, size: 2048, elements: !2702)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3467, line: 43, size: 128, elements: !3468)
!3467 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3468 = !{!3469, !3470}
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3466, file: !3467, line: 44, baseType: !1041, size: 64)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3466, file: !3467, line: 45, baseType: !1041, size: 64, offset: 64)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !3358, file: !3359, line: 216, baseType: !3472, size: 448, offset: 7424)
!3472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !3359, line: 30, size: 448, elements: !3473)
!3473 = !{!3474, !3475, !3476, !3477, !3478, !3479, !3480}
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3472, file: !3359, line: 31, baseType: !98, size: 32)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3472, file: !3359, line: 32, baseType: !997, size: 64, offset: 64)
!3476 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3472, file: !3359, line: 33, baseType: !94, size: 64, offset: 128)
!3477 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3472, file: !3359, line: 34, baseType: !180, size: 64, offset: 192)
!3478 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3472, file: !3359, line: 34, baseType: !180, size: 64, offset: 256)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3472, file: !3359, line: 35, baseType: !94, size: 64, offset: 320)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3472, file: !3359, line: 35, baseType: !94, size: 64, offset: 384)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !3358, file: !3359, line: 219, baseType: !3482, size: 64, offset: 7872)
!3482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3483, size: 64)
!3483 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !3359, line: 219, flags: DIFlagFwdDecl)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !3358, file: !3359, line: 222, baseType: !7, size: 32, offset: 7936)
!3485 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !3358, file: !3359, line: 223, baseType: !3486, size: 64, offset: 8000)
!3486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3487, size: 64)
!3487 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !3359, line: 223, flags: DIFlagFwdDecl)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !3358, file: !3359, line: 230, baseType: !725, size: 8, offset: 8064)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !3358, file: !3359, line: 231, baseType: !694, size: 16, offset: 8080)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !3358, file: !3359, line: 232, baseType: !694, size: 16, offset: 8096)
!3491 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !3358, file: !3359, line: 234, baseType: !461, size: 64, offset: 8128)
!3492 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !3358, file: !3359, line: 237, baseType: !525, size: 256, offset: 8192)
!3493 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !3358, file: !3359, line: 243, baseType: !666, size: 320, offset: 8448)
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !102, file: !103, line: 1111, baseType: !3495, size: 64, offset: 15424)
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !3359, line: 20, size: 16640, elements: !3497)
!3497 = !{!3498, !3499, !3500, !3501}
!3498 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3496, file: !3359, line: 21, baseType: !479, size: 32)
!3499 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3496, file: !3359, line: 22, baseType: !120, size: 32, offset: 32)
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3496, file: !3359, line: 23, baseType: !588, size: 192, offset: 64)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3496, file: !3359, line: 24, baseType: !3502, size: 16384, offset: 256)
!3502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3503, size: 16384, elements: !1184)
!3503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !814, line: 51, size: 256, elements: !3504)
!3504 = !{!3505}
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3503, file: !814, line: 52, baseType: !3506, size: 256)
!3506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !814, line: 37, size: 256, elements: !3507)
!3507 = !{!3508, !3515, !3516, !3520}
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3506, file: !814, line: 39, baseType: !3509, size: 64)
!3509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3510, line: 83, baseType: !3511)
!3510 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3512, size: 64)
!3512 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3510, line: 82, baseType: !3513)
!3513 = !DISubroutineType(types: !3514)
!3514 = !{null, !98}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3506, file: !814, line: 40, baseType: !94, size: 64, offset: 64)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3506, file: !814, line: 46, baseType: !3517, size: 64, offset: 128)
!3517 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3510, line: 86, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3519, size: 64)
!3519 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3510, line: 85, baseType: !2310)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3506, file: !814, line: 48, baseType: !3373, size: 64, offset: 192)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !102, file: !103, line: 1112, baseType: !3373, size: 64, offset: 15488)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !102, file: !103, line: 1113, baseType: !3373, size: 64, offset: 15552)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !102, file: !103, line: 1115, baseType: !3373, size: 64, offset: 15616)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !102, file: !103, line: 1116, baseType: !3369, size: 192, offset: 15680)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !102, file: !103, line: 1117, baseType: !94, size: 64, offset: 15872)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !102, file: !103, line: 1118, baseType: !1039, size: 64, offset: 15936)
!3527 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !102, file: !103, line: 1119, baseType: !7, size: 32, offset: 16000)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !102, file: !103, line: 1121, baseType: !508, size: 64, offset: 16064)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !102, file: !103, line: 1125, baseType: !3530, size: 64, offset: 16128)
!3530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3531, size: 64)
!3531 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !103, line: 43, flags: DIFlagFwdDecl)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !102, file: !103, line: 1127, baseType: !607, size: 32, offset: 16192)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !102, file: !103, line: 1128, baseType: !7, size: 32, offset: 16224)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !102, file: !103, line: 1130, baseType: !3535, size: 128, offset: 16256)
!3535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3536, line: 37, size: 128, elements: !3537)
!3536 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3537 = !{!3538, !3539, !3540}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3535, file: !3536, line: 38, baseType: !98, size: 32)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3535, file: !3536, line: 39, baseType: !125, size: 32, offset: 32)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3535, file: !3536, line: 40, baseType: !3541, size: 64, offset: 64)
!3541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3542, size: 64)
!3542 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3536, line: 24, flags: DIFlagFwdDecl)
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !102, file: !103, line: 1131, baseType: !3544, size: 256, offset: 16384)
!3544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3545, line: 12, size: 256, elements: !3546)
!3545 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3546 = !{!3547, !3548, !3549, !3550}
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3544, file: !3545, line: 13, baseType: !736, size: 64)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3544, file: !3545, line: 14, baseType: !94, size: 64, offset: 64)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3544, file: !3545, line: 15, baseType: !94, size: 64, offset: 128)
!3550 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3544, file: !3545, line: 16, baseType: !725, size: 8, offset: 192)
!3551 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !102, file: !103, line: 1134, baseType: !180, size: 64, offset: 16640)
!3552 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !102, file: !103, line: 1135, baseType: !180, size: 64, offset: 16704)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !102, file: !103, line: 1138, baseType: !479, size: 32, offset: 16768)
!3554 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !102, file: !103, line: 1141, baseType: !278, size: 32, offset: 16800)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !102, file: !103, line: 1143, baseType: !3556, size: 64, offset: 16832)
!3556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !103, line: 735, size: 64, elements: !3557)
!3557 = !{!3558}
!3558 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3556, file: !103, line: 736, baseType: !3559, size: 64)
!3559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3556, size: 64)
!3560 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !102, file: !103, line: 1147, baseType: !344, size: 128, offset: 16896)
!3561 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !102, file: !103, line: 1149, baseType: !101, size: 64, offset: 17024)
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !102, file: !103, line: 1151, baseType: !3563, size: 64, offset: 17088)
!3563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3564 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !103, line: 1151, flags: DIFlagFwdDecl)
!3565 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !102, file: !103, line: 1188, baseType: !93, size: 64, offset: 17152)
!3566 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !102, file: !103, line: 1191, baseType: !3567, size: 64, offset: 17216)
!3567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3568, size: 64)
!3568 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !103, line: 44, flags: DIFlagFwdDecl)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !102, file: !103, line: 1194, baseType: !3570, size: 64, offset: 17280)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !103, line: 45, flags: DIFlagFwdDecl)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !102, file: !103, line: 1197, baseType: !3573, size: 64, offset: 17344)
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3574, size: 64)
!3574 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !103, line: 61, flags: DIFlagFwdDecl)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !102, file: !103, line: 1199, baseType: !3576, size: 64, offset: 17408)
!3576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3577, size: 64)
!3577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3578, line: 99, size: 128, elements: !3579)
!3578 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3579 = !{!3580, !3581, !3582}
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3577, file: !3578, line: 100, baseType: !518, size: 64)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3577, file: !3578, line: 101, baseType: !125, size: 32, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3577, file: !3578, line: 103, baseType: !151, size: 16, offset: 96)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !102, file: !103, line: 1202, baseType: !3584, size: 64, offset: 17472)
!3584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3585, size: 64)
!3585 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !103, line: 48, flags: DIFlagFwdDecl)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !102, file: !103, line: 1205, baseType: !94, size: 64, offset: 17536)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !102, file: !103, line: 1206, baseType: !3588, size: 64, offset: 17600)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !814, line: 14, baseType: !3590)
!3590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !814, line: 12, size: 384, elements: !3591)
!3591 = !{!3592}
!3592 = !DIDerivedType(tag: DW_TAG_member, scope: !3590, file: !814, line: 13, baseType: !3593, size: 384)
!3593 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3590, file: !814, line: 13, size: 384, elements: !3594)
!3594 = !{!3595, !3596, !3597, !3598}
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3593, file: !814, line: 13, baseType: !98, size: 32)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3593, file: !814, line: 13, baseType: !98, size: 32, offset: 32)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3593, file: !814, line: 13, baseType: !98, size: 32, offset: 64)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3593, file: !814, line: 13, baseType: !3599, size: 256, offset: 128)
!3599 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3600, line: 37, size: 256, elements: !3601)
!3600 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3601 = !{!3602, !3607, !3620, !3626, !3635, !3662, !3667}
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3599, file: !3600, line: 42, baseType: !3603, size: 64)
!3603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 39, size: 64, elements: !3604)
!3604 = !{!3605, !3606}
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3603, file: !3600, line: 40, baseType: !3271, size: 32)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3603, file: !3600, line: 41, baseType: !613, size: 32, offset: 32)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3599, file: !3600, line: 50, baseType: !3608, size: 192)
!3608 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 45, size: 192, elements: !3609)
!3609 = !{!3610, !3612, !3613, !3619}
!3610 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3608, file: !3600, line: 46, baseType: !3611, size: 32)
!3611 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !328, line: 95, baseType: !98)
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3608, file: !3600, line: 47, baseType: !98, size: 32, offset: 32)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3608, file: !3600, line: 48, baseType: !3614, size: 64, offset: 64)
!3614 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3600, line: 11, baseType: !3615)
!3615 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3600, line: 8, size: 64, elements: !3616)
!3616 = !{!3617, !3618}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3615, file: !3600, line: 9, baseType: !98, size: 32)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3615, file: !3600, line: 10, baseType: !93, size: 64)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3608, file: !3600, line: 49, baseType: !98, size: 32, offset: 128)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3599, file: !3600, line: 57, baseType: !3621, size: 128)
!3621 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 53, size: 128, elements: !3622)
!3622 = !{!3623, !3624, !3625}
!3623 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3621, file: !3600, line: 54, baseType: !3271, size: 32)
!3624 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3621, file: !3600, line: 55, baseType: !613, size: 32, offset: 32)
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3621, file: !3600, line: 56, baseType: !3614, size: 64, offset: 64)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3599, file: !3600, line: 66, baseType: !3627, size: 256)
!3627 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 60, size: 256, elements: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3634}
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3627, file: !3600, line: 61, baseType: !3271, size: 32)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3627, file: !3600, line: 62, baseType: !613, size: 32, offset: 32)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3627, file: !3600, line: 63, baseType: !98, size: 32, offset: 64)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3627, file: !3600, line: 64, baseType: !3633, size: 64, offset: 128)
!3633 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !328, line: 94, baseType: !1038)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3627, file: !3600, line: 65, baseType: !3633, size: 64, offset: 192)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3599, file: !3600, line: 105, baseType: !3636, size: 256)
!3636 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 69, size: 256, elements: !3637)
!3637 = !{!3638, !3639}
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3636, file: !3600, line: 70, baseType: !93, size: 64)
!3639 = !DIDerivedType(tag: DW_TAG_member, scope: !3636, file: !3600, line: 79, baseType: !3640, size: 192, offset: 64)
!3640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3636, file: !3600, line: 79, size: 192, elements: !3641)
!3641 = !{!3642, !3643, !3644, !3651, !3656}
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3640, file: !3600, line: 81, baseType: !98, size: 32)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3640, file: !3600, line: 86, baseType: !694, size: 16)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3640, file: !3600, line: 92, baseType: !3645, size: 192)
!3645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3640, file: !3600, line: 88, size: 192, elements: !3646)
!3646 = !{!3647, !3649, !3650}
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3645, file: !3600, line: 89, baseType: !3648, size: 64)
!3648 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !322)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3645, file: !3600, line: 90, baseType: !93, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3645, file: !3600, line: 91, baseType: !93, size: 64, offset: 128)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3640, file: !3600, line: 97, baseType: !3652, size: 96)
!3652 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3640, file: !3600, line: 94, size: 96, elements: !3653)
!3653 = !{!3654, !3655}
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3652, file: !3600, line: 95, baseType: !3648, size: 64)
!3655 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3652, file: !3600, line: 96, baseType: !114, size: 32, offset: 64)
!3656 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3640, file: !3600, line: 103, baseType: !3657, size: 128)
!3657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3640, file: !3600, line: 99, size: 128, elements: !3658)
!3658 = !{!3659, !3660, !3661}
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3657, file: !3600, line: 100, baseType: !94, size: 64)
!3660 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3657, file: !3600, line: 101, baseType: !114, size: 32, offset: 64)
!3661 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3657, file: !3600, line: 102, baseType: !114, size: 32, offset: 96)
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3599, file: !3600, line: 111, baseType: !3663, size: 128)
!3663 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 108, size: 128, elements: !3664)
!3664 = !{!3665, !3666}
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3663, file: !3600, line: 109, baseType: !997, size: 64)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3663, file: !3600, line: 110, baseType: !98, size: 32, offset: 64)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3599, file: !3600, line: 118, baseType: !3668, size: 128)
!3668 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3599, file: !3600, line: 114, size: 128, elements: !3669)
!3669 = !{!3670, !3671, !3672}
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3668, file: !3600, line: 115, baseType: !93, size: 64)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3668, file: !3600, line: 116, baseType: !98, size: 32, offset: 64)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3668, file: !3600, line: 117, baseType: !7, size: 32, offset: 96)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !102, file: !103, line: 1208, baseType: !3453, size: 448, offset: 17664)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !102, file: !103, line: 1215, baseType: !180, size: 64, offset: 18112)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !102, file: !103, line: 1217, baseType: !180, size: 64, offset: 18176)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !102, file: !103, line: 1219, baseType: !180, size: 64, offset: 18240)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !102, file: !103, line: 1223, baseType: !3678, size: 64, offset: 18304)
!3678 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3679, line: 99, baseType: !3680)
!3679 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3679, line: 99, size: 64, elements: !3681)
!3681 = !{!3682}
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3680, file: !3679, line: 99, baseType: !412, size: 64)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !102, file: !103, line: 1225, baseType: !853, size: 32, offset: 18368)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !102, file: !103, line: 1226, baseType: !98, size: 32, offset: 18400)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !102, file: !103, line: 1227, baseType: !98, size: 32, offset: 18432)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !102, file: !103, line: 1231, baseType: !3687, size: 64, offset: 18496)
!3687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3688, size: 64)
!3688 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !103, line: 1231, flags: DIFlagFwdDecl)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !102, file: !103, line: 1233, baseType: !185, size: 128, offset: 18560)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !102, file: !103, line: 1240, baseType: !3691, size: 64, offset: 18688)
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3692, size: 64)
!3692 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !103, line: 62, flags: DIFlagFwdDecl)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !102, file: !103, line: 1242, baseType: !3694, size: 64, offset: 18752)
!3694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3695 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !103, line: 1242, flags: DIFlagFwdDecl)
!3696 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !102, file: !103, line: 1244, baseType: !185, size: 128, offset: 18816)
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !102, file: !103, line: 1245, baseType: !3698, size: 64, offset: 18944)
!3698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3699, size: 64)
!3699 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !103, line: 51, flags: DIFlagFwdDecl)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !102, file: !103, line: 1246, baseType: !525, size: 256, offset: 19008)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !102, file: !103, line: 1247, baseType: !7, size: 32, offset: 19264)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !102, file: !103, line: 1250, baseType: !3703, size: 64, offset: 19328)
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !103, line: 57, flags: DIFlagFwdDecl)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !102, file: !103, line: 1251, baseType: !525, size: 256, offset: 19392)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !102, file: !103, line: 1252, baseType: !185, size: 128, offset: 19648)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !102, file: !103, line: 1259, baseType: !1478, size: 64, offset: 19776)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !102, file: !103, line: 1260, baseType: !694, size: 16, offset: 19840)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !102, file: !103, line: 1261, baseType: !694, size: 16, offset: 19856)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !102, file: !103, line: 1314, baseType: !3711, size: 64, offset: 19904)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3712, size: 64)
!3712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3713, line: 62, size: 256, align: 256, elements: !3714)
!3713 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3714 = !{!3715, !3716, !3717, !3718, !3719, !3720, !3721}
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3712, file: !3713, line: 75, baseType: !114, size: 32)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3712, file: !3713, line: 90, baseType: !114, size: 32, offset: 32)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3712, file: !3713, line: 112, baseType: !181, size: 64, offset: 64)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3712, file: !3713, line: 132, baseType: !114, size: 32, offset: 128)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3712, file: !3713, line: 140, baseType: !114, size: 32, offset: 160)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3712, file: !3713, line: 149, baseType: !114, size: 32, offset: 192)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3712, file: !3713, line: 154, baseType: !3722, offset: 224)
!3722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !603)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !102, file: !103, line: 1315, baseType: !112, size: 32, offset: 19968)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !102, file: !103, line: 1316, baseType: !112, size: 32, offset: 20000)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !102, file: !103, line: 1321, baseType: !94, size: 64, offset: 20032)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !102, file: !103, line: 1325, baseType: !98, size: 32, offset: 20096)
!3727 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !102, file: !103, line: 1326, baseType: !98, size: 32, offset: 20128)
!3728 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !102, file: !103, line: 1327, baseType: !98, size: 32, offset: 20160)
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !102, file: !103, line: 1328, baseType: !98, size: 32, offset: 20192)
!3730 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !102, file: !103, line: 1329, baseType: !505, size: 128, align: 64, offset: 20224)
!3731 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !102, file: !103, line: 1332, baseType: !3732, size: 128, offset: 20352)
!3732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3733, line: 51, size: 128, elements: !3734)
!3733 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3734 = !{!3735, !3740, !3741}
!3735 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3732, file: !3733, line: 60, baseType: !3736, size: 64)
!3736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3737, line: 7, size: 64, elements: !3738)
!3737 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3738 = !{!3739}
!3739 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3736, file: !3737, line: 12, baseType: !409, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3732, file: !3733, line: 63, baseType: !725, size: 8, offset: 64)
!3741 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3732, file: !3733, line: 70, baseType: !725, size: 8, offset: 72)
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !102, file: !103, line: 1335, baseType: !2940, size: 64, offset: 20480)
!3743 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !102, file: !103, line: 1337, baseType: !3744, size: 128, offset: 20544)
!3744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3733, line: 39, size: 128, elements: !3745)
!3745 = !{!3746, !3747, !3748}
!3746 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3744, file: !3733, line: 40, baseType: !1265, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3744, file: !3733, line: 42, baseType: !114, size: 32, offset: 64)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3744, file: !3733, line: 43, baseType: !114, size: 32, offset: 96)
!3749 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !102, file: !103, line: 1340, baseType: !3750, size: 64, offset: 20672)
!3750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!3751 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !103, line: 69, flags: DIFlagFwdDecl)
!3752 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !102, file: !103, line: 1351, baseType: !98, size: 32, offset: 20736)
!3753 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !102, file: !103, line: 1352, baseType: !98, size: 32, offset: 20768)
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !102, file: !103, line: 1354, baseType: !94, size: 64, offset: 20800)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !102, file: !103, line: 1364, baseType: !180, size: 64, offset: 20864)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !102, file: !103, line: 1365, baseType: !180, size: 64, offset: 20928)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !102, file: !103, line: 1412, baseType: !94, size: 64, offset: 20992)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !102, file: !103, line: 1453, baseType: !3759, size: 64, offset: 21056)
!3759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3760, size: 64)
!3760 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !103, line: 1453, flags: DIFlagFwdDecl)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !102, file: !103, line: 1457, baseType: !3762, size: 64, offset: 21120)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3763, size: 64)
!3763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !81, line: 61, size: 576, elements: !3764)
!3764 = !{!3765, !3766, !3785, !3788, !3789, !3822, !3832}
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3763, file: !81, line: 62, baseType: !80, size: 32)
!3766 = !DIDerivedType(tag: DW_TAG_member, scope: !3763, file: !81, line: 64, baseType: !3767, size: 192, offset: 64)
!3767 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3763, file: !81, line: 64, size: 192, elements: !3768)
!3768 = !{!3769, !3780}
!3769 = !DIDerivedType(tag: DW_TAG_member, scope: !3767, file: !81, line: 65, baseType: !3770, size: 192)
!3770 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3767, file: !81, line: 65, size: 192, elements: !3771)
!3771 = !{!3772, !3779}
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3770, file: !81, line: 66, baseType: !3773, size: 128)
!3773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3774, line: 50, size: 128, elements: !3775)
!3774 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3775 = !{!3776, !3777, !3778}
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3773, file: !3774, line: 52, baseType: !94, size: 64)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3773, file: !3774, line: 54, baseType: !7, size: 32, offset: 64)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3773, file: !3774, line: 55, baseType: !7, size: 32, offset: 96)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3770, file: !81, line: 67, baseType: !94, size: 64, offset: 128)
!3780 = !DIDerivedType(tag: DW_TAG_member, scope: !3767, file: !81, line: 70, baseType: !3781, size: 192)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3767, file: !81, line: 70, size: 192, elements: !3782)
!3782 = !{!3783, !3784}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3781, file: !81, line: 71, baseType: !505, size: 128, align: 64)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3781, file: !81, line: 72, baseType: !94, size: 64, offset: 128)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3763, file: !81, line: 76, baseType: !3786, size: 64, offset: 256)
!3786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3787, size: 64)
!3787 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !81, line: 76, flags: DIFlagFwdDecl)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3763, file: !81, line: 77, baseType: !94, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3763, file: !81, line: 79, baseType: !3790, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3791, size: 64)
!3791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3774, line: 25, size: 256, elements: !3792)
!3792 = !{!3793, !3799, !3803}
!3793 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !3774, line: 26, baseType: !3794, size: 128)
!3794 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !3774, line: 26, size: 128, elements: !3795)
!3795 = !{!3796, !3798}
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3794, file: !3774, line: 27, baseType: !3797, size: 128)
!3797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 128, elements: !2702)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3794, file: !3774, line: 28, baseType: !3797, size: 128)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3791, file: !3774, line: 31, baseType: !3800, size: 64, offset: 128)
!3800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3801, size: 64)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3802)
!3802 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3774, line: 23, flags: DIFlagFwdDecl)
!3803 = !DIDerivedType(tag: DW_TAG_member, scope: !3791, file: !3774, line: 33, baseType: !3804, size: 64, offset: 192)
!3804 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3791, file: !3774, line: 33, size: 64, elements: !3805)
!3805 = !{!3806, !3812, !3817}
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3804, file: !3774, line: 38, baseType: !3807, size: 64)
!3807 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3804, file: !3774, line: 34, size: 64, elements: !3808)
!3808 = !{!3809, !3810, !3811}
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3807, file: !3774, line: 35, baseType: !658, size: 32)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3807, file: !3774, line: 36, baseType: !295, size: 8, offset: 32)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3807, file: !3774, line: 37, baseType: !295, size: 8, offset: 40)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3804, file: !3774, line: 42, baseType: !3813, size: 16)
!3813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3804, file: !3774, line: 39, size: 16, elements: !3814)
!3814 = !{!3815, !3816}
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3813, file: !3774, line: 40, baseType: !295, size: 8)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3813, file: !3774, line: 41, baseType: !295, size: 8, offset: 8)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3804, file: !3774, line: 46, baseType: !3818, size: 16)
!3818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3804, file: !3774, line: 43, size: 16, elements: !3819)
!3819 = !{!3820, !3821}
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3818, file: !3774, line: 44, baseType: !295, size: 8)
!3821 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3818, file: !3774, line: 45, baseType: !295, size: 8, offset: 8)
!3822 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3763, file: !81, line: 81, baseType: !3823, size: 64, offset: 448)
!3823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3824, size: 64)
!3824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !81, line: 85, size: 384, elements: !3825)
!3825 = !{!3826, !3827, !3828, !3829, !3830, !3831}
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3824, file: !81, line: 86, baseType: !3786, size: 64)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3824, file: !81, line: 87, baseType: !94, size: 64, offset: 64)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3824, file: !81, line: 88, baseType: !94, size: 64, offset: 128)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3824, file: !81, line: 89, baseType: !94, size: 64, offset: 192)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3824, file: !81, line: 90, baseType: !725, size: 8, offset: 256)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3824, file: !81, line: 92, baseType: !3823, size: 64, offset: 320)
!3832 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3763, file: !81, line: 82, baseType: !7, size: 32, offset: 512)
!3833 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !102, file: !103, line: 1463, baseType: !3834, offset: 21184)
!3834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !103, line: 739, elements: !490)
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !102, file: !103, line: 1470, baseType: !505, size: 128, align: 64, offset: 21184)
!3836 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !102, file: !103, line: 1471, baseType: !120, size: 32, offset: 21312)
!3837 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !102, file: !103, line: 1472, baseType: !98, size: 32, offset: 21344)
!3838 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !102, file: !103, line: 1474, baseType: !101, size: 64, offset: 21376)
!3839 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !102, file: !103, line: 1475, baseType: !2190, size: 320, offset: 21440)
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !102, file: !103, line: 1478, baseType: !3841, size: 64, offset: 21760)
!3841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3842, size: 64)
!3842 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !103, line: 1478, flags: DIFlagFwdDecl)
!3843 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !102, file: !103, line: 1482, baseType: !120, size: 32, offset: 21824)
!3844 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !102, file: !103, line: 1489, baseType: !93, size: 64, offset: 21888)
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !102, file: !103, line: 1504, baseType: !93, size: 64, offset: 21952)
!3846 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !102, file: !103, line: 1505, baseType: !181, size: 64, offset: 22016)
!3847 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !102, file: !103, line: 1506, baseType: !180, size: 64, offset: 22080)
!3848 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !102, file: !103, line: 1507, baseType: !181, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !102, file: !103, line: 1508, baseType: !181, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3850 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !102, file: !103, line: 1509, baseType: !181, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3851 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !102, file: !103, line: 1510, baseType: !505, size: 128, align: 64, offset: 22208)
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !102, file: !103, line: 1511, baseType: !98, size: 32, offset: 22336)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !102, file: !103, line: 1515, baseType: !3854, size: 64, offset: 22400)
!3854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !139, line: 56, size: 64, elements: !3855)
!3855 = !{!3856}
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3854, file: !139, line: 57, baseType: !142, size: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !102, file: !103, line: 1518, baseType: !3854, size: 64, offset: 22464)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !102, file: !103, line: 1528, baseType: !505, size: 128, align: 64, offset: 22528)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !102, file: !103, line: 1552, baseType: !3860, size: 35328, offset: 23040)
!3860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !3861, line: 430, size: 35328, elements: !3862)
!3861 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!3862 = !{!3863, !3865, !3866, !3867, !3868, !3869, !3870, !3871, !3872, !3876, !3877, !3878, !3879, !3880, !3881, !3884, !3885, !3886, !3887}
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3860, file: !3861, line: 432, baseType: !3864, size: 192)
!3864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3119, size: 192, elements: !563)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3860, file: !3861, line: 436, baseType: !94, size: 64, offset: 192)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3860, file: !3861, line: 440, baseType: !151, size: 16, offset: 256)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3860, file: !3861, line: 441, baseType: !151, size: 16, offset: 272)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3860, file: !3861, line: 442, baseType: !151, size: 16, offset: 288)
!3869 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3860, file: !3861, line: 443, baseType: !151, size: 16, offset: 304)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3860, file: !3861, line: 447, baseType: !94, size: 64, offset: 320)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3860, file: !3861, line: 448, baseType: !94, size: 64, offset: 384)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3860, file: !3861, line: 459, baseType: !3873, size: 256, offset: 448)
!3873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3874, size: 256, elements: !584)
!3874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3875, size: 64)
!3875 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !3861, line: 428, flags: DIFlagFwdDecl)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3860, file: !3861, line: 461, baseType: !94, size: 64, offset: 704)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3860, file: !3861, line: 463, baseType: !94, size: 64, offset: 768)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3860, file: !3861, line: 465, baseType: !94, size: 64, offset: 832)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3860, file: !3861, line: 466, baseType: !94, size: 64, offset: 896)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3860, file: !3861, line: 467, baseType: !94, size: 64, offset: 960)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3860, file: !3861, line: 473, baseType: !3882, size: 64, offset: 1024)
!3882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3883, size: 64)
!3883 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !3861, line: 10, flags: DIFlagFwdDecl)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3860, file: !3861, line: 480, baseType: !94, size: 64, offset: 1088)
!3885 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3860, file: !3861, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3886 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3860, file: !3861, line: 491, baseType: !112, size: 32, offset: 1184)
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3860, file: !3861, line: 501, baseType: !3888, size: 33792, offset: 1536)
!3888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3889, line: 448, size: 33792, elements: !3890)
!3889 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3890 = !{!3891, !3892, !3893, !4055, !4056, !4062, !4063}
!3891 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3888, file: !3889, line: 461, baseType: !7, size: 32)
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3888, file: !3889, line: 468, baseType: !94, size: 64, offset: 64)
!3893 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3888, file: !3889, line: 476, baseType: !3894, size: 64, offset: 128)
!3894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3895, size: 64)
!3895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3889, line: 356, size: 33280, align: 512, elements: !3896)
!3896 = !{!3897, !3898, !3899, !3900, !3901, !3902, !3903, !3904, !3905, !3906}
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3895, file: !3889, line: 358, baseType: !7, size: 32)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3895, file: !3889, line: 361, baseType: !7, size: 32, offset: 32)
!3899 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3895, file: !3889, line: 364, baseType: !180, size: 64, offset: 64)
!3900 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3895, file: !3889, line: 367, baseType: !180, size: 64, offset: 128)
!3901 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3895, file: !3889, line: 370, baseType: !180, size: 64, offset: 192)
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3895, file: !3889, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3903 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3895, file: !3889, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3904 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3895, file: !3889, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3905 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3895, file: !3889, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3895, file: !3889, line: 397, baseType: !3907, size: 32768, offset: 512)
!3907 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3889, line: 348, size: 32768, elements: !3908)
!3908 = !{!3909, !3924, !3961, !4038, !4051}
!3909 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3907, file: !3889, line: 349, baseType: !3910, size: 896)
!3910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3889, line: 12, size: 896, elements: !3911)
!3911 = !{!3912, !3913, !3914, !3915, !3916, !3917, !3918, !3919, !3923}
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3910, file: !3889, line: 13, baseType: !112, size: 32)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3910, file: !3889, line: 14, baseType: !112, size: 32, offset: 32)
!3914 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3910, file: !3889, line: 15, baseType: !112, size: 32, offset: 64)
!3915 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3910, file: !3889, line: 16, baseType: !112, size: 32, offset: 96)
!3916 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3910, file: !3889, line: 17, baseType: !112, size: 32, offset: 128)
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3910, file: !3889, line: 18, baseType: !112, size: 32, offset: 160)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3910, file: !3889, line: 19, baseType: !112, size: 32, offset: 192)
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3910, file: !3889, line: 22, baseType: !3920, size: 640, offset: 224)
!3920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 640, elements: !3921)
!3921 = !{!3922}
!3922 = !DISubrange(count: 20)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3910, file: !3889, line: 25, baseType: !112, size: 32, offset: 864)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3907, file: !3889, line: 350, baseType: !3925, size: 4096, align: 128)
!3925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3889, line: 34, size: 4096, align: 128, elements: !3926)
!3926 = !{!3927, !3928, !3929, !3930, !3931, !3946, !3947, !3948, !3950, !3952, !3956}
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3925, file: !3889, line: 35, baseType: !149, size: 16)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3925, file: !3889, line: 36, baseType: !149, size: 16, offset: 16)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3925, file: !3889, line: 37, baseType: !149, size: 16, offset: 32)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3925, file: !3889, line: 38, baseType: !149, size: 16, offset: 48)
!3931 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !3889, line: 39, baseType: !3932, size: 128, offset: 64)
!3932 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3925, file: !3889, line: 39, size: 128, elements: !3933)
!3933 = !{!3934, !3939}
!3934 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !3889, line: 40, baseType: !3935, size: 128)
!3935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !3889, line: 40, size: 128, elements: !3936)
!3936 = !{!3937, !3938}
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3935, file: !3889, line: 41, baseType: !180, size: 64)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3935, file: !3889, line: 42, baseType: !180, size: 64, offset: 64)
!3939 = !DIDerivedType(tag: DW_TAG_member, scope: !3932, file: !3889, line: 44, baseType: !3940, size: 128)
!3940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3932, file: !3889, line: 44, size: 128, elements: !3941)
!3941 = !{!3942, !3943, !3944, !3945}
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3940, file: !3889, line: 45, baseType: !112, size: 32)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3940, file: !3889, line: 46, baseType: !112, size: 32, offset: 32)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3940, file: !3889, line: 47, baseType: !112, size: 32, offset: 64)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3940, file: !3889, line: 48, baseType: !112, size: 32, offset: 96)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3925, file: !3889, line: 51, baseType: !112, size: 32, offset: 192)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3925, file: !3889, line: 52, baseType: !112, size: 32, offset: 224)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3925, file: !3889, line: 55, baseType: !3949, size: 1024, offset: 256)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 1024, elements: !2693)
!3950 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3925, file: !3889, line: 58, baseType: !3951, size: 2048, offset: 1280)
!3951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 2048, elements: !1184)
!3952 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3925, file: !3889, line: 60, baseType: !3953, size: 384, offset: 3328)
!3953 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 384, elements: !3954)
!3954 = !{!3955}
!3955 = !DISubrange(count: 12)
!3956 = !DIDerivedType(tag: DW_TAG_member, scope: !3925, file: !3889, line: 62, baseType: !3957, size: 384, offset: 3712)
!3957 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3925, file: !3889, line: 62, size: 384, elements: !3958)
!3958 = !{!3959, !3960}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3957, file: !3889, line: 63, baseType: !3953, size: 384)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3957, file: !3889, line: 64, baseType: !3953, size: 384)
!3961 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3907, file: !3889, line: 351, baseType: !3962, size: 1088)
!3962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3889, line: 79, size: 1088, elements: !3963)
!3963 = !{!3964, !3965, !3966, !3967, !3968, !3969, !3970, !3971, !3972, !3973, !3974, !3975, !3976, !3977, !3978, !4037}
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3962, file: !3889, line: 80, baseType: !112, size: 32)
!3965 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3962, file: !3889, line: 81, baseType: !112, size: 32, offset: 32)
!3966 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3962, file: !3889, line: 82, baseType: !112, size: 32, offset: 64)
!3967 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3962, file: !3889, line: 83, baseType: !112, size: 32, offset: 96)
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3962, file: !3889, line: 84, baseType: !112, size: 32, offset: 128)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3962, file: !3889, line: 85, baseType: !112, size: 32, offset: 160)
!3970 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3962, file: !3889, line: 86, baseType: !112, size: 32, offset: 192)
!3971 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3962, file: !3889, line: 88, baseType: !3920, size: 640, offset: 224)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3962, file: !3889, line: 89, baseType: !295, size: 8, offset: 864)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3962, file: !3889, line: 90, baseType: !295, size: 8, offset: 872)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3962, file: !3889, line: 91, baseType: !295, size: 8, offset: 880)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3962, file: !3889, line: 92, baseType: !295, size: 8, offset: 888)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3962, file: !3889, line: 93, baseType: !295, size: 8, offset: 896)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3962, file: !3889, line: 94, baseType: !295, size: 8, offset: 904)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3962, file: !3889, line: 95, baseType: !3979, size: 64, offset: 960)
!3979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3980, size: 64)
!3980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3981, line: 11, size: 128, elements: !3982)
!3981 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3982 = !{!3983, !3984}
!3983 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3980, file: !3981, line: 12, baseType: !997, size: 64)
!3984 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3980, file: !3981, line: 13, baseType: !3985, size: 64, offset: 64)
!3985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3986, size: 64)
!3986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3987, line: 103, size: 1344, elements: !3988)
!3987 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3988 = !{!3989, !3990, !3991, !3992, !3993, !3994, !3995, !3996, !3997, !3998, !3999, !4000, !4001, !4002, !4003, !4004, !4005, !4006, !4017, !4018, !4019}
!3989 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3986, file: !3987, line: 109, baseType: !94, size: 64)
!3990 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3986, file: !3987, line: 110, baseType: !94, size: 64, offset: 64)
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3986, file: !3987, line: 111, baseType: !94, size: 64, offset: 128)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3986, file: !3987, line: 112, baseType: !94, size: 64, offset: 192)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3986, file: !3987, line: 113, baseType: !94, size: 64, offset: 256)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3986, file: !3987, line: 114, baseType: !94, size: 64, offset: 320)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3986, file: !3987, line: 117, baseType: !94, size: 64, offset: 384)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3986, file: !3987, line: 118, baseType: !94, size: 64, offset: 448)
!3997 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3986, file: !3987, line: 119, baseType: !94, size: 64, offset: 512)
!3998 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3986, file: !3987, line: 120, baseType: !94, size: 64, offset: 576)
!3999 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3986, file: !3987, line: 121, baseType: !94, size: 64, offset: 640)
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3986, file: !3987, line: 122, baseType: !94, size: 64, offset: 704)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3986, file: !3987, line: 123, baseType: !94, size: 64, offset: 768)
!4002 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3986, file: !3987, line: 124, baseType: !94, size: 64, offset: 832)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3986, file: !3987, line: 125, baseType: !94, size: 64, offset: 896)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3986, file: !3987, line: 139, baseType: !94, size: 64, offset: 960)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3986, file: !3987, line: 142, baseType: !94, size: 64, offset: 1024)
!4006 = !DIDerivedType(tag: DW_TAG_member, scope: !3986, file: !3987, line: 144, baseType: !4007, size: 64, offset: 1088)
!4007 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3986, file: !3987, line: 144, size: 64, elements: !4008)
!4008 = !{!4009, !4010, !4011}
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4007, file: !3987, line: 146, baseType: !149, size: 16)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !4007, file: !3987, line: 148, baseType: !180, size: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !4007, file: !3987, line: 150, baseType: !4012, size: 64)
!4012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3987, line: 59, size: 64, elements: !4013)
!4013 = !{!4014, !4015, !4016}
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !4012, file: !3987, line: 61, baseType: !180, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !4012, file: !3987, line: 63, baseType: !180, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !4012, file: !3987, line: 65, baseType: !180, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3986, file: !3987, line: 153, baseType: !94, size: 64, offset: 1152)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3986, file: !3987, line: 154, baseType: !94, size: 64, offset: 1216)
!4019 = !DIDerivedType(tag: DW_TAG_member, scope: !3986, file: !3987, line: 156, baseType: !4020, size: 64, offset: 1280)
!4020 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3986, file: !3987, line: 156, size: 64, elements: !4021)
!4021 = !{!4022, !4023, !4024}
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4020, file: !3987, line: 158, baseType: !149, size: 16)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !4020, file: !3987, line: 160, baseType: !180, size: 64)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !4020, file: !3987, line: 162, baseType: !4025, size: 64)
!4025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3987, line: 69, size: 64, elements: !4026)
!4026 = !{!4027, !4028, !4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036}
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !4025, file: !3987, line: 71, baseType: !180, size: 16, flags: DIFlagBitField, extraData: i64 0)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !4025, file: !3987, line: 73, baseType: !180, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!4029 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !4025, file: !3987, line: 75, baseType: !180, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!4030 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !4025, file: !3987, line: 77, baseType: !180, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!4031 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !4025, file: !3987, line: 80, baseType: !180, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!4032 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !4025, file: !3987, line: 83, baseType: !180, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!4033 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !4025, file: !3987, line: 86, baseType: !180, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!4034 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !4025, file: !3987, line: 88, baseType: !180, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!4035 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !4025, file: !3987, line: 93, baseType: !180, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!4036 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !4025, file: !3987, line: 100, baseType: !180, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!4037 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3962, file: !3889, line: 96, baseType: !112, size: 32, offset: 1024)
!4038 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3907, file: !3889, line: 352, baseType: !4039, size: 4608, align: 512)
!4039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3889, line: 333, size: 4608, align: 512, elements: !4040)
!4040 = !{!4041, !4042, !4049}
!4041 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !4039, file: !3889, line: 334, baseType: !3925, size: 4096, align: 128)
!4042 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !4039, file: !3889, line: 335, baseType: !4043, size: 512, offset: 4096)
!4043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3889, line: 312, size: 512, elements: !4044)
!4044 = !{!4045, !4046, !4047}
!4045 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !4043, file: !3889, line: 313, baseType: !180, size: 64)
!4046 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !4043, file: !3889, line: 314, baseType: !180, size: 64, offset: 64)
!4047 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !4043, file: !3889, line: 315, baseType: !4048, size: 384, offset: 128)
!4048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 384, elements: !712)
!4049 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !4039, file: !3889, line: 336, baseType: !4050, offset: 4608)
!4050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, elements: !603)
!4051 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3907, file: !3889, line: 353, baseType: !4052, size: 32768)
!4052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !295, size: 32768, elements: !4053)
!4053 = !{!4054}
!4054 = !DISubrange(count: 4096)
!4055 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3888, file: !3889, line: 484, baseType: !3894, size: 64, offset: 192)
!4056 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3888, file: !3889, line: 491, baseType: !4057, size: 128, offset: 256)
!4057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3889, line: 404, size: 128, elements: !4058)
!4058 = !{!4059, !4060, !4061}
!4059 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !4057, file: !3889, line: 424, baseType: !180, size: 64)
!4060 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !4057, file: !3889, line: 432, baseType: !7, size: 32, offset: 64)
!4061 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !4057, file: !3889, line: 440, baseType: !7, size: 32, offset: 96)
!4062 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3888, file: !3889, line: 498, baseType: !4057, size: 128, offset: 384)
!4063 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3888, file: !3889, line: 508, baseType: !3895, size: 33280, align: 512, offset: 512)
!4064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4065, size: 64)
!4065 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !112)
!4066 = !{!0, !4067, !4069, !4080, !4085, !4087, !4089, !4095}
!4067 = !DIGlobalVariableExpression(var: !4068, expr: !DIExpression())
!4068 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_pkeys__298_184_create_init_pkru_value7299", scope: !2, file: !3, line: 184, type: !93, isLocal: true, isDefinition: true)
!4069 = !DIGlobalVariableExpression(var: !4070, expr: !DIExpression())
!4070 = distinct !DIGlobalVariable(name: "__setup_setup_init_pkru", scope: !2, file: !3, line: 197, type: !4071, isLocal: true, isDefinition: true, align: 64)
!4071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obs_kernel_param", file: !4072, line: 324, size: 192, elements: !4073)
!4072 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!4073 = !{!4074, !4075, !4079}
!4074 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !4071, file: !4072, line: 325, baseType: !95, size: 64)
!4075 = !DIDerivedType(tag: DW_TAG_member, name: "setup_func", scope: !4071, file: !4072, line: 326, baseType: !4076, size: 64, offset: 64)
!4076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4077, size: 64)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!98, !736}
!4079 = !DIDerivedType(tag: DW_TAG_member, name: "early", scope: !4071, file: !4072, line: 327, baseType: !98, size: 32, offset: 128)
!4080 = !DIGlobalVariableExpression(var: !4081, expr: !DIExpression())
!4081 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !4082, isLocal: true, isDefinition: true)
!4082 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 80, elements: !4083)
!4083 = !{!4084}
!4084 = !DISubrange(count: 10)
!4085 = !DIGlobalVariableExpression(var: !4086, expr: !DIExpression())
!4086 = distinct !DIGlobalVariable(name: "fops_init_pkru", scope: !2, file: !3, line: 168, type: !2855, isLocal: true, isDefinition: true)
!4087 = !DIGlobalVariableExpression(var: !4088, expr: !DIExpression())
!4088 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !711, isLocal: true, isDefinition: true)
!4089 = !DIGlobalVariableExpression(var: !4090, expr: !DIExpression())
!4090 = distinct !DIGlobalVariable(scope: null, file: !4091, line: 249, type: !4092, isLocal: true, isDefinition: true)
!4091 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!4092 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 224, elements: !4093)
!4093 = !{!4094}
!4094 = !DISubrange(count: 28)
!4095 = !DIGlobalVariableExpression(var: !4096, expr: !DIExpression())
!4096 = distinct !DIGlobalVariable(name: "__setup_str_setup_init_pkru", scope: !2, file: !3, line: 197, type: !4097, isLocal: true, isDefinition: true, align: 8)
!4097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 88, elements: !4098)
!4098 = !{!4099}
!4099 = !DISubrange(count: 11)
!4100 = !{i32 7, !"Dwarf Version", i32 5}
!4101 = !{i32 2, !"Debug Info Version", i32 3}
!4102 = !{i32 1, !"wchar_size", i32 2}
!4103 = !{i32 8, !"cf-protection-branch", i32 1}
!4104 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4105 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4106 = !{i32 1, !"Code Model", i32 2}
!4107 = !{i32 1, !"override-stack-alignment", i32 8}
!4108 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4109 = distinct !DISubprogram(name: "__execute_only_pkey", scope: !3, file: !3, line: 14, type: !4110, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4112)
!4110 = !DISubroutineType(types: !4111)
!4111 = !{!98, !461}
!4112 = !{!4113, !4114, !4115, !4116}
!4113 = !DILocalVariable(name: "mm", arg: 1, scope: !4109, file: !3, line: 14, type: !461)
!4114 = !DILocalVariable(name: "need_to_set_mm_pkey", scope: !4109, file: !3, line: 16, type: !725)
!4115 = !DILocalVariable(name: "execute_only_pkey", scope: !4109, file: !3, line: 17, type: !98)
!4116 = !DILocalVariable(name: "ret", scope: !4109, file: !3, line: 18, type: !98)
!4117 = !DILocation(line: 14, column: 43, scope: !4109)
!4118 = !DILocation(line: 16, column: 2, scope: !4109)
!4119 = !DILocation(line: 16, column: 7, scope: !4109)
!4120 = !DILocation(line: 17, column: 2, scope: !4109)
!4121 = !DILocation(line: 17, column: 6, scope: !4109)
!4122 = !DILocation(line: 17, column: 26, scope: !4109)
!4123 = !DILocation(line: 17, column: 30, scope: !4109)
!4124 = !DILocation(line: 17, column: 38, scope: !4109)
!4125 = !DILocation(line: 18, column: 2, scope: !4109)
!4126 = !DILocation(line: 18, column: 6, scope: !4109)
!4127 = !DILocation(line: 21, column: 6, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 21, column: 6)
!4129 = !DILocation(line: 21, column: 24, scope: !4128)
!4130 = !DILocation(line: 21, column: 6, scope: !4109)
!4131 = !DILocation(line: 23, column: 37, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4128, file: !3, line: 21, column: 31)
!4133 = !DILocation(line: 23, column: 23, scope: !4132)
!4134 = !DILocation(line: 23, column: 21, scope: !4132)
!4135 = !DILocation(line: 24, column: 7, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !3, line: 24, column: 7)
!4137 = !DILocation(line: 24, column: 25, scope: !4136)
!4138 = !DILocation(line: 24, column: 7, scope: !4132)
!4139 = !DILocation(line: 25, column: 4, scope: !4136)
!4140 = !DILocation(line: 26, column: 23, scope: !4132)
!4141 = !DILocation(line: 27, column: 2, scope: !4132)
!4142 = !DILocation(line: 36, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 36, column: 6)
!4144 = !{i8 0, i8 2}
!4145 = !DILocation(line: 36, column: 27, scope: !4143)
!4146 = !DILocation(line: 37, column: 26, scope: !4143)
!4147 = !DILocation(line: 37, column: 39, scope: !4143)
!4148 = !DILocation(line: 37, column: 7, scope: !4143)
!4149 = !DILocation(line: 36, column: 6, scope: !4109)
!4150 = !DILocation(line: 38, column: 10, scope: !4151)
!4151 = distinct !DILexicalBlock(scope: !4143, file: !3, line: 37, column: 59)
!4152 = !DILocation(line: 38, column: 3, scope: !4151)
!4153 = !DILocation(line: 45, column: 34, scope: !4109)
!4154 = !DILocation(line: 45, column: 43, scope: !4109)
!4155 = !DILocation(line: 45, column: 8, scope: !4109)
!4156 = !DILocation(line: 45, column: 6, scope: !4109)
!4157 = !DILocation(line: 51, column: 6, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 51, column: 6)
!4159 = !DILocation(line: 51, column: 6, scope: !4109)
!4160 = !DILocation(line: 52, column: 3, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4158, file: !3, line: 51, column: 11)
!4162 = !DILocation(line: 52, column: 3, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4161, file: !3, line: 52, column: 3)
!4164 = !DILocation(line: 53, column: 3, scope: !4161)
!4165 = !DILocation(line: 57, column: 6, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4109, file: !3, line: 57, column: 6)
!4167 = !DILocation(line: 57, column: 6, scope: !4109)
!4168 = !DILocation(line: 58, column: 35, scope: !4166)
!4169 = !DILocation(line: 58, column: 3, scope: !4166)
!4170 = !DILocation(line: 58, column: 7, scope: !4166)
!4171 = !DILocation(line: 58, column: 15, scope: !4166)
!4172 = !DILocation(line: 58, column: 33, scope: !4166)
!4173 = !DILocation(line: 59, column: 9, scope: !4109)
!4174 = !DILocation(line: 59, column: 2, scope: !4109)
!4175 = !DILocation(line: 60, column: 1, scope: !4109)
!4176 = distinct !DISubprogram(name: "mm_pkey_alloc", scope: !4177, file: !4177, line: 81, type: !4110, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4178)
!4177 = !DIFile(filename: "./arch/x86/include/asm/pkeys.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6428f9dfa945f88370b98b0cfc974537")
!4178 = !{!4179, !4180, !4181}
!4179 = !DILocalVariable(name: "mm", arg: 1, scope: !4176, file: !4177, line: 81, type: !461)
!4180 = !DILocalVariable(name: "all_pkeys_mask", scope: !4176, file: !4177, line: 89, type: !149)
!4181 = !DILocalVariable(name: "ret", scope: !4176, file: !4177, line: 90, type: !98)
!4182 = !DILocation(line: 81, column: 37, scope: !4176)
!4183 = !DILocation(line: 89, column: 2, scope: !4176)
!4184 = !DILocation(line: 89, column: 6, scope: !4176)
!4185 = !DILocation(line: 89, column: 31, scope: !4176)
!4186 = !DILocation(line: 89, column: 28, scope: !4176)
!4187 = !DILocation(line: 89, column: 48, scope: !4176)
!4188 = !DILocation(line: 89, column: 23, scope: !4176)
!4189 = !DILocation(line: 90, column: 2, scope: !4176)
!4190 = !DILocation(line: 90, column: 6, scope: !4176)
!4191 = !DILocation(line: 97, column: 6, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 97, column: 6)
!4193 = !DILocation(line: 97, column: 36, scope: !4192)
!4194 = !DILocation(line: 97, column: 33, scope: !4192)
!4195 = !DILocation(line: 97, column: 6, scope: !4176)
!4196 = !DILocation(line: 98, column: 3, scope: !4192)
!4197 = !DILocation(line: 100, column: 8, scope: !4176)
!4198 = !DILocation(line: 100, column: 6, scope: !4176)
!4199 = !DILocation(line: 102, column: 2, scope: !4176)
!4200 = !DILocation(line: 102, column: 2, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4176, file: !4177, line: 102, column: 2)
!4202 = !DILocation(line: 104, column: 9, scope: !4176)
!4203 = !DILocation(line: 104, column: 2, scope: !4176)
!4204 = !DILocation(line: 105, column: 1, scope: !4176)
!4205 = distinct !DISubprogram(name: "__pkru_allows_read", scope: !4206, file: !4206, line: 19, type: !4207, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4209)
!4206 = !DIFile(filename: "./arch/x86/include/asm/pkru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2bd5557a297a9216b707ab767181409")
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!725, !112, !149}
!4209 = !{!4210, !4211, !4212}
!4210 = !DILocalVariable(name: "pkru", arg: 1, scope: !4205, file: !4206, line: 19, type: !112)
!4211 = !DILocalVariable(name: "pkey", arg: 2, scope: !4205, file: !4206, line: 19, type: !149)
!4212 = !DILocalVariable(name: "pkru_pkey_bits", scope: !4205, file: !4206, line: 21, type: !98)
!4213 = !DILocation(line: 19, column: 43, scope: !4205)
!4214 = !DILocation(line: 19, column: 53, scope: !4205)
!4215 = !DILocation(line: 21, column: 2, scope: !4205)
!4216 = !DILocation(line: 21, column: 6, scope: !4205)
!4217 = !DILocation(line: 21, column: 23, scope: !4205)
!4218 = !DILocation(line: 21, column: 28, scope: !4205)
!4219 = !DILocation(line: 22, column: 11, scope: !4205)
!4220 = !DILocation(line: 22, column: 34, scope: !4205)
!4221 = !DILocation(line: 22, column: 31, scope: !4205)
!4222 = !DILocation(line: 22, column: 16, scope: !4205)
!4223 = !DILocation(line: 22, column: 9, scope: !4205)
!4224 = !DILocation(line: 23, column: 1, scope: !4205)
!4225 = !DILocation(line: 22, column: 2, scope: !4205)
!4226 = distinct !DISubprogram(name: "read_pkru", scope: !4206, file: !4206, line: 35, type: !4227, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!112}
!4229 = !DILocation(line: 37, column: 6, scope: !4226)
!4230 = !DILocation(line: 37, column: 6, scope: !4231)
!4231 = distinct !DILexicalBlock(scope: !4226, file: !4206, line: 37, column: 6)
!4232 = !DILocation(line: 38, column: 10, scope: !4231)
!4233 = !DILocation(line: 38, column: 3, scope: !4231)
!4234 = !DILocation(line: 39, column: 2, scope: !4226)
!4235 = !DILocation(line: 40, column: 1, scope: !4226)
!4236 = !DISubprogram(name: "arch_set_user_pkey_access", scope: !4177, file: !4177, line: 12, type: !4237, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4237 = !DISubroutineType(types: !4238)
!4238 = !{!98, !101, !98, !94}
!4239 = distinct !DISubprogram(name: "get_current", scope: !4240, file: !4240, line: 39, type: !4241, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4243)
!4240 = !DIFile(filename: "./arch/x86/include/asm/current.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "def6d67fd83079c93959d70418aa1fd4")
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!101}
!4243 = !{!4244, !4246, !4248}
!4244 = !DILocalVariable(name: "pscr_ret__", scope: !4245, file: !4240, line: 41, type: !101)
!4245 = distinct !DILexicalBlock(scope: !4239, file: !4240, line: 41, column: 9)
!4246 = !DILocalVariable(name: "__vpp_verify", scope: !4247, file: !4240, line: 41, type: !1781)
!4247 = distinct !DILexicalBlock(scope: !4245, file: !4240, line: 41, column: 9)
!4248 = !DILocalVariable(name: "pfo_val__", scope: !4249, file: !4240, line: 41, type: !180)
!4249 = distinct !DILexicalBlock(scope: !4245, file: !4240, line: 41, column: 9)
!4250 = !DILocation(line: 41, column: 9, scope: !4245)
!4251 = !DILocation(line: 41, column: 9, scope: !4247)
!4252 = !DILocation(line: 41, column: 9, scope: !4249)
!4253 = !{i64 2148450980}
!4254 = !DILocation(line: 41, column: 9, scope: !4239)
!4255 = !DILocation(line: 41, column: 2, scope: !4239)
!4256 = distinct !DISubprogram(name: "__arch_override_mprotect_pkey", scope: !3, file: !3, line: 76, type: !4257, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4259)
!4257 = !DISubroutineType(types: !4258)
!4258 = !{!98, !1385, !98, !98}
!4259 = !{!4260, !4261, !4262}
!4260 = !DILocalVariable(name: "vma", arg: 1, scope: !4256, file: !3, line: 76, type: !1385)
!4261 = !DILocalVariable(name: "prot", arg: 2, scope: !4256, file: !3, line: 76, type: !98)
!4262 = !DILocalVariable(name: "pkey", arg: 3, scope: !4256, file: !3, line: 76, type: !98)
!4263 = !DILocation(line: 76, column: 58, scope: !4256)
!4264 = !DILocation(line: 76, column: 67, scope: !4256)
!4265 = !DILocation(line: 76, column: 77, scope: !4256)
!4266 = !DILocation(line: 82, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 82, column: 6)
!4268 = !DILocation(line: 82, column: 11, scope: !4267)
!4269 = !DILocation(line: 82, column: 6, scope: !4256)
!4270 = !DILocation(line: 83, column: 10, scope: !4267)
!4271 = !DILocation(line: 83, column: 3, scope: !4267)
!4272 = !DILocation(line: 91, column: 6, scope: !4273)
!4273 = distinct !DILexicalBlock(scope: !4256, file: !3, line: 91, column: 6)
!4274 = !DILocation(line: 91, column: 11, scope: !4273)
!4275 = !DILocation(line: 91, column: 6, scope: !4256)
!4276 = !DILocation(line: 92, column: 28, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 91, column: 25)
!4278 = !DILocation(line: 92, column: 33, scope: !4277)
!4279 = !DILocation(line: 92, column: 10, scope: !4277)
!4280 = !DILocation(line: 92, column: 8, scope: !4277)
!4281 = !DILocation(line: 93, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 93, column: 7)
!4283 = !DILocation(line: 93, column: 12, scope: !4282)
!4284 = !DILocation(line: 93, column: 7, scope: !4277)
!4285 = !DILocation(line: 94, column: 11, scope: !4282)
!4286 = !DILocation(line: 94, column: 4, scope: !4282)
!4287 = !DILocation(line: 95, column: 2, scope: !4277)
!4288 = !DILocation(line: 95, column: 35, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4273, file: !3, line: 95, column: 13)
!4290 = !DILocation(line: 95, column: 13, scope: !4289)
!4291 = !DILocation(line: 95, column: 13, scope: !4273)
!4292 = !DILocation(line: 102, column: 3, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !3, line: 95, column: 41)
!4294 = !DILocation(line: 110, column: 18, scope: !4256)
!4295 = !DILocation(line: 110, column: 9, scope: !4256)
!4296 = !DILocation(line: 110, column: 2, scope: !4256)
!4297 = !DILocation(line: 111, column: 1, scope: !4256)
!4298 = distinct !DISubprogram(name: "execute_only_pkey", scope: !4177, file: !4177, line: 25, type: !4110, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4299)
!4299 = !{!4300}
!4300 = !DILocalVariable(name: "mm", arg: 1, scope: !4298, file: !4177, line: 25, type: !461)
!4301 = !DILocation(line: 25, column: 55, scope: !4298)
!4302 = !DILocation(line: 27, column: 6, scope: !4298)
!4303 = !DILocation(line: 27, column: 7, scope: !4304)
!4304 = distinct !DILexicalBlock(scope: !4298, file: !4177, line: 27, column: 6)
!4305 = !DILocation(line: 28, column: 3, scope: !4304)
!4306 = !DILocation(line: 30, column: 29, scope: !4298)
!4307 = !DILocation(line: 30, column: 9, scope: !4298)
!4308 = !DILocation(line: 30, column: 2, scope: !4298)
!4309 = !DILocation(line: 31, column: 1, scope: !4298)
!4310 = distinct !DISubprogram(name: "vma_is_pkey_exec_only", scope: !3, file: !3, line: 62, type: !4311, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4313)
!4311 = !DISubroutineType(types: !4312)
!4312 = !{!725, !1385}
!4313 = !{!4314}
!4314 = !DILocalVariable(name: "vma", arg: 1, scope: !4310, file: !3, line: 62, type: !1385)
!4315 = !DILocation(line: 62, column: 65, scope: !4310)
!4316 = !DILocation(line: 65, column: 7, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 65, column: 6)
!4318 = !DILocation(line: 65, column: 12, scope: !4317)
!4319 = !DILocation(line: 65, column: 21, scope: !4317)
!4320 = !DILocation(line: 65, column: 40, scope: !4317)
!4321 = !DILocation(line: 65, column: 6, scope: !4310)
!4322 = !DILocation(line: 66, column: 3, scope: !4317)
!4323 = !DILocation(line: 67, column: 15, scope: !4324)
!4324 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 67, column: 6)
!4325 = !DILocation(line: 67, column: 6, scope: !4324)
!4326 = !DILocation(line: 67, column: 23, scope: !4324)
!4327 = !DILocation(line: 67, column: 28, scope: !4324)
!4328 = !DILocation(line: 67, column: 35, scope: !4324)
!4329 = !DILocation(line: 67, column: 43, scope: !4324)
!4330 = !DILocation(line: 67, column: 20, scope: !4324)
!4331 = !DILocation(line: 67, column: 6, scope: !4310)
!4332 = !DILocation(line: 68, column: 3, scope: !4324)
!4333 = !DILocation(line: 70, column: 2, scope: !4310)
!4334 = !DILocation(line: 71, column: 1, scope: !4310)
!4335 = distinct !DISubprogram(name: "vma_pkey", scope: !4177, file: !4177, line: 118, type: !1445, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4336)
!4336 = !{!4337, !4338}
!4337 = !DILocalVariable(name: "vma", arg: 1, scope: !4335, file: !4177, line: 118, type: !1385)
!4338 = !DILocalVariable(name: "vma_pkey_mask", scope: !4335, file: !4177, line: 120, type: !94)
!4339 = !DILocation(line: 118, column: 51, scope: !4335)
!4340 = !DILocation(line: 120, column: 2, scope: !4335)
!4341 = !DILocation(line: 120, column: 16, scope: !4335)
!4342 = !DILocation(line: 123, column: 10, scope: !4335)
!4343 = !DILocation(line: 123, column: 15, scope: !4335)
!4344 = !DILocation(line: 123, column: 26, scope: !4335)
!4345 = !DILocation(line: 123, column: 24, scope: !4335)
!4346 = !DILocation(line: 123, column: 41, scope: !4335)
!4347 = !DILocation(line: 123, column: 9, scope: !4335)
!4348 = !DILocation(line: 124, column: 1, scope: !4335)
!4349 = !DILocation(line: 123, column: 2, scope: !4335)
!4350 = distinct !DISubprogram(name: "__initstub__kmod_pkeys__298_184_create_init_pkru_value7", scope: !3, file: !3, line: 184, type: !2060, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4351 = !DILocation(line: 184, column: 1, scope: !4350)
!4352 = distinct !DISubprogram(name: "create_init_pkru_value", scope: !3, file: !3, line: 174, type: !2060, scopeLine: 175, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!4353 = !DILocation(line: 177, column: 6, scope: !4352)
!4354 = !DILocation(line: 177, column: 7, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4352, file: !3, line: 177, column: 6)
!4356 = !DILocation(line: 178, column: 3, scope: !4355)
!4357 = !DILocation(line: 181, column: 4, scope: !4352)
!4358 = !DILocation(line: 180, column: 2, scope: !4352)
!4359 = !DILocation(line: 182, column: 2, scope: !4352)
!4360 = !DILocation(line: 183, column: 1, scope: !4352)
!4361 = distinct !DISubprogram(name: "setup_init_pkru", scope: !3, file: !3, line: 186, type: !4077, scopeLine: 187, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4362)
!4362 = !{!4363, !4364}
!4363 = !DILocalVariable(name: "opt", arg: 1, scope: !4361, file: !3, line: 186, type: !736)
!4364 = !DILocalVariable(name: "new_init_pkru", scope: !4361, file: !3, line: 188, type: !112)
!4365 = !DILocation(line: 186, column: 41, scope: !4361)
!4366 = !DILocation(line: 188, column: 2, scope: !4361)
!4367 = !DILocation(line: 188, column: 6, scope: !4361)
!4368 = !DILocation(line: 190, column: 17, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 190, column: 6)
!4370 = !DILocation(line: 190, column: 6, scope: !4369)
!4371 = !DILocation(line: 190, column: 6, scope: !4361)
!4372 = !DILocation(line: 191, column: 3, scope: !4369)
!4373 = !DILocation(line: 193, column: 2, scope: !4361)
!4374 = !DILocation(line: 193, column: 2, scope: !4375)
!4375 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 193, column: 2)
!4376 = !DILocation(line: 193, column: 2, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 193, column: 2)
!4378 = !DILocation(line: 193, column: 2, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4375, file: !3, line: 193, column: 2)
!4380 = !DILocation(line: 195, column: 2, scope: !4361)
!4381 = !DILocation(line: 196, column: 1, scope: !4361)
!4382 = distinct !DISubprogram(name: "_static_cpu_has", scope: !4383, file: !4383, line: 173, type: !4384, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4386)
!4383 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!4384 = !DISubroutineType(types: !4385)
!4385 = !{!725, !149}
!4386 = !{!4387, !4388, !4389}
!4387 = !DILocalVariable(name: "bit", arg: 1, scope: !4382, file: !4383, line: 173, type: !149)
!4388 = !DILabel(scope: !4382, name: "t_yes", file: !4383, line: 187)
!4389 = !DILabel(scope: !4382, name: "t_no", file: !4383, line: 189)
!4390 = !DILocation(line: 173, column: 49, scope: !4382)
!4391 = !DILocation(line: 183, column: 24, scope: !4382)
!4392 = !DILocation(line: 184, column: 30, scope: !4382)
!4393 = !DILocation(line: 184, column: 34, scope: !4382)
!4394 = !DILocation(line: 184, column: 26, scope: !4382)
!4395 = !DILocation(line: 185, column: 70, scope: !4382)
!4396 = !DILocation(line: 185, column: 74, scope: !4382)
!4397 = !DILocation(line: 185, column: 25, scope: !4382)
!4398 = !DILocation(line: 175, column: 2, scope: !4382)
!4399 = !{i64 2149617403, i64 2149617436, i64 2149617442, i64 2149617458, i64 2149617477, i64 2149617508, i64 2149618461, i64 2149617050, i64 2149618467, i64 2149618515, i64 2149618579, i64 2149618643, i64 2149618700, i64 2149618907, i64 2149618955, i64 2149619019, i64 2149619083, i64 2149619140, i64 2149617168, i64 2149617193, i64 2149619350, i64 2149619478, i64 2149619411, i64 2149619492, i64 2149619506, i64 2149619622, i64 2149619567, i64 2149619636, i64 2149617327, i64 1080999, i64 1081039, i64 1081048, i64 1081098, i64 1081119, i64 1081139}
!4400 = !DILocation(line: 187, column: 1, scope: !4382)
!4401 = !DILocation(line: 188, column: 2, scope: !4382)
!4402 = !DILocation(line: 189, column: 1, scope: !4382)
!4403 = !DILocation(line: 190, column: 2, scope: !4382)
!4404 = !DILocation(line: 191, column: 1, scope: !4382)
!4405 = distinct !DISubprogram(name: "variable_ffz", scope: !4406, file: !4406, line: 269, type: !4407, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4409)
!4406 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4407 = !DISubroutineType(types: !4408)
!4408 = !{!94, !94}
!4409 = !{!4410}
!4410 = !DILocalVariable(name: "word", arg: 1, scope: !4405, file: !4406, line: 269, type: !94)
!4411 = !DILocation(line: 269, column: 65, scope: !4405)
!4412 = !DILocation(line: 273, column: 11, scope: !4405)
!4413 = !DILocation(line: 273, column: 10, scope: !4405)
!4414 = !DILocation(line: 271, column: 2, scope: !4405)
!4415 = !{i64 652435}
!4416 = !DILocation(line: 274, column: 9, scope: !4405)
!4417 = !DILocation(line: 274, column: 2, scope: !4405)
!4418 = distinct !DISubprogram(name: "arch_test_bit", scope: !4406, file: !4406, line: 237, type: !4419, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4424)
!4419 = !DISubroutineType(types: !4420)
!4420 = !{!725, !94, !4421}
!4421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4422, size: 64)
!4422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4423)
!4423 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !94)
!4424 = !{!4425, !4426}
!4425 = !DILocalVariable(name: "nr", arg: 1, scope: !4418, file: !4406, line: 237, type: !94)
!4426 = !DILocalVariable(name: "addr", arg: 2, scope: !4418, file: !4406, line: 237, type: !4421)
!4427 = !DILocation(line: 237, column: 29, scope: !4418)
!4428 = !DILocation(line: 237, column: 63, scope: !4418)
!4429 = !DILocation(line: 239, column: 30, scope: !4418)
!4430 = !DILocation(line: 239, column: 9, scope: !4418)
!4431 = !DILocation(line: 239, column: 54, scope: !4418)
!4432 = !DILocation(line: 239, column: 58, scope: !4418)
!4433 = !DILocation(line: 239, column: 36, scope: !4418)
!4434 = !DILocation(line: 240, column: 26, scope: !4418)
!4435 = !DILocation(line: 240, column: 30, scope: !4418)
!4436 = !DILocation(line: 240, column: 8, scope: !4418)
!4437 = !DILocation(line: 239, column: 2, scope: !4418)
!4438 = distinct !DISubprogram(name: "rdpkru", scope: !4439, file: !4439, line: 80, type: !4227, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4440)
!4439 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!4440 = !{!4441, !4442, !4443}
!4441 = !DILocalVariable(name: "ecx", scope: !4438, file: !4439, line: 82, type: !112)
!4442 = !DILocalVariable(name: "edx", scope: !4438, file: !4439, line: 83, type: !112)
!4443 = !DILocalVariable(name: "pkru", scope: !4438, file: !4439, line: 83, type: !112)
!4444 = !DILocation(line: 82, column: 2, scope: !4438)
!4445 = !DILocation(line: 82, column: 6, scope: !4438)
!4446 = !DILocation(line: 83, column: 2, scope: !4438)
!4447 = !DILocation(line: 83, column: 6, scope: !4438)
!4448 = !DILocation(line: 83, column: 11, scope: !4438)
!4449 = !DILocation(line: 91, column: 15, scope: !4438)
!4450 = !DILocation(line: 89, column: 2, scope: !4438)
!4451 = !{i64 2051464, i64 2051487}
!4452 = !DILocation(line: 92, column: 9, scope: !4438)
!4453 = !DILocation(line: 93, column: 1, scope: !4438)
!4454 = !DILocation(line: 92, column: 2, scope: !4438)
!4455 = distinct !DISubprogram(name: "constant_test_bit", scope: !4406, file: !4406, line: 204, type: !4456, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4458)
!4456 = !DISubroutineType(types: !4457)
!4457 = !{!725, !997, !4421}
!4458 = !{!4459, !4460}
!4459 = !DILocalVariable(name: "nr", arg: 1, scope: !4455, file: !4406, line: 204, type: !997)
!4460 = !DILocalVariable(name: "addr", arg: 2, scope: !4455, file: !4406, line: 204, type: !4421)
!4461 = !DILocation(line: 204, column: 52, scope: !4455)
!4462 = !DILocation(line: 204, column: 86, scope: !4455)
!4463 = !DILocation(line: 206, column: 19, scope: !4455)
!4464 = !DILocation(line: 206, column: 22, scope: !4455)
!4465 = !DILocation(line: 206, column: 15, scope: !4455)
!4466 = !DILocation(line: 207, column: 4, scope: !4455)
!4467 = !DILocation(line: 207, column: 9, scope: !4455)
!4468 = !DILocation(line: 207, column: 12, scope: !4455)
!4469 = !DILocation(line: 206, column: 44, scope: !4455)
!4470 = !DILocation(line: 207, column: 37, scope: !4455)
!4471 = !DILocation(line: 206, column: 2, scope: !4455)
!4472 = distinct !DISubprogram(name: "variable_test_bit", scope: !4406, file: !4406, line: 224, type: !4456, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4473)
!4473 = !{!4474, !4475, !4476}
!4474 = !DILocalVariable(name: "nr", arg: 1, scope: !4472, file: !4406, line: 224, type: !997)
!4475 = !DILocalVariable(name: "addr", arg: 2, scope: !4472, file: !4406, line: 224, type: !4421)
!4476 = !DILocalVariable(name: "oldbit", scope: !4472, file: !4406, line: 226, type: !725)
!4477 = !DILocation(line: 224, column: 52, scope: !4472)
!4478 = !DILocation(line: 224, column: 86, scope: !4472)
!4479 = !DILocation(line: 226, column: 2, scope: !4472)
!4480 = !DILocation(line: 226, column: 7, scope: !4472)
!4481 = !DILocation(line: 231, column: 33, scope: !4472)
!4482 = !DILocation(line: 231, column: 46, scope: !4472)
!4483 = !DILocation(line: 228, column: 2, scope: !4472)
!4484 = !{i64 2148154096, i64 2148154170}
!4485 = !DILocation(line: 233, column: 9, scope: !4472)
!4486 = !DILocation(line: 234, column: 1, scope: !4472)
!4487 = !DILocation(line: 233, column: 2, scope: !4472)
!4488 = !DISubprogram(name: "debugfs_create_file", scope: !4489, file: !4489, line: 75, type: !4490, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4489 = !DIFile(filename: "./include/linux/debugfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6e6228d229e8266f5bff9327360d42a5")
!4490 = !DISubroutineType(types: !4491)
!4491 = !{!847, !95, !886, !847, !93, !2854}
!4492 = distinct !DISubprogram(name: "init_pkru_read_file", scope: !3, file: !3, line: 130, type: !2865, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4493)
!4493 = !{!4494, !4495, !4496, !4497, !4498, !4499}
!4494 = !DILocalVariable(name: "file", arg: 1, scope: !4492, file: !3, line: 130, type: !497)
!4495 = !DILocalVariable(name: "user_buf", arg: 2, scope: !4492, file: !3, line: 130, type: !736)
!4496 = !DILocalVariable(name: "count", arg: 3, scope: !4492, file: !3, line: 131, type: !1039)
!4497 = !DILocalVariable(name: "ppos", arg: 4, scope: !4492, file: !3, line: 131, type: !1867)
!4498 = !DILocalVariable(name: "buf", scope: !4492, file: !3, line: 133, type: !2692)
!4499 = !DILocalVariable(name: "len", scope: !4492, file: !3, line: 134, type: !7)
!4500 = !DILocation(line: 130, column: 49, scope: !4492)
!4501 = !DILocation(line: 130, column: 68, scope: !4492)
!4502 = !DILocation(line: 131, column: 16, scope: !4492)
!4503 = !DILocation(line: 131, column: 31, scope: !4492)
!4504 = !DILocation(line: 133, column: 2, scope: !4492)
!4505 = !DILocation(line: 133, column: 7, scope: !4492)
!4506 = !DILocation(line: 134, column: 2, scope: !4492)
!4507 = !DILocation(line: 134, column: 15, scope: !4492)
!4508 = !DILocation(line: 136, column: 16, scope: !4492)
!4509 = !DILocation(line: 136, column: 31, scope: !4492)
!4510 = !DILocation(line: 136, column: 8, scope: !4492)
!4511 = !DILocation(line: 136, column: 6, scope: !4492)
!4512 = !DILocation(line: 137, column: 33, scope: !4492)
!4513 = !DILocation(line: 137, column: 43, scope: !4492)
!4514 = !DILocation(line: 137, column: 50, scope: !4492)
!4515 = !DILocation(line: 137, column: 56, scope: !4492)
!4516 = !DILocation(line: 137, column: 61, scope: !4492)
!4517 = !DILocation(line: 137, column: 9, scope: !4492)
!4518 = !DILocation(line: 138, column: 1, scope: !4492)
!4519 = !DILocation(line: 137, column: 2, scope: !4492)
!4520 = distinct !DISubprogram(name: "init_pkru_write_file", scope: !3, file: !3, line: 140, type: !2869, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4521)
!4521 = !{!4522, !4523, !4524, !4525, !4526, !4527, !4528, !4529, !4531}
!4522 = !DILocalVariable(name: "file", arg: 1, scope: !4520, file: !3, line: 140, type: !497)
!4523 = !DILocalVariable(name: "user_buf", arg: 2, scope: !4520, file: !3, line: 141, type: !95)
!4524 = !DILocalVariable(name: "count", arg: 3, scope: !4520, file: !3, line: 141, type: !1039)
!4525 = !DILocalVariable(name: "ppos", arg: 4, scope: !4520, file: !3, line: 141, type: !1867)
!4526 = !DILocalVariable(name: "buf", scope: !4520, file: !3, line: 143, type: !2692)
!4527 = !DILocalVariable(name: "len", scope: !4520, file: !3, line: 144, type: !1036)
!4528 = !DILocalVariable(name: "new_init_pkru", scope: !4520, file: !3, line: 145, type: !112)
!4529 = !DILocalVariable(name: "__UNIQUE_ID___x295", scope: !4530, file: !3, line: 147, type: !1039)
!4530 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 147, column: 8)
!4531 = !DILocalVariable(name: "__UNIQUE_ID___y296", scope: !4530, file: !3, line: 147, type: !94)
!4532 = !DILocation(line: 140, column: 50, scope: !4520)
!4533 = !DILocation(line: 141, column: 23, scope: !4520)
!4534 = !DILocation(line: 141, column: 40, scope: !4520)
!4535 = !DILocation(line: 141, column: 55, scope: !4520)
!4536 = !DILocation(line: 143, column: 2, scope: !4520)
!4537 = !DILocation(line: 143, column: 7, scope: !4520)
!4538 = !DILocation(line: 144, column: 2, scope: !4520)
!4539 = !DILocation(line: 144, column: 10, scope: !4520)
!4540 = !DILocation(line: 145, column: 2, scope: !4520)
!4541 = !DILocation(line: 145, column: 6, scope: !4520)
!4542 = !DILocation(line: 147, column: 8, scope: !4530)
!4543 = !DILocation(line: 147, column: 8, scope: !4520)
!4544 = !DILocation(line: 147, column: 6, scope: !4520)
!4545 = !DILocation(line: 148, column: 21, scope: !4546)
!4546 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 148, column: 6)
!4547 = !DILocation(line: 148, column: 26, scope: !4546)
!4548 = !DILocation(line: 148, column: 36, scope: !4546)
!4549 = !DILocation(line: 148, column: 6, scope: !4546)
!4550 = !DILocation(line: 148, column: 6, scope: !4520)
!4551 = !DILocation(line: 149, column: 3, scope: !4546)
!4552 = !DILocation(line: 152, column: 6, scope: !4520)
!4553 = !DILocation(line: 152, column: 2, scope: !4520)
!4554 = !DILocation(line: 152, column: 11, scope: !4520)
!4555 = !DILocation(line: 153, column: 17, scope: !4556)
!4556 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 153, column: 6)
!4557 = !DILocation(line: 153, column: 6, scope: !4556)
!4558 = !DILocation(line: 153, column: 6, scope: !4520)
!4559 = !DILocation(line: 154, column: 3, scope: !4556)
!4560 = !DILocation(line: 161, column: 6, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 161, column: 6)
!4562 = !DILocation(line: 161, column: 20, scope: !4561)
!4563 = !DILocation(line: 161, column: 6, scope: !4520)
!4564 = !DILocation(line: 162, column: 3, scope: !4561)
!4565 = !DILocation(line: 164, column: 2, scope: !4520)
!4566 = !DILocation(line: 164, column: 2, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4520, file: !3, line: 164, column: 2)
!4568 = !DILocation(line: 164, column: 2, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 164, column: 2)
!4570 = !DILocation(line: 164, column: 2, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4567, file: !3, line: 164, column: 2)
!4572 = !DILocation(line: 165, column: 9, scope: !4520)
!4573 = !DILocation(line: 165, column: 2, scope: !4520)
!4574 = !DILocation(line: 166, column: 1, scope: !4520)
!4575 = !DISubprogram(name: "sprintf", scope: !4576, file: !4576, line: 10, type: !4577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4576 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4577 = !DISubroutineType(types: !4578)
!4578 = !{!98, !736, !95, null}
!4579 = !DISubprogram(name: "simple_read_from_buffer", scope: !59, file: !59, line: 3187, type: !4580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!1036, !93, !1039, !1867, !1781, !1039}
!4582 = distinct !DISubprogram(name: "copy_from_user", scope: !4583, file: !4583, line: 180, type: !4584, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4586)
!4583 = !DIFile(filename: "./include/linux/uaccess.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5c6a99e19cfced98603230c2c71e2e3e")
!4584 = !DISubroutineType(types: !4585)
!4585 = !{!94, !93, !1781, !94}
!4586 = !{!4587, !4588, !4589}
!4587 = !DILocalVariable(name: "to", arg: 1, scope: !4582, file: !4583, line: 180, type: !93)
!4588 = !DILocalVariable(name: "from", arg: 2, scope: !4582, file: !4583, line: 180, type: !1781)
!4589 = !DILocalVariable(name: "n", arg: 3, scope: !4582, file: !4583, line: 180, type: !94)
!4590 = !DILocation(line: 180, column: 22, scope: !4582)
!4591 = !DILocation(line: 180, column: 45, scope: !4582)
!4592 = !DILocation(line: 180, column: 65, scope: !4582)
!4593 = !DILocation(line: 182, column: 22, scope: !4594)
!4594 = distinct !DILexicalBlock(scope: !4582, file: !4583, line: 182, column: 6)
!4595 = !DILocation(line: 182, column: 26, scope: !4594)
!4596 = !DILocation(line: 182, column: 6, scope: !4594)
!4597 = !DILocation(line: 182, column: 6, scope: !4582)
!4598 = !DILocation(line: 183, column: 23, scope: !4594)
!4599 = !DILocation(line: 183, column: 27, scope: !4594)
!4600 = !DILocation(line: 183, column: 33, scope: !4594)
!4601 = !DILocation(line: 183, column: 7, scope: !4594)
!4602 = !DILocation(line: 183, column: 5, scope: !4594)
!4603 = !DILocation(line: 183, column: 3, scope: !4594)
!4604 = !DILocation(line: 184, column: 9, scope: !4582)
!4605 = !DILocation(line: 184, column: 2, scope: !4582)
!4606 = !DISubprogram(name: "kstrtouint", scope: !4607, file: !4607, line: 71, type: !4608, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4607 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!4608 = !DISubroutineType(types: !4609)
!4609 = !{!98, !95, !7, !2040}
!4610 = distinct !DISubprogram(name: "check_copy_size", scope: !4091, file: !4091, line: 237, type: !4611, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4613)
!4611 = !DISubroutineType(types: !4612)
!4612 = !{!725, !1781, !1039, !725}
!4613 = !{!4614, !4615, !4616, !4617, !4618, !4621}
!4614 = !DILocalVariable(name: "addr", arg: 1, scope: !4610, file: !4091, line: 237, type: !1781)
!4615 = !DILocalVariable(name: "bytes", arg: 2, scope: !4610, file: !4091, line: 237, type: !1039)
!4616 = !DILocalVariable(name: "is_source", arg: 3, scope: !4610, file: !4091, line: 237, type: !725)
!4617 = !DILocalVariable(name: "sz", scope: !4610, file: !4091, line: 239, type: !98)
!4618 = !DILocalVariable(name: "__ret_warn_on", scope: !4619, file: !4091, line: 249, type: !98)
!4619 = distinct !DILexicalBlock(scope: !4620, file: !4091, line: 249, column: 6)
!4620 = distinct !DILexicalBlock(scope: !4610, file: !4091, line: 249, column: 6)
!4621 = !DILocalVariable(name: "__flags", scope: !4622, file: !4091, line: 249, type: !98)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !4091, line: 249, column: 6)
!4623 = distinct !DILexicalBlock(scope: !4619, file: !4091, line: 249, column: 6)
!4624 = !DILocation(line: 237, column: 29, scope: !4610)
!4625 = !DILocation(line: 237, column: 42, scope: !4610)
!4626 = !DILocation(line: 237, column: 54, scope: !4610)
!4627 = !DILocation(line: 239, column: 2, scope: !4610)
!4628 = !DILocation(line: 239, column: 6, scope: !4610)
!4629 = !DILocation(line: 239, column: 33, scope: !4610)
!4630 = !DILocation(line: 239, column: 11, scope: !4610)
!4631 = !DILocation(line: 240, column: 6, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4610, file: !4091, line: 240, column: 6)
!4633 = !DILocation(line: 0, scope: !4632)
!4634 = !DILocation(line: 240, column: 6, scope: !4610)
!4635 = !DILocation(line: 241, column: 29, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4637, file: !4091, line: 241, column: 7)
!4637 = distinct !DILexicalBlock(scope: !4632, file: !4091, line: 240, column: 39)
!4638 = !DILocation(line: 241, column: 8, scope: !4636)
!4639 = !DILocation(line: 241, column: 7, scope: !4637)
!4640 = !DILocation(line: 242, column: 18, scope: !4636)
!4641 = !DILocation(line: 242, column: 22, scope: !4636)
!4642 = !DILocation(line: 242, column: 4, scope: !4636)
!4643 = !DILocation(line: 243, column: 12, scope: !4644)
!4644 = distinct !DILexicalBlock(scope: !4636, file: !4091, line: 243, column: 12)
!4645 = !DILocation(line: 243, column: 12, scope: !4636)
!4646 = !DILocation(line: 244, column: 4, scope: !4644)
!4647 = !{i32 974650}
!4648 = !DILocation(line: 246, column: 4, scope: !4644)
!4649 = !{i32 974679}
!4650 = !DILocation(line: 247, column: 3, scope: !4637)
!4651 = !DILocation(line: 249, column: 6, scope: !4619)
!4652 = !DILocation(line: 249, column: 6, scope: !4623)
!4653 = !DILocation(line: 249, column: 6, scope: !4622)
!4654 = !DILocation(line: 249, column: 6, scope: !4655)
!4655 = distinct !DILexicalBlock(scope: !4622, file: !4091, line: 249, column: 6)
!4656 = !DILocation(line: 249, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4622, file: !4091, line: 249, column: 6)
!4658 = !{i64 2149626921, i64 2149626950, i64 2149626996, i64 2149627054, i64 2149627108, i64 2149627162, i64 2149627217, i64 2149627248, i64 2149627556, i64 2149627562, i64 2149627609, i64 2149627632, i64 2149627658}
!4659 = !DILocation(line: 249, column: 6, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4622, file: !4091, line: 249, column: 6)
!4661 = !DILocation(line: 249, column: 6, scope: !4620)
!4662 = !DILocation(line: 249, column: 6, scope: !4610)
!4663 = !DILocation(line: 250, column: 3, scope: !4620)
!4664 = !DILocation(line: 251, column: 20, scope: !4610)
!4665 = !DILocation(line: 251, column: 26, scope: !4610)
!4666 = !DILocation(line: 251, column: 33, scope: !4610)
!4667 = !DILocation(line: 251, column: 2, scope: !4610)
!4668 = !DILocation(line: 252, column: 2, scope: !4610)
!4669 = !DILocation(line: 253, column: 1, scope: !4610)
!4670 = !DISubprogram(name: "_copy_from_user", scope: !4583, file: !4583, line: 158, type: !4584, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4671 = distinct !DISubprogram(name: "copy_overflow", scope: !4091, file: !4091, line: 230, type: !4672, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4674)
!4672 = !DISubroutineType(types: !4673)
!4673 = !{null, !98, !94}
!4674 = !{!4675, !4676}
!4675 = !DILocalVariable(name: "size", arg: 1, scope: !4671, file: !4091, line: 230, type: !98)
!4676 = !DILocalVariable(name: "count", arg: 2, scope: !4671, file: !4091, line: 230, type: !94)
!4677 = !DILocation(line: 230, column: 38, scope: !4671)
!4678 = !DILocation(line: 230, column: 58, scope: !4671)
!4679 = !DILocation(line: 233, column: 19, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4671, file: !4091, line: 232, column: 6)
!4681 = !DILocation(line: 233, column: 25, scope: !4680)
!4682 = !DILocation(line: 233, column: 3, scope: !4680)
!4683 = !DILocation(line: 234, column: 1, scope: !4671)
!4684 = !DISubprogram(name: "__bad_copy_from", scope: !4091, file: !4091, line: 224, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4685 = !DISubprogram(name: "__bad_copy_to", scope: !4091, file: !4091, line: 226, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4686 = distinct !DISubprogram(name: "check_object_size", scope: !4091, file: !4091, line: 218, type: !4687, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4689)
!4687 = !DISubroutineType(types: !4688)
!4688 = !{null, !1781, !94, !725}
!4689 = !{!4690, !4691, !4692}
!4690 = !DILocalVariable(name: "ptr", arg: 1, scope: !4686, file: !4091, line: 218, type: !1781)
!4691 = !DILocalVariable(name: "n", arg: 2, scope: !4686, file: !4091, line: 218, type: !94)
!4692 = !DILocalVariable(name: "to_user", arg: 3, scope: !4686, file: !4091, line: 219, type: !725)
!4693 = !DILocation(line: 218, column: 50, scope: !4686)
!4694 = !DILocation(line: 218, column: 69, scope: !4686)
!4695 = !DILocation(line: 219, column: 15, scope: !4686)
!4696 = !DILocation(line: 220, column: 3, scope: !4686)
!4697 = !DISubprogram(name: "__copy_overflow", scope: !4091, file: !4091, line: 228, type: !4672, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

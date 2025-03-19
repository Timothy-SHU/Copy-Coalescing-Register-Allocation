; ModuleID = 'arch/x86/kernel/cpu/proc.c'
source_filename = "arch/x86/kernel/cpu/proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i64] }
%struct.cpuinfo_x86 = type { %union.anon.13, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.15, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.13 = type { i32 }
%union.anon.15 = type { i64, [88 x i8] }
%struct.anon.14 = type { i8, i8, i8, i8 }

@cpuinfo_op = hidden constant %struct.seq_operations { ptr @c_start, ptr @c_stop, ptr @c_next, ptr @show_cpuinfo }, align 8, !dbg !0
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@nr_cpu_ids = external dso_local global i32, align 4
@cpu_info = external dso_local global %struct.cpuinfo_x86, section ".data..percpu..read_mostly", align 8
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@.str = private unnamed_addr constant [75 x i8] c"processor\09: %u\0Avendor_id\09: %s\0Acpu family\09: %d\0Amodel\09\09: %u\0Amodel name\09: %s\0A\00", align 1, !dbg !172
@.str.1 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !177
@.str.2 = private unnamed_addr constant [15 x i8] c"stepping\09: %d\0A\00", align 1, !dbg !182
@.str.3 = private unnamed_addr constant [20 x i8] c"stepping\09: unknown\0A\00", align 1, !dbg !187
@.str.4 = private unnamed_addr constant [18 x i8] c"microcode\09: 0x%x\0A\00", align 1, !dbg !192
@.str.5 = private unnamed_addr constant [20 x i8] c"cpu MHz\09\09: %u.%03u\0A\00", align 1, !dbg !197
@.str.6 = private unnamed_addr constant [20 x i8] c"cache size\09: %u KB\0A\00", align 1, !dbg !199
@.str.7 = private unnamed_addr constant [9 x i8] c"flags\09\09:\00", align 1, !dbg !201
@x86_cap_flags = external dso_local constant [704 x ptr], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !dbg !206
@.str.9 = private unnamed_addr constant [13 x i8] c"\0Avmx flags\09:\00", align 1, !dbg !211
@x86_vmx_flags = external dso_local constant [160 x ptr], align 16
@.str.10 = private unnamed_addr constant [9 x i8] c"\0Abugs\09\09:\00", align 1, !dbg !216
@x86_bug_flags = external dso_local constant [64 x ptr], align 16
@.str.11 = private unnamed_addr constant [23 x i8] c"\0Abogomips\09: %lu.%02lu\0A\00", align 1, !dbg !218
@.str.12 = private unnamed_addr constant [24 x i8] c"TLB size\09: %d 4K pages\0A\00", align 1, !dbg !223
@.str.13 = private unnamed_addr constant [19 x i8] c"clflush size\09: %u\0A\00", align 1, !dbg !226
@.str.14 = private unnamed_addr constant [22 x i8] c"cache_alignment\09: %d\0A\00", align 1, !dbg !231
@.str.15 = private unnamed_addr constant [51 x i8] c"address sizes\09: %u bits physical, %u bits virtual\0A\00", align 1, !dbg !236
@.str.16 = private unnamed_addr constant [18 x i8] c"power management:\00", align 1, !dbg !241
@x86_power_flags = external dso_local constant [32 x ptr], align 16
@.str.17 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !243
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !246
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !251
@.str.20 = private unnamed_addr constant [6 x i8] c" [%d]\00", align 1, !dbg !254
@.str.21 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1, !dbg !259
@.str.22 = private unnamed_addr constant [18 x i8] c"physical id\09: %d\0A\00", align 1, !dbg !264
@.str.23 = private unnamed_addr constant [15 x i8] c"siblings\09: %d\0A\00", align 1, !dbg !266
@cpu_core_map = external dso_local global [1 x %struct.cpumask], section ".data..percpu..read_mostly", align 8
@.str.24 = private unnamed_addr constant [15 x i8] c"core id\09\09: %d\0A\00", align 1, !dbg !268
@.str.25 = private unnamed_addr constant [16 x i8] c"cpu cores\09: %d\0A\00", align 1, !dbg !270
@.str.26 = private unnamed_addr constant [14 x i8] c"apicid\09\09: %d\0A\00", align 1, !dbg !272
@.str.27 = private unnamed_addr constant [21 x i8] c"initial apicid\09: %d\0A\00", align 1, !dbg !277
@.str.28 = private unnamed_addr constant [59 x i8] c"fpu\09\09: yes\0Afpu_exception\09: yes\0Acpuid level\09: %d\0Awp\09\09: yes\0A\00", align 1, !dbg !282

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @c_start(ptr noundef %m, ptr noundef %pos) #0 align 16 !dbg !4038 {
entry:
  %retval = alloca ptr, align 8
  %m.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp4 = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4040, metadata !DIExpression()), !dbg !4048
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4041, metadata !DIExpression()), !dbg !4049
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !4050
  %1 = load i64, ptr %0, align 8, !dbg !4051
  %sub = sub i64 %1, 1, !dbg !4052
  %conv = trunc i64 %sub to i32, !dbg !4051
  %call = call i32 @cpumask_next(i32 noundef %conv, ptr noundef @__cpu_online_mask) #9, !dbg !4053
  %conv1 = zext i32 %call to i64, !dbg !4053
  %2 = load ptr, ptr %pos.addr, align 8, !dbg !4054
  store i64 %conv1, ptr %2, align 8, !dbg !4055
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !4056
  %4 = load i64, ptr %3, align 8, !dbg !4057
  %5 = load i32, ptr @nr_cpu_ids, align 4, !dbg !4058
  %conv2 = zext i32 %5 to i64, !dbg !4058
  %cmp = icmp slt i64 %4, %conv2, !dbg !4059
  br i1 %cmp, label %if.then, label %if.end, !dbg !4060

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !4061

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4062
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4042, metadata !DIExpression()), !dbg !4062
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4062
  %6 = load ptr, ptr %__vpp_verify, align 8, !dbg !4062
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4061
  br label %do.end, !dbg !4062

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4063
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4046, metadata !DIExpression()), !dbg !4063
  store i64 ptrtoint (ptr @cpu_info to i64), ptr %__ptr, align 8, !dbg !4063
  %7 = load i64, ptr %__ptr, align 8, !dbg !4063
  %8 = load ptr, ptr %pos.addr, align 8, !dbg !4063
  %9 = load i64, ptr %8, align 8, !dbg !4063
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %9, !dbg !4063
  %10 = load i64, ptr %arrayidx, align 8, !dbg !4063
  %add = add i64 %7, %10, !dbg !4063
  %11 = inttoptr i64 %add to ptr, !dbg !4063
  store ptr %11, ptr %tmp4, align 8, !dbg !4063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4061
  %12 = load ptr, ptr %tmp4, align 8, !dbg !4063
  store ptr %12, ptr %tmp, align 8, !dbg !4062
  %13 = load ptr, ptr %tmp, align 8, !dbg !4061
  store ptr %13, ptr %retval, align 8, !dbg !4064
  br label %return, !dbg !4064

if.end:                                           ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4065
  br label %return, !dbg !4065

return:                                           ; preds = %if.end, %do.end
  %14 = load ptr, ptr %retval, align 8, !dbg !4066
  ret ptr %14, !dbg !4066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @c_stop(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4067 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4069, metadata !DIExpression()), !dbg !4071
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4070, metadata !DIExpression()), !dbg !4072
  ret void, !dbg !4073
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @c_next(ptr noundef %m, ptr noundef %v, ptr noundef %pos) #0 align 16 !dbg !4074 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %pos.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4076, metadata !DIExpression()), !dbg !4079
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4077, metadata !DIExpression()), !dbg !4080
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !4078, metadata !DIExpression()), !dbg !4081
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !4082
  %1 = load i64, ptr %0, align 8, !dbg !4083
  %inc = add i64 %1, 1, !dbg !4083
  store i64 %inc, ptr %0, align 8, !dbg !4083
  %2 = load ptr, ptr %m.addr, align 8, !dbg !4084
  %3 = load ptr, ptr %pos.addr, align 8, !dbg !4085
  %call = call ptr @c_start(ptr noundef %2, ptr noundef %3) #9, !dbg !4086
  ret ptr %call, !dbg !4087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @show_cpuinfo(ptr noundef %m, ptr noundef %v) #0 align 16 !dbg !4088 {
entry:
  %m.addr = alloca ptr, align 8
  %v.addr = alloca ptr, align 8
  %c = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %i = alloca i32, align 4
  %freq = alloca i32, align 4
  %bug_bit = alloca i32, align 4
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4090, metadata !DIExpression()), !dbg !4102
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4091, metadata !DIExpression()), !dbg !4103
  call void @llvm.lifetime.start.p0(i64 8, ptr %c) #10, !dbg !4104
  call void @llvm.dbg.declare(metadata ptr %c, metadata !4092, metadata !DIExpression()), !dbg !4105
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4106
  store ptr %0, ptr %c, align 8, !dbg !4105
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #10, !dbg !4107
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !4093, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %i, metadata !4094, metadata !DIExpression()), !dbg !4110
  %1 = load ptr, ptr %c, align 8, !dbg !4111
  %cpu_index = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 31, !dbg !4112
  %2 = load i16, ptr %cpu_index, align 4, !dbg !4112
  %conv = zext i16 %2 to i32, !dbg !4111
  store i32 %conv, ptr %cpu, align 4, !dbg !4113
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4114
  %4 = load i32, ptr %cpu, align 4, !dbg !4115
  %5 = load ptr, ptr %c, align 8, !dbg !4116
  %x86_vendor_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 11, !dbg !4117
  %arrayidx = getelementptr [16 x i8], ptr %x86_vendor_id, i64 0, i64 0, !dbg !4116
  %6 = load i8, ptr %arrayidx, align 8, !dbg !4116
  %conv1 = zext i8 %6 to i32, !dbg !4116
  %tobool = icmp ne i32 %conv1, 0, !dbg !4116
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4116

cond.true:                                        ; preds = %entry
  %7 = load ptr, ptr %c, align 8, !dbg !4118
  %x86_vendor_id2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 11, !dbg !4119
  %arraydecay = getelementptr inbounds [16 x i8], ptr %x86_vendor_id2, i64 0, i64 0, !dbg !4118
  br label %cond.end, !dbg !4116

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arraydecay, %cond.true ], [ @.str.1, %cond.false ], !dbg !4116
  %8 = load ptr, ptr %c, align 8, !dbg !4120
  %9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 0, !dbg !4121
  %x86 = getelementptr inbounds %struct.anon.14, ptr %9, i32 0, i32 1, !dbg !4121
  %10 = load i8, ptr %x86, align 1, !dbg !4121
  %conv3 = zext i8 %10 to i32, !dbg !4120
  %11 = load ptr, ptr %c, align 8, !dbg !4122
  %12 = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 0, !dbg !4123
  %x86_model = getelementptr inbounds %struct.anon.14, ptr %12, i32 0, i32 0, !dbg !4123
  %13 = load i8, ptr %x86_model, align 8, !dbg !4123
  %conv4 = zext i8 %13 to i32, !dbg !4122
  %14 = load ptr, ptr %c, align 8, !dbg !4124
  %x86_model_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 12, !dbg !4125
  %arrayidx5 = getelementptr [64 x i8], ptr %x86_model_id, i64 0, i64 0, !dbg !4124
  %15 = load i8, ptr %arrayidx5, align 8, !dbg !4124
  %conv6 = zext i8 %15 to i32, !dbg !4124
  %tobool7 = icmp ne i32 %conv6, 0, !dbg !4124
  br i1 %tobool7, label %cond.true8, label %cond.false11, !dbg !4124

cond.true8:                                       ; preds = %cond.end
  %16 = load ptr, ptr %c, align 8, !dbg !4126
  %x86_model_id9 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 12, !dbg !4127
  %arraydecay10 = getelementptr inbounds [64 x i8], ptr %x86_model_id9, i64 0, i64 0, !dbg !4126
  br label %cond.end12, !dbg !4124

cond.false11:                                     ; preds = %cond.end
  br label %cond.end12, !dbg !4124

cond.end12:                                       ; preds = %cond.false11, %cond.true8
  %cond13 = phi ptr [ %arraydecay10, %cond.true8 ], [ @.str.1, %cond.false11 ], !dbg !4124
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str, i32 noundef %4, ptr noundef %cond, i32 noundef %conv3, i32 noundef %conv4, ptr noundef %cond13) #9, !dbg !4128
  %17 = load ptr, ptr %c, align 8, !dbg !4129
  %x86_stepping = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 1, !dbg !4131
  %18 = load i8, ptr %x86_stepping, align 4, !dbg !4131
  %conv14 = zext i8 %18 to i32, !dbg !4129
  %tobool15 = icmp ne i32 %conv14, 0, !dbg !4129
  br i1 %tobool15, label %if.then, label %lor.lhs.false, !dbg !4132

lor.lhs.false:                                    ; preds = %cond.end12
  %19 = load ptr, ptr %c, align 8, !dbg !4133
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 9, !dbg !4134
  %20 = load i32, ptr %cpuid_level, align 8, !dbg !4134
  %cmp = icmp sge i32 %20, 0, !dbg !4135
  br i1 %cmp, label %if.then, label %if.else, !dbg !4136

if.then:                                          ; preds = %lor.lhs.false, %cond.end12
  %21 = load ptr, ptr %m.addr, align 8, !dbg !4137
  %22 = load ptr, ptr %c, align 8, !dbg !4138
  %x86_stepping17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 1, !dbg !4139
  %23 = load i8, ptr %x86_stepping17, align 4, !dbg !4139
  %conv18 = zext i8 %23 to i32, !dbg !4138
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %21, ptr noundef @.str.2, i32 noundef %conv18) #9, !dbg !4140
  br label %if.end, !dbg !4140

if.else:                                          ; preds = %lor.lhs.false
  %24 = load ptr, ptr %m.addr, align 8, !dbg !4141
  call void @seq_puts(ptr noundef %24, ptr noundef @.str.3) #9, !dbg !4142
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %25 = load ptr, ptr %c, align 8, !dbg !4143
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 33, !dbg !4145
  %26 = load i32, ptr %microcode, align 8, !dbg !4145
  %tobool19 = icmp ne i32 %26, 0, !dbg !4143
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !4146

if.then20:                                        ; preds = %if.end
  %27 = load ptr, ptr %m.addr, align 8, !dbg !4147
  %28 = load ptr, ptr %c, align 8, !dbg !4148
  %microcode21 = getelementptr inbounds %struct.cpuinfo_x86, ptr %28, i32 0, i32 33, !dbg !4149
  %29 = load i32, ptr %microcode21, align 8, !dbg !4149
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %27, ptr noundef @.str.4, i32 noundef %29) #9, !dbg !4150
  br label %if.end22, !dbg !4150

if.end22:                                         ; preds = %if.then20, %if.end
  br i1 false, label %cond.true23, label %cond.false24, !dbg !4151

cond.true23:                                      ; preds = %if.end22
  br i1 true, label %if.then27, label %if.end29, !dbg !4152

cond.false24:                                     ; preds = %if.end22
  %30 = load ptr, ptr %c, align 8, !dbg !4152
  %31 = getelementptr inbounds %struct.cpuinfo_x86, ptr %30, i32 0, i32 10, !dbg !4152
  %arraydecay25 = getelementptr inbounds [24 x i32], ptr %31, i64 0, i64 0, !dbg !4152
  %call = call zeroext i1 @arch_test_bit(i64 noundef 4, ptr noundef %arraydecay25) #9, !dbg !4152
  br i1 %call, label %if.then27, label %if.end29, !dbg !4151

if.then27:                                        ; preds = %cond.false24, %cond.true23
  call void @llvm.lifetime.start.p0(i64 4, ptr %freq) #10, !dbg !4153
  call void @llvm.dbg.declare(metadata ptr %freq, metadata !4095, metadata !DIExpression()), !dbg !4154
  %32 = load i32, ptr %cpu, align 4, !dbg !4155
  %call28 = call i32 @arch_freq_get_on_cpu(i32 noundef %32) #9, !dbg !4156
  store i32 %call28, ptr %freq, align 4, !dbg !4154
  %33 = load ptr, ptr %m.addr, align 8, !dbg !4157
  %34 = load i32, ptr %freq, align 4, !dbg !4158
  %div = udiv i32 %34, 1000, !dbg !4159
  %35 = load i32, ptr %freq, align 4, !dbg !4160
  %rem = urem i32 %35, 1000, !dbg !4161
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %33, ptr noundef @.str.5, i32 noundef %div, i32 noundef %rem) #9, !dbg !4162
  call void @llvm.lifetime.end.p0(i64 4, ptr %freq) #10, !dbg !4163
  br label %if.end29, !dbg !4164

if.end29:                                         ; preds = %if.then27, %cond.false24, %cond.true23
  %36 = load ptr, ptr %c, align 8, !dbg !4165
  %x86_cache_size = getelementptr inbounds %struct.cpuinfo_x86, ptr %36, i32 0, i32 13, !dbg !4167
  %37 = load i32, ptr %x86_cache_size, align 8, !dbg !4167
  %tobool30 = icmp ne i32 %37, 0, !dbg !4165
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !4168

if.then31:                                        ; preds = %if.end29
  %38 = load ptr, ptr %m.addr, align 8, !dbg !4169
  %39 = load ptr, ptr %c, align 8, !dbg !4170
  %x86_cache_size32 = getelementptr inbounds %struct.cpuinfo_x86, ptr %39, i32 0, i32 13, !dbg !4171
  %40 = load i32, ptr %x86_cache_size32, align 8, !dbg !4171
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %38, ptr noundef @.str.6, i32 noundef %40) #9, !dbg !4172
  br label %if.end33, !dbg !4172

if.end33:                                         ; preds = %if.then31, %if.end29
  %41 = load ptr, ptr %m.addr, align 8, !dbg !4173
  %42 = load ptr, ptr %c, align 8, !dbg !4174
  %43 = load i32, ptr %cpu, align 4, !dbg !4175
  call void @show_cpuinfo_core(ptr noundef %41, ptr noundef %42, i32 noundef %43) #9, !dbg !4176
  %44 = load ptr, ptr %m.addr, align 8, !dbg !4177
  %45 = load ptr, ptr %c, align 8, !dbg !4178
  call void @show_cpuinfo_misc(ptr noundef %44, ptr noundef %45) #9, !dbg !4179
  %46 = load ptr, ptr %m.addr, align 8, !dbg !4180
  call void @seq_puts(ptr noundef %46, ptr noundef @.str.7) #9, !dbg !4181
  store i32 0, ptr %i, align 4, !dbg !4182
  br label %for.cond, !dbg !4184

for.cond:                                         ; preds = %for.inc, %if.end33
  %47 = load i32, ptr %i, align 4, !dbg !4185
  %cmp34 = icmp slt i32 %47, 704, !dbg !4187
  br i1 %cmp34, label %for.body, label %for.end, !dbg !4188

for.body:                                         ; preds = %for.cond
  %48 = load i32, ptr %i, align 4, !dbg !4189
  %49 = call i1 @llvm.is.constant.i32(i32 %48), !dbg !4189
  br i1 %49, label %land.lhs.true, label %cond.false252, !dbg !4189

land.lhs.true:                                    ; preds = %for.body
  %50 = load i32, ptr %i, align 4, !dbg !4189
  %shr = ashr i32 %50, 5, !dbg !4189
  %cmp36 = icmp eq i32 %shr, 0, !dbg !4189
  br i1 %cmp36, label %land.lhs.true38, label %lor.lhs.false41, !dbg !4189

land.lhs.true38:                                  ; preds = %land.lhs.true
  %51 = load i32, ptr %i, align 4, !dbg !4189
  %and = and i32 %51, 31, !dbg !4189
  %sh_prom = zext i32 %and to i64, !dbg !4189
  %shl = shl i64 1, %sh_prom, !dbg !4189
  %and39 = and i64 %shl, 117473641, !dbg !4189
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4189
  br i1 %tobool40, label %cond.true251, label %lor.lhs.false41, !dbg !4189

lor.lhs.false41:                                  ; preds = %land.lhs.true38, %land.lhs.true
  %52 = load i32, ptr %i, align 4, !dbg !4189
  %shr42 = ashr i32 %52, 5, !dbg !4189
  %cmp43 = icmp eq i32 %shr42, 1, !dbg !4189
  br i1 %cmp43, label %land.lhs.true45, label %lor.lhs.false51, !dbg !4189

land.lhs.true45:                                  ; preds = %lor.lhs.false41
  %53 = load i32, ptr %i, align 4, !dbg !4189
  %and46 = and i32 %53, 31, !dbg !4189
  %sh_prom47 = zext i32 %and46 to i64, !dbg !4189
  %shl48 = shl i64 1, %sh_prom47, !dbg !4189
  %and49 = and i64 %shl48, 536870912, !dbg !4189
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4189
  br i1 %tobool50, label %cond.true251, label %lor.lhs.false51, !dbg !4189

lor.lhs.false51:                                  ; preds = %land.lhs.true45, %lor.lhs.false41
  %54 = load i32, ptr %i, align 4, !dbg !4189
  %shr52 = ashr i32 %54, 5, !dbg !4189
  %cmp53 = icmp eq i32 %shr52, 2, !dbg !4189
  br i1 %cmp53, label %land.lhs.true55, label %lor.lhs.false61, !dbg !4189

land.lhs.true55:                                  ; preds = %lor.lhs.false51
  %55 = load i32, ptr %i, align 4, !dbg !4189
  %and56 = and i32 %55, 31, !dbg !4189
  %sh_prom57 = zext i32 %and56 to i64, !dbg !4189
  %shl58 = shl i64 1, %sh_prom57, !dbg !4189
  %and59 = and i64 %shl58, 0, !dbg !4189
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4189
  br i1 %tobool60, label %cond.true251, label %lor.lhs.false61, !dbg !4189

lor.lhs.false61:                                  ; preds = %land.lhs.true55, %lor.lhs.false51
  %56 = load i32, ptr %i, align 4, !dbg !4189
  %shr62 = ashr i32 %56, 5, !dbg !4189
  %cmp63 = icmp eq i32 %shr62, 3, !dbg !4189
  br i1 %cmp63, label %land.lhs.true65, label %lor.lhs.false71, !dbg !4189

land.lhs.true65:                                  ; preds = %lor.lhs.false61
  %57 = load i32, ptr %i, align 4, !dbg !4189
  %and66 = and i32 %57, 31, !dbg !4189
  %sh_prom67 = zext i32 %and66 to i64, !dbg !4189
  %shl68 = shl i64 1, %sh_prom67, !dbg !4189
  %and69 = and i64 %shl68, 1048576, !dbg !4189
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4189
  br i1 %tobool70, label %cond.true251, label %lor.lhs.false71, !dbg !4189

lor.lhs.false71:                                  ; preds = %land.lhs.true65, %lor.lhs.false61
  %58 = load i32, ptr %i, align 4, !dbg !4189
  %shr72 = ashr i32 %58, 5, !dbg !4189
  %cmp73 = icmp eq i32 %shr72, 4, !dbg !4189
  br i1 %cmp73, label %land.lhs.true75, label %lor.lhs.false81, !dbg !4189

land.lhs.true75:                                  ; preds = %lor.lhs.false71
  %59 = load i32, ptr %i, align 4, !dbg !4189
  %and76 = and i32 %59, 31, !dbg !4189
  %sh_prom77 = zext i32 %and76 to i64, !dbg !4189
  %shl78 = shl i64 1, %sh_prom77, !dbg !4189
  %and79 = and i64 %shl78, 0, !dbg !4189
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4189
  br i1 %tobool80, label %cond.true251, label %lor.lhs.false81, !dbg !4189

lor.lhs.false81:                                  ; preds = %land.lhs.true75, %lor.lhs.false71
  %60 = load i32, ptr %i, align 4, !dbg !4189
  %shr82 = ashr i32 %60, 5, !dbg !4189
  %cmp83 = icmp eq i32 %shr82, 5, !dbg !4189
  br i1 %cmp83, label %land.lhs.true85, label %lor.lhs.false91, !dbg !4189

land.lhs.true85:                                  ; preds = %lor.lhs.false81
  %61 = load i32, ptr %i, align 4, !dbg !4189
  %and86 = and i32 %61, 31, !dbg !4189
  %sh_prom87 = zext i32 %and86 to i64, !dbg !4189
  %shl88 = shl i64 1, %sh_prom87, !dbg !4189
  %and89 = and i64 %shl88, 0, !dbg !4189
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4189
  br i1 %tobool90, label %cond.true251, label %lor.lhs.false91, !dbg !4189

lor.lhs.false91:                                  ; preds = %land.lhs.true85, %lor.lhs.false81
  %62 = load i32, ptr %i, align 4, !dbg !4189
  %shr92 = ashr i32 %62, 5, !dbg !4189
  %cmp93 = icmp eq i32 %shr92, 6, !dbg !4189
  br i1 %cmp93, label %land.lhs.true95, label %lor.lhs.false101, !dbg !4189

land.lhs.true95:                                  ; preds = %lor.lhs.false91
  %63 = load i32, ptr %i, align 4, !dbg !4189
  %and96 = and i32 %63, 31, !dbg !4189
  %sh_prom97 = zext i32 %and96 to i64, !dbg !4189
  %shl98 = shl i64 1, %sh_prom97, !dbg !4189
  %and99 = and i64 %shl98, 0, !dbg !4189
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4189
  br i1 %tobool100, label %cond.true251, label %lor.lhs.false101, !dbg !4189

lor.lhs.false101:                                 ; preds = %land.lhs.true95, %lor.lhs.false91
  %64 = load i32, ptr %i, align 4, !dbg !4189
  %shr102 = ashr i32 %64, 5, !dbg !4189
  %cmp103 = icmp eq i32 %shr102, 7, !dbg !4189
  br i1 %cmp103, label %land.lhs.true105, label %lor.lhs.false111, !dbg !4189

land.lhs.true105:                                 ; preds = %lor.lhs.false101
  %65 = load i32, ptr %i, align 4, !dbg !4189
  %and106 = and i32 %65, 31, !dbg !4189
  %sh_prom107 = zext i32 %and106 to i64, !dbg !4189
  %shl108 = shl i64 1, %sh_prom107, !dbg !4189
  %and109 = and i64 %shl108, 0, !dbg !4189
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4189
  br i1 %tobool110, label %cond.true251, label %lor.lhs.false111, !dbg !4189

lor.lhs.false111:                                 ; preds = %land.lhs.true105, %lor.lhs.false101
  %66 = load i32, ptr %i, align 4, !dbg !4189
  %shr112 = ashr i32 %66, 5, !dbg !4189
  %cmp113 = icmp eq i32 %shr112, 8, !dbg !4189
  br i1 %cmp113, label %land.lhs.true115, label %lor.lhs.false121, !dbg !4189

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %67 = load i32, ptr %i, align 4, !dbg !4189
  %and116 = and i32 %67, 31, !dbg !4189
  %sh_prom117 = zext i32 %and116 to i64, !dbg !4189
  %shl118 = shl i64 1, %sh_prom117, !dbg !4189
  %and119 = and i64 %shl118, 0, !dbg !4189
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4189
  br i1 %tobool120, label %cond.true251, label %lor.lhs.false121, !dbg !4189

lor.lhs.false121:                                 ; preds = %land.lhs.true115, %lor.lhs.false111
  %68 = load i32, ptr %i, align 4, !dbg !4189
  %shr122 = ashr i32 %68, 5, !dbg !4189
  %cmp123 = icmp eq i32 %shr122, 9, !dbg !4189
  br i1 %cmp123, label %land.lhs.true125, label %lor.lhs.false131, !dbg !4189

land.lhs.true125:                                 ; preds = %lor.lhs.false121
  %69 = load i32, ptr %i, align 4, !dbg !4189
  %and126 = and i32 %69, 31, !dbg !4189
  %sh_prom127 = zext i32 %and126 to i64, !dbg !4189
  %shl128 = shl i64 1, %sh_prom127, !dbg !4189
  %and129 = and i64 %shl128, 0, !dbg !4189
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4189
  br i1 %tobool130, label %cond.true251, label %lor.lhs.false131, !dbg !4189

lor.lhs.false131:                                 ; preds = %land.lhs.true125, %lor.lhs.false121
  %70 = load i32, ptr %i, align 4, !dbg !4189
  %shr132 = ashr i32 %70, 5, !dbg !4189
  %cmp133 = icmp eq i32 %shr132, 10, !dbg !4189
  br i1 %cmp133, label %land.lhs.true135, label %lor.lhs.false141, !dbg !4189

land.lhs.true135:                                 ; preds = %lor.lhs.false131
  %71 = load i32, ptr %i, align 4, !dbg !4189
  %and136 = and i32 %71, 31, !dbg !4189
  %sh_prom137 = zext i32 %and136 to i64, !dbg !4189
  %shl138 = shl i64 1, %sh_prom137, !dbg !4189
  %and139 = and i64 %shl138, 0, !dbg !4189
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4189
  br i1 %tobool140, label %cond.true251, label %lor.lhs.false141, !dbg !4189

lor.lhs.false141:                                 ; preds = %land.lhs.true135, %lor.lhs.false131
  %72 = load i32, ptr %i, align 4, !dbg !4189
  %shr142 = ashr i32 %72, 5, !dbg !4189
  %cmp143 = icmp eq i32 %shr142, 11, !dbg !4189
  br i1 %cmp143, label %land.lhs.true145, label %lor.lhs.false151, !dbg !4189

land.lhs.true145:                                 ; preds = %lor.lhs.false141
  %73 = load i32, ptr %i, align 4, !dbg !4189
  %and146 = and i32 %73, 31, !dbg !4189
  %sh_prom147 = zext i32 %and146 to i64, !dbg !4189
  %shl148 = shl i64 1, %sh_prom147, !dbg !4189
  %and149 = and i64 %shl148, 0, !dbg !4189
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4189
  br i1 %tobool150, label %cond.true251, label %lor.lhs.false151, !dbg !4189

lor.lhs.false151:                                 ; preds = %land.lhs.true145, %lor.lhs.false141
  %74 = load i32, ptr %i, align 4, !dbg !4189
  %shr152 = ashr i32 %74, 5, !dbg !4189
  %cmp153 = icmp eq i32 %shr152, 12, !dbg !4189
  br i1 %cmp153, label %land.lhs.true155, label %lor.lhs.false161, !dbg !4189

land.lhs.true155:                                 ; preds = %lor.lhs.false151
  %75 = load i32, ptr %i, align 4, !dbg !4189
  %and156 = and i32 %75, 31, !dbg !4189
  %sh_prom157 = zext i32 %and156 to i64, !dbg !4189
  %shl158 = shl i64 1, %sh_prom157, !dbg !4189
  %and159 = and i64 %shl158, 0, !dbg !4189
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4189
  br i1 %tobool160, label %cond.true251, label %lor.lhs.false161, !dbg !4189

lor.lhs.false161:                                 ; preds = %land.lhs.true155, %lor.lhs.false151
  %76 = load i32, ptr %i, align 4, !dbg !4189
  %shr162 = ashr i32 %76, 5, !dbg !4189
  %cmp163 = icmp eq i32 %shr162, 13, !dbg !4189
  br i1 %cmp163, label %land.lhs.true165, label %lor.lhs.false171, !dbg !4189

land.lhs.true165:                                 ; preds = %lor.lhs.false161
  %77 = load i32, ptr %i, align 4, !dbg !4189
  %and166 = and i32 %77, 31, !dbg !4189
  %sh_prom167 = zext i32 %and166 to i64, !dbg !4189
  %shl168 = shl i64 1, %sh_prom167, !dbg !4189
  %and169 = and i64 %shl168, 0, !dbg !4189
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4189
  br i1 %tobool170, label %cond.true251, label %lor.lhs.false171, !dbg !4189

lor.lhs.false171:                                 ; preds = %land.lhs.true165, %lor.lhs.false161
  %78 = load i32, ptr %i, align 4, !dbg !4189
  %shr172 = ashr i32 %78, 5, !dbg !4189
  %cmp173 = icmp eq i32 %shr172, 14, !dbg !4189
  br i1 %cmp173, label %land.lhs.true175, label %lor.lhs.false181, !dbg !4189

land.lhs.true175:                                 ; preds = %lor.lhs.false171
  %79 = load i32, ptr %i, align 4, !dbg !4189
  %and176 = and i32 %79, 31, !dbg !4189
  %sh_prom177 = zext i32 %and176 to i64, !dbg !4189
  %shl178 = shl i64 1, %sh_prom177, !dbg !4189
  %and179 = and i64 %shl178, 0, !dbg !4189
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4189
  br i1 %tobool180, label %cond.true251, label %lor.lhs.false181, !dbg !4189

lor.lhs.false181:                                 ; preds = %land.lhs.true175, %lor.lhs.false171
  %80 = load i32, ptr %i, align 4, !dbg !4189
  %shr182 = ashr i32 %80, 5, !dbg !4189
  %cmp183 = icmp eq i32 %shr182, 15, !dbg !4189
  br i1 %cmp183, label %land.lhs.true185, label %lor.lhs.false191, !dbg !4189

land.lhs.true185:                                 ; preds = %lor.lhs.false181
  %81 = load i32, ptr %i, align 4, !dbg !4189
  %and186 = and i32 %81, 31, !dbg !4189
  %sh_prom187 = zext i32 %and186 to i64, !dbg !4189
  %shl188 = shl i64 1, %sh_prom187, !dbg !4189
  %and189 = and i64 %shl188, 0, !dbg !4189
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4189
  br i1 %tobool190, label %cond.true251, label %lor.lhs.false191, !dbg !4189

lor.lhs.false191:                                 ; preds = %land.lhs.true185, %lor.lhs.false181
  %82 = load i32, ptr %i, align 4, !dbg !4189
  %shr192 = ashr i32 %82, 5, !dbg !4189
  %cmp193 = icmp eq i32 %shr192, 16, !dbg !4189
  br i1 %cmp193, label %land.lhs.true195, label %lor.lhs.false201, !dbg !4189

land.lhs.true195:                                 ; preds = %lor.lhs.false191
  %83 = load i32, ptr %i, align 4, !dbg !4189
  %and196 = and i32 %83, 31, !dbg !4189
  %sh_prom197 = zext i32 %and196 to i64, !dbg !4189
  %shl198 = shl i64 1, %sh_prom197, !dbg !4189
  %and199 = and i64 %shl198, 0, !dbg !4189
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4189
  br i1 %tobool200, label %cond.true251, label %lor.lhs.false201, !dbg !4189

lor.lhs.false201:                                 ; preds = %land.lhs.true195, %lor.lhs.false191
  %84 = load i32, ptr %i, align 4, !dbg !4189
  %shr202 = ashr i32 %84, 5, !dbg !4189
  %cmp203 = icmp eq i32 %shr202, 17, !dbg !4189
  br i1 %cmp203, label %land.lhs.true205, label %lor.lhs.false211, !dbg !4189

land.lhs.true205:                                 ; preds = %lor.lhs.false201
  %85 = load i32, ptr %i, align 4, !dbg !4189
  %and206 = and i32 %85, 31, !dbg !4189
  %sh_prom207 = zext i32 %and206 to i64, !dbg !4189
  %shl208 = shl i64 1, %sh_prom207, !dbg !4189
  %and209 = and i64 %shl208, 0, !dbg !4189
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4189
  br i1 %tobool210, label %cond.true251, label %lor.lhs.false211, !dbg !4189

lor.lhs.false211:                                 ; preds = %land.lhs.true205, %lor.lhs.false201
  %86 = load i32, ptr %i, align 4, !dbg !4189
  %shr212 = ashr i32 %86, 5, !dbg !4189
  %cmp213 = icmp eq i32 %shr212, 18, !dbg !4189
  br i1 %cmp213, label %land.lhs.true215, label %lor.lhs.false221, !dbg !4189

land.lhs.true215:                                 ; preds = %lor.lhs.false211
  %87 = load i32, ptr %i, align 4, !dbg !4189
  %and216 = and i32 %87, 31, !dbg !4189
  %sh_prom217 = zext i32 %and216 to i64, !dbg !4189
  %shl218 = shl i64 1, %sh_prom217, !dbg !4189
  %and219 = and i64 %shl218, 0, !dbg !4189
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4189
  br i1 %tobool220, label %cond.true251, label %lor.lhs.false221, !dbg !4189

lor.lhs.false221:                                 ; preds = %land.lhs.true215, %lor.lhs.false211
  %88 = load i32, ptr %i, align 4, !dbg !4189
  %shr222 = ashr i32 %88, 5, !dbg !4189
  %cmp223 = icmp eq i32 %shr222, 19, !dbg !4189
  br i1 %cmp223, label %land.lhs.true225, label %lor.lhs.false231, !dbg !4189

land.lhs.true225:                                 ; preds = %lor.lhs.false221
  %89 = load i32, ptr %i, align 4, !dbg !4189
  %and226 = and i32 %89, 31, !dbg !4189
  %sh_prom227 = zext i32 %and226 to i64, !dbg !4189
  %shl228 = shl i64 1, %sh_prom227, !dbg !4189
  %and229 = and i64 %shl228, 0, !dbg !4189
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4189
  br i1 %tobool230, label %cond.true251, label %lor.lhs.false231, !dbg !4189

lor.lhs.false231:                                 ; preds = %land.lhs.true225, %lor.lhs.false221
  %90 = load i32, ptr %i, align 4, !dbg !4189
  %shr232 = ashr i32 %90, 5, !dbg !4189
  %cmp233 = icmp eq i32 %shr232, 20, !dbg !4189
  br i1 %cmp233, label %land.lhs.true235, label %lor.lhs.false241, !dbg !4189

land.lhs.true235:                                 ; preds = %lor.lhs.false231
  %91 = load i32, ptr %i, align 4, !dbg !4189
  %and236 = and i32 %91, 31, !dbg !4189
  %sh_prom237 = zext i32 %and236 to i64, !dbg !4189
  %shl238 = shl i64 1, %sh_prom237, !dbg !4189
  %and239 = and i64 %shl238, 0, !dbg !4189
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4189
  br i1 %tobool240, label %cond.true251, label %lor.lhs.false241, !dbg !4189

lor.lhs.false241:                                 ; preds = %land.lhs.true235, %lor.lhs.false231
  %92 = load i32, ptr %i, align 4, !dbg !4189
  %shr242 = ashr i32 %92, 5, !dbg !4189
  %cmp243 = icmp eq i32 %shr242, 21, !dbg !4189
  br i1 %cmp243, label %land.lhs.true245, label %cond.false252, !dbg !4189

land.lhs.true245:                                 ; preds = %lor.lhs.false241
  %93 = load i32, ptr %i, align 4, !dbg !4189
  %and246 = and i32 %93, 31, !dbg !4189
  %sh_prom247 = zext i32 %and246 to i64, !dbg !4189
  %shl248 = shl i64 1, %sh_prom247, !dbg !4189
  %and249 = and i64 %shl248, 0, !dbg !4189
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4189
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4191

cond.true251:                                     ; preds = %land.lhs.true245, %land.lhs.true235, %land.lhs.true225, %land.lhs.true215, %land.lhs.true205, %land.lhs.true195, %land.lhs.true185, %land.lhs.true175, %land.lhs.true165, %land.lhs.true155, %land.lhs.true145, %land.lhs.true135, %land.lhs.true125, %land.lhs.true115, %land.lhs.true105, %land.lhs.true95, %land.lhs.true85, %land.lhs.true75, %land.lhs.true65, %land.lhs.true55, %land.lhs.true45, %land.lhs.true38
  br i1 true, label %land.lhs.true257, label %if.end264, !dbg !4189

cond.false252:                                    ; preds = %land.lhs.true245, %lor.lhs.false241, %for.body
  %94 = load i32, ptr %i, align 4, !dbg !4189
  %conv253 = sext i32 %94 to i64, !dbg !4189
  %95 = load ptr, ptr %c, align 8, !dbg !4189
  %96 = getelementptr inbounds %struct.cpuinfo_x86, ptr %95, i32 0, i32 10, !dbg !4189
  %arraydecay254 = getelementptr inbounds [24 x i32], ptr %96, i64 0, i64 0, !dbg !4189
  %call255 = call zeroext i1 @arch_test_bit(i64 noundef %conv253, ptr noundef %arraydecay254) #9, !dbg !4189
  br i1 %call255, label %land.lhs.true257, label %if.end264, !dbg !4191

land.lhs.true257:                                 ; preds = %cond.false252, %cond.true251
  %97 = load i32, ptr %i, align 4, !dbg !4192
  %idxprom = sext i32 %97 to i64, !dbg !4193
  %arrayidx258 = getelementptr [704 x ptr], ptr @x86_cap_flags, i64 0, i64 %idxprom, !dbg !4193
  %98 = load ptr, ptr %arrayidx258, align 8, !dbg !4193
  %cmp259 = icmp ne ptr %98, null, !dbg !4194
  br i1 %cmp259, label %if.then261, label %if.end264, !dbg !4195

if.then261:                                       ; preds = %land.lhs.true257
  %99 = load ptr, ptr %m.addr, align 8, !dbg !4196
  %100 = load i32, ptr %i, align 4, !dbg !4197
  %idxprom262 = sext i32 %100 to i64, !dbg !4198
  %arrayidx263 = getelementptr [704 x ptr], ptr @x86_cap_flags, i64 0, i64 %idxprom262, !dbg !4198
  %101 = load ptr, ptr %arrayidx263, align 8, !dbg !4198
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %99, ptr noundef @.str.8, ptr noundef %101) #9, !dbg !4199
  br label %if.end264, !dbg !4199

if.end264:                                        ; preds = %if.then261, %land.lhs.true257, %cond.false252, %cond.true251
  br label %for.inc, !dbg !4200

for.inc:                                          ; preds = %if.end264
  %102 = load i32, ptr %i, align 4, !dbg !4201
  %inc = add i32 %102, 1, !dbg !4201
  store i32 %inc, ptr %i, align 4, !dbg !4201
  br label %for.cond, !dbg !4202, !llvm.loop !4203

for.end:                                          ; preds = %for.cond
  br i1 false, label %cond.true265, label %cond.false266, !dbg !4207

cond.true265:                                     ; preds = %for.end
  br i1 true, label %land.lhs.true270, label %if.end315, !dbg !4209

cond.false266:                                    ; preds = %for.end
  %103 = load ptr, ptr %c, align 8, !dbg !4209
  %104 = getelementptr inbounds %struct.cpuinfo_x86, ptr %103, i32 0, i32 10, !dbg !4209
  %arraydecay267 = getelementptr inbounds [24 x i32], ptr %104, i64 0, i64 0, !dbg !4209
  %call268 = call zeroext i1 @arch_test_bit(i64 noundef 133, ptr noundef %arraydecay267) #9, !dbg !4209
  br i1 %call268, label %land.lhs.true270, label %if.end315, !dbg !4207

land.lhs.true270:                                 ; preds = %cond.false266, %cond.true265
  %105 = load ptr, ptr %c, align 8, !dbg !4210
  %vmx_capability = getelementptr inbounds %struct.cpuinfo_x86, ptr %105, i32 0, i32 3, !dbg !4211
  %arrayidx271 = getelementptr [5 x i32], ptr %vmx_capability, i64 0, i64 0, !dbg !4210
  %106 = load i32, ptr %arrayidx271, align 4, !dbg !4210
  %tobool272 = icmp ne i32 %106, 0, !dbg !4210
  br i1 %tobool272, label %if.then273, label %if.end315, !dbg !4212

if.then273:                                       ; preds = %land.lhs.true270
  %107 = load ptr, ptr %m.addr, align 8, !dbg !4213
  call void @seq_puts(ptr noundef %107, ptr noundef @.str.9) #9, !dbg !4215
  store i32 0, ptr %i, align 4, !dbg !4216
  br label %for.cond274, !dbg !4218

for.cond274:                                      ; preds = %for.inc312, %if.then273
  %108 = load i32, ptr %i, align 4, !dbg !4219
  %cmp275 = icmp slt i32 %108, 160, !dbg !4221
  br i1 %cmp275, label %for.body277, label %for.end314, !dbg !4222

for.body277:                                      ; preds = %for.cond274
  %109 = load i32, ptr %i, align 4, !dbg !4223
  %110 = call i1 @llvm.is.constant.i32(i32 %109), !dbg !4223
  br i1 %110, label %land.lhs.true278, label %cond.false297, !dbg !4223

land.lhs.true278:                                 ; preds = %for.body277
  %111 = load ptr, ptr %c, align 8, !dbg !4223
  %vmx_capability279 = getelementptr inbounds %struct.cpuinfo_x86, ptr %111, i32 0, i32 3, !dbg !4223
  %arraydecay280 = getelementptr inbounds [5 x i32], ptr %vmx_capability279, i64 0, i64 0, !dbg !4223
  %112 = ptrtoint ptr %arraydecay280 to i64, !dbg !4223
  %cmp281 = icmp ne i64 %112, 0, !dbg !4223
  %conv282 = zext i1 %cmp281 to i32, !dbg !4223
  %113 = call i1 @llvm.is.constant.i32(i32 %conv282), !dbg !4223
  br i1 %113, label %land.lhs.true283, label %cond.false297, !dbg !4223

land.lhs.true283:                                 ; preds = %land.lhs.true278
  %114 = load ptr, ptr %c, align 8, !dbg !4223
  %vmx_capability284 = getelementptr inbounds %struct.cpuinfo_x86, ptr %114, i32 0, i32 3, !dbg !4223
  %arraydecay285 = getelementptr inbounds [5 x i32], ptr %vmx_capability284, i64 0, i64 0, !dbg !4223
  %115 = ptrtoint ptr %arraydecay285 to i64, !dbg !4223
  %cmp286 = icmp ne i64 %115, 0, !dbg !4223
  br i1 %cmp286, label %land.lhs.true288, label %cond.false297, !dbg !4223

land.lhs.true288:                                 ; preds = %land.lhs.true283
  %116 = load ptr, ptr %c, align 8, !dbg !4223
  %vmx_capability289 = getelementptr inbounds %struct.cpuinfo_x86, ptr %116, i32 0, i32 3, !dbg !4223
  %arraydecay290 = getelementptr inbounds [5 x i32], ptr %vmx_capability289, i64 0, i64 0, !dbg !4223
  %117 = load i64, ptr %arraydecay290, align 4, !dbg !4223
  %118 = call i1 @llvm.is.constant.i64(i64 %117), !dbg !4223
  br i1 %118, label %cond.true291, label %cond.false297, !dbg !4226

cond.true291:                                     ; preds = %land.lhs.true288
  %119 = load i32, ptr %i, align 4, !dbg !4223
  %conv292 = sext i32 %119 to i64, !dbg !4223
  %120 = load ptr, ptr %c, align 8, !dbg !4223
  %vmx_capability293 = getelementptr inbounds %struct.cpuinfo_x86, ptr %120, i32 0, i32 3, !dbg !4223
  %arraydecay294 = getelementptr inbounds [5 x i32], ptr %vmx_capability293, i64 0, i64 0, !dbg !4223
  %call295 = call zeroext i1 @const_test_bit(i64 noundef %conv292, ptr noundef %arraydecay294) #9, !dbg !4223
  br i1 %call295, label %land.lhs.true303, label %if.end311, !dbg !4223

cond.false297:                                    ; preds = %land.lhs.true288, %land.lhs.true283, %land.lhs.true278, %for.body277
  %121 = load i32, ptr %i, align 4, !dbg !4223
  %conv298 = sext i32 %121 to i64, !dbg !4223
  %122 = load ptr, ptr %c, align 8, !dbg !4223
  %vmx_capability299 = getelementptr inbounds %struct.cpuinfo_x86, ptr %122, i32 0, i32 3, !dbg !4223
  %arraydecay300 = getelementptr inbounds [5 x i32], ptr %vmx_capability299, i64 0, i64 0, !dbg !4223
  %call301 = call zeroext i1 @_test_bit(i64 noundef %conv298, ptr noundef %arraydecay300) #9, !dbg !4223
  br i1 %call301, label %land.lhs.true303, label %if.end311, !dbg !4226

land.lhs.true303:                                 ; preds = %cond.false297, %cond.true291
  %123 = load i32, ptr %i, align 4, !dbg !4227
  %idxprom304 = sext i32 %123 to i64, !dbg !4228
  %arrayidx305 = getelementptr [160 x ptr], ptr @x86_vmx_flags, i64 0, i64 %idxprom304, !dbg !4228
  %124 = load ptr, ptr %arrayidx305, align 8, !dbg !4228
  %cmp306 = icmp ne ptr %124, null, !dbg !4229
  br i1 %cmp306, label %if.then308, label %if.end311, !dbg !4230

if.then308:                                       ; preds = %land.lhs.true303
  %125 = load ptr, ptr %m.addr, align 8, !dbg !4231
  %126 = load i32, ptr %i, align 4, !dbg !4232
  %idxprom309 = sext i32 %126 to i64, !dbg !4233
  %arrayidx310 = getelementptr [160 x ptr], ptr @x86_vmx_flags, i64 0, i64 %idxprom309, !dbg !4233
  %127 = load ptr, ptr %arrayidx310, align 8, !dbg !4233
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %125, ptr noundef @.str.8, ptr noundef %127) #9, !dbg !4234
  br label %if.end311, !dbg !4234

if.end311:                                        ; preds = %if.then308, %land.lhs.true303, %cond.false297, %cond.true291
  br label %for.inc312, !dbg !4235

for.inc312:                                       ; preds = %if.end311
  %128 = load i32, ptr %i, align 4, !dbg !4236
  %inc313 = add i32 %128, 1, !dbg !4236
  store i32 %inc313, ptr %i, align 4, !dbg !4236
  br label %for.cond274, !dbg !4237, !llvm.loop !4238

for.end314:                                       ; preds = %for.cond274
  br label %if.end315, !dbg !4240

if.end315:                                        ; preds = %for.end314, %land.lhs.true270, %cond.false266, %cond.true265
  %129 = load ptr, ptr %m.addr, align 8, !dbg !4241
  call void @seq_puts(ptr noundef %129, ptr noundef @.str.10) #9, !dbg !4242
  store i32 0, ptr %i, align 4, !dbg !4243
  br label %for.cond316, !dbg !4244

for.cond316:                                      ; preds = %for.inc554, %if.end315
  %130 = load i32, ptr %i, align 4, !dbg !4245
  %cmp317 = icmp slt i32 %130, 64, !dbg !4246
  br i1 %cmp317, label %for.body319, label %for.end556, !dbg !4247

for.body319:                                      ; preds = %for.cond316
  call void @llvm.lifetime.start.p0(i64 4, ptr %bug_bit) #10, !dbg !4248
  call void @llvm.dbg.declare(metadata ptr %bug_bit, metadata !4098, metadata !DIExpression()), !dbg !4249
  %131 = load i32, ptr %i, align 4, !dbg !4250
  %add = add i32 704, %131, !dbg !4251
  store i32 %add, ptr %bug_bit, align 4, !dbg !4249
  %132 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %133 = call i1 @llvm.is.constant.i32(i32 %132), !dbg !4252
  br i1 %133, label %land.lhs.true320, label %cond.false541, !dbg !4252

land.lhs.true320:                                 ; preds = %for.body319
  %134 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr321 = lshr i32 %134, 5, !dbg !4252
  %cmp322 = icmp eq i32 %shr321, 0, !dbg !4252
  br i1 %cmp322, label %land.lhs.true324, label %lor.lhs.false330, !dbg !4252

land.lhs.true324:                                 ; preds = %land.lhs.true320
  %135 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and325 = and i32 %135, 31, !dbg !4252
  %sh_prom326 = zext i32 %and325 to i64, !dbg !4252
  %shl327 = shl i64 1, %sh_prom326, !dbg !4252
  %and328 = and i64 %shl327, 117473641, !dbg !4252
  %tobool329 = icmp ne i64 %and328, 0, !dbg !4252
  br i1 %tobool329, label %cond.true540, label %lor.lhs.false330, !dbg !4252

lor.lhs.false330:                                 ; preds = %land.lhs.true324, %land.lhs.true320
  %136 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr331 = lshr i32 %136, 5, !dbg !4252
  %cmp332 = icmp eq i32 %shr331, 1, !dbg !4252
  br i1 %cmp332, label %land.lhs.true334, label %lor.lhs.false340, !dbg !4252

land.lhs.true334:                                 ; preds = %lor.lhs.false330
  %137 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and335 = and i32 %137, 31, !dbg !4252
  %sh_prom336 = zext i32 %and335 to i64, !dbg !4252
  %shl337 = shl i64 1, %sh_prom336, !dbg !4252
  %and338 = and i64 %shl337, 536870912, !dbg !4252
  %tobool339 = icmp ne i64 %and338, 0, !dbg !4252
  br i1 %tobool339, label %cond.true540, label %lor.lhs.false340, !dbg !4252

lor.lhs.false340:                                 ; preds = %land.lhs.true334, %lor.lhs.false330
  %138 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr341 = lshr i32 %138, 5, !dbg !4252
  %cmp342 = icmp eq i32 %shr341, 2, !dbg !4252
  br i1 %cmp342, label %land.lhs.true344, label %lor.lhs.false350, !dbg !4252

land.lhs.true344:                                 ; preds = %lor.lhs.false340
  %139 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and345 = and i32 %139, 31, !dbg !4252
  %sh_prom346 = zext i32 %and345 to i64, !dbg !4252
  %shl347 = shl i64 1, %sh_prom346, !dbg !4252
  %and348 = and i64 %shl347, 0, !dbg !4252
  %tobool349 = icmp ne i64 %and348, 0, !dbg !4252
  br i1 %tobool349, label %cond.true540, label %lor.lhs.false350, !dbg !4252

lor.lhs.false350:                                 ; preds = %land.lhs.true344, %lor.lhs.false340
  %140 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr351 = lshr i32 %140, 5, !dbg !4252
  %cmp352 = icmp eq i32 %shr351, 3, !dbg !4252
  br i1 %cmp352, label %land.lhs.true354, label %lor.lhs.false360, !dbg !4252

land.lhs.true354:                                 ; preds = %lor.lhs.false350
  %141 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and355 = and i32 %141, 31, !dbg !4252
  %sh_prom356 = zext i32 %and355 to i64, !dbg !4252
  %shl357 = shl i64 1, %sh_prom356, !dbg !4252
  %and358 = and i64 %shl357, 1048576, !dbg !4252
  %tobool359 = icmp ne i64 %and358, 0, !dbg !4252
  br i1 %tobool359, label %cond.true540, label %lor.lhs.false360, !dbg !4252

lor.lhs.false360:                                 ; preds = %land.lhs.true354, %lor.lhs.false350
  %142 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr361 = lshr i32 %142, 5, !dbg !4252
  %cmp362 = icmp eq i32 %shr361, 4, !dbg !4252
  br i1 %cmp362, label %land.lhs.true364, label %lor.lhs.false370, !dbg !4252

land.lhs.true364:                                 ; preds = %lor.lhs.false360
  %143 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and365 = and i32 %143, 31, !dbg !4252
  %sh_prom366 = zext i32 %and365 to i64, !dbg !4252
  %shl367 = shl i64 1, %sh_prom366, !dbg !4252
  %and368 = and i64 %shl367, 0, !dbg !4252
  %tobool369 = icmp ne i64 %and368, 0, !dbg !4252
  br i1 %tobool369, label %cond.true540, label %lor.lhs.false370, !dbg !4252

lor.lhs.false370:                                 ; preds = %land.lhs.true364, %lor.lhs.false360
  %144 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr371 = lshr i32 %144, 5, !dbg !4252
  %cmp372 = icmp eq i32 %shr371, 5, !dbg !4252
  br i1 %cmp372, label %land.lhs.true374, label %lor.lhs.false380, !dbg !4252

land.lhs.true374:                                 ; preds = %lor.lhs.false370
  %145 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and375 = and i32 %145, 31, !dbg !4252
  %sh_prom376 = zext i32 %and375 to i64, !dbg !4252
  %shl377 = shl i64 1, %sh_prom376, !dbg !4252
  %and378 = and i64 %shl377, 0, !dbg !4252
  %tobool379 = icmp ne i64 %and378, 0, !dbg !4252
  br i1 %tobool379, label %cond.true540, label %lor.lhs.false380, !dbg !4252

lor.lhs.false380:                                 ; preds = %land.lhs.true374, %lor.lhs.false370
  %146 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr381 = lshr i32 %146, 5, !dbg !4252
  %cmp382 = icmp eq i32 %shr381, 6, !dbg !4252
  br i1 %cmp382, label %land.lhs.true384, label %lor.lhs.false390, !dbg !4252

land.lhs.true384:                                 ; preds = %lor.lhs.false380
  %147 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and385 = and i32 %147, 31, !dbg !4252
  %sh_prom386 = zext i32 %and385 to i64, !dbg !4252
  %shl387 = shl i64 1, %sh_prom386, !dbg !4252
  %and388 = and i64 %shl387, 0, !dbg !4252
  %tobool389 = icmp ne i64 %and388, 0, !dbg !4252
  br i1 %tobool389, label %cond.true540, label %lor.lhs.false390, !dbg !4252

lor.lhs.false390:                                 ; preds = %land.lhs.true384, %lor.lhs.false380
  %148 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr391 = lshr i32 %148, 5, !dbg !4252
  %cmp392 = icmp eq i32 %shr391, 7, !dbg !4252
  br i1 %cmp392, label %land.lhs.true394, label %lor.lhs.false400, !dbg !4252

land.lhs.true394:                                 ; preds = %lor.lhs.false390
  %149 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and395 = and i32 %149, 31, !dbg !4252
  %sh_prom396 = zext i32 %and395 to i64, !dbg !4252
  %shl397 = shl i64 1, %sh_prom396, !dbg !4252
  %and398 = and i64 %shl397, 0, !dbg !4252
  %tobool399 = icmp ne i64 %and398, 0, !dbg !4252
  br i1 %tobool399, label %cond.true540, label %lor.lhs.false400, !dbg !4252

lor.lhs.false400:                                 ; preds = %land.lhs.true394, %lor.lhs.false390
  %150 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr401 = lshr i32 %150, 5, !dbg !4252
  %cmp402 = icmp eq i32 %shr401, 8, !dbg !4252
  br i1 %cmp402, label %land.lhs.true404, label %lor.lhs.false410, !dbg !4252

land.lhs.true404:                                 ; preds = %lor.lhs.false400
  %151 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and405 = and i32 %151, 31, !dbg !4252
  %sh_prom406 = zext i32 %and405 to i64, !dbg !4252
  %shl407 = shl i64 1, %sh_prom406, !dbg !4252
  %and408 = and i64 %shl407, 0, !dbg !4252
  %tobool409 = icmp ne i64 %and408, 0, !dbg !4252
  br i1 %tobool409, label %cond.true540, label %lor.lhs.false410, !dbg !4252

lor.lhs.false410:                                 ; preds = %land.lhs.true404, %lor.lhs.false400
  %152 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr411 = lshr i32 %152, 5, !dbg !4252
  %cmp412 = icmp eq i32 %shr411, 9, !dbg !4252
  br i1 %cmp412, label %land.lhs.true414, label %lor.lhs.false420, !dbg !4252

land.lhs.true414:                                 ; preds = %lor.lhs.false410
  %153 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and415 = and i32 %153, 31, !dbg !4252
  %sh_prom416 = zext i32 %and415 to i64, !dbg !4252
  %shl417 = shl i64 1, %sh_prom416, !dbg !4252
  %and418 = and i64 %shl417, 0, !dbg !4252
  %tobool419 = icmp ne i64 %and418, 0, !dbg !4252
  br i1 %tobool419, label %cond.true540, label %lor.lhs.false420, !dbg !4252

lor.lhs.false420:                                 ; preds = %land.lhs.true414, %lor.lhs.false410
  %154 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr421 = lshr i32 %154, 5, !dbg !4252
  %cmp422 = icmp eq i32 %shr421, 10, !dbg !4252
  br i1 %cmp422, label %land.lhs.true424, label %lor.lhs.false430, !dbg !4252

land.lhs.true424:                                 ; preds = %lor.lhs.false420
  %155 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and425 = and i32 %155, 31, !dbg !4252
  %sh_prom426 = zext i32 %and425 to i64, !dbg !4252
  %shl427 = shl i64 1, %sh_prom426, !dbg !4252
  %and428 = and i64 %shl427, 0, !dbg !4252
  %tobool429 = icmp ne i64 %and428, 0, !dbg !4252
  br i1 %tobool429, label %cond.true540, label %lor.lhs.false430, !dbg !4252

lor.lhs.false430:                                 ; preds = %land.lhs.true424, %lor.lhs.false420
  %156 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr431 = lshr i32 %156, 5, !dbg !4252
  %cmp432 = icmp eq i32 %shr431, 11, !dbg !4252
  br i1 %cmp432, label %land.lhs.true434, label %lor.lhs.false440, !dbg !4252

land.lhs.true434:                                 ; preds = %lor.lhs.false430
  %157 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and435 = and i32 %157, 31, !dbg !4252
  %sh_prom436 = zext i32 %and435 to i64, !dbg !4252
  %shl437 = shl i64 1, %sh_prom436, !dbg !4252
  %and438 = and i64 %shl437, 0, !dbg !4252
  %tobool439 = icmp ne i64 %and438, 0, !dbg !4252
  br i1 %tobool439, label %cond.true540, label %lor.lhs.false440, !dbg !4252

lor.lhs.false440:                                 ; preds = %land.lhs.true434, %lor.lhs.false430
  %158 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr441 = lshr i32 %158, 5, !dbg !4252
  %cmp442 = icmp eq i32 %shr441, 12, !dbg !4252
  br i1 %cmp442, label %land.lhs.true444, label %lor.lhs.false450, !dbg !4252

land.lhs.true444:                                 ; preds = %lor.lhs.false440
  %159 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and445 = and i32 %159, 31, !dbg !4252
  %sh_prom446 = zext i32 %and445 to i64, !dbg !4252
  %shl447 = shl i64 1, %sh_prom446, !dbg !4252
  %and448 = and i64 %shl447, 0, !dbg !4252
  %tobool449 = icmp ne i64 %and448, 0, !dbg !4252
  br i1 %tobool449, label %cond.true540, label %lor.lhs.false450, !dbg !4252

lor.lhs.false450:                                 ; preds = %land.lhs.true444, %lor.lhs.false440
  %160 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr451 = lshr i32 %160, 5, !dbg !4252
  %cmp452 = icmp eq i32 %shr451, 13, !dbg !4252
  br i1 %cmp452, label %land.lhs.true454, label %lor.lhs.false460, !dbg !4252

land.lhs.true454:                                 ; preds = %lor.lhs.false450
  %161 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and455 = and i32 %161, 31, !dbg !4252
  %sh_prom456 = zext i32 %and455 to i64, !dbg !4252
  %shl457 = shl i64 1, %sh_prom456, !dbg !4252
  %and458 = and i64 %shl457, 0, !dbg !4252
  %tobool459 = icmp ne i64 %and458, 0, !dbg !4252
  br i1 %tobool459, label %cond.true540, label %lor.lhs.false460, !dbg !4252

lor.lhs.false460:                                 ; preds = %land.lhs.true454, %lor.lhs.false450
  %162 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr461 = lshr i32 %162, 5, !dbg !4252
  %cmp462 = icmp eq i32 %shr461, 14, !dbg !4252
  br i1 %cmp462, label %land.lhs.true464, label %lor.lhs.false470, !dbg !4252

land.lhs.true464:                                 ; preds = %lor.lhs.false460
  %163 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and465 = and i32 %163, 31, !dbg !4252
  %sh_prom466 = zext i32 %and465 to i64, !dbg !4252
  %shl467 = shl i64 1, %sh_prom466, !dbg !4252
  %and468 = and i64 %shl467, 0, !dbg !4252
  %tobool469 = icmp ne i64 %and468, 0, !dbg !4252
  br i1 %tobool469, label %cond.true540, label %lor.lhs.false470, !dbg !4252

lor.lhs.false470:                                 ; preds = %land.lhs.true464, %lor.lhs.false460
  %164 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr471 = lshr i32 %164, 5, !dbg !4252
  %cmp472 = icmp eq i32 %shr471, 15, !dbg !4252
  br i1 %cmp472, label %land.lhs.true474, label %lor.lhs.false480, !dbg !4252

land.lhs.true474:                                 ; preds = %lor.lhs.false470
  %165 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and475 = and i32 %165, 31, !dbg !4252
  %sh_prom476 = zext i32 %and475 to i64, !dbg !4252
  %shl477 = shl i64 1, %sh_prom476, !dbg !4252
  %and478 = and i64 %shl477, 0, !dbg !4252
  %tobool479 = icmp ne i64 %and478, 0, !dbg !4252
  br i1 %tobool479, label %cond.true540, label %lor.lhs.false480, !dbg !4252

lor.lhs.false480:                                 ; preds = %land.lhs.true474, %lor.lhs.false470
  %166 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr481 = lshr i32 %166, 5, !dbg !4252
  %cmp482 = icmp eq i32 %shr481, 16, !dbg !4252
  br i1 %cmp482, label %land.lhs.true484, label %lor.lhs.false490, !dbg !4252

land.lhs.true484:                                 ; preds = %lor.lhs.false480
  %167 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and485 = and i32 %167, 31, !dbg !4252
  %sh_prom486 = zext i32 %and485 to i64, !dbg !4252
  %shl487 = shl i64 1, %sh_prom486, !dbg !4252
  %and488 = and i64 %shl487, 0, !dbg !4252
  %tobool489 = icmp ne i64 %and488, 0, !dbg !4252
  br i1 %tobool489, label %cond.true540, label %lor.lhs.false490, !dbg !4252

lor.lhs.false490:                                 ; preds = %land.lhs.true484, %lor.lhs.false480
  %168 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr491 = lshr i32 %168, 5, !dbg !4252
  %cmp492 = icmp eq i32 %shr491, 17, !dbg !4252
  br i1 %cmp492, label %land.lhs.true494, label %lor.lhs.false500, !dbg !4252

land.lhs.true494:                                 ; preds = %lor.lhs.false490
  %169 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and495 = and i32 %169, 31, !dbg !4252
  %sh_prom496 = zext i32 %and495 to i64, !dbg !4252
  %shl497 = shl i64 1, %sh_prom496, !dbg !4252
  %and498 = and i64 %shl497, 0, !dbg !4252
  %tobool499 = icmp ne i64 %and498, 0, !dbg !4252
  br i1 %tobool499, label %cond.true540, label %lor.lhs.false500, !dbg !4252

lor.lhs.false500:                                 ; preds = %land.lhs.true494, %lor.lhs.false490
  %170 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr501 = lshr i32 %170, 5, !dbg !4252
  %cmp502 = icmp eq i32 %shr501, 18, !dbg !4252
  br i1 %cmp502, label %land.lhs.true504, label %lor.lhs.false510, !dbg !4252

land.lhs.true504:                                 ; preds = %lor.lhs.false500
  %171 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and505 = and i32 %171, 31, !dbg !4252
  %sh_prom506 = zext i32 %and505 to i64, !dbg !4252
  %shl507 = shl i64 1, %sh_prom506, !dbg !4252
  %and508 = and i64 %shl507, 0, !dbg !4252
  %tobool509 = icmp ne i64 %and508, 0, !dbg !4252
  br i1 %tobool509, label %cond.true540, label %lor.lhs.false510, !dbg !4252

lor.lhs.false510:                                 ; preds = %land.lhs.true504, %lor.lhs.false500
  %172 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr511 = lshr i32 %172, 5, !dbg !4252
  %cmp512 = icmp eq i32 %shr511, 19, !dbg !4252
  br i1 %cmp512, label %land.lhs.true514, label %lor.lhs.false520, !dbg !4252

land.lhs.true514:                                 ; preds = %lor.lhs.false510
  %173 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and515 = and i32 %173, 31, !dbg !4252
  %sh_prom516 = zext i32 %and515 to i64, !dbg !4252
  %shl517 = shl i64 1, %sh_prom516, !dbg !4252
  %and518 = and i64 %shl517, 0, !dbg !4252
  %tobool519 = icmp ne i64 %and518, 0, !dbg !4252
  br i1 %tobool519, label %cond.true540, label %lor.lhs.false520, !dbg !4252

lor.lhs.false520:                                 ; preds = %land.lhs.true514, %lor.lhs.false510
  %174 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr521 = lshr i32 %174, 5, !dbg !4252
  %cmp522 = icmp eq i32 %shr521, 20, !dbg !4252
  br i1 %cmp522, label %land.lhs.true524, label %lor.lhs.false530, !dbg !4252

land.lhs.true524:                                 ; preds = %lor.lhs.false520
  %175 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and525 = and i32 %175, 31, !dbg !4252
  %sh_prom526 = zext i32 %and525 to i64, !dbg !4252
  %shl527 = shl i64 1, %sh_prom526, !dbg !4252
  %and528 = and i64 %shl527, 0, !dbg !4252
  %tobool529 = icmp ne i64 %and528, 0, !dbg !4252
  br i1 %tobool529, label %cond.true540, label %lor.lhs.false530, !dbg !4252

lor.lhs.false530:                                 ; preds = %land.lhs.true524, %lor.lhs.false520
  %176 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %shr531 = lshr i32 %176, 5, !dbg !4252
  %cmp532 = icmp eq i32 %shr531, 21, !dbg !4252
  br i1 %cmp532, label %land.lhs.true534, label %cond.false541, !dbg !4252

land.lhs.true534:                                 ; preds = %lor.lhs.false530
  %177 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %and535 = and i32 %177, 31, !dbg !4252
  %sh_prom536 = zext i32 %and535 to i64, !dbg !4252
  %shl537 = shl i64 1, %sh_prom536, !dbg !4252
  %and538 = and i64 %shl537, 0, !dbg !4252
  %tobool539 = icmp ne i64 %and538, 0, !dbg !4252
  br i1 %tobool539, label %cond.true540, label %cond.false541, !dbg !4254

cond.true540:                                     ; preds = %land.lhs.true534, %land.lhs.true524, %land.lhs.true514, %land.lhs.true504, %land.lhs.true494, %land.lhs.true484, %land.lhs.true474, %land.lhs.true464, %land.lhs.true454, %land.lhs.true444, %land.lhs.true434, %land.lhs.true424, %land.lhs.true414, %land.lhs.true404, %land.lhs.true394, %land.lhs.true384, %land.lhs.true374, %land.lhs.true364, %land.lhs.true354, %land.lhs.true344, %land.lhs.true334, %land.lhs.true324
  br i1 true, label %land.lhs.true546, label %if.end553, !dbg !4252

cond.false541:                                    ; preds = %land.lhs.true534, %lor.lhs.false530, %for.body319
  %178 = load i32, ptr %bug_bit, align 4, !dbg !4252
  %conv542 = zext i32 %178 to i64, !dbg !4252
  %179 = load ptr, ptr %c, align 8, !dbg !4252
  %180 = getelementptr inbounds %struct.cpuinfo_x86, ptr %179, i32 0, i32 10, !dbg !4252
  %arraydecay543 = getelementptr inbounds [24 x i32], ptr %180, i64 0, i64 0, !dbg !4252
  %call544 = call zeroext i1 @arch_test_bit(i64 noundef %conv542, ptr noundef %arraydecay543) #9, !dbg !4252
  br i1 %call544, label %land.lhs.true546, label %if.end553, !dbg !4254

land.lhs.true546:                                 ; preds = %cond.false541, %cond.true540
  %181 = load i32, ptr %i, align 4, !dbg !4255
  %idxprom547 = sext i32 %181 to i64, !dbg !4256
  %arrayidx548 = getelementptr [64 x ptr], ptr @x86_bug_flags, i64 0, i64 %idxprom547, !dbg !4256
  %182 = load ptr, ptr %arrayidx548, align 8, !dbg !4256
  %tobool549 = icmp ne ptr %182, null, !dbg !4256
  br i1 %tobool549, label %if.then550, label %if.end553, !dbg !4257

if.then550:                                       ; preds = %land.lhs.true546
  %183 = load ptr, ptr %m.addr, align 8, !dbg !4258
  %184 = load i32, ptr %i, align 4, !dbg !4259
  %idxprom551 = sext i32 %184 to i64, !dbg !4260
  %arrayidx552 = getelementptr [64 x ptr], ptr @x86_bug_flags, i64 0, i64 %idxprom551, !dbg !4260
  %185 = load ptr, ptr %arrayidx552, align 8, !dbg !4260
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %183, ptr noundef @.str.8, ptr noundef %185) #9, !dbg !4261
  br label %if.end553, !dbg !4261

if.end553:                                        ; preds = %if.then550, %land.lhs.true546, %cond.false541, %cond.true540
  call void @llvm.lifetime.end.p0(i64 4, ptr %bug_bit) #10, !dbg !4262
  br label %for.inc554, !dbg !4263

for.inc554:                                       ; preds = %if.end553
  %186 = load i32, ptr %i, align 4, !dbg !4264
  %inc555 = add i32 %186, 1, !dbg !4264
  store i32 %inc555, ptr %i, align 4, !dbg !4264
  br label %for.cond316, !dbg !4265, !llvm.loop !4266

for.end556:                                       ; preds = %for.cond316
  %187 = load ptr, ptr %m.addr, align 8, !dbg !4268
  %188 = load ptr, ptr %c, align 8, !dbg !4269
  %loops_per_jiffy = getelementptr inbounds %struct.cpuinfo_x86, ptr %188, i32 0, i32 19, !dbg !4270
  %189 = load i64, ptr %loops_per_jiffy, align 8, !dbg !4270
  %div557 = udiv i64 %189, 500, !dbg !4271
  %190 = load ptr, ptr %c, align 8, !dbg !4272
  %loops_per_jiffy558 = getelementptr inbounds %struct.cpuinfo_x86, ptr %190, i32 0, i32 19, !dbg !4273
  %191 = load i64, ptr %loops_per_jiffy558, align 8, !dbg !4273
  %div559 = udiv i64 %191, 5, !dbg !4274
  %rem560 = urem i64 %div559, 100, !dbg !4275
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %187, ptr noundef @.str.11, i64 noundef %div557, i64 noundef %rem560) #9, !dbg !4276
  %192 = load ptr, ptr %c, align 8, !dbg !4277
  %x86_tlbsize = getelementptr inbounds %struct.cpuinfo_x86, ptr %192, i32 0, i32 2, !dbg !4279
  %193 = load i32, ptr %x86_tlbsize, align 8, !dbg !4279
  %cmp561 = icmp sgt i32 %193, 0, !dbg !4280
  br i1 %cmp561, label %if.then563, label %if.end565, !dbg !4281

if.then563:                                       ; preds = %for.end556
  %194 = load ptr, ptr %m.addr, align 8, !dbg !4282
  %195 = load ptr, ptr %c, align 8, !dbg !4283
  %x86_tlbsize564 = getelementptr inbounds %struct.cpuinfo_x86, ptr %195, i32 0, i32 2, !dbg !4284
  %196 = load i32, ptr %x86_tlbsize564, align 8, !dbg !4284
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %194, ptr noundef @.str.12, i32 noundef %196) #9, !dbg !4285
  br label %if.end565, !dbg !4285

if.end565:                                        ; preds = %if.then563, %for.end556
  %197 = load ptr, ptr %m.addr, align 8, !dbg !4286
  %198 = load ptr, ptr %c, align 8, !dbg !4287
  %x86_clflush_size = getelementptr inbounds %struct.cpuinfo_x86, ptr %198, i32 0, i32 24, !dbg !4288
  %199 = load i16, ptr %x86_clflush_size, align 2, !dbg !4288
  %conv566 = zext i16 %199 to i32, !dbg !4287
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %197, ptr noundef @.str.13, i32 noundef %conv566) #9, !dbg !4289
  %200 = load ptr, ptr %m.addr, align 8, !dbg !4290
  %201 = load ptr, ptr %c, align 8, !dbg !4291
  %x86_cache_alignment = getelementptr inbounds %struct.cpuinfo_x86, ptr %201, i32 0, i32 14, !dbg !4292
  %202 = load i32, ptr %x86_cache_alignment, align 4, !dbg !4292
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %200, ptr noundef @.str.14, i32 noundef %202) #9, !dbg !4293
  %203 = load ptr, ptr %m.addr, align 8, !dbg !4294
  %204 = load ptr, ptr %c, align 8, !dbg !4295
  %x86_phys_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %204, i32 0, i32 5, !dbg !4296
  %205 = load i8, ptr %x86_phys_bits, align 1, !dbg !4296
  %conv567 = zext i8 %205 to i32, !dbg !4295
  %206 = load ptr, ptr %c, align 8, !dbg !4297
  %x86_virt_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %206, i32 0, i32 4, !dbg !4298
  %207 = load i8, ptr %x86_virt_bits, align 8, !dbg !4298
  %conv568 = zext i8 %207 to i32, !dbg !4297
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %203, ptr noundef @.str.15, i32 noundef %conv567, i32 noundef %conv568) #9, !dbg !4299
  %208 = load ptr, ptr %m.addr, align 8, !dbg !4300
  call void @seq_puts(ptr noundef %208, ptr noundef @.str.16) #9, !dbg !4301
  store i32 0, ptr %i, align 4, !dbg !4302
  br label %for.cond569, !dbg !4304

for.cond569:                                      ; preds = %for.inc596, %if.end565
  %209 = load i32, ptr %i, align 4, !dbg !4305
  %cmp570 = icmp slt i32 %209, 32, !dbg !4307
  br i1 %cmp570, label %for.body572, label %for.end598, !dbg !4308

for.body572:                                      ; preds = %for.cond569
  %210 = load ptr, ptr %c, align 8, !dbg !4309
  %x86_power = getelementptr inbounds %struct.cpuinfo_x86, ptr %210, i32 0, i32 18, !dbg !4312
  %211 = load i32, ptr %x86_power, align 4, !dbg !4312
  %212 = load i32, ptr %i, align 4, !dbg !4313
  %shl573 = shl i32 1, %212, !dbg !4314
  %and574 = and i32 %211, %shl573, !dbg !4315
  %tobool575 = icmp ne i32 %and574, 0, !dbg !4315
  br i1 %tobool575, label %if.then576, label %if.end595, !dbg !4316

if.then576:                                       ; preds = %for.body572
  %213 = load i32, ptr %i, align 4, !dbg !4317
  %conv577 = sext i32 %213 to i64, !dbg !4317
  %cmp578 = icmp ult i64 %conv577, 32, !dbg !4320
  br i1 %cmp578, label %land.lhs.true580, label %if.else593, !dbg !4321

land.lhs.true580:                                 ; preds = %if.then576
  %214 = load i32, ptr %i, align 4, !dbg !4322
  %idxprom581 = sext i32 %214 to i64, !dbg !4323
  %arrayidx582 = getelementptr [32 x ptr], ptr @x86_power_flags, i64 0, i64 %idxprom581, !dbg !4323
  %215 = load ptr, ptr %arrayidx582, align 8, !dbg !4323
  %tobool583 = icmp ne ptr %215, null, !dbg !4323
  br i1 %tobool583, label %if.then584, label %if.else593, !dbg !4324

if.then584:                                       ; preds = %land.lhs.true580
  %216 = load ptr, ptr %m.addr, align 8, !dbg !4325
  %217 = load i32, ptr %i, align 4, !dbg !4326
  %idxprom585 = sext i32 %217 to i64, !dbg !4327
  %arrayidx586 = getelementptr [32 x ptr], ptr @x86_power_flags, i64 0, i64 %idxprom585, !dbg !4327
  %218 = load ptr, ptr %arrayidx586, align 8, !dbg !4327
  %arrayidx587 = getelementptr i8, ptr %218, i64 0, !dbg !4327
  %219 = load i8, ptr %arrayidx587, align 1, !dbg !4327
  %conv588 = zext i8 %219 to i32, !dbg !4327
  %tobool589 = icmp ne i32 %conv588, 0, !dbg !4327
  %220 = zext i1 %tobool589 to i64, !dbg !4327
  %cond590 = select i1 %tobool589, ptr @.str.18, ptr @.str.19, !dbg !4327
  %221 = load i32, ptr %i, align 4, !dbg !4328
  %idxprom591 = sext i32 %221 to i64, !dbg !4329
  %arrayidx592 = getelementptr [32 x ptr], ptr @x86_power_flags, i64 0, i64 %idxprom591, !dbg !4329
  %222 = load ptr, ptr %arrayidx592, align 8, !dbg !4329
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %216, ptr noundef @.str.17, ptr noundef %cond590, ptr noundef %222) #9, !dbg !4330
  br label %if.end594, !dbg !4330

if.else593:                                       ; preds = %land.lhs.true580, %if.then576
  %223 = load ptr, ptr %m.addr, align 8, !dbg !4331
  %224 = load i32, ptr %i, align 4, !dbg !4332
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %223, ptr noundef @.str.20, i32 noundef %224) #9, !dbg !4333
  br label %if.end594

if.end594:                                        ; preds = %if.else593, %if.then584
  br label %if.end595, !dbg !4334

if.end595:                                        ; preds = %if.end594, %for.body572
  br label %for.inc596, !dbg !4335

for.inc596:                                       ; preds = %if.end595
  %225 = load i32, ptr %i, align 4, !dbg !4336
  %inc597 = add i32 %225, 1, !dbg !4336
  store i32 %inc597, ptr %i, align 4, !dbg !4336
  br label %for.cond569, !dbg !4337, !llvm.loop !4338

for.end598:                                       ; preds = %for.cond569
  %226 = load ptr, ptr %m.addr, align 8, !dbg !4340
  call void @seq_puts(ptr noundef %226, ptr noundef @.str.21) #9, !dbg !4341
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !4342
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #10, !dbg !4342
  call void @llvm.lifetime.end.p0(i64 8, ptr %c) #10, !dbg !4342
  ret i32 0, !dbg !4343
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_next(i32 noundef %n, ptr noundef %srcp) #2 align 16 !dbg !4344 {
entry:
  %n.addr = alloca i32, align 4
  %srcp.addr = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !4348, metadata !DIExpression()), !dbg !4350
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4349, metadata !DIExpression()), !dbg !4351
  %0 = load i32, ptr %n.addr, align 4, !dbg !4352
  %cmp = icmp ne i32 %0, -1, !dbg !4354
  br i1 %cmp, label %if.then, label %if.end, !dbg !4355

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %n.addr, align 4, !dbg !4356
  %call = call i32 @cpumask_check(i32 noundef %1) #9, !dbg !4357
  br label %if.end, !dbg !4357

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr %srcp.addr, align 8, !dbg !4358
  %bits = getelementptr inbounds %struct.cpumask, ptr %2, i32 0, i32 0, !dbg !4358
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4358
  %3 = load i32, ptr %n.addr, align 4, !dbg !4359
  %add = add i32 %3, 1, !dbg !4360
  %conv = sext i32 %add to i64, !dbg !4359
  %call1 = call i64 @find_next_bit(ptr noundef %arraydecay, i64 noundef 64, i64 noundef %conv) #9, !dbg !4361
  %conv2 = trunc i64 %call1 to i32, !dbg !4361
  ret i32 %conv2, !dbg !4362
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #4 align 16 !dbg !4363 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4367, metadata !DIExpression()), !dbg !4368
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !4369
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #9, !dbg !4370
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !4371
  ret i32 %1, !dbg !4372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #2 align 16 !dbg !4373 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4378, metadata !DIExpression()), !dbg !4384
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4379, metadata !DIExpression()), !dbg !4385
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !4380, metadata !DIExpression()), !dbg !4386
  %0 = load i64, ptr %size.addr, align 8, !dbg !4387
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4387
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !4387

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4387
  %cmp = icmp ule i64 %2, 64, !dbg !4387
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !4387

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !4387
  %cmp2 = icmp ugt i64 %3, 0, !dbg !4387
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !4388

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !4389
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4381, metadata !DIExpression()), !dbg !4390
  %4 = load i64, ptr %offset.addr, align 8, !dbg !4391
  %5 = load i64, ptr %size.addr, align 8, !dbg !4391
  %cmp3 = icmp uge i64 %4, %5, !dbg !4391
  %lnot = xor i1 %cmp3, true, !dbg !4391
  %lnot4 = xor i1 %lnot, true, !dbg !4391
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !4391
  %conv = sext i32 %lnot.ext to i64, !dbg !4391
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !4391
  %tobool = icmp ne i64 %expval, 0, !dbg !4391
  br i1 %tobool, label %if.then5, label %if.end, !dbg !4393

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4394
  store i64 %6, ptr %retval, align 8, !dbg !4395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4395

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !4396
  %8 = load i64, ptr %7, align 8, !dbg !4397
  %9 = load i64, ptr %offset.addr, align 8, !dbg !4398
  %shl = shl i64 1, %9, !dbg !4398
  %sub = sub i64 -1, %shl, !dbg !4398
  %add = add i64 %sub, 1, !dbg !4398
  %10 = load i64, ptr %size.addr, align 8, !dbg !4398
  %sub6 = sub i64 %10, 1, !dbg !4398
  %sub7 = sub i64 63, %sub6, !dbg !4398
  %shr = lshr i64 -1, %sub7, !dbg !4398
  %and = and i64 %add, %shr, !dbg !4398
  %add8 = add i64 0, %and, !dbg !4398
  %and9 = and i64 %8, %add8, !dbg !4399
  store i64 %and9, ptr %val, align 8, !dbg !4400
  %11 = load i64, ptr %val, align 8, !dbg !4401
  %tobool10 = icmp ne i64 %11, 0, !dbg !4401
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !4401

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !4402
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !4402
  br i1 %13, label %cond.true11, label %cond.false, !dbg !4402

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !4402
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !4402
  %cast = trunc i64 %15 to i32, !dbg !4402
  %conv12 = sext i32 %cast to i64, !dbg !4402
  br label %cond.end, !dbg !4402

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !4402
  %call = call i64 @variable__ffs(i64 noundef %16) #9, !dbg !4402
  br label %cond.end, !dbg !4402

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !4402
  br label %cond.end14, !dbg !4401

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !4403
  br label %cond.end14, !dbg !4401

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !4401
  store i64 %cond15, ptr %retval, align 8, !dbg !4404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4404

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !4405
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !4406
  %19 = load i64, ptr %size.addr, align 8, !dbg !4407
  %20 = load i64, ptr %offset.addr, align 8, !dbg !4408
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #9, !dbg !4409
  store i64 %call17, ptr %retval, align 8, !dbg !4410
  br label %return, !dbg !4410

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !4411
  ret i64 %21, !dbg !4411
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #4 align 16 !dbg !4412 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4416, metadata !DIExpression()), !dbg !4418
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !4417, metadata !DIExpression()), !dbg !4419
  ret void, !dbg !4420
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #4 align 16 !dbg !4421 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !4426, metadata !DIExpression()), !dbg !4427
  %0 = load i64, ptr %word.addr, align 8, !dbg !4428
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #11, !dbg !4429, !srcloc !4430
  store i64 %1, ptr %word.addr, align 8, !dbg !4429
  %2 = load i64, ptr %word.addr, align 8, !dbg !4431
  ret i64 %2, !dbg !4432
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4433 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4434 dso_local void @seq_printf(ptr noundef, ptr noundef, ...) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4437 dso_local void @seq_puts(ptr noundef, ptr noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4440 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4447, metadata !DIExpression()), !dbg !4449
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4448, metadata !DIExpression()), !dbg !4450
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4451
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4452
  br i1 %1, label %cond.true, label %cond.false, !dbg !4452

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4453
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4454
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !4455
  %conv = zext i1 %call to i32, !dbg !4455
  br label %cond.end, !dbg !4452

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !4456
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !4457
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #9, !dbg !4458
  %conv2 = zext i1 %call1 to i32, !dbg !4458
  br label %cond.end, !dbg !4452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !4452
  %tobool = icmp ne i32 %cond, 0, !dbg !4452
  ret i1 %tobool, !dbg !4459
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4460 dso_local i32 @arch_freq_get_on_cpu(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_cpuinfo_core(ptr noundef %m, ptr noundef %c, i32 noundef %cpu) #0 align 16 !dbg !4464 {
entry:
  %m.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4468, metadata !DIExpression()), !dbg !4476
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4469, metadata !DIExpression()), !dbg !4477
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !4470, metadata !DIExpression()), !dbg !4478
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4479
  %1 = load ptr, ptr %c.addr, align 8, !dbg !4480
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 26, !dbg !4481
  %2 = load i16, ptr %phys_proc_id, align 2, !dbg !4481
  %conv = zext i16 %2 to i32, !dbg !4480
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.22, i32 noundef %conv) #9, !dbg !4482
  %3 = load ptr, ptr %m.addr, align 8, !dbg !4483
  br label %do.body, !dbg !4484

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4485
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !4471, metadata !DIExpression()), !dbg !4485
  store ptr null, ptr %__vpp_verify, align 8, !dbg !4485
  %4 = load ptr, ptr %__vpp_verify, align 8, !dbg !4485
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #10, !dbg !4484
  br label %do.end, !dbg !4485

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #10, !dbg !4486
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !4474, metadata !DIExpression()), !dbg !4486
  store i64 ptrtoint (ptr @cpu_core_map to i64), ptr %__ptr, align 8, !dbg !4486
  %5 = load i64, ptr %__ptr, align 8, !dbg !4486
  %6 = load i32, ptr %cpu.addr, align 4, !dbg !4486
  %idxprom = zext i32 %6 to i64, !dbg !4486
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !4486
  %7 = load i64, ptr %arrayidx, align 8, !dbg !4486
  %add = add i64 %5, %7, !dbg !4486
  %8 = inttoptr i64 %add to ptr, !dbg !4486
  store ptr %8, ptr %tmp1, align 8, !dbg !4486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #10, !dbg !4484
  %9 = load ptr, ptr %tmp1, align 8, !dbg !4486
  store ptr %9, ptr %tmp, align 8, !dbg !4485
  %10 = load ptr, ptr %tmp, align 8, !dbg !4484
  %arraydecay = getelementptr inbounds [1 x %struct.cpumask], ptr %10, i64 0, i64 0, !dbg !4487
  %call = call i32 @cpumask_weight(ptr noundef %arraydecay) #9, !dbg !4488
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef @.str.23, i32 noundef %call) #9, !dbg !4489
  %11 = load ptr, ptr %m.addr, align 8, !dbg !4490
  %12 = load ptr, ptr %c.addr, align 8, !dbg !4491
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 28, !dbg !4492
  %13 = load i16, ptr %cpu_core_id, align 2, !dbg !4492
  %conv2 = zext i16 %13 to i32, !dbg !4491
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %11, ptr noundef @.str.24, i32 noundef %conv2) #9, !dbg !4493
  %14 = load ptr, ptr %m.addr, align 8, !dbg !4494
  %15 = load ptr, ptr %c.addr, align 8, !dbg !4495
  %booted_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %15, i32 0, i32 25, !dbg !4496
  %16 = load i16, ptr %booted_cores, align 8, !dbg !4496
  %conv3 = zext i16 %16 to i32, !dbg !4495
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %14, ptr noundef @.str.25, i32 noundef %conv3) #9, !dbg !4497
  %17 = load ptr, ptr %m.addr, align 8, !dbg !4498
  %18 = load ptr, ptr %c.addr, align 8, !dbg !4499
  %apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 22, !dbg !4500
  %19 = load i16, ptr %apicid, align 2, !dbg !4500
  %conv4 = zext i16 %19 to i32, !dbg !4499
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %17, ptr noundef @.str.26, i32 noundef %conv4) #9, !dbg !4501
  %20 = load ptr, ptr %m.addr, align 8, !dbg !4502
  %21 = load ptr, ptr %c.addr, align 8, !dbg !4503
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %21, i32 0, i32 23, !dbg !4504
  %22 = load i16, ptr %initial_apicid, align 4, !dbg !4504
  %conv5 = zext i16 %22 to i32, !dbg !4503
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef @.str.27, i32 noundef %conv5) #9, !dbg !4505
  ret void, !dbg !4506
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @show_cpuinfo_misc(ptr noundef %m, ptr noundef %c) #0 align 16 !dbg !4507 {
entry:
  %m.addr = alloca ptr, align 8
  %c.addr = alloca ptr, align 8
  store ptr %m, ptr %m.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !4511, metadata !DIExpression()), !dbg !4513
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !4512, metadata !DIExpression()), !dbg !4514
  %0 = load ptr, ptr %m.addr, align 8, !dbg !4515
  %1 = load ptr, ptr %c.addr, align 8, !dbg !4516
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 9, !dbg !4517
  %2 = load i32, ptr %cpuid_level, align 8, !dbg !4517
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef @.str.28, i32 noundef %2) #9, !dbg !4518
  ret void, !dbg !4519
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4520 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4523, metadata !DIExpression()), !dbg !4528
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4524, metadata !DIExpression()), !dbg !4529
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !4530
  call void @llvm.dbg.declare(metadata ptr %p, metadata !4525, metadata !DIExpression()), !dbg !4531
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4532
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4533
  %div = udiv i64 %1, 64, !dbg !4533
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4534
  store ptr %add.ptr, ptr %p, align 8, !dbg !4531
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #10, !dbg !4535
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !4526, metadata !DIExpression()), !dbg !4536
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4537
  %rem = urem i64 %2, 64, !dbg !4537
  %shl = shl i64 1, %rem, !dbg !4537
  store i64 %shl, ptr %mask, align 8, !dbg !4536
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #10, !dbg !4538
  call void @llvm.dbg.declare(metadata ptr %val, metadata !4527, metadata !DIExpression()), !dbg !4539
  %3 = load ptr, ptr %p, align 8, !dbg !4540
  %4 = load i64, ptr %3, align 8, !dbg !4541
  store i64 %4, ptr %val, align 8, !dbg !4539
  %5 = load i64, ptr %val, align 8, !dbg !4542
  %6 = load i64, ptr %mask, align 8, !dbg !4543
  %and = and i64 %5, %6, !dbg !4544
  %tobool = icmp ne i64 %and, 0, !dbg !4545
  %lnot = xor i1 %tobool, true, !dbg !4545
  %lnot1 = xor i1 %lnot, true, !dbg !4546
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #10, !dbg !4547
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #10, !dbg !4547
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !4547
  ret i1 %lnot1, !dbg !4548
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4549 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4552, metadata !DIExpression()), !dbg !4554
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4553, metadata !DIExpression()), !dbg !4555
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4556
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4557
  %div = udiv i64 %1, 64, !dbg !4557
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !4558
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #9, !dbg !4559
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4560
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !4561
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #9, !dbg !4562
  ret i1 %call, !dbg !4563
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4564 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4568, metadata !DIExpression()), !dbg !4570
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4569, metadata !DIExpression()), !dbg !4571
  %0 = load i64, ptr %nr.addr, align 8, !dbg !4572
  %and = and i64 %0, 63, !dbg !4573
  %shl = shl i64 1, %and, !dbg !4574
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !4575
  %2 = load i64, ptr %nr.addr, align 8, !dbg !4576
  %shr = ashr i64 %2, 6, !dbg !4577
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !4575
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !4575
  %and1 = and i64 %shl, %3, !dbg !4578
  %cmp = icmp ne i64 %and1, 0, !dbg !4579
  ret i1 %cmp, !dbg !4580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #4 align 16 !dbg !4581 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !4583, metadata !DIExpression()), !dbg !4586
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !4584, metadata !DIExpression()), !dbg !4587
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #10, !dbg !4588
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !4585, metadata !DIExpression()), !dbg !4589
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !4590
  %1 = load i64, ptr %nr.addr, align 8, !dbg !4591
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #10, !dbg !4592, !srcloc !4593
  %3 = icmp ult i8 %2, 2, !dbg !4592
  call void @llvm.assume(i1 %3), !dbg !4592
  store i8 %2, ptr %oldbit, align 1, !dbg !4592
  %4 = load i8, ptr %oldbit, align 1, !dbg !4594, !range !4595, !noundef !1433
  %tobool = trunc i8 %4 to i1, !dbg !4594
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #10, !dbg !4596
  ret i1 %tobool, !dbg !4597
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_weight(ptr noundef %srcp) #2 align 16 !dbg !4598 {
entry:
  %srcp.addr = alloca ptr, align 8
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !4602, metadata !DIExpression()), !dbg !4603
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !4604
  %bits = getelementptr inbounds %struct.cpumask, ptr %0, i32 0, i32 0, !dbg !4604
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !4604
  %call = call i32 @bitmap_weight(ptr noundef %arraydecay, i32 noundef 64) #9, !dbg !4605
  ret i32 %call, !dbg !4606
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @bitmap_weight(ptr noundef %src, i32 noundef %nbits) #4 align 16 !dbg !4607 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca ptr, align 8
  %nbits.addr = alloca i32, align 4
  store ptr %src, ptr %src.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %src.addr, metadata !4612, metadata !DIExpression()), !dbg !4614
  store i32 %nbits, ptr %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nbits.addr, metadata !4613, metadata !DIExpression()), !dbg !4615
  %0 = load i32, ptr %nbits.addr, align 4, !dbg !4616
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4616
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4616

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %nbits.addr, align 4, !dbg !4616
  %cmp = icmp ule i32 %2, 64, !dbg !4616
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4616

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, ptr %nbits.addr, align 4, !dbg !4616
  %cmp2 = icmp ugt i32 %3, 0, !dbg !4616
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4618

if.then:                                          ; preds = %land.lhs.true1
  %4 = load ptr, ptr %src.addr, align 8, !dbg !4619
  %5 = load i64, ptr %4, align 8, !dbg !4620
  %6 = load i32, ptr %nbits.addr, align 4, !dbg !4621
  %sub = sub i32 0, %6, !dbg !4621
  %and = and i32 %sub, 63, !dbg !4621
  %sh_prom = zext i32 %and to i64, !dbg !4621
  %shr = lshr i64 -1, %sh_prom, !dbg !4621
  %and3 = and i64 %5, %shr, !dbg !4622
  %call = call i64 @hweight_long(i64 noundef %and3) #9, !dbg !4623
  %conv = trunc i64 %call to i32, !dbg !4623
  store i32 %conv, ptr %retval, align 4, !dbg !4624
  br label %return, !dbg !4624

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load ptr, ptr %src.addr, align 8, !dbg !4625
  %8 = load i32, ptr %nbits.addr, align 4, !dbg !4626
  %call4 = call i32 @__bitmap_weight(ptr noundef %7, i32 noundef %8) #9, !dbg !4627
  store i32 %call4, ptr %retval, align 4, !dbg !4628
  br label %return, !dbg !4628

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, ptr %retval, align 4, !dbg !4629
  ret i32 %9, !dbg !4629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @hweight_long(i64 noundef %w) #4 align 16 !dbg !4630 {
entry:
  %w.addr = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !4633, metadata !DIExpression()), !dbg !4634
  %0 = load i64, ptr %w.addr, align 8, !dbg !4635
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4635
  br i1 %1, label %cond.true, label %cond.false, !dbg !4635

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and = and i64 %2, 1, !dbg !4635
  %tobool = icmp ne i64 %and, 0, !dbg !4635
  %lnot = xor i1 %tobool, true, !dbg !4635
  %lnot1 = xor i1 %lnot, true, !dbg !4635
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4635
  %3 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and2 = and i64 %3, 2, !dbg !4635
  %tobool3 = icmp ne i64 %and2, 0, !dbg !4635
  %lnot4 = xor i1 %tobool3, true, !dbg !4635
  %lnot6 = xor i1 %lnot4, true, !dbg !4635
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !4635
  %add = add i32 %lnot.ext, %lnot.ext7, !dbg !4635
  %4 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and8 = and i64 %4, 4, !dbg !4635
  %tobool9 = icmp ne i64 %and8, 0, !dbg !4635
  %lnot10 = xor i1 %tobool9, true, !dbg !4635
  %lnot12 = xor i1 %lnot10, true, !dbg !4635
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !4635
  %add14 = add i32 %add, %lnot.ext13, !dbg !4635
  %5 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and15 = and i64 %5, 8, !dbg !4635
  %tobool16 = icmp ne i64 %and15, 0, !dbg !4635
  %lnot17 = xor i1 %tobool16, true, !dbg !4635
  %lnot19 = xor i1 %lnot17, true, !dbg !4635
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4635
  %add21 = add i32 %add14, %lnot.ext20, !dbg !4635
  %6 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and22 = and i64 %6, 16, !dbg !4635
  %tobool23 = icmp ne i64 %and22, 0, !dbg !4635
  %lnot24 = xor i1 %tobool23, true, !dbg !4635
  %lnot26 = xor i1 %lnot24, true, !dbg !4635
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !4635
  %add28 = add i32 %add21, %lnot.ext27, !dbg !4635
  %7 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and29 = and i64 %7, 32, !dbg !4635
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4635
  %lnot31 = xor i1 %tobool30, true, !dbg !4635
  %lnot33 = xor i1 %lnot31, true, !dbg !4635
  %lnot.ext34 = zext i1 %lnot33 to i32, !dbg !4635
  %add35 = add i32 %add28, %lnot.ext34, !dbg !4635
  %8 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and36 = and i64 %8, 64, !dbg !4635
  %tobool37 = icmp ne i64 %and36, 0, !dbg !4635
  %lnot38 = xor i1 %tobool37, true, !dbg !4635
  %lnot40 = xor i1 %lnot38, true, !dbg !4635
  %lnot.ext41 = zext i1 %lnot40 to i32, !dbg !4635
  %add42 = add i32 %add35, %lnot.ext41, !dbg !4635
  %9 = load i64, ptr %w.addr, align 8, !dbg !4635
  %and43 = and i64 %9, 128, !dbg !4635
  %tobool44 = icmp ne i64 %and43, 0, !dbg !4635
  %lnot45 = xor i1 %tobool44, true, !dbg !4635
  %lnot47 = xor i1 %lnot45, true, !dbg !4635
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !4635
  %add49 = add i32 %add42, %lnot.ext48, !dbg !4635
  %10 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr = lshr i64 %10, 8, !dbg !4635
  %and50 = and i64 %shr, 1, !dbg !4635
  %tobool51 = icmp ne i64 %and50, 0, !dbg !4635
  %lnot52 = xor i1 %tobool51, true, !dbg !4635
  %lnot54 = xor i1 %lnot52, true, !dbg !4635
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !4635
  %11 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr56 = lshr i64 %11, 8, !dbg !4635
  %and57 = and i64 %shr56, 2, !dbg !4635
  %tobool58 = icmp ne i64 %and57, 0, !dbg !4635
  %lnot59 = xor i1 %tobool58, true, !dbg !4635
  %lnot61 = xor i1 %lnot59, true, !dbg !4635
  %lnot.ext62 = zext i1 %lnot61 to i32, !dbg !4635
  %add63 = add i32 %lnot.ext55, %lnot.ext62, !dbg !4635
  %12 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr64 = lshr i64 %12, 8, !dbg !4635
  %and65 = and i64 %shr64, 4, !dbg !4635
  %tobool66 = icmp ne i64 %and65, 0, !dbg !4635
  %lnot67 = xor i1 %tobool66, true, !dbg !4635
  %lnot69 = xor i1 %lnot67, true, !dbg !4635
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !4635
  %add71 = add i32 %add63, %lnot.ext70, !dbg !4635
  %13 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr72 = lshr i64 %13, 8, !dbg !4635
  %and73 = and i64 %shr72, 8, !dbg !4635
  %tobool74 = icmp ne i64 %and73, 0, !dbg !4635
  %lnot75 = xor i1 %tobool74, true, !dbg !4635
  %lnot77 = xor i1 %lnot75, true, !dbg !4635
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !4635
  %add79 = add i32 %add71, %lnot.ext78, !dbg !4635
  %14 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr80 = lshr i64 %14, 8, !dbg !4635
  %and81 = and i64 %shr80, 16, !dbg !4635
  %tobool82 = icmp ne i64 %and81, 0, !dbg !4635
  %lnot83 = xor i1 %tobool82, true, !dbg !4635
  %lnot85 = xor i1 %lnot83, true, !dbg !4635
  %lnot.ext86 = zext i1 %lnot85 to i32, !dbg !4635
  %add87 = add i32 %add79, %lnot.ext86, !dbg !4635
  %15 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr88 = lshr i64 %15, 8, !dbg !4635
  %and89 = and i64 %shr88, 32, !dbg !4635
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4635
  %lnot91 = xor i1 %tobool90, true, !dbg !4635
  %lnot93 = xor i1 %lnot91, true, !dbg !4635
  %lnot.ext94 = zext i1 %lnot93 to i32, !dbg !4635
  %add95 = add i32 %add87, %lnot.ext94, !dbg !4635
  %16 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr96 = lshr i64 %16, 8, !dbg !4635
  %and97 = and i64 %shr96, 64, !dbg !4635
  %tobool98 = icmp ne i64 %and97, 0, !dbg !4635
  %lnot99 = xor i1 %tobool98, true, !dbg !4635
  %lnot101 = xor i1 %lnot99, true, !dbg !4635
  %lnot.ext102 = zext i1 %lnot101 to i32, !dbg !4635
  %add103 = add i32 %add95, %lnot.ext102, !dbg !4635
  %17 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr104 = lshr i64 %17, 8, !dbg !4635
  %and105 = and i64 %shr104, 128, !dbg !4635
  %tobool106 = icmp ne i64 %and105, 0, !dbg !4635
  %lnot107 = xor i1 %tobool106, true, !dbg !4635
  %lnot109 = xor i1 %lnot107, true, !dbg !4635
  %lnot.ext110 = zext i1 %lnot109 to i32, !dbg !4635
  %add111 = add i32 %add103, %lnot.ext110, !dbg !4635
  %add112 = add i32 %add49, %add111, !dbg !4635
  %18 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr113 = lshr i64 %18, 16, !dbg !4635
  %and114 = and i64 %shr113, 1, !dbg !4635
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4635
  %lnot116 = xor i1 %tobool115, true, !dbg !4635
  %lnot118 = xor i1 %lnot116, true, !dbg !4635
  %lnot.ext119 = zext i1 %lnot118 to i32, !dbg !4635
  %19 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr120 = lshr i64 %19, 16, !dbg !4635
  %and121 = and i64 %shr120, 2, !dbg !4635
  %tobool122 = icmp ne i64 %and121, 0, !dbg !4635
  %lnot123 = xor i1 %tobool122, true, !dbg !4635
  %lnot125 = xor i1 %lnot123, true, !dbg !4635
  %lnot.ext126 = zext i1 %lnot125 to i32, !dbg !4635
  %add127 = add i32 %lnot.ext119, %lnot.ext126, !dbg !4635
  %20 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr128 = lshr i64 %20, 16, !dbg !4635
  %and129 = and i64 %shr128, 4, !dbg !4635
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4635
  %lnot131 = xor i1 %tobool130, true, !dbg !4635
  %lnot133 = xor i1 %lnot131, true, !dbg !4635
  %lnot.ext134 = zext i1 %lnot133 to i32, !dbg !4635
  %add135 = add i32 %add127, %lnot.ext134, !dbg !4635
  %21 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr136 = lshr i64 %21, 16, !dbg !4635
  %and137 = and i64 %shr136, 8, !dbg !4635
  %tobool138 = icmp ne i64 %and137, 0, !dbg !4635
  %lnot139 = xor i1 %tobool138, true, !dbg !4635
  %lnot141 = xor i1 %lnot139, true, !dbg !4635
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !4635
  %add143 = add i32 %add135, %lnot.ext142, !dbg !4635
  %22 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr144 = lshr i64 %22, 16, !dbg !4635
  %and145 = and i64 %shr144, 16, !dbg !4635
  %tobool146 = icmp ne i64 %and145, 0, !dbg !4635
  %lnot147 = xor i1 %tobool146, true, !dbg !4635
  %lnot149 = xor i1 %lnot147, true, !dbg !4635
  %lnot.ext150 = zext i1 %lnot149 to i32, !dbg !4635
  %add151 = add i32 %add143, %lnot.ext150, !dbg !4635
  %23 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr152 = lshr i64 %23, 16, !dbg !4635
  %and153 = and i64 %shr152, 32, !dbg !4635
  %tobool154 = icmp ne i64 %and153, 0, !dbg !4635
  %lnot155 = xor i1 %tobool154, true, !dbg !4635
  %lnot157 = xor i1 %lnot155, true, !dbg !4635
  %lnot.ext158 = zext i1 %lnot157 to i32, !dbg !4635
  %add159 = add i32 %add151, %lnot.ext158, !dbg !4635
  %24 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr160 = lshr i64 %24, 16, !dbg !4635
  %and161 = and i64 %shr160, 64, !dbg !4635
  %tobool162 = icmp ne i64 %and161, 0, !dbg !4635
  %lnot163 = xor i1 %tobool162, true, !dbg !4635
  %lnot165 = xor i1 %lnot163, true, !dbg !4635
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !4635
  %add167 = add i32 %add159, %lnot.ext166, !dbg !4635
  %25 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr168 = lshr i64 %25, 16, !dbg !4635
  %and169 = and i64 %shr168, 128, !dbg !4635
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4635
  %lnot171 = xor i1 %tobool170, true, !dbg !4635
  %lnot173 = xor i1 %lnot171, true, !dbg !4635
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !4635
  %add175 = add i32 %add167, %lnot.ext174, !dbg !4635
  %26 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr176 = lshr i64 %26, 16, !dbg !4635
  %shr177 = lshr i64 %shr176, 8, !dbg !4635
  %and178 = and i64 %shr177, 1, !dbg !4635
  %tobool179 = icmp ne i64 %and178, 0, !dbg !4635
  %lnot180 = xor i1 %tobool179, true, !dbg !4635
  %lnot182 = xor i1 %lnot180, true, !dbg !4635
  %lnot.ext183 = zext i1 %lnot182 to i32, !dbg !4635
  %27 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr184 = lshr i64 %27, 16, !dbg !4635
  %shr185 = lshr i64 %shr184, 8, !dbg !4635
  %and186 = and i64 %shr185, 2, !dbg !4635
  %tobool187 = icmp ne i64 %and186, 0, !dbg !4635
  %lnot188 = xor i1 %tobool187, true, !dbg !4635
  %lnot190 = xor i1 %lnot188, true, !dbg !4635
  %lnot.ext191 = zext i1 %lnot190 to i32, !dbg !4635
  %add192 = add i32 %lnot.ext183, %lnot.ext191, !dbg !4635
  %28 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr193 = lshr i64 %28, 16, !dbg !4635
  %shr194 = lshr i64 %shr193, 8, !dbg !4635
  %and195 = and i64 %shr194, 4, !dbg !4635
  %tobool196 = icmp ne i64 %and195, 0, !dbg !4635
  %lnot197 = xor i1 %tobool196, true, !dbg !4635
  %lnot199 = xor i1 %lnot197, true, !dbg !4635
  %lnot.ext200 = zext i1 %lnot199 to i32, !dbg !4635
  %add201 = add i32 %add192, %lnot.ext200, !dbg !4635
  %29 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr202 = lshr i64 %29, 16, !dbg !4635
  %shr203 = lshr i64 %shr202, 8, !dbg !4635
  %and204 = and i64 %shr203, 8, !dbg !4635
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4635
  %lnot206 = xor i1 %tobool205, true, !dbg !4635
  %lnot208 = xor i1 %lnot206, true, !dbg !4635
  %lnot.ext209 = zext i1 %lnot208 to i32, !dbg !4635
  %add210 = add i32 %add201, %lnot.ext209, !dbg !4635
  %30 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr211 = lshr i64 %30, 16, !dbg !4635
  %shr212 = lshr i64 %shr211, 8, !dbg !4635
  %and213 = and i64 %shr212, 16, !dbg !4635
  %tobool214 = icmp ne i64 %and213, 0, !dbg !4635
  %lnot215 = xor i1 %tobool214, true, !dbg !4635
  %lnot217 = xor i1 %lnot215, true, !dbg !4635
  %lnot.ext218 = zext i1 %lnot217 to i32, !dbg !4635
  %add219 = add i32 %add210, %lnot.ext218, !dbg !4635
  %31 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr220 = lshr i64 %31, 16, !dbg !4635
  %shr221 = lshr i64 %shr220, 8, !dbg !4635
  %and222 = and i64 %shr221, 32, !dbg !4635
  %tobool223 = icmp ne i64 %and222, 0, !dbg !4635
  %lnot224 = xor i1 %tobool223, true, !dbg !4635
  %lnot226 = xor i1 %lnot224, true, !dbg !4635
  %lnot.ext227 = zext i1 %lnot226 to i32, !dbg !4635
  %add228 = add i32 %add219, %lnot.ext227, !dbg !4635
  %32 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr229 = lshr i64 %32, 16, !dbg !4635
  %shr230 = lshr i64 %shr229, 8, !dbg !4635
  %and231 = and i64 %shr230, 64, !dbg !4635
  %tobool232 = icmp ne i64 %and231, 0, !dbg !4635
  %lnot233 = xor i1 %tobool232, true, !dbg !4635
  %lnot235 = xor i1 %lnot233, true, !dbg !4635
  %lnot.ext236 = zext i1 %lnot235 to i32, !dbg !4635
  %add237 = add i32 %add228, %lnot.ext236, !dbg !4635
  %33 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr238 = lshr i64 %33, 16, !dbg !4635
  %shr239 = lshr i64 %shr238, 8, !dbg !4635
  %and240 = and i64 %shr239, 128, !dbg !4635
  %tobool241 = icmp ne i64 %and240, 0, !dbg !4635
  %lnot242 = xor i1 %tobool241, true, !dbg !4635
  %lnot244 = xor i1 %lnot242, true, !dbg !4635
  %lnot.ext245 = zext i1 %lnot244 to i32, !dbg !4635
  %add246 = add i32 %add237, %lnot.ext245, !dbg !4635
  %add247 = add i32 %add175, %add246, !dbg !4635
  %add248 = add i32 %add112, %add247, !dbg !4635
  %34 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr249 = lshr i64 %34, 32, !dbg !4635
  %and250 = and i64 %shr249, 1, !dbg !4635
  %tobool251 = icmp ne i64 %and250, 0, !dbg !4635
  %lnot252 = xor i1 %tobool251, true, !dbg !4635
  %lnot254 = xor i1 %lnot252, true, !dbg !4635
  %lnot.ext255 = zext i1 %lnot254 to i32, !dbg !4635
  %35 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr256 = lshr i64 %35, 32, !dbg !4635
  %and257 = and i64 %shr256, 2, !dbg !4635
  %tobool258 = icmp ne i64 %and257, 0, !dbg !4635
  %lnot259 = xor i1 %tobool258, true, !dbg !4635
  %lnot261 = xor i1 %lnot259, true, !dbg !4635
  %lnot.ext262 = zext i1 %lnot261 to i32, !dbg !4635
  %add263 = add i32 %lnot.ext255, %lnot.ext262, !dbg !4635
  %36 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr264 = lshr i64 %36, 32, !dbg !4635
  %and265 = and i64 %shr264, 4, !dbg !4635
  %tobool266 = icmp ne i64 %and265, 0, !dbg !4635
  %lnot267 = xor i1 %tobool266, true, !dbg !4635
  %lnot269 = xor i1 %lnot267, true, !dbg !4635
  %lnot.ext270 = zext i1 %lnot269 to i32, !dbg !4635
  %add271 = add i32 %add263, %lnot.ext270, !dbg !4635
  %37 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr272 = lshr i64 %37, 32, !dbg !4635
  %and273 = and i64 %shr272, 8, !dbg !4635
  %tobool274 = icmp ne i64 %and273, 0, !dbg !4635
  %lnot275 = xor i1 %tobool274, true, !dbg !4635
  %lnot277 = xor i1 %lnot275, true, !dbg !4635
  %lnot.ext278 = zext i1 %lnot277 to i32, !dbg !4635
  %add279 = add i32 %add271, %lnot.ext278, !dbg !4635
  %38 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr280 = lshr i64 %38, 32, !dbg !4635
  %and281 = and i64 %shr280, 16, !dbg !4635
  %tobool282 = icmp ne i64 %and281, 0, !dbg !4635
  %lnot283 = xor i1 %tobool282, true, !dbg !4635
  %lnot285 = xor i1 %lnot283, true, !dbg !4635
  %lnot.ext286 = zext i1 %lnot285 to i32, !dbg !4635
  %add287 = add i32 %add279, %lnot.ext286, !dbg !4635
  %39 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr288 = lshr i64 %39, 32, !dbg !4635
  %and289 = and i64 %shr288, 32, !dbg !4635
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4635
  %lnot291 = xor i1 %tobool290, true, !dbg !4635
  %lnot293 = xor i1 %lnot291, true, !dbg !4635
  %lnot.ext294 = zext i1 %lnot293 to i32, !dbg !4635
  %add295 = add i32 %add287, %lnot.ext294, !dbg !4635
  %40 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr296 = lshr i64 %40, 32, !dbg !4635
  %and297 = and i64 %shr296, 64, !dbg !4635
  %tobool298 = icmp ne i64 %and297, 0, !dbg !4635
  %lnot299 = xor i1 %tobool298, true, !dbg !4635
  %lnot301 = xor i1 %lnot299, true, !dbg !4635
  %lnot.ext302 = zext i1 %lnot301 to i32, !dbg !4635
  %add303 = add i32 %add295, %lnot.ext302, !dbg !4635
  %41 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr304 = lshr i64 %41, 32, !dbg !4635
  %and305 = and i64 %shr304, 128, !dbg !4635
  %tobool306 = icmp ne i64 %and305, 0, !dbg !4635
  %lnot307 = xor i1 %tobool306, true, !dbg !4635
  %lnot309 = xor i1 %lnot307, true, !dbg !4635
  %lnot.ext310 = zext i1 %lnot309 to i32, !dbg !4635
  %add311 = add i32 %add303, %lnot.ext310, !dbg !4635
  %42 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr312 = lshr i64 %42, 32, !dbg !4635
  %shr313 = lshr i64 %shr312, 8, !dbg !4635
  %and314 = and i64 %shr313, 1, !dbg !4635
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4635
  %lnot316 = xor i1 %tobool315, true, !dbg !4635
  %lnot318 = xor i1 %lnot316, true, !dbg !4635
  %lnot.ext319 = zext i1 %lnot318 to i32, !dbg !4635
  %43 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr320 = lshr i64 %43, 32, !dbg !4635
  %shr321 = lshr i64 %shr320, 8, !dbg !4635
  %and322 = and i64 %shr321, 2, !dbg !4635
  %tobool323 = icmp ne i64 %and322, 0, !dbg !4635
  %lnot324 = xor i1 %tobool323, true, !dbg !4635
  %lnot326 = xor i1 %lnot324, true, !dbg !4635
  %lnot.ext327 = zext i1 %lnot326 to i32, !dbg !4635
  %add328 = add i32 %lnot.ext319, %lnot.ext327, !dbg !4635
  %44 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr329 = lshr i64 %44, 32, !dbg !4635
  %shr330 = lshr i64 %shr329, 8, !dbg !4635
  %and331 = and i64 %shr330, 4, !dbg !4635
  %tobool332 = icmp ne i64 %and331, 0, !dbg !4635
  %lnot333 = xor i1 %tobool332, true, !dbg !4635
  %lnot335 = xor i1 %lnot333, true, !dbg !4635
  %lnot.ext336 = zext i1 %lnot335 to i32, !dbg !4635
  %add337 = add i32 %add328, %lnot.ext336, !dbg !4635
  %45 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr338 = lshr i64 %45, 32, !dbg !4635
  %shr339 = lshr i64 %shr338, 8, !dbg !4635
  %and340 = and i64 %shr339, 8, !dbg !4635
  %tobool341 = icmp ne i64 %and340, 0, !dbg !4635
  %lnot342 = xor i1 %tobool341, true, !dbg !4635
  %lnot344 = xor i1 %lnot342, true, !dbg !4635
  %lnot.ext345 = zext i1 %lnot344 to i32, !dbg !4635
  %add346 = add i32 %add337, %lnot.ext345, !dbg !4635
  %46 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr347 = lshr i64 %46, 32, !dbg !4635
  %shr348 = lshr i64 %shr347, 8, !dbg !4635
  %and349 = and i64 %shr348, 16, !dbg !4635
  %tobool350 = icmp ne i64 %and349, 0, !dbg !4635
  %lnot351 = xor i1 %tobool350, true, !dbg !4635
  %lnot353 = xor i1 %lnot351, true, !dbg !4635
  %lnot.ext354 = zext i1 %lnot353 to i32, !dbg !4635
  %add355 = add i32 %add346, %lnot.ext354, !dbg !4635
  %47 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr356 = lshr i64 %47, 32, !dbg !4635
  %shr357 = lshr i64 %shr356, 8, !dbg !4635
  %and358 = and i64 %shr357, 32, !dbg !4635
  %tobool359 = icmp ne i64 %and358, 0, !dbg !4635
  %lnot360 = xor i1 %tobool359, true, !dbg !4635
  %lnot362 = xor i1 %lnot360, true, !dbg !4635
  %lnot.ext363 = zext i1 %lnot362 to i32, !dbg !4635
  %add364 = add i32 %add355, %lnot.ext363, !dbg !4635
  %48 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr365 = lshr i64 %48, 32, !dbg !4635
  %shr366 = lshr i64 %shr365, 8, !dbg !4635
  %and367 = and i64 %shr366, 64, !dbg !4635
  %tobool368 = icmp ne i64 %and367, 0, !dbg !4635
  %lnot369 = xor i1 %tobool368, true, !dbg !4635
  %lnot371 = xor i1 %lnot369, true, !dbg !4635
  %lnot.ext372 = zext i1 %lnot371 to i32, !dbg !4635
  %add373 = add i32 %add364, %lnot.ext372, !dbg !4635
  %49 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr374 = lshr i64 %49, 32, !dbg !4635
  %shr375 = lshr i64 %shr374, 8, !dbg !4635
  %and376 = and i64 %shr375, 128, !dbg !4635
  %tobool377 = icmp ne i64 %and376, 0, !dbg !4635
  %lnot378 = xor i1 %tobool377, true, !dbg !4635
  %lnot380 = xor i1 %lnot378, true, !dbg !4635
  %lnot.ext381 = zext i1 %lnot380 to i32, !dbg !4635
  %add382 = add i32 %add373, %lnot.ext381, !dbg !4635
  %add383 = add i32 %add311, %add382, !dbg !4635
  %50 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr384 = lshr i64 %50, 32, !dbg !4635
  %shr385 = lshr i64 %shr384, 16, !dbg !4635
  %and386 = and i64 %shr385, 1, !dbg !4635
  %tobool387 = icmp ne i64 %and386, 0, !dbg !4635
  %lnot388 = xor i1 %tobool387, true, !dbg !4635
  %lnot390 = xor i1 %lnot388, true, !dbg !4635
  %lnot.ext391 = zext i1 %lnot390 to i32, !dbg !4635
  %51 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr392 = lshr i64 %51, 32, !dbg !4635
  %shr393 = lshr i64 %shr392, 16, !dbg !4635
  %and394 = and i64 %shr393, 2, !dbg !4635
  %tobool395 = icmp ne i64 %and394, 0, !dbg !4635
  %lnot396 = xor i1 %tobool395, true, !dbg !4635
  %lnot398 = xor i1 %lnot396, true, !dbg !4635
  %lnot.ext399 = zext i1 %lnot398 to i32, !dbg !4635
  %add400 = add i32 %lnot.ext391, %lnot.ext399, !dbg !4635
  %52 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr401 = lshr i64 %52, 32, !dbg !4635
  %shr402 = lshr i64 %shr401, 16, !dbg !4635
  %and403 = and i64 %shr402, 4, !dbg !4635
  %tobool404 = icmp ne i64 %and403, 0, !dbg !4635
  %lnot405 = xor i1 %tobool404, true, !dbg !4635
  %lnot407 = xor i1 %lnot405, true, !dbg !4635
  %lnot.ext408 = zext i1 %lnot407 to i32, !dbg !4635
  %add409 = add i32 %add400, %lnot.ext408, !dbg !4635
  %53 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr410 = lshr i64 %53, 32, !dbg !4635
  %shr411 = lshr i64 %shr410, 16, !dbg !4635
  %and412 = and i64 %shr411, 8, !dbg !4635
  %tobool413 = icmp ne i64 %and412, 0, !dbg !4635
  %lnot414 = xor i1 %tobool413, true, !dbg !4635
  %lnot416 = xor i1 %lnot414, true, !dbg !4635
  %lnot.ext417 = zext i1 %lnot416 to i32, !dbg !4635
  %add418 = add i32 %add409, %lnot.ext417, !dbg !4635
  %54 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr419 = lshr i64 %54, 32, !dbg !4635
  %shr420 = lshr i64 %shr419, 16, !dbg !4635
  %and421 = and i64 %shr420, 16, !dbg !4635
  %tobool422 = icmp ne i64 %and421, 0, !dbg !4635
  %lnot423 = xor i1 %tobool422, true, !dbg !4635
  %lnot425 = xor i1 %lnot423, true, !dbg !4635
  %lnot.ext426 = zext i1 %lnot425 to i32, !dbg !4635
  %add427 = add i32 %add418, %lnot.ext426, !dbg !4635
  %55 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr428 = lshr i64 %55, 32, !dbg !4635
  %shr429 = lshr i64 %shr428, 16, !dbg !4635
  %and430 = and i64 %shr429, 32, !dbg !4635
  %tobool431 = icmp ne i64 %and430, 0, !dbg !4635
  %lnot432 = xor i1 %tobool431, true, !dbg !4635
  %lnot434 = xor i1 %lnot432, true, !dbg !4635
  %lnot.ext435 = zext i1 %lnot434 to i32, !dbg !4635
  %add436 = add i32 %add427, %lnot.ext435, !dbg !4635
  %56 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr437 = lshr i64 %56, 32, !dbg !4635
  %shr438 = lshr i64 %shr437, 16, !dbg !4635
  %and439 = and i64 %shr438, 64, !dbg !4635
  %tobool440 = icmp ne i64 %and439, 0, !dbg !4635
  %lnot441 = xor i1 %tobool440, true, !dbg !4635
  %lnot443 = xor i1 %lnot441, true, !dbg !4635
  %lnot.ext444 = zext i1 %lnot443 to i32, !dbg !4635
  %add445 = add i32 %add436, %lnot.ext444, !dbg !4635
  %57 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr446 = lshr i64 %57, 32, !dbg !4635
  %shr447 = lshr i64 %shr446, 16, !dbg !4635
  %and448 = and i64 %shr447, 128, !dbg !4635
  %tobool449 = icmp ne i64 %and448, 0, !dbg !4635
  %lnot450 = xor i1 %tobool449, true, !dbg !4635
  %lnot452 = xor i1 %lnot450, true, !dbg !4635
  %lnot.ext453 = zext i1 %lnot452 to i32, !dbg !4635
  %add454 = add i32 %add445, %lnot.ext453, !dbg !4635
  %58 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr455 = lshr i64 %58, 32, !dbg !4635
  %shr456 = lshr i64 %shr455, 16, !dbg !4635
  %shr457 = lshr i64 %shr456, 8, !dbg !4635
  %and458 = and i64 %shr457, 1, !dbg !4635
  %tobool459 = icmp ne i64 %and458, 0, !dbg !4635
  %lnot460 = xor i1 %tobool459, true, !dbg !4635
  %lnot462 = xor i1 %lnot460, true, !dbg !4635
  %lnot.ext463 = zext i1 %lnot462 to i32, !dbg !4635
  %59 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr464 = lshr i64 %59, 32, !dbg !4635
  %shr465 = lshr i64 %shr464, 16, !dbg !4635
  %shr466 = lshr i64 %shr465, 8, !dbg !4635
  %and467 = and i64 %shr466, 2, !dbg !4635
  %tobool468 = icmp ne i64 %and467, 0, !dbg !4635
  %lnot469 = xor i1 %tobool468, true, !dbg !4635
  %lnot471 = xor i1 %lnot469, true, !dbg !4635
  %lnot.ext472 = zext i1 %lnot471 to i32, !dbg !4635
  %add473 = add i32 %lnot.ext463, %lnot.ext472, !dbg !4635
  %60 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr474 = lshr i64 %60, 32, !dbg !4635
  %shr475 = lshr i64 %shr474, 16, !dbg !4635
  %shr476 = lshr i64 %shr475, 8, !dbg !4635
  %and477 = and i64 %shr476, 4, !dbg !4635
  %tobool478 = icmp ne i64 %and477, 0, !dbg !4635
  %lnot479 = xor i1 %tobool478, true, !dbg !4635
  %lnot481 = xor i1 %lnot479, true, !dbg !4635
  %lnot.ext482 = zext i1 %lnot481 to i32, !dbg !4635
  %add483 = add i32 %add473, %lnot.ext482, !dbg !4635
  %61 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr484 = lshr i64 %61, 32, !dbg !4635
  %shr485 = lshr i64 %shr484, 16, !dbg !4635
  %shr486 = lshr i64 %shr485, 8, !dbg !4635
  %and487 = and i64 %shr486, 8, !dbg !4635
  %tobool488 = icmp ne i64 %and487, 0, !dbg !4635
  %lnot489 = xor i1 %tobool488, true, !dbg !4635
  %lnot491 = xor i1 %lnot489, true, !dbg !4635
  %lnot.ext492 = zext i1 %lnot491 to i32, !dbg !4635
  %add493 = add i32 %add483, %lnot.ext492, !dbg !4635
  %62 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr494 = lshr i64 %62, 32, !dbg !4635
  %shr495 = lshr i64 %shr494, 16, !dbg !4635
  %shr496 = lshr i64 %shr495, 8, !dbg !4635
  %and497 = and i64 %shr496, 16, !dbg !4635
  %tobool498 = icmp ne i64 %and497, 0, !dbg !4635
  %lnot499 = xor i1 %tobool498, true, !dbg !4635
  %lnot501 = xor i1 %lnot499, true, !dbg !4635
  %lnot.ext502 = zext i1 %lnot501 to i32, !dbg !4635
  %add503 = add i32 %add493, %lnot.ext502, !dbg !4635
  %63 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr504 = lshr i64 %63, 32, !dbg !4635
  %shr505 = lshr i64 %shr504, 16, !dbg !4635
  %shr506 = lshr i64 %shr505, 8, !dbg !4635
  %and507 = and i64 %shr506, 32, !dbg !4635
  %tobool508 = icmp ne i64 %and507, 0, !dbg !4635
  %lnot509 = xor i1 %tobool508, true, !dbg !4635
  %lnot511 = xor i1 %lnot509, true, !dbg !4635
  %lnot.ext512 = zext i1 %lnot511 to i32, !dbg !4635
  %add513 = add i32 %add503, %lnot.ext512, !dbg !4635
  %64 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr514 = lshr i64 %64, 32, !dbg !4635
  %shr515 = lshr i64 %shr514, 16, !dbg !4635
  %shr516 = lshr i64 %shr515, 8, !dbg !4635
  %and517 = and i64 %shr516, 64, !dbg !4635
  %tobool518 = icmp ne i64 %and517, 0, !dbg !4635
  %lnot519 = xor i1 %tobool518, true, !dbg !4635
  %lnot521 = xor i1 %lnot519, true, !dbg !4635
  %lnot.ext522 = zext i1 %lnot521 to i32, !dbg !4635
  %add523 = add i32 %add513, %lnot.ext522, !dbg !4635
  %65 = load i64, ptr %w.addr, align 8, !dbg !4635
  %shr524 = lshr i64 %65, 32, !dbg !4635
  %shr525 = lshr i64 %shr524, 16, !dbg !4635
  %shr526 = lshr i64 %shr525, 8, !dbg !4635
  %and527 = and i64 %shr526, 128, !dbg !4635
  %tobool528 = icmp ne i64 %and527, 0, !dbg !4635
  %lnot529 = xor i1 %tobool528, true, !dbg !4635
  %lnot531 = xor i1 %lnot529, true, !dbg !4635
  %lnot.ext532 = zext i1 %lnot531 to i32, !dbg !4635
  %add533 = add i32 %add523, %lnot.ext532, !dbg !4635
  %add534 = add i32 %add454, %add533, !dbg !4635
  %add535 = add i32 %add383, %add534, !dbg !4635
  %add536 = add i32 %add248, %add535, !dbg !4635
  %conv = zext i32 %add536 to i64, !dbg !4635
  br label %cond.end, !dbg !4635

cond.false:                                       ; preds = %entry
  %66 = load i64, ptr %w.addr, align 8, !dbg !4635
  %call = call i64 @__arch_hweight64(i64 noundef %66) #9, !dbg !4635
  br label %cond.end, !dbg !4635

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %call, %cond.false ], !dbg !4635
  ret i64 %cond, !dbg !4636
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4637 dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__arch_hweight64(i64 noundef %w) #4 align 16 !dbg !4638 {
entry:
  %w.addr = alloca i64, align 8
  %res = alloca i64, align 8
  store i64 %w, ptr %w.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %w.addr, metadata !4643, metadata !DIExpression()), !dbg !4645
  call void @llvm.lifetime.start.p0(i64 8, ptr %res) #10, !dbg !4646
  call void @llvm.dbg.declare(metadata ptr %res, metadata !4644, metadata !DIExpression()), !dbg !4647
  %0 = load i64, ptr %w.addr, align 8, !dbg !4648
  %1 = call i64 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight64\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntq $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !4649, !srcloc !4650
  store i64 %1, ptr %res, align 8, !dbg !4649
  %2 = load i64, ptr %res, align 8, !dbg !4651
  call void @llvm.lifetime.end.p0(i64 8, ptr %res) #10, !dbg !4652
  ret i64 %2, !dbg !4653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !4654 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !4662, metadata !DIExpression()), !dbg !4664
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4663, metadata !DIExpression()), !dbg !4665
  %0 = load ptr, ptr %v.addr, align 8, !dbg !4666
  %1 = load i64, ptr %size.addr, align 8, !dbg !4667
  %conv = trunc i64 %1 to i32, !dbg !4667
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #9, !dbg !4668
  %2 = load ptr, ptr %v.addr, align 8, !dbg !4669
  %3 = load i64, ptr %size.addr, align 8, !dbg !4669
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #9, !dbg !4669
  ret void, !dbg !4670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !4671 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !4676, metadata !DIExpression()), !dbg !4678
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4677, metadata !DIExpression()), !dbg !4679
  ret i1 true, !dbg !4680
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !4681 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !4686, metadata !DIExpression()), !dbg !4689
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4687, metadata !DIExpression()), !dbg !4690
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !4688, metadata !DIExpression()), !dbg !4691
  ret void, !dbg !4692
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(read) }
attributes #12 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!4029, !4030, !4031, !4032, !4033, !4034, !4035, !4036}
!llvm.ident = !{!4037}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuinfo_op", scope: !2, file: !3, line: 174, type: !287, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.proc.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/proc\22 -D KBUILD_BASENAME=\22proc\22 -D KBUILD_MODNAME=\22proc\22 -D __KBUILD_MODNAME=kmod_proc -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/proc.ll arch/x86/kernel/cpu/proc.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !68, globals: !171, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/proc.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4697a26b1d4804df5648e813665426e2")
!4 = !{!5, !14, !21, !28, !34, !39, !45, !50, !56, !63}
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
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "migrate_mode", file: !22, line: 15, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "./include/linux/migrate_mode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2b12e7d4ee7cceca905e3df5cef47de9")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "MIGRATE_ASYNC", value: 0)
!25 = !DIEnumerator(name: "MIGRATE_SYNC_LIGHT", value: 1)
!26 = !DIEnumerator(name: "MIGRATE_SYNC", value: 2)
!27 = !DIEnumerator(name: "MIGRATE_SYNC_NO_COPY", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !29, line: 26, baseType: !7, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!30 = !{!31, !32, !33}
!31 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!32 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!33 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freeze_holder", file: !35, line: 2052, baseType: !7, size: 32, elements: !36)
!35 = !DIFile(filename: "./include/linux/fs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e9a9b92fd4d779544f5464cb2694b56e")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "FREEZE_HOLDER_KERNEL", value: 1)
!38 = !DIEnumerator(name: "FREEZE_HOLDER_USERSPACE", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quota_type", file: !40, line: 54, baseType: !7, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/quota.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da9d2513702d627ca79f8fe3dc1b5094")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "USRQUOTA", value: 0)
!43 = !DIEnumerator(name: "GRPQUOTA", value: 1)
!44 = !DIEnumerator(name: "PRJQUOTA", value: 2)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !46, line: 65, baseType: !7, size: 32, elements: !47)
!46 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!47 = !{!48, !49}
!48 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!49 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "timespec_type", file: !51, line: 16, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/restart_block.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79caa3b02853c6620e882f39862ba0c0")
!52 = !{!53, !54, !55}
!53 = !DIEnumerator(name: "TT_NONE", value: 0)
!54 = !DIEnumerator(name: "TT_NATIVE", value: 1)
!55 = !DIEnumerator(name: "TT_COMPAT", value: 2)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uprobe_task_state", file: !57, line: 51, baseType: !7, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!58 = !{!59, !60, !61, !62}
!59 = !DIEnumerator(name: "UTASK_RUNNING", value: 0)
!60 = !DIEnumerator(name: "UTASK_SSTEP", value: 1)
!61 = !DIEnumerator(name: "UTASK_SSTEP_ACK", value: 2)
!62 = !DIEnumerator(name: "UTASK_SSTEP_TRAPPED", value: 3)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !64, line: 10, baseType: !7, size: 32, elements: !65)
!64 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!65 = !{!66, !67}
!66 = !DIEnumerator(name: "false", value: 0)
!67 = !DIEnumerator(name: "true", value: 1)
!68 = !{!69, !79, !163, !76, !7, !100, !164, !165, !166, !168, !138}
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !72, line: 19, size: 64, elements: !73)
!72 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!73 = !{!74}
!74 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !71, file: !72, line: 19, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 64, elements: !77)
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!78}
!78 = !DISubrange(count: 1)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !81, line: 83, size: 2368, elements: !82)
!81 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!82 = !{!83, !98, !99, !101, !105, !106, !107, !108, !109, !110, !111, !119, !124, !128, !129, !130, !131, !132, !133, !134, !135, !140, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !158, !160, !162}
!83 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !81, line: 84, baseType: !84, size: 32)
!84 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !81, line: 84, size: 32, elements: !85)
!85 = !{!86, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !84, file: !81, line: 90, baseType: !87, size: 32)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !81, line: 90, size: 32, elements: !88)
!88 = !{!89, !93, !94, !95}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !87, file: !81, line: 91, baseType: !90, size: 8)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!92 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !87, file: !81, line: 93, baseType: !90, size: 8, offset: 8)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !87, file: !81, line: 95, baseType: !90, size: 8, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !87, file: !81, line: 96, baseType: !90, size: 8, offset: 24)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !84, file: !81, line: 99, baseType: !97, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !91, line: 27, baseType: !7)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !80, file: !81, line: 101, baseType: !90, size: 8, offset: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !80, file: !81, line: 104, baseType: !100, size: 32, offset: 64)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !80, file: !81, line: 107, baseType: !102, size: 160, offset: 96)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 160, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 5)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !80, file: !81, line: 109, baseType: !90, size: 8, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !80, file: !81, line: 110, baseType: !90, size: 8, offset: 264)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !80, file: !81, line: 112, baseType: !90, size: 8, offset: 272)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !80, file: !81, line: 113, baseType: !90, size: 8, offset: 280)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !80, file: !81, line: 115, baseType: !97, size: 32, offset: 288)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !80, file: !81, line: 117, baseType: !100, size: 32, offset: 320)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !80, file: !81, line: 123, baseType: !112, size: 768, offset: 384)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !80, file: !81, line: 123, size: 768, elements: !113)
!113 = !{!114, !118}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !112, file: !81, line: 124, baseType: !115, size: 768)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 768, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 24)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !112, file: !81, line: 125, baseType: !76, size: 64)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !80, file: !81, line: 127, baseType: !120, size: 128, offset: 1152)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 128, elements: !122)
!121 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!122 = !{!123}
!123 = !DISubrange(count: 16)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !80, file: !81, line: 128, baseType: !125, size: 512, offset: 1280)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 512, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !80, file: !81, line: 130, baseType: !7, size: 32, offset: 1792)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !80, file: !81, line: 131, baseType: !100, size: 32, offset: 1824)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !80, file: !81, line: 133, baseType: !100, size: 32, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !80, file: !81, line: 134, baseType: !100, size: 32, offset: 1888)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !80, file: !81, line: 135, baseType: !100, size: 32, offset: 1920)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !80, file: !81, line: 136, baseType: !100, size: 32, offset: 1952)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !80, file: !81, line: 137, baseType: !76, size: 64, offset: 1984)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !80, file: !81, line: 139, baseType: !136, size: 64, offset: 2048)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !91, line: 31, baseType: !139)
!139 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !80, file: !81, line: 141, baseType: !141, size: 16, offset: 2112)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !91, line: 24, baseType: !143)
!143 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !80, file: !81, line: 142, baseType: !141, size: 16, offset: 2128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !80, file: !81, line: 143, baseType: !141, size: 16, offset: 2144)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !80, file: !81, line: 144, baseType: !141, size: 16, offset: 2160)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !80, file: !81, line: 146, baseType: !141, size: 16, offset: 2176)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !80, file: !81, line: 148, baseType: !141, size: 16, offset: 2192)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !80, file: !81, line: 150, baseType: !141, size: 16, offset: 2208)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !80, file: !81, line: 152, baseType: !141, size: 16, offset: 2224)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !80, file: !81, line: 153, baseType: !141, size: 16, offset: 2240)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !80, file: !81, line: 154, baseType: !141, size: 16, offset: 2256)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !80, file: !81, line: 156, baseType: !141, size: 16, offset: 2272)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !80, file: !81, line: 158, baseType: !155, size: 8, offset: 2288)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !156, line: 35, baseType: !157)
!156 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !80, file: !81, line: 159, baseType: !159, size: 32, offset: 2304)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !97)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !80, file: !81, line: 161, baseType: !161, size: 8, offset: 2336)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !90)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !80, file: !81, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !156, line: 42, baseType: !76)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_var_t", file: !72, line: 913, baseType: !170)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 64, elements: !77)
!171 = !{!0, !172, !177, !182, !187, !192, !197, !199, !201, !206, !211, !216, !218, !223, !226, !231, !236, !241, !243, !246, !251, !254, !259, !264, !266, !268, !270, !272, !277, !282}
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 600, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 75)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 76, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 64, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 8)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !3, line: 82, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 120, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 15)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 160, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 20)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 144, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 18)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !189, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !189, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 72, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 9)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 32, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 4)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 104, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 13)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !203, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 125, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 184, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 23)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 192, elements: !116)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !3, line: 133, type: !228, isLocal: true, isDefinition: true)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 152, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 19)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(scope: null, file: !3, line: 134, type: !233, isLocal: true, isDefinition: true)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 176, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 22)
!236 = !DIGlobalVariableExpression(var: !237, expr: !DIExpression())
!237 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !238, isLocal: true, isDefinition: true)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 408, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 51)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !194, isLocal: true, isDefinition: true)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !245, isLocal: true, isDefinition: true)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 40, elements: !103)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 2)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 8, elements: !77)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !3, line: 147, type: !256, isLocal: true, isDefinition: true)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 48, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 6)
!259 = !DIGlobalVariableExpression(var: !260, expr: !DIExpression())
!260 = distinct !DIGlobalVariable(scope: null, file: !3, line: 151, type: !261, isLocal: true, isDefinition: true)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 24, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 3)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !3, line: 23, type: !194, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 24, type: !184, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !3, line: 26, type: !184, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !120, isLocal: true, isDefinition: true)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !274, isLocal: true, isDefinition: true)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 112, elements: !275)
!275 = !{!276}
!276 = !DISubrange(count: 14)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !3, line: 29, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 168, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 21)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !3, line: 55, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 472, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 59)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_operations", file: !289, line: 32, size: 256, elements: !290)
!289 = !DIFile(filename: "./include/linux/seq_file.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b29193e28662d5c73f00bb36dea2bcb")
!290 = !{!291, !4026, !4027, !4028}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !288, file: !289, line: 33, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!163, !295, !1733}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !289, line: 17, size: 960, elements: !297)
!297 = !{!298, !300, !305, !306, !307, !308, !312, !313, !365, !367, !368, !4025}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !296, file: !289, line: 18, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !296, file: !289, line: 19, baseType: !301, size: 64, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !156, line: 61, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !303, line: 72, baseType: !304)
!303 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !303, line: 16, baseType: !76)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !296, file: !289, line: 20, baseType: !301, size: 64, offset: 128)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !296, file: !289, line: 21, baseType: !301, size: 64, offset: 192)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pad_until", scope: !296, file: !289, line: 22, baseType: !301, size: 64, offset: 256)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !296, file: !289, line: 23, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !156, line: 52, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !303, line: 88, baseType: !311)
!311 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !296, file: !289, line: 24, baseType: !309, size: 64, offset: 384)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !296, file: !289, line: 25, baseType: !314, size: 256, offset: 448)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !315, line: 66, size: 256, elements: !316)
!315 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!316 = !{!317, !326, !354, !359}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !314, file: !315, line: 67, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !319, line: 13, baseType: !320)
!319 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !156, line: 181, baseType: !321)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 179, size: 64, elements: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !321, file: !156, line: 180, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !91, line: 30, baseType: !311)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !314, file: !315, line: 68, baseType: !327, size: 32, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !328, line: 23, baseType: !329)
!328 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !328, line: 14, size: 32, elements: !330)
!330 = !{!331}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !329, file: !328, line: 15, baseType: !332, size: 32)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !333, line: 44, baseType: !334)
!333 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !333, line: 14, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, scope: !334, file: !333, line: 15, baseType: !337, size: 32)
!337 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !334, file: !333, line: 15, size: 32, elements: !338)
!338 = !{!339, !344, !349}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !337, file: !333, line: 16, baseType: !340, size: 32)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !156, line: 174, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !156, line: 172, size: 32, elements: !342)
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !341, file: !156, line: 173, baseType: !100, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !333, line: 24, baseType: !345, size: 16)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !333, line: 24, size: 16, elements: !346)
!346 = !{!347, !348}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !345, file: !333, line: 25, baseType: !161, size: 8)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !345, file: !333, line: 26, baseType: !161, size: 8, offset: 8)
!349 = !DIDerivedType(tag: DW_TAG_member, scope: !337, file: !333, line: 28, baseType: !350, size: 32)
!350 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !337, file: !333, line: 28, size: 32, elements: !351)
!351 = !{!352, !353}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !350, file: !333, line: 29, baseType: !141, size: 16)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !350, file: !333, line: 30, baseType: !141, size: 16, offset: 16)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !314, file: !315, line: 70, baseType: !355, size: 32, offset: 96)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !356, line: 15, size: 32, elements: !357)
!356 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!357 = !{!358}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !355, file: !356, line: 20, baseType: !340, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !314, file: !315, line: 72, baseType: !360, size: 128, offset: 128)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !156, line: 190, size: 128, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !156, line: 191, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !360, file: !156, line: 191, baseType: !363, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !296, file: !289, line: 26, baseType: !366, size: 64, offset: 704)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "poll_event", scope: !296, file: !289, line: 27, baseType: !100, size: 32, offset: 768)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !296, file: !289, line: 28, baseType: !369, size: 64, offset: 832)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !35, line: 994, size: 1856, align: 64, elements: !372)
!372 = !{!373, !392, !401, !403, !404, !405, !406, !407, !484, !699, !708, !4015, !4016, !4017, !4018, !4019, !4020, !4022, !4023, !4024}
!373 = !DIDerivedType(tag: DW_TAG_member, scope: !371, file: !35, line: 995, baseType: !374, size: 128)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !371, file: !35, line: 995, size: 128, elements: !375)
!375 = !{!376, !382, !391}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "f_llist", scope: !374, file: !35, line: 996, baseType: !377, size: 64)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !378, line: 60, size: 64, elements: !379)
!378 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !378, line: 61, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "f_rcuhead", scope: !374, file: !35, line: 997, baseType: !383, size: 128, align: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !156, line: 232, size: 128, align: 64, elements: !384)
!384 = !{!385, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !383, file: !156, line: 233, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !383, file: !156, line: 234, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null, !386}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "f_iocb_flags", scope: !374, file: !35, line: 998, baseType: !7, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "f_lock", scope: !371, file: !35, line: 1005, baseType: !393, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !394, line: 29, baseType: !395)
!394 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !394, line: 17, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !394, line: 18, baseType: !398, size: 32)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !394, line: 18, size: 32, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !398, file: !394, line: 19, baseType: !329, size: 32)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "f_mode", scope: !371, file: !35, line: 1006, baseType: !402, size: 32, offset: 160)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "fmode_t", file: !156, line: 156, baseType: !7)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "f_count", scope: !371, file: !35, line: 1007, baseType: !318, size: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos_lock", scope: !371, file: !35, line: 1008, baseType: !314, size: 256, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "f_pos", scope: !371, file: !35, line: 1009, baseType: !309, size: 64, offset: 512)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "f_flags", scope: !371, file: !35, line: 1010, baseType: !7, size: 32, offset: 576)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "f_owner", scope: !371, file: !35, line: 1011, baseType: !408, size: 256, offset: 640)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fown_struct", file: !35, line: 948, size: 256, elements: !409)
!409 = !{!410, !431, !473, !474, !482, !483}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !408, file: !35, line: 949, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !412, line: 34, baseType: !413)
!412 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !412, line: 25, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !413, file: !412, line: 26, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !417, line: 27, baseType: !418)
!417 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !417, line: 13, size: 64, elements: !419)
!419 = !{!420, !430}
!420 = !DIDerivedType(tag: DW_TAG_member, scope: !418, file: !417, line: 14, baseType: !421, size: 32)
!421 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !418, file: !417, line: 14, size: 32, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !421, file: !417, line: 15, baseType: !340, size: 32)
!424 = !DIDerivedType(tag: DW_TAG_member, scope: !421, file: !417, line: 16, baseType: !425, size: 32)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !421, file: !417, line: 16, size: 32, elements: !426)
!426 = !{!427, !428}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !425, file: !417, line: 18, baseType: !161, size: 8)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !425, file: !417, line: 19, baseType: !429, size: 24, offset: 8)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 24, elements: !262)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !418, file: !417, line: 26, baseType: !332, size: 32, offset: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !408, file: !35, line: 950, baseType: !432, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !6, line: 59, size: 768, elements: !434)
!434 = !{!435, !441, !442, !443, !454, !455, !462, !463}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !433, file: !6, line: 61, baseType: !436, size: 32)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !437, line: 113, baseType: !438)
!437 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !437, line: 111, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !438, file: !437, line: 112, baseType: !340, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !433, file: !6, line: 62, baseType: !7, size: 32, offset: 32)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !433, file: !6, line: 63, baseType: !393, size: 32, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !433, file: !6, line: 65, baseType: !444, size: 256, offset: 128)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !209)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !156, line: 194, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !445, file: !156, line: 195, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !156, line: 198, size: 128, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !449, file: !156, line: 199, baseType: !448, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !449, file: !156, line: 199, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !433, file: !6, line: 66, baseType: !445, size: 64, offset: 384)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !433, file: !6, line: 68, baseType: !456, size: 192, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !457, line: 41, baseType: !458)
!457 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !457, line: 37, size: 192, elements: !459)
!459 = !{!460, !461}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !457, line: 38, baseType: !393, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !458, file: !457, line: 39, baseType: !360, size: 128, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !433, file: !6, line: 69, baseType: !383, size: 128, align: 64, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !433, file: !6, line: 70, baseType: !464, offset: 768)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, elements: !471)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !6, line: 54, size: 128, elements: !466)
!466 = !{!467, !468}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !465, file: !6, line: 55, baseType: !100, size: 32)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !465, file: !6, line: 56, baseType: !469, size: 64, offset: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !6, line: 56, flags: DIFlagFwdDecl)
!471 = !{!472}
!472 = !DISubrange(count: -1)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "pid_type", scope: !408, file: !35, line: 951, baseType: !5, size: 32, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !408, file: !35, line: 952, baseType: !475, size: 32, offset: 160)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !476, line: 23, baseType: !477)
!476 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!477 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 21, size: 32, elements: !478)
!478 = !{!479}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !477, file: !476, line: 22, baseType: !480, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !156, line: 37, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !303, line: 49, baseType: !7)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !408, file: !35, line: 952, baseType: !475, size: 32, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "signum", scope: !408, file: !35, line: 953, baseType: !100, size: 32, offset: 224)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "f_cred", scope: !371, file: !35, line: 1012, baseType: !485, size: 64, offset: 896)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !487)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !488, line: 110, size: 1472, elements: !489)
!488 = !DIFile(filename: "./include/linux/cred.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f82a587f181e8a46ea85d91cab718bd9")
!489 = !{!490, !491, !492, !499, !500, !501, !502, !503, !504, !505, !506, !512, !513, !514, !515, !516, !517, !644, !645, !646, !647, !648, !679, !682, !686, !694}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !487, file: !488, line: 111, baseType: !318, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !487, file: !488, line: 112, baseType: !475, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !487, file: !488, line: 113, baseType: !493, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !476, line: 28, baseType: !494)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 26, size: 32, elements: !495)
!495 = !{!496}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !494, file: !476, line: 27, baseType: !497, size: 32)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !156, line: 38, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !303, line: 50, baseType: !7)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "suid", scope: !487, file: !488, line: 114, baseType: !475, size: 32, offset: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sgid", scope: !487, file: !488, line: 115, baseType: !493, size: 32, offset: 160)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "euid", scope: !487, file: !488, line: 116, baseType: !475, size: 32, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "egid", scope: !487, file: !488, line: 117, baseType: !493, size: 32, offset: 224)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "fsuid", scope: !487, file: !488, line: 118, baseType: !475, size: 32, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "fsgid", scope: !487, file: !488, line: 119, baseType: !493, size: 32, offset: 288)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "securebits", scope: !487, file: !488, line: 120, baseType: !7, size: 32, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "cap_inheritable", scope: !487, file: !488, line: 121, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_cap_t", file: !508, line: 24, baseType: !509)
!508 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 24, size: 64, elements: !510)
!510 = !{!511}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !509, file: !508, line: 24, baseType: !136, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "cap_permitted", scope: !487, file: !488, line: 122, baseType: !507, size: 64, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "cap_effective", scope: !487, file: !488, line: 123, baseType: !507, size: 64, offset: 512)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "cap_bset", scope: !487, file: !488, line: 124, baseType: !507, size: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "cap_ambient", scope: !487, file: !488, line: 125, baseType: !507, size: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "jit_keyring", scope: !487, file: !488, line: 127, baseType: !92, size: 8, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "session_keyring", scope: !487, file: !488, line: 129, baseType: !518, size: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !520, line: 195, size: 1728, elements: !521)
!520 = !DIFile(filename: "./include/linux/key.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d53fafbe45ee20e0375ce810c4e5dab2")
!521 = !{!522, !523, !528, !540, !549, !552, !553, !560, !561, !562, !563, !566, !567, !568, !570, !571, !608, !629}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !519, file: !520, line: 196, baseType: !436, size: 32)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !519, file: !520, line: 197, baseType: !524, size: 32, offset: 32)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_serial_t", file: !520, line: 28, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !156, line: 104, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !527)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !91, line: 26, baseType: !100)
!528 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 198, baseType: !529, size: 192, offset: 64)
!529 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 198, size: 192, elements: !530)
!530 = !{!531, !532}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "graveyard_link", scope: !529, file: !520, line: 199, baseType: !360, size: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "serial_node", scope: !529, file: !520, line: 200, baseType: !533, size: 192, align: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !534, line: 5, size: 192, align: 64, elements: !535)
!534 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!535 = !{!536, !537, !539}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !533, file: !534, line: 6, baseType: !76, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !533, file: !534, line: 7, baseType: !538, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !533, file: !534, line: 8, baseType: !538, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !519, file: !520, line: 205, baseType: !541, size: 320, offset: 256)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !542, line: 48, size: 320, elements: !543)
!542 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!543 = !{!544, !545, !546, !547, !548}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !541, file: !542, line: 49, baseType: !318, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !541, file: !542, line: 55, baseType: !318, size: 64, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !541, file: !542, line: 57, baseType: !355, size: 32, offset: 128)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !541, file: !542, line: 59, baseType: !327, size: 32, offset: 160)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !541, file: !542, line: 60, baseType: !360, size: 128, offset: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !519, file: !520, line: 206, baseType: !550, size: 64, offset: 576)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_user", file: !520, line: 206, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !519, file: !520, line: 207, baseType: !163, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 208, baseType: !554, size: 64, offset: 704)
!554 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 208, size: 64, elements: !555)
!555 = !{!556, !559}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "expiry", scope: !554, file: !520, line: 209, baseType: !557, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "time64_t", file: !558, line: 8, baseType: !325)
!558 = !DIFile(filename: "./include/linux/time64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d597827474cd37ab3c64b0e07d237cd6")
!559 = !DIDerivedType(tag: DW_TAG_member, name: "revoked_at", scope: !554, file: !520, line: 210, baseType: !557, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "last_used_at", scope: !519, file: !520, line: 212, baseType: !557, size: 64, offset: 768)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !519, file: !520, line: 213, baseType: !475, size: 32, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !519, file: !520, line: 214, baseType: !493, size: 32, offset: 864)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !519, file: !520, line: 215, baseType: !564, size: 32, offset: 896)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_perm_t", file: !520, line: 31, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !156, line: 110, baseType: !159)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "quotalen", scope: !519, file: !520, line: 216, baseType: !143, size: 16, offset: 928)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !519, file: !520, line: 217, baseType: !143, size: 16, offset: 944)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !519, file: !520, line: 221, baseType: !569, size: 16, offset: 960)
!569 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !519, file: !520, line: 228, baseType: !76, size: 64, offset: 1024)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 245, baseType: !572, size: 320, offset: 1088)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 245, size: 320, elements: !573)
!573 = !{!574, !600}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "index_key", scope: !572, file: !520, line: 246, baseType: !575, size: 320)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "keyring_index_key", file: !520, line: 114, size: 320, elements: !576)
!576 = !{!577, !578, !587, !590, !597}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !575, file: !520, line: 116, baseType: !76, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, scope: !575, file: !520, line: 117, baseType: !579, size: 64, offset: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !575, file: !520, line: 117, size: 64, elements: !580)
!580 = !{!581, !586}
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !520, line: 118, baseType: !582, size: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !579, file: !520, line: 118, size: 64, elements: !583)
!583 = !{!584, !585}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "desc_len", scope: !582, file: !520, line: 120, baseType: !141, size: 16)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !582, file: !520, line: 121, baseType: !256, size: 48, offset: 16)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !579, file: !520, line: 127, baseType: !76, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !575, file: !520, line: 129, baseType: !588, size: 64, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "key_type", file: !520, line: 102, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !575, file: !520, line: 130, baseType: !591, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_tag", file: !520, line: 108, size: 192, elements: !593)
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !592, file: !520, line: 109, baseType: !383, size: 128, align: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !592, file: !520, line: 110, baseType: !436, size: 32, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !592, file: !520, line: 111, baseType: !155, size: 8, offset: 160)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !575, file: !520, line: 131, baseType: !598, size: 64, offset: 256)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !572, file: !520, line: 247, baseType: !601, size: 320)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !572, file: !520, line: 247, size: 320, elements: !602)
!602 = !{!603, !604, !605, !606, !607}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !601, file: !520, line: 248, baseType: !76, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "len_desc", scope: !601, file: !520, line: 249, baseType: !76, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !520, line: 250, baseType: !588, size: 64, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "domain_tag", scope: !601, file: !520, line: 251, baseType: !591, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !601, file: !520, line: 252, baseType: !299, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, scope: !519, file: !520, line: 260, baseType: !609, size: 256, offset: 1408)
!609 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !519, file: !520, line: 260, size: 256, elements: !610)
!610 = !{!611, !617}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !609, file: !520, line: 261, baseType: !612, size: 256)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "key_payload", file: !520, line: 134, size: 256, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_data0", scope: !612, file: !520, line: 135, baseType: !163, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !612, file: !520, line: 136, baseType: !616, size: 256)
!616 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 256, elements: !209)
!617 = !DIDerivedType(tag: DW_TAG_member, scope: !609, file: !520, line: 262, baseType: !618, size: 256)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !609, file: !520, line: 262, size: 256, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "name_link", scope: !618, file: !520, line: 264, baseType: !360, size: 128)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "keys", scope: !618, file: !520, line: 265, baseType: !622, size: 128, offset: 128)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array", file: !623, line: 22, size: 128, elements: !624)
!623 = !DIFile(filename: "./include/linux/assoc_array.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12a70c11037debe270cf6b506589459e")
!624 = !{!625, !628}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !622, file: !623, line: 23, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "assoc_array_ptr", file: !623, line: 23, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "nr_leaves_on_tree", scope: !622, file: !623, line: 24, baseType: !76, size: 64, offset: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_link", scope: !519, file: !520, line: 280, baseType: !630, size: 64, offset: 1664)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "key_restriction", file: !520, line: 176, size: 192, elements: !632)
!632 = !{!633, !642, !643}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "check", scope: !631, file: !520, line: 177, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "key_restrict_link_func_t", file: !520, line: 171, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DISubroutineType(types: !637)
!637 = !{!100, !518, !638, !640, !518}
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !589)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !631, file: !520, line: 178, baseType: !518, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "keytype", scope: !631, file: !520, line: 179, baseType: !588, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "process_keyring", scope: !487, file: !488, line: 130, baseType: !518, size: 64, offset: 832)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "thread_keyring", scope: !487, file: !488, line: 131, baseType: !518, size: 64, offset: 896)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "request_key_auth", scope: !487, file: !488, line: 132, baseType: !518, size: 64, offset: 960)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !487, file: !488, line: 135, baseType: !163, size: 64, offset: 1024)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !487, file: !488, line: 137, baseType: !649, size: 64, offset: 1088)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "user_struct", file: !651, line: 14, size: 1088, elements: !652)
!651 = !DIFile(filename: "./include/linux/sched/user.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5b9b728b5daa0648e64b85855f2d2d7d")
!652 = !{!653, !654, !663, !664, !665, !666, !667, !668}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !650, file: !651, line: 15, baseType: !436, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_watches", scope: !650, file: !651, line: 17, baseType: !655, size: 320, offset: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !656, line: 22, size: 320, elements: !657)
!656 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!657 = !{!658, !659, !660, !661}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !655, file: !656, line: 23, baseType: !327, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !655, file: !656, line: 24, baseType: !324, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !655, file: !656, line: 26, baseType: !360, size: 128, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !655, file: !656, line: 28, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "unix_inflight", scope: !650, file: !651, line: 19, baseType: !76, size: 64, offset: 384)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_bufs", scope: !650, file: !651, line: 20, baseType: !318, size: 64, offset: 448)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "uidhash_node", scope: !650, file: !651, line: 23, baseType: !449, size: 128, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !650, file: !651, line: 24, baseType: !475, size: 32, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !650, file: !651, line: 29, baseType: !318, size: 64, offset: 704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ratelimit", scope: !650, file: !651, line: 36, baseType: !669, size: 320, offset: 768)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ratelimit_state", file: !670, line: 15, size: 320, elements: !671)
!670 = !DIFile(filename: "./include/linux/ratelimit_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a7f0c4e20ae16dd6d451be3252397df")
!671 = !{!672, !673, !674, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !669, file: !670, line: 16, baseType: !327, size: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "interval", scope: !669, file: !670, line: 18, baseType: !100, size: 32, offset: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "burst", scope: !669, file: !670, line: 19, baseType: !100, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "printed", scope: !669, file: !670, line: 20, baseType: !100, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "missed", scope: !669, file: !670, line: 21, baseType: !100, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !669, file: !670, line: 22, baseType: !76, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !669, file: !670, line: 23, baseType: !76, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !487, file: !488, line: 138, baseType: !680, size: 64, offset: 1152)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !476, line: 18, flags: DIFlagFwdDecl)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ucounts", scope: !487, file: !488, line: 139, baseType: !683, size: 64, offset: 1216)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "ucounts", file: !685, line: 16, flags: DIFlagFwdDecl)
!685 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "78a33cf1decb0a64e6c22b031de1b9a1")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "group_info", scope: !487, file: !488, line: 140, baseType: !687, size: 64, offset: 1280)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "group_info", file: !488, line: 25, size: 64, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !688, file: !488, line: 26, baseType: !340, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !688, file: !488, line: 27, baseType: !100, size: 32, offset: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !688, file: !488, line: 28, baseType: !693, offset: 64)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !493, elements: !471)
!694 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !488, line: 142, baseType: !695, size: 128, offset: 1344)
!695 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !487, file: !488, line: 142, size: 128, elements: !696)
!696 = !{!697, !698}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "non_rcu", scope: !695, file: !488, line: 143, baseType: !100, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !488, line: 144, baseType: !383, size: 128, align: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "f_ra", scope: !371, file: !35, line: 1013, baseType: !700, size: 256, offset: 960)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_ra_state", file: !35, line: 970, size: 256, elements: !701)
!701 = !{!702, !703, !704, !705, !706, !707}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !700, file: !35, line: 971, baseType: !76, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !700, file: !35, line: 972, baseType: !7, size: 32, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "async_size", scope: !700, file: !35, line: 973, baseType: !7, size: 32, offset: 96)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ra_pages", scope: !700, file: !35, line: 974, baseType: !7, size: 32, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_miss", scope: !700, file: !35, line: 975, baseType: !7, size: 32, offset: 160)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "prev_pos", scope: !700, file: !35, line: 976, baseType: !309, size: 64, offset: 192)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "f_path", scope: !371, file: !35, line: 1014, baseType: !709, size: 128, offset: 1216)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "path", file: !710, line: 8, size: 128, elements: !711)
!710 = !DIFile(filename: "./include/linux/path.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d886851aca71f682277bd2307ac8c4c3")
!711 = !{!712, !4014}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "mnt", scope: !709, file: !710, line: 9, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vfsmount", file: !715, line: 70, size: 256, elements: !716)
!715 = !DIFile(filename: "./include/linux/mount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c8d11f573b97b76ef2684e0208c9c1f6")
!716 = !{!717, !4011, !4012, !4013}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_root", scope: !714, file: !715, line: 71, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !720, line: 82, size: 1536, elements: !721)
!720 = !DIFile(filename: "./include/linux/dcache.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "09d5de2dd48dac98a78cfbca1aaf6670")
!721 = !{!722, !723, !733, !741, !742, !757, !3978, !3980, !3993, !3994, !3995, !3996, !3997, !4003, !4004, !4005}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "d_flags", scope: !719, file: !720, line: 84, baseType: !7, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "d_seq", scope: !719, file: !720, line: 85, baseType: !724, size: 32, offset: 32)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !725, line: 275, baseType: !726)
!725 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !725, line: 275, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !726, file: !725, line: 275, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !725, line: 69, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !725, line: 64, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !730, file: !725, line: 65, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !719, file: !720, line: 86, baseType: !734, size: 128, offset: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_node", file: !735, line: 38, size: 128, elements: !736)
!735 = !DIFile(filename: "./include/linux/list_bl.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "35bd436f1f6159eef157d09cf839df5b")
!736 = !{!737, !739}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !734, file: !735, line: 39, baseType: !738, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !734, file: !735, line: 39, baseType: !740, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "d_parent", scope: !719, file: !720, line: 87, baseType: !718, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !719, file: !720, line: 88, baseType: !743, size: 128, offset: 256)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qstr", file: !720, line: 49, size: 128, elements: !744)
!744 = !{!745, !754}
!745 = !DIDerivedType(tag: DW_TAG_member, scope: !743, file: !720, line: 50, baseType: !746, size: 64)
!746 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !743, file: !720, line: 50, size: 64, elements: !747)
!747 = !{!748, !753}
!748 = !DIDerivedType(tag: DW_TAG_member, scope: !746, file: !720, line: 51, baseType: !749, size: 64)
!749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !746, file: !720, line: 51, size: 64, elements: !750)
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !749, file: !720, line: 52, baseType: !159, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !749, file: !720, line: 52, baseType: !159, size: 32, offset: 32)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "hash_len", scope: !746, file: !720, line: 54, baseType: !136, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !743, file: !720, line: 56, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "d_inode", scope: !719, file: !720, line: 89, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode", file: !35, line: 641, size: 4800, elements: !760)
!760 = !{!761, !763, !764, !765, !766, !767, !768, !771, !772, !968, !3794, !3795, !3796, !3797, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812, !3813, !3814, !3815, !3816, !3817, !3818, !3819, !3820, !3821, !3826, !3827, !3828, !3829, !3830, !3831, !3832, !3960, !3963, !3964, !3965, !3974, !3975, !3976, !3977}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "i_mode", scope: !759, file: !35, line: 642, baseType: !762, size: 16)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !156, line: 24, baseType: !143)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "i_opflags", scope: !759, file: !35, line: 643, baseType: !143, size: 16, offset: 16)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "i_uid", scope: !759, file: !35, line: 644, baseType: !475, size: 32, offset: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "i_lru", scope: !759, file: !35, line: 645, baseType: !360, size: 128, offset: 64)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "i_gid", scope: !759, file: !35, line: 646, baseType: !493, size: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !759, file: !35, line: 647, baseType: !7, size: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "i_acl", scope: !759, file: !35, line: 650, baseType: !769, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "posix_acl", file: !35, line: 607, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "i_default_acl", scope: !759, file: !35, line: 651, baseType: !769, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "i_op", scope: !759, file: !35, line: 654, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "inode_operations", file: !35, line: 1966, size: 2048, align: 512, elements: !776)
!776 = !{!777, !781, !794, !800, !804, !808, !812, !816, !820, !824, !828, !829, !835, !839, !878, !909, !916, !922, !926, !930, !934, !938, !942, !948, !952}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "lookup", scope: !775, file: !35, line: 1967, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!718, !758, !718, !7}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "get_link", scope: !775, file: !35, line: 1968, baseType: !782, size: 64, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DISubroutineType(types: !784)
!784 = !{!598, !718, !758, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_call", file: !787, line: 10, size: 128, elements: !788)
!787 = !DIFile(filename: "./include/linux/delayed_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e61eb32de84dec9b8b545d0ea330611b")
!788 = !{!789, !793}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !786, file: !787, line: 11, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{null, !163}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !786, file: !787, line: 12, baseType: !163, size: 64, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "permission", scope: !775, file: !35, line: 1969, baseType: !795, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DISubroutineType(types: !797)
!797 = !{!100, !798, !758, !100}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "mnt_idmap", file: !508, line: 42, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_acl", scope: !775, file: !35, line: 1970, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!769, !758, !100, !155}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "readlink", scope: !775, file: !35, line: 1972, baseType: !805, size: 64, offset: 256)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!100, !718, !299, !100}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !775, file: !35, line: 1974, baseType: !809, size: 64, offset: 320)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{!100, !798, !758, !718, !762, !155}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !775, file: !35, line: 1976, baseType: !813, size: 64, offset: 384)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!100, !718, !758, !718}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "unlink", scope: !775, file: !35, line: 1977, baseType: !817, size: 64, offset: 448)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{!100, !758, !718}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !775, file: !35, line: 1978, baseType: !821, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!100, !798, !758, !718, !598}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !775, file: !35, line: 1980, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!100, !798, !758, !718, !762}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !775, file: !35, line: 1982, baseType: !817, size: 64, offset: 640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mknod", scope: !775, file: !35, line: 1983, baseType: !830, size: 64, offset: 704)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!100, !798, !758, !718, !762, !833}
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !156, line: 21, baseType: !834)
!834 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !156, line: 18, baseType: !159)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !775, file: !35, line: 1985, baseType: !836, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!100, !798, !758, !718, !758, !718, !7}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "setattr", scope: !775, file: !35, line: 1987, baseType: !840, size: 64, offset: 832)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!100, !798, !718, !843}
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iattr", file: !35, line: 226, size: 640, elements: !845)
!845 = !{!846, !847, !848, !858, !867, !868, !874, !875, !876}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "ia_valid", scope: !844, file: !35, line: 227, baseType: !7, size: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mode", scope: !844, file: !35, line: 228, baseType: !762, size: 16, offset: 32)
!848 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !35, line: 241, baseType: !849, size: 32, offset: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !35, line: 241, size: 32, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "ia_uid", scope: !849, file: !35, line: 242, baseType: !475, size: 32)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsuid", scope: !849, file: !35, line: 243, baseType: !853, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsuid_t", file: !854, line: 16, baseType: !855)
!854 = !DIFile(filename: "./include/linux/mnt_idmapping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "41af6e4101191153091207971e03c703")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 14, size: 32, elements: !856)
!856 = !{!857}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !855, file: !854, line: 15, baseType: !480, size: 32)
!858 = !DIDerivedType(tag: DW_TAG_member, scope: !844, file: !35, line: 245, baseType: !859, size: 32, offset: 96)
!859 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !844, file: !35, line: 245, size: 32, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "ia_gid", scope: !859, file: !35, line: 246, baseType: !493, size: 32)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ia_vfsgid", scope: !859, file: !35, line: 247, baseType: !863, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "vfsgid_t", file: !854, line: 20, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !854, line: 18, size: 32, elements: !865)
!865 = !{!866}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !864, file: !854, line: 19, baseType: !497, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ia_size", scope: !844, file: !35, line: 249, baseType: !309, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "ia_atime", scope: !844, file: !35, line: 250, baseType: !869, size: 128, offset: 192)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec64", file: !558, line: 13, size: 128, elements: !870)
!870 = !{!871, !872}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !869, file: !558, line: 14, baseType: !557, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !869, file: !558, line: 15, baseType: !873, size: 64, offset: 64)
!873 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ia_mtime", scope: !844, file: !35, line: 251, baseType: !869, size: 128, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ia_ctime", scope: !844, file: !35, line: 252, baseType: !869, size: 128, offset: 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ia_file", scope: !844, file: !35, line: 259, baseType: !877, size: 64, offset: 576)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "getattr", scope: !775, file: !35, line: 1988, baseType: !879, size: 64, offset: 896)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!100, !798, !882, !884, !159, !7}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !709)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kstat", file: !886, line: 22, size: 1280, elements: !887)
!886 = !DIFile(filename: "./include/linux/stat.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3571313cf9c15146d242b098923658d2")
!887 = !{!888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "result_mask", scope: !885, file: !886, line: 23, baseType: !159, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !885, file: !886, line: 24, baseType: !762, size: 16, offset: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "nlink", scope: !885, file: !886, line: 25, baseType: !7, size: 32, offset: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "blksize", scope: !885, file: !886, line: 26, baseType: !565, size: 32, offset: 96)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !885, file: !886, line: 27, baseType: !136, size: 64, offset: 128)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "attributes_mask", scope: !885, file: !886, line: 28, baseType: !136, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !885, file: !886, line: 41, baseType: !136, size: 64, offset: 256)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !885, file: !886, line: 42, baseType: !833, size: 32, offset: 320)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "rdev", scope: !885, file: !886, line: 43, baseType: !833, size: 32, offset: 352)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !885, file: !886, line: 44, baseType: !475, size: 32, offset: 384)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !885, file: !886, line: 45, baseType: !493, size: 32, offset: 416)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !885, file: !886, line: 46, baseType: !309, size: 64, offset: 448)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !885, file: !886, line: 47, baseType: !869, size: 128, offset: 512)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !885, file: !886, line: 48, baseType: !869, size: 128, offset: 640)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !885, file: !886, line: 49, baseType: !869, size: 128, offset: 768)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "btime", scope: !885, file: !886, line: 50, baseType: !869, size: 128, offset: 896)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !885, file: !886, line: 51, baseType: !136, size: 64, offset: 1024)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_id", scope: !885, file: !886, line: 52, baseType: !136, size: 64, offset: 1088)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "dio_mem_align", scope: !885, file: !886, line: 53, baseType: !159, size: 32, offset: 1152)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "dio_offset_align", scope: !885, file: !886, line: 54, baseType: !159, size: 32, offset: 1184)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "change_cookie", scope: !885, file: !886, line: 55, baseType: !136, size: 64, offset: 1216)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "listxattr", scope: !775, file: !35, line: 1990, baseType: !910, size: 64, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = !DISubroutineType(types: !912)
!912 = !{!913, !718, !299, !301}
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !156, line: 66, baseType: !914)
!914 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !303, line: 73, baseType: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !303, line: 15, baseType: !873)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fiemap", scope: !775, file: !35, line: 1991, baseType: !917, size: 64, offset: 1024)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!100, !758, !920, !136, !136}
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "fiemap_extent_info", file: !35, line: 55, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "update_time", scope: !775, file: !35, line: 1993, baseType: !923, size: 64, offset: 1088)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!100, !758, !100}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_open", scope: !775, file: !35, line: 1994, baseType: !927, size: 64, offset: 1152)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{!100, !758, !718, !877, !7, !762}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tmpfile", scope: !775, file: !35, line: 1997, baseType: !931, size: 64, offset: 1216)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{!100, !798, !758, !877, !762}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "get_acl", scope: !775, file: !35, line: 1999, baseType: !935, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DISubroutineType(types: !937)
!937 = !{!769, !798, !718, !100}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "set_acl", scope: !775, file: !35, line: 2001, baseType: !939, size: 64, offset: 1344)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!100, !798, !718, !769, !100}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_set", scope: !775, file: !35, line: 2003, baseType: !943, size: 64, offset: 1408)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!100, !798, !718, !946}
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "fileattr", file: !35, line: 76, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "fileattr_get", scope: !775, file: !35, line: 2005, baseType: !949, size: 64, offset: 1472)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{!100, !718, !946}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "get_offset_ctx", scope: !775, file: !35, line: 2006, baseType: !953, size: 64, offset: 1536)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!956, !758}
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "offset_ctx", file: !35, line: 3192, size: 192, elements: !958)
!958 = !{!959, !967}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !957, file: !35, line: 3193, baseType: !960, size: 128)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !961, line: 296, size: 128, elements: !962)
!961 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!962 = !{!963, !964, !966}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !960, file: !961, line: 297, baseType: !393, size: 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !960, file: !961, line: 299, baseType: !965, size: 32, offset: 32)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !156, line: 154, baseType: !7)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !960, file: !961, line: 300, baseType: !163, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "next_offset", scope: !957, file: !35, line: 3194, baseType: !159, size: 32, offset: 128)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb", scope: !759, file: !35, line: 655, baseType: !969, size: 64, offset: 448)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_block", file: !35, line: 1190, size: 10752, elements: !971)
!971 = !{!972, !973, !974, !975, !976, !977, !2150, !2282, !2322, !2405, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2422, !2426, !2427, !2430, !2433, !2436, !2439, !2440, !2441, !2482, !3669, !3670, !3671, !3672, !3673, !3674, !3677, !3679, !3686, !3687, !3688, !3689, !3748, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "s_list", scope: !970, file: !35, line: 1191, baseType: !360, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "s_dev", scope: !970, file: !35, line: 1192, baseType: !833, size: 32, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize_bits", scope: !970, file: !35, line: 1193, baseType: !92, size: 8, offset: 160)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "s_blocksize", scope: !970, file: !35, line: 1194, baseType: !76, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "s_maxbytes", scope: !970, file: !35, line: 1195, baseType: !309, size: 64, offset: 256)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "s_type", scope: !970, file: !35, line: 1196, baseType: !978, size: 64, offset: 320)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_system_type", file: !35, line: 2366, size: 576, elements: !980)
!980 = !{!981, !982, !983, !989, !993, !997, !1001, !2138, !2139, !2140, !2142, !2143, !2144, !2146, !2147, !2148, !2149}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !979, file: !35, line: 2367, baseType: !598, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fs_flags", scope: !979, file: !35, line: 2368, baseType: !100, size: 32, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "init_fs_context", scope: !979, file: !35, line: 2376, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!100, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_context", file: !715, line: 21, flags: DIFlagFwdDecl)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !979, file: !35, line: 2377, baseType: !990, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_parameter_spec", file: !35, line: 75, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "mount", scope: !979, file: !35, line: 2378, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DISubroutineType(types: !996)
!996 = !{!718, !978, !100, !598, !163}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "kill_sb", scope: !979, file: !35, line: 2380, baseType: !998, size: 64, offset: 320)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !969}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !979, file: !35, line: 2381, baseType: !1002, size: 64, offset: 384)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !15, line: 402, size: 9216, align: 512, elements: !1004)
!1004 = !{!1005, !1006, !1007, !1011, !1797, !1823, !1824, !1825, !1826, !1830, !1833, !1834, !1835, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1903, !1907, !1925, !1943, !1944, !1945, !1946, !1955, !1978, !1979, !1982, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1996, !1997, !2097, !2105, !2106, !2107, !2109, !2113, !2114, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2131, !2132, !2133, !2137}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1003, file: !15, line: 403, baseType: !14, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1003, file: !15, line: 406, baseType: !360, size: 128, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1003, file: !15, line: 409, baseType: !1008, size: 448, offset: 192)
!1008 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 448, elements: !1009)
!1009 = !{!1010}
!1010 = !DISubrange(count: 56)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !1003, file: !15, line: 417, baseType: !1012, size: 768, offset: 640)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !15, line: 45, size: 768, elements: !1013)
!1013 = !{!1014, !1780, !1781, !1782, !1785}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1012, file: !15, line: 46, baseType: !1015, size: 512)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1016, line: 64, size: 512, elements: !1017)
!1016 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!1017 = !{!1018, !1019, !1020, !1022, !1064, !1664, !1770, !1775, !1776, !1777, !1778, !1779}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1015, file: !1016, line: 65, baseType: !598, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1015, file: !1016, line: 66, baseType: !360, size: 128, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1015, file: !1016, line: 67, baseType: !1021, size: 64, offset: 192)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1015, file: !1016, line: 68, baseType: !1023, size: 64, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1016, line: 168, size: 768, elements: !1025)
!1025 = !{!1026, !1027, !1028, !1029}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1024, file: !1016, line: 169, baseType: !360, size: 128)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1024, file: !1016, line: 170, baseType: !393, size: 32, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1024, file: !1016, line: 171, baseType: !1015, size: 512, offset: 192)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1024, file: !1016, line: 172, baseType: !1030, size: 64, offset: 704)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1032)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1016, line: 133, size: 192, elements: !1033)
!1033 = !{!1034, !1041, !1046}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1032, file: !1016, line: 134, baseType: !1035, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1036)
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DISubroutineType(types: !1038)
!1038 = !{!100, !1039}
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1032, file: !1016, line: 135, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1043)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{!598, !1039}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1032, file: !1016, line: 136, baseType: !1047, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1048)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!100, !1039, !1051}
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1016, line: 125, size: 20736, elements: !1053)
!1053 = !{!1054, !1056, !1058, !1059, !1063}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1052, file: !1016, line: 126, baseType: !1055, size: 192)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 192, elements: !262)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1052, file: !1016, line: 127, baseType: !1057, size: 4096, offset: 192)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !299, size: 4096, elements: !126)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1052, file: !1016, line: 128, baseType: !100, size: 32, offset: 4288)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1052, file: !1016, line: 129, baseType: !1060, size: 16384, offset: 4320)
!1060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 16384, elements: !1061)
!1061 = !{!1062}
!1062 = !DISubrange(count: 2048)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1052, file: !1016, line: 130, baseType: !100, size: 32, offset: 20704)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1015, file: !1016, line: 69, baseType: !1065, size: 64, offset: 320)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1067)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1016, line: 116, size: 384, elements: !1068)
!1068 = !{!1069, !1073, !1092, !1626, !1654, !1658}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1067, file: !1016, line: 117, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{null, !1021}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1067, file: !1016, line: 118, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1077, line: 254, size: 128, elements: !1078)
!1077 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!1078 = !{!1079, !1088}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1076, file: !1077, line: 255, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!913, !1021, !1083, !299}
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1077, line: 30, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1084, file: !1077, line: 31, baseType: !598, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1084, file: !1077, line: 32, baseType: !762, size: 16, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1076, file: !1077, line: 256, baseType: !1089, size: 64, offset: 64)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!913, !1021, !1083, !598, !301}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1067, file: !1016, line: 119, baseType: !1093, size: 64, offset: 128)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1096)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1077, line: 84, size: 320, elements: !1097)
!1097 = !{!1098, !1099, !1103, !1622, !1624}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1096, file: !1077, line: 85, baseType: !598, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1096, file: !1077, line: 86, baseType: !1100, size: 64, offset: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!762, !1021, !1083, !100}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1096, file: !1077, line: 88, baseType: !1104, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DISubroutineType(types: !1106)
!1106 = !{!762, !1021, !1107, !100}
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1077, line: 175, size: 512, elements: !1109)
!1109 = !{!1110, !1111, !1112, !1113, !1390, !1394, !1395}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1108, file: !1077, line: 176, baseType: !1084, size: 128)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1108, file: !1077, line: 177, baseType: !301, size: 64, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1108, file: !1077, line: 178, baseType: !163, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !1108, file: !1077, line: 179, baseType: !1114, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DISubroutineType(types: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !35, line: 472, size: 1536, align: 64, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123, !1124, !1125, !1133, !1134, !1135, !1382, !1383, !1384, !1387, !1388, !1389}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !1118, file: !35, line: 473, baseType: !758, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "i_pages", scope: !1118, file: !35, line: 474, baseType: !960, size: 128, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock", scope: !1118, file: !35, line: 475, baseType: !541, size: 320, offset: 192)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !1118, file: !35, line: 476, baseType: !965, size: 32, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_writable", scope: !1118, file: !35, line: 477, baseType: !340, size: 32, offset: 544)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap", scope: !1118, file: !35, line: 482, baseType: !1126, size: 128, offset: 576)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !534, line: 26, size: 128, elements: !1127)
!1127 = !{!1128, !1132}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1126, file: !534, line: 27, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !534, line: 12, size: 64, elements: !1130)
!1130 = !{!1131}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !1129, file: !534, line: 13, baseType: !538, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1126, file: !534, line: 28, baseType: !538, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "nrpages", scope: !1118, file: !35, line: 483, baseType: !76, size: 64, offset: 704)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "writeback_index", scope: !1118, file: !35, line: 484, baseType: !76, size: 64, offset: 768)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "a_ops", scope: !1118, file: !35, line: 485, baseType: !1136, size: 64, offset: 832)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1138)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "address_space_operations", file: !35, line: 404, size: 1280, elements: !1139)
!1139 = !{!1140, !1207, !1277, !1281, !1285, !1291, !1297, !1301, !1306, !1310, !1314, !1318, !1346, !1350, !1354, !1358, !1363, !1367, !1374, !1378}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "writepage", scope: !1138, file: !35, line: 405, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{!100, !1144, !1205}
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !1146, line: 74, size: 512, align: 128, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!1147 = !{!1148, !1149, !1199, !1204}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1145, file: !1146, line: 75, baseType: !76, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !1146, line: 83, baseType: !1150, size: 320, offset: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1145, file: !1146, line: 83, size: 320, elements: !1151)
!1151 = !{!1152, !1173, !1187, !1191, !1198}
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1146, line: 84, baseType: !1153, size: 320)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1146, line: 84, size: 320, elements: !1154)
!1154 = !{!1155, !1166, !1167, !1172}
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1146, line: 90, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1146, line: 90, size: 128, elements: !1157)
!1157 = !{!1158, !1159, !1164, !1165}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1156, file: !1146, line: 91, baseType: !360, size: 128)
!1159 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !1146, line: 94, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !1146, line: 94, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1160, file: !1146, line: 96, baseType: !163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1160, file: !1146, line: 98, baseType: !7, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "buddy_list", scope: !1156, file: !1146, line: 102, baseType: !360, size: 128)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "pcp_list", scope: !1156, file: !1146, line: 103, baseType: !360, size: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1153, file: !1146, line: 106, baseType: !1117, size: 64, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1153, file: !1146, line: 107, baseType: !1168, size: 64, offset: 192)
!1168 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1153, file: !1146, line: 107, size: 64, elements: !1169)
!1169 = !{!1170, !1171}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1168, file: !1146, line: 108, baseType: !76, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "share", scope: !1168, file: !1146, line: 109, baseType: !76, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1153, file: !1146, line: 117, baseType: !76, size: 64, offset: 256)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1146, line: 119, baseType: !1174, size: 320)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1146, line: 119, size: 320, elements: !1175)
!1175 = !{!1176, !1177, !1180, !1181, !1182}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pp_magic", scope: !1174, file: !1146, line: 124, baseType: !76, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pp", scope: !1174, file: !1146, line: 125, baseType: !1178, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "page_pool", file: !1146, line: 125, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_pp_mapping_pad", scope: !1174, file: !1146, line: 126, baseType: !76, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1174, file: !1146, line: 127, baseType: !76, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, scope: !1174, file: !1146, line: 128, baseType: !1183, size: 64, offset: 256)
!1183 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1174, file: !1146, line: 128, size: 64, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr_upper", scope: !1183, file: !1146, line: 133, baseType: !76, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "pp_frag_count", scope: !1183, file: !1146, line: 138, baseType: !318, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1146, line: 141, baseType: !1188, size: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1146, line: 141, size: 64, elements: !1189)
!1189 = !{!1190}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1188, file: !1146, line: 142, baseType: !76, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, scope: !1150, file: !1146, line: 144, baseType: !1192, size: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1150, file: !1146, line: 144, size: 128, elements: !1193)
!1193 = !{!1194, !1197}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1192, file: !1146, line: 146, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !1146, line: 146, flags: DIFlagFwdDecl)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1192, file: !1146, line: 147, baseType: !163, size: 64, offset: 64)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1150, file: !1146, line: 161, baseType: !383, size: 128, align: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, scope: !1145, file: !1146, line: 164, baseType: !1200, size: 32, offset: 384)
!1200 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1145, file: !1146, line: 164, size: 32, elements: !1201)
!1201 = !{!1202, !1203}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1200, file: !1146, line: 169, baseType: !340, size: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1200, file: !1146, line: 177, baseType: !7, size: 32)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1145, file: !1146, line: 181, baseType: !340, size: 32, offset: 416)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "writeback_control", file: !35, line: 309, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "read_folio", scope: !1138, file: !35, line: 406, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!100, !877, !1211}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "folio", file: !1146, line: 293, size: 1536, elements: !1213)
!1213 = !{!1214, !1244, !1258}
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1146, line: 295, baseType: !1215, size: 512)
!1215 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1146, line: 295, size: 512, elements: !1216)
!1216 = !{!1217, !1243}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !1146, line: 296, baseType: !1218, size: 448)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1215, file: !1146, line: 296, size: 448, elements: !1219)
!1219 = !{!1220, !1221, !1230, !1231, !1232, !1241, !1242}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1218, file: !1146, line: 298, baseType: !76, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1146, line: 299, baseType: !1222, size: 128, offset: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1146, line: 299, size: 128, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1222, file: !1146, line: 300, baseType: !360, size: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !1146, line: 302, baseType: !1226, size: 128)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1222, file: !1146, line: 302, size: 128, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "__filler", scope: !1226, file: !1146, line: 303, baseType: !163, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mlock_count", scope: !1226, file: !1146, line: 305, baseType: !7, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1218, file: !1146, line: 310, baseType: !1117, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1218, file: !1146, line: 311, baseType: !76, size: 64, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !1146, line: 312, baseType: !1233, size: 64, offset: 320)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1218, file: !1146, line: 312, size: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !1146, line: 313, baseType: !163, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !1233, file: !1146, line: 314, baseType: !1237, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "swp_entry_t", file: !1146, line: 257, baseType: !1238)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1146, line: 255, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1238, file: !1146, line: 256, baseType: !76, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1218, file: !1146, line: 316, baseType: !340, size: 32, offset: 384)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1218, file: !1146, line: 317, baseType: !340, size: 32, offset: 416)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1215, file: !1146, line: 323, baseType: !1145, size: 512, align: 128)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1146, line: 325, baseType: !1245, size: 512, offset: 512)
!1245 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1146, line: 325, size: 512, elements: !1246)
!1246 = !{!1247, !1257}
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1245, file: !1146, line: 326, baseType: !1248, size: 320)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1245, file: !1146, line: 326, size: 320, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1254, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_1", scope: !1248, file: !1146, line: 327, baseType: !76, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "_head_1", scope: !1248, file: !1146, line: 328, baseType: !76, size: 64, offset: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_avail", scope: !1248, file: !1146, line: 329, baseType: !76, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_entire_mapcount", scope: !1248, file: !1146, line: 331, baseType: !340, size: 32, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "_nr_pages_mapped", scope: !1248, file: !1146, line: 332, baseType: !340, size: 32, offset: 224)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_pincount", scope: !1248, file: !1146, line: 333, baseType: !340, size: 32, offset: 256)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "_folio_nr_pages", scope: !1248, file: !1146, line: 335, baseType: !7, size: 32, offset: 288)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "__page_1", scope: !1245, file: !1146, line: 339, baseType: !1145, size: 512, align: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, scope: !1212, file: !1146, line: 341, baseType: !1259, size: 512, offset: 1024)
!1259 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1146, line: 341, size: 512, elements: !1260)
!1260 = !{!1261, !1270, !1276}
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1146, line: 342, baseType: !1262, size: 384)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1259, file: !1146, line: 342, size: 384, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1267, !1268, !1269}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2", scope: !1262, file: !1146, line: 343, baseType: !76, size: 64)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2", scope: !1262, file: !1146, line: 344, baseType: !76, size: 64, offset: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_subpool", scope: !1262, file: !1146, line: 346, baseType: !163, size: 64, offset: 128)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup", scope: !1262, file: !1146, line: 347, baseType: !163, size: 64, offset: 192)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_cgroup_rsvd", scope: !1262, file: !1146, line: 348, baseType: !163, size: 64, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "_hugetlb_hwpoison", scope: !1262, file: !1146, line: 349, baseType: !163, size: 64, offset: 320)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1259, file: !1146, line: 352, baseType: !1271, size: 256)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1259, file: !1146, line: 352, size: 256, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "_flags_2a", scope: !1271, file: !1146, line: 353, baseType: !76, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "_head_2a", scope: !1271, file: !1146, line: 354, baseType: !76, size: 64, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "_deferred_list", scope: !1271, file: !1146, line: 356, baseType: !360, size: 128, offset: 128)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "__page_2", scope: !1259, file: !1146, line: 359, baseType: !1145, size: 512, align: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "writepages", scope: !1138, file: !35, line: 409, baseType: !1278, size: 64, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DISubroutineType(types: !1280)
!1280 = !{!100, !1117, !1205}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_folio", scope: !1138, file: !35, line: 412, baseType: !1282, size: 64, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!155, !1117, !1211}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "readahead", scope: !1138, file: !35, line: 414, baseType: !1286, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1287, size: 64)
!1287 = !DISubroutineType(types: !1288)
!1288 = !{null, !1289}
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "readahead_control", file: !35, line: 310, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "write_begin", scope: !1138, file: !35, line: 416, baseType: !1292, size: 64, offset: 320)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!100, !877, !1117, !309, !7, !1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "write_end", scope: !1138, file: !35, line: 419, baseType: !1298, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!100, !877, !1117, !309, !7, !7, !1144, !163}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bmap", scope: !1138, file: !35, line: 424, baseType: !1302, size: 64, offset: 448)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!1305, !1117, !1305}
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !156, line: 131, baseType: !136)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_folio", scope: !1138, file: !35, line: 425, baseType: !1307, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !1211, !301, !301}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "release_folio", scope: !1138, file: !35, line: 426, baseType: !1311, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{!155, !1211, !965}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "free_folio", scope: !1138, file: !35, line: 427, baseType: !1315, size: 64, offset: 640)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1211}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "direct_IO", scope: !1138, file: !35, line: 428, baseType: !1319, size: 64, offset: 704)
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!913, !1322, !1344}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kiocb", file: !35, line: 373, size: 384, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1331, !1332, !1333, !1334}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ki_filp", scope: !1323, file: !35, line: 374, baseType: !877, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ki_pos", scope: !1323, file: !35, line: 375, baseType: !309, size: 64, offset: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ki_complete", scope: !1323, file: !35, line: 376, baseType: !1328, size: 64, offset: 128)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{null, !1322, !873}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1323, file: !35, line: 377, baseType: !163, size: 64, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ki_flags", scope: !1323, file: !35, line: 378, baseType: !100, size: 32, offset: 256)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ki_ioprio", scope: !1323, file: !35, line: 379, baseType: !141, size: 16, offset: 288)
!1334 = !DIDerivedType(tag: DW_TAG_member, scope: !1323, file: !35, line: 380, baseType: !1335, size: 64, offset: 320)
!1335 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1323, file: !35, line: 380, size: 64, elements: !1336)
!1336 = !{!1337, !1340}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "ki_waitq", scope: !1335, file: !35, line: 386, baseType: !1338, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DICompositeType(tag: DW_TAG_structure_type, name: "wait_page_queue", file: !35, line: 386, flags: DIFlagFwdDecl)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dio_complete", scope: !1335, file: !35, line: 395, baseType: !1341, size: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1342, size: 64)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!913, !163}
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !35, line: 69, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_folio", scope: !1138, file: !35, line: 433, baseType: !1347, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!100, !1117, !1211, !1211, !21}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "launder_folio", scope: !1138, file: !35, line: 435, baseType: !1351, size: 64, offset: 832)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{!100, !1211}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "is_partially_uptodate", scope: !1138, file: !35, line: 436, baseType: !1355, size: 64, offset: 896)
!1355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1356, size: 64)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!155, !1211, !301, !301}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_dirty_writeback", scope: !1138, file: !35, line: 438, baseType: !1359, size: 64, offset: 960)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = !DISubroutineType(types: !1361)
!1361 = !{null, !1211, !1362, !1362}
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "error_remove_page", scope: !1138, file: !35, line: 439, baseType: !1364, size: 64, offset: 1024)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DISubroutineType(types: !1366)
!1366 = !{!100, !1117, !1144}
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "swap_activate", scope: !1138, file: !35, line: 442, baseType: !1368, size: 64, offset: 1088)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{!100, !1371, !877, !1373}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "swap_info_struct", file: !35, line: 66, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "swap_deactivate", scope: !1138, file: !35, line: 444, baseType: !1375, size: 64, offset: 1152)
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1376, size: 64)
!1376 = !DISubroutineType(types: !1377)
!1377 = !{null, !877}
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "swap_rw", scope: !1138, file: !35, line: 445, baseType: !1379, size: 64, offset: 1216)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!100, !1322, !1344}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !35, line: 486, baseType: !76, size: 64, offset: 896)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "i_mmap_rwsem", scope: !1118, file: !35, line: 487, baseType: !541, size: 320, offset: 960)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wb_err", scope: !1118, file: !35, line: 488, baseType: !1385, size: 32, offset: 1280)
!1385 = !DIDerivedType(tag: DW_TAG_typedef, name: "errseq_t", file: !1386, line: 8, baseType: !159)
!1386 = !DIFile(filename: "./include/linux/errseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d2a47b203460bf1ca4699129d5b0ee9")
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "private_lock", scope: !1118, file: !35, line: 489, baseType: !393, size: 32, offset: 1312)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "private_list", scope: !1118, file: !35, line: 490, baseType: !360, size: 128, offset: 1344)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !1118, file: !35, line: 491, baseType: !163, size: 64, offset: 1472)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1108, file: !1077, line: 180, baseType: !1391, size: 64, offset: 320)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!913, !877, !1021, !1107, !299, !309, !301}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1108, file: !1077, line: 182, baseType: !1391, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1108, file: !1077, line: 184, baseType: !1396, size: 64, offset: 448)
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = !DISubroutineType(types: !1398)
!1398 = !{!100, !877, !1021, !1107, !1399}
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !1146, line: 625, size: 1344, elements: !1401)
!1401 = !{!1402, !1411, !1580, !1586, !1593, !1594, !1599, !1600, !1605, !1606, !1609, !1613, !1614, !1615, !1616, !1617, !1620}
!1402 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1146, line: 628, baseType: !1403, size: 128)
!1403 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1146, line: 628, size: 128, elements: !1404)
!1404 = !{!1405, !1410}
!1405 = !DIDerivedType(tag: DW_TAG_member, scope: !1403, file: !1146, line: 629, baseType: !1406, size: 128)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1403, file: !1146, line: 629, size: 128, elements: !1407)
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !1406, file: !1146, line: 631, baseType: !76, size: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !1406, file: !1146, line: 632, baseType: !76, size: 64, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !1403, file: !1146, line: 635, baseType: !383, size: 128, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !1400, file: !1146, line: 639, baseType: !1412, size: 64, offset: 128)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !1146, line: 733, size: 10240, elements: !1414)
!1414 = !{!1415, !1578}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1146, line: 734, baseType: !1416, size: 10240)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1146, line: 734, size: 10240, elements: !1417)
!1417 = !{!1418, !1422, !1436, !1440, !1441, !1442, !1443, !1444, !1445, !1454, !1455, !1456, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1495, !1497, !1500, !1547, !1548, !1549, !1552, !1553, !1554, !1557, !1558, !1559, !1565, !1566}
!1418 = !DIDerivedType(tag: DW_TAG_member, scope: !1416, file: !1146, line: 739, baseType: !1419, size: 512, align: 512)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1416, file: !1146, line: 739, size: 512, align: 512, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !1419, file: !1146, line: 747, baseType: !340, size: 32)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !1416, file: !1146, line: 750, baseType: !1423, size: 128, offset: 512)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !1424, line: 218, size: 128, elements: !1425)
!1424 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!1425 = !{!1426, !1434, !1435}
!1426 = !DIDerivedType(tag: DW_TAG_member, scope: !1423, file: !1424, line: 219, baseType: !1427, size: 32)
!1427 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1423, file: !1424, line: 219, size: 32, elements: !1428)
!1428 = !{!1429, !1430}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !1427, file: !1424, line: 220, baseType: !393, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !1427, file: !1424, line: 221, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !1424, line: 197, baseType: !1432)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1424, line: 197, elements: !1433)
!1433 = !{}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !1423, file: !1424, line: 223, baseType: !7, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !1423, file: !1424, line: 224, baseType: !163, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !1416, file: !1146, line: 752, baseType: !1437, size: 64, offset: 640)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = !DISubroutineType(types: !1439)
!1439 = !{!76, !877, !76, !76, !76, !76}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !1416, file: !1146, line: 756, baseType: !76, size: 64, offset: 704)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !1416, file: !1146, line: 757, baseType: !76, size: 64, offset: 768)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !1416, file: !1146, line: 760, baseType: !76, size: 64, offset: 832)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !1416, file: !1146, line: 761, baseType: !76, size: 64, offset: 896)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !1416, file: !1146, line: 763, baseType: !76, size: 64, offset: 960)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1416, file: !1146, line: 764, baseType: !1446, size: 64, offset: 1024)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !1448, line: 299, baseType: !1449)
!1448 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1448, line: 299, size: 64, elements: !1450)
!1450 = !{!1451}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !1449, file: !1448, line: 299, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !1453, line: 18, baseType: !76)
!1453 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !1416, file: !1146, line: 773, baseType: !340, size: 32, offset: 1088)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !1416, file: !1146, line: 785, baseType: !340, size: 32, offset: 1120)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !1416, file: !1146, line: 795, baseType: !1457, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !1146, line: 726, size: 128, elements: !1459)
!1459 = !{!1460, !1461}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !1458, file: !1146, line: 727, baseType: !136, size: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !1458, file: !1146, line: 728, baseType: !100, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !1416, file: !1146, line: 801, baseType: !76, size: 64, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !1416, file: !1146, line: 804, baseType: !318, size: 64, offset: 1280)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !1416, file: !1146, line: 806, baseType: !100, size: 32, offset: 1344)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !1416, file: !1146, line: 808, baseType: !393, size: 32, offset: 1376)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !1416, file: !1146, line: 823, baseType: !541, size: 320, offset: 1408)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !1416, file: !1146, line: 825, baseType: !360, size: 128, offset: 1728)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !1416, file: !1146, line: 845, baseType: !100, size: 32, offset: 1856)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !1416, file: !1146, line: 849, baseType: !76, size: 64, offset: 1920)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !1416, file: !1146, line: 850, baseType: !76, size: 64, offset: 1984)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !1416, file: !1146, line: 852, baseType: !76, size: 64, offset: 2048)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !1416, file: !1146, line: 853, baseType: !76, size: 64, offset: 2112)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !1416, file: !1146, line: 854, baseType: !320, size: 64, offset: 2176)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !1416, file: !1146, line: 855, baseType: !76, size: 64, offset: 2240)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !1416, file: !1146, line: 856, baseType: !76, size: 64, offset: 2304)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !1416, file: !1146, line: 857, baseType: !76, size: 64, offset: 2368)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !1416, file: !1146, line: 858, baseType: !76, size: 64, offset: 2432)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !1416, file: !1146, line: 865, baseType: !729, size: 32, offset: 2496)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !1416, file: !1146, line: 867, baseType: !393, size: 32, offset: 2528)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !1416, file: !1146, line: 869, baseType: !76, size: 64, offset: 2560)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !1416, file: !1146, line: 869, baseType: !76, size: 64, offset: 2624)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !1416, file: !1146, line: 869, baseType: !76, size: 64, offset: 2688)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !1416, file: !1146, line: 869, baseType: !76, size: 64, offset: 2752)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !1416, file: !1146, line: 870, baseType: !76, size: 64, offset: 2816)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !1416, file: !1146, line: 870, baseType: !76, size: 64, offset: 2880)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !1416, file: !1146, line: 870, baseType: !76, size: 64, offset: 2944)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !1416, file: !1146, line: 871, baseType: !76, size: 64, offset: 3008)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !1416, file: !1146, line: 871, baseType: !76, size: 64, offset: 3072)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !1416, file: !1146, line: 871, baseType: !76, size: 64, offset: 3136)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !1416, file: !1146, line: 871, baseType: !76, size: 64, offset: 3200)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !1416, file: !1146, line: 873, baseType: !1492, size: 3328, offset: 3264)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 3328, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 52)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !1416, file: !1146, line: 875, baseType: !1496, size: 1280, offset: 6592)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 1280, elements: !209)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !1416, file: !1146, line: 877, baseType: !1498, size: 64, offset: 7872)
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1499, size: 64)
!1499 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !1146, line: 877, flags: DIFlagFwdDecl)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1416, file: !1146, line: 880, baseType: !1501, size: 1088, offset: 7936)
!1501 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !1502, line: 72, baseType: !1503)
!1502 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!1503 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1502, line: 23, size: 1088, elements: !1504)
!1504 = !{!1505, !1506, !1507, !1508, !1509, !1512, !1513, !1514, !1515, !1542, !1543, !1544}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !1503, file: !1502, line: 28, baseType: !136, size: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !1503, file: !1502, line: 38, baseType: !320, size: 64, offset: 64)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !1503, file: !1502, line: 40, baseType: !76, size: 64, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !1503, file: !1502, line: 43, baseType: !541, size: 320, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !1503, file: !1502, line: 44, baseType: !1510, size: 64, offset: 512)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !1502, line: 44, flags: DIFlagFwdDecl)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1503, file: !1502, line: 48, baseType: !76, size: 64, offset: 576)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1503, file: !1502, line: 59, baseType: !314, size: 256, offset: 640)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !1503, file: !1502, line: 60, baseType: !163, size: 64, offset: 896)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !1503, file: !1502, line: 61, baseType: !1516, size: 64, offset: 960)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1518)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !1519, line: 13, size: 1216, elements: !1520)
!1519 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1526, !1527, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1518, file: !1519, line: 14, baseType: !163, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1518, file: !1519, line: 15, baseType: !76, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !1518, file: !1519, line: 17, baseType: !76, size: 64, offset: 128)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !1518, file: !1519, line: 17, baseType: !76, size: 64, offset: 192)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !1518, file: !1519, line: 18, baseType: !76, size: 64, offset: 256)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !1518, file: !1519, line: 18, baseType: !76, size: 64, offset: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1518, file: !1519, line: 19, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !1518, file: !1519, line: 21, baseType: !873, size: 64, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !1518, file: !1519, line: 23, baseType: !873, size: 64, offset: 512)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !1518, file: !1519, line: 24, baseType: !873, size: 64, offset: 576)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !1518, file: !1519, line: 25, baseType: !873, size: 64, offset: 640)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !1518, file: !1519, line: 26, baseType: !873, size: 64, offset: 704)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !1518, file: !1519, line: 27, baseType: !873, size: 64, offset: 768)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !1518, file: !1519, line: 28, baseType: !873, size: 64, offset: 832)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !1518, file: !1519, line: 29, baseType: !873, size: 64, offset: 896)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !1518, file: !1519, line: 30, baseType: !873, size: 64, offset: 960)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !1518, file: !1519, line: 31, baseType: !873, size: 64, offset: 1024)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !1518, file: !1519, line: 32, baseType: !873, size: 64, offset: 1088)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !1518, file: !1519, line: 33, baseType: !873, size: 64, offset: 1152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !1503, file: !1502, line: 63, baseType: !340, size: 32, offset: 1024)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !1503, file: !1502, line: 69, baseType: !141, size: 16, offset: 1056)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !1503, file: !1502, line: 70, baseType: !1545, size: 16, offset: 1072)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !1546)
!1546 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !91, line: 23, baseType: !569)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1416, file: !1146, line: 882, baseType: !76, size: 64, offset: 9024)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !1416, file: !1146, line: 885, baseType: !393, size: 32, offset: 9088)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !1416, file: !1146, line: 886, baseType: !1550, size: 64, offset: 9152)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !1146, line: 732, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !1416, file: !1146, line: 901, baseType: !680, size: 64, offset: 9216)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !1416, file: !1146, line: 904, baseType: !877, size: 64, offset: 9280)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !1416, file: !1146, line: 906, baseType: !1555, size: 64, offset: 9344)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !1146, line: 906, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !1416, file: !1146, line: 930, baseType: !340, size: 32, offset: 9408)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !1416, file: !1146, line: 933, baseType: !340, size: 32, offset: 9440)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !1416, file: !1146, line: 935, baseType: !1560, size: 64, offset: 9472)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !57, line: 103, size: 64, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !1560, file: !57, line: 104, baseType: !1563, size: 64)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !57, line: 101, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !1416, file: !1146, line: 940, baseType: !318, size: 64, offset: 9536)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !1416, file: !1146, line: 942, baseType: !1567, size: 256, offset: 9600)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1568, line: 98, size: 256, elements: !1569)
!1568 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1567, file: !1568, line: 99, baseType: !318, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1567, file: !1568, line: 100, baseType: !360, size: 128, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1567, file: !1568, line: 101, baseType: !1573, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1568, line: 21, baseType: !1574)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{null, !1577}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !1413, file: !1146, line: 986, baseType: !1579, offset: 10240)
!1579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, elements: !471)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !1400, file: !1146, line: 640, baseType: !1581, size: 64, offset: 192)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !1448, line: 297, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !1448, line: 297, size: 64, elements: !1583)
!1583 = !{!1584}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1582, file: !1448, line: 297, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !1453, line: 19, baseType: !76)
!1586 = !DIDerivedType(tag: DW_TAG_member, scope: !1400, file: !1146, line: 646, baseType: !1587, size: 64, offset: 256)
!1587 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1400, file: !1146, line: 646, size: 64, elements: !1588)
!1588 = !{!1589, !1592}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !1587, file: !1146, line: 647, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !1146, line: 542, baseType: !76)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !1587, file: !1146, line: 648, baseType: !1591, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !1400, file: !1146, line: 666, baseType: !100, size: 32, offset: 320)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !1400, file: !1146, line: 667, baseType: !1595, size: 64, offset: 384)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !1146, line: 579, size: 320, elements: !1597)
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1596, file: !1146, line: 580, baseType: !541, size: 320)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !1400, file: !1146, line: 670, baseType: !155, size: 8, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !1400, file: !1146, line: 681, baseType: !1601, size: 256, offset: 512)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1400, file: !1146, line: 678, size: 256, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1601, file: !1146, line: 679, baseType: !533, size: 192, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1601, file: !1146, line: 680, baseType: !76, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !1400, file: !1146, line: 689, baseType: !360, size: 128, offset: 768)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !1400, file: !1146, line: 691, baseType: !1607, size: 64, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !1146, line: 691, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1400, file: !1146, line: 694, baseType: !1610, size: 64, offset: 960)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !1146, line: 694, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !1400, file: !1146, line: 697, baseType: !76, size: 64, offset: 1024)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !1400, file: !1146, line: 699, baseType: !877, size: 64, offset: 1088)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !1400, file: !1146, line: 700, baseType: !163, size: 64, offset: 1152)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !1400, file: !1146, line: 711, baseType: !318, size: 64, offset: 1216)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !1400, file: !1146, line: 717, baseType: !1618, size: 64, offset: 1280)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !1146, line: 717, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !1400, file: !1146, line: 722, baseType: !1621, offset: 1344)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !1146, line: 570, elements: !1433)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1096, file: !1077, line: 90, baseType: !1623, size: 64, offset: 192)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1096, file: !1077, line: 91, baseType: !1625, size: 64, offset: 256)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1067, file: !1016, line: 120, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!1630, !1039}
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !29, line: 39, size: 384, elements: !1633)
!1633 = !{!1634, !1635, !1639, !1643, !1649, !1653}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1632, file: !29, line: 40, baseType: !28, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1632, file: !29, line: 41, baseType: !1636, size: 64, offset: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!155}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1632, file: !29, line: 42, baseType: !1640, size: 64, offset: 128)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!163}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1632, file: !29, line: 43, baseType: !1644, size: 64, offset: 192)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DISubroutineType(types: !1646)
!1646 = !{!1528, !1647}
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !29, line: 19, flags: DIFlagFwdDecl)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1632, file: !29, line: 44, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!1528}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1632, file: !29, line: 45, baseType: !790, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1067, file: !1016, line: 121, baseType: !1655, size: 64, offset: 256)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1528, !1039}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1067, file: !1016, line: 122, baseType: !1659, size: 64, offset: 320)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{null, !1039, !1662, !1663}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1015, file: !1016, line: 70, baseType: !1665, size: 64, offset: 384)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1667, line: 190, size: 1152, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!1668 = !{!1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1762, !1763, !1764, !1765, !1766, !1769}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1666, file: !1667, line: 191, baseType: !340, size: 32)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1666, file: !1667, line: 192, baseType: !340, size: 32, offset: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1666, file: !1667, line: 202, baseType: !1665, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1666, file: !1667, line: 203, baseType: !598, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1666, file: !1667, line: 205, baseType: !533, size: 192, align: 64, offset: 192)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1666, file: !1667, line: 207, baseType: !1528, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1666, file: !1667, line: 208, baseType: !7, size: 32, offset: 448)
!1676 = !DIDerivedType(tag: DW_TAG_member, scope: !1666, file: !1667, line: 209, baseType: !1677, size: 256, offset: 512)
!1677 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1666, file: !1667, line: 209, size: 256, elements: !1678)
!1678 = !{!1679, !1688, !1692}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1677, file: !1667, line: 210, baseType: !1680, size: 256)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1667, line: 153, size: 256, elements: !1681)
!1681 = !{!1682, !1683, !1684, !1687}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1680, file: !1667, line: 154, baseType: !76, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1680, file: !1667, line: 156, baseType: !1129, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1680, file: !1667, line: 162, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1667, line: 162, flags: DIFlagFwdDecl)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !1680, file: !1667, line: 167, baseType: !76, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1677, file: !1667, line: 211, baseType: !1689, size: 64)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1667, line: 170, size: 64, elements: !1690)
!1690 = !{!1691}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1689, file: !1667, line: 171, baseType: !1665, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1677, file: !1667, line: 212, baseType: !1693, size: 256)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1667, line: 174, size: 256, elements: !1694)
!1694 = !{!1695, !1757, !1760, !1761}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1693, file: !1667, line: 175, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1698)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1667, line: 271, size: 768, elements: !1699)
!1699 = !{!1700, !1720, !1724, !1728, !1729, !1734, !1738, !1742, !1743, !1744, !1745, !1753}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1698, file: !1667, line: 276, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!100, !1704}
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1667, line: 251, size: 1216, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1705, file: !1667, line: 253, baseType: !1665, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1705, file: !1667, line: 254, baseType: !877, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1705, file: !1667, line: 255, baseType: !295, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1705, file: !1667, line: 256, baseType: !163, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1705, file: !1667, line: 259, baseType: !314, size: 256, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1705, file: !1667, line: 260, baseType: !314, size: 256, offset: 512)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1705, file: !1667, line: 261, baseType: !100, size: 32, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1705, file: !1667, line: 262, baseType: !360, size: 128, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1705, file: !1667, line: 263, baseType: !299, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1705, file: !1667, line: 265, baseType: !301, size: 64, offset: 1024)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1705, file: !1667, line: 266, baseType: !155, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1705, file: !1667, line: 267, baseType: !155, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1705, file: !1667, line: 268, baseType: !1610, size: 64, offset: 1152)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1698, file: !1667, line: 277, baseType: !1721, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{null, !1704}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1698, file: !1667, line: 290, baseType: !1725, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!100, !295, !163}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1698, file: !1667, line: 292, baseType: !292, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1698, file: !1667, line: 293, baseType: !1730, size: 64, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!163, !295, !163, !1733}
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1698, file: !1667, line: 294, baseType: !1735, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DISubroutineType(types: !1737)
!1737 = !{null, !295, !163}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1698, file: !1667, line: 296, baseType: !1739, size: 64, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!913, !1704, !299, !301, !309}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1698, file: !1667, line: 306, baseType: !301, size: 64, offset: 448)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1698, file: !1667, line: 313, baseType: !155, size: 8, offset: 512)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1698, file: !1667, line: 314, baseType: !1739, size: 64, offset: 576)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1698, file: !1667, line: 317, baseType: !1746, size: 64, offset: 640)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!1749, !1704, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1750, line: 59, baseType: !7)
!1750 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !35, line: 61, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1698, file: !1667, line: 320, baseType: !1754, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!100, !1704, !1399}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1693, file: !1667, line: 176, baseType: !1758, size: 64, offset: 64)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1667, line: 35, flags: DIFlagFwdDecl)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1693, file: !1667, line: 177, baseType: !309, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1693, file: !1667, line: 178, baseType: !1665, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1666, file: !1667, line: 215, baseType: !163, size: 64, offset: 768)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1666, file: !1667, line: 221, baseType: !136, size: 64, offset: 832)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1666, file: !1667, line: 223, baseType: !143, size: 16, offset: 896)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1666, file: !1667, line: 224, baseType: !762, size: 16, offset: 912)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1666, file: !1667, line: 225, baseType: !1767, size: 64, offset: 960)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1667, line: 36, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1666, file: !1667, line: 227, baseType: !383, size: 128, align: 64, offset: 1024)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1015, file: !1016, line: 71, baseType: !1771, size: 32, offset: 448)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1772, line: 19, size: 32, elements: !1773)
!1772 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!1773 = !{!1774}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1771, file: !1772, line: 20, baseType: !436, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1015, file: !1016, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1015, file: !1016, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1015, file: !1016, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1015, file: !1016, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1015, file: !1016, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1012, file: !15, line: 47, baseType: !1002, size: 64, offset: 512)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !1012, file: !15, line: 48, baseType: !1021, size: 64, offset: 576)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !1012, file: !15, line: 49, baseType: !1783, size: 64, offset: 640)
!1783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1784, size: 64)
!1784 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !15, line: 49, flags: DIFlagFwdDecl)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !1012, file: !15, line: 50, baseType: !1786, size: 64, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1788, line: 26, size: 256, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1787, file: !1788, line: 27, baseType: !7, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1787, file: !1788, line: 28, baseType: !1792, size: 192, offset: 64)
!1792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1793, line: 43, size: 192, elements: !1794)
!1793 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!1794 = !{!1795, !1796}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1792, file: !1793, line: 44, baseType: !327, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1792, file: !1793, line: 45, baseType: !360, size: 128, offset: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !1003, file: !15, line: 418, baseType: !1798, size: 64, offset: 1408)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !15, line: 53, size: 448, elements: !1800)
!1800 = !{!1801, !1802, !1807, !1811, !1815, !1819}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1799, file: !15, line: 54, baseType: !1084, size: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1799, file: !15, line: 55, baseType: !1803, size: 64, offset: 128)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DISubroutineType(types: !1805)
!1805 = !{!913, !1798, !1806, !299}
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1799, file: !15, line: 57, baseType: !1808, size: 64, offset: 192)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!913, !1798, !1806, !598, !301}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !1799, file: !15, line: 59, baseType: !1812, size: 64, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{null, !1002, !598}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !1799, file: !15, line: 60, baseType: !1816, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!100, !1002}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1799, file: !15, line: 61, baseType: !1820, size: 64, offset: 384)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{null, !1002}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1003, file: !15, line: 419, baseType: !598, size: 64, offset: 1472)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !1003, file: !15, line: 420, baseType: !598, size: 64, offset: 1536)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !1003, file: !15, line: 421, baseType: !1021, size: 64, offset: 1600)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !1003, file: !15, line: 424, baseType: !1827, size: 64, offset: 1664)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !15, line: 424, flags: DIFlagFwdDecl)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !1003, file: !15, line: 425, baseType: !1831, size: 64, offset: 1728)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !526)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !1003, file: !15, line: 426, baseType: !7, size: 32, offset: 1792)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !1003, file: !15, line: 435, baseType: !314, size: 256, offset: 1856)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !1003, file: !15, line: 437, baseType: !1836, size: 64, offset: 2112)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1838, line: 69, size: 320, elements: !1839)
!1838 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1839 = !{!1840, !1841, !1842, !1859, !1861, !1865, !1866}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1837, file: !1838, line: 70, baseType: !598, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1837, file: !1838, line: 71, baseType: !1002, size: 64, offset: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1837, file: !1838, line: 72, baseType: !1843, size: 64, offset: 128)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1838, line: 47, size: 256, elements: !1846)
!1846 = !{!1847, !1848, !1854, !1858}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1838, line: 49, baseType: !7, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1845, file: !1838, line: 51, baseType: !1849, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DISubroutineType(types: !1851)
!1851 = !{!100, !598, !1852}
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1837)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1845, file: !1838, line: 53, baseType: !1855, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!100, !299, !1852}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1845, file: !1838, line: 55, baseType: !790, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1837, file: !1838, line: 73, baseType: !1860, size: 16, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1837, file: !1838, line: 74, baseType: !1862, size: 8, offset: 208)
!1862 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !137, line: 16, baseType: !1863)
!1863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !91, line: 20, baseType: !1864)
!1864 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1837, file: !1838, line: 75, baseType: !161, size: 8, offset: 216)
!1866 = !DIDerivedType(tag: DW_TAG_member, scope: !1837, file: !1838, line: 76, baseType: !1867, size: 64, offset: 256)
!1867 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1837, file: !1838, line: 76, size: 64, elements: !1868)
!1868 = !{!1869, !1870, !1877}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1867, file: !1838, line: 77, baseType: !163, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1867, file: !1838, line: 78, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1873)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1838, line: 86, size: 128, elements: !1874)
!1874 = !{!1875, !1876}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1873, file: !1838, line: 87, baseType: !7, size: 32)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1873, file: !1838, line: 88, baseType: !299, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1867, file: !1838, line: 79, baseType: !1878, size: 64)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1880)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1838, line: 92, size: 256, elements: !1881)
!1881 = !{!1882, !1883, !1884, !1886, !1887}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1880, file: !1838, line: 94, baseType: !7, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1880, file: !1838, line: 95, baseType: !7, size: 32, offset: 32)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1880, file: !1838, line: 96, baseType: !1885, size: 64, offset: 64)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1880, file: !1838, line: 97, baseType: !1843, size: 64, offset: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1880, file: !1838, line: 98, baseType: !163, size: 64, offset: 192)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !1003, file: !15, line: 438, baseType: !7, size: 32, offset: 2176)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !1003, file: !15, line: 441, baseType: !7, size: 32, offset: 2208)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !1003, file: !15, line: 442, baseType: !1827, size: 64, offset: 2240)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !1003, file: !15, line: 443, baseType: !1831, size: 64, offset: 2304)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !1003, file: !15, line: 444, baseType: !155, size: 8, offset: 2368)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !1003, file: !15, line: 451, baseType: !155, size: 8, offset: 2376)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !1003, file: !15, line: 454, baseType: !7, size: 32, offset: 2400)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !1003, file: !15, line: 455, baseType: !1896, size: 64, offset: 2432)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !1898, line: 23, size: 96, elements: !1899)
!1898 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!1899 = !{!1900, !1901, !1902}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !1897, file: !1898, line: 24, baseType: !100, size: 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1897, file: !1898, line: 24, baseType: !100, size: 32, offset: 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1897, file: !1898, line: 24, baseType: !100, size: 32, offset: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1003, file: !15, line: 458, baseType: !1904, size: 64, offset: 2496)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!100}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1003, file: !15, line: 460, baseType: !1908, size: 4032, align: 512, offset: 2560)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1909, size: 4032, elements: !1923)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !15, line: 362, size: 576, elements: !1910)
!1910 = !{!1911, !1912, !1913}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1909, file: !15, line: 363, baseType: !163, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1909, file: !15, line: 364, baseType: !7, size: 32, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1909, file: !15, line: 367, baseType: !1914, size: 448, offset: 128)
!1914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !15, line: 319, size: 448, elements: !1915)
!1915 = !{!1916, !1917}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1914, file: !15, line: 320, baseType: !1002, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1914, file: !15, line: 321, baseType: !1918, size: 384, offset: 64)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1919, line: 40, size: 384, elements: !1920)
!1919 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1920 = !{!1921}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1918, file: !1919, line: 41, baseType: !1922, size: 384, align: 64)
!1922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !533, size: 384, align: 64, elements: !249)
!1923 = !{!1924}
!1924 = !DISubrange(count: 7)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1003, file: !15, line: 463, baseType: !1926, size: 192, offset: 6592)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1927, line: 8, size: 192, elements: !1928)
!1927 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1928 = !{!1929, !1930, !1932}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1926, file: !1927, line: 10, baseType: !7, size: 32)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1926, file: !1927, line: 11, baseType: !1931, size: 64, offset: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1926, file: !1927, line: 12, baseType: !1933, size: 64, offset: 128)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1935, line: 59, size: 48, elements: !1936)
!1935 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1936 = !{!1937, !1938, !1939, !1940, !1941, !1942}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1934, file: !1935, line: 60, baseType: !1545, size: 16)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1934, file: !1935, line: 61, baseType: !1545, size: 16, offset: 16)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1934, file: !1935, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1934, file: !1935, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1934, file: !1935, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1934, file: !1935, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !1003, file: !15, line: 465, baseType: !76, size: 64, offset: 6784)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !1003, file: !15, line: 469, baseType: !7, size: 32, offset: 6848)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !1003, file: !15, line: 470, baseType: !360, size: 128, offset: 6912)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !1003, file: !15, line: 471, baseType: !1947, size: 64, offset: 7040)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1949, line: 33, size: 96, elements: !1950)
!1949 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1950 = !{!1951, !1952, !1953, !1954}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1948, file: !1949, line: 37, baseType: !100, size: 32)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1948, file: !1949, line: 43, baseType: !100, size: 32, offset: 32)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1948, file: !1949, line: 45, baseType: !143, size: 16, offset: 64)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1948, file: !1949, line: 47, baseType: !143, size: 16, offset: 80)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !1003, file: !15, line: 476, baseType: !1956, size: 64, offset: 7104)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !15, line: 378, size: 256, elements: !1958)
!1958 = !{!1959, !1975, !1976, !1977}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1957, file: !15, line: 379, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1962, line: 204, baseType: !1963)
!1962 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1962, line: 197, size: 192, elements: !1964)
!1964 = !{!1965, !1967, !1968, !1969, !1971, !1973}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1963, file: !1962, line: 198, baseType: !1966, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1962, line: 21, baseType: !97)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1963, file: !1962, line: 199, baseType: !92, size: 8, offset: 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1963, file: !1962, line: 200, baseType: !92, size: 8, offset: 40)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1963, file: !1962, line: 201, baseType: !1970, size: 16, offset: 48)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1962, line: 17, baseType: !142)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1963, file: !1962, line: 202, baseType: !1972, size: 64, offset: 64)
!1972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1962, line: 16, baseType: !138)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1963, file: !1962, line: 203, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1962, line: 22, baseType: !138)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1957, file: !15, line: 380, baseType: !7, size: 32, offset: 64)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1957, file: !15, line: 381, baseType: !299, size: 64, offset: 128)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1957, file: !15, line: 382, baseType: !299, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !1003, file: !15, line: 477, baseType: !1957, size: 256, offset: 7168)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !1003, file: !15, line: 480, baseType: !1980, size: 64, offset: 7424)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !15, line: 480, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !1003, file: !15, line: 483, baseType: !1983, size: 64, offset: 7488)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !15, line: 483, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1003, file: !15, line: 488, baseType: !299, size: 64, offset: 7552)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !1003, file: !15, line: 492, baseType: !163, size: 64, offset: 7616)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !1003, file: !15, line: 493, baseType: !7, size: 32, offset: 7680)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !1003, file: !15, line: 495, baseType: !163, size: 64, offset: 7744)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !1003, file: !15, line: 496, baseType: !7, size: 32, offset: 7808)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !1003, file: !15, line: 499, baseType: !7, size: 32, offset: 7840)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !1003, file: !15, line: 500, baseType: !1992, size: 64, offset: 7872)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1994, line: 45, baseType: !1995)
!1994 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !1003, file: !15, line: 503, baseType: !7, size: 32, offset: 7936)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !1003, file: !15, line: 504, baseType: !1998, size: 64, offset: 8000)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !2001, line: 96, size: 192, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!2002 = !{!2003, !2004, !2058, !2061}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !2000, file: !2001, line: 97, baseType: !7, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !2000, file: !2001, line: 98, baseType: !2005, size: 64, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !2001, line: 24, size: 3072, elements: !2007)
!2007 = !{!2008, !2010, !2011, !2012, !2013, !2027, !2028, !2029, !2030, !2042, !2043, !2044, !2055, !2056, !2057}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !2006, file: !2001, line: 26, baseType: !2009, size: 128)
!2009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !318, size: 128, elements: !249)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !2006, file: !2001, line: 27, baseType: !2009, size: 128, offset: 128)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !2006, file: !2001, line: 28, baseType: !100, size: 32, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2006, file: !2001, line: 31, baseType: !393, size: 32, align: 512, offset: 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !2006, file: !2001, line: 32, baseType: !2014, size: 960, offset: 576)
!2014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !2015, line: 206, size: 960, elements: !2016)
!2015 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!2016 = !{!2017, !2018, !2021, !2023, !2024, !2026}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2014, file: !2015, line: 207, baseType: !386, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !2014, file: !2015, line: 208, baseType: !2019, size: 256, offset: 64)
!2019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2020, size: 256, elements: !209)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !2014, file: !2015, line: 209, baseType: !2022, size: 256, offset: 320)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !209)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2014, file: !2015, line: 213, baseType: !873, size: 64, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !2014, file: !2015, line: 215, baseType: !2025, size: 256, offset: 640)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 256, elements: !209)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2014, file: !2015, line: 216, baseType: !161, size: 8, offset: 896)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2006, file: !2001, line: 33, baseType: !76, size: 64, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2006, file: !2001, line: 34, baseType: !76, size: 64, offset: 1600)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !2006, file: !2001, line: 35, baseType: !155, size: 8, offset: 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !2006, file: !2001, line: 36, baseType: !2031, size: 320, offset: 1728)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2032, line: 11, size: 320, elements: !2033)
!2032 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!2033 = !{!2034, !2035, !2036, !2041}
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2031, file: !2032, line: 16, baseType: !449, size: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2031, file: !2032, line: 17, baseType: !76, size: 64, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2031, file: !2032, line: 18, baseType: !2037, size: 64, offset: 192)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DISubroutineType(types: !2039)
!2039 = !{null, !2040}
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2031, file: !2032, line: 19, baseType: !159, size: 32, offset: 256)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2006, file: !2001, line: 37, baseType: !1567, size: 256, offset: 2048)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !2006, file: !2001, line: 38, baseType: !383, size: 128, align: 64, offset: 2304)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !2006, file: !2001, line: 39, baseType: !2045, size: 64, offset: 2432)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !2001, line: 49, size: 768, elements: !2047)
!2047 = !{!2048, !2049, !2050, !2051, !2052, !2053, !2054}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2046, file: !2001, line: 50, baseType: !393, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !2046, file: !2001, line: 51, baseType: !2022, size: 256, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !2046, file: !2001, line: 53, baseType: !2022, size: 256, offset: 320)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2046, file: !2001, line: 54, baseType: !76, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !2046, file: !2001, line: 55, baseType: !2045, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !2046, file: !2001, line: 56, baseType: !100, size: 32, offset: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !2046, file: !2001, line: 57, baseType: !100, size: 32, offset: 736)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !2006, file: !2001, line: 40, baseType: !76, size: 64, offset: 2496)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2006, file: !2001, line: 42, baseType: !100, size: 32, offset: 2560)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !2006, file: !2001, line: 43, baseType: !1999, size: 64, offset: 2624)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !2000, file: !2001, line: 99, baseType: !2059, offset: 128)
!2059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !2060, line: 211, elements: !1433)
!2060 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !2000, file: !2001, line: 100, baseType: !2062, size: 64, offset: 128)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !2001, line: 63, size: 3008, elements: !2064)
!2064 = !{!2065, !2066, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2096}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2063, file: !2001, line: 64, baseType: !2045, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2063, file: !2001, line: 65, baseType: !2067, size: 192, offset: 64)
!2067 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2045, size: 192, elements: !262)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !2063, file: !2001, line: 67, baseType: !100, size: 32, offset: 256)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !2063, file: !2001, line: 68, baseType: !314, size: 256, offset: 320)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2063, file: !2001, line: 69, baseType: !393, size: 32, offset: 576)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !2063, file: !2001, line: 70, baseType: !314, size: 256, offset: 640)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !2063, file: !2001, line: 71, baseType: !76, size: 64, offset: 896)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !2063, file: !2001, line: 72, baseType: !76, size: 64, offset: 960)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !2063, file: !2001, line: 73, baseType: !76, size: 64, offset: 1024)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !2063, file: !2001, line: 74, baseType: !76, size: 64, offset: 1088)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !2063, file: !2001, line: 75, baseType: !76, size: 64, offset: 1152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !2063, file: !2001, line: 76, baseType: !76, size: 64, offset: 1216)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !2063, file: !2001, line: 77, baseType: !76, size: 64, offset: 1280)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !2063, file: !2001, line: 78, baseType: !76, size: 64, offset: 1344)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !2063, file: !2001, line: 79, baseType: !155, size: 8, offset: 1408)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !2063, file: !2001, line: 80, baseType: !76, size: 64, offset: 1472)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !2063, file: !2001, line: 81, baseType: !314, size: 256, offset: 1536)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !2063, file: !2001, line: 82, baseType: !1787, size: 256, offset: 1792)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !2063, file: !2001, line: 84, baseType: !340, size: 32, offset: 2048)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !2063, file: !2001, line: 87, baseType: !76, size: 64, offset: 2112)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !2063, file: !2001, line: 88, baseType: !76, size: 64, offset: 2176)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2063, file: !2001, line: 89, baseType: !2088, size: 704, offset: 2240)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !1568, line: 111, size: 704, elements: !2089)
!2089 = !{!2090, !2091, !2092, !2095}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2088, file: !1568, line: 112, baseType: !1567, size: 256)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2088, file: !1568, line: 113, baseType: !2031, size: 320, offset: 256)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2088, file: !1568, line: 116, baseType: !2093, size: 64, offset: 576)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !1568, line: 18, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2088, file: !1568, line: 117, baseType: !100, size: 32, offset: 640)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !2063, file: !2001, line: 90, baseType: !1999, size: 64, offset: 2944)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !1003, file: !15, line: 515, baseType: !2098, size: 64, offset: 8064)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2100, line: 117, size: 128, elements: !2101)
!2100 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2101 = !{!2102, !2103, !2104}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2099, file: !2100, line: 118, baseType: !526, size: 32)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2099, file: !2100, line: 119, baseType: !526, size: 32, offset: 32)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2099, file: !2100, line: 120, baseType: !873, size: 64, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !1003, file: !15, line: 516, baseType: !7, size: 32, offset: 8128)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !1003, file: !15, line: 519, baseType: !7, size: 32, offset: 8160)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !1003, file: !15, line: 520, baseType: !2108, size: 64, offset: 8192)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !1003, file: !15, line: 523, baseType: !2110, size: 64, offset: 8256)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !15, line: 523, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !1003, file: !15, line: 524, baseType: !7, size: 32, offset: 8320)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !1003, file: !15, line: 525, baseType: !2115, size: 64, offset: 8384)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !15, line: 525, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !1003, file: !15, line: 526, baseType: !7, size: 32, offset: 8448)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !1003, file: !15, line: 533, baseType: !163, size: 64, offset: 8512)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !1003, file: !15, line: 534, baseType: !7, size: 32, offset: 8576)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !1003, file: !15, line: 535, baseType: !164, size: 64, offset: 8640)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !1003, file: !15, line: 536, baseType: !7, size: 32, offset: 8704)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !1003, file: !15, line: 539, baseType: !100, size: 32, offset: 8736)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !1003, file: !15, line: 540, baseType: !2125, size: 64, offset: 8768)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !2127, line: 32, size: 64, elements: !2128)
!2127 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!2128 = !{!2129, !2130}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2126, file: !2127, line: 33, baseType: !526, size: 32)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2126, file: !2127, line: 34, baseType: !526, size: 32, offset: 32)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !1003, file: !15, line: 563, baseType: !360, size: 128, offset: 8832)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !1003, file: !15, line: 565, baseType: !360, size: 128, offset: 8960)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !1003, file: !15, line: 568, baseType: !2134, size: 64, offset: 9088)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{null}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !1003, file: !15, line: 570, baseType: !340, size: 32, offset: 9152)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !35, line: 2382, baseType: !978, size: 64, offset: 448)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "fs_supers", scope: !979, file: !35, line: 2383, baseType: !445, size: 64, offset: 512)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "s_lock_key", scope: !979, file: !35, line: 2385, baseType: !2141, offset: 576)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2060, line: 206, elements: !1433)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount_key", scope: !979, file: !35, line: 2386, baseType: !2141, offset: 576)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_key", scope: !979, file: !35, line: 2387, baseType: !2141, offset: 576)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers_key", scope: !979, file: !35, line: 2388, baseType: !2145, offset: 576)
!2145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2141, elements: !262)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock_key", scope: !979, file: !35, line: 2390, baseType: !2141, offset: 576)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_key", scope: !979, file: !35, line: 2391, baseType: !2141, offset: 576)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "invalidate_lock_key", scope: !979, file: !35, line: 2392, baseType: !2141, offset: 576)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "i_mutex_dir_key", scope: !979, file: !35, line: 2393, baseType: !2141, offset: 576)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "s_op", scope: !970, file: !35, line: 1197, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2153)
!2153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "super_operations", file: !35, line: 2057, size: 1664, elements: !2154)
!2154 = !{!2155, !2159, !2163, !2164, !2168, !2172, !2176, !2177, !2178, !2182, !2186, !2190, !2191, !2192, !2198, !2202, !2203, !2207, !2208, !2209, !2210, !2214, !2218, !2265, !2280, !2281}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_inode", scope: !2153, file: !35, line: 2058, baseType: !2156, size: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!758, !969}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_inode", scope: !2153, file: !35, line: 2059, baseType: !2160, size: 64, offset: 64)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{null, !758}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !2153, file: !35, line: 2060, baseType: !2160, size: 64, offset: 128)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_inode", scope: !2153, file: !35, line: 2062, baseType: !2165, size: 64, offset: 192)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{null, !758, !100}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "write_inode", scope: !2153, file: !35, line: 2063, baseType: !2169, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!100, !758, !1205}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "drop_inode", scope: !2153, file: !35, line: 2064, baseType: !2173, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!100, !758}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "evict_inode", scope: !2153, file: !35, line: 2065, baseType: !2160, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "put_super", scope: !2153, file: !35, line: 2066, baseType: !998, size: 64, offset: 448)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "sync_fs", scope: !2153, file: !35, line: 2067, baseType: !2179, size: 64, offset: 512)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!100, !969, !100}
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_super", scope: !2153, file: !35, line: 2068, baseType: !2183, size: 64, offset: 576)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!100, !969, !34}
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_fs", scope: !2153, file: !35, line: 2069, baseType: !2187, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!100, !969}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_super", scope: !2153, file: !35, line: 2070, baseType: !2183, size: 64, offset: 704)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "unfreeze_fs", scope: !2153, file: !35, line: 2071, baseType: !2187, size: 64, offset: 768)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "statfs", scope: !2153, file: !35, line: 2072, baseType: !2193, size: 64, offset: 832)
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = !DISubroutineType(types: !2195)
!2195 = !{!100, !718, !2196}
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DICompositeType(tag: DW_TAG_structure_type, name: "kstatfs", file: !35, line: 62, flags: DIFlagFwdDecl)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "remount_fs", scope: !2153, file: !35, line: 2073, baseType: !2199, size: 64, offset: 896)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!100, !969, !1931, !299}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "umount_begin", scope: !2153, file: !35, line: 2074, baseType: !998, size: 64, offset: 960)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !2153, file: !35, line: 2076, baseType: !2204, size: 64, offset: 1024)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!100, !295, !718}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "show_devname", scope: !2153, file: !35, line: 2077, baseType: !2204, size: 64, offset: 1088)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !2153, file: !35, line: 2078, baseType: !2204, size: 64, offset: 1152)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "show_stats", scope: !2153, file: !35, line: 2079, baseType: !2204, size: 64, offset: 1216)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "quota_read", scope: !2153, file: !35, line: 2081, baseType: !2211, size: 64, offset: 1280)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!913, !969, !100, !299, !301, !309}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "quota_write", scope: !2153, file: !35, line: 2082, baseType: !2215, size: 64, offset: 1344)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DISubroutineType(types: !2217)
!2217 = !{!913, !969, !100, !598, !301, !309}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "get_dquots", scope: !2153, file: !35, line: 2083, baseType: !2219, size: 64, offset: 1408)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DISubroutineType(types: !2221)
!2221 = !{!2222, !758}
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot", file: !40, line: 296, size: 1664, elements: !2225)
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2233, !2234, !2250, !2251, !2252}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dq_hash", scope: !2224, file: !40, line: 297, baseType: !449, size: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "dq_inuse", scope: !2224, file: !40, line: 298, baseType: !360, size: 128, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "dq_free", scope: !2224, file: !40, line: 299, baseType: !360, size: 128, offset: 256)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dirty", scope: !2224, file: !40, line: 300, baseType: !360, size: 128, offset: 384)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dq_lock", scope: !2224, file: !40, line: 301, baseType: !314, size: 256, offset: 512)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb_lock", scope: !2224, file: !40, line: 302, baseType: !393, size: 32, offset: 768)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dq_count", scope: !2224, file: !40, line: 303, baseType: !340, size: 32, offset: 800)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dq_sb", scope: !2224, file: !40, line: 304, baseType: !969, size: 64, offset: 832)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dq_id", scope: !2224, file: !40, line: 305, baseType: !2235, size: 64, offset: 896)
!2235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kqid", file: !40, line: 68, size: 64, elements: !2236)
!2236 = !{!2237, !2249}
!2237 = !DIDerivedType(tag: DW_TAG_member, scope: !2235, file: !40, line: 69, baseType: !2238, size: 32)
!2238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2235, file: !40, line: 69, size: 32, elements: !2239)
!2239 = !{!2240, !2241, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2238, file: !40, line: 70, baseType: !475, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !2238, file: !40, line: 71, baseType: !493, size: 32)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "projid", scope: !2238, file: !40, line: 72, baseType: !2243, size: 32)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "kprojid_t", file: !2244, line: 24, baseType: !2245)
!2244 = !DIFile(filename: "./include/linux/projid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "05e7f99607decf45353adf862137f54e")
!2245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2244, line: 22, size: 32, elements: !2246)
!2246 = !{!2247}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2245, file: !2244, line: 23, baseType: !2248, size: 32)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "projid_t", file: !2244, line: 20, baseType: !481)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2235, file: !40, line: 74, baseType: !39, size: 32, offset: 32)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "dq_off", scope: !2224, file: !40, line: 306, baseType: !309, size: 64, offset: 960)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "dq_flags", scope: !2224, file: !40, line: 307, baseType: !76, size: 64, offset: 1024)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "dq_dqb", scope: !2224, file: !40, line: 308, baseType: !2253, size: 576, offset: 1088)
!2253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqblk", file: !40, line: 205, size: 576, elements: !2254)
!2254 = !{!2255, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bhardlimit", scope: !2253, file: !40, line: 206, baseType: !2256, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "qsize_t", file: !40, line: 66, baseType: !311)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_bsoftlimit", scope: !2253, file: !40, line: 207, baseType: !2256, size: 64, offset: 64)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curspace", scope: !2253, file: !40, line: 208, baseType: !2256, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_rsvspace", scope: !2253, file: !40, line: 209, baseType: !2256, size: 64, offset: 192)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_ihardlimit", scope: !2253, file: !40, line: 210, baseType: !2256, size: 64, offset: 256)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_isoftlimit", scope: !2253, file: !40, line: 211, baseType: !2256, size: 64, offset: 320)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_curinodes", scope: !2253, file: !40, line: 212, baseType: !2256, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_btime", scope: !2253, file: !40, line: 213, baseType: !557, size: 64, offset: 448)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "dqb_itime", scope: !2253, file: !40, line: 214, baseType: !557, size: 64, offset: 512)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cached_objects", scope: !2153, file: !35, line: 2085, baseType: !2266, size: 64, offset: 1472)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{!873, !969, !2269}
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrink_control", file: !2271, line: 15, size: 256, elements: !2272)
!2271 = !DIFile(filename: "./include/linux/shrinker.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ff7c7d55a989681e9bb2692d5660057e")
!2272 = !{!2273, !2274, !2275, !2276, !2277}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "gfp_mask", scope: !2270, file: !2271, line: 16, baseType: !965, size: 32)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nid", scope: !2270, file: !2271, line: 19, baseType: !100, size: 32, offset: 32)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "nr_to_scan", scope: !2270, file: !2271, line: 26, baseType: !76, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nr_scanned", scope: !2270, file: !2271, line: 33, baseType: !76, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "memcg", scope: !2270, file: !2271, line: 36, baseType: !2278, size: 64, offset: 192)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "mem_cgroup", file: !2271, line: 36, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "free_cached_objects", scope: !2153, file: !35, line: 2087, baseType: !2266, size: 64, offset: 1536)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2153, file: !35, line: 2089, baseType: !998, size: 64, offset: 1600)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "dq_op", scope: !970, file: !35, line: 1198, baseType: !2283, size: 64, offset: 448)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2285)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dquot_operations", file: !40, line: 324, size: 704, elements: !2286)
!2286 = !{!2287, !2291, !2295, !2299, !2300, !2301, !2302, !2303, !2308, !2313, !2317}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "write_dquot", scope: !2285, file: !40, line: 325, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!100, !2223}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_dquot", scope: !2285, file: !40, line: 326, baseType: !2292, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2293, size: 64)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{!2223, !969, !100}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_dquot", scope: !2285, file: !40, line: 327, baseType: !2296, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !2223}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "acquire_dquot", scope: !2285, file: !40, line: 328, baseType: !2288, size: 64, offset: 192)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "release_dquot", scope: !2285, file: !40, line: 329, baseType: !2288, size: 64, offset: 256)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "mark_dirty", scope: !2285, file: !40, line: 330, baseType: !2288, size: 64, offset: 320)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "write_info", scope: !2285, file: !40, line: 331, baseType: !2179, size: 64, offset: 384)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "get_reserved_space", scope: !2285, file: !40, line: 334, baseType: !2304, size: 64, offset: 448)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DISubroutineType(types: !2306)
!2306 = !{!2307, !758}
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "get_projid", scope: !2285, file: !40, line: 335, baseType: !2309, size: 64, offset: 512)
!2309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2310, size: 64)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!100, !758, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2243, size: 64)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "get_inode_usage", scope: !2285, file: !40, line: 337, baseType: !2314, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2315, size: 64)
!2315 = !DISubroutineType(types: !2316)
!2316 = !{!100, !758, !2307}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2285, file: !40, line: 339, baseType: !2318, size: 64, offset: 640)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DISubroutineType(types: !2320)
!2320 = !{!100, !969, !2321}
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "s_qcop", scope: !970, file: !35, line: 1199, baseType: !2323, size: 64, offset: 512)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2325)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quotactl_ops", file: !40, line: 430, size: 704, elements: !2326)
!2326 = !{!2327, !2331, !2332, !2336, !2337, !2338, !2353, !2376, !2380, !2381, !2404}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "quota_on", scope: !2325, file: !40, line: 431, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!100, !969, !100, !100, !882}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "quota_off", scope: !2325, file: !40, line: 432, baseType: !2179, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "quota_enable", scope: !2325, file: !40, line: 433, baseType: !2333, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!100, !969, !7}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "quota_disable", scope: !2325, file: !40, line: 434, baseType: !2333, size: 64, offset: 192)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "quota_sync", scope: !2325, file: !40, line: 435, baseType: !2179, size: 64, offset: 256)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "set_info", scope: !2325, file: !40, line: 436, baseType: !2339, size: 64, offset: 320)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!100, !969, !100, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_info", file: !40, line: 417, size: 256, elements: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350, !2351, !2352}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i_fieldmask", scope: !2343, file: !40, line: 418, baseType: !100, size: 32)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "i_flags", scope: !2343, file: !40, line: 419, baseType: !7, size: 32, offset: 32)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_timelimit", scope: !2343, file: !40, line: 420, baseType: !7, size: 32, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_timelimit", scope: !2343, file: !40, line: 422, baseType: !7, size: 32, offset: 96)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_timelimit", scope: !2343, file: !40, line: 423, baseType: !7, size: 32, offset: 128)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "i_spc_warnlimit", scope: !2343, file: !40, line: 424, baseType: !7, size: 32, offset: 160)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino_warnlimit", scope: !2343, file: !40, line: 425, baseType: !7, size: 32, offset: 192)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "i_rt_spc_warnlimit", scope: !2343, file: !40, line: 426, baseType: !7, size: 32, offset: 224)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "get_dqblk", scope: !2325, file: !40, line: 437, baseType: !2354, size: 64, offset: 384)
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2355, size: 64)
!2355 = !DISubroutineType(types: !2356)
!2356 = !{!100, !969, !2235, !2357}
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_dqblk", file: !40, line: 345, size: 960, elements: !2359)
!2359 = !{!2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "d_fieldmask", scope: !2358, file: !40, line: 346, baseType: !100, size: 32)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_hardlimit", scope: !2358, file: !40, line: 347, baseType: !136, size: 64, offset: 64)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_softlimit", scope: !2358, file: !40, line: 348, baseType: !136, size: 64, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_hardlimit", scope: !2358, file: !40, line: 349, baseType: !136, size: 64, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_softlimit", scope: !2358, file: !40, line: 350, baseType: !136, size: 64, offset: 256)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "d_space", scope: !2358, file: !40, line: 351, baseType: !136, size: 64, offset: 320)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_count", scope: !2358, file: !40, line: 352, baseType: !136, size: 64, offset: 384)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_timer", scope: !2358, file: !40, line: 353, baseType: !324, size: 64, offset: 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_timer", scope: !2358, file: !40, line: 355, baseType: !324, size: 64, offset: 512)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino_warns", scope: !2358, file: !40, line: 356, baseType: !100, size: 32, offset: 576)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "d_spc_warns", scope: !2358, file: !40, line: 357, baseType: !100, size: 32, offset: 608)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_hardlimit", scope: !2358, file: !40, line: 358, baseType: !136, size: 64, offset: 640)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_softlimit", scope: !2358, file: !40, line: 359, baseType: !136, size: 64, offset: 704)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_space", scope: !2358, file: !40, line: 360, baseType: !136, size: 64, offset: 768)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_timer", scope: !2358, file: !40, line: 361, baseType: !324, size: 64, offset: 832)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "d_rt_spc_warns", scope: !2358, file: !40, line: 362, baseType: !100, size: 32, offset: 896)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "get_nextdqblk", scope: !2325, file: !40, line: 438, baseType: !2377, size: 64, offset: 448)
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = !DISubroutineType(types: !2379)
!2379 = !{!100, !969, !2321, !2357}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "set_dqblk", scope: !2325, file: !40, line: 440, baseType: !2354, size: 64, offset: 512)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "get_state", scope: !2325, file: !40, line: 441, baseType: !2382, size: 64, offset: 576)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DISubroutineType(types: !2384)
!2384 = !{!100, !969, !2385}
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_state", file: !40, line: 411, size: 1408, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "s_incoredqs", scope: !2386, file: !40, line: 412, baseType: !7, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "s_state", scope: !2386, file: !40, line: 413, baseType: !2390, size: 1344, offset: 64)
!2390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2391, size: 1344, elements: !262)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qc_type_state", file: !40, line: 397, size: 448, elements: !2392)
!2392 = !{!2393, !2394, !2395, !2396, !2397, !2398, !2399, !2400, !2401, !2403}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2391, file: !40, line: 398, baseType: !7, size: 32)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "spc_timelimit", scope: !2391, file: !40, line: 399, baseType: !7, size: 32, offset: 32)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "ino_timelimit", scope: !2391, file: !40, line: 401, baseType: !7, size: 32, offset: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_timelimit", scope: !2391, file: !40, line: 402, baseType: !7, size: 32, offset: 96)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "spc_warnlimit", scope: !2391, file: !40, line: 403, baseType: !7, size: 32, offset: 128)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "ino_warnlimit", scope: !2391, file: !40, line: 404, baseType: !7, size: 32, offset: 160)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "rt_spc_warnlimit", scope: !2391, file: !40, line: 405, baseType: !7, size: 32, offset: 192)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "ino", scope: !2391, file: !40, line: 406, baseType: !139, size: 64, offset: 256)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "blocks", scope: !2391, file: !40, line: 407, baseType: !2402, size: 64, offset: 320)
!2402 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !156, line: 132, baseType: !136)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "nextents", scope: !2391, file: !40, line: 408, baseType: !2402, size: 64, offset: 384)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "rm_xquota", scope: !2325, file: !40, line: 442, baseType: !2333, size: 64, offset: 640)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "s_export_op", scope: !970, file: !35, line: 1200, baseType: !2406, size: 64, offset: 576)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2408)
!2408 = !DICompositeType(tag: DW_TAG_structure_type, name: "export_operations", file: !35, line: 54, flags: DIFlagFwdDecl)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "s_flags", scope: !970, file: !35, line: 1201, baseType: !76, size: 64, offset: 640)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "s_iflags", scope: !970, file: !35, line: 1202, baseType: !76, size: 64, offset: 704)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "s_magic", scope: !970, file: !35, line: 1203, baseType: !76, size: 64, offset: 768)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "s_root", scope: !970, file: !35, line: 1204, baseType: !718, size: 64, offset: 832)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "s_umount", scope: !970, file: !35, line: 1205, baseType: !541, size: 320, offset: 896)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "s_count", scope: !970, file: !35, line: 1206, baseType: !100, size: 32, offset: 1216)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "s_active", scope: !970, file: !35, line: 1207, baseType: !340, size: 32, offset: 1248)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "s_security", scope: !970, file: !35, line: 1209, baseType: !163, size: 64, offset: 1280)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "s_xattr", scope: !970, file: !35, line: 1211, baseType: !2418, size: 64, offset: 1344)
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2419, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2420, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2421)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "xattr_handler", file: !35, line: 1211, flags: DIFlagFwdDecl)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "s_roots", scope: !970, file: !35, line: 1223, baseType: !2423, size: 64, offset: 1408)
!2423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_bl_head", file: !735, line: 34, size: 64, elements: !2424)
!2424 = !{!2425}
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2423, file: !735, line: 35, baseType: !738, size: 64)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "s_mounts", scope: !970, file: !35, line: 1224, baseType: !360, size: 128, offset: 1472)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev", scope: !970, file: !35, line: 1225, baseType: !2428, size: 64, offset: 1600)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DICompositeType(tag: DW_TAG_structure_type, name: "block_device", file: !35, line: 1225, flags: DIFlagFwdDecl)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdev_handle", scope: !970, file: !35, line: 1226, baseType: !2431, size: 64, offset: 1664)
!2431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2432, size: 64)
!2432 = !DICompositeType(tag: DW_TAG_structure_type, name: "bdev_handle", file: !35, line: 1226, flags: DIFlagFwdDecl)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "s_bdi", scope: !970, file: !35, line: 1227, baseType: !2434, size: 64, offset: 1728)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !35, line: 50, flags: DIFlagFwdDecl)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "s_mtd", scope: !970, file: !35, line: 1228, baseType: !2437, size: 64, offset: 1792)
!2437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2438, size: 64)
!2438 = !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !35, line: 1228, flags: DIFlagFwdDecl)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "s_instances", scope: !970, file: !35, line: 1229, baseType: !449, size: 128, offset: 1856)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "s_quota_types", scope: !970, file: !35, line: 1230, baseType: !7, size: 32, offset: 1984)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "s_dquot", scope: !970, file: !35, line: 1231, baseType: !2442, size: 2496, offset: 2048)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_info", file: !40, line: 521, size: 2496, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2448, !2480}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2442, file: !40, line: 522, baseType: !7, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "dqio_sem", scope: !2442, file: !40, line: 523, baseType: !541, size: 320, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2442, file: !40, line: 524, baseType: !2447, size: 192, offset: 384)
!2447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !758, size: 192, elements: !262)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2442, file: !40, line: 525, baseType: !2449, size: 1728, offset: 576)
!2449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2450, size: 1728, elements: !262)
!2450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_dqinfo", file: !40, line: 222, size: 576, elements: !2451)
!2451 = !{!2452, !2472, !2473, !2474, !2475, !2476, !2477, !2478, !2479}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_format", scope: !2450, file: !40, line: 223, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2454, size: 64)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_type", file: !40, line: 445, size: 256, elements: !2455)
!2455 = !{!2456, !2457, !2470, !2471}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "qf_fmt_id", scope: !2454, file: !40, line: 446, baseType: !100, size: 32)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "qf_ops", scope: !2454, file: !40, line: 447, baseType: !2458, size: 64, offset: 64)
!2458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2459, size: 64)
!2459 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2460)
!2460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quota_format_ops", file: !40, line: 312, size: 512, elements: !2461)
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2467, !2468, !2469}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "check_quota_file", scope: !2460, file: !40, line: 313, baseType: !2179, size: 64)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "read_file_info", scope: !2460, file: !40, line: 314, baseType: !2179, size: 64, offset: 64)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "write_file_info", scope: !2460, file: !40, line: 315, baseType: !2179, size: 64, offset: 128)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "free_file_info", scope: !2460, file: !40, line: 316, baseType: !2179, size: 64, offset: 192)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "read_dqblk", scope: !2460, file: !40, line: 317, baseType: !2288, size: 64, offset: 256)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "commit_dqblk", scope: !2460, file: !40, line: 318, baseType: !2288, size: 64, offset: 320)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "release_dqblk", scope: !2460, file: !40, line: 319, baseType: !2288, size: 64, offset: 384)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_id", scope: !2460, file: !40, line: 320, baseType: !2318, size: 64, offset: 448)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "qf_owner", scope: !2454, file: !40, line: 448, baseType: !1002, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "qf_next", scope: !2454, file: !40, line: 449, baseType: !2453, size: 64, offset: 192)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_fmt_id", scope: !2450, file: !40, line: 224, baseType: !100, size: 32, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_dirty_list", scope: !2450, file: !40, line: 226, baseType: !360, size: 128, offset: 128)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_flags", scope: !2450, file: !40, line: 227, baseType: !76, size: 64, offset: 256)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_bgrace", scope: !2450, file: !40, line: 228, baseType: !7, size: 32, offset: 320)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_igrace", scope: !2450, file: !40, line: 229, baseType: !7, size: 32, offset: 352)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_spc_limit", scope: !2450, file: !40, line: 230, baseType: !2256, size: 64, offset: 384)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_max_ino_limit", scope: !2450, file: !40, line: 231, baseType: !2256, size: 64, offset: 448)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "dqi_priv", scope: !2450, file: !40, line: 232, baseType: !163, size: 64, offset: 512)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2442, file: !40, line: 526, baseType: !2481, size: 192, offset: 2304)
!2481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2458, size: 192, elements: !262)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "s_writers", scope: !970, file: !35, line: 1233, baseType: !2483, size: 2368, offset: 4544)
!2483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sb_writers", file: !35, line: 1184, size: 2368, elements: !2484)
!2484 = !{!2485, !2486, !2487}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2483, file: !35, line: 1185, baseType: !143, size: 16)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_holders", scope: !2483, file: !35, line: 1186, baseType: !143, size: 16, offset: 16)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "rw_sem", scope: !2483, file: !35, line: 1187, baseType: !2488, size: 2304, offset: 64)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2489, size: 2304, elements: !262)
!2489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_rw_semaphore", file: !2490, line: 12, size: 768, elements: !2491)
!2490 = !DIFile(filename: "./include/linux/percpu-rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a8c1880b245365f7486b65f70f632f5")
!2491 = !{!2492, !2500, !2501, !3667, !3668}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "rss", scope: !2489, file: !2490, line: 13, baseType: !2493, size: 384)
!2493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_sync", file: !2494, line: 17, size: 384, elements: !2495)
!2494 = !DIFile(filename: "./include/linux/rcu_sync.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "877fa7728168e684dcec67e3ad2774a9")
!2495 = !{!2496, !2497, !2498, !2499}
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "gp_state", scope: !2493, file: !2494, line: 18, baseType: !100, size: 32)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "gp_count", scope: !2493, file: !2494, line: 19, baseType: !100, size: 32, offset: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "gp_wait", scope: !2493, file: !2494, line: 20, baseType: !456, size: 192, offset: 64)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "cb_head", scope: !2493, file: !2494, line: 22, baseType: !383, size: 128, align: 64, offset: 256)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "read_count", scope: !2489, file: !2490, line: 14, baseType: !1885, size: 64, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "writer", scope: !2489, file: !2490, line: 15, baseType: !2502, size: 64, offset: 448)
!2502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcuwait", file: !2503, line: 16, size: 64, elements: !2504)
!2503 = !DIFile(filename: "./include/linux/rcuwait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9d16d79f1814717edcda6c891eddf7a7")
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2502, file: !2503, line: 17, baseType: !2506, size: 64)
!2506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2507, size: 64)
!2507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !2508, line: 746, size: 58368, elements: !2509)
!2508 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!2509 = !{!2510, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545, !2546, !2590, !2601, !2687, !2691, !2694, !2725, !2726, !2727, !2728, !2732, !2734, !2735, !2736, !2737, !2738, !2739, !2750, !2751, !2754, !2755, !2756, !2757, !2758, !2759, !2760, !2761, !2768, !2769, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2857, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2905, !2911, !2912, !2913, !2914, !2915, !2916, !2919, !2926, !2931, !2934, !2937, !2940, !2943, !3081, !3108, !3109, !3110, !3111, !3112, !3113, !3114, !3115, !3116, !3119, !3120, !3121, !3130, !3138, !3139, !3140, !3141, !3142, !3147, !3148, !3149, !3152, !3153, !3156, !3159, !3162, !3170, !3173, !3174, !3259, !3260, !3261, !3262, !3263, !3269, !3270, !3271, !3272, !3275, !3276, !3279, !3282, !3283, !3286, !3287, !3288, !3291, !3292, !3293, !3294, !3295, !3296, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3328, !3331, !3337, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3349, !3421, !3423, !3424, !3425, !3426, !3427, !3428, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3445, !3446, !3447}
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !2507, file: !2508, line: 752, baseType: !2511, size: 192)
!2511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !2512, line: 56, size: 192, elements: !2513)
!2512 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54aa86946dba4796bdecdba2382d5c77")
!2513 = !{!2514, !2515, !2516, !2517}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2511, file: !2512, line: 57, baseType: !76, size: 64)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_work", scope: !2511, file: !2512, line: 58, baseType: !76, size: 64, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2511, file: !2512, line: 59, baseType: !159, size: 32, offset: 128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2511, file: !2512, line: 61, baseType: !159, size: 32, offset: 160)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "__state", scope: !2507, file: !2508, line: 754, baseType: !7, size: 32, offset: 192)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !2507, file: !2508, line: 767, baseType: !163, size: 64, offset: 256)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !2507, file: !2508, line: 768, baseType: !436, size: 32, offset: 320)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2507, file: !2508, line: 770, baseType: !7, size: 32, offset: 352)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !2507, file: !2508, line: 771, baseType: !7, size: 32, offset: 384)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "on_cpu", scope: !2507, file: !2508, line: 774, baseType: !100, size: 32, offset: 416)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "wake_entry", scope: !2507, file: !2508, line: 775, baseType: !2525, size: 128, offset: 448)
!2525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__call_single_node", file: !2526, line: 58, size: 128, elements: !2527)
!2526 = !DIFile(filename: "./include/linux/smp_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5419d178c26889551dcae04751edcc21")
!2527 = !{!2528, !2529, !2534, !2535}
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "llist", scope: !2525, file: !2526, line: 59, baseType: !377, size: 64)
!2529 = !DIDerivedType(tag: DW_TAG_member, scope: !2525, file: !2526, line: 60, baseType: !2530, size: 32, offset: 64)
!2530 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2525, file: !2526, line: 60, size: 32, elements: !2531)
!2531 = !{!2532, !2533}
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "u_flags", scope: !2530, file: !2526, line: 61, baseType: !7, size: 32)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "a_flags", scope: !2530, file: !2526, line: 62, baseType: !340, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2525, file: !2526, line: 65, baseType: !141, size: 16, offset: 96)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "dst", scope: !2525, file: !2526, line: 65, baseType: !141, size: 16, offset: 112)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flips", scope: !2507, file: !2508, line: 776, baseType: !7, size: 32, offset: 576)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "wakee_flip_decay_ts", scope: !2507, file: !2508, line: 777, baseType: !76, size: 64, offset: 640)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "last_wakee", scope: !2507, file: !2508, line: 778, baseType: !2506, size: 64, offset: 704)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "recent_used_cpu", scope: !2507, file: !2508, line: 787, baseType: !100, size: 32, offset: 768)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "wake_cpu", scope: !2507, file: !2508, line: 788, baseType: !100, size: 32, offset: 800)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2507, file: !2508, line: 790, baseType: !100, size: 32, offset: 832)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2507, file: !2508, line: 792, baseType: !100, size: 32, offset: 864)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !2507, file: !2508, line: 793, baseType: !100, size: 32, offset: 896)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !2507, file: !2508, line: 794, baseType: !100, size: 32, offset: 928)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !2507, file: !2508, line: 795, baseType: !7, size: 32, offset: 960)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !2507, file: !2508, line: 797, baseType: !2547, size: 2048, offset: 1024)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !2508, line: 551, size: 2048, elements: !2548)
!2548 = !{!2549, !2554, !2555, !2556, !2557, !2558, !2559, !2560, !2561, !2562, !2563, !2564, !2565, !2566, !2567, !2569, !2572, !2573, !2574}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !2547, file: !2508, line: 553, baseType: !2550, size: 128)
!2550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !2508, line: 411, size: 128, elements: !2551)
!2551 = !{!2552, !2553}
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !2550, file: !2508, line: 412, baseType: !76, size: 64)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !2550, file: !2508, line: 413, baseType: !159, size: 32, offset: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !2547, file: !2508, line: 554, baseType: !533, size: 192, align: 64, offset: 128)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2547, file: !2508, line: 555, baseType: !136, size: 64, offset: 320)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "min_deadline", scope: !2547, file: !2508, line: 556, baseType: !136, size: 64, offset: 384)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !2547, file: !2508, line: 558, baseType: !360, size: 128, offset: 448)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2547, file: !2508, line: 559, baseType: !7, size: 32, offset: 576)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !2547, file: !2508, line: 561, baseType: !136, size: 64, offset: 640)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2547, file: !2508, line: 562, baseType: !136, size: 64, offset: 704)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !2547, file: !2508, line: 563, baseType: !136, size: 64, offset: 768)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !2547, file: !2508, line: 564, baseType: !136, size: 64, offset: 832)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "vlag", scope: !2547, file: !2508, line: 565, baseType: !324, size: 64, offset: 896)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "slice", scope: !2547, file: !2508, line: 566, baseType: !136, size: 64, offset: 960)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !2547, file: !2508, line: 568, baseType: !136, size: 64, offset: 1024)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !2547, file: !2508, line: 571, baseType: !100, size: 32, offset: 1088)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2547, file: !2508, line: 572, baseType: !2568, size: 64, offset: 1152)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2547, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "cfs_rq", scope: !2547, file: !2508, line: 574, baseType: !2570, size: 64, offset: 1216)
!2570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2571, size: 64)
!2571 = !DICompositeType(tag: DW_TAG_structure_type, name: "cfs_rq", file: !2508, line: 49, flags: DIFlagFwdDecl)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "my_q", scope: !2547, file: !2508, line: 576, baseType: !2570, size: 64, offset: 1280)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_weight", scope: !2547, file: !2508, line: 578, baseType: !76, size: 64, offset: 1344)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2547, file: !2508, line: 588, baseType: !2575, size: 512, align: 512, offset: 1536)
!2575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_avg", file: !2508, line: 497, size: 512, align: 512, elements: !2576)
!2576 = !{!2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585}
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "last_update_time", scope: !2575, file: !2508, line: 498, baseType: !136, size: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "load_sum", scope: !2575, file: !2508, line: 499, baseType: !136, size: 64, offset: 64)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_sum", scope: !2575, file: !2508, line: 500, baseType: !136, size: 64, offset: 128)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "util_sum", scope: !2575, file: !2508, line: 501, baseType: !159, size: 32, offset: 192)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "period_contrib", scope: !2575, file: !2508, line: 502, baseType: !159, size: 32, offset: 224)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "load_avg", scope: !2575, file: !2508, line: 503, baseType: !76, size: 64, offset: 256)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "runnable_avg", scope: !2575, file: !2508, line: 504, baseType: !76, size: 64, offset: 320)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "util_avg", scope: !2575, file: !2508, line: 505, baseType: !76, size: 64, offset: 384)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "util_est", scope: !2575, file: !2508, line: 506, baseType: !2586, size: 64, align: 64, offset: 448)
!2586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "util_est", file: !2508, line: 445, size: 64, align: 64, elements: !2587)
!2587 = !{!2588, !2589}
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "enqueued", scope: !2586, file: !2508, line: 446, baseType: !7, size: 32)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "ewma", scope: !2586, file: !2508, line: 447, baseType: !7, size: 32, offset: 32)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !2507, file: !2508, line: 798, baseType: !2591, size: 384, offset: 3072)
!2591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !2508, line: 592, size: 384, elements: !2592)
!2592 = !{!2593, !2594, !2595, !2596, !2597, !2598, !2599}
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !2591, file: !2508, line: 593, baseType: !360, size: 128)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2591, file: !2508, line: 594, baseType: !76, size: 64, offset: 128)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !2591, file: !2508, line: 595, baseType: !76, size: 64, offset: 192)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !2591, file: !2508, line: 596, baseType: !7, size: 32, offset: 256)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !2591, file: !2508, line: 597, baseType: !143, size: 16, offset: 288)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !2591, file: !2508, line: 598, baseType: !143, size: 16, offset: 304)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !2591, file: !2508, line: 600, baseType: !2600, size: 64, offset: 320)
!2600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2591, size: 64)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !2507, file: !2508, line: 799, baseType: !2602, size: 1792, offset: 3456)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !2508, line: 610, size: 1792, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613, !2614, !2615, !2616, !2617, !2684, !2685}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !2602, file: !2508, line: 611, baseType: !533, size: 192, align: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !2602, file: !2508, line: 618, baseType: !136, size: 64, offset: 192)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !2602, file: !2508, line: 619, baseType: !136, size: 64, offset: 256)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !2602, file: !2508, line: 620, baseType: !136, size: 64, offset: 320)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !2602, file: !2508, line: 621, baseType: !136, size: 64, offset: 384)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !2602, file: !2508, line: 622, baseType: !136, size: 64, offset: 448)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !2602, file: !2508, line: 629, baseType: !324, size: 64, offset: 512)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !2602, file: !2508, line: 630, baseType: !136, size: 64, offset: 576)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2602, file: !2508, line: 631, baseType: !7, size: 32, offset: 640)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !2602, file: !2508, line: 653, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !2602, file: !2508, line: 654, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !2602, file: !2508, line: 655, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !2602, file: !2508, line: 656, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !2602, file: !2508, line: 662, baseType: !2618, size: 512, offset: 704)
!2618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !46, line: 118, size: 512, elements: !2619)
!2619 = !{!2620, !2628, !2629, !2634, !2680, !2681, !2682, !2683}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2618, file: !46, line: 119, baseType: !2621, size: 256)
!2621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !2622, line: 9, size: 256, elements: !2623)
!2622 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!2623 = !{!2624, !2625}
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2621, file: !2622, line: 10, baseType: !533, size: 192, align: 64)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2621, file: !2622, line: 11, baseType: !2626, size: 64, offset: 192)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !2627, line: 29, baseType: !324)
!2627 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !2618, file: !46, line: 120, baseType: !2626, size: 64, offset: 256)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2618, file: !46, line: 121, baseType: !2630, size: 64, offset: 320)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!45, !2633}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2618, file: !46, line: 122, baseType: !2635, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !46, line: 159, size: 512, align: 512, elements: !2637)
!2637 = !{!2638, !2661, !2662, !2665, !2670, !2671, !2675, !2679}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !2636, file: !46, line: 160, baseType: !2639, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !46, line: 215, size: 4608, align: 512, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2640, file: !46, line: 216, baseType: !327, size: 32)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !2640, file: !46, line: 217, baseType: !7, size: 32, offset: 32)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !2640, file: !46, line: 218, baseType: !7, size: 32, offset: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !2640, file: !46, line: 219, baseType: !7, size: 32, offset: 96)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !2640, file: !46, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !2640, file: !46, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !2640, file: !46, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !2640, file: !46, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !2640, file: !46, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !2640, file: !46, line: 226, baseType: !7, size: 32, offset: 160)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !2640, file: !46, line: 227, baseType: !143, size: 16, offset: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !2640, file: !46, line: 228, baseType: !143, size: 16, offset: 208)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !2640, file: !46, line: 229, baseType: !7, size: 32, offset: 224)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !2640, file: !46, line: 235, baseType: !2626, size: 64, offset: 256)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !2640, file: !46, line: 236, baseType: !2633, size: 64, offset: 320)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !2640, file: !46, line: 237, baseType: !2626, size: 64, offset: 384)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !2640, file: !46, line: 238, baseType: !2633, size: 64, offset: 448)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !2640, file: !46, line: 239, baseType: !2660, size: 4096, align: 512, offset: 512)
!2660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2636, size: 4096, align: 512, elements: !180)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2636, file: !46, line: 161, baseType: !7, size: 32, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2636, file: !46, line: 162, baseType: !2663, size: 32, offset: 96)
!2663 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !156, line: 32, baseType: !2664)
!2664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !303, line: 96, baseType: !100)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2636, file: !46, line: 163, baseType: !2666, size: 32, offset: 128)
!2666 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !725, line: 274, baseType: !2667)
!2667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !725, line: 274, size: 32, elements: !2668)
!2668 = !{!2669}
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !2667, file: !725, line: 274, baseType: !729, size: 32)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !2636, file: !46, line: 164, baseType: !2633, size: 64, offset: 192)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2636, file: !46, line: 165, baseType: !2672, size: 128, offset: 256)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !2622, line: 14, size: 128, elements: !2673)
!2673 = !{!2674}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !2672, file: !2622, line: 15, baseType: !1126, size: 128)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !2636, file: !46, line: 166, baseType: !2676, size: 64, offset: 384)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!2626}
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2636, file: !46, line: 167, baseType: !2626, size: 64, offset: 448)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2618, file: !46, line: 123, baseType: !161, size: 8, offset: 448)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !2618, file: !46, line: 124, baseType: !161, size: 8, offset: 456)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !2618, file: !46, line: 125, baseType: !161, size: 8, offset: 464)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !2618, file: !46, line: 126, baseType: !161, size: 8, offset: 472)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !2602, file: !2508, line: 671, baseType: !2618, size: 512, offset: 1216)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !2602, file: !2508, line: 679, baseType: !2686, size: 64, offset: 1728)
!2686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2602, size: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !2507, file: !2508, line: 800, baseType: !2688, size: 64, offset: 5248)
!2688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2689, size: 64)
!2689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2690)
!2690 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !2508, line: 800, flags: DIFlagFwdDecl)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_group", scope: !2507, file: !2508, line: 809, baseType: !2692, size: 64, offset: 5312)
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2693, size: 64)
!2693 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_group", file: !2508, line: 70, flags: DIFlagFwdDecl)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2507, file: !2508, line: 825, baseType: !2695, size: 2048, align: 512, offset: 5632)
!2695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !2508, line: 509, size: 2048, align: 512, elements: !2696)
!2696 = !{!2697, !2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2723, !2724}
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "wait_start", scope: !2695, file: !2508, line: 511, baseType: !136, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "wait_max", scope: !2695, file: !2508, line: 512, baseType: !136, size: 64, offset: 64)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "wait_count", scope: !2695, file: !2508, line: 513, baseType: !136, size: 64, offset: 128)
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "wait_sum", scope: !2695, file: !2508, line: 514, baseType: !136, size: 64, offset: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_count", scope: !2695, file: !2508, line: 515, baseType: !136, size: 64, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "iowait_sum", scope: !2695, file: !2508, line: 516, baseType: !136, size: 64, offset: 320)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_start", scope: !2695, file: !2508, line: 518, baseType: !136, size: 64, offset: 384)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_max", scope: !2695, file: !2508, line: 519, baseType: !136, size: 64, offset: 448)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sleep_runtime", scope: !2695, file: !2508, line: 520, baseType: !324, size: 64, offset: 512)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "block_start", scope: !2695, file: !2508, line: 522, baseType: !136, size: 64, offset: 576)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "block_max", scope: !2695, file: !2508, line: 523, baseType: !136, size: 64, offset: 640)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "sum_block_runtime", scope: !2695, file: !2508, line: 524, baseType: !324, size: 64, offset: 704)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "exec_max", scope: !2695, file: !2508, line: 526, baseType: !324, size: 64, offset: 768)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "slice_max", scope: !2695, file: !2508, line: 527, baseType: !136, size: 64, offset: 832)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations_cold", scope: !2695, file: !2508, line: 529, baseType: !136, size: 64, offset: 896)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_affine", scope: !2695, file: !2508, line: 530, baseType: !136, size: 64, offset: 960)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_running", scope: !2695, file: !2508, line: 531, baseType: !136, size: 64, offset: 1024)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "nr_failed_migrations_hot", scope: !2695, file: !2508, line: 532, baseType: !136, size: 64, offset: 1088)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "nr_forced_migrations", scope: !2695, file: !2508, line: 533, baseType: !136, size: 64, offset: 1152)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups", scope: !2695, file: !2508, line: 535, baseType: !136, size: 64, offset: 1216)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_sync", scope: !2695, file: !2508, line: 536, baseType: !136, size: 64, offset: 1280)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_migrate", scope: !2695, file: !2508, line: 537, baseType: !136, size: 64, offset: 1344)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_local", scope: !2695, file: !2508, line: 538, baseType: !136, size: 64, offset: 1408)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_remote", scope: !2695, file: !2508, line: 539, baseType: !136, size: 64, offset: 1472)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine", scope: !2695, file: !2508, line: 540, baseType: !136, size: 64, offset: 1536)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_affine_attempts", scope: !2695, file: !2508, line: 541, baseType: !136, size: 64, offset: 1600)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_passive", scope: !2695, file: !2508, line: 542, baseType: !136, size: 64, offset: 1664)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "nr_wakeups_idle", scope: !2695, file: !2508, line: 543, baseType: !136, size: 64, offset: 1728)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "btrace_seq", scope: !2507, file: !2508, line: 833, baseType: !7, size: 32, offset: 7680)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !2507, file: !2508, line: 836, baseType: !7, size: 32, offset: 7712)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !2507, file: !2508, line: 837, baseType: !100, size: 32, offset: 7744)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !2507, file: !2508, line: 838, baseType: !2729, size: 64, offset: 7808)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2731)
!2731 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !72, line: 19, baseType: !71)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "user_cpus_ptr", scope: !2507, file: !2508, line: 839, baseType: !2733, size: 64, offset: 7872)
!2733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2731, size: 64)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !2507, file: !2508, line: 840, baseType: !2731, size: 64, offset: 7936)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "migration_pending", scope: !2507, file: !2508, line: 841, baseType: !163, size: 64, offset: 8000)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "migration_disabled", scope: !2507, file: !2508, line: 843, baseType: !143, size: 16, offset: 8064)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "migration_flags", scope: !2507, file: !2508, line: 845, baseType: !143, size: 16, offset: 8080)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_lock_nesting", scope: !2507, file: !2508, line: 848, baseType: !100, size: 32, offset: 8096)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_read_unlock_special", scope: !2507, file: !2508, line: 849, baseType: !2740, size: 32, offset: 8128)
!2740 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rcu_special", file: !2508, line: 718, size: 32, elements: !2741)
!2741 = !{!2742, !2749}
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !2740, file: !2508, line: 724, baseType: !2743, size: 32)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2740, file: !2508, line: 719, size: 32, elements: !2744)
!2744 = !{!2745, !2746, !2747, !2748}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2743, file: !2508, line: 720, baseType: !161, size: 8)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "need_qs", scope: !2743, file: !2508, line: 721, baseType: !161, size: 8, offset: 8)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "exp_hint", scope: !2743, file: !2508, line: 722, baseType: !161, size: 8, offset: 16)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "need_mb", scope: !2743, file: !2508, line: 723, baseType: !161, size: 8, offset: 24)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !2740, file: !2508, line: 725, baseType: !159, size: 32)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_node_entry", scope: !2507, file: !2508, line: 850, baseType: !360, size: 128, offset: 8192)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_blocked_node", scope: !2507, file: !2508, line: 851, baseType: !2752, size: 64, offset: 8320)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_node", file: !2508, line: 60, flags: DIFlagFwdDecl)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_nvcsw", scope: !2507, file: !2508, line: 855, baseType: !76, size: 64, offset: 8384)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout", scope: !2507, file: !2508, line: 856, baseType: !161, size: 8, offset: 8448)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idx", scope: !2507, file: !2508, line: 857, baseType: !161, size: 8, offset: 8456)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_idle_cpu", scope: !2507, file: !2508, line: 858, baseType: !100, size: 32, offset: 8480)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_holdout_list", scope: !2507, file: !2508, line: 859, baseType: !360, size: 128, offset: 8512)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_cpu", scope: !2507, file: !2508, line: 860, baseType: !100, size: 32, offset: 8640)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_tasks_exit_list", scope: !2507, file: !2508, line: 861, baseType: !360, size: 128, offset: 8704)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !2507, file: !2508, line: 873, baseType: !2762, size: 256, offset: 8832)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !2508, line: 376, size: 256, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "pcount", scope: !2762, file: !2508, line: 381, baseType: !76, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "run_delay", scope: !2762, file: !2508, line: 384, baseType: !139, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "last_arrival", scope: !2762, file: !2508, line: 389, baseType: !139, size: 64, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "last_queued", scope: !2762, file: !2508, line: 392, baseType: !139, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !2507, file: !2508, line: 875, baseType: !360, size: 128, offset: 9088)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_tasks", scope: !2507, file: !2508, line: 877, baseType: !2770, size: 320, offset: 9216)
!2770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !2771, line: 86, size: 320, elements: !2772)
!2771 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!2772 = !{!2773, !2774, !2775}
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2770, file: !2771, line: 87, baseType: !100, size: 32)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !2770, file: !2771, line: 88, baseType: !360, size: 128, offset: 64)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !2770, file: !2771, line: 89, baseType: !360, size: 128, offset: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "pushable_dl_tasks", scope: !2507, file: !2508, line: 878, baseType: !533, size: 192, align: 64, offset: 9536)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !2507, file: !2508, line: 881, baseType: !1412, size: 64, offset: 9728)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !2507, file: !2508, line: 882, baseType: !1412, size: 64, offset: 9792)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !2507, file: !2508, line: 884, baseType: !100, size: 32, offset: 9856)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !2507, file: !2508, line: 885, baseType: !100, size: 32, offset: 9888)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !2507, file: !2508, line: 886, baseType: !100, size: 32, offset: 9920)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !2507, file: !2508, line: 888, baseType: !100, size: 32, offset: 9952)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !2507, file: !2508, line: 890, baseType: !76, size: 64, offset: 9984)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2507, file: !2508, line: 893, baseType: !7, size: 32, offset: 10048)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !2507, file: !2508, line: 896, baseType: !7, size: 1, offset: 10080, flags: DIFlagBitField, extraData: i64 10080)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !2507, file: !2508, line: 897, baseType: !7, size: 1, offset: 10081, flags: DIFlagBitField, extraData: i64 10080)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !2507, file: !2508, line: 898, baseType: !7, size: 1, offset: 10082, flags: DIFlagBitField, extraData: i64 10080)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_task_hot", scope: !2507, file: !2508, line: 899, baseType: !7, size: 1, offset: 10083, flags: DIFlagBitField, extraData: i64 10080)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !2507, file: !2508, line: 919, baseType: !7, size: 1, offset: 10112, flags: DIFlagBitField, extraData: i64 10112)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !2507, file: !2508, line: 922, baseType: !7, size: 1, offset: 10113, flags: DIFlagBitField, extraData: i64 10112)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !2507, file: !2508, line: 923, baseType: !7, size: 1, offset: 10114, flags: DIFlagBitField, extraData: i64 10112)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !2507, file: !2508, line: 925, baseType: !7, size: 1, offset: 10115, flags: DIFlagBitField, extraData: i64 10112)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "no_cgroup_migration", scope: !2507, file: !2508, line: 939, baseType: !7, size: 1, offset: 10116, flags: DIFlagBitField, extraData: i64 10112)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !2507, file: !2508, line: 941, baseType: !7, size: 1, offset: 10117, flags: DIFlagBitField, extraData: i64 10112)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "use_memdelay", scope: !2507, file: !2508, line: 944, baseType: !7, size: 1, offset: 10118, flags: DIFlagBitField, extraData: i64 10112)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "in_eventfd", scope: !2507, file: !2508, line: 956, baseType: !7, size: 1, offset: 10119, flags: DIFlagBitField, extraData: i64 10112)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "reported_split_lock", scope: !2507, file: !2508, line: 962, baseType: !7, size: 1, offset: 10120, flags: DIFlagBitField, extraData: i64 10112)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "in_thrashing", scope: !2507, file: !2508, line: 966, baseType: !7, size: 1, offset: 10121, flags: DIFlagBitField, extraData: i64 10112)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !2507, file: !2508, line: 969, baseType: !76, size: 64, offset: 10176)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !2507, file: !2508, line: 971, baseType: !2801, size: 448, offset: 10240)
!2801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !51, line: 25, size: 448, elements: !2802)
!2802 = !{!2803, !2804, !2809}
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "arch_data", scope: !2801, file: !51, line: 26, baseType: !76, size: 64)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !2801, file: !51, line: 27, baseType: !2805, size: 64, offset: 64)
!2805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2806, size: 64)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!873, !2808}
!2808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2801, size: 64)
!2809 = !DIDerivedType(tag: DW_TAG_member, scope: !2801, file: !51, line: 28, baseType: !2810, size: 320, offset: 128)
!2810 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2801, file: !51, line: 28, size: 320, elements: !2811)
!2811 = !{!2812, !2822, !2847}
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !2810, file: !51, line: 37, baseType: !2813, size: 320)
!2813 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !51, line: 30, size: 320, elements: !2814)
!2814 = !{!2815, !2817, !2818, !2819, !2820, !2821}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !2813, file: !51, line: 31, baseType: !2816, size: 64)
!2816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2813, file: !51, line: 32, baseType: !159, size: 32, offset: 64)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2813, file: !51, line: 33, baseType: !159, size: 32, offset: 96)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !2813, file: !51, line: 34, baseType: !159, size: 32, offset: 128)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !2813, file: !51, line: 35, baseType: !136, size: 64, offset: 192)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !2813, file: !51, line: 36, baseType: !2816, size: 64, offset: 256)
!2822 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !2810, file: !51, line: 47, baseType: !2823, size: 192)
!2823 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !51, line: 39, size: 192, elements: !2824)
!2824 = !{!2825, !2826, !2827, !2846}
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !2823, file: !51, line: 40, baseType: !2663, size: 32)
!2826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2823, file: !51, line: 41, baseType: !50, size: 32, offset: 32)
!2827 = !DIDerivedType(tag: DW_TAG_member, scope: !2823, file: !51, line: 42, baseType: !2828, size: 64, offset: 64)
!2828 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2823, file: !51, line: 42, size: 64, elements: !2829)
!2829 = !{!2830, !2838}
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !2828, file: !51, line: 43, baseType: !2831, size: 64)
!2831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2832, size: 64)
!2832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !2833, line: 7, size: 128, elements: !2834)
!2833 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "caebe0f0ae09abba9cc01ca1749c16bf")
!2834 = !{!2835, !2837}
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2832, file: !2833, line: 8, baseType: !2836, size: 64)
!2836 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !303, line: 93, baseType: !311)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2832, file: !2833, line: 9, baseType: !311, size: 64, offset: 64)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !2828, file: !51, line: 44, baseType: !2839, size: 64)
!2839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2840, size: 64)
!2840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !2841, line: 7, size: 64, elements: !2842)
!2841 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72b5ce349b0f5d7430b5761f0416ad5e")
!2842 = !{!2843, !2845}
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2840, file: !2841, line: 8, baseType: !2844, size: 32)
!2844 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !2841, line: 5, baseType: !526)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2840, file: !2841, line: 9, baseType: !526, size: 32, offset: 32)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2823, file: !51, line: 46, baseType: !136, size: 64, offset: 128)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2810, file: !51, line: 55, baseType: !2848, size: 256)
!2848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2810, file: !51, line: 49, size: 256, elements: !2849)
!2849 = !{!2850, !2853, !2854, !2855, !2856}
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !2848, file: !51, line: 50, baseType: !2851, size: 64)
!2851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2852, size: 64)
!2852 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !51, line: 14, flags: DIFlagFwdDecl)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !2848, file: !51, line: 51, baseType: !100, size: 32, offset: 64)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !2848, file: !51, line: 52, baseType: !100, size: 32, offset: 96)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2848, file: !51, line: 53, baseType: !76, size: 64, offset: 128)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2848, file: !51, line: 54, baseType: !76, size: 64, offset: 192)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !2507, file: !2508, line: 973, baseType: !2858, size: 32, offset: 10688)
!2858 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !156, line: 27, baseType: !2859)
!2859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !303, line: 28, baseType: !100)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !2507, file: !2508, line: 974, baseType: !2858, size: 32, offset: 10720)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !2507, file: !2508, line: 978, baseType: !76, size: 64, offset: 10752)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !2507, file: !2508, line: 987, baseType: !2506, size: 64, offset: 10816)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2507, file: !2508, line: 990, baseType: !2506, size: 64, offset: 10880)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2507, file: !2508, line: 995, baseType: !360, size: 128, offset: 10944)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2507, file: !2508, line: 996, baseType: !360, size: 128, offset: 11072)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !2507, file: !2508, line: 997, baseType: !2506, size: 64, offset: 11200)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !2507, file: !2508, line: 1005, baseType: !360, size: 128, offset: 11264)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !2507, file: !2508, line: 1006, baseType: !360, size: 128, offset: 11392)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !2507, file: !2508, line: 1009, baseType: !432, size: 64, offset: 11520)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !2507, file: !2508, line: 1010, baseType: !2871, size: 512, offset: 11584)
!2871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !449, size: 512, elements: !209)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !2507, file: !2508, line: 1011, baseType: !360, size: 128, offset: 12096)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !2507, file: !2508, line: 1012, baseType: !360, size: 128, offset: 12224)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !2507, file: !2508, line: 1014, baseType: !1786, size: 64, offset: 12352)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !2507, file: !2508, line: 1017, baseType: !1931, size: 64, offset: 12416)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !2507, file: !2508, line: 1020, baseType: !1931, size: 64, offset: 12480)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "worker_private", scope: !2507, file: !2508, line: 1023, baseType: !163, size: 64, offset: 12544)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2507, file: !2508, line: 1025, baseType: !136, size: 64, offset: 12608)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2507, file: !2508, line: 1026, baseType: !136, size: 64, offset: 12672)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2507, file: !2508, line: 1031, baseType: !136, size: 64, offset: 12736)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2507, file: !2508, line: 1032, baseType: !2882, size: 192, offset: 12800)
!2882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !2508, line: 324, size: 192, elements: !2883)
!2883 = !{!2884, !2885, !2886}
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2882, file: !2508, line: 326, baseType: !136, size: 64)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2882, file: !2508, line: 327, baseType: !136, size: 64, offset: 64)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2882, file: !2508, line: 328, baseType: !327, size: 32, offset: 128)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2507, file: !2508, line: 1041, baseType: !76, size: 64, offset: 12992)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2507, file: !2508, line: 1042, baseType: !76, size: 64, offset: 13056)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2507, file: !2508, line: 1045, baseType: !136, size: 64, offset: 13120)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !2507, file: !2508, line: 1048, baseType: !136, size: 64, offset: 13184)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2507, file: !2508, line: 1051, baseType: !76, size: 64, offset: 13248)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2507, file: !2508, line: 1052, baseType: !76, size: 64, offset: 13312)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2507, file: !2508, line: 1055, baseType: !2894, size: 640, offset: 13376)
!2894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !2895, line: 132, size: 640, elements: !2896)
!2895 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f124e83e22db0128dd5593dda568fec")
!2896 = !{!2897, !2903, !2904}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !2894, file: !2895, line: 133, baseType: !2898, size: 576)
!2898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2899, size: 576, elements: !262)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !2895, line: 117, size: 192, elements: !2900)
!2900 = !{!2901, !2902}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !2899, file: !2895, line: 118, baseType: !136, size: 64)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !2899, file: !2895, line: 119, baseType: !2672, size: 128, offset: 64)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !2894, file: !2895, line: 134, baseType: !7, size: 32, offset: 576)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !2894, file: !2895, line: 135, baseType: !7, size: 32, offset: 608)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !2507, file: !2508, line: 1058, baseType: !2906, size: 448, offset: 14016)
!2906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !2895, line: 144, size: 448, elements: !2907)
!2907 = !{!2908, !2909, !2910}
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2906, file: !2895, line: 145, baseType: !383, size: 128, align: 64)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2906, file: !2895, line: 146, baseType: !314, size: 256, offset: 128)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !2906, file: !2895, line: 147, baseType: !7, size: 32, offset: 384)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !2507, file: !2508, line: 1064, baseType: !485, size: 64, offset: 14464)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !2507, file: !2508, line: 1067, baseType: !485, size: 64, offset: 14528)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !2507, file: !2508, line: 1070, baseType: !485, size: 64, offset: 14592)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !2507, file: !2508, line: 1074, baseType: !518, size: 64, offset: 14656)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !2507, file: !2508, line: 1084, baseType: !120, size: 128, offset: 14720)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !2507, file: !2508, line: 1086, baseType: !2917, size: 64, offset: 14848)
!2917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2918, size: 64)
!2918 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !2508, line: 55, flags: DIFlagFwdDecl)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "sysvsem", scope: !2507, file: !2508, line: 1089, baseType: !2920, size: 64, offset: 14912)
!2920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_sem", file: !2921, line: 12, size: 64, elements: !2922)
!2921 = !DIFile(filename: "./include/linux/sem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3b407076da0b9479c11d2e5fbdd517c1")
!2922 = !{!2923}
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "undo_list", scope: !2920, file: !2921, line: 13, baseType: !2924, size: 64)
!2924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2925, size: 64)
!2925 = !DICompositeType(tag: DW_TAG_structure_type, name: "sem_undo_list", file: !2921, line: 8, flags: DIFlagFwdDecl)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "sysvshm", scope: !2507, file: !2508, line: 1090, baseType: !2927, size: 128, offset: 14976)
!2927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysv_shm", file: !2928, line: 13, size: 128, elements: !2929)
!2928 = !DIFile(filename: "./include/linux/shm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "431762ef985b6c2a72a4f4fce46480a2")
!2929 = !{!2930}
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "shm_clist", scope: !2927, file: !2928, line: 14, baseType: !360, size: 128)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !2507, file: !2508, line: 1097, baseType: !2932, size: 64, offset: 15104)
!2932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2933, size: 64)
!2933 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !2508, line: 50, flags: DIFlagFwdDecl)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !2507, file: !2508, line: 1100, baseType: !2935, size: 64, offset: 15168)
!2935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2936, size: 64)
!2936 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !2508, line: 1100, flags: DIFlagFwdDecl)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !2507, file: !2508, line: 1103, baseType: !2938, size: 64, offset: 15232)
!2938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2939, size: 64)
!2939 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !2508, line: 53, flags: DIFlagFwdDecl)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !2507, file: !2508, line: 1107, baseType: !2941, size: 64, offset: 15296)
!2941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2942, size: 64)
!2942 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !2508, line: 56, flags: DIFlagFwdDecl)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2507, file: !2508, line: 1110, baseType: !2944, size: 64, offset: 15360)
!2944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2945, size: 64)
!2945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !2946, line: 93, size: 8768, elements: !2947)
!2946 = !DIFile(filename: "./include/linux/sched/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2707d9260b002c52917e9de423a20751")
!2947 = !{!2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2995, !3004, !3005, !3007, !3008, !3009, !3012, !3018, !3019, !3020, !3021, !3022, !3023, !3024, !3025, !3026, !3027, !3028, !3029, !3030, !3031, !3032, !3033, !3034, !3035, !3036, !3037, !3038, !3039, !3050, !3051, !3058, !3068, !3071, !3072, !3075, !3076, !3077, !3078, !3079, !3080}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "sigcnt", scope: !2945, file: !2946, line: 94, baseType: !436, size: 32)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "live", scope: !2945, file: !2946, line: 95, baseType: !340, size: 32, offset: 32)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2945, file: !2946, line: 96, baseType: !100, size: 32, offset: 64)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "quick_threads", scope: !2945, file: !2946, line: 97, baseType: !100, size: 32, offset: 96)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "thread_head", scope: !2945, file: !2946, line: 98, baseType: !360, size: 128, offset: 128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "wait_chldexit", scope: !2945, file: !2946, line: 100, baseType: !456, size: 192, offset: 256)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "curr_target", scope: !2945, file: !2946, line: 103, baseType: !2506, size: 64, offset: 448)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "shared_pending", scope: !2945, file: !2946, line: 106, baseType: !2956, size: 192, offset: 512)
!2956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !685, line: 32, size: 192, elements: !2957)
!2957 = !{!2958, !2959}
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2956, file: !685, line: 33, baseType: !360, size: 128)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !2956, file: !685, line: 34, baseType: !2960, size: 64, offset: 128)
!2960 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !2961, line: 25, baseType: !2962)
!2961 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17c5937f64ff6bd1434a69ceb9a6c563")
!2962 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2961, line: 23, size: 64, elements: !2963)
!2963 = !{!2964}
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2962, file: !2961, line: 24, baseType: !75, size: 64)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "multiprocess", scope: !2945, file: !2946, line: 109, baseType: !445, size: 64, offset: 704)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "group_exit_code", scope: !2945, file: !2946, line: 112, baseType: !100, size: 32, offset: 768)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "notify_count", scope: !2945, file: !2946, line: 114, baseType: !100, size: 32, offset: 800)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "group_exec_task", scope: !2945, file: !2946, line: 115, baseType: !2506, size: 64, offset: 832)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "group_stop_count", scope: !2945, file: !2946, line: 118, baseType: !100, size: 32, offset: 896)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2945, file: !2946, line: 119, baseType: !7, size: 32, offset: 928)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !2945, file: !2946, line: 121, baseType: !2972, size: 64, offset: 960)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !2946, line: 80, size: 448, elements: !2974)
!2974 = !{!2975, !2976, !2982}
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !2973, file: !2946, line: 81, baseType: !340, size: 32)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !2973, file: !2946, line: 82, baseType: !2977, size: 128, offset: 64)
!2977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !2946, line: 75, size: 128, elements: !2978)
!2978 = !{!2979, !2980}
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !2977, file: !2946, line: 76, baseType: !2506, size: 64)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2977, file: !2946, line: 77, baseType: !2981, size: 64, offset: 64)
!2981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2977, size: 64)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !2973, file: !2946, line: 83, baseType: !1787, size: 256, offset: 192)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "is_child_subreaper", scope: !2945, file: !2946, line: 132, baseType: !7, size: 1, offset: 1024, flags: DIFlagBitField, extraData: i64 1024)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "has_child_subreaper", scope: !2945, file: !2946, line: 133, baseType: !7, size: 1, offset: 1025, flags: DIFlagBitField, extraData: i64 1024)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "next_posix_timer_id", scope: !2945, file: !2946, line: 138, baseType: !7, size: 32, offset: 1056)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "posix_timers", scope: !2945, file: !2946, line: 139, baseType: !360, size: 128, offset: 1088)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "real_timer", scope: !2945, file: !2946, line: 142, baseType: !2618, size: 512, offset: 1216)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "it_real_incr", scope: !2945, file: !2946, line: 143, baseType: !2626, size: 64, offset: 1728)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "it", scope: !2945, file: !2946, line: 150, baseType: !2990, size: 256, offset: 1792)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2991, size: 256, elements: !249)
!2991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_itimer", file: !2946, line: 38, size: 128, elements: !2992)
!2992 = !{!2993, !2994}
!2993 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2991, file: !2946, line: 39, baseType: !136, size: 64)
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !2991, file: !2946, line: 40, baseType: !136, size: 64, offset: 64)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "cputimer", scope: !2945, file: !2946, line: 156, baseType: !2996, size: 192, offset: 2048)
!2996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_group_cputimer", file: !2946, line: 66, size: 192, elements: !2997)
!2997 = !{!2998}
!2998 = !DIDerivedType(tag: DW_TAG_member, name: "cputime_atomic", scope: !2996, file: !2946, line: 67, baseType: !2999, size: 192)
!2999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_cputime_atomic", file: !2946, line: 47, size: 192, elements: !3000)
!3000 = !{!3001, !3002, !3003}
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2999, file: !2946, line: 48, baseType: !320, size: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2999, file: !2946, line: 49, baseType: !320, size: 64, offset: 64)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !2999, file: !2946, line: 50, baseType: !320, size: 64, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !2945, file: !2946, line: 160, baseType: !2894, size: 640, offset: 2240)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "pids", scope: !2945, file: !2946, line: 163, baseType: !3006, size: 256, offset: 2880)
!3006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 256, elements: !209)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "tty_old_pgrp", scope: !2945, file: !2946, line: 169, baseType: !432, size: 64, offset: 3136)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "leader", scope: !2945, file: !2946, line: 172, baseType: !100, size: 32, offset: 3200)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "tty", scope: !2945, file: !2946, line: 174, baseType: !3010, size: 64, offset: 3264)
!3010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3011, size: 64)
!3011 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_struct", file: !2946, line: 174, flags: DIFlagFwdDecl)
!3012 = !DIDerivedType(tag: DW_TAG_member, name: "stats_lock", scope: !2945, file: !2946, line: 185, baseType: !3013, size: 64, offset: 3328)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !725, line: 860, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !725, line: 853, size: 64, elements: !3015)
!3015 = !{!3016, !3017}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !3014, file: !725, line: 858, baseType: !724, size: 32)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3014, file: !725, line: 859, baseType: !393, size: 32, offset: 32)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !2945, file: !2946, line: 186, baseType: !136, size: 64, offset: 3392)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !2945, file: !2946, line: 186, baseType: !136, size: 64, offset: 3456)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "cutime", scope: !2945, file: !2946, line: 186, baseType: !136, size: 64, offset: 3520)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "cstime", scope: !2945, file: !2946, line: 186, baseType: !136, size: 64, offset: 3584)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !2945, file: !2946, line: 187, baseType: !136, size: 64, offset: 3648)
!3023 = !DIDerivedType(tag: DW_TAG_member, name: "cgtime", scope: !2945, file: !2946, line: 188, baseType: !136, size: 64, offset: 3712)
!3024 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !2945, file: !2946, line: 189, baseType: !2882, size: 192, offset: 3776)
!3025 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !2945, file: !2946, line: 190, baseType: !76, size: 64, offset: 3968)
!3026 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !2945, file: !2946, line: 190, baseType: !76, size: 64, offset: 4032)
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "cnvcsw", scope: !2945, file: !2946, line: 190, baseType: !76, size: 64, offset: 4096)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "cnivcsw", scope: !2945, file: !2946, line: 190, baseType: !76, size: 64, offset: 4160)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !2945, file: !2946, line: 191, baseType: !76, size: 64, offset: 4224)
!3030 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !2945, file: !2946, line: 191, baseType: !76, size: 64, offset: 4288)
!3031 = !DIDerivedType(tag: DW_TAG_member, name: "cmin_flt", scope: !2945, file: !2946, line: 191, baseType: !76, size: 64, offset: 4352)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "cmaj_flt", scope: !2945, file: !2946, line: 191, baseType: !76, size: 64, offset: 4416)
!3033 = !DIDerivedType(tag: DW_TAG_member, name: "inblock", scope: !2945, file: !2946, line: 192, baseType: !76, size: 64, offset: 4480)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "oublock", scope: !2945, file: !2946, line: 192, baseType: !76, size: 64, offset: 4544)
!3035 = !DIDerivedType(tag: DW_TAG_member, name: "cinblock", scope: !2945, file: !2946, line: 192, baseType: !76, size: 64, offset: 4608)
!3036 = !DIDerivedType(tag: DW_TAG_member, name: "coublock", scope: !2945, file: !2946, line: 192, baseType: !76, size: 64, offset: 4672)
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "maxrss", scope: !2945, file: !2946, line: 193, baseType: !76, size: 64, offset: 4736)
!3038 = !DIDerivedType(tag: DW_TAG_member, name: "cmaxrss", scope: !2945, file: !2946, line: 193, baseType: !76, size: 64, offset: 4800)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2945, file: !2946, line: 194, baseType: !3040, size: 448, offset: 4864)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !3041, line: 12, size: 448, elements: !3042)
!3041 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f1163883a6b1a5e3392a18ac19b36a07")
!3042 = !{!3043, !3044, !3045, !3046, !3047, !3048, !3049}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "rchar", scope: !3040, file: !3041, line: 15, baseType: !136, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "wchar", scope: !3040, file: !3041, line: 17, baseType: !136, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "syscr", scope: !3040, file: !3041, line: 19, baseType: !136, size: 64, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_member, name: "syscw", scope: !3040, file: !3041, line: 21, baseType: !136, size: 64, offset: 192)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "read_bytes", scope: !3040, file: !3041, line: 29, baseType: !136, size: 64, offset: 256)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "write_bytes", scope: !3040, file: !3041, line: 35, baseType: !136, size: 64, offset: 320)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "cancelled_write_bytes", scope: !3040, file: !3041, line: 44, baseType: !136, size: 64, offset: 384)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "sum_sched_runtime", scope: !2945, file: !2946, line: 202, baseType: !139, size: 64, offset: 5312)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "rlim", scope: !2945, file: !2946, line: 213, baseType: !3052, size: 2048, offset: 5376)
!3052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3053, size: 2048, elements: !122)
!3053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !3054, line: 43, size: 128, elements: !3055)
!3054 = !DIFile(filename: "./include/uapi/linux/resource.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75815ef6c8dd9a4b67c6d9e66a696234")
!3055 = !{!3056, !3057}
!3056 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !3053, file: !3054, line: 44, baseType: !304, size: 64)
!3057 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !3053, file: !3054, line: 45, baseType: !304, size: 64, offset: 64)
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "pacct", scope: !2945, file: !2946, line: 216, baseType: !3059, size: 448, offset: 7424)
!3059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pacct_struct", file: !2946, line: 30, size: 448, elements: !3060)
!3060 = !{!3061, !3062, !3063, !3064, !3065, !3066, !3067}
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "ac_flag", scope: !3059, file: !2946, line: 31, baseType: !100, size: 32)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "ac_exitcode", scope: !3059, file: !2946, line: 32, baseType: !873, size: 64, offset: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "ac_mem", scope: !3059, file: !2946, line: 33, baseType: !76, size: 64, offset: 128)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "ac_utime", scope: !3059, file: !2946, line: 34, baseType: !136, size: 64, offset: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "ac_stime", scope: !3059, file: !2946, line: 34, baseType: !136, size: 64, offset: 256)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "ac_minflt", scope: !3059, file: !2946, line: 35, baseType: !76, size: 64, offset: 320)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "ac_majflt", scope: !3059, file: !2946, line: 35, baseType: !76, size: 64, offset: 384)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2945, file: !2946, line: 219, baseType: !3069, size: 64, offset: 7872)
!3069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3070, size: 64)
!3070 = !DICompositeType(tag: DW_TAG_structure_type, name: "taskstats", file: !2946, line: 219, flags: DIFlagFwdDecl)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "audit_tty", scope: !2945, file: !2946, line: 222, baseType: !7, size: 32, offset: 7936)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "tty_audit_buf", scope: !2945, file: !2946, line: 223, baseType: !3073, size: 64, offset: 8000)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3074, size: 64)
!3074 = !DICompositeType(tag: DW_TAG_structure_type, name: "tty_audit_buf", file: !2946, line: 223, flags: DIFlagFwdDecl)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "oom_flag_origin", scope: !2945, file: !2946, line: 230, baseType: !155, size: 8, offset: 8064)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj", scope: !2945, file: !2946, line: 231, baseType: !569, size: 16, offset: 8080)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "oom_score_adj_min", scope: !2945, file: !2946, line: 232, baseType: !569, size: 16, offset: 8096)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "oom_mm", scope: !2945, file: !2946, line: 234, baseType: !1412, size: 64, offset: 8128)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "cred_guard_mutex", scope: !2945, file: !2946, line: 237, baseType: !314, size: 256, offset: 8192)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "exec_update_lock", scope: !2945, file: !2946, line: 243, baseType: !541, size: 320, offset: 8448)
!3081 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !2507, file: !2508, line: 1111, baseType: !3082, size: 64, offset: 15424)
!3082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3083, size: 64)
!3083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !2946, line: 20, size: 16640, elements: !3084)
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "siglock", scope: !3083, file: !2946, line: 21, baseType: !393, size: 32)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3083, file: !2946, line: 22, baseType: !436, size: 32, offset: 32)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "signalfd_wqh", scope: !3083, file: !2946, line: 23, baseType: !456, size: 192, offset: 64)
!3088 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !3083, file: !2946, line: 24, baseType: !3089, size: 16384, offset: 256)
!3089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3090, size: 16384, elements: !126)
!3090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "k_sigaction", file: !685, line: 51, size: 256, elements: !3091)
!3091 = !{!3092}
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !3090, file: !685, line: 52, baseType: !3093, size: 256)
!3093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigaction", file: !685, line: 37, size: 256, elements: !3094)
!3094 = !{!3095, !3102, !3103, !3107}
!3095 = !DIDerivedType(tag: DW_TAG_member, name: "sa_handler", scope: !3093, file: !685, line: 39, baseType: !3096, size: 64)
!3096 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !3097, line: 83, baseType: !3098)
!3097 = !DIFile(filename: "./include/uapi/asm-generic/signal-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b2c8f056e35777be7e127ebbe5efe17a")
!3098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3099, size: 64)
!3099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__signalfn_t", file: !3097, line: 82, baseType: !3100)
!3100 = !DISubroutineType(types: !3101)
!3101 = !{null, !100}
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "sa_flags", scope: !3093, file: !685, line: 40, baseType: !76, size: 64, offset: 64)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "sa_restorer", scope: !3093, file: !685, line: 46, baseType: !3104, size: 64, offset: 128)
!3104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigrestore_t", file: !3097, line: 86, baseType: !3105)
!3105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3106, size: 64)
!3106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__restorefn_t", file: !3097, line: 85, baseType: !2135)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "sa_mask", scope: !3093, file: !685, line: 48, baseType: !2960, size: 64, offset: 192)
!3108 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !2507, file: !2508, line: 1112, baseType: !2960, size: 64, offset: 15488)
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !2507, file: !2508, line: 1113, baseType: !2960, size: 64, offset: 15552)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !2507, file: !2508, line: 1115, baseType: !2960, size: 64, offset: 15616)
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !2507, file: !2508, line: 1116, baseType: !2956, size: 192, offset: 15680)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !2507, file: !2508, line: 1117, baseType: !76, size: 64, offset: 15872)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !2507, file: !2508, line: 1118, baseType: !301, size: 64, offset: 15936)
!3114 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !2507, file: !2508, line: 1119, baseType: !7, size: 32, offset: 16000)
!3115 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !2507, file: !2508, line: 1121, baseType: !386, size: 64, offset: 16064)
!3116 = !DIDerivedType(tag: DW_TAG_member, name: "audit_context", scope: !2507, file: !2508, line: 1125, baseType: !3117, size: 64, offset: 16128)
!3117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3118, size: 64)
!3118 = !DICompositeType(tag: DW_TAG_structure_type, name: "audit_context", file: !2508, line: 43, flags: DIFlagFwdDecl)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "loginuid", scope: !2507, file: !2508, line: 1127, baseType: !475, size: 32, offset: 16192)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "sessionid", scope: !2507, file: !2508, line: 1128, baseType: !7, size: 32, offset: 16224)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !2507, file: !2508, line: 1130, baseType: !3122, size: 128, offset: 16256)
!3122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !3123, line: 37, size: 128, elements: !3124)
!3123 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7db0289d3efe57e410a7b35ec2f4d646")
!3124 = !{!3125, !3126, !3127}
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !3122, file: !3123, line: 38, baseType: !100, size: 32)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !3122, file: !3123, line: 39, baseType: !340, size: 32, offset: 32)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !3122, file: !3123, line: 40, baseType: !3128, size: 64, offset: 64)
!3128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3129, size: 64)
!3129 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !3123, line: 24, flags: DIFlagFwdDecl)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_dispatch", scope: !2507, file: !2508, line: 1131, baseType: !3131, size: 256, offset: 16384)
!3131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "syscall_user_dispatch", file: !3132, line: 12, size: 256, elements: !3133)
!3132 = !DIFile(filename: "./include/linux/syscall_user_dispatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3ec9c7724c55317b16bf5e0c722aa190")
!3133 = !{!3134, !3135, !3136, !3137}
!3134 = !DIDerivedType(tag: DW_TAG_member, name: "selector", scope: !3131, file: !3132, line: 13, baseType: !299, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3131, file: !3132, line: 14, baseType: !76, size: 64, offset: 64)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3131, file: !3132, line: 15, baseType: !76, size: 64, offset: 128)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "on_dispatch", scope: !3131, file: !3132, line: 16, baseType: !155, size: 8, offset: 192)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !2507, file: !2508, line: 1134, baseType: !136, size: 64, offset: 16640)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !2507, file: !2508, line: 1135, baseType: !136, size: 64, offset: 16704)
!3140 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !2507, file: !2508, line: 1138, baseType: !393, size: 32, offset: 16768)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !2507, file: !2508, line: 1141, baseType: !327, size: 32, offset: 16800)
!3142 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !2507, file: !2508, line: 1143, baseType: !3143, size: 64, offset: 16832)
!3143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !2508, line: 735, size: 64, elements: !3144)
!3144 = !{!3145}
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3143, file: !2508, line: 736, baseType: !3146, size: 64)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3143, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !2507, file: !2508, line: 1147, baseType: !1126, size: 128, offset: 16896)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !2507, file: !2508, line: 1149, baseType: !2506, size: 64, offset: 17024)
!3149 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !2507, file: !2508, line: 1151, baseType: !3150, size: 64, offset: 17088)
!3150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3151, size: 64)
!3151 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !2508, line: 1151, flags: DIFlagFwdDecl)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !2507, file: !2508, line: 1188, baseType: !163, size: 64, offset: 17152)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !2507, file: !2508, line: 1191, baseType: !3154, size: 64, offset: 17216)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !2508, line: 44, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !2507, file: !2508, line: 1194, baseType: !3157, size: 64, offset: 17280)
!3157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3158, size: 64)
!3158 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !2508, line: 45, flags: DIFlagFwdDecl)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !2507, file: !2508, line: 1197, baseType: !3160, size: 64, offset: 17344)
!3160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3161 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !2508, line: 61, flags: DIFlagFwdDecl)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !2507, file: !2508, line: 1199, baseType: !3163, size: 64, offset: 17408)
!3163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3164, size: 64)
!3164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !3165, line: 99, size: 128, elements: !3166)
!3165 = !DIFile(filename: "./include/linux/iocontext.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "669329e5d8996a71da7fa0b321760590")
!3166 = !{!3167, !3168, !3169}
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !3164, file: !3165, line: 100, baseType: !318, size: 64)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "active_ref", scope: !3164, file: !3165, line: 101, baseType: !340, size: 32, offset: 64)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "ioprio", scope: !3164, file: !3165, line: 103, baseType: !143, size: 16, offset: 96)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !2507, file: !2508, line: 1202, baseType: !3171, size: 64, offset: 17472)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !2508, line: 48, flags: DIFlagFwdDecl)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !2507, file: !2508, line: 1205, baseType: !76, size: 64, offset: 17536)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !2507, file: !2508, line: 1206, baseType: !3175, size: 64, offset: 17600)
!3175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3176, size: 64)
!3176 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !685, line: 14, baseType: !3177)
!3177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !685, line: 12, size: 384, elements: !3178)
!3178 = !{!3179}
!3179 = !DIDerivedType(tag: DW_TAG_member, scope: !3177, file: !685, line: 13, baseType: !3180, size: 384)
!3180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3177, file: !685, line: 13, size: 384, elements: !3181)
!3181 = !{!3182, !3183, !3184, !3185}
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !3180, file: !685, line: 13, baseType: !100, size: 32)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !3180, file: !685, line: 13, baseType: !100, size: 32, offset: 32)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !3180, file: !685, line: 13, baseType: !100, size: 32, offset: 64)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !3180, file: !685, line: 13, baseType: !3186, size: 256, offset: 128)
!3186 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !3187, line: 37, size: 256, elements: !3188)
!3187 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64bfb3097c172d695ac71c3a6f1682bb")
!3188 = !{!3189, !3194, !3207, !3213, !3222, !3248, !3253}
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !3186, file: !3187, line: 42, baseType: !3190, size: 64)
!3190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 39, size: 64, elements: !3191)
!3191 = !{!3192, !3193}
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3190, file: !3187, line: 40, baseType: !2859, size: 32)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3190, file: !3187, line: 41, baseType: !481, size: 32, offset: 32)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !3186, file: !3187, line: 50, baseType: !3195, size: 192)
!3195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 45, size: 192, elements: !3196)
!3196 = !{!3197, !3199, !3200, !3206}
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !3195, file: !3187, line: 46, baseType: !3198, size: 32)
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !303, line: 95, baseType: !100)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !3195, file: !3187, line: 47, baseType: !100, size: 32, offset: 32)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3195, file: !3187, line: 48, baseType: !3201, size: 64, offset: 64)
!3201 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !3187, line: 11, baseType: !3202)
!3202 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !3187, line: 8, size: 64, elements: !3203)
!3203 = !{!3204, !3205}
!3204 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !3202, file: !3187, line: 9, baseType: !100, size: 32)
!3205 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !3202, file: !3187, line: 10, baseType: !163, size: 64)
!3206 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !3195, file: !3187, line: 49, baseType: !100, size: 32, offset: 128)
!3207 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !3186, file: !3187, line: 57, baseType: !3208, size: 128)
!3208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 53, size: 128, elements: !3209)
!3209 = !{!3210, !3211, !3212}
!3210 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3208, file: !3187, line: 54, baseType: !2859, size: 32)
!3211 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3208, file: !3187, line: 55, baseType: !481, size: 32, offset: 32)
!3212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !3208, file: !3187, line: 56, baseType: !3201, size: 64, offset: 64)
!3213 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !3186, file: !3187, line: 66, baseType: !3214, size: 256)
!3214 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 60, size: 256, elements: !3215)
!3215 = !{!3216, !3217, !3218, !3219, !3221}
!3216 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !3214, file: !3187, line: 61, baseType: !2859, size: 32)
!3217 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !3214, file: !3187, line: 62, baseType: !481, size: 32, offset: 32)
!3218 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !3214, file: !3187, line: 63, baseType: !100, size: 32, offset: 64)
!3219 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !3214, file: !3187, line: 64, baseType: !3220, size: 64, offset: 128)
!3220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !303, line: 94, baseType: !915)
!3221 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !3214, file: !3187, line: 65, baseType: !3220, size: 64, offset: 192)
!3222 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !3186, file: !3187, line: 105, baseType: !3223, size: 256)
!3223 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 69, size: 256, elements: !3224)
!3224 = !{!3225, !3226}
!3225 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !3223, file: !3187, line: 70, baseType: !163, size: 64)
!3226 = !DIDerivedType(tag: DW_TAG_member, scope: !3223, file: !3187, line: 79, baseType: !3227, size: 192, offset: 64)
!3227 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3223, file: !3187, line: 79, size: 192, elements: !3228)
!3228 = !{!3229, !3230, !3231, !3237, !3242}
!3229 = !DIDerivedType(tag: DW_TAG_member, name: "_trapno", scope: !3227, file: !3187, line: 81, baseType: !100, size: 32)
!3230 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !3227, file: !3187, line: 86, baseType: !569, size: 16)
!3231 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !3227, file: !3187, line: 92, baseType: !3232, size: 192)
!3232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3187, line: 88, size: 192, elements: !3233)
!3233 = !{!3234, !3235, !3236}
!3234 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !3232, file: !3187, line: 89, baseType: !179, size: 64)
!3235 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !3232, file: !3187, line: 90, baseType: !163, size: 64, offset: 64)
!3236 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !3232, file: !3187, line: 91, baseType: !163, size: 64, offset: 128)
!3237 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !3227, file: !3187, line: 97, baseType: !3238, size: 96)
!3238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3187, line: 94, size: 96, elements: !3239)
!3239 = !{!3240, !3241}
!3240 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !3238, file: !3187, line: 95, baseType: !179, size: 64)
!3241 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !3238, file: !3187, line: 96, baseType: !97, size: 32, offset: 64)
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "_perf", scope: !3227, file: !3187, line: 103, baseType: !3243, size: 128)
!3243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3227, file: !3187, line: 99, size: 128, elements: !3244)
!3244 = !{!3245, !3246, !3247}
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !3243, file: !3187, line: 100, baseType: !76, size: 64)
!3246 = !DIDerivedType(tag: DW_TAG_member, name: "_type", scope: !3243, file: !3187, line: 101, baseType: !97, size: 32, offset: 64)
!3247 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3243, file: !3187, line: 102, baseType: !97, size: 32, offset: 96)
!3248 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !3186, file: !3187, line: 111, baseType: !3249, size: 128)
!3249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 108, size: 128, elements: !3250)
!3250 = !{!3251, !3252}
!3251 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !3249, file: !3187, line: 109, baseType: !873, size: 64)
!3252 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !3249, file: !3187, line: 110, baseType: !100, size: 32, offset: 64)
!3253 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !3186, file: !3187, line: 118, baseType: !3254, size: 128)
!3254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3186, file: !3187, line: 114, size: 128, elements: !3255)
!3255 = !{!3256, !3257, !3258}
!3256 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !3254, file: !3187, line: 115, baseType: !163, size: 64)
!3257 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !3254, file: !3187, line: 116, baseType: !100, size: 32, offset: 64)
!3258 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !3254, file: !3187, line: 117, baseType: !7, size: 32, offset: 96)
!3259 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !2507, file: !2508, line: 1208, baseType: !3040, size: 448, offset: 17664)
!3260 = !DIDerivedType(tag: DW_TAG_member, name: "acct_rss_mem1", scope: !2507, file: !2508, line: 1215, baseType: !136, size: 64, offset: 18112)
!3261 = !DIDerivedType(tag: DW_TAG_member, name: "acct_vm_mem1", scope: !2507, file: !2508, line: 1217, baseType: !136, size: 64, offset: 18176)
!3262 = !DIDerivedType(tag: DW_TAG_member, name: "acct_timexpd", scope: !2507, file: !2508, line: 1219, baseType: !136, size: 64, offset: 18240)
!3263 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed", scope: !2507, file: !2508, line: 1223, baseType: !3264, size: 64, offset: 18304)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !3265, line: 99, baseType: !3266)
!3265 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!3266 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3265, line: 99, size: 64, elements: !3267)
!3267 = !{!3268}
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !3266, file: !3265, line: 99, baseType: !75, size: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "mems_allowed_seq", scope: !2507, file: !2508, line: 1225, baseType: !724, size: 32, offset: 18368)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_mem_spread_rotor", scope: !2507, file: !2508, line: 1226, baseType: !100, size: 32, offset: 18400)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "cpuset_slab_spread_rotor", scope: !2507, file: !2508, line: 1227, baseType: !100, size: 32, offset: 18432)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "cgroups", scope: !2507, file: !2508, line: 1231, baseType: !3273, size: 64, offset: 18496)
!3273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3274, size: 64)
!3274 = !DICompositeType(tag: DW_TAG_structure_type, name: "css_set", file: !2508, line: 1231, flags: DIFlagFwdDecl)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "cg_list", scope: !2507, file: !2508, line: 1233, baseType: !360, size: 128, offset: 18560)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !2507, file: !2508, line: 1240, baseType: !3277, size: 64, offset: 18688)
!3277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3278 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !2508, line: 62, flags: DIFlagFwdDecl)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "compat_robust_list", scope: !2507, file: !2508, line: 1242, baseType: !3280, size: 64, offset: 18752)
!3280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3281, size: 64)
!3281 = !DICompositeType(tag: DW_TAG_structure_type, name: "compat_robust_list_head", file: !2508, line: 1242, flags: DIFlagFwdDecl)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !2507, file: !2508, line: 1244, baseType: !360, size: 128, offset: 18816)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !2507, file: !2508, line: 1245, baseType: !3284, size: 64, offset: 18944)
!3284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3285, size: 64)
!3285 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !2508, line: 51, flags: DIFlagFwdDecl)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !2507, file: !2508, line: 1246, baseType: !314, size: 256, offset: 19008)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !2507, file: !2508, line: 1247, baseType: !7, size: 32, offset: 19264)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !2507, file: !2508, line: 1250, baseType: !3289, size: 64, offset: 19328)
!3289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3290, size: 64)
!3290 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !2508, line: 57, flags: DIFlagFwdDecl)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !2507, file: !2508, line: 1251, baseType: !314, size: 256, offset: 19392)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !2507, file: !2508, line: 1252, baseType: !360, size: 128, offset: 19648)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "mempolicy", scope: !2507, file: !2508, line: 1259, baseType: !1618, size: 64, offset: 19776)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "il_prev", scope: !2507, file: !2508, line: 1260, baseType: !569, size: 16, offset: 19840)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "pref_node_fork", scope: !2507, file: !2508, line: 1261, baseType: !569, size: 16, offset: 19856)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !2507, file: !2508, line: 1314, baseType: !3297, size: 64, offset: 19904)
!3297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3298, size: 64)
!3298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !3299, line: 62, size: 256, align: 256, elements: !3300)
!3299 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14ee3fd2d5d9bc34e2a36070af8ac5ed")
!3300 = !{!3301, !3302, !3303, !3304, !3305, !3306, !3307}
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !3298, file: !3299, line: 75, baseType: !97, size: 32)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !3298, file: !3299, line: 90, baseType: !97, size: 32, offset: 32)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !3298, file: !3299, line: 112, baseType: !138, size: 64, offset: 64)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3298, file: !3299, line: 132, baseType: !97, size: 32, offset: 128)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "node_id", scope: !3298, file: !3299, line: 140, baseType: !97, size: 32, offset: 160)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !3298, file: !3299, line: 149, baseType: !97, size: 32, offset: 192)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !3298, file: !3299, line: 154, baseType: !3308, offset: 224)
!3308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, elements: !471)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_len", scope: !2507, file: !2508, line: 1315, baseType: !159, size: 32, offset: 19968)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !2507, file: !2508, line: 1316, baseType: !159, size: 32, offset: 20000)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !2507, file: !2508, line: 1321, baseType: !76, size: 64, offset: 20032)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid", scope: !2507, file: !2508, line: 1325, baseType: !100, size: 32, offset: 20096)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "last_mm_cid", scope: !2507, file: !2508, line: 1326, baseType: !100, size: 32, offset: 20128)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "migrate_from_cpu", scope: !2507, file: !2508, line: 1327, baseType: !100, size: 32, offset: 20160)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_active", scope: !2507, file: !2508, line: 1328, baseType: !100, size: 32, offset: 20192)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "cid_work", scope: !2507, file: !2508, line: 1329, baseType: !383, size: 128, align: 64, offset: 20224)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !2507, file: !2508, line: 1332, baseType: !3318, size: 128, offset: 20352)
!3318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !3319, line: 51, size: 128, elements: !3320)
!3319 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aa1330922245d7ffa77924c47357e55d")
!3320 = !{!3321, !3326, !3327}
!3321 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !3318, file: !3319, line: 60, baseType: !3322, size: 64)
!3322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !3323, line: 7, size: 64, elements: !3324)
!3323 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a9b5c2590bec400e339804a93b4260d5")
!3324 = !{!3325}
!3325 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !3322, file: !3323, line: 12, baseType: !71, size: 64)
!3326 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !3318, file: !3319, line: 63, baseType: !155, size: 8, offset: 64)
!3327 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !3318, file: !3319, line: 70, baseType: !155, size: 8, offset: 72)
!3328 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !2507, file: !2508, line: 1335, baseType: !3329, size: 64, offset: 20480)
!3329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3330, size: 64)
!3330 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !2508, line: 59, flags: DIFlagFwdDecl)
!3331 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !2507, file: !2508, line: 1337, baseType: !3332, size: 128, offset: 20544)
!3332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !3319, line: 39, size: 128, elements: !3333)
!3333 = !{!3334, !3335, !3336}
!3334 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !3332, file: !3319, line: 40, baseType: !1144, size: 64)
!3335 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3332, file: !3319, line: 42, baseType: !97, size: 32, offset: 64)
!3336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3332, file: !3319, line: 43, baseType: !97, size: 32, offset: 96)
!3337 = !DIDerivedType(tag: DW_TAG_member, name: "delays", scope: !2507, file: !2508, line: 1340, baseType: !3338, size: 64, offset: 20672)
!3338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3339, size: 64)
!3339 = !DICompositeType(tag: DW_TAG_structure_type, name: "task_delay_info", file: !2508, line: 69, flags: DIFlagFwdDecl)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !2507, file: !2508, line: 1351, baseType: !100, size: 32, offset: 20736)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !2507, file: !2508, line: 1352, baseType: !100, size: 32, offset: 20768)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !2507, file: !2508, line: 1354, baseType: !76, size: 64, offset: 20800)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !2507, file: !2508, line: 1364, baseType: !136, size: 64, offset: 20864)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !2507, file: !2508, line: 1365, baseType: !136, size: 64, offset: 20928)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "trace_recursion", scope: !2507, file: !2508, line: 1412, baseType: !76, size: 64, offset: 20992)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "throttle_disk", scope: !2507, file: !2508, line: 1453, baseType: !3347, size: 64, offset: 21056)
!3347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3348, size: 64)
!3348 = !DICompositeType(tag: DW_TAG_structure_type, name: "gendisk", file: !2508, line: 1453, flags: DIFlagFwdDecl)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "utask", scope: !2507, file: !2508, line: 1457, baseType: !3350, size: 64, offset: 21120)
!3350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3351, size: 64)
!3351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_task", file: !57, line: 61, size: 576, elements: !3352)
!3352 = !{!3353, !3354, !3373, !3376, !3377, !3410, !3420}
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !3351, file: !57, line: 62, baseType: !56, size: 32)
!3354 = !DIDerivedType(tag: DW_TAG_member, scope: !3351, file: !57, line: 64, baseType: !3355, size: 192, offset: 64)
!3355 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3351, file: !57, line: 64, size: 192, elements: !3356)
!3356 = !{!3357, !3368}
!3357 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !57, line: 65, baseType: !3358, size: 192)
!3358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3355, file: !57, line: 65, size: 192, elements: !3359)
!3359 = !{!3360, !3367}
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "autask", scope: !3358, file: !57, line: 66, baseType: !3361, size: 128)
!3361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe_task", file: !3362, line: 50, size: 128, elements: !3363)
!3362 = !DIFile(filename: "./arch/x86/include/asm/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d2e96ecb2d43ead22eefb8c49da2f003")
!3363 = !{!3364, !3365, !3366}
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "saved_scratch_register", scope: !3361, file: !3362, line: 52, baseType: !76, size: 64)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "saved_trap_nr", scope: !3361, file: !3362, line: 54, baseType: !7, size: 32, offset: 64)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tf", scope: !3361, file: !3362, line: 55, baseType: !7, size: 32, offset: 96)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "vaddr", scope: !3358, file: !57, line: 67, baseType: !76, size: 64, offset: 128)
!3368 = !DIDerivedType(tag: DW_TAG_member, scope: !3355, file: !57, line: 70, baseType: !3369, size: 192)
!3369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3355, file: !57, line: 70, size: 192, elements: !3370)
!3370 = !{!3371, !3372}
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_work", scope: !3369, file: !57, line: 71, baseType: !383, size: 128, align: 64)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "dup_xol_addr", scope: !3369, file: !57, line: 72, baseType: !76, size: 64, offset: 128)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "active_uprobe", scope: !3351, file: !57, line: 76, baseType: !3374, size: 64, offset: 256)
!3374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3375, size: 64)
!3375 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe", file: !57, line: 76, flags: DIFlagFwdDecl)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "xol_vaddr", scope: !3351, file: !57, line: 77, baseType: !76, size: 64, offset: 320)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "auprobe", scope: !3351, file: !57, line: 79, baseType: !3378, size: 64, offset: 384)
!3378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3379, size: 64)
!3379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_uprobe", file: !3362, line: 25, size: 256, elements: !3380)
!3380 = !{!3381, !3387, !3391}
!3381 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !3362, line: 26, baseType: !3382, size: 128)
!3382 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !3362, line: 26, size: 128, elements: !3383)
!3383 = !{!3384, !3386}
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !3382, file: !3362, line: 27, baseType: !3385, size: 128)
!3385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !122)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "ixol", scope: !3382, file: !3362, line: 28, baseType: !3385, size: 128)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !3379, file: !3362, line: 31, baseType: !3388, size: 64, offset: 128)
!3388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3389, size: 64)
!3389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3390)
!3390 = !DICompositeType(tag: DW_TAG_structure_type, name: "uprobe_xol_ops", file: !3362, line: 23, flags: DIFlagFwdDecl)
!3391 = !DIDerivedType(tag: DW_TAG_member, scope: !3379, file: !3362, line: 33, baseType: !3392, size: 64, offset: 192)
!3392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3379, file: !3362, line: 33, size: 64, elements: !3393)
!3393 = !{!3394, !3400, !3405}
!3394 = !DIDerivedType(tag: DW_TAG_member, name: "branch", scope: !3392, file: !3362, line: 38, baseType: !3395, size: 64)
!3395 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !3362, line: 34, size: 64, elements: !3396)
!3396 = !{!3397, !3398, !3399}
!3397 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !3395, file: !3362, line: 35, baseType: !526, size: 32)
!3398 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3395, file: !3362, line: 36, baseType: !161, size: 8, offset: 32)
!3399 = !DIDerivedType(tag: DW_TAG_member, name: "opc1", scope: !3395, file: !3362, line: 37, baseType: !161, size: 8, offset: 40)
!3400 = !DIDerivedType(tag: DW_TAG_member, name: "defparam", scope: !3392, file: !3362, line: 42, baseType: !3401, size: 16)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !3362, line: 39, size: 16, elements: !3402)
!3402 = !{!3403, !3404}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "fixups", scope: !3401, file: !3362, line: 40, baseType: !161, size: 8)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3401, file: !3362, line: 41, baseType: !161, size: 8, offset: 8)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "push", scope: !3392, file: !3362, line: 46, baseType: !3406, size: 16)
!3406 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3392, file: !3362, line: 43, size: 16, elements: !3407)
!3407 = !{!3408, !3409}
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "reg_offset", scope: !3406, file: !3362, line: 44, baseType: !161, size: 8)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "ilen", scope: !3406, file: !3362, line: 45, baseType: !161, size: 8, offset: 8)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "return_instances", scope: !3351, file: !57, line: 81, baseType: !3411, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3412, size: 64)
!3412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "return_instance", file: !57, line: 85, size: 384, elements: !3413)
!3413 = !{!3414, !3415, !3416, !3417, !3418, !3419}
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "uprobe", scope: !3412, file: !57, line: 86, baseType: !3374, size: 64)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !3412, file: !57, line: 87, baseType: !76, size: 64, offset: 64)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !3412, file: !57, line: 88, baseType: !76, size: 64, offset: 128)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ret_vaddr", scope: !3412, file: !57, line: 89, baseType: !76, size: 64, offset: 192)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "chained", scope: !3412, file: !57, line: 90, baseType: !155, size: 8, offset: 256)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !3412, file: !57, line: 92, baseType: !3411, size: 64, offset: 320)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !3351, file: !57, line: 82, baseType: !7, size: 32, offset: 512)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "kmap_ctrl", scope: !2507, file: !2508, line: 1463, baseType: !3422, offset: 21184)
!3422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmap_ctrl", file: !2508, line: 739, elements: !1433)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !2507, file: !2508, line: 1470, baseType: !383, size: 128, align: 64, offset: 21184)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !2507, file: !2508, line: 1471, baseType: !436, size: 32, offset: 21312)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !2507, file: !2508, line: 1472, baseType: !100, size: 32, offset: 21344)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !2507, file: !2508, line: 1474, baseType: !2506, size: 64, offset: 21376)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_timer", scope: !2507, file: !2508, line: 1475, baseType: !2031, size: 320, offset: 21440)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !2507, file: !2508, line: 1478, baseType: !3429, size: 64, offset: 21760)
!3429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3430, size: 64)
!3430 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !2508, line: 1478, flags: DIFlagFwdDecl)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !2507, file: !2508, line: 1482, baseType: !436, size: 32, offset: 21824)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "security", scope: !2507, file: !2508, line: 1489, baseType: !163, size: 64, offset: 21888)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !2507, file: !2508, line: 1504, baseType: !163, size: 64, offset: 21952)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !2507, file: !2508, line: 1505, baseType: !138, size: 64, offset: 22016)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !2507, file: !2508, line: 1506, baseType: !136, size: 64, offset: 22080)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !2507, file: !2508, line: 1507, baseType: !138, size: 1, offset: 22144, flags: DIFlagBitField, extraData: i64 22144)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !2507, file: !2508, line: 1508, baseType: !138, size: 1, offset: 22145, flags: DIFlagBitField, extraData: i64 22144)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !2507, file: !2508, line: 1509, baseType: !138, size: 62, offset: 22146, flags: DIFlagBitField, extraData: i64 22144)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !2507, file: !2508, line: 1510, baseType: !383, size: 128, align: 64, offset: 22208)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "mce_count", scope: !2507, file: !2508, line: 1511, baseType: !100, size: 32, offset: 22336)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "kretprobe_instances", scope: !2507, file: !2508, line: 1515, baseType: !3442, size: 64, offset: 22400)
!3442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_head", file: !378, line: 56, size: 64, elements: !3443)
!3443 = !{!3444}
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !3442, file: !378, line: 57, baseType: !381, size: 64)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "rethooks", scope: !2507, file: !2508, line: 1518, baseType: !3442, size: 64, offset: 22464)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "l1d_flush_kill", scope: !2507, file: !2508, line: 1528, baseType: !383, size: 128, align: 64, offset: 22528)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !2507, file: !2508, line: 1552, baseType: !3448, size: 35328, offset: 23040)
!3448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !81, line: 430, size: 35328, elements: !3449)
!3449 = !{!3450, !3468, !3469, !3470, !3471, !3472, !3473, !3474, !3475, !3479, !3480, !3481, !3482, !3483, !3484, !3487, !3488, !3489, !3490}
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !3448, file: !81, line: 432, baseType: !3451, size: 192)
!3451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3452, size: 192, elements: !262)
!3452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !3453, line: 16, size: 64, elements: !3454)
!3453 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1132ca6495a01d3e281c9a70a74508fc")
!3454 = !{!3455, !3456, !3457, !3458, !3459, !3460, !3461, !3462, !3463, !3464, !3465, !3466, !3467}
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !3452, file: !3453, line: 17, baseType: !141, size: 16)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !3452, file: !3453, line: 18, baseType: !141, size: 16, offset: 16)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !3452, file: !3453, line: 19, baseType: !141, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3452, file: !3453, line: 19, baseType: !141, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !3452, file: !3453, line: 19, baseType: !141, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!3460 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !3452, file: !3453, line: 19, baseType: !141, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!3461 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !3452, file: !3453, line: 19, baseType: !141, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!3462 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !3452, file: !3453, line: 20, baseType: !141, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!3463 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !3452, file: !3453, line: 20, baseType: !141, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!3464 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !3452, file: !3453, line: 20, baseType: !141, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!3465 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !3452, file: !3453, line: 20, baseType: !141, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!3466 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !3452, file: !3453, line: 20, baseType: !141, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!3467 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !3452, file: !3453, line: 20, baseType: !141, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3448, file: !81, line: 436, baseType: !76, size: 64, offset: 192)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !3448, file: !81, line: 440, baseType: !143, size: 16, offset: 256)
!3470 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !3448, file: !81, line: 441, baseType: !143, size: 16, offset: 272)
!3471 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !3448, file: !81, line: 442, baseType: !143, size: 16, offset: 288)
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !3448, file: !81, line: 443, baseType: !143, size: 16, offset: 304)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !3448, file: !81, line: 447, baseType: !76, size: 64, offset: 320)
!3474 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !3448, file: !81, line: 448, baseType: !76, size: 64, offset: 384)
!3475 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !3448, file: !81, line: 459, baseType: !3476, size: 256, offset: 448)
!3476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3477, size: 256, elements: !209)
!3477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3478, size: 64)
!3478 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !81, line: 428, flags: DIFlagFwdDecl)
!3479 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !3448, file: !81, line: 461, baseType: !76, size: 64, offset: 704)
!3480 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !3448, file: !81, line: 463, baseType: !76, size: 64, offset: 768)
!3481 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !3448, file: !81, line: 465, baseType: !76, size: 64, offset: 832)
!3482 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !3448, file: !81, line: 466, baseType: !76, size: 64, offset: 896)
!3483 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !3448, file: !81, line: 467, baseType: !76, size: 64, offset: 960)
!3484 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !3448, file: !81, line: 473, baseType: !3485, size: 64, offset: 1024)
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !81, line: 10, flags: DIFlagFwdDecl)
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !3448, file: !81, line: 480, baseType: !76, size: 64, offset: 1088)
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_warn", scope: !3448, file: !81, line: 482, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "pkru", scope: !3448, file: !81, line: 491, baseType: !159, size: 32, offset: 1184)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !3448, file: !81, line: 501, baseType: !3491, size: 33792, offset: 1536)
!3491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !3492, line: 448, size: 33792, elements: !3493)
!3492 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e48600e9af92ab85fc1f5ab2d19faac")
!3493 = !{!3494, !3495, !3496, !3658, !3659, !3665, !3666}
!3494 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !3491, file: !3492, line: 461, baseType: !7, size: 32)
!3495 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !3491, file: !3492, line: 468, baseType: !76, size: 64, offset: 64)
!3496 = !DIDerivedType(tag: DW_TAG_member, name: "fpstate", scope: !3491, file: !3492, line: 476, baseType: !3497, size: 64, offset: 128)
!3497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3498, size: 64)
!3498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpstate", file: !3492, line: 356, size: 33280, align: 512, elements: !3499)
!3499 = !{!3500, !3501, !3502, !3503, !3504, !3505, !3506, !3507, !3508, !3509}
!3500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3498, file: !3492, line: 358, baseType: !7, size: 32)
!3501 = !DIDerivedType(tag: DW_TAG_member, name: "user_size", scope: !3498, file: !3492, line: 361, baseType: !7, size: 32, offset: 32)
!3502 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3498, file: !3492, line: 364, baseType: !136, size: 64, offset: 64)
!3503 = !DIDerivedType(tag: DW_TAG_member, name: "user_xfeatures", scope: !3498, file: !3492, line: 367, baseType: !136, size: 64, offset: 128)
!3504 = !DIDerivedType(tag: DW_TAG_member, name: "xfd", scope: !3498, file: !3492, line: 370, baseType: !136, size: 64, offset: 192)
!3505 = !DIDerivedType(tag: DW_TAG_member, name: "is_valloc", scope: !3498, file: !3492, line: 373, baseType: !7, size: 1, offset: 256, flags: DIFlagBitField, extraData: i64 256)
!3506 = !DIDerivedType(tag: DW_TAG_member, name: "is_guest", scope: !3498, file: !3492, line: 376, baseType: !7, size: 1, offset: 257, flags: DIFlagBitField, extraData: i64 256)
!3507 = !DIDerivedType(tag: DW_TAG_member, name: "is_confidential", scope: !3498, file: !3492, line: 391, baseType: !7, size: 1, offset: 258, flags: DIFlagBitField, extraData: i64 256)
!3508 = !DIDerivedType(tag: DW_TAG_member, name: "in_use", scope: !3498, file: !3492, line: 394, baseType: !7, size: 1, offset: 259, flags: DIFlagBitField, extraData: i64 256)
!3509 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3498, file: !3492, line: 397, baseType: !3510, size: 32768, offset: 512)
!3510 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !3492, line: 348, size: 32768, elements: !3511)
!3511 = !{!3512, !3525, !3564, !3641, !3654}
!3512 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !3510, file: !3492, line: 349, baseType: !3513, size: 896)
!3513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !3492, line: 12, size: 896, elements: !3514)
!3514 = !{!3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3524}
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3513, file: !3492, line: 13, baseType: !159, size: 32)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3513, file: !3492, line: 14, baseType: !159, size: 32, offset: 32)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3513, file: !3492, line: 15, baseType: !159, size: 32, offset: 64)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3513, file: !3492, line: 16, baseType: !159, size: 32, offset: 96)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3513, file: !3492, line: 17, baseType: !159, size: 32, offset: 128)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3513, file: !3492, line: 18, baseType: !159, size: 32, offset: 160)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3513, file: !3492, line: 19, baseType: !159, size: 32, offset: 192)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3513, file: !3492, line: 22, baseType: !3523, size: 640, offset: 224)
!3523 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 640, elements: !190)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !3513, file: !3492, line: 25, baseType: !159, size: 32, offset: 864)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !3510, file: !3492, line: 350, baseType: !3526, size: 4096, align: 128)
!3526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !3492, line: 34, size: 4096, align: 128, elements: !3527)
!3527 = !{!3528, !3529, !3530, !3531, !3532, !3547, !3548, !3549, !3553, !3555, !3559}
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3526, file: !3492, line: 35, baseType: !141, size: 16)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3526, file: !3492, line: 36, baseType: !141, size: 16, offset: 16)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3526, file: !3492, line: 37, baseType: !141, size: 16, offset: 32)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !3526, file: !3492, line: 38, baseType: !141, size: 16, offset: 48)
!3532 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !3492, line: 39, baseType: !3533, size: 128, offset: 64)
!3533 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3526, file: !3492, line: 39, size: 128, elements: !3534)
!3534 = !{!3535, !3540}
!3535 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !3492, line: 40, baseType: !3536, size: 128)
!3536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3533, file: !3492, line: 40, size: 128, elements: !3537)
!3537 = !{!3538, !3539}
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !3536, file: !3492, line: 41, baseType: !136, size: 64)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !3536, file: !3492, line: 42, baseType: !136, size: 64, offset: 64)
!3540 = !DIDerivedType(tag: DW_TAG_member, scope: !3533, file: !3492, line: 44, baseType: !3541, size: 128)
!3541 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3533, file: !3492, line: 44, size: 128, elements: !3542)
!3542 = !{!3543, !3544, !3545, !3546}
!3543 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3541, file: !3492, line: 45, baseType: !159, size: 32)
!3544 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3541, file: !3492, line: 46, baseType: !159, size: 32, offset: 32)
!3545 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3541, file: !3492, line: 47, baseType: !159, size: 32, offset: 64)
!3546 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3541, file: !3492, line: 48, baseType: !159, size: 32, offset: 96)
!3547 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !3526, file: !3492, line: 51, baseType: !159, size: 32, offset: 192)
!3548 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !3526, file: !3492, line: 52, baseType: !159, size: 32, offset: 224)
!3549 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3526, file: !3492, line: 55, baseType: !3550, size: 1024, offset: 256)
!3550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 1024, elements: !3551)
!3551 = !{!3552}
!3552 = !DISubrange(count: 32)
!3553 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !3526, file: !3492, line: 58, baseType: !3554, size: 2048, offset: 1280)
!3554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 2048, elements: !126)
!3555 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !3526, file: !3492, line: 60, baseType: !3556, size: 384, offset: 3328)
!3556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 384, elements: !3557)
!3557 = !{!3558}
!3558 = !DISubrange(count: 12)
!3559 = !DIDerivedType(tag: DW_TAG_member, scope: !3526, file: !3492, line: 62, baseType: !3560, size: 384, offset: 3712)
!3560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3526, file: !3492, line: 62, size: 384, elements: !3561)
!3561 = !{!3562, !3563}
!3562 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !3560, file: !3492, line: 63, baseType: !3556, size: 384)
!3563 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !3560, file: !3492, line: 64, baseType: !3556, size: 384)
!3564 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !3510, file: !3492, line: 351, baseType: !3565, size: 1088)
!3565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !3492, line: 79, size: 1088, elements: !3566)
!3566 = !{!3567, !3568, !3569, !3570, !3571, !3572, !3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3640}
!3567 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !3565, file: !3492, line: 80, baseType: !159, size: 32)
!3568 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !3565, file: !3492, line: 81, baseType: !159, size: 32, offset: 32)
!3569 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !3565, file: !3492, line: 82, baseType: !159, size: 32, offset: 64)
!3570 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !3565, file: !3492, line: 83, baseType: !159, size: 32, offset: 96)
!3571 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !3565, file: !3492, line: 84, baseType: !159, size: 32, offset: 128)
!3572 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !3565, file: !3492, line: 85, baseType: !159, size: 32, offset: 160)
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !3565, file: !3492, line: 86, baseType: !159, size: 32, offset: 192)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !3565, file: !3492, line: 88, baseType: !3523, size: 640, offset: 224)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !3565, file: !3492, line: 89, baseType: !161, size: 8, offset: 864)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !3565, file: !3492, line: 90, baseType: !161, size: 8, offset: 872)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !3565, file: !3492, line: 91, baseType: !161, size: 8, offset: 880)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !3565, file: !3492, line: 92, baseType: !161, size: 8, offset: 888)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !3565, file: !3492, line: 93, baseType: !161, size: 8, offset: 896)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !3565, file: !3492, line: 94, baseType: !161, size: 8, offset: 904)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !3565, file: !3492, line: 95, baseType: !3582, size: 64, offset: 960)
!3582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3583, size: 64)
!3583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !3584, line: 11, size: 128, elements: !3585)
!3584 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eb60f5d824df9ca37aa30487953996a9")
!3585 = !{!3586, !3587}
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !3583, file: !3584, line: 12, baseType: !873, size: 64)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !3583, file: !3584, line: 13, baseType: !3588, size: 64, offset: 64)
!3588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3589, size: 64)
!3589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !3590, line: 103, size: 1344, elements: !3591)
!3590 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74429e3c5dac35fb5f77bb31b19ab45c")
!3591 = !{!3592, !3593, !3594, !3595, !3596, !3597, !3598, !3599, !3600, !3601, !3602, !3603, !3604, !3605, !3606, !3607, !3608, !3609, !3620, !3621, !3622}
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !3589, file: !3590, line: 109, baseType: !76, size: 64)
!3593 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !3589, file: !3590, line: 110, baseType: !76, size: 64, offset: 64)
!3594 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !3589, file: !3590, line: 111, baseType: !76, size: 64, offset: 128)
!3595 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !3589, file: !3590, line: 112, baseType: !76, size: 64, offset: 192)
!3596 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !3589, file: !3590, line: 113, baseType: !76, size: 64, offset: 256)
!3597 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !3589, file: !3590, line: 114, baseType: !76, size: 64, offset: 320)
!3598 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !3589, file: !3590, line: 117, baseType: !76, size: 64, offset: 384)
!3599 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !3589, file: !3590, line: 118, baseType: !76, size: 64, offset: 448)
!3600 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !3589, file: !3590, line: 119, baseType: !76, size: 64, offset: 512)
!3601 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !3589, file: !3590, line: 120, baseType: !76, size: 64, offset: 576)
!3602 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !3589, file: !3590, line: 121, baseType: !76, size: 64, offset: 640)
!3603 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !3589, file: !3590, line: 122, baseType: !76, size: 64, offset: 704)
!3604 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !3589, file: !3590, line: 123, baseType: !76, size: 64, offset: 768)
!3605 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !3589, file: !3590, line: 124, baseType: !76, size: 64, offset: 832)
!3606 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !3589, file: !3590, line: 125, baseType: !76, size: 64, offset: 896)
!3607 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !3589, file: !3590, line: 139, baseType: !76, size: 64, offset: 960)
!3608 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !3589, file: !3590, line: 142, baseType: !76, size: 64, offset: 1024)
!3609 = !DIDerivedType(tag: DW_TAG_member, scope: !3589, file: !3590, line: 144, baseType: !3610, size: 64, offset: 1088)
!3610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3589, file: !3590, line: 144, size: 64, elements: !3611)
!3611 = !{!3612, !3613, !3614}
!3612 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3610, file: !3590, line: 146, baseType: !141, size: 16)
!3613 = !DIDerivedType(tag: DW_TAG_member, name: "csx", scope: !3610, file: !3590, line: 148, baseType: !136, size: 64)
!3614 = !DIDerivedType(tag: DW_TAG_member, name: "fred_cs", scope: !3610, file: !3590, line: 150, baseType: !3615, size: 64)
!3615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_cs", file: !3590, line: 59, size: 64, elements: !3616)
!3616 = !{!3617, !3618, !3619}
!3617 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !3615, file: !3590, line: 61, baseType: !136, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3618 = !DIDerivedType(tag: DW_TAG_member, name: "sl", scope: !3615, file: !3590, line: 63, baseType: !136, size: 2, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3619 = !DIDerivedType(tag: DW_TAG_member, name: "wfe", scope: !3615, file: !3590, line: 65, baseType: !136, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3589, file: !3590, line: 153, baseType: !76, size: 64, offset: 1152)
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !3589, file: !3590, line: 154, baseType: !76, size: 64, offset: 1216)
!3622 = !DIDerivedType(tag: DW_TAG_member, scope: !3589, file: !3590, line: 156, baseType: !3623, size: 64, offset: 1280)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3589, file: !3590, line: 156, size: 64, elements: !3624)
!3624 = !{!3625, !3626, !3627}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3623, file: !3590, line: 158, baseType: !141, size: 16)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "ssx", scope: !3623, file: !3590, line: 160, baseType: !136, size: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "fred_ss", scope: !3623, file: !3590, line: 162, baseType: !3628, size: 64)
!3628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fred_ss", file: !3590, line: 69, size: 64, elements: !3629)
!3629 = !{!3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3639}
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !3628, file: !3590, line: 71, baseType: !136, size: 16, flags: DIFlagBitField, extraData: i64 0)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "sti", scope: !3628, file: !3590, line: 73, baseType: !136, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "swevent", scope: !3628, file: !3590, line: 75, baseType: !136, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "nmi", scope: !3628, file: !3590, line: 77, baseType: !136, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !3628, file: !3590, line: 80, baseType: !136, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !3628, file: !3590, line: 83, baseType: !136, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 0)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "enclave", scope: !3628, file: !3590, line: 86, baseType: !136, size: 1, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "lm", scope: !3628, file: !3590, line: 88, baseType: !136, size: 1, offset: 57, flags: DIFlagBitField, extraData: i64 0)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "nested", scope: !3628, file: !3590, line: 93, baseType: !136, size: 1, offset: 58, flags: DIFlagBitField, extraData: i64 0)
!3639 = !DIDerivedType(tag: DW_TAG_member, name: "insnlen", scope: !3628, file: !3590, line: 100, baseType: !136, size: 4, offset: 60, flags: DIFlagBitField, extraData: i64 0)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !3565, file: !3492, line: 96, baseType: !159, size: 32, offset: 1024)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !3510, file: !3492, line: 352, baseType: !3642, size: 4608, align: 512)
!3642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !3492, line: 333, size: 4608, align: 512, elements: !3643)
!3643 = !{!3644, !3645, !3652}
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !3642, file: !3492, line: 334, baseType: !3526, size: 4096, align: 128)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3642, file: !3492, line: 335, baseType: !3646, size: 512, offset: 4096)
!3646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !3492, line: 312, size: 512, elements: !3647)
!3647 = !{!3648, !3649, !3650}
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !3646, file: !3492, line: 313, baseType: !136, size: 64)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !3646, file: !3492, line: 314, baseType: !136, size: 64, offset: 64)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3646, file: !3492, line: 315, baseType: !3651, size: 384, offset: 128)
!3651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !257)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !3642, file: !3492, line: 336, baseType: !3653, offset: 4608)
!3653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, elements: !471)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !3510, file: !3492, line: 353, baseType: !3655, size: 32768)
!3655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32768, elements: !3656)
!3656 = !{!3657}
!3657 = !DISubrange(count: 4096)
!3658 = !DIDerivedType(tag: DW_TAG_member, name: "__task_fpstate", scope: !3491, file: !3492, line: 484, baseType: !3497, size: 64, offset: 192)
!3659 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !3491, file: !3492, line: 491, baseType: !3660, size: 128, offset: 256)
!3660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu_state_perm", file: !3492, line: 404, size: 128, elements: !3661)
!3661 = !{!3662, !3663, !3664}
!3662 = !DIDerivedType(tag: DW_TAG_member, name: "__state_perm", scope: !3660, file: !3492, line: 424, baseType: !136, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_member, name: "__state_size", scope: !3660, file: !3492, line: 432, baseType: !7, size: 32, offset: 64)
!3664 = !DIDerivedType(tag: DW_TAG_member, name: "__user_state_size", scope: !3660, file: !3492, line: 440, baseType: !7, size: 32, offset: 96)
!3665 = !DIDerivedType(tag: DW_TAG_member, name: "guest_perm", scope: !3491, file: !3492, line: 498, baseType: !3660, size: 128, offset: 384)
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "__fpstate", scope: !3491, file: !3492, line: 508, baseType: !3498, size: 33280, align: 512, offset: 512)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2489, file: !2490, line: 16, baseType: !456, size: 192, offset: 512)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2489, file: !2490, line: 17, baseType: !340, size: 32, offset: 704)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "s_fs_info", scope: !970, file: !35, line: 1240, baseType: !163, size: 64, offset: 6912)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_gran", scope: !970, file: !35, line: 1243, baseType: !159, size: 32, offset: 6976)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_min", scope: !970, file: !35, line: 1245, baseType: !557, size: 64, offset: 7040)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "s_time_max", scope: !970, file: !35, line: 1246, baseType: !557, size: 64, offset: 7104)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_mask", scope: !970, file: !35, line: 1248, baseType: !97, size: 32, offset: 7168)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_marks", scope: !970, file: !35, line: 1249, baseType: !3675, size: 64, offset: 7232)
!3675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3676, size: 64)
!3676 = !DICompositeType(tag: DW_TAG_structure_type, name: "fsnotify_mark_connector", file: !35, line: 634, flags: DIFlagFwdDecl)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "s_id", scope: !970, file: !35, line: 1252, baseType: !3678, size: 256, offset: 7296)
!3678 = !DICompositeType(tag: DW_TAG_array_type, baseType: !121, size: 256, elements: !3551)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "s_uuid", scope: !970, file: !35, line: 1253, baseType: !3680, size: 128, offset: 7552)
!3680 = !DIDerivedType(tag: DW_TAG_typedef, name: "uuid_t", file: !3681, line: 21, baseType: !3682)
!3681 = !DIFile(filename: "./include/linux/uuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e89c1c0bf06464063ae8a1a936cf772")
!3682 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3681, line: 19, size: 128, elements: !3683)
!3683 = !{!3684}
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !3682, file: !3681, line: 20, baseType: !3685, size: 128)
!3685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 128, elements: !122)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "s_max_links", scope: !970, file: !35, line: 1255, baseType: !7, size: 32, offset: 7680)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "s_vfs_rename_mutex", scope: !970, file: !35, line: 1261, baseType: !314, size: 256, offset: 7744)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "s_subtype", scope: !970, file: !35, line: 1267, baseType: !598, size: 64, offset: 8000)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "s_d_op", scope: !970, file: !35, line: 1269, baseType: !3690, size: 64, offset: 8064)
!3690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3691, size: 64)
!3691 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3692)
!3692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dentry_operations", file: !720, line: 128, size: 1024, align: 512, elements: !3693)
!3693 = !{!3694, !3698, !3699, !3706, !3712, !3716, !3720, !3724, !3725, !3729, !3733, !3738, !3742}
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "d_revalidate", scope: !3692, file: !720, line: 129, baseType: !3695, size: 64)
!3695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3696, size: 64)
!3696 = !DISubroutineType(types: !3697)
!3697 = !{!100, !718, !7}
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "d_weak_revalidate", scope: !3692, file: !720, line: 130, baseType: !3695, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "d_hash", scope: !3692, file: !720, line: 131, baseType: !3700, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3701, size: 64)
!3701 = !DISubroutineType(types: !3702)
!3702 = !{!100, !3703, !3705}
!3703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3704, size: 64)
!3704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!3705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "d_compare", scope: !3692, file: !720, line: 132, baseType: !3707, size: 64, offset: 192)
!3707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3708, size: 64)
!3708 = !DISubroutineType(types: !3709)
!3709 = !{!100, !3703, !7, !598, !3710}
!3710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3711, size: 64)
!3711 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "d_delete", scope: !3692, file: !720, line: 134, baseType: !3713, size: 64, offset: 256)
!3713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3714, size: 64)
!3714 = !DISubroutineType(types: !3715)
!3715 = !{!100, !3703}
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "d_init", scope: !3692, file: !720, line: 135, baseType: !3717, size: 64, offset: 320)
!3717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3718, size: 64)
!3718 = !DISubroutineType(types: !3719)
!3719 = !{!100, !718}
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "d_release", scope: !3692, file: !720, line: 136, baseType: !3721, size: 64, offset: 384)
!3721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3722, size: 64)
!3722 = !DISubroutineType(types: !3723)
!3723 = !{null, !718}
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "d_prune", scope: !3692, file: !720, line: 137, baseType: !3721, size: 64, offset: 448)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "d_iput", scope: !3692, file: !720, line: 138, baseType: !3726, size: 64, offset: 512)
!3726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3727, size: 64)
!3727 = !DISubroutineType(types: !3728)
!3728 = !{null, !718, !758}
!3729 = !DIDerivedType(tag: DW_TAG_member, name: "d_dname", scope: !3692, file: !720, line: 139, baseType: !3730, size: 64, offset: 576)
!3730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3731, size: 64)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{!299, !718, !299, !100}
!3733 = !DIDerivedType(tag: DW_TAG_member, name: "d_automount", scope: !3692, file: !720, line: 140, baseType: !3734, size: 64, offset: 640)
!3734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3735, size: 64)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!713, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!3738 = !DIDerivedType(tag: DW_TAG_member, name: "d_manage", scope: !3692, file: !720, line: 141, baseType: !3739, size: 64, offset: 704)
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DISubroutineType(types: !3741)
!3741 = !{!100, !882, !155}
!3742 = !DIDerivedType(tag: DW_TAG_member, name: "d_real", scope: !3692, file: !720, line: 142, baseType: !3743, size: 64, offset: 768)
!3743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3744, size: 64)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!718, !718, !3746}
!3746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3747, size: 64)
!3747 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!3748 = !DIDerivedType(tag: DW_TAG_member, name: "s_shrink", scope: !970, file: !35, line: 1271, baseType: !3749, size: 448, offset: 8128)
!3749 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "shrinker", file: !2271, line: 63, size: 448, elements: !3750)
!3750 = !{!3751, !3756, !3757, !3758, !3759, !3760, !3761}
!3751 = !DIDerivedType(tag: DW_TAG_member, name: "count_objects", scope: !3749, file: !2271, line: 64, baseType: !3752, size: 64)
!3752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3753, size: 64)
!3753 = !DISubroutineType(types: !3754)
!3754 = !{!76, !3755, !2269}
!3755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3749, size: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "scan_objects", scope: !3749, file: !2271, line: 66, baseType: !3752, size: 64, offset: 64)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "batch", scope: !3749, file: !2271, line: 69, baseType: !873, size: 64, offset: 128)
!3758 = !DIDerivedType(tag: DW_TAG_member, name: "seeks", scope: !3749, file: !2271, line: 70, baseType: !100, size: 32, offset: 192)
!3759 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !3749, file: !2271, line: 71, baseType: !7, size: 32, offset: 224)
!3760 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3749, file: !2271, line: 74, baseType: !360, size: 128, offset: 256)
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "nr_deferred", scope: !3749, file: !2271, line: 85, baseType: !3762, size: 64, offset: 384)
!3762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "s_remove_count", scope: !970, file: !35, line: 1274, baseType: !318, size: 64, offset: 8576)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "s_fsnotify_connectors", scope: !970, file: !35, line: 1280, baseType: !318, size: 64, offset: 8640)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "s_readonly_remount", scope: !970, file: !35, line: 1283, baseType: !100, size: 32, offset: 8704)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "s_wb_err", scope: !970, file: !35, line: 1286, baseType: !1385, size: 32, offset: 8736)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "s_dio_done_wq", scope: !970, file: !35, line: 1289, baseType: !2093, size: 64, offset: 8768)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "s_pins", scope: !970, file: !35, line: 1290, baseType: !445, size: 64, offset: 8832)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "s_user_ns", scope: !970, file: !35, line: 1297, baseType: !680, size: 64, offset: 8896)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "s_dentry_lru", scope: !970, file: !35, line: 1304, baseType: !3771, size: 64, offset: 8960)
!3771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru", file: !3772, line: 49, size: 64, elements: !3773)
!3772 = !DIFile(filename: "./include/linux/list_lru.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6142dc55972c4887b937ad3a8f3e66c8")
!3773 = !{!3774}
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !3771, file: !3772, line: 50, baseType: !3775, size: 64)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3776, size: 64)
!3776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_node", file: !3772, line: 41, size: 512, align: 512, elements: !3777)
!3777 = !{!3778, !3779, !3784}
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3776, file: !3772, line: 43, baseType: !393, size: 32)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !3776, file: !3772, line: 45, baseType: !3780, size: 192, offset: 64)
!3780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_lru_one", file: !3772, line: 29, size: 192, elements: !3781)
!3781 = !{!3782, !3783}
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !3780, file: !3772, line: 30, baseType: !360, size: 128)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3780, file: !3772, line: 32, baseType: !873, size: 64, offset: 128)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "nr_items", scope: !3776, file: !3772, line: 46, baseType: !873, size: 64, offset: 256)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_lru", scope: !970, file: !35, line: 1305, baseType: !3771, size: 64, offset: 9024)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !970, file: !35, line: 1306, baseType: !383, size: 128, align: 64, offset: 9088)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "destroy_work", scope: !970, file: !35, line: 1307, baseType: !1567, size: 256, offset: 9216)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "s_sync_lock", scope: !970, file: !35, line: 1309, baseType: !314, size: 256, offset: 9472)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "s_stack_depth", scope: !970, file: !35, line: 1314, baseType: !100, size: 32, offset: 9728)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_list_lock", scope: !970, file: !35, line: 1317, baseType: !393, size: 32, align: 512, offset: 10240)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes", scope: !970, file: !35, line: 1318, baseType: !360, size: 128, offset: 10304)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "s_inode_wblist_lock", scope: !970, file: !35, line: 1320, baseType: !393, size: 32, offset: 10432)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "s_inodes_wb", scope: !970, file: !35, line: 1321, baseType: !360, size: 128, offset: 10496)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "i_mapping", scope: !759, file: !35, line: 656, baseType: !1117, size: 64, offset: 512)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "i_security", scope: !759, file: !35, line: 659, baseType: !163, size: 64, offset: 576)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "i_ino", scope: !759, file: !35, line: 663, baseType: !76, size: 64, offset: 640)
!3797 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !35, line: 671, baseType: !3798, size: 32, offset: 704)
!3798 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !35, line: 671, size: 32, elements: !3799)
!3799 = !{!3800, !3802}
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "i_nlink", scope: !3798, file: !35, line: 672, baseType: !3801, size: 32)
!3801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "__i_nlink", scope: !3798, file: !35, line: 673, baseType: !7, size: 32)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "i_rdev", scope: !759, file: !35, line: 675, baseType: !833, size: 32, offset: 736)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "i_size", scope: !759, file: !35, line: 676, baseType: !309, size: 64, offset: 768)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "i_atime", scope: !759, file: !35, line: 677, baseType: !869, size: 128, offset: 832)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "i_mtime", scope: !759, file: !35, line: 678, baseType: !869, size: 128, offset: 960)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "__i_ctime", scope: !759, file: !35, line: 679, baseType: !869, size: 128, offset: 1088)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "i_lock", scope: !759, file: !35, line: 680, baseType: !393, size: 32, offset: 1216)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "i_bytes", scope: !759, file: !35, line: 681, baseType: !143, size: 16, offset: 1248)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "i_blkbits", scope: !759, file: !35, line: 682, baseType: !161, size: 8, offset: 1264)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "i_write_hint", scope: !759, file: !35, line: 683, baseType: !161, size: 8, offset: 1272)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "i_blocks", scope: !759, file: !35, line: 684, baseType: !2402, size: 64, offset: 1280)
!3813 = !DIDerivedType(tag: DW_TAG_member, name: "i_state", scope: !759, file: !35, line: 691, baseType: !76, size: 64, offset: 1344)
!3814 = !DIDerivedType(tag: DW_TAG_member, name: "i_rwsem", scope: !759, file: !35, line: 692, baseType: !541, size: 320, offset: 1408)
!3815 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_when", scope: !759, file: !35, line: 694, baseType: !76, size: 64, offset: 1728)
!3816 = !DIDerivedType(tag: DW_TAG_member, name: "dirtied_time_when", scope: !759, file: !35, line: 695, baseType: !76, size: 64, offset: 1792)
!3817 = !DIDerivedType(tag: DW_TAG_member, name: "i_hash", scope: !759, file: !35, line: 697, baseType: !449, size: 128, offset: 1856)
!3818 = !DIDerivedType(tag: DW_TAG_member, name: "i_io_list", scope: !759, file: !35, line: 698, baseType: !360, size: 128, offset: 1984)
!3819 = !DIDerivedType(tag: DW_TAG_member, name: "i_sb_list", scope: !759, file: !35, line: 707, baseType: !360, size: 128, offset: 2112)
!3820 = !DIDerivedType(tag: DW_TAG_member, name: "i_wb_list", scope: !759, file: !35, line: 708, baseType: !360, size: 128, offset: 2240)
!3821 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !35, line: 709, baseType: !3822, size: 128, offset: 2368)
!3822 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !35, line: 709, size: 128, elements: !3823)
!3823 = !{!3824, !3825}
!3824 = !DIDerivedType(tag: DW_TAG_member, name: "i_dentry", scope: !3822, file: !35, line: 710, baseType: !445, size: 64)
!3825 = !DIDerivedType(tag: DW_TAG_member, name: "i_rcu", scope: !3822, file: !35, line: 711, baseType: !383, size: 128, align: 64)
!3826 = !DIDerivedType(tag: DW_TAG_member, name: "i_version", scope: !759, file: !35, line: 713, baseType: !320, size: 64, offset: 2496)
!3827 = !DIDerivedType(tag: DW_TAG_member, name: "i_sequence", scope: !759, file: !35, line: 714, baseType: !320, size: 64, offset: 2560)
!3828 = !DIDerivedType(tag: DW_TAG_member, name: "i_count", scope: !759, file: !35, line: 715, baseType: !340, size: 32, offset: 2624)
!3829 = !DIDerivedType(tag: DW_TAG_member, name: "i_dio_count", scope: !759, file: !35, line: 716, baseType: !340, size: 32, offset: 2656)
!3830 = !DIDerivedType(tag: DW_TAG_member, name: "i_writecount", scope: !759, file: !35, line: 717, baseType: !340, size: 32, offset: 2688)
!3831 = !DIDerivedType(tag: DW_TAG_member, name: "i_readcount", scope: !759, file: !35, line: 719, baseType: !340, size: 32, offset: 2720)
!3832 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !35, line: 721, baseType: !3833, size: 64, offset: 2752)
!3833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !35, line: 721, size: 64, elements: !3834)
!3834 = !{!3835, !3959}
!3835 = !DIDerivedType(tag: DW_TAG_member, name: "i_fop", scope: !3833, file: !35, line: 722, baseType: !3836, size: 64)
!3836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3837, size: 64)
!3837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3838)
!3838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_operations", file: !35, line: 1914, size: 2112, elements: !3839)
!3839 = !{!3840, !3841, !3845, !3849, !3853, !3854, !3855, !3861, !3874, !3878, !3882, !3883, !3887, !3888, !3892, !3897, !3898, !3902, !3906, !3912, !3913, !3917, !3918, !3922, !3926, !3927, !3932, !3936, !3940, !3944, !3948, !3949, !3955}
!3840 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !3838, file: !35, line: 1915, baseType: !1002, size: 64)
!3841 = !DIDerivedType(tag: DW_TAG_member, name: "llseek", scope: !3838, file: !35, line: 1916, baseType: !3842, size: 64, offset: 64)
!3842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3843, size: 64)
!3843 = !DISubroutineType(types: !3844)
!3844 = !{!309, !877, !309, !100}
!3845 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !3838, file: !35, line: 1917, baseType: !3846, size: 64, offset: 128)
!3846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3847, size: 64)
!3847 = !DISubroutineType(types: !3848)
!3848 = !{!913, !877, !299, !301, !1733}
!3849 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !3838, file: !35, line: 1918, baseType: !3850, size: 64, offset: 192)
!3850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3851, size: 64)
!3851 = !DISubroutineType(types: !3852)
!3852 = !{!913, !877, !598, !301, !1733}
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "read_iter", scope: !3838, file: !35, line: 1919, baseType: !1319, size: 64, offset: 256)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "write_iter", scope: !3838, file: !35, line: 1920, baseType: !1319, size: 64, offset: 320)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "iopoll", scope: !3838, file: !35, line: 1921, baseType: !3856, size: 64, offset: 384)
!3856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3857, size: 64)
!3857 = !DISubroutineType(types: !3858)
!3858 = !{!100, !1322, !3859, !7}
!3859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3860, size: 64)
!3860 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_comp_batch", file: !35, line: 53, flags: DIFlagFwdDecl)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "iterate_shared", scope: !3838, file: !35, line: 1923, baseType: !3862, size: 64, offset: 448)
!3862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3863, size: 64)
!3863 = !DISubroutineType(types: !3864)
!3864 = !{!100, !877, !3865}
!3865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3866, size: 64)
!3866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_context", file: !35, line: 1858, size: 128, elements: !3867)
!3867 = !{!3868, !3873}
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "actor", scope: !3866, file: !35, line: 1859, baseType: !3869, size: 64)
!3869 = !DIDerivedType(tag: DW_TAG_typedef, name: "filldir_t", file: !35, line: 1855, baseType: !3870)
!3870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3871, size: 64)
!3871 = !DISubroutineType(types: !3872)
!3872 = !{!155, !3865, !598, !100, !309, !136, !7}
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !3866, file: !35, line: 1860, baseType: !309, size: 64, offset: 64)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !3838, file: !35, line: 1924, baseType: !3875, size: 64, offset: 512)
!3875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3876, size: 64)
!3876 = !DISubroutineType(types: !3877)
!3877 = !{!1749, !877, !1751}
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "unlocked_ioctl", scope: !3838, file: !35, line: 1925, baseType: !3879, size: 64, offset: 576)
!3879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3880, size: 64)
!3880 = !DISubroutineType(types: !3881)
!3881 = !{!873, !877, !7, !76}
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "compat_ioctl", scope: !3838, file: !35, line: 1926, baseType: !3879, size: 64, offset: 640)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !3838, file: !35, line: 1927, baseType: !3884, size: 64, offset: 704)
!3884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3885, size: 64)
!3885 = !DISubroutineType(types: !3886)
!3886 = !{!100, !877, !1399}
!3887 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_supported_flags", scope: !3838, file: !35, line: 1928, baseType: !76, size: 64, offset: 768)
!3888 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !3838, file: !35, line: 1929, baseType: !3889, size: 64, offset: 832)
!3889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3890, size: 64)
!3890 = !DISubroutineType(types: !3891)
!3891 = !{!100, !758, !877}
!3892 = !DIDerivedType(tag: DW_TAG_member, name: "flush", scope: !3838, file: !35, line: 1930, baseType: !3893, size: 64, offset: 896)
!3893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3894, size: 64)
!3894 = !DISubroutineType(types: !3895)
!3895 = !{!100, !877, !3896}
!3896 = !DIDerivedType(tag: DW_TAG_typedef, name: "fl_owner_t", file: !35, line: 1061, baseType: !163)
!3897 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !3838, file: !35, line: 1931, baseType: !3889, size: 64, offset: 960)
!3898 = !DIDerivedType(tag: DW_TAG_member, name: "fsync", scope: !3838, file: !35, line: 1932, baseType: !3899, size: 64, offset: 1024)
!3899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3900, size: 64)
!3900 = !DISubroutineType(types: !3901)
!3901 = !{!100, !877, !309, !309, !100}
!3902 = !DIDerivedType(tag: DW_TAG_member, name: "fasync", scope: !3838, file: !35, line: 1933, baseType: !3903, size: 64, offset: 1088)
!3903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3904, size: 64)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!100, !100, !877, !100}
!3906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3838, file: !35, line: 1934, baseType: !3907, size: 64, offset: 1152)
!3907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3908, size: 64)
!3908 = !DISubroutineType(types: !3909)
!3909 = !{!100, !877, !100, !3910}
!3910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3911, size: 64)
!3911 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock", file: !35, line: 1063, flags: DIFlagFwdDecl)
!3912 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !3838, file: !35, line: 1935, baseType: !1437, size: 64, offset: 1216)
!3913 = !DIDerivedType(tag: DW_TAG_member, name: "check_flags", scope: !3838, file: !35, line: 1936, baseType: !3914, size: 64, offset: 1280)
!3914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3915, size: 64)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{!100, !100}
!3917 = !DIDerivedType(tag: DW_TAG_member, name: "flock", scope: !3838, file: !35, line: 1937, baseType: !3907, size: 64, offset: 1344)
!3918 = !DIDerivedType(tag: DW_TAG_member, name: "splice_write", scope: !3838, file: !35, line: 1938, baseType: !3919, size: 64, offset: 1408)
!3919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3920, size: 64)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!913, !3329, !877, !1733, !301, !7}
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "splice_read", scope: !3838, file: !35, line: 1939, baseType: !3923, size: 64, offset: 1472)
!3923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3924, size: 64)
!3924 = !DISubroutineType(types: !3925)
!3925 = !{!913, !877, !1733, !3329, !301, !7}
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "splice_eof", scope: !3838, file: !35, line: 1940, baseType: !1375, size: 64, offset: 1536)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "setlease", scope: !3838, file: !35, line: 1941, baseType: !3928, size: 64, offset: 1600)
!3928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3929, size: 64)
!3929 = !DISubroutineType(types: !3930)
!3930 = !{!100, !877, !100, !3931, !1296}
!3931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3910, size: 64)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "fallocate", scope: !3838, file: !35, line: 1942, baseType: !3933, size: 64, offset: 1664)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3934, size: 64)
!3934 = !DISubroutineType(types: !3935)
!3935 = !{!873, !877, !100, !309, !309}
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "show_fdinfo", scope: !3838, file: !35, line: 1944, baseType: !3937, size: 64, offset: 1728)
!3937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3938, size: 64)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !295, !877}
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_file_range", scope: !3838, file: !35, line: 1948, baseType: !3941, size: 64, offset: 1792)
!3941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3942, size: 64)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{!913, !877, !309, !877, !309, !301, !7}
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "remap_file_range", scope: !3838, file: !35, line: 1950, baseType: !3945, size: 64, offset: 1856)
!3945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3946, size: 64)
!3946 = !DISubroutineType(types: !3947)
!3947 = !{!309, !877, !309, !877, !309, !309, !7}
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "fadvise", scope: !3838, file: !35, line: 1953, baseType: !3899, size: 64, offset: 1920)
!3949 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd", scope: !3838, file: !35, line: 1954, baseType: !3950, size: 64, offset: 1984)
!3950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3951, size: 64)
!3951 = !DISubroutineType(types: !3952)
!3952 = !{!100, !3953, !7}
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3954, size: 64)
!3954 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_cmd", file: !35, line: 1911, flags: DIFlagFwdDecl)
!3955 = !DIDerivedType(tag: DW_TAG_member, name: "uring_cmd_iopoll", scope: !3838, file: !35, line: 1955, baseType: !3956, size: 64, offset: 2048)
!3956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3957, size: 64)
!3957 = !DISubroutineType(types: !3958)
!3958 = !{!100, !3953, !3859, !7}
!3959 = !DIDerivedType(tag: DW_TAG_member, name: "free_inode", scope: !3833, file: !35, line: 723, baseType: !2160, size: 64)
!3960 = !DIDerivedType(tag: DW_TAG_member, name: "i_flctx", scope: !759, file: !35, line: 725, baseType: !3961, size: 64, offset: 2816)
!3961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3962, size: 64)
!3962 = !DICompositeType(tag: DW_TAG_structure_type, name: "file_lock_context", file: !35, line: 725, flags: DIFlagFwdDecl)
!3963 = !DIDerivedType(tag: DW_TAG_member, name: "i_data", scope: !759, file: !35, line: 726, baseType: !1118, size: 1536, align: 64, offset: 2880)
!3964 = !DIDerivedType(tag: DW_TAG_member, name: "i_devices", scope: !759, file: !35, line: 727, baseType: !360, size: 128, offset: 4416)
!3965 = !DIDerivedType(tag: DW_TAG_member, scope: !759, file: !35, line: 728, baseType: !3966, size: 64, offset: 4544)
!3966 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !759, file: !35, line: 728, size: 64, elements: !3967)
!3967 = !{!3968, !3969, !3972, !3973}
!3968 = !DIDerivedType(tag: DW_TAG_member, name: "i_pipe", scope: !3966, file: !35, line: 729, baseType: !3329, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_member, name: "i_cdev", scope: !3966, file: !35, line: 730, baseType: !3970, size: 64)
!3970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3971, size: 64)
!3971 = !DICompositeType(tag: DW_TAG_structure_type, name: "cdev", file: !35, line: 730, flags: DIFlagFwdDecl)
!3972 = !DIDerivedType(tag: DW_TAG_member, name: "i_link", scope: !3966, file: !35, line: 731, baseType: !299, size: 64)
!3973 = !DIDerivedType(tag: DW_TAG_member, name: "i_dir_seq", scope: !3966, file: !35, line: 732, baseType: !7, size: 32)
!3974 = !DIDerivedType(tag: DW_TAG_member, name: "i_generation", scope: !759, file: !35, line: 735, baseType: !97, size: 32, offset: 4608)
!3975 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_mask", scope: !759, file: !35, line: 738, baseType: !97, size: 32, offset: 4640)
!3976 = !DIDerivedType(tag: DW_TAG_member, name: "i_fsnotify_marks", scope: !759, file: !35, line: 739, baseType: !3675, size: 64, offset: 4672)
!3977 = !DIDerivedType(tag: DW_TAG_member, name: "i_private", scope: !759, file: !35, line: 750, baseType: !163, size: 64, offset: 4736)
!3978 = !DIDerivedType(tag: DW_TAG_member, name: "d_iname", scope: !719, file: !720, line: 91, baseType: !3979, size: 256, offset: 448)
!3979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !3551)
!3980 = !DIDerivedType(tag: DW_TAG_member, name: "d_lockref", scope: !719, file: !720, line: 94, baseType: !3981, size: 64, offset: 704)
!3981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockref", file: !3982, line: 25, size: 64, elements: !3983)
!3982 = !DIFile(filename: "./include/linux/lockref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e2e2c44a44560f0fc3c2b649fe354d0c")
!3983 = !{!3984}
!3984 = !DIDerivedType(tag: DW_TAG_member, scope: !3981, file: !3982, line: 26, baseType: !3985, size: 64)
!3985 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3981, file: !3982, line: 26, size: 64, elements: !3986)
!3986 = !{!3987, !3988}
!3987 = !DIDerivedType(tag: DW_TAG_member, name: "lock_count", scope: !3985, file: !3982, line: 28, baseType: !138, size: 64, align: 64)
!3988 = !DIDerivedType(tag: DW_TAG_member, scope: !3985, file: !3982, line: 30, baseType: !3989, size: 64)
!3989 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3985, file: !3982, line: 30, size: 64, elements: !3990)
!3990 = !{!3991, !3992}
!3991 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !3989, file: !3982, line: 31, baseType: !393, size: 32)
!3992 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3989, file: !3982, line: 32, baseType: !100, size: 32, offset: 32)
!3993 = !DIDerivedType(tag: DW_TAG_member, name: "d_op", scope: !719, file: !720, line: 95, baseType: !3690, size: 64, offset: 768)
!3994 = !DIDerivedType(tag: DW_TAG_member, name: "d_sb", scope: !719, file: !720, line: 96, baseType: !969, size: 64, offset: 832)
!3995 = !DIDerivedType(tag: DW_TAG_member, name: "d_time", scope: !719, file: !720, line: 97, baseType: !76, size: 64, offset: 896)
!3996 = !DIDerivedType(tag: DW_TAG_member, name: "d_fsdata", scope: !719, file: !720, line: 98, baseType: !163, size: 64, offset: 960)
!3997 = !DIDerivedType(tag: DW_TAG_member, scope: !719, file: !720, line: 100, baseType: !3998, size: 128, offset: 1024)
!3998 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 100, size: 128, elements: !3999)
!3999 = !{!4000, !4001}
!4000 = !DIDerivedType(tag: DW_TAG_member, name: "d_lru", scope: !3998, file: !720, line: 101, baseType: !360, size: 128)
!4001 = !DIDerivedType(tag: DW_TAG_member, name: "d_wait", scope: !3998, file: !720, line: 102, baseType: !4002, size: 64)
!4002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!4003 = !DIDerivedType(tag: DW_TAG_member, name: "d_child", scope: !719, file: !720, line: 104, baseType: !360, size: 128, offset: 1152)
!4004 = !DIDerivedType(tag: DW_TAG_member, name: "d_subdirs", scope: !719, file: !720, line: 105, baseType: !360, size: 128, offset: 1280)
!4005 = !DIDerivedType(tag: DW_TAG_member, name: "d_u", scope: !719, file: !720, line: 113, baseType: !4006, size: 128, offset: 1408)
!4006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !719, file: !720, line: 109, size: 128, elements: !4007)
!4007 = !{!4008, !4009, !4010}
!4008 = !DIDerivedType(tag: DW_TAG_member, name: "d_alias", scope: !4006, file: !720, line: 110, baseType: !449, size: 128)
!4009 = !DIDerivedType(tag: DW_TAG_member, name: "d_in_lookup_hash", scope: !4006, file: !720, line: 111, baseType: !734, size: 128)
!4010 = !DIDerivedType(tag: DW_TAG_member, name: "d_rcu", scope: !4006, file: !720, line: 112, baseType: !383, size: 128, align: 64)
!4011 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_sb", scope: !714, file: !715, line: 72, baseType: !969, size: 64, offset: 64)
!4012 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_flags", scope: !714, file: !715, line: 73, baseType: !100, size: 32, offset: 128)
!4013 = !DIDerivedType(tag: DW_TAG_member, name: "mnt_idmap", scope: !714, file: !715, line: 74, baseType: !798, size: 64, offset: 192)
!4014 = !DIDerivedType(tag: DW_TAG_member, name: "dentry", scope: !709, file: !710, line: 10, baseType: !718, size: 64, offset: 64)
!4015 = !DIDerivedType(tag: DW_TAG_member, name: "f_inode", scope: !371, file: !35, line: 1015, baseType: !758, size: 64, offset: 1344)
!4016 = !DIDerivedType(tag: DW_TAG_member, name: "f_op", scope: !371, file: !35, line: 1016, baseType: !3836, size: 64, offset: 1408)
!4017 = !DIDerivedType(tag: DW_TAG_member, name: "f_version", scope: !371, file: !35, line: 1018, baseType: !136, size: 64, offset: 1472)
!4018 = !DIDerivedType(tag: DW_TAG_member, name: "f_security", scope: !371, file: !35, line: 1020, baseType: !163, size: 64, offset: 1536)
!4019 = !DIDerivedType(tag: DW_TAG_member, name: "private_data", scope: !371, file: !35, line: 1023, baseType: !163, size: 64, offset: 1600)
!4020 = !DIDerivedType(tag: DW_TAG_member, name: "f_ep", scope: !371, file: !35, line: 1027, baseType: !4021, size: 64, offset: 1664)
!4021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!4022 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !371, file: !35, line: 1029, baseType: !1117, size: 64, offset: 1728)
!4023 = !DIDerivedType(tag: DW_TAG_member, name: "f_wb_err", scope: !371, file: !35, line: 1030, baseType: !1385, size: 32, offset: 1792)
!4024 = !DIDerivedType(tag: DW_TAG_member, name: "f_sb_err", scope: !371, file: !35, line: 1031, baseType: !1385, size: 32, offset: 1824)
!4025 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !296, file: !289, line: 29, baseType: !163, size: 64, offset: 896)
!4026 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !288, file: !289, line: 34, baseType: !1735, size: 64, offset: 64)
!4027 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !288, file: !289, line: 35, baseType: !1730, size: 64, offset: 128)
!4028 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !288, file: !289, line: 36, baseType: !1725, size: 64, offset: 192)
!4029 = !{i32 7, !"Dwarf Version", i32 5}
!4030 = !{i32 2, !"Debug Info Version", i32 3}
!4031 = !{i32 1, !"wchar_size", i32 2}
!4032 = !{i32 8, !"cf-protection-branch", i32 1}
!4033 = !{i32 4, !"function_return_thunk_extern", i32 1}
!4034 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!4035 = !{i32 1, !"Code Model", i32 2}
!4036 = !{i32 1, !"override-stack-alignment", i32 8}
!4037 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!4038 = distinct !DISubprogram(name: "c_start", scope: !3, file: !3, line: 156, type: !293, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4039)
!4039 = !{!4040, !4041, !4042, !4046}
!4040 = !DILocalVariable(name: "m", arg: 1, scope: !4038, file: !3, line: 156, type: !295)
!4041 = !DILocalVariable(name: "pos", arg: 2, scope: !4038, file: !3, line: 156, type: !1733)
!4042 = !DILocalVariable(name: "__vpp_verify", scope: !4043, file: !3, line: 160, type: !1528)
!4043 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 160, column: 11)
!4044 = distinct !DILexicalBlock(scope: !4045, file: !3, line: 160, column: 11)
!4045 = distinct !DILexicalBlock(scope: !4038, file: !3, line: 159, column: 6)
!4046 = !DILocalVariable(name: "__ptr", scope: !4047, file: !3, line: 160, type: !76)
!4047 = distinct !DILexicalBlock(scope: !4044, file: !3, line: 160, column: 11)
!4048 = !DILocation(line: 156, column: 39, scope: !4038)
!4049 = !DILocation(line: 156, column: 50, scope: !4038)
!4050 = !DILocation(line: 158, column: 23, scope: !4038)
!4051 = !DILocation(line: 158, column: 22, scope: !4038)
!4052 = !DILocation(line: 158, column: 27, scope: !4038)
!4053 = !DILocation(line: 158, column: 9, scope: !4038)
!4054 = !DILocation(line: 158, column: 3, scope: !4038)
!4055 = !DILocation(line: 158, column: 7, scope: !4038)
!4056 = !DILocation(line: 159, column: 8, scope: !4045)
!4057 = !DILocation(line: 159, column: 7, scope: !4045)
!4058 = !DILocation(line: 159, column: 15, scope: !4045)
!4059 = !DILocation(line: 159, column: 13, scope: !4045)
!4060 = !DILocation(line: 159, column: 6, scope: !4038)
!4061 = !DILocation(line: 160, column: 11, scope: !4044)
!4062 = !DILocation(line: 160, column: 11, scope: !4043)
!4063 = !DILocation(line: 160, column: 11, scope: !4047)
!4064 = !DILocation(line: 160, column: 3, scope: !4045)
!4065 = !DILocation(line: 161, column: 2, scope: !4038)
!4066 = !DILocation(line: 162, column: 1, scope: !4038)
!4067 = distinct !DISubprogram(name: "c_stop", scope: !3, file: !3, line: 170, type: !1736, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4068)
!4068 = !{!4069, !4070}
!4069 = !DILocalVariable(name: "m", arg: 1, scope: !4067, file: !3, line: 170, type: !295)
!4070 = !DILocalVariable(name: "v", arg: 2, scope: !4067, file: !3, line: 170, type: !163)
!4071 = !DILocation(line: 170, column: 37, scope: !4067)
!4072 = !DILocation(line: 170, column: 46, scope: !4067)
!4073 = !DILocation(line: 172, column: 1, scope: !4067)
!4074 = distinct !DISubprogram(name: "c_next", scope: !3, file: !3, line: 164, type: !1731, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4075 = !{!4076, !4077, !4078}
!4076 = !DILocalVariable(name: "m", arg: 1, scope: !4074, file: !3, line: 164, type: !295)
!4077 = !DILocalVariable(name: "v", arg: 2, scope: !4074, file: !3, line: 164, type: !163)
!4078 = !DILocalVariable(name: "pos", arg: 3, scope: !4074, file: !3, line: 164, type: !1733)
!4079 = !DILocation(line: 164, column: 38, scope: !4074)
!4080 = !DILocation(line: 164, column: 47, scope: !4074)
!4081 = !DILocation(line: 164, column: 58, scope: !4074)
!4082 = !DILocation(line: 166, column: 4, scope: !4074)
!4083 = !DILocation(line: 166, column: 8, scope: !4074)
!4084 = !DILocation(line: 167, column: 17, scope: !4074)
!4085 = !DILocation(line: 167, column: 20, scope: !4074)
!4086 = !DILocation(line: 167, column: 9, scope: !4074)
!4087 = !DILocation(line: 167, column: 2, scope: !4074)
!4088 = distinct !DISubprogram(name: "show_cpuinfo", scope: !3, file: !3, line: 63, type: !1726, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4089)
!4089 = !{!4090, !4091, !4092, !4093, !4094, !4095, !4098}
!4090 = !DILocalVariable(name: "m", arg: 1, scope: !4088, file: !3, line: 63, type: !295)
!4091 = !DILocalVariable(name: "v", arg: 2, scope: !4088, file: !3, line: 63, type: !163)
!4092 = !DILocalVariable(name: "c", scope: !4088, file: !3, line: 65, type: !79)
!4093 = !DILocalVariable(name: "cpu", scope: !4088, file: !3, line: 66, type: !7)
!4094 = !DILocalVariable(name: "i", scope: !4088, file: !3, line: 67, type: !100)
!4095 = !DILocalVariable(name: "freq", scope: !4096, file: !3, line: 89, type: !7)
!4096 = distinct !DILexicalBlock(scope: !4097, file: !3, line: 88, column: 35)
!4097 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 88, column: 6)
!4098 = !DILocalVariable(name: "bug_bit", scope: !4099, file: !3, line: 119, type: !7)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 118, column: 36)
!4100 = distinct !DILexicalBlock(scope: !4101, file: !3, line: 118, column: 2)
!4101 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 118, column: 2)
!4102 = !DILocation(line: 63, column: 42, scope: !4088)
!4103 = !DILocation(line: 63, column: 51, scope: !4088)
!4104 = !DILocation(line: 65, column: 2, scope: !4088)
!4105 = !DILocation(line: 65, column: 22, scope: !4088)
!4106 = !DILocation(line: 65, column: 26, scope: !4088)
!4107 = !DILocation(line: 66, column: 2, scope: !4088)
!4108 = !DILocation(line: 66, column: 15, scope: !4088)
!4109 = !DILocation(line: 67, column: 2, scope: !4088)
!4110 = !DILocation(line: 67, column: 6, scope: !4088)
!4111 = !DILocation(line: 69, column: 8, scope: !4088)
!4112 = !DILocation(line: 69, column: 11, scope: !4088)
!4113 = !DILocation(line: 69, column: 6, scope: !4088)
!4114 = !DILocation(line: 70, column: 13, scope: !4088)
!4115 = !DILocation(line: 75, column: 6, scope: !4088)
!4116 = !DILocation(line: 76, column: 6, scope: !4088)
!4117 = !DILocation(line: 76, column: 9, scope: !4088)
!4118 = !DILocation(line: 76, column: 28, scope: !4088)
!4119 = !DILocation(line: 76, column: 31, scope: !4088)
!4120 = !DILocation(line: 77, column: 6, scope: !4088)
!4121 = !DILocation(line: 77, column: 9, scope: !4088)
!4122 = !DILocation(line: 78, column: 6, scope: !4088)
!4123 = !DILocation(line: 78, column: 9, scope: !4088)
!4124 = !DILocation(line: 79, column: 6, scope: !4088)
!4125 = !DILocation(line: 79, column: 9, scope: !4088)
!4126 = !DILocation(line: 79, column: 27, scope: !4088)
!4127 = !DILocation(line: 79, column: 30, scope: !4088)
!4128 = !DILocation(line: 70, column: 2, scope: !4088)
!4129 = !DILocation(line: 81, column: 6, scope: !4130)
!4130 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 81, column: 6)
!4131 = !DILocation(line: 81, column: 9, scope: !4130)
!4132 = !DILocation(line: 81, column: 22, scope: !4130)
!4133 = !DILocation(line: 81, column: 25, scope: !4130)
!4134 = !DILocation(line: 81, column: 28, scope: !4130)
!4135 = !DILocation(line: 81, column: 40, scope: !4130)
!4136 = !DILocation(line: 81, column: 6, scope: !4088)
!4137 = !DILocation(line: 82, column: 14, scope: !4130)
!4138 = !DILocation(line: 82, column: 37, scope: !4130)
!4139 = !DILocation(line: 82, column: 40, scope: !4130)
!4140 = !DILocation(line: 82, column: 3, scope: !4130)
!4141 = !DILocation(line: 84, column: 12, scope: !4130)
!4142 = !DILocation(line: 84, column: 3, scope: !4130)
!4143 = !DILocation(line: 85, column: 6, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 85, column: 6)
!4145 = !DILocation(line: 85, column: 9, scope: !4144)
!4146 = !DILocation(line: 85, column: 6, scope: !4088)
!4147 = !DILocation(line: 86, column: 14, scope: !4144)
!4148 = !DILocation(line: 86, column: 40, scope: !4144)
!4149 = !DILocation(line: 86, column: 43, scope: !4144)
!4150 = !DILocation(line: 86, column: 3, scope: !4144)
!4151 = !DILocation(line: 88, column: 6, scope: !4088)
!4152 = !DILocation(line: 88, column: 6, scope: !4097)
!4153 = !DILocation(line: 89, column: 3, scope: !4096)
!4154 = !DILocation(line: 89, column: 16, scope: !4096)
!4155 = !DILocation(line: 89, column: 44, scope: !4096)
!4156 = !DILocation(line: 89, column: 23, scope: !4096)
!4157 = !DILocation(line: 91, column: 14, scope: !4096)
!4158 = !DILocation(line: 91, column: 43, scope: !4096)
!4159 = !DILocation(line: 91, column: 48, scope: !4096)
!4160 = !DILocation(line: 91, column: 57, scope: !4096)
!4161 = !DILocation(line: 91, column: 62, scope: !4096)
!4162 = !DILocation(line: 91, column: 3, scope: !4096)
!4163 = !DILocation(line: 92, column: 2, scope: !4097)
!4164 = !DILocation(line: 92, column: 2, scope: !4096)
!4165 = !DILocation(line: 95, column: 6, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 95, column: 6)
!4167 = !DILocation(line: 95, column: 9, scope: !4166)
!4168 = !DILocation(line: 95, column: 6, scope: !4088)
!4169 = !DILocation(line: 96, column: 14, scope: !4166)
!4170 = !DILocation(line: 96, column: 42, scope: !4166)
!4171 = !DILocation(line: 96, column: 45, scope: !4166)
!4172 = !DILocation(line: 96, column: 3, scope: !4166)
!4173 = !DILocation(line: 98, column: 20, scope: !4088)
!4174 = !DILocation(line: 98, column: 23, scope: !4088)
!4175 = !DILocation(line: 98, column: 26, scope: !4088)
!4176 = !DILocation(line: 98, column: 2, scope: !4088)
!4177 = !DILocation(line: 99, column: 20, scope: !4088)
!4178 = !DILocation(line: 99, column: 23, scope: !4088)
!4179 = !DILocation(line: 99, column: 2, scope: !4088)
!4180 = !DILocation(line: 101, column: 11, scope: !4088)
!4181 = !DILocation(line: 101, column: 2, scope: !4088)
!4182 = !DILocation(line: 102, column: 9, scope: !4183)
!4183 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 102, column: 2)
!4184 = !DILocation(line: 102, column: 7, scope: !4183)
!4185 = !DILocation(line: 102, column: 14, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4183, file: !3, line: 102, column: 2)
!4187 = !DILocation(line: 102, column: 16, scope: !4186)
!4188 = !DILocation(line: 102, column: 2, scope: !4183)
!4189 = !DILocation(line: 103, column: 7, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4186, file: !3, line: 103, column: 7)
!4191 = !DILocation(line: 103, column: 21, scope: !4190)
!4192 = !DILocation(line: 103, column: 38, scope: !4190)
!4193 = !DILocation(line: 103, column: 24, scope: !4190)
!4194 = !DILocation(line: 103, column: 41, scope: !4190)
!4195 = !DILocation(line: 103, column: 7, scope: !4186)
!4196 = !DILocation(line: 104, column: 15, scope: !4190)
!4197 = !DILocation(line: 104, column: 39, scope: !4190)
!4198 = !DILocation(line: 104, column: 25, scope: !4190)
!4199 = !DILocation(line: 104, column: 4, scope: !4190)
!4200 = !DILocation(line: 103, column: 44, scope: !4190)
!4201 = !DILocation(line: 102, column: 32, scope: !4186)
!4202 = !DILocation(line: 102, column: 2, scope: !4186)
!4203 = distinct !{!4203, !4188, !4204, !4205, !4206}
!4204 = !DILocation(line: 104, column: 41, scope: !4183)
!4205 = !{!"llvm.loop.mustprogress"}
!4206 = !{!"llvm.loop.unroll.disable"}
!4207 = !DILocation(line: 107, column: 34, scope: !4208)
!4208 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 107, column: 6)
!4209 = !DILocation(line: 107, column: 6, scope: !4208)
!4210 = !DILocation(line: 107, column: 37, scope: !4208)
!4211 = !DILocation(line: 107, column: 40, scope: !4208)
!4212 = !DILocation(line: 107, column: 6, scope: !4088)
!4213 = !DILocation(line: 108, column: 12, scope: !4214)
!4214 = distinct !DILexicalBlock(scope: !4208, file: !3, line: 107, column: 59)
!4215 = !DILocation(line: 108, column: 3, scope: !4214)
!4216 = !DILocation(line: 109, column: 10, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 109, column: 3)
!4218 = !DILocation(line: 109, column: 8, scope: !4217)
!4219 = !DILocation(line: 109, column: 15, scope: !4220)
!4220 = distinct !DILexicalBlock(scope: !4217, file: !3, line: 109, column: 3)
!4221 = !DILocation(line: 109, column: 17, scope: !4220)
!4222 = !DILocation(line: 109, column: 3, scope: !4217)
!4223 = !DILocation(line: 110, column: 8, scope: !4224)
!4224 = distinct !DILexicalBlock(scope: !4225, file: !3, line: 110, column: 8)
!4225 = distinct !DILexicalBlock(scope: !4220, file: !3, line: 109, column: 37)
!4226 = !DILocation(line: 110, column: 56, scope: !4224)
!4227 = !DILocation(line: 111, column: 22, scope: !4224)
!4228 = !DILocation(line: 111, column: 8, scope: !4224)
!4229 = !DILocation(line: 111, column: 25, scope: !4224)
!4230 = !DILocation(line: 110, column: 8, scope: !4225)
!4231 = !DILocation(line: 112, column: 16, scope: !4224)
!4232 = !DILocation(line: 112, column: 40, scope: !4224)
!4233 = !DILocation(line: 112, column: 26, scope: !4224)
!4234 = !DILocation(line: 112, column: 5, scope: !4224)
!4235 = !DILocation(line: 113, column: 3, scope: !4225)
!4236 = !DILocation(line: 109, column: 33, scope: !4220)
!4237 = !DILocation(line: 109, column: 3, scope: !4220)
!4238 = distinct !{!4238, !4222, !4239, !4205, !4206}
!4239 = !DILocation(line: 113, column: 3, scope: !4217)
!4240 = !DILocation(line: 114, column: 2, scope: !4214)
!4241 = !DILocation(line: 117, column: 11, scope: !4088)
!4242 = !DILocation(line: 117, column: 2, scope: !4088)
!4243 = !DILocation(line: 118, column: 9, scope: !4101)
!4244 = !DILocation(line: 118, column: 7, scope: !4101)
!4245 = !DILocation(line: 118, column: 14, scope: !4100)
!4246 = !DILocation(line: 118, column: 16, scope: !4100)
!4247 = !DILocation(line: 118, column: 2, scope: !4101)
!4248 = !DILocation(line: 119, column: 3, scope: !4099)
!4249 = !DILocation(line: 119, column: 16, scope: !4099)
!4250 = !DILocation(line: 119, column: 40, scope: !4099)
!4251 = !DILocation(line: 119, column: 38, scope: !4099)
!4252 = !DILocation(line: 121, column: 7, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4099, file: !3, line: 121, column: 7)
!4254 = !DILocation(line: 121, column: 31, scope: !4253)
!4255 = !DILocation(line: 121, column: 48, scope: !4253)
!4256 = !DILocation(line: 121, column: 34, scope: !4253)
!4257 = !DILocation(line: 121, column: 7, scope: !4099)
!4258 = !DILocation(line: 122, column: 15, scope: !4253)
!4259 = !DILocation(line: 122, column: 39, scope: !4253)
!4260 = !DILocation(line: 122, column: 25, scope: !4253)
!4261 = !DILocation(line: 122, column: 4, scope: !4253)
!4262 = !DILocation(line: 123, column: 2, scope: !4100)
!4263 = !DILocation(line: 123, column: 2, scope: !4099)
!4264 = !DILocation(line: 118, column: 32, scope: !4100)
!4265 = !DILocation(line: 118, column: 2, scope: !4100)
!4266 = distinct !{!4266, !4247, !4267, !4205, !4206}
!4267 = !DILocation(line: 123, column: 2, scope: !4101)
!4268 = !DILocation(line: 125, column: 13, scope: !4088)
!4269 = !DILocation(line: 126, column: 6, scope: !4088)
!4270 = !DILocation(line: 126, column: 9, scope: !4088)
!4271 = !DILocation(line: 126, column: 24, scope: !4088)
!4272 = !DILocation(line: 127, column: 7, scope: !4088)
!4273 = !DILocation(line: 127, column: 10, scope: !4088)
!4274 = !DILocation(line: 127, column: 25, scope: !4088)
!4275 = !DILocation(line: 127, column: 37, scope: !4088)
!4276 = !DILocation(line: 125, column: 2, scope: !4088)
!4277 = !DILocation(line: 130, column: 6, scope: !4278)
!4278 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 130, column: 6)
!4279 = !DILocation(line: 130, column: 9, scope: !4278)
!4280 = !DILocation(line: 130, column: 21, scope: !4278)
!4281 = !DILocation(line: 130, column: 6, scope: !4088)
!4282 = !DILocation(line: 131, column: 14, scope: !4278)
!4283 = !DILocation(line: 131, column: 46, scope: !4278)
!4284 = !DILocation(line: 131, column: 49, scope: !4278)
!4285 = !DILocation(line: 131, column: 3, scope: !4278)
!4286 = !DILocation(line: 133, column: 13, scope: !4088)
!4287 = !DILocation(line: 133, column: 40, scope: !4088)
!4288 = !DILocation(line: 133, column: 43, scope: !4088)
!4289 = !DILocation(line: 133, column: 2, scope: !4088)
!4290 = !DILocation(line: 134, column: 13, scope: !4088)
!4291 = !DILocation(line: 134, column: 43, scope: !4088)
!4292 = !DILocation(line: 134, column: 46, scope: !4088)
!4293 = !DILocation(line: 134, column: 2, scope: !4088)
!4294 = !DILocation(line: 135, column: 13, scope: !4088)
!4295 = !DILocation(line: 136, column: 6, scope: !4088)
!4296 = !DILocation(line: 136, column: 9, scope: !4088)
!4297 = !DILocation(line: 136, column: 24, scope: !4088)
!4298 = !DILocation(line: 136, column: 27, scope: !4088)
!4299 = !DILocation(line: 135, column: 2, scope: !4088)
!4300 = !DILocation(line: 138, column: 11, scope: !4088)
!4301 = !DILocation(line: 138, column: 2, scope: !4088)
!4302 = !DILocation(line: 139, column: 9, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 139, column: 2)
!4304 = !DILocation(line: 139, column: 7, scope: !4303)
!4305 = !DILocation(line: 139, column: 14, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4303, file: !3, line: 139, column: 2)
!4307 = !DILocation(line: 139, column: 16, scope: !4306)
!4308 = !DILocation(line: 139, column: 2, scope: !4303)
!4309 = !DILocation(line: 140, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 140, column: 7)
!4311 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 139, column: 27)
!4312 = !DILocation(line: 140, column: 10, scope: !4310)
!4313 = !DILocation(line: 140, column: 28, scope: !4310)
!4314 = !DILocation(line: 140, column: 25, scope: !4310)
!4315 = !DILocation(line: 140, column: 20, scope: !4310)
!4316 = !DILocation(line: 140, column: 7, scope: !4311)
!4317 = !DILocation(line: 141, column: 8, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4319, file: !3, line: 141, column: 8)
!4319 = distinct !DILexicalBlock(scope: !4310, file: !3, line: 140, column: 32)
!4320 = !DILocation(line: 141, column: 10, scope: !4318)
!4321 = !DILocation(line: 141, column: 40, scope: !4318)
!4322 = !DILocation(line: 142, column: 24, scope: !4318)
!4323 = !DILocation(line: 142, column: 8, scope: !4318)
!4324 = !DILocation(line: 141, column: 8, scope: !4319)
!4325 = !DILocation(line: 143, column: 16, scope: !4318)
!4326 = !DILocation(line: 144, column: 25, scope: !4318)
!4327 = !DILocation(line: 144, column: 9, scope: !4318)
!4328 = !DILocation(line: 145, column: 25, scope: !4318)
!4329 = !DILocation(line: 145, column: 9, scope: !4318)
!4330 = !DILocation(line: 143, column: 5, scope: !4318)
!4331 = !DILocation(line: 147, column: 16, scope: !4318)
!4332 = !DILocation(line: 147, column: 28, scope: !4318)
!4333 = !DILocation(line: 147, column: 5, scope: !4318)
!4334 = !DILocation(line: 148, column: 3, scope: !4319)
!4335 = !DILocation(line: 149, column: 2, scope: !4311)
!4336 = !DILocation(line: 139, column: 23, scope: !4306)
!4337 = !DILocation(line: 139, column: 2, scope: !4306)
!4338 = distinct !{!4338, !4308, !4339, !4205, !4206}
!4339 = !DILocation(line: 149, column: 2, scope: !4303)
!4340 = !DILocation(line: 151, column: 11, scope: !4088)
!4341 = !DILocation(line: 151, column: 2, scope: !4088)
!4342 = !DILocation(line: 154, column: 1, scope: !4088)
!4343 = !DILocation(line: 153, column: 2, scope: !4088)
!4344 = distinct !DISubprogram(name: "cpumask_next", scope: !72, file: !72, line: 208, type: !4345, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4347)
!4345 = !DISubroutineType(types: !4346)
!4346 = !{!7, !100, !69}
!4347 = !{!4348, !4349}
!4348 = !DILocalVariable(name: "n", arg: 1, scope: !4344, file: !72, line: 208, type: !100)
!4349 = !DILocalVariable(name: "srcp", arg: 2, scope: !4344, file: !72, line: 208, type: !69)
!4350 = !DILocation(line: 208, column: 31, scope: !4344)
!4351 = !DILocation(line: 208, column: 56, scope: !4344)
!4352 = !DILocation(line: 211, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4344, file: !72, line: 211, column: 6)
!4354 = !DILocation(line: 211, column: 8, scope: !4353)
!4355 = !DILocation(line: 211, column: 6, scope: !4344)
!4356 = !DILocation(line: 212, column: 17, scope: !4353)
!4357 = !DILocation(line: 212, column: 3, scope: !4353)
!4358 = !DILocation(line: 213, column: 23, scope: !4344)
!4359 = !DILocation(line: 213, column: 63, scope: !4344)
!4360 = !DILocation(line: 213, column: 65, scope: !4344)
!4361 = !DILocation(line: 213, column: 9, scope: !4344)
!4362 = !DILocation(line: 213, column: 2, scope: !4344)
!4363 = distinct !DISubprogram(name: "cpumask_check", scope: !72, file: !72, line: 148, type: !4364, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4366)
!4364 = !DISubroutineType(types: !4365)
!4365 = !{!7, !7}
!4366 = !{!4367}
!4367 = !DILocalVariable(name: "cpu", arg: 1, scope: !4363, file: !72, line: 148, type: !7)
!4368 = !DILocation(line: 148, column: 64, scope: !4363)
!4369 = !DILocation(line: 150, column: 20, scope: !4363)
!4370 = !DILocation(line: 150, column: 2, scope: !4363)
!4371 = !DILocation(line: 151, column: 9, scope: !4363)
!4372 = !DILocation(line: 151, column: 2, scope: !4363)
!4373 = distinct !DISubprogram(name: "find_next_bit", scope: !4374, file: !4374, line: 54, type: !4375, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4374 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!4375 = !DISubroutineType(types: !4376)
!4376 = !{!76, !166, !76, !76}
!4377 = !{!4378, !4379, !4380, !4381}
!4378 = !DILocalVariable(name: "addr", arg: 1, scope: !4373, file: !4374, line: 54, type: !166)
!4379 = !DILocalVariable(name: "size", arg: 2, scope: !4373, file: !4374, line: 54, type: !76)
!4380 = !DILocalVariable(name: "offset", arg: 3, scope: !4373, file: !4374, line: 55, type: !76)
!4381 = !DILocalVariable(name: "val", scope: !4382, file: !4374, line: 58, type: !76)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !4374, line: 57, column: 31)
!4383 = distinct !DILexicalBlock(scope: !4373, file: !4374, line: 57, column: 6)
!4384 = !DILocation(line: 54, column: 50, scope: !4373)
!4385 = !DILocation(line: 54, column: 70, scope: !4373)
!4386 = !DILocation(line: 55, column: 22, scope: !4373)
!4387 = !DILocation(line: 57, column: 6, scope: !4383)
!4388 = !DILocation(line: 57, column: 6, scope: !4373)
!4389 = !DILocation(line: 58, column: 3, scope: !4382)
!4390 = !DILocation(line: 58, column: 17, scope: !4382)
!4391 = !DILocation(line: 60, column: 7, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4382, file: !4374, line: 60, column: 7)
!4393 = !DILocation(line: 60, column: 7, scope: !4382)
!4394 = !DILocation(line: 61, column: 11, scope: !4392)
!4395 = !DILocation(line: 61, column: 4, scope: !4392)
!4396 = !DILocation(line: 63, column: 10, scope: !4382)
!4397 = !DILocation(line: 63, column: 9, scope: !4382)
!4398 = !DILocation(line: 63, column: 17, scope: !4382)
!4399 = !DILocation(line: 63, column: 15, scope: !4382)
!4400 = !DILocation(line: 63, column: 7, scope: !4382)
!4401 = !DILocation(line: 64, column: 10, scope: !4382)
!4402 = !DILocation(line: 64, column: 16, scope: !4382)
!4403 = !DILocation(line: 64, column: 29, scope: !4382)
!4404 = !DILocation(line: 64, column: 3, scope: !4382)
!4405 = !DILocation(line: 65, column: 2, scope: !4383)
!4406 = !DILocation(line: 67, column: 24, scope: !4373)
!4407 = !DILocation(line: 67, column: 30, scope: !4373)
!4408 = !DILocation(line: 67, column: 36, scope: !4373)
!4409 = !DILocation(line: 67, column: 9, scope: !4373)
!4410 = !DILocation(line: 67, column: 2, scope: !4373)
!4411 = !DILocation(line: 68, column: 1, scope: !4373)
!4412 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !72, file: !72, line: 140, type: !4413, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4415)
!4413 = !DISubroutineType(types: !4414)
!4414 = !{null, !7, !7}
!4415 = !{!4416, !4417}
!4416 = !DILocalVariable(name: "cpu", arg: 1, scope: !4412, file: !72, line: 140, type: !7)
!4417 = !DILocalVariable(name: "bits", arg: 2, scope: !4412, file: !72, line: 140, type: !7)
!4418 = !DILocation(line: 140, column: 60, scope: !4412)
!4419 = !DILocation(line: 140, column: 78, scope: !4412)
!4420 = !DILocation(line: 145, column: 1, scope: !4412)
!4421 = distinct !DISubprogram(name: "variable__ffs", scope: !4422, file: !4422, line: 250, type: !4423, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4422 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!76, !76}
!4425 = !{!4426}
!4426 = !DILocalVariable(name: "word", arg: 1, scope: !4421, file: !4422, line: 250, type: !76)
!4427 = !DILocation(line: 250, column: 66, scope: !4421)
!4428 = !DILocation(line: 254, column: 11, scope: !4421)
!4429 = !DILocation(line: 252, column: 2, scope: !4421)
!4430 = !{i64 456823}
!4431 = !DILocation(line: 255, column: 9, scope: !4421)
!4432 = !DILocation(line: 255, column: 2, scope: !4421)
!4433 = !DISubprogram(name: "_find_next_bit", scope: !4374, file: !4374, line: 11, type: !4375, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4434 = !DISubprogram(name: "seq_printf", scope: !289, file: !289, line: 119, type: !4435, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4435 = !DISubroutineType(types: !4436)
!4436 = !{null, !295, !598, null}
!4437 = !DISubprogram(name: "seq_puts", scope: !289, file: !289, line: 121, type: !4438, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4438 = !DISubroutineType(types: !4439)
!4439 = !{null, !295, !598}
!4440 = distinct !DISubprogram(name: "arch_test_bit", scope: !4422, file: !4422, line: 237, type: !4441, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4446)
!4441 = !DISubroutineType(types: !4442)
!4442 = !{!155, !76, !4443}
!4443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4444, size: 64)
!4444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4445)
!4445 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !76)
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "nr", arg: 1, scope: !4440, file: !4422, line: 237, type: !76)
!4448 = !DILocalVariable(name: "addr", arg: 2, scope: !4440, file: !4422, line: 237, type: !4443)
!4449 = !DILocation(line: 237, column: 29, scope: !4440)
!4450 = !DILocation(line: 237, column: 63, scope: !4440)
!4451 = !DILocation(line: 239, column: 30, scope: !4440)
!4452 = !DILocation(line: 239, column: 9, scope: !4440)
!4453 = !DILocation(line: 239, column: 54, scope: !4440)
!4454 = !DILocation(line: 239, column: 58, scope: !4440)
!4455 = !DILocation(line: 239, column: 36, scope: !4440)
!4456 = !DILocation(line: 240, column: 26, scope: !4440)
!4457 = !DILocation(line: 240, column: 30, scope: !4440)
!4458 = !DILocation(line: 240, column: 8, scope: !4440)
!4459 = !DILocation(line: 239, column: 2, scope: !4440)
!4460 = !DISubprogram(name: "arch_freq_get_on_cpu", scope: !4461, file: !4461, line: 1213, type: !4462, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4461 = !DIFile(filename: "./include/linux/cpufreq.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ad5b2d8eef98749599a01da4cdfaed5a")
!4462 = !DISubroutineType(types: !4463)
!4463 = !{!7, !100}
!4464 = distinct !DISubprogram(name: "show_cpuinfo_core", scope: !3, file: !3, line: 19, type: !4465, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4467)
!4465 = !DISubroutineType(types: !4466)
!4466 = !{null, !295, !79, !7}
!4467 = !{!4468, !4469, !4470, !4471, !4474}
!4468 = !DILocalVariable(name: "m", arg: 1, scope: !4464, file: !3, line: 19, type: !295)
!4469 = !DILocalVariable(name: "c", arg: 2, scope: !4464, file: !3, line: 19, type: !79)
!4470 = !DILocalVariable(name: "cpu", arg: 3, scope: !4464, file: !3, line: 20, type: !7)
!4471 = !DILocalVariable(name: "__vpp_verify", scope: !4472, file: !3, line: 25, type: !1528)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 25, column: 21)
!4473 = distinct !DILexicalBlock(scope: !4464, file: !3, line: 25, column: 21)
!4474 = !DILocalVariable(name: "__ptr", scope: !4475, file: !3, line: 25, type: !76)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 25, column: 21)
!4476 = !DILocation(line: 19, column: 48, scope: !4464)
!4477 = !DILocation(line: 19, column: 71, scope: !4464)
!4478 = !DILocation(line: 20, column: 23, scope: !4464)
!4479 = !DILocation(line: 23, column: 13, scope: !4464)
!4480 = !DILocation(line: 23, column: 39, scope: !4464)
!4481 = !DILocation(line: 23, column: 42, scope: !4464)
!4482 = !DILocation(line: 23, column: 2, scope: !4464)
!4483 = !DILocation(line: 24, column: 13, scope: !4464)
!4484 = !DILocation(line: 25, column: 21, scope: !4473)
!4485 = !DILocation(line: 25, column: 21, scope: !4472)
!4486 = !DILocation(line: 25, column: 21, scope: !4475)
!4487 = !DILocation(line: 25, column: 21, scope: !4464)
!4488 = !DILocation(line: 25, column: 6, scope: !4464)
!4489 = !DILocation(line: 24, column: 2, scope: !4464)
!4490 = !DILocation(line: 26, column: 13, scope: !4464)
!4491 = !DILocation(line: 26, column: 37, scope: !4464)
!4492 = !DILocation(line: 26, column: 40, scope: !4464)
!4493 = !DILocation(line: 26, column: 2, scope: !4464)
!4494 = !DILocation(line: 27, column: 13, scope: !4464)
!4495 = !DILocation(line: 27, column: 37, scope: !4464)
!4496 = !DILocation(line: 27, column: 40, scope: !4464)
!4497 = !DILocation(line: 27, column: 2, scope: !4464)
!4498 = !DILocation(line: 28, column: 13, scope: !4464)
!4499 = !DILocation(line: 28, column: 36, scope: !4464)
!4500 = !DILocation(line: 28, column: 39, scope: !4464)
!4501 = !DILocation(line: 28, column: 2, scope: !4464)
!4502 = !DILocation(line: 29, column: 13, scope: !4464)
!4503 = !DILocation(line: 29, column: 42, scope: !4464)
!4504 = !DILocation(line: 29, column: 45, scope: !4464)
!4505 = !DILocation(line: 29, column: 2, scope: !4464)
!4506 = !DILocation(line: 31, column: 1, scope: !4464)
!4507 = distinct !DISubprogram(name: "show_cpuinfo_misc", scope: !3, file: !3, line: 52, type: !4508, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4510)
!4508 = !DISubroutineType(types: !4509)
!4509 = !{null, !295, !79}
!4510 = !{!4511, !4512}
!4511 = !DILocalVariable(name: "m", arg: 1, scope: !4507, file: !3, line: 52, type: !295)
!4512 = !DILocalVariable(name: "c", arg: 2, scope: !4507, file: !3, line: 52, type: !79)
!4513 = !DILocation(line: 52, column: 48, scope: !4507)
!4514 = !DILocation(line: 52, column: 71, scope: !4507)
!4515 = !DILocation(line: 54, column: 13, scope: !4507)
!4516 = !DILocation(line: 59, column: 6, scope: !4507)
!4517 = !DILocation(line: 59, column: 9, scope: !4507)
!4518 = !DILocation(line: 54, column: 2, scope: !4507)
!4519 = !DILocation(line: 60, column: 1, scope: !4507)
!4520 = distinct !DISubprogram(name: "const_test_bit", scope: !4521, file: !4521, line: 166, type: !4441, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4522)
!4521 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!4522 = !{!4523, !4524, !4525, !4526, !4527}
!4523 = !DILocalVariable(name: "nr", arg: 1, scope: !4520, file: !4521, line: 166, type: !76)
!4524 = !DILocalVariable(name: "addr", arg: 2, scope: !4520, file: !4521, line: 166, type: !4443)
!4525 = !DILocalVariable(name: "p", scope: !4520, file: !4521, line: 168, type: !166)
!4526 = !DILocalVariable(name: "mask", scope: !4520, file: !4521, line: 169, type: !76)
!4527 = !DILocalVariable(name: "val", scope: !4520, file: !4521, line: 170, type: !76)
!4528 = !DILocation(line: 166, column: 30, scope: !4520)
!4529 = !DILocation(line: 166, column: 64, scope: !4520)
!4530 = !DILocation(line: 168, column: 2, scope: !4520)
!4531 = !DILocation(line: 168, column: 23, scope: !4520)
!4532 = !DILocation(line: 168, column: 50, scope: !4520)
!4533 = !DILocation(line: 168, column: 57, scope: !4520)
!4534 = !DILocation(line: 168, column: 55, scope: !4520)
!4535 = !DILocation(line: 169, column: 2, scope: !4520)
!4536 = !DILocation(line: 169, column: 16, scope: !4520)
!4537 = !DILocation(line: 169, column: 23, scope: !4520)
!4538 = !DILocation(line: 170, column: 2, scope: !4520)
!4539 = !DILocation(line: 170, column: 16, scope: !4520)
!4540 = !DILocation(line: 170, column: 23, scope: !4520)
!4541 = !DILocation(line: 170, column: 22, scope: !4520)
!4542 = !DILocation(line: 172, column: 12, scope: !4520)
!4543 = !DILocation(line: 172, column: 18, scope: !4520)
!4544 = !DILocation(line: 172, column: 16, scope: !4520)
!4545 = !DILocation(line: 172, column: 10, scope: !4520)
!4546 = !DILocation(line: 172, column: 9, scope: !4520)
!4547 = !DILocation(line: 173, column: 1, scope: !4520)
!4548 = !DILocation(line: 172, column: 2, scope: !4520)
!4549 = distinct !DISubprogram(name: "_test_bit", scope: !4550, file: !4550, line: 139, type: !4441, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4551)
!4550 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!4551 = !{!4552, !4553}
!4552 = !DILocalVariable(name: "nr", arg: 1, scope: !4549, file: !4550, line: 139, type: !76)
!4553 = !DILocalVariable(name: "addr", arg: 2, scope: !4549, file: !4550, line: 139, type: !4443)
!4554 = !DILocation(line: 139, column: 25, scope: !4549)
!4555 = !DILocation(line: 139, column: 59, scope: !4549)
!4556 = !DILocation(line: 141, column: 25, scope: !4549)
!4557 = !DILocation(line: 141, column: 32, scope: !4549)
!4558 = !DILocation(line: 141, column: 30, scope: !4549)
!4559 = !DILocation(line: 141, column: 2, scope: !4549)
!4560 = !DILocation(line: 142, column: 23, scope: !4549)
!4561 = !DILocation(line: 142, column: 27, scope: !4549)
!4562 = !DILocation(line: 142, column: 9, scope: !4549)
!4563 = !DILocation(line: 142, column: 2, scope: !4549)
!4564 = distinct !DISubprogram(name: "constant_test_bit", scope: !4422, file: !4422, line: 204, type: !4565, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4567)
!4565 = !DISubroutineType(types: !4566)
!4566 = !{!155, !873, !4443}
!4567 = !{!4568, !4569}
!4568 = !DILocalVariable(name: "nr", arg: 1, scope: !4564, file: !4422, line: 204, type: !873)
!4569 = !DILocalVariable(name: "addr", arg: 2, scope: !4564, file: !4422, line: 204, type: !4443)
!4570 = !DILocation(line: 204, column: 52, scope: !4564)
!4571 = !DILocation(line: 204, column: 86, scope: !4564)
!4572 = !DILocation(line: 206, column: 19, scope: !4564)
!4573 = !DILocation(line: 206, column: 22, scope: !4564)
!4574 = !DILocation(line: 206, column: 15, scope: !4564)
!4575 = !DILocation(line: 207, column: 4, scope: !4564)
!4576 = !DILocation(line: 207, column: 9, scope: !4564)
!4577 = !DILocation(line: 207, column: 12, scope: !4564)
!4578 = !DILocation(line: 206, column: 44, scope: !4564)
!4579 = !DILocation(line: 207, column: 37, scope: !4564)
!4580 = !DILocation(line: 206, column: 2, scope: !4564)
!4581 = distinct !DISubprogram(name: "variable_test_bit", scope: !4422, file: !4422, line: 224, type: !4565, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4582 = !{!4583, !4584, !4585}
!4583 = !DILocalVariable(name: "nr", arg: 1, scope: !4581, file: !4422, line: 224, type: !873)
!4584 = !DILocalVariable(name: "addr", arg: 2, scope: !4581, file: !4422, line: 224, type: !4443)
!4585 = !DILocalVariable(name: "oldbit", scope: !4581, file: !4422, line: 226, type: !155)
!4586 = !DILocation(line: 224, column: 52, scope: !4581)
!4587 = !DILocation(line: 224, column: 86, scope: !4581)
!4588 = !DILocation(line: 226, column: 2, scope: !4581)
!4589 = !DILocation(line: 226, column: 7, scope: !4581)
!4590 = !DILocation(line: 231, column: 33, scope: !4581)
!4591 = !DILocation(line: 231, column: 46, scope: !4581)
!4592 = !DILocation(line: 228, column: 2, scope: !4581)
!4593 = !{i64 2147961748, i64 2147961822}
!4594 = !DILocation(line: 233, column: 9, scope: !4581)
!4595 = !{i8 0, i8 2}
!4596 = !DILocation(line: 234, column: 1, scope: !4581)
!4597 = !DILocation(line: 233, column: 2, scope: !4581)
!4598 = distinct !DISubprogram(name: "cpumask_weight", scope: !72, file: !72, line: 690, type: !4599, scopeLine: 691, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4601)
!4599 = !DISubroutineType(types: !4600)
!4600 = !{!7, !69}
!4601 = !{!4602}
!4602 = !DILocalVariable(name: "srcp", arg: 1, scope: !4598, file: !72, line: 690, type: !69)
!4603 = !DILocation(line: 690, column: 65, scope: !4598)
!4604 = !DILocation(line: 692, column: 23, scope: !4598)
!4605 = !DILocation(line: 692, column: 9, scope: !4598)
!4606 = !DILocation(line: 692, column: 2, scope: !4598)
!4607 = distinct !DISubprogram(name: "bitmap_weight", scope: !4608, file: !4608, line: 453, type: !4609, scopeLine: 454, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4611)
!4608 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e602e35f6e89a2b4274644378845f524")
!4609 = !DISubroutineType(types: !4610)
!4610 = !{!7, !166, !7}
!4611 = !{!4612, !4613}
!4612 = !DILocalVariable(name: "src", arg: 1, scope: !4607, file: !4608, line: 453, type: !166)
!4613 = !DILocalVariable(name: "nbits", arg: 2, scope: !4607, file: !4608, line: 453, type: !7)
!4614 = !DILocation(line: 453, column: 49, scope: !4607)
!4615 = !DILocation(line: 453, column: 67, scope: !4607)
!4616 = !DILocation(line: 455, column: 6, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4607, file: !4608, line: 455, column: 6)
!4618 = !DILocation(line: 455, column: 6, scope: !4607)
!4619 = !DILocation(line: 456, column: 24, scope: !4617)
!4620 = !DILocation(line: 456, column: 23, scope: !4617)
!4621 = !DILocation(line: 456, column: 30, scope: !4617)
!4622 = !DILocation(line: 456, column: 28, scope: !4617)
!4623 = !DILocation(line: 456, column: 10, scope: !4617)
!4624 = !DILocation(line: 456, column: 3, scope: !4617)
!4625 = !DILocation(line: 457, column: 25, scope: !4607)
!4626 = !DILocation(line: 457, column: 30, scope: !4607)
!4627 = !DILocation(line: 457, column: 9, scope: !4607)
!4628 = !DILocation(line: 457, column: 2, scope: !4607)
!4629 = !DILocation(line: 458, column: 1, scope: !4607)
!4630 = distinct !DISubprogram(name: "hweight_long", scope: !4631, file: !4631, line: 95, type: !4423, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4632)
!4631 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!4632 = !{!4633}
!4633 = !DILocalVariable(name: "w", arg: 1, scope: !4630, file: !4631, line: 95, type: !76)
!4634 = !DILocation(line: 95, column: 65, scope: !4630)
!4635 = !DILocation(line: 97, column: 41, scope: !4630)
!4636 = !DILocation(line: 97, column: 2, scope: !4630)
!4637 = !DISubprogram(name: "__bitmap_weight", scope: !4608, file: !4608, line: 171, type: !4609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4638 = distinct !DISubprogram(name: "__arch_hweight64", scope: !4639, file: !4639, line: 43, type: !4640, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4642)
!4639 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "49102469a535fe59caa96e0b4cb43e29")
!4640 = !DISubroutineType(types: !4641)
!4641 = !{!76, !138}
!4642 = !{!4643, !4644}
!4643 = !DILocalVariable(name: "w", arg: 1, scope: !4638, file: !4639, line: 43, type: !138)
!4644 = !DILocalVariable(name: "res", scope: !4638, file: !4639, line: 45, type: !76)
!4645 = !DILocation(line: 43, column: 61, scope: !4638)
!4646 = !DILocation(line: 45, column: 2, scope: !4638)
!4647 = !DILocation(line: 45, column: 16, scope: !4638)
!4648 = !DILocation(line: 49, column: 15, scope: !4638)
!4649 = !DILocation(line: 47, column: 2, scope: !4638)
!4650 = !{i64 2148009540, i64 2148009568, i64 2148009574, i64 2148009590, i64 2148009606, i64 2148009633, i64 2148009966, i64 2148009266, i64 2148009972, i64 2148010020, i64 2148010084, i64 2148010148, i64 2148010205, i64 2148009347, i64 2148009372, i64 2148010412, i64 2148010542, i64 2148010473, i64 2148010556, i64 2148009464}
!4651 = !DILocation(line: 51, column: 9, scope: !4638)
!4652 = !DILocation(line: 52, column: 1, scope: !4638)
!4653 = !DILocation(line: 51, column: 2, scope: !4638)
!4654 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !4655, file: !4655, line: 66, type: !4656, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4661)
!4655 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!4656 = !DISubroutineType(types: !4657)
!4657 = !{null, !4658, !301}
!4658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4659, size: 64)
!4659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4660)
!4660 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!4661 = !{!4662, !4663}
!4662 = !DILocalVariable(name: "v", arg: 1, scope: !4654, file: !4655, line: 66, type: !4658)
!4663 = !DILocalVariable(name: "size", arg: 2, scope: !4654, file: !4655, line: 66, type: !301)
!4664 = !DILocation(line: 66, column: 73, scope: !4654)
!4665 = !DILocation(line: 66, column: 83, scope: !4654)
!4666 = !DILocation(line: 68, column: 19, scope: !4654)
!4667 = !DILocation(line: 68, column: 22, scope: !4654)
!4668 = !DILocation(line: 68, column: 2, scope: !4654)
!4669 = !DILocation(line: 69, column: 2, scope: !4654)
!4670 = !DILocation(line: 70, column: 1, scope: !4654)
!4671 = distinct !DISubprogram(name: "kasan_check_read", scope: !4672, file: !4672, line: 40, type: !4673, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4675)
!4672 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!4673 = !DISubroutineType(types: !4674)
!4674 = !{!155, !4658, !7}
!4675 = !{!4676, !4677}
!4676 = !DILocalVariable(name: "p", arg: 1, scope: !4671, file: !4672, line: 40, type: !4658)
!4677 = !DILocalVariable(name: "size", arg: 2, scope: !4671, file: !4672, line: 40, type: !7)
!4678 = !DILocation(line: 40, column: 58, scope: !4671)
!4679 = !DILocation(line: 40, column: 74, scope: !4671)
!4680 = !DILocation(line: 42, column: 2, scope: !4671)
!4681 = distinct !DISubprogram(name: "kcsan_check_access", scope: !4682, file: !4682, line: 229, type: !4683, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4685)
!4682 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!4683 = !DISubroutineType(types: !4684)
!4684 = !{null, !4658, !301, !100}
!4685 = !{!4686, !4687, !4688}
!4686 = !DILocalVariable(name: "ptr", arg: 1, scope: !4681, file: !4682, line: 229, type: !4658)
!4687 = !DILocalVariable(name: "size", arg: 2, scope: !4681, file: !4682, line: 229, type: !301)
!4688 = !DILocalVariable(name: "type", arg: 3, scope: !4681, file: !4682, line: 230, type: !100)
!4689 = !DILocation(line: 229, column: 60, scope: !4681)
!4690 = !DILocation(line: 229, column: 72, scope: !4681)
!4691 = !DILocation(line: 230, column: 15, scope: !4681)
!4692 = !DILocation(line: 230, column: 23, scope: !4681)

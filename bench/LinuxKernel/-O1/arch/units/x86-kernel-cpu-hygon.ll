; ModuleID = 'arch/x86/kernel/cpu/hygon.c'
source_filename = "arch/x86/kernel/cpu/hygon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_dev = type { ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.static_call_key = type { ptr, %union.anon.2 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.x86_cpuinit_ops = type { ptr, ptr, ptr, i8 }
%struct.nodemask_t = type { [1 x i64] }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { i8, i8, i8, i8 }

@hygon_cpu_dev = internal constant %struct.cpu_dev { ptr @.str, [2 x ptr] [ptr @.str.1, ptr null], ptr @early_init_hygon, ptr @bsp_init_hygon, ptr @init_hygon, ptr null, ptr @cpu_detect_tlb_hygon, i32 9 }, align 8, !dbg !0
@__cpu_dev_hygon_cpu_dev = internal constant ptr @hygon_cpu_dev, section ".x86_cpu_dev.init", align 8, !dbg !52
@.str = private unnamed_addr constant [6 x i8] c"Hygon\00", align 1, !dbg !149
@.str.1 = private unnamed_addr constant [13 x i8] c"HygonGenuine\00", align 1, !dbg !154
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@smp_num_siblings = external dso_local global i32, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"\014[Firmware Bug]: TSC doesn't count with P0 frequency!\0A\00", align 1, !dbg !159
@nodes_per_socket = internal global i32 1, align 4, !dbg !164
@__max_die_per_package = external dso_local global i32, align 4
@x86_amd_ls_cfg_base = external dso_local global i64, align 8
@cpu_caps_set = external dso_local global [24 x i32], align 16
@x86_amd_ls_cfg_ssbd_mask = external dso_local global i64, align 8
@apic = external dso_local global ptr, align 8
@apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read204 = internal global ptr @__SCK__apic_call_read, section ".discard.addressable", align 8, !dbg !166
@__SCK__apic_call_read = external dso_local global %struct.static_call_key, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"read\00", align 1, !dbg !174
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@cpu_llc_id = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@__per_cpu_offset = external dso_local global [64 x i64], align 16
@x86_cpuinit = external dso_local global %struct.x86_cpuinit_ops, align 8
@__apicid_to_node = external dso_local global [32768 x i16], align 16
@node_states = external dso_local global [6 x %struct.nodemask_t], align 16
@tlb_lld_4k = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_4k = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lld_2m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lld_4m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_2m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@tlb_lli_4m = external dso_local global [1 x i16], section ".data..read_mostly", align 2
@llvm.compiler.used = appending global [2 x ptr] [ptr @__cpu_dev_hygon_cpu_dev, ptr @apic_read.__UNIQUE_ID___addressable___SCK__apic_call_read204], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_hygon(ptr noundef %c) #0 align 16 !dbg !186 {
entry:
  %c.addr = alloca ptr, align 8
  %dummy = alloca i32, align 4
  %__err = alloca i32, align 4
  %__val = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !188, metadata !DIExpression()), !dbg !193
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #9, !dbg !194
  call void @llvm.dbg.declare(metadata ptr %dummy, metadata !189, metadata !DIExpression()), !dbg !195
  %0 = load ptr, ptr %c.addr, align 8, !dbg !196
  call void @early_init_hygon_mc(ptr noundef %0) #10, !dbg !197
  %1 = load ptr, ptr %c.addr, align 8, !dbg !198
  %2 = getelementptr inbounds %struct.cpuinfo_x86, ptr %1, i32 0, i32 10, !dbg !198
  %arraydecay = getelementptr inbounds [24 x i32], ptr %2, i64 0, i64 0, !dbg !198
  call void @set_bit(i64 noundef 100, ptr noundef %arraydecay) #10, !dbg !198
  call void @llvm.lifetime.start.p0(i64 4, ptr %__err) #9, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__err, metadata !190, metadata !DIExpression()), !dbg !199
  call void @llvm.lifetime.start.p0(i64 8, ptr %__val) #9, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__val, metadata !192, metadata !DIExpression()), !dbg !199
  %call = call i64 @native_read_msr_safe(i32 noundef 139, ptr noundef %__err) #10, !dbg !199
  store i64 %call, ptr %__val, align 8, !dbg !199
  %3 = load i64, ptr %__val, align 8, !dbg !199
  %conv = trunc i64 %3 to i32, !dbg !199
  %4 = load ptr, ptr %c.addr, align 8, !dbg !199
  %microcode = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 33, !dbg !199
  store i32 %conv, ptr %microcode, align 8, !dbg !199
  %5 = load i64, ptr %__val, align 8, !dbg !199
  %shr = lshr i64 %5, 32, !dbg !199
  %conv1 = trunc i64 %shr to i32, !dbg !199
  store i32 %conv1, ptr %dummy, align 4, !dbg !199
  %6 = load i32, ptr %__err, align 4, !dbg !199
  store i32 %6, ptr %tmp, align 4, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__val) #9, !dbg !200
  call void @llvm.lifetime.end.p0(i64 4, ptr %__err) #9, !dbg !200
  %7 = load i32, ptr %tmp, align 4, !dbg !199
  %8 = load ptr, ptr %c.addr, align 8, !dbg !201
  %x86_power = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 18, !dbg !203
  %9 = load i32, ptr %x86_power, align 4, !dbg !203
  %and = and i32 %9, 256, !dbg !204
  %tobool = icmp ne i32 %and, 0, !dbg !204
  br i1 %tobool, label %if.then, label %if.end, !dbg !205

if.then:                                          ; preds = %entry
  %10 = load ptr, ptr %c.addr, align 8, !dbg !206
  %11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 10, !dbg !206
  %arraydecay2 = getelementptr inbounds [24 x i32], ptr %11, i64 0, i64 0, !dbg !206
  call void @set_bit(i64 noundef 104, ptr noundef %arraydecay2) #10, !dbg !206
  %12 = load ptr, ptr %c.addr, align 8, !dbg !208
  %13 = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 10, !dbg !208
  %arraydecay3 = getelementptr inbounds [24 x i32], ptr %13, i64 0, i64 0, !dbg !208
  call void @set_bit(i64 noundef 120, ptr noundef %arraydecay3) #10, !dbg !208
  br label %if.end, !dbg !209

if.end:                                           ; preds = %if.then, %entry
  %14 = load ptr, ptr %c.addr, align 8, !dbg !210
  %x86_power4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 18, !dbg !212
  %15 = load i32, ptr %x86_power4, align 4, !dbg !212
  %conv5 = sext i32 %15 to i64, !dbg !210
  %and6 = and i64 %conv5, 4096, !dbg !213
  %tobool7 = icmp ne i64 %and6, 0, !dbg !213
  br i1 %tobool7, label %if.then8, label %if.end10, !dbg !214

if.then8:                                         ; preds = %if.end
  %16 = load ptr, ptr %c.addr, align 8, !dbg !215
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 10, !dbg !215
  %arraydecay9 = getelementptr inbounds [24 x i32], ptr %17, i64 0, i64 0, !dbg !215
  call void @set_bit(i64 noundef 115, ptr noundef %arraydecay9) #10, !dbg !215
  br label %if.end10, !dbg !215

if.end10:                                         ; preds = %if.then8, %if.end
  %18 = load ptr, ptr %c.addr, align 8, !dbg !216
  %x86_power11 = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 18, !dbg !218
  %19 = load i32, ptr %x86_power11, align 4, !dbg !218
  %conv12 = sext i32 %19 to i64, !dbg !216
  %and13 = and i64 %conv12, 16384, !dbg !219
  %tobool14 = icmp ne i64 %and13, 0, !dbg !219
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !220

if.then15:                                        ; preds = %if.end10
  %20 = load ptr, ptr %c.addr, align 8, !dbg !221
  %21 = getelementptr inbounds %struct.cpuinfo_x86, ptr %20, i32 0, i32 10, !dbg !221
  %arraydecay16 = getelementptr inbounds [24 x i32], ptr %21, i64 0, i64 0, !dbg !221
  call void @set_bit(i64 noundef 125, ptr noundef %arraydecay16) #10, !dbg !221
  br label %if.end17, !dbg !221

if.end17:                                         ; preds = %if.then15, %if.end10
  %22 = load ptr, ptr %c.addr, align 8, !dbg !222
  %23 = getelementptr inbounds %struct.cpuinfo_x86, ptr %22, i32 0, i32 10, !dbg !222
  %arraydecay18 = getelementptr inbounds [24 x i32], ptr %23, i64 0, i64 0, !dbg !222
  call void @set_bit(i64 noundef 110, ptr noundef %arraydecay18) #10, !dbg !222
  br i1 false, label %cond.true, label %cond.false, !dbg !223

cond.true:                                        ; preds = %if.end17
  br i1 true, label %if.then21, label %if.end23, !dbg !224

cond.false:                                       ; preds = %if.end17
  %call19 = call zeroext i1 @arch_test_bit(i64 noundef 9, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !224
  br i1 %call19, label %if.then21, label %if.end23, !dbg !223

if.then21:                                        ; preds = %cond.false, %cond.true
  %24 = load ptr, ptr %c.addr, align 8, !dbg !226
  %25 = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 10, !dbg !226
  %arraydecay22 = getelementptr inbounds [24 x i32], ptr %25, i64 0, i64 0, !dbg !226
  call void @set_bit(i64 noundef 122, ptr noundef %arraydecay22) #10, !dbg !226
  br label %if.end23, !dbg !226

if.end23:                                         ; preds = %if.then21, %cond.false, %cond.true
  %26 = load ptr, ptr %c.addr, align 8, !dbg !227
  %27 = getelementptr inbounds %struct.cpuinfo_x86, ptr %26, i32 0, i32 10, !dbg !227
  %arraydecay24 = getelementptr inbounds [24 x i32], ptr %27, i64 0, i64 0, !dbg !227
  call void @set_bit(i64 noundef 271, ptr noundef %arraydecay24) #10, !dbg !227
  %28 = load ptr, ptr %c.addr, align 8, !dbg !228
  call void @hygon_get_topology_early(ptr noundef %28) #10, !dbg !229
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #9, !dbg !230
  ret void, !dbg !230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @bsp_init_hygon(ptr noundef %c) #0 align 16 !dbg !231 {
entry:
  %c.addr = alloca ptr, align 8
  %val = alloca i64, align 8
  %tmp = alloca i32, align 4
  %ecx = alloca i32, align 4
  %value = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !233, metadata !DIExpression()), !dbg !243
  br i1 false, label %cond.true, label %cond.false, !dbg !244

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end4, !dbg !245

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !245
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !245
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !245
  %call = call zeroext i1 @arch_test_bit(i64 noundef 104, ptr noundef %arraydecay) #10, !dbg !245
  br i1 %call, label %if.then, label %if.end4, !dbg !244

if.then:                                          ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !246
  call void @llvm.dbg.declare(metadata ptr %val, metadata !234, metadata !DIExpression()), !dbg !247
  %call1 = call i64 @native_read_msr(i32 noundef -1073676267) #10, !dbg !248
  store i64 %call1, ptr %val, align 8, !dbg !248
  %2 = load i64, ptr %val, align 8, !dbg !249
  %and = and i64 %2, 16777216, !dbg !251
  %tobool = icmp ne i64 %and, 0, !dbg !251
  br i1 %tobool, label %if.end, label %if.then2, !dbg !252

if.then2:                                         ; preds = %if.then
  br label %do.body, !dbg !253

do.body:                                          ; preds = %if.then2
  br label %do.cond, !dbg !255

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !255

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2) #11, !dbg !253
  store i32 %call3, ptr %tmp, align 4, !dbg !255
  %3 = load i32, ptr %tmp, align 4, !dbg !253
  br label %if.end, !dbg !257

if.end:                                           ; preds = %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !258
  br label %if.end4, !dbg !259

if.end4:                                          ; preds = %if.end, %cond.false, %cond.true
  br i1 false, label %cond.true5, label %cond.false6, !dbg !260

cond.true5:                                       ; preds = %if.end4
  br i1 true, label %if.then9, label %if.end10, !dbg !261

cond.false6:                                      ; preds = %if.end4
  %4 = load ptr, ptr %c.addr, align 8, !dbg !261
  %5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 10, !dbg !261
  %arraydecay7 = getelementptr inbounds [24 x i32], ptr %5, i64 0, i64 0, !dbg !261
  %call8 = call zeroext i1 @arch_test_bit(i64 noundef 221, ptr noundef %arraydecay7) #10, !dbg !261
  br i1 %call8, label %if.then9, label %if.end10, !dbg !260

if.then9:                                         ; preds = %cond.false6, %cond.true5
  call void @use_mwaitx_delay() #10, !dbg !263
  br label %if.end10, !dbg !263

if.end10:                                         ; preds = %if.then9, %cond.false6, %cond.true5
  br i1 false, label %cond.true11, label %cond.false12, !dbg !264

cond.true11:                                      ; preds = %if.end10
  br i1 true, label %if.then14, label %if.else, !dbg !265

cond.false12:                                     ; preds = %if.end10
  %call13 = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !265
  br i1 %call13, label %if.then14, label %if.else, !dbg !264

if.then14:                                        ; preds = %cond.false12, %cond.true11
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !237, metadata !DIExpression()), !dbg !267
  %call15 = call i32 @cpuid_ecx(i32 noundef -2147483618) #10, !dbg !268
  store i32 %call15, ptr %ecx, align 4, !dbg !269
  %6 = load i32, ptr %ecx, align 4, !dbg !270
  %shr = lshr i32 %6, 8, !dbg !271
  %and16 = and i32 %shr, 7, !dbg !272
  %add = add i32 %and16, 1, !dbg !273
  store i32 %add, ptr @nodes_per_socket, align 4, !dbg !274
  store i32 %add, ptr @__max_die_per_package, align 4, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !276
  br label %if.end26, !dbg !277

if.else:                                          ; preds = %cond.false12, %cond.true11
  br i1 false, label %cond.true17, label %cond.false18, !dbg !278

cond.true17:                                      ; preds = %if.else
  br i1 true, label %if.then20, label %if.end25, !dbg !279

cond.false18:                                     ; preds = %if.else
  %call19 = call zeroext i1 @arch_test_bit(i64 noundef 211, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !279
  br i1 %call19, label %if.then20, label %if.end25, !dbg !278

if.then20:                                        ; preds = %cond.false18, %cond.true17
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %value, metadata !240, metadata !DIExpression()), !dbg !281
  %call21 = call i64 @native_read_msr(i32 noundef -1073672180) #10, !dbg !282
  store i64 %call21, ptr %value, align 8, !dbg !282
  %7 = load i64, ptr %value, align 8, !dbg !283
  %shr22 = lshr i64 %7, 3, !dbg !284
  %and23 = and i64 %shr22, 7, !dbg !285
  %add24 = add i64 %and23, 1, !dbg !286
  %conv = trunc i64 %add24 to i32, !dbg !287
  store i32 %conv, ptr @nodes_per_socket, align 4, !dbg !288
  store i32 %conv, ptr @__max_die_per_package, align 4, !dbg !289
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !290
  br label %if.end25, !dbg !291

if.end25:                                         ; preds = %if.then20, %cond.false18, %cond.true17
  br label %if.end26

if.end26:                                         ; preds = %if.end25, %if.then14
  br i1 false, label %cond.true27, label %cond.false28, !dbg !292

cond.true27:                                      ; preds = %if.end26
  br i1 true, label %if.end46, label %land.lhs.true, !dbg !294

cond.false28:                                     ; preds = %if.end26
  %call29 = call zeroext i1 @arch_test_bit(i64 noundef 440, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !294
  br i1 %call29, label %if.end46, label %land.lhs.true, !dbg !292

land.lhs.true:                                    ; preds = %cond.false28, %cond.true27
  br i1 false, label %cond.true31, label %cond.false32, !dbg !295

cond.true31:                                      ; preds = %land.lhs.true
  br i1 true, label %if.end46, label %if.then35, !dbg !296

cond.false32:                                     ; preds = %land.lhs.true
  %call33 = call zeroext i1 @arch_test_bit(i64 noundef 441, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !296
  br i1 %call33, label %if.end46, label %if.then35, !dbg !295

if.then35:                                        ; preds = %cond.false32, %cond.true31
  %call36 = call i32 @rdmsrl_safe(i32 noundef -1073672160, ptr noundef @x86_amd_ls_cfg_base) #10, !dbg !297
  %tobool37 = icmp ne i32 %call36, 0, !dbg !297
  br i1 %tobool37, label %if.end45, label %if.then38, !dbg !300

if.then38:                                        ; preds = %if.then35
  br label %do.body39, !dbg !301

do.body39:                                        ; preds = %if.then38
  call void @set_bit(i64 noundef 248, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !303
  call void @set_bit(i64 noundef 248, ptr noundef @cpu_caps_set) #10, !dbg !303
  br label %do.end41, !dbg !303

do.end41:                                         ; preds = %do.body39
  br label %do.body42, !dbg !305

do.body42:                                        ; preds = %do.end41
  call void @set_bit(i64 noundef 241, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !306
  call void @set_bit(i64 noundef 241, ptr noundef @cpu_caps_set) #10, !dbg !306
  br label %do.end44, !dbg !306

do.end44:                                         ; preds = %do.body42
  store i64 1024, ptr @x86_amd_ls_cfg_ssbd_mask, align 8, !dbg !308
  br label %if.end45, !dbg !309

if.end45:                                         ; preds = %do.end44, %if.then35
  br label %if.end46, !dbg !310

if.end46:                                         ; preds = %if.end45, %cond.false32, %cond.true31, %cond.false28, %cond.true27
  ret void, !dbg !311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_hygon(ptr noundef %c) #0 align 16 !dbg !312 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !314, metadata !DIExpression()), !dbg !315
  %0 = load ptr, ptr %c.addr, align 8, !dbg !316
  call void @early_init_hygon(ptr noundef %0) #10, !dbg !317
  %1 = load ptr, ptr %c.addr, align 8, !dbg !318
  call void @clear_cpu_cap(ptr noundef %1, i32 noundef 31) #10, !dbg !319
  %2 = load ptr, ptr %c.addr, align 8, !dbg !320
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !320
  %arraydecay = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !320
  call void @set_bit(i64 noundef 112, ptr noundef %arraydecay) #10, !dbg !320
  %call = call i32 @read_apic_id() #10, !dbg !321
  %conv = trunc i32 %call to i16, !dbg !321
  %4 = load ptr, ptr %c.addr, align 8, !dbg !322
  %apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 22, !dbg !323
  store i16 %conv, ptr %apicid, align 2, !dbg !324
  %5 = load ptr, ptr %c.addr, align 8, !dbg !325
  %6 = getelementptr inbounds %struct.cpuinfo_x86, ptr %5, i32 0, i32 10, !dbg !325
  %arraydecay1 = getelementptr inbounds [24 x i32], ptr %6, i64 0, i64 0, !dbg !325
  call void @set_bit(i64 noundef 252, ptr noundef %arraydecay1) #10, !dbg !325
  %7 = load ptr, ptr %c.addr, align 8, !dbg !326
  %8 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 10, !dbg !326
  %arraydecay2 = getelementptr inbounds [24 x i32], ptr %8, i64 0, i64 0, !dbg !326
  call void @set_bit(i64 noundef 226, ptr noundef %arraydecay2) #10, !dbg !326
  %9 = load ptr, ptr %c.addr, align 8, !dbg !327
  call void @cpu_detect_cache_sizes(ptr noundef %9) #10, !dbg !328
  %10 = load ptr, ptr %c.addr, align 8, !dbg !329
  call void @hygon_detect_cmp(ptr noundef %10) #10, !dbg !330
  %11 = load ptr, ptr %c.addr, align 8, !dbg !331
  call void @hygon_get_topology(ptr noundef %11) #10, !dbg !332
  %12 = load ptr, ptr %c.addr, align 8, !dbg !333
  call void @srat_detect_node(ptr noundef %12) #10, !dbg !334
  %13 = load ptr, ptr %c.addr, align 8, !dbg !335
  call void @init_hygon_cacheinfo(ptr noundef %13) #10, !dbg !336
  %call3 = call i32 @msr_set_bit(i32 noundef -1073672151, i8 noundef zeroext 1) #10, !dbg !337
  %14 = load ptr, ptr %c.addr, align 8, !dbg !340
  %15 = getelementptr inbounds %struct.cpuinfo_x86, ptr %14, i32 0, i32 10, !dbg !340
  %arraydecay4 = getelementptr inbounds [24 x i32], ptr %15, i64 0, i64 0, !dbg !340
  call void @set_bit(i64 noundef 642, ptr noundef %arraydecay4) #10, !dbg !340
  %16 = load ptr, ptr %c.addr, align 8, !dbg !341
  %17 = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 10, !dbg !341
  %arraydecay5 = getelementptr inbounds [24 x i32], ptr %17, i64 0, i64 0, !dbg !341
  call void @set_bit(i64 noundef 450, ptr noundef %arraydecay5) #10, !dbg !341
  %18 = load ptr, ptr %c.addr, align 8, !dbg !342
  %19 = getelementptr inbounds %struct.cpuinfo_x86, ptr %18, i32 0, i32 10, !dbg !342
  %arraydecay6 = getelementptr inbounds [24 x i32], ptr %19, i64 0, i64 0, !dbg !342
  call void @set_bit(i64 noundef 712, ptr noundef %arraydecay6) #10, !dbg !342
  %20 = load ptr, ptr %c.addr, align 8, !dbg !344
  call void @check_null_seg_clears_base(ptr noundef %20) #10, !dbg !345
  %21 = load ptr, ptr %c.addr, align 8, !dbg !346
  call void @clear_cpu_cap(ptr noundef %21, i32 noundef 379) #10, !dbg !347
  ret void, !dbg !348
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_detect_tlb_hygon(ptr noundef %c) #0 align 16 !dbg !349 {
entry:
  %c.addr = alloca ptr, align 8
  %ebx = alloca i32, align 4
  %eax = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %mask = alloca i16, align 2
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !351, metadata !DIExpression()), !dbg !357
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !352, metadata !DIExpression()), !dbg !359
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !353, metadata !DIExpression()), !dbg !360
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !354, metadata !DIExpression()), !dbg !361
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !358
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !355, metadata !DIExpression()), !dbg !362
  call void @llvm.lifetime.start.p0(i64 2, ptr %mask) #9, !dbg !363
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !356, metadata !DIExpression()), !dbg !364
  store i16 4095, ptr %mask, align 2, !dbg !364
  %0 = load ptr, ptr %c.addr, align 8, !dbg !365
  %extended_cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 8, !dbg !367
  %1 = load i32, ptr %extended_cpuid_level, align 4, !dbg !367
  %cmp = icmp ult i32 %1, -2147483642, !dbg !368
  br i1 %cmp, label %if.then, label %if.end, !dbg !369

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !370

if.end:                                           ; preds = %entry
  call void @cpuid(i32 noundef -2147483642, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !371
  %2 = load i32, ptr %ebx, align 4, !dbg !372
  %shr = lshr i32 %2, 16, !dbg !373
  %3 = load i16, ptr %mask, align 2, !dbg !374
  %conv = zext i16 %3 to i32, !dbg !374
  %and = and i32 %shr, %conv, !dbg !375
  %conv1 = trunc i32 %and to i16, !dbg !376
  store i16 %conv1, ptr @tlb_lld_4k, align 2, !dbg !377
  %4 = load i32, ptr %ebx, align 4, !dbg !378
  %5 = load i16, ptr %mask, align 2, !dbg !379
  %conv2 = zext i16 %5 to i32, !dbg !379
  %and3 = and i32 %4, %conv2, !dbg !380
  %conv4 = trunc i32 %and3 to i16, !dbg !378
  store i16 %conv4, ptr @tlb_lli_4k, align 2, !dbg !381
  %6 = load i32, ptr %eax, align 4, !dbg !382
  %shr5 = lshr i32 %6, 16, !dbg !384
  %7 = load i16, ptr %mask, align 2, !dbg !385
  %conv6 = zext i16 %7 to i32, !dbg !385
  %and7 = and i32 %shr5, %conv6, !dbg !386
  %tobool = icmp ne i32 %and7, 0, !dbg !386
  br i1 %tobool, label %if.else, label %if.then8, !dbg !387

if.then8:                                         ; preds = %if.end
  %call = call i32 @cpuid_eax(i32 noundef -2147483643) #10, !dbg !388
  %shr9 = lshr i32 %call, 16, !dbg !389
  %and10 = and i32 %shr9, 255, !dbg !390
  %conv11 = trunc i32 %and10 to i16, !dbg !391
  store i16 %conv11, ptr @tlb_lld_2m, align 2, !dbg !392
  br label %if.end16, !dbg !393

if.else:                                          ; preds = %if.end
  %8 = load i32, ptr %eax, align 4, !dbg !394
  %shr12 = lshr i32 %8, 16, !dbg !395
  %9 = load i16, ptr %mask, align 2, !dbg !396
  %conv13 = zext i16 %9 to i32, !dbg !396
  %and14 = and i32 %shr12, %conv13, !dbg !397
  %conv15 = trunc i32 %and14 to i16, !dbg !398
  store i16 %conv15, ptr @tlb_lld_2m, align 2, !dbg !399
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8
  %10 = load i16, ptr @tlb_lld_2m, align 2, !dbg !400
  %conv17 = zext i16 %10 to i32, !dbg !400
  %shr18 = ashr i32 %conv17, 1, !dbg !401
  %conv19 = trunc i32 %shr18 to i16, !dbg !400
  store i16 %conv19, ptr @tlb_lld_4m, align 2, !dbg !402
  %11 = load i32, ptr %eax, align 4, !dbg !403
  %12 = load i16, ptr %mask, align 2, !dbg !405
  %conv20 = zext i16 %12 to i32, !dbg !405
  %and21 = and i32 %11, %conv20, !dbg !406
  %tobool22 = icmp ne i32 %and21, 0, !dbg !406
  br i1 %tobool22, label %if.else26, label %if.then23, !dbg !407

if.then23:                                        ; preds = %if.end16
  call void @cpuid(i32 noundef -2147483643, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !408
  %13 = load i32, ptr %eax, align 4, !dbg !410
  %and24 = and i32 %13, 255, !dbg !411
  %conv25 = trunc i32 %and24 to i16, !dbg !410
  store i16 %conv25, ptr @tlb_lli_2m, align 2, !dbg !412
  br label %if.end30, !dbg !413

if.else26:                                        ; preds = %if.end16
  %14 = load i32, ptr %eax, align 4, !dbg !414
  %15 = load i16, ptr %mask, align 2, !dbg !415
  %conv27 = zext i16 %15 to i32, !dbg !415
  %and28 = and i32 %14, %conv27, !dbg !416
  %conv29 = trunc i32 %and28 to i16, !dbg !414
  store i16 %conv29, ptr @tlb_lli_2m, align 2, !dbg !417
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then23
  %16 = load i16, ptr @tlb_lli_2m, align 2, !dbg !418
  %conv31 = zext i16 %16 to i32, !dbg !418
  %shr32 = ashr i32 %conv31, 1, !dbg !419
  %conv33 = trunc i32 %shr32 to i16, !dbg !418
  store i16 %conv33, ptr @tlb_lli_4m, align 2, !dbg !420
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !421
  br label %cleanup, !dbg !421

cleanup:                                          ; preds = %if.end30, %if.then
  call void @llvm.lifetime.end.p0(i64 2, ptr %mask) #9, !dbg !421
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !421
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !421
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !421
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !421
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !421

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @early_init_hygon_mc(ptr noundef %c) #0 align 16 !dbg !422 {
entry:
  %c.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %ecx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !424, metadata !DIExpression()), !dbg !427
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !425, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !426, metadata !DIExpression()), !dbg !430
  %0 = load ptr, ptr %c.addr, align 8, !dbg !431
  %extended_cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 8, !dbg !433
  %1 = load i32, ptr %extended_cpuid_level, align 4, !dbg !433
  %cmp = icmp ult i32 %1, -2147483640, !dbg !434
  br i1 %cmp, label %if.then, label %if.end, !dbg !435

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

if.end:                                           ; preds = %entry
  %call = call i32 @cpuid_ecx(i32 noundef -2147483640) #10, !dbg !437
  store i32 %call, ptr %ecx, align 4, !dbg !438
  %2 = load i32, ptr %ecx, align 4, !dbg !439
  %and = and i32 %2, 255, !dbg !440
  %add = add i32 %and, 1, !dbg !441
  %conv = trunc i32 %add to i16, !dbg !442
  %3 = load ptr, ptr %c.addr, align 8, !dbg !443
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %3, i32 0, i32 21, !dbg !444
  store i16 %conv, ptr %x86_max_cores, align 8, !dbg !445
  %4 = load i32, ptr %ecx, align 4, !dbg !446
  %shr = lshr i32 %4, 12, !dbg !447
  %and1 = and i32 %shr, 15, !dbg !448
  store i32 %and1, ptr %bits, align 4, !dbg !449
  %5 = load i32, ptr %bits, align 4, !dbg !450
  %cmp2 = icmp eq i32 %5, 0, !dbg !452
  br i1 %cmp2, label %if.then4, label %if.end9, !dbg !453

if.then4:                                         ; preds = %if.end
  br label %while.cond, !dbg !454

while.cond:                                       ; preds = %while.body, %if.then4
  %6 = load i32, ptr %bits, align 4, !dbg !456
  %shl = shl i32 1, %6, !dbg !457
  %7 = load ptr, ptr %c.addr, align 8, !dbg !458
  %x86_max_cores5 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 21, !dbg !459
  %8 = load i16, ptr %x86_max_cores5, align 8, !dbg !459
  %conv6 = zext i16 %8 to i32, !dbg !458
  %cmp7 = icmp slt i32 %shl, %conv6, !dbg !460
  br i1 %cmp7, label %while.body, label %while.end, !dbg !454

while.body:                                       ; preds = %while.cond
  %9 = load i32, ptr %bits, align 4, !dbg !461
  %inc = add i32 %9, 1, !dbg !461
  store i32 %inc, ptr %bits, align 4, !dbg !461
  br label %while.cond, !dbg !454, !llvm.loop !462

while.end:                                        ; preds = %while.cond
  br label %if.end9, !dbg !465

if.end9:                                          ; preds = %while.end, %if.end
  %10 = load i32, ptr %bits, align 4, !dbg !466
  %conv10 = trunc i32 %10 to i8, !dbg !466
  %11 = load ptr, ptr %c.addr, align 8, !dbg !467
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %11, i32 0, i32 6, !dbg !468
  store i8 %conv10, ptr %x86_coreid_bits, align 2, !dbg !469
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !470
  br label %cleanup, !dbg !470

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !470
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !470
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !470

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !471 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !478, metadata !DIExpression()), !dbg !480
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !479, metadata !DIExpression()), !dbg !481
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !482
  %1 = load i64, ptr %nr.addr, align 8, !dbg !483
  %div = sdiv i64 %1, 64, !dbg !483
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !484
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !485
  %2 = load i64, ptr %nr.addr, align 8, !dbg !486
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !487
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr_safe(i32 noundef %msr, ptr noundef %err) #4 align 16 !dbg !490 {
entry:
  %msr.addr = alloca i32, align 4
  %err.addr = alloca ptr, align 8
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !495, metadata !DIExpression()), !dbg !499
  store ptr %err, ptr %err.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %err.addr, metadata !496, metadata !DIExpression()), !dbg !500
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %low, metadata !497, metadata !DIExpression()), !dbg !501
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !501
  call void @llvm.dbg.declare(metadata ptr %high, metadata !498, metadata !DIExpression()), !dbg !501
  %0 = load ptr, ptr %err.addr, align 8, !dbg !502
  %1 = load i32, ptr %msr.addr, align 4, !dbg !503
  %2 = call { i32, i64, i64 } asm sideeffect "1: rdmsr ; xor $0,$0\0A2:\0A\09 .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A.macro extable_type_reg type:req reg:req\0A.set .Lfound, 0\0A.set .Lregnr, 0\0A.irp rs,rax,rcx,rdx,rbx,rsp,rbp,rsi,rdi,r8,r9,r10,r11,r12,r13,r14,r15\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.set .Lregnr, 0\0A.irp rs,eax,ecx,edx,ebx,esp,ebp,esi,edi,r8d,r9d,r10d,r11d,r12d,r13d,r14d,r15d\0A.ifc \\reg, %\\rs\0A.set .Lfound, .Lfound+1\0A.long \\type + (.Lregnr << 8)\0A.endif\0A.set .Lregnr, .Lregnr+1\0A.endr\0A.if (.Lfound != 1)\0A.error \22extable_type_reg: bad register argument\22\0A.endif\0A.endm\0Aextable_type_reg reg=$0, type=11 \0A.purgem extable_type_reg\0A .popsection\0A", "=r,={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %1) #9, !dbg !504, !srcloc !505
  %asmresult = extractvalue { i32, i64, i64 } %2, 0, !dbg !504
  %asmresult1 = extractvalue { i32, i64, i64 } %2, 1, !dbg !504
  %asmresult2 = extractvalue { i32, i64, i64 } %2, 2, !dbg !504
  store i32 %asmresult, ptr %0, align 4, !dbg !504
  store i64 %asmresult1, ptr %low, align 8, !dbg !504
  store i64 %asmresult2, ptr %high, align 8, !dbg !504
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !506
  br i1 %call, label %if.then, label %if.end, !dbg !508

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %msr.addr, align 4, !dbg !509
  %4 = load i64, ptr %low, align 8, !dbg !510
  %5 = load i64, ptr %high, align 8, !dbg !510
  %shl = shl i64 %5, 32, !dbg !510
  %or = or i64 %4, %shl, !dbg !510
  %6 = load ptr, ptr %err.addr, align 8, !dbg !511
  %7 = load i32, ptr %6, align 4, !dbg !512
  call void @do_trace_read_msr(i32 noundef %3, i64 noundef %or, i32 noundef %7) #10, !dbg !513
  br label %if.end, !dbg !513

if.end:                                           ; preds = %if.then, %entry
  %8 = load i64, ptr %low, align 8, !dbg !514
  %9 = load i64, ptr %high, align 8, !dbg !514
  %shl3 = shl i64 %9, 32, !dbg !514
  %or4 = or i64 %8, %shl3, !dbg !514
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !515
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !515
  ret i64 %or4, !dbg !516
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !517 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !524, metadata !DIExpression()), !dbg !526
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !525, metadata !DIExpression()), !dbg !527
  %0 = load i64, ptr %nr.addr, align 8, !dbg !528
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !529
  br i1 %1, label %cond.true, label %cond.false, !dbg !529

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !530
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !531
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !532
  %conv = zext i1 %call to i32, !dbg !532
  br label %cond.end, !dbg !529

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !533
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !534
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #10, !dbg !535
  %conv2 = zext i1 %call1 to i32, !dbg !535
  br label %cond.end, !dbg !529

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !529
  %tobool = icmp ne i32 %cond, 0, !dbg !529
  ret i1 %tobool, !dbg !536
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hygon_get_topology_early(ptr noundef %c) #0 align 16 !dbg !537 {
entry:
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !539, metadata !DIExpression()), !dbg !540
  br i1 false, label %cond.true, label %cond.false, !dbg !541

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !542

cond.false:                                       ; preds = %entry
  %0 = load ptr, ptr %c.addr, align 8, !dbg !542
  %1 = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 10, !dbg !542
  %arraydecay = getelementptr inbounds [24 x i32], ptr %1, i64 0, i64 0, !dbg !542
  %call = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef %arraydecay) #10, !dbg !542
  br i1 %call, label %if.then, label %if.end, !dbg !541

if.then:                                          ; preds = %cond.false, %cond.true
  %call1 = call i32 @cpuid_ebx(i32 noundef -2147483618) #10, !dbg !544
  %shr = lshr i32 %call1, 8, !dbg !545
  %and = and i32 %shr, 255, !dbg !546
  %add = add i32 %and, 1, !dbg !547
  store i32 %add, ptr @smp_num_siblings, align 4, !dbg !548
  br label %if.end, !dbg !549

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  ret void, !dbg !550
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ecx(i32 noundef %op) #4 align 16 !dbg !551 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !556, metadata !DIExpression()), !dbg !561
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !557, metadata !DIExpression()), !dbg !563
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !558, metadata !DIExpression()), !dbg !564
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !559, metadata !DIExpression()), !dbg !565
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !562
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !560, metadata !DIExpression()), !dbg !566
  %0 = load i32, ptr %op.addr, align 4, !dbg !567
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !568
  %1 = load i32, ptr %ecx, align 4, !dbg !569
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !570
  ret i32 %1, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid(i32 noundef %op, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !572 {
entry:
  %op.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !577, metadata !DIExpression()), !dbg !582
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !578, metadata !DIExpression()), !dbg !583
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !579, metadata !DIExpression()), !dbg !584
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !580, metadata !DIExpression()), !dbg !585
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !581, metadata !DIExpression()), !dbg !586
  %0 = load i32, ptr %op.addr, align 4, !dbg !587
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !588
  store i32 %0, ptr %1, align 4, !dbg !589
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !590
  store i32 0, ptr %2, align 4, !dbg !591
  %3 = load ptr, ptr %eax.addr, align 8, !dbg !592
  %4 = load ptr, ptr %ebx.addr, align 8, !dbg !593
  %5 = load ptr, ptr %ecx.addr, align 8, !dbg !594
  %6 = load ptr, ptr %edx.addr, align 8, !dbg !595
  call void @native_cpuid(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #10, !dbg !596
  ret void, !dbg !597
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !598 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !602, metadata !DIExpression()), !dbg !606
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !603, metadata !DIExpression()), !dbg !607
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !604, metadata !DIExpression()), !dbg !608
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !605, metadata !DIExpression()), !dbg !609
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !610
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !611
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !612
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !613
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !614
  %5 = load i32, ptr %4, align 4, !dbg !615
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !616
  %7 = load i32, ptr %6, align 4, !dbg !617
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #9, !dbg !618, !srcloc !619
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !618
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !618
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !618
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !618
  store i32 %asmresult, ptr %0, align 4, !dbg !618
  store i32 %asmresult1, ptr %1, align 4, !dbg !618
  store i32 %asmresult2, ptr %2, align 4, !dbg !618
  store i32 %asmresult3, ptr %3, align 4, !dbg !618
  ret void, !dbg !620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !621 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !633, metadata !DIExpression()), !dbg !635
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !634, metadata !DIExpression()), !dbg !636
  %0 = load ptr, ptr %v.addr, align 8, !dbg !637
  %1 = load i64, ptr %size.addr, align 8, !dbg !638
  %conv = trunc i64 %1 to i32, !dbg !638
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #10, !dbg !639
  %2 = load ptr, ptr %v.addr, align 8, !dbg !640
  %3 = load i64, ptr %size.addr, align 8, !dbg !640
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #10, !dbg !640
  ret void, !dbg !641
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !642 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !644, metadata !DIExpression()), !dbg !646
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !645, metadata !DIExpression()), !dbg !647
  %0 = load i64, ptr %nr.addr, align 8, !dbg !648
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !650
  br i1 %1, label %if.then, label %if.else, !dbg !651

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !652
  %3 = load i64, ptr %nr.addr, align 8, !dbg !652
  %shr = ashr i64 %3, 3, !dbg !652
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !652
  %4 = load i64, ptr %nr.addr, align 8, !dbg !654
  %and = and i64 %4, 7, !dbg !654
  %sh_prom = trunc i64 %and to i32, !dbg !654
  %shl = shl i32 1, %sh_prom, !dbg !654
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #9, !dbg !655, !srcloc !656
  br label %if.end, !dbg !657

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !658
  %6 = load i64, ptr %nr.addr, align 8, !dbg !660
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #9, !dbg !661, !srcloc !662
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !663
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !664 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !669, metadata !DIExpression()), !dbg !671
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !670, metadata !DIExpression()), !dbg !672
  ret i1 true, !dbg !673
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !674 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !679, metadata !DIExpression()), !dbg !682
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !680, metadata !DIExpression()), !dbg !683
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !681, metadata !DIExpression()), !dbg !684
  ret void, !dbg !685
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #3 align 16 !dbg !686 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !715, metadata !DIExpression()), !dbg !716
  %0 = load ptr, ptr %key.addr, align 8, !dbg !717
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #10, !dbg !718
  ret i1 %call, !dbg !719
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !720 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #3 align 16 !dbg !723 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !728, metadata !DIExpression()), !dbg !731
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !729, metadata !DIExpression()), !dbg !732
  %0 = load ptr, ptr %key.addr, align 8, !dbg !733
  %1 = load i8, ptr %branch.addr, align 1, !dbg !734, !range !735, !noundef !736
  %tobool = trunc i8 %1 to i1, !dbg !734
  %conv = zext i1 %tobool to i32, !dbg !734
  %or = or i32 2, %conv, !dbg !737
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #9
          to label %asm.fallthrough [label %l_yes], !dbg !738, !srcloc !739

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !740
  br label %return, !dbg !740

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !730), !dbg !741
  store i1 true, ptr %retval, align 1, !dbg !742
  br label %return, !dbg !742

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !743
  ret i1 %2, !dbg !743
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !744 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !748, metadata !DIExpression()), !dbg !750
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !749, metadata !DIExpression()), !dbg !751
  %0 = load i64, ptr %nr.addr, align 8, !dbg !752
  %and = and i64 %0, 63, !dbg !753
  %shl = shl i64 1, %and, !dbg !754
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !755
  %2 = load i64, ptr %nr.addr, align 8, !dbg !756
  %shr = ashr i64 %2, 6, !dbg !757
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !755
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !755
  %and1 = and i64 %shl, %3, !dbg !758
  %cmp = icmp ne i64 %and1, 0, !dbg !759
  ret i1 %cmp, !dbg !760
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !761 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !763, metadata !DIExpression()), !dbg !766
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !764, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #9, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !765, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !770
  %1 = load i64, ptr %nr.addr, align 8, !dbg !771
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #9, !dbg !772, !srcloc !773
  %3 = icmp ult i8 %2, 2, !dbg !772
  call void @llvm.assume(i1 %3), !dbg !772
  store i8 %2, ptr %oldbit, align 1, !dbg !772
  %4 = load i8, ptr %oldbit, align 1, !dbg !774, !range !735, !noundef !736
  %tobool = trunc i8 %4 to i1, !dbg !774
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #9, !dbg !775
  ret i1 %tobool, !dbg !776
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_ebx(i32 noundef %op) #4 align 16 !dbg !777 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !779, metadata !DIExpression()), !dbg !784
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !780, metadata !DIExpression()), !dbg !786
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !781, metadata !DIExpression()), !dbg !787
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !782, metadata !DIExpression()), !dbg !788
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !783, metadata !DIExpression()), !dbg !789
  %0 = load i32, ptr %op.addr, align 4, !dbg !790
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !791
  %1 = load i32, ptr %ebx, align 4, !dbg !792
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !793
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !793
  ret i32 %1, !dbg !794
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #4 align 16 !dbg !795 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !799, metadata !DIExpression()), !dbg !801
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !802
  call void @llvm.dbg.declare(metadata ptr %val, metadata !800, metadata !DIExpression()), !dbg !803
  %0 = load i32, ptr %msr.addr, align 4, !dbg !804
  %call = call i64 @__rdmsr(i32 noundef %0) #10, !dbg !805
  store i64 %call, ptr %val, align 8, !dbg !806
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #10, !dbg !807
  br i1 %call1, label %if.then, label %if.end, !dbg !809

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !810
  %2 = load i64, ptr %val, align 8, !dbg !811
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #10, !dbg !812
  br label %if.end, !dbg !812

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !813
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !814
  ret i64 %3, !dbg !815
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !816 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !820 dso_local void @use_mwaitx_delay() #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @rdmsrl_safe(i32 noundef %msr, ptr noundef %p) #4 align 16 !dbg !824 {
entry:
  %msr.addr = alloca i32, align 4
  %p.addr = alloca ptr, align 8
  %err = alloca i32, align 4
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !829, metadata !DIExpression()), !dbg !832
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !830, metadata !DIExpression()), !dbg !833
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !834
  call void @llvm.dbg.declare(metadata ptr %err, metadata !831, metadata !DIExpression()), !dbg !835
  %0 = load i32, ptr %msr.addr, align 4, !dbg !836
  %call = call i64 @native_read_msr_safe(i32 noundef %0, ptr noundef %err) #10, !dbg !837
  %1 = load ptr, ptr %p.addr, align 8, !dbg !838
  store i64 %call, ptr %1, align 8, !dbg !839
  %2 = load i32, ptr %err, align 4, !dbg !840
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !841
  ret i32 %2, !dbg !842
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #3 align 16 !dbg !843 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !845, metadata !DIExpression()), !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #9, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %low, metadata !846, metadata !DIExpression()), !dbg !849
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #9, !dbg !849
  call void @llvm.dbg.declare(metadata ptr %high, metadata !847, metadata !DIExpression()), !dbg !849
  %0 = load i32, ptr %msr.addr, align 4, !dbg !850
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #9, !dbg !851, !srcloc !852
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !851
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !851
  store i64 %asmresult, ptr %low, align 8, !dbg !851
  store i64 %asmresult1, ptr %high, align 8, !dbg !851
  %2 = load i64, ptr %low, align 8, !dbg !853
  %3 = load i64, ptr %high, align 8, !dbg !853
  %shl = shl i64 %3, 32, !dbg !853
  %or = or i64 %2, %shl, !dbg !853
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #9, !dbg !854
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #9, !dbg !854
  ret i64 %or, !dbg !855
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !856 dso_local void @clear_cpu_cap(ptr noundef, i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_apic_id() #4 align 16 !dbg !860 {
entry:
  %reg = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %reg) #9, !dbg !865
  call void @llvm.dbg.declare(metadata ptr %reg, metadata !864, metadata !DIExpression()), !dbg !866
  %call = call i32 @apic_read(i32 noundef 32) #10, !dbg !867
  store i32 %call, ptr %reg, align 4, !dbg !866
  %0 = load ptr, ptr @apic, align 8, !dbg !868
  %get_apic_id = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 26, !dbg !869
  %1 = load ptr, ptr %get_apic_id, align 8, !dbg !869
  %2 = load i32, ptr %reg, align 4, !dbg !870
  %conv = zext i32 %2 to i64, !dbg !870
  %call1 = call i32 %1(i64 noundef %conv) #10, !dbg !868
  call void @llvm.lifetime.end.p0(i64 4, ptr %reg) #9, !dbg !871
  ret i32 %call1, !dbg !872
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !873 dso_local void @cpu_detect_cache_sizes(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hygon_detect_cmp(ptr noundef %c) #0 align 16 !dbg !874 {
entry:
  %c.addr = alloca ptr, align 8
  %bits = alloca i32, align 4
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %__vpp_verify12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp16 = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !876, metadata !DIExpression()), !dbg !893
  call void @llvm.lifetime.start.p0(i64 4, ptr %bits) #9, !dbg !894
  call void @llvm.dbg.declare(metadata ptr %bits, metadata !877, metadata !DIExpression()), !dbg !895
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !896
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !878, metadata !DIExpression()), !dbg !897
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !898
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !879, metadata !DIExpression()), !dbg !899
  br label %do.body, !dbg !899

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !882, metadata !DIExpression()), !dbg !900
  store ptr null, ptr %__vpp_verify, align 8, !dbg !900
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !900
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !899
  br label %do.cond, !dbg !900

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !900

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !901
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !886, metadata !DIExpression()), !dbg !901
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !901, !srcloc !902
  store i32 %1, ptr %pfo_val__, align 4, !dbg !901
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !901
  %conv = zext i32 %2 to i64, !dbg !901
  %conv2 = trunc i64 %conv to i32, !dbg !901
  store i32 %conv2, ptr %tmp1, align 4, !dbg !901
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !899
  %3 = load i32, ptr %tmp1, align 4, !dbg !901
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !899
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !899
  store i32 %4, ptr %tmp3, align 4, !dbg !899
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !898
  %5 = load i32, ptr %tmp3, align 4, !dbg !899
  store i32 %5, ptr %tmp, align 4, !dbg !898
  %6 = load i32, ptr %tmp, align 4, !dbg !898
  store i32 %6, ptr %cpu, align 4, !dbg !897
  %7 = load ptr, ptr %c.addr, align 8, !dbg !903
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 6, !dbg !904
  %8 = load i8, ptr %x86_coreid_bits, align 2, !dbg !904
  %conv4 = zext i8 %8 to i32, !dbg !903
  store i32 %conv4, ptr %bits, align 4, !dbg !905
  %9 = load ptr, ptr %c.addr, align 8, !dbg !906
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %9, i32 0, i32 23, !dbg !907
  %10 = load i16, ptr %initial_apicid, align 4, !dbg !907
  %conv5 = zext i16 %10 to i32, !dbg !906
  %11 = load i32, ptr %bits, align 4, !dbg !908
  %shl = shl i32 1, %11, !dbg !909
  %sub = sub i32 %shl, 1, !dbg !910
  %and = and i32 %conv5, %sub, !dbg !911
  %conv6 = trunc i32 %and to i16, !dbg !906
  %12 = load ptr, ptr %c.addr, align 8, !dbg !912
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %12, i32 0, i32 28, !dbg !913
  store i16 %conv6, ptr %cpu_core_id, align 2, !dbg !914
  %13 = load ptr, ptr %c.addr, align 8, !dbg !915
  %initial_apicid7 = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 23, !dbg !916
  %14 = load i16, ptr %initial_apicid7, align 4, !dbg !916
  %conv8 = zext i16 %14 to i32, !dbg !915
  %15 = load i32, ptr %bits, align 4, !dbg !917
  %shr = ashr i32 %conv8, %15, !dbg !918
  %conv9 = trunc i32 %shr to i16, !dbg !915
  %16 = load ptr, ptr %c.addr, align 8, !dbg !919
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %16, i32 0, i32 26, !dbg !920
  store i16 %conv9, ptr %phys_proc_id, align 2, !dbg !921
  %17 = load ptr, ptr %c.addr, align 8, !dbg !922
  %phys_proc_id10 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 26, !dbg !923
  %18 = load i16, ptr %phys_proc_id10, align 2, !dbg !923
  %19 = load ptr, ptr %c.addr, align 8, !dbg !924
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 29, !dbg !925
  store i16 %18, ptr %cpu_die_id, align 8, !dbg !926
  br label %do.body11, !dbg !927

do.body11:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify12) #9, !dbg !928
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify12, metadata !888, metadata !DIExpression()), !dbg !928
  store ptr null, ptr %__vpp_verify12, align 8, !dbg !928
  %20 = load ptr, ptr %__vpp_verify12, align 8, !dbg !928
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify12) #9, !dbg !927
  br label %do.cond13, !dbg !928

do.cond13:                                        ; preds = %do.body11
  br label %do.end14, !dbg !928

do.end14:                                         ; preds = %do.cond13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !929
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !891, metadata !DIExpression()), !dbg !929
  store i64 ptrtoint (ptr @cpu_llc_id to i64), ptr %__ptr, align 8, !dbg !929
  %21 = load i64, ptr %__ptr, align 8, !dbg !929
  %22 = load i32, ptr %cpu, align 4, !dbg !929
  %idxprom = sext i32 %22 to i64, !dbg !929
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !929
  %23 = load i64, ptr %arrayidx, align 8, !dbg !929
  %add = add i64 %21, %23, !dbg !929
  %24 = inttoptr i64 %add to ptr, !dbg !929
  store ptr %24, ptr %tmp16, align 8, !dbg !929
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !927
  %25 = load ptr, ptr %tmp16, align 8, !dbg !929
  store ptr %25, ptr %tmp15, align 8, !dbg !928
  %26 = load ptr, ptr %tmp15, align 8, !dbg !927
  store i16 %18, ptr %26, align 2, !dbg !930
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !931
  call void @llvm.lifetime.end.p0(i64 4, ptr %bits) #9, !dbg !931
  ret void, !dbg !931
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hygon_get_topology(ptr noundef %c) #0 align 16 !dbg !932 {
entry:
  %c.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %err = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %value = alloca i64, align 8
  %__vpp_verify41 = alloca ptr, align 8
  %tmp44 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp45 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !934, metadata !DIExpression()), !dbg !958
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !935, metadata !DIExpression()), !dbg !960
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !961
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !962
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !936, metadata !DIExpression()), !dbg !962
  br label %do.body, !dbg !962

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !939, metadata !DIExpression()), !dbg !963
  store ptr null, ptr %__vpp_verify, align 8, !dbg !963
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !963
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !962
  br label %do.cond, !dbg !963

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !963

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !964
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !941, metadata !DIExpression()), !dbg !964
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !964, !srcloc !965
  store i32 %1, ptr %pfo_val__, align 4, !dbg !964
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !964
  %conv = zext i32 %2 to i64, !dbg !964
  %conv2 = trunc i64 %conv to i32, !dbg !964
  store i32 %conv2, ptr %tmp1, align 4, !dbg !964
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !962
  %3 = load i32, ptr %tmp1, align 4, !dbg !964
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !962
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !962
  store i32 %4, ptr %tmp3, align 4, !dbg !962
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !961
  %5 = load i32, ptr %tmp3, align 4, !dbg !962
  store i32 %5, ptr %tmp, align 4, !dbg !961
  %6 = load i32, ptr %tmp, align 4, !dbg !961
  store i32 %6, ptr %cpu, align 4, !dbg !960
  br i1 false, label %cond.true, label %cond.false, !dbg !966

cond.true:                                        ; preds = %do.end
  br i1 true, label %if.then, label %if.else, !dbg !967

cond.false:                                       ; preds = %do.end
  %call = call zeroext i1 @arch_test_bit(i64 noundef 214, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !967
  br i1 %call, label %if.then, label %if.else, !dbg !966

if.then:                                          ; preds = %cond.false, %cond.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #9, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %err, metadata !943, metadata !DIExpression()), !dbg !969
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !946, metadata !DIExpression()), !dbg !971
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !947, metadata !DIExpression()), !dbg !972
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !948, metadata !DIExpression()), !dbg !973
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !970
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !949, metadata !DIExpression()), !dbg !974
  call void @cpuid(i32 noundef -2147483618, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !975
  %7 = load i32, ptr %ecx, align 4, !dbg !976
  %and = and i32 %7, 255, !dbg !977
  %conv5 = trunc i32 %and to i16, !dbg !976
  %8 = load ptr, ptr %c.addr, align 8, !dbg !978
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %8, i32 0, i32 29, !dbg !979
  store i16 %conv5, ptr %cpu_die_id, align 8, !dbg !980
  %9 = load i32, ptr %ebx, align 4, !dbg !981
  %and6 = and i32 %9, 255, !dbg !982
  %conv7 = trunc i32 %and6 to i16, !dbg !981
  %10 = load ptr, ptr %c.addr, align 8, !dbg !983
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %10, i32 0, i32 28, !dbg !984
  store i16 %conv7, ptr %cpu_core_id, align 2, !dbg !985
  %11 = load i32, ptr @smp_num_siblings, align 4, !dbg !986
  %cmp = icmp sgt i32 %11, 1, !dbg !988
  br i1 %cmp, label %if.then9, label %if.end, !dbg !989

if.then9:                                         ; preds = %if.then
  %12 = load i32, ptr @smp_num_siblings, align 4, !dbg !990
  %13 = load ptr, ptr %c.addr, align 8, !dbg !991
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %13, i32 0, i32 21, !dbg !992
  %14 = load i16, ptr %x86_max_cores, align 8, !dbg !993
  %conv10 = zext i16 %14 to i32, !dbg !993
  %div = sdiv i32 %conv10, %12, !dbg !993
  %conv11 = trunc i32 %div to i16, !dbg !993
  store i16 %conv11, ptr %x86_max_cores, align 8, !dbg !993
  br label %if.end, !dbg !991

if.end:                                           ; preds = %if.then9, %if.then
  %15 = load ptr, ptr %c.addr, align 8, !dbg !994
  %call12 = call i32 @detect_extended_topology(ptr noundef %15) #10, !dbg !995
  store i32 %call12, ptr %err, align 4, !dbg !996
  %16 = load i32, ptr %err, align 4, !dbg !997
  %tobool = icmp ne i32 %16, 0, !dbg !997
  br i1 %tobool, label %if.end18, label %if.then13, !dbg !999

if.then13:                                        ; preds = %if.end
  %17 = load ptr, ptr %c.addr, align 8, !dbg !1000
  %x86_max_cores14 = getelementptr inbounds %struct.cpuinfo_x86, ptr %17, i32 0, i32 21, !dbg !1001
  %18 = load i16, ptr %x86_max_cores14, align 8, !dbg !1001
  %conv15 = zext i16 %18 to i32, !dbg !1000
  %call16 = call i32 @get_count_order(i32 noundef %conv15) #10, !dbg !1002
  %conv17 = trunc i32 %call16 to i8, !dbg !1002
  %19 = load ptr, ptr %c.addr, align 8, !dbg !1003
  %x86_coreid_bits = getelementptr inbounds %struct.cpuinfo_x86, ptr %19, i32 0, i32 6, !dbg !1004
  store i8 %conv17, ptr %x86_coreid_bits, align 2, !dbg !1005
  br label %if.end18, !dbg !1003

if.end18:                                         ; preds = %if.then13, %if.end
  br i1 false, label %cond.true19, label %cond.false20, !dbg !1006

cond.true19:                                      ; preds = %if.end18
  br i1 true, label %if.end29, label %land.lhs.true, !dbg !1008

cond.false20:                                     ; preds = %if.end18
  %call21 = call zeroext i1 @arch_test_bit(i64 noundef 159, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #10, !dbg !1008
  br i1 %call21, label %if.end29, label %land.lhs.true, !dbg !1006

land.lhs.true:                                    ; preds = %cond.false20, %cond.true19
  %20 = load ptr, ptr %c.addr, align 8, !dbg !1009
  %21 = getelementptr inbounds %struct.cpuinfo_x86, ptr %20, i32 0, i32 0, !dbg !1010
  %x86_model = getelementptr inbounds %struct.anon, ptr %21, i32 0, i32 0, !dbg !1010
  %22 = load i8, ptr %x86_model, align 8, !dbg !1010
  %conv23 = zext i8 %22 to i32, !dbg !1009
  %cmp24 = icmp sle i32 %conv23, 3, !dbg !1011
  br i1 %cmp24, label %if.then26, label %if.end29, !dbg !1012

if.then26:                                        ; preds = %land.lhs.true
  %23 = load ptr, ptr %c.addr, align 8, !dbg !1013
  %apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %23, i32 0, i32 22, !dbg !1014
  %24 = load i16, ptr %apicid, align 2, !dbg !1014
  %conv27 = zext i16 %24 to i32, !dbg !1013
  %shr = ashr i32 %conv27, 6, !dbg !1015
  %conv28 = trunc i32 %shr to i16, !dbg !1013
  %25 = load ptr, ptr %c.addr, align 8, !dbg !1016
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %25, i32 0, i32 26, !dbg !1017
  store i16 %conv28, ptr %phys_proc_id, align 2, !dbg !1018
  br label %if.end29, !dbg !1016

if.end29:                                         ; preds = %if.then26, %land.lhs.true, %cond.false20, %cond.true19
  %26 = load ptr, ptr %c.addr, align 8, !dbg !1019
  %27 = load i32, ptr %cpu, align 4, !dbg !1020
  call void @cacheinfo_hygon_init_llc_id(ptr noundef %26, i32 noundef %27) #10, !dbg !1021
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !1022
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #9, !dbg !1022
  br label %if.end48, !dbg !1023

if.else:                                          ; preds = %cond.false, %cond.true
  br i1 false, label %cond.true30, label %cond.false31, !dbg !1024

cond.true30:                                      ; preds = %if.else
  br i1 true, label %if.then34, label %if.else46, !dbg !1025

cond.false31:                                     ; preds = %if.else
  %28 = load ptr, ptr %c.addr, align 8, !dbg !1025
  %29 = getelementptr inbounds %struct.cpuinfo_x86, ptr %28, i32 0, i32 10, !dbg !1025
  %arraydecay = getelementptr inbounds [24 x i32], ptr %29, i64 0, i64 0, !dbg !1025
  %call32 = call zeroext i1 @arch_test_bit(i64 noundef 211, ptr noundef %arraydecay) #10, !dbg !1025
  br i1 %call32, label %if.then34, label %if.else46, !dbg !1024

if.then34:                                        ; preds = %cond.false31, %cond.true30
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #9, !dbg !1026
  call void @llvm.dbg.declare(metadata ptr %value, metadata !950, metadata !DIExpression()), !dbg !1027
  %call35 = call i64 @native_read_msr(i32 noundef -1073672180) #10, !dbg !1028
  store i64 %call35, ptr %value, align 8, !dbg !1028
  %30 = load i64, ptr %value, align 8, !dbg !1029
  %and36 = and i64 %30, 7, !dbg !1030
  %conv37 = trunc i64 %and36 to i16, !dbg !1029
  %31 = load ptr, ptr %c.addr, align 8, !dbg !1031
  %cpu_die_id38 = getelementptr inbounds %struct.cpuinfo_x86, ptr %31, i32 0, i32 29, !dbg !1032
  store i16 %conv37, ptr %cpu_die_id38, align 8, !dbg !1033
  %32 = load ptr, ptr %c.addr, align 8, !dbg !1034
  %cpu_die_id39 = getelementptr inbounds %struct.cpuinfo_x86, ptr %32, i32 0, i32 29, !dbg !1035
  %33 = load i16, ptr %cpu_die_id39, align 8, !dbg !1035
  br label %do.body40, !dbg !1036

do.body40:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify41) #9, !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify41, metadata !953, metadata !DIExpression()), !dbg !1037
  store ptr null, ptr %__vpp_verify41, align 8, !dbg !1037
  %34 = load ptr, ptr %__vpp_verify41, align 8, !dbg !1037
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify41) #9, !dbg !1036
  br label %do.cond42, !dbg !1037

do.cond42:                                        ; preds = %do.body40
  br label %do.end43, !dbg !1037

do.end43:                                         ; preds = %do.cond42
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !1038
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !956, metadata !DIExpression()), !dbg !1038
  store i64 ptrtoint (ptr @cpu_llc_id to i64), ptr %__ptr, align 8, !dbg !1038
  %35 = load i64, ptr %__ptr, align 8, !dbg !1038
  %36 = load i32, ptr %cpu, align 4, !dbg !1038
  %idxprom = sext i32 %36 to i64, !dbg !1038
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1038
  %37 = load i64, ptr %arrayidx, align 8, !dbg !1038
  %add = add i64 %35, %37, !dbg !1038
  %38 = inttoptr i64 %add to ptr, !dbg !1038
  store ptr %38, ptr %tmp45, align 8, !dbg !1038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !1036
  %39 = load ptr, ptr %tmp45, align 8, !dbg !1038
  store ptr %39, ptr %tmp44, align 8, !dbg !1037
  %40 = load ptr, ptr %tmp44, align 8, !dbg !1036
  store i16 %33, ptr %40, align 2, !dbg !1039
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #9, !dbg !1040
  br label %if.end47, !dbg !1041

if.else46:                                        ; preds = %cond.false31, %cond.true30
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1042

if.end47:                                         ; preds = %do.end43
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.end29
  %41 = load i32, ptr @nodes_per_socket, align 4, !dbg !1043
  %cmp49 = icmp ugt i32 %41, 1, !dbg !1045
  br i1 %cmp49, label %if.then51, label %if.end53, !dbg !1046

if.then51:                                        ; preds = %if.end48
  %42 = load ptr, ptr %c.addr, align 8, !dbg !1047
  %43 = getelementptr inbounds %struct.cpuinfo_x86, ptr %42, i32 0, i32 10, !dbg !1047
  %arraydecay52 = getelementptr inbounds [24 x i32], ptr %43, i64 0, i64 0, !dbg !1047
  call void @set_bit(i64 noundef 123, ptr noundef %arraydecay52) #10, !dbg !1047
  br label %if.end53, !dbg !1047

if.end53:                                         ; preds = %if.then51, %if.end48
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1048
  br label %cleanup, !dbg !1048

cleanup:                                          ; preds = %if.end53, %if.else46
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !1048
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1048

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @srat_detect_node(ptr noundef %c) #0 align 16 !dbg !1049 {
entry:
  %c.addr = alloca ptr, align 8
  %cpu = alloca i32, align 4
  %tmp = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %node = alloca i32, align 4
  %apicid = alloca i32, align 4
  %__vpp_verify8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp12 = alloca ptr, align 8
  %ht_nodeid = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !1051, metadata !DIExpression()), !dbg !1071
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #9, !dbg !1072
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !1052, metadata !DIExpression()), !dbg !1073
  call void @__this_cpu_preempt_check(ptr noundef @.str.3) #10, !dbg !1074
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #9, !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !1053, metadata !DIExpression()), !dbg !1075
  br label %do.body, !dbg !1075

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1076
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !1056, metadata !DIExpression()), !dbg !1076
  store ptr null, ptr %__vpp_verify, align 8, !dbg !1076
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !1076
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #9, !dbg !1075
  br label %do.cond, !dbg !1076

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1076

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #9, !dbg !1077
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !1058, metadata !DIExpression()), !dbg !1077
  %1 = call i32 asm "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #12, !dbg !1077, !srcloc !1078
  store i32 %1, ptr %pfo_val__, align 4, !dbg !1077
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !1077
  %conv = zext i32 %2 to i64, !dbg !1077
  %conv2 = trunc i64 %conv to i32, !dbg !1077
  store i32 %conv2, ptr %tmp1, align 4, !dbg !1077
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #9, !dbg !1075
  %3 = load i32, ptr %tmp1, align 4, !dbg !1077
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !1075
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !1075
  store i32 %4, ptr %tmp3, align 4, !dbg !1075
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #9, !dbg !1074
  %5 = load i32, ptr %tmp3, align 4, !dbg !1075
  store i32 %5, ptr %tmp, align 4, !dbg !1074
  %6 = load i32, ptr %tmp, align 4, !dbg !1074
  store i32 %6, ptr %cpu, align 4, !dbg !1073
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #9, !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1060, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 4, ptr %apicid) #9, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %apicid, metadata !1061, metadata !DIExpression()), !dbg !1082
  %7 = load ptr, ptr %c.addr, align 8, !dbg !1083
  %apicid4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %7, i32 0, i32 22, !dbg !1084
  %8 = load i16, ptr %apicid4, align 2, !dbg !1084
  %conv5 = zext i16 %8 to i32, !dbg !1083
  store i32 %conv5, ptr %apicid, align 4, !dbg !1082
  %9 = load i32, ptr %cpu, align 4, !dbg !1085
  %call = call i32 @numa_cpu_node(i32 noundef %9) #10, !dbg !1086
  store i32 %call, ptr %node, align 4, !dbg !1087
  %10 = load i32, ptr %node, align 4, !dbg !1088
  %cmp = icmp eq i32 %10, -1, !dbg !1089
  br i1 %cmp, label %if.then, label %if.end, !dbg !1090

if.then:                                          ; preds = %do.end
  br label %do.body7, !dbg !1091

do.body7:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify8) #9, !dbg !1092
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify8, metadata !1062, metadata !DIExpression()), !dbg !1092
  store ptr null, ptr %__vpp_verify8, align 8, !dbg !1092
  %11 = load ptr, ptr %__vpp_verify8, align 8, !dbg !1092
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify8) #9, !dbg !1091
  br label %do.cond9, !dbg !1092

do.cond9:                                         ; preds = %do.body7
  br label %do.end10, !dbg !1092

do.end10:                                         ; preds = %do.cond9
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1066, metadata !DIExpression()), !dbg !1093
  store i64 ptrtoint (ptr @cpu_llc_id to i64), ptr %__ptr, align 8, !dbg !1093
  %12 = load i64, ptr %__ptr, align 8, !dbg !1093
  %13 = load i32, ptr %cpu, align 4, !dbg !1093
  %idxprom = sext i32 %13 to i64, !dbg !1093
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !1093
  %14 = load i64, ptr %arrayidx, align 8, !dbg !1093
  %add = add i64 %12, %14, !dbg !1093
  %15 = inttoptr i64 %add to ptr, !dbg !1093
  store ptr %15, ptr %tmp12, align 8, !dbg !1093
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !1091
  %16 = load ptr, ptr %tmp12, align 8, !dbg !1093
  store ptr %16, ptr %tmp11, align 8, !dbg !1092
  %17 = load ptr, ptr %tmp11, align 8, !dbg !1091
  %18 = load i16, ptr %17, align 2, !dbg !1094
  %conv13 = zext i16 %18 to i32, !dbg !1094
  store i32 %conv13, ptr %node, align 4, !dbg !1095
  br label %if.end, !dbg !1096

if.end:                                           ; preds = %do.end10, %do.end
  %19 = load ptr, ptr getelementptr inbounds (%struct.x86_cpuinit_ops, ptr @x86_cpuinit, i32 0, i32 2), align 8, !dbg !1097
  %tobool = icmp ne ptr %19, null, !dbg !1099
  br i1 %tobool, label %if.then14, label %if.end15, !dbg !1100

if.then14:                                        ; preds = %if.end
  %20 = load ptr, ptr getelementptr inbounds (%struct.x86_cpuinit_ops, ptr @x86_cpuinit, i32 0, i32 2), align 8, !dbg !1101
  %21 = load ptr, ptr %c.addr, align 8, !dbg !1102
  %22 = load i32, ptr %node, align 4, !dbg !1103
  call void %20(ptr noundef %21, i32 noundef %22) #10, !dbg !1104
  br label %if.end15, !dbg !1104

if.end15:                                         ; preds = %if.then14, %if.end
  %23 = load i32, ptr %node, align 4, !dbg !1105
  %call16 = call i32 @node_state(i32 noundef %23, i32 noundef 1) #10, !dbg !1105
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1105
  br i1 %tobool17, label %if.end35, label %if.then18, !dbg !1106

if.then18:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr %ht_nodeid) #9, !dbg !1107
  call void @llvm.dbg.declare(metadata ptr %ht_nodeid, metadata !1068, metadata !DIExpression()), !dbg !1108
  %24 = load ptr, ptr %c.addr, align 8, !dbg !1109
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %24, i32 0, i32 23, !dbg !1110
  %25 = load i16, ptr %initial_apicid, align 4, !dbg !1110
  %conv19 = zext i16 %25 to i32, !dbg !1109
  store i32 %conv19, ptr %ht_nodeid, align 4, !dbg !1108
  %26 = load i32, ptr %ht_nodeid, align 4, !dbg !1111
  %idxprom20 = sext i32 %26 to i64, !dbg !1113
  %arrayidx21 = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom20, !dbg !1113
  %27 = load i16, ptr %arrayidx21, align 2, !dbg !1113
  %conv22 = sext i16 %27 to i32, !dbg !1113
  %cmp23 = icmp ne i32 %conv22, -1, !dbg !1114
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !1115

if.then25:                                        ; preds = %if.then18
  %28 = load i32, ptr %ht_nodeid, align 4, !dbg !1116
  %idxprom26 = sext i32 %28 to i64, !dbg !1117
  %arrayidx27 = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom26, !dbg !1117
  %29 = load i16, ptr %arrayidx27, align 2, !dbg !1117
  %conv28 = sext i16 %29 to i32, !dbg !1117
  store i32 %conv28, ptr %node, align 4, !dbg !1118
  br label %if.end29, !dbg !1119

if.end29:                                         ; preds = %if.then25, %if.then18
  %30 = load i32, ptr %node, align 4, !dbg !1120
  %call30 = call i32 @node_state(i32 noundef %30, i32 noundef 1) #10, !dbg !1120
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1120
  br i1 %tobool31, label %if.end34, label %if.then32, !dbg !1122

if.then32:                                        ; preds = %if.end29
  %31 = load i32, ptr %apicid, align 4, !dbg !1123
  %call33 = call i32 @nearby_node(i32 noundef %31) #10, !dbg !1124
  store i32 %call33, ptr %node, align 4, !dbg !1125
  br label %if.end34, !dbg !1126

if.end34:                                         ; preds = %if.then32, %if.end29
  call void @llvm.lifetime.end.p0(i64 4, ptr %ht_nodeid) #9, !dbg !1127
  br label %if.end35, !dbg !1128

if.end35:                                         ; preds = %if.end34, %if.end15
  %32 = load i32, ptr %cpu, align 4, !dbg !1129
  %33 = load i32, ptr %node, align 4, !dbg !1130
  call void @numa_set_node(i32 noundef %32, i32 noundef %33) #10, !dbg !1131
  call void @llvm.lifetime.end.p0(i64 4, ptr %apicid) #9, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #9, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #9, !dbg !1132
  ret void, !dbg !1132
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1133 dso_local void @init_hygon_cacheinfo(ptr noundef) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1134 dso_local i32 @msr_set_bit(i32 noundef, i8 noundef zeroext) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1137 dso_local void @check_null_seg_clears_base(ptr noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @apic_read(i32 noundef %reg) #3 align 16 !dbg !168 {
entry:
  %reg.addr = alloca i32, align 4
  %tmp = alloca ptr, align 8
  store i32 %reg, ptr %reg.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %reg.addr, metadata !173, metadata !DIExpression()), !dbg !1138
  store ptr @__SCT__apic_call_read, ptr %tmp, align 8, !dbg !1139
  %0 = load ptr, ptr %tmp, align 8, !dbg !1139
  %1 = load i32, ptr %reg.addr, align 4, !dbg !1141
  %call = call i32 %0(i32 noundef %1) #10, !dbg !1142
  ret i32 %call, !dbg !1143
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__this_cpu_preempt_check(ptr noundef %op) #3 align 16 !dbg !1144 {
entry:
  %op.addr = alloca ptr, align 8
  store ptr %op, ptr %op.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1149, metadata !DIExpression()), !dbg !1150
  ret void, !dbg !1151
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1152 dso_local i32 @detect_extended_topology(ptr noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_count_order(i32 noundef %count) #4 align 16 !dbg !1155 {
entry:
  %retval = alloca i32, align 4
  %count.addr = alloca i32, align 4
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !1160, metadata !DIExpression()), !dbg !1161
  %0 = load i32, ptr %count.addr, align 4, !dbg !1162
  %cmp = icmp eq i32 %0, 0, !dbg !1164
  br i1 %cmp, label %if.then, label %if.end, !dbg !1165

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !1166
  br label %return, !dbg !1166

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %count.addr, align 4, !dbg !1167
  %dec = add i32 %1, -1, !dbg !1167
  store i32 %dec, ptr %count.addr, align 4, !dbg !1167
  %call = call i32 @fls(i32 noundef %dec) #10, !dbg !1168
  store i32 %call, ptr %retval, align 4, !dbg !1169
  br label %return, !dbg !1169

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1170
  ret i32 %2, !dbg !1170
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1171 dso_local void @cacheinfo_hygon_init_llc_id(ptr noundef, i32 noundef) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fls(i32 noundef %x) #3 align 16 !dbg !1175 {
entry:
  %x.addr = alloca i32, align 4
  %r = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1177, metadata !DIExpression()), !dbg !1179
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #9, !dbg !1180
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1178, metadata !DIExpression()), !dbg !1181
  %0 = load i32, ptr %x.addr, align 4, !dbg !1182
  %1 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %0, i32 -1) #12, !dbg !1183, !srcloc !1184
  store i32 %1, ptr %r, align 4, !dbg !1183
  %2 = load i32, ptr %r, align 4, !dbg !1185
  %add = add i32 %2, 1, !dbg !1186
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #9, !dbg !1187
  ret i32 %add, !dbg !1188
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1189 dso_local i32 @numa_cpu_node(i32 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @node_state(i32 noundef %node, i32 noundef %state) #4 align 16 !dbg !1193 {
entry:
  %node.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !1197, metadata !DIExpression()), !dbg !1199
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1198, metadata !DIExpression()), !dbg !1200
  %0 = load i32, ptr %node.addr, align 4, !dbg !1201
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1201
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1201

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr %state.addr, align 4, !dbg !1201
  %idxprom = zext i32 %2 to i64, !dbg !1201
  %arrayidx = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom, !dbg !1201
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx, i32 0, i32 0, !dbg !1201
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1201
  %3 = ptrtoint ptr %arraydecay to i64, !dbg !1201
  %cmp = icmp ne i64 %3, 0, !dbg !1201
  %conv = zext i1 %cmp to i32, !dbg !1201
  %4 = call i1 @llvm.is.constant.i32(i32 %conv), !dbg !1201
  br i1 %4, label %land.lhs.true1, label %cond.false, !dbg !1201

land.lhs.true1:                                   ; preds = %land.lhs.true
  %5 = load i32, ptr %state.addr, align 4, !dbg !1201
  %idxprom2 = zext i32 %5 to i64, !dbg !1201
  %arrayidx3 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom2, !dbg !1201
  %bits4 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx3, i32 0, i32 0, !dbg !1201
  %arraydecay5 = getelementptr inbounds [1 x i64], ptr %bits4, i64 0, i64 0, !dbg !1201
  %6 = ptrtoint ptr %arraydecay5 to i64, !dbg !1201
  %cmp6 = icmp ne i64 %6, 0, !dbg !1201
  br i1 %cmp6, label %land.lhs.true8, label %cond.false, !dbg !1201

land.lhs.true8:                                   ; preds = %land.lhs.true1
  %7 = load i32, ptr %state.addr, align 4, !dbg !1201
  %idxprom9 = zext i32 %7 to i64, !dbg !1201
  %arrayidx10 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom9, !dbg !1201
  %bits11 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx10, i32 0, i32 0, !dbg !1201
  %arraydecay12 = getelementptr inbounds [1 x i64], ptr %bits11, i64 0, i64 0, !dbg !1201
  %8 = load i64, ptr %arraydecay12, align 8, !dbg !1201
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1201
  br i1 %9, label %cond.true, label %cond.false, !dbg !1201

cond.true:                                        ; preds = %land.lhs.true8
  %10 = load i32, ptr %node.addr, align 4, !dbg !1201
  %conv13 = sext i32 %10 to i64, !dbg !1201
  %11 = load i32, ptr %state.addr, align 4, !dbg !1201
  %idxprom14 = zext i32 %11 to i64, !dbg !1201
  %arrayidx15 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom14, !dbg !1201
  %bits16 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx15, i32 0, i32 0, !dbg !1201
  %arraydecay17 = getelementptr inbounds [1 x i64], ptr %bits16, i64 0, i64 0, !dbg !1201
  %call = call zeroext i1 @const_test_bit(i64 noundef %conv13, ptr noundef %arraydecay17) #10, !dbg !1201
  %conv18 = zext i1 %call to i32, !dbg !1201
  br label %cond.end, !dbg !1201

cond.false:                                       ; preds = %land.lhs.true8, %land.lhs.true1, %land.lhs.true, %entry
  %12 = load i32, ptr %node.addr, align 4, !dbg !1201
  %conv19 = sext i32 %12 to i64, !dbg !1201
  %13 = load i32, ptr %state.addr, align 4, !dbg !1201
  %idxprom20 = zext i32 %13 to i64, !dbg !1201
  %arrayidx21 = getelementptr [6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 %idxprom20, !dbg !1201
  %bits22 = getelementptr inbounds %struct.nodemask_t, ptr %arrayidx21, i32 0, i32 0, !dbg !1201
  %arraydecay23 = getelementptr inbounds [1 x i64], ptr %bits22, i64 0, i64 0, !dbg !1201
  %call24 = call zeroext i1 @_test_bit(i64 noundef %conv19, ptr noundef %arraydecay23) #10, !dbg !1201
  %conv25 = zext i1 %call24 to i32, !dbg !1201
  br label %cond.end, !dbg !1201

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv18, %cond.true ], [ %conv25, %cond.false ], !dbg !1201
  ret i32 %cond, !dbg !1202
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nearby_node(i32 noundef %apicid) #0 align 16 !dbg !1203 {
entry:
  %retval = alloca i32, align 4
  %apicid.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %node = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %apicid, ptr %apicid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %apicid.addr, metadata !1205, metadata !DIExpression()), !dbg !1208
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #9, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1206, metadata !DIExpression()), !dbg !1210
  call void @llvm.lifetime.start.p0(i64 4, ptr %node) #9, !dbg !1209
  call void @llvm.dbg.declare(metadata ptr %node, metadata !1207, metadata !DIExpression()), !dbg !1211
  %0 = load i32, ptr %apicid.addr, align 4, !dbg !1212
  %sub = sub i32 %0, 1, !dbg !1214
  store i32 %sub, ptr %i, align 4, !dbg !1215
  br label %for.cond, !dbg !1216

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !1217
  %cmp = icmp sge i32 %1, 0, !dbg !1219
  br i1 %cmp, label %for.body, label %for.end, !dbg !1220

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !dbg !1221
  %idxprom = sext i32 %2 to i64, !dbg !1223
  %arrayidx = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom, !dbg !1223
  %3 = load i16, ptr %arrayidx, align 2, !dbg !1223
  %conv = sext i16 %3 to i32, !dbg !1223
  store i32 %conv, ptr %node, align 4, !dbg !1224
  %4 = load i32, ptr %node, align 4, !dbg !1225
  %cmp1 = icmp ne i32 %4, -1, !dbg !1227
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !1228

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, ptr %node, align 4, !dbg !1229
  %call = call i32 @node_state(i32 noundef %5, i32 noundef 1) #10, !dbg !1229
  %tobool = icmp ne i32 %call, 0, !dbg !1229
  br i1 %tobool, label %if.then, label %if.end, !dbg !1230

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %node, align 4, !dbg !1231
  store i32 %6, ptr %retval, align 4, !dbg !1232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1232

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !1233

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !dbg !1234
  %dec = add i32 %7, -1, !dbg !1234
  store i32 %dec, ptr %i, align 4, !dbg !1234
  br label %for.cond, !dbg !1235, !llvm.loop !1236

for.end:                                          ; preds = %for.cond
  %8 = load i32, ptr %apicid.addr, align 4, !dbg !1238
  %add = add i32 %8, 1, !dbg !1240
  store i32 %add, ptr %i, align 4, !dbg !1241
  br label %for.cond3, !dbg !1242

for.cond3:                                        ; preds = %for.inc17, %for.end
  %9 = load i32, ptr %i, align 4, !dbg !1243
  %cmp4 = icmp slt i32 %9, 32768, !dbg !1245
  br i1 %cmp4, label %for.body6, label %for.end18, !dbg !1246

for.body6:                                        ; preds = %for.cond3
  %10 = load i32, ptr %i, align 4, !dbg !1247
  %idxprom7 = sext i32 %10 to i64, !dbg !1249
  %arrayidx8 = getelementptr [32768 x i16], ptr @__apicid_to_node, i64 0, i64 %idxprom7, !dbg !1249
  %11 = load i16, ptr %arrayidx8, align 2, !dbg !1249
  %conv9 = sext i16 %11 to i32, !dbg !1249
  store i32 %conv9, ptr %node, align 4, !dbg !1250
  %12 = load i32, ptr %node, align 4, !dbg !1251
  %cmp10 = icmp ne i32 %12, -1, !dbg !1253
  br i1 %cmp10, label %land.lhs.true12, label %if.end16, !dbg !1254

land.lhs.true12:                                  ; preds = %for.body6
  %13 = load i32, ptr %node, align 4, !dbg !1255
  %call13 = call i32 @node_state(i32 noundef %13, i32 noundef 1) #10, !dbg !1255
  %tobool14 = icmp ne i32 %call13, 0, !dbg !1255
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !1256

if.then15:                                        ; preds = %land.lhs.true12
  %14 = load i32, ptr %node, align 4, !dbg !1257
  store i32 %14, ptr %retval, align 4, !dbg !1258
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1258

if.end16:                                         ; preds = %land.lhs.true12, %for.body6
  br label %for.inc17, !dbg !1259

for.inc17:                                        ; preds = %if.end16
  %15 = load i32, ptr %i, align 4, !dbg !1260
  %inc = add i32 %15, 1, !dbg !1260
  store i32 %inc, ptr %i, align 4, !dbg !1260
  br label %for.cond3, !dbg !1261, !llvm.loop !1262

for.end18:                                        ; preds = %for.cond3
  %call19 = call i32 @__first_node(ptr noundef getelementptr inbounds ([6 x %struct.nodemask_t], ptr @node_states, i64 0, i64 1)) #10, !dbg !1264
  store i32 %call19, ptr %retval, align 4, !dbg !1265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1265

cleanup:                                          ; preds = %for.end18, %if.then15, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %node) #9, !dbg !1266
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #9, !dbg !1266
  %16 = load i32, ptr %retval, align 4, !dbg !1266
  ret i32 %16, !dbg !1266
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1267 dso_local void @numa_set_node(i32 noundef, i32 noundef) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @const_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1270 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %mask = alloca i64, align 8
  %val = alloca i64, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1273, metadata !DIExpression()), !dbg !1278
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1274, metadata !DIExpression()), !dbg !1279
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #9, !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1275, metadata !DIExpression()), !dbg !1281
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1282
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1283
  %div = udiv i64 %1, 64, !dbg !1283
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1284
  store ptr %add.ptr, ptr %p, align 8, !dbg !1281
  call void @llvm.lifetime.start.p0(i64 8, ptr %mask) #9, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %mask, metadata !1276, metadata !DIExpression()), !dbg !1286
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1287
  %rem = urem i64 %2, 64, !dbg !1287
  %shl = shl i64 1, %rem, !dbg !1287
  store i64 %shl, ptr %mask, align 8, !dbg !1286
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1277, metadata !DIExpression()), !dbg !1289
  %3 = load ptr, ptr %p, align 8, !dbg !1290
  %4 = load i64, ptr %3, align 8, !dbg !1291
  store i64 %4, ptr %val, align 8, !dbg !1289
  %5 = load i64, ptr %val, align 8, !dbg !1292
  %6 = load i64, ptr %mask, align 8, !dbg !1293
  %and = and i64 %5, %6, !dbg !1294
  %tobool = icmp ne i64 %and, 0, !dbg !1295
  %lnot = xor i1 %tobool, true, !dbg !1295
  %lnot1 = xor i1 %lnot, true, !dbg !1296
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 8, ptr %mask) #9, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #9, !dbg !1297
  ret i1 %lnot1, !dbg !1298
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !1299 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !1302, metadata !DIExpression()), !dbg !1304
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1303, metadata !DIExpression()), !dbg !1305
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !1306
  %1 = load i64, ptr %nr.addr, align 8, !dbg !1307
  %div = udiv i64 %1, 64, !dbg !1307
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !1308
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #10, !dbg !1309
  %2 = load i64, ptr %nr.addr, align 8, !dbg !1310
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !1311
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #10, !dbg !1312
  ret i1 %call, !dbg !1313
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1314 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1316, metadata !DIExpression()), !dbg !1318
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1317, metadata !DIExpression()), !dbg !1319
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1320
  %1 = load i64, ptr %size.addr, align 8, !dbg !1321
  %conv = trunc i64 %1 to i32, !dbg !1321
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #10, !dbg !1322
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1323
  %3 = load i64, ptr %size.addr, align 8, !dbg !1323
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #10, !dbg !1323
  ret void, !dbg !1324
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !1325 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1327, metadata !DIExpression()), !dbg !1329
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1328, metadata !DIExpression()), !dbg !1330
  ret i1 true, !dbg !1331
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__first_node(ptr noundef %srcp) #4 align 16 !dbg !1332 {
entry:
  %srcp.addr = alloca ptr, align 8
  %__UNIQUE_ID___x133 = alloca i32, align 4
  %__UNIQUE_ID___y134 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %srcp, ptr %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %srcp.addr, metadata !1345, metadata !DIExpression()), !dbg !1349
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x133) #9, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x133, metadata !1346, metadata !DIExpression()), !dbg !1350
  store i32 64, ptr %__UNIQUE_ID___x133, align 4, !dbg !1350
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y134) #9, !dbg !1350
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y134, metadata !1348, metadata !DIExpression()), !dbg !1350
  %0 = load ptr, ptr %srcp.addr, align 8, !dbg !1350
  %bits = getelementptr inbounds %struct.nodemask_t, ptr %0, i32 0, i32 0, !dbg !1350
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !1350
  %call = call i64 @find_first_bit(ptr noundef %arraydecay, i64 noundef 64) #10, !dbg !1350
  %conv = trunc i64 %call to i32, !dbg !1350
  store i32 %conv, ptr %__UNIQUE_ID___y134, align 4, !dbg !1350
  %1 = load i32, ptr %__UNIQUE_ID___x133, align 4, !dbg !1350
  %2 = load i32, ptr %__UNIQUE_ID___y134, align 4, !dbg !1350
  %cmp = icmp ult i32 %1, %2, !dbg !1350
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1350

cond.true:                                        ; preds = %entry
  %3 = load i32, ptr %__UNIQUE_ID___x133, align 4, !dbg !1350
  br label %cond.end, !dbg !1350

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %__UNIQUE_ID___y134, align 4, !dbg !1350
  br label %cond.end, !dbg !1350

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %3, %cond.true ], [ %4, %cond.false ], !dbg !1350
  store i32 %cond, ptr %tmp, align 4, !dbg !1350
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y134) #9, !dbg !1351
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x133) #9, !dbg !1351
  %5 = load i32, ptr %tmp, align 4, !dbg !1350
  ret i32 %5, !dbg !1352
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_first_bit(ptr noundef %addr, i64 noundef %size) #4 align 16 !dbg !1353 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %val = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1358, metadata !DIExpression()), !dbg !1363
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1359, metadata !DIExpression()), !dbg !1364
  %0 = load i64, ptr %size.addr, align 8, !dbg !1365
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1365
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !1365

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1365
  %cmp = icmp ule i64 %2, 64, !dbg !1365
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !1365

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !1365
  %cmp2 = icmp ugt i64 %3, 0, !dbg !1365
  br i1 %cmp2, label %if.then, label %if.end, !dbg !1366

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #9, !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1360, metadata !DIExpression()), !dbg !1368
  %4 = load ptr, ptr %addr.addr, align 8, !dbg !1369
  %5 = load i64, ptr %4, align 8, !dbg !1370
  %6 = load i64, ptr %size.addr, align 8, !dbg !1371
  %sub = sub i64 %6, 1, !dbg !1371
  %sub3 = sub i64 63, %sub, !dbg !1371
  %shr = lshr i64 -1, %sub3, !dbg !1371
  %and = and i64 -1, %shr, !dbg !1371
  %add = add i64 0, %and, !dbg !1371
  %and4 = and i64 %5, %add, !dbg !1372
  store i64 %and4, ptr %val, align 8, !dbg !1368
  %7 = load i64, ptr %val, align 8, !dbg !1373
  %tobool = icmp ne i64 %7, 0, !dbg !1373
  br i1 %tobool, label %cond.true, label %cond.false6, !dbg !1373

cond.true:                                        ; preds = %if.then
  %8 = load i64, ptr %val, align 8, !dbg !1374
  %9 = call i1 @llvm.is.constant.i64(i64 %8), !dbg !1374
  br i1 %9, label %cond.true5, label %cond.false, !dbg !1374

cond.true5:                                       ; preds = %cond.true
  %10 = load i64, ptr %val, align 8, !dbg !1374
  %11 = call i64 @llvm.cttz.i64(i64 %10, i1 true), !dbg !1374
  %cast = trunc i64 %11 to i32, !dbg !1374
  %conv = sext i32 %cast to i64, !dbg !1374
  br label %cond.end, !dbg !1374

cond.false:                                       ; preds = %cond.true
  %12 = load i64, ptr %val, align 8, !dbg !1374
  %call = call i64 @variable__ffs(i64 noundef %12) #10, !dbg !1374
  br label %cond.end, !dbg !1374

cond.end:                                         ; preds = %cond.false, %cond.true5
  %cond = phi i64 [ %conv, %cond.true5 ], [ %call, %cond.false ], !dbg !1374
  br label %cond.end7, !dbg !1373

cond.false6:                                      ; preds = %if.then
  %13 = load i64, ptr %size.addr, align 8, !dbg !1375
  br label %cond.end7, !dbg !1373

cond.end7:                                        ; preds = %cond.false6, %cond.end
  %cond8 = phi i64 [ %cond, %cond.end ], [ %13, %cond.false6 ], !dbg !1373
  store i64 %cond8, ptr %retval, align 8, !dbg !1376
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #9, !dbg !1377
  br label %return

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !1378
  %15 = load i64, ptr %size.addr, align 8, !dbg !1379
  %call9 = call i64 @_find_first_bit(ptr noundef %14, i64 noundef %15) #10, !dbg !1380
  store i64 %call9, ptr %retval, align 8, !dbg !1381
  br label %return, !dbg !1381

return:                                           ; preds = %if.end, %cond.end7
  %16 = load i64, ptr %retval, align 8, !dbg !1382
  ret i64 %16, !dbg !1382
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #3 align 16 !dbg !1383 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !1387, metadata !DIExpression()), !dbg !1388
  %0 = load i64, ptr %word.addr, align 8, !dbg !1389
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #12, !dbg !1390, !srcloc !1391
  store i64 %1, ptr %word.addr, align 8, !dbg !1390
  %2 = load i64, ptr %word.addr, align 8, !dbg !1392
  ret i64 %2, !dbg !1393
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1394 dso_local i64 @_find_first_bit(ptr noundef, i64 noundef) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuid_eax(i32 noundef %op) #4 align 16 !dbg !1395 {
entry:
  %op.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !1397, metadata !DIExpression()), !dbg !1402
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #9, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !1398, metadata !DIExpression()), !dbg !1404
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #9, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !1399, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #9, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !1400, metadata !DIExpression()), !dbg !1406
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #9, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !1401, metadata !DIExpression()), !dbg !1407
  %0 = load i32, ptr %op.addr, align 4, !dbg !1408
  call void @cpuid(i32 noundef %0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #10, !dbg !1409
  %1 = load i32, ptr %eax, align 4, !dbg !1410
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #9, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #9, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #9, !dbg !1411
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #9, !dbg !1411
  ret i32 %1, !dbg !1412
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noredzone }
attributes #11 = { cold noredzone }
attributes #12 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hygon_cpu_dev", scope: !2, file: !3, line: 388, type: !56, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.hygon.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/hygon\22 -D KBUILD_BASENAME=\22hygon\22 -D KBUILD_MODNAME=\22hygon\22 -D __KBUILD_MODNAME=kmod_hygon -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/hygon.ll arch/x86/kernel/cpu/hygon.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !27, globals: !51, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/hygon.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2d674ff5822f6a0ba79534a4b2ed8734")
!4 = !{!5, !11, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "node_states", file: !12, line: 398, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/nodemask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "071f71b0d838345293639441c7535d8a")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "N_POSSIBLE", value: 0)
!15 = !DIEnumerator(name: "N_ONLINE", value: 1)
!16 = !DIEnumerator(name: "N_NORMAL_MEMORY", value: 2)
!17 = !DIEnumerator(name: "N_HIGH_MEMORY", value: 2)
!18 = !DIEnumerator(name: "N_MEMORY", value: 3)
!19 = !DIEnumerator(name: "N_CPU", value: 4)
!20 = !DIEnumerator(name: "N_GENERIC_INITIATOR", value: 5)
!21 = !DIEnumerator(name: "NR_NODE_STATES", value: 6)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tlb_infos", file: !23, line: 64, baseType: !7, size: 32, elements: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!24 = !{!25, !26}
!25 = !DIEnumerator(name: "ENTRIES", value: 0)
!26 = !DIEnumerator(name: "NR_INFO", value: 1)
!27 = !{!28, !30, !34, !35, !38, !39, !42, !29, !43, !47, !49, !7}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !31, line: 21, baseType: !32)
!31 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !33, line: 27, baseType: !7)
!33 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !37)
!37 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!41 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !31, line: 19, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !33, line: 24, baseType: !46)
!46 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !48, line: 42, baseType: !29)
!48 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!51 = !{!52, !149, !154, !0, !159, !164, !166, !174}
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "__cpu_dev_hygon_cpu_dev", scope: !2, file: !3, line: 398, type: !54, isLocal: true, isDefinition: true)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpu_dev", file: !58, line: 6, size: 576, elements: !59)
!58 = !DIFile(filename: "arch/x86/kernel/cpu/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "363c46d03d8f48b64cec5a89455862ec")
!59 = !{!60, !63, !67, !144, !145, !146, !147, !148}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "c_vendor", scope: !57, file: !58, line: 7, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "c_ident", scope: !57, file: !58, line: 10, baseType: !64, size: 128, offset: 64)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 2)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "c_early_init", scope: !57, file: !58, line: 12, baseType: !68, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !23, line: 83, size: 2368, elements: !73)
!73 = !{!74, !87, !88, !89, !93, !94, !95, !96, !97, !98, !99, !107, !111, !115, !116, !117, !118, !119, !120, !121, !122, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !140, !141, !143}
!74 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !23, line: 84, baseType: !75, size: 32)
!75 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !23, line: 84, size: 32, elements: !76)
!76 = !{!77, !86}
!77 = !DIDerivedType(tag: DW_TAG_member, scope: !75, file: !23, line: 90, baseType: !78, size: 32)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !75, file: !23, line: 90, size: 32, elements: !79)
!79 = !{!80, !83, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !78, file: !23, line: 91, baseType: !81, size: 8)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !33, line: 21, baseType: !82)
!82 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !78, file: !23, line: 93, baseType: !81, size: 8, offset: 8)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !78, file: !23, line: 95, baseType: !81, size: 8, offset: 16)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !78, file: !23, line: 96, baseType: !81, size: 8, offset: 24)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !75, file: !23, line: 99, baseType: !32, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !72, file: !23, line: 101, baseType: !81, size: 8, offset: 32)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !72, file: !23, line: 104, baseType: !34, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !72, file: !23, line: 107, baseType: !90, size: 160, offset: 96)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 160, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 5)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !72, file: !23, line: 109, baseType: !81, size: 8, offset: 256)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !72, file: !23, line: 110, baseType: !81, size: 8, offset: 264)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !72, file: !23, line: 112, baseType: !81, size: 8, offset: 272)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !72, file: !23, line: 113, baseType: !81, size: 8, offset: 280)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !72, file: !23, line: 115, baseType: !32, size: 32, offset: 288)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !72, file: !23, line: 117, baseType: !34, size: 32, offset: 320)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !72, file: !23, line: 123, baseType: !100, size: 768, offset: 384)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !72, file: !23, line: 123, size: 768, elements: !101)
!101 = !{!102, !106}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !100, file: !23, line: 124, baseType: !103, size: 768)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 768, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 24)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !100, file: !23, line: 125, baseType: !29, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !72, file: !23, line: 127, baseType: !108, size: 128, offset: 1152)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 128, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 16)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !72, file: !23, line: 128, baseType: !112, size: 512, offset: 1280)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 512, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !72, file: !23, line: 130, baseType: !7, size: 32, offset: 1792)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !72, file: !23, line: 131, baseType: !34, size: 32, offset: 1824)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !72, file: !23, line: 133, baseType: !34, size: 32, offset: 1856)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !72, file: !23, line: 134, baseType: !34, size: 32, offset: 1888)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !72, file: !23, line: 135, baseType: !34, size: 32, offset: 1920)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !72, file: !23, line: 136, baseType: !34, size: 32, offset: 1952)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !72, file: !23, line: 137, baseType: !29, size: 64, offset: 1984)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !72, file: !23, line: 139, baseType: !123, size: 64, offset: 2048)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !31, line: 23, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !33, line: 31, baseType: !125)
!125 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !72, file: !23, line: 141, baseType: !44, size: 16, offset: 2112)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !72, file: !23, line: 142, baseType: !44, size: 16, offset: 2128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !72, file: !23, line: 143, baseType: !44, size: 16, offset: 2144)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !72, file: !23, line: 144, baseType: !44, size: 16, offset: 2160)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !72, file: !23, line: 146, baseType: !44, size: 16, offset: 2176)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !72, file: !23, line: 148, baseType: !44, size: 16, offset: 2192)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !72, file: !23, line: 150, baseType: !44, size: 16, offset: 2208)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !72, file: !23, line: 152, baseType: !44, size: 16, offset: 2224)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !72, file: !23, line: 153, baseType: !44, size: 16, offset: 2240)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !72, file: !23, line: 154, baseType: !44, size: 16, offset: 2256)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !72, file: !23, line: 156, baseType: !44, size: 16, offset: 2272)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !72, file: !23, line: 158, baseType: !138, size: 8, offset: 2288)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !48, line: 35, baseType: !139)
!139 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !72, file: !23, line: 159, baseType: !30, size: 32, offset: 2304)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !72, file: !23, line: 161, baseType: !142, size: 8, offset: 2336)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !31, line: 17, baseType: !81)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !72, file: !23, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "c_bsp_init", scope: !57, file: !58, line: 13, baseType: !68, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "c_init", scope: !57, file: !58, line: 14, baseType: !68, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "c_identify", scope: !57, file: !58, line: 15, baseType: !68, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "c_detect_tlb", scope: !57, file: !58, line: 16, baseType: !68, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "c_x86_vendor", scope: !57, file: !58, line: 17, baseType: !34, size: 32, offset: 512)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 389, type: !151, isLocal: true, isDefinition: true)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 48, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 6)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 390, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 104, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 13)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 448, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 56)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(name: "nodes_per_socket", scope: !2, file: !3, line: 27, type: !30, isLocal: true, isDefinition: true)
!166 = !DIGlobalVariableExpression(var: !167, expr: !DIExpression())
!167 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__apic_call_read204", scope: !168, file: !169, line: 399, type: !38, isLocal: true, isDefinition: true)
!168 = distinct !DISubprogram(name: "apic_read", scope: !169, file: !169, line: 397, type: !170, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!169 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!170 = !DISubroutineType(types: !171)
!171 = !{!30, !30}
!172 = !{!173}
!173 = !DILocalVariable(name: "reg", arg: 1, scope: !168, file: !169, line: 397, type: !30)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 40, elements: !91)
!177 = !{i32 7, !"Dwarf Version", i32 5}
!178 = !{i32 2, !"Debug Info Version", i32 3}
!179 = !{i32 1, !"wchar_size", i32 2}
!180 = !{i32 8, !"cf-protection-branch", i32 1}
!181 = !{i32 4, !"function_return_thunk_extern", i32 1}
!182 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!183 = !{i32 1, !"Code Model", i32 2}
!184 = !{i32 1, !"override-stack-alignment", i32 8}
!185 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!186 = distinct !DISubprogram(name: "early_init_hygon", scope: !3, file: !3, line: 245, type: !69, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!187 = !{!188, !189, !190, !192}
!188 = !DILocalVariable(name: "c", arg: 1, scope: !186, file: !3, line: 245, type: !71)
!189 = !DILocalVariable(name: "dummy", scope: !186, file: !3, line: 247, type: !30)
!190 = !DILocalVariable(name: "__err", scope: !191, file: !3, line: 253, type: !34)
!191 = distinct !DILexicalBlock(scope: !186, file: !3, line: 253, column: 2)
!192 = !DILocalVariable(name: "__val", scope: !191, file: !3, line: 253, type: !123)
!193 = !DILocation(line: 245, column: 50, scope: !186)
!194 = !DILocation(line: 247, column: 2, scope: !186)
!195 = !DILocation(line: 247, column: 6, scope: !186)
!196 = !DILocation(line: 249, column: 22, scope: !186)
!197 = !DILocation(line: 249, column: 2, scope: !186)
!198 = !DILocation(line: 251, column: 2, scope: !186)
!199 = !DILocation(line: 253, column: 2, scope: !191)
!200 = !DILocation(line: 253, column: 2, scope: !186)
!201 = !DILocation(line: 259, column: 6, scope: !202)
!202 = distinct !DILexicalBlock(scope: !186, file: !3, line: 259, column: 6)
!203 = !DILocation(line: 259, column: 9, scope: !202)
!204 = !DILocation(line: 259, column: 19, scope: !202)
!205 = !DILocation(line: 259, column: 6, scope: !186)
!206 = !DILocation(line: 260, column: 3, scope: !207)
!207 = distinct !DILexicalBlock(scope: !202, file: !3, line: 259, column: 31)
!208 = !DILocation(line: 261, column: 3, scope: !207)
!209 = !DILocation(line: 262, column: 2, scope: !207)
!210 = !DILocation(line: 265, column: 6, scope: !211)
!211 = distinct !DILexicalBlock(scope: !186, file: !3, line: 265, column: 6)
!212 = !DILocation(line: 265, column: 9, scope: !211)
!213 = !DILocation(line: 265, column: 19, scope: !211)
!214 = !DILocation(line: 265, column: 6, scope: !186)
!215 = !DILocation(line: 266, column: 3, scope: !211)
!216 = !DILocation(line: 269, column: 6, scope: !217)
!217 = distinct !DILexicalBlock(scope: !186, file: !3, line: 269, column: 6)
!218 = !DILocation(line: 269, column: 9, scope: !217)
!219 = !DILocation(line: 269, column: 19, scope: !217)
!220 = !DILocation(line: 269, column: 6, scope: !186)
!221 = !DILocation(line: 270, column: 3, scope: !217)
!222 = !DILocation(line: 273, column: 2, scope: !186)
!223 = !DILocation(line: 281, column: 6, scope: !186)
!224 = !DILocation(line: 281, column: 6, scope: !225)
!225 = distinct !DILexicalBlock(scope: !186, file: !3, line: 281, column: 6)
!226 = !DILocation(line: 282, column: 3, scope: !225)
!227 = !DILocation(line: 290, column: 2, scope: !186)
!228 = !DILocation(line: 292, column: 27, scope: !186)
!229 = !DILocation(line: 292, column: 2, scope: !186)
!230 = !DILocation(line: 293, column: 1, scope: !186)
!231 = distinct !DISubprogram(name: "bsp_init_hygon", scope: !3, file: !3, line: 206, type: !69, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !232)
!232 = !{!233, !234, !237, !240}
!233 = !DILocalVariable(name: "c", arg: 1, scope: !231, file: !3, line: 206, type: !71)
!234 = !DILocalVariable(name: "val", scope: !235, file: !3, line: 209, type: !123)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 208, column: 44)
!236 = distinct !DILexicalBlock(scope: !231, file: !3, line: 208, column: 6)
!237 = !DILocalVariable(name: "ecx", scope: !238, file: !3, line: 220, type: !30)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 219, column: 41)
!239 = distinct !DILexicalBlock(scope: !231, file: !3, line: 219, column: 6)
!240 = !DILocalVariable(name: "value", scope: !241, file: !3, line: 225, type: !123)
!241 = distinct !DILexicalBlock(scope: !242, file: !3, line: 224, column: 51)
!242 = distinct !DILexicalBlock(scope: !239, file: !3, line: 224, column: 13)
!243 = !DILocation(line: 206, column: 48, scope: !231)
!244 = !DILocation(line: 208, column: 6, scope: !231)
!245 = !DILocation(line: 208, column: 6, scope: !236)
!246 = !DILocation(line: 209, column: 3, scope: !235)
!247 = !DILocation(line: 209, column: 7, scope: !235)
!248 = !DILocation(line: 211, column: 3, scope: !235)
!249 = !DILocation(line: 212, column: 9, scope: !250)
!250 = distinct !DILexicalBlock(scope: !235, file: !3, line: 212, column: 7)
!251 = !DILocation(line: 212, column: 13, scope: !250)
!252 = !DILocation(line: 212, column: 7, scope: !235)
!253 = !DILocation(line: 213, column: 4, scope: !254)
!254 = distinct !DILexicalBlock(scope: !250, file: !3, line: 213, column: 4)
!255 = !DILocation(line: 213, column: 4, scope: !256)
!256 = distinct !DILexicalBlock(scope: !254, file: !3, line: 213, column: 4)
!257 = !DILocation(line: 213, column: 4, scope: !250)
!258 = !DILocation(line: 214, column: 2, scope: !236)
!259 = !DILocation(line: 214, column: 2, scope: !235)
!260 = !DILocation(line: 216, column: 6, scope: !231)
!261 = !DILocation(line: 216, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !231, file: !3, line: 216, column: 6)
!263 = !DILocation(line: 217, column: 3, scope: !262)
!264 = !DILocation(line: 219, column: 6, scope: !231)
!265 = !DILocation(line: 219, column: 6, scope: !239)
!266 = !DILocation(line: 220, column: 3, scope: !238)
!267 = !DILocation(line: 220, column: 7, scope: !238)
!268 = !DILocation(line: 222, column: 9, scope: !238)
!269 = !DILocation(line: 222, column: 7, scope: !238)
!270 = !DILocation(line: 223, column: 48, scope: !238)
!271 = !DILocation(line: 223, column: 52, scope: !238)
!272 = !DILocation(line: 223, column: 58, scope: !238)
!273 = !DILocation(line: 223, column: 63, scope: !238)
!274 = !DILocation(line: 223, column: 44, scope: !238)
!275 = !DILocation(line: 223, column: 25, scope: !238)
!276 = !DILocation(line: 224, column: 2, scope: !239)
!277 = !DILocation(line: 224, column: 2, scope: !238)
!278 = !DILocation(line: 224, column: 13, scope: !239)
!279 = !DILocation(line: 224, column: 13, scope: !242)
!280 = !DILocation(line: 225, column: 3, scope: !241)
!281 = !DILocation(line: 225, column: 7, scope: !241)
!282 = !DILocation(line: 227, column: 3, scope: !241)
!283 = !DILocation(line: 228, column: 48, scope: !241)
!284 = !DILocation(line: 228, column: 54, scope: !241)
!285 = !DILocation(line: 228, column: 60, scope: !241)
!286 = !DILocation(line: 228, column: 65, scope: !241)
!287 = !DILocation(line: 228, column: 46, scope: !241)
!288 = !DILocation(line: 228, column: 44, scope: !241)
!289 = !DILocation(line: 228, column: 25, scope: !241)
!290 = !DILocation(line: 229, column: 2, scope: !242)
!291 = !DILocation(line: 229, column: 2, scope: !241)
!292 = !DILocation(line: 231, column: 42, scope: !293)
!293 = distinct !DILexicalBlock(scope: !231, file: !3, line: 231, column: 6)
!294 = !DILocation(line: 231, column: 7, scope: !293)
!295 = !DILocation(line: 231, column: 6, scope: !231)
!296 = !DILocation(line: 232, column: 7, scope: !293)
!297 = !DILocation(line: 237, column: 8, scope: !298)
!298 = distinct !DILexicalBlock(scope: !299, file: !3, line: 237, column: 7)
!299 = distinct !DILexicalBlock(scope: !293, file: !3, line: 232, column: 44)
!300 = !DILocation(line: 237, column: 7, scope: !299)
!301 = !DILocation(line: 238, column: 4, scope: !302)
!302 = distinct !DILexicalBlock(scope: !298, file: !3, line: 237, column: 61)
!303 = !DILocation(line: 238, column: 4, scope: !304)
!304 = distinct !DILexicalBlock(scope: !302, file: !3, line: 238, column: 4)
!305 = !DILocation(line: 239, column: 4, scope: !302)
!306 = !DILocation(line: 239, column: 4, scope: !307)
!307 = distinct !DILexicalBlock(scope: !302, file: !3, line: 239, column: 4)
!308 = !DILocation(line: 240, column: 29, scope: !302)
!309 = !DILocation(line: 241, column: 3, scope: !302)
!310 = !DILocation(line: 242, column: 2, scope: !299)
!311 = !DILocation(line: 243, column: 1, scope: !231)
!312 = distinct !DISubprogram(name: "init_hygon", scope: !3, file: !3, line: 295, type: !69, scopeLine: 296, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !313)
!313 = !{!314}
!314 = !DILocalVariable(name: "c", arg: 1, scope: !312, file: !3, line: 295, type: !71)
!315 = !DILocation(line: 295, column: 44, scope: !312)
!316 = !DILocation(line: 297, column: 19, scope: !312)
!317 = !DILocation(line: 297, column: 2, scope: !312)
!318 = !DILocation(line: 303, column: 16, scope: !312)
!319 = !DILocation(line: 303, column: 2, scope: !312)
!320 = !DILocation(line: 305, column: 2, scope: !312)
!321 = !DILocation(line: 308, column: 14, scope: !312)
!322 = !DILocation(line: 308, column: 2, scope: !312)
!323 = !DILocation(line: 308, column: 5, scope: !312)
!324 = !DILocation(line: 308, column: 12, scope: !312)
!325 = !DILocation(line: 316, column: 2, scope: !312)
!326 = !DILocation(line: 317, column: 2, scope: !312)
!327 = !DILocation(line: 319, column: 25, scope: !312)
!328 = !DILocation(line: 319, column: 2, scope: !312)
!329 = !DILocation(line: 321, column: 19, scope: !312)
!330 = !DILocation(line: 321, column: 2, scope: !312)
!331 = !DILocation(line: 322, column: 21, scope: !312)
!332 = !DILocation(line: 322, column: 2, scope: !312)
!333 = !DILocation(line: 323, column: 19, scope: !312)
!334 = !DILocation(line: 323, column: 2, scope: !312)
!335 = !DILocation(line: 325, column: 23, scope: !312)
!336 = !DILocation(line: 325, column: 2, scope: !312)
!337 = !DILocation(line: 334, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 327, column: 36)
!339 = distinct !DILexicalBlock(scope: !312, file: !3, line: 327, column: 6)
!340 = !DILocation(line: 338, column: 3, scope: !338)
!341 = !DILocation(line: 344, column: 2, scope: !312)
!342 = !DILocation(line: 348, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !312, file: !3, line: 347, column: 6)
!344 = !DILocation(line: 350, column: 29, scope: !312)
!345 = !DILocation(line: 350, column: 2, scope: !312)
!346 = !DILocation(line: 353, column: 16, scope: !312)
!347 = !DILocation(line: 353, column: 2, scope: !312)
!348 = !DILocation(line: 354, column: 1, scope: !312)
!349 = distinct !DISubprogram(name: "cpu_detect_tlb_hygon", scope: !3, file: !3, line: 356, type: !69, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !350)
!350 = !{!351, !352, !353, !354, !355, !356}
!351 = !DILocalVariable(name: "c", arg: 1, scope: !349, file: !3, line: 356, type: !71)
!352 = !DILocalVariable(name: "ebx", scope: !349, file: !3, line: 358, type: !30)
!353 = !DILocalVariable(name: "eax", scope: !349, file: !3, line: 358, type: !30)
!354 = !DILocalVariable(name: "ecx", scope: !349, file: !3, line: 358, type: !30)
!355 = !DILocalVariable(name: "edx", scope: !349, file: !3, line: 358, type: !30)
!356 = !DILocalVariable(name: "mask", scope: !349, file: !3, line: 359, type: !44)
!357 = !DILocation(line: 356, column: 54, scope: !349)
!358 = !DILocation(line: 358, column: 2, scope: !349)
!359 = !DILocation(line: 358, column: 6, scope: !349)
!360 = !DILocation(line: 358, column: 11, scope: !349)
!361 = !DILocation(line: 358, column: 16, scope: !349)
!362 = !DILocation(line: 358, column: 21, scope: !349)
!363 = !DILocation(line: 359, column: 2, scope: !349)
!364 = !DILocation(line: 359, column: 6, scope: !349)
!365 = !DILocation(line: 361, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !349, file: !3, line: 361, column: 6)
!367 = !DILocation(line: 361, column: 9, scope: !366)
!368 = !DILocation(line: 361, column: 30, scope: !366)
!369 = !DILocation(line: 361, column: 6, scope: !349)
!370 = !DILocation(line: 362, column: 3, scope: !366)
!371 = !DILocation(line: 364, column: 2, scope: !349)
!372 = !DILocation(line: 366, column: 25, scope: !349)
!373 = !DILocation(line: 366, column: 29, scope: !349)
!374 = !DILocation(line: 366, column: 38, scope: !349)
!375 = !DILocation(line: 366, column: 36, scope: !349)
!376 = !DILocation(line: 366, column: 24, scope: !349)
!377 = !DILocation(line: 366, column: 22, scope: !349)
!378 = !DILocation(line: 367, column: 24, scope: !349)
!379 = !DILocation(line: 367, column: 30, scope: !349)
!380 = !DILocation(line: 367, column: 28, scope: !349)
!381 = !DILocation(line: 367, column: 22, scope: !349)
!382 = !DILocation(line: 370, column: 9, scope: !383)
!383 = distinct !DILexicalBlock(scope: !349, file: !3, line: 370, column: 6)
!384 = !DILocation(line: 370, column: 13, scope: !383)
!385 = !DILocation(line: 370, column: 22, scope: !383)
!386 = !DILocation(line: 370, column: 20, scope: !383)
!387 = !DILocation(line: 370, column: 6, scope: !349)
!388 = !DILocation(line: 371, column: 26, scope: !383)
!389 = !DILocation(line: 371, column: 48, scope: !383)
!390 = !DILocation(line: 371, column: 55, scope: !383)
!391 = !DILocation(line: 371, column: 25, scope: !383)
!392 = !DILocation(line: 371, column: 23, scope: !383)
!393 = !DILocation(line: 371, column: 3, scope: !383)
!394 = !DILocation(line: 373, column: 26, scope: !383)
!395 = !DILocation(line: 373, column: 30, scope: !383)
!396 = !DILocation(line: 373, column: 39, scope: !383)
!397 = !DILocation(line: 373, column: 37, scope: !383)
!398 = !DILocation(line: 373, column: 25, scope: !383)
!399 = !DILocation(line: 373, column: 23, scope: !383)
!400 = !DILocation(line: 376, column: 24, scope: !349)
!401 = !DILocation(line: 376, column: 44, scope: !349)
!402 = !DILocation(line: 376, column: 22, scope: !349)
!403 = !DILocation(line: 379, column: 8, scope: !404)
!404 = distinct !DILexicalBlock(scope: !349, file: !3, line: 379, column: 6)
!405 = !DILocation(line: 379, column: 14, scope: !404)
!406 = !DILocation(line: 379, column: 12, scope: !404)
!407 = !DILocation(line: 379, column: 6, scope: !349)
!408 = !DILocation(line: 380, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !404, file: !3, line: 379, column: 21)
!410 = !DILocation(line: 381, column: 25, scope: !409)
!411 = !DILocation(line: 381, column: 29, scope: !409)
!412 = !DILocation(line: 381, column: 23, scope: !409)
!413 = !DILocation(line: 382, column: 2, scope: !409)
!414 = !DILocation(line: 383, column: 25, scope: !404)
!415 = !DILocation(line: 383, column: 31, scope: !404)
!416 = !DILocation(line: 383, column: 29, scope: !404)
!417 = !DILocation(line: 383, column: 23, scope: !404)
!418 = !DILocation(line: 385, column: 24, scope: !349)
!419 = !DILocation(line: 385, column: 44, scope: !349)
!420 = !DILocation(line: 385, column: 22, scope: !349)
!421 = !DILocation(line: 386, column: 1, scope: !349)
!422 = distinct !DISubprogram(name: "early_init_hygon_mc", scope: !3, file: !3, line: 180, type: !69, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !423)
!423 = !{!424, !425, !426}
!424 = !DILocalVariable(name: "c", arg: 1, scope: !422, file: !3, line: 180, type: !71)
!425 = !DILocalVariable(name: "bits", scope: !422, file: !3, line: 183, type: !7)
!426 = !DILocalVariable(name: "ecx", scope: !422, file: !3, line: 183, type: !7)
!427 = !DILocation(line: 180, column: 53, scope: !422)
!428 = !DILocation(line: 183, column: 2, scope: !422)
!429 = !DILocation(line: 183, column: 15, scope: !422)
!430 = !DILocation(line: 183, column: 21, scope: !422)
!431 = !DILocation(line: 186, column: 6, scope: !432)
!432 = distinct !DILexicalBlock(scope: !422, file: !3, line: 186, column: 6)
!433 = !DILocation(line: 186, column: 9, scope: !432)
!434 = !DILocation(line: 186, column: 30, scope: !432)
!435 = !DILocation(line: 186, column: 6, scope: !422)
!436 = !DILocation(line: 187, column: 3, scope: !432)
!437 = !DILocation(line: 189, column: 8, scope: !422)
!438 = !DILocation(line: 189, column: 6, scope: !422)
!439 = !DILocation(line: 191, column: 22, scope: !422)
!440 = !DILocation(line: 191, column: 26, scope: !422)
!441 = !DILocation(line: 191, column: 34, scope: !422)
!442 = !DILocation(line: 191, column: 21, scope: !422)
!443 = !DILocation(line: 191, column: 2, scope: !422)
!444 = !DILocation(line: 191, column: 5, scope: !422)
!445 = !DILocation(line: 191, column: 19, scope: !422)
!446 = !DILocation(line: 194, column: 10, scope: !422)
!447 = !DILocation(line: 194, column: 14, scope: !422)
!448 = !DILocation(line: 194, column: 21, scope: !422)
!449 = !DILocation(line: 194, column: 7, scope: !422)
!450 = !DILocation(line: 197, column: 6, scope: !451)
!451 = distinct !DILexicalBlock(scope: !422, file: !3, line: 197, column: 6)
!452 = !DILocation(line: 197, column: 11, scope: !451)
!453 = !DILocation(line: 197, column: 6, scope: !422)
!454 = !DILocation(line: 198, column: 3, scope: !455)
!455 = distinct !DILexicalBlock(scope: !451, file: !3, line: 197, column: 17)
!456 = !DILocation(line: 198, column: 16, scope: !455)
!457 = !DILocation(line: 198, column: 13, scope: !455)
!458 = !DILocation(line: 198, column: 24, scope: !455)
!459 = !DILocation(line: 198, column: 27, scope: !455)
!460 = !DILocation(line: 198, column: 22, scope: !455)
!461 = !DILocation(line: 199, column: 8, scope: !455)
!462 = distinct !{!462, !454, !461, !463, !464}
!463 = !{!"llvm.loop.mustprogress"}
!464 = !{!"llvm.loop.unroll.disable"}
!465 = !DILocation(line: 200, column: 2, scope: !455)
!466 = !DILocation(line: 202, column: 23, scope: !422)
!467 = !DILocation(line: 202, column: 2, scope: !422)
!468 = !DILocation(line: 202, column: 5, scope: !422)
!469 = !DILocation(line: 202, column: 21, scope: !422)
!470 = !DILocation(line: 204, column: 1, scope: !422)
!471 = distinct !DISubprogram(name: "set_bit", scope: !472, file: !472, line: 26, type: !473, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !477)
!472 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!473 = !DISubroutineType(types: !474)
!474 = !{null, !41, !475}
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !29)
!477 = !{!478, !479}
!478 = !DILocalVariable(name: "nr", arg: 1, scope: !471, file: !472, line: 26, type: !41)
!479 = !DILocalVariable(name: "addr", arg: 2, scope: !471, file: !472, line: 26, type: !475)
!480 = !DILocation(line: 26, column: 42, scope: !471)
!481 = !DILocation(line: 26, column: 70, scope: !471)
!482 = !DILocation(line: 28, column: 26, scope: !471)
!483 = !DILocation(line: 28, column: 33, scope: !471)
!484 = !DILocation(line: 28, column: 31, scope: !471)
!485 = !DILocation(line: 28, column: 2, scope: !471)
!486 = !DILocation(line: 29, column: 15, scope: !471)
!487 = !DILocation(line: 29, column: 19, scope: !471)
!488 = !DILocation(line: 29, column: 2, scope: !471)
!489 = !DILocation(line: 30, column: 1, scope: !471)
!490 = distinct !DISubprogram(name: "native_read_msr_safe", scope: !491, file: !491, line: 126, type: !492, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!491 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!492 = !DISubroutineType(types: !493)
!493 = !{!125, !7, !42}
!494 = !{!495, !496, !497, !498}
!495 = !DILocalVariable(name: "msr", arg: 1, scope: !490, file: !491, line: 126, type: !7)
!496 = !DILocalVariable(name: "err", arg: 2, scope: !490, file: !491, line: 127, type: !42)
!497 = !DILocalVariable(name: "low", scope: !490, file: !491, line: 129, type: !29)
!498 = !DILocalVariable(name: "high", scope: !490, file: !491, line: 129, type: !29)
!499 = !DILocation(line: 126, column: 68, scope: !490)
!500 = !DILocation(line: 127, column: 18, scope: !490)
!501 = !DILocation(line: 129, column: 2, scope: !490)
!502 = !DILocation(line: 134, column: 23, scope: !490)
!503 = !DILocation(line: 135, column: 15, scope: !490)
!504 = !DILocation(line: 131, column: 2, scope: !490)
!505 = !{i64 1985500, i64 1985541, i64 1985545, i64 2149487107, i64 2149487132, i64 2149487167, i64 2149487384, i64 2149487437, i64 2149487468, i64 2149487499, i64 2149487577, i64 2149487611, i64 2149487649, i64 2149487692, i64 2149487715, i64 2149487753, i64 2149487775, i64 2149487806, i64 2149487891, i64 2149487925, i64 2149487963, i64 2149488006, i64 2149488029, i64 2149488067, i64 2149488089, i64 2149488123, i64 2149488185, i64 2149488208, i64 2149487233, i64 2149488282, i64 2149487344}
!506 = !DILocation(line: 136, column: 6, scope: !507)
!507 = distinct !DILexicalBlock(scope: !490, file: !491, line: 136, column: 6)
!508 = !DILocation(line: 136, column: 6, scope: !490)
!509 = !DILocation(line: 137, column: 21, scope: !507)
!510 = !DILocation(line: 137, column: 26, scope: !507)
!511 = !DILocation(line: 137, column: 56, scope: !507)
!512 = !DILocation(line: 137, column: 55, scope: !507)
!513 = !DILocation(line: 137, column: 3, scope: !507)
!514 = !DILocation(line: 138, column: 9, scope: !490)
!515 = !DILocation(line: 139, column: 1, scope: !490)
!516 = !DILocation(line: 138, column: 2, scope: !490)
!517 = distinct !DISubprogram(name: "arch_test_bit", scope: !518, file: !518, line: 237, type: !519, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !523)
!518 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!519 = !DISubroutineType(types: !520)
!520 = !{!138, !29, !521}
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !476)
!523 = !{!524, !525}
!524 = !DILocalVariable(name: "nr", arg: 1, scope: !517, file: !518, line: 237, type: !29)
!525 = !DILocalVariable(name: "addr", arg: 2, scope: !517, file: !518, line: 237, type: !521)
!526 = !DILocation(line: 237, column: 29, scope: !517)
!527 = !DILocation(line: 237, column: 63, scope: !517)
!528 = !DILocation(line: 239, column: 30, scope: !517)
!529 = !DILocation(line: 239, column: 9, scope: !517)
!530 = !DILocation(line: 239, column: 54, scope: !517)
!531 = !DILocation(line: 239, column: 58, scope: !517)
!532 = !DILocation(line: 239, column: 36, scope: !517)
!533 = !DILocation(line: 240, column: 26, scope: !517)
!534 = !DILocation(line: 240, column: 30, scope: !517)
!535 = !DILocation(line: 240, column: 8, scope: !517)
!536 = !DILocation(line: 239, column: 2, scope: !517)
!537 = distinct !DISubprogram(name: "hygon_get_topology_early", scope: !3, file: !3, line: 52, type: !69, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!538 = !{!539}
!539 = !DILocalVariable(name: "c", arg: 1, scope: !537, file: !3, line: 52, type: !71)
!540 = !DILocation(line: 52, column: 58, scope: !537)
!541 = !DILocation(line: 54, column: 6, scope: !537)
!542 = !DILocation(line: 54, column: 6, scope: !543)
!543 = distinct !DILexicalBlock(scope: !537, file: !3, line: 54, column: 6)
!544 = !DILocation(line: 55, column: 24, scope: !543)
!545 = !DILocation(line: 55, column: 46, scope: !543)
!546 = !DILocation(line: 55, column: 52, scope: !543)
!547 = !DILocation(line: 55, column: 60, scope: !543)
!548 = !DILocation(line: 55, column: 20, scope: !543)
!549 = !DILocation(line: 55, column: 3, scope: !543)
!550 = !DILocation(line: 56, column: 1, scope: !537)
!551 = distinct !DISubprogram(name: "cpuid_ecx", scope: !552, file: !552, line: 112, type: !553, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !555)
!552 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!553 = !DISubroutineType(types: !554)
!554 = !{!7, !7}
!555 = !{!556, !557, !558, !559, !560}
!556 = !DILocalVariable(name: "op", arg: 1, scope: !551, file: !552, line: 112, type: !7)
!557 = !DILocalVariable(name: "eax", scope: !551, file: !552, line: 114, type: !7)
!558 = !DILocalVariable(name: "ebx", scope: !551, file: !552, line: 114, type: !7)
!559 = !DILocalVariable(name: "ecx", scope: !551, file: !552, line: 114, type: !7)
!560 = !DILocalVariable(name: "edx", scope: !551, file: !552, line: 114, type: !7)
!561 = !DILocation(line: 112, column: 51, scope: !551)
!562 = !DILocation(line: 114, column: 2, scope: !551)
!563 = !DILocation(line: 114, column: 15, scope: !551)
!564 = !DILocation(line: 114, column: 20, scope: !551)
!565 = !DILocation(line: 114, column: 25, scope: !551)
!566 = !DILocation(line: 114, column: 30, scope: !551)
!567 = !DILocation(line: 116, column: 8, scope: !551)
!568 = !DILocation(line: 116, column: 2, scope: !551)
!569 = !DILocation(line: 118, column: 9, scope: !551)
!570 = !DILocation(line: 119, column: 1, scope: !551)
!571 = !DILocation(line: 118, column: 2, scope: !551)
!572 = distinct !DISubprogram(name: "cpuid", scope: !552, file: !552, line: 72, type: !573, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !7, !575, !575, !575, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!576 = !{!577, !578, !579, !580, !581}
!577 = !DILocalVariable(name: "op", arg: 1, scope: !572, file: !552, line: 72, type: !7)
!578 = !DILocalVariable(name: "eax", arg: 2, scope: !572, file: !552, line: 73, type: !575)
!579 = !DILocalVariable(name: "ebx", arg: 3, scope: !572, file: !552, line: 73, type: !575)
!580 = !DILocalVariable(name: "ecx", arg: 4, scope: !572, file: !552, line: 74, type: !575)
!581 = !DILocalVariable(name: "edx", arg: 5, scope: !572, file: !552, line: 74, type: !575)
!582 = !DILocation(line: 72, column: 39, scope: !572)
!583 = !DILocation(line: 73, column: 19, scope: !572)
!584 = !DILocation(line: 73, column: 38, scope: !572)
!585 = !DILocation(line: 74, column: 19, scope: !572)
!586 = !DILocation(line: 74, column: 38, scope: !572)
!587 = !DILocation(line: 76, column: 9, scope: !572)
!588 = !DILocation(line: 76, column: 3, scope: !572)
!589 = !DILocation(line: 76, column: 7, scope: !572)
!590 = !DILocation(line: 77, column: 3, scope: !572)
!591 = !DILocation(line: 77, column: 7, scope: !572)
!592 = !DILocation(line: 78, column: 10, scope: !572)
!593 = !DILocation(line: 78, column: 15, scope: !572)
!594 = !DILocation(line: 78, column: 20, scope: !572)
!595 = !DILocation(line: 78, column: 25, scope: !572)
!596 = !DILocation(line: 78, column: 2, scope: !572)
!597 = !DILocation(line: 79, column: 1, scope: !572)
!598 = distinct !DISubprogram(name: "native_cpuid", scope: !552, file: !552, line: 30, type: !599, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !601)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !575, !575, !575, !575}
!601 = !{!602, !603, !604, !605}
!602 = !DILocalVariable(name: "eax", arg: 1, scope: !598, file: !552, line: 30, type: !575)
!603 = !DILocalVariable(name: "ebx", arg: 2, scope: !598, file: !552, line: 30, type: !575)
!604 = !DILocalVariable(name: "ecx", arg: 3, scope: !598, file: !552, line: 31, type: !575)
!605 = !DILocalVariable(name: "edx", arg: 4, scope: !598, file: !552, line: 31, type: !575)
!606 = !DILocation(line: 30, column: 47, scope: !598)
!607 = !DILocation(line: 30, column: 66, scope: !598)
!608 = !DILocation(line: 31, column: 19, scope: !598)
!609 = !DILocation(line: 31, column: 38, scope: !598)
!610 = !DILocation(line: 35, column: 15, scope: !598)
!611 = !DILocation(line: 36, column: 15, scope: !598)
!612 = !DILocation(line: 37, column: 15, scope: !598)
!613 = !DILocation(line: 38, column: 15, scope: !598)
!614 = !DILocation(line: 39, column: 14, scope: !598)
!615 = !DILocation(line: 39, column: 13, scope: !598)
!616 = !DILocation(line: 39, column: 26, scope: !598)
!617 = !DILocation(line: 39, column: 25, scope: !598)
!618 = !DILocation(line: 34, column: 2, scope: !598)
!619 = !{i64 1975781}
!620 = !DILocation(line: 41, column: 1, scope: !598)
!621 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !622, file: !622, line: 80, type: !623, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !632)
!622 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!623 = !DISubroutineType(types: !624)
!624 = !{null, !625, !628}
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !48, line: 61, baseType: !629)
!629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !630, line: 72, baseType: !631)
!630 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!631 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !630, line: 16, baseType: !29)
!632 = !{!633, !634}
!633 = !DILocalVariable(name: "v", arg: 1, scope: !621, file: !622, line: 80, type: !625)
!634 = !DILocalVariable(name: "size", arg: 2, scope: !621, file: !622, line: 80, type: !628)
!635 = !DILocation(line: 80, column: 74, scope: !621)
!636 = !DILocation(line: 80, column: 84, scope: !621)
!637 = !DILocation(line: 82, column: 20, scope: !621)
!638 = !DILocation(line: 82, column: 23, scope: !621)
!639 = !DILocation(line: 82, column: 2, scope: !621)
!640 = !DILocation(line: 83, column: 2, scope: !621)
!641 = !DILocation(line: 84, column: 1, scope: !621)
!642 = distinct !DISubprogram(name: "arch_set_bit", scope: !518, file: !518, line: 52, type: !473, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!643 = !{!644, !645}
!644 = !DILocalVariable(name: "nr", arg: 1, scope: !642, file: !518, line: 52, type: !41)
!645 = !DILocalVariable(name: "addr", arg: 2, scope: !642, file: !518, line: 52, type: !475)
!646 = !DILocation(line: 52, column: 19, scope: !642)
!647 = !DILocation(line: 52, column: 47, scope: !642)
!648 = !DILocation(line: 54, column: 27, scope: !649)
!649 = distinct !DILexicalBlock(scope: !642, file: !518, line: 54, column: 6)
!650 = !DILocation(line: 54, column: 6, scope: !649)
!651 = !DILocation(line: 54, column: 6, scope: !642)
!652 = !DILocation(line: 56, column: 6, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !518, line: 54, column: 32)
!654 = !DILocation(line: 57, column: 12, scope: !653)
!655 = !DILocation(line: 55, column: 3, scope: !653)
!656 = !{i64 2148051452, i64 2148051491, i64 2148051512, i64 2148051549, i64 2148051572, i64 2148051442}
!657 = !DILocation(line: 59, column: 2, scope: !653)
!658 = !DILocation(line: 61, column: 8, scope: !659)
!659 = distinct !DILexicalBlock(scope: !649, file: !518, line: 59, column: 9)
!660 = !DILocation(line: 61, column: 32, scope: !659)
!661 = !DILocation(line: 60, column: 3, scope: !659)
!662 = !{i64 2148051737, i64 2148051776, i64 2148051797, i64 2148051834, i64 2148051857, i64 2148051727}
!663 = !DILocation(line: 63, column: 1, scope: !642)
!664 = distinct !DISubprogram(name: "kasan_check_write", scope: !665, file: !665, line: 44, type: !666, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !668)
!665 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!666 = !DISubroutineType(types: !667)
!667 = !{!138, !625, !7}
!668 = !{!669, !670}
!669 = !DILocalVariable(name: "p", arg: 1, scope: !664, file: !665, line: 44, type: !625)
!670 = !DILocalVariable(name: "size", arg: 2, scope: !664, file: !665, line: 44, type: !7)
!671 = !DILocation(line: 44, column: 59, scope: !664)
!672 = !DILocation(line: 44, column: 75, scope: !664)
!673 = !DILocation(line: 46, column: 2, scope: !664)
!674 = distinct !DISubprogram(name: "kcsan_check_access", scope: !675, file: !675, line: 229, type: !676, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !678)
!675 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!676 = !DISubroutineType(types: !677)
!677 = !{null, !625, !628, !34}
!678 = !{!679, !680, !681}
!679 = !DILocalVariable(name: "ptr", arg: 1, scope: !674, file: !675, line: 229, type: !625)
!680 = !DILocalVariable(name: "size", arg: 2, scope: !674, file: !675, line: 229, type: !628)
!681 = !DILocalVariable(name: "type", arg: 3, scope: !674, file: !675, line: 230, type: !34)
!682 = !DILocation(line: 229, column: 60, scope: !674)
!683 = !DILocation(line: 229, column: 72, scope: !674)
!684 = !DILocation(line: 230, column: 15, scope: !674)
!685 = !DILocation(line: 230, column: 23, scope: !674)
!686 = distinct !DISubprogram(name: "static_key_false", scope: !687, file: !687, line: 205, type: !688, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !714)
!687 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!688 = !DISubroutineType(types: !689)
!689 = !{!138, !690}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !687, line: 85, size: 128, elements: !692)
!692 = !{!693, !698}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !691, file: !687, line: 86, baseType: !694, size: 32)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !48, line: 174, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !48, line: 172, size: 32, elements: !696)
!696 = !{!697}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !695, file: !48, line: 173, baseType: !34, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !687, line: 101, baseType: !699, size: 64, offset: 64)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !687, line: 101, size: 64, elements: !700)
!700 = !{!701, !702, !711}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !699, file: !687, line: 102, baseType: !29, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !699, file: !687, line: 103, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !687, line: 117, size: 128, elements: !705)
!705 = !{!706, !709, !710}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !704, file: !687, line: 118, baseType: !707, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !31, line: 20, baseType: !708)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !33, line: 26, baseType: !34)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !704, file: !687, line: 119, baseType: !707, size: 32, offset: 32)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !704, file: !687, line: 120, baseType: !41, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !699, file: !687, line: 104, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !687, line: 104, flags: DIFlagFwdDecl)
!714 = !{!715}
!715 = !DILocalVariable(name: "key", arg: 1, scope: !686, file: !687, line: 205, type: !690)
!716 = !DILocation(line: 205, column: 65, scope: !686)
!717 = !DILocation(line: 207, column: 28, scope: !686)
!718 = !DILocation(line: 207, column: 9, scope: !686)
!719 = !DILocation(line: 207, column: 2, scope: !686)
!720 = !DISubprogram(name: "do_trace_read_msr", scope: !491, file: !491, line: 65, type: !721, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!721 = !DISubroutineType(types: !722)
!722 = !{null, !7, !123, !34}
!723 = distinct !DISubprogram(name: "arch_static_branch", scope: !724, file: !724, line: 25, type: !725, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!724 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!725 = !DISubroutineType(types: !726)
!726 = !{!138, !690, !138}
!727 = !{!728, !729, !730}
!728 = !DILocalVariable(name: "key", arg: 1, scope: !723, file: !724, line: 25, type: !690)
!729 = !DILocalVariable(name: "branch", arg: 2, scope: !723, file: !724, line: 25, type: !138)
!730 = !DILabel(scope: !723, name: "l_yes", file: !724, line: 33)
!731 = !DILocation(line: 25, column: 67, scope: !723)
!732 = !DILocation(line: 25, column: 77, scope: !723)
!733 = !DILocation(line: 30, column: 13, scope: !723)
!734 = !DILocation(line: 30, column: 28, scope: !723)
!735 = !{i8 0, i8 2}
!736 = !{}
!737 = !DILocation(line: 30, column: 26, scope: !723)
!738 = !DILocation(line: 27, column: 2, scope: !723)
!739 = !{i64 410823, i64 410867, i64 2147897842, i64 2147897863, i64 2147897889, i64 2147897922, i64 2147897956, i64 2147897980}
!740 = !DILocation(line: 32, column: 2, scope: !723)
!741 = !DILocation(line: 33, column: 1, scope: !723)
!742 = !DILocation(line: 34, column: 2, scope: !723)
!743 = !DILocation(line: 35, column: 1, scope: !723)
!744 = distinct !DISubprogram(name: "constant_test_bit", scope: !518, file: !518, line: 204, type: !745, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!138, !41, !521}
!747 = !{!748, !749}
!748 = !DILocalVariable(name: "nr", arg: 1, scope: !744, file: !518, line: 204, type: !41)
!749 = !DILocalVariable(name: "addr", arg: 2, scope: !744, file: !518, line: 204, type: !521)
!750 = !DILocation(line: 204, column: 52, scope: !744)
!751 = !DILocation(line: 204, column: 86, scope: !744)
!752 = !DILocation(line: 206, column: 19, scope: !744)
!753 = !DILocation(line: 206, column: 22, scope: !744)
!754 = !DILocation(line: 206, column: 15, scope: !744)
!755 = !DILocation(line: 207, column: 4, scope: !744)
!756 = !DILocation(line: 207, column: 9, scope: !744)
!757 = !DILocation(line: 207, column: 12, scope: !744)
!758 = !DILocation(line: 206, column: 44, scope: !744)
!759 = !DILocation(line: 207, column: 37, scope: !744)
!760 = !DILocation(line: 206, column: 2, scope: !744)
!761 = distinct !DISubprogram(name: "variable_test_bit", scope: !518, file: !518, line: 224, type: !745, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!762 = !{!763, !764, !765}
!763 = !DILocalVariable(name: "nr", arg: 1, scope: !761, file: !518, line: 224, type: !41)
!764 = !DILocalVariable(name: "addr", arg: 2, scope: !761, file: !518, line: 224, type: !521)
!765 = !DILocalVariable(name: "oldbit", scope: !761, file: !518, line: 226, type: !138)
!766 = !DILocation(line: 224, column: 52, scope: !761)
!767 = !DILocation(line: 224, column: 86, scope: !761)
!768 = !DILocation(line: 226, column: 2, scope: !761)
!769 = !DILocation(line: 226, column: 7, scope: !761)
!770 = !DILocation(line: 231, column: 33, scope: !761)
!771 = !DILocation(line: 231, column: 46, scope: !761)
!772 = !DILocation(line: 228, column: 2, scope: !761)
!773 = !{i64 2148065064, i64 2148065138}
!774 = !DILocation(line: 233, column: 9, scope: !761)
!775 = !DILocation(line: 234, column: 1, scope: !761)
!776 = !DILocation(line: 233, column: 2, scope: !761)
!777 = distinct !DISubprogram(name: "cpuid_ebx", scope: !552, file: !552, line: 103, type: !553, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !778)
!778 = !{!779, !780, !781, !782, !783}
!779 = !DILocalVariable(name: "op", arg: 1, scope: !777, file: !552, line: 103, type: !7)
!780 = !DILocalVariable(name: "eax", scope: !777, file: !552, line: 105, type: !7)
!781 = !DILocalVariable(name: "ebx", scope: !777, file: !552, line: 105, type: !7)
!782 = !DILocalVariable(name: "ecx", scope: !777, file: !552, line: 105, type: !7)
!783 = !DILocalVariable(name: "edx", scope: !777, file: !552, line: 105, type: !7)
!784 = !DILocation(line: 103, column: 51, scope: !777)
!785 = !DILocation(line: 105, column: 2, scope: !777)
!786 = !DILocation(line: 105, column: 15, scope: !777)
!787 = !DILocation(line: 105, column: 20, scope: !777)
!788 = !DILocation(line: 105, column: 25, scope: !777)
!789 = !DILocation(line: 105, column: 30, scope: !777)
!790 = !DILocation(line: 107, column: 8, scope: !777)
!791 = !DILocation(line: 107, column: 2, scope: !777)
!792 = !DILocation(line: 109, column: 9, scope: !777)
!793 = !DILocation(line: 110, column: 1, scope: !777)
!794 = !DILocation(line: 109, column: 2, scope: !777)
!795 = distinct !DISubprogram(name: "native_read_msr", scope: !491, file: !491, line: 114, type: !796, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !798)
!796 = !DISubroutineType(types: !797)
!797 = !{!125, !7}
!798 = !{!799, !800}
!799 = !DILocalVariable(name: "msr", arg: 1, scope: !795, file: !491, line: 114, type: !7)
!800 = !DILocalVariable(name: "val", scope: !795, file: !491, line: 116, type: !125)
!801 = !DILocation(line: 114, column: 63, scope: !795)
!802 = !DILocation(line: 116, column: 2, scope: !795)
!803 = !DILocation(line: 116, column: 21, scope: !795)
!804 = !DILocation(line: 118, column: 16, scope: !795)
!805 = !DILocation(line: 118, column: 8, scope: !795)
!806 = !DILocation(line: 118, column: 6, scope: !795)
!807 = !DILocation(line: 120, column: 6, scope: !808)
!808 = distinct !DILexicalBlock(scope: !795, file: !491, line: 120, column: 6)
!809 = !DILocation(line: 120, column: 6, scope: !795)
!810 = !DILocation(line: 121, column: 21, scope: !808)
!811 = !DILocation(line: 121, column: 26, scope: !808)
!812 = !DILocation(line: 121, column: 3, scope: !808)
!813 = !DILocation(line: 123, column: 9, scope: !795)
!814 = !DILocation(line: 124, column: 1, scope: !795)
!815 = !DILocation(line: 123, column: 2, scope: !795)
!816 = !DISubprogram(name: "_printk", scope: !817, file: !817, line: 153, type: !818, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!817 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!818 = !DISubroutineType(types: !819)
!819 = !{!34, !61, null}
!820 = !DISubprogram(name: "use_mwaitx_delay", scope: !821, file: !821, line: 10, type: !822, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!821 = !DIFile(filename: "./arch/x86/include/asm/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1669c2cc60c632f0c76a6da415ad94bc")
!822 = !DISubroutineType(types: !823)
!823 = !{null}
!824 = distinct !DISubprogram(name: "rdmsrl_safe", scope: !491, file: !491, line: 281, type: !825, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !828)
!825 = !DISubroutineType(types: !826)
!826 = !{!34, !7, !827}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!828 = !{!829, !830, !831}
!829 = !DILocalVariable(name: "msr", arg: 1, scope: !824, file: !491, line: 281, type: !7)
!830 = !DILocalVariable(name: "p", arg: 2, scope: !824, file: !491, line: 281, type: !827)
!831 = !DILocalVariable(name: "err", scope: !824, file: !491, line: 283, type: !34)
!832 = !DILocation(line: 281, column: 44, scope: !824)
!833 = !DILocation(line: 281, column: 69, scope: !824)
!834 = !DILocation(line: 283, column: 2, scope: !824)
!835 = !DILocation(line: 283, column: 6, scope: !824)
!836 = !DILocation(line: 285, column: 28, scope: !824)
!837 = !DILocation(line: 285, column: 7, scope: !824)
!838 = !DILocation(line: 285, column: 3, scope: !824)
!839 = !DILocation(line: 285, column: 5, scope: !824)
!840 = !DILocation(line: 286, column: 9, scope: !824)
!841 = !DILocation(line: 287, column: 1, scope: !824)
!842 = !DILocation(line: 286, column: 2, scope: !824)
!843 = distinct !DISubprogram(name: "__rdmsr", scope: !491, file: !491, line: 80, type: !796, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !844)
!844 = !{!845, !846, !847}
!845 = !DILocalVariable(name: "msr", arg: 1, scope: !843, file: !491, line: 80, type: !7)
!846 = !DILocalVariable(name: "low", scope: !843, file: !491, line: 82, type: !29)
!847 = !DILocalVariable(name: "high", scope: !843, file: !491, line: 82, type: !29)
!848 = !DILocation(line: 80, column: 64, scope: !843)
!849 = !DILocation(line: 82, column: 2, scope: !843)
!850 = !DILocation(line: 87, column: 45, scope: !843)
!851 = !DILocation(line: 84, column: 2, scope: !843)
!852 = !{i64 1984412, i64 1984433, i64 2149485898, i64 2149485942, i64 2149485965, i64 2149485998, i64 2149486029, i64 2149486068}
!853 = !DILocation(line: 89, column: 9, scope: !843)
!854 = !DILocation(line: 90, column: 1, scope: !843)
!855 = !DILocation(line: 89, column: 2, scope: !843)
!856 = !DISubprogram(name: "clear_cpu_cap", scope: !857, file: !857, line: 151, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!857 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!858 = !DISubroutineType(types: !859)
!859 = !{null, !71, !7}
!860 = distinct !DISubprogram(name: "read_apic_id", scope: !169, file: !169, line: 522, type: !861, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!861 = !DISubroutineType(types: !862)
!862 = !{!7}
!863 = !{!864}
!864 = !DILocalVariable(name: "reg", scope: !860, file: !169, line: 524, type: !7)
!865 = !DILocation(line: 524, column: 2, scope: !860)
!866 = !DILocation(line: 524, column: 15, scope: !860)
!867 = !DILocation(line: 524, column: 21, scope: !860)
!868 = !DILocation(line: 526, column: 9, scope: !860)
!869 = !DILocation(line: 526, column: 15, scope: !860)
!870 = !DILocation(line: 526, column: 27, scope: !860)
!871 = !DILocation(line: 527, column: 1, scope: !860)
!872 = !DILocation(line: 526, column: 2, scope: !860)
!873 = !DISubprogram(name: "cpu_detect_cache_sizes", scope: !58, file: !58, line: 68, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!874 = distinct !DISubprogram(name: "hygon_detect_cmp", scope: !3, file: !3, line: 116, type: !69, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !875)
!875 = !{!876, !877, !878, !879, !882, !886, !888, !891}
!876 = !DILocalVariable(name: "c", arg: 1, scope: !874, file: !3, line: 116, type: !71)
!877 = !DILocalVariable(name: "bits", scope: !874, file: !3, line: 118, type: !7)
!878 = !DILocalVariable(name: "cpu", scope: !874, file: !3, line: 119, type: !34)
!879 = !DILocalVariable(name: "pscr_ret__", scope: !880, file: !3, line: 119, type: !34)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 119, column: 12)
!881 = distinct !DILexicalBlock(scope: !874, file: !3, line: 119, column: 12)
!882 = !DILocalVariable(name: "__vpp_verify", scope: !883, file: !3, line: 119, type: !884)
!883 = distinct !DILexicalBlock(scope: !880, file: !3, line: 119, column: 12)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!886 = !DILocalVariable(name: "pfo_val__", scope: !887, file: !3, line: 119, type: !30)
!887 = distinct !DILexicalBlock(scope: !880, file: !3, line: 119, column: 12)
!888 = !DILocalVariable(name: "__vpp_verify", scope: !889, file: !3, line: 127, type: !884)
!889 = distinct !DILexicalBlock(scope: !890, file: !3, line: 127, column: 2)
!890 = distinct !DILexicalBlock(scope: !874, file: !3, line: 127, column: 2)
!891 = !DILocalVariable(name: "__ptr", scope: !892, file: !3, line: 127, type: !29)
!892 = distinct !DILexicalBlock(scope: !890, file: !3, line: 127, column: 2)
!893 = !DILocation(line: 116, column: 50, scope: !874)
!894 = !DILocation(line: 118, column: 2, scope: !874)
!895 = !DILocation(line: 118, column: 15, scope: !874)
!896 = !DILocation(line: 119, column: 2, scope: !874)
!897 = !DILocation(line: 119, column: 6, scope: !874)
!898 = !DILocation(line: 119, column: 12, scope: !881)
!899 = !DILocation(line: 119, column: 12, scope: !880)
!900 = !DILocation(line: 119, column: 12, scope: !883)
!901 = !DILocation(line: 119, column: 12, scope: !887)
!902 = !{i64 2152851062}
!903 = !DILocation(line: 121, column: 9, scope: !874)
!904 = !DILocation(line: 121, column: 12, scope: !874)
!905 = !DILocation(line: 121, column: 7, scope: !874)
!906 = !DILocation(line: 123, column: 19, scope: !874)
!907 = !DILocation(line: 123, column: 22, scope: !874)
!908 = !DILocation(line: 123, column: 46, scope: !874)
!909 = !DILocation(line: 123, column: 43, scope: !874)
!910 = !DILocation(line: 123, column: 51, scope: !874)
!911 = !DILocation(line: 123, column: 37, scope: !874)
!912 = !DILocation(line: 123, column: 2, scope: !874)
!913 = !DILocation(line: 123, column: 5, scope: !874)
!914 = !DILocation(line: 123, column: 17, scope: !874)
!915 = !DILocation(line: 125, column: 20, scope: !874)
!916 = !DILocation(line: 125, column: 23, scope: !874)
!917 = !DILocation(line: 125, column: 41, scope: !874)
!918 = !DILocation(line: 125, column: 38, scope: !874)
!919 = !DILocation(line: 125, column: 2, scope: !874)
!920 = !DILocation(line: 125, column: 5, scope: !874)
!921 = !DILocation(line: 125, column: 18, scope: !874)
!922 = !DILocation(line: 127, column: 45, scope: !874)
!923 = !DILocation(line: 127, column: 48, scope: !874)
!924 = !DILocation(line: 127, column: 29, scope: !874)
!925 = !DILocation(line: 127, column: 32, scope: !874)
!926 = !DILocation(line: 127, column: 43, scope: !874)
!927 = !DILocation(line: 127, column: 2, scope: !890)
!928 = !DILocation(line: 127, column: 2, scope: !889)
!929 = !DILocation(line: 127, column: 2, scope: !892)
!930 = !DILocation(line: 127, column: 27, scope: !874)
!931 = !DILocation(line: 128, column: 1, scope: !874)
!932 = distinct !DISubprogram(name: "hygon_get_topology", scope: !3, file: !3, line: 64, type: !69, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !933)
!933 = !{!934, !935, !936, !939, !941, !943, !946, !947, !948, !949, !950, !953, !956}
!934 = !DILocalVariable(name: "c", arg: 1, scope: !932, file: !3, line: 64, type: !71)
!935 = !DILocalVariable(name: "cpu", scope: !932, file: !3, line: 66, type: !34)
!936 = !DILocalVariable(name: "pscr_ret__", scope: !937, file: !3, line: 66, type: !34)
!937 = distinct !DILexicalBlock(scope: !938, file: !3, line: 66, column: 12)
!938 = distinct !DILexicalBlock(scope: !932, file: !3, line: 66, column: 12)
!939 = !DILocalVariable(name: "__vpp_verify", scope: !940, file: !3, line: 66, type: !884)
!940 = distinct !DILexicalBlock(scope: !937, file: !3, line: 66, column: 12)
!941 = !DILocalVariable(name: "pfo_val__", scope: !942, file: !3, line: 66, type: !30)
!942 = distinct !DILexicalBlock(scope: !937, file: !3, line: 66, column: 12)
!943 = !DILocalVariable(name: "err", scope: !944, file: !3, line: 70, type: !34)
!944 = distinct !DILexicalBlock(scope: !945, file: !3, line: 69, column: 41)
!945 = distinct !DILexicalBlock(scope: !932, file: !3, line: 69, column: 6)
!946 = !DILocalVariable(name: "eax", scope: !944, file: !3, line: 71, type: !30)
!947 = !DILocalVariable(name: "ebx", scope: !944, file: !3, line: 71, type: !30)
!948 = !DILocalVariable(name: "ecx", scope: !944, file: !3, line: 71, type: !30)
!949 = !DILocalVariable(name: "edx", scope: !944, file: !3, line: 71, type: !30)
!950 = !DILocalVariable(name: "value", scope: !951, file: !3, line: 99, type: !123)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 98, column: 49)
!952 = distinct !DILexicalBlock(scope: !945, file: !3, line: 98, column: 13)
!953 = !DILocalVariable(name: "__vpp_verify", scope: !954, file: !3, line: 104, type: !884)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 104, column: 3)
!955 = distinct !DILexicalBlock(scope: !951, file: !3, line: 104, column: 3)
!956 = !DILocalVariable(name: "__ptr", scope: !957, file: !3, line: 104, type: !29)
!957 = distinct !DILexicalBlock(scope: !955, file: !3, line: 104, column: 3)
!958 = !DILocation(line: 64, column: 52, scope: !932)
!959 = !DILocation(line: 66, column: 2, scope: !932)
!960 = !DILocation(line: 66, column: 6, scope: !932)
!961 = !DILocation(line: 66, column: 12, scope: !938)
!962 = !DILocation(line: 66, column: 12, scope: !937)
!963 = !DILocation(line: 66, column: 12, scope: !940)
!964 = !DILocation(line: 66, column: 12, scope: !942)
!965 = !{i64 2152830660}
!966 = !DILocation(line: 69, column: 6, scope: !932)
!967 = !DILocation(line: 69, column: 6, scope: !945)
!968 = !DILocation(line: 70, column: 3, scope: !944)
!969 = !DILocation(line: 70, column: 7, scope: !944)
!970 = !DILocation(line: 71, column: 3, scope: !944)
!971 = !DILocation(line: 71, column: 7, scope: !944)
!972 = !DILocation(line: 71, column: 12, scope: !944)
!973 = !DILocation(line: 71, column: 17, scope: !944)
!974 = !DILocation(line: 71, column: 22, scope: !944)
!975 = !DILocation(line: 73, column: 3, scope: !944)
!976 = !DILocation(line: 75, column: 20, scope: !944)
!977 = !DILocation(line: 75, column: 24, scope: !944)
!978 = !DILocation(line: 75, column: 3, scope: !944)
!979 = !DILocation(line: 75, column: 6, scope: !944)
!980 = !DILocation(line: 75, column: 18, scope: !944)
!981 = !DILocation(line: 77, column: 20, scope: !944)
!982 = !DILocation(line: 77, column: 24, scope: !944)
!983 = !DILocation(line: 77, column: 3, scope: !944)
!984 = !DILocation(line: 77, column: 6, scope: !944)
!985 = !DILocation(line: 77, column: 18, scope: !944)
!986 = !DILocation(line: 79, column: 7, scope: !987)
!987 = distinct !DILexicalBlock(scope: !944, file: !3, line: 79, column: 7)
!988 = !DILocation(line: 79, column: 24, scope: !987)
!989 = !DILocation(line: 79, column: 7, scope: !944)
!990 = !DILocation(line: 80, column: 24, scope: !987)
!991 = !DILocation(line: 80, column: 4, scope: !987)
!992 = !DILocation(line: 80, column: 7, scope: !987)
!993 = !DILocation(line: 80, column: 21, scope: !987)
!994 = !DILocation(line: 86, column: 34, scope: !944)
!995 = !DILocation(line: 86, column: 9, scope: !944)
!996 = !DILocation(line: 86, column: 7, scope: !944)
!997 = !DILocation(line: 87, column: 8, scope: !998)
!998 = distinct !DILexicalBlock(scope: !944, file: !3, line: 87, column: 7)
!999 = !DILocation(line: 87, column: 7, scope: !944)
!1000 = !DILocation(line: 88, column: 41, scope: !998)
!1001 = !DILocation(line: 88, column: 44, scope: !998)
!1002 = !DILocation(line: 88, column: 25, scope: !998)
!1003 = !DILocation(line: 88, column: 4, scope: !998)
!1004 = !DILocation(line: 88, column: 7, scope: !998)
!1005 = !DILocation(line: 88, column: 23, scope: !998)
!1006 = !DILocation(line: 94, column: 45, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !944, file: !3, line: 94, column: 7)
!1008 = !DILocation(line: 94, column: 8, scope: !1007)
!1009 = !DILocation(line: 94, column: 48, scope: !1007)
!1010 = !DILocation(line: 94, column: 51, scope: !1007)
!1011 = !DILocation(line: 94, column: 61, scope: !1007)
!1012 = !DILocation(line: 94, column: 7, scope: !944)
!1013 = !DILocation(line: 95, column: 22, scope: !1007)
!1014 = !DILocation(line: 95, column: 25, scope: !1007)
!1015 = !DILocation(line: 95, column: 32, scope: !1007)
!1016 = !DILocation(line: 95, column: 4, scope: !1007)
!1017 = !DILocation(line: 95, column: 7, scope: !1007)
!1018 = !DILocation(line: 95, column: 20, scope: !1007)
!1019 = !DILocation(line: 97, column: 31, scope: !944)
!1020 = !DILocation(line: 97, column: 34, scope: !944)
!1021 = !DILocation(line: 97, column: 3, scope: !944)
!1022 = !DILocation(line: 98, column: 2, scope: !945)
!1023 = !DILocation(line: 98, column: 2, scope: !944)
!1024 = !DILocation(line: 98, column: 13, scope: !945)
!1025 = !DILocation(line: 98, column: 13, scope: !952)
!1026 = !DILocation(line: 99, column: 3, scope: !951)
!1027 = !DILocation(line: 99, column: 7, scope: !951)
!1028 = !DILocation(line: 101, column: 3, scope: !951)
!1029 = !DILocation(line: 102, column: 19, scope: !951)
!1030 = !DILocation(line: 102, column: 25, scope: !951)
!1031 = !DILocation(line: 102, column: 3, scope: !951)
!1032 = !DILocation(line: 102, column: 6, scope: !951)
!1033 = !DILocation(line: 102, column: 17, scope: !951)
!1034 = !DILocation(line: 104, column: 30, scope: !951)
!1035 = !DILocation(line: 104, column: 33, scope: !951)
!1036 = !DILocation(line: 104, column: 3, scope: !955)
!1037 = !DILocation(line: 104, column: 3, scope: !954)
!1038 = !DILocation(line: 104, column: 3, scope: !957)
!1039 = !DILocation(line: 104, column: 28, scope: !951)
!1040 = !DILocation(line: 105, column: 2, scope: !952)
!1041 = !DILocation(line: 105, column: 2, scope: !951)
!1042 = !DILocation(line: 106, column: 3, scope: !952)
!1043 = !DILocation(line: 108, column: 6, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !932, file: !3, line: 108, column: 6)
!1045 = !DILocation(line: 108, column: 23, scope: !1044)
!1046 = !DILocation(line: 108, column: 6, scope: !932)
!1047 = !DILocation(line: 109, column: 3, scope: !1044)
!1048 = !DILocation(line: 110, column: 1, scope: !932)
!1049 = distinct !DISubprogram(name: "srat_detect_node", scope: !3, file: !3, line: 130, type: !69, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1050)
!1050 = !{!1051, !1052, !1053, !1056, !1058, !1060, !1061, !1062, !1066, !1068}
!1051 = !DILocalVariable(name: "c", arg: 1, scope: !1049, file: !3, line: 130, type: !71)
!1052 = !DILocalVariable(name: "cpu", scope: !1049, file: !3, line: 133, type: !34)
!1053 = !DILocalVariable(name: "pscr_ret__", scope: !1054, file: !3, line: 133, type: !34)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 133, column: 12)
!1055 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 133, column: 12)
!1056 = !DILocalVariable(name: "__vpp_verify", scope: !1057, file: !3, line: 133, type: !884)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 133, column: 12)
!1058 = !DILocalVariable(name: "pfo_val__", scope: !1059, file: !3, line: 133, type: !30)
!1059 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 133, column: 12)
!1060 = !DILocalVariable(name: "node", scope: !1049, file: !3, line: 134, type: !34)
!1061 = !DILocalVariable(name: "apicid", scope: !1049, file: !3, line: 135, type: !7)
!1062 = !DILocalVariable(name: "__vpp_verify", scope: !1063, file: !3, line: 139, type: !884)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 139, column: 10)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 139, column: 10)
!1065 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 138, column: 6)
!1066 = !DILocalVariable(name: "__ptr", scope: !1067, file: !3, line: 139, type: !29)
!1067 = distinct !DILexicalBlock(scope: !1064, file: !3, line: 139, column: 10)
!1068 = !DILocalVariable(name: "ht_nodeid", scope: !1069, file: !3, line: 168, type: !34)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 149, column: 26)
!1070 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 149, column: 6)
!1071 = !DILocation(line: 130, column: 50, scope: !1049)
!1072 = !DILocation(line: 133, column: 2, scope: !1049)
!1073 = !DILocation(line: 133, column: 6, scope: !1049)
!1074 = !DILocation(line: 133, column: 12, scope: !1055)
!1075 = !DILocation(line: 133, column: 12, scope: !1054)
!1076 = !DILocation(line: 133, column: 12, scope: !1057)
!1077 = !DILocation(line: 133, column: 12, scope: !1059)
!1078 = !{i64 2152855289}
!1079 = !DILocation(line: 134, column: 2, scope: !1049)
!1080 = !DILocation(line: 134, column: 6, scope: !1049)
!1081 = !DILocation(line: 135, column: 2, scope: !1049)
!1082 = !DILocation(line: 135, column: 15, scope: !1049)
!1083 = !DILocation(line: 135, column: 24, scope: !1049)
!1084 = !DILocation(line: 135, column: 27, scope: !1049)
!1085 = !DILocation(line: 137, column: 23, scope: !1049)
!1086 = !DILocation(line: 137, column: 9, scope: !1049)
!1087 = !DILocation(line: 137, column: 7, scope: !1049)
!1088 = !DILocation(line: 138, column: 6, scope: !1065)
!1089 = !DILocation(line: 138, column: 11, scope: !1065)
!1090 = !DILocation(line: 138, column: 6, scope: !1049)
!1091 = !DILocation(line: 139, column: 10, scope: !1064)
!1092 = !DILocation(line: 139, column: 10, scope: !1063)
!1093 = !DILocation(line: 139, column: 10, scope: !1067)
!1094 = !DILocation(line: 139, column: 10, scope: !1065)
!1095 = !DILocation(line: 139, column: 8, scope: !1065)
!1096 = !DILocation(line: 139, column: 3, scope: !1065)
!1097 = !DILocation(line: 146, column: 18, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1049, file: !3, line: 146, column: 6)
!1099 = !DILocation(line: 146, column: 6, scope: !1098)
!1100 = !DILocation(line: 146, column: 6, scope: !1049)
!1101 = !DILocation(line: 147, column: 15, scope: !1098)
!1102 = !DILocation(line: 147, column: 28, scope: !1098)
!1103 = !DILocation(line: 147, column: 31, scope: !1098)
!1104 = !DILocation(line: 147, column: 3, scope: !1098)
!1105 = !DILocation(line: 149, column: 7, scope: !1070)
!1106 = !DILocation(line: 149, column: 6, scope: !1049)
!1107 = !DILocation(line: 168, column: 3, scope: !1069)
!1108 = !DILocation(line: 168, column: 7, scope: !1069)
!1109 = !DILocation(line: 168, column: 19, scope: !1069)
!1110 = !DILocation(line: 168, column: 22, scope: !1069)
!1111 = !DILocation(line: 170, column: 24, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 170, column: 7)
!1113 = !DILocation(line: 170, column: 7, scope: !1112)
!1114 = !DILocation(line: 170, column: 35, scope: !1112)
!1115 = !DILocation(line: 170, column: 7, scope: !1069)
!1116 = !DILocation(line: 171, column: 28, scope: !1112)
!1117 = !DILocation(line: 171, column: 11, scope: !1112)
!1118 = !DILocation(line: 171, column: 9, scope: !1112)
!1119 = !DILocation(line: 171, column: 4, scope: !1112)
!1120 = !DILocation(line: 173, column: 8, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 173, column: 7)
!1122 = !DILocation(line: 173, column: 7, scope: !1069)
!1123 = !DILocation(line: 174, column: 23, scope: !1121)
!1124 = !DILocation(line: 174, column: 11, scope: !1121)
!1125 = !DILocation(line: 174, column: 9, scope: !1121)
!1126 = !DILocation(line: 174, column: 4, scope: !1121)
!1127 = !DILocation(line: 175, column: 2, scope: !1070)
!1128 = !DILocation(line: 175, column: 2, scope: !1069)
!1129 = !DILocation(line: 176, column: 16, scope: !1049)
!1130 = !DILocation(line: 176, column: 21, scope: !1049)
!1131 = !DILocation(line: 176, column: 2, scope: !1049)
!1132 = !DILocation(line: 178, column: 1, scope: !1049)
!1133 = !DISubprogram(name: "init_hygon_cacheinfo", scope: !58, file: !58, line: 72, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1134 = !DISubprogram(name: "msr_set_bit", scope: !491, file: !491, line: 310, type: !1135, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!34, !30, !142}
!1137 = !DISubprogram(name: "check_null_seg_clears_base", scope: !58, file: !58, line: 79, type: !69, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1138 = !DILocation(line: 397, column: 42, scope: !168)
!1139 = !DILocation(line: 399, column: 9, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !168, file: !169, line: 399, column: 9)
!1141 = !DILocation(line: 399, column: 37, scope: !168)
!1142 = !DILocation(line: 399, column: 9, scope: !168)
!1143 = !DILocation(line: 399, column: 2, scope: !168)
!1144 = distinct !DISubprogram(name: "__this_cpu_preempt_check", scope: !1145, file: !1145, line: 313, type: !1146, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1148)
!1145 = !DIFile(filename: "./include/linux/percpu-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4abdb661814e650bde1057e21ae6f562")
!1146 = !DISubroutineType(types: !1147)
!1147 = !{null, !61}
!1148 = !{!1149}
!1149 = !DILocalVariable(name: "op", arg: 1, scope: !1144, file: !1145, line: 313, type: !61)
!1150 = !DILocation(line: 313, column: 66, scope: !1144)
!1151 = !DILocation(line: 313, column: 72, scope: !1144)
!1152 = !DISubprogram(name: "detect_extended_topology", scope: !58, file: !58, line: 76, type: !1153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1153 = !DISubroutineType(types: !1154)
!1154 = !{!34, !71}
!1155 = distinct !DISubprogram(name: "get_count_order", scope: !1156, file: !1156, line: 211, type: !1157, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1159)
!1156 = !DIFile(filename: "./include/linux/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7ff773790f4c3b71576b4a48e7797457")
!1157 = !DISubroutineType(types: !1158)
!1158 = !{!34, !7}
!1159 = !{!1160}
!1160 = !DILocalVariable(name: "count", arg: 1, scope: !1155, file: !1156, line: 211, type: !7)
!1161 = !DILocation(line: 211, column: 48, scope: !1155)
!1162 = !DILocation(line: 213, column: 6, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1155, file: !1156, line: 213, column: 6)
!1164 = !DILocation(line: 213, column: 12, scope: !1163)
!1165 = !DILocation(line: 213, column: 6, scope: !1155)
!1166 = !DILocation(line: 214, column: 3, scope: !1163)
!1167 = !DILocation(line: 216, column: 13, scope: !1155)
!1168 = !DILocation(line: 216, column: 9, scope: !1155)
!1169 = !DILocation(line: 216, column: 2, scope: !1155)
!1170 = !DILocation(line: 217, column: 1, scope: !1155)
!1171 = !DISubprogram(name: "cacheinfo_hygon_init_llc_id", scope: !1172, file: !1172, line: 11, type: !1173, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1172 = !DIFile(filename: "./arch/x86/include/asm/cacheinfo.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "72510c6c59c3c1d875de31fb2baaf624")
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !71, !34}
!1175 = distinct !DISubprogram(name: "fls", scope: !518, file: !518, line: 359, type: !1157, scopeLine: 360, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1176)
!1176 = !{!1177, !1178}
!1177 = !DILocalVariable(name: "x", arg: 1, scope: !1175, file: !518, line: 359, type: !7)
!1178 = !DILocalVariable(name: "r", scope: !1175, file: !518, line: 361, type: !34)
!1179 = !DILocation(line: 359, column: 45, scope: !1175)
!1180 = !DILocation(line: 361, column: 2, scope: !1175)
!1181 = !DILocation(line: 361, column: 6, scope: !1175)
!1182 = !DILocation(line: 375, column: 14, scope: !1175)
!1183 = !DILocation(line: 373, column: 2, scope: !1175)
!1184 = !{i64 563201}
!1185 = !DILocation(line: 386, column: 9, scope: !1175)
!1186 = !DILocation(line: 386, column: 11, scope: !1175)
!1187 = !DILocation(line: 387, column: 1, scope: !1175)
!1188 = !DILocation(line: 386, column: 2, scope: !1175)
!1189 = !DISubprogram(name: "numa_cpu_node", scope: !1190, file: !1190, line: 36, type: !1191, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1190 = !DIFile(filename: "./arch/x86/include/asm/numa.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cd854ea31756e2db308aa8bc404b389b")
!1191 = !DISubroutineType(types: !1192)
!1192 = !{!34, !34}
!1193 = distinct !DISubprogram(name: "node_state", scope: !12, file: !12, line: 421, type: !1194, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!34, !34, !11}
!1196 = !{!1197, !1198}
!1197 = !DILocalVariable(name: "node", arg: 1, scope: !1193, file: !12, line: 421, type: !34)
!1198 = !DILocalVariable(name: "state", arg: 2, scope: !1193, file: !12, line: 421, type: !11)
!1199 = !DILocation(line: 421, column: 34, scope: !1193)
!1200 = !DILocation(line: 421, column: 57, scope: !1193)
!1201 = !DILocation(line: 423, column: 9, scope: !1193)
!1202 = !DILocation(line: 423, column: 2, scope: !1193)
!1203 = distinct !DISubprogram(name: "nearby_node", scope: !3, file: !3, line: 34, type: !1191, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1204 = !{!1205, !1206, !1207}
!1205 = !DILocalVariable(name: "apicid", arg: 1, scope: !1203, file: !3, line: 34, type: !34)
!1206 = !DILocalVariable(name: "i", scope: !1203, file: !3, line: 36, type: !34)
!1207 = !DILocalVariable(name: "node", scope: !1203, file: !3, line: 36, type: !34)
!1208 = !DILocation(line: 34, column: 28, scope: !1203)
!1209 = !DILocation(line: 36, column: 2, scope: !1203)
!1210 = !DILocation(line: 36, column: 6, scope: !1203)
!1211 = !DILocation(line: 36, column: 9, scope: !1203)
!1212 = !DILocation(line: 38, column: 11, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 38, column: 2)
!1214 = !DILocation(line: 38, column: 18, scope: !1213)
!1215 = !DILocation(line: 38, column: 9, scope: !1213)
!1216 = !DILocation(line: 38, column: 7, scope: !1213)
!1217 = !DILocation(line: 38, column: 23, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 38, column: 2)
!1219 = !DILocation(line: 38, column: 25, scope: !1218)
!1220 = !DILocation(line: 38, column: 2, scope: !1213)
!1221 = !DILocation(line: 39, column: 27, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 38, column: 36)
!1223 = !DILocation(line: 39, column: 10, scope: !1222)
!1224 = !DILocation(line: 39, column: 8, scope: !1222)
!1225 = !DILocation(line: 40, column: 7, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 40, column: 7)
!1227 = !DILocation(line: 40, column: 12, scope: !1226)
!1228 = !DILocation(line: 40, column: 28, scope: !1226)
!1229 = !DILocation(line: 40, column: 31, scope: !1226)
!1230 = !DILocation(line: 40, column: 7, scope: !1222)
!1231 = !DILocation(line: 41, column: 11, scope: !1226)
!1232 = !DILocation(line: 41, column: 4, scope: !1226)
!1233 = !DILocation(line: 42, column: 2, scope: !1222)
!1234 = !DILocation(line: 38, column: 32, scope: !1218)
!1235 = !DILocation(line: 38, column: 2, scope: !1218)
!1236 = distinct !{!1236, !1220, !1237, !463, !464}
!1237 = !DILocation(line: 42, column: 2, scope: !1213)
!1238 = !DILocation(line: 43, column: 11, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 43, column: 2)
!1240 = !DILocation(line: 43, column: 18, scope: !1239)
!1241 = !DILocation(line: 43, column: 9, scope: !1239)
!1242 = !DILocation(line: 43, column: 7, scope: !1239)
!1243 = !DILocation(line: 43, column: 23, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 43, column: 2)
!1245 = !DILocation(line: 43, column: 25, scope: !1244)
!1246 = !DILocation(line: 43, column: 2, scope: !1239)
!1247 = !DILocation(line: 44, column: 27, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 43, column: 48)
!1249 = !DILocation(line: 44, column: 10, scope: !1248)
!1250 = !DILocation(line: 44, column: 8, scope: !1248)
!1251 = !DILocation(line: 45, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 45, column: 7)
!1253 = !DILocation(line: 45, column: 12, scope: !1252)
!1254 = !DILocation(line: 45, column: 28, scope: !1252)
!1255 = !DILocation(line: 45, column: 31, scope: !1252)
!1256 = !DILocation(line: 45, column: 7, scope: !1248)
!1257 = !DILocation(line: 46, column: 11, scope: !1252)
!1258 = !DILocation(line: 46, column: 4, scope: !1252)
!1259 = !DILocation(line: 47, column: 2, scope: !1248)
!1260 = !DILocation(line: 43, column: 44, scope: !1244)
!1261 = !DILocation(line: 43, column: 2, scope: !1244)
!1262 = distinct !{!1262, !1246, !1263, !463, !464}
!1263 = !DILocation(line: 47, column: 2, scope: !1239)
!1264 = !DILocation(line: 48, column: 9, scope: !1203)
!1265 = !DILocation(line: 48, column: 2, scope: !1203)
!1266 = !DILocation(line: 49, column: 1, scope: !1203)
!1267 = !DISubprogram(name: "numa_set_node", scope: !1190, file: !1190, line: 54, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !34, !34}
!1270 = distinct !DISubprogram(name: "const_test_bit", scope: !1271, file: !1271, line: 166, type: !519, scopeLine: 167, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1272)
!1271 = !DIFile(filename: "./include/asm-generic/bitops/generic-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd331af855608a6be778436cb9a1294")
!1272 = !{!1273, !1274, !1275, !1276, !1277}
!1273 = !DILocalVariable(name: "nr", arg: 1, scope: !1270, file: !1271, line: 166, type: !29)
!1274 = !DILocalVariable(name: "addr", arg: 2, scope: !1270, file: !1271, line: 166, type: !521)
!1275 = !DILocalVariable(name: "p", scope: !1270, file: !1271, line: 168, type: !49)
!1276 = !DILocalVariable(name: "mask", scope: !1270, file: !1271, line: 169, type: !29)
!1277 = !DILocalVariable(name: "val", scope: !1270, file: !1271, line: 170, type: !29)
!1278 = !DILocation(line: 166, column: 30, scope: !1270)
!1279 = !DILocation(line: 166, column: 64, scope: !1270)
!1280 = !DILocation(line: 168, column: 2, scope: !1270)
!1281 = !DILocation(line: 168, column: 23, scope: !1270)
!1282 = !DILocation(line: 168, column: 50, scope: !1270)
!1283 = !DILocation(line: 168, column: 57, scope: !1270)
!1284 = !DILocation(line: 168, column: 55, scope: !1270)
!1285 = !DILocation(line: 169, column: 2, scope: !1270)
!1286 = !DILocation(line: 169, column: 16, scope: !1270)
!1287 = !DILocation(line: 169, column: 23, scope: !1270)
!1288 = !DILocation(line: 170, column: 2, scope: !1270)
!1289 = !DILocation(line: 170, column: 16, scope: !1270)
!1290 = !DILocation(line: 170, column: 23, scope: !1270)
!1291 = !DILocation(line: 170, column: 22, scope: !1270)
!1292 = !DILocation(line: 172, column: 12, scope: !1270)
!1293 = !DILocation(line: 172, column: 18, scope: !1270)
!1294 = !DILocation(line: 172, column: 16, scope: !1270)
!1295 = !DILocation(line: 172, column: 10, scope: !1270)
!1296 = !DILocation(line: 172, column: 9, scope: !1270)
!1297 = !DILocation(line: 173, column: 1, scope: !1270)
!1298 = !DILocation(line: 172, column: 2, scope: !1270)
!1299 = distinct !DISubprogram(name: "_test_bit", scope: !1300, file: !1300, line: 139, type: !519, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1301)
!1300 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!1301 = !{!1302, !1303}
!1302 = !DILocalVariable(name: "nr", arg: 1, scope: !1299, file: !1300, line: 139, type: !29)
!1303 = !DILocalVariable(name: "addr", arg: 2, scope: !1299, file: !1300, line: 139, type: !521)
!1304 = !DILocation(line: 139, column: 25, scope: !1299)
!1305 = !DILocation(line: 139, column: 59, scope: !1299)
!1306 = !DILocation(line: 141, column: 25, scope: !1299)
!1307 = !DILocation(line: 141, column: 32, scope: !1299)
!1308 = !DILocation(line: 141, column: 30, scope: !1299)
!1309 = !DILocation(line: 141, column: 2, scope: !1299)
!1310 = !DILocation(line: 142, column: 23, scope: !1299)
!1311 = !DILocation(line: 142, column: 27, scope: !1299)
!1312 = !DILocation(line: 142, column: 9, scope: !1299)
!1313 = !DILocation(line: 142, column: 2, scope: !1299)
!1314 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !622, file: !622, line: 66, type: !623, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1315)
!1315 = !{!1316, !1317}
!1316 = !DILocalVariable(name: "v", arg: 1, scope: !1314, file: !622, line: 66, type: !625)
!1317 = !DILocalVariable(name: "size", arg: 2, scope: !1314, file: !622, line: 66, type: !628)
!1318 = !DILocation(line: 66, column: 73, scope: !1314)
!1319 = !DILocation(line: 66, column: 83, scope: !1314)
!1320 = !DILocation(line: 68, column: 19, scope: !1314)
!1321 = !DILocation(line: 68, column: 22, scope: !1314)
!1322 = !DILocation(line: 68, column: 2, scope: !1314)
!1323 = !DILocation(line: 69, column: 2, scope: !1314)
!1324 = !DILocation(line: 70, column: 1, scope: !1314)
!1325 = distinct !DISubprogram(name: "kasan_check_read", scope: !665, file: !665, line: 40, type: !666, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1326)
!1326 = !{!1327, !1328}
!1327 = !DILocalVariable(name: "p", arg: 1, scope: !1325, file: !665, line: 40, type: !625)
!1328 = !DILocalVariable(name: "size", arg: 2, scope: !1325, file: !665, line: 40, type: !7)
!1329 = !DILocation(line: 40, column: 58, scope: !1325)
!1330 = !DILocation(line: 40, column: 74, scope: !1325)
!1331 = !DILocation(line: 42, column: 2, scope: !1325)
!1332 = distinct !DISubprogram(name: "__first_node", scope: !12, file: !12, line: 264, type: !1333, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1344)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!7, !1335}
!1335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1336, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1337)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "nodemask_t", file: !12, line: 99, baseType: !1338)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !12, line: 99, size: 64, elements: !1339)
!1339 = !{!1340}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1338, file: !12, line: 99, baseType: !1341, size: 64)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 64, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 1)
!1344 = !{!1345, !1346, !1348}
!1345 = !DILocalVariable(name: "srcp", arg: 1, scope: !1332, file: !12, line: 264, type: !1335)
!1346 = !DILocalVariable(name: "__UNIQUE_ID___x133", scope: !1347, file: !12, line: 266, type: !7)
!1347 = distinct !DILexicalBlock(scope: !1332, file: !12, line: 266, column: 9)
!1348 = !DILocalVariable(name: "__UNIQUE_ID___y134", scope: !1347, file: !12, line: 266, type: !7)
!1349 = !DILocation(line: 264, column: 59, scope: !1332)
!1350 = !DILocation(line: 266, column: 9, scope: !1347)
!1351 = !DILocation(line: 266, column: 9, scope: !1332)
!1352 = !DILocation(line: 266, column: 2, scope: !1332)
!1353 = distinct !DISubprogram(name: "find_first_bit", scope: !1354, file: !1354, line: 200, type: !1355, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1357)
!1354 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!1355 = !DISubroutineType(types: !1356)
!1356 = !{!29, !49, !29}
!1357 = !{!1358, !1359, !1360}
!1358 = !DILocalVariable(name: "addr", arg: 1, scope: !1353, file: !1354, line: 200, type: !49)
!1359 = !DILocalVariable(name: "size", arg: 2, scope: !1353, file: !1354, line: 200, type: !29)
!1360 = !DILocalVariable(name: "val", scope: !1361, file: !1354, line: 203, type: !29)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !1354, line: 202, column: 31)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !1354, line: 202, column: 6)
!1363 = !DILocation(line: 200, column: 51, scope: !1353)
!1364 = !DILocation(line: 200, column: 71, scope: !1353)
!1365 = !DILocation(line: 202, column: 6, scope: !1362)
!1366 = !DILocation(line: 202, column: 6, scope: !1353)
!1367 = !DILocation(line: 203, column: 3, scope: !1361)
!1368 = !DILocation(line: 203, column: 17, scope: !1361)
!1369 = !DILocation(line: 203, column: 24, scope: !1361)
!1370 = !DILocation(line: 203, column: 23, scope: !1361)
!1371 = !DILocation(line: 203, column: 31, scope: !1361)
!1372 = !DILocation(line: 203, column: 29, scope: !1361)
!1373 = !DILocation(line: 205, column: 10, scope: !1361)
!1374 = !DILocation(line: 205, column: 16, scope: !1361)
!1375 = !DILocation(line: 205, column: 29, scope: !1361)
!1376 = !DILocation(line: 205, column: 3, scope: !1361)
!1377 = !DILocation(line: 206, column: 2, scope: !1362)
!1378 = !DILocation(line: 208, column: 25, scope: !1353)
!1379 = !DILocation(line: 208, column: 31, scope: !1353)
!1380 = !DILocation(line: 208, column: 9, scope: !1353)
!1381 = !DILocation(line: 208, column: 2, scope: !1353)
!1382 = !DILocation(line: 209, column: 1, scope: !1353)
!1383 = distinct !DISubprogram(name: "variable__ffs", scope: !518, file: !518, line: 250, type: !1384, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1386)
!1384 = !DISubroutineType(types: !1385)
!1385 = !{!29, !29}
!1386 = !{!1387}
!1387 = !DILocalVariable(name: "word", arg: 1, scope: !1383, file: !518, line: 250, type: !29)
!1388 = !DILocation(line: 250, column: 66, scope: !1383)
!1389 = !DILocation(line: 254, column: 11, scope: !1383)
!1390 = !DILocation(line: 252, column: 2, scope: !1383)
!1391 = !{i64 560139}
!1392 = !DILocation(line: 255, column: 9, scope: !1383)
!1393 = !DILocation(line: 255, column: 2, scope: !1383)
!1394 = !DISubprogram(name: "_find_first_bit", scope: !1354, file: !1354, line: 21, type: !1355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1395 = distinct !DISubprogram(name: "cpuid_eax", scope: !552, file: !552, line: 94, type: !553, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1396)
!1396 = !{!1397, !1398, !1399, !1400, !1401}
!1397 = !DILocalVariable(name: "op", arg: 1, scope: !1395, file: !552, line: 94, type: !7)
!1398 = !DILocalVariable(name: "eax", scope: !1395, file: !552, line: 96, type: !7)
!1399 = !DILocalVariable(name: "ebx", scope: !1395, file: !552, line: 96, type: !7)
!1400 = !DILocalVariable(name: "ecx", scope: !1395, file: !552, line: 96, type: !7)
!1401 = !DILocalVariable(name: "edx", scope: !1395, file: !552, line: 96, type: !7)
!1402 = !DILocation(line: 94, column: 51, scope: !1395)
!1403 = !DILocation(line: 96, column: 2, scope: !1395)
!1404 = !DILocation(line: 96, column: 15, scope: !1395)
!1405 = !DILocation(line: 96, column: 20, scope: !1395)
!1406 = !DILocation(line: 96, column: 25, scope: !1395)
!1407 = !DILocation(line: 96, column: 30, scope: !1395)
!1408 = !DILocation(line: 98, column: 8, scope: !1395)
!1409 = !DILocation(line: 98, column: 2, scope: !1395)
!1410 = !DILocation(line: 100, column: 9, scope: !1395)
!1411 = !DILocation(line: 101, column: 1, scope: !1395)
!1412 = !DILocation(line: 100, column: 2, scope: !1395)

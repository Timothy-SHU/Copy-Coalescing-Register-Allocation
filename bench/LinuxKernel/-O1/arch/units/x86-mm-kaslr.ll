; ModuleID = 'arch/x86/mm/kaslr.c'
source_filename = "arch/x86/mm/kaslr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaslr_memory_region = type { ptr, ptr, i64 }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.anon.0, %struct.maple_tree, ptr, i64, i64, i64, i64, i64, ptr, %struct.atomic_t, %struct.atomic_t, ptr, i64, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.seqcount, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [52 x i64], [4 x %struct.percpu_counter], ptr, %struct.mm_context_t, i64, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.atomic_t, %struct.uprobes_state, %struct.atomic64_t, %struct.work_struct, [48 x i8] }
%struct.anon.0 = type { %struct.atomic_t, [60 x i8] }
%struct.maple_tree = type { %union.anon, i32, ptr }
%union.anon = type { %struct.spinlock }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.seqcount = type { i32 }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.mm_context_t = type { i64, %struct.atomic64_t, i64, %struct.rw_semaphore, ptr, i64, %struct.mutex, ptr, ptr, %struct.atomic_t, i16, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type { ptr }
%struct.atomic64_t = type { i64 }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.cpuinfo_x86 = type { %union.anon.5, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.7, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.5 = type { i32 }
%union.anon.7 = type { i64, [88 x i8] }
%struct.pgd_t = type { i64 }
%struct.boot_params = type { %struct.screen_info, %struct.apm_bios_info, [4 x i8], i64, %struct.ist_info, i64, [8 x i8], [16 x i8], [16 x i8], %struct.sys_desc_table, %struct.olpc_ofw_header, i32, i32, i32, [112 x i8], i32, %struct.edid_info, %struct.efi_info, i32, i32, i8, i8, i8, i8, i8, [2 x i8], i8, [1 x i8], %struct.setup_header, [36 x i8], [16 x i32], [128 x %struct.boot_e820_entry], [48 x i8], [6 x %struct.edd_info], [276 x i8] }
%struct.screen_info = type <{ i8, i8, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i16, i16, i16, i16, i32, i32, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i32, i32, [2 x i8] }>
%struct.apm_bios_info = type { i16, i16, i32, i16, i16, i16, i16, i16, i16 }
%struct.ist_info = type { i32, i32, i32, i32 }
%struct.sys_desc_table = type { i16, [14 x i8] }
%struct.olpc_ofw_header = type { i32, i32, i32, i32 }
%struct.edid_info = type { [128 x i8] }
%struct.efi_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.setup_header = type <{ i8, i16, i32, i16, i16, i16, i16, i16, i32, i16, i32, i16, i16, i8, i8, i16, i32, i32, i32, i32, i16, i8, i8, i32, i32, i32, i8, i8, i16, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32 }>
%struct.boot_e820_entry = type <{ i64, i64, i32 }>
%struct.edd_info = type { i8, i8, i16, i16, i8, i8, %struct.edd_device_params }
%struct.edd_device_params = type <{ i16, i16, i32, i32, i32, i64, i16, i32, i16, i8, i8, i16, [4 x i8], [8 x i8], %union.anon.8, %union.anon.15, i8, i8 }>
%union.anon.8 = type { %struct.anon.11 }
%struct.anon.11 = type { i64 }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { i8, i8, i16, i32, i64 }
%struct.rnd_state = type { i32, i32, i32, i32 }
%struct.p4d_t = type { i64 }
%struct.pud_t = type { i64 }

@physmem_end = hidden global i64 0, section ".data..ro_after_init", align 8, !dbg !0
@kaslr_regions = internal global [3 x %struct.kaslr_memory_region] [%struct.kaslr_memory_region { ptr @page_offset_base, ptr @physmem_end, i64 0 }, %struct.kaslr_memory_region { ptr @vmalloc_base, ptr null, i64 0 }, %struct.kaslr_memory_region { ptr @vmemmap_base, ptr null, i64 0 }], section ".init.data", align 16, !dbg !64
@page_offset_base = external dso_local global i64, align 8
@.str = private unnamed_addr constant [20 x i8] c"arch/x86/mm/kaslr.c\00", align 1, !dbg !54
@max_pfn = external dso_local global i64, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1, !dbg !59
@init_mm = external dso_local global %struct.mm_struct, align 64
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@trampoline_pgd_entry = external dso_local global %struct.pgd_t, align 8
@boot_params = external dso_local global %struct.boot_params, align 1
@vmalloc_base = external dso_local global i64, align 8
@vmemmap_base = external dso_local global i64, align 8
@phys_base = external dso_local global i64, align 8
@pgdir_shift = external dso_local global i32, align 4
@ptrs_per_p4d = external dso_local global i32, align 4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @kernel_randomize_memory() #0 section ".init.text" align 16 !dbg !83 {
entry:
  %i = alloca i64, align 8
  %vaddr_start = alloca i64, align 8
  %vaddr = alloca i64, align 8
  %rand = alloca i64, align 8
  %memory_tb = alloca i64, align 8
  %rand_state = alloca %struct.rnd_state, align 4
  %remain_entropy = alloca i64, align 8
  %vmemmap_size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %entropy = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #11, !dbg !111
  call void @llvm.dbg.declare(metadata ptr %i, metadata !87, metadata !DIExpression()), !dbg !112
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr_start) #11, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %vaddr_start, metadata !92, metadata !DIExpression()), !dbg !114
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #11, !dbg !113
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !93, metadata !DIExpression()), !dbg !115
  call void @llvm.lifetime.start.p0(i64 8, ptr %rand) #11, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %rand, metadata !94, metadata !DIExpression()), !dbg !117
  call void @llvm.lifetime.start.p0(i64 8, ptr %memory_tb) #11, !dbg !116
  call void @llvm.dbg.declare(metadata ptr %memory_tb, metadata !95, metadata !DIExpression()), !dbg !118
  call void @llvm.lifetime.start.p0(i64 16, ptr %rand_state) #11, !dbg !119
  call void @llvm.dbg.declare(metadata ptr %rand_state, metadata !96, metadata !DIExpression()), !dbg !120
  call void @llvm.lifetime.start.p0(i64 8, ptr %remain_entropy) #11, !dbg !121
  call void @llvm.dbg.declare(metadata ptr %remain_entropy, metadata !105, metadata !DIExpression()), !dbg !122
  call void @llvm.lifetime.start.p0(i64 8, ptr %vmemmap_size) #11, !dbg !123
  call void @llvm.dbg.declare(metadata ptr %vmemmap_size, metadata !106, metadata !DIExpression()), !dbg !124
  %call = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !125
  %0 = zext i1 %call to i64, !dbg !125
  %cond = select i1 %call, i64 -67272519433846784, i64 -131391639519232, !dbg !125
  store i64 %cond, ptr %vaddr_start, align 8, !dbg !126
  %1 = load i64, ptr %vaddr_start, align 8, !dbg !127
  store i64 %1, ptr %vaddr, align 8, !dbg !128
  br label %do.body, !dbg !129

do.body:                                          ; preds = %entry
  %2 = load i64, ptr %vaddr_start, align 8, !dbg !130
  %cmp = icmp uge i64 %2, -2199023255552, !dbg !130
  br i1 %cmp, label %if.then, label %if.end, !dbg !133

if.then:                                          ; preds = %do.body
  call void @__compiletime_assert_277() #13, !dbg !130, !srcloc !134
  unreachable, !dbg !130

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !133

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !133

do.end:                                           ; preds = %do.cond
  br label %do.body1, !dbg !135

do.body1:                                         ; preds = %do.end
  br label %do.cond2, !dbg !136

do.cond2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !136

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !138

do.body4:                                         ; preds = %do.end3
  br label %do.cond5, !dbg !139

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !139

do.end6:                                          ; preds = %do.cond5
  %call7 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !141
  %3 = zext i1 %call7 to i64, !dbg !141
  %cond8 = select i1 %call7, i32 52, i32 46, !dbg !141
  %sh_prom = zext i32 %cond8 to i64, !dbg !142
  %shl = shl i64 1, %sh_prom, !dbg !142
  %sub = sub i64 %shl, 1, !dbg !143
  store i64 %sub, ptr @physmem_end, align 8, !dbg !144
  %call9 = call zeroext i1 @kaslr_memory_enabled() #12, !dbg !145
  br i1 %call9, label %if.end11, label %if.then10, !dbg !147

if.then10:                                        ; preds = %do.end6
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !148

if.end11:                                         ; preds = %do.end6
  %call12 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !149
  %4 = zext i1 %call12 to i64, !dbg !149
  %cond13 = select i1 %call12, i32 52, i32 46, !dbg !149
  %sub14 = sub i32 %cond13, 40, !dbg !150
  %shl15 = shl i32 1, %sub14, !dbg !151
  %conv = sext i32 %shl15 to i64, !dbg !152
  store i64 %conv, ptr getelementptr inbounds (%struct.kaslr_memory_region, ptr @kaslr_regions, i32 0, i32 2), align 16, !dbg !153
  %call16 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !154
  %5 = zext i1 %call16 to i64, !dbg !154
  %cond18 = select i1 %call16, i64 12800, i64 32, !dbg !154
  store i64 %cond18, ptr getelementptr inbounds ([3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 1, i32 2), align 8, !dbg !155
  br label %do.body19, !dbg !156

do.body19:                                        ; preds = %if.end11
  %6 = load ptr, ptr @kaslr_regions, align 16, !dbg !157
  %cmp20 = icmp ne ptr %6, @page_offset_base, !dbg !157
  %lnot = xor i1 %cmp20, true, !dbg !157
  %lnot22 = xor i1 %lnot, true, !dbg !157
  %lnot.ext = zext i1 %lnot22 to i32, !dbg !157
  %conv23 = sext i32 %lnot.ext to i64, !dbg !157
  %expval = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !157
  %tobool = icmp ne i64 %expval, 0, !dbg !157
  br i1 %tobool, label %if.then24, label %if.end34, !dbg !160

if.then24:                                        ; preds = %do.body19
  br label %do.body25, !dbg !157

do.body25:                                        ; preds = %if.then24
  br label %do.body26, !dbg !161

do.body26:                                        ; preds = %do.body25
  br label %do.cond27, !dbg !163

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !163

do.end28:                                         ; preds = %do.cond27
  br label %do.body29, !dbg !161

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 108, i32 0, i64 12) #11, !dbg !165, !srcloc !167
  br label %do.cond30, !dbg !165

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !165

do.end31:                                         ; preds = %do.cond30
  unreachable, !dbg !161

do.cond32:                                        ; No predecessors!
  br label %do.end33, !dbg !161

do.end33:                                         ; preds = %do.cond32
  br label %if.end34, !dbg !161

if.end34:                                         ; preds = %do.end33, %do.body19
  br label %do.cond35, !dbg !160

do.cond35:                                        ; preds = %if.end34
  br label %do.end36, !dbg !160

do.end36:                                         ; preds = %do.cond35
  %7 = load i64, ptr @max_pfn, align 8, !dbg !168
  %shl37 = shl i64 %7, 12, !dbg !168
  %add = add i64 %shl37, 1099511627776, !dbg !168
  %sub38 = sub i64 %add, 1, !dbg !168
  %div = udiv i64 %sub38, 1099511627776, !dbg !168
  %add39 = add i64 %div, 0, !dbg !169
  store i64 %add39, ptr %memory_tb, align 8, !dbg !170
  %8 = load i64, ptr %memory_tb, align 8, !dbg !171
  %9 = load i64, ptr getelementptr inbounds (%struct.kaslr_memory_region, ptr @kaslr_regions, i32 0, i32 2), align 16, !dbg !173
  %cmp40 = icmp ult i64 %8, %9, !dbg !174
  br i1 %cmp40, label %if.then42, label %if.end43, !dbg !175

if.then42:                                        ; preds = %do.end36
  %10 = load i64, ptr %memory_tb, align 8, !dbg !176
  store i64 %10, ptr getelementptr inbounds (%struct.kaslr_memory_region, ptr @kaslr_regions, i32 0, i32 2), align 16, !dbg !177
  br label %if.end43, !dbg !178

if.end43:                                         ; preds = %if.then42, %do.end36
  %11 = load i64, ptr getelementptr inbounds (%struct.kaslr_memory_region, ptr @kaslr_regions, i32 0, i32 2), align 16, !dbg !179
  %shl44 = shl i64 %11, 28, !dbg !180
  %mul = mul i64 %shl44, 64, !dbg !181
  store i64 %mul, ptr %vmemmap_size, align 8, !dbg !182
  %12 = load i64, ptr %vmemmap_size, align 8, !dbg !183
  %add45 = add i64 %12, 1099511627776, !dbg !183
  %sub46 = sub i64 %add45, 1, !dbg !183
  %div47 = udiv i64 %sub46, 1099511627776, !dbg !183
  store i64 %div47, ptr getelementptr inbounds ([3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 2, i32 2), align 16, !dbg !184
  %13 = load i64, ptr %vaddr_start, align 8, !dbg !185
  %sub48 = sub i64 -2199023255552, %13, !dbg !186
  store i64 %sub48, ptr %remain_entropy, align 8, !dbg !187
  store i64 0, ptr %i, align 8, !dbg !188
  br label %for.cond, !dbg !190

for.cond:                                         ; preds = %for.inc, %if.end43
  %14 = load i64, ptr %i, align 8, !dbg !191
  %cmp49 = icmp ult i64 %14, 3, !dbg !193
  br i1 %cmp49, label %for.body, label %for.end, !dbg !194

for.body:                                         ; preds = %for.cond
  %15 = load i64, ptr %i, align 8, !dbg !195
  %arrayidx = getelementptr [3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 %15, !dbg !196
  %call51 = call i64 @get_padding(ptr noundef %arrayidx) #12, !dbg !197
  %16 = load i64, ptr %remain_entropy, align 8, !dbg !198
  %sub52 = sub i64 %16, %call51, !dbg !198
  store i64 %sub52, ptr %remain_entropy, align 8, !dbg !198
  br label %for.inc, !dbg !199

for.inc:                                          ; preds = %for.body
  %17 = load i64, ptr %i, align 8, !dbg !200
  %inc = add i64 %17, 1, !dbg !200
  store i64 %inc, ptr %i, align 8, !dbg !200
  br label %for.cond, !dbg !201, !llvm.loop !202

for.end:                                          ; preds = %for.cond
  %call53 = call i64 @kaslr_get_random_long(ptr noundef @.str.1) #12, !dbg !206
  call void @prandom_seed_state(ptr noundef %rand_state, i64 noundef %call53) #12, !dbg !207
  store i64 0, ptr %i, align 8, !dbg !208
  br label %for.cond54, !dbg !209

for.cond54:                                       ; preds = %for.inc78, %for.end
  %18 = load i64, ptr %i, align 8, !dbg !210
  %cmp55 = icmp ult i64 %18, 3, !dbg !211
  br i1 %cmp55, label %for.body57, label %for.end80, !dbg !212

for.body57:                                       ; preds = %for.cond54
  call void @llvm.lifetime.start.p0(i64 8, ptr %entropy) #11, !dbg !213
  call void @llvm.dbg.declare(metadata ptr %entropy, metadata !107, metadata !DIExpression()), !dbg !214
  %19 = load i64, ptr %remain_entropy, align 8, !dbg !215
  %20 = load i64, ptr %i, align 8, !dbg !216
  %sub58 = sub i64 3, %20, !dbg !217
  %div59 = udiv i64 %19, %sub58, !dbg !218
  store i64 %div59, ptr %entropy, align 8, !dbg !219
  call void @prandom_bytes_state(ptr noundef %rand_state, ptr noundef %rand, i64 noundef 8) #12, !dbg !220
  %21 = load i64, ptr %rand, align 8, !dbg !221
  %22 = load i64, ptr %entropy, align 8, !dbg !222
  %add60 = add i64 %22, 1, !dbg !223
  %rem = urem i64 %21, %add60, !dbg !224
  %and = and i64 %rem, -1073741824, !dbg !225
  store i64 %and, ptr %entropy, align 8, !dbg !226
  %23 = load i64, ptr %entropy, align 8, !dbg !227
  %24 = load i64, ptr %vaddr, align 8, !dbg !228
  %add61 = add i64 %24, %23, !dbg !228
  store i64 %add61, ptr %vaddr, align 8, !dbg !228
  %25 = load i64, ptr %vaddr, align 8, !dbg !229
  %26 = load i64, ptr %i, align 8, !dbg !230
  %arrayidx62 = getelementptr [3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 %26, !dbg !231
  %base = getelementptr inbounds %struct.kaslr_memory_region, ptr %arrayidx62, i32 0, i32 0, !dbg !232
  %27 = load ptr, ptr %base, align 8, !dbg !232
  store i64 %25, ptr %27, align 8, !dbg !233
  %28 = load i64, ptr %i, align 8, !dbg !234
  %arrayidx63 = getelementptr [3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 %28, !dbg !235
  %call64 = call i64 @get_padding(ptr noundef %arrayidx63) #12, !dbg !236
  %29 = load i64, ptr %vaddr, align 8, !dbg !237
  %add65 = add i64 %29, %call64, !dbg !237
  store i64 %add65, ptr %vaddr, align 8, !dbg !237
  %30 = load i64, ptr %i, align 8, !dbg !238
  %arrayidx66 = getelementptr [3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 %30, !dbg !240
  %end = getelementptr inbounds %struct.kaslr_memory_region, ptr %arrayidx66, i32 0, i32 1, !dbg !241
  %31 = load ptr, ptr %end, align 8, !dbg !241
  %tobool67 = icmp ne ptr %31, null, !dbg !240
  br i1 %tobool67, label %if.then68, label %if.end73, !dbg !242

if.then68:                                        ; preds = %for.body57
  %32 = load i64, ptr %vaddr, align 8, !dbg !243
  %sub69 = sub i64 %32, 1, !dbg !243
  %call70 = call i64 @__phys_addr_nodebug(i64 noundef %sub69) #12, !dbg !243
  %33 = load i64, ptr %i, align 8, !dbg !244
  %arrayidx71 = getelementptr [3 x %struct.kaslr_memory_region], ptr @kaslr_regions, i64 0, i64 %33, !dbg !245
  %end72 = getelementptr inbounds %struct.kaslr_memory_region, ptr %arrayidx71, i32 0, i32 1, !dbg !246
  %34 = load ptr, ptr %end72, align 8, !dbg !246
  store i64 %call70, ptr %34, align 8, !dbg !247
  br label %if.end73, !dbg !248

if.end73:                                         ; preds = %if.then68, %for.body57
  %35 = load i64, ptr %vaddr, align 8, !dbg !249
  %add74 = add i64 %35, 1, !dbg !249
  %sub75 = sub i64 %add74, 1, !dbg !249
  %or = or i64 %sub75, 1073741823, !dbg !249
  %add76 = add i64 %or, 1, !dbg !249
  store i64 %add76, ptr %vaddr, align 8, !dbg !250
  %36 = load i64, ptr %entropy, align 8, !dbg !251
  %37 = load i64, ptr %remain_entropy, align 8, !dbg !252
  %sub77 = sub i64 %37, %36, !dbg !252
  store i64 %sub77, ptr %remain_entropy, align 8, !dbg !252
  call void @llvm.lifetime.end.p0(i64 8, ptr %entropy) #11, !dbg !253
  br label %for.inc78, !dbg !254

for.inc78:                                        ; preds = %if.end73
  %38 = load i64, ptr %i, align 8, !dbg !255
  %inc79 = add i64 %38, 1, !dbg !255
  store i64 %inc79, ptr %i, align 8, !dbg !255
  br label %for.cond54, !dbg !256, !llvm.loop !257

for.end80:                                        ; preds = %for.cond54
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !259
  br label %cleanup, !dbg !259

cleanup:                                          ; preds = %for.end80, %if.then10
  call void @llvm.lifetime.end.p0(i64 8, ptr %vmemmap_size) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %remain_entropy) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 16, ptr %rand_state) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %memory_tb) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %rand) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr_start) #11, !dbg !259
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #11, !dbg !259
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !259

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #3 align 16 !dbg !260 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !270, metadata !DIExpression()), !dbg !273
  %0 = load i16, ptr %bit.addr, align 2, !dbg !274
  %1 = load i16, ptr %bit.addr, align 2, !dbg !275
  %conv = zext i16 %1 to i32, !dbg !275
  %and = and i32 %conv, 7, !dbg !276
  %shl = shl i32 1, %and, !dbg !277
  %2 = load i16, ptr %bit.addr, align 2, !dbg !278
  %conv1 = zext i16 %2 to i32, !dbg !278
  %shr = ashr i32 %conv1, 3, !dbg !279
  %idxprom = sext i32 %shr to i64, !dbg !280
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !280
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #11
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !281, !srcloc !282

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !281

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !271), !dbg !283
  store i1 true, ptr %retval, align 1, !dbg !284
  br label %return, !dbg !284

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !272), !dbg !285
  store i1 false, ptr %retval, align 1, !dbg !286
  br label %return, !dbg !286

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !287
  ret i1 %3, !dbg !287
}

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !288 dso_local void @__compiletime_assert_277() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kaslr_memory_enabled() #5 align 16 !dbg !289 {
entry:
  %call = call zeroext i1 @kaslr_enabled() #12, !dbg !293
  br i1 %call, label %land.rhs, label %land.end, !dbg !294

land.rhs:                                         ; preds = %entry
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ true, %land.rhs ], !dbg !295
  ret i1 %0, !dbg !296
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_padding(ptr noundef %region) #5 align 16 !dbg !297 {
entry:
  %region.addr = alloca ptr, align 8
  store ptr %region, ptr %region.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %region.addr, metadata !302, metadata !DIExpression()), !dbg !303
  %0 = load ptr, ptr %region.addr, align 8, !dbg !304
  %size_tb = getelementptr inbounds %struct.kaslr_memory_region, ptr %0, i32 0, i32 2, !dbg !305
  %1 = load i64, ptr %size_tb, align 8, !dbg !305
  %shl = shl i64 %1, 40, !dbg !306
  ret i64 %shl, !dbg !307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prandom_seed_state(ptr noundef %state, i64 noundef %seed) #5 align 16 !dbg !308 {
entry:
  %state.addr = alloca ptr, align 8
  %seed.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !313, metadata !DIExpression()), !dbg !317
  store i64 %seed, ptr %seed.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seed.addr, metadata !314, metadata !DIExpression()), !dbg !318
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %i, metadata !315, metadata !DIExpression()), !dbg !320
  %0 = load i64, ptr %seed.addr, align 8, !dbg !321
  %shr = lshr i64 %0, 32, !dbg !322
  %1 = load i64, ptr %seed.addr, align 8, !dbg !323
  %shl = shl i64 %1, 10, !dbg !324
  %xor = xor i64 %shr, %shl, !dbg !325
  %2 = load i64, ptr %seed.addr, align 8, !dbg !326
  %xor1 = xor i64 %xor, %2, !dbg !327
  %and = and i64 %xor1, 4294967295, !dbg !328
  %conv = trunc i64 %and to i32, !dbg !329
  store i32 %conv, ptr %i, align 4, !dbg !320
  %3 = load i32, ptr %i, align 4, !dbg !330
  %call = call i32 @__seed(i32 noundef %3, i32 noundef 2) #12, !dbg !331
  %4 = load ptr, ptr %state.addr, align 8, !dbg !332
  %s1 = getelementptr inbounds %struct.rnd_state, ptr %4, i32 0, i32 0, !dbg !333
  store i32 %call, ptr %s1, align 4, !dbg !334
  %5 = load i32, ptr %i, align 4, !dbg !335
  %call2 = call i32 @__seed(i32 noundef %5, i32 noundef 8) #12, !dbg !336
  %6 = load ptr, ptr %state.addr, align 8, !dbg !337
  %s2 = getelementptr inbounds %struct.rnd_state, ptr %6, i32 0, i32 1, !dbg !338
  store i32 %call2, ptr %s2, align 4, !dbg !339
  %7 = load i32, ptr %i, align 4, !dbg !340
  %call3 = call i32 @__seed(i32 noundef %7, i32 noundef 16) #12, !dbg !341
  %8 = load ptr, ptr %state.addr, align 8, !dbg !342
  %s3 = getelementptr inbounds %struct.rnd_state, ptr %8, i32 0, i32 2, !dbg !343
  store i32 %call3, ptr %s3, align 4, !dbg !344
  %9 = load i32, ptr %i, align 4, !dbg !345
  %call4 = call i32 @__seed(i32 noundef %9, i32 noundef 128) #12, !dbg !346
  %10 = load ptr, ptr %state.addr, align 8, !dbg !347
  %s4 = getelementptr inbounds %struct.rnd_state, ptr %10, i32 0, i32 3, !dbg !348
  store i32 %call4, ptr %s4, align 4, !dbg !349
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11, !dbg !350
  ret void, !dbg !350
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !351 dso_local i64 @kaslr_get_random_long(ptr noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !355 dso_local void @prandom_bytes_state(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #3 align 16 !dbg !358 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !363, metadata !DIExpression()), !dbg !365
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #11, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %y, metadata !364, metadata !DIExpression()), !dbg !367
  %0 = load i64, ptr %x.addr, align 8, !dbg !368
  %sub = sub i64 %0, -2147483648, !dbg !369
  store i64 %sub, ptr %y, align 8, !dbg !367
  %1 = load i64, ptr %y, align 8, !dbg !370
  %2 = load i64, ptr %x.addr, align 8, !dbg !371
  %3 = load i64, ptr %y, align 8, !dbg !372
  %cmp = icmp ugt i64 %2, %3, !dbg !373
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !374

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !375
  br label %cond.end, !dbg !374

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !376
  %sub1 = sub i64 -2147483648, %5, !dbg !377
  br label %cond.end, !dbg !374

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !374
  %add = add i64 %1, %cond, !dbg !378
  store i64 %add, ptr %x.addr, align 8, !dbg !379
  %6 = load i64, ptr %x.addr, align 8, !dbg !380
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #11, !dbg !381
  ret i64 %6, !dbg !382
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_trampoline_kaslr() #0 section ".init.text" align 16 !dbg !383 {
entry:
  %pud_page_tramp = alloca ptr, align 8
  %pud = alloca ptr, align 8
  %pud_tramp = alloca ptr, align 8
  %p4d_page_tramp = alloca ptr, align 8
  %p4d = alloca ptr, align 8
  %p4d_tramp = alloca ptr, align 8
  %paddr = alloca i64, align 8
  %vaddr = alloca i64, align 8
  %pgd = alloca ptr, align 8
  %agg.tmp = alloca %struct.p4d_t, align 8
  %tmp = alloca %struct.pgd_t, align 8
  %tmp21 = alloca %struct.pgd_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_page_tramp) #11, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %pud_page_tramp, metadata !385, metadata !DIExpression()), !dbg !395
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud) #11, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %pud, metadata !386, metadata !DIExpression()), !dbg !396
  call void @llvm.lifetime.start.p0(i64 8, ptr %pud_tramp) #11, !dbg !394
  call void @llvm.dbg.declare(metadata ptr %pud_tramp, metadata !387, metadata !DIExpression()), !dbg !397
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d_page_tramp) #11, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %p4d_page_tramp, metadata !388, metadata !DIExpression()), !dbg !399
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d) #11, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !389, metadata !DIExpression()), !dbg !400
  call void @llvm.lifetime.start.p0(i64 8, ptr %p4d_tramp) #11, !dbg !398
  call void @llvm.dbg.declare(metadata ptr %p4d_tramp, metadata !390, metadata !DIExpression()), !dbg !401
  call void @llvm.lifetime.start.p0(i64 8, ptr %paddr) #11, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %paddr, metadata !391, metadata !DIExpression()), !dbg !403
  call void @llvm.lifetime.start.p0(i64 8, ptr %vaddr) #11, !dbg !402
  call void @llvm.dbg.declare(metadata ptr %vaddr, metadata !392, metadata !DIExpression()), !dbg !404
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !405
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !393, metadata !DIExpression()), !dbg !406
  %call = call ptr @alloc_low_page() #12, !dbg !407
  store ptr %call, ptr %pud_page_tramp, align 8, !dbg !408
  store i64 0, ptr %paddr, align 8, !dbg !409
  %0 = load i64, ptr %paddr, align 8, !dbg !410
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !410
  %add = add i64 %0, %1, !dbg !410
  %2 = inttoptr i64 %add to ptr, !dbg !410
  %3 = ptrtoint ptr %2 to i64, !dbg !411
  store i64 %3, ptr %vaddr, align 8, !dbg !412
  %4 = load ptr, ptr getelementptr inbounds (%struct.anon, ptr @init_mm, i32 0, i32 8), align 64, !dbg !413
  %5 = load i64, ptr %vaddr, align 8, !dbg !413
  %call1 = call ptr @pgd_offset_pgd(ptr noundef %4, i64 noundef %5) #12, !dbg !413
  store ptr %call1, ptr %pgd, align 8, !dbg !414
  %6 = load ptr, ptr %pgd, align 8, !dbg !415
  %7 = load i64, ptr %vaddr, align 8, !dbg !416
  %call2 = call ptr @p4d_offset(ptr noundef %6, i64 noundef %7) #12, !dbg !417
  store ptr %call2, ptr %p4d, align 8, !dbg !418
  %8 = load ptr, ptr %p4d, align 8, !dbg !419
  %9 = load i64, ptr %vaddr, align 8, !dbg !420
  %call3 = call ptr @pud_offset(ptr noundef %8, i64 noundef %9) #12, !dbg !421
  store ptr %call3, ptr %pud, align 8, !dbg !422
  %10 = load ptr, ptr %pud_page_tramp, align 8, !dbg !423
  %11 = load i64, ptr %paddr, align 8, !dbg !424
  %call4 = call i64 @pud_index(i64 noundef %11) #12, !dbg !425
  %add.ptr = getelementptr %struct.pud_t, ptr %10, i64 %call4, !dbg !426
  store ptr %add.ptr, ptr %pud_tramp, align 8, !dbg !427
  %12 = load ptr, ptr %pud_tramp, align 8, !dbg !428
  %13 = load ptr, ptr %pud, align 8, !dbg !429
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %13, i64 8, i1 false), !dbg !430
  br i1 false, label %cond.true, label %cond.false, !dbg !431

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.else, !dbg !432

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true5, label %cond.false9, !dbg !431

cond.true5:                                       ; preds = %cond.false
  br i1 false, label %cond.true6, label %cond.false7, !dbg !432

cond.true6:                                       ; preds = %cond.true5
  br i1 true, label %if.then, label %if.else, !dbg !432

cond.false7:                                      ; preds = %cond.true5
  %call8 = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !432
  br i1 %call8, label %if.then, label %if.else, !dbg !432

cond.false9:                                      ; preds = %cond.false
  %call10 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !432
  br i1 %call10, label %if.then, label %if.else, !dbg !431

if.then:                                          ; preds = %cond.false9, %cond.false7, %cond.true6, %cond.true
  %call11 = call ptr @alloc_low_page() #12, !dbg !434
  store ptr %call11, ptr %p4d_page_tramp, align 8, !dbg !436
  %14 = load ptr, ptr %p4d_page_tramp, align 8, !dbg !437
  %15 = load i64, ptr %paddr, align 8, !dbg !438
  %call12 = call i64 @p4d_index(i64 noundef %15) #12, !dbg !439
  %add.ptr13 = getelementptr %struct.p4d_t, ptr %14, i64 %call12, !dbg !440
  store ptr %add.ptr13, ptr %p4d_tramp, align 8, !dbg !441
  %16 = load ptr, ptr %p4d_tramp, align 8, !dbg !442
  %17 = load ptr, ptr %pud_page_tramp, align 8, !dbg !442
  %18 = ptrtoint ptr %17 to i64, !dbg !442
  %call14 = call i64 @__phys_addr_nodebug(i64 noundef %18) #12, !dbg !442
  %or = or i64 99, %call14, !dbg !442
  %call15 = call i64 @native_make_p4d(i64 noundef %or) #12, !dbg !442
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !442
  store i64 %call15, ptr %coerce.dive, align 8, !dbg !442
  %coerce.dive16 = getelementptr inbounds %struct.p4d_t, ptr %agg.tmp, i32 0, i32 0, !dbg !442
  %19 = load i64, ptr %coerce.dive16, align 8, !dbg !442
  call void @native_set_p4d(ptr noundef %16, i64 %19) #12, !dbg !442
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !443
  %20 = load ptr, ptr %p4d_page_tramp, align 8, !dbg !443
  %21 = ptrtoint ptr %20 to i64, !dbg !443
  %call17 = call i64 @__phys_addr_nodebug(i64 noundef %21) #12, !dbg !443
  %or18 = or i64 99, %call17, !dbg !443
  %call19 = call i64 @native_make_pgd(i64 noundef %or18) #12, !dbg !443
  %coerce.dive20 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !443
  store i64 %call19, ptr %coerce.dive20, align 8, !dbg !443
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @trampoline_pgd_entry, ptr align 8 %tmp, i64 8, i1 false), !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !443
  br label %if.end, !dbg !444

if.else:                                          ; preds = %cond.false9, %cond.false7, %cond.true6, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp21) #11, !dbg !445
  %22 = load ptr, ptr %pud_page_tramp, align 8, !dbg !445
  %23 = ptrtoint ptr %22 to i64, !dbg !445
  %call22 = call i64 @__phys_addr_nodebug(i64 noundef %23) #12, !dbg !445
  %or23 = or i64 99, %call22, !dbg !445
  %call24 = call i64 @native_make_pgd(i64 noundef %or23) #12, !dbg !445
  %coerce.dive25 = getelementptr inbounds %struct.pgd_t, ptr %tmp21, i32 0, i32 0, !dbg !445
  store i64 %call24, ptr %coerce.dive25, align 8, !dbg !445
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @trampoline_pgd_entry, ptr align 8 %tmp21, i64 8, i1 false), !dbg !445
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp21) #11, !dbg !445
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %vaddr) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %paddr) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d_tramp) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %p4d_page_tramp) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_tramp) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud) #11, !dbg !447
  call void @llvm.lifetime.end.p0(i64 8, ptr %pud_page_tramp) #11, !dbg !447
  ret void, !dbg !447
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_low_page() #5 align 16 !dbg !448 {
entry:
  %call = call ptr @alloc_low_pages(i32 noundef 1) #12, !dbg !452
  ret ptr %call, !dbg !453
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pgd_offset_pgd(ptr noundef %pgd, i64 noundef %address) #5 align 16 !dbg !454 {
entry:
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !459, metadata !DIExpression()), !dbg !461
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !460, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !463
  %1 = load i64, ptr %address.addr, align 8, !dbg !464
  %2 = load i32, ptr @pgdir_shift, align 4, !dbg !464
  %sh_prom = zext i32 %2 to i64, !dbg !464
  %shr = lshr i64 %1, %sh_prom, !dbg !464
  %and = and i64 %shr, 511, !dbg !464
  %add.ptr = getelementptr %struct.pgd_t, ptr %0, i64 %and, !dbg !465
  ret ptr %add.ptr, !dbg !466
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_offset(ptr noundef %pgd, i64 noundef %address) #5 align 16 !dbg !467 {
entry:
  %retval = alloca ptr, align 8
  %pgd.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %pgd, ptr %pgd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd.addr, metadata !472, metadata !DIExpression()), !dbg !474
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !473, metadata !DIExpression()), !dbg !475
  br i1 false, label %cond.true, label %cond.false, !dbg !476

cond.true:                                        ; preds = %entry
  br i1 false, label %if.end, label %if.then, !dbg !477

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !476

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !477

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.end, label %if.then, !dbg !477

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !477
  br i1 %call, label %if.end, label %if.then, !dbg !477

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !477
  br i1 %call5, label %if.end, label %if.then, !dbg !476

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %0 = load ptr, ptr %pgd.addr, align 8, !dbg !479
  store ptr %0, ptr %retval, align 8, !dbg !480
  br label %return, !dbg !480

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  %1 = load ptr, ptr %pgd.addr, align 8, !dbg !481
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %1, i32 0, i32 0, !dbg !482
  %2 = load i64, ptr %coerce.dive, align 8, !dbg !482
  %call6 = call i64 @pgd_page_vaddr(i64 %2) #12, !dbg !482
  %3 = inttoptr i64 %call6 to ptr, !dbg !483
  %4 = load i64, ptr %address.addr, align 8, !dbg !484
  %call7 = call i64 @p4d_index(i64 noundef %4) #12, !dbg !485
  %add.ptr = getelementptr %struct.p4d_t, ptr %3, i64 %call7, !dbg !486
  store ptr %add.ptr, ptr %retval, align 8, !dbg !487
  br label %return, !dbg !487

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !488
  ret ptr %5, !dbg !488
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @pud_offset(ptr noundef %p4d, i64 noundef %address) #5 align 16 !dbg !489 {
entry:
  %p4d.addr = alloca ptr, align 8
  %address.addr = alloca i64, align 8
  store ptr %p4d, ptr %p4d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d.addr, metadata !493, metadata !DIExpression()), !dbg !495
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !494, metadata !DIExpression()), !dbg !496
  %0 = load ptr, ptr %p4d.addr, align 8, !dbg !497
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %0, i32 0, i32 0, !dbg !498
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !498
  %call = call ptr @p4d_pgtable(i64 %1) #12, !dbg !498
  %2 = load i64, ptr %address.addr, align 8, !dbg !499
  %call1 = call i64 @pud_index(i64 noundef %2) #12, !dbg !500
  %add.ptr = getelementptr %struct.pud_t, ptr %call, i64 %call1, !dbg !501
  ret ptr %add.ptr, !dbg !502
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pud_index(i64 noundef %address) #5 align 16 !dbg !503 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !505, metadata !DIExpression()), !dbg !506
  %0 = load i64, ptr %address.addr, align 8, !dbg !507
  %shr = lshr i64 %0, 30, !dbg !508
  %and = and i64 %shr, 511, !dbg !509
  ret i64 %and, !dbg !510
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !511 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !519, metadata !DIExpression()), !dbg !521
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !520, metadata !DIExpression()), !dbg !522
  %0 = load i64, ptr %nr.addr, align 8, !dbg !523
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !524
  br i1 %1, label %cond.true, label %cond.false, !dbg !524

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !525
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !526
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !527
  %conv = zext i1 %call to i32, !dbg !527
  br label %cond.end, !dbg !524

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !528
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !529
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !530
  %conv2 = zext i1 %call1 to i32, !dbg !530
  br label %cond.end, !dbg !524

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !524
  %tobool = icmp ne i32 %cond, 0, !dbg !524
  ret i1 %tobool, !dbg !531
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_index(i64 noundef %address) #5 align 16 !dbg !532 {
entry:
  %address.addr = alloca i64, align 8
  store i64 %address, ptr %address.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %address.addr, metadata !534, metadata !DIExpression()), !dbg !535
  %0 = load i64, ptr %address.addr, align 8, !dbg !536
  %shr = lshr i64 %0, 39, !dbg !537
  %1 = load i32, ptr @ptrs_per_p4d, align 4, !dbg !538
  %sub = sub i32 %1, 1, !dbg !539
  %conv = zext i32 %sub to i64, !dbg !540
  %and = and i64 %shr, %conv, !dbg !541
  ret i64 %and, !dbg !542
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_set_p4d(ptr noundef %p4dp, i64 %p4d.coerce) #5 align 16 !dbg !543 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %p4dp.addr = alloca ptr, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca %struct.pgd_t, align 8
  %tmp16 = alloca %struct.pgd_t, align 8
  %tmp25 = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  store ptr %p4dp, ptr %p4dp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p4dp.addr, metadata !548, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !549, metadata !DIExpression()), !dbg !552
  call void @llvm.lifetime.start.p0(i64 8, ptr %pgd) #11, !dbg !553
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !550, metadata !DIExpression()), !dbg !554
  br i1 false, label %cond.true, label %cond.false, !dbg !555

cond.true:                                        ; preds = %entry
  br i1 false, label %if.then, label %if.end, !dbg !556

cond.false:                                       ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false4, !dbg !555

cond.true1:                                       ; preds = %cond.false
  br i1 false, label %cond.true2, label %cond.false3, !dbg !556

cond.true2:                                       ; preds = %cond.true1
  br i1 true, label %if.then, label %if.end, !dbg !556

cond.false3:                                      ; preds = %cond.true1
  %call = call zeroext i1 @arch_test_bit(i64 noundef 528, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !556
  br i1 %call, label %if.then, label %if.end, !dbg !556

cond.false4:                                      ; preds = %cond.false
  %call5 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 528) #12, !dbg !556
  br i1 %call5, label %if.then, label %if.end, !dbg !555

if.then:                                          ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  br label %do.body, !dbg !558

do.body:                                          ; preds = %if.then
  br label %do.body6, !dbg !560

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !562

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !562

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !560

do.body7:                                         ; preds = %do.end
  %0 = load ptr, ptr %p4dp.addr, align 8, !dbg !564
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %p4d, i64 8, i1 true), !dbg !564
  br label %do.cond8, !dbg !564

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !564

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !560

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !560

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !566

if.end:                                           ; preds = %cond.false4, %cond.false3, %cond.true2, %cond.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #11, !dbg !567
  %coerce.dive12 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !568
  %1 = load i64, ptr %coerce.dive12, align 8, !dbg !568
  %call13 = call i64 @native_p4d_val(i64 %1) #12, !dbg !568
  %call14 = call i64 @native_make_pgd(i64 noundef %call13) #12, !dbg !567
  %coerce.dive15 = getelementptr inbounds %struct.pgd_t, ptr %tmp, i32 0, i32 0, !dbg !567
  store i64 %call14, ptr %coerce.dive15, align 8, !dbg !567
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp, i64 8, i1 false), !dbg !567
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #11, !dbg !567
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp16) #11, !dbg !569
  %2 = load ptr, ptr %p4dp.addr, align 8, !dbg !570
  %coerce.dive17 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !569
  %3 = load i64, ptr %coerce.dive17, align 8, !dbg !569
  %call18 = call i64 @pti_set_user_pgtbl(ptr noundef %2, i64 %3) #12, !dbg !569
  %coerce.dive19 = getelementptr inbounds %struct.pgd_t, ptr %tmp16, i32 0, i32 0, !dbg !569
  store i64 %call18, ptr %coerce.dive19, align 8, !dbg !569
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pgd, ptr align 8 %tmp16, i64 8, i1 false), !dbg !569
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp16) #11, !dbg !569
  br label %do.body20, !dbg !571

do.body20:                                        ; preds = %if.end
  br label %do.body21, !dbg !572

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !574

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !574

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !572

do.body24:                                        ; preds = %do.end23
  %4 = load ptr, ptr %p4dp.addr, align 8, !dbg !576
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp25) #11, !dbg !576
  %coerce.dive26 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !576
  %5 = load i64, ptr %coerce.dive26, align 8, !dbg !576
  %call27 = call i64 @native_pgd_val(i64 %5) #12, !dbg !576
  %call28 = call i64 @native_make_p4d(i64 noundef %call27) #12, !dbg !576
  %coerce.dive29 = getelementptr inbounds %struct.p4d_t, ptr %tmp25, i32 0, i32 0, !dbg !576
  store volatile i64 %call28, ptr %coerce.dive29, align 8, !dbg !576
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %4, ptr align 8 %tmp25, i64 8, i1 true), !dbg !576
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp25) #11, !dbg !576
  br label %do.cond30, !dbg !576

do.cond30:                                        ; preds = %do.body24
  br label %do.end31, !dbg !576

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !572

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !572

do.end33:                                         ; preds = %do.cond32
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !578
  br label %cleanup, !dbg !578

cleanup:                                          ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %pgd) #11, !dbg !578
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !578

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_p4d(i64 noundef %val) #5 align 16 !dbg !579 {
entry:
  %retval = alloca %struct.p4d_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %p4d = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !585
  %0 = load i64, ptr %val.addr, align 8, !dbg !586
  store i64 %0, ptr %p4d, align 8, !dbg !585
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %retval, i32 0, i32 0, !dbg !587
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !587
  ret i64 %1, !dbg !587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_make_pgd(i64 noundef %val) #5 align 16 !dbg !588 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !592, metadata !DIExpression()), !dbg !593
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !594
  %0 = load i64, ptr %val.addr, align 8, !dbg !595
  %and = and i64 %0, -1, !dbg !596
  store i64 %and, ptr %pgd, align 8, !dbg !594
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !597
  %1 = load i64, ptr %coerce.dive, align 8, !dbg !597
  ret i64 %1, !dbg !597
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kaslr_enabled() #5 align 16 !dbg !598 {
entry:
  %0 = load i8, ptr getelementptr inbounds (%struct.boot_params, ptr @boot_params, i32 0, i32 28, i32 14), align 1, !dbg !599
  %conv = zext i8 %0 to i32, !dbg !600
  %and = and i32 %conv, 2, !dbg !601
  %tobool = icmp ne i32 %and, 0, !dbg !602
  %lnot = xor i1 %tobool, true, !dbg !602
  %lnot1 = xor i1 %lnot, true, !dbg !603
  ret i1 %lnot1, !dbg !604
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seed(i32 noundef %x, i32 noundef %m) #5 align 16 !dbg !605 {
entry:
  %x.addr = alloca i32, align 4
  %m.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !609, metadata !DIExpression()), !dbg !611
  store i32 %m, ptr %m.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %m.addr, metadata !610, metadata !DIExpression()), !dbg !612
  %0 = load i32, ptr %x.addr, align 4, !dbg !613
  %1 = load i32, ptr %m.addr, align 4, !dbg !614
  %cmp = icmp ult i32 %0, %1, !dbg !615
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !616

cond.true:                                        ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4, !dbg !617
  %3 = load i32, ptr %m.addr, align 4, !dbg !618
  %add = add i32 %2, %3, !dbg !619
  br label %cond.end, !dbg !616

cond.false:                                       ; preds = %entry
  %4 = load i32, ptr %x.addr, align 4, !dbg !620
  br label %cond.end, !dbg !616

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add, %cond.true ], [ %4, %cond.false ], !dbg !616
  ret i32 %cond, !dbg !621
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !622 dso_local ptr @alloc_low_pages(i32 noundef) #7

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pgd_page_vaddr(i64 %pgd.coerce) #5 align 16 !dbg !625 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !629, metadata !DIExpression()), !dbg !630
  %coerce.dive1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !631
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !631
  %call = call i64 @native_pgd_val(i64 %0) #12, !dbg !631
  %and = and i64 %call, 4503599627366400, !dbg !631
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !631
  %add = add i64 %and, %1, !dbg !631
  %2 = inttoptr i64 %add to ptr, !dbg !631
  %3 = ptrtoint ptr %2 to i64, !dbg !632
  ret i64 %3, !dbg !633
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_pgd_val(i64 %pgd.coerce) #5 align 16 !dbg !634 {
entry:
  %pgd = alloca %struct.pgd_t, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !638, metadata !DIExpression()), !dbg !639
  %pgd1 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !640
  %0 = load i64, ptr %pgd1, align 8, !dbg !640
  %and = and i64 %0, -1, !dbg !641
  ret i64 %and, !dbg !642
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @p4d_pgtable(i64 %p4d.coerce) #5 align 16 !dbg !643 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !647, metadata !DIExpression()), !dbg !648
  %coerce.dive1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !649
  %0 = load i64, ptr %coerce.dive1, align 8, !dbg !649
  %call = call i64 @native_p4d_val(i64 %0) #12, !dbg !649
  %coerce.dive2 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !649
  %1 = load i64, ptr %coerce.dive2, align 8, !dbg !649
  %call3 = call i64 @p4d_pfn_mask(i64 %1) #12, !dbg !649
  %and = and i64 %call, %call3, !dbg !649
  %2 = load i64, ptr @page_offset_base, align 8, !dbg !649
  %add = add i64 %and, %2, !dbg !649
  %3 = inttoptr i64 %add to ptr, !dbg !649
  ret ptr %3, !dbg !650
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_p4d_val(i64 %p4d.coerce) #5 align 16 !dbg !651 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !655, metadata !DIExpression()), !dbg !656
  %p4d1 = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0, !dbg !657
  %0 = load i64, ptr %p4d1, align 8, !dbg !657
  ret i64 %0, !dbg !658
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @p4d_pfn_mask(i64 %p4d.coerce) #5 align 16 !dbg !659 {
entry:
  %p4d = alloca %struct.p4d_t, align 8
  %coerce.dive = getelementptr inbounds %struct.p4d_t, ptr %p4d, i32 0, i32 0
  store i64 %p4d.coerce, ptr %coerce.dive, align 8
  call void @llvm.dbg.declare(metadata ptr %p4d, metadata !661, metadata !DIExpression()), !dbg !662
  ret i64 4503599627366400, !dbg !663
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !664 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !668, metadata !DIExpression()), !dbg !670
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !669, metadata !DIExpression()), !dbg !671
  %0 = load i64, ptr %nr.addr, align 8, !dbg !672
  %and = and i64 %0, 63, !dbg !673
  %shl = shl i64 1, %and, !dbg !674
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !675
  %2 = load i64, ptr %nr.addr, align 8, !dbg !676
  %shr = ashr i64 %2, 6, !dbg !677
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !675
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !675
  %and1 = and i64 %shl, %3, !dbg !678
  %cmp = icmp ne i64 %and1, 0, !dbg !679
  ret i1 %cmp, !dbg !680
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !681 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !683, metadata !DIExpression()), !dbg !686
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !684, metadata !DIExpression()), !dbg !687
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !685, metadata !DIExpression()), !dbg !689
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !690
  %1 = load i64, ptr %nr.addr, align 8, !dbg !691
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !692, !srcloc !693
  %3 = icmp ult i8 %2, 2, !dbg !692
  call void @llvm.assume(i1 %3), !dbg !692
  store i8 %2, ptr %oldbit, align 1, !dbg !692
  %4 = load i8, ptr %oldbit, align 1, !dbg !694, !range !695, !noundef !696
  %tobool = trunc i8 %4 to i1, !dbg !694
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !697
  ret i1 %tobool, !dbg !698
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pti_set_user_pgtbl(ptr noundef %pgdp, i64 %pgd.coerce) #5 align 16 !dbg !699 {
entry:
  %retval = alloca %struct.pgd_t, align 8
  %pgd = alloca %struct.pgd_t, align 8
  %pgdp.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0
  store i64 %pgd.coerce, ptr %coerce.dive, align 8
  store ptr %pgdp, ptr %pgdp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pgdp.addr, metadata !703, metadata !DIExpression()), !dbg !705
  call void @llvm.dbg.declare(metadata ptr %pgd, metadata !704, metadata !DIExpression()), !dbg !706
  br i1 false, label %cond.true, label %cond.false2, !dbg !707

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !708

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.end, label %if.then, !dbg !708

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 235, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #12, !dbg !708
  br i1 %call, label %if.end, label %if.then, !dbg !708

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 235) #12, !dbg !708
  br i1 %call3, label %if.end, label %if.then, !dbg !707

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %retval, ptr align 8 %pgd, i64 8, i1 false), !dbg !710
  br label %return, !dbg !711

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  %0 = load ptr, ptr %pgdp.addr, align 8, !dbg !712
  %coerce.dive4 = getelementptr inbounds %struct.pgd_t, ptr %pgd, i32 0, i32 0, !dbg !713
  %1 = load i64, ptr %coerce.dive4, align 8, !dbg !713
  %call5 = call i64 @__pti_set_user_pgtbl(ptr noundef %0, i64 %1) #12, !dbg !713
  %coerce.dive6 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !713
  store i64 %call5, ptr %coerce.dive6, align 8, !dbg !713
  br label %return, !dbg !714

return:                                           ; preds = %if.end, %if.then
  %coerce.dive7 = getelementptr inbounds %struct.pgd_t, ptr %retval, i32 0, i32 0, !dbg !715
  %2 = load i64, ptr %coerce.dive7, align 8, !dbg !715
  ret i64 %2, !dbg !715
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !716 dso_local i64 @__pti_set_user_pgtbl(ptr noundef, i64) #7

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="BUILD_BUG_ON failed: vaddr_start >= vaddr_end" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "physmem_end", scope: !2, file: !3, line: 66, type: !13, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/mm/.kaslr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/mm/kaslr\22 -D KBUILD_BASENAME=\22kaslr\22 -D KBUILD_MODNAME=\22kaslr\22 -D __KBUILD_MODNAME=kmod_kaslr -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/mm/kaslr.ll arch/x86/mm/kaslr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !50, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/mm/kaslr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7e16b37ac674701ec24a77e470e67416")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15, !16, !18, !21, !28, !29, !36, !42, !44}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !17, line: 14, baseType: !13)
!17 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4d_t", file: !23, line: 346, baseType: !24)
!23 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 346, size: 64, elements: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "p4d", scope: !24, file: !23, line: 346, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "p4dval_t", file: !17, line: 17, baseType: !13)
!28 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !30, line: 159, baseType: !31)
!30 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !32, line: 23, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !34, line: 31, baseType: !35)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!35 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "pud_t", file: !23, line: 372, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 372, size: 64, elements: !39)
!39 = !{!40}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "pud", scope: !38, file: !23, line: 372, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "pudval_t", file: !17, line: 16, baseType: !13)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !22)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !23, line: 299, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 299, size: 64, elements: !47)
!47 = !{!48}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !46, file: !23, line: 299, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !17, line: 18, baseType: !13)
!50 = !{!51, !54, !59, !0, !64}
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression(DW_OP_constu, 18446741874686296064, DW_OP_stack_value))
!52 = distinct !DIGlobalVariable(name: "vaddr_end", scope: !2, file: !3, line: 41, type: !53, isLocal: true, isDefinition: true)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 160, elements: !57)
!57 = !{!58}
!58 = !DISubrange(count: 20)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(scope: null, file: !3, line: 129, type: !61, isLocal: true, isDefinition: true)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 56, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 7)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(name: "kaslr_regions", scope: !2, file: !3, line: 52, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 576, elements: !72)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kaslr_memory_region", file: !3, line: 48, size: 192, elements: !68)
!68 = !{!69, !70, !71}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !67, file: !3, line: 49, baseType: !15, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !67, file: !3, line: 50, baseType: !15, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "size_tb", scope: !67, file: !3, line: 51, baseType: !13, size: 64, offset: 128)
!72 = !{!73}
!73 = !DISubrange(count: 3)
!74 = !{i32 7, !"Dwarf Version", i32 5}
!75 = !{i32 2, !"Debug Info Version", i32 3}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 8, !"cf-protection-branch", i32 1}
!78 = !{i32 4, !"function_return_thunk_extern", i32 1}
!79 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!80 = !{i32 1, !"Code Model", i32 2}
!81 = !{i32 1, !"override-stack-alignment", i32 8}
!82 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!83 = distinct !DISubprogram(name: "kernel_randomize_memory", scope: !3, file: !3, line: 75, type: !84, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !86)
!84 = !DISubroutineType(types: !85)
!85 = !{null}
!86 = !{!87, !92, !93, !94, !95, !96, !105, !106, !107}
!87 = !DILocalVariable(name: "i", scope: !83, file: !3, line: 77, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !30, line: 61, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !90, line: 72, baseType: !91)
!90 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !90, line: 16, baseType: !13)
!92 = !DILocalVariable(name: "vaddr_start", scope: !83, file: !3, line: 78, type: !13)
!93 = !DILocalVariable(name: "vaddr", scope: !83, file: !3, line: 78, type: !13)
!94 = !DILocalVariable(name: "rand", scope: !83, file: !3, line: 79, type: !13)
!95 = !DILocalVariable(name: "memory_tb", scope: !83, file: !3, line: 79, type: !13)
!96 = !DILocalVariable(name: "rand_state", scope: !83, file: !3, line: 80, type: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rnd_state", file: !98, line: 16, size: 128, elements: !99)
!98 = !DIFile(filename: "./include/linux/prandom.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6cec501b56006ae4dd4be7b369b38936")
!99 = !{!100, !102, !103, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "s1", scope: !97, file: !98, line: 17, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "s2", scope: !97, file: !98, line: 17, baseType: !101, size: 32, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "s3", scope: !97, file: !98, line: 17, baseType: !101, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !97, file: !98, line: 17, baseType: !101, size: 32, offset: 96)
!105 = !DILocalVariable(name: "remain_entropy", scope: !83, file: !3, line: 81, type: !13)
!106 = !DILocalVariable(name: "vmemmap_size", scope: !83, file: !3, line: 82, type: !13)
!107 = !DILocalVariable(name: "entropy", scope: !108, file: !3, line: 132, type: !13)
!108 = distinct !DILexicalBlock(scope: !109, file: !3, line: 131, column: 50)
!109 = distinct !DILexicalBlock(scope: !110, file: !3, line: 131, column: 2)
!110 = distinct !DILexicalBlock(scope: !83, file: !3, line: 131, column: 2)
!111 = !DILocation(line: 77, column: 2, scope: !83)
!112 = !DILocation(line: 77, column: 9, scope: !83)
!113 = !DILocation(line: 78, column: 2, scope: !83)
!114 = !DILocation(line: 78, column: 16, scope: !83)
!115 = !DILocation(line: 78, column: 29, scope: !83)
!116 = !DILocation(line: 79, column: 2, scope: !83)
!117 = !DILocation(line: 79, column: 16, scope: !83)
!118 = !DILocation(line: 79, column: 22, scope: !83)
!119 = !DILocation(line: 80, column: 2, scope: !83)
!120 = !DILocation(line: 80, column: 19, scope: !83)
!121 = !DILocation(line: 81, column: 2, scope: !83)
!122 = !DILocation(line: 81, column: 16, scope: !83)
!123 = !DILocation(line: 82, column: 2, scope: !83)
!124 = !DILocation(line: 82, column: 16, scope: !83)
!125 = !DILocation(line: 84, column: 16, scope: !83)
!126 = !DILocation(line: 84, column: 14, scope: !83)
!127 = !DILocation(line: 85, column: 10, scope: !83)
!128 = !DILocation(line: 85, column: 8, scope: !83)
!129 = !DILocation(line: 92, column: 2, scope: !83)
!130 = !DILocation(line: 92, column: 2, scope: !131)
!131 = distinct !DILexicalBlock(scope: !132, file: !3, line: 92, column: 2)
!132 = distinct !DILexicalBlock(scope: !83, file: !3, line: 92, column: 2)
!133 = !DILocation(line: 92, column: 2, scope: !132)
!134 = !{i32 -2140916075}
!135 = !DILocation(line: 93, column: 2, scope: !83)
!136 = !DILocation(line: 93, column: 2, scope: !137)
!137 = distinct !DILexicalBlock(scope: !83, file: !3, line: 93, column: 2)
!138 = !DILocation(line: 94, column: 2, scope: !83)
!139 = !DILocation(line: 94, column: 2, scope: !140)
!140 = distinct !DILexicalBlock(scope: !83, file: !3, line: 94, column: 2)
!141 = !DILocation(line: 97, column: 26, scope: !83)
!142 = !DILocation(line: 97, column: 23, scope: !83)
!143 = !DILocation(line: 97, column: 44, scope: !83)
!144 = !DILocation(line: 97, column: 14, scope: !83)
!145 = !DILocation(line: 98, column: 7, scope: !146)
!146 = distinct !DILexicalBlock(scope: !83, file: !3, line: 98, column: 6)
!147 = !DILocation(line: 98, column: 6, scope: !83)
!148 = !DILocation(line: 99, column: 3, scope: !146)
!149 = !DILocation(line: 101, column: 35, scope: !83)
!150 = !DILocation(line: 101, column: 52, scope: !83)
!151 = !DILocation(line: 101, column: 31, scope: !83)
!152 = !DILocation(line: 101, column: 29, scope: !83)
!153 = !DILocation(line: 101, column: 27, scope: !83)
!154 = !DILocation(line: 102, column: 29, scope: !83)
!155 = !DILocation(line: 102, column: 27, scope: !83)
!156 = !DILocation(line: 108, column: 2, scope: !83)
!157 = !DILocation(line: 108, column: 2, scope: !158)
!158 = distinct !DILexicalBlock(scope: !159, file: !3, line: 108, column: 2)
!159 = distinct !DILexicalBlock(scope: !83, file: !3, line: 108, column: 2)
!160 = !DILocation(line: 108, column: 2, scope: !159)
!161 = !DILocation(line: 108, column: 2, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 108, column: 2)
!163 = !DILocation(line: 108, column: 2, scope: !164)
!164 = distinct !DILexicalBlock(scope: !162, file: !3, line: 108, column: 2)
!165 = !DILocation(line: 108, column: 2, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 108, column: 2)
!167 = !{i64 2154107452, i64 2154107481, i64 2154107527, i64 2154107585, i64 2154107639, i64 2154107693, i64 2154107748, i64 2154107779}
!168 = !DILocation(line: 109, column: 14, scope: !83)
!169 = !DILocation(line: 109, column: 67, scope: !83)
!170 = !DILocation(line: 109, column: 12, scope: !83)
!171 = !DILocation(line: 113, column: 6, scope: !172)
!172 = distinct !DILexicalBlock(scope: !83, file: !3, line: 113, column: 6)
!173 = !DILocation(line: 113, column: 35, scope: !172)
!174 = !DILocation(line: 113, column: 16, scope: !172)
!175 = !DILocation(line: 113, column: 6, scope: !83)
!176 = !DILocation(line: 114, column: 30, scope: !172)
!177 = !DILocation(line: 114, column: 28, scope: !172)
!178 = !DILocation(line: 114, column: 3, scope: !172)
!179 = !DILocation(line: 120, column: 35, scope: !83)
!180 = !DILocation(line: 120, column: 43, scope: !83)
!181 = !DILocation(line: 120, column: 71, scope: !83)
!182 = !DILocation(line: 120, column: 15, scope: !83)
!183 = !DILocation(line: 122, column: 29, scope: !83)
!184 = !DILocation(line: 122, column: 27, scope: !83)
!185 = !DILocation(line: 125, column: 31, scope: !83)
!186 = !DILocation(line: 125, column: 29, scope: !83)
!187 = !DILocation(line: 125, column: 17, scope: !83)
!188 = !DILocation(line: 126, column: 9, scope: !189)
!189 = distinct !DILexicalBlock(scope: !83, file: !3, line: 126, column: 2)
!190 = !DILocation(line: 126, column: 7, scope: !189)
!191 = !DILocation(line: 126, column: 14, scope: !192)
!192 = distinct !DILexicalBlock(scope: !189, file: !3, line: 126, column: 2)
!193 = !DILocation(line: 126, column: 16, scope: !192)
!194 = !DILocation(line: 126, column: 2, scope: !189)
!195 = !DILocation(line: 127, column: 48, scope: !192)
!196 = !DILocation(line: 127, column: 34, scope: !192)
!197 = !DILocation(line: 127, column: 21, scope: !192)
!198 = !DILocation(line: 127, column: 18, scope: !192)
!199 = !DILocation(line: 127, column: 3, scope: !192)
!200 = !DILocation(line: 126, column: 46, scope: !192)
!201 = !DILocation(line: 126, column: 2, scope: !192)
!202 = distinct !{!202, !194, !203, !204, !205}
!203 = !DILocation(line: 127, column: 50, scope: !189)
!204 = !{!"llvm.loop.mustprogress"}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !DILocation(line: 129, column: 34, scope: !83)
!207 = !DILocation(line: 129, column: 2, scope: !83)
!208 = !DILocation(line: 131, column: 9, scope: !110)
!209 = !DILocation(line: 131, column: 7, scope: !110)
!210 = !DILocation(line: 131, column: 14, scope: !109)
!211 = !DILocation(line: 131, column: 16, scope: !109)
!212 = !DILocation(line: 131, column: 2, scope: !110)
!213 = !DILocation(line: 132, column: 3, scope: !108)
!214 = !DILocation(line: 132, column: 17, scope: !108)
!215 = !DILocation(line: 138, column: 13, scope: !108)
!216 = !DILocation(line: 138, column: 59, scope: !108)
!217 = !DILocation(line: 138, column: 57, scope: !108)
!218 = !DILocation(line: 138, column: 28, scope: !108)
!219 = !DILocation(line: 138, column: 11, scope: !108)
!220 = !DILocation(line: 139, column: 3, scope: !108)
!221 = !DILocation(line: 140, column: 14, scope: !108)
!222 = !DILocation(line: 140, column: 22, scope: !108)
!223 = !DILocation(line: 140, column: 30, scope: !108)
!224 = !DILocation(line: 140, column: 19, scope: !108)
!225 = !DILocation(line: 140, column: 36, scope: !108)
!226 = !DILocation(line: 140, column: 11, scope: !108)
!227 = !DILocation(line: 141, column: 12, scope: !108)
!228 = !DILocation(line: 141, column: 9, scope: !108)
!229 = !DILocation(line: 142, column: 28, scope: !108)
!230 = !DILocation(line: 142, column: 18, scope: !108)
!231 = !DILocation(line: 142, column: 4, scope: !108)
!232 = !DILocation(line: 142, column: 21, scope: !108)
!233 = !DILocation(line: 142, column: 26, scope: !108)
!234 = !DILocation(line: 145, column: 39, scope: !108)
!235 = !DILocation(line: 145, column: 25, scope: !108)
!236 = !DILocation(line: 145, column: 12, scope: !108)
!237 = !DILocation(line: 145, column: 9, scope: !108)
!238 = !DILocation(line: 152, column: 21, scope: !239)
!239 = distinct !DILexicalBlock(scope: !108, file: !3, line: 152, column: 7)
!240 = !DILocation(line: 152, column: 7, scope: !239)
!241 = !DILocation(line: 152, column: 24, scope: !239)
!242 = !DILocation(line: 152, column: 7, scope: !108)
!243 = !DILocation(line: 153, column: 28, scope: !239)
!244 = !DILocation(line: 153, column: 19, scope: !239)
!245 = !DILocation(line: 153, column: 5, scope: !239)
!246 = !DILocation(line: 153, column: 22, scope: !239)
!247 = !DILocation(line: 153, column: 26, scope: !239)
!248 = !DILocation(line: 153, column: 4, scope: !239)
!249 = !DILocation(line: 156, column: 11, scope: !108)
!250 = !DILocation(line: 156, column: 9, scope: !108)
!251 = !DILocation(line: 157, column: 21, scope: !108)
!252 = !DILocation(line: 157, column: 18, scope: !108)
!253 = !DILocation(line: 158, column: 2, scope: !109)
!254 = !DILocation(line: 158, column: 2, scope: !108)
!255 = !DILocation(line: 131, column: 46, scope: !109)
!256 = !DILocation(line: 131, column: 2, scope: !109)
!257 = distinct !{!257, !212, !258, !204, !205}
!258 = !DILocation(line: 158, column: 2, scope: !110)
!259 = !DILocation(line: 159, column: 1, scope: !83)
!260 = distinct !DISubprogram(name: "_static_cpu_has", scope: !261, file: !261, line: 173, type: !262, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !269)
!261 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!262 = !DISubroutineType(types: !263)
!263 = !{!264, !266}
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !30, line: 35, baseType: !265)
!265 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !268)
!268 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!269 = !{!270, !271, !272}
!270 = !DILocalVariable(name: "bit", arg: 1, scope: !260, file: !261, line: 173, type: !266)
!271 = !DILabel(scope: !260, name: "t_yes", file: !261, line: 187)
!272 = !DILabel(scope: !260, name: "t_no", file: !261, line: 189)
!273 = !DILocation(line: 173, column: 49, scope: !260)
!274 = !DILocation(line: 183, column: 24, scope: !260)
!275 = !DILocation(line: 184, column: 30, scope: !260)
!276 = !DILocation(line: 184, column: 34, scope: !260)
!277 = !DILocation(line: 184, column: 26, scope: !260)
!278 = !DILocation(line: 185, column: 70, scope: !260)
!279 = !DILocation(line: 185, column: 74, scope: !260)
!280 = !DILocation(line: 185, column: 25, scope: !260)
!281 = !DILocation(line: 175, column: 2, scope: !260)
!282 = !{i64 2149450585, i64 2149450618, i64 2149450624, i64 2149450640, i64 2149450659, i64 2149450690, i64 2149451643, i64 2149450232, i64 2149451649, i64 2149451697, i64 2149451761, i64 2149451825, i64 2149451882, i64 2149452089, i64 2149452137, i64 2149452201, i64 2149452265, i64 2149452322, i64 2149450350, i64 2149450375, i64 2149452532, i64 2149452660, i64 2149452593, i64 2149452674, i64 2149452688, i64 2149452804, i64 2149452749, i64 2149452818, i64 2149450509, i64 935293, i64 935333, i64 935342, i64 935392, i64 935413, i64 935433}
!283 = !DILocation(line: 187, column: 1, scope: !260)
!284 = !DILocation(line: 188, column: 2, scope: !260)
!285 = !DILocation(line: 189, column: 1, scope: !260)
!286 = !DILocation(line: 190, column: 2, scope: !260)
!287 = !DILocation(line: 191, column: 1, scope: !260)
!288 = !DISubprogram(name: "__compiletime_assert_277", scope: !3, file: !3, line: 92, type: !84, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!289 = distinct !DISubprogram(name: "kaslr_memory_enabled", scope: !290, file: !290, line: 90, type: !291, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!290 = !DIFile(filename: "./arch/x86/include/asm/setup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70163219e3d956dec6d0e7b32cf67c8b")
!291 = !DISubroutineType(types: !292)
!292 = !{!264}
!293 = !DILocation(line: 92, column: 9, scope: !289)
!294 = !DILocation(line: 92, column: 25, scope: !289)
!295 = !DILocation(line: 0, scope: !289)
!296 = !DILocation(line: 92, column: 2, scope: !289)
!297 = distinct !DISubprogram(name: "get_padding", scope: !3, file: !3, line: 69, type: !298, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !301)
!298 = !DISubroutineType(types: !299)
!299 = !{!13, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!301 = !{!302}
!302 = !DILocalVariable(name: "region", arg: 1, scope: !297, file: !3, line: 69, type: !300)
!303 = !DILocation(line: 69, column: 69, scope: !297)
!304 = !DILocation(line: 71, column: 10, scope: !297)
!305 = !DILocation(line: 71, column: 18, scope: !297)
!306 = !DILocation(line: 71, column: 26, scope: !297)
!307 = !DILocation(line: 71, column: 2, scope: !297)
!308 = distinct !DISubprogram(name: "prandom_seed_state", scope: !98, file: !98, line: 40, type: !309, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !311, !31}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!312 = !{!313, !314, !315}
!313 = !DILocalVariable(name: "state", arg: 1, scope: !308, file: !98, line: 40, type: !311)
!314 = !DILocalVariable(name: "seed", arg: 2, scope: !308, file: !98, line: 40, type: !31)
!315 = !DILocalVariable(name: "i", scope: !308, file: !98, line: 42, type: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !101)
!317 = !DILocation(line: 40, column: 57, scope: !308)
!318 = !DILocation(line: 40, column: 68, scope: !308)
!319 = !DILocation(line: 42, column: 2, scope: !308)
!320 = !DILocation(line: 42, column: 6, scope: !308)
!321 = !DILocation(line: 42, column: 12, scope: !308)
!322 = !DILocation(line: 42, column: 17, scope: !308)
!323 = !DILocation(line: 42, column: 27, scope: !308)
!324 = !DILocation(line: 42, column: 32, scope: !308)
!325 = !DILocation(line: 42, column: 24, scope: !308)
!326 = !DILocation(line: 42, column: 41, scope: !308)
!327 = !DILocation(line: 42, column: 39, scope: !308)
!328 = !DILocation(line: 42, column: 47, scope: !308)
!329 = !DILocation(line: 42, column: 10, scope: !308)
!330 = !DILocation(line: 44, column: 21, scope: !308)
!331 = !DILocation(line: 44, column: 14, scope: !308)
!332 = !DILocation(line: 44, column: 2, scope: !308)
!333 = !DILocation(line: 44, column: 9, scope: !308)
!334 = !DILocation(line: 44, column: 12, scope: !308)
!335 = !DILocation(line: 45, column: 21, scope: !308)
!336 = !DILocation(line: 45, column: 14, scope: !308)
!337 = !DILocation(line: 45, column: 2, scope: !308)
!338 = !DILocation(line: 45, column: 9, scope: !308)
!339 = !DILocation(line: 45, column: 12, scope: !308)
!340 = !DILocation(line: 46, column: 21, scope: !308)
!341 = !DILocation(line: 46, column: 14, scope: !308)
!342 = !DILocation(line: 46, column: 2, scope: !308)
!343 = !DILocation(line: 46, column: 9, scope: !308)
!344 = !DILocation(line: 46, column: 12, scope: !308)
!345 = !DILocation(line: 47, column: 21, scope: !308)
!346 = !DILocation(line: 47, column: 14, scope: !308)
!347 = !DILocation(line: 47, column: 2, scope: !308)
!348 = !DILocation(line: 47, column: 9, scope: !308)
!349 = !DILocation(line: 47, column: 12, scope: !308)
!350 = !DILocation(line: 48, column: 1, scope: !308)
!351 = !DISubprogram(name: "kaslr_get_random_long", scope: !352, file: !352, line: 5, type: !353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!352 = !DIFile(filename: "./arch/x86/include/asm/kaslr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bde560627748bf8418f9ac53248d5409")
!353 = !DISubroutineType(types: !354)
!354 = !{!13, !18}
!355 = !DISubprogram(name: "prandom_bytes_state", scope: !98, file: !98, line: 21, type: !356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !311, !14, !88}
!358 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !359, file: !359, line: 22, type: !360, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!359 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!360 = !DISubroutineType(types: !361)
!361 = !{!13, !13}
!362 = !{!363, !364}
!363 = !DILocalVariable(name: "x", arg: 1, scope: !358, file: !359, line: 22, type: !13)
!364 = !DILocalVariable(name: "y", scope: !358, file: !359, line: 24, type: !13)
!365 = !DILocation(line: 22, column: 72, scope: !358)
!366 = !DILocation(line: 24, column: 2, scope: !358)
!367 = !DILocation(line: 24, column: 16, scope: !358)
!368 = !DILocation(line: 24, column: 20, scope: !358)
!369 = !DILocation(line: 24, column: 22, scope: !358)
!370 = !DILocation(line: 27, column: 6, scope: !358)
!371 = !DILocation(line: 27, column: 12, scope: !358)
!372 = !DILocation(line: 27, column: 16, scope: !358)
!373 = !DILocation(line: 27, column: 14, scope: !358)
!374 = !DILocation(line: 27, column: 11, scope: !358)
!375 = !DILocation(line: 27, column: 21, scope: !358)
!376 = !DILocation(line: 27, column: 55, scope: !358)
!377 = !DILocation(line: 27, column: 53, scope: !358)
!378 = !DILocation(line: 27, column: 8, scope: !358)
!379 = !DILocation(line: 27, column: 4, scope: !358)
!380 = !DILocation(line: 29, column: 9, scope: !358)
!381 = !DILocation(line: 30, column: 1, scope: !358)
!382 = !DILocation(line: 29, column: 2, scope: !358)
!383 = distinct !DISubprogram(name: "init_trampoline_kaslr", scope: !3, file: !3, line: 161, type: !84, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385, !386, !387, !388, !389, !390, !391, !392, !393}
!385 = !DILocalVariable(name: "pud_page_tramp", scope: !383, file: !3, line: 163, type: !36)
!386 = !DILocalVariable(name: "pud", scope: !383, file: !3, line: 163, type: !36)
!387 = !DILocalVariable(name: "pud_tramp", scope: !383, file: !3, line: 163, type: !36)
!388 = !DILocalVariable(name: "p4d_page_tramp", scope: !383, file: !3, line: 164, type: !21)
!389 = !DILocalVariable(name: "p4d", scope: !383, file: !3, line: 164, type: !21)
!390 = !DILocalVariable(name: "p4d_tramp", scope: !383, file: !3, line: 164, type: !21)
!391 = !DILocalVariable(name: "paddr", scope: !383, file: !3, line: 165, type: !13)
!392 = !DILocalVariable(name: "vaddr", scope: !383, file: !3, line: 165, type: !13)
!393 = !DILocalVariable(name: "pgd", scope: !383, file: !3, line: 166, type: !44)
!394 = !DILocation(line: 163, column: 2, scope: !383)
!395 = !DILocation(line: 163, column: 9, scope: !383)
!396 = !DILocation(line: 163, column: 26, scope: !383)
!397 = !DILocation(line: 163, column: 32, scope: !383)
!398 = !DILocation(line: 164, column: 2, scope: !383)
!399 = !DILocation(line: 164, column: 9, scope: !383)
!400 = !DILocation(line: 164, column: 26, scope: !383)
!401 = !DILocation(line: 164, column: 32, scope: !383)
!402 = !DILocation(line: 165, column: 2, scope: !383)
!403 = !DILocation(line: 165, column: 16, scope: !383)
!404 = !DILocation(line: 165, column: 23, scope: !383)
!405 = !DILocation(line: 166, column: 2, scope: !383)
!406 = !DILocation(line: 166, column: 9, scope: !383)
!407 = !DILocation(line: 168, column: 19, scope: !383)
!408 = !DILocation(line: 168, column: 17, scope: !383)
!409 = !DILocation(line: 177, column: 8, scope: !383)
!410 = !DILocation(line: 178, column: 25, scope: !383)
!411 = !DILocation(line: 178, column: 10, scope: !383)
!412 = !DILocation(line: 178, column: 8, scope: !383)
!413 = !DILocation(line: 179, column: 8, scope: !383)
!414 = !DILocation(line: 179, column: 6, scope: !383)
!415 = !DILocation(line: 181, column: 19, scope: !383)
!416 = !DILocation(line: 181, column: 24, scope: !383)
!417 = !DILocation(line: 181, column: 8, scope: !383)
!418 = !DILocation(line: 181, column: 6, scope: !383)
!419 = !DILocation(line: 182, column: 19, scope: !383)
!420 = !DILocation(line: 182, column: 24, scope: !383)
!421 = !DILocation(line: 182, column: 8, scope: !383)
!422 = !DILocation(line: 182, column: 6, scope: !383)
!423 = !DILocation(line: 184, column: 14, scope: !383)
!424 = !DILocation(line: 184, column: 41, scope: !383)
!425 = !DILocation(line: 184, column: 31, scope: !383)
!426 = !DILocation(line: 184, column: 29, scope: !383)
!427 = !DILocation(line: 184, column: 12, scope: !383)
!428 = !DILocation(line: 185, column: 3, scope: !383)
!429 = !DILocation(line: 185, column: 16, scope: !383)
!430 = !DILocation(line: 185, column: 15, scope: !383)
!431 = !DILocation(line: 187, column: 6, scope: !383)
!432 = !DILocation(line: 187, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !383, file: !3, line: 187, column: 6)
!434 = !DILocation(line: 188, column: 20, scope: !435)
!435 = distinct !DILexicalBlock(scope: !433, file: !3, line: 187, column: 28)
!436 = !DILocation(line: 188, column: 18, scope: !435)
!437 = !DILocation(line: 190, column: 15, scope: !435)
!438 = !DILocation(line: 190, column: 42, scope: !435)
!439 = !DILocation(line: 190, column: 32, scope: !435)
!440 = !DILocation(line: 190, column: 30, scope: !435)
!441 = !DILocation(line: 190, column: 13, scope: !435)
!442 = !DILocation(line: 192, column: 3, scope: !435)
!443 = !DILocation(line: 196, column: 4, scope: !435)
!444 = !DILocation(line: 197, column: 2, scope: !435)
!445 = !DILocation(line: 199, column: 4, scope: !446)
!446 = distinct !DILexicalBlock(scope: !433, file: !3, line: 197, column: 9)
!447 = !DILocation(line: 201, column: 1, scope: !383)
!448 = distinct !DISubprogram(name: "alloc_low_page", scope: !449, file: !449, line: 6, type: !450, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!449 = !DIFile(filename: "arch/x86/mm/mm_internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e63d1ab12d99960be380d0c04b48484")
!450 = !DISubroutineType(types: !451)
!451 = !{!14}
!452 = !DILocation(line: 8, column: 9, scope: !448)
!453 = !DILocation(line: 8, column: 2, scope: !448)
!454 = distinct !DISubprogram(name: "pgd_offset_pgd", scope: !455, file: !455, line: 136, type: !456, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!455 = !DIFile(filename: "./include/linux/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "42556a9f65ab908dd6bd67424d19f5be")
!456 = !DISubroutineType(types: !457)
!457 = !{!44, !44, !13}
!458 = !{!459, !460}
!459 = !DILocalVariable(name: "pgd", arg: 1, scope: !454, file: !455, line: 136, type: !44)
!460 = !DILocalVariable(name: "address", arg: 2, scope: !454, file: !455, line: 136, type: !13)
!461 = !DILocation(line: 136, column: 44, scope: !454)
!462 = !DILocation(line: 136, column: 63, scope: !454)
!463 = !DILocation(line: 138, column: 10, scope: !454)
!464 = !DILocation(line: 138, column: 16, scope: !454)
!465 = !DILocation(line: 138, column: 14, scope: !454)
!466 = !DILocation(line: 138, column: 2, scope: !454)
!467 = distinct !DISubprogram(name: "p4d_offset", scope: !468, file: !468, line: 1149, type: !469, scopeLine: 1150, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !471)
!468 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!469 = !DISubroutineType(types: !470)
!470 = !{!21, !44, !13}
!471 = !{!472, !473}
!472 = !DILocalVariable(name: "pgd", arg: 1, scope: !467, file: !468, line: 1149, type: !44)
!473 = !DILocalVariable(name: "address", arg: 2, scope: !467, file: !468, line: 1149, type: !13)
!474 = !DILocation(line: 1149, column: 40, scope: !467)
!475 = !DILocation(line: 1149, column: 59, scope: !467)
!476 = !DILocation(line: 1151, column: 6, scope: !467)
!477 = !DILocation(line: 1151, column: 7, scope: !478)
!478 = distinct !DILexicalBlock(scope: !467, file: !468, line: 1151, column: 6)
!479 = !DILocation(line: 1152, column: 19, scope: !478)
!480 = !DILocation(line: 1152, column: 3, scope: !478)
!481 = !DILocation(line: 1153, column: 34, scope: !467)
!482 = !DILocation(line: 1153, column: 18, scope: !467)
!483 = !DILocation(line: 1153, column: 9, scope: !467)
!484 = !DILocation(line: 1153, column: 51, scope: !467)
!485 = !DILocation(line: 1153, column: 41, scope: !467)
!486 = !DILocation(line: 1153, column: 39, scope: !467)
!487 = !DILocation(line: 1153, column: 2, scope: !467)
!488 = !DILocation(line: 1154, column: 1, scope: !467)
!489 = distinct !DISubprogram(name: "pud_offset", scope: !455, file: !455, line: 129, type: !490, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!36, !21, !13}
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "p4d", arg: 1, scope: !489, file: !455, line: 129, type: !21)
!494 = !DILocalVariable(name: "address", arg: 2, scope: !489, file: !455, line: 129, type: !13)
!495 = !DILocation(line: 129, column: 40, scope: !489)
!496 = !DILocation(line: 129, column: 59, scope: !489)
!497 = !DILocation(line: 131, column: 22, scope: !489)
!498 = !DILocation(line: 131, column: 9, scope: !489)
!499 = !DILocation(line: 131, column: 39, scope: !489)
!500 = !DILocation(line: 131, column: 29, scope: !489)
!501 = !DILocation(line: 131, column: 27, scope: !489)
!502 = !DILocation(line: 131, column: 2, scope: !489)
!503 = distinct !DISubprogram(name: "pud_index", scope: !455, file: !455, line: 79, type: !360, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !504)
!504 = !{!505}
!505 = !DILocalVariable(name: "address", arg: 1, scope: !503, file: !455, line: 79, type: !13)
!506 = !DILocation(line: 79, column: 53, scope: !503)
!507 = !DILocation(line: 81, column: 10, scope: !503)
!508 = !DILocation(line: 81, column: 18, scope: !503)
!509 = !DILocation(line: 81, column: 32, scope: !503)
!510 = !DILocation(line: 81, column: 2, scope: !503)
!511 = distinct !DISubprogram(name: "arch_test_bit", scope: !512, file: !512, line: 237, type: !513, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !518)
!512 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!513 = !DISubroutineType(types: !514)
!514 = !{!264, !13, !515}
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !13)
!518 = !{!519, !520}
!519 = !DILocalVariable(name: "nr", arg: 1, scope: !511, file: !512, line: 237, type: !13)
!520 = !DILocalVariable(name: "addr", arg: 2, scope: !511, file: !512, line: 237, type: !515)
!521 = !DILocation(line: 237, column: 29, scope: !511)
!522 = !DILocation(line: 237, column: 63, scope: !511)
!523 = !DILocation(line: 239, column: 30, scope: !511)
!524 = !DILocation(line: 239, column: 9, scope: !511)
!525 = !DILocation(line: 239, column: 54, scope: !511)
!526 = !DILocation(line: 239, column: 58, scope: !511)
!527 = !DILocation(line: 239, column: 36, scope: !511)
!528 = !DILocation(line: 240, column: 26, scope: !511)
!529 = !DILocation(line: 240, column: 30, scope: !511)
!530 = !DILocation(line: 240, column: 8, scope: !511)
!531 = !DILocation(line: 239, column: 2, scope: !511)
!532 = distinct !DISubprogram(name: "p4d_index", scope: !468, file: !468, line: 1124, type: !360, scopeLine: 1125, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !533)
!533 = !{!534}
!534 = !DILocalVariable(name: "address", arg: 1, scope: !532, file: !468, line: 1124, type: !13)
!535 = !DILocation(line: 1124, column: 53, scope: !532)
!536 = !DILocation(line: 1126, column: 10, scope: !532)
!537 = !DILocation(line: 1126, column: 18, scope: !532)
!538 = !DILocation(line: 1126, column: 35, scope: !532)
!539 = !DILocation(line: 1126, column: 48, scope: !532)
!540 = !DILocation(line: 1126, column: 34, scope: !532)
!541 = !DILocation(line: 1126, column: 32, scope: !532)
!542 = !DILocation(line: 1126, column: 2, scope: !532)
!543 = distinct !DISubprogram(name: "native_set_p4d", scope: !544, file: !544, line: 142, type: !545, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !547)
!544 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!545 = !DISubroutineType(types: !546)
!546 = !{null, !21, !22}
!547 = !{!548, !549, !550}
!548 = !DILocalVariable(name: "p4dp", arg: 1, scope: !543, file: !544, line: 142, type: !21)
!549 = !DILocalVariable(name: "p4d", arg: 2, scope: !543, file: !544, line: 142, type: !22)
!550 = !DILocalVariable(name: "pgd", scope: !543, file: !544, line: 144, type: !45)
!551 = !DILocation(line: 142, column: 42, scope: !543)
!552 = !DILocation(line: 142, column: 54, scope: !543)
!553 = !DILocation(line: 144, column: 2, scope: !543)
!554 = !DILocation(line: 144, column: 8, scope: !543)
!555 = !DILocation(line: 146, column: 6, scope: !543)
!556 = !DILocation(line: 146, column: 6, scope: !557)
!557 = distinct !DILexicalBlock(scope: !543, file: !544, line: 146, column: 6)
!558 = !DILocation(line: 147, column: 3, scope: !559)
!559 = distinct !DILexicalBlock(scope: !557, file: !544, line: 146, column: 72)
!560 = !DILocation(line: 147, column: 3, scope: !561)
!561 = distinct !DILexicalBlock(scope: !559, file: !544, line: 147, column: 3)
!562 = !DILocation(line: 147, column: 3, scope: !563)
!563 = distinct !DILexicalBlock(scope: !561, file: !544, line: 147, column: 3)
!564 = !DILocation(line: 147, column: 3, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !544, line: 147, column: 3)
!566 = !DILocation(line: 148, column: 3, scope: !559)
!567 = !DILocation(line: 151, column: 8, scope: !543)
!568 = !DILocation(line: 151, column: 24, scope: !543)
!569 = !DILocation(line: 152, column: 8, scope: !543)
!570 = !DILocation(line: 152, column: 36, scope: !543)
!571 = !DILocation(line: 153, column: 2, scope: !543)
!572 = !DILocation(line: 153, column: 2, scope: !573)
!573 = distinct !DILexicalBlock(scope: !543, file: !544, line: 153, column: 2)
!574 = !DILocation(line: 153, column: 2, scope: !575)
!575 = distinct !DILexicalBlock(scope: !573, file: !544, line: 153, column: 2)
!576 = !DILocation(line: 153, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !544, line: 153, column: 2)
!578 = !DILocation(line: 154, column: 1, scope: !543)
!579 = distinct !DISubprogram(name: "native_make_p4d", scope: !23, file: !23, line: 348, type: !580, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!580 = !DISubroutineType(types: !581)
!581 = !{!22, !41}
!582 = !{!583}
!583 = !DILocalVariable(name: "val", arg: 1, scope: !579, file: !23, line: 348, type: !41)
!584 = !DILocation(line: 348, column: 46, scope: !579)
!585 = !DILocation(line: 350, column: 17, scope: !579)
!586 = !DILocation(line: 350, column: 19, scope: !579)
!587 = !DILocation(line: 350, column: 2, scope: !579)
!588 = distinct !DISubprogram(name: "native_make_pgd", scope: !23, file: !23, line: 330, type: !589, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !591)
!589 = !DISubroutineType(types: !590)
!590 = !{!45, !49}
!591 = !{!592}
!592 = !DILocalVariable(name: "val", arg: 1, scope: !588, file: !23, line: 330, type: !49)
!593 = !DILocation(line: 330, column: 46, scope: !588)
!594 = !DILocation(line: 332, column: 17, scope: !588)
!595 = !DILocation(line: 332, column: 19, scope: !588)
!596 = !DILocation(line: 332, column: 23, scope: !588)
!597 = !DILocation(line: 332, column: 2, scope: !588)
!598 = distinct !DISubprogram(name: "kaslr_enabled", scope: !290, file: !290, line: 80, type: !291, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!599 = !DILocation(line: 83, column: 22, scope: !598)
!600 = !DILocation(line: 83, column: 6, scope: !598)
!601 = !DILocation(line: 83, column: 32, scope: !598)
!602 = !DILocation(line: 83, column: 4, scope: !598)
!603 = !DILocation(line: 83, column: 3, scope: !598)
!604 = !DILocation(line: 82, column: 2, scope: !598)
!605 = distinct !DISubprogram(name: "__seed", scope: !98, file: !98, line: 30, type: !606, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!316, !316, !316}
!608 = !{!609, !610}
!609 = !DILocalVariable(name: "x", arg: 1, scope: !605, file: !98, line: 30, type: !316)
!610 = !DILocalVariable(name: "m", arg: 2, scope: !605, file: !98, line: 30, type: !316)
!611 = !DILocation(line: 30, column: 30, scope: !605)
!612 = !DILocation(line: 30, column: 37, scope: !605)
!613 = !DILocation(line: 32, column: 10, scope: !605)
!614 = !DILocation(line: 32, column: 14, scope: !605)
!615 = !DILocation(line: 32, column: 12, scope: !605)
!616 = !DILocation(line: 32, column: 9, scope: !605)
!617 = !DILocation(line: 32, column: 19, scope: !605)
!618 = !DILocation(line: 32, column: 23, scope: !605)
!619 = !DILocation(line: 32, column: 21, scope: !605)
!620 = !DILocation(line: 32, column: 27, scope: !605)
!621 = !DILocation(line: 32, column: 2, scope: !605)
!622 = !DISubprogram(name: "alloc_low_pages", scope: !449, file: !449, line: 5, type: !623, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!623 = !DISubroutineType(types: !624)
!624 = !{!14, !7}
!625 = distinct !DISubprogram(name: "pgd_page_vaddr", scope: !468, file: !468, line: 1137, type: !626, scopeLine: 1138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!13, !45}
!628 = !{!629}
!629 = !DILocalVariable(name: "pgd", arg: 1, scope: !625, file: !468, line: 1137, type: !45)
!630 = !DILocation(line: 1137, column: 50, scope: !625)
!631 = !DILocation(line: 1139, column: 24, scope: !625)
!632 = !DILocation(line: 1139, column: 9, scope: !625)
!633 = !DILocation(line: 1139, column: 2, scope: !625)
!634 = distinct !DISubprogram(name: "native_pgd_val", scope: !23, file: !23, line: 335, type: !635, scopeLine: 336, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!49, !45}
!637 = !{!638}
!638 = !DILocalVariable(name: "pgd", arg: 1, scope: !634, file: !23, line: 335, type: !45)
!639 = !DILocation(line: 335, column: 45, scope: !634)
!640 = !DILocation(line: 337, column: 13, scope: !634)
!641 = !DILocation(line: 337, column: 17, scope: !634)
!642 = !DILocation(line: 337, column: 2, scope: !634)
!643 = distinct !DISubprogram(name: "p4d_pgtable", scope: !468, file: !468, line: 1102, type: !644, scopeLine: 1103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{!36, !22}
!646 = !{!647}
!647 = !DILocalVariable(name: "p4d", arg: 1, scope: !643, file: !468, line: 1102, type: !22)
!648 = !DILocation(line: 1102, column: 40, scope: !643)
!649 = !DILocation(line: 1104, column: 18, scope: !643)
!650 = !DILocation(line: 1104, column: 2, scope: !643)
!651 = distinct !DISubprogram(name: "native_p4d_val", scope: !23, file: !23, line: 353, type: !652, scopeLine: 354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !654)
!652 = !DISubroutineType(types: !653)
!653 = !{!27, !22}
!654 = !{!655}
!655 = !DILocalVariable(name: "p4d", arg: 1, scope: !651, file: !23, line: 353, type: !22)
!656 = !DILocation(line: 353, column: 45, scope: !651)
!657 = !DILocation(line: 355, column: 13, scope: !651)
!658 = !DILocation(line: 355, column: 2, scope: !651)
!659 = distinct !DISubprogram(name: "p4d_pfn_mask", scope: !23, file: !23, line: 421, type: !652, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !660)
!660 = !{!661}
!661 = !DILocalVariable(name: "p4d", arg: 1, scope: !659, file: !23, line: 421, type: !22)
!662 = !DILocation(line: 421, column: 43, scope: !659)
!663 = !DILocation(line: 424, column: 2, scope: !659)
!664 = distinct !DISubprogram(name: "constant_test_bit", scope: !512, file: !512, line: 204, type: !665, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !667)
!665 = !DISubroutineType(types: !666)
!666 = !{!264, !28, !515}
!667 = !{!668, !669}
!668 = !DILocalVariable(name: "nr", arg: 1, scope: !664, file: !512, line: 204, type: !28)
!669 = !DILocalVariable(name: "addr", arg: 2, scope: !664, file: !512, line: 204, type: !515)
!670 = !DILocation(line: 204, column: 52, scope: !664)
!671 = !DILocation(line: 204, column: 86, scope: !664)
!672 = !DILocation(line: 206, column: 19, scope: !664)
!673 = !DILocation(line: 206, column: 22, scope: !664)
!674 = !DILocation(line: 206, column: 15, scope: !664)
!675 = !DILocation(line: 207, column: 4, scope: !664)
!676 = !DILocation(line: 207, column: 9, scope: !664)
!677 = !DILocation(line: 207, column: 12, scope: !664)
!678 = !DILocation(line: 206, column: 44, scope: !664)
!679 = !DILocation(line: 207, column: 37, scope: !664)
!680 = !DILocation(line: 206, column: 2, scope: !664)
!681 = distinct !DISubprogram(name: "variable_test_bit", scope: !512, file: !512, line: 224, type: !665, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !682)
!682 = !{!683, !684, !685}
!683 = !DILocalVariable(name: "nr", arg: 1, scope: !681, file: !512, line: 224, type: !28)
!684 = !DILocalVariable(name: "addr", arg: 2, scope: !681, file: !512, line: 224, type: !515)
!685 = !DILocalVariable(name: "oldbit", scope: !681, file: !512, line: 226, type: !264)
!686 = !DILocation(line: 224, column: 52, scope: !681)
!687 = !DILocation(line: 224, column: 86, scope: !681)
!688 = !DILocation(line: 226, column: 2, scope: !681)
!689 = !DILocation(line: 226, column: 7, scope: !681)
!690 = !DILocation(line: 231, column: 33, scope: !681)
!691 = !DILocation(line: 231, column: 46, scope: !681)
!692 = !DILocation(line: 228, column: 2, scope: !681)
!693 = !{i64 2147804159, i64 2147804233}
!694 = !DILocation(line: 233, column: 9, scope: !681)
!695 = !{i8 0, i8 2}
!696 = !{}
!697 = !DILocation(line: 234, column: 1, scope: !681)
!698 = !DILocation(line: 233, column: 2, scope: !681)
!699 = distinct !DISubprogram(name: "pti_set_user_pgtbl", scope: !468, file: !468, line: 903, type: !700, scopeLine: 904, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{!45, !44, !45}
!702 = !{!703, !704}
!703 = !DILocalVariable(name: "pgdp", arg: 1, scope: !699, file: !468, line: 903, type: !44)
!704 = !DILocalVariable(name: "pgd", arg: 2, scope: !699, file: !468, line: 903, type: !45)
!705 = !DILocation(line: 903, column: 47, scope: !699)
!706 = !DILocation(line: 903, column: 59, scope: !699)
!707 = !DILocation(line: 905, column: 6, scope: !699)
!708 = !DILocation(line: 905, column: 7, scope: !709)
!709 = distinct !DILexicalBlock(scope: !699, file: !468, line: 905, column: 6)
!710 = !DILocation(line: 906, column: 10, scope: !709)
!711 = !DILocation(line: 906, column: 3, scope: !709)
!712 = !DILocation(line: 907, column: 30, scope: !699)
!713 = !DILocation(line: 907, column: 9, scope: !699)
!714 = !DILocation(line: 907, column: 2, scope: !699)
!715 = !DILocation(line: 908, column: 1, scope: !699)
!716 = !DISubprogram(name: "__pti_set_user_pgtbl", scope: !468, file: !468, line: 896, type: !700, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

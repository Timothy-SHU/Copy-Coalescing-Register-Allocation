; ModuleID = 'arch/x86/kernel/setup_percpu.c'
source_filename = "arch/x86/kernel/setup_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_this_cpu_off: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad this_cpu_off ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___per_cpu_offset: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __per_cpu_offset ; .previous"

%struct.cpumask = type { [1 x i64] }
%struct.pcpu_hot = type { %union.anon }
%union.anon = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }

@__per_cpu_load = external dso_local global [0 x i8], align 1
@this_cpu_off = hidden global i64 ptrtoint (ptr @__per_cpu_load to i64), section ".data..percpu..read_mostly", align 8, !dbg !0
@__UNIQUE_ID___addressable_this_cpu_off322 = internal global ptr @this_cpu_off, section ".discard.addressable", align 8, !dbg !38
@__per_cpu_offset = hidden global [64 x i64] [i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64), i64 ptrtoint (ptr @__per_cpu_load to i64)], section ".data..ro_after_init", align 16, !dbg !40
@__UNIQUE_ID___addressable___per_cpu_offset323 = internal global ptr @__per_cpu_offset, section ".discard.addressable", align 8, !dbg !45
@.str = private unnamed_addr constant [76 x i8] c"\016setup_percpu: NR_CPUS:%d nr_cpumask_bits:%d nr_cpu_ids:%u nr_node_ids:%u\0A\00", align 1, !dbg !47
@nr_cpu_ids = external dso_local global i32, align 4
@nr_node_ids = external dso_local global i32, align 4
@pcpu_chosen_fc = external dso_local global i32, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"\014setup_percpu: %s allocator failed (%d), falling back to page size\0A\00", align 1, !dbg !53
@pcpu_fc_names = external dso_local constant [3 x ptr], align 16
@.str.2 = private unnamed_addr constant [39 x i8] c"cannot initialize percpu area (err=%d)\00", align 1, !dbg !58
@pcpu_base_addr = external dso_local global ptr, align 8
@__per_cpu_start = external dso_local global [0 x i8], align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@pcpu_unit_offsets = external dso_local global ptr, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@x86_cpu_to_apicid_early_map = external dso_local global [0 x i16], align 2
@x86_cpu_to_apicid = external dso_local global i16, section ".data..percpu..read_mostly", align 2
@x86_cpu_to_acpiid_early_map = external dso_local global [0 x i32], align 4
@x86_cpu_to_acpiid = external dso_local global i32, section ".data..percpu..read_mostly", align 4
@x86_cpu_to_node_map_early_map = external dso_local global [0 x i32], align 4
@x86_cpu_to_node_map = external dso_local global i32, section ".data..percpu", align 4
@x86_cpu_to_apicid_early_ptr = external dso_local global ptr, align 8
@x86_cpu_to_acpiid_early_ptr = external dso_local global ptr, align 8
@x86_cpu_to_node_map_early_ptr = external dso_local global ptr, align 8
@numa_node = external dso_local global i32, section ".data..percpu", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable_this_cpu_off322, ptr @__UNIQUE_ID___addressable___per_cpu_offset323], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @pcpu_populate_pte(i64 noundef %addr) #0 section ".init.text" align 16 !dbg !72 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i64, ptr %addr.addr, align 8, !dbg !78
  %call = call ptr @populate_extra_pte(i64 noundef %0) #10, !dbg !79
  ret void, !dbg !80
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !81 dso_local ptr @populate_extra_pte(i64 noundef) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @setup_per_cpu_areas() #0 section ".init.text" align 16 !dbg !92 {
entry:
  %cpu = alloca i32, align 4
  %delta = alloca i64, align 8
  %rc = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dyn_size = alloca i64, align 8
  %atom_size = alloca i64, align 8
  %tmp7 = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp30 = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp31 = alloca ptr, align 8
  %__vpp_verify36 = alloca ptr, align 8
  %tmp39 = alloca ptr, align 8
  %__ptr40 = alloca i64, align 8
  %tmp41 = alloca ptr, align 8
  %__vpp_verify48 = alloca ptr, align 8
  %tmp51 = alloca ptr, align 8
  %__ptr52 = alloca i64, align 8
  %tmp53 = alloca ptr, align 8
  %__vpp_verify60 = alloca ptr, align 8
  %tmp63 = alloca ptr, align 8
  %__ptr64 = alloca i64, align 8
  %tmp65 = alloca ptr, align 8
  %__vpp_verify72 = alloca ptr, align 8
  %tmp75 = alloca ptr, align 8
  %__ptr76 = alloca i64, align 8
  %tmp77 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %cpu) #11, !dbg !139
  call void @llvm.dbg.declare(metadata ptr %cpu, metadata !96, metadata !DIExpression()), !dbg !140
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta) #11, !dbg !141
  call void @llvm.dbg.declare(metadata ptr %delta, metadata !97, metadata !DIExpression()), !dbg !142
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #11, !dbg !143
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !98, metadata !DIExpression()), !dbg !144
  br label %do.body, !dbg !145

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !147

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !147

do.end:                                           ; preds = %do.cond
  %0 = load i32, ptr @nr_cpu_ids, align 4, !dbg !145
  %1 = load i32, ptr @nr_cpu_ids, align 4, !dbg !145
  %2 = load i32, ptr @nr_node_ids, align 4, !dbg !145
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str, i32 noundef 64, i32 noundef %0, i32 noundef %1, i32 noundef %2) #12, !dbg !145
  store i32 %call, ptr %tmp, align 4, !dbg !147
  %3 = load i32, ptr %tmp, align 4, !dbg !145
  store i32 -22, ptr %rc, align 4, !dbg !149
  %4 = load i32, ptr @pcpu_chosen_fc, align 4, !dbg !150
  %cmp = icmp ne i32 %4, 2, !dbg !151
  br i1 %cmp, label %if.then, label %if.end9, !dbg !152

if.then:                                          ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %dyn_size) #11, !dbg !153
  call void @llvm.dbg.declare(metadata ptr %dyn_size, metadata !99, metadata !DIExpression()), !dbg !154
  store i64 28672, ptr %dyn_size, align 8, !dbg !154
  call void @llvm.lifetime.start.p0(i64 8, ptr %atom_size) #11, !dbg !155
  call void @llvm.dbg.declare(metadata ptr %atom_size, metadata !108, metadata !DIExpression()), !dbg !156
  store i64 2097152, ptr %atom_size, align 8, !dbg !157
  %5 = load i64, ptr %atom_size, align 8, !dbg !158
  %call1 = call i32 @pcpu_embed_first_chunk(i64 noundef 8192, i64 noundef 28672, i64 noundef %5, ptr noundef @pcpu_cpu_distance, ptr noundef @pcpu_cpu_to_node) #12, !dbg !159
  store i32 %call1, ptr %rc, align 4, !dbg !160
  %6 = load i32, ptr %rc, align 4, !dbg !161
  %cmp2 = icmp slt i32 %6, 0, !dbg !163
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !164

if.then3:                                         ; preds = %if.then
  br label %do.body4, !dbg !165

do.body4:                                         ; preds = %if.then3
  br label %do.cond5, !dbg !167

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !167

do.end6:                                          ; preds = %do.cond5
  %7 = load i32, ptr @pcpu_chosen_fc, align 4, !dbg !165
  %idxprom = zext i32 %7 to i64, !dbg !165
  %arrayidx = getelementptr [3 x ptr], ptr @pcpu_fc_names, i64 0, i64 %idxprom, !dbg !165
  %8 = load ptr, ptr %arrayidx, align 8, !dbg !165
  %9 = load i32, ptr %rc, align 4, !dbg !165
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %8, i32 noundef %9) #12, !dbg !165
  store i32 %call8, ptr %tmp7, align 4, !dbg !167
  %10 = load i32, ptr %tmp7, align 4, !dbg !165
  br label %if.end, !dbg !169

if.end:                                           ; preds = %do.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %atom_size) #11, !dbg !170
  call void @llvm.lifetime.end.p0(i64 8, ptr %dyn_size) #11, !dbg !170
  br label %if.end9, !dbg !171

if.end9:                                          ; preds = %if.end, %do.end
  %11 = load i32, ptr %rc, align 4, !dbg !172
  %cmp10 = icmp slt i32 %11, 0, !dbg !174
  br i1 %cmp10, label %if.then11, label %if.end13, !dbg !175

if.then11:                                        ; preds = %if.end9
  %call12 = call i32 @pcpu_page_first_chunk(i64 noundef 8192, ptr noundef @pcpu_cpu_to_node) #12, !dbg !176
  store i32 %call12, ptr %rc, align 4, !dbg !177
  br label %if.end13, !dbg !178

if.end13:                                         ; preds = %if.then11, %if.end9
  %12 = load i32, ptr %rc, align 4, !dbg !179
  %cmp14 = icmp slt i32 %12, 0, !dbg !181
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !182

if.then15:                                        ; preds = %if.end13
  %13 = load i32, ptr %rc, align 4, !dbg !183
  call void (ptr, ...) @panic(ptr noundef @.str.2, i32 noundef %13) #13, !dbg !184
  unreachable, !dbg !184

if.end16:                                         ; preds = %if.end13
  %14 = load ptr, ptr @pcpu_base_addr, align 8, !dbg !185
  %15 = ptrtoint ptr %14 to i64, !dbg !186
  %sub = sub i64 %15, ptrtoint (ptr @__per_cpu_start to i64), !dbg !187
  store i64 %sub, ptr %delta, align 8, !dbg !188
  store i32 0, ptr %cpu, align 4, !dbg !189
  br label %for.cond, !dbg !189

for.cond:                                         ; preds = %for.inc, %if.end16
  %16 = load i32, ptr %cpu, align 4, !dbg !190
  %conv = zext i32 %16 to i64, !dbg !190
  %call17 = call i64 @find_next_bit(ptr noundef @__cpu_possible_mask, i64 noundef 64, i64 noundef %conv) #10, !dbg !190
  %conv18 = trunc i64 %call17 to i32, !dbg !190
  store i32 %conv18, ptr %cpu, align 4, !dbg !190
  %17 = load i32, ptr %cpu, align 4, !dbg !190
  %cmp19 = icmp ult i32 %17, 64, !dbg !190
  br i1 %cmp19, label %for.body, label %for.end, !dbg !189

for.body:                                         ; preds = %for.cond
  %18 = load i64, ptr %delta, align 8, !dbg !191
  %19 = load ptr, ptr @pcpu_unit_offsets, align 8, !dbg !192
  %20 = load i32, ptr %cpu, align 4, !dbg !193
  %idxprom21 = zext i32 %20 to i64, !dbg !192
  %arrayidx22 = getelementptr i64, ptr %19, i64 %idxprom21, !dbg !192
  %21 = load i64, ptr %arrayidx22, align 8, !dbg !192
  %add = add i64 %18, %21, !dbg !194
  %22 = load i32, ptr %cpu, align 4, !dbg !195
  %idxprom23 = zext i32 %22 to i64, !dbg !195
  %arrayidx24 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom23, !dbg !195
  store i64 %add, ptr %arrayidx24, align 8, !dbg !196
  %23 = load i32, ptr %cpu, align 4, !dbg !197
  %idxprom25 = zext i32 %23 to i64, !dbg !197
  %arrayidx26 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom25, !dbg !197
  %24 = load i64, ptr %arrayidx26, align 8, !dbg !197
  br label %do.body27, !dbg !198

do.body27:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !199
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !109, metadata !DIExpression()), !dbg !199
  store ptr null, ptr %__vpp_verify, align 8, !dbg !199
  %25 = load ptr, ptr %__vpp_verify, align 8, !dbg !199
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !198
  br label %do.cond28, !dbg !199

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !199

do.end29:                                         ; preds = %do.cond28
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !200
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !117, metadata !DIExpression()), !dbg !200
  store i64 ptrtoint (ptr @this_cpu_off to i64), ptr %__ptr, align 8, !dbg !200
  %26 = load i64, ptr %__ptr, align 8, !dbg !200
  %27 = load i32, ptr %cpu, align 4, !dbg !200
  %idxprom32 = zext i32 %27 to i64, !dbg !200
  %arrayidx33 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom32, !dbg !200
  %28 = load i64, ptr %arrayidx33, align 8, !dbg !200
  %add34 = add i64 %26, %28, !dbg !200
  %29 = inttoptr i64 %add34 to ptr, !dbg !200
  store ptr %29, ptr %tmp31, align 8, !dbg !200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !198
  %30 = load ptr, ptr %tmp31, align 8, !dbg !200
  store ptr %30, ptr %tmp30, align 8, !dbg !199
  %31 = load ptr, ptr %tmp30, align 8, !dbg !198
  store i64 %24, ptr %31, align 8, !dbg !201
  %32 = load i32, ptr %cpu, align 4, !dbg !202
  br label %do.body35, !dbg !203

do.body35:                                        ; preds = %do.end29
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify36) #11, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify36, metadata !119, metadata !DIExpression()), !dbg !204
  store ptr null, ptr %__vpp_verify36, align 8, !dbg !204
  %33 = load ptr, ptr %__vpp_verify36, align 8, !dbg !204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify36) #11, !dbg !203
  br label %do.cond37, !dbg !204

do.cond37:                                        ; preds = %do.body35
  br label %do.end38, !dbg !204

do.end38:                                         ; preds = %do.cond37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr40) #11, !dbg !205
  call void @llvm.dbg.declare(metadata ptr %__ptr40, metadata !122, metadata !DIExpression()), !dbg !205
  store i64 ptrtoint (ptr getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 2) to i64), ptr %__ptr40, align 8, !dbg !205
  %34 = load i64, ptr %__ptr40, align 8, !dbg !205
  %35 = load i32, ptr %cpu, align 4, !dbg !205
  %idxprom42 = zext i32 %35 to i64, !dbg !205
  %arrayidx43 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom42, !dbg !205
  %36 = load i64, ptr %arrayidx43, align 8, !dbg !205
  %add44 = add i64 %34, %36, !dbg !205
  %37 = inttoptr i64 %add44 to ptr, !dbg !205
  store ptr %37, ptr %tmp41, align 8, !dbg !205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr40) #11, !dbg !203
  %38 = load ptr, ptr %tmp41, align 8, !dbg !205
  store ptr %38, ptr %tmp39, align 8, !dbg !204
  %39 = load ptr, ptr %tmp39, align 8, !dbg !203
  store i32 %32, ptr %39, align 4, !dbg !206
  %40 = load i32, ptr %cpu, align 4, !dbg !207
  call void @setup_percpu_segment(i32 noundef %40) #10, !dbg !208
  %41 = load i32, ptr %cpu, align 4, !dbg !209
  %idxprom45 = zext i32 %41 to i64, !dbg !209
  %arrayidx46 = getelementptr [0 x i16], ptr @x86_cpu_to_apicid_early_map, i64 0, i64 %idxprom45, !dbg !209
  %42 = load i16, ptr %arrayidx46, align 2, !dbg !209
  br label %do.body47, !dbg !210

do.body47:                                        ; preds = %do.end38
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify48) #11, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify48, metadata !124, metadata !DIExpression()), !dbg !211
  store ptr null, ptr %__vpp_verify48, align 8, !dbg !211
  %43 = load ptr, ptr %__vpp_verify48, align 8, !dbg !211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify48) #11, !dbg !210
  br label %do.cond49, !dbg !211

do.cond49:                                        ; preds = %do.body47
  br label %do.end50, !dbg !211

do.end50:                                         ; preds = %do.cond49
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr52) #11, !dbg !212
  call void @llvm.dbg.declare(metadata ptr %__ptr52, metadata !127, metadata !DIExpression()), !dbg !212
  store i64 ptrtoint (ptr @x86_cpu_to_apicid to i64), ptr %__ptr52, align 8, !dbg !212
  %44 = load i64, ptr %__ptr52, align 8, !dbg !212
  %45 = load i32, ptr %cpu, align 4, !dbg !212
  %idxprom54 = zext i32 %45 to i64, !dbg !212
  %arrayidx55 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom54, !dbg !212
  %46 = load i64, ptr %arrayidx55, align 8, !dbg !212
  %add56 = add i64 %44, %46, !dbg !212
  %47 = inttoptr i64 %add56 to ptr, !dbg !212
  store ptr %47, ptr %tmp53, align 8, !dbg !212
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr52) #11, !dbg !210
  %48 = load ptr, ptr %tmp53, align 8, !dbg !212
  store ptr %48, ptr %tmp51, align 8, !dbg !211
  %49 = load ptr, ptr %tmp51, align 8, !dbg !210
  store i16 %42, ptr %49, align 2, !dbg !213
  %50 = load i32, ptr %cpu, align 4, !dbg !214
  %idxprom57 = zext i32 %50 to i64, !dbg !214
  %arrayidx58 = getelementptr [0 x i32], ptr @x86_cpu_to_acpiid_early_map, i64 0, i64 %idxprom57, !dbg !214
  %51 = load i32, ptr %arrayidx58, align 4, !dbg !214
  br label %do.body59, !dbg !215

do.body59:                                        ; preds = %do.end50
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify60) #11, !dbg !216
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify60, metadata !129, metadata !DIExpression()), !dbg !216
  store ptr null, ptr %__vpp_verify60, align 8, !dbg !216
  %52 = load ptr, ptr %__vpp_verify60, align 8, !dbg !216
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify60) #11, !dbg !215
  br label %do.cond61, !dbg !216

do.cond61:                                        ; preds = %do.body59
  br label %do.end62, !dbg !216

do.end62:                                         ; preds = %do.cond61
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr64) #11, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %__ptr64, metadata !132, metadata !DIExpression()), !dbg !217
  store i64 ptrtoint (ptr @x86_cpu_to_acpiid to i64), ptr %__ptr64, align 8, !dbg !217
  %53 = load i64, ptr %__ptr64, align 8, !dbg !217
  %54 = load i32, ptr %cpu, align 4, !dbg !217
  %idxprom66 = zext i32 %54 to i64, !dbg !217
  %arrayidx67 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom66, !dbg !217
  %55 = load i64, ptr %arrayidx67, align 8, !dbg !217
  %add68 = add i64 %53, %55, !dbg !217
  %56 = inttoptr i64 %add68 to ptr, !dbg !217
  store ptr %56, ptr %tmp65, align 8, !dbg !217
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr64) #11, !dbg !215
  %57 = load ptr, ptr %tmp65, align 8, !dbg !217
  store ptr %57, ptr %tmp63, align 8, !dbg !216
  %58 = load ptr, ptr %tmp63, align 8, !dbg !215
  store i32 %51, ptr %58, align 4, !dbg !218
  %59 = load i32, ptr %cpu, align 4, !dbg !219
  %idxprom69 = zext i32 %59 to i64, !dbg !219
  %arrayidx70 = getelementptr [0 x i32], ptr @x86_cpu_to_node_map_early_map, i64 0, i64 %idxprom69, !dbg !219
  %60 = load i32, ptr %arrayidx70, align 4, !dbg !219
  br label %do.body71, !dbg !220

do.body71:                                        ; preds = %do.end62
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify72) #11, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify72, metadata !134, metadata !DIExpression()), !dbg !221
  store ptr null, ptr %__vpp_verify72, align 8, !dbg !221
  %61 = load ptr, ptr %__vpp_verify72, align 8, !dbg !221
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify72) #11, !dbg !220
  br label %do.cond73, !dbg !221

do.cond73:                                        ; preds = %do.body71
  br label %do.end74, !dbg !221

do.end74:                                         ; preds = %do.cond73
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr76) #11, !dbg !222
  call void @llvm.dbg.declare(metadata ptr %__ptr76, metadata !137, metadata !DIExpression()), !dbg !222
  store i64 ptrtoint (ptr @x86_cpu_to_node_map to i64), ptr %__ptr76, align 8, !dbg !222
  %62 = load i64, ptr %__ptr76, align 8, !dbg !222
  %63 = load i32, ptr %cpu, align 4, !dbg !222
  %idxprom78 = zext i32 %63 to i64, !dbg !222
  %arrayidx79 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom78, !dbg !222
  %64 = load i64, ptr %arrayidx79, align 8, !dbg !222
  %add80 = add i64 %62, %64, !dbg !222
  %65 = inttoptr i64 %add80 to ptr, !dbg !222
  store ptr %65, ptr %tmp77, align 8, !dbg !222
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr76) #11, !dbg !220
  %66 = load ptr, ptr %tmp77, align 8, !dbg !222
  store ptr %66, ptr %tmp75, align 8, !dbg !221
  %67 = load ptr, ptr %tmp75, align 8, !dbg !220
  store i32 %60, ptr %67, align 4, !dbg !223
  %68 = load i32, ptr %cpu, align 4, !dbg !224
  %69 = load i32, ptr %cpu, align 4, !dbg !225
  %call81 = call i32 @early_cpu_to_node(i32 noundef %69) #10, !dbg !226
  call void @set_cpu_numa_node(i32 noundef %68, i32 noundef %call81) #10, !dbg !227
  %70 = load i32, ptr %cpu, align 4, !dbg !228
  %tobool = icmp ne i32 %70, 0, !dbg !228
  br i1 %tobool, label %if.end83, label %if.then82, !dbg !230

if.then82:                                        ; preds = %do.end74
  %71 = load i32, ptr %cpu, align 4, !dbg !231
  call void @switch_gdt_and_percpu_base(i32 noundef %71) #10, !dbg !232
  br label %if.end83, !dbg !232

if.end83:                                         ; preds = %if.then82, %do.end74
  br label %for.inc, !dbg !233

for.inc:                                          ; preds = %if.end83
  %72 = load i32, ptr %cpu, align 4, !dbg !190
  %inc = add i32 %72, 1, !dbg !190
  store i32 %inc, ptr %cpu, align 4, !dbg !190
  br label %for.cond, !dbg !190, !llvm.loop !234

for.end:                                          ; preds = %for.cond
  store ptr null, ptr @x86_cpu_to_apicid_early_ptr, align 8, !dbg !238
  store ptr null, ptr @x86_cpu_to_acpiid_early_ptr, align 8, !dbg !239
  store ptr null, ptr @x86_cpu_to_node_map_early_ptr, align 8, !dbg !240
  call void @setup_node_to_cpumask_map() #10, !dbg !241
  call void @setup_cpu_local_masks() #10, !dbg !242
  call void @sync_initial_page_table() #10, !dbg !243
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #11, !dbg !244
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta) #11, !dbg !244
  call void @llvm.lifetime.end.p0(i64 4, ptr %cpu) #11, !dbg !244
  ret void, !dbg !244
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !245 dso_local i32 @_printk(ptr noundef, ...) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !251 dso_local i32 @pcpu_embed_first_chunk(i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4 section ".init.text"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcpu_cpu_distance(i32 noundef %from, i32 noundef %to) #0 section ".init.text" align 16 !dbg !262 {
entry:
  %retval = alloca i32, align 4
  %from.addr = alloca i32, align 4
  %to.addr = alloca i32, align 4
  store i32 %from, ptr %from.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !264, metadata !DIExpression()), !dbg !266
  store i32 %to, ptr %to.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !265, metadata !DIExpression()), !dbg !267
  %0 = load i32, ptr %from.addr, align 4, !dbg !268
  %call = call i32 @early_cpu_to_node(i32 noundef %0) #10, !dbg !270
  %1 = load i32, ptr %to.addr, align 4, !dbg !271
  %call1 = call i32 @early_cpu_to_node(i32 noundef %1) #10, !dbg !272
  %cmp = icmp eq i32 %call, %call1, !dbg !273
  br i1 %cmp, label %if.then, label %if.else, !dbg !274

if.then:                                          ; preds = %entry
  store i32 10, ptr %retval, align 4, !dbg !275
  br label %return, !dbg !275

if.else:                                          ; preds = %entry
  store i32 20, ptr %retval, align 4, !dbg !276
  br label %return, !dbg !276

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !277
  ret i32 %2, !dbg !277
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @pcpu_cpu_to_node(i32 noundef %cpu) #0 section ".init.text" align 16 !dbg !278 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !282
  %call = call i32 @early_cpu_to_node(i32 noundef %0) #10, !dbg !283
  ret i32 %call, !dbg !284
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !285 dso_local i32 @pcpu_page_first_chunk(i64 noundef, ptr noundef) #4 section ".init.text"

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !288 dso_local void @panic(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @find_next_bit(ptr noundef %addr, i64 noundef %size, i64 noundef %offset) #6 align 16 !dbg !292 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %offset.addr = alloca i64, align 8
  %val = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !299, metadata !DIExpression()), !dbg !305
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !300, metadata !DIExpression()), !dbg !306
  store i64 %offset, ptr %offset.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %offset.addr, metadata !301, metadata !DIExpression()), !dbg !307
  %0 = load i64, ptr %size.addr, align 8, !dbg !308
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !308
  br i1 %1, label %land.lhs.true, label %if.end16, !dbg !308

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !308
  %cmp = icmp ule i64 %2, 64, !dbg !308
  br i1 %cmp, label %land.lhs.true1, label %if.end16, !dbg !308

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i64, ptr %size.addr, align 8, !dbg !308
  %cmp2 = icmp ugt i64 %3, 0, !dbg !308
  br i1 %cmp2, label %if.then, label %if.end16, !dbg !309

if.then:                                          ; preds = %land.lhs.true1
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #11, !dbg !310
  call void @llvm.dbg.declare(metadata ptr %val, metadata !302, metadata !DIExpression()), !dbg !311
  %4 = load i64, ptr %offset.addr, align 8, !dbg !312
  %5 = load i64, ptr %size.addr, align 8, !dbg !312
  %cmp3 = icmp uge i64 %4, %5, !dbg !312
  %lnot = xor i1 %cmp3, true, !dbg !312
  %lnot4 = xor i1 %lnot, true, !dbg !312
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !312
  %conv = sext i32 %lnot.ext to i64, !dbg !312
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !312
  %tobool = icmp ne i64 %expval, 0, !dbg !312
  br i1 %tobool, label %if.then5, label %if.end, !dbg !314

if.then5:                                         ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !315
  store i64 %6, ptr %retval, align 8, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

if.end:                                           ; preds = %if.then
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !317
  %8 = load i64, ptr %7, align 8, !dbg !318
  %9 = load i64, ptr %offset.addr, align 8, !dbg !319
  %shl = shl i64 1, %9, !dbg !319
  %sub = sub i64 -1, %shl, !dbg !319
  %add = add i64 %sub, 1, !dbg !319
  %10 = load i64, ptr %size.addr, align 8, !dbg !319
  %sub6 = sub i64 %10, 1, !dbg !319
  %sub7 = sub i64 63, %sub6, !dbg !319
  %shr = lshr i64 -1, %sub7, !dbg !319
  %and = and i64 %add, %shr, !dbg !319
  %add8 = add i64 0, %and, !dbg !319
  %and9 = and i64 %8, %add8, !dbg !320
  store i64 %and9, ptr %val, align 8, !dbg !321
  %11 = load i64, ptr %val, align 8, !dbg !322
  %tobool10 = icmp ne i64 %11, 0, !dbg !322
  br i1 %tobool10, label %cond.true, label %cond.false13, !dbg !322

cond.true:                                        ; preds = %if.end
  %12 = load i64, ptr %val, align 8, !dbg !323
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !323
  br i1 %13, label %cond.true11, label %cond.false, !dbg !323

cond.true11:                                      ; preds = %cond.true
  %14 = load i64, ptr %val, align 8, !dbg !323
  %15 = call i64 @llvm.cttz.i64(i64 %14, i1 true), !dbg !323
  %cast = trunc i64 %15 to i32, !dbg !323
  %conv12 = sext i32 %cast to i64, !dbg !323
  br label %cond.end, !dbg !323

cond.false:                                       ; preds = %cond.true
  %16 = load i64, ptr %val, align 8, !dbg !323
  %call = call i64 @variable__ffs(i64 noundef %16) #10, !dbg !323
  br label %cond.end, !dbg !323

cond.end:                                         ; preds = %cond.false, %cond.true11
  %cond = phi i64 [ %conv12, %cond.true11 ], [ %call, %cond.false ], !dbg !323
  br label %cond.end14, !dbg !322

cond.false13:                                     ; preds = %if.end
  %17 = load i64, ptr %size.addr, align 8, !dbg !324
  br label %cond.end14, !dbg !322

cond.end14:                                       ; preds = %cond.false13, %cond.end
  %cond15 = phi i64 [ %cond, %cond.end ], [ %17, %cond.false13 ], !dbg !322
  store i64 %cond15, ptr %retval, align 8, !dbg !325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !325

cleanup:                                          ; preds = %cond.end14, %if.then5
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #11, !dbg !326
  br label %return

if.end16:                                         ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %18 = load ptr, ptr %addr.addr, align 8, !dbg !327
  %19 = load i64, ptr %size.addr, align 8, !dbg !328
  %20 = load i64, ptr %offset.addr, align 8, !dbg !329
  %call17 = call i64 @_find_next_bit(ptr noundef %18, i64 noundef %19, i64 noundef %20) #10, !dbg !330
  store i64 %call17, ptr %retval, align 8, !dbg !331
  br label %return, !dbg !331

return:                                           ; preds = %if.end16, %cleanup
  %21 = load i64, ptr %retval, align 8, !dbg !332
  ret i64 %21, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @setup_percpu_segment(i32 noundef %cpu) #6 align 16 !dbg !333 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !337, metadata !DIExpression()), !dbg !338
  ret void, !dbg !339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_cpu_numa_node(i32 noundef %cpu, i32 noundef %node) #6 align 16 !dbg !340 {
entry:
  %cpu.addr = alloca i32, align 4
  %node.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !345, metadata !DIExpression()), !dbg !352
  store i32 %node, ptr %node.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !346, metadata !DIExpression()), !dbg !353
  %0 = load i32, ptr %node.addr, align 4, !dbg !354
  br label %do.body, !dbg !355

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !356
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !347, metadata !DIExpression()), !dbg !356
  store ptr null, ptr %__vpp_verify, align 8, !dbg !356
  %1 = load ptr, ptr %__vpp_verify, align 8, !dbg !356
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !355
  br label %do.end, !dbg !356

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !350, metadata !DIExpression()), !dbg !357
  store i64 ptrtoint (ptr @numa_node to i64), ptr %__ptr, align 8, !dbg !357
  %2 = load i64, ptr %__ptr, align 8, !dbg !357
  %3 = load i32, ptr %cpu.addr, align 4, !dbg !357
  %idxprom = sext i32 %3 to i64, !dbg !357
  %arrayidx = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom, !dbg !357
  %4 = load i64, ptr %arrayidx, align 8, !dbg !357
  %add = add i64 %2, %4, !dbg !357
  %5 = inttoptr i64 %add to ptr, !dbg !357
  store ptr %5, ptr %tmp1, align 8, !dbg !357
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !355
  %6 = load ptr, ptr %tmp1, align 8, !dbg !357
  store ptr %6, ptr %tmp, align 8, !dbg !356
  %7 = load ptr, ptr %tmp, align 8, !dbg !355
  store i32 %0, ptr %7, align 4, !dbg !358
  ret void, !dbg !359
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @early_cpu_to_node(i32 noundef %cpu) #6 align 16 !dbg !360 {
entry:
  %cpu.addr = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__ptr = alloca i64, align 8
  %tmp1 = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !363, metadata !DIExpression()), !dbg !369
  %0 = load ptr, ptr @x86_cpu_to_node_map_early_ptr, align 8, !dbg !370
  %tobool = icmp ne ptr %0, null, !dbg !370
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !370

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr @x86_cpu_to_node_map_early_ptr, align 8, !dbg !370
  %2 = load i32, ptr %cpu.addr, align 4, !dbg !370
  %idxprom = sext i32 %2 to i64, !dbg !370
  %arrayidx = getelementptr i32, ptr %1, i64 %idxprom, !dbg !370
  br label %cond.end, !dbg !370

cond.false:                                       ; preds = %entry
  br label %do.body, !dbg !371

do.body:                                          ; preds = %cond.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !372
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !364, metadata !DIExpression()), !dbg !372
  store ptr null, ptr %__vpp_verify, align 8, !dbg !372
  %3 = load ptr, ptr %__vpp_verify, align 8, !dbg !372
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !371
  br label %do.end, !dbg !372

do.end:                                           ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !373
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !367, metadata !DIExpression()), !dbg !373
  store i64 ptrtoint (ptr @x86_cpu_to_node_map to i64), ptr %__ptr, align 8, !dbg !373
  %4 = load i64, ptr %__ptr, align 8, !dbg !373
  %5 = load i32, ptr %cpu.addr, align 4, !dbg !373
  %idxprom2 = sext i32 %5 to i64, !dbg !373
  %arrayidx3 = getelementptr [64 x i64], ptr @__per_cpu_offset, i64 0, i64 %idxprom2, !dbg !373
  %6 = load i64, ptr %arrayidx3, align 8, !dbg !373
  %add = add i64 %4, %6, !dbg !373
  %7 = inttoptr i64 %add to ptr, !dbg !373
  store ptr %7, ptr %tmp1, align 8, !dbg !373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !371
  %8 = load ptr, ptr %tmp1, align 8, !dbg !373
  store ptr %8, ptr %tmp, align 8, !dbg !372
  %9 = load ptr, ptr %tmp, align 8, !dbg !371
  br label %cond.end, !dbg !370

cond.end:                                         ; preds = %do.end, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ %9, %do.end ], !dbg !370
  %10 = load i32, ptr %cond, align 4, !dbg !370
  ret i32 %10, !dbg !374
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !375 dso_local void @switch_gdt_and_percpu_base(i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !377 dso_local void @setup_node_to_cpumask_map() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !378 dso_local void @setup_cpu_local_masks() #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_initial_page_table() #6 align 16 !dbg !380 {
entry:
  ret void, !dbg !382
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @variable__ffs(i64 noundef %word) #9 align 16 !dbg !383 {
entry:
  %word.addr = alloca i64, align 8
  store i64 %word, ptr %word.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %word.addr, metadata !388, metadata !DIExpression()), !dbg !389
  %0 = load i64, ptr %word.addr, align 8, !dbg !390
  %1 = call i64 asm "rep; bsf $1,$0", "=r,rm,~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !391, !srcloc !392
  store i64 %1, ptr %word.addr, align 8, !dbg !391
  %2 = load i64, ptr %word.addr, align 8, !dbg !393
  ret i64 %2, !dbg !394
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !395 dso_local i64 @_find_next_bit(ptr noundef, i64 noundef, i64 noundef) #2

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone }
attributes #11 = { nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { cold noredzone noreturn }
attributes #14 = { nounwind memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "this_cpu_off", scope: !2, file: !3, line: 32, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.setup_percpu.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/setup_percpu\22 -D KBUILD_BASENAME=\22setup_percpu\22 -D KBUILD_MODNAME=\22setup_percpu\22 -D __KBUILD_MODNAME=kmod_setup_percpu -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/setup_percpu.ll arch/x86/kernel/setup_percpu.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !13, globals: !37, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/setup_percpu.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99d6c9b7a413e126e01f622ce6ed2225")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pcpu_fc", file: !6, line: 92, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/percpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5b443d1a4673980cdbec5f10c6cbbaa")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "PCPU_FC_AUTO", value: 0)
!10 = !DIEnumerator(name: "PCPU_FC_EMBED", value: 1)
!11 = !DIEnumerator(name: "PCPU_FC_PAGE", value: 2)
!12 = !DIEnumerator(name: "PCPU_FC_NR", value: 3)
!13 = !{!14, !15, !16, !7, !25, !26, !28, !34, !27}
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !19, line: 19, size: 64, elements: !20)
!19 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!20 = !{!21}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !18, file: !19, line: 19, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 64, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 1)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !30, line: 19, baseType: !31)
!30 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !32, line: 24, baseType: !33)
!32 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !30, line: 21, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !32, line: 27, baseType: !7)
!37 = !{!0, !38, !40, !45, !47, !53, !58}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_this_cpu_off322", scope: !2, file: !3, line: 33, type: !15, isLocal: true, isDefinition: true)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__per_cpu_offset", scope: !2, file: !3, line: 35, type: !42, isLocal: false, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4096, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 64)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___per_cpu_offset323", scope: !2, file: !3, line: 38, type: !15, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 608, elements: !51)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52}
!52 = !DISubrange(count: 76)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 552, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 69)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !60, isLocal: true, isDefinition: true)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 312, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 39)
!63 = !{i32 7, !"Dwarf Version", i32 5}
!64 = !{i32 2, !"Debug Info Version", i32 3}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 8, !"cf-protection-branch", i32 1}
!67 = !{i32 4, !"function_return_thunk_extern", i32 1}
!68 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!69 = !{i32 1, !"Code Model", i32 2}
!70 = !{i32 1, !"override-stack-alignment", i32 8}
!71 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!72 = distinct !DISubprogram(name: "pcpu_populate_pte", scope: !3, file: !3, line: 101, type: !73, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !14}
!75 = !{!76}
!76 = !DILocalVariable(name: "addr", arg: 1, scope: !72, file: !3, line: 101, type: !14)
!77 = !DILocation(line: 101, column: 45, scope: !72)
!78 = !DILocation(line: 103, column: 21, scope: !72)
!79 = !DILocation(line: 103, column: 2, scope: !72)
!80 = !DILocation(line: 104, column: 1, scope: !72)
!81 = !DISubprogram(name: "populate_extra_pte", scope: !82, file: !82, line: 893, type: !83, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!82 = !DIFile(filename: "./arch/x86/include/asm/pgtable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "40a9f4cb2b1b2fff495e3ab16a522abc")
!83 = !DISubroutineType(types: !84)
!84 = !{!85, !14}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "pte_t", file: !87, line: 21, baseType: !88)
!87 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !87, line: 21, size: 64, elements: !89)
!89 = !{!90}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pte", scope: !88, file: !87, line: 21, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "pteval_t", file: !87, line: 14, baseType: !14)
!92 = distinct !DISubprogram(name: "setup_per_cpu_areas", scope: !3, file: !3, line: 116, type: !93, scopeLine: 117, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{null}
!95 = !{!96, !97, !98, !99, !108, !109, !117, !119, !122, !124, !127, !129, !132, !134, !137}
!96 = !DILocalVariable(name: "cpu", scope: !92, file: !3, line: 118, type: !7)
!97 = !DILocalVariable(name: "delta", scope: !92, file: !3, line: 119, type: !14)
!98 = !DILocalVariable(name: "rc", scope: !92, file: !3, line: 120, type: !27)
!99 = !DILocalVariable(name: "dyn_size", scope: !100, file: !3, line: 137, type: !102)
!100 = distinct !DILexicalBlock(scope: !101, file: !3, line: 136, column: 38)
!101 = distinct !DILexicalBlock(scope: !92, file: !3, line: 136, column: 6)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 61, baseType: !105)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !106, line: 72, baseType: !107)
!106 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !106, line: 16, baseType: !14)
!108 = !DILocalVariable(name: "atom_size", scope: !100, file: !3, line: 139, type: !103)
!109 = !DILocalVariable(name: "__vpp_verify", scope: !110, file: !3, line: 171, type: !115)
!110 = distinct !DILexicalBlock(scope: !111, file: !3, line: 171, column: 3)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 171, column: 3)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 169, column: 29)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 169, column: 2)
!114 = distinct !DILexicalBlock(scope: !92, file: !3, line: 169, column: 2)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!117 = !DILocalVariable(name: "__ptr", scope: !118, file: !3, line: 171, type: !14)
!118 = distinct !DILexicalBlock(scope: !111, file: !3, line: 171, column: 3)
!119 = !DILocalVariable(name: "__vpp_verify", scope: !120, file: !3, line: 172, type: !115)
!120 = distinct !DILexicalBlock(scope: !121, file: !3, line: 172, column: 3)
!121 = distinct !DILexicalBlock(scope: !112, file: !3, line: 172, column: 3)
!122 = !DILocalVariable(name: "__ptr", scope: !123, file: !3, line: 172, type: !14)
!123 = distinct !DILexicalBlock(scope: !121, file: !3, line: 172, column: 3)
!124 = !DILocalVariable(name: "__vpp_verify", scope: !125, file: !3, line: 182, type: !115)
!125 = distinct !DILexicalBlock(scope: !126, file: !3, line: 182, column: 3)
!126 = distinct !DILexicalBlock(scope: !112, file: !3, line: 182, column: 3)
!127 = !DILocalVariable(name: "__ptr", scope: !128, file: !3, line: 182, type: !14)
!128 = distinct !DILexicalBlock(scope: !126, file: !3, line: 182, column: 3)
!129 = !DILocalVariable(name: "__vpp_verify", scope: !130, file: !3, line: 184, type: !115)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 184, column: 3)
!131 = distinct !DILexicalBlock(scope: !112, file: !3, line: 184, column: 3)
!132 = !DILocalVariable(name: "__ptr", scope: !133, file: !3, line: 184, type: !14)
!133 = distinct !DILexicalBlock(scope: !131, file: !3, line: 184, column: 3)
!134 = !DILocalVariable(name: "__vpp_verify", scope: !135, file: !3, line: 188, type: !115)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 188, column: 3)
!136 = distinct !DILexicalBlock(scope: !112, file: !3, line: 188, column: 3)
!137 = !DILocalVariable(name: "__ptr", scope: !138, file: !3, line: 188, type: !14)
!138 = distinct !DILexicalBlock(scope: !136, file: !3, line: 188, column: 3)
!139 = !DILocation(line: 118, column: 2, scope: !92)
!140 = !DILocation(line: 118, column: 15, scope: !92)
!141 = !DILocation(line: 119, column: 2, scope: !92)
!142 = !DILocation(line: 119, column: 16, scope: !92)
!143 = !DILocation(line: 120, column: 2, scope: !92)
!144 = !DILocation(line: 120, column: 6, scope: !92)
!145 = !DILocation(line: 122, column: 2, scope: !146)
!146 = distinct !DILexicalBlock(scope: !92, file: !3, line: 122, column: 2)
!147 = !DILocation(line: 122, column: 2, scope: !148)
!148 = distinct !DILexicalBlock(scope: !146, file: !3, line: 122, column: 2)
!149 = !DILocation(line: 135, column: 5, scope: !92)
!150 = !DILocation(line: 136, column: 6, scope: !101)
!151 = !DILocation(line: 136, column: 21, scope: !101)
!152 = !DILocation(line: 136, column: 6, scope: !92)
!153 = !DILocation(line: 137, column: 3, scope: !100)
!154 = !DILocation(line: 137, column: 16, scope: !100)
!155 = !DILocation(line: 139, column: 3, scope: !100)
!156 = !DILocation(line: 139, column: 10, scope: !100)
!157 = !DILocation(line: 149, column: 13, scope: !100)
!158 = !DILocation(line: 154, column: 20, scope: !100)
!159 = !DILocation(line: 153, column: 8, scope: !100)
!160 = !DILocation(line: 153, column: 6, scope: !100)
!161 = !DILocation(line: 157, column: 7, scope: !162)
!162 = distinct !DILexicalBlock(scope: !100, file: !3, line: 157, column: 7)
!163 = !DILocation(line: 157, column: 10, scope: !162)
!164 = !DILocation(line: 157, column: 7, scope: !100)
!165 = !DILocation(line: 158, column: 4, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 158, column: 4)
!167 = !DILocation(line: 158, column: 4, scope: !168)
!168 = distinct !DILexicalBlock(scope: !166, file: !3, line: 158, column: 4)
!169 = !DILocation(line: 158, column: 4, scope: !162)
!170 = !DILocation(line: 160, column: 2, scope: !101)
!171 = !DILocation(line: 160, column: 2, scope: !100)
!172 = !DILocation(line: 161, column: 6, scope: !173)
!173 = distinct !DILexicalBlock(scope: !92, file: !3, line: 161, column: 6)
!174 = !DILocation(line: 161, column: 9, scope: !173)
!175 = !DILocation(line: 161, column: 6, scope: !92)
!176 = !DILocation(line: 162, column: 8, scope: !173)
!177 = !DILocation(line: 162, column: 6, scope: !173)
!178 = !DILocation(line: 162, column: 3, scope: !173)
!179 = !DILocation(line: 164, column: 6, scope: !180)
!180 = distinct !DILexicalBlock(scope: !92, file: !3, line: 164, column: 6)
!181 = !DILocation(line: 164, column: 9, scope: !180)
!182 = !DILocation(line: 164, column: 6, scope: !92)
!183 = !DILocation(line: 165, column: 51, scope: !180)
!184 = !DILocation(line: 165, column: 3, scope: !180)
!185 = !DILocation(line: 168, column: 25, scope: !92)
!186 = !DILocation(line: 168, column: 10, scope: !92)
!187 = !DILocation(line: 168, column: 40, scope: !92)
!188 = !DILocation(line: 168, column: 8, scope: !92)
!189 = !DILocation(line: 169, column: 2, scope: !114)
!190 = !DILocation(line: 169, column: 2, scope: !113)
!191 = !DILocation(line: 170, column: 25, scope: !112)
!192 = !DILocation(line: 170, column: 33, scope: !112)
!193 = !DILocation(line: 170, column: 51, scope: !112)
!194 = !DILocation(line: 170, column: 31, scope: !112)
!195 = !DILocation(line: 170, column: 3, scope: !112)
!196 = !DILocation(line: 170, column: 23, scope: !112)
!197 = !DILocation(line: 171, column: 32, scope: !112)
!198 = !DILocation(line: 171, column: 3, scope: !111)
!199 = !DILocation(line: 171, column: 3, scope: !110)
!200 = !DILocation(line: 171, column: 3, scope: !118)
!201 = !DILocation(line: 171, column: 30, scope: !112)
!202 = !DILocation(line: 172, column: 39, scope: !112)
!203 = !DILocation(line: 172, column: 3, scope: !121)
!204 = !DILocation(line: 172, column: 3, scope: !120)
!205 = !DILocation(line: 172, column: 3, scope: !123)
!206 = !DILocation(line: 172, column: 37, scope: !112)
!207 = !DILocation(line: 173, column: 24, scope: !112)
!208 = !DILocation(line: 173, column: 3, scope: !112)
!209 = !DILocation(line: 183, column: 4, scope: !112)
!210 = !DILocation(line: 182, column: 3, scope: !126)
!211 = !DILocation(line: 182, column: 3, scope: !125)
!212 = !DILocation(line: 182, column: 3, scope: !128)
!213 = !DILocation(line: 182, column: 35, scope: !112)
!214 = !DILocation(line: 185, column: 4, scope: !112)
!215 = !DILocation(line: 184, column: 3, scope: !131)
!216 = !DILocation(line: 184, column: 3, scope: !130)
!217 = !DILocation(line: 184, column: 3, scope: !133)
!218 = !DILocation(line: 184, column: 35, scope: !112)
!219 = !DILocation(line: 189, column: 4, scope: !112)
!220 = !DILocation(line: 188, column: 3, scope: !136)
!221 = !DILocation(line: 188, column: 3, scope: !135)
!222 = !DILocation(line: 188, column: 3, scope: !138)
!223 = !DILocation(line: 188, column: 37, scope: !112)
!224 = !DILocation(line: 198, column: 21, scope: !112)
!225 = !DILocation(line: 198, column: 44, scope: !112)
!226 = !DILocation(line: 198, column: 26, scope: !112)
!227 = !DILocation(line: 198, column: 3, scope: !112)
!228 = !DILocation(line: 204, column: 8, scope: !229)
!229 = distinct !DILexicalBlock(scope: !112, file: !3, line: 204, column: 7)
!230 = !DILocation(line: 204, column: 7, scope: !112)
!231 = !DILocation(line: 205, column: 31, scope: !229)
!232 = !DILocation(line: 205, column: 4, scope: !229)
!233 = !DILocation(line: 206, column: 2, scope: !112)
!234 = distinct !{!234, !189, !235, !236, !237}
!235 = !DILocation(line: 206, column: 2, scope: !114)
!236 = !{!"llvm.loop.mustprogress"}
!237 = !{!"llvm.loop.unroll.disable"}
!238 = !DILocation(line: 210, column: 39, scope: !92)
!239 = !DILocation(line: 211, column: 39, scope: !92)
!240 = !DILocation(line: 214, column: 41, scope: !92)
!241 = !DILocation(line: 218, column: 2, scope: !92)
!242 = !DILocation(line: 221, column: 2, scope: !92)
!243 = !DILocation(line: 233, column: 2, scope: !92)
!244 = !DILocation(line: 234, column: 1, scope: !92)
!245 = !DISubprogram(name: "_printk", scope: !246, file: !246, line: 153, type: !247, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!246 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!247 = !DISubroutineType(types: !248)
!248 = !{!27, !249, null}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!251 = !DISubprogram(name: "pcpu_embed_first_chunk", scope: !6, file: !6, line: 113, type: !252, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!252 = !DISubroutineType(types: !253)
!253 = !{!27, !103, !103, !103, !254, !258}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcpu_fc_cpu_distance_fn_t", file: !6, line: 104, baseType: !256)
!256 = !DISubroutineType(types: !257)
!257 = !{!27, !7, !7}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "pcpu_fc_cpu_to_node_fn_t", file: !6, line: 103, baseType: !260)
!260 = !DISubroutineType(types: !261)
!261 = !{!27, !27}
!262 = distinct !DISubprogram(name: "pcpu_cpu_distance", scope: !3, file: !3, line: 84, type: !256, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !263)
!263 = !{!264, !265}
!264 = !DILocalVariable(name: "from", arg: 1, scope: !262, file: !3, line: 84, type: !7)
!265 = !DILocalVariable(name: "to", arg: 2, scope: !262, file: !3, line: 84, type: !7)
!266 = !DILocation(line: 84, column: 50, scope: !262)
!267 = !DILocation(line: 84, column: 69, scope: !262)
!268 = !DILocation(line: 87, column: 24, scope: !269)
!269 = distinct !DILexicalBlock(scope: !262, file: !3, line: 87, column: 6)
!270 = !DILocation(line: 87, column: 6, scope: !269)
!271 = !DILocation(line: 87, column: 51, scope: !269)
!272 = !DILocation(line: 87, column: 33, scope: !269)
!273 = !DILocation(line: 87, column: 30, scope: !269)
!274 = !DILocation(line: 87, column: 6, scope: !262)
!275 = !DILocation(line: 88, column: 3, scope: !269)
!276 = !DILocation(line: 90, column: 3, scope: !269)
!277 = !DILocation(line: 94, column: 1, scope: !262)
!278 = distinct !DISubprogram(name: "pcpu_cpu_to_node", scope: !3, file: !3, line: 96, type: !260, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "cpu", arg: 1, scope: !278, file: !3, line: 96, type: !27)
!281 = !DILocation(line: 96, column: 40, scope: !278)
!282 = !DILocation(line: 98, column: 27, scope: !278)
!283 = !DILocation(line: 98, column: 9, scope: !278)
!284 = !DILocation(line: 98, column: 2, scope: !278)
!285 = !DISubprogram(name: "pcpu_page_first_chunk", scope: !6, file: !6, line: 120, type: !286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!286 = !DISubroutineType(types: !287)
!287 = !{!27, !103, !258}
!288 = !DISubprogram(name: "panic", scope: !289, file: !289, line: 12, type: !290, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!289 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!290 = !DISubroutineType(types: !291)
!291 = !{null, !249, null}
!292 = distinct !DISubprogram(name: "find_next_bit", scope: !293, file: !293, line: 54, type: !294, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!293 = !DIFile(filename: "./include/linux/find.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8200f3aac630f0628918995842ef772e")
!294 = !DISubroutineType(types: !295)
!295 = !{!14, !296, !14, !14}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!298 = !{!299, !300, !301, !302}
!299 = !DILocalVariable(name: "addr", arg: 1, scope: !292, file: !293, line: 54, type: !296)
!300 = !DILocalVariable(name: "size", arg: 2, scope: !292, file: !293, line: 54, type: !14)
!301 = !DILocalVariable(name: "offset", arg: 3, scope: !292, file: !293, line: 55, type: !14)
!302 = !DILocalVariable(name: "val", scope: !303, file: !293, line: 58, type: !14)
!303 = distinct !DILexicalBlock(scope: !304, file: !293, line: 57, column: 31)
!304 = distinct !DILexicalBlock(scope: !292, file: !293, line: 57, column: 6)
!305 = !DILocation(line: 54, column: 50, scope: !292)
!306 = !DILocation(line: 54, column: 70, scope: !292)
!307 = !DILocation(line: 55, column: 22, scope: !292)
!308 = !DILocation(line: 57, column: 6, scope: !304)
!309 = !DILocation(line: 57, column: 6, scope: !292)
!310 = !DILocation(line: 58, column: 3, scope: !303)
!311 = !DILocation(line: 58, column: 17, scope: !303)
!312 = !DILocation(line: 60, column: 7, scope: !313)
!313 = distinct !DILexicalBlock(scope: !303, file: !293, line: 60, column: 7)
!314 = !DILocation(line: 60, column: 7, scope: !303)
!315 = !DILocation(line: 61, column: 11, scope: !313)
!316 = !DILocation(line: 61, column: 4, scope: !313)
!317 = !DILocation(line: 63, column: 10, scope: !303)
!318 = !DILocation(line: 63, column: 9, scope: !303)
!319 = !DILocation(line: 63, column: 17, scope: !303)
!320 = !DILocation(line: 63, column: 15, scope: !303)
!321 = !DILocation(line: 63, column: 7, scope: !303)
!322 = !DILocation(line: 64, column: 10, scope: !303)
!323 = !DILocation(line: 64, column: 16, scope: !303)
!324 = !DILocation(line: 64, column: 29, scope: !303)
!325 = !DILocation(line: 64, column: 3, scope: !303)
!326 = !DILocation(line: 65, column: 2, scope: !304)
!327 = !DILocation(line: 67, column: 24, scope: !292)
!328 = !DILocation(line: 67, column: 30, scope: !292)
!329 = !DILocation(line: 67, column: 36, scope: !292)
!330 = !DILocation(line: 67, column: 9, scope: !292)
!331 = !DILocation(line: 67, column: 2, scope: !292)
!332 = !DILocation(line: 68, column: 1, scope: !292)
!333 = distinct !DISubprogram(name: "setup_percpu_segment", scope: !3, file: !3, line: 106, type: !334, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !336)
!334 = !DISubroutineType(types: !335)
!335 = !{null, !27}
!336 = !{!337}
!337 = !DILocalVariable(name: "cpu", arg: 1, scope: !333, file: !3, line: 106, type: !27)
!338 = !DILocation(line: 106, column: 45, scope: !333)
!339 = !DILocation(line: 114, column: 1, scope: !333)
!340 = distinct !DISubprogram(name: "set_cpu_numa_node", scope: !341, file: !341, line: 108, type: !342, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !344)
!341 = !DIFile(filename: "./include/linux/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cc15680d35900f366282ea60d185adfa")
!342 = !DISubroutineType(types: !343)
!343 = !{null, !27, !27}
!344 = !{!345, !346, !347, !350}
!345 = !DILocalVariable(name: "cpu", arg: 1, scope: !340, file: !341, line: 108, type: !27)
!346 = !DILocalVariable(name: "node", arg: 2, scope: !340, file: !341, line: 108, type: !27)
!347 = !DILocalVariable(name: "__vpp_verify", scope: !348, file: !341, line: 110, type: !115)
!348 = distinct !DILexicalBlock(scope: !349, file: !341, line: 110, column: 2)
!349 = distinct !DILexicalBlock(scope: !340, file: !341, line: 110, column: 2)
!350 = !DILocalVariable(name: "__ptr", scope: !351, file: !341, line: 110, type: !14)
!351 = distinct !DILexicalBlock(scope: !349, file: !341, line: 110, column: 2)
!352 = !DILocation(line: 108, column: 42, scope: !340)
!353 = !DILocation(line: 108, column: 51, scope: !340)
!354 = !DILocation(line: 110, column: 28, scope: !340)
!355 = !DILocation(line: 110, column: 2, scope: !349)
!356 = !DILocation(line: 110, column: 2, scope: !348)
!357 = !DILocation(line: 110, column: 2, scope: !351)
!358 = !DILocation(line: 110, column: 26, scope: !340)
!359 = !DILocation(line: 111, column: 1, scope: !340)
!360 = distinct !DISubprogram(name: "early_cpu_to_node", scope: !361, file: !361, line: 56, type: !260, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!361 = !DIFile(filename: "./arch/x86/include/asm/topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "120eda241c1b2b25166ee71f2a584d2d")
!362 = !{!363, !364, !367}
!363 = !DILocalVariable(name: "cpu", arg: 1, scope: !360, file: !361, line: 56, type: !27)
!364 = !DILocalVariable(name: "__vpp_verify", scope: !365, file: !361, line: 58, type: !115)
!365 = distinct !DILexicalBlock(scope: !366, file: !361, line: 58, column: 9)
!366 = distinct !DILexicalBlock(scope: !360, file: !361, line: 58, column: 9)
!367 = !DILocalVariable(name: "__ptr", scope: !368, file: !361, line: 58, type: !14)
!368 = distinct !DILexicalBlock(scope: !366, file: !361, line: 58, column: 9)
!369 = !DILocation(line: 56, column: 41, scope: !360)
!370 = !DILocation(line: 58, column: 9, scope: !360)
!371 = !DILocation(line: 58, column: 9, scope: !366)
!372 = !DILocation(line: 58, column: 9, scope: !365)
!373 = !DILocation(line: 58, column: 9, scope: !368)
!374 = !DILocation(line: 58, column: 2, scope: !360)
!375 = !DISubprogram(name: "switch_gdt_and_percpu_base", scope: !376, file: !376, line: 572, type: !334, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!376 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!377 = !DISubprogram(name: "setup_node_to_cpumask_map", scope: !361, file: !361, line: 76, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!378 = !DISubprogram(name: "setup_cpu_local_masks", scope: !379, file: !379, line: 7, type: !93, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!379 = !DIFile(filename: "./arch/x86/include/asm/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c2de7d94006d09669e842c5b64e919c")
!380 = distinct !DISubprogram(name: "sync_initial_page_table", scope: !381, file: !381, line: 32, type: !93, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!381 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2362587396c42a8ad932bab8fed5cb38")
!382 = !DILocation(line: 32, column: 52, scope: !380)
!383 = distinct !DISubprogram(name: "variable__ffs", scope: !384, file: !384, line: 250, type: !385, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !387)
!384 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!385 = !DISubroutineType(types: !386)
!386 = !{!14, !14}
!387 = !{!388}
!388 = !DILocalVariable(name: "word", arg: 1, scope: !383, file: !384, line: 250, type: !14)
!389 = !DILocation(line: 250, column: 66, scope: !383)
!390 = !DILocation(line: 254, column: 11, scope: !383)
!391 = !DILocation(line: 252, column: 2, scope: !383)
!392 = !{i64 299698}
!393 = !DILocation(line: 255, column: 9, scope: !383)
!394 = !DILocation(line: 255, column: 2, scope: !383)
!395 = !DISubprogram(name: "_find_next_bit", scope: !293, file: !293, line: 11, type: !294, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

; ModuleID = 'arch/x86/kernel/cpu/topology.c'
source_filename = "arch/x86/kernel/cpu/topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___max_die_per_package: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad __max_die_per_package ; .previous"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__max_die_per_package = hidden global i32 1, section ".data..read_mostly", align 4, !dbg !0
@__UNIQUE_ID___addressable___max_die_per_package217 = internal global ptr @__max_die_per_package, section ".discard.addressable", align 8, !dbg !23
@smp_num_siblings = external dso_local global i32, align 4
@apic = external dso_local global ptr, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___max_die_per_package217], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @detect_extended_topology_early(ptr noundef %c) #0 align 16 !dbg !34 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %leaf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x218 = alloca i32, align 4
  %__UNIQUE_ID___y219 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !120, metadata !DIExpression()), !dbg !129
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #6, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !121, metadata !DIExpression()), !dbg !131
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #6, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !122, metadata !DIExpression()), !dbg !132
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #6, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !123, metadata !DIExpression()), !dbg !133
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #6, !dbg !130
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !124, metadata !DIExpression()), !dbg !134
  call void @llvm.lifetime.start.p0(i64 4, ptr %leaf) #6, !dbg !135
  call void @llvm.dbg.declare(metadata ptr %leaf, metadata !125, metadata !DIExpression()), !dbg !136
  %0 = load ptr, ptr %c.addr, align 8, !dbg !137
  %call = call i32 @detect_extended_topology_leaf(ptr noundef %0) #7, !dbg !138
  store i32 %call, ptr %leaf, align 4, !dbg !139
  %1 = load i32, ptr %leaf, align 4, !dbg !140
  %cmp = icmp slt i32 %1, 0, !dbg !142
  br i1 %cmp, label %if.then, label %if.end, !dbg !143

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !144
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !144

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !145
  %3 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 10, !dbg !145
  %arraydecay = getelementptr inbounds [24 x i32], ptr %3, i64 0, i64 0, !dbg !145
  call void @set_bit(i64 noundef 118, ptr noundef %arraydecay) #7, !dbg !145
  %4 = load i32, ptr %leaf, align 4, !dbg !146
  call void @cpuid_count(i32 noundef %4, i32 noundef 0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #7, !dbg !147
  %5 = load i32, ptr %edx, align 4, !dbg !148
  %conv = trunc i32 %5 to i16, !dbg !148
  %6 = load ptr, ptr %c.addr, align 8, !dbg !149
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %6, i32 0, i32 23, !dbg !150
  store i16 %conv, ptr %initial_apicid, align 4, !dbg !151
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x218) #6, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x218, metadata !126, metadata !DIExpression()), !dbg !152
  %7 = load i32, ptr @smp_num_siblings, align 4, !dbg !152
  store i32 %7, ptr %__UNIQUE_ID___x218, align 4, !dbg !152
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y219) #6, !dbg !152
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y219, metadata !128, metadata !DIExpression()), !dbg !152
  %8 = load i32, ptr %ebx, align 4, !dbg !152
  %and = and i32 %8, 65535, !dbg !152
  store i32 %and, ptr %__UNIQUE_ID___y219, align 4, !dbg !152
  %9 = load i32, ptr %__UNIQUE_ID___x218, align 4, !dbg !152
  %10 = load i32, ptr %__UNIQUE_ID___y219, align 4, !dbg !152
  %cmp1 = icmp sgt i32 %9, %10, !dbg !152
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !152

cond.true:                                        ; preds = %if.end
  %11 = load i32, ptr %__UNIQUE_ID___x218, align 4, !dbg !152
  br label %cond.end, !dbg !152

cond.false:                                       ; preds = %if.end
  %12 = load i32, ptr %__UNIQUE_ID___y219, align 4, !dbg !152
  br label %cond.end, !dbg !152

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !152
  store i32 %cond, ptr %tmp, align 4, !dbg !152
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y219) #6, !dbg !153
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x218) #6, !dbg !153
  %13 = load i32, ptr %tmp, align 4, !dbg !152
  store i32 %13, ptr @smp_num_siblings, align 4, !dbg !154
  store i32 0, ptr %retval, align 4, !dbg !155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !155

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %leaf) #6, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #6, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #6, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #6, !dbg !156
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #6, !dbg !156
  %14 = load i32, ptr %retval, align 4, !dbg !156
  ret i32 %14, !dbg !156
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @detect_extended_topology_leaf(ptr noundef %c) #0 align 16 !dbg !157 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load ptr, ptr %c.addr, align 8, !dbg !161
  %cpuid_level = getelementptr inbounds %struct.cpuinfo_x86, ptr %0, i32 0, i32 9, !dbg !163
  %1 = load i32, ptr %cpuid_level, align 8, !dbg !163
  %cmp = icmp sge i32 %1, 31, !dbg !164
  br i1 %cmp, label %if.then, label %if.end3, !dbg !165

if.then:                                          ; preds = %entry
  %call = call i32 @check_extended_topology_leaf(i32 noundef 31) #7, !dbg !166
  %cmp1 = icmp eq i32 %call, 0, !dbg !169
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !170

if.then2:                                         ; preds = %if.then
  store i32 31, ptr %retval, align 4, !dbg !171
  br label %return, !dbg !171

if.end:                                           ; preds = %if.then
  br label %if.end3, !dbg !172

if.end3:                                          ; preds = %if.end, %entry
  %2 = load ptr, ptr %c.addr, align 8, !dbg !173
  %cpuid_level4 = getelementptr inbounds %struct.cpuinfo_x86, ptr %2, i32 0, i32 9, !dbg !175
  %3 = load i32, ptr %cpuid_level4, align 8, !dbg !175
  %cmp5 = icmp sge i32 %3, 11, !dbg !176
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !177

if.then6:                                         ; preds = %if.end3
  %call7 = call i32 @check_extended_topology_leaf(i32 noundef 11) #7, !dbg !178
  %cmp8 = icmp eq i32 %call7, 0, !dbg !181
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !182

if.then9:                                         ; preds = %if.then6
  store i32 11, ptr %retval, align 4, !dbg !183
  br label %return, !dbg !183

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !184

if.end11:                                         ; preds = %if.end10, %if.end3
  store i32 -1, ptr %retval, align 4, !dbg !185
  br label %return, !dbg !185

return:                                           ; preds = %if.end11, %if.then9, %if.then2
  %4 = load i32, ptr %retval, align 4, !dbg !186
  ret i32 %4, !dbg !186
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !187 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !194, metadata !DIExpression()), !dbg !196
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !195, metadata !DIExpression()), !dbg !197
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !198
  %1 = load i64, ptr %nr.addr, align 8, !dbg !199
  %div = sdiv i64 %1, 64, !dbg !199
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !200
  call void @instrument_atomic_write(ptr noundef %add.ptr, i64 noundef 8) #7, !dbg !201
  %2 = load i64, ptr %nr.addr, align 8, !dbg !202
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !203
  call void @arch_set_bit(i64 noundef %2, ptr noundef %3) #7, !dbg !204
  ret void, !dbg !205
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuid_count(i32 noundef %op, i32 noundef %count, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !206 {
entry:
  %op.addr = alloca i32, align 4
  %count.addr = alloca i32, align 4
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store i32 %op, ptr %op.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !212, metadata !DIExpression()), !dbg !218
  store i32 %count, ptr %count.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !213, metadata !DIExpression()), !dbg !219
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !214, metadata !DIExpression()), !dbg !220
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !215, metadata !DIExpression()), !dbg !221
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !216, metadata !DIExpression()), !dbg !222
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !217, metadata !DIExpression()), !dbg !223
  %0 = load i32, ptr %op.addr, align 4, !dbg !224
  %1 = load ptr, ptr %eax.addr, align 8, !dbg !225
  store i32 %0, ptr %1, align 4, !dbg !226
  %2 = load i32, ptr %count.addr, align 4, !dbg !227
  %3 = load ptr, ptr %ecx.addr, align 8, !dbg !228
  store i32 %2, ptr %3, align 4, !dbg !229
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !230
  %5 = load ptr, ptr %ebx.addr, align 8, !dbg !231
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !232
  %7 = load ptr, ptr %edx.addr, align 8, !dbg !233
  call void @native_cpuid(ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #7, !dbg !234
  ret void, !dbg !235
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @detect_extended_topology(ptr noundef %c) #0 align 16 !dbg !236 {
entry:
  %retval = alloca i32, align 4
  %c.addr = alloca ptr, align 8
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %sub_index = alloca i32, align 4
  %ht_mask_width = alloca i32, align 4
  %core_plus_mask_width = alloca i32, align 4
  %die_plus_mask_width = alloca i32, align 4
  %core_select_mask = alloca i32, align 4
  %core_level_siblings = alloca i32, align 4
  %die_select_mask = alloca i32, align 4
  %die_level_siblings = alloca i32, align 4
  %pkg_mask_width = alloca i32, align 4
  %die_level_present = alloca i8, align 1
  %leaf = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x220 = alloca i32, align 4
  %__UNIQUE_ID___y221 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !238, metadata !DIExpression()), !dbg !257
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !239, metadata !DIExpression()), !dbg !259
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !240, metadata !DIExpression()), !dbg !260
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !241, metadata !DIExpression()), !dbg !261
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !242, metadata !DIExpression()), !dbg !262
  call void @llvm.lifetime.start.p0(i64 4, ptr %sub_index) #6, !dbg !258
  call void @llvm.dbg.declare(metadata ptr %sub_index, metadata !243, metadata !DIExpression()), !dbg !263
  call void @llvm.lifetime.start.p0(i64 4, ptr %ht_mask_width) #6, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %ht_mask_width, metadata !244, metadata !DIExpression()), !dbg !265
  call void @llvm.lifetime.start.p0(i64 4, ptr %core_plus_mask_width) #6, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %core_plus_mask_width, metadata !245, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 4, ptr %die_plus_mask_width) #6, !dbg !264
  call void @llvm.dbg.declare(metadata ptr %die_plus_mask_width, metadata !246, metadata !DIExpression()), !dbg !267
  call void @llvm.lifetime.start.p0(i64 4, ptr %core_select_mask) #6, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %core_select_mask, metadata !247, metadata !DIExpression()), !dbg !269
  call void @llvm.lifetime.start.p0(i64 4, ptr %core_level_siblings) #6, !dbg !268
  call void @llvm.dbg.declare(metadata ptr %core_level_siblings, metadata !248, metadata !DIExpression()), !dbg !270
  call void @llvm.lifetime.start.p0(i64 4, ptr %die_select_mask) #6, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %die_select_mask, metadata !249, metadata !DIExpression()), !dbg !272
  call void @llvm.lifetime.start.p0(i64 4, ptr %die_level_siblings) #6, !dbg !271
  call void @llvm.dbg.declare(metadata ptr %die_level_siblings, metadata !250, metadata !DIExpression()), !dbg !273
  call void @llvm.lifetime.start.p0(i64 4, ptr %pkg_mask_width) #6, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %pkg_mask_width, metadata !251, metadata !DIExpression()), !dbg !275
  call void @llvm.lifetime.start.p0(i64 1, ptr %die_level_present) #6, !dbg !276
  call void @llvm.dbg.declare(metadata ptr %die_level_present, metadata !252, metadata !DIExpression()), !dbg !277
  store i8 0, ptr %die_level_present, align 1, !dbg !277
  call void @llvm.lifetime.start.p0(i64 4, ptr %leaf) #6, !dbg !278
  call void @llvm.dbg.declare(metadata ptr %leaf, metadata !253, metadata !DIExpression()), !dbg !279
  %0 = load ptr, ptr %c.addr, align 8, !dbg !280
  %call = call i32 @detect_extended_topology_leaf(ptr noundef %0) #7, !dbg !281
  store i32 %call, ptr %leaf, align 4, !dbg !282
  %1 = load i32, ptr %leaf, align 4, !dbg !283
  %cmp = icmp slt i32 %1, 0, !dbg !285
  br i1 %cmp, label %if.then, label %if.end, !dbg !286

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !287

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %leaf, align 4, !dbg !288
  call void @cpuid_count(i32 noundef %2, i32 noundef 0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #7, !dbg !289
  %3 = load i32, ptr %edx, align 4, !dbg !290
  %conv = trunc i32 %3 to i16, !dbg !290
  %4 = load ptr, ptr %c.addr, align 8, !dbg !291
  %initial_apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %4, i32 0, i32 23, !dbg !292
  store i16 %conv, ptr %initial_apicid, align 4, !dbg !293
  %5 = load i32, ptr %ebx, align 4, !dbg !294
  %and = and i32 %5, 65535, !dbg !294
  store i32 %and, ptr %core_level_siblings, align 4, !dbg !295
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x220) #6, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x220, metadata !254, metadata !DIExpression()), !dbg !296
  %6 = load i32, ptr @smp_num_siblings, align 4, !dbg !296
  store i32 %6, ptr %__UNIQUE_ID___x220, align 4, !dbg !296
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y221) #6, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y221, metadata !256, metadata !DIExpression()), !dbg !296
  %7 = load i32, ptr %ebx, align 4, !dbg !296
  %and1 = and i32 %7, 65535, !dbg !296
  store i32 %and1, ptr %__UNIQUE_ID___y221, align 4, !dbg !296
  %8 = load i32, ptr %__UNIQUE_ID___x220, align 4, !dbg !296
  %9 = load i32, ptr %__UNIQUE_ID___y221, align 4, !dbg !296
  %cmp2 = icmp sgt i32 %8, %9, !dbg !296
  br i1 %cmp2, label %cond.true, label %cond.false, !dbg !296

cond.true:                                        ; preds = %if.end
  %10 = load i32, ptr %__UNIQUE_ID___x220, align 4, !dbg !296
  br label %cond.end, !dbg !296

cond.false:                                       ; preds = %if.end
  %11 = load i32, ptr %__UNIQUE_ID___y221, align 4, !dbg !296
  br label %cond.end, !dbg !296

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %10, %cond.true ], [ %11, %cond.false ], !dbg !296
  store i32 %cond, ptr %tmp, align 4, !dbg !296
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y221) #6, !dbg !297
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x220) #6, !dbg !297
  %12 = load i32, ptr %tmp, align 4, !dbg !296
  store i32 %12, ptr @smp_num_siblings, align 4, !dbg !298
  %13 = load i32, ptr %eax, align 4, !dbg !299
  %and4 = and i32 %13, 31, !dbg !299
  store i32 %and4, ptr %ht_mask_width, align 4, !dbg !300
  store i32 %and4, ptr %core_plus_mask_width, align 4, !dbg !301
  %14 = load i32, ptr %ebx, align 4, !dbg !302
  %and5 = and i32 %14, 65535, !dbg !302
  store i32 %and5, ptr %die_level_siblings, align 4, !dbg !303
  %15 = load i32, ptr %eax, align 4, !dbg !304
  %and6 = and i32 %15, 31, !dbg !304
  store i32 %and6, ptr %die_plus_mask_width, align 4, !dbg !305
  store i32 %and6, ptr %pkg_mask_width, align 4, !dbg !306
  store i32 1, ptr %sub_index, align 4, !dbg !307
  br label %while.cond, !dbg !308

while.cond:                                       ; preds = %if.end29, %cond.end
  br label %while.body, !dbg !308

while.body:                                       ; preds = %while.cond
  %16 = load i32, ptr %leaf, align 4, !dbg !309
  %17 = load i32, ptr %sub_index, align 4, !dbg !311
  call void @cpuid_count(i32 noundef %16, i32 noundef %17, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #7, !dbg !312
  %18 = load i32, ptr %ecx, align 4, !dbg !313
  %shr = lshr i32 %18, 8, !dbg !313
  %and7 = and i32 %shr, 255, !dbg !313
  %cmp8 = icmp eq i32 %and7, 2, !dbg !315
  br i1 %cmp8, label %if.then10, label %if.end14, !dbg !316

if.then10:                                        ; preds = %while.body
  %19 = load i32, ptr %ebx, align 4, !dbg !317
  %and11 = and i32 %19, 65535, !dbg !317
  store i32 %and11, ptr %core_level_siblings, align 4, !dbg !319
  %20 = load i32, ptr %eax, align 4, !dbg !320
  %and12 = and i32 %20, 31, !dbg !320
  store i32 %and12, ptr %core_plus_mask_width, align 4, !dbg !321
  %21 = load i32, ptr %core_level_siblings, align 4, !dbg !322
  store i32 %21, ptr %die_level_siblings, align 4, !dbg !323
  %22 = load i32, ptr %eax, align 4, !dbg !324
  %and13 = and i32 %22, 31, !dbg !324
  store i32 %and13, ptr %die_plus_mask_width, align 4, !dbg !325
  br label %if.end14, !dbg !326

if.end14:                                         ; preds = %if.then10, %while.body
  %23 = load i32, ptr %ecx, align 4, !dbg !327
  %shr15 = lshr i32 %23, 8, !dbg !327
  %and16 = and i32 %shr15, 255, !dbg !327
  %cmp17 = icmp eq i32 %and16, 5, !dbg !329
  br i1 %cmp17, label %if.then19, label %if.end22, !dbg !330

if.then19:                                        ; preds = %if.end14
  store i8 1, ptr %die_level_present, align 1, !dbg !331
  %24 = load i32, ptr %ebx, align 4, !dbg !333
  %and20 = and i32 %24, 65535, !dbg !333
  store i32 %and20, ptr %die_level_siblings, align 4, !dbg !334
  %25 = load i32, ptr %eax, align 4, !dbg !335
  %and21 = and i32 %25, 31, !dbg !335
  store i32 %and21, ptr %die_plus_mask_width, align 4, !dbg !336
  br label %if.end22, !dbg !337

if.end22:                                         ; preds = %if.then19, %if.end14
  %26 = load i32, ptr %ecx, align 4, !dbg !338
  %shr23 = lshr i32 %26, 8, !dbg !338
  %and24 = and i32 %shr23, 255, !dbg !338
  %cmp25 = icmp ne i32 %and24, 0, !dbg !340
  br i1 %cmp25, label %if.then27, label %if.else, !dbg !341

if.then27:                                        ; preds = %if.end22
  %27 = load i32, ptr %eax, align 4, !dbg !342
  %and28 = and i32 %27, 31, !dbg !342
  store i32 %and28, ptr %pkg_mask_width, align 4, !dbg !343
  br label %if.end29, !dbg !344

if.else:                                          ; preds = %if.end22
  br label %while.end, !dbg !345

if.end29:                                         ; preds = %if.then27
  %28 = load i32, ptr %sub_index, align 4, !dbg !346
  %inc = add i32 %28, 1, !dbg !346
  store i32 %inc, ptr %sub_index, align 4, !dbg !346
  br label %while.cond, !dbg !308, !llvm.loop !347

while.end:                                        ; preds = %if.else
  %29 = load i32, ptr %pkg_mask_width, align 4, !dbg !350
  %shl = shl i32 -1, %29, !dbg !351
  %not = xor i32 %shl, -1, !dbg !352
  %30 = load i32, ptr %ht_mask_width, align 4, !dbg !353
  %shr30 = ashr i32 %not, %30, !dbg !354
  store i32 %shr30, ptr %core_select_mask, align 4, !dbg !355
  %31 = load i32, ptr %die_plus_mask_width, align 4, !dbg !356
  %shl31 = shl i32 -1, %31, !dbg !357
  %not32 = xor i32 %shl31, -1, !dbg !358
  %32 = load i32, ptr %core_plus_mask_width, align 4, !dbg !359
  %shr33 = ashr i32 %not32, %32, !dbg !360
  store i32 %shr33, ptr %die_select_mask, align 4, !dbg !361
  %33 = load ptr, ptr @apic, align 8, !dbg !362
  %phys_pkg_id = getelementptr inbounds %struct.apic, ptr %33, i32 0, i32 25, !dbg !363
  %34 = load ptr, ptr %phys_pkg_id, align 8, !dbg !363
  %35 = load ptr, ptr %c.addr, align 8, !dbg !364
  %initial_apicid34 = getelementptr inbounds %struct.cpuinfo_x86, ptr %35, i32 0, i32 23, !dbg !365
  %36 = load i16, ptr %initial_apicid34, align 4, !dbg !365
  %conv35 = zext i16 %36 to i32, !dbg !364
  %37 = load i32, ptr %ht_mask_width, align 4, !dbg !366
  %call36 = call i32 %34(i32 noundef %conv35, i32 noundef %37) #7, !dbg !362
  %38 = load i32, ptr %core_select_mask, align 4, !dbg !367
  %and37 = and i32 %call36, %38, !dbg !368
  %conv38 = trunc i32 %and37 to i16, !dbg !362
  %39 = load ptr, ptr %c.addr, align 8, !dbg !369
  %cpu_core_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %39, i32 0, i32 28, !dbg !370
  store i16 %conv38, ptr %cpu_core_id, align 2, !dbg !371
  %40 = load i8, ptr %die_level_present, align 1, !dbg !372, !range !374, !noundef !375
  %tobool = trunc i8 %40 to i1, !dbg !372
  br i1 %tobool, label %if.then39, label %if.end46, !dbg !376

if.then39:                                        ; preds = %while.end
  %41 = load ptr, ptr @apic, align 8, !dbg !377
  %phys_pkg_id40 = getelementptr inbounds %struct.apic, ptr %41, i32 0, i32 25, !dbg !379
  %42 = load ptr, ptr %phys_pkg_id40, align 8, !dbg !379
  %43 = load ptr, ptr %c.addr, align 8, !dbg !380
  %initial_apicid41 = getelementptr inbounds %struct.cpuinfo_x86, ptr %43, i32 0, i32 23, !dbg !381
  %44 = load i16, ptr %initial_apicid41, align 4, !dbg !381
  %conv42 = zext i16 %44 to i32, !dbg !380
  %45 = load i32, ptr %core_plus_mask_width, align 4, !dbg !382
  %call43 = call i32 %42(i32 noundef %conv42, i32 noundef %45) #7, !dbg !377
  %46 = load i32, ptr %die_select_mask, align 4, !dbg !383
  %and44 = and i32 %call43, %46, !dbg !384
  %conv45 = trunc i32 %and44 to i16, !dbg !377
  %47 = load ptr, ptr %c.addr, align 8, !dbg !385
  %cpu_die_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %47, i32 0, i32 29, !dbg !386
  store i16 %conv45, ptr %cpu_die_id, align 8, !dbg !387
  br label %if.end46, !dbg !388

if.end46:                                         ; preds = %if.then39, %while.end
  %48 = load ptr, ptr @apic, align 8, !dbg !389
  %phys_pkg_id47 = getelementptr inbounds %struct.apic, ptr %48, i32 0, i32 25, !dbg !390
  %49 = load ptr, ptr %phys_pkg_id47, align 8, !dbg !390
  %50 = load ptr, ptr %c.addr, align 8, !dbg !391
  %initial_apicid48 = getelementptr inbounds %struct.cpuinfo_x86, ptr %50, i32 0, i32 23, !dbg !392
  %51 = load i16, ptr %initial_apicid48, align 4, !dbg !392
  %conv49 = zext i16 %51 to i32, !dbg !391
  %52 = load i32, ptr %pkg_mask_width, align 4, !dbg !393
  %call50 = call i32 %49(i32 noundef %conv49, i32 noundef %52) #7, !dbg !389
  %conv51 = trunc i32 %call50 to i16, !dbg !389
  %53 = load ptr, ptr %c.addr, align 8, !dbg !394
  %phys_proc_id = getelementptr inbounds %struct.cpuinfo_x86, ptr %53, i32 0, i32 26, !dbg !395
  store i16 %conv51, ptr %phys_proc_id, align 2, !dbg !396
  %54 = load ptr, ptr @apic, align 8, !dbg !397
  %phys_pkg_id52 = getelementptr inbounds %struct.apic, ptr %54, i32 0, i32 25, !dbg !398
  %55 = load ptr, ptr %phys_pkg_id52, align 8, !dbg !398
  %56 = load ptr, ptr %c.addr, align 8, !dbg !399
  %initial_apicid53 = getelementptr inbounds %struct.cpuinfo_x86, ptr %56, i32 0, i32 23, !dbg !400
  %57 = load i16, ptr %initial_apicid53, align 4, !dbg !400
  %conv54 = zext i16 %57 to i32, !dbg !399
  %call55 = call i32 %55(i32 noundef %conv54, i32 noundef 0) #7, !dbg !397
  %conv56 = trunc i32 %call55 to i16, !dbg !397
  %58 = load ptr, ptr %c.addr, align 8, !dbg !401
  %apicid = getelementptr inbounds %struct.cpuinfo_x86, ptr %58, i32 0, i32 22, !dbg !402
  store i16 %conv56, ptr %apicid, align 2, !dbg !403
  %59 = load i32, ptr %core_level_siblings, align 4, !dbg !404
  %60 = load i32, ptr @smp_num_siblings, align 4, !dbg !405
  %div = udiv i32 %59, %60, !dbg !406
  %conv57 = trunc i32 %div to i16, !dbg !407
  %61 = load ptr, ptr %c.addr, align 8, !dbg !408
  %x86_max_cores = getelementptr inbounds %struct.cpuinfo_x86, ptr %61, i32 0, i32 21, !dbg !409
  store i16 %conv57, ptr %x86_max_cores, align 8, !dbg !410
  %62 = load i32, ptr %die_level_siblings, align 4, !dbg !411
  %63 = load i32, ptr %core_level_siblings, align 4, !dbg !412
  %div58 = udiv i32 %62, %63, !dbg !413
  store i32 %div58, ptr @__max_die_per_package, align 4, !dbg !414
  store i32 0, ptr %retval, align 4, !dbg !415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !415

cleanup:                                          ; preds = %if.end46, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %leaf) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 1, ptr %die_level_present) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %pkg_mask_width) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %die_level_siblings) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %die_select_mask) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %core_level_siblings) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %core_select_mask) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %die_plus_mask_width) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %core_plus_mask_width) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ht_mask_width) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %sub_index) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #6, !dbg !416
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #6, !dbg !416
  %64 = load i32, ptr %retval, align 4, !dbg !416
  ret i32 %64, !dbg !416
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_extended_topology_leaf(i32 noundef %leaf) #0 align 16 !dbg !417 {
entry:
  %retval = alloca i32, align 4
  %leaf.addr = alloca i32, align 4
  %eax = alloca i32, align 4
  %ebx = alloca i32, align 4
  %ecx = alloca i32, align 4
  %edx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %leaf, ptr %leaf.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %leaf.addr, metadata !421, metadata !DIExpression()), !dbg !426
  call void @llvm.lifetime.start.p0(i64 4, ptr %eax) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %eax, metadata !422, metadata !DIExpression()), !dbg !428
  call void @llvm.lifetime.start.p0(i64 4, ptr %ebx) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %ebx, metadata !423, metadata !DIExpression()), !dbg !429
  call void @llvm.lifetime.start.p0(i64 4, ptr %ecx) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %ecx, metadata !424, metadata !DIExpression()), !dbg !430
  call void @llvm.lifetime.start.p0(i64 4, ptr %edx) #6, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %edx, metadata !425, metadata !DIExpression()), !dbg !431
  %0 = load i32, ptr %leaf.addr, align 4, !dbg !432
  call void @cpuid_count(i32 noundef %0, i32 noundef 0, ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #7, !dbg !433
  %1 = load i32, ptr %ebx, align 4, !dbg !434
  %cmp = icmp eq i32 %1, 0, !dbg !436
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !437

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %ecx, align 4, !dbg !438
  %shr = lshr i32 %2, 8, !dbg !438
  %and = and i32 %shr, 255, !dbg !438
  %cmp1 = icmp ne i32 %and, 1, !dbg !439
  br i1 %cmp1, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -1, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !442
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !442

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %edx) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 4, ptr %ecx) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 4, ptr %ebx) #6, !dbg !443
  call void @llvm.lifetime.end.p0(i64 4, ptr %eax) #6, !dbg !443
  %3 = load i32, ptr %retval, align 4, !dbg !443
  ret i32 %3, !dbg !443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !444 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !456, metadata !DIExpression()), !dbg !458
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !457, metadata !DIExpression()), !dbg !459
  %0 = load ptr, ptr %v.addr, align 8, !dbg !460
  %1 = load i64, ptr %size.addr, align 8, !dbg !461
  %conv = trunc i64 %1 to i32, !dbg !461
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #7, !dbg !462
  %2 = load ptr, ptr %v.addr, align 8, !dbg !463
  %3 = load i64, ptr %size.addr, align 8, !dbg !463
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #7, !dbg !463
  ret void, !dbg !464
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_set_bit(i64 noundef %nr, ptr noundef %addr) #3 align 16 !dbg !465 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !468, metadata !DIExpression()), !dbg !470
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !469, metadata !DIExpression()), !dbg !471
  %0 = load i64, ptr %nr.addr, align 8, !dbg !472
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !474
  br i1 %1, label %if.then, label %if.else, !dbg !475

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !476
  %3 = load i64, ptr %nr.addr, align 8, !dbg !476
  %shr = ashr i64 %3, 3, !dbg !476
  %add.ptr = getelementptr i8, ptr %2, i64 %shr, !dbg !476
  %4 = load i64, ptr %nr.addr, align 8, !dbg !478
  %and = and i64 %4, 7, !dbg !478
  %sh_prom = trunc i64 %and to i32, !dbg !478
  %shl = shl i32 1, %sh_prom, !dbg !478
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i8) %add.ptr, i32 %shl, ptr elementtype(i8) %add.ptr) #6, !dbg !479, !srcloc !480
  br label %if.end, !dbg !481

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !482
  %6 = load i64, ptr %nr.addr, align 8, !dbg !484
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock;  btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %6) #6, !dbg !485, !srcloc !486
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !487
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !488 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !493, metadata !DIExpression()), !dbg !495
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !494, metadata !DIExpression()), !dbg !496
  ret i1 true, !dbg !497
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !498 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !503, metadata !DIExpression()), !dbg !506
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !504, metadata !DIExpression()), !dbg !507
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !505, metadata !DIExpression()), !dbg !508
  ret void, !dbg !509
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_cpuid(ptr noundef %eax, ptr noundef %ebx, ptr noundef %ecx, ptr noundef %edx) #4 align 16 !dbg !510 {
entry:
  %eax.addr = alloca ptr, align 8
  %ebx.addr = alloca ptr, align 8
  %ecx.addr = alloca ptr, align 8
  %edx.addr = alloca ptr, align 8
  store ptr %eax, ptr %eax.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %eax.addr, metadata !514, metadata !DIExpression()), !dbg !518
  store ptr %ebx, ptr %ebx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ebx.addr, metadata !515, metadata !DIExpression()), !dbg !519
  store ptr %ecx, ptr %ecx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ecx.addr, metadata !516, metadata !DIExpression()), !dbg !520
  store ptr %edx, ptr %edx.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %edx.addr, metadata !517, metadata !DIExpression()), !dbg !521
  %0 = load ptr, ptr %eax.addr, align 8, !dbg !522
  %1 = load ptr, ptr %ebx.addr, align 8, !dbg !523
  %2 = load ptr, ptr %ecx.addr, align 8, !dbg !524
  %3 = load ptr, ptr %edx.addr, align 8, !dbg !525
  %4 = load ptr, ptr %eax.addr, align 8, !dbg !526
  %5 = load i32, ptr %4, align 4, !dbg !527
  %6 = load ptr, ptr %ecx.addr, align 8, !dbg !528
  %7 = load i32, ptr %6, align 4, !dbg !529
  %8 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={cx},={dx},0,2,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %5, i32 %7) #6, !dbg !530, !srcloc !531
  %asmresult = extractvalue { i32, i32, i32, i32 } %8, 0, !dbg !530
  %asmresult1 = extractvalue { i32, i32, i32, i32 } %8, 1, !dbg !530
  %asmresult2 = extractvalue { i32, i32, i32, i32 } %8, 2, !dbg !530
  %asmresult3 = extractvalue { i32, i32, i32, i32 } %8, 3, !dbg !530
  store i32 %asmresult, ptr %0, align 4, !dbg !530
  store i32 %asmresult1, ptr %1, align 4, !dbg !530
  store i32 %asmresult2, ptr %2, align 4, !dbg !530
  store i32 %asmresult3, ptr %3, align 4, !dbg !530
  ret void, !dbg !532
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__max_die_per_package", scope: !2, file: !3, line: 28, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/cpu/.topology.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/cpu/topology\22 -D KBUILD_BASENAME=\22topology\22 -D KBUILD_MODNAME=\22topology\22 -D __KBUILD_MODNAME=kmod_topology -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/cpu/topology.ll arch/x86/kernel/cpu/topology.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !22, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/cpu/topology.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "00c17ae1d06a54c4afa8bac2254030e3")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !15, !16, !19}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!22 = !{!0, !23}
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___max_die_per_package217", scope: !2, file: !3, line: 29, type: !12, isLocal: true, isDefinition: true)
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 8, !"cf-protection-branch", i32 1}
!29 = !{i32 4, !"function_return_thunk_extern", i32 1}
!30 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!31 = !{i32 1, !"Code Model", i32 2}
!32 = !{i32 1, !"override-stack-alignment", i32 8}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = distinct !DISubprogram(name: "detect_extended_topology_early", scope: !3, file: !3, line: 65, type: !35, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!35 = !DISubroutineType(types: !36)
!36 = !{!15, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuinfo_x86", file: !39, line: 83, size: 2368, elements: !40)
!39 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d9f52879993e168dc64b74330860ae3")
!40 = !{!41, !56, !57, !58, !62, !63, !64, !65, !66, !67, !68, !76, !80, !84, !85, !86, !87, !88, !89, !90, !91, !96, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !114, !116, !118}
!41 = !DIDerivedType(tag: DW_TAG_member, scope: !38, file: !39, line: 84, baseType: !42, size: 32)
!42 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 84, size: 32, elements: !43)
!43 = !{!44, !54}
!44 = !DIDerivedType(tag: DW_TAG_member, scope: !42, file: !39, line: 90, baseType: !45, size: 32)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !42, file: !39, line: 90, size: 32, elements: !46)
!46 = !{!47, !51, !52, !53}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model", scope: !45, file: !39, line: 91, baseType: !48, size: 8)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !49, line: 21, baseType: !50)
!49 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!50 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "x86", scope: !45, file: !39, line: 93, baseType: !48, size: 8, offset: 8)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor", scope: !45, file: !39, line: 95, baseType: !48, size: 8, offset: 16)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "x86_reserved", scope: !45, file: !39, line: 96, baseType: !48, size: 8, offset: 24)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vfm", scope: !42, file: !39, line: 99, baseType: !55, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !49, line: 27, baseType: !7)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "x86_stepping", scope: !38, file: !39, line: 101, baseType: !48, size: 8, offset: 32)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "x86_tlbsize", scope: !38, file: !39, line: 104, baseType: !15, size: 32, offset: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "vmx_capability", scope: !38, file: !39, line: 107, baseType: !59, size: 160, offset: 96)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 160, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 5)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "x86_virt_bits", scope: !38, file: !39, line: 109, baseType: !48, size: 8, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "x86_phys_bits", scope: !38, file: !39, line: 110, baseType: !48, size: 8, offset: 264)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "x86_coreid_bits", scope: !38, file: !39, line: 112, baseType: !48, size: 8, offset: 272)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "cu_id", scope: !38, file: !39, line: 113, baseType: !48, size: 8, offset: 280)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "extended_cpuid_level", scope: !38, file: !39, line: 115, baseType: !55, size: 32, offset: 288)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "cpuid_level", scope: !38, file: !39, line: 117, baseType: !15, size: 32, offset: 320)
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !38, file: !39, line: 123, baseType: !69, size: 768, offset: 384)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !38, file: !39, line: 123, size: 768, elements: !70)
!70 = !{!71, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability", scope: !69, file: !39, line: 124, baseType: !72, size: 768)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !55, size: 768, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 24)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x86_capability_alignment", scope: !69, file: !39, line: 125, baseType: !14, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "x86_vendor_id", scope: !38, file: !39, line: 127, baseType: !77, size: 128, offset: 1152)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 128, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "x86_model_id", scope: !38, file: !39, line: 128, baseType: !81, size: 512, offset: 1280)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 512, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_size", scope: !38, file: !39, line: 130, baseType: !7, size: 32, offset: 1792)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_alignment", scope: !38, file: !39, line: 131, baseType: !15, size: 32, offset: 1824)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_max_rmid", scope: !38, file: !39, line: 133, baseType: !15, size: 32, offset: 1856)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_occ_scale", scope: !38, file: !39, line: 134, baseType: !15, size: 32, offset: 1888)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_mbm_width_offset", scope: !38, file: !39, line: 135, baseType: !15, size: 32, offset: 1920)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "x86_power", scope: !38, file: !39, line: 136, baseType: !15, size: 32, offset: 1952)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "loops_per_jiffy", scope: !38, file: !39, line: 137, baseType: !14, size: 64, offset: 1984)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "ppin", scope: !38, file: !39, line: 139, baseType: !92, size: 64, offset: 2048)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !93, line: 23, baseType: !94)
!93 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !49, line: 31, baseType: !95)
!95 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "x86_max_cores", scope: !38, file: !39, line: 141, baseType: !97, size: 16, offset: 2112)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !93, line: 19, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !49, line: 24, baseType: !99)
!99 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "apicid", scope: !38, file: !39, line: 142, baseType: !97, size: 16, offset: 2128)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "initial_apicid", scope: !38, file: !39, line: 143, baseType: !97, size: 16, offset: 2144)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "x86_clflush_size", scope: !38, file: !39, line: 144, baseType: !97, size: 16, offset: 2160)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "booted_cores", scope: !38, file: !39, line: 146, baseType: !97, size: 16, offset: 2176)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "phys_proc_id", scope: !38, file: !39, line: 148, baseType: !97, size: 16, offset: 2192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "logical_proc_id", scope: !38, file: !39, line: 150, baseType: !97, size: 16, offset: 2208)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_core_id", scope: !38, file: !39, line: 152, baseType: !97, size: 16, offset: 2224)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_die_id", scope: !38, file: !39, line: 153, baseType: !97, size: 16, offset: 2240)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "logical_die_id", scope: !38, file: !39, line: 154, baseType: !97, size: 16, offset: 2256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_index", scope: !38, file: !39, line: 156, baseType: !97, size: 16, offset: 2272)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "smt_active", scope: !38, file: !39, line: 158, baseType: !111, size: 8, offset: 2288)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !112, line: 35, baseType: !113)
!112 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!113 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "microcode", scope: !38, file: !39, line: 159, baseType: !115, size: 32, offset: 2304)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !93, line: 21, baseType: !55)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "x86_cache_bits", scope: !38, file: !39, line: 161, baseType: !117, size: 8, offset: 2336)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !93, line: 17, baseType: !48)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !38, file: !39, line: 162, baseType: !7, size: 1, offset: 2344, flags: DIFlagBitField, extraData: i64 2344)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !128}
!120 = !DILocalVariable(name: "c", arg: 1, scope: !34, file: !3, line: 65, type: !37)
!121 = !DILocalVariable(name: "eax", scope: !34, file: !3, line: 68, type: !7)
!122 = !DILocalVariable(name: "ebx", scope: !34, file: !3, line: 68, type: !7)
!123 = !DILocalVariable(name: "ecx", scope: !34, file: !3, line: 68, type: !7)
!124 = !DILocalVariable(name: "edx", scope: !34, file: !3, line: 68, type: !7)
!125 = !DILocalVariable(name: "leaf", scope: !34, file: !3, line: 69, type: !15)
!126 = !DILocalVariable(name: "__UNIQUE_ID___x218", scope: !127, file: !3, line: 82, type: !15)
!127 = distinct !DILexicalBlock(scope: !34, file: !3, line: 82, column: 21)
!128 = !DILocalVariable(name: "__UNIQUE_ID___y219", scope: !127, file: !3, line: 82, type: !15)
!129 = !DILocation(line: 65, column: 56, scope: !34)
!130 = !DILocation(line: 68, column: 2, scope: !34)
!131 = !DILocation(line: 68, column: 15, scope: !34)
!132 = !DILocation(line: 68, column: 20, scope: !34)
!133 = !DILocation(line: 68, column: 25, scope: !34)
!134 = !DILocation(line: 68, column: 30, scope: !34)
!135 = !DILocation(line: 69, column: 2, scope: !34)
!136 = !DILocation(line: 69, column: 6, scope: !34)
!137 = !DILocation(line: 71, column: 39, scope: !34)
!138 = !DILocation(line: 71, column: 9, scope: !34)
!139 = !DILocation(line: 71, column: 7, scope: !34)
!140 = !DILocation(line: 72, column: 6, scope: !141)
!141 = distinct !DILexicalBlock(scope: !34, file: !3, line: 72, column: 6)
!142 = !DILocation(line: 72, column: 11, scope: !141)
!143 = !DILocation(line: 72, column: 6, scope: !34)
!144 = !DILocation(line: 73, column: 3, scope: !141)
!145 = !DILocation(line: 75, column: 2, scope: !34)
!146 = !DILocation(line: 77, column: 14, scope: !34)
!147 = !DILocation(line: 77, column: 2, scope: !34)
!148 = !DILocation(line: 81, column: 22, scope: !34)
!149 = !DILocation(line: 81, column: 2, scope: !34)
!150 = !DILocation(line: 81, column: 5, scope: !34)
!151 = !DILocation(line: 81, column: 20, scope: !34)
!152 = !DILocation(line: 82, column: 21, scope: !127)
!153 = !DILocation(line: 82, column: 21, scope: !34)
!154 = !DILocation(line: 82, column: 19, scope: !34)
!155 = !DILocation(line: 84, column: 2, scope: !34)
!156 = !DILocation(line: 85, column: 1, scope: !34)
!157 = distinct !DISubprogram(name: "detect_extended_topology_leaf", scope: !3, file: !3, line: 49, type: !35, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!158 = !{!159}
!159 = !DILocalVariable(name: "c", arg: 1, scope: !157, file: !3, line: 49, type: !37)
!160 = !DILocation(line: 49, column: 62, scope: !157)
!161 = !DILocation(line: 51, column: 6, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !3, line: 51, column: 6)
!163 = !DILocation(line: 51, column: 9, scope: !162)
!164 = !DILocation(line: 51, column: 21, scope: !162)
!165 = !DILocation(line: 51, column: 6, scope: !157)
!166 = !DILocation(line: 52, column: 7, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 52, column: 7)
!168 = distinct !DILexicalBlock(scope: !162, file: !3, line: 51, column: 30)
!169 = !DILocation(line: 52, column: 42, scope: !167)
!170 = !DILocation(line: 52, column: 7, scope: !168)
!171 = !DILocation(line: 53, column: 4, scope: !167)
!172 = !DILocation(line: 54, column: 2, scope: !168)
!173 = !DILocation(line: 56, column: 6, scope: !174)
!174 = distinct !DILexicalBlock(scope: !157, file: !3, line: 56, column: 6)
!175 = !DILocation(line: 56, column: 9, scope: !174)
!176 = !DILocation(line: 56, column: 21, scope: !174)
!177 = !DILocation(line: 56, column: 6, scope: !157)
!178 = !DILocation(line: 57, column: 7, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 57, column: 7)
!180 = distinct !DILexicalBlock(scope: !174, file: !3, line: 56, column: 29)
!181 = !DILocation(line: 57, column: 41, scope: !179)
!182 = !DILocation(line: 57, column: 7, scope: !180)
!183 = !DILocation(line: 58, column: 4, scope: !179)
!184 = !DILocation(line: 59, column: 2, scope: !180)
!185 = !DILocation(line: 61, column: 2, scope: !157)
!186 = !DILocation(line: 62, column: 1, scope: !157)
!187 = distinct !DISubprogram(name: "set_bit", scope: !188, file: !188, line: 26, type: !189, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!188 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "731ce67cf73fabb8b7355339f8b7a076")
!189 = !DISubroutineType(types: !190)
!190 = !{null, !21, !191}
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!193 = !{!194, !195}
!194 = !DILocalVariable(name: "nr", arg: 1, scope: !187, file: !188, line: 26, type: !21)
!195 = !DILocalVariable(name: "addr", arg: 2, scope: !187, file: !188, line: 26, type: !191)
!196 = !DILocation(line: 26, column: 42, scope: !187)
!197 = !DILocation(line: 26, column: 70, scope: !187)
!198 = !DILocation(line: 28, column: 26, scope: !187)
!199 = !DILocation(line: 28, column: 33, scope: !187)
!200 = !DILocation(line: 28, column: 31, scope: !187)
!201 = !DILocation(line: 28, column: 2, scope: !187)
!202 = !DILocation(line: 29, column: 15, scope: !187)
!203 = !DILocation(line: 29, column: 19, scope: !187)
!204 = !DILocation(line: 29, column: 2, scope: !187)
!205 = !DILocation(line: 30, column: 1, scope: !187)
!206 = distinct !DISubprogram(name: "cpuid_count", scope: !207, file: !207, line: 82, type: !208, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !211)
!207 = !DIFile(filename: "./arch/x86/include/asm/cpuid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8cd18ecb06266e934197b6301321bbc9")
!208 = !DISubroutineType(types: !209)
!209 = !{null, !7, !15, !210, !210, !210, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!211 = !{!212, !213, !214, !215, !216, !217}
!212 = !DILocalVariable(name: "op", arg: 1, scope: !206, file: !207, line: 82, type: !7)
!213 = !DILocalVariable(name: "count", arg: 2, scope: !206, file: !207, line: 82, type: !15)
!214 = !DILocalVariable(name: "eax", arg: 3, scope: !206, file: !207, line: 83, type: !210)
!215 = !DILocalVariable(name: "ebx", arg: 4, scope: !206, file: !207, line: 83, type: !210)
!216 = !DILocalVariable(name: "ecx", arg: 5, scope: !206, file: !207, line: 84, type: !210)
!217 = !DILocalVariable(name: "edx", arg: 6, scope: !206, file: !207, line: 84, type: !210)
!218 = !DILocation(line: 82, column: 45, scope: !206)
!219 = !DILocation(line: 82, column: 53, scope: !206)
!220 = !DILocation(line: 83, column: 25, scope: !206)
!221 = !DILocation(line: 83, column: 44, scope: !206)
!222 = !DILocation(line: 84, column: 25, scope: !206)
!223 = !DILocation(line: 84, column: 44, scope: !206)
!224 = !DILocation(line: 86, column: 9, scope: !206)
!225 = !DILocation(line: 86, column: 3, scope: !206)
!226 = !DILocation(line: 86, column: 7, scope: !206)
!227 = !DILocation(line: 87, column: 9, scope: !206)
!228 = !DILocation(line: 87, column: 3, scope: !206)
!229 = !DILocation(line: 87, column: 7, scope: !206)
!230 = !DILocation(line: 88, column: 10, scope: !206)
!231 = !DILocation(line: 88, column: 15, scope: !206)
!232 = !DILocation(line: 88, column: 20, scope: !206)
!233 = !DILocation(line: 88, column: 25, scope: !206)
!234 = !DILocation(line: 88, column: 2, scope: !206)
!235 = !DILocation(line: 89, column: 1, scope: !206)
!236 = distinct !DISubprogram(name: "detect_extended_topology", scope: !3, file: !3, line: 92, type: !35, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !237)
!237 = !{!238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !256}
!238 = !DILocalVariable(name: "c", arg: 1, scope: !236, file: !3, line: 92, type: !37)
!239 = !DILocalVariable(name: "eax", scope: !236, file: !3, line: 95, type: !7)
!240 = !DILocalVariable(name: "ebx", scope: !236, file: !3, line: 95, type: !7)
!241 = !DILocalVariable(name: "ecx", scope: !236, file: !3, line: 95, type: !7)
!242 = !DILocalVariable(name: "edx", scope: !236, file: !3, line: 95, type: !7)
!243 = !DILocalVariable(name: "sub_index", scope: !236, file: !3, line: 95, type: !7)
!244 = !DILocalVariable(name: "ht_mask_width", scope: !236, file: !3, line: 96, type: !7)
!245 = !DILocalVariable(name: "core_plus_mask_width", scope: !236, file: !3, line: 96, type: !7)
!246 = !DILocalVariable(name: "die_plus_mask_width", scope: !236, file: !3, line: 96, type: !7)
!247 = !DILocalVariable(name: "core_select_mask", scope: !236, file: !3, line: 97, type: !7)
!248 = !DILocalVariable(name: "core_level_siblings", scope: !236, file: !3, line: 97, type: !7)
!249 = !DILocalVariable(name: "die_select_mask", scope: !236, file: !3, line: 98, type: !7)
!250 = !DILocalVariable(name: "die_level_siblings", scope: !236, file: !3, line: 98, type: !7)
!251 = !DILocalVariable(name: "pkg_mask_width", scope: !236, file: !3, line: 99, type: !7)
!252 = !DILocalVariable(name: "die_level_present", scope: !236, file: !3, line: 100, type: !111)
!253 = !DILocalVariable(name: "leaf", scope: !236, file: !3, line: 101, type: !15)
!254 = !DILocalVariable(name: "__UNIQUE_ID___x220", scope: !255, file: !3, line: 113, type: !15)
!255 = distinct !DILexicalBlock(scope: !236, file: !3, line: 113, column: 21)
!256 = !DILocalVariable(name: "__UNIQUE_ID___y221", scope: !255, file: !3, line: 113, type: !15)
!257 = !DILocation(line: 92, column: 50, scope: !236)
!258 = !DILocation(line: 95, column: 2, scope: !236)
!259 = !DILocation(line: 95, column: 15, scope: !236)
!260 = !DILocation(line: 95, column: 20, scope: !236)
!261 = !DILocation(line: 95, column: 25, scope: !236)
!262 = !DILocation(line: 95, column: 30, scope: !236)
!263 = !DILocation(line: 95, column: 35, scope: !236)
!264 = !DILocation(line: 96, column: 2, scope: !236)
!265 = !DILocation(line: 96, column: 15, scope: !236)
!266 = !DILocation(line: 96, column: 30, scope: !236)
!267 = !DILocation(line: 96, column: 52, scope: !236)
!268 = !DILocation(line: 97, column: 2, scope: !236)
!269 = !DILocation(line: 97, column: 15, scope: !236)
!270 = !DILocation(line: 97, column: 33, scope: !236)
!271 = !DILocation(line: 98, column: 2, scope: !236)
!272 = !DILocation(line: 98, column: 15, scope: !236)
!273 = !DILocation(line: 98, column: 32, scope: !236)
!274 = !DILocation(line: 99, column: 2, scope: !236)
!275 = !DILocation(line: 99, column: 15, scope: !236)
!276 = !DILocation(line: 100, column: 2, scope: !236)
!277 = !DILocation(line: 100, column: 7, scope: !236)
!278 = !DILocation(line: 101, column: 2, scope: !236)
!279 = !DILocation(line: 101, column: 6, scope: !236)
!280 = !DILocation(line: 103, column: 39, scope: !236)
!281 = !DILocation(line: 103, column: 9, scope: !236)
!282 = !DILocation(line: 103, column: 7, scope: !236)
!283 = !DILocation(line: 104, column: 6, scope: !284)
!284 = distinct !DILexicalBlock(scope: !236, file: !3, line: 104, column: 6)
!285 = !DILocation(line: 104, column: 11, scope: !284)
!286 = !DILocation(line: 104, column: 6, scope: !236)
!287 = !DILocation(line: 105, column: 3, scope: !284)
!288 = !DILocation(line: 110, column: 14, scope: !236)
!289 = !DILocation(line: 110, column: 2, scope: !236)
!290 = !DILocation(line: 111, column: 22, scope: !236)
!291 = !DILocation(line: 111, column: 2, scope: !236)
!292 = !DILocation(line: 111, column: 5, scope: !236)
!293 = !DILocation(line: 111, column: 20, scope: !236)
!294 = !DILocation(line: 112, column: 24, scope: !236)
!295 = !DILocation(line: 112, column: 22, scope: !236)
!296 = !DILocation(line: 113, column: 21, scope: !255)
!297 = !DILocation(line: 113, column: 21, scope: !236)
!298 = !DILocation(line: 113, column: 19, scope: !236)
!299 = !DILocation(line: 114, column: 41, scope: !236)
!300 = !DILocation(line: 114, column: 39, scope: !236)
!301 = !DILocation(line: 114, column: 23, scope: !236)
!302 = !DILocation(line: 115, column: 23, scope: !236)
!303 = !DILocation(line: 115, column: 21, scope: !236)
!304 = !DILocation(line: 116, column: 41, scope: !236)
!305 = !DILocation(line: 116, column: 39, scope: !236)
!306 = !DILocation(line: 116, column: 17, scope: !236)
!307 = !DILocation(line: 118, column: 12, scope: !236)
!308 = !DILocation(line: 119, column: 2, scope: !236)
!309 = !DILocation(line: 120, column: 15, scope: !310)
!310 = distinct !DILexicalBlock(scope: !236, file: !3, line: 119, column: 15)
!311 = !DILocation(line: 120, column: 21, scope: !310)
!312 = !DILocation(line: 120, column: 3, scope: !310)
!313 = !DILocation(line: 125, column: 7, scope: !314)
!314 = distinct !DILexicalBlock(scope: !310, file: !3, line: 125, column: 7)
!315 = !DILocation(line: 125, column: 26, scope: !314)
!316 = !DILocation(line: 125, column: 7, scope: !310)
!317 = !DILocation(line: 126, column: 26, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 125, column: 40)
!319 = !DILocation(line: 126, column: 24, scope: !318)
!320 = !DILocation(line: 127, column: 27, scope: !318)
!321 = !DILocation(line: 127, column: 25, scope: !318)
!322 = !DILocation(line: 128, column: 25, scope: !318)
!323 = !DILocation(line: 128, column: 23, scope: !318)
!324 = !DILocation(line: 129, column: 26, scope: !318)
!325 = !DILocation(line: 129, column: 24, scope: !318)
!326 = !DILocation(line: 130, column: 3, scope: !318)
!327 = !DILocation(line: 131, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !310, file: !3, line: 131, column: 7)
!329 = !DILocation(line: 131, column: 26, scope: !328)
!330 = !DILocation(line: 131, column: 7, scope: !310)
!331 = !DILocation(line: 132, column: 22, scope: !332)
!332 = distinct !DILexicalBlock(scope: !328, file: !3, line: 131, column: 39)
!333 = !DILocation(line: 133, column: 25, scope: !332)
!334 = !DILocation(line: 133, column: 23, scope: !332)
!335 = !DILocation(line: 134, column: 26, scope: !332)
!336 = !DILocation(line: 134, column: 24, scope: !332)
!337 = !DILocation(line: 135, column: 3, scope: !332)
!338 = !DILocation(line: 137, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !310, file: !3, line: 137, column: 7)
!340 = !DILocation(line: 137, column: 26, scope: !339)
!341 = !DILocation(line: 137, column: 7, scope: !310)
!342 = !DILocation(line: 138, column: 21, scope: !339)
!343 = !DILocation(line: 138, column: 19, scope: !339)
!344 = !DILocation(line: 138, column: 4, scope: !339)
!345 = !DILocation(line: 140, column: 4, scope: !339)
!346 = !DILocation(line: 142, column: 12, scope: !310)
!347 = distinct !{!347, !308, !348, !349}
!348 = !DILocation(line: 143, column: 2, scope: !236)
!349 = !{!"llvm.loop.unroll.disable"}
!350 = !DILocation(line: 145, column: 30, scope: !236)
!351 = !DILocation(line: 145, column: 27, scope: !236)
!352 = !DILocation(line: 145, column: 22, scope: !236)
!353 = !DILocation(line: 145, column: 50, scope: !236)
!354 = !DILocation(line: 145, column: 47, scope: !236)
!355 = !DILocation(line: 145, column: 19, scope: !236)
!356 = !DILocation(line: 146, column: 29, scope: !236)
!357 = !DILocation(line: 146, column: 26, scope: !236)
!358 = !DILocation(line: 146, column: 21, scope: !236)
!359 = !DILocation(line: 147, column: 5, scope: !236)
!360 = !DILocation(line: 146, column: 51, scope: !236)
!361 = !DILocation(line: 146, column: 18, scope: !236)
!362 = !DILocation(line: 149, column: 19, scope: !236)
!363 = !DILocation(line: 149, column: 25, scope: !236)
!364 = !DILocation(line: 149, column: 37, scope: !236)
!365 = !DILocation(line: 149, column: 40, scope: !236)
!366 = !DILocation(line: 150, column: 5, scope: !236)
!367 = !DILocation(line: 150, column: 22, scope: !236)
!368 = !DILocation(line: 150, column: 20, scope: !236)
!369 = !DILocation(line: 149, column: 2, scope: !236)
!370 = !DILocation(line: 149, column: 5, scope: !236)
!371 = !DILocation(line: 149, column: 17, scope: !236)
!372 = !DILocation(line: 152, column: 6, scope: !373)
!373 = distinct !DILexicalBlock(scope: !236, file: !3, line: 152, column: 6)
!374 = !{i8 0, i8 2}
!375 = !{}
!376 = !DILocation(line: 152, column: 6, scope: !236)
!377 = !DILocation(line: 153, column: 19, scope: !378)
!378 = distinct !DILexicalBlock(scope: !373, file: !3, line: 152, column: 25)
!379 = !DILocation(line: 153, column: 25, scope: !378)
!380 = !DILocation(line: 153, column: 37, scope: !378)
!381 = !DILocation(line: 153, column: 40, scope: !378)
!382 = !DILocation(line: 154, column: 6, scope: !378)
!383 = !DILocation(line: 154, column: 30, scope: !378)
!384 = !DILocation(line: 154, column: 28, scope: !378)
!385 = !DILocation(line: 153, column: 3, scope: !378)
!386 = !DILocation(line: 153, column: 6, scope: !378)
!387 = !DILocation(line: 153, column: 17, scope: !378)
!388 = !DILocation(line: 155, column: 2, scope: !378)
!389 = !DILocation(line: 157, column: 20, scope: !236)
!390 = !DILocation(line: 157, column: 26, scope: !236)
!391 = !DILocation(line: 157, column: 38, scope: !236)
!392 = !DILocation(line: 157, column: 41, scope: !236)
!393 = !DILocation(line: 158, column: 5, scope: !236)
!394 = !DILocation(line: 157, column: 2, scope: !236)
!395 = !DILocation(line: 157, column: 5, scope: !236)
!396 = !DILocation(line: 157, column: 18, scope: !236)
!397 = !DILocation(line: 162, column: 14, scope: !236)
!398 = !DILocation(line: 162, column: 20, scope: !236)
!399 = !DILocation(line: 162, column: 32, scope: !236)
!400 = !DILocation(line: 162, column: 35, scope: !236)
!401 = !DILocation(line: 162, column: 2, scope: !236)
!402 = !DILocation(line: 162, column: 5, scope: !236)
!403 = !DILocation(line: 162, column: 12, scope: !236)
!404 = !DILocation(line: 164, column: 22, scope: !236)
!405 = !DILocation(line: 164, column: 44, scope: !236)
!406 = !DILocation(line: 164, column: 42, scope: !236)
!407 = !DILocation(line: 164, column: 21, scope: !236)
!408 = !DILocation(line: 164, column: 2, scope: !236)
!409 = !DILocation(line: 164, column: 5, scope: !236)
!410 = !DILocation(line: 164, column: 19, scope: !236)
!411 = !DILocation(line: 165, column: 27, scope: !236)
!412 = !DILocation(line: 165, column: 48, scope: !236)
!413 = !DILocation(line: 165, column: 46, scope: !236)
!414 = !DILocation(line: 165, column: 24, scope: !236)
!415 = !DILocation(line: 167, column: 2, scope: !236)
!416 = !DILocation(line: 168, column: 1, scope: !236)
!417 = distinct !DISubprogram(name: "check_extended_topology_leaf", scope: !3, file: !3, line: 35, type: !418, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{!15, !15}
!420 = !{!421, !422, !423, !424, !425}
!421 = !DILocalVariable(name: "leaf", arg: 1, scope: !417, file: !3, line: 35, type: !15)
!422 = !DILocalVariable(name: "eax", scope: !417, file: !3, line: 37, type: !7)
!423 = !DILocalVariable(name: "ebx", scope: !417, file: !3, line: 37, type: !7)
!424 = !DILocalVariable(name: "ecx", scope: !417, file: !3, line: 37, type: !7)
!425 = !DILocalVariable(name: "edx", scope: !417, file: !3, line: 37, type: !7)
!426 = !DILocation(line: 35, column: 45, scope: !417)
!427 = !DILocation(line: 37, column: 2, scope: !417)
!428 = !DILocation(line: 37, column: 15, scope: !417)
!429 = !DILocation(line: 37, column: 20, scope: !417)
!430 = !DILocation(line: 37, column: 25, scope: !417)
!431 = !DILocation(line: 37, column: 30, scope: !417)
!432 = !DILocation(line: 39, column: 14, scope: !417)
!433 = !DILocation(line: 39, column: 2, scope: !417)
!434 = !DILocation(line: 41, column: 6, scope: !435)
!435 = distinct !DILexicalBlock(scope: !417, file: !3, line: 41, column: 6)
!436 = !DILocation(line: 41, column: 10, scope: !435)
!437 = !DILocation(line: 41, column: 15, scope: !435)
!438 = !DILocation(line: 41, column: 19, scope: !435)
!439 = !DILocation(line: 41, column: 38, scope: !435)
!440 = !DILocation(line: 41, column: 6, scope: !417)
!441 = !DILocation(line: 42, column: 3, scope: !435)
!442 = !DILocation(line: 44, column: 2, scope: !417)
!443 = !DILocation(line: 45, column: 1, scope: !417)
!444 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !445, file: !445, line: 80, type: !446, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !455)
!445 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!446 = !DISubroutineType(types: !447)
!447 = !{null, !448, !451}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 61, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !453, line: 72, baseType: !454)
!453 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !453, line: 16, baseType: !14)
!455 = !{!456, !457}
!456 = !DILocalVariable(name: "v", arg: 1, scope: !444, file: !445, line: 80, type: !448)
!457 = !DILocalVariable(name: "size", arg: 2, scope: !444, file: !445, line: 80, type: !451)
!458 = !DILocation(line: 80, column: 74, scope: !444)
!459 = !DILocation(line: 80, column: 84, scope: !444)
!460 = !DILocation(line: 82, column: 20, scope: !444)
!461 = !DILocation(line: 82, column: 23, scope: !444)
!462 = !DILocation(line: 82, column: 2, scope: !444)
!463 = !DILocation(line: 83, column: 2, scope: !444)
!464 = !DILocation(line: 84, column: 1, scope: !444)
!465 = distinct !DISubprogram(name: "arch_set_bit", scope: !466, file: !466, line: 52, type: !189, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !467)
!466 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!467 = !{!468, !469}
!468 = !DILocalVariable(name: "nr", arg: 1, scope: !465, file: !466, line: 52, type: !21)
!469 = !DILocalVariable(name: "addr", arg: 2, scope: !465, file: !466, line: 52, type: !191)
!470 = !DILocation(line: 52, column: 19, scope: !465)
!471 = !DILocation(line: 52, column: 47, scope: !465)
!472 = !DILocation(line: 54, column: 27, scope: !473)
!473 = distinct !DILexicalBlock(scope: !465, file: !466, line: 54, column: 6)
!474 = !DILocation(line: 54, column: 6, scope: !473)
!475 = !DILocation(line: 54, column: 6, scope: !465)
!476 = !DILocation(line: 56, column: 6, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !466, line: 54, column: 32)
!478 = !DILocation(line: 57, column: 12, scope: !477)
!479 = !DILocation(line: 55, column: 3, scope: !477)
!480 = !{i64 2147996583, i64 2147996622, i64 2147996643, i64 2147996680, i64 2147996703, i64 2147996573}
!481 = !DILocation(line: 59, column: 2, scope: !477)
!482 = !DILocation(line: 61, column: 8, scope: !483)
!483 = distinct !DILexicalBlock(scope: !473, file: !466, line: 59, column: 9)
!484 = !DILocation(line: 61, column: 32, scope: !483)
!485 = !DILocation(line: 60, column: 3, scope: !483)
!486 = !{i64 2147996868, i64 2147996907, i64 2147996928, i64 2147996965, i64 2147996988, i64 2147996858}
!487 = !DILocation(line: 63, column: 1, scope: !465)
!488 = distinct !DISubprogram(name: "kasan_check_write", scope: !489, file: !489, line: 44, type: !490, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !492)
!489 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!490 = !DISubroutineType(types: !491)
!491 = !{!111, !448, !7}
!492 = !{!493, !494}
!493 = !DILocalVariable(name: "p", arg: 1, scope: !488, file: !489, line: 44, type: !448)
!494 = !DILocalVariable(name: "size", arg: 2, scope: !488, file: !489, line: 44, type: !7)
!495 = !DILocation(line: 44, column: 59, scope: !488)
!496 = !DILocation(line: 44, column: 75, scope: !488)
!497 = !DILocation(line: 46, column: 2, scope: !488)
!498 = distinct !DISubprogram(name: "kcsan_check_access", scope: !499, file: !499, line: 229, type: !500, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !502)
!499 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!500 = !DISubroutineType(types: !501)
!501 = !{null, !448, !451, !15}
!502 = !{!503, !504, !505}
!503 = !DILocalVariable(name: "ptr", arg: 1, scope: !498, file: !499, line: 229, type: !448)
!504 = !DILocalVariable(name: "size", arg: 2, scope: !498, file: !499, line: 229, type: !451)
!505 = !DILocalVariable(name: "type", arg: 3, scope: !498, file: !499, line: 230, type: !15)
!506 = !DILocation(line: 229, column: 60, scope: !498)
!507 = !DILocation(line: 229, column: 72, scope: !498)
!508 = !DILocation(line: 230, column: 15, scope: !498)
!509 = !DILocation(line: 230, column: 23, scope: !498)
!510 = distinct !DISubprogram(name: "native_cpuid", scope: !207, file: !207, line: 30, type: !511, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !513)
!511 = !DISubroutineType(types: !512)
!512 = !{null, !210, !210, !210, !210}
!513 = !{!514, !515, !516, !517}
!514 = !DILocalVariable(name: "eax", arg: 1, scope: !510, file: !207, line: 30, type: !210)
!515 = !DILocalVariable(name: "ebx", arg: 2, scope: !510, file: !207, line: 30, type: !210)
!516 = !DILocalVariable(name: "ecx", arg: 3, scope: !510, file: !207, line: 31, type: !210)
!517 = !DILocalVariable(name: "edx", arg: 4, scope: !510, file: !207, line: 31, type: !210)
!518 = !DILocation(line: 30, column: 47, scope: !510)
!519 = !DILocation(line: 30, column: 66, scope: !510)
!520 = !DILocation(line: 31, column: 19, scope: !510)
!521 = !DILocation(line: 31, column: 38, scope: !510)
!522 = !DILocation(line: 35, column: 15, scope: !510)
!523 = !DILocation(line: 36, column: 15, scope: !510)
!524 = !DILocation(line: 37, column: 15, scope: !510)
!525 = !DILocation(line: 38, column: 15, scope: !510)
!526 = !DILocation(line: 39, column: 14, scope: !510)
!527 = !DILocation(line: 39, column: 13, scope: !510)
!528 = !DILocation(line: 39, column: 26, scope: !510)
!529 = !DILocation(line: 39, column: 25, scope: !510)
!530 = !DILocation(line: 34, column: 2, scope: !510)
!531 = !{i64 1871915}
!532 = !DILocation(line: 41, column: 1, scope: !510)

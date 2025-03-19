; ModuleID = 'arch/x86/realmode/init.c'
source_filename = "arch/x86/realmode/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcallearly.init..kmod_init__277_220_do_init_real_mode\22, \22a\22\09\09"
module asm "__initcall__kmod_init__277_220_do_init_real_modeearly:\09\09\09"
module asm ".long\09__initstub__kmod_init__277_220_do_init_real_modeearly - .\09"
module asm ".previous\09\09\09\09\09"

%struct.cpuinfo_x86 = type { %union.anon, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.0, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon = type { i32 }
%union.anon.0 = type { i64, [88 x i8] }
%struct.pgd_t = type { i64 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.1 }
%struct.atomic_t = type { i32 }
%union.anon.1 = type { i64 }
%struct.x86_platform_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.x86_legacy_features, ptr, ptr, ptr, %struct.x86_hyper_runtime, %struct.x86_guest }
%struct.x86_legacy_features = type { i32, i32, i32, i32, i32, %struct.x86_legacy_devices }
%struct.x86_legacy_devices = type { i32 }
%struct.x86_hyper_runtime = type { ptr, ptr, ptr, ptr }
%struct.x86_guest = type { ptr, ptr, ptr, ptr }
%struct.real_mode_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trampoline_header = type { i64, i64, i32, i32, i32 }

@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@real_mode_header = hidden global ptr null, align 8, !dbg !0
@.str = private unnamed_addr constant [25 x i8] c"arch/x86/realmode/init.c\00", align 1, !dbg !65
@.str.1 = private unnamed_addr constant [52 x i8] c"\016No sub-1M memory is available for the trampoline\0A\00", align 1, !dbg !71
@.str.2 = private unnamed_addr constant [39 x i8] c"Real mode trampoline was not allocated\00", align 1, !dbg !76
@__UNIQUE_ID___addressable___initstub__kmod_init__277_220_do_init_real_modeearly278 = internal global ptr @__initstub__kmod_init__277_220_do_init_real_modeearly, section ".discard.addressable", align 8, !dbg !81
@trampoline_cr4_features = hidden global ptr null, align 8, !dbg !83
@trampoline_pgd_entry = hidden global %struct.pgd_t zeroinitializer, align 8, !dbg !85
@real_mode_blob_end = external dso_local global [0 x i8], align 1
@real_mode_blob = external dso_local global [0 x i8], align 1
@page_offset_base = external dso_local global i64, align 8
@real_mode_relocs = external dso_local global [0 x i8], align 1
@secondary_startup_64 = external dso_local global [0 x i8], align 1
@mmu_cr4_features = external dso_local global i64, align 8
@trampoline_lock = external dso_local global ptr, align 8
@pgdir_shift = external dso_local global i32, align 4
@init_top_pgt = external dso_local global [0 x %struct.pgd_t], align 8
@phys_base = external dso_local global i64, align 8
@__tracepoint_read_msr = external dso_local global %struct.tracepoint, align 8
@x86_platform = external dso_local global %struct.x86_platform_ops, align 8
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_init__277_220_do_init_real_modeearly278], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @load_trampoline_pgtable() #0 align 16 !dbg !103 {
entry:
  br i1 false, label %cond.true, label %cond.false, !dbg !106

cond.true:                                        ; preds = %entry
  br i1 true, label %if.then, label %if.end, !dbg !107

cond.false:                                       ; preds = %entry
  %call = call zeroext i1 @arch_test_bit(i64 noundef 145, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #13, !dbg !107
  br i1 %call, label %if.then, label %if.end, !dbg !106

if.then:                                          ; preds = %cond.false, %cond.true
  call void @cr4_clear_bits(i64 noundef 131072) #13, !dbg !109
  br label %if.end, !dbg !109

if.end:                                           ; preds = %if.then, %cond.false, %cond.true
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !110
  %trampoline_pgd = getelementptr inbounds %struct.real_mode_header, ptr %0, i32 0, i32 5, !dbg !111
  %1 = load i32, ptr %trampoline_pgd, align 4, !dbg !111
  %conv = zext i32 %1 to i64, !dbg !110
  call void @write_cr3(i64 noundef %conv) #13, !dbg !112
  call void @__flush_tlb_all() #13, !dbg !113
  ret void, !dbg !114
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !115 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !126, metadata !DIExpression()), !dbg !128
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !127, metadata !DIExpression()), !dbg !129
  %0 = load i64, ptr %nr.addr, align 8, !dbg !130
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !131
  br i1 %1, label %cond.true, label %cond.false, !dbg !131

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !132
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !133
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #13, !dbg !134
  %conv = zext i1 %call to i32, !dbg !134
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !135
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !136
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #13, !dbg !137
  %conv2 = zext i1 %call1 to i32, !dbg !137
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !131
  %tobool = icmp ne i32 %cond, 0, !dbg !131
  ret i1 %tobool, !dbg !138
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cr4_clear_bits(i64 noundef %mask) #2 align 16 !dbg !139 {
entry:
  %mask.addr = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !144, metadata !DIExpression()), !dbg !156
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !157
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !145, metadata !DIExpression()), !dbg !158
  br label %do.body, !dbg !159

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !160

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #14, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !146, metadata !DIExpression()), !dbg !161
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #14, !dbg !161
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !150, metadata !DIExpression()), !dbg !161
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !161
  %conv = zext i1 %cmp to i32, !dbg !161
  store i32 1, ptr %tmp, align 4, !dbg !161
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #14, !dbg !162
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #14, !dbg !162
  %0 = load i32, ptr %tmp, align 4, !dbg !161
  %call = call i64 @arch_local_irq_save() #13, !dbg !162
  store i64 %call, ptr %flags, align 8, !dbg !162
  br label %do.cond, !dbg !162

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !162

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !160

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !160

do.end3:                                          ; preds = %do.cond2
  %1 = load i64, ptr %mask.addr, align 8, !dbg !163
  call void @cr4_clear_bits_irqsoff(i64 noundef %1) #13, !dbg !164
  br label %do.body4, !dbg !165

do.body4:                                         ; preds = %do.end3
  br label %do.body5, !dbg !166

do.body5:                                         ; preds = %do.body4
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy6) #14, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %__dummy6, metadata !151, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy27) #14, !dbg !167
  call void @llvm.dbg.declare(metadata ptr %__dummy27, metadata !155, metadata !DIExpression()), !dbg !167
  %cmp8 = icmp eq ptr %__dummy6, %__dummy27, !dbg !167
  %conv9 = zext i1 %cmp8 to i32, !dbg !167
  store i32 1, ptr %tmp10, align 4, !dbg !167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy27) #14, !dbg !168
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy6) #14, !dbg !168
  %2 = load i32, ptr %tmp10, align 4, !dbg !167
  br label %do.body11, !dbg !168

do.body11:                                        ; preds = %do.body5
  br label %do.cond12, !dbg !169

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !169

do.end13:                                         ; preds = %do.cond12
  %3 = load i64, ptr %flags, align 8, !dbg !168
  call void @arch_local_irq_restore(i64 noundef %3) #13, !dbg !168
  br label %do.cond14, !dbg !168

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !168

do.end15:                                         ; preds = %do.cond14
  br label %do.cond16, !dbg !166

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !166

do.end17:                                         ; preds = %do.cond16
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !171
  ret void, !dbg !171
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_cr3(i64 noundef %x) #2 align 16 !dbg !172 {
entry:
  %x.addr = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !175, metadata !DIExpression()), !dbg !176
  %0 = load i64, ptr %x.addr, align 8, !dbg !177
  call void @native_write_cr3(i64 noundef %0) #13, !dbg !178
  ret void, !dbg !179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !180 dso_local void @__flush_tlb_all() #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @reserve_real_mode() #4 section ".init.text" align 16 !dbg !181 {
entry:
  %mem = alloca i64, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp33 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %mem) #14, !dbg !195
  call void @llvm.dbg.declare(metadata ptr %mem, metadata !183, metadata !DIExpression()), !dbg !196
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #14, !dbg !197
  call void @llvm.dbg.declare(metadata ptr %size, metadata !185, metadata !DIExpression()), !dbg !198
  %call = call i64 @real_mode_size_needed() #13, !dbg !199
  store i64 %call, ptr %size, align 8, !dbg !198
  %0 = load i64, ptr %size, align 8, !dbg !200
  %tobool = icmp ne i64 %0, 0, !dbg !200
  br i1 %tobool, label %if.end, label %if.then, !dbg !202

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !203

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !190, metadata !DIExpression()), !dbg !204
  %call1 = call zeroext i1 @slab_is_available() #13, !dbg !204
  %lnot = xor i1 %call1, true, !dbg !204
  %lnot2 = xor i1 %lnot, true, !dbg !204
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !204
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !204
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !205
  %tobool3 = icmp ne i32 %1, 0, !dbg !205
  %lnot4 = xor i1 %tobool3, true, !dbg !205
  %lnot6 = xor i1 %lnot4, true, !dbg !205
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !205
  %conv = sext i32 %lnot.ext7 to i64, !dbg !205
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !205
  %tobool8 = icmp ne i64 %expval, 0, !dbg !205
  br i1 %tobool8, label %if.then9, label %if.end19, !dbg !204

if.then9:                                         ; preds = %if.end
  br label %do.body, !dbg !205

do.body:                                          ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !192, metadata !DIExpression()), !dbg !206
  store i32 2305, ptr %__flags, align 4, !dbg !206
  br label %do.body10, !dbg !206

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !207

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !207

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !206

do.body11:                                        ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !209
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 54, i32 %2, i64 12) #14, !dbg !209, !srcloc !211
  br label %do.cond12, !dbg !209

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !209

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !206

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !212

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !212

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !205
  br label %do.cond17, !dbg !206

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !206

do.end18:                                         ; preds = %do.cond17
  br label %if.end19, !dbg !206

if.end19:                                         ; preds = %do.end18, %if.end
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !204
  %tobool20 = icmp ne i32 %3, 0, !dbg !204
  %lnot21 = xor i1 %tobool20, true, !dbg !204
  %lnot23 = xor i1 %lnot21, true, !dbg !204
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !204
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !204
  %expval26 = call i64 @llvm.expect.i64(i64 %conv25, i64 0), !dbg !204
  store i64 %expval26, ptr %tmp, align 8, !dbg !205
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !214
  %4 = load i64, ptr %tmp, align 8, !dbg !204
  %5 = load i64, ptr %size, align 8, !dbg !215
  %call27 = call i64 @memblock_phys_alloc_range(i64 noundef %5, i64 noundef 4096, i64 noundef 0, i64 noundef 1048576) #13, !dbg !216
  store i64 %call27, ptr %mem, align 8, !dbg !217
  %6 = load i64, ptr %mem, align 8, !dbg !218
  %tobool28 = icmp ne i64 %6, 0, !dbg !218
  br i1 %tobool28, label %if.else, label %if.then29, !dbg !220

if.then29:                                        ; preds = %if.end19
  br label %do.body30, !dbg !221

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !223

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !223

do.end32:                                         ; preds = %do.cond31
  %call34 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #15, !dbg !221
  store i32 %call34, ptr %tmp33, align 4, !dbg !223
  %7 = load i32, ptr %tmp33, align 4, !dbg !221
  br label %if.end35, !dbg !225

if.else:                                          ; preds = %if.end19
  %8 = load i64, ptr %mem, align 8, !dbg !226
  call void @set_real_mode_mem(i64 noundef %8) #13, !dbg !227
  br label %if.end35

if.end35:                                         ; preds = %if.else, %do.end32
  %call36 = call i32 @memblock_reserve(i64 noundef 0, i64 noundef 1048576) #13, !dbg !228
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !229
  br label %cleanup, !dbg !229

cleanup:                                          ; preds = %if.end35, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #14, !dbg !229
  call void @llvm.lifetime.end.p0(i64 8, ptr %mem) #14, !dbg !229
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !229

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @real_mode_size_needed() #2 align 16 !dbg !230 {
entry:
  %retval = alloca i64, align 8
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !233
  %tobool = icmp ne ptr %0, null, !dbg !233
  br i1 %tobool, label %if.then, label %if.end, !dbg !235

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !236
  br label %return, !dbg !236

if.end:                                           ; preds = %entry
  %and = and i64 add (i64 sub (i64 ptrtoint (ptr @real_mode_blob_end to i64), i64 ptrtoint (ptr @real_mode_blob to i64)), i64 4095), -4096, !dbg !237
  store i64 %and, ptr %retval, align 8, !dbg !238
  br label %return, !dbg !238

return:                                           ; preds = %if.end, %if.then
  %1 = load i64, ptr %retval, align 8, !dbg !239
  ret i64 %1, !dbg !239
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !240 dso_local zeroext i1 @slab_is_available() #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !244 dso_local i64 @memblock_phys_alloc_range(i64 noundef, i64 noundef, i64 noundef, i64 noundef) #3

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !248 dso_local i32 @_printk(ptr noundef, ...) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @set_real_mode_mem(i64 noundef %mem) #2 align 16 !dbg !254 {
entry:
  %mem.addr = alloca i64, align 8
  store i64 %mem, ptr %mem.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mem.addr, metadata !258, metadata !DIExpression()), !dbg !259
  %0 = load i64, ptr %mem.addr, align 8, !dbg !260
  %1 = load i64, ptr @page_offset_base, align 8, !dbg !260
  %add = add i64 %0, %1, !dbg !260
  %2 = inttoptr i64 %add to ptr, !dbg !260
  store ptr %2, ptr @real_mode_header, align 8, !dbg !261
  ret void, !dbg !262
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !263 dso_local i32 @memblock_reserve(i64 noundef, i64 noundef) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @init_real_mode() #4 section ".init.text" align 16 !dbg !266 {
entry:
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !267
  %tobool = icmp ne ptr %0, null, !dbg !267
  br i1 %tobool, label %if.end, label %if.then, !dbg !269

if.then:                                          ; preds = %entry
  call void (ptr, ...) @panic(ptr noundef @.str.2) #16, !dbg !270
  unreachable, !dbg !270

if.end:                                           ; preds = %entry
  call void @setup_real_mode() #15, !dbg !271
  call void @set_real_mode_permissions() #15, !dbg !272
  ret void, !dbg !273
}

; Function Attrs: cold noredzone noreturn null_pointer_is_valid
declare !dbg !274 dso_local void @panic(ptr noundef, ...) #9

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @setup_real_mode() #4 section ".init.text" align 16 !dbg !278 {
entry:
  %real_mode_seg = alloca i16, align 2
  %rel = alloca ptr, align 8
  %count = alloca i32, align 4
  %base = alloca ptr, align 8
  %phys_base = alloca i64, align 8
  %trampoline_header = alloca ptr, align 8
  %size = alloca i64, align 8
  %trampoline_pgd = alloca ptr, align 8
  %efer = alloca i64, align 8
  %i = alloca i32, align 4
  %seg = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr %real_mode_seg) #14, !dbg !296
  call void @llvm.dbg.declare(metadata ptr %real_mode_seg, metadata !280, metadata !DIExpression()), !dbg !297
  call void @llvm.lifetime.start.p0(i64 8, ptr %rel) #14, !dbg !298
  call void @llvm.dbg.declare(metadata ptr %rel, metadata !281, metadata !DIExpression()), !dbg !299
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #14, !dbg !300
  call void @llvm.dbg.declare(metadata ptr %count, metadata !284, metadata !DIExpression()), !dbg !301
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !302
  call void @llvm.dbg.declare(metadata ptr %base, metadata !285, metadata !DIExpression()), !dbg !303
  call void @llvm.lifetime.start.p0(i64 8, ptr %phys_base) #14, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %phys_base, metadata !286, metadata !DIExpression()), !dbg !305
  call void @llvm.lifetime.start.p0(i64 8, ptr %trampoline_header) #14, !dbg !306
  call void @llvm.dbg.declare(metadata ptr %trampoline_header, metadata !287, metadata !DIExpression()), !dbg !307
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #14, !dbg !308
  call void @llvm.dbg.declare(metadata ptr %size, metadata !288, metadata !DIExpression()), !dbg !309
  %and = and i64 add (i64 sub (i64 ptrtoint (ptr @real_mode_blob_end to i64), i64 ptrtoint (ptr @real_mode_blob to i64)), i64 4095), -4096, !dbg !310
  store i64 %and, ptr %size, align 8, !dbg !309
  call void @llvm.lifetime.start.p0(i64 8, ptr %trampoline_pgd) #14, !dbg !311
  call void @llvm.dbg.declare(metadata ptr %trampoline_pgd, metadata !289, metadata !DIExpression()), !dbg !312
  call void @llvm.lifetime.start.p0(i64 8, ptr %efer) #14, !dbg !313
  call void @llvm.dbg.declare(metadata ptr %efer, metadata !290, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %i, metadata !291, metadata !DIExpression()), !dbg !316
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !317
  store ptr %0, ptr %base, align 8, !dbg !318
  %call = call zeroext i1 @cc_platform_has(i32 noundef 1) #13, !dbg !319
  br i1 %call, label %if.then, label %if.end, !dbg !321

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %base, align 8, !dbg !322
  %2 = ptrtoint ptr %1 to i64, !dbg !323
  %3 = load i64, ptr %size, align 8, !dbg !324
  %shr = lshr i64 %3, 12, !dbg !325
  %conv = trunc i64 %shr to i32, !dbg !324
  %call1 = call i32 @set_memory_decrypted(i64 noundef %2, i32 noundef %conv) #13, !dbg !326
  br label %if.end, !dbg !326

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %base, align 8, !dbg !327
  %5 = load i64, ptr %size, align 8, !dbg !328
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %4, ptr align 1 @real_mode_blob, i64 %5, i1 false), !dbg !329
  %6 = load ptr, ptr %base, align 8, !dbg !330
  %7 = ptrtoint ptr %6 to i64, !dbg !330
  %call2 = call i64 @__phys_addr_nodebug(i64 noundef %7) #13, !dbg !330
  store i64 %call2, ptr %phys_base, align 8, !dbg !331
  %8 = load i64, ptr %phys_base, align 8, !dbg !332
  %shr3 = lshr i64 %8, 4, !dbg !333
  %conv4 = trunc i64 %shr3 to i16, !dbg !332
  store i16 %conv4, ptr %real_mode_seg, align 2, !dbg !334
  store ptr @real_mode_relocs, ptr %rel, align 8, !dbg !335
  %9 = load ptr, ptr %rel, align 8, !dbg !336
  %incdec.ptr = getelementptr i32, ptr %9, i32 1, !dbg !336
  store ptr %incdec.ptr, ptr %rel, align 8, !dbg !336
  %10 = load i32, ptr %9, align 4, !dbg !337
  store i32 %10, ptr %count, align 4, !dbg !338
  br label %while.cond, !dbg !339

while.cond:                                       ; preds = %while.body, %if.end
  %11 = load i32, ptr %count, align 4, !dbg !340
  %dec = add i32 %11, -1, !dbg !340
  store i32 %dec, ptr %count, align 4, !dbg !340
  %tobool = icmp ne i32 %11, 0, !dbg !339
  br i1 %tobool, label %while.body, label %while.end, !dbg !339

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %seg) #14, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %seg, metadata !292, metadata !DIExpression()), !dbg !342
  %12 = load ptr, ptr %base, align 8, !dbg !343
  %13 = load ptr, ptr %rel, align 8, !dbg !344
  %incdec.ptr5 = getelementptr i32, ptr %13, i32 1, !dbg !344
  store ptr %incdec.ptr5, ptr %rel, align 8, !dbg !344
  %14 = load i32, ptr %13, align 4, !dbg !345
  %idx.ext = zext i32 %14 to i64, !dbg !346
  %add.ptr = getelementptr i8, ptr %12, i64 %idx.ext, !dbg !346
  store ptr %add.ptr, ptr %seg, align 8, !dbg !342
  %15 = load i16, ptr %real_mode_seg, align 2, !dbg !347
  %16 = load ptr, ptr %seg, align 8, !dbg !348
  store i16 %15, ptr %16, align 2, !dbg !349
  call void @llvm.lifetime.end.p0(i64 8, ptr %seg) #14, !dbg !350
  br label %while.cond, !dbg !339, !llvm.loop !351

while.end:                                        ; preds = %while.cond
  %17 = load ptr, ptr %rel, align 8, !dbg !354
  %incdec.ptr6 = getelementptr i32, ptr %17, i32 1, !dbg !354
  store ptr %incdec.ptr6, ptr %rel, align 8, !dbg !354
  %18 = load i32, ptr %17, align 4, !dbg !355
  store i32 %18, ptr %count, align 4, !dbg !356
  br label %while.cond7, !dbg !357

while.cond7:                                      ; preds = %while.body10, %while.end
  %19 = load i32, ptr %count, align 4, !dbg !358
  %dec8 = add i32 %19, -1, !dbg !358
  store i32 %dec8, ptr %count, align 4, !dbg !358
  %tobool9 = icmp ne i32 %19, 0, !dbg !357
  br i1 %tobool9, label %while.body10, label %while.end16, !dbg !357

while.body10:                                     ; preds = %while.cond7
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !359
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !294, metadata !DIExpression()), !dbg !360
  %20 = load ptr, ptr %base, align 8, !dbg !361
  %21 = load ptr, ptr %rel, align 8, !dbg !362
  %incdec.ptr11 = getelementptr i32, ptr %21, i32 1, !dbg !362
  store ptr %incdec.ptr11, ptr %rel, align 8, !dbg !362
  %22 = load i32, ptr %21, align 4, !dbg !363
  %idx.ext12 = zext i32 %22 to i64, !dbg !364
  %add.ptr13 = getelementptr i8, ptr %20, i64 %idx.ext12, !dbg !364
  store ptr %add.ptr13, ptr %ptr, align 8, !dbg !360
  %23 = load i64, ptr %phys_base, align 8, !dbg !365
  %24 = load ptr, ptr %ptr, align 8, !dbg !366
  %25 = load i32, ptr %24, align 4, !dbg !367
  %conv14 = zext i32 %25 to i64, !dbg !367
  %add = add i64 %conv14, %23, !dbg !367
  %conv15 = trunc i64 %add to i32, !dbg !367
  store i32 %conv15, ptr %24, align 4, !dbg !367
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !368
  br label %while.cond7, !dbg !357, !llvm.loop !369

while.end16:                                      ; preds = %while.cond7
  %26 = load ptr, ptr @real_mode_header, align 8, !dbg !370
  %trampoline_header17 = getelementptr inbounds %struct.real_mode_header, ptr %26, i32 0, i32 3, !dbg !370
  %27 = load i32, ptr %trampoline_header17, align 4, !dbg !370
  %conv18 = zext i32 %27 to i64, !dbg !370
  %28 = load i64, ptr @page_offset_base, align 8, !dbg !370
  %add19 = add i64 %conv18, %28, !dbg !370
  %29 = inttoptr i64 %add19 to ptr, !dbg !370
  store ptr %29, ptr %trampoline_header, align 8, !dbg !371
  %call20 = call i64 @native_read_msr(i32 noundef -1073741696) #13, !dbg !372
  store i64 %call20, ptr %efer, align 8, !dbg !372
  %30 = load i64, ptr %efer, align 8, !dbg !373
  %and21 = and i64 %30, -1025, !dbg !374
  %31 = load ptr, ptr %trampoline_header, align 8, !dbg !375
  %efer22 = getelementptr inbounds %struct.trampoline_header, ptr %31, i32 0, i32 1, !dbg !376
  store i64 %and21, ptr %efer22, align 8, !dbg !377
  %32 = load ptr, ptr %trampoline_header, align 8, !dbg !378
  %start = getelementptr inbounds %struct.trampoline_header, ptr %32, i32 0, i32 0, !dbg !379
  store i64 ptrtoint (ptr @secondary_startup_64 to i64), ptr %start, align 8, !dbg !380
  %33 = load ptr, ptr %trampoline_header, align 8, !dbg !381
  %cr4 = getelementptr inbounds %struct.trampoline_header, ptr %33, i32 0, i32 2, !dbg !382
  store ptr %cr4, ptr @trampoline_cr4_features, align 8, !dbg !383
  %34 = load i64, ptr @mmu_cr4_features, align 8, !dbg !384
  %conv23 = trunc i64 %34 to i32, !dbg !384
  %35 = load ptr, ptr @trampoline_cr4_features, align 8, !dbg !385
  store i32 %conv23, ptr %35, align 4, !dbg !386
  %36 = load ptr, ptr %trampoline_header, align 8, !dbg !387
  %flags = getelementptr inbounds %struct.trampoline_header, ptr %36, i32 0, i32 3, !dbg !388
  store i32 0, ptr %flags, align 4, !dbg !389
  %37 = load ptr, ptr %trampoline_header, align 8, !dbg !390
  %lock = getelementptr inbounds %struct.trampoline_header, ptr %37, i32 0, i32 4, !dbg !391
  store ptr %lock, ptr @trampoline_lock, align 8, !dbg !392
  %38 = load ptr, ptr @trampoline_lock, align 8, !dbg !393
  store i32 0, ptr %38, align 4, !dbg !394
  %39 = load ptr, ptr @real_mode_header, align 8, !dbg !395
  %trampoline_pgd24 = getelementptr inbounds %struct.real_mode_header, ptr %39, i32 0, i32 5, !dbg !395
  %40 = load i32, ptr %trampoline_pgd24, align 4, !dbg !395
  %conv25 = zext i32 %40 to i64, !dbg !395
  %41 = load i64, ptr @page_offset_base, align 8, !dbg !395
  %add26 = add i64 %conv25, %41, !dbg !395
  %42 = inttoptr i64 %add26 to ptr, !dbg !395
  store ptr %42, ptr %trampoline_pgd, align 8, !dbg !396
  %43 = load i64, ptr @trampoline_pgd_entry, align 8, !dbg !397
  %44 = load ptr, ptr %trampoline_pgd, align 8, !dbg !398
  %arrayidx = getelementptr i64, ptr %44, i64 0, !dbg !398
  store i64 %43, ptr %arrayidx, align 8, !dbg !399
  %45 = load i64, ptr @page_offset_base, align 8, !dbg !400
  %46 = load i32, ptr @pgdir_shift, align 4, !dbg !400
  %sh_prom = zext i32 %46 to i64, !dbg !400
  %shr27 = lshr i64 %45, %sh_prom, !dbg !400
  %and28 = and i64 %shr27, 511, !dbg !400
  %conv29 = trunc i64 %and28 to i32, !dbg !400
  store i32 %conv29, ptr %i, align 4, !dbg !402
  br label %for.cond, !dbg !403

for.cond:                                         ; preds = %for.inc, %while.end16
  %47 = load i32, ptr %i, align 4, !dbg !404
  %cmp = icmp slt i32 %47, 512, !dbg !406
  br i1 %cmp, label %for.body, label %for.end, !dbg !407

for.body:                                         ; preds = %for.cond
  %48 = load i32, ptr %i, align 4, !dbg !408
  %idxprom = sext i32 %48 to i64, !dbg !409
  %arrayidx31 = getelementptr [0 x %struct.pgd_t], ptr @init_top_pgt, i64 0, i64 %idxprom, !dbg !409
  %pgd = getelementptr inbounds %struct.pgd_t, ptr %arrayidx31, i32 0, i32 0, !dbg !410
  %49 = load i64, ptr %pgd, align 8, !dbg !410
  %50 = load ptr, ptr %trampoline_pgd, align 8, !dbg !411
  %51 = load i32, ptr %i, align 4, !dbg !412
  %idxprom32 = sext i32 %51 to i64, !dbg !411
  %arrayidx33 = getelementptr i64, ptr %50, i64 %idxprom32, !dbg !411
  store i64 %49, ptr %arrayidx33, align 8, !dbg !413
  br label %for.inc, !dbg !411

for.inc:                                          ; preds = %for.body
  %52 = load i32, ptr %i, align 4, !dbg !414
  %inc = add i32 %52, 1, !dbg !414
  store i32 %inc, ptr %i, align 4, !dbg !414
  br label %for.cond, !dbg !415, !llvm.loop !416

for.end:                                          ; preds = %for.cond
  %53 = load ptr, ptr %trampoline_header, align 8, !dbg !418
  call void @sme_sev_setup_real_mode(ptr noundef %53) #15, !dbg !419
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %efer) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %trampoline_pgd) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %trampoline_header) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %phys_base) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %rel) #14, !dbg !420
  call void @llvm.lifetime.end.p0(i64 2, ptr %real_mode_seg) #14, !dbg !420
  ret void, !dbg !420
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @set_real_mode_permissions() #4 section ".init.text" align 16 !dbg !421 {
entry:
  %base = alloca ptr, align 8
  %size = alloca i64, align 8
  %ro_size = alloca i64, align 8
  %text_size = alloca i64, align 8
  %text_start7 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %base) #14, !dbg !428
  call void @llvm.dbg.declare(metadata ptr %base, metadata !423, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr @real_mode_header, align 8, !dbg !430
  store ptr %0, ptr %base, align 8, !dbg !429
  call void @llvm.lifetime.start.p0(i64 8, ptr %size) #14, !dbg !431
  call void @llvm.dbg.declare(metadata ptr %size, metadata !424, metadata !DIExpression()), !dbg !432
  %and = and i64 add (i64 sub (i64 ptrtoint (ptr @real_mode_blob_end to i64), i64 ptrtoint (ptr @real_mode_blob to i64)), i64 4095), -4096, !dbg !433
  store i64 %and, ptr %size, align 8, !dbg !432
  call void @llvm.lifetime.start.p0(i64 8, ptr %ro_size) #14, !dbg !434
  call void @llvm.dbg.declare(metadata ptr %ro_size, metadata !425, metadata !DIExpression()), !dbg !435
  %1 = load ptr, ptr @real_mode_header, align 8, !dbg !436
  %ro_end = getelementptr inbounds %struct.real_mode_header, ptr %1, i32 0, i32 1, !dbg !436
  %2 = load i32, ptr %ro_end, align 4, !dbg !436
  %add = add i32 %2, 4095, !dbg !436
  %and1 = and i32 %add, -4096, !dbg !436
  %conv = zext i32 %and1 to i64, !dbg !436
  %3 = load ptr, ptr %base, align 8, !dbg !437
  %4 = ptrtoint ptr %3 to i64, !dbg !437
  %call = call i64 @__phys_addr_nodebug(i64 noundef %4) #13, !dbg !437
  %sub = sub i64 %conv, %call, !dbg !438
  store i64 %sub, ptr %ro_size, align 8, !dbg !435
  call void @llvm.lifetime.start.p0(i64 8, ptr %text_size) #14, !dbg !439
  call void @llvm.dbg.declare(metadata ptr %text_size, metadata !426, metadata !DIExpression()), !dbg !440
  %5 = load ptr, ptr @real_mode_header, align 8, !dbg !441
  %ro_end2 = getelementptr inbounds %struct.real_mode_header, ptr %5, i32 0, i32 1, !dbg !441
  %6 = load i32, ptr %ro_end2, align 4, !dbg !441
  %add3 = add i32 %6, 4095, !dbg !441
  %and4 = and i32 %add3, -4096, !dbg !441
  %7 = load ptr, ptr @real_mode_header, align 8, !dbg !442
  %text_start = getelementptr inbounds %struct.real_mode_header, ptr %7, i32 0, i32 0, !dbg !443
  %8 = load i32, ptr %text_start, align 4, !dbg !443
  %sub5 = sub i32 %and4, %8, !dbg !444
  %conv6 = zext i32 %sub5 to i64, !dbg !441
  store i64 %conv6, ptr %text_size, align 8, !dbg !440
  call void @llvm.lifetime.start.p0(i64 8, ptr %text_start7) #14, !dbg !445
  call void @llvm.dbg.declare(metadata ptr %text_start7, metadata !427, metadata !DIExpression()), !dbg !446
  %9 = load ptr, ptr @real_mode_header, align 8, !dbg !447
  %text_start8 = getelementptr inbounds %struct.real_mode_header, ptr %9, i32 0, i32 0, !dbg !447
  %10 = load i32, ptr %text_start8, align 4, !dbg !447
  %conv9 = zext i32 %10 to i64, !dbg !447
  %11 = load i64, ptr @page_offset_base, align 8, !dbg !447
  %add10 = add i64 %conv9, %11, !dbg !447
  %12 = inttoptr i64 %add10 to ptr, !dbg !447
  %13 = ptrtoint ptr %12 to i64, !dbg !448
  store i64 %13, ptr %text_start7, align 8, !dbg !446
  %14 = load ptr, ptr %base, align 8, !dbg !449
  %15 = ptrtoint ptr %14 to i64, !dbg !450
  %16 = load i64, ptr %size, align 8, !dbg !451
  %shr = lshr i64 %16, 12, !dbg !452
  %conv11 = trunc i64 %shr to i32, !dbg !451
  %call12 = call i32 @set_memory_nx(i64 noundef %15, i32 noundef %conv11) #13, !dbg !453
  %17 = load ptr, ptr %base, align 8, !dbg !454
  %18 = ptrtoint ptr %17 to i64, !dbg !455
  %19 = load i64, ptr %ro_size, align 8, !dbg !456
  %shr13 = lshr i64 %19, 12, !dbg !457
  %conv14 = trunc i64 %shr13 to i32, !dbg !456
  %call15 = call i32 @set_memory_ro(i64 noundef %18, i32 noundef %conv14) #13, !dbg !458
  %20 = load i64, ptr %text_start7, align 8, !dbg !459
  %21 = load i64, ptr %text_size, align 8, !dbg !460
  %shr16 = lshr i64 %21, 12, !dbg !461
  %conv17 = trunc i64 %shr16 to i32, !dbg !460
  %call18 = call i32 @set_memory_x(i64 noundef %20, i32 noundef %conv17) #13, !dbg !462
  call void @llvm.lifetime.end.p0(i64 8, ptr %text_start7) #14, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %text_size) #14, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %ro_size) #14, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %size) #14, !dbg !463
  call void @llvm.lifetime.end.p0(i64 8, ptr %base) #14, !dbg !463
  ret void, !dbg !463
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_init__277_220_do_init_real_modeearly() #4 section ".init.text" align 16 !dbg !464 {
entry:
  %call = call i32 @do_init_real_mode() #15, !dbg !467
  ret i32 %call, !dbg !467
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @do_init_real_mode() #4 section ".init.text" align 16 !dbg !468 {
entry:
  %0 = load ptr, ptr getelementptr inbounds (%struct.x86_platform_ops, ptr @x86_platform, i32 0, i32 14), align 8, !dbg !469
  call void %0() #13, !dbg !470
  ret i32 0, !dbg !471
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !472 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !476, metadata !DIExpression()), !dbg !478
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !477, metadata !DIExpression()), !dbg !479
  %0 = load i64, ptr %nr.addr, align 8, !dbg !480
  %and = and i64 %0, 63, !dbg !481
  %shl = shl i64 1, %and, !dbg !482
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !483
  %2 = load i64, ptr %nr.addr, align 8, !dbg !484
  %shr = ashr i64 %2, 6, !dbg !485
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !483
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !483
  %and1 = and i64 %shl, %3, !dbg !486
  %cmp = icmp ne i64 %and1, 0, !dbg !487
  ret i1 %cmp, !dbg !488
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #1 align 16 !dbg !489 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !491, metadata !DIExpression()), !dbg !494
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !492, metadata !DIExpression()), !dbg !495
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #14, !dbg !496
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !493, metadata !DIExpression()), !dbg !497
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !498
  %1 = load i64, ptr %nr.addr, align 8, !dbg !499
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #14, !dbg !500, !srcloc !501
  %3 = icmp ult i8 %2, 2, !dbg !500
  call void @llvm.assume(i1 %3), !dbg !500
  store i8 %2, ptr %oldbit, align 1, !dbg !500
  %4 = load i8, ptr %oldbit, align 1, !dbg !502, !range !503, !noundef !504
  %tobool = trunc i8 %4 to i1, !dbg !502
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #14, !dbg !505
  ret i1 %tobool, !dbg !506
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #1 align 16 !dbg !507 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !513
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !512, metadata !DIExpression()), !dbg !514
  %call = call i64 @arch_local_save_flags() #13, !dbg !515
  store i64 %call, ptr %flags, align 8, !dbg !514
  call void @arch_local_irq_disable() #13, !dbg !516
  %0 = load i64, ptr %flags, align 8, !dbg !517
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !518
  ret i64 %0, !dbg !519
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cr4_clear_bits_irqsoff(i64 noundef %mask) #2 align 16 !dbg !520 {
entry:
  %mask.addr = alloca i64, align 8
  store i64 %mask, ptr %mask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !522, metadata !DIExpression()), !dbg !523
  %0 = load i64, ptr %mask.addr, align 8, !dbg !524
  call void @cr4_update_irqsoff(i64 noundef 0, i64 noundef %0) #13, !dbg !525
  ret void, !dbg !526
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #1 align 16 !dbg !527 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !529, metadata !DIExpression()), !dbg !530
  %0 = load i64, ptr %flags.addr, align 8, !dbg !531
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #13, !dbg !533
  %tobool = icmp ne i32 %call, 0, !dbg !533
  br i1 %tobool, label %if.end, label %if.then, !dbg !534

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #13, !dbg !535
  br label %if.end, !dbg !535

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !536
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #1 align 16 !dbg !537 {
entry:
  %call = call i64 @native_save_fl() #13, !dbg !538
  ret i64 %call, !dbg !539
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #1 align 16 !dbg !540 {
entry:
  call void @native_irq_disable() #13, !dbg !541
  ret void, !dbg !542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #1 align 16 !dbg !543 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #14, !dbg !546
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !545, metadata !DIExpression()), !dbg !547
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #14, !dbg !548, !srcloc !549
  %0 = load i64, ptr %flags, align 8, !dbg !550
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #14, !dbg !551
  ret i64 %0, !dbg !552
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #1 align 16 !dbg !553 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !554, !srcloc !555
  ret void, !dbg !556
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !557 dso_local void @cr4_update_irqsoff(i64 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #1 align 16 !dbg !560 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !564, metadata !DIExpression()), !dbg !565
  %0 = load i64, ptr %flags.addr, align 8, !dbg !566
  %and = and i64 %0, 512, !dbg !567
  %tobool = icmp ne i64 %and, 0, !dbg !568
  %lnot = xor i1 %tobool, true, !dbg !568
  %lnot.ext = zext i1 %lnot to i32, !dbg !568
  ret i32 %lnot.ext, !dbg !569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #1 align 16 !dbg !570 {
entry:
  call void @native_irq_enable() #13, !dbg !571
  ret void, !dbg !572
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #1 align 16 !dbg !573 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #14, !dbg !574, !srcloc !575
  ret void, !dbg !576
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_write_cr3(i64 noundef %val) #2 align 16 !dbg !577 {
entry:
  %val.addr = alloca i64, align 8
  store i64 %val, ptr %val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !579, metadata !DIExpression()), !dbg !580
  %0 = load i64, ptr %val.addr, align 8, !dbg !581
  call void asm sideeffect "mov $0,%cr3", "r,~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #14, !dbg !582, !srcloc !583
  ret void, !dbg !584
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cc_platform_has(i32 noundef %attr) #2 align 16 !dbg !585 {
entry:
  %attr.addr = alloca i32, align 4
  store i32 %attr, ptr %attr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !589, metadata !DIExpression()), !dbg !590
  ret i1 false, !dbg !591
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !592 dso_local i32 @set_memory_decrypted(i64 noundef, i32 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__phys_addr_nodebug(i64 noundef %x) #1 align 16 !dbg !596 {
entry:
  %x.addr = alloca i64, align 8
  %y = alloca i64, align 8
  store i64 %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !601, metadata !DIExpression()), !dbg !603
  call void @llvm.lifetime.start.p0(i64 8, ptr %y) #14, !dbg !604
  call void @llvm.dbg.declare(metadata ptr %y, metadata !602, metadata !DIExpression()), !dbg !605
  %0 = load i64, ptr %x.addr, align 8, !dbg !606
  %sub = sub i64 %0, -2147483648, !dbg !607
  store i64 %sub, ptr %y, align 8, !dbg !605
  %1 = load i64, ptr %y, align 8, !dbg !608
  %2 = load i64, ptr %x.addr, align 8, !dbg !609
  %3 = load i64, ptr %y, align 8, !dbg !610
  %cmp = icmp ugt i64 %2, %3, !dbg !611
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !612

cond.true:                                        ; preds = %entry
  %4 = load i64, ptr @phys_base, align 8, !dbg !613
  br label %cond.end, !dbg !612

cond.false:                                       ; preds = %entry
  %5 = load i64, ptr @page_offset_base, align 8, !dbg !614
  %sub1 = sub i64 -2147483648, %5, !dbg !615
  br label %cond.end, !dbg !612

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %sub1, %cond.false ], !dbg !612
  %add = add i64 %1, %cond, !dbg !616
  store i64 %add, ptr %x.addr, align 8, !dbg !617
  %6 = load i64, ptr %x.addr, align 8, !dbg !618
  call void @llvm.lifetime.end.p0(i64 8, ptr %y) #14, !dbg !619
  ret i64 %6, !dbg !620
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @native_read_msr(i32 noundef %msr) #2 align 16 !dbg !621 {
entry:
  %msr.addr = alloca i32, align 4
  %val = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !626, metadata !DIExpression()), !dbg !628
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #14, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %val, metadata !627, metadata !DIExpression()), !dbg !630
  %0 = load i32, ptr %msr.addr, align 4, !dbg !631
  %call = call i64 @__rdmsr(i32 noundef %0) #13, !dbg !632
  store i64 %call, ptr %val, align 8, !dbg !633
  %call1 = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_read_msr, i32 0, i32 1)) #13, !dbg !634
  br i1 %call1, label %if.then, label %if.end, !dbg !636

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %msr.addr, align 4, !dbg !637
  %2 = load i64, ptr %val, align 8, !dbg !638
  call void @do_trace_read_msr(i32 noundef %1, i64 noundef %2, i32 noundef 0) #13, !dbg !639
  br label %if.end, !dbg !639

if.end:                                           ; preds = %if.then, %entry
  %3 = load i64, ptr %val, align 8, !dbg !640
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #14, !dbg !641
  ret i64 %3, !dbg !642
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @sme_sev_setup_real_mode(ptr noundef %th) #4 section ".init.text" align 16 !dbg !643 {
entry:
  %th.addr = alloca ptr, align 8
  store ptr %th, ptr %th.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %th.addr, metadata !647, metadata !DIExpression()), !dbg !648
  ret void, !dbg !649
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__rdmsr(i32 noundef %msr) #1 align 16 !dbg !650 {
entry:
  %msr.addr = alloca i32, align 4
  %low = alloca i64, align 8
  %high = alloca i64, align 8
  store i32 %msr, ptr %msr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %msr.addr, metadata !652, metadata !DIExpression()), !dbg !655
  call void @llvm.lifetime.start.p0(i64 8, ptr %low) #14, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %low, metadata !653, metadata !DIExpression()), !dbg !656
  call void @llvm.lifetime.start.p0(i64 8, ptr %high) #14, !dbg !656
  call void @llvm.dbg.declare(metadata ptr %high, metadata !654, metadata !DIExpression()), !dbg !656
  %0 = load i32, ptr %msr.addr, align 4, !dbg !657
  %1 = call { i64, i64 } asm sideeffect "1: rdmsr\0A2:\0A .pushsection \22__ex_table\22,\22a\22\0A .balign 4\0A .long (1b) - .\0A .long (2b) - .\0A .long 9 \0A .popsection\0A", "={ax},={dx},{cx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !658, !srcloc !659
  %asmresult = extractvalue { i64, i64 } %1, 0, !dbg !658
  %asmresult1 = extractvalue { i64, i64 } %1, 1, !dbg !658
  store i64 %asmresult, ptr %low, align 8, !dbg !658
  store i64 %asmresult1, ptr %high, align 8, !dbg !658
  %2 = load i64, ptr %low, align 8, !dbg !660
  %3 = load i64, ptr %high, align 8, !dbg !660
  %shl = shl i64 %3, 32, !dbg !660
  %or = or i64 %2, %shl, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr %high) #14, !dbg !661
  call void @llvm.lifetime.end.p0(i64 8, ptr %low) #14, !dbg !661
  ret i64 %or, !dbg !662
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #1 align 16 !dbg !663 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !692, metadata !DIExpression()), !dbg !693
  %0 = load ptr, ptr %key.addr, align 8, !dbg !694
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #13, !dbg !695
  ret i1 %call, !dbg !696
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !697 dso_local void @do_trace_read_msr(i32 noundef, i64 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #1 align 16 !dbg !700 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !705, metadata !DIExpression()), !dbg !708
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !706, metadata !DIExpression()), !dbg !709
  %0 = load ptr, ptr %key.addr, align 8, !dbg !710
  %1 = load i8, ptr %branch.addr, align 1, !dbg !711, !range !503, !noundef !504
  %tobool = trunc i8 %1 to i1, !dbg !711
  %conv = zext i1 %tobool to i32, !dbg !711
  %or = or i32 2, %conv, !dbg !712
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #14
          to label %asm.fallthrough [label %l_yes], !dbg !713, !srcloc !714

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !715
  br label %return, !dbg !715

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !707), !dbg !716
  store i1 true, ptr %retval, align 1, !dbg !717
  br label %return, !dbg !717

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !718
  ret i1 %2, !dbg !718
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #6

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !719 dso_local i32 @set_memory_nx(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !721 dso_local i32 @set_memory_ro(i64 noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !722 dso_local i32 @set_memory_x(i64 noundef, i32 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { cold noredzone noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { cold noredzone }
attributes #16 = { cold noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "real_mode_header", scope: !2, file: !3, line: 14, type: !27, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/realmode/.init.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/realmode/init\22 -D KBUILD_BASENAME=\22init\22 -D KBUILD_MODNAME=\22init\22 -D __KBUILD_MODNAME=kmod_init -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/realmode/init.ll arch/x86/realmode/init.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !64, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/realmode/init.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "79b27dd67c4b62e881924968e9c08c42")
!4 = !{!5, !16}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "cc_attr", file: !6, line: 22, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/cc_platform.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec881fca7f8cde0abb6c64a9f159f14b")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15}
!9 = !DIEnumerator(name: "CC_ATTR_MEM_ENCRYPT", value: 0)
!10 = !DIEnumerator(name: "CC_ATTR_HOST_MEM_ENCRYPT", value: 1)
!11 = !DIEnumerator(name: "CC_ATTR_GUEST_MEM_ENCRYPT", value: 2)
!12 = !DIEnumerator(name: "CC_ATTR_GUEST_STATE_ENCRYPT", value: 3)
!13 = !DIEnumerator(name: "CC_ATTR_GUEST_UNROLL_STRING_IO", value: 4)
!14 = !DIEnumerator(name: "CC_ATTR_GUEST_SEV_SNP", value: 5)
!15 = !DIEnumerator(name: "CC_ATTR_HOTPLUG_DISABLED", value: 6)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !17, line: 10, baseType: !7, size: 32, elements: !18)
!17 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!18 = !{!19, !20}
!19 = !DIEnumerator(name: "false", value: 0)
!20 = !DIEnumerator(name: "true", value: 1)
!21 = !{!22, !23, !25, !26, !27, !24, !45, !47, !48, !52, !56, !63, !32}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_mode_header", file: !29, line: 18, size: 320, elements: !30)
!29 = !DIFile(filename: "./arch/x86/include/asm/realmode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f98f3fced78572afc86d24ec2fc3fcda")
!30 = !{!31, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "text_start", scope: !28, file: !29, line: 19, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !33, line: 21, baseType: !34)
!33 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !35, line: 27, baseType: !7)
!35 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ro_end", scope: !28, file: !29, line: 20, baseType: !32, size: 32, offset: 32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_start", scope: !28, file: !29, line: 22, baseType: !32, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_header", scope: !28, file: !29, line: 23, baseType: !32, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_start64", scope: !28, file: !29, line: 28, baseType: !32, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "trampoline_pgd", scope: !28, file: !29, line: 29, baseType: !32, size: 32, offset: 160)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_start", scope: !28, file: !29, line: 33, baseType: !32, size: 32, offset: 192)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_header", scope: !28, file: !29, line: 34, baseType: !32, size: 32, offset: 224)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "machine_real_restart_asm", scope: !28, file: !29, line: 37, baseType: !32, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "machine_real_restart_seg", scope: !28, file: !29, line: 39, baseType: !32, size: 32, offset: 288)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !33, line: 19, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !35, line: 24, baseType: !51)
!51 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trampoline_header", file: !29, line: 44, size: 256, elements: !54)
!54 = !{!55, !59, !60, !61, !62}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !53, file: !29, line: 51, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !33, line: 23, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !35, line: 31, baseType: !58)
!58 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "efer", scope: !53, file: !29, line: 52, baseType: !56, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "cr4", scope: !53, file: !29, line: 53, baseType: !32, size: 32, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !53, file: !29, line: 54, baseType: !32, size: 32, offset: 160)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !53, file: !29, line: 55, baseType: !32, size: 32, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!64 = !{!65, !71, !76, !81, !0, !83, !85}
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 200, elements: !69)
!68 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!69 = !{!70}
!70 = !DISubrange(count: 25)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 416, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 52)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 312, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 39)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_init__277_220_do_init_real_modeearly278", scope: !2, file: !3, line: 220, type: !25, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "trampoline_cr4_features", scope: !2, file: !3, line: 15, type: !47, isLocal: false, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "trampoline_pgd_entry", scope: !2, file: !3, line: 18, type: !87, isLocal: false, isDefinition: true)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !88, line: 299, baseType: !89)
!88 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !88, line: 299, size: 64, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !89, file: !88, line: 299, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !93, line: 18, baseType: !24)
!93 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!94 = !{i32 7, !"Dwarf Version", i32 5}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 8, !"cf-protection-branch", i32 1}
!98 = !{i32 4, !"function_return_thunk_extern", i32 1}
!99 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!100 = !{i32 1, !"Code Model", i32 2}
!101 = !{i32 1, !"override-stack-alignment", i32 8}
!102 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!103 = distinct !DISubprogram(name: "load_trampoline_pgtable", scope: !3, file: !3, line: 20, type: !104, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!104 = !DISubroutineType(types: !105)
!105 = !{null}
!106 = !DILocation(line: 29, column: 6, scope: !103)
!107 = !DILocation(line: 29, column: 6, scope: !108)
!108 = distinct !DILexicalBlock(scope: !103, file: !3, line: 29, column: 6)
!109 = !DILocation(line: 30, column: 3, scope: !108)
!110 = !DILocation(line: 32, column: 12, scope: !103)
!111 = !DILocation(line: 32, column: 30, scope: !103)
!112 = !DILocation(line: 32, column: 2, scope: !103)
!113 = !DILocation(line: 43, column: 2, scope: !103)
!114 = !DILocation(line: 44, column: 1, scope: !103)
!115 = distinct !DISubprogram(name: "arch_test_bit", scope: !116, file: !116, line: 237, type: !117, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!116 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!117 = !DISubroutineType(types: !118)
!118 = !{!119, !24, !122}
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 35, baseType: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !24)
!125 = !{!126, !127}
!126 = !DILocalVariable(name: "nr", arg: 1, scope: !115, file: !116, line: 237, type: !24)
!127 = !DILocalVariable(name: "addr", arg: 2, scope: !115, file: !116, line: 237, type: !122)
!128 = !DILocation(line: 237, column: 29, scope: !115)
!129 = !DILocation(line: 237, column: 63, scope: !115)
!130 = !DILocation(line: 239, column: 30, scope: !115)
!131 = !DILocation(line: 239, column: 9, scope: !115)
!132 = !DILocation(line: 239, column: 54, scope: !115)
!133 = !DILocation(line: 239, column: 58, scope: !115)
!134 = !DILocation(line: 239, column: 36, scope: !115)
!135 = !DILocation(line: 240, column: 26, scope: !115)
!136 = !DILocation(line: 240, column: 30, scope: !115)
!137 = !DILocation(line: 240, column: 8, scope: !115)
!138 = !DILocation(line: 239, column: 2, scope: !115)
!139 = distinct !DISubprogram(name: "cr4_clear_bits", scope: !140, file: !140, line: 51, type: !141, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !143)
!140 = !DIFile(filename: "./arch/x86/include/asm/tlbflush.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "855d4064bc03d0e3d0f10fca91c7b33f")
!141 = !DISubroutineType(types: !142)
!142 = !{null, !24}
!143 = !{!144, !145, !146, !150, !151, !155}
!144 = !DILocalVariable(name: "mask", arg: 1, scope: !139, file: !140, line: 51, type: !24)
!145 = !DILocalVariable(name: "flags", scope: !139, file: !140, line: 53, type: !24)
!146 = !DILocalVariable(name: "__dummy", scope: !147, file: !140, line: 55, type: !24)
!147 = distinct !DILexicalBlock(scope: !148, file: !140, line: 55, column: 2)
!148 = distinct !DILexicalBlock(scope: !149, file: !140, line: 55, column: 2)
!149 = distinct !DILexicalBlock(scope: !139, file: !140, line: 55, column: 2)
!150 = !DILocalVariable(name: "__dummy2", scope: !147, file: !140, line: 55, type: !24)
!151 = !DILocalVariable(name: "__dummy", scope: !152, file: !140, line: 57, type: !24)
!152 = distinct !DILexicalBlock(scope: !153, file: !140, line: 57, column: 2)
!153 = distinct !DILexicalBlock(scope: !154, file: !140, line: 57, column: 2)
!154 = distinct !DILexicalBlock(scope: !139, file: !140, line: 57, column: 2)
!155 = !DILocalVariable(name: "__dummy2", scope: !152, file: !140, line: 57, type: !24)
!156 = !DILocation(line: 51, column: 49, scope: !139)
!157 = !DILocation(line: 53, column: 2, scope: !139)
!158 = !DILocation(line: 53, column: 16, scope: !139)
!159 = !DILocation(line: 55, column: 2, scope: !139)
!160 = !DILocation(line: 55, column: 2, scope: !149)
!161 = !DILocation(line: 55, column: 2, scope: !147)
!162 = !DILocation(line: 55, column: 2, scope: !148)
!163 = !DILocation(line: 56, column: 25, scope: !139)
!164 = !DILocation(line: 56, column: 2, scope: !139)
!165 = !DILocation(line: 57, column: 2, scope: !139)
!166 = !DILocation(line: 57, column: 2, scope: !154)
!167 = !DILocation(line: 57, column: 2, scope: !152)
!168 = !DILocation(line: 57, column: 2, scope: !153)
!169 = !DILocation(line: 57, column: 2, scope: !170)
!170 = distinct !DILexicalBlock(scope: !153, file: !140, line: 57, column: 2)
!171 = !DILocation(line: 58, column: 1, scope: !139)
!172 = distinct !DISubprogram(name: "write_cr3", scope: !173, file: !173, line: 161, type: !141, scopeLine: 162, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!173 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!174 = !{!175}
!175 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !173, line: 161, type: !24)
!176 = !DILocation(line: 161, column: 44, scope: !172)
!177 = !DILocation(line: 163, column: 19, scope: !172)
!178 = !DILocation(line: 163, column: 2, scope: !172)
!179 = !DILocation(line: 164, column: 1, scope: !172)
!180 = !DISubprogram(name: "__flush_tlb_all", scope: !140, file: !140, line: 20, type: !104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!181 = distinct !DISubprogram(name: "reserve_real_mode", scope: !3, file: !3, line: 46, type: !104, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !182)
!182 = !{!183, !185, !190, !192}
!183 = !DILocalVariable(name: "mem", scope: !181, file: !3, line: 48, type: !184)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 159, baseType: !56)
!185 = !DILocalVariable(name: "size", scope: !181, file: !3, line: 49, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 61, baseType: !187)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !188, line: 72, baseType: !189)
!188 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !188, line: 16, baseType: !24)
!190 = !DILocalVariable(name: "__ret_warn_on", scope: !191, file: !3, line: 54, type: !22)
!191 = distinct !DILexicalBlock(scope: !181, file: !3, line: 54, column: 2)
!192 = !DILocalVariable(name: "__flags", scope: !193, file: !3, line: 54, type: !22)
!193 = distinct !DILexicalBlock(scope: !194, file: !3, line: 54, column: 2)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 54, column: 2)
!195 = !DILocation(line: 48, column: 2, scope: !181)
!196 = !DILocation(line: 48, column: 14, scope: !181)
!197 = !DILocation(line: 49, column: 2, scope: !181)
!198 = !DILocation(line: 49, column: 9, scope: !181)
!199 = !DILocation(line: 49, column: 16, scope: !181)
!200 = !DILocation(line: 51, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !181, file: !3, line: 51, column: 6)
!202 = !DILocation(line: 51, column: 6, scope: !181)
!203 = !DILocation(line: 52, column: 3, scope: !201)
!204 = !DILocation(line: 54, column: 2, scope: !191)
!205 = !DILocation(line: 54, column: 2, scope: !194)
!206 = !DILocation(line: 54, column: 2, scope: !193)
!207 = !DILocation(line: 54, column: 2, scope: !208)
!208 = distinct !DILexicalBlock(scope: !193, file: !3, line: 54, column: 2)
!209 = !DILocation(line: 54, column: 2, scope: !210)
!210 = distinct !DILexicalBlock(scope: !193, file: !3, line: 54, column: 2)
!211 = !{i64 2154086236, i64 2154086265, i64 2154086311, i64 2154086369, i64 2154086423, i64 2154086477, i64 2154086532, i64 2154086563, i64 2154086871, i64 2154086877, i64 2154086924, i64 2154086947, i64 2154086973}
!212 = !DILocation(line: 54, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !193, file: !3, line: 54, column: 2)
!214 = !DILocation(line: 54, column: 2, scope: !181)
!215 = !DILocation(line: 57, column: 34, scope: !181)
!216 = !DILocation(line: 57, column: 8, scope: !181)
!217 = !DILocation(line: 57, column: 6, scope: !181)
!218 = !DILocation(line: 58, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !181, file: !3, line: 58, column: 6)
!220 = !DILocation(line: 58, column: 6, scope: !181)
!221 = !DILocation(line: 59, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 59, column: 3)
!223 = !DILocation(line: 59, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !222, file: !3, line: 59, column: 3)
!225 = !DILocation(line: 59, column: 3, scope: !219)
!226 = !DILocation(line: 61, column: 21, scope: !219)
!227 = !DILocation(line: 61, column: 3, scope: !219)
!228 = !DILocation(line: 67, column: 2, scope: !181)
!229 = !DILocation(line: 68, column: 1, scope: !181)
!230 = distinct !DISubprogram(name: "real_mode_size_needed", scope: !29, file: !29, line: 81, type: !231, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!231 = !DISubroutineType(types: !232)
!232 = !{!186}
!233 = !DILocation(line: 83, column: 6, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !29, line: 83, column: 6)
!235 = !DILocation(line: 83, column: 6, scope: !230)
!236 = !DILocation(line: 84, column: 3, scope: !234)
!237 = !DILocation(line: 86, column: 9, scope: !230)
!238 = !DILocation(line: 86, column: 2, scope: !230)
!239 = !DILocation(line: 87, column: 1, scope: !230)
!240 = !DISubprogram(name: "slab_is_available", scope: !241, file: !241, line: 187, type: !242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!241 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!242 = !DISubroutineType(types: !243)
!243 = !{!119}
!244 = !DISubprogram(name: "memblock_phys_alloc_range", scope: !245, file: !245, line: 402, type: !246, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!245 = !DIFile(filename: "./include/linux/memblock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ee488cc8c6522cca1567fc06e1716948")
!246 = !DISubroutineType(types: !247)
!247 = !{!184, !184, !184, !184, !184}
!248 = !DISubprogram(name: "_printk", scope: !249, file: !249, line: 153, type: !250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!249 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!250 = !DISubroutineType(types: !251)
!251 = !{!22, !252, null}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!254 = distinct !DISubprogram(name: "set_real_mode_mem", scope: !29, file: !29, line: 89, type: !255, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{null, !184}
!257 = !{!258}
!258 = !DILocalVariable(name: "mem", arg: 1, scope: !254, file: !29, line: 89, type: !184)
!259 = !DILocation(line: 89, column: 50, scope: !254)
!260 = !DILocation(line: 91, column: 49, scope: !254)
!261 = !DILocation(line: 91, column: 19, scope: !254)
!262 = !DILocation(line: 92, column: 1, scope: !254)
!263 = !DISubprogram(name: "memblock_reserve", scope: !245, file: !245, line: 116, type: !264, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!264 = !DISubroutineType(types: !265)
!265 = !{!22, !184, !184}
!266 = distinct !DISubprogram(name: "init_real_mode", scope: !3, file: !3, line: 206, type: !104, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!267 = !DILocation(line: 208, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !266, file: !3, line: 208, column: 6)
!269 = !DILocation(line: 208, column: 6, scope: !266)
!270 = !DILocation(line: 209, column: 3, scope: !268)
!271 = !DILocation(line: 211, column: 2, scope: !266)
!272 = !DILocation(line: 212, column: 2, scope: !266)
!273 = !DILocation(line: 213, column: 1, scope: !266)
!274 = !DISubprogram(name: "panic", scope: !275, file: !275, line: 12, type: !276, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!275 = !DIFile(filename: "./include/linux/panic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3219e8109531a92b450817dd7e3cc0fb")
!276 = !DISubroutineType(types: !277)
!277 = !{null, !252, null}
!278 = distinct !DISubprogram(name: "setup_real_mode", scope: !3, file: !3, line: 89, type: !104, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{!280, !281, !284, !285, !286, !287, !288, !289, !290, !291, !292, !294}
!280 = !DILocalVariable(name: "real_mode_seg", scope: !278, file: !3, line: 91, type: !49)
!281 = !DILocalVariable(name: "rel", scope: !278, file: !3, line: 92, type: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!284 = !DILocalVariable(name: "count", scope: !278, file: !3, line: 93, type: !32)
!285 = !DILocalVariable(name: "base", scope: !278, file: !3, line: 94, type: !45)
!286 = !DILocalVariable(name: "phys_base", scope: !278, file: !3, line: 95, type: !24)
!287 = !DILocalVariable(name: "trampoline_header", scope: !278, file: !3, line: 96, type: !52)
!288 = !DILocalVariable(name: "size", scope: !278, file: !3, line: 97, type: !186)
!289 = !DILocalVariable(name: "trampoline_pgd", scope: !278, file: !3, line: 99, type: !63)
!290 = !DILocalVariable(name: "efer", scope: !278, file: !3, line: 100, type: !56)
!291 = !DILocalVariable(name: "i", scope: !278, file: !3, line: 101, type: !22)
!292 = !DILocalVariable(name: "seg", scope: !293, file: !3, line: 124, type: !48)
!293 = distinct !DILexicalBlock(scope: !278, file: !3, line: 123, column: 18)
!294 = !DILocalVariable(name: "ptr", scope: !295, file: !3, line: 131, type: !47)
!295 = distinct !DILexicalBlock(scope: !278, file: !3, line: 130, column: 18)
!296 = !DILocation(line: 91, column: 2, scope: !278)
!297 = !DILocation(line: 91, column: 6, scope: !278)
!298 = !DILocation(line: 92, column: 2, scope: !278)
!299 = !DILocation(line: 92, column: 13, scope: !278)
!300 = !DILocation(line: 93, column: 2, scope: !278)
!301 = !DILocation(line: 93, column: 6, scope: !278)
!302 = !DILocation(line: 94, column: 2, scope: !278)
!303 = !DILocation(line: 94, column: 17, scope: !278)
!304 = !DILocation(line: 95, column: 2, scope: !278)
!305 = !DILocation(line: 95, column: 16, scope: !278)
!306 = !DILocation(line: 96, column: 2, scope: !278)
!307 = !DILocation(line: 96, column: 28, scope: !278)
!308 = !DILocation(line: 97, column: 2, scope: !278)
!309 = !DILocation(line: 97, column: 9, scope: !278)
!310 = !DILocation(line: 97, column: 16, scope: !278)
!311 = !DILocation(line: 99, column: 2, scope: !278)
!312 = !DILocation(line: 99, column: 7, scope: !278)
!313 = !DILocation(line: 100, column: 2, scope: !278)
!314 = !DILocation(line: 100, column: 6, scope: !278)
!315 = !DILocation(line: 101, column: 2, scope: !278)
!316 = !DILocation(line: 101, column: 6, scope: !278)
!317 = !DILocation(line: 104, column: 26, scope: !278)
!318 = !DILocation(line: 104, column: 7, scope: !278)
!319 = !DILocation(line: 111, column: 6, scope: !320)
!320 = distinct !DILexicalBlock(scope: !278, file: !3, line: 111, column: 6)
!321 = !DILocation(line: 111, column: 6, scope: !278)
!322 = !DILocation(line: 112, column: 39, scope: !320)
!323 = !DILocation(line: 112, column: 24, scope: !320)
!324 = !DILocation(line: 112, column: 45, scope: !320)
!325 = !DILocation(line: 112, column: 50, scope: !320)
!326 = !DILocation(line: 112, column: 3, scope: !320)
!327 = !DILocation(line: 114, column: 9, scope: !278)
!328 = !DILocation(line: 114, column: 31, scope: !278)
!329 = !DILocation(line: 114, column: 2, scope: !278)
!330 = !DILocation(line: 116, column: 14, scope: !278)
!331 = !DILocation(line: 116, column: 12, scope: !278)
!332 = !DILocation(line: 117, column: 18, scope: !278)
!333 = !DILocation(line: 117, column: 28, scope: !278)
!334 = !DILocation(line: 117, column: 16, scope: !278)
!335 = !DILocation(line: 119, column: 6, scope: !278)
!336 = !DILocation(line: 122, column: 14, scope: !278)
!337 = !DILocation(line: 122, column: 10, scope: !278)
!338 = !DILocation(line: 122, column: 8, scope: !278)
!339 = !DILocation(line: 123, column: 2, scope: !278)
!340 = !DILocation(line: 123, column: 14, scope: !278)
!341 = !DILocation(line: 124, column: 3, scope: !293)
!342 = !DILocation(line: 124, column: 8, scope: !293)
!343 = !DILocation(line: 124, column: 23, scope: !293)
!344 = !DILocation(line: 124, column: 34, scope: !293)
!345 = !DILocation(line: 124, column: 30, scope: !293)
!346 = !DILocation(line: 124, column: 28, scope: !293)
!347 = !DILocation(line: 125, column: 10, scope: !293)
!348 = !DILocation(line: 125, column: 4, scope: !293)
!349 = !DILocation(line: 125, column: 8, scope: !293)
!350 = !DILocation(line: 126, column: 2, scope: !278)
!351 = distinct !{!351, !339, !350, !352, !353}
!352 = !{!"llvm.loop.mustprogress"}
!353 = !{!"llvm.loop.unroll.disable"}
!354 = !DILocation(line: 129, column: 14, scope: !278)
!355 = !DILocation(line: 129, column: 10, scope: !278)
!356 = !DILocation(line: 129, column: 8, scope: !278)
!357 = !DILocation(line: 130, column: 2, scope: !278)
!358 = !DILocation(line: 130, column: 14, scope: !278)
!359 = !DILocation(line: 131, column: 3, scope: !295)
!360 = !DILocation(line: 131, column: 8, scope: !295)
!361 = !DILocation(line: 131, column: 23, scope: !295)
!362 = !DILocation(line: 131, column: 34, scope: !295)
!363 = !DILocation(line: 131, column: 30, scope: !295)
!364 = !DILocation(line: 131, column: 28, scope: !295)
!365 = !DILocation(line: 132, column: 11, scope: !295)
!366 = !DILocation(line: 132, column: 4, scope: !295)
!367 = !DILocation(line: 132, column: 8, scope: !295)
!368 = !DILocation(line: 133, column: 2, scope: !278)
!369 = distinct !{!369, !357, !368, !352, !353}
!370 = !DILocation(line: 137, column: 3, scope: !278)
!371 = !DILocation(line: 136, column: 20, scope: !278)
!372 = !DILocation(line: 148, column: 2, scope: !278)
!373 = !DILocation(line: 149, column: 28, scope: !278)
!374 = !DILocation(line: 149, column: 33, scope: !278)
!375 = !DILocation(line: 149, column: 2, scope: !278)
!376 = !DILocation(line: 149, column: 21, scope: !278)
!377 = !DILocation(line: 149, column: 26, scope: !278)
!378 = !DILocation(line: 151, column: 2, scope: !278)
!379 = !DILocation(line: 151, column: 21, scope: !278)
!380 = !DILocation(line: 151, column: 27, scope: !278)
!381 = !DILocation(line: 152, column: 29, scope: !278)
!382 = !DILocation(line: 152, column: 48, scope: !278)
!383 = !DILocation(line: 152, column: 26, scope: !278)
!384 = !DILocation(line: 153, column: 29, scope: !278)
!385 = !DILocation(line: 153, column: 3, scope: !278)
!386 = !DILocation(line: 153, column: 27, scope: !278)
!387 = !DILocation(line: 155, column: 2, scope: !278)
!388 = !DILocation(line: 155, column: 21, scope: !278)
!389 = !DILocation(line: 155, column: 27, scope: !278)
!390 = !DILocation(line: 157, column: 21, scope: !278)
!391 = !DILocation(line: 157, column: 40, scope: !278)
!392 = !DILocation(line: 157, column: 18, scope: !278)
!393 = !DILocation(line: 158, column: 3, scope: !278)
!394 = !DILocation(line: 158, column: 19, scope: !278)
!395 = !DILocation(line: 160, column: 27, scope: !278)
!396 = !DILocation(line: 160, column: 17, scope: !278)
!397 = !DILocation(line: 163, column: 43, scope: !278)
!398 = !DILocation(line: 163, column: 2, scope: !278)
!399 = !DILocation(line: 163, column: 20, scope: !278)
!400 = !DILocation(line: 170, column: 11, scope: !401)
!401 = distinct !DILexicalBlock(scope: !278, file: !3, line: 170, column: 2)
!402 = !DILocation(line: 170, column: 9, scope: !401)
!403 = !DILocation(line: 170, column: 7, scope: !401)
!404 = !DILocation(line: 170, column: 37, scope: !405)
!405 = distinct !DILexicalBlock(scope: !401, file: !3, line: 170, column: 2)
!406 = !DILocation(line: 170, column: 39, scope: !405)
!407 = !DILocation(line: 170, column: 2, scope: !401)
!408 = !DILocation(line: 171, column: 36, scope: !405)
!409 = !DILocation(line: 171, column: 23, scope: !405)
!410 = !DILocation(line: 171, column: 39, scope: !405)
!411 = !DILocation(line: 171, column: 3, scope: !405)
!412 = !DILocation(line: 171, column: 18, scope: !405)
!413 = !DILocation(line: 171, column: 21, scope: !405)
!414 = !DILocation(line: 170, column: 56, scope: !405)
!415 = !DILocation(line: 170, column: 2, scope: !405)
!416 = distinct !{!416, !407, !417, !352, !353}
!417 = !DILocation(line: 171, column: 39, scope: !401)
!418 = !DILocation(line: 174, column: 26, scope: !278)
!419 = !DILocation(line: 174, column: 2, scope: !278)
!420 = !DILocation(line: 175, column: 1, scope: !278)
!421 = distinct !DISubprogram(name: "set_real_mode_permissions", scope: !3, file: !3, line: 185, type: !104, scopeLine: 186, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!422 = !{!423, !424, !425, !426, !427}
!423 = !DILocalVariable(name: "base", scope: !421, file: !3, line: 187, type: !45)
!424 = !DILocalVariable(name: "size", scope: !421, file: !3, line: 188, type: !186)
!425 = !DILocalVariable(name: "ro_size", scope: !421, file: !3, line: 190, type: !186)
!426 = !DILocalVariable(name: "text_size", scope: !421, file: !3, line: 194, type: !186)
!427 = !DILocalVariable(name: "text_start", scope: !421, file: !3, line: 198, type: !24)
!428 = !DILocation(line: 187, column: 2, scope: !421)
!429 = !DILocation(line: 187, column: 17, scope: !421)
!430 = !DILocation(line: 187, column: 42, scope: !421)
!431 = !DILocation(line: 188, column: 2, scope: !421)
!432 = !DILocation(line: 188, column: 9, scope: !421)
!433 = !DILocation(line: 188, column: 16, scope: !421)
!434 = !DILocation(line: 190, column: 2, scope: !421)
!435 = !DILocation(line: 190, column: 9, scope: !421)
!436 = !DILocation(line: 191, column: 3, scope: !421)
!437 = !DILocation(line: 192, column: 3, scope: !421)
!438 = !DILocation(line: 191, column: 40, scope: !421)
!439 = !DILocation(line: 194, column: 2, scope: !421)
!440 = !DILocation(line: 194, column: 9, scope: !421)
!441 = !DILocation(line: 195, column: 3, scope: !421)
!442 = !DILocation(line: 196, column: 3, scope: !421)
!443 = !DILocation(line: 196, column: 21, scope: !421)
!444 = !DILocation(line: 195, column: 40, scope: !421)
!445 = !DILocation(line: 198, column: 2, scope: !421)
!446 = !DILocation(line: 198, column: 16, scope: !421)
!447 = !DILocation(line: 199, column: 19, scope: !421)
!448 = !DILocation(line: 199, column: 3, scope: !421)
!449 = !DILocation(line: 201, column: 32, scope: !421)
!450 = !DILocation(line: 201, column: 16, scope: !421)
!451 = !DILocation(line: 201, column: 38, scope: !421)
!452 = !DILocation(line: 201, column: 43, scope: !421)
!453 = !DILocation(line: 201, column: 2, scope: !421)
!454 = !DILocation(line: 202, column: 32, scope: !421)
!455 = !DILocation(line: 202, column: 16, scope: !421)
!456 = !DILocation(line: 202, column: 38, scope: !421)
!457 = !DILocation(line: 202, column: 46, scope: !421)
!458 = !DILocation(line: 202, column: 2, scope: !421)
!459 = !DILocation(line: 203, column: 31, scope: !421)
!460 = !DILocation(line: 203, column: 43, scope: !421)
!461 = !DILocation(line: 203, column: 53, scope: !421)
!462 = !DILocation(line: 203, column: 2, scope: !421)
!463 = !DILocation(line: 204, column: 1, scope: !421)
!464 = distinct !DISubprogram(name: "__initstub__kmod_init__277_220_do_init_real_modeearly", scope: !3, file: !3, line: 220, type: !465, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!465 = !DISubroutineType(types: !466)
!466 = !{!22}
!467 = !DILocation(line: 220, column: 1, scope: !464)
!468 = distinct !DISubprogram(name: "do_init_real_mode", scope: !3, file: !3, line: 215, type: !465, scopeLine: 216, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!469 = !DILocation(line: 217, column: 15, scope: !468)
!470 = !DILocation(line: 217, column: 2, scope: !468)
!471 = !DILocation(line: 218, column: 2, scope: !468)
!472 = distinct !DISubprogram(name: "constant_test_bit", scope: !116, file: !116, line: 204, type: !473, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!473 = !DISubroutineType(types: !474)
!474 = !{!119, !26, !122}
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "nr", arg: 1, scope: !472, file: !116, line: 204, type: !26)
!477 = !DILocalVariable(name: "addr", arg: 2, scope: !472, file: !116, line: 204, type: !122)
!478 = !DILocation(line: 204, column: 52, scope: !472)
!479 = !DILocation(line: 204, column: 86, scope: !472)
!480 = !DILocation(line: 206, column: 19, scope: !472)
!481 = !DILocation(line: 206, column: 22, scope: !472)
!482 = !DILocation(line: 206, column: 15, scope: !472)
!483 = !DILocation(line: 207, column: 4, scope: !472)
!484 = !DILocation(line: 207, column: 9, scope: !472)
!485 = !DILocation(line: 207, column: 12, scope: !472)
!486 = !DILocation(line: 206, column: 44, scope: !472)
!487 = !DILocation(line: 207, column: 37, scope: !472)
!488 = !DILocation(line: 206, column: 2, scope: !472)
!489 = distinct !DISubprogram(name: "variable_test_bit", scope: !116, file: !116, line: 224, type: !473, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !490)
!490 = !{!491, !492, !493}
!491 = !DILocalVariable(name: "nr", arg: 1, scope: !489, file: !116, line: 224, type: !26)
!492 = !DILocalVariable(name: "addr", arg: 2, scope: !489, file: !116, line: 224, type: !122)
!493 = !DILocalVariable(name: "oldbit", scope: !489, file: !116, line: 226, type: !119)
!494 = !DILocation(line: 224, column: 52, scope: !489)
!495 = !DILocation(line: 224, column: 86, scope: !489)
!496 = !DILocation(line: 226, column: 2, scope: !489)
!497 = !DILocation(line: 226, column: 7, scope: !489)
!498 = !DILocation(line: 231, column: 33, scope: !489)
!499 = !DILocation(line: 231, column: 46, scope: !489)
!500 = !DILocation(line: 228, column: 2, scope: !489)
!501 = !{i64 2148060757, i64 2148060831}
!502 = !DILocation(line: 233, column: 9, scope: !489)
!503 = !{i8 0, i8 2}
!504 = !{}
!505 = !DILocation(line: 234, column: 1, scope: !489)
!506 = !DILocation(line: 233, column: 2, scope: !489)
!507 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !508, file: !508, line: 101, type: !509, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !511)
!508 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!509 = !DISubroutineType(types: !510)
!510 = !{!24}
!511 = !{!512}
!512 = !DILocalVariable(name: "flags", scope: !507, file: !508, line: 103, type: !24)
!513 = !DILocation(line: 103, column: 2, scope: !507)
!514 = !DILocation(line: 103, column: 16, scope: !507)
!515 = !DILocation(line: 103, column: 24, scope: !507)
!516 = !DILocation(line: 104, column: 2, scope: !507)
!517 = !DILocation(line: 105, column: 9, scope: !507)
!518 = !DILocation(line: 106, column: 1, scope: !507)
!519 = !DILocation(line: 105, column: 2, scope: !507)
!520 = distinct !DISubprogram(name: "cr4_clear_bits_irqsoff", scope: !140, file: !140, line: 35, type: !141, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!521 = !{!522}
!522 = !DILocalVariable(name: "mask", arg: 1, scope: !520, file: !140, line: 35, type: !24)
!523 = !DILocation(line: 35, column: 57, scope: !520)
!524 = !DILocation(line: 37, column: 24, scope: !520)
!525 = !DILocation(line: 37, column: 2, scope: !520)
!526 = !DILocation(line: 38, column: 1, scope: !520)
!527 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !508, file: !508, line: 132, type: !141, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!528 = !{!529}
!529 = !DILocalVariable(name: "flags", arg: 1, scope: !527, file: !508, line: 132, type: !24)
!530 = !DILocation(line: 132, column: 66, scope: !527)
!531 = !DILocation(line: 134, column: 32, scope: !532)
!532 = distinct !DILexicalBlock(scope: !527, file: !508, line: 134, column: 6)
!533 = !DILocation(line: 134, column: 7, scope: !532)
!534 = !DILocation(line: 134, column: 6, scope: !527)
!535 = !DILocation(line: 135, column: 3, scope: !532)
!536 = !DILocation(line: 136, column: 1, scope: !527)
!537 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !508, file: !508, line: 65, type: !509, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!538 = !DILocation(line: 67, column: 9, scope: !537)
!539 = !DILocation(line: 67, column: 2, scope: !537)
!540 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !508, file: !508, line: 70, type: !104, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!541 = !DILocation(line: 72, column: 2, scope: !540)
!542 = !DILocation(line: 73, column: 1, scope: !540)
!543 = distinct !DISubprogram(name: "native_save_fl", scope: !508, file: !508, line: 17, type: !509, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !544)
!544 = !{!545}
!545 = !DILocalVariable(name: "flags", scope: !543, file: !508, line: 19, type: !24)
!546 = !DILocation(line: 19, column: 2, scope: !543)
!547 = !DILocation(line: 19, column: 16, scope: !543)
!548 = !DILocation(line: 26, column: 2, scope: !543)
!549 = !{i64 2023038, i64 2023059}
!550 = !DILocation(line: 32, column: 9, scope: !543)
!551 = !DILocation(line: 33, column: 1, scope: !543)
!552 = !DILocation(line: 32, column: 2, scope: !543)
!553 = distinct !DISubprogram(name: "native_irq_disable", scope: !508, file: !508, line: 35, type: !104, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!554 = !DILocation(line: 37, column: 2, scope: !553)
!555 = !{i64 2023242}
!556 = !DILocation(line: 38, column: 1, scope: !553)
!557 = !DISubprogram(name: "cr4_update_irqsoff", scope: !140, file: !140, line: 25, type: !558, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !24, !24}
!560 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !508, file: !508, line: 120, type: !561, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !563)
!561 = !DISubroutineType(types: !562)
!562 = !{!22, !24}
!563 = !{!564}
!564 = !DILocalVariable(name: "flags", arg: 1, scope: !560, file: !508, line: 120, type: !24)
!565 = !DILocation(line: 120, column: 67, scope: !560)
!566 = !DILocation(line: 122, column: 11, scope: !560)
!567 = !DILocation(line: 122, column: 17, scope: !560)
!568 = !DILocation(line: 122, column: 9, scope: !560)
!569 = !DILocation(line: 122, column: 2, scope: !560)
!570 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !508, file: !508, line: 75, type: !104, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!571 = !DILocation(line: 77, column: 2, scope: !570)
!572 = !DILocation(line: 78, column: 1, scope: !570)
!573 = distinct !DISubprogram(name: "native_irq_enable", scope: !508, file: !508, line: 40, type: !104, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!574 = !DILocation(line: 42, column: 2, scope: !573)
!575 = !{i64 2023334}
!576 = !DILocation(line: 43, column: 1, scope: !573)
!577 = distinct !DISubprogram(name: "native_write_cr3", scope: !173, file: !173, line: 52, type: !141, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !578)
!578 = !{!579}
!579 = !DILocalVariable(name: "val", arg: 1, scope: !577, file: !173, line: 52, type: !24)
!580 = !DILocation(line: 52, column: 51, scope: !577)
!581 = !DILocation(line: 54, column: 38, scope: !577)
!582 = !DILocation(line: 54, column: 2, scope: !577)
!583 = !{i64 2008232}
!584 = !DILocation(line: 55, column: 1, scope: !577)
!585 = distinct !DISubprogram(name: "cc_platform_has", scope: !6, file: !6, line: 113, type: !586, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!119, !5}
!588 = !{!589}
!589 = !DILocalVariable(name: "attr", arg: 1, scope: !585, file: !6, line: 113, type: !5)
!590 = !DILocation(line: 113, column: 49, scope: !585)
!591 = !DILocation(line: 113, column: 57, scope: !585)
!592 = !DISubprogram(name: "set_memory_decrypted", scope: !593, file: !593, line: 52, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!593 = !DIFile(filename: "./arch/x86/include/asm/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5ed4c9c9f9b5c1359158a637c4326a39")
!594 = !DISubroutineType(types: !595)
!595 = !{!22, !24, !22}
!596 = distinct !DISubprogram(name: "__phys_addr_nodebug", scope: !597, file: !597, line: 22, type: !598, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !600)
!597 = !DIFile(filename: "./arch/x86/include/asm/page_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e8642b887a42f979954681cc5f73dc7c")
!598 = !DISubroutineType(types: !599)
!599 = !{!24, !24}
!600 = !{!601, !602}
!601 = !DILocalVariable(name: "x", arg: 1, scope: !596, file: !597, line: 22, type: !24)
!602 = !DILocalVariable(name: "y", scope: !596, file: !597, line: 24, type: !24)
!603 = !DILocation(line: 22, column: 72, scope: !596)
!604 = !DILocation(line: 24, column: 2, scope: !596)
!605 = !DILocation(line: 24, column: 16, scope: !596)
!606 = !DILocation(line: 24, column: 20, scope: !596)
!607 = !DILocation(line: 24, column: 22, scope: !596)
!608 = !DILocation(line: 27, column: 6, scope: !596)
!609 = !DILocation(line: 27, column: 12, scope: !596)
!610 = !DILocation(line: 27, column: 16, scope: !596)
!611 = !DILocation(line: 27, column: 14, scope: !596)
!612 = !DILocation(line: 27, column: 11, scope: !596)
!613 = !DILocation(line: 27, column: 21, scope: !596)
!614 = !DILocation(line: 27, column: 55, scope: !596)
!615 = !DILocation(line: 27, column: 53, scope: !596)
!616 = !DILocation(line: 27, column: 8, scope: !596)
!617 = !DILocation(line: 27, column: 4, scope: !596)
!618 = !DILocation(line: 29, column: 9, scope: !596)
!619 = !DILocation(line: 30, column: 1, scope: !596)
!620 = !DILocation(line: 29, column: 2, scope: !596)
!621 = distinct !DISubprogram(name: "native_read_msr", scope: !622, file: !622, line: 114, type: !623, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !625)
!622 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e278648e6ba4bcfde668e0b129733cc")
!623 = !DISubroutineType(types: !624)
!624 = !{!58, !7}
!625 = !{!626, !627}
!626 = !DILocalVariable(name: "msr", arg: 1, scope: !621, file: !622, line: 114, type: !7)
!627 = !DILocalVariable(name: "val", scope: !621, file: !622, line: 116, type: !58)
!628 = !DILocation(line: 114, column: 63, scope: !621)
!629 = !DILocation(line: 116, column: 2, scope: !621)
!630 = !DILocation(line: 116, column: 21, scope: !621)
!631 = !DILocation(line: 118, column: 16, scope: !621)
!632 = !DILocation(line: 118, column: 8, scope: !621)
!633 = !DILocation(line: 118, column: 6, scope: !621)
!634 = !DILocation(line: 120, column: 6, scope: !635)
!635 = distinct !DILexicalBlock(scope: !621, file: !622, line: 120, column: 6)
!636 = !DILocation(line: 120, column: 6, scope: !621)
!637 = !DILocation(line: 121, column: 21, scope: !635)
!638 = !DILocation(line: 121, column: 26, scope: !635)
!639 = !DILocation(line: 121, column: 3, scope: !635)
!640 = !DILocation(line: 123, column: 9, scope: !621)
!641 = !DILocation(line: 124, column: 1, scope: !621)
!642 = !DILocation(line: 123, column: 2, scope: !621)
!643 = distinct !DISubprogram(name: "sme_sev_setup_real_mode", scope: !3, file: !3, line: 70, type: !644, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !646)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !52}
!646 = !{!647}
!647 = !DILocalVariable(name: "th", arg: 1, scope: !643, file: !3, line: 70, type: !52)
!648 = !DILocation(line: 70, column: 70, scope: !643)
!649 = !DILocation(line: 87, column: 1, scope: !643)
!650 = distinct !DISubprogram(name: "__rdmsr", scope: !622, file: !622, line: 80, type: !623, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !651)
!651 = !{!652, !653, !654}
!652 = !DILocalVariable(name: "msr", arg: 1, scope: !650, file: !622, line: 80, type: !7)
!653 = !DILocalVariable(name: "low", scope: !650, file: !622, line: 82, type: !24)
!654 = !DILocalVariable(name: "high", scope: !650, file: !622, line: 82, type: !24)
!655 = !DILocation(line: 80, column: 64, scope: !650)
!656 = !DILocation(line: 82, column: 2, scope: !650)
!657 = !DILocation(line: 87, column: 45, scope: !650)
!658 = !DILocation(line: 84, column: 2, scope: !650)
!659 = !{i64 1980105, i64 1980126, i64 2149481591, i64 2149481635, i64 2149481658, i64 2149481691, i64 2149481722, i64 2149481761}
!660 = !DILocation(line: 89, column: 9, scope: !650)
!661 = !DILocation(line: 90, column: 1, scope: !650)
!662 = !DILocation(line: 89, column: 2, scope: !650)
!663 = distinct !DISubprogram(name: "static_key_false", scope: !664, file: !664, line: 205, type: !665, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !691)
!664 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!665 = !DISubroutineType(types: !666)
!666 = !{!119, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !664, line: 85, size: 128, elements: !669)
!669 = !{!670, !675}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !668, file: !664, line: 86, baseType: !671, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 174, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 172, size: 32, elements: !673)
!673 = !{!674}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !672, file: !120, line: 173, baseType: !22, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, scope: !668, file: !664, line: 101, baseType: !676, size: 64, offset: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !668, file: !664, line: 101, size: 64, elements: !677)
!677 = !{!678, !679, !688}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !676, file: !664, line: 102, baseType: !24, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !676, file: !664, line: 103, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !664, line: 117, size: 128, elements: !682)
!682 = !{!683, !686, !687}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !681, file: !664, line: 118, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !33, line: 20, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !35, line: 26, baseType: !22)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !681, file: !664, line: 119, baseType: !684, size: 32, offset: 32)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !681, file: !664, line: 120, baseType: !26, size: 64, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !676, file: !664, line: 104, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !664, line: 104, flags: DIFlagFwdDecl)
!691 = !{!692}
!692 = !DILocalVariable(name: "key", arg: 1, scope: !663, file: !664, line: 205, type: !667)
!693 = !DILocation(line: 205, column: 65, scope: !663)
!694 = !DILocation(line: 207, column: 28, scope: !663)
!695 = !DILocation(line: 207, column: 9, scope: !663)
!696 = !DILocation(line: 207, column: 2, scope: !663)
!697 = !DISubprogram(name: "do_trace_read_msr", scope: !622, file: !622, line: 65, type: !698, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !7, !56, !22}
!700 = distinct !DISubprogram(name: "arch_static_branch", scope: !701, file: !701, line: 25, type: !702, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !704)
!701 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!702 = !DISubroutineType(types: !703)
!703 = !{!119, !667, !119}
!704 = !{!705, !706, !707}
!705 = !DILocalVariable(name: "key", arg: 1, scope: !700, file: !701, line: 25, type: !667)
!706 = !DILocalVariable(name: "branch", arg: 2, scope: !700, file: !701, line: 25, type: !119)
!707 = !DILabel(scope: !700, name: "l_yes", file: !701, line: 33)
!708 = !DILocation(line: 25, column: 67, scope: !700)
!709 = !DILocation(line: 25, column: 77, scope: !700)
!710 = !DILocation(line: 30, column: 13, scope: !700)
!711 = !DILocation(line: 30, column: 28, scope: !700)
!712 = !DILocation(line: 30, column: 26, scope: !700)
!713 = !DILocation(line: 27, column: 2, scope: !700)
!714 = !{i64 406516, i64 406560, i64 2147893535, i64 2147893556, i64 2147893582, i64 2147893615, i64 2147893649, i64 2147893673}
!715 = !DILocation(line: 32, column: 2, scope: !700)
!716 = !DILocation(line: 33, column: 1, scope: !700)
!717 = !DILocation(line: 34, column: 2, scope: !700)
!718 = !DILocation(line: 35, column: 1, scope: !700)
!719 = !DISubprogram(name: "set_memory_nx", scope: !720, file: !720, line: 11, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!720 = !DIFile(filename: "./include/asm-generic/set_memory.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7a10bb7eb3036a0b37c1df65b3e450e4")
!721 = !DISubprogram(name: "set_memory_ro", scope: !720, file: !720, line: 8, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubprogram(name: "set_memory_x", scope: !720, file: !720, line: 10, type: !594, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)

; ModuleID = 'arch/x86/kernel/static_call.c'
source_filename = "arch/x86/kernel/static_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".global __static_call_return"
module asm "\09.type __static_call_return, @function"
module asm "\09.balign 16, 0x90;; .skip 16, 0x90;"
module asm "\09__static_call_return:"
module asm "\09986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09999:"
module asm "\09.pushsection .discard.retpoline_safe"
module asm "\09.long 999b"
module asm "\09.popsection"
module asm "\09ret; int3"
module asm "\09.size __static_call_return, . - __static_call_return "
module asm "\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_arch_static_call_transform: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad arch_static_call_transform ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.cpuinfo_x86 = type { %union.anon.1, i8, i32, [5 x i32], i8, i8, i8, i8, i32, i32, %union.anon.3, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i32, i8, i8 }
%union.anon.1 = type { i32 }
%union.anon.3 = type { i64, [88 x i8] }
%union.text_poke_insn = type { [5 x i8] }
%struct.anon.4 = type <{ i8, i32 }>

@text_mutex = external dso_local global %struct.mutex, align 8
@__UNIQUE_ID___addressable_arch_static_call_transform203 = internal global ptr @arch_static_call_transform, section ".discard.addressable", align 8, !dbg !0
@system_state = external dso_local global i32, align 4
@.str = private unnamed_addr constant [30 x i8] c"arch/x86/kernel/static_call.c\00", align 1, !dbg !39
@static_call_initialized = external dso_local global i32, align 4
@tramp_ud = internal constant [3 x i8] c"\0F\B9\CC", align 1, !dbg !95
@.str.1 = private unnamed_addr constant [28 x i8] c"\013trampoline signature fail\00", align 1, !dbg !44
@x86_nops = external dso_local constant [0 x ptr], align 8
@xor5rax = internal constant [5 x i8] c"...1\C0", align 1, !dbg !54
@.str.2 = private unnamed_addr constant [50 x i8] c"\013unexpected static_call insn opcode 0x%x at %pS\0A\00", align 1, !dbg !49
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@x86_return_thunk = external dso_local global ptr, align 8
@retinsn = internal constant [5 x i8] c"\C3\CC\CC\CC\CC", align 1, !dbg !88
@text_gen_insn.insn = internal global %union.text_poke_insn zeroinitializer, align 1, !dbg !65
@.str.3 = private unnamed_addr constant [37 x i8] c"arch/x86/include/asm/text-patching.h\00", align 1, !dbg !90
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_arch_static_call_transform203], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @arch_static_call_transform(ptr noundef %site, ptr noundef %tramp, ptr noundef %func, i1 noundef zeroext %tail) #0 align 16 !dbg !110 {
entry:
  %site.addr = alloca ptr, align 8
  %tramp.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  %tail.addr = alloca i8, align 1
  store ptr %site, ptr %site.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %site.addr, metadata !117, metadata !DIExpression()), !dbg !121
  store ptr %tramp, ptr %tramp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tramp.addr, metadata !118, metadata !DIExpression()), !dbg !122
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !119, metadata !DIExpression()), !dbg !123
  %frombool = zext i1 %tail to i8
  store i8 %frombool, ptr %tail.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !120, metadata !DIExpression()), !dbg !124
  call void @mutex_lock(ptr noundef @text_mutex) #14, !dbg !125
  %0 = load ptr, ptr %tramp.addr, align 8, !dbg !126
  %tobool = icmp ne ptr %0, null, !dbg !126
  br i1 %tobool, label %if.then, label %if.end, !dbg !128

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %tramp.addr, align 8, !dbg !129
  call void @__static_call_validate(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #14, !dbg !131
  %2 = load ptr, ptr %tramp.addr, align 8, !dbg !132
  %3 = load ptr, ptr %func.addr, align 8, !dbg !133
  %tobool1 = icmp ne ptr %3, null, !dbg !134
  %lnot = xor i1 %tobool1, true, !dbg !134
  %call = call i32 @__sc_insn(i1 noundef zeroext %lnot, i1 noundef zeroext true) #14, !dbg !135
  %4 = load ptr, ptr %func.addr, align 8, !dbg !136
  call void @__static_call_transform(ptr noundef %2, i32 noundef %call, ptr noundef %4, i1 noundef zeroext false) #14, !dbg !137
  br label %if.end, !dbg !138

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %site.addr, align 8, !dbg !139
  %tobool2 = icmp ne ptr %5, null, !dbg !139
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !141

if.then3:                                         ; preds = %if.end
  %6 = load ptr, ptr %site.addr, align 8, !dbg !142
  %7 = load i8, ptr %tail.addr, align 1, !dbg !144, !range !145, !noundef !146
  %tobool4 = trunc i8 %7 to i1, !dbg !144
  call void @__static_call_validate(ptr noundef %6, i1 noundef zeroext %tobool4, i1 noundef zeroext false) #14, !dbg !147
  %8 = load ptr, ptr %site.addr, align 8, !dbg !148
  %9 = load ptr, ptr %func.addr, align 8, !dbg !149
  %tobool5 = icmp ne ptr %9, null, !dbg !150
  %lnot6 = xor i1 %tobool5, true, !dbg !150
  %10 = load i8, ptr %tail.addr, align 1, !dbg !151, !range !145, !noundef !146
  %tobool7 = trunc i8 %10 to i1, !dbg !151
  %call8 = call i32 @__sc_insn(i1 noundef zeroext %lnot6, i1 noundef zeroext %tobool7) #14, !dbg !152
  %11 = load ptr, ptr %func.addr, align 8, !dbg !153
  call void @__static_call_transform(ptr noundef %8, i32 noundef %call8, ptr noundef %11, i1 noundef zeroext false) #14, !dbg !154
  br label %if.end9, !dbg !155

if.end9:                                          ; preds = %if.then3, %if.end
  call void @mutex_unlock(ptr noundef @text_mutex) #14, !dbg !156
  ret void, !dbg !157
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !158 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__static_call_validate(ptr noundef %insn, i1 noundef zeroext %tail, i1 noundef zeroext %tramp) #0 align 16 !dbg !217 {
entry:
  %insn.addr = alloca ptr, align 8
  %tail.addr = alloca i8, align 1
  %tramp.addr = alloca i8, align 1
  %opcode = alloca i8, align 1
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp40 = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !222, metadata !DIExpression()), !dbg !226
  %frombool = zext i1 %tail to i8
  store i8 %frombool, ptr %tail.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !223, metadata !DIExpression()), !dbg !227
  %frombool1 = zext i1 %tramp to i8
  store i8 %frombool1, ptr %tramp.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tramp.addr, metadata !224, metadata !DIExpression()), !dbg !228
  call void @llvm.lifetime.start.p0(i64 1, ptr %opcode) #15, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !225, metadata !DIExpression()), !dbg !230
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !231
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !231
  %1 = load i8, ptr %arrayidx, align 1, !dbg !231
  store i8 %1, ptr %opcode, align 1, !dbg !230
  %2 = load i8, ptr %tramp.addr, align 1, !dbg !232, !range !145, !noundef !146
  %tobool = trunc i8 %2 to i1, !dbg !232
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !234

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr %insn.addr, align 8, !dbg !235
  %add.ptr = getelementptr i8, ptr %3, i64 5, !dbg !236
  %call = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef @tramp_ud, i64 noundef 3) #14, !dbg !237
  %tobool2 = icmp ne i32 %call, 0, !dbg !237
  br i1 %tobool2, label %if.then, label %if.end, !dbg !238

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !239

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !242

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !242

do.end:                                           ; preds = %do.cond
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1) #16, !dbg !239
  store i32 %call3, ptr %tmp, align 4, !dbg !242
  %4 = load i32, ptr %tmp, align 4, !dbg !239
  br label %do.body4, !dbg !244

do.body4:                                         ; preds = %do.end
  br label %do.body5, !dbg !245

do.body5:                                         ; preds = %do.body4
  br label %do.cond6, !dbg !247

do.cond6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !247

do.end7:                                          ; preds = %do.cond6
  br label %do.body8, !dbg !245

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 0, i64 12) #15, !dbg !249, !srcloc !251
  br label %do.cond9, !dbg !249

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !249

do.end10:                                         ; preds = %do.cond9
  unreachable, !dbg !245

do.cond11:                                        ; No predecessors!
  br label %do.end12, !dbg !245

do.end12:                                         ; preds = %do.cond11
  br label %if.end, !dbg !252

if.end:                                           ; preds = %do.end12, %land.lhs.true, %entry
  %5 = load i8, ptr %tail.addr, align 1, !dbg !253, !range !145, !noundef !146
  %tobool13 = trunc i8 %5 to i1, !dbg !253
  br i1 %tobool13, label %if.then14, label %if.else, !dbg !255

if.then14:                                        ; preds = %if.end
  %6 = load i8, ptr %opcode, align 1, !dbg !256
  %conv = zext i8 %6 to i32, !dbg !256
  %cmp = icmp eq i32 %conv, 233, !dbg !259
  br i1 %cmp, label %if.then23, label %lor.lhs.false, !dbg !260

lor.lhs.false:                                    ; preds = %if.then14
  %7 = load i8, ptr %opcode, align 1, !dbg !261
  %conv16 = zext i8 %7 to i32, !dbg !261
  %cmp17 = icmp eq i32 %conv16, 195, !dbg !262
  br i1 %cmp17, label %if.then23, label %lor.lhs.false19, !dbg !263

lor.lhs.false19:                                  ; preds = %lor.lhs.false
  %8 = load ptr, ptr %insn.addr, align 8, !dbg !264
  %call20 = call zeroext i8 @__is_Jcc(ptr noundef %8) #14, !dbg !265
  %conv21 = zext i8 %call20 to i32, !dbg !265
  %tobool22 = icmp ne i32 %conv21, 0, !dbg !265
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !266

if.then23:                                        ; preds = %lor.lhs.false19, %lor.lhs.false, %if.then14
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !267

if.end24:                                         ; preds = %lor.lhs.false19
  br label %if.end36, !dbg !268

if.else:                                          ; preds = %if.end
  %9 = load i8, ptr %opcode, align 1, !dbg !269
  %conv25 = zext i8 %9 to i32, !dbg !269
  %cmp26 = icmp eq i32 %conv25, 232, !dbg !272
  br i1 %cmp26, label %if.then34, label %lor.lhs.false28, !dbg !273

lor.lhs.false28:                                  ; preds = %if.else
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !274
  %11 = load ptr, ptr getelementptr ([0 x ptr], ptr @x86_nops, i64 0, i64 5), align 8, !dbg !275
  %call29 = call i32 @memcmp(ptr noundef %10, ptr noundef %11, i64 noundef 5) #14, !dbg !276
  %tobool30 = icmp ne i32 %call29, 0, !dbg !276
  br i1 %tobool30, label %lor.lhs.false31, label %if.then34, !dbg !277

lor.lhs.false31:                                  ; preds = %lor.lhs.false28
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !278
  %call32 = call i32 @memcmp(ptr noundef %12, ptr noundef @xor5rax, i64 noundef 5) #14, !dbg !279
  %tobool33 = icmp ne i32 %call32, 0, !dbg !279
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !280

if.then34:                                        ; preds = %lor.lhs.false31, %lor.lhs.false28, %if.else
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !281

if.end35:                                         ; preds = %lor.lhs.false31
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.end24
  br label %do.body37, !dbg !282

do.body37:                                        ; preds = %if.end36
  br label %do.cond38, !dbg !284

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !284

do.end39:                                         ; preds = %do.cond38
  %13 = load i8, ptr %opcode, align 1, !dbg !282
  %conv41 = zext i8 %13 to i32, !dbg !282
  %14 = load ptr, ptr %insn.addr, align 8, !dbg !282
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef @.str.2, i32 noundef %conv41, ptr noundef %14) #16, !dbg !282
  store i32 %call42, ptr %tmp40, align 4, !dbg !284
  %15 = load i32, ptr %tmp40, align 4, !dbg !282
  br label %do.body43, !dbg !286

do.body43:                                        ; preds = %do.end39
  br label %do.body44, !dbg !287

do.body44:                                        ; preds = %do.body43
  br label %do.cond45, !dbg !289

do.cond45:                                        ; preds = %do.body44
  br label %do.end46, !dbg !289

do.end46:                                         ; preds = %do.cond45
  br label %do.body47, !dbg !287

do.body47:                                        ; preds = %do.end46
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 139, i32 0, i64 12) #15, !dbg !291, !srcloc !293
  br label %do.cond48, !dbg !291

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !291

do.end49:                                         ; preds = %do.cond48
  unreachable, !dbg !287

do.cond50:                                        ; No predecessors!
  br label %do.end51, !dbg !287

do.end51:                                         ; preds = %do.cond50
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !294
  br label %cleanup, !dbg !294

cleanup:                                          ; preds = %do.end51, %if.then34, %if.then23
  call void @llvm.lifetime.end.p0(i64 1, ptr %opcode) #15, !dbg !294
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !294

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__static_call_transform(ptr noundef %insn, i32 noundef %type, ptr noundef %func, i1 noundef zeroext %modinit) #3 section ".ref.text" align 16 !dbg !295 {
entry:
  %insn.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %func.addr = alloca ptr, align 8
  %modinit.addr = alloca i8, align 1
  %emulate = alloca ptr, align 8
  %size = alloca i32, align 4
  %code = alloca ptr, align 8
  %op = alloca i8, align 1
  %buf = alloca [6 x i8], align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !299, metadata !DIExpression()), !dbg !311
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !300, metadata !DIExpression()), !dbg !312
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !301, metadata !DIExpression()), !dbg !313
  %frombool = zext i1 %modinit to i8
  store i8 %frombool, ptr %modinit.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %modinit.addr, metadata !302, metadata !DIExpression()), !dbg !314
  call void @llvm.lifetime.start.p0(i64 8, ptr %emulate) #15, !dbg !315
  call void @llvm.dbg.declare(metadata ptr %emulate, metadata !303, metadata !DIExpression()), !dbg !316
  store ptr null, ptr %emulate, align 8, !dbg !316
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %size, metadata !304, metadata !DIExpression()), !dbg !318
  store i32 5, ptr %size, align 4, !dbg !318
  call void @llvm.lifetime.start.p0(i64 8, ptr %code) #15, !dbg !319
  call void @llvm.dbg.declare(metadata ptr %code, metadata !305, metadata !DIExpression()), !dbg !320
  call void @llvm.lifetime.start.p0(i64 1, ptr %op) #15, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %op, metadata !306, metadata !DIExpression()), !dbg !322
  call void @llvm.lifetime.start.p0(i64 6, ptr %buf) #15, !dbg !321
  call void @llvm.dbg.declare(metadata ptr %buf, metadata !307, metadata !DIExpression()), !dbg !323
  %0 = load i32, ptr %type.addr, align 4, !dbg !324
  %cmp = icmp eq i32 %0, 2, !dbg !326
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !327

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %type.addr, align 4, !dbg !328
  %cmp1 = icmp eq i32 %1, 3, !dbg !329
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !330

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !331
  %call = call zeroext i8 @__is_Jcc(ptr noundef %2) #14, !dbg !332
  store i8 %call, ptr %op, align 1, !dbg !333
  %conv = zext i8 %call to i32, !dbg !334
  %tobool = icmp ne i32 %conv, 0, !dbg !334
  br i1 %tobool, label %if.then, label %if.end, !dbg !335

if.then:                                          ; preds = %land.lhs.true
  store i32 4, ptr %type.addr, align 4, !dbg !336
  br label %if.end, !dbg !337

if.end:                                           ; preds = %if.then, %land.lhs.true, %lor.lhs.false
  %3 = load i32, ptr %type.addr, align 4, !dbg !338
  switch i32 %3, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb11
    i32 4, label %sw.bb23
  ], !dbg !339

sw.bb:                                            ; preds = %if.end
  %4 = load ptr, ptr %func.addr, align 8, !dbg !340
  %call2 = call ptr @callthunks_translate_call_dest(ptr noundef %4) #14, !dbg !342
  store ptr %call2, ptr %func.addr, align 8, !dbg !343
  %5 = load ptr, ptr %insn.addr, align 8, !dbg !344
  %6 = load ptr, ptr %func.addr, align 8, !dbg !345
  %call3 = call ptr @text_gen_insn(i8 noundef zeroext -24, ptr noundef %5, ptr noundef %6) #14, !dbg !346
  store ptr %call3, ptr %code, align 8, !dbg !347
  %7 = load ptr, ptr %func.addr, align 8, !dbg !348
  %cmp4 = icmp eq ptr %7, @__static_call_return0, !dbg !350
  br i1 %cmp4, label %if.then6, label %if.end7, !dbg !351

if.then6:                                         ; preds = %sw.bb
  %8 = load ptr, ptr %code, align 8, !dbg !352
  store ptr %8, ptr %emulate, align 8, !dbg !354
  store ptr @xor5rax, ptr %code, align 8, !dbg !355
  br label %if.end7, !dbg !356

if.end7:                                          ; preds = %if.then6, %sw.bb
  br label %sw.epilog, !dbg !357

sw.bb8:                                           ; preds = %if.end
  %9 = load ptr, ptr getelementptr ([0 x ptr], ptr @x86_nops, i64 0, i64 5), align 8, !dbg !358
  store ptr %9, ptr %code, align 8, !dbg !359
  br label %sw.epilog, !dbg !360

sw.bb9:                                           ; preds = %if.end
  %10 = load ptr, ptr %insn.addr, align 8, !dbg !361
  %11 = load ptr, ptr %func.addr, align 8, !dbg !362
  %call10 = call ptr @text_gen_insn(i8 noundef zeroext -23, ptr noundef %10, ptr noundef %11) #14, !dbg !363
  store ptr %call10, ptr %code, align 8, !dbg !364
  br label %sw.epilog, !dbg !365

sw.bb11:                                          ; preds = %if.end
  br i1 false, label %cond.true, label %cond.false, !dbg !366

cond.true:                                        ; preds = %sw.bb11
  br i1 false, label %if.then20, label %if.else, !dbg !367

cond.false:                                       ; preds = %sw.bb11
  br i1 false, label %cond.true12, label %cond.false17, !dbg !366

cond.true12:                                      ; preds = %cond.false
  br i1 false, label %cond.true13, label %cond.false14, !dbg !367

cond.true13:                                      ; preds = %cond.true12
  br i1 true, label %if.then20, label %if.else, !dbg !367

cond.false14:                                     ; preds = %cond.true12
  %call15 = call zeroext i1 @arch_test_bit(i64 noundef 366, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !367
  br i1 %call15, label %if.then20, label %if.else, !dbg !367

cond.false17:                                     ; preds = %cond.false
  %call18 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 366) #14, !dbg !367
  br i1 %call18, label %if.then20, label %if.else, !dbg !366

if.then20:                                        ; preds = %cond.false17, %cond.false14, %cond.true13, %cond.true
  %12 = load ptr, ptr %insn.addr, align 8, !dbg !369
  %13 = load ptr, ptr @x86_return_thunk, align 8, !dbg !370
  %call21 = call ptr @text_gen_insn(i8 noundef zeroext -23, ptr noundef %12, ptr noundef %13) #14, !dbg !371
  store ptr %call21, ptr %code, align 8, !dbg !372
  br label %if.end22, !dbg !373

if.else:                                          ; preds = %cond.false17, %cond.false14, %cond.true13, %cond.true
  store ptr @retinsn, ptr %code, align 8, !dbg !374
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then20
  br label %sw.epilog, !dbg !375

sw.bb23:                                          ; preds = %if.end
  %14 = load ptr, ptr %func.addr, align 8, !dbg !376
  %tobool24 = icmp ne ptr %14, null, !dbg !376
  br i1 %tobool24, label %if.end38, label %if.then25, !dbg !378

if.then25:                                        ; preds = %sw.bb23
  store ptr @__static_call_return, ptr %func.addr, align 8, !dbg !379
  br i1 false, label %cond.true26, label %cond.false27, !dbg !381

cond.true26:                                      ; preds = %if.then25
  br i1 false, label %if.then36, label %if.end37, !dbg !382

cond.false27:                                     ; preds = %if.then25
  br i1 false, label %cond.true28, label %cond.false33, !dbg !381

cond.true28:                                      ; preds = %cond.false27
  br i1 false, label %cond.true29, label %cond.false30, !dbg !382

cond.true29:                                      ; preds = %cond.true28
  br i1 true, label %if.then36, label %if.end37, !dbg !382

cond.false30:                                     ; preds = %cond.true28
  %call31 = call zeroext i1 @arch_test_bit(i64 noundef 366, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !382
  br i1 %call31, label %if.then36, label %if.end37, !dbg !382

cond.false33:                                     ; preds = %cond.false27
  %call34 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 366) #14, !dbg !382
  br i1 %call34, label %if.then36, label %if.end37, !dbg !381

if.then36:                                        ; preds = %cond.false33, %cond.false30, %cond.true29, %cond.true26
  %15 = load ptr, ptr @x86_return_thunk, align 8, !dbg !384
  store ptr %15, ptr %func.addr, align 8, !dbg !385
  br label %if.end37, !dbg !386

if.end37:                                         ; preds = %if.then36, %cond.false33, %cond.false30, %cond.true29, %cond.true26
  br label %if.end38, !dbg !387

if.end38:                                         ; preds = %if.end37, %sw.bb23
  %arrayidx = getelementptr [6 x i8], ptr %buf, i64 0, i64 0, !dbg !388
  store i8 15, ptr %arrayidx, align 1, !dbg !389
  %arraydecay = getelementptr inbounds [6 x i8], ptr %buf, i64 0, i64 0, !dbg !390
  %add.ptr = getelementptr i8, ptr %arraydecay, i64 1, !dbg !391
  %16 = load i8, ptr %op, align 1, !dbg !392
  %17 = load ptr, ptr %insn.addr, align 8, !dbg !393
  %add.ptr39 = getelementptr i8, ptr %17, i64 1, !dbg !394
  %18 = load ptr, ptr %func.addr, align 8, !dbg !395
  call void @__text_gen_insn(ptr noundef %add.ptr, i8 noundef zeroext %16, ptr noundef %add.ptr39, ptr noundef %18, i32 noundef 5) #14, !dbg !396
  %arraydecay40 = getelementptr inbounds [6 x i8], ptr %buf, i64 0, i64 0, !dbg !397
  store ptr %arraydecay40, ptr %code, align 8, !dbg !398
  store i32 6, ptr %size, align 4, !dbg !399
  br label %sw.epilog, !dbg !400

sw.epilog:                                        ; preds = %if.end, %if.end38, %if.end22, %sw.bb9, %sw.bb8, %if.end7
  %19 = load ptr, ptr %insn.addr, align 8, !dbg !401
  %20 = load ptr, ptr %code, align 8, !dbg !403
  %21 = load i32, ptr %size, align 4, !dbg !404
  %conv41 = sext i32 %21 to i64, !dbg !404
  %call42 = call i32 @memcmp(ptr noundef %19, ptr noundef %20, i64 noundef %conv41) #14, !dbg !405
  %cmp43 = icmp eq i32 %call42, 0, !dbg !406
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !407

if.then45:                                        ; preds = %sw.epilog
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !408

if.end46:                                         ; preds = %sw.epilog
  %22 = load i32, ptr @system_state, align 4, !dbg !409
  %cmp47 = icmp eq i32 %22, 0, !dbg !411
  br i1 %cmp47, label %if.then52, label %lor.lhs.false49, !dbg !412

lor.lhs.false49:                                  ; preds = %if.end46
  %23 = load i8, ptr %modinit.addr, align 1, !dbg !413, !range !145, !noundef !146
  %tobool50 = trunc i8 %23 to i1, !dbg !413
  br i1 %tobool50, label %if.then52, label %if.end54, !dbg !414

if.then52:                                        ; preds = %lor.lhs.false49, %if.end46
  %24 = load ptr, ptr %insn.addr, align 8, !dbg !415
  %25 = load ptr, ptr %code, align 8, !dbg !416
  %26 = load i32, ptr %size, align 4, !dbg !417
  %conv53 = sext i32 %26 to i64, !dbg !417
  call void @text_poke_early(ptr noundef %24, ptr noundef %25, i64 noundef %conv53) #14, !dbg !418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !419

if.end54:                                         ; preds = %lor.lhs.false49
  %27 = load ptr, ptr %insn.addr, align 8, !dbg !420
  %28 = load ptr, ptr %code, align 8, !dbg !421
  %29 = load i32, ptr %size, align 4, !dbg !422
  %conv55 = sext i32 %29 to i64, !dbg !422
  %30 = load ptr, ptr %emulate, align 8, !dbg !423
  call void @text_poke_bp(ptr noundef %27, ptr noundef %28, i64 noundef %conv55, ptr noundef %30) #14, !dbg !424
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !425
  br label %cleanup, !dbg !425

cleanup:                                          ; preds = %if.end54, %if.then52, %if.then45
  call void @llvm.lifetime.end.p0(i64 6, ptr %buf) #15, !dbg !425
  call void @llvm.lifetime.end.p0(i64 1, ptr %op) #15, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %code) #15, !dbg !425
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !425
  call void @llvm.lifetime.end.p0(i64 8, ptr %emulate) #15, !dbg !425
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !425

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__sc_insn(i1 noundef zeroext %null, i1 noundef zeroext %tail) #4 align 16 !dbg !426 {
entry:
  %null.addr = alloca i8, align 1
  %tail.addr = alloca i8, align 1
  %frombool = zext i1 %null to i8
  store i8 %frombool, ptr %null.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %null.addr, metadata !430, metadata !DIExpression()), !dbg !432
  %frombool1 = zext i1 %tail to i8
  store i8 %frombool1, ptr %tail.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %tail.addr, metadata !431, metadata !DIExpression()), !dbg !433
  %0 = load i8, ptr %tail.addr, align 1, !dbg !434, !range !145, !noundef !146
  %tobool = trunc i8 %0 to i1, !dbg !434
  %conv = zext i1 %tobool to i32, !dbg !434
  %mul = mul i32 2, %conv, !dbg !435
  %1 = load i8, ptr %null.addr, align 1, !dbg !436, !range !145, !noundef !146
  %tobool2 = trunc i8 %1 to i1, !dbg !436
  %conv3 = zext i1 %tobool2 to i32, !dbg !436
  %add = add i32 %mul, %conv3, !dbg !437
  ret i32 %add, !dbg !438
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !439 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__static_call_update_early(ptr noundef %tramp, ptr noundef %func) #5 section ".noinstr.text" align 16 !dbg !440 {
entry:
  %tramp.addr = alloca ptr, align 8
  %func.addr = alloca ptr, align 8
  store ptr %tramp, ptr %tramp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tramp.addr, metadata !444, metadata !DIExpression()), !dbg !446
  store ptr %func, ptr %func.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %func.addr, metadata !445, metadata !DIExpression()), !dbg !447
  br label %do.body, !dbg !448

do.body:                                          ; preds = %entry
  %0 = load i32, ptr @system_state, align 4, !dbg !449
  %cmp = icmp ne i32 %0, 0, !dbg !449
  %lnot = xor i1 %cmp, true, !dbg !449
  %lnot1 = xor i1 %lnot, true, !dbg !449
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !449
  %conv = sext i32 %lnot.ext to i64, !dbg !449
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !449
  %tobool = icmp ne i64 %expval, 0, !dbg !449
  br i1 %tobool, label %if.then, label %if.end, !dbg !452

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !449

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !453

do.body3:                                         ; preds = %do.body2
  br label %do.end, !dbg !455

do.end:                                           ; preds = %do.body3
  br label %do.body4, !dbg !453

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 177, i32 0, i64 12) #15, !dbg !457, !srcloc !459
  br label %do.end5, !dbg !457

do.end5:                                          ; preds = %do.body4
  unreachable, !dbg !453

do.end6:                                          ; No predecessors!
  br label %if.end, !dbg !453

if.end:                                           ; preds = %do.end6, %do.body
  br label %do.end7, !dbg !452

do.end7:                                          ; preds = %if.end
  br label %do.body8, !dbg !460

do.body8:                                         ; preds = %do.end7
  %1 = load i32, ptr @static_call_initialized, align 4, !dbg !461
  %tobool9 = icmp ne i32 %1, 0, !dbg !461
  %lnot10 = xor i1 %tobool9, true, !dbg !461
  %lnot12 = xor i1 %lnot10, true, !dbg !461
  %lnot.ext13 = zext i1 %lnot12 to i32, !dbg !461
  %conv14 = sext i32 %lnot.ext13 to i64, !dbg !461
  %expval15 = call i64 @llvm.expect.i64(i64 %conv14, i64 0), !dbg !461
  %tobool16 = icmp ne i64 %expval15, 0, !dbg !461
  br i1 %tobool16, label %if.then17, label %if.end24, !dbg !464

if.then17:                                        ; preds = %do.body8
  br label %do.body18, !dbg !461

do.body18:                                        ; preds = %if.then17
  br label %do.body19, !dbg !465

do.body19:                                        ; preds = %do.body18
  br label %do.end20, !dbg !467

do.end20:                                         ; preds = %do.body19
  br label %do.body21, !dbg !465

do.body21:                                        ; preds = %do.end20
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 178, i32 0, i64 12) #15, !dbg !469, !srcloc !471
  br label %do.end22, !dbg !469

do.end22:                                         ; preds = %do.body21
  unreachable, !dbg !465

do.end23:                                         ; No predecessors!
  br label %if.end24, !dbg !465

if.end24:                                         ; preds = %do.end23, %do.body8
  br label %do.end25, !dbg !464

do.end25:                                         ; preds = %if.end24
  %2 = load ptr, ptr %tramp.addr, align 8, !dbg !472
  %3 = load ptr, ptr %tramp.addr, align 8, !dbg !473
  %4 = load ptr, ptr %func.addr, align 8, !dbg !474
  call void @__text_gen_insn(ptr noundef %2, i8 noundef zeroext -23, ptr noundef %3, ptr noundef %4, i32 noundef 5) #14, !dbg !475
  call void @sync_core() #14, !dbg !476
  ret void, !dbg !477
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__text_gen_insn(ptr noundef %buf, i8 noundef zeroext %opcode, ptr noundef %addr, ptr noundef %dest, i32 noundef %size) #7 align 16 !dbg !478 {
entry:
  %buf.addr = alloca ptr, align 8
  %opcode.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %insn = alloca ptr, align 8
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !482, metadata !DIExpression()), !dbg !489
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !483, metadata !DIExpression()), !dbg !490
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !484, metadata !DIExpression()), !dbg !491
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !485, metadata !DIExpression()), !dbg !492
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !486, metadata !DIExpression()), !dbg !493
  call void @llvm.lifetime.start.p0(i64 8, ptr %insn) #15, !dbg !494
  call void @llvm.dbg.declare(metadata ptr %insn, metadata !487, metadata !DIExpression()), !dbg !495
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !496
  store ptr %0, ptr %insn, align 8, !dbg !495
  br label %do.body, !dbg !497

do.body:                                          ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4, !dbg !498
  %2 = load i8, ptr %opcode.addr, align 1, !dbg !498
  %call = call i32 @text_opcode_size(i8 noundef zeroext %2) #14, !dbg !498
  %cmp = icmp slt i32 %1, %call, !dbg !498
  %lnot = xor i1 %cmp, true, !dbg !498
  %lnot1 = xor i1 %lnot, true, !dbg !498
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !498
  %conv = sext i32 %lnot.ext to i64, !dbg !498
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !498
  %tobool = icmp ne i64 %expval, 0, !dbg !498
  br i1 %tobool, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %do.body
  br label %do.body2, !dbg !498

do.body2:                                         ; preds = %if.then
  br label %do.body3, !dbg !502

do.body3:                                         ; preds = %do.body2
  br label %do.cond, !dbg !504

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !504

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !502

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 106, i32 0, i64 12) #15, !dbg !506, !srcloc !508
  br label %do.cond5, !dbg !506

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !506

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !502

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !502

do.end8:                                          ; preds = %do.cond7
  br label %if.end, !dbg !502

if.end:                                           ; preds = %do.end8, %do.body
  br label %do.cond9, !dbg !501

do.cond9:                                         ; preds = %if.end
  br label %do.end10, !dbg !501

do.end10:                                         ; preds = %do.cond9
  %3 = load ptr, ptr %insn, align 8, !dbg !509
  %4 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %3) #17, !dbg !509, !srcloc !510
  store ptr %4, ptr %insn, align 8, !dbg !509
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !511
  %6 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %5) #17, !dbg !511, !srcloc !512
  store ptr %6, ptr %addr.addr, align 8, !dbg !511
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !513
  %8 = call ptr asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(ptr %7) #17, !dbg !513, !srcloc !514
  store ptr %8, ptr %dest.addr, align 8, !dbg !513
  %9 = load i8, ptr %opcode.addr, align 1, !dbg !515
  %10 = load ptr, ptr %insn, align 8, !dbg !516
  %opcode11 = getelementptr inbounds %struct.anon.4, ptr %10, i32 0, i32 0, !dbg !517
  store i8 %9, ptr %opcode11, align 1, !dbg !518
  %11 = load i32, ptr %size.addr, align 4, !dbg !519
  %cmp12 = icmp sgt i32 %11, 1, !dbg !521
  br i1 %cmp12, label %if.then14, label %if.end46, !dbg !522

if.then14:                                        ; preds = %do.end10
  %12 = load ptr, ptr %dest.addr, align 8, !dbg !523
  %13 = ptrtoint ptr %12 to i64, !dbg !525
  %14 = load ptr, ptr %addr.addr, align 8, !dbg !526
  %15 = load i32, ptr %size.addr, align 4, !dbg !527
  %idx.ext = sext i32 %15 to i64, !dbg !528
  %add.ptr = getelementptr i8, ptr %14, i64 %idx.ext, !dbg !528
  %16 = ptrtoint ptr %add.ptr to i64, !dbg !529
  %sub = sub i64 %13, %16, !dbg !530
  %conv15 = trunc i64 %sub to i32, !dbg !525
  %17 = load ptr, ptr %insn, align 8, !dbg !531
  %disp = getelementptr inbounds %struct.anon.4, ptr %17, i32 0, i32 1, !dbg !532
  store i32 %conv15, ptr %disp, align 1, !dbg !533
  %18 = load i32, ptr %size.addr, align 4, !dbg !534
  %cmp16 = icmp eq i32 %18, 2, !dbg !536
  br i1 %cmp16, label %if.then18, label %if.end45, !dbg !537

if.then18:                                        ; preds = %if.then14
  br label %do.body19, !dbg !538

do.body19:                                        ; preds = %if.then18
  %19 = load ptr, ptr %insn, align 8, !dbg !540
  %disp20 = getelementptr inbounds %struct.anon.4, ptr %19, i32 0, i32 1, !dbg !540
  %20 = load i32, ptr %disp20, align 1, !dbg !540
  %shr = ashr i32 %20, 31, !dbg !540
  %21 = load ptr, ptr %insn, align 8, !dbg !540
  %disp21 = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1, !dbg !540
  %22 = load i32, ptr %disp21, align 1, !dbg !540
  %shr22 = ashr i32 %22, 7, !dbg !540
  %cmp23 = icmp ne i32 %shr, %shr22, !dbg !540
  %lnot25 = xor i1 %cmp23, true, !dbg !540
  %lnot27 = xor i1 %lnot25, true, !dbg !540
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !540
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !540
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !540
  %tobool31 = icmp ne i64 %expval30, 0, !dbg !540
  br i1 %tobool31, label %if.then32, label %if.end42, !dbg !543

if.then32:                                        ; preds = %do.body19
  br label %do.body33, !dbg !540

do.body33:                                        ; preds = %if.then32
  br label %do.body34, !dbg !544

do.body34:                                        ; preds = %do.body33
  br label %do.cond35, !dbg !546

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !546

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !544

do.body37:                                        ; preds = %do.end36
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.3, i32 126, i32 0, i64 12) #15, !dbg !548, !srcloc !550
  br label %do.cond38, !dbg !548

do.cond38:                                        ; preds = %do.body37
  br label %do.end39, !dbg !548

do.end39:                                         ; preds = %do.cond38
  unreachable, !dbg !544

do.cond40:                                        ; No predecessors!
  br label %do.end41, !dbg !544

do.end41:                                         ; preds = %do.cond40
  br label %if.end42, !dbg !544

if.end42:                                         ; preds = %do.end41, %do.body19
  br label %do.cond43, !dbg !543

do.cond43:                                        ; preds = %if.end42
  br label %do.end44, !dbg !543

do.end44:                                         ; preds = %do.cond43
  br label %if.end45, !dbg !551

if.end45:                                         ; preds = %do.end44, %if.then14
  br label %if.end46, !dbg !552

if.end46:                                         ; preds = %if.end45, %do.end10
  call void @llvm.lifetime.end.p0(i64 8, ptr %insn) #15, !dbg !553
  ret void, !dbg !553
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sync_core() #7 align 16 !dbg !554 {
entry:
  br i1 false, label %cond.true, label %cond.false2, !dbg !558

cond.true:                                        ; preds = %entry
  br i1 false, label %cond.true1, label %cond.false, !dbg !559

cond.true1:                                       ; preds = %cond.true
  br i1 true, label %if.then, label %if.end, !dbg !559

cond.false:                                       ; preds = %cond.true
  %call = call zeroext i1 @arch_test_bit(i64 noundef 590, ptr noundef getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10)) #14, !dbg !559
  br i1 %call, label %if.then, label %if.end, !dbg !559

cond.false2:                                      ; preds = %entry
  %call3 = call zeroext i1 @_static_cpu_has(i16 noundef zeroext 590) #14, !dbg !559
  br i1 %call3, label %if.then, label %if.end, !dbg !558

if.then:                                          ; preds = %cond.false2, %cond.false, %cond.true1
  call void @serialize() #14, !dbg !561
  br label %return, !dbg !563

if.end:                                           ; preds = %cond.false2, %cond.false, %cond.true1
  call void @iret_to_self() #14, !dbg !564
  br label %return, !dbg !565

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @__static_call_fixup(ptr noundef %tramp, i8 noundef zeroext %op, ptr noundef %dest) #0 align 16 !dbg !566 {
entry:
  %retval = alloca i1, align 1
  %tramp.addr = alloca ptr, align 8
  %op.addr = alloca i8, align 1
  %dest.addr = alloca ptr, align 8
  %addr = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tramp, ptr %tramp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tramp.addr, metadata !570, metadata !DIExpression()), !dbg !574
  store i8 %op, ptr %op.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %op.addr, metadata !571, metadata !DIExpression()), !dbg !575
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !572, metadata !DIExpression()), !dbg !576
  call void @llvm.lifetime.start.p0(i64 8, ptr %addr) #15, !dbg !577
  call void @llvm.dbg.declare(metadata ptr %addr, metadata !573, metadata !DIExpression()), !dbg !578
  %0 = load ptr, ptr %tramp.addr, align 8, !dbg !579
  %1 = ptrtoint ptr %0 to i64, !dbg !580
  store i64 %1, ptr %addr, align 8, !dbg !578
  %2 = load i64, ptr %addr, align 8, !dbg !581
  %shr = lshr i64 %2, 12, !dbg !583
  %3 = load i64, ptr %addr, align 8, !dbg !584
  %add = add i64 %3, 7, !dbg !585
  %shr1 = lshr i64 %add, 12, !dbg !586
  %cmp = icmp ne i64 %shr, %shr1, !dbg !587
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !588

land.lhs.true:                                    ; preds = %entry
  %4 = load i64, ptr %addr, align 8, !dbg !589
  %add2 = add i64 %4, 7, !dbg !590
  %call = call i32 @kernel_text_address(i64 noundef %add2) #14, !dbg !591
  %tobool = icmp ne i32 %call, 0, !dbg !591
  br i1 %tobool, label %if.end, label %if.then, !dbg !592

if.then:                                          ; preds = %land.lhs.true
  store i1 false, ptr %retval, align 1, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load ptr, ptr %tramp.addr, align 8, !dbg !594
  %add.ptr = getelementptr i8, ptr %5, i64 5, !dbg !596
  %call3 = call i32 @memcmp(ptr noundef %add.ptr, ptr noundef @tramp_ud, i64 noundef 3) #14, !dbg !597
  %tobool4 = icmp ne i32 %call3, 0, !dbg !597
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !598

if.then5:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !599
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !599

if.end6:                                          ; preds = %if.end
  call void @mutex_lock(ptr noundef @text_mutex) #14, !dbg !601
  %6 = load i8, ptr %op.addr, align 1, !dbg !602
  %conv = zext i8 %6 to i32, !dbg !602
  %cmp7 = icmp eq i32 %conv, 195, !dbg !604
  br i1 %cmp7, label %if.then11, label %lor.lhs.false, !dbg !605

lor.lhs.false:                                    ; preds = %if.end6
  %7 = load ptr, ptr %dest.addr, align 8, !dbg !606
  %cmp9 = icmp eq ptr %7, @__x86_return_thunk, !dbg !607
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !608

if.then11:                                        ; preds = %lor.lhs.false, %if.end6
  %8 = load ptr, ptr %tramp.addr, align 8, !dbg !609
  call void @__static_call_transform(ptr noundef %8, i32 noundef 3, ptr noundef null, i1 noundef zeroext true) #14, !dbg !610
  br label %if.end12, !dbg !610

if.end12:                                         ; preds = %if.then11, %lor.lhs.false
  call void @mutex_unlock(ptr noundef @text_mutex) #14, !dbg !611
  store i1 true, ptr %retval, align 1, !dbg !612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !612

cleanup:                                          ; preds = %if.end12, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %addr) #15, !dbg !613
  %9 = load i1, ptr %retval, align 1, !dbg !613
  ret i1 %9, !dbg !613
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !614 dso_local i32 @kernel_text_address(i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !617 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__x86_return_thunk() #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !624 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__is_Jcc(ptr noundef %insn) #0 align 16 !dbg !628 {
entry:
  %insn.addr = alloca ptr, align 8
  %ret = alloca i8, align 1
  %tmp = alloca i8, align 1
  store ptr %insn, ptr %insn.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %insn.addr, metadata !632, metadata !DIExpression()), !dbg !637
  call void @llvm.lifetime.start.p0(i64 1, ptr %ret) #15, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !633, metadata !DIExpression()), !dbg !639
  store i8 0, ptr %ret, align 1, !dbg !639
  %0 = load ptr, ptr %insn.addr, align 8, !dbg !640
  %arrayidx = getelementptr i8, ptr %0, i64 0, !dbg !640
  %1 = load i8, ptr %arrayidx, align 1, !dbg !640
  %conv = zext i8 %1 to i32, !dbg !640
  %cmp = icmp eq i32 %conv, 15, !dbg !641
  br i1 %cmp, label %if.then, label %if.end7, !dbg !642

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %tmp) #15, !dbg !643
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !634, metadata !DIExpression()), !dbg !644
  %2 = load ptr, ptr %insn.addr, align 8, !dbg !645
  %arrayidx2 = getelementptr i8, ptr %2, i64 1, !dbg !645
  %3 = load i8, ptr %arrayidx2, align 1, !dbg !645
  store i8 %3, ptr %tmp, align 1, !dbg !644
  %4 = load i8, ptr %tmp, align 1, !dbg !646
  %conv3 = zext i8 %4 to i32, !dbg !646
  %and = and i32 %conv3, 240, !dbg !648
  %cmp4 = icmp eq i32 %and, 128, !dbg !649
  br i1 %cmp4, label %if.then6, label %if.end, !dbg !650

if.then6:                                         ; preds = %if.then
  %5 = load i8, ptr %tmp, align 1, !dbg !651
  store i8 %5, ptr %ret, align 1, !dbg !652
  br label %if.end, !dbg !653

if.end:                                           ; preds = %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %tmp) #15, !dbg !654
  br label %if.end7, !dbg !655

if.end7:                                          ; preds = %if.end, %entry
  %6 = load i8, ptr %ret, align 1, !dbg !656
  call void @llvm.lifetime.end.p0(i64 1, ptr %ret) #15, !dbg !657
  ret i8 %6, !dbg !658
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !659 dso_local ptr @callthunks_translate_call_dest(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @text_gen_insn(i8 noundef zeroext %opcode, ptr noundef %addr, ptr noundef %dest) #7 align 16 !dbg !67 {
entry:
  %opcode.addr = alloca i8, align 1
  %addr.addr = alloca ptr, align 8
  %dest.addr = alloca ptr, align 8
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !74, metadata !DIExpression()), !dbg !663
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !75, metadata !DIExpression()), !dbg !664
  store ptr %dest, ptr %dest.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dest.addr, metadata !76, metadata !DIExpression()), !dbg !665
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !666
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !667
  %2 = load ptr, ptr %dest.addr, align 8, !dbg !668
  %3 = load i8, ptr %opcode.addr, align 1, !dbg !669
  %call = call i32 @text_opcode_size(i8 noundef zeroext %3) #14, !dbg !670
  call void @__text_gen_insn(ptr noundef @text_gen_insn.insn, i8 noundef zeroext %0, ptr noundef %1, ptr noundef %2, i32 noundef %call) #14, !dbg !671
  ret ptr @text_gen_insn.insn, !dbg !672
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__static_call_return0() #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !673 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !681, metadata !DIExpression()), !dbg !683
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !682, metadata !DIExpression()), !dbg !684
  %0 = load i64, ptr %nr.addr, align 8, !dbg !685
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !686
  br i1 %1, label %cond.true, label %cond.false, !dbg !686

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !687
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !688
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #14, !dbg !689
  %conv = zext i1 %call to i32, !dbg !689
  br label %cond.end, !dbg !686

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !690
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !691
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #14, !dbg !692
  %conv2 = zext i1 %call1 to i32, !dbg !692
  br label %cond.end, !dbg !686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !686
  %tobool = icmp ne i32 %cond, 0, !dbg !686
  ret i1 %tobool, !dbg !693
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_static_cpu_has(i16 noundef zeroext %bit) #7 align 16 !dbg !694 {
entry:
  %retval = alloca i1, align 1
  %bit.addr = alloca i16, align 2
  store i16 %bit, ptr %bit.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %bit.addr, metadata !699, metadata !DIExpression()), !dbg !702
  %0 = load i16, ptr %bit.addr, align 2, !dbg !703
  %1 = load i16, ptr %bit.addr, align 2, !dbg !704
  %conv = zext i16 %1 to i32, !dbg !704
  %and = and i32 %conv, 7, !dbg !705
  %shl = shl i32 1, %and, !dbg !706
  %2 = load i16, ptr %bit.addr, align 2, !dbg !707
  %conv1 = zext i16 %2 to i32, !dbg !707
  %shr = ashr i32 %conv1, 3, !dbg !708
  %idxprom = sext i32 %shr to i64, !dbg !709
  %arrayidx = getelementptr i8, ptr getelementptr inbounds (%struct.cpuinfo_x86, ptr @boot_cpu_data, i32 0, i32 10), i64 %idxprom, !dbg !709
  callbr void asm sideeffect "# ALT: oldinstr2\0A661:\0A\09jmp 6f\0A662:\0A# ALT: padding2\0A.skip -((((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)) > 0) * (((6651f-6641f) ^ (((6651f-6641f) ^ (6652f-6642f)) & -(-((6651f-6641f) < (6652f-6642f))))) - (662b-661b)), 0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .4byte ( 3*32+21)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .long 661b - .\0A .long 6642f - .\0A .4byte ${0:c}\0A .byte 663b-661b\0A .byte 6652f-6642f\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09jmp ${4:l}\0A6651:\0A# ALT: replacement 2\0A6642:\0A\09\0A6652:\0A.popsection\0A.pushsection .altinstr_aux,\22ax\22\0A6:\0A testb $1,${2:P} (% rip)\0A jnz ${3:l}\0A jmp ${4:l}\0A.popsection\0A", "i,i,i,!i,!i,~{dirflag},~{fpsr},~{flags}"(i16 %0, i32 %shl, ptr %arrayidx) #15
          to label %asm.fallthrough [label %t_yes, label %t_no], !dbg !710, !srcloc !711

asm.fallthrough:                                  ; preds = %entry
  br label %t_yes, !dbg !710

t_yes:                                            ; preds = %asm.fallthrough, %entry
  call void @llvm.dbg.label(metadata !700), !dbg !712
  store i1 true, ptr %retval, align 1, !dbg !713
  br label %return, !dbg !713

t_no:                                             ; preds = %entry
  call void @llvm.dbg.label(metadata !701), !dbg !714
  store i1 false, ptr %retval, align 1, !dbg !715
  br label %return, !dbg !715

return:                                           ; preds = %t_no, %t_yes
  %3 = load i1, ptr %retval, align 1, !dbg !716
  ret i1 %3, !dbg !716
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__static_call_return() #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !717 dso_local void @text_poke_early(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !721 dso_local void @text_poke_bp(ptr noundef, ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @text_opcode_size(i8 noundef zeroext %opcode) #7 align 16 !dbg !724 {
entry:
  %opcode.addr = alloca i8, align 1
  %size = alloca i32, align 4
  store i8 %opcode, ptr %opcode.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %opcode.addr, metadata !728, metadata !DIExpression()), !dbg !730
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15, !dbg !731
  call void @llvm.dbg.declare(metadata ptr %size, metadata !729, metadata !DIExpression()), !dbg !732
  store i32 0, ptr %size, align 4, !dbg !732
  %0 = load i8, ptr %opcode.addr, align 1, !dbg !733
  %conv = zext i8 %0 to i32, !dbg !733
  switch i32 %conv, label %sw.epilog [
    i32 204, label %sw.bb
    i32 195, label %sw.bb1
    i32 232, label %sw.bb2
    i32 233, label %sw.bb3
    i32 235, label %sw.bb4
  ], !dbg !734

sw.bb:                                            ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !735
  br label %sw.epilog, !dbg !735

sw.bb1:                                           ; preds = %entry
  store i32 1, ptr %size, align 4, !dbg !737
  br label %sw.epilog, !dbg !737

sw.bb2:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !738
  br label %sw.epilog, !dbg !738

sw.bb3:                                           ; preds = %entry
  store i32 5, ptr %size, align 4, !dbg !739
  br label %sw.epilog, !dbg !739

sw.bb4:                                           ; preds = %entry
  store i32 2, ptr %size, align 4, !dbg !740
  br label %sw.epilog, !dbg !740

sw.epilog:                                        ; preds = %entry, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i32, ptr %size, align 4, !dbg !741
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15, !dbg !742
  ret i32 %1, !dbg !743
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !744 {
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
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #7 align 16 !dbg !761 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !763, metadata !DIExpression()), !dbg !766
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !764, metadata !DIExpression()), !dbg !767
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #15, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !765, metadata !DIExpression()), !dbg !769
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !770
  %1 = load i64, ptr %nr.addr, align 8, !dbg !771
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #15, !dbg !772, !srcloc !773
  %3 = icmp ult i8 %2, 2, !dbg !772
  call void @llvm.assume(i1 %3), !dbg !772
  store i8 %2, ptr %oldbit, align 1, !dbg !772
  %4 = load i8, ptr %oldbit, align 1, !dbg !774, !range !145, !noundef !146
  %tobool = trunc i8 %4 to i1, !dbg !774
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #15, !dbg !775
  ret i1 %tobool, !dbg !776
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @serialize() #7 align 16 !dbg !777 {
entry:
  call void asm sideeffect ".byte 0xf, 0x1, 0xe8", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !779, !srcloc !780
  ret void, !dbg !781
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @iret_to_self() #7 align 16 !dbg !782 {
entry:
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #15, !dbg !785
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !784, metadata !DIExpression()), !dbg !786
  %0 = call i64 @llvm.read_register.i64(metadata !100), !dbg !787
  %1 = call { i32, i64 } asm sideeffect "mov %ss, $0\0A\09pushq ${0:q}\0A\09pushq %rsp\0A\09addq $$8, (%rsp)\0A\09pushfq\0A\09mov %cs, $0\0A\09pushq ${0:q}\0A\09pushq $$1f\0A\09iretq\0A\091:", "=&r,={rsp},{rsp},~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(i64 %0) #15, !dbg !787, !srcloc !788
  %asmresult = extractvalue { i32, i64 } %1, 0, !dbg !787
  %asmresult1 = extractvalue { i32, i64 } %1, 1, !dbg !787
  store i32 %asmresult, ptr %tmp, align 4, !dbg !787
  call void @llvm.write_register.i64(metadata !100, i64 %asmresult1), !dbg !787
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #15, !dbg !789
  ret void, !dbg !789
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #12

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #13

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern noinline noprofile noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #13 = { nocallback nounwind }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { cold noredzone }
attributes #17 = { nounwind memory(none) }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!100}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_arch_static_call_transform203", scope: !2, file: !3, line: 173, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/.static_call.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/static_call\22 -D KBUILD_BASENAME=\22static_call\22 -D KBUILD_MODNAME=\22static_call\22 -D __KBUILD_MODNAME=kmod_static_call -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/static_call.ll arch/x86/kernel/static_call.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !29, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/static_call.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f6f822a73dca562a909f22528ae67792")
!4 = !{!5, !11, !22}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "system_states", file: !12, line: 228, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "617787a917da5517664fe19862aeec70")
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21}
!14 = !DIEnumerator(name: "SYSTEM_BOOTING", value: 0)
!15 = !DIEnumerator(name: "SYSTEM_SCHEDULING", value: 1)
!16 = !DIEnumerator(name: "SYSTEM_FREEING_INITMEM", value: 2)
!17 = !DIEnumerator(name: "SYSTEM_RUNNING", value: 3)
!18 = !DIEnumerator(name: "SYSTEM_HALT", value: 4)
!19 = !DIEnumerator(name: "SYSTEM_POWER_OFF", value: 5)
!20 = !DIEnumerator(name: "SYSTEM_RESTART", value: 6)
!21 = !DIEnumerator(name: "SYSTEM_SUSPEND", value: 7)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "insn_type", file: !3, line: 7, baseType: !7, size: 32, elements: !23)
!23 = !{!24, !25, !26, !27, !28}
!24 = !DIEnumerator(name: "CALL", value: 0)
!25 = !DIEnumerator(name: "NOP", value: 1)
!26 = !DIEnumerator(name: "JMP", value: 2)
!27 = !DIEnumerator(name: "RET", value: 3)
!28 = !DIEnumerator(name: "JCC", value: 4)
!29 = !{!30, !31, !32, !33, !34, !37}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!38 = !{!0, !39, !44, !49, !54, !65, !88, !90, !95}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !41, isLocal: true, isDefinition: true)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 240, elements: !42)
!42 = !{!43}
!43 = !DISubrange(count: 30)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(scope: null, file: !3, line: 119, type: !46, isLocal: true, isDefinition: true)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 224, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: 28)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(scope: null, file: !3, line: 138, type: !51, isLocal: true, isDefinition: true)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 400, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 50)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "xor5rax", scope: !2, file: !3, line: 25, type: !56, isLocal: true, isDefinition: true)
!56 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 40, elements: !63)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !59, line: 17, baseType: !60)
!59 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !61, line: 21, baseType: !62)
!61 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!62 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!64}
!64 = !DISubrange(count: 5)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "insn", scope: !67, file: !68, line: 134, type: !77, isLocal: true, isDefinition: true)
!67 = distinct !DISubprogram(name: "text_gen_insn", scope: !68, file: !68, line: 132, type: !69, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!68 = !DIFile(filename: "./arch/x86/include/asm/text-patching.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b4df22955607f445a62da6adb58adb51")
!69 = !DISubroutineType(types: !70)
!70 = !{!30, !58, !71, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(name: "opcode", arg: 1, scope: !67, file: !68, line: 132, type: !58)
!75 = !DILocalVariable(name: "addr", arg: 2, scope: !67, file: !68, line: 132, type: !71)
!76 = !DILocalVariable(name: "dest", arg: 3, scope: !67, file: !68, line: 132, type: !71)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "text_poke_insn", file: !68, line: 93, size: 40, elements: !78)
!78 = !{!79, !81}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "text", scope: !77, file: !68, line: 94, baseType: !80, size: 40)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 40, elements: !63)
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !77, file: !68, line: 95, baseType: !82, size: 40)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !77, file: !68, line: 95, size: 40, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !82, file: !68, line: 96, baseType: !58, size: 8)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "disp", scope: !82, file: !68, line: 97, baseType: !86, size: 32, offset: 8)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !59, line: 20, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !61, line: 26, baseType: !32)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "retinsn", scope: !2, file: !3, line: 27, type: !56, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !68, line: 106, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 296, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 37)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "tramp_ud", scope: !2, file: !3, line: 20, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 24, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 3)
!100 = !{!"rsp"}
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 2}
!104 = !{i32 8, !"cf-protection-branch", i32 1}
!105 = !{i32 4, !"function_return_thunk_extern", i32 1}
!106 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!107 = !{i32 1, !"Code Model", i32 2}
!108 = !{i32 1, !"override-stack-alignment", i32 8}
!109 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!110 = distinct !DISubprogram(name: "arch_static_call_transform", scope: !3, file: !3, line: 157, type: !111, scopeLine: 158, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !30, !30, !30, !113}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !115)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!116 = !{!117, !118, !119, !120}
!117 = !DILocalVariable(name: "site", arg: 1, scope: !110, file: !3, line: 157, type: !30)
!118 = !DILocalVariable(name: "tramp", arg: 2, scope: !110, file: !3, line: 157, type: !30)
!119 = !DILocalVariable(name: "func", arg: 3, scope: !110, file: !3, line: 157, type: !30)
!120 = !DILocalVariable(name: "tail", arg: 4, scope: !110, file: !3, line: 157, type: !113)
!121 = !DILocation(line: 157, column: 39, scope: !110)
!122 = !DILocation(line: 157, column: 51, scope: !110)
!123 = !DILocation(line: 157, column: 64, scope: !110)
!124 = !DILocation(line: 157, column: 75, scope: !110)
!125 = !DILocation(line: 159, column: 2, scope: !110)
!126 = !DILocation(line: 161, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !110, file: !3, line: 161, column: 6)
!128 = !DILocation(line: 161, column: 6, scope: !110)
!129 = !DILocation(line: 162, column: 26, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !3, line: 161, column: 13)
!131 = !DILocation(line: 162, column: 3, scope: !130)
!132 = !DILocation(line: 163, column: 27, scope: !130)
!133 = !DILocation(line: 163, column: 45, scope: !130)
!134 = !DILocation(line: 163, column: 44, scope: !130)
!135 = !DILocation(line: 163, column: 34, scope: !130)
!136 = !DILocation(line: 163, column: 58, scope: !130)
!137 = !DILocation(line: 163, column: 3, scope: !130)
!138 = !DILocation(line: 164, column: 2, scope: !130)
!139 = !DILocation(line: 166, column: 52, scope: !140)
!140 = distinct !DILexicalBlock(scope: !110, file: !3, line: 166, column: 6)
!141 = !DILocation(line: 166, column: 6, scope: !110)
!142 = !DILocation(line: 167, column: 26, scope: !143)
!143 = distinct !DILexicalBlock(scope: !140, file: !3, line: 166, column: 58)
!144 = !DILocation(line: 167, column: 32, scope: !143)
!145 = !{i8 0, i8 2}
!146 = !{}
!147 = !DILocation(line: 167, column: 3, scope: !143)
!148 = !DILocation(line: 168, column: 27, scope: !143)
!149 = !DILocation(line: 168, column: 44, scope: !143)
!150 = !DILocation(line: 168, column: 43, scope: !143)
!151 = !DILocation(line: 168, column: 50, scope: !143)
!152 = !DILocation(line: 168, column: 33, scope: !143)
!153 = !DILocation(line: 168, column: 57, scope: !143)
!154 = !DILocation(line: 168, column: 3, scope: !143)
!155 = !DILocation(line: 169, column: 2, scope: !143)
!156 = !DILocation(line: 171, column: 2, scope: !110)
!157 = !DILocation(line: 172, column: 1, scope: !110)
!158 = !DISubprogram(name: "mutex_lock", scope: !159, file: !159, line: 227, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!159 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!160 = !DISubroutineType(types: !161)
!161 = !{null, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !159, line: 66, size: 256, elements: !164)
!164 = !{!165, !175, !206, !211}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !163, file: !159, line: 67, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !167, line: 13, baseType: !168)
!167 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 181, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 179, size: 64, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !169, file: !114, line: 180, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !59, line: 22, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !61, line: 30, baseType: !174)
!174 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !163, file: !159, line: 68, baseType: !176, size: 32, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !177, line: 23, baseType: !178)
!177 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !177, line: 14, size: 32, elements: !179)
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !178, file: !177, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !193, !198}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !114, line: 173, baseType: !32, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !194, file: !182, line: 25, baseType: !58, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !194, file: !182, line: 26, baseType: !58, size: 8, offset: 8)
!198 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !199, size: 32)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !200)
!200 = !{!201, !205}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !199, file: !182, line: 29, baseType: !202, size: 16)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !59, line: 19, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !61, line: 24, baseType: !204)
!204 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !199, file: !182, line: 30, baseType: !202, size: 16, offset: 16)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !163, file: !159, line: 70, baseType: !207, size: 32, offset: 96)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !208, line: 15, size: 32, elements: !209)
!208 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!209 = !{!210}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !207, file: !208, line: 20, baseType: !189, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !163, file: !159, line: 72, baseType: !212, size: 128, offset: 128)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 190, size: 128, elements: !213)
!213 = !{!214, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !212, file: !114, line: 191, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !212, file: !114, line: 191, baseType: !215, size: 64, offset: 64)
!217 = distinct !DISubprogram(name: "__static_call_validate", scope: !3, file: !3, line: 114, type: !218, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !221)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !220, !113, !113}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!221 = !{!222, !223, !224, !225}
!222 = !DILocalVariable(name: "insn", arg: 1, scope: !217, file: !3, line: 114, type: !220)
!223 = !DILocalVariable(name: "tail", arg: 2, scope: !217, file: !3, line: 114, type: !113)
!224 = !DILocalVariable(name: "tramp", arg: 3, scope: !217, file: !3, line: 114, type: !113)
!225 = !DILocalVariable(name: "opcode", scope: !217, file: !3, line: 116, type: !58)
!226 = !DILocation(line: 114, column: 40, scope: !217)
!227 = !DILocation(line: 114, column: 51, scope: !217)
!228 = !DILocation(line: 114, column: 62, scope: !217)
!229 = !DILocation(line: 116, column: 2, scope: !217)
!230 = !DILocation(line: 116, column: 5, scope: !217)
!231 = !DILocation(line: 116, column: 14, scope: !217)
!232 = !DILocation(line: 118, column: 6, scope: !233)
!233 = distinct !DILexicalBlock(scope: !217, file: !3, line: 118, column: 6)
!234 = !DILocation(line: 118, column: 12, scope: !233)
!235 = !DILocation(line: 118, column: 22, scope: !233)
!236 = !DILocation(line: 118, column: 26, scope: !233)
!237 = !DILocation(line: 118, column: 15, scope: !233)
!238 = !DILocation(line: 118, column: 6, scope: !217)
!239 = !DILocation(line: 119, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 119, column: 3)
!241 = distinct !DILexicalBlock(scope: !233, file: !3, line: 118, column: 44)
!242 = !DILocation(line: 119, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 119, column: 3)
!244 = !DILocation(line: 120, column: 3, scope: !241)
!245 = !DILocation(line: 120, column: 3, scope: !246)
!246 = distinct !DILexicalBlock(scope: !241, file: !3, line: 120, column: 3)
!247 = !DILocation(line: 120, column: 3, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !3, line: 120, column: 3)
!249 = !DILocation(line: 120, column: 3, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 120, column: 3)
!251 = !{i64 2152635535, i64 2152635564, i64 2152635610, i64 2152635668, i64 2152635722, i64 2152635776, i64 2152635831, i64 2152635862}
!252 = !DILocation(line: 121, column: 2, scope: !241)
!253 = !DILocation(line: 123, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !217, file: !3, line: 123, column: 6)
!255 = !DILocation(line: 123, column: 6, scope: !217)
!256 = !DILocation(line: 124, column: 7, scope: !257)
!257 = distinct !DILexicalBlock(scope: !258, file: !3, line: 124, column: 7)
!258 = distinct !DILexicalBlock(scope: !254, file: !3, line: 123, column: 12)
!259 = !DILocation(line: 124, column: 14, scope: !257)
!260 = !DILocation(line: 124, column: 35, scope: !257)
!261 = !DILocation(line: 125, column: 7, scope: !257)
!262 = !DILocation(line: 125, column: 14, scope: !257)
!263 = !DILocation(line: 125, column: 33, scope: !257)
!264 = !DILocation(line: 126, column: 16, scope: !257)
!265 = !DILocation(line: 126, column: 7, scope: !257)
!266 = !DILocation(line: 124, column: 7, scope: !258)
!267 = !DILocation(line: 127, column: 4, scope: !257)
!268 = !DILocation(line: 128, column: 2, scope: !258)
!269 = !DILocation(line: 129, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !271, file: !3, line: 129, column: 7)
!271 = distinct !DILexicalBlock(scope: !254, file: !3, line: 128, column: 9)
!272 = !DILocation(line: 129, column: 14, scope: !270)
!273 = !DILocation(line: 129, column: 34, scope: !270)
!274 = !DILocation(line: 130, column: 15, scope: !270)
!275 = !DILocation(line: 130, column: 21, scope: !270)
!276 = !DILocation(line: 130, column: 8, scope: !270)
!277 = !DILocation(line: 130, column: 37, scope: !270)
!278 = !DILocation(line: 131, column: 15, scope: !270)
!279 = !DILocation(line: 131, column: 8, scope: !270)
!280 = !DILocation(line: 129, column: 7, scope: !271)
!281 = !DILocation(line: 132, column: 4, scope: !270)
!282 = !DILocation(line: 138, column: 2, scope: !283)
!283 = distinct !DILexicalBlock(scope: !217, file: !3, line: 138, column: 2)
!284 = !DILocation(line: 138, column: 2, scope: !285)
!285 = distinct !DILexicalBlock(scope: !283, file: !3, line: 138, column: 2)
!286 = !DILocation(line: 139, column: 2, scope: !217)
!287 = !DILocation(line: 139, column: 2, scope: !288)
!288 = distinct !DILexicalBlock(scope: !217, file: !3, line: 139, column: 2)
!289 = !DILocation(line: 139, column: 2, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !3, line: 139, column: 2)
!291 = !DILocation(line: 139, column: 2, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !3, line: 139, column: 2)
!293 = !{i64 2152637004, i64 2152637033, i64 2152637079, i64 2152637137, i64 2152637191, i64 2152637245, i64 2152637300, i64 2152637331}
!294 = !DILocation(line: 140, column: 1, scope: !217)
!295 = distinct !DISubprogram(name: "__static_call_transform", scope: !3, file: !3, line: 53, type: !296, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !30, !22, !30, !113}
!298 = !{!299, !300, !301, !302, !303, !304, !305, !306, !307}
!299 = !DILocalVariable(name: "insn", arg: 1, scope: !295, file: !3, line: 53, type: !30)
!300 = !DILocalVariable(name: "type", arg: 2, scope: !295, file: !3, line: 53, type: !22)
!301 = !DILocalVariable(name: "func", arg: 3, scope: !295, file: !3, line: 54, type: !30)
!302 = !DILocalVariable(name: "modinit", arg: 4, scope: !295, file: !3, line: 54, type: !113)
!303 = !DILocalVariable(name: "emulate", scope: !295, file: !3, line: 56, type: !71)
!304 = !DILocalVariable(name: "size", scope: !295, file: !3, line: 57, type: !32)
!305 = !DILocalVariable(name: "code", scope: !295, file: !3, line: 58, type: !71)
!306 = !DILocalVariable(name: "op", scope: !295, file: !3, line: 59, type: !58)
!307 = !DILocalVariable(name: "buf", scope: !295, file: !3, line: 59, type: !308)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 48, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 6)
!311 = !DILocation(line: 53, column: 49, scope: !295)
!312 = !DILocation(line: 53, column: 70, scope: !295)
!313 = !DILocation(line: 54, column: 14, scope: !295)
!314 = !DILocation(line: 54, column: 25, scope: !295)
!315 = !DILocation(line: 56, column: 2, scope: !295)
!316 = !DILocation(line: 56, column: 14, scope: !295)
!317 = !DILocation(line: 57, column: 2, scope: !295)
!318 = !DILocation(line: 57, column: 6, scope: !295)
!319 = !DILocation(line: 58, column: 2, scope: !295)
!320 = !DILocation(line: 58, column: 14, scope: !295)
!321 = !DILocation(line: 59, column: 2, scope: !295)
!322 = !DILocation(line: 59, column: 5, scope: !295)
!323 = !DILocation(line: 59, column: 9, scope: !295)
!324 = !DILocation(line: 61, column: 7, scope: !325)
!325 = distinct !DILexicalBlock(scope: !295, file: !3, line: 61, column: 6)
!326 = !DILocation(line: 61, column: 12, scope: !325)
!327 = !DILocation(line: 61, column: 19, scope: !325)
!328 = !DILocation(line: 61, column: 22, scope: !325)
!329 = !DILocation(line: 61, column: 27, scope: !325)
!330 = !DILocation(line: 61, column: 35, scope: !325)
!331 = !DILocation(line: 61, column: 53, scope: !325)
!332 = !DILocation(line: 61, column: 44, scope: !325)
!333 = !DILocation(line: 61, column: 42, scope: !325)
!334 = !DILocation(line: 61, column: 38, scope: !325)
!335 = !DILocation(line: 61, column: 6, scope: !295)
!336 = !DILocation(line: 62, column: 8, scope: !325)
!337 = !DILocation(line: 62, column: 3, scope: !325)
!338 = !DILocation(line: 64, column: 10, scope: !295)
!339 = !DILocation(line: 64, column: 2, scope: !295)
!340 = !DILocation(line: 66, column: 41, scope: !341)
!341 = distinct !DILexicalBlock(scope: !295, file: !3, line: 64, column: 16)
!342 = !DILocation(line: 66, column: 10, scope: !341)
!343 = !DILocation(line: 66, column: 8, scope: !341)
!344 = !DILocation(line: 67, column: 42, scope: !341)
!345 = !DILocation(line: 67, column: 48, scope: !341)
!346 = !DILocation(line: 67, column: 10, scope: !341)
!347 = !DILocation(line: 67, column: 8, scope: !341)
!348 = !DILocation(line: 68, column: 7, scope: !349)
!349 = distinct !DILexicalBlock(scope: !341, file: !3, line: 68, column: 7)
!350 = !DILocation(line: 68, column: 12, scope: !349)
!351 = !DILocation(line: 68, column: 7, scope: !341)
!352 = !DILocation(line: 69, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !349, file: !3, line: 68, column: 39)
!354 = !DILocation(line: 69, column: 12, scope: !353)
!355 = !DILocation(line: 70, column: 9, scope: !353)
!356 = !DILocation(line: 71, column: 3, scope: !353)
!357 = !DILocation(line: 73, column: 3, scope: !341)
!358 = !DILocation(line: 76, column: 10, scope: !341)
!359 = !DILocation(line: 76, column: 8, scope: !341)
!360 = !DILocation(line: 77, column: 3, scope: !341)
!361 = !DILocation(line: 80, column: 43, scope: !341)
!362 = !DILocation(line: 80, column: 49, scope: !341)
!363 = !DILocation(line: 80, column: 10, scope: !341)
!364 = !DILocation(line: 80, column: 8, scope: !341)
!365 = !DILocation(line: 81, column: 3, scope: !341)
!366 = !DILocation(line: 84, column: 7, scope: !341)
!367 = !DILocation(line: 84, column: 7, scope: !368)
!368 = distinct !DILexicalBlock(scope: !341, file: !3, line: 84, column: 7)
!369 = !DILocation(line: 85, column: 44, scope: !368)
!370 = !DILocation(line: 85, column: 50, scope: !368)
!371 = !DILocation(line: 85, column: 11, scope: !368)
!372 = !DILocation(line: 85, column: 9, scope: !368)
!373 = !DILocation(line: 85, column: 4, scope: !368)
!374 = !DILocation(line: 87, column: 9, scope: !368)
!375 = !DILocation(line: 88, column: 3, scope: !341)
!376 = !DILocation(line: 91, column: 8, scope: !377)
!377 = distinct !DILexicalBlock(scope: !341, file: !3, line: 91, column: 7)
!378 = !DILocation(line: 91, column: 7, scope: !341)
!379 = !DILocation(line: 92, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !377, file: !3, line: 91, column: 14)
!381 = !DILocation(line: 93, column: 8, scope: !380)
!382 = !DILocation(line: 93, column: 8, scope: !383)
!383 = distinct !DILexicalBlock(scope: !380, file: !3, line: 93, column: 8)
!384 = !DILocation(line: 94, column: 12, scope: !383)
!385 = !DILocation(line: 94, column: 10, scope: !383)
!386 = !DILocation(line: 94, column: 5, scope: !383)
!387 = !DILocation(line: 95, column: 3, scope: !380)
!388 = !DILocation(line: 97, column: 3, scope: !341)
!389 = !DILocation(line: 97, column: 10, scope: !341)
!390 = !DILocation(line: 98, column: 19, scope: !341)
!391 = !DILocation(line: 98, column: 22, scope: !341)
!392 = !DILocation(line: 98, column: 26, scope: !341)
!393 = !DILocation(line: 98, column: 30, scope: !341)
!394 = !DILocation(line: 98, column: 34, scope: !341)
!395 = !DILocation(line: 98, column: 38, scope: !341)
!396 = !DILocation(line: 98, column: 3, scope: !341)
!397 = !DILocation(line: 99, column: 10, scope: !341)
!398 = !DILocation(line: 99, column: 8, scope: !341)
!399 = !DILocation(line: 100, column: 8, scope: !341)
!400 = !DILocation(line: 102, column: 3, scope: !341)
!401 = !DILocation(line: 105, column: 13, scope: !402)
!402 = distinct !DILexicalBlock(scope: !295, file: !3, line: 105, column: 6)
!403 = !DILocation(line: 105, column: 19, scope: !402)
!404 = !DILocation(line: 105, column: 25, scope: !402)
!405 = !DILocation(line: 105, column: 6, scope: !402)
!406 = !DILocation(line: 105, column: 31, scope: !402)
!407 = !DILocation(line: 105, column: 6, scope: !295)
!408 = !DILocation(line: 106, column: 3, scope: !402)
!409 = !DILocation(line: 108, column: 6, scope: !410)
!410 = distinct !DILexicalBlock(scope: !295, file: !3, line: 108, column: 6)
!411 = !DILocation(line: 108, column: 19, scope: !410)
!412 = !DILocation(line: 108, column: 37, scope: !410)
!413 = !DILocation(line: 108, column: 40, scope: !410)
!414 = !DILocation(line: 108, column: 6, scope: !295)
!415 = !DILocation(line: 109, column: 26, scope: !410)
!416 = !DILocation(line: 109, column: 32, scope: !410)
!417 = !DILocation(line: 109, column: 38, scope: !410)
!418 = !DILocation(line: 109, column: 10, scope: !410)
!419 = !DILocation(line: 109, column: 3, scope: !410)
!420 = !DILocation(line: 111, column: 15, scope: !295)
!421 = !DILocation(line: 111, column: 21, scope: !295)
!422 = !DILocation(line: 111, column: 27, scope: !295)
!423 = !DILocation(line: 111, column: 33, scope: !295)
!424 = !DILocation(line: 111, column: 2, scope: !295)
!425 = !DILocation(line: 112, column: 1, scope: !295)
!426 = distinct !DISubprogram(name: "__sc_insn", scope: !3, file: !3, line: 142, type: !427, scopeLine: 143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!22, !113, !113}
!429 = !{!430, !431}
!430 = !DILocalVariable(name: "null", arg: 1, scope: !426, file: !3, line: 142, type: !113)
!431 = !DILocalVariable(name: "tail", arg: 2, scope: !426, file: !3, line: 142, type: !113)
!432 = !DILocation(line: 142, column: 45, scope: !426)
!433 = !DILocation(line: 142, column: 56, scope: !426)
!434 = !DILocation(line: 154, column: 11, scope: !426)
!435 = !DILocation(line: 154, column: 10, scope: !426)
!436 = !DILocation(line: 154, column: 18, scope: !426)
!437 = !DILocation(line: 154, column: 16, scope: !426)
!438 = !DILocation(line: 154, column: 2, scope: !426)
!439 = !DISubprogram(name: "mutex_unlock", scope: !159, file: !159, line: 246, type: !160, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!440 = distinct !DISubprogram(name: "__static_call_update_early", scope: !3, file: !3, line: 175, type: !441, scopeLine: 176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !443)
!441 = !DISubroutineType(types: !442)
!442 = !{null, !30, !30}
!443 = !{!444, !445}
!444 = !DILocalVariable(name: "tramp", arg: 1, scope: !440, file: !3, line: 175, type: !30)
!445 = !DILocalVariable(name: "func", arg: 2, scope: !440, file: !3, line: 175, type: !30)
!446 = !DILocation(line: 175, column: 47, scope: !440)
!447 = !DILocation(line: 175, column: 60, scope: !440)
!448 = !DILocation(line: 177, column: 2, scope: !440)
!449 = !DILocation(line: 177, column: 2, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !3, line: 177, column: 2)
!451 = distinct !DILexicalBlock(scope: !440, file: !3, line: 177, column: 2)
!452 = !DILocation(line: 177, column: 2, scope: !451)
!453 = !DILocation(line: 177, column: 2, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !3, line: 177, column: 2)
!455 = !DILocation(line: 177, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 177, column: 2)
!457 = !DILocation(line: 177, column: 2, scope: !458)
!458 = distinct !DILexicalBlock(scope: !454, file: !3, line: 177, column: 2)
!459 = !{i64 2152641097, i64 2152641126, i64 2152641172, i64 2152641230, i64 2152641284, i64 2152641338, i64 2152641393, i64 2152641424}
!460 = !DILocation(line: 178, column: 2, scope: !440)
!461 = !DILocation(line: 178, column: 2, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 178, column: 2)
!463 = distinct !DILexicalBlock(scope: !440, file: !3, line: 178, column: 2)
!464 = !DILocation(line: 178, column: 2, scope: !463)
!465 = !DILocation(line: 178, column: 2, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !3, line: 178, column: 2)
!467 = !DILocation(line: 178, column: 2, scope: !468)
!468 = distinct !DILexicalBlock(scope: !466, file: !3, line: 178, column: 2)
!469 = !DILocation(line: 178, column: 2, scope: !470)
!470 = distinct !DILexicalBlock(scope: !466, file: !3, line: 178, column: 2)
!471 = !{i64 2152642111, i64 2152642140, i64 2152642186, i64 2152642244, i64 2152642298, i64 2152642352, i64 2152642407, i64 2152642438}
!472 = !DILocation(line: 179, column: 18, scope: !440)
!473 = !DILocation(line: 179, column: 44, scope: !440)
!474 = !DILocation(line: 179, column: 51, scope: !440)
!475 = !DILocation(line: 179, column: 2, scope: !440)
!476 = !DILocation(line: 180, column: 2, scope: !440)
!477 = !DILocation(line: 181, column: 1, scope: !440)
!478 = distinct !DISubprogram(name: "__text_gen_insn", scope: !68, file: !68, line: 102, type: !479, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !481)
!479 = !DISubroutineType(types: !480)
!480 = !{null, !30, !58, !71, !71, !32}
!481 = !{!482, !483, !484, !485, !486, !487}
!482 = !DILocalVariable(name: "buf", arg: 1, scope: !478, file: !68, line: 102, type: !30)
!483 = !DILocalVariable(name: "opcode", arg: 2, scope: !478, file: !68, line: 102, type: !58)
!484 = !DILocalVariable(name: "addr", arg: 3, scope: !478, file: !68, line: 102, type: !71)
!485 = !DILocalVariable(name: "dest", arg: 4, scope: !478, file: !68, line: 102, type: !71)
!486 = !DILocalVariable(name: "size", arg: 5, scope: !478, file: !68, line: 102, type: !32)
!487 = !DILocalVariable(name: "insn", scope: !478, file: !68, line: 104, type: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!489 = !DILocation(line: 102, column: 28, scope: !478)
!490 = !DILocation(line: 102, column: 36, scope: !478)
!491 = !DILocation(line: 102, column: 56, scope: !478)
!492 = !DILocation(line: 102, column: 74, scope: !478)
!493 = !DILocation(line: 102, column: 84, scope: !478)
!494 = !DILocation(line: 104, column: 2, scope: !478)
!495 = !DILocation(line: 104, column: 24, scope: !478)
!496 = !DILocation(line: 104, column: 31, scope: !478)
!497 = !DILocation(line: 106, column: 2, scope: !478)
!498 = !DILocation(line: 106, column: 2, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !68, line: 106, column: 2)
!500 = distinct !DILexicalBlock(scope: !478, file: !68, line: 106, column: 2)
!501 = !DILocation(line: 106, column: 2, scope: !500)
!502 = !DILocation(line: 106, column: 2, scope: !503)
!503 = distinct !DILexicalBlock(scope: !499, file: !68, line: 106, column: 2)
!504 = !DILocation(line: 106, column: 2, scope: !505)
!505 = distinct !DILexicalBlock(scope: !503, file: !68, line: 106, column: 2)
!506 = !DILocation(line: 106, column: 2, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !68, line: 106, column: 2)
!508 = !{i64 2152590178, i64 2152590207, i64 2152590253, i64 2152590311, i64 2152590365, i64 2152590419, i64 2152590474, i64 2152590505}
!509 = !DILocation(line: 113, column: 2, scope: !478)
!510 = !{i64 2152590906}
!511 = !DILocation(line: 114, column: 2, scope: !478)
!512 = !{i64 2152590954}
!513 = !DILocation(line: 115, column: 2, scope: !478)
!514 = !{i64 2152591002}
!515 = !DILocation(line: 117, column: 17, scope: !478)
!516 = !DILocation(line: 117, column: 2, scope: !478)
!517 = !DILocation(line: 117, column: 8, scope: !478)
!518 = !DILocation(line: 117, column: 15, scope: !478)
!519 = !DILocation(line: 119, column: 6, scope: !520)
!520 = distinct !DILexicalBlock(scope: !478, file: !68, line: 119, column: 6)
!521 = !DILocation(line: 119, column: 11, scope: !520)
!522 = !DILocation(line: 119, column: 6, scope: !478)
!523 = !DILocation(line: 120, column: 22, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !68, line: 119, column: 16)
!525 = !DILocation(line: 120, column: 16, scope: !524)
!526 = !DILocation(line: 120, column: 36, scope: !524)
!527 = !DILocation(line: 120, column: 43, scope: !524)
!528 = !DILocation(line: 120, column: 41, scope: !524)
!529 = !DILocation(line: 120, column: 29, scope: !524)
!530 = !DILocation(line: 120, column: 27, scope: !524)
!531 = !DILocation(line: 120, column: 3, scope: !524)
!532 = !DILocation(line: 120, column: 9, scope: !524)
!533 = !DILocation(line: 120, column: 14, scope: !524)
!534 = !DILocation(line: 121, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !524, file: !68, line: 121, column: 7)
!536 = !DILocation(line: 121, column: 12, scope: !535)
!537 = !DILocation(line: 121, column: 7, scope: !524)
!538 = !DILocation(line: 126, column: 4, scope: !539)
!539 = distinct !DILexicalBlock(scope: !535, file: !68, line: 121, column: 18)
!540 = !DILocation(line: 126, column: 4, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !68, line: 126, column: 4)
!542 = distinct !DILexicalBlock(scope: !539, file: !68, line: 126, column: 4)
!543 = !DILocation(line: 126, column: 4, scope: !542)
!544 = !DILocation(line: 126, column: 4, scope: !545)
!545 = distinct !DILexicalBlock(scope: !541, file: !68, line: 126, column: 4)
!546 = !DILocation(line: 126, column: 4, scope: !547)
!547 = distinct !DILexicalBlock(scope: !545, file: !68, line: 126, column: 4)
!548 = !DILocation(line: 126, column: 4, scope: !549)
!549 = distinct !DILexicalBlock(scope: !545, file: !68, line: 126, column: 4)
!550 = !{i64 2152591375, i64 2152591404, i64 2152591450, i64 2152591508, i64 2152591562, i64 2152591616, i64 2152591671, i64 2152591702}
!551 = !DILocation(line: 127, column: 3, scope: !539)
!552 = !DILocation(line: 128, column: 2, scope: !524)
!553 = !DILocation(line: 129, column: 1, scope: !478)
!554 = distinct !DISubprogram(name: "sync_core", scope: !555, file: !555, line: 58, type: !556, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!555 = !DIFile(filename: "./arch/x86/include/asm/sync_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df54d9b266e9d852766c238d820edc37")
!556 = !DISubroutineType(types: !557)
!557 = !{null}
!558 = !DILocation(line: 64, column: 6, scope: !554)
!559 = !DILocation(line: 64, column: 6, scope: !560)
!560 = distinct !DILexicalBlock(scope: !554, file: !555, line: 64, column: 6)
!561 = !DILocation(line: 65, column: 3, scope: !562)
!562 = distinct !DILexicalBlock(scope: !560, file: !555, line: 64, column: 45)
!563 = !DILocation(line: 66, column: 3, scope: !562)
!564 = !DILocation(line: 88, column: 2, scope: !554)
!565 = !DILocation(line: 89, column: 1, scope: !554)
!566 = distinct !DISubprogram(name: "__static_call_fixup", scope: !3, file: !3, line: 195, type: !567, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!113, !30, !58, !30}
!569 = !{!570, !571, !572, !573}
!570 = !DILocalVariable(name: "tramp", arg: 1, scope: !566, file: !3, line: 195, type: !30)
!571 = !DILocalVariable(name: "op", arg: 2, scope: !566, file: !3, line: 195, type: !58)
!572 = !DILocalVariable(name: "dest", arg: 3, scope: !566, file: !3, line: 195, type: !30)
!573 = !DILocalVariable(name: "addr", scope: !566, file: !3, line: 197, type: !31)
!574 = !DILocation(line: 195, column: 32, scope: !566)
!575 = !DILocation(line: 195, column: 42, scope: !566)
!576 = !DILocation(line: 195, column: 52, scope: !566)
!577 = !DILocation(line: 197, column: 2, scope: !566)
!578 = !DILocation(line: 197, column: 16, scope: !566)
!579 = !DILocation(line: 197, column: 38, scope: !566)
!580 = !DILocation(line: 197, column: 23, scope: !566)
!581 = !DILocation(line: 206, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !566, file: !3, line: 206, column: 6)
!583 = !DILocation(line: 206, column: 13, scope: !582)
!584 = !DILocation(line: 206, column: 33, scope: !582)
!585 = !DILocation(line: 206, column: 38, scope: !582)
!586 = !DILocation(line: 206, column: 43, scope: !582)
!587 = !DILocation(line: 206, column: 28, scope: !582)
!588 = !DILocation(line: 206, column: 59, scope: !582)
!589 = !DILocation(line: 207, column: 27, scope: !582)
!590 = !DILocation(line: 207, column: 32, scope: !582)
!591 = !DILocation(line: 207, column: 7, scope: !582)
!592 = !DILocation(line: 206, column: 6, scope: !566)
!593 = !DILocation(line: 208, column: 3, scope: !582)
!594 = !DILocation(line: 210, column: 13, scope: !595)
!595 = distinct !DILexicalBlock(scope: !566, file: !3, line: 210, column: 6)
!596 = !DILocation(line: 210, column: 18, scope: !595)
!597 = !DILocation(line: 210, column: 6, scope: !595)
!598 = !DILocation(line: 210, column: 6, scope: !566)
!599 = !DILocation(line: 212, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !595, file: !3, line: 210, column: 36)
!601 = !DILocation(line: 215, column: 2, scope: !566)
!602 = !DILocation(line: 216, column: 6, scope: !603)
!603 = distinct !DILexicalBlock(scope: !566, file: !3, line: 216, column: 6)
!604 = !DILocation(line: 216, column: 9, scope: !603)
!605 = !DILocation(line: 216, column: 28, scope: !603)
!606 = !DILocation(line: 216, column: 31, scope: !603)
!607 = !DILocation(line: 216, column: 36, scope: !603)
!608 = !DILocation(line: 216, column: 6, scope: !566)
!609 = !DILocation(line: 217, column: 27, scope: !603)
!610 = !DILocation(line: 217, column: 3, scope: !603)
!611 = !DILocation(line: 218, column: 2, scope: !566)
!612 = !DILocation(line: 220, column: 2, scope: !566)
!613 = !DILocation(line: 221, column: 1, scope: !566)
!614 = !DISubprogram(name: "kernel_text_address", scope: !12, file: !12, line: 215, type: !615, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!615 = !DISubroutineType(types: !616)
!616 = !{!32, !31}
!617 = !DISubprogram(name: "memcmp", scope: !618, file: !618, line: 196, type: !619, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!618 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!619 = !DISubroutineType(types: !620)
!620 = !{!32, !71, !71, !621}
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !622, line: 72, baseType: !623)
!622 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !622, line: 16, baseType: !31)
!624 = !DISubprogram(name: "_printk", scope: !625, file: !625, line: 153, type: !626, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!625 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!626 = !DISubroutineType(types: !627)
!627 = !{!32, !34, null}
!628 = distinct !DISubprogram(name: "__is_Jcc", scope: !3, file: !3, line: 29, type: !629, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !631)
!629 = !DISubroutineType(types: !630)
!630 = !{!58, !220}
!631 = !{!632, !633, !634}
!632 = !DILocalVariable(name: "insn", arg: 1, scope: !628, file: !3, line: 29, type: !220)
!633 = !DILocalVariable(name: "ret", scope: !628, file: !3, line: 31, type: !58)
!634 = !DILocalVariable(name: "tmp", scope: !635, file: !3, line: 34, type: !58)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 33, column: 23)
!636 = distinct !DILexicalBlock(scope: !628, file: !3, line: 33, column: 6)
!637 = !DILocation(line: 29, column: 24, scope: !628)
!638 = !DILocation(line: 31, column: 2, scope: !628)
!639 = !DILocation(line: 31, column: 5, scope: !628)
!640 = !DILocation(line: 33, column: 6, scope: !636)
!641 = !DILocation(line: 33, column: 14, scope: !636)
!642 = !DILocation(line: 33, column: 6, scope: !628)
!643 = !DILocation(line: 34, column: 3, scope: !635)
!644 = !DILocation(line: 34, column: 6, scope: !635)
!645 = !DILocation(line: 34, column: 12, scope: !635)
!646 = !DILocation(line: 35, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !635, file: !3, line: 35, column: 7)
!648 = !DILocation(line: 35, column: 12, scope: !647)
!649 = !DILocation(line: 35, column: 20, scope: !647)
!650 = !DILocation(line: 35, column: 7, scope: !635)
!651 = !DILocation(line: 36, column: 10, scope: !647)
!652 = !DILocation(line: 36, column: 8, scope: !647)
!653 = !DILocation(line: 36, column: 4, scope: !647)
!654 = !DILocation(line: 37, column: 2, scope: !636)
!655 = !DILocation(line: 37, column: 2, scope: !635)
!656 = !DILocation(line: 39, column: 9, scope: !628)
!657 = !DILocation(line: 40, column: 1, scope: !628)
!658 = !DILocation(line: 39, column: 2, scope: !628)
!659 = !DISubprogram(name: "callthunks_translate_call_dest", scope: !660, file: !660, line: 115, type: !661, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!660 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ec86911224c4b764298f6e976616738c")
!661 = !DISubroutineType(types: !662)
!662 = !{!30, !30}
!663 = !DILocation(line: 132, column: 24, scope: !67)
!664 = !DILocation(line: 132, column: 44, scope: !67)
!665 = !DILocation(line: 132, column: 62, scope: !67)
!666 = !DILocation(line: 135, column: 25, scope: !67)
!667 = !DILocation(line: 135, column: 33, scope: !67)
!668 = !DILocation(line: 135, column: 39, scope: !67)
!669 = !DILocation(line: 135, column: 62, scope: !67)
!670 = !DILocation(line: 135, column: 45, scope: !67)
!671 = !DILocation(line: 135, column: 2, scope: !67)
!672 = !DILocation(line: 136, column: 2, scope: !67)
!673 = distinct !DISubprogram(name: "arch_test_bit", scope: !674, file: !674, line: 237, type: !675, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !680)
!674 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!675 = !DISubroutineType(types: !676)
!676 = !{!113, !31, !677}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!680 = !{!681, !682}
!681 = !DILocalVariable(name: "nr", arg: 1, scope: !673, file: !674, line: 237, type: !31)
!682 = !DILocalVariable(name: "addr", arg: 2, scope: !673, file: !674, line: 237, type: !677)
!683 = !DILocation(line: 237, column: 29, scope: !673)
!684 = !DILocation(line: 237, column: 63, scope: !673)
!685 = !DILocation(line: 239, column: 30, scope: !673)
!686 = !DILocation(line: 239, column: 9, scope: !673)
!687 = !DILocation(line: 239, column: 54, scope: !673)
!688 = !DILocation(line: 239, column: 58, scope: !673)
!689 = !DILocation(line: 239, column: 36, scope: !673)
!690 = !DILocation(line: 240, column: 26, scope: !673)
!691 = !DILocation(line: 240, column: 30, scope: !673)
!692 = !DILocation(line: 240, column: 8, scope: !673)
!693 = !DILocation(line: 239, column: 2, scope: !673)
!694 = distinct !DISubprogram(name: "_static_cpu_has", scope: !695, file: !695, line: 173, type: !696, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !698)
!695 = !DIFile(filename: "./arch/x86/include/asm/cpufeature.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "90439827e3f106d11a8d96ab90603ff3")
!696 = !DISubroutineType(types: !697)
!697 = !{!113, !202}
!698 = !{!699, !700, !701}
!699 = !DILocalVariable(name: "bit", arg: 1, scope: !694, file: !695, line: 173, type: !202)
!700 = !DILabel(scope: !694, name: "t_yes", file: !695, line: 187)
!701 = !DILabel(scope: !694, name: "t_no", file: !695, line: 189)
!702 = !DILocation(line: 173, column: 49, scope: !694)
!703 = !DILocation(line: 183, column: 24, scope: !694)
!704 = !DILocation(line: 184, column: 30, scope: !694)
!705 = !DILocation(line: 184, column: 34, scope: !694)
!706 = !DILocation(line: 184, column: 26, scope: !694)
!707 = !DILocation(line: 185, column: 70, scope: !694)
!708 = !DILocation(line: 185, column: 74, scope: !694)
!709 = !DILocation(line: 185, column: 25, scope: !694)
!710 = !DILocation(line: 175, column: 2, scope: !694)
!711 = !{i64 2149647057, i64 2149647090, i64 2149647096, i64 2149647112, i64 2149647131, i64 2149647162, i64 2149648115, i64 2149646704, i64 2149648121, i64 2149648169, i64 2149648233, i64 2149648297, i64 2149648354, i64 2149648561, i64 2149648609, i64 2149648673, i64 2149648737, i64 2149648794, i64 2149646822, i64 2149646847, i64 2149649004, i64 2149649132, i64 2149649065, i64 2149649146, i64 2149649160, i64 2149649276, i64 2149649221, i64 2149649290, i64 2149646981, i64 1773802, i64 1773842, i64 1773851, i64 1773901, i64 1773922, i64 1773942}
!712 = !DILocation(line: 187, column: 1, scope: !694)
!713 = !DILocation(line: 188, column: 2, scope: !694)
!714 = !DILocation(line: 189, column: 1, scope: !694)
!715 = !DILocation(line: 190, column: 2, scope: !694)
!716 = !DILocation(line: 191, column: 1, scope: !694)
!717 = !DISubprogram(name: "text_poke_early", scope: !68, file: !68, line: 28, type: !718, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!718 = !DISubroutineType(types: !719)
!719 = !{null, !30, !71, !720}
!720 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !621)
!721 = !DISubprogram(name: "text_poke_bp", scope: !68, file: !68, line: 51, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !30, !71, !720, !71}
!724 = distinct !DISubprogram(name: "text_opcode_size", scope: !68, file: !68, line: 73, type: !725, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !727)
!725 = !DISubroutineType(types: !726)
!726 = !{!32, !58}
!727 = !{!728, !729}
!728 = !DILocalVariable(name: "opcode", arg: 1, scope: !724, file: !68, line: 73, type: !58)
!729 = !DILocalVariable(name: "size", scope: !724, file: !68, line: 75, type: !32)
!730 = !DILocation(line: 73, column: 48, scope: !724)
!731 = !DILocation(line: 75, column: 2, scope: !724)
!732 = !DILocation(line: 75, column: 6, scope: !724)
!733 = !DILocation(line: 80, column: 9, scope: !724)
!734 = !DILocation(line: 80, column: 2, scope: !724)
!735 = !DILocation(line: 81, column: 2, scope: !736)
!736 = distinct !DILexicalBlock(scope: !724, file: !68, line: 80, column: 17)
!737 = !DILocation(line: 82, column: 2, scope: !736)
!738 = !DILocation(line: 83, column: 2, scope: !736)
!739 = !DILocation(line: 84, column: 2, scope: !736)
!740 = !DILocation(line: 85, column: 2, scope: !736)
!741 = !DILocation(line: 90, column: 9, scope: !724)
!742 = !DILocation(line: 91, column: 1, scope: !724)
!743 = !DILocation(line: 90, column: 2, scope: !724)
!744 = distinct !DISubprogram(name: "constant_test_bit", scope: !674, file: !674, line: 204, type: !745, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !747)
!745 = !DISubroutineType(types: !746)
!746 = !{!113, !37, !677}
!747 = !{!748, !749}
!748 = !DILocalVariable(name: "nr", arg: 1, scope: !744, file: !674, line: 204, type: !37)
!749 = !DILocalVariable(name: "addr", arg: 2, scope: !744, file: !674, line: 204, type: !677)
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
!761 = distinct !DISubprogram(name: "variable_test_bit", scope: !674, file: !674, line: 224, type: !745, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !762)
!762 = !{!763, !764, !765}
!763 = !DILocalVariable(name: "nr", arg: 1, scope: !761, file: !674, line: 224, type: !37)
!764 = !DILocalVariable(name: "addr", arg: 2, scope: !761, file: !674, line: 224, type: !677)
!765 = !DILocalVariable(name: "oldbit", scope: !761, file: !674, line: 226, type: !113)
!766 = !DILocation(line: 224, column: 52, scope: !761)
!767 = !DILocation(line: 224, column: 86, scope: !761)
!768 = !DILocation(line: 226, column: 2, scope: !761)
!769 = !DILocation(line: 226, column: 7, scope: !761)
!770 = !DILocation(line: 231, column: 33, scope: !761)
!771 = !DILocation(line: 231, column: 46, scope: !761)
!772 = !DILocation(line: 228, column: 2, scope: !761)
!773 = !{i64 2148022214, i64 2148022288}
!774 = !DILocation(line: 233, column: 9, scope: !761)
!775 = !DILocation(line: 234, column: 1, scope: !761)
!776 = !DILocation(line: 233, column: 2, scope: !761)
!777 = distinct !DISubprogram(name: "serialize", scope: !778, file: !778, line: 220, type: !556, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!778 = !DIFile(filename: "./arch/x86/include/asm/special_insns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5112175c4157449df0ef45eea72943c3")
!779 = !DILocation(line: 223, column: 2, scope: !777)
!780 = !{i64 2103641}
!781 = !DILocation(line: 224, column: 1, scope: !777)
!782 = distinct !DISubprogram(name: "iret_to_self", scope: !555, file: !555, line: 22, type: !556, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!783 = !{!784}
!784 = !DILocalVariable(name: "tmp", scope: !782, file: !555, line: 24, type: !7)
!785 = !DILocation(line: 24, column: 2, scope: !782)
!786 = !DILocation(line: 24, column: 15, scope: !782)
!787 = !DILocation(line: 26, column: 2, scope: !782)
!788 = !{i64 4579960, i64 4579975, i64 4579993, i64 4580013, i64 4580038, i64 4580053, i64 4580074, i64 4580092, i64 4580110, i64 4580124}
!789 = !DILocation(line: 38, column: 1, scope: !782)

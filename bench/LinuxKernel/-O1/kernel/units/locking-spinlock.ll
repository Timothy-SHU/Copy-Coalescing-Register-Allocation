; ModuleID = 'kernel/locking/spinlock.c'
source_filename = "kernel/locking/spinlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_trylock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_trylock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_lock_irqsave ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_lock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_lock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_lock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_lock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_unlock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_unlock_irqrestore: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_unlock_irqrestore ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_unlock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_unlock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_spin_unlock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_spin_unlock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_lock_irqsave ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_lock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_lock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_lock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_lock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_unlock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_unlock_irqrestore: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_unlock_irqrestore ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_unlock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_unlock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_read_unlock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_read_unlock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_trylock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_trylock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_lock_nested: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_lock_nested ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_lock_irqsave ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_lock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_lock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_lock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_lock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_unlock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_unlock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_unlock_irqrestore: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_unlock_irqrestore ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_unlock_irq: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_unlock_irq ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol__raw_write_unlock_bh: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad _raw_write_unlock_bh ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_in_lock_functions: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad in_lock_functions ; .previous"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.pcpu_hot = type { %union.anon.0 }
%union.anon.0 = type { %struct.anon, [16 x i8] }
%struct.anon = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.rwlock_t = type { %struct.qrwlock }
%struct.qrwlock = type { %union.anon.4, %struct.qspinlock }
%union.anon.4 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.qspinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.anon.2 = type { i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@__UNIQUE_ID___addressable__raw_spin_trylock148 = internal global ptr @_raw_spin_trylock, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable__raw_spin_trylock_bh149 = internal global ptr @_raw_spin_trylock_bh, section ".discard.addressable", align 8, !dbg !31
@__UNIQUE_ID___addressable__raw_spin_lock150 = internal global ptr @_raw_spin_lock, section ".discard.addressable", align 8, !dbg !33
@__UNIQUE_ID___addressable__raw_spin_lock_irqsave151 = internal global ptr @_raw_spin_lock_irqsave, section ".discard.addressable", align 8, !dbg !35
@__UNIQUE_ID___addressable__raw_spin_lock_irq152 = internal global ptr @_raw_spin_lock_irq, section ".discard.addressable", align 8, !dbg !37
@__UNIQUE_ID___addressable__raw_spin_lock_bh153 = internal global ptr @_raw_spin_lock_bh, section ".discard.addressable", align 8, !dbg !39
@__UNIQUE_ID___addressable__raw_spin_unlock154 = internal global ptr @_raw_spin_unlock, section ".discard.addressable", align 8, !dbg !41
@__UNIQUE_ID___addressable__raw_spin_unlock_irqrestore155 = internal global ptr @_raw_spin_unlock_irqrestore, section ".discard.addressable", align 8, !dbg !43
@__UNIQUE_ID___addressable__raw_spin_unlock_irq156 = internal global ptr @_raw_spin_unlock_irq, section ".discard.addressable", align 8, !dbg !45
@__UNIQUE_ID___addressable__raw_spin_unlock_bh157 = internal global ptr @_raw_spin_unlock_bh, section ".discard.addressable", align 8, !dbg !47
@__UNIQUE_ID___addressable__raw_read_trylock158 = internal global ptr @_raw_read_trylock, section ".discard.addressable", align 8, !dbg !49
@__UNIQUE_ID___addressable__raw_read_lock159 = internal global ptr @_raw_read_lock, section ".discard.addressable", align 8, !dbg !51
@__UNIQUE_ID___addressable__raw_read_lock_irqsave160 = internal global ptr @_raw_read_lock_irqsave, section ".discard.addressable", align 8, !dbg !53
@__UNIQUE_ID___addressable__raw_read_lock_irq161 = internal global ptr @_raw_read_lock_irq, section ".discard.addressable", align 8, !dbg !55
@__UNIQUE_ID___addressable__raw_read_lock_bh162 = internal global ptr @_raw_read_lock_bh, section ".discard.addressable", align 8, !dbg !57
@__UNIQUE_ID___addressable__raw_read_unlock163 = internal global ptr @_raw_read_unlock, section ".discard.addressable", align 8, !dbg !59
@__UNIQUE_ID___addressable__raw_read_unlock_irqrestore164 = internal global ptr @_raw_read_unlock_irqrestore, section ".discard.addressable", align 8, !dbg !61
@__UNIQUE_ID___addressable__raw_read_unlock_irq165 = internal global ptr @_raw_read_unlock_irq, section ".discard.addressable", align 8, !dbg !63
@__UNIQUE_ID___addressable__raw_read_unlock_bh166 = internal global ptr @_raw_read_unlock_bh, section ".discard.addressable", align 8, !dbg !65
@__UNIQUE_ID___addressable__raw_write_trylock167 = internal global ptr @_raw_write_trylock, section ".discard.addressable", align 8, !dbg !67
@__UNIQUE_ID___addressable__raw_write_lock168 = internal global ptr @_raw_write_lock, section ".discard.addressable", align 8, !dbg !69
@__UNIQUE_ID___addressable__raw_write_lock_nested169 = internal global ptr @_raw_write_lock_nested, section ".discard.addressable", align 8, !dbg !71
@__UNIQUE_ID___addressable__raw_write_lock_irqsave170 = internal global ptr @_raw_write_lock_irqsave, section ".discard.addressable", align 8, !dbg !73
@__UNIQUE_ID___addressable__raw_write_lock_irq171 = internal global ptr @_raw_write_lock_irq, section ".discard.addressable", align 8, !dbg !75
@__UNIQUE_ID___addressable__raw_write_lock_bh172 = internal global ptr @_raw_write_lock_bh, section ".discard.addressable", align 8, !dbg !77
@__UNIQUE_ID___addressable__raw_write_unlock173 = internal global ptr @_raw_write_unlock, section ".discard.addressable", align 8, !dbg !79
@__UNIQUE_ID___addressable__raw_write_unlock_irqrestore174 = internal global ptr @_raw_write_unlock_irqrestore, section ".discard.addressable", align 8, !dbg !81
@__UNIQUE_ID___addressable__raw_write_unlock_irq175 = internal global ptr @_raw_write_unlock_irq, section ".discard.addressable", align 8, !dbg !83
@__UNIQUE_ID___addressable__raw_write_unlock_bh176 = internal global ptr @_raw_write_unlock_bh, section ".discard.addressable", align 8, !dbg !85
@__lock_text_start = external dso_local global [0 x i8], align 1
@__lock_text_end = external dso_local global [0 x i8], align 1
@__UNIQUE_ID___addressable_in_lock_functions177 = internal global ptr @in_lock_functions, section ".discard.addressable", align 8, !dbg !87
@__raw_spin_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule49 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !89
@__SCK__preempt_schedule = external dso_local global %struct.static_call_key, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@__raw_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule50 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !129
@__raw_spin_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule51 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !136
@__raw_spin_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule52 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !149
@__raw_read_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule53 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !154
@__raw_read_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule56 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !185
@__raw_read_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule57 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !192
@__raw_read_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule58 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !205
@__raw_write_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule54 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !210
@__raw_write_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule55 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !215
@__raw_write_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule59 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !220
@__raw_write_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule60 = internal global ptr @__SCK__preempt_schedule, section ".discard.addressable", align 8, !dbg !231
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID___addressable__raw_spin_trylock148, ptr @__UNIQUE_ID___addressable__raw_spin_trylock_bh149, ptr @__UNIQUE_ID___addressable__raw_spin_lock150, ptr @__UNIQUE_ID___addressable__raw_spin_lock_irqsave151, ptr @__UNIQUE_ID___addressable__raw_spin_lock_irq152, ptr @__UNIQUE_ID___addressable__raw_spin_lock_bh153, ptr @__UNIQUE_ID___addressable__raw_spin_unlock154, ptr @__UNIQUE_ID___addressable__raw_spin_unlock_irqrestore155, ptr @__UNIQUE_ID___addressable__raw_spin_unlock_irq156, ptr @__UNIQUE_ID___addressable__raw_spin_unlock_bh157, ptr @__UNIQUE_ID___addressable__raw_read_trylock158, ptr @__UNIQUE_ID___addressable__raw_read_lock159, ptr @__UNIQUE_ID___addressable__raw_read_lock_irqsave160, ptr @__UNIQUE_ID___addressable__raw_read_lock_irq161, ptr @__UNIQUE_ID___addressable__raw_read_lock_bh162, ptr @__UNIQUE_ID___addressable__raw_read_unlock163, ptr @__UNIQUE_ID___addressable__raw_read_unlock_irqrestore164, ptr @__UNIQUE_ID___addressable__raw_read_unlock_irq165, ptr @__UNIQUE_ID___addressable__raw_read_unlock_bh166, ptr @__UNIQUE_ID___addressable__raw_write_trylock167, ptr @__UNIQUE_ID___addressable__raw_write_lock168, ptr @__UNIQUE_ID___addressable__raw_write_lock_nested169, ptr @__UNIQUE_ID___addressable__raw_write_lock_irqsave170, ptr @__UNIQUE_ID___addressable__raw_write_lock_irq171, ptr @__UNIQUE_ID___addressable__raw_write_lock_bh172, ptr @__UNIQUE_ID___addressable__raw_write_unlock173, ptr @__UNIQUE_ID___addressable__raw_write_unlock_irqrestore174, ptr @__UNIQUE_ID___addressable__raw_write_unlock_irq175, ptr @__UNIQUE_ID___addressable__raw_write_unlock_bh176, ptr @__UNIQUE_ID___addressable_in_lock_functions177, ptr @__raw_spin_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule49, ptr @__raw_spin_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule50, ptr @__raw_spin_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule51, ptr @__raw_spin_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule52, ptr @__raw_read_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule53, ptr @__raw_read_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule56, ptr @__raw_read_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule57, ptr @__raw_read_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule58, ptr @__raw_write_trylock.__UNIQUE_ID___addressable___SCK__preempt_schedule54, ptr @__raw_write_unlock.__UNIQUE_ID___addressable___SCK__preempt_schedule55, ptr @__raw_write_unlock_irqrestore.__UNIQUE_ID___addressable___SCK__preempt_schedule59, ptr @__raw_write_unlock_irq.__UNIQUE_ID___addressable___SCK__preempt_schedule60], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_raw_spin_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !246 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !248, metadata !DIExpression()), !dbg !249
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !250
  %call = call i32 @__raw_spin_trylock(ptr noundef %0) #12, !dbg !251
  ret i32 %call, !dbg !252
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__raw_spin_trylock(ptr noundef %lock) #2 align 16 !dbg !91 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !128, metadata !DIExpression()), !dbg !253
  br label %do.body, !dbg !254

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !255
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !255, !srcloc !257
  br label %do.end, !dbg !255

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !258
  %call = call i32 @do_raw_spin_trylock(ptr noundef %0) #12, !dbg !260
  %tobool = icmp ne i32 %call, 0, !dbg !260
  br i1 %tobool, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !262

do.body1:                                         ; preds = %if.then
  br label %do.end2, !dbg !264

do.end2:                                          ; preds = %do.body1
  store i32 1, ptr %retval, align 4, !dbg !266
  br label %return, !dbg !266

if.end:                                           ; preds = %do.end
  br label %do.body3, !dbg !267

do.body3:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !268, !srcloc !270
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !271
  %lnot = xor i1 %call4, true, !dbg !271
  %lnot5 = xor i1 %lnot, true, !dbg !271
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !271
  %conv = sext i32 %lnot.ext to i64, !dbg !271
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !271
  %tobool6 = icmp ne i64 %expval, 0, !dbg !271
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !268

if.then7:                                         ; preds = %do.body3
  br label %do.body8, !dbg !271

do.body8:                                         ; preds = %if.then7
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !273
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !273, !srcloc !275
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !273
  br label %do.end9, !dbg !273

do.end9:                                          ; preds = %do.body8
  br label %if.end10, !dbg !273

if.end10:                                         ; preds = %do.end9, %do.body3
  br label %do.end11, !dbg !268

do.end11:                                         ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !276
  br label %return, !dbg !276

return:                                           ; preds = %do.end11, %do.end2
  %3 = load i32, ptr %retval, align 4, !dbg !277
  ret i32 %3, !dbg !277
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_raw_spin_trylock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !278 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !280, metadata !DIExpression()), !dbg !281
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !282
  %call = call i32 @__raw_spin_trylock_bh(ptr noundef %0) #12, !dbg !283
  ret i32 %call, !dbg !284
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__raw_spin_trylock_bh(ptr noundef %lock) #2 align 16 !dbg !285 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !289
  %1 = ptrtoint ptr %0 to i64, !dbg !289
  call void @__local_bh_disable_ip(i64 noundef %1, i32 noundef 513) #12, !dbg !290
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !291
  %call = call i32 @do_raw_spin_trylock(ptr noundef %2) #12, !dbg !293
  %tobool = icmp ne i32 %call, 0, !dbg !293
  br i1 %tobool, label %if.then, label %if.end, !dbg !294

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !295

do.body:                                          ; preds = %if.then
  br label %do.end, !dbg !297

do.end:                                           ; preds = %do.body
  store i32 1, ptr %retval, align 4, !dbg !299
  br label %return, !dbg !299

if.end:                                           ; preds = %entry
  %3 = call ptr @llvm.returnaddress(i32 0), !dbg !300
  %4 = ptrtoint ptr %3 to i64, !dbg !300
  call void @__local_bh_enable_ip(i64 noundef %4, i32 noundef 513) #12, !dbg !301
  store i32 0, ptr %retval, align 4, !dbg !302
  br label %return, !dbg !302

return:                                           ; preds = %if.end, %do.end
  %5 = load i32, ptr %retval, align 4, !dbg !303
  ret i32 %5, !dbg !303
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_lock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !304 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !306, metadata !DIExpression()), !dbg !307
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !308
  call void @__raw_spin_lock(ptr noundef %0) #12, !dbg !309
  ret void, !dbg !310
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_lock(ptr noundef %lock) #2 align 16 !dbg !311 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !313, metadata !DIExpression()), !dbg !314
  br label %do.body, !dbg !315

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !316
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !316, !srcloc !318
  br label %do.end, !dbg !316

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !319

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !320

do.end2:                                          ; preds = %do.body1
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !322
  call void @do_raw_spin_lock(ptr noundef %0) #12, !dbg !322
  ret void, !dbg !323
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_raw_spin_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !324 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !328, metadata !DIExpression()), !dbg !329
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !330
  %call = call i64 @__raw_spin_lock_irqsave(ptr noundef %0) #12, !dbg !331
  ret i64 %call, !dbg !332
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__raw_spin_lock_irqsave(ptr noundef %lock) #2 align 16 !dbg !333 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !335, metadata !DIExpression()), !dbg !342
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !343
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !336, metadata !DIExpression()), !dbg !344
  br label %do.body, !dbg !345

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !346

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !337, metadata !DIExpression()), !dbg !347
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !347
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !341, metadata !DIExpression()), !dbg !347
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !347
  %conv = zext i1 %cmp to i32, !dbg !347
  store i32 1, ptr %tmp, align 4, !dbg !347
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !348
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !348
  %0 = load i32, ptr %tmp, align 4, !dbg !347
  %call = call i64 @arch_local_irq_save() #12, !dbg !348
  store i64 %call, ptr %flags, align 8, !dbg !348
  br label %do.cond, !dbg !348

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !348

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !346

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !346

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !349

do.body4:                                         ; preds = %do.end3
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !350
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !350, !srcloc !352
  br label %do.cond5, !dbg !350

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !350

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !353

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !354

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !354

do.end9:                                          ; preds = %do.cond8
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !356
  call void @do_raw_spin_lock(ptr noundef %1) #12, !dbg !356
  %2 = load i64, ptr %flags, align 8, !dbg !357
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !358
  ret i64 %2, !dbg !359
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !360 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !362, metadata !DIExpression()), !dbg !363
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !364
  call void @__raw_spin_lock_irq(ptr noundef %0) #12, !dbg !365
  ret void, !dbg !366
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_lock_irq(ptr noundef %lock) #2 align 16 !dbg !367 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !369, metadata !DIExpression()), !dbg !370
  br label %do.body, !dbg !371

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #12, !dbg !372
  br label %do.end, !dbg !372

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !374

do.body1:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !375
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !375, !srcloc !377
  br label %do.end2, !dbg !375

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !378

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !379

do.end4:                                          ; preds = %do.body3
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !381
  call void @do_raw_spin_lock(ptr noundef %0) #12, !dbg !381
  ret void, !dbg !382
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !383 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !385, metadata !DIExpression()), !dbg !386
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !387
  call void @__raw_spin_lock_bh(ptr noundef %0) #12, !dbg !388
  ret void, !dbg !389
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_lock_bh(ptr noundef %lock) #2 align 16 !dbg !390 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !394
  %1 = ptrtoint ptr %0 to i64, !dbg !394
  call void @__local_bh_disable_ip(i64 noundef %1, i32 noundef 513) #12, !dbg !395
  br label %do.body, !dbg !396

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !397

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !399
  call void @do_raw_spin_lock(ptr noundef %2) #12, !dbg !399
  ret void, !dbg !400
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !401 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !403, metadata !DIExpression()), !dbg !404
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !405
  call void @__raw_spin_unlock(ptr noundef %0) #12, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_unlock(ptr noundef %lock) #2 align 16 !dbg !131 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !135, metadata !DIExpression()), !dbg !408
  br label %do.body, !dbg !409

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !410

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !412
  call void @do_raw_spin_unlock(ptr noundef %0) #12, !dbg !413
  br label %do.body1, !dbg !414

do.body1:                                         ; preds = %do.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !415, !srcloc !417
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !418
  %lnot = xor i1 %call, true, !dbg !418
  %lnot2 = xor i1 %lnot, true, !dbg !418
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !418
  %conv = sext i32 %lnot.ext to i64, !dbg !418
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !418
  %tobool = icmp ne i64 %expval, 0, !dbg !418
  br i1 %tobool, label %if.then, label %if.end, !dbg !415

if.then:                                          ; preds = %do.body1
  br label %do.body3, !dbg !418

do.body3:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !420
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !420, !srcloc !422
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !420
  br label %do.end4, !dbg !420

do.end4:                                          ; preds = %do.body3
  br label %if.end, !dbg !420

if.end:                                           ; preds = %do.end4, %do.body1
  br label %do.end5, !dbg !415

do.end5:                                          ; preds = %if.end
  ret void, !dbg !423
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #0 section ".spinlock.text" align 16 !dbg !424 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !426, metadata !DIExpression()), !dbg !428
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !427, metadata !DIExpression()), !dbg !429
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !430
  %1 = load i64, ptr %flags.addr, align 8, !dbg !431
  call void @__raw_spin_unlock_irqrestore(ptr noundef %0, i64 noundef %1) #12, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #2 align 16 !dbg !138 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !142, metadata !DIExpression()), !dbg !434
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !143, metadata !DIExpression()), !dbg !435
  br label %do.body, !dbg !436

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !437

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !439
  call void @do_raw_spin_unlock(ptr noundef %0) #12, !dbg !440
  br label %do.body1, !dbg !441

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !442

do.body2:                                         ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !144, metadata !DIExpression()), !dbg !443
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !443
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !148, metadata !DIExpression()), !dbg !443
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !443
  %conv = zext i1 %cmp to i32, !dbg !443
  store i32 1, ptr %tmp, align 4, !dbg !443
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !444
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !444
  %1 = load i32, ptr %tmp, align 4, !dbg !443
  br label %do.body3, !dbg !444

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !445

do.end4:                                          ; preds = %do.body3
  %2 = load i64, ptr %flags.addr, align 8, !dbg !444
  call void @arch_local_irq_restore(i64 noundef %2) #12, !dbg !444
  br label %do.end5, !dbg !444

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !442

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !447

do.body7:                                         ; preds = %do.end6
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !448, !srcloc !450
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !451
  %lnot = xor i1 %call, true, !dbg !451
  %lnot8 = xor i1 %lnot, true, !dbg !451
  %lnot.ext = zext i1 %lnot8 to i32, !dbg !451
  %conv9 = sext i32 %lnot.ext to i64, !dbg !451
  %expval = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !451
  %tobool = icmp ne i64 %expval, 0, !dbg !451
  br i1 %tobool, label %if.then, label %if.end, !dbg !448

if.then:                                          ; preds = %do.body7
  br label %do.body10, !dbg !451

do.body10:                                        ; preds = %if.then
  %3 = call i64 @llvm.read_register.i64(metadata !236), !dbg !453
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #13, !dbg !453, !srcloc !455
  call void @llvm.write_register.i64(metadata !236, i64 %4), !dbg !453
  br label %do.end11, !dbg !453

do.end11:                                         ; preds = %do.body10
  br label %if.end, !dbg !453

if.end:                                           ; preds = %do.end11, %do.body7
  br label %do.end12, !dbg !448

do.end12:                                         ; preds = %if.end
  ret void, !dbg !456
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !457 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !459, metadata !DIExpression()), !dbg !460
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !461
  call void @__raw_spin_unlock_irq(ptr noundef %0) #12, !dbg !462
  ret void, !dbg !463
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_unlock_irq(ptr noundef %lock) #2 align 16 !dbg !151 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !153, metadata !DIExpression()), !dbg !464
  br label %do.body, !dbg !465

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !466

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !468
  call void @do_raw_spin_unlock(ptr noundef %0) #12, !dbg !469
  br label %do.body1, !dbg !470

do.body1:                                         ; preds = %do.end
  call void @arch_local_irq_enable() #12, !dbg !471
  br label %do.end2, !dbg !471

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !473

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !474, !srcloc !476
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !477
  %lnot = xor i1 %call, true, !dbg !477
  %lnot4 = xor i1 %lnot, true, !dbg !477
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !477
  %conv = sext i32 %lnot.ext to i64, !dbg !477
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !477
  %tobool = icmp ne i64 %expval, 0, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !474

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !477

do.body5:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !479
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !479, !srcloc !481
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !479
  br label %do.end6, !dbg !479

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !479

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !474

do.end7:                                          ; preds = %if.end
  ret void, !dbg !482
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_spin_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !483 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !485, metadata !DIExpression()), !dbg !486
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !487
  call void @__raw_spin_unlock_bh(ptr noundef %0) #12, !dbg !488
  ret void, !dbg !489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_spin_unlock_bh(ptr noundef %lock) #2 align 16 !dbg !490 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !492, metadata !DIExpression()), !dbg !493
  br label %do.body, !dbg !494

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !495

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !497
  call void @do_raw_spin_unlock(ptr noundef %0) #12, !dbg !498
  %1 = call ptr @llvm.returnaddress(i32 0), !dbg !499
  %2 = ptrtoint ptr %1 to i64, !dbg !499
  call void @__local_bh_enable_ip(i64 noundef %2, i32 noundef 513) #12, !dbg !500
  ret void, !dbg !501
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_raw_read_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !502 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !506
  %call = call i32 @__raw_read_trylock(ptr noundef %0) #12, !dbg !507
  ret i32 %call, !dbg !508
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__raw_read_trylock(ptr noundef %lock) #2 align 16 !dbg !156 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !184, metadata !DIExpression()), !dbg !509
  br label %do.body, !dbg !510

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !511
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !511, !srcloc !513
  br label %do.end, !dbg !511

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !514
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !514
  %call = call i32 @queued_read_trylock(ptr noundef %raw_lock) #12, !dbg !514
  %tobool = icmp ne i32 %call, 0, !dbg !514
  br i1 %tobool, label %if.then, label %if.end, !dbg !516

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !517

do.body1:                                         ; preds = %if.then
  br label %do.body2, !dbg !519

do.body2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !522

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !524

do.end4:                                          ; preds = %do.end3
  store i32 1, ptr %retval, align 4, !dbg !525
  br label %return, !dbg !525

if.end:                                           ; preds = %do.end
  br label %do.body5, !dbg !526

do.body5:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !527, !srcloc !529
  %call6 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !530
  %lnot = xor i1 %call6, true, !dbg !530
  %lnot7 = xor i1 %lnot, true, !dbg !530
  %lnot.ext = zext i1 %lnot7 to i32, !dbg !530
  %conv = sext i32 %lnot.ext to i64, !dbg !530
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !530
  %tobool8 = icmp ne i64 %expval, 0, !dbg !530
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !527

if.then9:                                         ; preds = %do.body5
  br label %do.body10, !dbg !530

do.body10:                                        ; preds = %if.then9
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !532
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !532, !srcloc !534
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !532
  br label %do.end11, !dbg !532

do.end11:                                         ; preds = %do.body10
  br label %if.end12, !dbg !532

if.end12:                                         ; preds = %do.end11, %do.body5
  br label %do.end13, !dbg !527

do.end13:                                         ; preds = %if.end12
  store i32 0, ptr %retval, align 4, !dbg !535
  br label %return, !dbg !535

return:                                           ; preds = %do.end13, %do.end4
  %3 = load i32, ptr %retval, align 4, !dbg !536
  ret i32 %3, !dbg !536
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_lock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !537 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !539, metadata !DIExpression()), !dbg !540
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !541
  call void @__raw_read_lock(ptr noundef %0) #12, !dbg !542
  ret void, !dbg !543
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_lock(ptr noundef %lock) #2 align 16 !dbg !544 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !546, metadata !DIExpression()), !dbg !547
  br label %do.body, !dbg !548

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !549
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !549, !srcloc !551
  br label %do.end, !dbg !549

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !552

do.body1:                                         ; preds = %do.end
  br label %do.body2, !dbg !553

do.body2:                                         ; preds = %do.body1
  br label %do.end3, !dbg !556

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !558

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !559

do.body5:                                         ; preds = %do.end4
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !560
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !560
  call void @queued_read_lock(ptr noundef %raw_lock) #12, !dbg !560
  br label %do.end6, !dbg !560

do.end6:                                          ; preds = %do.body5
  ret void, !dbg !562
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_raw_read_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !563 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !567, metadata !DIExpression()), !dbg !568
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !569
  %call = call i64 @__raw_read_lock_irqsave(ptr noundef %0) #12, !dbg !570
  ret i64 %call, !dbg !571
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__raw_read_lock_irqsave(ptr noundef %lock) #2 align 16 !dbg !572 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !574, metadata !DIExpression()), !dbg !581
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !582
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !575, metadata !DIExpression()), !dbg !583
  br label %do.body, !dbg !584

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !585

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !576, metadata !DIExpression()), !dbg !586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !586
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !580, metadata !DIExpression()), !dbg !586
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !586
  %conv = zext i1 %cmp to i32, !dbg !586
  store i32 1, ptr %tmp, align 4, !dbg !586
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !587
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !587
  %0 = load i32, ptr %tmp, align 4, !dbg !586
  %call = call i64 @arch_local_irq_save() #12, !dbg !587
  store i64 %call, ptr %flags, align 8, !dbg !587
  br label %do.cond, !dbg !587

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !587

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !585

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !585

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !588

do.body4:                                         ; preds = %do.end3
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !589
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !589, !srcloc !591
  br label %do.cond5, !dbg !589

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !589

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !592

do.body7:                                         ; preds = %do.end6
  br label %do.body8, !dbg !593

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !596

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !596

do.end10:                                         ; preds = %do.cond9
  br label %do.cond11, !dbg !598

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !598

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !599

do.body13:                                        ; preds = %do.end12
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !600
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %1, i32 0, i32 0, !dbg !600
  call void @queued_read_lock(ptr noundef %raw_lock) #12, !dbg !600
  br label %do.cond14, !dbg !600

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !600

do.end15:                                         ; preds = %do.cond14
  %2 = load i64, ptr %flags, align 8, !dbg !602
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !603
  ret i64 %2, !dbg !604
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !605 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !609
  call void @__raw_read_lock_irq(ptr noundef %0) #12, !dbg !610
  ret void, !dbg !611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_lock_irq(ptr noundef %lock) #2 align 16 !dbg !612 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !614, metadata !DIExpression()), !dbg !615
  br label %do.body, !dbg !616

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #12, !dbg !617
  br label %do.end, !dbg !617

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !619

do.body1:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !620
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !620, !srcloc !622
  br label %do.end2, !dbg !620

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !623

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !624

do.body4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !627

do.end5:                                          ; preds = %do.body4
  br label %do.end6, !dbg !629

do.end6:                                          ; preds = %do.end5
  br label %do.body7, !dbg !630

do.body7:                                         ; preds = %do.end6
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !631
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !631
  call void @queued_read_lock(ptr noundef %raw_lock) #12, !dbg !631
  br label %do.end8, !dbg !631

do.end8:                                          ; preds = %do.body7
  ret void, !dbg !633
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !634 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !636, metadata !DIExpression()), !dbg !637
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !638
  call void @__raw_read_lock_bh(ptr noundef %0) #12, !dbg !639
  ret void, !dbg !640
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_lock_bh(ptr noundef %lock) #2 align 16 !dbg !641 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !643, metadata !DIExpression()), !dbg !644
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !645
  %1 = ptrtoint ptr %0 to i64, !dbg !645
  call void @__local_bh_disable_ip(i64 noundef %1, i32 noundef 513) #12, !dbg !646
  br label %do.body, !dbg !647

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !648

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !651

do.end:                                           ; preds = %do.body1
  br label %do.end2, !dbg !653

do.end2:                                          ; preds = %do.end
  br label %do.body3, !dbg !654

do.body3:                                         ; preds = %do.end2
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !655
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %2, i32 0, i32 0, !dbg !655
  call void @queued_read_lock(ptr noundef %raw_lock) #12, !dbg !655
  br label %do.end4, !dbg !655

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !657
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !658 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !660, metadata !DIExpression()), !dbg !661
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !662
  call void @__raw_read_unlock(ptr noundef %0) #12, !dbg !663
  ret void, !dbg !664
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_unlock(ptr noundef %lock) #2 align 16 !dbg !187 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !191, metadata !DIExpression()), !dbg !665
  br label %do.body, !dbg !666

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !667

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !669

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !670
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !670
  call void @queued_read_unlock(ptr noundef %raw_lock) #12, !dbg !670
  br label %do.end2, !dbg !670

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !672

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !673, !srcloc !675
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !676
  %lnot = xor i1 %call, true, !dbg !676
  %lnot4 = xor i1 %lnot, true, !dbg !676
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !676
  %conv = sext i32 %lnot.ext to i64, !dbg !676
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !676
  %tobool = icmp ne i64 %expval, 0, !dbg !676
  br i1 %tobool, label %if.then, label %if.end, !dbg !673

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !676

do.body5:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !678
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !678, !srcloc !680
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !678
  br label %do.end6, !dbg !678

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !678

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !673

do.end7:                                          ; preds = %if.end
  ret void, !dbg !681
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #0 section ".spinlock.text" align 16 !dbg !682 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !684, metadata !DIExpression()), !dbg !686
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !685, metadata !DIExpression()), !dbg !687
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !688
  %1 = load i64, ptr %flags.addr, align 8, !dbg !689
  call void @__raw_read_unlock_irqrestore(ptr noundef %0, i64 noundef %1) #12, !dbg !690
  ret void, !dbg !691
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #2 align 16 !dbg !194 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !198, metadata !DIExpression()), !dbg !692
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !199, metadata !DIExpression()), !dbg !693
  br label %do.body, !dbg !694

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !695

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !697

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !698
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !698
  call void @queued_read_unlock(ptr noundef %raw_lock) #12, !dbg !698
  br label %do.end2, !dbg !698

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !700

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !701

do.body4:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !200, metadata !DIExpression()), !dbg !702
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !702
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !204, metadata !DIExpression()), !dbg !702
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !702
  %conv = zext i1 %cmp to i32, !dbg !702
  store i32 1, ptr %tmp, align 4, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !703
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !703
  %1 = load i32, ptr %tmp, align 4, !dbg !702
  br label %do.body5, !dbg !703

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !704

do.end6:                                          ; preds = %do.body5
  %2 = load i64, ptr %flags.addr, align 8, !dbg !703
  call void @arch_local_irq_restore(i64 noundef %2) #12, !dbg !703
  br label %do.end7, !dbg !703

do.end7:                                          ; preds = %do.end6
  br label %do.end8, !dbg !701

do.end8:                                          ; preds = %do.end7
  br label %do.body9, !dbg !706

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !707, !srcloc !709
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !710
  %lnot = xor i1 %call, true, !dbg !710
  %lnot10 = xor i1 %lnot, true, !dbg !710
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !710
  %conv11 = sext i32 %lnot.ext to i64, !dbg !710
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !710
  %tobool = icmp ne i64 %expval, 0, !dbg !710
  br i1 %tobool, label %if.then, label %if.end, !dbg !707

if.then:                                          ; preds = %do.body9
  br label %do.body12, !dbg !710

do.body12:                                        ; preds = %if.then
  %3 = call i64 @llvm.read_register.i64(metadata !236), !dbg !712
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #13, !dbg !712, !srcloc !714
  call void @llvm.write_register.i64(metadata !236, i64 %4), !dbg !712
  br label %do.end13, !dbg !712

do.end13:                                         ; preds = %do.body12
  br label %if.end, !dbg !712

if.end:                                           ; preds = %do.end13, %do.body9
  br label %do.end14, !dbg !707

do.end14:                                         ; preds = %if.end
  ret void, !dbg !715
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !716 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !718, metadata !DIExpression()), !dbg !719
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !720
  call void @__raw_read_unlock_irq(ptr noundef %0) #12, !dbg !721
  ret void, !dbg !722
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_unlock_irq(ptr noundef %lock) #2 align 16 !dbg !207 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !209, metadata !DIExpression()), !dbg !723
  br label %do.body, !dbg !724

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !725

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !727

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !728
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !728
  call void @queued_read_unlock(ptr noundef %raw_lock) #12, !dbg !728
  br label %do.end2, !dbg !728

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !730

do.body3:                                         ; preds = %do.end2
  call void @arch_local_irq_enable() #12, !dbg !731
  br label %do.end4, !dbg !731

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !733

do.body5:                                         ; preds = %do.end4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !734, !srcloc !736
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !737
  %lnot = xor i1 %call, true, !dbg !737
  %lnot6 = xor i1 %lnot, true, !dbg !737
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !737
  %conv = sext i32 %lnot.ext to i64, !dbg !737
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !737
  %tobool = icmp ne i64 %expval, 0, !dbg !737
  br i1 %tobool, label %if.then, label %if.end, !dbg !734

if.then:                                          ; preds = %do.body5
  br label %do.body7, !dbg !737

do.body7:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !739
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !739, !srcloc !741
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !739
  br label %do.end8, !dbg !739

do.end8:                                          ; preds = %do.body7
  br label %if.end, !dbg !739

if.end:                                           ; preds = %do.end8, %do.body5
  br label %do.end9, !dbg !734

do.end9:                                          ; preds = %if.end
  ret void, !dbg !742
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_read_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !743 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !745, metadata !DIExpression()), !dbg !746
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !747
  call void @__raw_read_unlock_bh(ptr noundef %0) #12, !dbg !748
  ret void, !dbg !749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_read_unlock_bh(ptr noundef %lock) #2 align 16 !dbg !750 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !752, metadata !DIExpression()), !dbg !753
  br label %do.body, !dbg !754

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !755

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !757

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !758
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !758
  call void @queued_read_unlock(ptr noundef %raw_lock) #12, !dbg !758
  br label %do.end2, !dbg !758

do.end2:                                          ; preds = %do.body1
  %1 = call ptr @llvm.returnaddress(i32 0), !dbg !760
  %2 = ptrtoint ptr %1 to i64, !dbg !760
  call void @__local_bh_enable_ip(i64 noundef %2, i32 noundef 513) #12, !dbg !761
  ret void, !dbg !762
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @_raw_write_trylock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !763 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !765, metadata !DIExpression()), !dbg !766
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !767
  %call = call i32 @__raw_write_trylock(ptr noundef %0) #12, !dbg !768
  ret i32 %call, !dbg !769
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__raw_write_trylock(ptr noundef %lock) #2 align 16 !dbg !212 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !214, metadata !DIExpression()), !dbg !770
  br label %do.body, !dbg !771

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !772
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !772, !srcloc !774
  br label %do.end, !dbg !772

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !775
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !775
  %call = call i32 @queued_write_trylock(ptr noundef %raw_lock) #12, !dbg !775
  %tobool = icmp ne i32 %call, 0, !dbg !775
  br i1 %tobool, label %if.then, label %if.end, !dbg !777

if.then:                                          ; preds = %do.end
  br label %do.body1, !dbg !778

do.body1:                                         ; preds = %if.then
  br label %do.end2, !dbg !780

do.end2:                                          ; preds = %do.body1
  store i32 1, ptr %retval, align 4, !dbg !782
  br label %return, !dbg !782

if.end:                                           ; preds = %do.end
  br label %do.body3, !dbg !783

do.body3:                                         ; preds = %if.end
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !784, !srcloc !786
  %call4 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !787
  %lnot = xor i1 %call4, true, !dbg !787
  %lnot5 = xor i1 %lnot, true, !dbg !787
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !787
  %conv = sext i32 %lnot.ext to i64, !dbg !787
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !787
  %tobool6 = icmp ne i64 %expval, 0, !dbg !787
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !784

if.then7:                                         ; preds = %do.body3
  br label %do.body8, !dbg !787

do.body8:                                         ; preds = %if.then7
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !789
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !789, !srcloc !791
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !789
  br label %do.end9, !dbg !789

do.end9:                                          ; preds = %do.body8
  br label %if.end10, !dbg !789

if.end10:                                         ; preds = %do.end9, %do.body3
  br label %do.end11, !dbg !784

do.end11:                                         ; preds = %if.end10
  store i32 0, ptr %retval, align 4, !dbg !792
  br label %return, !dbg !792

return:                                           ; preds = %do.end11, %do.end2
  %3 = load i32, ptr %retval, align 4, !dbg !793
  ret i32 %3, !dbg !793
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_lock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !794 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !796, metadata !DIExpression()), !dbg !797
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !798
  call void @__raw_write_lock(ptr noundef %0) #12, !dbg !799
  ret void, !dbg !800
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_lock(ptr noundef %lock) #2 align 16 !dbg !801 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !803, metadata !DIExpression()), !dbg !804
  br label %do.body, !dbg !805

do.body:                                          ; preds = %entry
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !806
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !806, !srcloc !808
  br label %do.end, !dbg !806

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !809

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !810

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !812

do.body3:                                         ; preds = %do.end2
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !813
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !813
  call void @queued_write_lock(ptr noundef %raw_lock) #12, !dbg !813
  br label %do.end4, !dbg !813

do.end4:                                          ; preds = %do.body3
  ret void, !dbg !815
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_lock_nested(ptr noundef %lock, i32 noundef %subclass) #3 section ".spinlock.text" align 16 !dbg !816 {
entry:
  %lock.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !820, metadata !DIExpression()), !dbg !822
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !821, metadata !DIExpression()), !dbg !823
  %0 = load i32, ptr %subclass.addr, align 4, !dbg !824
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !824
  call void @__raw_write_lock(ptr noundef %1) #12, !dbg !824
  ret void, !dbg !825
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @_raw_write_lock_irqsave(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !826 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !828, metadata !DIExpression()), !dbg !829
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !830
  %call = call i64 @__raw_write_lock_irqsave(ptr noundef %0) #12, !dbg !831
  ret i64 %call, !dbg !832
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__raw_write_lock_irqsave(ptr noundef %lock) #2 align 16 !dbg !833 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !835, metadata !DIExpression()), !dbg !842
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !843
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !836, metadata !DIExpression()), !dbg !844
  br label %do.body, !dbg !845

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !846

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !837, metadata !DIExpression()), !dbg !847
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !841, metadata !DIExpression()), !dbg !847
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !847
  %conv = zext i1 %cmp to i32, !dbg !847
  store i32 1, ptr %tmp, align 4, !dbg !847
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !848
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !848
  %0 = load i32, ptr %tmp, align 4, !dbg !847
  %call = call i64 @arch_local_irq_save() #12, !dbg !848
  store i64 %call, ptr %flags, align 8, !dbg !848
  br label %do.cond, !dbg !848

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !848

do.end:                                           ; preds = %do.cond
  br label %do.cond2, !dbg !846

do.cond2:                                         ; preds = %do.end
  br label %do.end3, !dbg !846

do.end3:                                          ; preds = %do.cond2
  br label %do.body4, !dbg !849

do.body4:                                         ; preds = %do.end3
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !850
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !850, !srcloc !852
  br label %do.cond5, !dbg !850

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !850

do.end6:                                          ; preds = %do.cond5
  br label %do.body7, !dbg !853

do.body7:                                         ; preds = %do.end6
  br label %do.cond8, !dbg !854

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !854

do.end9:                                          ; preds = %do.cond8
  br label %do.body10, !dbg !856

do.body10:                                        ; preds = %do.end9
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !857
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %1, i32 0, i32 0, !dbg !857
  call void @queued_write_lock(ptr noundef %raw_lock) #12, !dbg !857
  br label %do.cond11, !dbg !857

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !857

do.end12:                                         ; preds = %do.cond11
  %2 = load i64, ptr %flags, align 8, !dbg !859
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !860
  ret i64 %2, !dbg !861
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_lock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !862 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !864, metadata !DIExpression()), !dbg !865
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !866
  call void @__raw_write_lock_irq(ptr noundef %0) #12, !dbg !867
  ret void, !dbg !868
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_lock_irq(ptr noundef %lock) #2 align 16 !dbg !869 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !871, metadata !DIExpression()), !dbg !872
  br label %do.body, !dbg !873

do.body:                                          ; preds = %entry
  call void @arch_local_irq_disable() #12, !dbg !874
  br label %do.end, !dbg !874

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !876

do.body1:                                         ; preds = %do.end
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !877
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !877, !srcloc !879
  br label %do.end2, !dbg !877

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !880

do.body3:                                         ; preds = %do.end2
  br label %do.end4, !dbg !881

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !883

do.body5:                                         ; preds = %do.end4
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !884
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !884
  call void @queued_write_lock(ptr noundef %raw_lock) #12, !dbg !884
  br label %do.end6, !dbg !884

do.end6:                                          ; preds = %do.body5
  ret void, !dbg !886
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_lock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !887 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !889, metadata !DIExpression()), !dbg !890
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !891
  call void @__raw_write_lock_bh(ptr noundef %0) #12, !dbg !892
  ret void, !dbg !893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_lock_bh(ptr noundef %lock) #2 align 16 !dbg !894 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !896, metadata !DIExpression()), !dbg !897
  %0 = call ptr @llvm.returnaddress(i32 0), !dbg !898
  %1 = ptrtoint ptr %0 to i64, !dbg !898
  call void @__local_bh_disable_ip(i64 noundef %1, i32 noundef 513) #12, !dbg !899
  br label %do.body, !dbg !900

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !901

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !903

do.body1:                                         ; preds = %do.end
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !904
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %2, i32 0, i32 0, !dbg !904
  call void @queued_write_lock(ptr noundef %raw_lock) #12, !dbg !904
  br label %do.end2, !dbg !904

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !906
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_unlock(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !907 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !909, metadata !DIExpression()), !dbg !910
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !911
  call void @__raw_write_unlock(ptr noundef %0) #12, !dbg !912
  ret void, !dbg !913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_unlock(ptr noundef %lock) #2 align 16 !dbg !217 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !219, metadata !DIExpression()), !dbg !914
  br label %do.body, !dbg !915

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !916

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !918

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !919
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !919
  call void @queued_write_unlock(ptr noundef %raw_lock) #12, !dbg !919
  br label %do.end2, !dbg !919

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !921

do.body3:                                         ; preds = %do.end2
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !922, !srcloc !924
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !925
  %lnot = xor i1 %call, true, !dbg !925
  %lnot4 = xor i1 %lnot, true, !dbg !925
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !925
  %conv = sext i32 %lnot.ext to i64, !dbg !925
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !925
  %tobool = icmp ne i64 %expval, 0, !dbg !925
  br i1 %tobool, label %if.then, label %if.end, !dbg !922

if.then:                                          ; preds = %do.body3
  br label %do.body5, !dbg !925

do.body5:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !927
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !927, !srcloc !929
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !927
  br label %do.end6, !dbg !927

do.end6:                                          ; preds = %do.body5
  br label %if.end, !dbg !927

if.end:                                           ; preds = %do.end6, %do.body3
  br label %do.end7, !dbg !922

do.end7:                                          ; preds = %if.end
  ret void, !dbg !930
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #0 section ".spinlock.text" align 16 !dbg !931 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !933, metadata !DIExpression()), !dbg !935
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !934, metadata !DIExpression()), !dbg !936
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !937
  %1 = load i64, ptr %flags.addr, align 8, !dbg !938
  call void @__raw_write_unlock_irqrestore(ptr noundef %0, i64 noundef %1) #12, !dbg !939
  ret void, !dbg !940
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #2 align 16 !dbg !222 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !224, metadata !DIExpression()), !dbg !941
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !225, metadata !DIExpression()), !dbg !942
  br label %do.body, !dbg !943

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !944

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !946

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !947
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !947
  call void @queued_write_unlock(ptr noundef %raw_lock) #12, !dbg !947
  br label %do.end2, !dbg !947

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !949

do.body3:                                         ; preds = %do.end2
  br label %do.body4, !dbg !950

do.body4:                                         ; preds = %do.body3
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #13, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !226, metadata !DIExpression()), !dbg !951
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #13, !dbg !951
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !230, metadata !DIExpression()), !dbg !951
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !951
  %conv = zext i1 %cmp to i32, !dbg !951
  store i32 1, ptr %tmp, align 4, !dbg !951
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #13, !dbg !952
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #13, !dbg !952
  %1 = load i32, ptr %tmp, align 4, !dbg !951
  br label %do.body5, !dbg !952

do.body5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !953

do.end6:                                          ; preds = %do.body5
  %2 = load i64, ptr %flags.addr, align 8, !dbg !952
  call void @arch_local_irq_restore(i64 noundef %2) #12, !dbg !952
  br label %do.end7, !dbg !952

do.end7:                                          ; preds = %do.end6
  br label %do.end8, !dbg !950

do.end8:                                          ; preds = %do.end7
  br label %do.body9, !dbg !955

do.body9:                                         ; preds = %do.end8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !956, !srcloc !958
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !959
  %lnot = xor i1 %call, true, !dbg !959
  %lnot10 = xor i1 %lnot, true, !dbg !959
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !959
  %conv11 = sext i32 %lnot.ext to i64, !dbg !959
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !959
  %tobool = icmp ne i64 %expval, 0, !dbg !959
  br i1 %tobool, label %if.then, label %if.end, !dbg !956

if.then:                                          ; preds = %do.body9
  br label %do.body12, !dbg !959

do.body12:                                        ; preds = %if.then
  %3 = call i64 @llvm.read_register.i64(metadata !236), !dbg !961
  %4 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %3) #13, !dbg !961, !srcloc !963
  call void @llvm.write_register.i64(metadata !236, i64 %4), !dbg !961
  br label %do.end13, !dbg !961

do.end13:                                         ; preds = %do.body12
  br label %if.end, !dbg !961

if.end:                                           ; preds = %do.end13, %do.body9
  br label %do.end14, !dbg !956

do.end14:                                         ; preds = %if.end
  ret void, !dbg !964
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_unlock_irq(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !965 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !967, metadata !DIExpression()), !dbg !968
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !969
  call void @__raw_write_unlock_irq(ptr noundef %0) #12, !dbg !970
  ret void, !dbg !971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_unlock_irq(ptr noundef %lock) #2 align 16 !dbg !233 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !235, metadata !DIExpression()), !dbg !972
  br label %do.body, !dbg !973

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !974

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !976

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !977
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !977
  call void @queued_write_unlock(ptr noundef %raw_lock) #12, !dbg !977
  br label %do.end2, !dbg !977

do.end2:                                          ; preds = %do.body1
  br label %do.body3, !dbg !979

do.body3:                                         ; preds = %do.end2
  call void @arch_local_irq_enable() #12, !dbg !980
  br label %do.end4, !dbg !980

do.end4:                                          ; preds = %do.body3
  br label %do.body5, !dbg !982

do.body5:                                         ; preds = %do.end4
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !983, !srcloc !985
  %call = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !986
  %lnot = xor i1 %call, true, !dbg !986
  %lnot6 = xor i1 %lnot, true, !dbg !986
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !986
  %conv = sext i32 %lnot.ext to i64, !dbg !986
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !986
  %tobool = icmp ne i64 %expval, 0, !dbg !986
  br i1 %tobool, label %if.then, label %if.end, !dbg !983

if.then:                                          ; preds = %do.body5
  br label %do.body7, !dbg !986

do.body7:                                         ; preds = %if.then
  %1 = call i64 @llvm.read_register.i64(metadata !236), !dbg !988
  %2 = call i64 asm sideeffect "call __SCT__preempt_schedule", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %1) #13, !dbg !988, !srcloc !990
  call void @llvm.write_register.i64(metadata !236, i64 %2), !dbg !988
  br label %do.end8, !dbg !988

do.end8:                                          ; preds = %do.body7
  br label %if.end, !dbg !988

if.end:                                           ; preds = %do.end8, %do.body5
  br label %do.end9, !dbg !983

do.end9:                                          ; preds = %if.end
  ret void, !dbg !991
}

; Function Attrs: fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @_raw_write_unlock_bh(ptr noundef %lock) #0 section ".spinlock.text" align 16 !dbg !992 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !994, metadata !DIExpression()), !dbg !995
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !996
  call void @__raw_write_unlock_bh(ptr noundef %0) #12, !dbg !997
  ret void, !dbg !998
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__raw_write_unlock_bh(ptr noundef %lock) #2 align 16 !dbg !999 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1001, metadata !DIExpression()), !dbg !1002
  br label %do.body, !dbg !1003

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1004

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !1006

do.body1:                                         ; preds = %do.end
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1007
  %raw_lock = getelementptr inbounds %struct.rwlock_t, ptr %0, i32 0, i32 0, !dbg !1007
  call void @queued_write_unlock(ptr noundef %raw_lock) #12, !dbg !1007
  br label %do.end2, !dbg !1007

do.end2:                                          ; preds = %do.body1
  %1 = call ptr @llvm.returnaddress(i32 0), !dbg !1009
  %2 = ptrtoint ptr %1 to i64, !dbg !1009
  call void @__local_bh_enable_ip(i64 noundef %2, i32 noundef 513) #12, !dbg !1010
  ret void, !dbg !1011
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @in_lock_functions(i64 noundef %addr) #3 align 16 !dbg !1012 {
entry:
  %addr.addr = alloca i64, align 8
  store i64 %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !1016, metadata !DIExpression()), !dbg !1017
  %0 = load i64, ptr %addr.addr, align 8, !dbg !1018
  %cmp = icmp uge i64 %0, ptrtoint (ptr @__lock_text_start to i64), !dbg !1019
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1020

land.rhs:                                         ; preds = %entry
  %1 = load i64, ptr %addr.addr, align 8, !dbg !1021
  %cmp1 = icmp ult i64 %1, ptrtoint (ptr @__lock_text_end to i64), !dbg !1022
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ], !dbg !1023
  %land.ext = zext i1 %2 to i32, !dbg !1020
  ret i32 %land.ext, !dbg !1024
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #4 align 16 !dbg !1025 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !1030, metadata !DIExpression()), !dbg !1038
  br label %do.body, !dbg !1039

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #13, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !1031, metadata !DIExpression()), !dbg !1040
  %0 = load i32, ptr %val.addr, align 4, !dbg !1040
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !1040
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !1040

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !1040
  %cmp = icmp eq i32 %2, 1, !dbg !1040
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !1040

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !1040
  %cmp1 = icmp eq i32 %3, -1, !dbg !1040
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !1040

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !1040
  br label %cond.end, !dbg !1040

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !1040

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !1040
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !1040
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !1041
  %cmp2 = icmp eq i32 %5, 1, !dbg !1041
  br i1 %cmp2, label %if.then, label %if.else, !dbg !1040

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !1042, !srcloc !1044
  br label %if.end8, !dbg !1041

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !1045
  %cmp3 = icmp eq i32 %6, -1, !dbg !1045
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !1041

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !1046, !srcloc !1048
  br label %if.end, !dbg !1045

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !1045

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #13, !dbg !1049
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !1034, metadata !DIExpression()), !dbg !1049
  %7 = load i32, ptr %val.addr, align 4, !dbg !1049
  %conv = sext i32 %7 to i64, !dbg !1049
  %and = and i64 %conv, 4294967295, !dbg !1049
  %conv7 = trunc i64 %and to i32, !dbg !1049
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !1049
  %8 = load i32, ptr %pto_val__, align 4, !dbg !1049
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !1049, !srcloc !1050
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #13, !dbg !1045
  br label %do.cond, !dbg !1049

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1049

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #13, !dbg !1039
  br label %do.end10, !dbg !1040

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !1051
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_raw_spin_trylock(ptr noundef %lock) #2 align 16 !dbg !1052 {
entry:
  %lock.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1055, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1056, metadata !DIExpression()), !dbg !1059
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1060
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %0, i32 0, i32 0, !dbg !1060
  %call = call i32 @queued_spin_trylock(ptr noundef %raw_lock) #12, !dbg !1060
  store i32 %call, ptr %ret, align 4, !dbg !1059
  %1 = load i32, ptr %ret, align 4, !dbg !1061
  %tobool = icmp ne i32 %1, 0, !dbg !1061
  br i1 %tobool, label %if.then, label %if.end, !dbg !1063

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !1064

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !1065

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1065

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !1065

if.end:                                           ; preds = %do.end, %entry
  %2 = load i32, ptr %ret, align 4, !dbg !1067
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !1068
  ret i32 %2, !dbg !1069
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #4 align 16 !dbg !1070 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #13, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %c, metadata !1076, metadata !DIExpression()), !dbg !1078
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon, ptr @pcpu_hot, i32 0, i32 1)) #13, !dbg !1078, !srcloc !1079
  %1 = icmp ult i8 %0, 2, !dbg !1078
  call void @llvm.assume(i1 %1), !dbg !1078
  store i8 %0, ptr %c, align 1, !dbg !1078
  %2 = load i8, ptr %c, align 1, !dbg !1078, !range !1080, !noundef !1081
  %tobool = trunc i8 %2 to i1, !dbg !1078
  %frombool = zext i1 %tobool to i8, !dbg !1078
  store i8 %frombool, ptr %tmp, align 1, !dbg !1078
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #13, !dbg !1082
  %3 = load i8, ptr %tmp, align 1, !dbg !1078, !range !1080, !noundef !1081
  %tobool1 = trunc i8 %3 to i1, !dbg !1078
  ret i1 %tobool1, !dbg !1083
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #6

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_spin_trylock(ptr noundef %lock) #4 align 16 !dbg !1084 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1090, metadata !DIExpression()), !dbg !1092
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !1093
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1091, metadata !DIExpression()), !dbg !1094
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1095
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !1096
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !1097
  store i32 %call, ptr %val, align 4, !dbg !1094
  %2 = load i32, ptr %val, align 4, !dbg !1098
  %tobool = icmp ne i32 %2, 0, !dbg !1098
  %lnot = xor i1 %tobool, true, !dbg !1098
  %lnot1 = xor i1 %lnot, true, !dbg !1098
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1098
  %conv = sext i32 %lnot.ext to i64, !dbg !1098
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1098
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1098
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1100

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !1102
  %4 = getelementptr inbounds %struct.qspinlock, ptr %3, i32 0, i32 0, !dbg !1102
  %call3 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %4, ptr noundef %val, i32 noundef 1) #12, !dbg !1102
  %lnot4 = xor i1 %call3, true, !dbg !1102
  %lnot6 = xor i1 %lnot4, true, !dbg !1102
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1102
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1102
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1102
  %conv10 = trunc i64 %expval9 to i32, !dbg !1102
  store i32 %conv10, ptr %retval, align 4, !dbg !1103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1103

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !1104
  %5 = load i32, ptr %retval, align 4, !dbg !1104
  ret i32 %5, !dbg !1104
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #4 align 16 !dbg !1105 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1112, metadata !DIExpression()), !dbg !1113
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1114
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #12, !dbg !1115
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1116
  %call = call i32 @raw_atomic_read(ptr noundef %1) #12, !dbg !1117
  ret i32 %call, !dbg !1118
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1119 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1124, metadata !DIExpression()), !dbg !1127
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1125, metadata !DIExpression()), !dbg !1128
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1126, metadata !DIExpression()), !dbg !1129
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1130
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !1131
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1132
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #12, !dbg !1133
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1134
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1135
  %4 = load i32, ptr %new.addr, align 4, !dbg !1136
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %2, ptr noundef %3, i32 noundef %4) #12, !dbg !1137
  ret i1 %call, !dbg !1138
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1139 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1151, metadata !DIExpression()), !dbg !1153
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1152, metadata !DIExpression()), !dbg !1154
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1155
  %1 = load i64, ptr %size.addr, align 8, !dbg !1156
  %conv = trunc i64 %1 to i32, !dbg !1156
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !1157
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1158
  %3 = load i64, ptr %size.addr, align 8, !dbg !1158
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !1158
  ret void, !dbg !1159
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #4 align 16 !dbg !1160 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1163, metadata !DIExpression()), !dbg !1164
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1165
  %call = call i32 @arch_atomic_read(ptr noundef %0) #12, !dbg !1166
  ret i32 %call, !dbg !1167
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !1168 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1173, metadata !DIExpression()), !dbg !1175
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1174, metadata !DIExpression()), !dbg !1176
  ret i1 true, !dbg !1177
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !1178 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1183, metadata !DIExpression()), !dbg !1186
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1184, metadata !DIExpression()), !dbg !1187
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1185, metadata !DIExpression()), !dbg !1188
  ret void, !dbg !1189
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #4 align 16 !dbg !1190 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1193, metadata !DIExpression()), !dbg !1194
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1195
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1195
  %1 = load volatile i32, ptr %counter, align 4, !dbg !1195
  ret i32 %1, !dbg !1196
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #4 align 16 !dbg !1197 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1199, metadata !DIExpression()), !dbg !1201
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1200, metadata !DIExpression()), !dbg !1202
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1203
  %1 = load i64, ptr %size.addr, align 8, !dbg !1204
  %conv = trunc i64 %1 to i32, !dbg !1204
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !1205
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1206
  %3 = load i64, ptr %size.addr, align 8, !dbg !1206
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !1206
  ret void, !dbg !1207
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_acquire(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1208 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1210, metadata !DIExpression()), !dbg !1213
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1211, metadata !DIExpression()), !dbg !1214
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1212, metadata !DIExpression()), !dbg !1215
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1216
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1217
  %2 = load i32, ptr %new.addr, align 4, !dbg !1218
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #12, !dbg !1219
  ret i1 %call, !dbg !1220
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !1221 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1223, metadata !DIExpression()), !dbg !1225
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1224, metadata !DIExpression()), !dbg !1226
  ret i1 true, !dbg !1227
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #4 align 16 !dbg !1228 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i32, align 4
  %__new = alloca i32, align 4
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1230, metadata !DIExpression()), !dbg !1239
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1231, metadata !DIExpression()), !dbg !1240
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1232, metadata !DIExpression()), !dbg !1241
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %success, metadata !1233, metadata !DIExpression()), !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !1235, metadata !DIExpression()), !dbg !1242
  %0 = load ptr, ptr %old.addr, align 8, !dbg !1242
  store ptr %0, ptr %_old, align 8, !dbg !1242
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !1236, metadata !DIExpression()), !dbg !1242
  %1 = load ptr, ptr %_old, align 8, !dbg !1242
  %2 = load i32, ptr %1, align 4, !dbg !1242
  store i32 %2, ptr %__old, align 4, !dbg !1242
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !1237, metadata !DIExpression()), !dbg !1242
  %3 = load i32, ptr %new.addr, align 4, !dbg !1242
  store i32 %3, ptr %__new, align 4, !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #13, !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !1238, metadata !DIExpression()), !dbg !1242
  %4 = load ptr, ptr %v.addr, align 8, !dbg !1242
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !1242
  store ptr %counter, ptr %__ptr, align 8, !dbg !1242
  %5 = load ptr, ptr %__ptr, align 8, !dbg !1242
  %6 = load i32, ptr %__old, align 4, !dbg !1242
  %7 = load i32, ptr %__new, align 4, !dbg !1242
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #13, !dbg !1242, !srcloc !1243
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !1242
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !1242
  %9 = icmp ult i8 %asmresult, 2, !dbg !1242
  call void @llvm.assume(i1 %9), !dbg !1242
  store i8 %asmresult, ptr %success, align 1, !dbg !1242
  store i32 %asmresult1, ptr %__old, align 4, !dbg !1242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #13, !dbg !1242
  %10 = load i8, ptr %success, align 1, !dbg !1244, !range !1080, !noundef !1081
  %tobool = trunc i8 %10 to i1, !dbg !1244
  %lnot = xor i1 %tobool, true, !dbg !1244
  %lnot2 = xor i1 %lnot, true, !dbg !1244
  %lnot3 = xor i1 %lnot2, true, !dbg !1244
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !1244
  %conv = sext i32 %lnot.ext to i64, !dbg !1244
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1244
  %tobool4 = icmp ne i64 %expval, 0, !dbg !1244
  br i1 %tobool4, label %if.then, label %if.end, !dbg !1242

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !1244
  %12 = load ptr, ptr %_old, align 8, !dbg !1244
  store i32 %11, ptr %12, align 4, !dbg !1244
  br label %if.end, !dbg !1244

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !1242, !range !1080, !noundef !1081
  %tobool5 = trunc i8 %13 to i1, !dbg !1242
  %lnot6 = xor i1 %tobool5, true, !dbg !1242
  %lnot8 = xor i1 %lnot6, true, !dbg !1242
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !1242
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !1242
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !1242
  store i64 %expval11, ptr %tmp, align 8, !dbg !1244
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #13, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #13, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #13, !dbg !1246
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #13, !dbg !1246
  %14 = load i64, ptr %tmp, align 8, !dbg !1242
  %tobool12 = icmp ne i64 %14, 0, !dbg !1246
  ret i1 %tobool12, !dbg !1247
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__local_bh_disable_ip(i64 noundef %ip, i32 noundef %cnt) #4 align 16 !dbg !1248 {
entry:
  %ip.addr = alloca i64, align 8
  %cnt.addr = alloca i32, align 4
  store i64 %ip, ptr %ip.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ip.addr, metadata !1253, metadata !DIExpression()), !dbg !1255
  store i32 %cnt, ptr %cnt.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cnt.addr, metadata !1254, metadata !DIExpression()), !dbg !1256
  %0 = load i32, ptr %cnt.addr, align 4, !dbg !1257
  call void @__preempt_count_add(i32 noundef %0) #12, !dbg !1257
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1258, !srcloc !1259
  ret void, !dbg !1260
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1261 dso_local void @__local_bh_enable_ip(i64 noundef, i32 noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_spin_lock(ptr noundef %lock) #2 align 16 !dbg !1262 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1264, metadata !DIExpression()), !dbg !1265
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1266
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %0, i32 0, i32 0, !dbg !1266
  call void @queued_spin_lock(ptr noundef %raw_lock) #12, !dbg !1266
  br label %do.body, !dbg !1267

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1268

do.end:                                           ; preds = %do.body
  ret void, !dbg !1270
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_lock(ptr noundef %lock) #4 align 16 !dbg !1271 {
entry:
  %lock.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1275, metadata !DIExpression()), !dbg !1277
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #13, !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1276, metadata !DIExpression()), !dbg !1279
  store i32 0, ptr %val, align 4, !dbg !1279
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1280
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !1280
  %call = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %1, ptr noundef %val, i32 noundef 1) #12, !dbg !1280
  %lnot = xor i1 %call, true, !dbg !1280
  %lnot1 = xor i1 %lnot, true, !dbg !1280
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1280
  %conv = sext i32 %lnot.ext to i64, !dbg !1280
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1280
  %tobool = icmp ne i64 %expval, 0, !dbg !1280
  br i1 %tobool, label %if.then, label %if.end, !dbg !1282

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1283

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !1284
  %3 = load i32, ptr %val, align 4, !dbg !1285
  call void @queued_spin_lock_slowpath(ptr noundef %2, i32 noundef %3) #12, !dbg !1286
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1287
  br label %cleanup, !dbg !1287

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #13, !dbg !1287
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1287

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1288 dso_local void @queued_spin_lock_slowpath(ptr noundef, i32 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #4 align 16 !dbg !1291 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1296, metadata !DIExpression()), !dbg !1298
  %call = call i64 @arch_local_save_flags() #12, !dbg !1299
  store i64 %call, ptr %flags, align 8, !dbg !1298
  call void @arch_local_irq_disable() #12, !dbg !1300
  %0 = load i64, ptr %flags, align 8, !dbg !1301
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1302
  ret i64 %0, !dbg !1303
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #4 align 16 !dbg !1304 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !1305
  ret i64 %call, !dbg !1306
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #4 align 16 !dbg !1307 {
entry:
  call void @native_irq_disable() #12, !dbg !1310
  ret void, !dbg !1311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #4 align 16 !dbg !1312 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #13, !dbg !1315
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1314, metadata !DIExpression()), !dbg !1316
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #13, !dbg !1317, !srcloc !1318
  %0 = load i64, ptr %flags, align 8, !dbg !1319
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #13, !dbg !1320
  ret i64 %0, !dbg !1321
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #4 align 16 !dbg !1322 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1323, !srcloc !1324
  ret void, !dbg !1325
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_spin_unlock(ptr noundef %lock) #2 align 16 !dbg !1326 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1328, metadata !DIExpression()), !dbg !1329
  br label %do.body, !dbg !1330

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1331

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1333
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %0, i32 0, i32 0, !dbg !1333
  call void @queued_spin_unlock(ptr noundef %raw_lock) #12, !dbg !1333
  ret void, !dbg !1334
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_spin_unlock(ptr noundef %lock) #4 align 16 !dbg !1335 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1337, metadata !DIExpression()), !dbg !1338
  br label %do.body, !dbg !1339

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1340

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1342

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1340

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1344

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1346

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1344, !srcloc !1348
  br label %do.body5, !dbg !1344

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1349

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1351

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1349

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1353
  %1 = getelementptr inbounds %struct.qspinlock, ptr %0, i32 0, i32 0, !dbg !1353
  %locked = getelementptr inbounds %struct.anon.2, ptr %1, i32 0, i32 0, !dbg !1353
  store volatile i8 0, ptr %locked, align 4, !dbg !1353
  br label %do.end9, !dbg !1353

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1349

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !1344

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !1340

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !1355
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #4 align 16 !dbg !1356 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1360, metadata !DIExpression()), !dbg !1361
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1362
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #12, !dbg !1364
  %tobool = icmp ne i32 %call, 0, !dbg !1364
  br i1 %tobool, label %if.end, label %if.then, !dbg !1365

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #12, !dbg !1366
  br label %if.end, !dbg !1366

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1367
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #4 align 16 !dbg !1368 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1370, metadata !DIExpression()), !dbg !1371
  %0 = load i64, ptr %flags.addr, align 8, !dbg !1372
  %and = and i64 %0, 512, !dbg !1373
  %tobool = icmp ne i64 %and, 0, !dbg !1374
  %lnot = xor i1 %tobool, true, !dbg !1374
  %lnot.ext = zext i1 %lnot to i32, !dbg !1374
  ret i32 %lnot.ext, !dbg !1375
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #4 align 16 !dbg !1376 {
entry:
  call void @native_irq_enable() #12, !dbg !1377
  ret void, !dbg !1378
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #4 align 16 !dbg !1379 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1380, !srcloc !1381
  ret void, !dbg !1382
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_read_trylock(ptr noundef %lock) #2 align 16 !dbg !1383 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %cnts = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1389, metadata !DIExpression()), !dbg !1391
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnts) #13, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %cnts, metadata !1390, metadata !DIExpression()), !dbg !1393
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1394
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1395
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !1396
  store i32 %call, ptr %cnts, align 4, !dbg !1397
  %2 = load i32, ptr %cnts, align 4, !dbg !1398
  %and = and i32 %2, 511, !dbg !1398
  %tobool = icmp ne i32 %and, 0, !dbg !1398
  %lnot = xor i1 %tobool, true, !dbg !1398
  %lnot1 = xor i1 %lnot, true, !dbg !1398
  %lnot2 = xor i1 %lnot1, true, !dbg !1398
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1398
  %conv = sext i32 %lnot.ext to i64, !dbg !1398
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1398
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1398
  br i1 %tobool3, label %if.then, label %if.end17, !dbg !1400

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !1401
  %4 = getelementptr inbounds %struct.qrwlock, ptr %3, i32 0, i32 0, !dbg !1403
  %call4 = call i32 @atomic_add_return_acquire(i32 noundef 512, ptr noundef %4) #12, !dbg !1404
  store i32 %call4, ptr %cnts, align 4, !dbg !1405
  %5 = load i32, ptr %cnts, align 4, !dbg !1406
  %and5 = and i32 %5, 511, !dbg !1406
  %tobool6 = icmp ne i32 %and5, 0, !dbg !1406
  %lnot7 = xor i1 %tobool6, true, !dbg !1406
  %lnot9 = xor i1 %lnot7, true, !dbg !1406
  %lnot11 = xor i1 %lnot9, true, !dbg !1406
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !1406
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !1406
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 1), !dbg !1406
  %tobool15 = icmp ne i64 %expval14, 0, !dbg !1406
  br i1 %tobool15, label %if.then16, label %if.end, !dbg !1408

if.then16:                                        ; preds = %if.then
  store i32 1, ptr %retval, align 4, !dbg !1409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1409

if.end:                                           ; preds = %if.then
  %6 = load ptr, ptr %lock.addr, align 8, !dbg !1410
  %7 = getelementptr inbounds %struct.qrwlock, ptr %6, i32 0, i32 0, !dbg !1411
  call void @atomic_sub(i32 noundef 512, ptr noundef %7) #12, !dbg !1412
  br label %if.end17, !dbg !1413

if.end17:                                         ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !1414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1414

cleanup:                                          ; preds = %if.end17, %if.then16
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnts) #13, !dbg !1415
  %8 = load i32, ptr %retval, align 4, !dbg !1415
  ret i32 %8, !dbg !1415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_add_return_acquire(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1416 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1420, metadata !DIExpression()), !dbg !1422
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1421, metadata !DIExpression()), !dbg !1423
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1424
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !1425
  %1 = load i32, ptr %i.addr, align 4, !dbg !1426
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1427
  %call = call i32 @raw_atomic_add_return_acquire(i32 noundef %1, ptr noundef %2) #12, !dbg !1428
  ret i32 %call, !dbg !1429
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1430 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1434, metadata !DIExpression()), !dbg !1436
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1435, metadata !DIExpression()), !dbg !1437
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1438
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !1439
  %1 = load i32, ptr %i.addr, align 4, !dbg !1440
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1441
  call void @raw_atomic_sub(i32 noundef %1, ptr noundef %2) #12, !dbg !1442
  ret void, !dbg !1443
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_add_return_acquire(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1444 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1446, metadata !DIExpression()), !dbg !1448
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1447, metadata !DIExpression()), !dbg !1449
  %0 = load i32, ptr %i.addr, align 4, !dbg !1450
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1451
  %call = call i32 @arch_atomic_add_return(i32 noundef %0, ptr noundef %1) #12, !dbg !1452
  ret i32 %call, !dbg !1453
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_add_return(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1454 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1456, metadata !DIExpression()), !dbg !1460
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1457, metadata !DIExpression()), !dbg !1461
  %0 = load i32, ptr %i.addr, align 4, !dbg !1462
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #13, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !1458, metadata !DIExpression()), !dbg !1463
  %1 = load i32, ptr %i.addr, align 4, !dbg !1463
  store i32 %1, ptr %__ret, align 4, !dbg !1463
  %2 = load i32, ptr %__ret, align 4, !dbg !1463
  %3 = load ptr, ptr %v.addr, align 8, !dbg !1463
  %counter = getelementptr inbounds %struct.atomic_t, ptr %3, i32 0, i32 0, !dbg !1463
  %4 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %2, ptr elementtype(i32) %counter) #13, !dbg !1463, !srcloc !1464
  store i32 %4, ptr %__ret, align 4, !dbg !1463
  %5 = load i32, ptr %__ret, align 4, !dbg !1463
  store i32 %5, ptr %tmp, align 4, !dbg !1463
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #13, !dbg !1465
  %6 = load i32, ptr %tmp, align 4, !dbg !1463
  %add = add i32 %0, %6, !dbg !1466
  ret i32 %add, !dbg !1467
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1468 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1470, metadata !DIExpression()), !dbg !1472
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1471, metadata !DIExpression()), !dbg !1473
  %0 = load i32, ptr %i.addr, align 4, !dbg !1474
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1475
  call void @arch_atomic_sub(i32 noundef %0, ptr noundef %1) #12, !dbg !1476
  ret void, !dbg !1477
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_sub(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1478 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1480, metadata !DIExpression()), !dbg !1482
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1481, metadata !DIExpression()), !dbg !1483
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1484
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !1485
  %1 = load i32, ptr %i.addr, align 4, !dbg !1486
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; subl $1,$0", "=*m,ir,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #13, !dbg !1487, !srcloc !1488
  ret void, !dbg !1489
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_read_lock(ptr noundef %lock) #2 align 16 !dbg !1490 {
entry:
  %lock.addr = alloca ptr, align 8
  %cnts = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1494, metadata !DIExpression()), !dbg !1496
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnts) #13, !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %cnts, metadata !1495, metadata !DIExpression()), !dbg !1498
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1499
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1500
  %call = call i32 @atomic_add_return_acquire(i32 noundef 512, ptr noundef %1) #12, !dbg !1501
  store i32 %call, ptr %cnts, align 4, !dbg !1502
  %2 = load i32, ptr %cnts, align 4, !dbg !1503
  %and = and i32 %2, 511, !dbg !1503
  %tobool = icmp ne i32 %and, 0, !dbg !1503
  %lnot = xor i1 %tobool, true, !dbg !1503
  %lnot1 = xor i1 %lnot, true, !dbg !1503
  %lnot2 = xor i1 %lnot1, true, !dbg !1503
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !1503
  %conv = sext i32 %lnot.ext to i64, !dbg !1503
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1503
  %tobool3 = icmp ne i64 %expval, 0, !dbg !1503
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1505

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1506

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !1507
  call void @queued_read_lock_slowpath(ptr noundef %3) #12, !dbg !1508
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1509
  br label %cleanup, !dbg !1509

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnts) #13, !dbg !1509
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1509

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1510 dso_local void @queued_read_lock_slowpath(ptr noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_read_unlock(ptr noundef %lock) #2 align 16 !dbg !1511 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1513, metadata !DIExpression()), !dbg !1514
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1515
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1516
  %call = call i32 @atomic_sub_return_release(i32 noundef 512, ptr noundef %1) #12, !dbg !1517
  ret void, !dbg !1518
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_sub_return_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1519 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1521, metadata !DIExpression()), !dbg !1523
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1522, metadata !DIExpression()), !dbg !1524
  br label %do.body, !dbg !1525

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1526

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1528
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #12, !dbg !1529
  %1 = load i32, ptr %i.addr, align 4, !dbg !1530
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1531
  %call = call i32 @raw_atomic_sub_return_release(i32 noundef %1, ptr noundef %2) #12, !dbg !1532
  ret i32 %call, !dbg !1533
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_sub_return_release(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1534 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1536, metadata !DIExpression()), !dbg !1538
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1537, metadata !DIExpression()), !dbg !1539
  %0 = load i32, ptr %i.addr, align 4, !dbg !1540
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1541
  %call = call i32 @arch_atomic_sub_return(i32 noundef %0, ptr noundef %1) #12, !dbg !1542
  ret i32 %call, !dbg !1543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_sub_return(i32 noundef %i, ptr noundef %v) #4 align 16 !dbg !1544 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1546, metadata !DIExpression()), !dbg !1548
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1547, metadata !DIExpression()), !dbg !1549
  %0 = load i32, ptr %i.addr, align 4, !dbg !1550
  %sub = sub i32 0, %0, !dbg !1551
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1552
  %call = call i32 @arch_atomic_add_return(i32 noundef %sub, ptr noundef %1) #12, !dbg !1553
  ret i32 %call, !dbg !1554
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @queued_write_trylock(ptr noundef %lock) #2 align 16 !dbg !1555 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca ptr, align 8
  %cnts = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1557, metadata !DIExpression()), !dbg !1559
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnts) #13, !dbg !1560
  call void @llvm.dbg.declare(metadata ptr %cnts, metadata !1558, metadata !DIExpression()), !dbg !1561
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1562
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1563
  %call = call i32 @atomic_read(ptr noundef %1) #12, !dbg !1564
  store i32 %call, ptr %cnts, align 4, !dbg !1565
  %2 = load i32, ptr %cnts, align 4, !dbg !1566
  %tobool = icmp ne i32 %2, 0, !dbg !1566
  %lnot = xor i1 %tobool, true, !dbg !1566
  %lnot1 = xor i1 %lnot, true, !dbg !1566
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1566
  %conv = sext i32 %lnot.ext to i64, !dbg !1566
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1566
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1566
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1568

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1569
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1569

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !1570
  %4 = getelementptr inbounds %struct.qrwlock, ptr %3, i32 0, i32 0, !dbg !1570
  %call3 = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %4, ptr noundef %cnts, i32 noundef 255) #12, !dbg !1570
  %lnot4 = xor i1 %call3, true, !dbg !1570
  %lnot6 = xor i1 %lnot4, true, !dbg !1570
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !1570
  %conv8 = sext i32 %lnot.ext7 to i64, !dbg !1570
  %expval9 = call i64 @llvm.expect.i64(i64 %conv8, i64 1), !dbg !1570
  %conv10 = trunc i64 %expval9 to i32, !dbg !1570
  store i32 %conv10, ptr %retval, align 4, !dbg !1571
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1571

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnts) #13, !dbg !1572
  %5 = load i32, ptr %retval, align 4, !dbg !1572
  ret i32 %5, !dbg !1572
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_write_lock(ptr noundef %lock) #2 align 16 !dbg !1573 {
entry:
  %lock.addr = alloca ptr, align 8
  %cnts = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1575, metadata !DIExpression()), !dbg !1577
  call void @llvm.lifetime.start.p0(i64 4, ptr %cnts) #13, !dbg !1578
  call void @llvm.dbg.declare(metadata ptr %cnts, metadata !1576, metadata !DIExpression()), !dbg !1579
  store i32 0, ptr %cnts, align 4, !dbg !1579
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1580
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1580
  %call = call zeroext i1 @atomic_try_cmpxchg_acquire(ptr noundef %1, ptr noundef %cnts, i32 noundef 255) #12, !dbg !1580
  %lnot = xor i1 %call, true, !dbg !1580
  %lnot1 = xor i1 %lnot, true, !dbg !1580
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1580
  %conv = sext i32 %lnot.ext to i64, !dbg !1580
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1580
  %tobool = icmp ne i64 %expval, 0, !dbg !1580
  br i1 %tobool, label %if.then, label %if.end, !dbg !1582

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1583

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !1584
  call void @queued_write_lock_slowpath(ptr noundef %2) #12, !dbg !1585
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1586
  br label %cleanup, !dbg !1586

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cnts) #13, !dbg !1586
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !1586

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1587 dso_local void @queued_write_lock_slowpath(ptr noundef) #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @queued_write_unlock(ptr noundef %lock) #2 align 16 !dbg !1588 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !1590, metadata !DIExpression()), !dbg !1591
  br label %do.body, !dbg !1592

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1593

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1595

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1593

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !1597

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !1599

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !dbg !1597, !srcloc !1601
  br label %do.body5, !dbg !1597

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1602

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1604

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1602

do.body8:                                         ; preds = %do.end7
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !1606
  %1 = getelementptr inbounds %struct.qrwlock, ptr %0, i32 0, i32 0, !dbg !1606
  %wlocked = getelementptr inbounds %struct.anon.5, ptr %1, i32 0, i32 0, !dbg !1606
  store volatile i8 0, ptr %wlocked, align 4, !dbg !1606
  br label %do.end9, !dbg !1606

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1602

do.end10:                                         ; preds = %do.end9
  br label %do.end11, !dbg !1597

do.end11:                                         ; preds = %do.end10
  br label %do.end12, !dbg !1593

do.end12:                                         ; preds = %do.end11
  ret void, !dbg !1608
}

attributes #0 = { fn_ret_thunk_extern noinline noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #7 = { nocallback nounwind }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone }
attributes #13 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!236}
!llvm.module.flags = !{!237, !238, !239, !240, !241, !242, !243, !244}
!llvm.ident = !{!245}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_trylock148", scope: !2, file: !3, line: 140, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/locking/.spinlock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/locking/spinlock\22 -D KBUILD_BASENAME=\22spinlock\22 -D KBUILD_MODNAME=\22spinlock\22 -D __KBUILD_MODNAME=kmod_spinlock -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/locking/spinlock.ll kernel/locking/spinlock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !11, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "kernel/locking/spinlock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "336d11089b6b09aea287a5f96b1bb153")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !{!12, !13, !14, !15, !19, !22, !23, !25}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !18, line: 27, baseType: !7)
!18 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !14)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !15)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !16, line: 17, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !18, line: 21, baseType: !29)
!29 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!30 = !{!0, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !129, !136, !149, !154, !185, !192, !205, !210, !215, !220, !231}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_trylock_bh149", scope: !2, file: !3, line: 148, type: !12, isLocal: true, isDefinition: true)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_lock150", scope: !2, file: !3, line: 156, type: !12, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_lock_irqsave151", scope: !2, file: !3, line: 164, type: !12, isLocal: true, isDefinition: true)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_lock_irq152", scope: !2, file: !3, line: 172, type: !12, isLocal: true, isDefinition: true)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_lock_bh153", scope: !2, file: !3, line: 180, type: !12, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_unlock154", scope: !2, file: !3, line: 188, type: !12, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_unlock_irqrestore155", scope: !2, file: !3, line: 196, type: !12, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_unlock_irq156", scope: !2, file: !3, line: 204, type: !12, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_spin_unlock_bh157", scope: !2, file: !3, line: 212, type: !12, isLocal: true, isDefinition: true)
!49 = !DIGlobalVariableExpression(var: !50, expr: !DIExpression())
!50 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_trylock158", scope: !2, file: !3, line: 222, type: !12, isLocal: true, isDefinition: true)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_lock159", scope: !2, file: !3, line: 230, type: !12, isLocal: true, isDefinition: true)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_lock_irqsave160", scope: !2, file: !3, line: 238, type: !12, isLocal: true, isDefinition: true)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_lock_irq161", scope: !2, file: !3, line: 246, type: !12, isLocal: true, isDefinition: true)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_lock_bh162", scope: !2, file: !3, line: 254, type: !12, isLocal: true, isDefinition: true)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_unlock163", scope: !2, file: !3, line: 262, type: !12, isLocal: true, isDefinition: true)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_unlock_irqrestore164", scope: !2, file: !3, line: 270, type: !12, isLocal: true, isDefinition: true)
!63 = !DIGlobalVariableExpression(var: !64, expr: !DIExpression())
!64 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_unlock_irq165", scope: !2, file: !3, line: 278, type: !12, isLocal: true, isDefinition: true)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_read_unlock_bh166", scope: !2, file: !3, line: 286, type: !12, isLocal: true, isDefinition: true)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_trylock167", scope: !2, file: !3, line: 294, type: !12, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_lock168", scope: !2, file: !3, line: 302, type: !12, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_lock_nested169", scope: !2, file: !3, line: 312, type: !12, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_lock_irqsave170", scope: !2, file: !3, line: 320, type: !12, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_lock_irq171", scope: !2, file: !3, line: 328, type: !12, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_lock_bh172", scope: !2, file: !3, line: 336, type: !12, isLocal: true, isDefinition: true)
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_unlock173", scope: !2, file: !3, line: 344, type: !12, isLocal: true, isDefinition: true)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_unlock_irqrestore174", scope: !2, file: !3, line: 352, type: !12, isLocal: true, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_unlock_irq175", scope: !2, file: !3, line: 360, type: !12, isLocal: true, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable__raw_write_unlock_bh176", scope: !2, file: !3, line: 368, type: !12, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_in_lock_functions177", scope: !2, file: !3, line: 415, type: !12, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule49", scope: !91, file: !92, line: 93, type: !12, isLocal: true, isDefinition: true)
!91 = distinct !DISubprogram(name: "__raw_spin_trylock", scope: !92, file: !92, line: 86, type: !93, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !127)
!92 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!93 = !DISubroutineType(types: !94)
!94 = !{!14, !95}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !97, line: 23, baseType: !98)
!97 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !97, line: 14, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !98, file: !97, line: 15, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !102, line: 44, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !102, line: 14, size: 32, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !102, line: 15, baseType: !106, size: 32)
!106 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !103, file: !102, line: 15, size: 32, elements: !107)
!107 = !{!108, !114, !119}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !106, file: !102, line: 16, baseType: !109, size: 32)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !110, line: 174, baseType: !111)
!110 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 172, size: 32, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !111, file: !110, line: 173, baseType: !14, size: 32)
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !102, line: 24, baseType: !115, size: 16)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !102, line: 24, size: 16, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !115, file: !102, line: 25, baseType: !27, size: 8)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !115, file: !102, line: 26, baseType: !27, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !102, line: 28, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !102, line: 28, size: 32, elements: !121)
!121 = !{!122, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !120, file: !102, line: 29, baseType: !123, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !16, line: 19, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !18, line: 24, baseType: !125)
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !120, file: !102, line: 30, baseType: !123, size: 16, offset: 16)
!127 = !{!128}
!128 = !DILocalVariable(name: "lock", arg: 1, scope: !91, file: !92, line: 86, type: !95)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule50", scope: !131, file: !92, line: 143, type: !12, isLocal: true, isDefinition: true)
!131 = distinct !DISubprogram(name: "__raw_spin_unlock", scope: !92, file: !92, line: 139, type: !132, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !95}
!134 = !{!135}
!135 = !DILocalVariable(name: "lock", arg: 1, scope: !131, file: !92, line: 139, type: !95)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule51", scope: !138, file: !92, line: 152, type: !12, isLocal: true, isDefinition: true)
!138 = distinct !DISubprogram(name: "__raw_spin_unlock_irqrestore", scope: !92, file: !92, line: 146, type: !139, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !95, !13}
!141 = !{!142, !143, !144, !148}
!142 = !DILocalVariable(name: "lock", arg: 1, scope: !138, file: !92, line: 146, type: !95)
!143 = !DILocalVariable(name: "flags", arg: 2, scope: !138, file: !92, line: 147, type: !13)
!144 = !DILocalVariable(name: "__dummy", scope: !145, file: !92, line: 151, type: !13)
!145 = distinct !DILexicalBlock(scope: !146, file: !92, line: 151, column: 2)
!146 = distinct !DILexicalBlock(scope: !147, file: !92, line: 151, column: 2)
!147 = distinct !DILexicalBlock(scope: !138, file: !92, line: 151, column: 2)
!148 = !DILocalVariable(name: "__dummy2", scope: !145, file: !92, line: 151, type: !13)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule52", scope: !151, file: !92, line: 160, type: !12, isLocal: true, isDefinition: true)
!151 = distinct !DISubprogram(name: "__raw_spin_unlock_irq", scope: !92, file: !92, line: 155, type: !132, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !152)
!152 = !{!153}
!153 = !DILocalVariable(name: "lock", arg: 1, scope: !151, file: !92, line: 155, type: !95)
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule53", scope: !156, file: !157, line: 125, type: !12, isLocal: true, isDefinition: true)
!156 = distinct !DISubprogram(name: "__raw_read_trylock", scope: !157, file: !157, line: 118, type: !158, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !183)
!157 = !DIFile(filename: "./include/linux/rwlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "752e3ce6205f1debb08c34677b6a0cdd")
!158 = !DISubroutineType(types: !159)
!159 = !{!14, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "rwlock_t", file: !162, line: 34, baseType: !163)
!162 = !DIFile(filename: "./include/linux/rwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dff80c89ec6551b7d56ae9ff5387a240")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !162, line: 25, size: 64, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !163, file: !162, line: 26, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_rwlock_t", file: !167, line: 27, baseType: !168)
!167 = !DIFile(filename: "./include/asm-generic/qrwlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "724e2bc1afabb3b7b6860c9799b9cd27")
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qrwlock", file: !167, line: 13, size: 64, elements: !169)
!169 = !{!170, !182}
!170 = !DIDerivedType(tag: DW_TAG_member, scope: !168, file: !167, line: 14, baseType: !171, size: 32)
!171 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !168, file: !167, line: 14, size: 32, elements: !172)
!172 = !{!173, !174}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "cnts", scope: !171, file: !167, line: 15, baseType: !109, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !167, line: 16, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !171, file: !167, line: 16, size: 32, elements: !176)
!176 = !{!177, !178}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "wlocked", scope: !175, file: !167, line: 18, baseType: !27, size: 8)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "__lstate", scope: !175, file: !167, line: 19, baseType: !179, size: 24, offset: 8)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 24, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !168, file: !167, line: 26, baseType: !101, size: 32, offset: 32)
!183 = !{!184}
!184 = !DILocalVariable(name: "lock", arg: 1, scope: !156, file: !157, line: 118, type: !160)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule56", scope: !187, file: !157, line: 233, type: !12, isLocal: true, isDefinition: true)
!187 = distinct !DISubprogram(name: "__raw_read_unlock", scope: !157, file: !157, line: 229, type: !188, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !160}
!190 = !{!191}
!191 = !DILocalVariable(name: "lock", arg: 1, scope: !187, file: !157, line: 229, type: !160)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule57", scope: !194, file: !157, line: 242, type: !12, isLocal: true, isDefinition: true)
!194 = distinct !DISubprogram(name: "__raw_read_unlock_irqrestore", scope: !157, file: !157, line: 237, type: !195, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !160, !13}
!197 = !{!198, !199, !200, !204}
!198 = !DILocalVariable(name: "lock", arg: 1, scope: !194, file: !157, line: 237, type: !160)
!199 = !DILocalVariable(name: "flags", arg: 2, scope: !194, file: !157, line: 237, type: !13)
!200 = !DILocalVariable(name: "__dummy", scope: !201, file: !157, line: 241, type: !13)
!201 = distinct !DILexicalBlock(scope: !202, file: !157, line: 241, column: 2)
!202 = distinct !DILexicalBlock(scope: !203, file: !157, line: 241, column: 2)
!203 = distinct !DILexicalBlock(scope: !194, file: !157, line: 241, column: 2)
!204 = !DILocalVariable(name: "__dummy2", scope: !201, file: !157, line: 241, type: !13)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule58", scope: !207, file: !157, line: 250, type: !12, isLocal: true, isDefinition: true)
!207 = distinct !DISubprogram(name: "__raw_read_unlock_irq", scope: !157, file: !157, line: 245, type: !188, scopeLine: 246, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !208)
!208 = !{!209}
!209 = !DILocalVariable(name: "lock", arg: 1, scope: !207, file: !157, line: 245, type: !160)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule54", scope: !212, file: !157, line: 136, type: !12, isLocal: true, isDefinition: true)
!212 = distinct !DISubprogram(name: "__raw_write_trylock", scope: !157, file: !157, line: 129, type: !158, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !213)
!213 = !{!214}
!214 = !DILocalVariable(name: "lock", arg: 1, scope: !212, file: !157, line: 129, type: !160)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule55", scope: !217, file: !157, line: 226, type: !12, isLocal: true, isDefinition: true)
!217 = distinct !DISubprogram(name: "__raw_write_unlock", scope: !157, file: !157, line: 222, type: !188, scopeLine: 223, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219}
!219 = !DILocalVariable(name: "lock", arg: 1, scope: !217, file: !157, line: 222, type: !160)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule59", scope: !222, file: !157, line: 266, type: !12, isLocal: true, isDefinition: true)
!222 = distinct !DISubprogram(name: "__raw_write_unlock_irqrestore", scope: !157, file: !157, line: 260, type: !195, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !223)
!223 = !{!224, !225, !226, !230}
!224 = !DILocalVariable(name: "lock", arg: 1, scope: !222, file: !157, line: 260, type: !160)
!225 = !DILocalVariable(name: "flags", arg: 2, scope: !222, file: !157, line: 261, type: !13)
!226 = !DILocalVariable(name: "__dummy", scope: !227, file: !157, line: 265, type: !13)
!227 = distinct !DILexicalBlock(scope: !228, file: !157, line: 265, column: 2)
!228 = distinct !DILexicalBlock(scope: !229, file: !157, line: 265, column: 2)
!229 = distinct !DILexicalBlock(scope: !222, file: !157, line: 265, column: 2)
!230 = !DILocalVariable(name: "__dummy2", scope: !227, file: !157, line: 265, type: !13)
!231 = !DIGlobalVariableExpression(var: !232, expr: !DIExpression())
!232 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule60", scope: !233, file: !157, line: 274, type: !12, isLocal: true, isDefinition: true)
!233 = distinct !DISubprogram(name: "__raw_write_unlock_irq", scope: !157, file: !157, line: 269, type: !188, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !234)
!234 = !{!235}
!235 = !DILocalVariable(name: "lock", arg: 1, scope: !233, file: !157, line: 269, type: !160)
!236 = !{!"rsp"}
!237 = !{i32 7, !"Dwarf Version", i32 5}
!238 = !{i32 2, !"Debug Info Version", i32 3}
!239 = !{i32 1, !"wchar_size", i32 2}
!240 = !{i32 8, !"cf-protection-branch", i32 1}
!241 = !{i32 4, !"function_return_thunk_extern", i32 1}
!242 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!243 = !{i32 1, !"Code Model", i32 2}
!244 = !{i32 1, !"override-stack-alignment", i32 8}
!245 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!246 = distinct !DISubprogram(name: "_raw_spin_trylock", scope: !3, file: !3, line: 136, type: !93, scopeLine: 137, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !247)
!247 = !{!248}
!248 = !DILocalVariable(name: "lock", arg: 1, scope: !246, file: !3, line: 136, type: !95)
!249 = !DILocation(line: 136, column: 59, scope: !246)
!250 = !DILocation(line: 138, column: 28, scope: !246)
!251 = !DILocation(line: 138, column: 9, scope: !246)
!252 = !DILocation(line: 138, column: 2, scope: !246)
!253 = !DILocation(line: 86, column: 54, scope: !91)
!254 = !DILocation(line: 88, column: 2, scope: !91)
!255 = !DILocation(line: 88, column: 2, scope: !256)
!256 = distinct !DILexicalBlock(scope: !91, file: !92, line: 88, column: 2)
!257 = !{i64 2149643371}
!258 = !DILocation(line: 89, column: 26, scope: !259)
!259 = distinct !DILexicalBlock(scope: !91, file: !92, line: 89, column: 6)
!260 = !DILocation(line: 89, column: 6, scope: !259)
!261 = !DILocation(line: 89, column: 6, scope: !91)
!262 = !DILocation(line: 90, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !92, line: 89, column: 33)
!264 = !DILocation(line: 90, column: 3, scope: !265)
!265 = distinct !DILexicalBlock(scope: !263, file: !92, line: 90, column: 3)
!266 = !DILocation(line: 91, column: 3, scope: !263)
!267 = !DILocation(line: 93, column: 2, scope: !91)
!268 = !DILocation(line: 93, column: 2, scope: !269)
!269 = distinct !DILexicalBlock(scope: !91, file: !92, line: 93, column: 2)
!270 = !{i64 2149643800}
!271 = !DILocation(line: 93, column: 2, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !92, line: 93, column: 2)
!273 = !DILocation(line: 93, column: 2, scope: !274)
!274 = distinct !DILexicalBlock(scope: !272, file: !92, line: 93, column: 2)
!275 = !{i64 2149643982}
!276 = !DILocation(line: 94, column: 2, scope: !91)
!277 = !DILocation(line: 95, column: 1, scope: !91)
!278 = distinct !DISubprogram(name: "_raw_spin_trylock_bh", scope: !3, file: !3, line: 144, type: !93, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "lock", arg: 1, scope: !278, file: !3, line: 144, type: !95)
!281 = !DILocation(line: 144, column: 62, scope: !278)
!282 = !DILocation(line: 146, column: 31, scope: !278)
!283 = !DILocation(line: 146, column: 9, scope: !278)
!284 = !DILocation(line: 146, column: 2, scope: !278)
!285 = distinct !DISubprogram(name: "__raw_spin_trylock_bh", scope: !92, file: !92, line: 170, type: !93, scopeLine: 171, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !286)
!286 = !{!287}
!287 = !DILocalVariable(name: "lock", arg: 1, scope: !285, file: !92, line: 170, type: !95)
!288 = !DILocation(line: 170, column: 57, scope: !285)
!289 = !DILocation(line: 172, column: 24, scope: !285)
!290 = !DILocation(line: 172, column: 2, scope: !285)
!291 = !DILocation(line: 173, column: 26, scope: !292)
!292 = distinct !DILexicalBlock(scope: !285, file: !92, line: 173, column: 6)
!293 = !DILocation(line: 173, column: 6, scope: !292)
!294 = !DILocation(line: 173, column: 6, scope: !285)
!295 = !DILocation(line: 174, column: 3, scope: !296)
!296 = distinct !DILexicalBlock(scope: !292, file: !92, line: 173, column: 33)
!297 = !DILocation(line: 174, column: 3, scope: !298)
!298 = distinct !DILexicalBlock(scope: !296, file: !92, line: 174, column: 3)
!299 = !DILocation(line: 175, column: 3, scope: !296)
!300 = !DILocation(line: 177, column: 23, scope: !285)
!301 = !DILocation(line: 177, column: 2, scope: !285)
!302 = !DILocation(line: 178, column: 2, scope: !285)
!303 = !DILocation(line: 179, column: 1, scope: !285)
!304 = distinct !DISubprogram(name: "_raw_spin_lock", scope: !3, file: !3, line: 152, type: !132, scopeLine: 153, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !305)
!305 = !{!306}
!306 = !DILocalVariable(name: "lock", arg: 1, scope: !304, file: !3, line: 152, type: !95)
!307 = !DILocation(line: 152, column: 57, scope: !304)
!308 = !DILocation(line: 154, column: 18, scope: !304)
!309 = !DILocation(line: 154, column: 2, scope: !304)
!310 = !DILocation(line: 155, column: 1, scope: !304)
!311 = distinct !DISubprogram(name: "__raw_spin_lock", scope: !92, file: !92, line: 130, type: !132, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !312)
!312 = !{!313}
!313 = !DILocalVariable(name: "lock", arg: 1, scope: !311, file: !92, line: 130, type: !95)
!314 = !DILocation(line: 130, column: 52, scope: !311)
!315 = !DILocation(line: 132, column: 2, scope: !311)
!316 = !DILocation(line: 132, column: 2, scope: !317)
!317 = distinct !DILexicalBlock(scope: !311, file: !92, line: 132, column: 2)
!318 = !{i64 2149648173}
!319 = !DILocation(line: 133, column: 2, scope: !311)
!320 = !DILocation(line: 133, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !311, file: !92, line: 133, column: 2)
!322 = !DILocation(line: 134, column: 2, scope: !311)
!323 = !DILocation(line: 135, column: 1, scope: !311)
!324 = distinct !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !3, file: !3, line: 160, type: !325, scopeLine: 161, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!13, !95}
!327 = !{!328}
!328 = !DILocalVariable(name: "lock", arg: 1, scope: !324, file: !3, line: 160, type: !95)
!329 = !DILocation(line: 160, column: 74, scope: !324)
!330 = !DILocation(line: 162, column: 33, scope: !324)
!331 = !DILocation(line: 162, column: 9, scope: !324)
!332 = !DILocation(line: 162, column: 2, scope: !324)
!333 = distinct !DISubprogram(name: "__raw_spin_lock_irqsave", scope: !92, file: !92, line: 104, type: !325, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !334)
!334 = !{!335, !336, !337, !341}
!335 = !DILocalVariable(name: "lock", arg: 1, scope: !333, file: !92, line: 104, type: !95)
!336 = !DILocalVariable(name: "flags", scope: !333, file: !92, line: 106, type: !13)
!337 = !DILocalVariable(name: "__dummy", scope: !338, file: !92, line: 108, type: !13)
!338 = distinct !DILexicalBlock(scope: !339, file: !92, line: 108, column: 2)
!339 = distinct !DILexicalBlock(scope: !340, file: !92, line: 108, column: 2)
!340 = distinct !DILexicalBlock(scope: !333, file: !92, line: 108, column: 2)
!341 = !DILocalVariable(name: "__dummy2", scope: !338, file: !92, line: 108, type: !13)
!342 = !DILocation(line: 104, column: 69, scope: !333)
!343 = !DILocation(line: 106, column: 2, scope: !333)
!344 = !DILocation(line: 106, column: 16, scope: !333)
!345 = !DILocation(line: 108, column: 2, scope: !333)
!346 = !DILocation(line: 108, column: 2, scope: !340)
!347 = !DILocation(line: 108, column: 2, scope: !338)
!348 = !DILocation(line: 108, column: 2, scope: !339)
!349 = !DILocation(line: 109, column: 2, scope: !333)
!350 = !DILocation(line: 109, column: 2, scope: !351)
!351 = distinct !DILexicalBlock(scope: !333, file: !92, line: 109, column: 2)
!352 = !{i64 2149646138}
!353 = !DILocation(line: 110, column: 2, scope: !333)
!354 = !DILocation(line: 110, column: 2, scope: !355)
!355 = distinct !DILexicalBlock(scope: !333, file: !92, line: 110, column: 2)
!356 = !DILocation(line: 111, column: 2, scope: !333)
!357 = !DILocation(line: 112, column: 9, scope: !333)
!358 = !DILocation(line: 113, column: 1, scope: !333)
!359 = !DILocation(line: 112, column: 2, scope: !333)
!360 = distinct !DISubprogram(name: "_raw_spin_lock_irq", scope: !3, file: !3, line: 168, type: !132, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !361)
!361 = !{!362}
!362 = !DILocalVariable(name: "lock", arg: 1, scope: !360, file: !3, line: 168, type: !95)
!363 = !DILocation(line: 168, column: 61, scope: !360)
!364 = !DILocation(line: 170, column: 22, scope: !360)
!365 = !DILocation(line: 170, column: 2, scope: !360)
!366 = !DILocation(line: 171, column: 1, scope: !360)
!367 = distinct !DISubprogram(name: "__raw_spin_lock_irq", scope: !92, file: !92, line: 115, type: !132, scopeLine: 116, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !368)
!368 = !{!369}
!369 = !DILocalVariable(name: "lock", arg: 1, scope: !367, file: !92, line: 115, type: !95)
!370 = !DILocation(line: 115, column: 56, scope: !367)
!371 = !DILocation(line: 117, column: 2, scope: !367)
!372 = !DILocation(line: 117, column: 2, scope: !373)
!373 = distinct !DILexicalBlock(scope: !367, file: !92, line: 117, column: 2)
!374 = !DILocation(line: 118, column: 2, scope: !367)
!375 = !DILocation(line: 118, column: 2, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !92, line: 118, column: 2)
!377 = !{i64 2149646832}
!378 = !DILocation(line: 119, column: 2, scope: !367)
!379 = !DILocation(line: 119, column: 2, scope: !380)
!380 = distinct !DILexicalBlock(scope: !367, file: !92, line: 119, column: 2)
!381 = !DILocation(line: 120, column: 2, scope: !367)
!382 = !DILocation(line: 121, column: 1, scope: !367)
!383 = distinct !DISubprogram(name: "_raw_spin_lock_bh", scope: !3, file: !3, line: 176, type: !132, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !384)
!384 = !{!385}
!385 = !DILocalVariable(name: "lock", arg: 1, scope: !383, file: !3, line: 176, type: !95)
!386 = !DILocation(line: 176, column: 60, scope: !383)
!387 = !DILocation(line: 178, column: 21, scope: !383)
!388 = !DILocation(line: 178, column: 2, scope: !383)
!389 = !DILocation(line: 179, column: 1, scope: !383)
!390 = distinct !DISubprogram(name: "__raw_spin_lock_bh", scope: !92, file: !92, line: 123, type: !132, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!391 = !{!392}
!392 = !DILocalVariable(name: "lock", arg: 1, scope: !390, file: !92, line: 123, type: !95)
!393 = !DILocation(line: 123, column: 55, scope: !390)
!394 = !DILocation(line: 125, column: 24, scope: !390)
!395 = !DILocation(line: 125, column: 2, scope: !390)
!396 = !DILocation(line: 126, column: 2, scope: !390)
!397 = !DILocation(line: 126, column: 2, scope: !398)
!398 = distinct !DILexicalBlock(scope: !390, file: !92, line: 126, column: 2)
!399 = !DILocation(line: 127, column: 2, scope: !390)
!400 = !DILocation(line: 128, column: 1, scope: !390)
!401 = distinct !DISubprogram(name: "_raw_spin_unlock", scope: !3, file: !3, line: 184, type: !132, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !402)
!402 = !{!403}
!403 = !DILocalVariable(name: "lock", arg: 1, scope: !401, file: !3, line: 184, type: !95)
!404 = !DILocation(line: 184, column: 59, scope: !401)
!405 = !DILocation(line: 186, column: 20, scope: !401)
!406 = !DILocation(line: 186, column: 2, scope: !401)
!407 = !DILocation(line: 187, column: 1, scope: !401)
!408 = !DILocation(line: 139, column: 54, scope: !131)
!409 = !DILocation(line: 141, column: 2, scope: !131)
!410 = !DILocation(line: 141, column: 2, scope: !411)
!411 = distinct !DILexicalBlock(scope: !131, file: !92, line: 141, column: 2)
!412 = !DILocation(line: 142, column: 21, scope: !131)
!413 = !DILocation(line: 142, column: 2, scope: !131)
!414 = !DILocation(line: 143, column: 2, scope: !131)
!415 = !DILocation(line: 143, column: 2, scope: !416)
!416 = distinct !DILexicalBlock(scope: !131, file: !92, line: 143, column: 2)
!417 = !{i64 2149648938}
!418 = !DILocation(line: 143, column: 2, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !92, line: 143, column: 2)
!420 = !DILocation(line: 143, column: 2, scope: !421)
!421 = distinct !DILexicalBlock(scope: !419, file: !92, line: 143, column: 2)
!422 = !{i64 2149649120}
!423 = !DILocation(line: 144, column: 1, scope: !131)
!424 = distinct !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !3, file: !3, line: 192, type: !139, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !425)
!425 = !{!426, !427}
!426 = !DILocalVariable(name: "lock", arg: 1, scope: !424, file: !3, line: 192, type: !95)
!427 = !DILocalVariable(name: "flags", arg: 2, scope: !424, file: !3, line: 192, type: !13)
!428 = !DILocation(line: 192, column: 70, scope: !424)
!429 = !DILocation(line: 192, column: 90, scope: !424)
!430 = !DILocation(line: 194, column: 31, scope: !424)
!431 = !DILocation(line: 194, column: 37, scope: !424)
!432 = !DILocation(line: 194, column: 2, scope: !424)
!433 = !DILocation(line: 195, column: 1, scope: !424)
!434 = !DILocation(line: 146, column: 65, scope: !138)
!435 = !DILocation(line: 147, column: 24, scope: !138)
!436 = !DILocation(line: 149, column: 2, scope: !138)
!437 = !DILocation(line: 149, column: 2, scope: !438)
!438 = distinct !DILexicalBlock(scope: !138, file: !92, line: 149, column: 2)
!439 = !DILocation(line: 150, column: 21, scope: !138)
!440 = !DILocation(line: 150, column: 2, scope: !138)
!441 = !DILocation(line: 151, column: 2, scope: !138)
!442 = !DILocation(line: 151, column: 2, scope: !147)
!443 = !DILocation(line: 151, column: 2, scope: !145)
!444 = !DILocation(line: 151, column: 2, scope: !146)
!445 = !DILocation(line: 151, column: 2, scope: !446)
!446 = distinct !DILexicalBlock(scope: !146, file: !92, line: 151, column: 2)
!447 = !DILocation(line: 152, column: 2, scope: !138)
!448 = !DILocation(line: 152, column: 2, scope: !449)
!449 = distinct !DILexicalBlock(scope: !138, file: !92, line: 152, column: 2)
!450 = !{i64 2149651470}
!451 = !DILocation(line: 152, column: 2, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !92, line: 152, column: 2)
!453 = !DILocation(line: 152, column: 2, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !92, line: 152, column: 2)
!455 = !{i64 2149651652}
!456 = !DILocation(line: 153, column: 1, scope: !138)
!457 = distinct !DISubprogram(name: "_raw_spin_unlock_irq", scope: !3, file: !3, line: 200, type: !132, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !458)
!458 = !{!459}
!459 = !DILocalVariable(name: "lock", arg: 1, scope: !457, file: !3, line: 200, type: !95)
!460 = !DILocation(line: 200, column: 63, scope: !457)
!461 = !DILocation(line: 202, column: 24, scope: !457)
!462 = !DILocation(line: 202, column: 2, scope: !457)
!463 = !DILocation(line: 203, column: 1, scope: !457)
!464 = !DILocation(line: 155, column: 58, scope: !151)
!465 = !DILocation(line: 157, column: 2, scope: !151)
!466 = !DILocation(line: 157, column: 2, scope: !467)
!467 = distinct !DILexicalBlock(scope: !151, file: !92, line: 157, column: 2)
!468 = !DILocation(line: 158, column: 21, scope: !151)
!469 = !DILocation(line: 158, column: 2, scope: !151)
!470 = !DILocation(line: 159, column: 2, scope: !151)
!471 = !DILocation(line: 159, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !151, file: !92, line: 159, column: 2)
!473 = !DILocation(line: 160, column: 2, scope: !151)
!474 = !DILocation(line: 160, column: 2, scope: !475)
!475 = distinct !DILexicalBlock(scope: !151, file: !92, line: 160, column: 2)
!476 = !{i64 2149653744}
!477 = !DILocation(line: 160, column: 2, scope: !478)
!478 = distinct !DILexicalBlock(scope: !475, file: !92, line: 160, column: 2)
!479 = !DILocation(line: 160, column: 2, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !92, line: 160, column: 2)
!481 = !{i64 2149653926}
!482 = !DILocation(line: 161, column: 1, scope: !151)
!483 = distinct !DISubprogram(name: "_raw_spin_unlock_bh", scope: !3, file: !3, line: 208, type: !132, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!484 = !{!485}
!485 = !DILocalVariable(name: "lock", arg: 1, scope: !483, file: !3, line: 208, type: !95)
!486 = !DILocation(line: 208, column: 62, scope: !483)
!487 = !DILocation(line: 210, column: 23, scope: !483)
!488 = !DILocation(line: 210, column: 2, scope: !483)
!489 = !DILocation(line: 211, column: 1, scope: !483)
!490 = distinct !DISubprogram(name: "__raw_spin_unlock_bh", scope: !92, file: !92, line: 163, type: !132, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !491)
!491 = !{!492}
!492 = !DILocalVariable(name: "lock", arg: 1, scope: !490, file: !92, line: 163, type: !95)
!493 = !DILocation(line: 163, column: 57, scope: !490)
!494 = !DILocation(line: 165, column: 2, scope: !490)
!495 = !DILocation(line: 165, column: 2, scope: !496)
!496 = distinct !DILexicalBlock(scope: !490, file: !92, line: 165, column: 2)
!497 = !DILocation(line: 166, column: 21, scope: !490)
!498 = !DILocation(line: 166, column: 2, scope: !490)
!499 = !DILocation(line: 167, column: 23, scope: !490)
!500 = !DILocation(line: 167, column: 2, scope: !490)
!501 = !DILocation(line: 168, column: 1, scope: !490)
!502 = distinct !DISubprogram(name: "_raw_read_trylock", scope: !3, file: !3, line: 218, type: !158, scopeLine: 219, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!503 = !{!504}
!504 = !DILocalVariable(name: "lock", arg: 1, scope: !502, file: !3, line: 218, type: !160)
!505 = !DILocation(line: 218, column: 53, scope: !502)
!506 = !DILocation(line: 220, column: 28, scope: !502)
!507 = !DILocation(line: 220, column: 9, scope: !502)
!508 = !DILocation(line: 220, column: 2, scope: !502)
!509 = !DILocation(line: 118, column: 48, scope: !156)
!510 = !DILocation(line: 120, column: 2, scope: !156)
!511 = !DILocation(line: 120, column: 2, scope: !512)
!512 = distinct !DILexicalBlock(scope: !156, file: !157, line: 120, column: 2)
!513 = !{i64 2149666880}
!514 = !DILocation(line: 121, column: 6, scope: !515)
!515 = distinct !DILexicalBlock(scope: !156, file: !157, line: 121, column: 6)
!516 = !DILocation(line: 121, column: 6, scope: !156)
!517 = !DILocation(line: 122, column: 3, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !157, line: 121, column: 33)
!519 = !DILocation(line: 122, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !157, line: 122, column: 3)
!521 = distinct !DILexicalBlock(scope: !518, file: !157, line: 122, column: 3)
!522 = !DILocation(line: 122, column: 3, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !157, line: 122, column: 3)
!524 = !DILocation(line: 122, column: 3, scope: !521)
!525 = !DILocation(line: 123, column: 3, scope: !518)
!526 = !DILocation(line: 125, column: 2, scope: !156)
!527 = !DILocation(line: 125, column: 2, scope: !528)
!528 = distinct !DILexicalBlock(scope: !156, file: !157, line: 125, column: 2)
!529 = !{i64 2149667735}
!530 = !DILocation(line: 125, column: 2, scope: !531)
!531 = distinct !DILexicalBlock(scope: !528, file: !157, line: 125, column: 2)
!532 = !DILocation(line: 125, column: 2, scope: !533)
!533 = distinct !DILexicalBlock(scope: !531, file: !157, line: 125, column: 2)
!534 = !{i64 2149667917}
!535 = !DILocation(line: 126, column: 2, scope: !156)
!536 = !DILocation(line: 127, column: 1, scope: !156)
!537 = distinct !DISubprogram(name: "_raw_read_lock", scope: !3, file: !3, line: 226, type: !188, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !538)
!538 = !{!539}
!539 = !DILocalVariable(name: "lock", arg: 1, scope: !537, file: !3, line: 226, type: !160)
!540 = !DILocation(line: 226, column: 51, scope: !537)
!541 = !DILocation(line: 228, column: 18, scope: !537)
!542 = !DILocation(line: 228, column: 2, scope: !537)
!543 = !DILocation(line: 229, column: 1, scope: !537)
!544 = distinct !DISubprogram(name: "__raw_read_lock", scope: !157, file: !157, line: 147, type: !188, scopeLine: 148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!545 = !{!546}
!546 = !DILocalVariable(name: "lock", arg: 1, scope: !544, file: !157, line: 147, type: !160)
!547 = !DILocation(line: 147, column: 46, scope: !544)
!548 = !DILocation(line: 149, column: 2, scope: !544)
!549 = !DILocation(line: 149, column: 2, scope: !550)
!550 = distinct !DILexicalBlock(scope: !544, file: !157, line: 149, column: 2)
!551 = !{i64 2149672395}
!552 = !DILocation(line: 150, column: 2, scope: !544)
!553 = !DILocation(line: 150, column: 2, scope: !554)
!554 = distinct !DILexicalBlock(scope: !555, file: !157, line: 150, column: 2)
!555 = distinct !DILexicalBlock(scope: !544, file: !157, line: 150, column: 2)
!556 = !DILocation(line: 150, column: 2, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !157, line: 150, column: 2)
!558 = !DILocation(line: 150, column: 2, scope: !555)
!559 = !DILocation(line: 151, column: 2, scope: !544)
!560 = !DILocation(line: 151, column: 2, scope: !561)
!561 = distinct !DILexicalBlock(scope: !544, file: !157, line: 151, column: 2)
!562 = !DILocation(line: 152, column: 1, scope: !544)
!563 = distinct !DISubprogram(name: "_raw_read_lock_irqsave", scope: !3, file: !3, line: 234, type: !564, scopeLine: 235, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!564 = !DISubroutineType(types: !565)
!565 = !{!13, !160}
!566 = !{!567}
!567 = !DILocalVariable(name: "lock", arg: 1, scope: !563, file: !3, line: 234, type: !160)
!568 = !DILocation(line: 234, column: 68, scope: !563)
!569 = !DILocation(line: 236, column: 33, scope: !563)
!570 = !DILocation(line: 236, column: 9, scope: !563)
!571 = !DILocation(line: 236, column: 2, scope: !563)
!572 = distinct !DISubprogram(name: "__raw_read_lock_irqsave", scope: !157, file: !157, line: 154, type: !564, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !573)
!573 = !{!574, !575, !576, !580}
!574 = !DILocalVariable(name: "lock", arg: 1, scope: !572, file: !157, line: 154, type: !160)
!575 = !DILocalVariable(name: "flags", scope: !572, file: !157, line: 156, type: !13)
!576 = !DILocalVariable(name: "__dummy", scope: !577, file: !157, line: 158, type: !13)
!577 = distinct !DILexicalBlock(scope: !578, file: !157, line: 158, column: 2)
!578 = distinct !DILexicalBlock(scope: !579, file: !157, line: 158, column: 2)
!579 = distinct !DILexicalBlock(scope: !572, file: !157, line: 158, column: 2)
!580 = !DILocalVariable(name: "__dummy2", scope: !577, file: !157, line: 158, type: !13)
!581 = !DILocation(line: 154, column: 63, scope: !572)
!582 = !DILocation(line: 156, column: 2, scope: !572)
!583 = !DILocation(line: 156, column: 16, scope: !572)
!584 = !DILocation(line: 158, column: 2, scope: !572)
!585 = !DILocation(line: 158, column: 2, scope: !579)
!586 = !DILocation(line: 158, column: 2, scope: !577)
!587 = !DILocation(line: 158, column: 2, scope: !578)
!588 = !DILocation(line: 159, column: 2, scope: !572)
!589 = !DILocation(line: 159, column: 2, scope: !590)
!590 = distinct !DILexicalBlock(scope: !572, file: !157, line: 159, column: 2)
!591 = !{i64 2149673751}
!592 = !DILocation(line: 160, column: 2, scope: !572)
!593 = !DILocation(line: 160, column: 2, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !157, line: 160, column: 2)
!595 = distinct !DILexicalBlock(scope: !572, file: !157, line: 160, column: 2)
!596 = !DILocation(line: 160, column: 2, scope: !597)
!597 = distinct !DILexicalBlock(scope: !594, file: !157, line: 160, column: 2)
!598 = !DILocation(line: 160, column: 2, scope: !595)
!599 = !DILocation(line: 161, column: 2, scope: !572)
!600 = !DILocation(line: 161, column: 2, scope: !601)
!601 = distinct !DILexicalBlock(scope: !572, file: !157, line: 161, column: 2)
!602 = !DILocation(line: 162, column: 9, scope: !572)
!603 = !DILocation(line: 163, column: 1, scope: !572)
!604 = !DILocation(line: 162, column: 2, scope: !572)
!605 = distinct !DISubprogram(name: "_raw_read_lock_irq", scope: !3, file: !3, line: 242, type: !188, scopeLine: 243, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!606 = !{!607}
!607 = !DILocalVariable(name: "lock", arg: 1, scope: !605, file: !3, line: 242, type: !160)
!608 = !DILocation(line: 242, column: 55, scope: !605)
!609 = !DILocation(line: 244, column: 22, scope: !605)
!610 = !DILocation(line: 244, column: 2, scope: !605)
!611 = !DILocation(line: 245, column: 1, scope: !605)
!612 = distinct !DISubprogram(name: "__raw_read_lock_irq", scope: !157, file: !157, line: 165, type: !188, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !613)
!613 = !{!614}
!614 = !DILocalVariable(name: "lock", arg: 1, scope: !612, file: !157, line: 165, type: !160)
!615 = !DILocation(line: 165, column: 50, scope: !612)
!616 = !DILocation(line: 167, column: 2, scope: !612)
!617 = !DILocation(line: 167, column: 2, scope: !618)
!618 = distinct !DILexicalBlock(scope: !612, file: !157, line: 167, column: 2)
!619 = !DILocation(line: 168, column: 2, scope: !612)
!620 = !DILocation(line: 168, column: 2, scope: !621)
!621 = distinct !DILexicalBlock(scope: !612, file: !157, line: 168, column: 2)
!622 = !{i64 2149674907}
!623 = !DILocation(line: 169, column: 2, scope: !612)
!624 = !DILocation(line: 169, column: 2, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !157, line: 169, column: 2)
!626 = distinct !DILexicalBlock(scope: !612, file: !157, line: 169, column: 2)
!627 = !DILocation(line: 169, column: 2, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !157, line: 169, column: 2)
!629 = !DILocation(line: 169, column: 2, scope: !626)
!630 = !DILocation(line: 170, column: 2, scope: !612)
!631 = !DILocation(line: 170, column: 2, scope: !632)
!632 = distinct !DILexicalBlock(scope: !612, file: !157, line: 170, column: 2)
!633 = !DILocation(line: 171, column: 1, scope: !612)
!634 = distinct !DISubprogram(name: "_raw_read_lock_bh", scope: !3, file: !3, line: 250, type: !188, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !635)
!635 = !{!636}
!636 = !DILocalVariable(name: "lock", arg: 1, scope: !634, file: !3, line: 250, type: !160)
!637 = !DILocation(line: 250, column: 54, scope: !634)
!638 = !DILocation(line: 252, column: 21, scope: !634)
!639 = !DILocation(line: 252, column: 2, scope: !634)
!640 = !DILocation(line: 253, column: 1, scope: !634)
!641 = distinct !DISubprogram(name: "__raw_read_lock_bh", scope: !157, file: !157, line: 173, type: !188, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !642)
!642 = !{!643}
!643 = !DILocalVariable(name: "lock", arg: 1, scope: !641, file: !157, line: 173, type: !160)
!644 = !DILocation(line: 173, column: 49, scope: !641)
!645 = !DILocation(line: 175, column: 24, scope: !641)
!646 = !DILocation(line: 175, column: 2, scope: !641)
!647 = !DILocation(line: 176, column: 2, scope: !641)
!648 = !DILocation(line: 176, column: 2, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !157, line: 176, column: 2)
!650 = distinct !DILexicalBlock(scope: !641, file: !157, line: 176, column: 2)
!651 = !DILocation(line: 176, column: 2, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !157, line: 176, column: 2)
!653 = !DILocation(line: 176, column: 2, scope: !650)
!654 = !DILocation(line: 177, column: 2, scope: !641)
!655 = !DILocation(line: 177, column: 2, scope: !656)
!656 = distinct !DILexicalBlock(scope: !641, file: !157, line: 177, column: 2)
!657 = !DILocation(line: 178, column: 1, scope: !641)
!658 = distinct !DISubprogram(name: "_raw_read_unlock", scope: !3, file: !3, line: 258, type: !188, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !659)
!659 = !{!660}
!660 = !DILocalVariable(name: "lock", arg: 1, scope: !658, file: !3, line: 258, type: !160)
!661 = !DILocation(line: 258, column: 53, scope: !658)
!662 = !DILocation(line: 260, column: 20, scope: !658)
!663 = !DILocation(line: 260, column: 2, scope: !658)
!664 = !DILocation(line: 261, column: 1, scope: !658)
!665 = !DILocation(line: 229, column: 48, scope: !187)
!666 = !DILocation(line: 231, column: 2, scope: !187)
!667 = !DILocation(line: 231, column: 2, scope: !668)
!668 = distinct !DILexicalBlock(scope: !187, file: !157, line: 231, column: 2)
!669 = !DILocation(line: 232, column: 2, scope: !187)
!670 = !DILocation(line: 232, column: 2, scope: !671)
!671 = distinct !DILexicalBlock(scope: !187, file: !157, line: 232, column: 2)
!672 = !DILocation(line: 233, column: 2, scope: !187)
!673 = !DILocation(line: 233, column: 2, scope: !674)
!674 = distinct !DILexicalBlock(scope: !187, file: !157, line: 233, column: 2)
!675 = !{i64 2149683975}
!676 = !DILocation(line: 233, column: 2, scope: !677)
!677 = distinct !DILexicalBlock(scope: !674, file: !157, line: 233, column: 2)
!678 = !DILocation(line: 233, column: 2, scope: !679)
!679 = distinct !DILexicalBlock(scope: !677, file: !157, line: 233, column: 2)
!680 = !{i64 2149684157}
!681 = !DILocation(line: 234, column: 1, scope: !187)
!682 = distinct !DISubprogram(name: "_raw_read_unlock_irqrestore", scope: !3, file: !3, line: 266, type: !195, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "lock", arg: 1, scope: !682, file: !3, line: 266, type: !160)
!685 = !DILocalVariable(name: "flags", arg: 2, scope: !682, file: !3, line: 266, type: !13)
!686 = !DILocation(line: 266, column: 64, scope: !682)
!687 = !DILocation(line: 266, column: 84, scope: !682)
!688 = !DILocation(line: 268, column: 31, scope: !682)
!689 = !DILocation(line: 268, column: 37, scope: !682)
!690 = !DILocation(line: 268, column: 2, scope: !682)
!691 = !DILocation(line: 269, column: 1, scope: !682)
!692 = !DILocation(line: 237, column: 40, scope: !194)
!693 = !DILocation(line: 237, column: 60, scope: !194)
!694 = !DILocation(line: 239, column: 2, scope: !194)
!695 = !DILocation(line: 239, column: 2, scope: !696)
!696 = distinct !DILexicalBlock(scope: !194, file: !157, line: 239, column: 2)
!697 = !DILocation(line: 240, column: 2, scope: !194)
!698 = !DILocation(line: 240, column: 2, scope: !699)
!699 = distinct !DILexicalBlock(scope: !194, file: !157, line: 240, column: 2)
!700 = !DILocation(line: 241, column: 2, scope: !194)
!701 = !DILocation(line: 241, column: 2, scope: !203)
!702 = !DILocation(line: 241, column: 2, scope: !201)
!703 = !DILocation(line: 241, column: 2, scope: !202)
!704 = !DILocation(line: 241, column: 2, scope: !705)
!705 = distinct !DILexicalBlock(scope: !202, file: !157, line: 241, column: 2)
!706 = !DILocation(line: 242, column: 2, scope: !194)
!707 = !DILocation(line: 242, column: 2, scope: !708)
!708 = distinct !DILexicalBlock(scope: !194, file: !157, line: 242, column: 2)
!709 = !{i64 2149686634}
!710 = !DILocation(line: 242, column: 2, scope: !711)
!711 = distinct !DILexicalBlock(scope: !708, file: !157, line: 242, column: 2)
!712 = !DILocation(line: 242, column: 2, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !157, line: 242, column: 2)
!714 = !{i64 2149686816}
!715 = !DILocation(line: 243, column: 1, scope: !194)
!716 = distinct !DISubprogram(name: "_raw_read_unlock_irq", scope: !3, file: !3, line: 274, type: !188, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !717)
!717 = !{!718}
!718 = !DILocalVariable(name: "lock", arg: 1, scope: !716, file: !3, line: 274, type: !160)
!719 = !DILocation(line: 274, column: 57, scope: !716)
!720 = !DILocation(line: 276, column: 24, scope: !716)
!721 = !DILocation(line: 276, column: 2, scope: !716)
!722 = !DILocation(line: 277, column: 1, scope: !716)
!723 = !DILocation(line: 245, column: 52, scope: !207)
!724 = !DILocation(line: 247, column: 2, scope: !207)
!725 = !DILocation(line: 247, column: 2, scope: !726)
!726 = distinct !DILexicalBlock(scope: !207, file: !157, line: 247, column: 2)
!727 = !DILocation(line: 248, column: 2, scope: !207)
!728 = !DILocation(line: 248, column: 2, scope: !729)
!729 = distinct !DILexicalBlock(scope: !207, file: !157, line: 248, column: 2)
!730 = !DILocation(line: 249, column: 2, scope: !207)
!731 = !DILocation(line: 249, column: 2, scope: !732)
!732 = distinct !DILexicalBlock(scope: !207, file: !157, line: 249, column: 2)
!733 = !DILocation(line: 250, column: 2, scope: !207)
!734 = !DILocation(line: 250, column: 2, scope: !735)
!735 = distinct !DILexicalBlock(scope: !207, file: !157, line: 250, column: 2)
!736 = !{i64 2149689035}
!737 = !DILocation(line: 250, column: 2, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !157, line: 250, column: 2)
!739 = !DILocation(line: 250, column: 2, scope: !740)
!740 = distinct !DILexicalBlock(scope: !738, file: !157, line: 250, column: 2)
!741 = !{i64 2149689217}
!742 = !DILocation(line: 251, column: 1, scope: !207)
!743 = distinct !DISubprogram(name: "_raw_read_unlock_bh", scope: !3, file: !3, line: 282, type: !188, scopeLine: 283, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !744)
!744 = !{!745}
!745 = !DILocalVariable(name: "lock", arg: 1, scope: !743, file: !3, line: 282, type: !160)
!746 = !DILocation(line: 282, column: 56, scope: !743)
!747 = !DILocation(line: 284, column: 23, scope: !743)
!748 = !DILocation(line: 284, column: 2, scope: !743)
!749 = !DILocation(line: 285, column: 1, scope: !743)
!750 = distinct !DISubprogram(name: "__raw_read_unlock_bh", scope: !157, file: !157, line: 253, type: !188, scopeLine: 254, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !751)
!751 = !{!752}
!752 = !DILocalVariable(name: "lock", arg: 1, scope: !750, file: !157, line: 253, type: !160)
!753 = !DILocation(line: 253, column: 51, scope: !750)
!754 = !DILocation(line: 255, column: 2, scope: !750)
!755 = !DILocation(line: 255, column: 2, scope: !756)
!756 = distinct !DILexicalBlock(scope: !750, file: !157, line: 255, column: 2)
!757 = !DILocation(line: 256, column: 2, scope: !750)
!758 = !DILocation(line: 256, column: 2, scope: !759)
!759 = distinct !DILexicalBlock(scope: !750, file: !157, line: 256, column: 2)
!760 = !DILocation(line: 257, column: 23, scope: !750)
!761 = !DILocation(line: 257, column: 2, scope: !750)
!762 = !DILocation(line: 258, column: 1, scope: !750)
!763 = distinct !DISubprogram(name: "_raw_write_trylock", scope: !3, file: !3, line: 290, type: !158, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !764)
!764 = !{!765}
!765 = !DILocalVariable(name: "lock", arg: 1, scope: !763, file: !3, line: 290, type: !160)
!766 = !DILocation(line: 290, column: 54, scope: !763)
!767 = !DILocation(line: 292, column: 29, scope: !763)
!768 = !DILocation(line: 292, column: 9, scope: !763)
!769 = !DILocation(line: 292, column: 2, scope: !763)
!770 = !DILocation(line: 129, column: 49, scope: !212)
!771 = !DILocation(line: 131, column: 2, scope: !212)
!772 = !DILocation(line: 131, column: 2, scope: !773)
!773 = distinct !DILexicalBlock(scope: !212, file: !157, line: 131, column: 2)
!774 = !{i64 2149669806}
!775 = !DILocation(line: 132, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !212, file: !157, line: 132, column: 6)
!777 = !DILocation(line: 132, column: 6, scope: !212)
!778 = !DILocation(line: 133, column: 3, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !157, line: 132, column: 34)
!780 = !DILocation(line: 133, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !157, line: 133, column: 3)
!782 = !DILocation(line: 134, column: 3, scope: !779)
!783 = !DILocation(line: 136, column: 2, scope: !212)
!784 = !DILocation(line: 136, column: 2, scope: !785)
!785 = distinct !DILexicalBlock(scope: !212, file: !157, line: 136, column: 2)
!786 = !{i64 2149670324}
!787 = !DILocation(line: 136, column: 2, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !157, line: 136, column: 2)
!789 = !DILocation(line: 136, column: 2, scope: !790)
!790 = distinct !DILexicalBlock(scope: !788, file: !157, line: 136, column: 2)
!791 = !{i64 2149670506}
!792 = !DILocation(line: 137, column: 2, scope: !212)
!793 = !DILocation(line: 138, column: 1, scope: !212)
!794 = distinct !DISubprogram(name: "_raw_write_lock", scope: !3, file: !3, line: 298, type: !188, scopeLine: 299, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !795)
!795 = !{!796}
!796 = !DILocalVariable(name: "lock", arg: 1, scope: !794, file: !3, line: 298, type: !160)
!797 = !DILocation(line: 298, column: 52, scope: !794)
!798 = !DILocation(line: 300, column: 19, scope: !794)
!799 = !DILocation(line: 300, column: 2, scope: !794)
!800 = !DILocation(line: 301, column: 1, scope: !794)
!801 = distinct !DISubprogram(name: "__raw_write_lock", scope: !157, file: !157, line: 206, type: !188, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !802)
!802 = !{!803}
!803 = !DILocalVariable(name: "lock", arg: 1, scope: !801, file: !157, line: 206, type: !160)
!804 = !DILocation(line: 206, column: 47, scope: !801)
!805 = !DILocation(line: 208, column: 2, scope: !801)
!806 = !DILocation(line: 208, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !801, file: !157, line: 208, column: 2)
!808 = !{i64 2149679852}
!809 = !DILocation(line: 209, column: 2, scope: !801)
!810 = !DILocation(line: 209, column: 2, scope: !811)
!811 = distinct !DILexicalBlock(scope: !801, file: !157, line: 209, column: 2)
!812 = !DILocation(line: 210, column: 2, scope: !801)
!813 = !DILocation(line: 210, column: 2, scope: !814)
!814 = distinct !DILexicalBlock(scope: !801, file: !157, line: 210, column: 2)
!815 = !DILocation(line: 211, column: 1, scope: !801)
!816 = distinct !DISubprogram(name: "_raw_write_lock_nested", scope: !3, file: !3, line: 308, type: !817, scopeLine: 309, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !819)
!817 = !DISubroutineType(types: !818)
!818 = !{null, !160, !14}
!819 = !{!820, !821}
!820 = !DILocalVariable(name: "lock", arg: 1, scope: !816, file: !3, line: 308, type: !160)
!821 = !DILocalVariable(name: "subclass", arg: 2, scope: !816, file: !3, line: 308, type: !14)
!822 = !DILocation(line: 308, column: 50, scope: !816)
!823 = !DILocation(line: 308, column: 60, scope: !816)
!824 = !DILocation(line: 310, column: 2, scope: !816)
!825 = !DILocation(line: 311, column: 1, scope: !816)
!826 = distinct !DISubprogram(name: "_raw_write_lock_irqsave", scope: !3, file: !3, line: 316, type: !564, scopeLine: 317, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !827)
!827 = !{!828}
!828 = !DILocalVariable(name: "lock", arg: 1, scope: !826, file: !3, line: 316, type: !160)
!829 = !DILocation(line: 316, column: 69, scope: !826)
!830 = !DILocation(line: 318, column: 34, scope: !826)
!831 = !DILocation(line: 318, column: 9, scope: !826)
!832 = !DILocation(line: 318, column: 2, scope: !826)
!833 = distinct !DISubprogram(name: "__raw_write_lock_irqsave", scope: !157, file: !157, line: 180, type: !564, scopeLine: 181, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !834)
!834 = !{!835, !836, !837, !841}
!835 = !DILocalVariable(name: "lock", arg: 1, scope: !833, file: !157, line: 180, type: !160)
!836 = !DILocalVariable(name: "flags", scope: !833, file: !157, line: 182, type: !13)
!837 = !DILocalVariable(name: "__dummy", scope: !838, file: !157, line: 184, type: !13)
!838 = distinct !DILexicalBlock(scope: !839, file: !157, line: 184, column: 2)
!839 = distinct !DILexicalBlock(scope: !840, file: !157, line: 184, column: 2)
!840 = distinct !DILexicalBlock(scope: !833, file: !157, line: 184, column: 2)
!841 = !DILocalVariable(name: "__dummy2", scope: !838, file: !157, line: 184, type: !13)
!842 = !DILocation(line: 180, column: 64, scope: !833)
!843 = !DILocation(line: 182, column: 2, scope: !833)
!844 = !DILocation(line: 182, column: 16, scope: !833)
!845 = !DILocation(line: 184, column: 2, scope: !833)
!846 = !DILocation(line: 184, column: 2, scope: !840)
!847 = !DILocation(line: 184, column: 2, scope: !838)
!848 = !DILocation(line: 184, column: 2, scope: !839)
!849 = !DILocation(line: 185, column: 2, scope: !833)
!850 = !DILocation(line: 185, column: 2, scope: !851)
!851 = distinct !DILexicalBlock(scope: !833, file: !157, line: 185, column: 2)
!852 = !{i64 2149677439}
!853 = !DILocation(line: 186, column: 2, scope: !833)
!854 = !DILocation(line: 186, column: 2, scope: !855)
!855 = distinct !DILexicalBlock(scope: !833, file: !157, line: 186, column: 2)
!856 = !DILocation(line: 187, column: 2, scope: !833)
!857 = !DILocation(line: 187, column: 2, scope: !858)
!858 = distinct !DILexicalBlock(scope: !833, file: !157, line: 187, column: 2)
!859 = !DILocation(line: 188, column: 9, scope: !833)
!860 = !DILocation(line: 189, column: 1, scope: !833)
!861 = !DILocation(line: 188, column: 2, scope: !833)
!862 = distinct !DISubprogram(name: "_raw_write_lock_irq", scope: !3, file: !3, line: 324, type: !188, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !863)
!863 = !{!864}
!864 = !DILocalVariable(name: "lock", arg: 1, scope: !862, file: !3, line: 324, type: !160)
!865 = !DILocation(line: 324, column: 56, scope: !862)
!866 = !DILocation(line: 326, column: 23, scope: !862)
!867 = !DILocation(line: 326, column: 2, scope: !862)
!868 = !DILocation(line: 327, column: 1, scope: !862)
!869 = distinct !DISubprogram(name: "__raw_write_lock_irq", scope: !157, file: !157, line: 191, type: !188, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!870 = !{!871}
!871 = !DILocalVariable(name: "lock", arg: 1, scope: !869, file: !157, line: 191, type: !160)
!872 = !DILocation(line: 191, column: 51, scope: !869)
!873 = !DILocation(line: 193, column: 2, scope: !869)
!874 = !DILocation(line: 193, column: 2, scope: !875)
!875 = distinct !DILexicalBlock(scope: !869, file: !157, line: 193, column: 2)
!876 = !DILocation(line: 194, column: 2, scope: !869)
!877 = !DILocation(line: 194, column: 2, scope: !878)
!878 = distinct !DILexicalBlock(scope: !869, file: !157, line: 194, column: 2)
!879 = !{i64 2149678259}
!880 = !DILocation(line: 195, column: 2, scope: !869)
!881 = !DILocation(line: 195, column: 2, scope: !882)
!882 = distinct !DILexicalBlock(scope: !869, file: !157, line: 195, column: 2)
!883 = !DILocation(line: 196, column: 2, scope: !869)
!884 = !DILocation(line: 196, column: 2, scope: !885)
!885 = distinct !DILexicalBlock(scope: !869, file: !157, line: 196, column: 2)
!886 = !DILocation(line: 197, column: 1, scope: !869)
!887 = distinct !DISubprogram(name: "_raw_write_lock_bh", scope: !3, file: !3, line: 332, type: !188, scopeLine: 333, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !888)
!888 = !{!889}
!889 = !DILocalVariable(name: "lock", arg: 1, scope: !887, file: !3, line: 332, type: !160)
!890 = !DILocation(line: 332, column: 55, scope: !887)
!891 = !DILocation(line: 334, column: 22, scope: !887)
!892 = !DILocation(line: 334, column: 2, scope: !887)
!893 = !DILocation(line: 335, column: 1, scope: !887)
!894 = distinct !DISubprogram(name: "__raw_write_lock_bh", scope: !157, file: !157, line: 199, type: !188, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !895)
!895 = !{!896}
!896 = !DILocalVariable(name: "lock", arg: 1, scope: !894, file: !157, line: 199, type: !160)
!897 = !DILocation(line: 199, column: 50, scope: !894)
!898 = !DILocation(line: 201, column: 24, scope: !894)
!899 = !DILocation(line: 201, column: 2, scope: !894)
!900 = !DILocation(line: 202, column: 2, scope: !894)
!901 = !DILocation(line: 202, column: 2, scope: !902)
!902 = distinct !DILexicalBlock(scope: !894, file: !157, line: 202, column: 2)
!903 = !DILocation(line: 203, column: 2, scope: !894)
!904 = !DILocation(line: 203, column: 2, scope: !905)
!905 = distinct !DILexicalBlock(scope: !894, file: !157, line: 203, column: 2)
!906 = !DILocation(line: 204, column: 1, scope: !894)
!907 = distinct !DISubprogram(name: "_raw_write_unlock", scope: !3, file: !3, line: 340, type: !188, scopeLine: 341, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !908)
!908 = !{!909}
!909 = !DILocalVariable(name: "lock", arg: 1, scope: !907, file: !3, line: 340, type: !160)
!910 = !DILocation(line: 340, column: 54, scope: !907)
!911 = !DILocation(line: 342, column: 21, scope: !907)
!912 = !DILocation(line: 342, column: 2, scope: !907)
!913 = !DILocation(line: 343, column: 1, scope: !907)
!914 = !DILocation(line: 222, column: 49, scope: !217)
!915 = !DILocation(line: 224, column: 2, scope: !217)
!916 = !DILocation(line: 224, column: 2, scope: !917)
!917 = distinct !DILexicalBlock(scope: !217, file: !157, line: 224, column: 2)
!918 = !DILocation(line: 225, column: 2, scope: !217)
!919 = !DILocation(line: 225, column: 2, scope: !920)
!920 = distinct !DILexicalBlock(scope: !217, file: !157, line: 225, column: 2)
!921 = !DILocation(line: 226, column: 2, scope: !217)
!922 = !DILocation(line: 226, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !217, file: !157, line: 226, column: 2)
!924 = !{i64 2149681639}
!925 = !DILocation(line: 226, column: 2, scope: !926)
!926 = distinct !DILexicalBlock(scope: !923, file: !157, line: 226, column: 2)
!927 = !DILocation(line: 226, column: 2, scope: !928)
!928 = distinct !DILexicalBlock(scope: !926, file: !157, line: 226, column: 2)
!929 = !{i64 2149681821}
!930 = !DILocation(line: 227, column: 1, scope: !217)
!931 = distinct !DISubprogram(name: "_raw_write_unlock_irqrestore", scope: !3, file: !3, line: 348, type: !195, scopeLine: 349, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !932)
!932 = !{!933, !934}
!933 = !DILocalVariable(name: "lock", arg: 1, scope: !931, file: !3, line: 348, type: !160)
!934 = !DILocalVariable(name: "flags", arg: 2, scope: !931, file: !3, line: 348, type: !13)
!935 = !DILocation(line: 348, column: 65, scope: !931)
!936 = !DILocation(line: 348, column: 85, scope: !931)
!937 = !DILocation(line: 350, column: 32, scope: !931)
!938 = !DILocation(line: 350, column: 38, scope: !931)
!939 = !DILocation(line: 350, column: 2, scope: !931)
!940 = !DILocation(line: 351, column: 1, scope: !931)
!941 = !DILocation(line: 260, column: 60, scope: !222)
!942 = !DILocation(line: 261, column: 25, scope: !222)
!943 = !DILocation(line: 263, column: 2, scope: !222)
!944 = !DILocation(line: 263, column: 2, scope: !945)
!945 = distinct !DILexicalBlock(scope: !222, file: !157, line: 263, column: 2)
!946 = !DILocation(line: 264, column: 2, scope: !222)
!947 = !DILocation(line: 264, column: 2, scope: !948)
!948 = distinct !DILexicalBlock(scope: !222, file: !157, line: 264, column: 2)
!949 = !DILocation(line: 265, column: 2, scope: !222)
!950 = !DILocation(line: 265, column: 2, scope: !229)
!951 = !DILocation(line: 265, column: 2, scope: !227)
!952 = !DILocation(line: 265, column: 2, scope: !228)
!953 = !DILocation(line: 265, column: 2, scope: !954)
!954 = distinct !DILexicalBlock(scope: !228, file: !157, line: 265, column: 2)
!955 = !DILocation(line: 266, column: 2, scope: !222)
!956 = !DILocation(line: 266, column: 2, scope: !957)
!957 = distinct !DILexicalBlock(scope: !222, file: !157, line: 266, column: 2)
!958 = !{i64 2149692357}
!959 = !DILocation(line: 266, column: 2, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !157, line: 266, column: 2)
!961 = !DILocation(line: 266, column: 2, scope: !962)
!962 = distinct !DILexicalBlock(scope: !960, file: !157, line: 266, column: 2)
!963 = !{i64 2149692539}
!964 = !DILocation(line: 267, column: 1, scope: !222)
!965 = distinct !DISubprogram(name: "_raw_write_unlock_irq", scope: !3, file: !3, line: 356, type: !188, scopeLine: 357, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !966)
!966 = !{!967}
!967 = !DILocalVariable(name: "lock", arg: 1, scope: !965, file: !3, line: 356, type: !160)
!968 = !DILocation(line: 356, column: 58, scope: !965)
!969 = !DILocation(line: 358, column: 25, scope: !965)
!970 = !DILocation(line: 358, column: 2, scope: !965)
!971 = !DILocation(line: 359, column: 1, scope: !965)
!972 = !DILocation(line: 269, column: 53, scope: !233)
!973 = !DILocation(line: 271, column: 2, scope: !233)
!974 = !DILocation(line: 271, column: 2, scope: !975)
!975 = distinct !DILexicalBlock(scope: !233, file: !157, line: 271, column: 2)
!976 = !DILocation(line: 272, column: 2, scope: !233)
!977 = !DILocation(line: 272, column: 2, scope: !978)
!978 = distinct !DILexicalBlock(scope: !233, file: !157, line: 272, column: 2)
!979 = !DILocation(line: 273, column: 2, scope: !233)
!980 = !DILocation(line: 273, column: 2, scope: !981)
!981 = distinct !DILexicalBlock(scope: !233, file: !157, line: 273, column: 2)
!982 = !DILocation(line: 274, column: 2, scope: !233)
!983 = !DILocation(line: 274, column: 2, scope: !984)
!984 = distinct !DILexicalBlock(scope: !233, file: !157, line: 274, column: 2)
!985 = !{i64 2149694760}
!986 = !DILocation(line: 274, column: 2, scope: !987)
!987 = distinct !DILexicalBlock(scope: !984, file: !157, line: 274, column: 2)
!988 = !DILocation(line: 274, column: 2, scope: !989)
!989 = distinct !DILexicalBlock(scope: !987, file: !157, line: 274, column: 2)
!990 = !{i64 2149694942}
!991 = !DILocation(line: 275, column: 1, scope: !233)
!992 = distinct !DISubprogram(name: "_raw_write_unlock_bh", scope: !3, file: !3, line: 364, type: !188, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !993)
!993 = !{!994}
!994 = !DILocalVariable(name: "lock", arg: 1, scope: !992, file: !3, line: 364, type: !160)
!995 = !DILocation(line: 364, column: 57, scope: !992)
!996 = !DILocation(line: 366, column: 24, scope: !992)
!997 = !DILocation(line: 366, column: 2, scope: !992)
!998 = !DILocation(line: 367, column: 1, scope: !992)
!999 = distinct !DISubprogram(name: "__raw_write_unlock_bh", scope: !157, file: !157, line: 277, type: !188, scopeLine: 278, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1000)
!1000 = !{!1001}
!1001 = !DILocalVariable(name: "lock", arg: 1, scope: !999, file: !157, line: 277, type: !160)
!1002 = !DILocation(line: 277, column: 52, scope: !999)
!1003 = !DILocation(line: 279, column: 2, scope: !999)
!1004 = !DILocation(line: 279, column: 2, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !999, file: !157, line: 279, column: 2)
!1006 = !DILocation(line: 280, column: 2, scope: !999)
!1007 = !DILocation(line: 280, column: 2, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !999, file: !157, line: 280, column: 2)
!1009 = !DILocation(line: 281, column: 23, scope: !999)
!1010 = !DILocation(line: 281, column: 2, scope: !999)
!1011 = !DILocation(line: 282, column: 1, scope: !999)
!1012 = distinct !DISubprogram(name: "in_lock_functions", scope: !3, file: !3, line: 407, type: !1013, scopeLine: 408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!14, !13}
!1015 = !{!1016}
!1016 = !DILocalVariable(name: "addr", arg: 1, scope: !1012, file: !3, line: 407, type: !13)
!1017 = !DILocation(line: 407, column: 45, scope: !1012)
!1018 = !DILocation(line: 412, column: 9, scope: !1012)
!1019 = !DILocation(line: 412, column: 14, scope: !1012)
!1020 = !DILocation(line: 413, column: 2, scope: !1012)
!1021 = !DILocation(line: 413, column: 5, scope: !1012)
!1022 = !DILocation(line: 413, column: 10, scope: !1012)
!1023 = !DILocation(line: 0, scope: !1012)
!1024 = !DILocation(line: 412, column: 2, scope: !1012)
!1025 = distinct !DISubprogram(name: "__preempt_count_add", scope: !1026, file: !1026, line: 78, type: !1027, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1029)
!1026 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!1027 = !DISubroutineType(types: !1028)
!1028 = !{null, !14}
!1029 = !{!1030, !1031, !1034}
!1030 = !DILocalVariable(name: "val", arg: 1, scope: !1025, file: !1026, line: 78, type: !14)
!1031 = !DILocalVariable(name: "pao_ID__", scope: !1032, file: !1026, line: 80, type: !1033)
!1032 = distinct !DILexicalBlock(scope: !1025, file: !1026, line: 80, column: 2)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!1034 = !DILocalVariable(name: "pto_val__", scope: !1035, file: !1026, line: 80, type: !15)
!1035 = distinct !DILexicalBlock(scope: !1036, file: !1026, line: 80, column: 2)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !1026, line: 80, column: 2)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !1026, line: 80, column: 2)
!1038 = !DILocation(line: 78, column: 53, scope: !1025)
!1039 = !DILocation(line: 80, column: 2, scope: !1025)
!1040 = !DILocation(line: 80, column: 2, scope: !1032)
!1041 = !DILocation(line: 80, column: 2, scope: !1037)
!1042 = !DILocation(line: 80, column: 2, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1037, file: !1026, line: 80, column: 2)
!1044 = !{i64 2149442856}
!1045 = !DILocation(line: 80, column: 2, scope: !1036)
!1046 = !DILocation(line: 80, column: 2, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1036, file: !1026, line: 80, column: 2)
!1048 = !{i64 2149443151}
!1049 = !DILocation(line: 80, column: 2, scope: !1035)
!1050 = !{i64 2149443856}
!1051 = !DILocation(line: 81, column: 1, scope: !1025)
!1052 = distinct !DISubprogram(name: "do_raw_spin_trylock", scope: !1053, file: !1053, line: 191, type: !93, scopeLine: 192, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1054)
!1053 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!1054 = !{!1055, !1056}
!1055 = !DILocalVariable(name: "lock", arg: 1, scope: !1052, file: !1053, line: 191, type: !95)
!1056 = !DILocalVariable(name: "ret", scope: !1052, file: !1053, line: 193, type: !14)
!1057 = !DILocation(line: 191, column: 55, scope: !1052)
!1058 = !DILocation(line: 193, column: 2, scope: !1052)
!1059 = !DILocation(line: 193, column: 6, scope: !1052)
!1060 = !DILocation(line: 193, column: 12, scope: !1052)
!1061 = !DILocation(line: 195, column: 6, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1052, file: !1053, line: 195, column: 6)
!1063 = !DILocation(line: 195, column: 6, scope: !1052)
!1064 = !DILocation(line: 196, column: 3, scope: !1062)
!1065 = !DILocation(line: 196, column: 3, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1062, file: !1053, line: 196, column: 3)
!1067 = !DILocation(line: 198, column: 9, scope: !1052)
!1068 = !DILocation(line: 199, column: 1, scope: !1052)
!1069 = !DILocation(line: 198, column: 2, scope: !1052)
!1070 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !1026, file: !1026, line: 93, type: !1071, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1075)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !110, line: 35, baseType: !1074)
!1074 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1075 = !{!1076}
!1076 = !DILocalVariable(name: "c", scope: !1077, file: !1026, line: 95, type: !1073)
!1077 = distinct !DILexicalBlock(scope: !1070, file: !1026, line: 95, column: 9)
!1078 = !DILocation(line: 95, column: 9, scope: !1077)
!1079 = !{i64 2149447212, i64 2149447305}
!1080 = !{i8 0, i8 2}
!1081 = !{}
!1082 = !DILocation(line: 95, column: 9, scope: !1070)
!1083 = !DILocation(line: 95, column: 2, scope: !1070)
!1084 = distinct !DISubprogram(name: "queued_spin_trylock", scope: !1085, file: !1085, line: 90, type: !1086, scopeLine: 91, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1089)
!1085 = !DIFile(filename: "./include/asm-generic/qspinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ee2071dbdb30625b016b6622681cc28")
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!14, !1088}
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1089 = !{!1090, !1091}
!1090 = !DILocalVariable(name: "lock", arg: 1, scope: !1084, file: !1085, line: 90, type: !1088)
!1091 = !DILocalVariable(name: "val", scope: !1084, file: !1085, line: 92, type: !14)
!1092 = !DILocation(line: 90, column: 66, scope: !1084)
!1093 = !DILocation(line: 92, column: 2, scope: !1084)
!1094 = !DILocation(line: 92, column: 6, scope: !1084)
!1095 = !DILocation(line: 92, column: 25, scope: !1084)
!1096 = !DILocation(line: 92, column: 31, scope: !1084)
!1097 = !DILocation(line: 92, column: 12, scope: !1084)
!1098 = !DILocation(line: 94, column: 6, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1084, file: !1085, line: 94, column: 6)
!1100 = !DILocation(line: 94, column: 6, scope: !1084)
!1101 = !DILocation(line: 95, column: 3, scope: !1099)
!1102 = !DILocation(line: 97, column: 9, scope: !1084)
!1103 = !DILocation(line: 97, column: 2, scope: !1084)
!1104 = !DILocation(line: 98, column: 1, scope: !1084)
!1105 = distinct !DISubprogram(name: "atomic_read", scope: !1106, file: !1106, line: 30, type: !1107, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1111)
!1106 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1107 = !DISubroutineType(types: !1108)
!1108 = !{!14, !1109}
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!1111 = !{!1112}
!1112 = !DILocalVariable(name: "v", arg: 1, scope: !1105, file: !1106, line: 30, type: !1109)
!1113 = !DILocation(line: 30, column: 29, scope: !1105)
!1114 = !DILocation(line: 32, column: 25, scope: !1105)
!1115 = !DILocation(line: 32, column: 2, scope: !1105)
!1116 = !DILocation(line: 33, column: 25, scope: !1105)
!1117 = !DILocation(line: 33, column: 9, scope: !1105)
!1118 = !DILocation(line: 33, column: 2, scope: !1105)
!1119 = distinct !DISubprogram(name: "atomic_try_cmpxchg_acquire", scope: !1106, file: !1106, line: 1292, type: !1120, scopeLine: 1293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1123)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{!1073, !1122, !22, !14}
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1123 = !{!1124, !1125, !1126}
!1124 = !DILocalVariable(name: "v", arg: 1, scope: !1119, file: !1106, line: 1292, type: !1122)
!1125 = !DILocalVariable(name: "old", arg: 2, scope: !1119, file: !1106, line: 1292, type: !22)
!1126 = !DILocalVariable(name: "new", arg: 3, scope: !1119, file: !1106, line: 1292, type: !14)
!1127 = !DILocation(line: 1292, column: 38, scope: !1119)
!1128 = !DILocation(line: 1292, column: 46, scope: !1119)
!1129 = !DILocation(line: 1292, column: 55, scope: !1119)
!1130 = !DILocation(line: 1294, column: 31, scope: !1119)
!1131 = !DILocation(line: 1294, column: 2, scope: !1119)
!1132 = !DILocation(line: 1295, column: 31, scope: !1119)
!1133 = !DILocation(line: 1295, column: 2, scope: !1119)
!1134 = !DILocation(line: 1296, column: 40, scope: !1119)
!1135 = !DILocation(line: 1296, column: 43, scope: !1119)
!1136 = !DILocation(line: 1296, column: 48, scope: !1119)
!1137 = !DILocation(line: 1296, column: 9, scope: !1119)
!1138 = !DILocation(line: 1296, column: 2, scope: !1119)
!1139 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1140, file: !1140, line: 66, type: !1141, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1150)
!1140 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !1143, !1146}
!1143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1145)
!1145 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 61, baseType: !1147)
!1147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1148, line: 72, baseType: !1149)
!1148 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1148, line: 16, baseType: !13)
!1150 = !{!1151, !1152}
!1151 = !DILocalVariable(name: "v", arg: 1, scope: !1139, file: !1140, line: 66, type: !1143)
!1152 = !DILocalVariable(name: "size", arg: 2, scope: !1139, file: !1140, line: 66, type: !1146)
!1153 = !DILocation(line: 66, column: 73, scope: !1139)
!1154 = !DILocation(line: 66, column: 83, scope: !1139)
!1155 = !DILocation(line: 68, column: 19, scope: !1139)
!1156 = !DILocation(line: 68, column: 22, scope: !1139)
!1157 = !DILocation(line: 68, column: 2, scope: !1139)
!1158 = !DILocation(line: 69, column: 2, scope: !1139)
!1159 = !DILocation(line: 70, column: 1, scope: !1139)
!1160 = distinct !DISubprogram(name: "raw_atomic_read", scope: !1161, file: !1161, line: 442, type: !1107, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1162)
!1161 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1162 = !{!1163}
!1163 = !DILocalVariable(name: "v", arg: 1, scope: !1160, file: !1161, line: 442, type: !1109)
!1164 = !DILocation(line: 442, column: 33, scope: !1160)
!1165 = !DILocation(line: 444, column: 26, scope: !1160)
!1166 = !DILocation(line: 444, column: 9, scope: !1160)
!1167 = !DILocation(line: 444, column: 2, scope: !1160)
!1168 = distinct !DISubprogram(name: "kasan_check_read", scope: !1169, file: !1169, line: 40, type: !1170, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1172)
!1169 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1073, !1143, !7}
!1172 = !{!1173, !1174}
!1173 = !DILocalVariable(name: "p", arg: 1, scope: !1168, file: !1169, line: 40, type: !1143)
!1174 = !DILocalVariable(name: "size", arg: 2, scope: !1168, file: !1169, line: 40, type: !7)
!1175 = !DILocation(line: 40, column: 58, scope: !1168)
!1176 = !DILocation(line: 40, column: 74, scope: !1168)
!1177 = !DILocation(line: 42, column: 2, scope: !1168)
!1178 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1179, file: !1179, line: 229, type: !1180, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1182)
!1179 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1180 = !DISubroutineType(types: !1181)
!1181 = !{null, !1143, !1146, !14}
!1182 = !{!1183, !1184, !1185}
!1183 = !DILocalVariable(name: "ptr", arg: 1, scope: !1178, file: !1179, line: 229, type: !1143)
!1184 = !DILocalVariable(name: "size", arg: 2, scope: !1178, file: !1179, line: 229, type: !1146)
!1185 = !DILocalVariable(name: "type", arg: 3, scope: !1178, file: !1179, line: 230, type: !14)
!1186 = !DILocation(line: 229, column: 60, scope: !1178)
!1187 = !DILocation(line: 229, column: 72, scope: !1178)
!1188 = !DILocation(line: 230, column: 15, scope: !1178)
!1189 = !DILocation(line: 230, column: 23, scope: !1178)
!1190 = distinct !DISubprogram(name: "arch_atomic_read", scope: !1191, file: !1191, line: 17, type: !1107, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!1192 = !{!1193}
!1193 = !DILocalVariable(name: "v", arg: 1, scope: !1190, file: !1191, line: 17, type: !1109)
!1194 = !DILocation(line: 17, column: 61, scope: !1190)
!1195 = !DILocation(line: 23, column: 9, scope: !1190)
!1196 = !DILocation(line: 23, column: 2, scope: !1190)
!1197 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1140, file: !1140, line: 94, type: !1141, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1198)
!1198 = !{!1199, !1200}
!1199 = !DILocalVariable(name: "v", arg: 1, scope: !1197, file: !1140, line: 94, type: !1143)
!1200 = !DILocalVariable(name: "size", arg: 2, scope: !1197, file: !1140, line: 94, type: !1146)
!1201 = !DILocation(line: 94, column: 79, scope: !1197)
!1202 = !DILocation(line: 94, column: 89, scope: !1197)
!1203 = !DILocation(line: 96, column: 20, scope: !1197)
!1204 = !DILocation(line: 96, column: 23, scope: !1197)
!1205 = !DILocation(line: 96, column: 2, scope: !1197)
!1206 = !DILocation(line: 97, column: 2, scope: !1197)
!1207 = !DILocation(line: 98, column: 1, scope: !1197)
!1208 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_acquire", scope: !1161, file: !1161, line: 2142, type: !1120, scopeLine: 2143, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1209)
!1209 = !{!1210, !1211, !1212}
!1210 = !DILocalVariable(name: "v", arg: 1, scope: !1208, file: !1161, line: 2142, type: !1122)
!1211 = !DILocalVariable(name: "old", arg: 2, scope: !1208, file: !1161, line: 2142, type: !22)
!1212 = !DILocalVariable(name: "new", arg: 3, scope: !1208, file: !1161, line: 2142, type: !14)
!1213 = !DILocation(line: 2142, column: 42, scope: !1208)
!1214 = !DILocation(line: 2142, column: 50, scope: !1208)
!1215 = !DILocation(line: 2142, column: 59, scope: !1208)
!1216 = !DILocation(line: 2151, column: 33, scope: !1208)
!1217 = !DILocation(line: 2151, column: 36, scope: !1208)
!1218 = !DILocation(line: 2151, column: 41, scope: !1208)
!1219 = !DILocation(line: 2151, column: 9, scope: !1208)
!1220 = !DILocation(line: 2151, column: 2, scope: !1208)
!1221 = distinct !DISubprogram(name: "kasan_check_write", scope: !1169, file: !1169, line: 44, type: !1170, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1222)
!1222 = !{!1223, !1224}
!1223 = !DILocalVariable(name: "p", arg: 1, scope: !1221, file: !1169, line: 44, type: !1143)
!1224 = !DILocalVariable(name: "size", arg: 2, scope: !1221, file: !1169, line: 44, type: !7)
!1225 = !DILocation(line: 44, column: 59, scope: !1221)
!1226 = !DILocation(line: 44, column: 75, scope: !1221)
!1227 = !DILocation(line: 46, column: 2, scope: !1221)
!1228 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !1191, file: !1191, line: 113, type: !1120, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1229)
!1229 = !{!1230, !1231, !1232, !1233, !1235, !1236, !1237, !1238}
!1230 = !DILocalVariable(name: "v", arg: 1, scope: !1228, file: !1191, line: 113, type: !1122)
!1231 = !DILocalVariable(name: "old", arg: 2, scope: !1228, file: !1191, line: 113, type: !22)
!1232 = !DILocalVariable(name: "new", arg: 3, scope: !1228, file: !1191, line: 113, type: !14)
!1233 = !DILocalVariable(name: "success", scope: !1234, file: !1191, line: 115, type: !1073)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !1191, line: 115, column: 9)
!1235 = !DILocalVariable(name: "_old", scope: !1234, file: !1191, line: 115, type: !22)
!1236 = !DILocalVariable(name: "__old", scope: !1234, file: !1191, line: 115, type: !14)
!1237 = !DILocalVariable(name: "__new", scope: !1234, file: !1191, line: 115, type: !14)
!1238 = !DILocalVariable(name: "__ptr", scope: !1234, file: !1191, line: 115, type: !23)
!1239 = !DILocation(line: 113, column: 63, scope: !1228)
!1240 = !DILocation(line: 113, column: 71, scope: !1228)
!1241 = !DILocation(line: 113, column: 80, scope: !1228)
!1242 = !DILocation(line: 115, column: 9, scope: !1234)
!1243 = !{i64 2148812178, i64 2148812217, i64 2148812238, i64 2148812275, i64 2148812298, i64 2148812307, i64 2148812605}
!1244 = !DILocation(line: 115, column: 9, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1234, file: !1191, line: 115, column: 9)
!1246 = !DILocation(line: 115, column: 9, scope: !1228)
!1247 = !DILocation(line: 115, column: 2, scope: !1228)
!1248 = distinct !DISubprogram(name: "__local_bh_disable_ip", scope: !1249, file: !1249, line: 11, type: !1250, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1252)
!1249 = !DIFile(filename: "./include/linux/bottom_half.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b933219b2ffe4299c2e8936a7abfd81d")
!1250 = !DISubroutineType(types: !1251)
!1251 = !{null, !13, !7}
!1252 = !{!1253, !1254}
!1253 = !DILocalVariable(name: "ip", arg: 1, scope: !1248, file: !1249, line: 11, type: !13)
!1254 = !DILocalVariable(name: "cnt", arg: 2, scope: !1248, file: !1249, line: 11, type: !7)
!1255 = !DILocation(line: 11, column: 65, scope: !1248)
!1256 = !DILocation(line: 11, column: 82, scope: !1248)
!1257 = !DILocation(line: 13, column: 2, scope: !1248)
!1258 = !DILocation(line: 14, column: 2, scope: !1248)
!1259 = !{i64 2149482374}
!1260 = !DILocation(line: 15, column: 1, scope: !1248)
!1261 = !DISubprogram(name: "__local_bh_enable_ip", scope: !1249, file: !1249, line: 24, type: !1250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1262 = distinct !DISubprogram(name: "do_raw_spin_lock", scope: !1053, file: !1053, line: 184, type: !132, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1263)
!1263 = !{!1264}
!1264 = !DILocalVariable(name: "lock", arg: 1, scope: !1262, file: !1053, line: 184, type: !95)
!1265 = !DILocation(line: 184, column: 53, scope: !1262)
!1266 = !DILocation(line: 187, column: 2, scope: !1262)
!1267 = !DILocation(line: 188, column: 2, scope: !1262)
!1268 = !DILocation(line: 188, column: 2, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1262, file: !1053, line: 188, column: 2)
!1270 = !DILocation(line: 189, column: 1, scope: !1262)
!1271 = distinct !DISubprogram(name: "queued_spin_lock", scope: !1085, file: !1085, line: 107, type: !1272, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1274)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null, !1088}
!1274 = !{!1275, !1276}
!1275 = !DILocalVariable(name: "lock", arg: 1, scope: !1271, file: !1085, line: 107, type: !1088)
!1276 = !DILocalVariable(name: "val", scope: !1271, file: !1085, line: 109, type: !14)
!1277 = !DILocation(line: 107, column: 64, scope: !1271)
!1278 = !DILocation(line: 109, column: 2, scope: !1271)
!1279 = !DILocation(line: 109, column: 6, scope: !1271)
!1280 = !DILocation(line: 111, column: 6, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1271, file: !1085, line: 111, column: 6)
!1282 = !DILocation(line: 111, column: 6, scope: !1271)
!1283 = !DILocation(line: 112, column: 3, scope: !1281)
!1284 = !DILocation(line: 114, column: 28, scope: !1271)
!1285 = !DILocation(line: 114, column: 34, scope: !1271)
!1286 = !DILocation(line: 114, column: 2, scope: !1271)
!1287 = !DILocation(line: 115, column: 1, scope: !1271)
!1288 = !DISubprogram(name: "queued_spin_lock_slowpath", scope: !1085, file: !1085, line: 100, type: !1289, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{null, !1088, !15}
!1291 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !1292, file: !1292, line: 101, type: !1293, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1295)
!1292 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!1293 = !DISubroutineType(types: !1294)
!1294 = !{!13}
!1295 = !{!1296}
!1296 = !DILocalVariable(name: "flags", scope: !1291, file: !1292, line: 103, type: !13)
!1297 = !DILocation(line: 103, column: 2, scope: !1291)
!1298 = !DILocation(line: 103, column: 16, scope: !1291)
!1299 = !DILocation(line: 103, column: 24, scope: !1291)
!1300 = !DILocation(line: 104, column: 2, scope: !1291)
!1301 = !DILocation(line: 105, column: 9, scope: !1291)
!1302 = !DILocation(line: 106, column: 1, scope: !1291)
!1303 = !DILocation(line: 105, column: 2, scope: !1291)
!1304 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !1292, file: !1292, line: 65, type: !1293, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1305 = !DILocation(line: 67, column: 9, scope: !1304)
!1306 = !DILocation(line: 67, column: 2, scope: !1304)
!1307 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !1292, file: !1292, line: 70, type: !1308, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null}
!1310 = !DILocation(line: 72, column: 2, scope: !1307)
!1311 = !DILocation(line: 73, column: 1, scope: !1307)
!1312 = distinct !DISubprogram(name: "native_save_fl", scope: !1292, file: !1292, line: 17, type: !1293, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1313)
!1313 = !{!1314}
!1314 = !DILocalVariable(name: "flags", scope: !1312, file: !1292, line: 19, type: !13)
!1315 = !DILocation(line: 19, column: 2, scope: !1312)
!1316 = !DILocation(line: 19, column: 16, scope: !1312)
!1317 = !DILocation(line: 26, column: 2, scope: !1312)
!1318 = !{i64 1869778, i64 1869799}
!1319 = !DILocation(line: 32, column: 9, scope: !1312)
!1320 = !DILocation(line: 33, column: 1, scope: !1312)
!1321 = !DILocation(line: 32, column: 2, scope: !1312)
!1322 = distinct !DISubprogram(name: "native_irq_disable", scope: !1292, file: !1292, line: 35, type: !1308, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1323 = !DILocation(line: 37, column: 2, scope: !1322)
!1324 = !{i64 1869982}
!1325 = !DILocation(line: 38, column: 1, scope: !1322)
!1326 = distinct !DISubprogram(name: "do_raw_spin_unlock", scope: !1053, file: !1053, line: 201, type: !132, scopeLine: 202, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1327)
!1327 = !{!1328}
!1328 = !DILocalVariable(name: "lock", arg: 1, scope: !1326, file: !1053, line: 201, type: !95)
!1329 = !DILocation(line: 201, column: 55, scope: !1326)
!1330 = !DILocation(line: 203, column: 2, scope: !1326)
!1331 = !DILocation(line: 203, column: 2, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1326, file: !1053, line: 203, column: 2)
!1333 = !DILocation(line: 204, column: 2, scope: !1326)
!1334 = !DILocation(line: 206, column: 1, scope: !1326)
!1335 = distinct !DISubprogram(name: "queued_spin_unlock", scope: !1085, file: !1085, line: 123, type: !1272, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1336)
!1336 = !{!1337}
!1337 = !DILocalVariable(name: "lock", arg: 1, scope: !1335, file: !1085, line: 123, type: !1088)
!1338 = !DILocation(line: 123, column: 66, scope: !1335)
!1339 = !DILocation(line: 128, column: 2, scope: !1335)
!1340 = !DILocation(line: 128, column: 2, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !1085, line: 128, column: 2)
!1342 = !DILocation(line: 128, column: 2, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1341, file: !1085, line: 128, column: 2)
!1344 = !DILocation(line: 128, column: 2, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !1085, line: 128, column: 2)
!1346 = !DILocation(line: 128, column: 2, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !1085, line: 128, column: 2)
!1348 = !{i64 2149619413}
!1349 = !DILocation(line: 128, column: 2, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !1085, line: 128, column: 2)
!1351 = !DILocation(line: 128, column: 2, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1350, file: !1085, line: 128, column: 2)
!1353 = !DILocation(line: 128, column: 2, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1350, file: !1085, line: 128, column: 2)
!1355 = !DILocation(line: 129, column: 1, scope: !1335)
!1356 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !1292, file: !1292, line: 132, type: !1357, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{null, !13}
!1359 = !{!1360}
!1360 = !DILocalVariable(name: "flags", arg: 1, scope: !1356, file: !1292, line: 132, type: !13)
!1361 = !DILocation(line: 132, column: 66, scope: !1356)
!1362 = !DILocation(line: 134, column: 32, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !1292, line: 134, column: 6)
!1364 = !DILocation(line: 134, column: 7, scope: !1363)
!1365 = !DILocation(line: 134, column: 6, scope: !1356)
!1366 = !DILocation(line: 135, column: 3, scope: !1363)
!1367 = !DILocation(line: 136, column: 1, scope: !1356)
!1368 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !1292, file: !1292, line: 120, type: !1013, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1369)
!1369 = !{!1370}
!1370 = !DILocalVariable(name: "flags", arg: 1, scope: !1368, file: !1292, line: 120, type: !13)
!1371 = !DILocation(line: 120, column: 67, scope: !1368)
!1372 = !DILocation(line: 122, column: 11, scope: !1368)
!1373 = !DILocation(line: 122, column: 17, scope: !1368)
!1374 = !DILocation(line: 122, column: 9, scope: !1368)
!1375 = !DILocation(line: 122, column: 2, scope: !1368)
!1376 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !1292, file: !1292, line: 75, type: !1308, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1377 = !DILocation(line: 77, column: 2, scope: !1376)
!1378 = !DILocation(line: 78, column: 1, scope: !1376)
!1379 = distinct !DISubprogram(name: "native_irq_enable", scope: !1292, file: !1292, line: 40, type: !1308, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1380 = !DILocation(line: 42, column: 2, scope: !1379)
!1381 = !{i64 1870074}
!1382 = !DILocation(line: 43, column: 1, scope: !1379)
!1383 = distinct !DISubprogram(name: "queued_read_trylock", scope: !1384, file: !1384, line: 44, type: !1385, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1388)
!1384 = !DIFile(filename: "./include/asm-generic/qrwlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb75d8ca6617914f1efe181fd5469489")
!1385 = !DISubroutineType(types: !1386)
!1386 = !{!14, !1387}
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!1388 = !{!1389, !1390}
!1389 = !DILocalVariable(name: "lock", arg: 1, scope: !1383, file: !1384, line: 44, type: !1387)
!1390 = !DILocalVariable(name: "cnts", scope: !1383, file: !1384, line: 46, type: !14)
!1391 = !DILocation(line: 44, column: 55, scope: !1383)
!1392 = !DILocation(line: 46, column: 2, scope: !1383)
!1393 = !DILocation(line: 46, column: 6, scope: !1383)
!1394 = !DILocation(line: 48, column: 22, scope: !1383)
!1395 = !DILocation(line: 48, column: 28, scope: !1383)
!1396 = !DILocation(line: 48, column: 9, scope: !1383)
!1397 = !DILocation(line: 48, column: 7, scope: !1383)
!1398 = !DILocation(line: 49, column: 6, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1383, file: !1384, line: 49, column: 6)
!1400 = !DILocation(line: 49, column: 6, scope: !1383)
!1401 = !DILocation(line: 50, column: 52, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !1384, line: 49, column: 35)
!1403 = !DILocation(line: 50, column: 58, scope: !1402)
!1404 = !DILocation(line: 50, column: 15, scope: !1402)
!1405 = !DILocation(line: 50, column: 8, scope: !1402)
!1406 = !DILocation(line: 51, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !1384, line: 51, column: 7)
!1408 = !DILocation(line: 51, column: 7, scope: !1402)
!1409 = !DILocation(line: 52, column: 4, scope: !1407)
!1410 = !DILocation(line: 53, column: 25, scope: !1402)
!1411 = !DILocation(line: 53, column: 31, scope: !1402)
!1412 = !DILocation(line: 53, column: 3, scope: !1402)
!1413 = !DILocation(line: 54, column: 2, scope: !1402)
!1414 = !DILocation(line: 55, column: 2, scope: !1383)
!1415 = !DILocation(line: 56, column: 1, scope: !1383)
!1416 = distinct !DISubprogram(name: "atomic_add_return_acquire", scope: !1106, file: !1106, line: 139, type: !1417, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1419)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!14, !14, !1122}
!1419 = !{!1420, !1421}
!1420 = !DILocalVariable(name: "i", arg: 1, scope: !1416, file: !1106, line: 139, type: !14)
!1421 = !DILocalVariable(name: "v", arg: 2, scope: !1416, file: !1106, line: 139, type: !1122)
!1422 = !DILocation(line: 139, column: 31, scope: !1416)
!1423 = !DILocation(line: 139, column: 44, scope: !1416)
!1424 = !DILocation(line: 141, column: 31, scope: !1416)
!1425 = !DILocation(line: 141, column: 2, scope: !1416)
!1426 = !DILocation(line: 142, column: 39, scope: !1416)
!1427 = !DILocation(line: 142, column: 42, scope: !1416)
!1428 = !DILocation(line: 142, column: 9, scope: !1416)
!1429 = !DILocation(line: 142, column: 2, scope: !1416)
!1430 = distinct !DISubprogram(name: "atomic_sub", scope: !1106, file: !1106, line: 268, type: !1431, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1433)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{null, !14, !1122}
!1433 = !{!1434, !1435}
!1434 = !DILocalVariable(name: "i", arg: 1, scope: !1430, file: !1106, line: 268, type: !14)
!1435 = !DILocalVariable(name: "v", arg: 2, scope: !1430, file: !1106, line: 268, type: !1122)
!1436 = !DILocation(line: 268, column: 16, scope: !1430)
!1437 = !DILocation(line: 268, column: 29, scope: !1430)
!1438 = !DILocation(line: 270, column: 31, scope: !1430)
!1439 = !DILocation(line: 270, column: 2, scope: !1430)
!1440 = !DILocation(line: 271, column: 17, scope: !1430)
!1441 = !DILocation(line: 271, column: 20, scope: !1430)
!1442 = !DILocation(line: 271, column: 2, scope: !1430)
!1443 = !DILocation(line: 272, column: 1, scope: !1430)
!1444 = distinct !DISubprogram(name: "raw_atomic_add_return_acquire", scope: !1161, file: !1161, line: 575, type: !1417, scopeLine: 576, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1445)
!1445 = !{!1446, !1447}
!1446 = !DILocalVariable(name: "i", arg: 1, scope: !1444, file: !1161, line: 575, type: !14)
!1447 = !DILocalVariable(name: "v", arg: 2, scope: !1444, file: !1161, line: 575, type: !1122)
!1448 = !DILocation(line: 575, column: 35, scope: !1444)
!1449 = !DILocation(line: 575, column: 48, scope: !1444)
!1450 = !DILocation(line: 584, column: 32, scope: !1444)
!1451 = !DILocation(line: 584, column: 35, scope: !1444)
!1452 = !DILocation(line: 584, column: 9, scope: !1444)
!1453 = !DILocation(line: 584, column: 2, scope: !1444)
!1454 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !1191, file: !1191, line: 83, type: !1417, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1455)
!1455 = !{!1456, !1457, !1458}
!1456 = !DILocalVariable(name: "i", arg: 1, scope: !1454, file: !1191, line: 83, type: !14)
!1457 = !DILocalVariable(name: "v", arg: 2, scope: !1454, file: !1191, line: 83, type: !1122)
!1458 = !DILocalVariable(name: "__ret", scope: !1459, file: !1191, line: 85, type: !14)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !1191, line: 85, column: 13)
!1460 = !DILocation(line: 83, column: 55, scope: !1454)
!1461 = !DILocation(line: 83, column: 68, scope: !1454)
!1462 = !DILocation(line: 85, column: 9, scope: !1454)
!1463 = !DILocation(line: 85, column: 13, scope: !1459)
!1464 = !{i64 2148801874, i64 2148801913, i64 2148801934, i64 2148801971, i64 2148801994, i64 2148802003}
!1465 = !DILocation(line: 85, column: 13, scope: !1454)
!1466 = !DILocation(line: 85, column: 11, scope: !1454)
!1467 = !DILocation(line: 85, column: 2, scope: !1454)
!1468 = distinct !DISubprogram(name: "raw_atomic_sub", scope: !1161, file: !1161, line: 754, type: !1431, scopeLine: 755, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1469)
!1469 = !{!1470, !1471}
!1470 = !DILocalVariable(name: "i", arg: 1, scope: !1468, file: !1161, line: 754, type: !14)
!1471 = !DILocalVariable(name: "v", arg: 2, scope: !1468, file: !1161, line: 754, type: !1122)
!1472 = !DILocation(line: 754, column: 20, scope: !1468)
!1473 = !DILocation(line: 754, column: 33, scope: !1468)
!1474 = !DILocation(line: 756, column: 18, scope: !1468)
!1475 = !DILocation(line: 756, column: 21, scope: !1468)
!1476 = !DILocation(line: 756, column: 2, scope: !1468)
!1477 = !DILocation(line: 757, column: 1, scope: !1468)
!1478 = distinct !DISubprogram(name: "arch_atomic_sub", scope: !1191, file: !1191, line: 38, type: !1431, scopeLine: 39, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1479)
!1479 = !{!1480, !1481}
!1480 = !DILocalVariable(name: "i", arg: 1, scope: !1478, file: !1191, line: 38, type: !14)
!1481 = !DILocalVariable(name: "v", arg: 2, scope: !1478, file: !1191, line: 38, type: !1122)
!1482 = !DILocation(line: 38, column: 49, scope: !1478)
!1483 = !DILocation(line: 38, column: 62, scope: !1478)
!1484 = !DILocation(line: 41, column: 16, scope: !1478)
!1485 = !DILocation(line: 41, column: 19, scope: !1478)
!1486 = !DILocation(line: 42, column: 16, scope: !1478)
!1487 = !DILocation(line: 40, column: 2, scope: !1478)
!1488 = !{i64 2148791433, i64 2148791472, i64 2148791493, i64 2148791530, i64 2148791553, i64 2148791423}
!1489 = !DILocation(line: 43, column: 1, scope: !1478)
!1490 = distinct !DISubprogram(name: "queued_read_lock", scope: !1384, file: !1384, line: 78, type: !1491, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1493)
!1491 = !DISubroutineType(types: !1492)
!1492 = !{null, !1387}
!1493 = !{!1494, !1495}
!1494 = !DILocalVariable(name: "lock", arg: 1, scope: !1490, file: !1384, line: 78, type: !1387)
!1495 = !DILocalVariable(name: "cnts", scope: !1490, file: !1384, line: 80, type: !14)
!1496 = !DILocation(line: 78, column: 53, scope: !1490)
!1497 = !DILocation(line: 80, column: 2, scope: !1490)
!1498 = !DILocation(line: 80, column: 6, scope: !1490)
!1499 = !DILocation(line: 82, column: 46, scope: !1490)
!1500 = !DILocation(line: 82, column: 52, scope: !1490)
!1501 = !DILocation(line: 82, column: 9, scope: !1490)
!1502 = !DILocation(line: 82, column: 7, scope: !1490)
!1503 = !DILocation(line: 83, column: 6, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1490, file: !1384, line: 83, column: 6)
!1505 = !DILocation(line: 83, column: 6, scope: !1490)
!1506 = !DILocation(line: 84, column: 3, scope: !1504)
!1507 = !DILocation(line: 87, column: 28, scope: !1490)
!1508 = !DILocation(line: 87, column: 2, scope: !1490)
!1509 = !DILocation(line: 88, column: 1, scope: !1490)
!1510 = !DISubprogram(name: "queued_read_lock_slowpath", scope: !1384, file: !1384, line: 36, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1511 = distinct !DISubprogram(name: "queued_read_unlock", scope: !1384, file: !1384, line: 108, type: !1491, scopeLine: 109, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1512)
!1512 = !{!1513}
!1513 = !DILocalVariable(name: "lock", arg: 1, scope: !1511, file: !1384, line: 108, type: !1387)
!1514 = !DILocation(line: 108, column: 55, scope: !1511)
!1515 = !DILocation(line: 113, column: 45, scope: !1511)
!1516 = !DILocation(line: 113, column: 51, scope: !1511)
!1517 = !DILocation(line: 113, column: 8, scope: !1511)
!1518 = !DILocation(line: 114, column: 1, scope: !1511)
!1519 = distinct !DISubprogram(name: "atomic_sub_return_release", scope: !1106, file: !1106, line: 323, type: !1417, scopeLine: 324, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1520)
!1520 = !{!1521, !1522}
!1521 = !DILocalVariable(name: "i", arg: 1, scope: !1519, file: !1106, line: 323, type: !14)
!1522 = !DILocalVariable(name: "v", arg: 2, scope: !1519, file: !1106, line: 323, type: !1122)
!1523 = !DILocation(line: 323, column: 31, scope: !1519)
!1524 = !DILocation(line: 323, column: 44, scope: !1519)
!1525 = !DILocation(line: 325, column: 2, scope: !1519)
!1526 = !DILocation(line: 325, column: 2, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1519, file: !1106, line: 325, column: 2)
!1528 = !DILocation(line: 326, column: 31, scope: !1519)
!1529 = !DILocation(line: 326, column: 2, scope: !1519)
!1530 = !DILocation(line: 327, column: 39, scope: !1519)
!1531 = !DILocation(line: 327, column: 42, scope: !1519)
!1532 = !DILocation(line: 327, column: 9, scope: !1519)
!1533 = !DILocation(line: 327, column: 2, scope: !1519)
!1534 = distinct !DISubprogram(name: "raw_atomic_sub_return_release", scope: !1161, file: !1161, line: 825, type: !1417, scopeLine: 826, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1535)
!1535 = !{!1536, !1537}
!1536 = !DILocalVariable(name: "i", arg: 1, scope: !1534, file: !1161, line: 825, type: !14)
!1537 = !DILocalVariable(name: "v", arg: 2, scope: !1534, file: !1161, line: 825, type: !1122)
!1538 = !DILocation(line: 825, column: 35, scope: !1534)
!1539 = !DILocation(line: 825, column: 48, scope: !1534)
!1540 = !DILocation(line: 833, column: 32, scope: !1534)
!1541 = !DILocation(line: 833, column: 35, scope: !1534)
!1542 = !DILocation(line: 833, column: 9, scope: !1534)
!1543 = !DILocation(line: 833, column: 2, scope: !1534)
!1544 = distinct !DISubprogram(name: "arch_atomic_sub_return", scope: !1191, file: !1191, line: 89, type: !1417, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1545)
!1545 = !{!1546, !1547}
!1546 = !DILocalVariable(name: "i", arg: 1, scope: !1544, file: !1191, line: 89, type: !14)
!1547 = !DILocalVariable(name: "v", arg: 2, scope: !1544, file: !1191, line: 89, type: !1122)
!1548 = !DILocation(line: 89, column: 55, scope: !1544)
!1549 = !DILocation(line: 89, column: 68, scope: !1544)
!1550 = !DILocation(line: 91, column: 33, scope: !1544)
!1551 = !DILocation(line: 91, column: 32, scope: !1544)
!1552 = !DILocation(line: 91, column: 36, scope: !1544)
!1553 = !DILocation(line: 91, column: 9, scope: !1544)
!1554 = !DILocation(line: 91, column: 2, scope: !1544)
!1555 = distinct !DISubprogram(name: "queued_write_trylock", scope: !1384, file: !1384, line: 63, type: !1385, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1556)
!1556 = !{!1557, !1558}
!1557 = !DILocalVariable(name: "lock", arg: 1, scope: !1555, file: !1384, line: 63, type: !1387)
!1558 = !DILocalVariable(name: "cnts", scope: !1555, file: !1384, line: 65, type: !14)
!1559 = !DILocation(line: 63, column: 56, scope: !1555)
!1560 = !DILocation(line: 65, column: 2, scope: !1555)
!1561 = !DILocation(line: 65, column: 6, scope: !1555)
!1562 = !DILocation(line: 67, column: 22, scope: !1555)
!1563 = !DILocation(line: 67, column: 28, scope: !1555)
!1564 = !DILocation(line: 67, column: 9, scope: !1555)
!1565 = !DILocation(line: 67, column: 7, scope: !1555)
!1566 = !DILocation(line: 68, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1555, file: !1384, line: 68, column: 6)
!1568 = !DILocation(line: 68, column: 6, scope: !1555)
!1569 = !DILocation(line: 69, column: 3, scope: !1567)
!1570 = !DILocation(line: 71, column: 9, scope: !1555)
!1571 = !DILocation(line: 71, column: 2, scope: !1555)
!1572 = !DILocation(line: 73, column: 1, scope: !1555)
!1573 = distinct !DISubprogram(name: "queued_write_lock", scope: !1384, file: !1384, line: 94, type: !1491, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1574)
!1574 = !{!1575, !1576}
!1575 = !DILocalVariable(name: "lock", arg: 1, scope: !1573, file: !1384, line: 94, type: !1387)
!1576 = !DILocalVariable(name: "cnts", scope: !1573, file: !1384, line: 96, type: !14)
!1577 = !DILocation(line: 94, column: 54, scope: !1573)
!1578 = !DILocation(line: 96, column: 2, scope: !1573)
!1579 = !DILocation(line: 96, column: 6, scope: !1573)
!1580 = !DILocation(line: 98, column: 6, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1573, file: !1384, line: 98, column: 6)
!1582 = !DILocation(line: 98, column: 6, scope: !1573)
!1583 = !DILocation(line: 99, column: 3, scope: !1581)
!1584 = !DILocation(line: 101, column: 29, scope: !1573)
!1585 = !DILocation(line: 101, column: 2, scope: !1573)
!1586 = !DILocation(line: 102, column: 1, scope: !1573)
!1587 = !DISubprogram(name: "queued_write_lock_slowpath", scope: !1384, file: !1384, line: 37, type: !1491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1588 = distinct !DISubprogram(name: "queued_write_unlock", scope: !1384, file: !1384, line: 120, type: !1491, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1589)
!1589 = !{!1590}
!1590 = !DILocalVariable(name: "lock", arg: 1, scope: !1588, file: !1384, line: 120, type: !1387)
!1591 = !DILocation(line: 120, column: 56, scope: !1588)
!1592 = !DILocation(line: 122, column: 2, scope: !1588)
!1593 = !DILocation(line: 122, column: 2, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !1384, line: 122, column: 2)
!1595 = !DILocation(line: 122, column: 2, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1594, file: !1384, line: 122, column: 2)
!1597 = !DILocation(line: 122, column: 2, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1594, file: !1384, line: 122, column: 2)
!1599 = !DILocation(line: 122, column: 2, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1598, file: !1384, line: 122, column: 2)
!1601 = !{i64 2149629310}
!1602 = !DILocation(line: 122, column: 2, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1598, file: !1384, line: 122, column: 2)
!1604 = !DILocation(line: 122, column: 2, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1603, file: !1384, line: 122, column: 2)
!1606 = !DILocation(line: 122, column: 2, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1603, file: !1384, line: 122, column: 2)
!1608 = !DILocation(line: 123, column: 1, scope: !1588)

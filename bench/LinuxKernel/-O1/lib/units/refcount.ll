; ModuleID = 'lib/refcount.c'
source_filename = "lib/refcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_warn_saturate: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_warn_saturate ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_dec_if_one: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_dec_if_one ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_dec_not_one: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_dec_not_one ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_dec_and_mutex_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_dec_and_mutex_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_dec_and_lock: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_dec_and_lock ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_refcount_dec_and_lock_irqsave: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad refcount_dec_and_lock_irqsave ; .previous"

%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }

@refcount_warn_saturate.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !0
@.str = private unnamed_addr constant [40 x i8] c"refcount_t: saturated; leaking memory.\0A\00", align 1, !dbg !47
@.str.1 = private unnamed_addr constant [15 x i8] c"lib/refcount.c\00", align 1, !dbg !53
@refcount_warn_saturate.__already_done.2 = internal global i8 0, section ".data..once", align 1, !dbg !58
@refcount_warn_saturate.__already_done.3 = internal global i8 0, section ".data..once", align 1, !dbg !62
@.str.4 = private unnamed_addr constant [44 x i8] c"refcount_t: addition on 0; use-after-free.\0A\00", align 1, !dbg !64
@refcount_warn_saturate.__already_done.5 = internal global i8 0, section ".data..once", align 1, !dbg !69
@.str.6 = private unnamed_addr constant [40 x i8] c"refcount_t: underflow; use-after-free.\0A\00", align 1, !dbg !71
@refcount_warn_saturate.__already_done.7 = internal global i8 0, section ".data..once", align 1, !dbg !73
@.str.8 = private unnamed_addr constant [46 x i8] c"refcount_t: decrement hit 0; leaking memory.\0A\00", align 1, !dbg !75
@refcount_warn_saturate.__already_done.9 = internal global i8 0, section ".data..once", align 1, !dbg !80
@.str.10 = private unnamed_addr constant [41 x i8] c"refcount_t: unknown saturation event!?.\0A\00", align 1, !dbg !82
@__UNIQUE_ID___addressable_refcount_warn_saturate61 = internal global ptr @refcount_warn_saturate, section ".discard.addressable", align 8, !dbg !87
@__UNIQUE_ID___addressable_refcount_dec_if_one62 = internal global ptr @refcount_dec_if_one, section ".discard.addressable", align 8, !dbg !89
@refcount_dec_not_one.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !91
@__UNIQUE_ID___addressable_refcount_dec_not_one63 = internal global ptr @refcount_dec_not_one, section ".discard.addressable", align 8, !dbg !115
@__UNIQUE_ID___addressable_refcount_dec_and_mutex_lock64 = internal global ptr @refcount_dec_and_mutex_lock, section ".discard.addressable", align 8, !dbg !117
@__UNIQUE_ID___addressable_refcount_dec_and_lock65 = internal global ptr @refcount_dec_and_lock, section ".discard.addressable", align 8, !dbg !119
@__UNIQUE_ID___addressable_refcount_dec_and_lock_irqsave66 = internal global ptr @refcount_dec_and_lock_irqsave, section ".discard.addressable", align 8, !dbg !121
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_refcount_warn_saturate61, ptr @__UNIQUE_ID___addressable_refcount_dec_if_one62, ptr @__UNIQUE_ID___addressable_refcount_dec_not_one63, ptr @__UNIQUE_ID___addressable_refcount_dec_and_mutex_lock64, ptr @__UNIQUE_ID___addressable_refcount_dec_and_lock65, ptr @__UNIQUE_ID___addressable_refcount_dec_and_lock_irqsave66], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @refcount_warn_saturate(ptr noundef %r, i32 noundef %t) #0 align 16 !dbg !2 {
entry:
  %r.addr = alloca ptr, align 8
  %t.addr = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  %tmp54 = alloca i64, align 8
  %__ret_do_once63 = alloca i8, align 1
  %__ret_cond64 = alloca i8, align 1
  %__ret_once71 = alloca i8, align 1
  %tmp88 = alloca i64, align 8
  %__ret_warn_on98 = alloca i32, align 4
  %__flags113 = alloca i32, align 4
  %tmp131 = alloca i64, align 8
  %tmp140 = alloca i64, align 8
  %__ret_do_once149 = alloca i8, align 1
  %__ret_cond150 = alloca i8, align 1
  %__ret_once157 = alloca i8, align 1
  %tmp174 = alloca i64, align 8
  %__ret_warn_on184 = alloca i32, align 4
  %__flags199 = alloca i32, align 4
  %tmp217 = alloca i64, align 8
  %tmp226 = alloca i64, align 8
  %__ret_do_once235 = alloca i8, align 1
  %__ret_cond236 = alloca i8, align 1
  %__ret_once243 = alloca i8, align 1
  %tmp260 = alloca i64, align 8
  %__ret_warn_on270 = alloca i32, align 4
  %__flags285 = alloca i32, align 4
  %tmp303 = alloca i64, align 8
  %tmp312 = alloca i64, align 8
  %__ret_do_once321 = alloca i8, align 1
  %__ret_cond322 = alloca i8, align 1
  %__ret_once329 = alloca i8, align 1
  %tmp346 = alloca i64, align 8
  %__ret_warn_on356 = alloca i32, align 4
  %__flags371 = alloca i32, align 4
  %tmp389 = alloca i64, align 8
  %tmp398 = alloca i64, align 8
  %__ret_do_once406 = alloca i8, align 1
  %__ret_cond407 = alloca i8, align 1
  %__ret_once414 = alloca i8, align 1
  %tmp431 = alloca i64, align 8
  %__ret_warn_on441 = alloca i32, align 4
  %__flags456 = alloca i32, align 4
  %tmp474 = alloca i64, align 8
  %tmp483 = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !124, metadata !DIExpression()), !dbg !208
  store i32 %t, ptr %t.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %t.addr, metadata !125, metadata !DIExpression()), !dbg !209
  %0 = load ptr, ptr %r.addr, align 8, !dbg !210
  call void @refcount_set(ptr noundef %0, i32 noundef -1073741824) #8, !dbg !211
  %1 = load i32, ptr %t.addr, align 4, !dbg !212
  switch i32 %1, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb62
    i32 2, label %sw.bb148
    i32 3, label %sw.bb234
    i32 4, label %sw.bb320
  ], !dbg !213

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #9, !dbg !214
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !126, metadata !DIExpression()), !dbg !214
  store i8 1, ptr %__ret_do_once, align 1, !dbg !214
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #9, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !129, metadata !DIExpression()), !dbg !215
  %2 = load i8, ptr %__ret_do_once, align 1, !dbg !215, !range !216, !noundef !217
  %tobool = trunc i8 %2 to i1, !dbg !215
  %lnot = xor i1 %tobool, true, !dbg !215
  %lnot1 = xor i1 %lnot, true, !dbg !215
  %frombool = zext i1 %lnot1 to i8, !dbg !215
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !215
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #9, !dbg !215
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !132, metadata !DIExpression()), !dbg !215
  store i8 0, ptr %__ret_once, align 1, !dbg !215
  %3 = load i8, ptr %__ret_cond, align 1, !dbg !218, !range !216, !noundef !217
  %tobool2 = trunc i8 %3 to i1, !dbg !218
  br i1 %tobool2, label %land.rhs, label %land.end, !dbg !218

land.rhs:                                         ; preds = %sw.bb
  %4 = load i8, ptr @refcount_warn_saturate.__already_done, align 1, !dbg !218, !range !216, !noundef !217
  %tobool3 = trunc i8 %4 to i1, !dbg !218
  %lnot4 = xor i1 %tobool3, true, !dbg !218
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb
  %5 = phi i1 [ false, %sw.bb ], [ %lnot4, %land.rhs ], !dbg !220
  %lnot5 = xor i1 %5, true, !dbg !218
  %lnot6 = xor i1 %lnot5, true, !dbg !218
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !218
  %conv = sext i32 %lnot.ext to i64, !dbg !218
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !218
  %tobool7 = icmp ne i64 %expval, 0, !dbg !218
  br i1 %tobool7, label %if.then, label %if.end, !dbg !215

if.then:                                          ; preds = %land.end
  store i8 1, ptr @refcount_warn_saturate.__already_done, align 1, !dbg !221
  store i8 1, ptr %__ret_once, align 1, !dbg !221
  br label %if.end, !dbg !221

if.end:                                           ; preds = %if.then, %land.end
  %6 = load i8, ptr %__ret_once, align 1, !dbg !215, !range !216, !noundef !217
  %tobool8 = trunc i8 %6 to i1, !dbg !215
  %lnot9 = xor i1 %tobool8, true, !dbg !215
  %lnot11 = xor i1 %lnot9, true, !dbg !215
  %lnot.ext12 = zext i1 %lnot11 to i32, !dbg !215
  %conv13 = sext i32 %lnot.ext12 to i64, !dbg !215
  %expval14 = call i64 @llvm.expect.i64(i64 %conv13, i64 0), !dbg !215
  store i64 %expval14, ptr %tmp, align 8, !dbg !218
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #9, !dbg !223
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #9, !dbg !223
  %7 = load i64, ptr %tmp, align 8, !dbg !215
  %tobool15 = icmp ne i64 %7, 0, !dbg !223
  br i1 %tobool15, label %if.then16, label %if.end53, !dbg !214

if.then16:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !224
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !133, metadata !DIExpression()), !dbg !224
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !224
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !225
  %tobool17 = icmp ne i32 %8, 0, !dbg !225
  %lnot18 = xor i1 %tobool17, true, !dbg !225
  %lnot20 = xor i1 %lnot18, true, !dbg !225
  %lnot.ext21 = zext i1 %lnot20 to i32, !dbg !225
  %conv22 = sext i32 %lnot.ext21 to i64, !dbg !225
  %expval23 = call i64 @llvm.expect.i64(i64 %conv22, i64 0), !dbg !225
  %tobool24 = icmp ne i64 %expval23, 0, !dbg !225
  br i1 %tobool24, label %if.then25, label %if.end44, !dbg !224

if.then25:                                        ; preds = %if.then16
  br label %do.body, !dbg !225

do.body:                                          ; preds = %if.then25
  br label %do.body26, !dbg !226

do.body26:                                        ; preds = %do.body
  br label %do.cond, !dbg !227

do.cond:                                          ; preds = %do.body26
  br label %do.end, !dbg !227

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #8, !dbg !226
  br label %do.body27, !dbg !226

do.body27:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !229
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !135, metadata !DIExpression()), !dbg !229
  store i32 2313, ptr %__flags, align 4, !dbg !229
  br label %do.body28, !dbg !229

do.body28:                                        ; preds = %do.body27
  br label %do.cond29, !dbg !230

do.cond29:                                        ; preds = %do.body28
  br label %do.end30, !dbg !230

do.end30:                                         ; preds = %do.cond29
  br label %do.body31, !dbg !229

do.body31:                                        ; preds = %do.end30
  %9 = load i32, ptr %__flags, align 4, !dbg !232
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 19, i32 %9, i64 12) #9, !dbg !232, !srcloc !234
  br label %do.cond32, !dbg !232

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !232

do.end33:                                         ; preds = %do.cond32
  br label %do.body34, !dbg !229

do.body34:                                        ; preds = %do.end33
  br label %do.cond35, !dbg !235

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !235

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !226
  br label %do.cond37, !dbg !229

do.cond37:                                        ; preds = %do.end36
  br label %do.end38, !dbg !229

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !226

do.body39:                                        ; preds = %do.end38
  br label %do.cond40, !dbg !237

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !237

do.end41:                                         ; preds = %do.cond40
  br label %do.cond42, !dbg !226

do.cond42:                                        ; preds = %do.end41
  br label %do.end43, !dbg !226

do.end43:                                         ; preds = %do.cond42
  br label %if.end44, !dbg !226

if.end44:                                         ; preds = %do.end43, %if.then16
  %10 = load i32, ptr %__ret_warn_on, align 4, !dbg !224
  %tobool46 = icmp ne i32 %10, 0, !dbg !224
  %lnot47 = xor i1 %tobool46, true, !dbg !224
  %lnot49 = xor i1 %lnot47, true, !dbg !224
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !224
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !224
  %expval52 = call i64 @llvm.expect.i64(i64 %conv51, i64 0), !dbg !224
  store i64 %expval52, ptr %tmp45, align 8, !dbg !225
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !223
  %11 = load i64, ptr %tmp45, align 8, !dbg !224
  br label %if.end53, !dbg !223

if.end53:                                         ; preds = %if.end44, %if.end
  %12 = load i8, ptr %__ret_do_once, align 1, !dbg !214, !range !216, !noundef !217
  %tobool55 = trunc i8 %12 to i1, !dbg !214
  %lnot56 = xor i1 %tobool55, true, !dbg !214
  %lnot58 = xor i1 %lnot56, true, !dbg !214
  %lnot.ext59 = zext i1 %lnot58 to i32, !dbg !214
  %conv60 = sext i32 %lnot.ext59 to i64, !dbg !214
  %expval61 = call i64 @llvm.expect.i64(i64 %conv60, i64 0), !dbg !214
  store i64 %expval61, ptr %tmp54, align 8, !dbg !223
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #9, !dbg !239
  %13 = load i64, ptr %tmp54, align 8, !dbg !214
  br label %sw.epilog, !dbg !240

sw.bb62:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once63) #9, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once63, metadata !139, metadata !DIExpression()), !dbg !241
  store i8 1, ptr %__ret_do_once63, align 1, !dbg !241
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond64) #9, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %__ret_cond64, metadata !141, metadata !DIExpression()), !dbg !242
  %14 = load i8, ptr %__ret_do_once63, align 1, !dbg !242, !range !216, !noundef !217
  %tobool65 = trunc i8 %14 to i1, !dbg !242
  %lnot66 = xor i1 %tobool65, true, !dbg !242
  %lnot68 = xor i1 %lnot66, true, !dbg !242
  %frombool70 = zext i1 %lnot68 to i8, !dbg !242
  store i8 %frombool70, ptr %__ret_cond64, align 1, !dbg !242
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once71) #9, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %__ret_once71, metadata !144, metadata !DIExpression()), !dbg !242
  store i8 0, ptr %__ret_once71, align 1, !dbg !242
  %15 = load i8, ptr %__ret_cond64, align 1, !dbg !243, !range !216, !noundef !217
  %tobool72 = trunc i8 %15 to i1, !dbg !243
  br i1 %tobool72, label %land.rhs74, label %land.end78, !dbg !243

land.rhs74:                                       ; preds = %sw.bb62
  %16 = load i8, ptr @refcount_warn_saturate.__already_done.2, align 1, !dbg !243, !range !216, !noundef !217
  %tobool75 = trunc i8 %16 to i1, !dbg !243
  %lnot76 = xor i1 %tobool75, true, !dbg !243
  br label %land.end78

land.end78:                                       ; preds = %land.rhs74, %sw.bb62
  %17 = phi i1 [ false, %sw.bb62 ], [ %lnot76, %land.rhs74 ], !dbg !245
  %lnot79 = xor i1 %17, true, !dbg !243
  %lnot81 = xor i1 %lnot79, true, !dbg !243
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !243
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !243
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !243
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !243
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !242

if.then86:                                        ; preds = %land.end78
  store i8 1, ptr @refcount_warn_saturate.__already_done.2, align 1, !dbg !246
  store i8 1, ptr %__ret_once71, align 1, !dbg !246
  br label %if.end87, !dbg !246

if.end87:                                         ; preds = %if.then86, %land.end78
  %18 = load i8, ptr %__ret_once71, align 1, !dbg !242, !range !216, !noundef !217
  %tobool89 = trunc i8 %18 to i1, !dbg !242
  %lnot90 = xor i1 %tobool89, true, !dbg !242
  %lnot92 = xor i1 %lnot90, true, !dbg !242
  %lnot.ext93 = zext i1 %lnot92 to i32, !dbg !242
  %conv94 = sext i32 %lnot.ext93 to i64, !dbg !242
  %expval95 = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !242
  store i64 %expval95, ptr %tmp88, align 8, !dbg !243
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once71) #9, !dbg !248
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond64) #9, !dbg !248
  %19 = load i64, ptr %tmp88, align 8, !dbg !242
  %tobool96 = icmp ne i64 %19, 0, !dbg !248
  br i1 %tobool96, label %if.then97, label %if.end139, !dbg !241

if.then97:                                        ; preds = %if.end87
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on98) #9, !dbg !249
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on98, metadata !145, metadata !DIExpression()), !dbg !249
  store i32 1, ptr %__ret_warn_on98, align 4, !dbg !249
  %20 = load i32, ptr %__ret_warn_on98, align 4, !dbg !250
  %tobool99 = icmp ne i32 %20, 0, !dbg !250
  %lnot100 = xor i1 %tobool99, true, !dbg !250
  %lnot102 = xor i1 %lnot100, true, !dbg !250
  %lnot.ext103 = zext i1 %lnot102 to i32, !dbg !250
  %conv104 = sext i32 %lnot.ext103 to i64, !dbg !250
  %expval105 = call i64 @llvm.expect.i64(i64 %conv104, i64 0), !dbg !250
  %tobool106 = icmp ne i64 %expval105, 0, !dbg !250
  br i1 %tobool106, label %if.then107, label %if.end130, !dbg !249

if.then107:                                       ; preds = %if.then97
  br label %do.body108, !dbg !250

do.body108:                                       ; preds = %if.then107
  br label %do.body109, !dbg !251

do.body109:                                       ; preds = %do.body108
  br label %do.cond110, !dbg !252

do.cond110:                                       ; preds = %do.body109
  br label %do.end111, !dbg !252

do.end111:                                        ; preds = %do.cond110
  call void (ptr, ...) @__warn_printk(ptr noundef @.str) #8, !dbg !251
  br label %do.body112, !dbg !251

do.body112:                                       ; preds = %do.end111
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags113) #9, !dbg !254
  call void @llvm.dbg.declare(metadata ptr %__flags113, metadata !147, metadata !DIExpression()), !dbg !254
  store i32 2313, ptr %__flags113, align 4, !dbg !254
  br label %do.body114, !dbg !254

do.body114:                                       ; preds = %do.body112
  br label %do.cond115, !dbg !255

do.cond115:                                       ; preds = %do.body114
  br label %do.end116, !dbg !255

do.end116:                                        ; preds = %do.cond115
  br label %do.body117, !dbg !254

do.body117:                                       ; preds = %do.end116
  %21 = load i32, ptr %__flags113, align 4, !dbg !257
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 22, i32 %21, i64 12) #9, !dbg !257, !srcloc !259
  br label %do.cond118, !dbg !257

do.cond118:                                       ; preds = %do.body117
  br label %do.end119, !dbg !257

do.end119:                                        ; preds = %do.cond118
  br label %do.body120, !dbg !254

do.body120:                                       ; preds = %do.end119
  br label %do.cond121, !dbg !260

do.cond121:                                       ; preds = %do.body120
  br label %do.end122, !dbg !260

do.end122:                                        ; preds = %do.cond121
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags113) #9, !dbg !251
  br label %do.cond123, !dbg !254

do.cond123:                                       ; preds = %do.end122
  br label %do.end124, !dbg !254

do.end124:                                        ; preds = %do.cond123
  br label %do.body125, !dbg !251

do.body125:                                       ; preds = %do.end124
  br label %do.cond126, !dbg !262

do.cond126:                                       ; preds = %do.body125
  br label %do.end127, !dbg !262

do.end127:                                        ; preds = %do.cond126
  br label %do.cond128, !dbg !251

do.cond128:                                       ; preds = %do.end127
  br label %do.end129, !dbg !251

do.end129:                                        ; preds = %do.cond128
  br label %if.end130, !dbg !251

if.end130:                                        ; preds = %do.end129, %if.then97
  %22 = load i32, ptr %__ret_warn_on98, align 4, !dbg !249
  %tobool132 = icmp ne i32 %22, 0, !dbg !249
  %lnot133 = xor i1 %tobool132, true, !dbg !249
  %lnot135 = xor i1 %lnot133, true, !dbg !249
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !249
  %conv137 = sext i32 %lnot.ext136 to i64, !dbg !249
  %expval138 = call i64 @llvm.expect.i64(i64 %conv137, i64 0), !dbg !249
  store i64 %expval138, ptr %tmp131, align 8, !dbg !250
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on98) #9, !dbg !248
  %23 = load i64, ptr %tmp131, align 8, !dbg !249
  br label %if.end139, !dbg !248

if.end139:                                        ; preds = %if.end130, %if.end87
  %24 = load i8, ptr %__ret_do_once63, align 1, !dbg !241, !range !216, !noundef !217
  %tobool141 = trunc i8 %24 to i1, !dbg !241
  %lnot142 = xor i1 %tobool141, true, !dbg !241
  %lnot144 = xor i1 %lnot142, true, !dbg !241
  %lnot.ext145 = zext i1 %lnot144 to i32, !dbg !241
  %conv146 = sext i32 %lnot.ext145 to i64, !dbg !241
  %expval147 = call i64 @llvm.expect.i64(i64 %conv146, i64 0), !dbg !241
  store i64 %expval147, ptr %tmp140, align 8, !dbg !248
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once63) #9, !dbg !264
  %25 = load i64, ptr %tmp140, align 8, !dbg !241
  br label %sw.epilog, !dbg !265

sw.bb148:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once149) #9, !dbg !266
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once149, metadata !151, metadata !DIExpression()), !dbg !266
  store i8 1, ptr %__ret_do_once149, align 1, !dbg !266
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond150) #9, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ret_cond150, metadata !153, metadata !DIExpression()), !dbg !267
  %26 = load i8, ptr %__ret_do_once149, align 1, !dbg !267, !range !216, !noundef !217
  %tobool151 = trunc i8 %26 to i1, !dbg !267
  %lnot152 = xor i1 %tobool151, true, !dbg !267
  %lnot154 = xor i1 %lnot152, true, !dbg !267
  %frombool156 = zext i1 %lnot154 to i8, !dbg !267
  store i8 %frombool156, ptr %__ret_cond150, align 1, !dbg !267
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once157) #9, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ret_once157, metadata !156, metadata !DIExpression()), !dbg !267
  store i8 0, ptr %__ret_once157, align 1, !dbg !267
  %27 = load i8, ptr %__ret_cond150, align 1, !dbg !268, !range !216, !noundef !217
  %tobool158 = trunc i8 %27 to i1, !dbg !268
  br i1 %tobool158, label %land.rhs160, label %land.end164, !dbg !268

land.rhs160:                                      ; preds = %sw.bb148
  %28 = load i8, ptr @refcount_warn_saturate.__already_done.3, align 1, !dbg !268, !range !216, !noundef !217
  %tobool161 = trunc i8 %28 to i1, !dbg !268
  %lnot162 = xor i1 %tobool161, true, !dbg !268
  br label %land.end164

land.end164:                                      ; preds = %land.rhs160, %sw.bb148
  %29 = phi i1 [ false, %sw.bb148 ], [ %lnot162, %land.rhs160 ], !dbg !270
  %lnot165 = xor i1 %29, true, !dbg !268
  %lnot167 = xor i1 %lnot165, true, !dbg !268
  %lnot.ext168 = zext i1 %lnot167 to i32, !dbg !268
  %conv169 = sext i32 %lnot.ext168 to i64, !dbg !268
  %expval170 = call i64 @llvm.expect.i64(i64 %conv169, i64 0), !dbg !268
  %tobool171 = icmp ne i64 %expval170, 0, !dbg !268
  br i1 %tobool171, label %if.then172, label %if.end173, !dbg !267

if.then172:                                       ; preds = %land.end164
  store i8 1, ptr @refcount_warn_saturate.__already_done.3, align 1, !dbg !271
  store i8 1, ptr %__ret_once157, align 1, !dbg !271
  br label %if.end173, !dbg !271

if.end173:                                        ; preds = %if.then172, %land.end164
  %30 = load i8, ptr %__ret_once157, align 1, !dbg !267, !range !216, !noundef !217
  %tobool175 = trunc i8 %30 to i1, !dbg !267
  %lnot176 = xor i1 %tobool175, true, !dbg !267
  %lnot178 = xor i1 %lnot176, true, !dbg !267
  %lnot.ext179 = zext i1 %lnot178 to i32, !dbg !267
  %conv180 = sext i32 %lnot.ext179 to i64, !dbg !267
  %expval181 = call i64 @llvm.expect.i64(i64 %conv180, i64 0), !dbg !267
  store i64 %expval181, ptr %tmp174, align 8, !dbg !268
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once157) #9, !dbg !273
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond150) #9, !dbg !273
  %31 = load i64, ptr %tmp174, align 8, !dbg !267
  %tobool182 = icmp ne i64 %31, 0, !dbg !273
  br i1 %tobool182, label %if.then183, label %if.end225, !dbg !266

if.then183:                                       ; preds = %if.end173
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on184) #9, !dbg !274
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on184, metadata !157, metadata !DIExpression()), !dbg !274
  store i32 1, ptr %__ret_warn_on184, align 4, !dbg !274
  %32 = load i32, ptr %__ret_warn_on184, align 4, !dbg !275
  %tobool185 = icmp ne i32 %32, 0, !dbg !275
  %lnot186 = xor i1 %tobool185, true, !dbg !275
  %lnot188 = xor i1 %lnot186, true, !dbg !275
  %lnot.ext189 = zext i1 %lnot188 to i32, !dbg !275
  %conv190 = sext i32 %lnot.ext189 to i64, !dbg !275
  %expval191 = call i64 @llvm.expect.i64(i64 %conv190, i64 0), !dbg !275
  %tobool192 = icmp ne i64 %expval191, 0, !dbg !275
  br i1 %tobool192, label %if.then193, label %if.end216, !dbg !274

if.then193:                                       ; preds = %if.then183
  br label %do.body194, !dbg !275

do.body194:                                       ; preds = %if.then193
  br label %do.body195, !dbg !276

do.body195:                                       ; preds = %do.body194
  br label %do.cond196, !dbg !277

do.cond196:                                       ; preds = %do.body195
  br label %do.end197, !dbg !277

do.end197:                                        ; preds = %do.cond196
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.4) #8, !dbg !276
  br label %do.body198, !dbg !276

do.body198:                                       ; preds = %do.end197
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags199) #9, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %__flags199, metadata !159, metadata !DIExpression()), !dbg !279
  store i32 2313, ptr %__flags199, align 4, !dbg !279
  br label %do.body200, !dbg !279

do.body200:                                       ; preds = %do.body198
  br label %do.cond201, !dbg !280

do.cond201:                                       ; preds = %do.body200
  br label %do.end202, !dbg !280

do.end202:                                        ; preds = %do.cond201
  br label %do.body203, !dbg !279

do.body203:                                       ; preds = %do.end202
  %33 = load i32, ptr %__flags199, align 4, !dbg !282
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 25, i32 %33, i64 12) #9, !dbg !282, !srcloc !284
  br label %do.cond204, !dbg !282

do.cond204:                                       ; preds = %do.body203
  br label %do.end205, !dbg !282

do.end205:                                        ; preds = %do.cond204
  br label %do.body206, !dbg !279

do.body206:                                       ; preds = %do.end205
  br label %do.cond207, !dbg !285

do.cond207:                                       ; preds = %do.body206
  br label %do.end208, !dbg !285

do.end208:                                        ; preds = %do.cond207
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags199) #9, !dbg !276
  br label %do.cond209, !dbg !279

do.cond209:                                       ; preds = %do.end208
  br label %do.end210, !dbg !279

do.end210:                                        ; preds = %do.cond209
  br label %do.body211, !dbg !276

do.body211:                                       ; preds = %do.end210
  br label %do.cond212, !dbg !287

do.cond212:                                       ; preds = %do.body211
  br label %do.end213, !dbg !287

do.end213:                                        ; preds = %do.cond212
  br label %do.cond214, !dbg !276

do.cond214:                                       ; preds = %do.end213
  br label %do.end215, !dbg !276

do.end215:                                        ; preds = %do.cond214
  br label %if.end216, !dbg !276

if.end216:                                        ; preds = %do.end215, %if.then183
  %34 = load i32, ptr %__ret_warn_on184, align 4, !dbg !274
  %tobool218 = icmp ne i32 %34, 0, !dbg !274
  %lnot219 = xor i1 %tobool218, true, !dbg !274
  %lnot221 = xor i1 %lnot219, true, !dbg !274
  %lnot.ext222 = zext i1 %lnot221 to i32, !dbg !274
  %conv223 = sext i32 %lnot.ext222 to i64, !dbg !274
  %expval224 = call i64 @llvm.expect.i64(i64 %conv223, i64 0), !dbg !274
  store i64 %expval224, ptr %tmp217, align 8, !dbg !275
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on184) #9, !dbg !273
  %35 = load i64, ptr %tmp217, align 8, !dbg !274
  br label %if.end225, !dbg !273

if.end225:                                        ; preds = %if.end216, %if.end173
  %36 = load i8, ptr %__ret_do_once149, align 1, !dbg !266, !range !216, !noundef !217
  %tobool227 = trunc i8 %36 to i1, !dbg !266
  %lnot228 = xor i1 %tobool227, true, !dbg !266
  %lnot230 = xor i1 %lnot228, true, !dbg !266
  %lnot.ext231 = zext i1 %lnot230 to i32, !dbg !266
  %conv232 = sext i32 %lnot.ext231 to i64, !dbg !266
  %expval233 = call i64 @llvm.expect.i64(i64 %conv232, i64 0), !dbg !266
  store i64 %expval233, ptr %tmp226, align 8, !dbg !273
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once149) #9, !dbg !289
  %37 = load i64, ptr %tmp226, align 8, !dbg !266
  br label %sw.epilog, !dbg !290

sw.bb234:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once235) #9, !dbg !291
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once235, metadata !163, metadata !DIExpression()), !dbg !291
  store i8 1, ptr %__ret_do_once235, align 1, !dbg !291
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond236) #9, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %__ret_cond236, metadata !165, metadata !DIExpression()), !dbg !292
  %38 = load i8, ptr %__ret_do_once235, align 1, !dbg !292, !range !216, !noundef !217
  %tobool237 = trunc i8 %38 to i1, !dbg !292
  %lnot238 = xor i1 %tobool237, true, !dbg !292
  %lnot240 = xor i1 %lnot238, true, !dbg !292
  %frombool242 = zext i1 %lnot240 to i8, !dbg !292
  store i8 %frombool242, ptr %__ret_cond236, align 1, !dbg !292
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once243) #9, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %__ret_once243, metadata !168, metadata !DIExpression()), !dbg !292
  store i8 0, ptr %__ret_once243, align 1, !dbg !292
  %39 = load i8, ptr %__ret_cond236, align 1, !dbg !293, !range !216, !noundef !217
  %tobool244 = trunc i8 %39 to i1, !dbg !293
  br i1 %tobool244, label %land.rhs246, label %land.end250, !dbg !293

land.rhs246:                                      ; preds = %sw.bb234
  %40 = load i8, ptr @refcount_warn_saturate.__already_done.5, align 1, !dbg !293, !range !216, !noundef !217
  %tobool247 = trunc i8 %40 to i1, !dbg !293
  %lnot248 = xor i1 %tobool247, true, !dbg !293
  br label %land.end250

land.end250:                                      ; preds = %land.rhs246, %sw.bb234
  %41 = phi i1 [ false, %sw.bb234 ], [ %lnot248, %land.rhs246 ], !dbg !295
  %lnot251 = xor i1 %41, true, !dbg !293
  %lnot253 = xor i1 %lnot251, true, !dbg !293
  %lnot.ext254 = zext i1 %lnot253 to i32, !dbg !293
  %conv255 = sext i32 %lnot.ext254 to i64, !dbg !293
  %expval256 = call i64 @llvm.expect.i64(i64 %conv255, i64 0), !dbg !293
  %tobool257 = icmp ne i64 %expval256, 0, !dbg !293
  br i1 %tobool257, label %if.then258, label %if.end259, !dbg !292

if.then258:                                       ; preds = %land.end250
  store i8 1, ptr @refcount_warn_saturate.__already_done.5, align 1, !dbg !296
  store i8 1, ptr %__ret_once243, align 1, !dbg !296
  br label %if.end259, !dbg !296

if.end259:                                        ; preds = %if.then258, %land.end250
  %42 = load i8, ptr %__ret_once243, align 1, !dbg !292, !range !216, !noundef !217
  %tobool261 = trunc i8 %42 to i1, !dbg !292
  %lnot262 = xor i1 %tobool261, true, !dbg !292
  %lnot264 = xor i1 %lnot262, true, !dbg !292
  %lnot.ext265 = zext i1 %lnot264 to i32, !dbg !292
  %conv266 = sext i32 %lnot.ext265 to i64, !dbg !292
  %expval267 = call i64 @llvm.expect.i64(i64 %conv266, i64 0), !dbg !292
  store i64 %expval267, ptr %tmp260, align 8, !dbg !293
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once243) #9, !dbg !298
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond236) #9, !dbg !298
  %43 = load i64, ptr %tmp260, align 8, !dbg !292
  %tobool268 = icmp ne i64 %43, 0, !dbg !298
  br i1 %tobool268, label %if.then269, label %if.end311, !dbg !291

if.then269:                                       ; preds = %if.end259
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on270) #9, !dbg !299
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on270, metadata !169, metadata !DIExpression()), !dbg !299
  store i32 1, ptr %__ret_warn_on270, align 4, !dbg !299
  %44 = load i32, ptr %__ret_warn_on270, align 4, !dbg !300
  %tobool271 = icmp ne i32 %44, 0, !dbg !300
  %lnot272 = xor i1 %tobool271, true, !dbg !300
  %lnot274 = xor i1 %lnot272, true, !dbg !300
  %lnot.ext275 = zext i1 %lnot274 to i32, !dbg !300
  %conv276 = sext i32 %lnot.ext275 to i64, !dbg !300
  %expval277 = call i64 @llvm.expect.i64(i64 %conv276, i64 0), !dbg !300
  %tobool278 = icmp ne i64 %expval277, 0, !dbg !300
  br i1 %tobool278, label %if.then279, label %if.end302, !dbg !299

if.then279:                                       ; preds = %if.then269
  br label %do.body280, !dbg !300

do.body280:                                       ; preds = %if.then279
  br label %do.body281, !dbg !301

do.body281:                                       ; preds = %do.body280
  br label %do.cond282, !dbg !302

do.cond282:                                       ; preds = %do.body281
  br label %do.end283, !dbg !302

do.end283:                                        ; preds = %do.cond282
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6) #8, !dbg !301
  br label %do.body284, !dbg !301

do.body284:                                       ; preds = %do.end283
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags285) #9, !dbg !304
  call void @llvm.dbg.declare(metadata ptr %__flags285, metadata !171, metadata !DIExpression()), !dbg !304
  store i32 2313, ptr %__flags285, align 4, !dbg !304
  br label %do.body286, !dbg !304

do.body286:                                       ; preds = %do.body284
  br label %do.cond287, !dbg !305

do.cond287:                                       ; preds = %do.body286
  br label %do.end288, !dbg !305

do.end288:                                        ; preds = %do.cond287
  br label %do.body289, !dbg !304

do.body289:                                       ; preds = %do.end288
  %45 = load i32, ptr %__flags285, align 4, !dbg !307
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 28, i32 %45, i64 12) #9, !dbg !307, !srcloc !309
  br label %do.cond290, !dbg !307

do.cond290:                                       ; preds = %do.body289
  br label %do.end291, !dbg !307

do.end291:                                        ; preds = %do.cond290
  br label %do.body292, !dbg !304

do.body292:                                       ; preds = %do.end291
  br label %do.cond293, !dbg !310

do.cond293:                                       ; preds = %do.body292
  br label %do.end294, !dbg !310

do.end294:                                        ; preds = %do.cond293
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags285) #9, !dbg !301
  br label %do.cond295, !dbg !304

do.cond295:                                       ; preds = %do.end294
  br label %do.end296, !dbg !304

do.end296:                                        ; preds = %do.cond295
  br label %do.body297, !dbg !301

do.body297:                                       ; preds = %do.end296
  br label %do.cond298, !dbg !312

do.cond298:                                       ; preds = %do.body297
  br label %do.end299, !dbg !312

do.end299:                                        ; preds = %do.cond298
  br label %do.cond300, !dbg !301

do.cond300:                                       ; preds = %do.end299
  br label %do.end301, !dbg !301

do.end301:                                        ; preds = %do.cond300
  br label %if.end302, !dbg !301

if.end302:                                        ; preds = %do.end301, %if.then269
  %46 = load i32, ptr %__ret_warn_on270, align 4, !dbg !299
  %tobool304 = icmp ne i32 %46, 0, !dbg !299
  %lnot305 = xor i1 %tobool304, true, !dbg !299
  %lnot307 = xor i1 %lnot305, true, !dbg !299
  %lnot.ext308 = zext i1 %lnot307 to i32, !dbg !299
  %conv309 = sext i32 %lnot.ext308 to i64, !dbg !299
  %expval310 = call i64 @llvm.expect.i64(i64 %conv309, i64 0), !dbg !299
  store i64 %expval310, ptr %tmp303, align 8, !dbg !300
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on270) #9, !dbg !298
  %47 = load i64, ptr %tmp303, align 8, !dbg !299
  br label %if.end311, !dbg !298

if.end311:                                        ; preds = %if.end302, %if.end259
  %48 = load i8, ptr %__ret_do_once235, align 1, !dbg !291, !range !216, !noundef !217
  %tobool313 = trunc i8 %48 to i1, !dbg !291
  %lnot314 = xor i1 %tobool313, true, !dbg !291
  %lnot316 = xor i1 %lnot314, true, !dbg !291
  %lnot.ext317 = zext i1 %lnot316 to i32, !dbg !291
  %conv318 = sext i32 %lnot.ext317 to i64, !dbg !291
  %expval319 = call i64 @llvm.expect.i64(i64 %conv318, i64 0), !dbg !291
  store i64 %expval319, ptr %tmp312, align 8, !dbg !298
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once235) #9, !dbg !314
  %49 = load i64, ptr %tmp312, align 8, !dbg !291
  br label %sw.epilog, !dbg !315

sw.bb320:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once321) #9, !dbg !316
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once321, metadata !175, metadata !DIExpression()), !dbg !316
  store i8 1, ptr %__ret_do_once321, align 1, !dbg !316
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond322) #9, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %__ret_cond322, metadata !177, metadata !DIExpression()), !dbg !317
  %50 = load i8, ptr %__ret_do_once321, align 1, !dbg !317, !range !216, !noundef !217
  %tobool323 = trunc i8 %50 to i1, !dbg !317
  %lnot324 = xor i1 %tobool323, true, !dbg !317
  %lnot326 = xor i1 %lnot324, true, !dbg !317
  %frombool328 = zext i1 %lnot326 to i8, !dbg !317
  store i8 %frombool328, ptr %__ret_cond322, align 1, !dbg !317
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once329) #9, !dbg !317
  call void @llvm.dbg.declare(metadata ptr %__ret_once329, metadata !180, metadata !DIExpression()), !dbg !317
  store i8 0, ptr %__ret_once329, align 1, !dbg !317
  %51 = load i8, ptr %__ret_cond322, align 1, !dbg !318, !range !216, !noundef !217
  %tobool330 = trunc i8 %51 to i1, !dbg !318
  br i1 %tobool330, label %land.rhs332, label %land.end336, !dbg !318

land.rhs332:                                      ; preds = %sw.bb320
  %52 = load i8, ptr @refcount_warn_saturate.__already_done.7, align 1, !dbg !318, !range !216, !noundef !217
  %tobool333 = trunc i8 %52 to i1, !dbg !318
  %lnot334 = xor i1 %tobool333, true, !dbg !318
  br label %land.end336

land.end336:                                      ; preds = %land.rhs332, %sw.bb320
  %53 = phi i1 [ false, %sw.bb320 ], [ %lnot334, %land.rhs332 ], !dbg !320
  %lnot337 = xor i1 %53, true, !dbg !318
  %lnot339 = xor i1 %lnot337, true, !dbg !318
  %lnot.ext340 = zext i1 %lnot339 to i32, !dbg !318
  %conv341 = sext i32 %lnot.ext340 to i64, !dbg !318
  %expval342 = call i64 @llvm.expect.i64(i64 %conv341, i64 0), !dbg !318
  %tobool343 = icmp ne i64 %expval342, 0, !dbg !318
  br i1 %tobool343, label %if.then344, label %if.end345, !dbg !317

if.then344:                                       ; preds = %land.end336
  store i8 1, ptr @refcount_warn_saturate.__already_done.7, align 1, !dbg !321
  store i8 1, ptr %__ret_once329, align 1, !dbg !321
  br label %if.end345, !dbg !321

if.end345:                                        ; preds = %if.then344, %land.end336
  %54 = load i8, ptr %__ret_once329, align 1, !dbg !317, !range !216, !noundef !217
  %tobool347 = trunc i8 %54 to i1, !dbg !317
  %lnot348 = xor i1 %tobool347, true, !dbg !317
  %lnot350 = xor i1 %lnot348, true, !dbg !317
  %lnot.ext351 = zext i1 %lnot350 to i32, !dbg !317
  %conv352 = sext i32 %lnot.ext351 to i64, !dbg !317
  %expval353 = call i64 @llvm.expect.i64(i64 %conv352, i64 0), !dbg !317
  store i64 %expval353, ptr %tmp346, align 8, !dbg !318
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once329) #9, !dbg !323
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond322) #9, !dbg !323
  %55 = load i64, ptr %tmp346, align 8, !dbg !317
  %tobool354 = icmp ne i64 %55, 0, !dbg !323
  br i1 %tobool354, label %if.then355, label %if.end397, !dbg !316

if.then355:                                       ; preds = %if.end345
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on356) #9, !dbg !324
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on356, metadata !181, metadata !DIExpression()), !dbg !324
  store i32 1, ptr %__ret_warn_on356, align 4, !dbg !324
  %56 = load i32, ptr %__ret_warn_on356, align 4, !dbg !325
  %tobool357 = icmp ne i32 %56, 0, !dbg !325
  %lnot358 = xor i1 %tobool357, true, !dbg !325
  %lnot360 = xor i1 %lnot358, true, !dbg !325
  %lnot.ext361 = zext i1 %lnot360 to i32, !dbg !325
  %conv362 = sext i32 %lnot.ext361 to i64, !dbg !325
  %expval363 = call i64 @llvm.expect.i64(i64 %conv362, i64 0), !dbg !325
  %tobool364 = icmp ne i64 %expval363, 0, !dbg !325
  br i1 %tobool364, label %if.then365, label %if.end388, !dbg !324

if.then365:                                       ; preds = %if.then355
  br label %do.body366, !dbg !325

do.body366:                                       ; preds = %if.then365
  br label %do.body367, !dbg !326

do.body367:                                       ; preds = %do.body366
  br label %do.cond368, !dbg !327

do.cond368:                                       ; preds = %do.body367
  br label %do.end369, !dbg !327

do.end369:                                        ; preds = %do.cond368
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.8) #8, !dbg !326
  br label %do.body370, !dbg !326

do.body370:                                       ; preds = %do.end369
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags371) #9, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %__flags371, metadata !183, metadata !DIExpression()), !dbg !329
  store i32 2313, ptr %__flags371, align 4, !dbg !329
  br label %do.body372, !dbg !329

do.body372:                                       ; preds = %do.body370
  br label %do.cond373, !dbg !330

do.cond373:                                       ; preds = %do.body372
  br label %do.end374, !dbg !330

do.end374:                                        ; preds = %do.cond373
  br label %do.body375, !dbg !329

do.body375:                                       ; preds = %do.end374
  %57 = load i32, ptr %__flags371, align 4, !dbg !332
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 31, i32 %57, i64 12) #9, !dbg !332, !srcloc !334
  br label %do.cond376, !dbg !332

do.cond376:                                       ; preds = %do.body375
  br label %do.end377, !dbg !332

do.end377:                                        ; preds = %do.cond376
  br label %do.body378, !dbg !329

do.body378:                                       ; preds = %do.end377
  br label %do.cond379, !dbg !335

do.cond379:                                       ; preds = %do.body378
  br label %do.end380, !dbg !335

do.end380:                                        ; preds = %do.cond379
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags371) #9, !dbg !326
  br label %do.cond381, !dbg !329

do.cond381:                                       ; preds = %do.end380
  br label %do.end382, !dbg !329

do.end382:                                        ; preds = %do.cond381
  br label %do.body383, !dbg !326

do.body383:                                       ; preds = %do.end382
  br label %do.cond384, !dbg !337

do.cond384:                                       ; preds = %do.body383
  br label %do.end385, !dbg !337

do.end385:                                        ; preds = %do.cond384
  br label %do.cond386, !dbg !326

do.cond386:                                       ; preds = %do.end385
  br label %do.end387, !dbg !326

do.end387:                                        ; preds = %do.cond386
  br label %if.end388, !dbg !326

if.end388:                                        ; preds = %do.end387, %if.then355
  %58 = load i32, ptr %__ret_warn_on356, align 4, !dbg !324
  %tobool390 = icmp ne i32 %58, 0, !dbg !324
  %lnot391 = xor i1 %tobool390, true, !dbg !324
  %lnot393 = xor i1 %lnot391, true, !dbg !324
  %lnot.ext394 = zext i1 %lnot393 to i32, !dbg !324
  %conv395 = sext i32 %lnot.ext394 to i64, !dbg !324
  %expval396 = call i64 @llvm.expect.i64(i64 %conv395, i64 0), !dbg !324
  store i64 %expval396, ptr %tmp389, align 8, !dbg !325
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on356) #9, !dbg !323
  %59 = load i64, ptr %tmp389, align 8, !dbg !324
  br label %if.end397, !dbg !323

if.end397:                                        ; preds = %if.end388, %if.end345
  %60 = load i8, ptr %__ret_do_once321, align 1, !dbg !316, !range !216, !noundef !217
  %tobool399 = trunc i8 %60 to i1, !dbg !316
  %lnot400 = xor i1 %tobool399, true, !dbg !316
  %lnot402 = xor i1 %lnot400, true, !dbg !316
  %lnot.ext403 = zext i1 %lnot402 to i32, !dbg !316
  %conv404 = sext i32 %lnot.ext403 to i64, !dbg !316
  %expval405 = call i64 @llvm.expect.i64(i64 %conv404, i64 0), !dbg !316
  store i64 %expval405, ptr %tmp398, align 8, !dbg !323
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once321) #9, !dbg !339
  %61 = load i64, ptr %tmp398, align 8, !dbg !316
  br label %sw.epilog, !dbg !340

sw.default:                                       ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once406) #9, !dbg !341
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once406, metadata !187, metadata !DIExpression()), !dbg !341
  store i8 1, ptr %__ret_do_once406, align 1, !dbg !341
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond407) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %__ret_cond407, metadata !189, metadata !DIExpression()), !dbg !342
  %62 = load i8, ptr %__ret_do_once406, align 1, !dbg !342, !range !216, !noundef !217
  %tobool408 = trunc i8 %62 to i1, !dbg !342
  %lnot409 = xor i1 %tobool408, true, !dbg !342
  %lnot411 = xor i1 %lnot409, true, !dbg !342
  %frombool413 = zext i1 %lnot411 to i8, !dbg !342
  store i8 %frombool413, ptr %__ret_cond407, align 1, !dbg !342
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once414) #9, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %__ret_once414, metadata !192, metadata !DIExpression()), !dbg !342
  store i8 0, ptr %__ret_once414, align 1, !dbg !342
  %63 = load i8, ptr %__ret_cond407, align 1, !dbg !343, !range !216, !noundef !217
  %tobool415 = trunc i8 %63 to i1, !dbg !343
  br i1 %tobool415, label %land.rhs417, label %land.end421, !dbg !343

land.rhs417:                                      ; preds = %sw.default
  %64 = load i8, ptr @refcount_warn_saturate.__already_done.9, align 1, !dbg !343, !range !216, !noundef !217
  %tobool418 = trunc i8 %64 to i1, !dbg !343
  %lnot419 = xor i1 %tobool418, true, !dbg !343
  br label %land.end421

land.end421:                                      ; preds = %land.rhs417, %sw.default
  %65 = phi i1 [ false, %sw.default ], [ %lnot419, %land.rhs417 ], !dbg !345
  %lnot422 = xor i1 %65, true, !dbg !343
  %lnot424 = xor i1 %lnot422, true, !dbg !343
  %lnot.ext425 = zext i1 %lnot424 to i32, !dbg !343
  %conv426 = sext i32 %lnot.ext425 to i64, !dbg !343
  %expval427 = call i64 @llvm.expect.i64(i64 %conv426, i64 0), !dbg !343
  %tobool428 = icmp ne i64 %expval427, 0, !dbg !343
  br i1 %tobool428, label %if.then429, label %if.end430, !dbg !342

if.then429:                                       ; preds = %land.end421
  store i8 1, ptr @refcount_warn_saturate.__already_done.9, align 1, !dbg !346
  store i8 1, ptr %__ret_once414, align 1, !dbg !346
  br label %if.end430, !dbg !346

if.end430:                                        ; preds = %if.then429, %land.end421
  %66 = load i8, ptr %__ret_once414, align 1, !dbg !342, !range !216, !noundef !217
  %tobool432 = trunc i8 %66 to i1, !dbg !342
  %lnot433 = xor i1 %tobool432, true, !dbg !342
  %lnot435 = xor i1 %lnot433, true, !dbg !342
  %lnot.ext436 = zext i1 %lnot435 to i32, !dbg !342
  %conv437 = sext i32 %lnot.ext436 to i64, !dbg !342
  %expval438 = call i64 @llvm.expect.i64(i64 %conv437, i64 0), !dbg !342
  store i64 %expval438, ptr %tmp431, align 8, !dbg !343
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once414) #9, !dbg !348
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond407) #9, !dbg !348
  %67 = load i64, ptr %tmp431, align 8, !dbg !342
  %tobool439 = icmp ne i64 %67, 0, !dbg !348
  br i1 %tobool439, label %if.then440, label %if.end482, !dbg !341

if.then440:                                       ; preds = %if.end430
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on441) #9, !dbg !349
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on441, metadata !193, metadata !DIExpression()), !dbg !349
  store i32 1, ptr %__ret_warn_on441, align 4, !dbg !349
  %68 = load i32, ptr %__ret_warn_on441, align 4, !dbg !350
  %tobool442 = icmp ne i32 %68, 0, !dbg !350
  %lnot443 = xor i1 %tobool442, true, !dbg !350
  %lnot445 = xor i1 %lnot443, true, !dbg !350
  %lnot.ext446 = zext i1 %lnot445 to i32, !dbg !350
  %conv447 = sext i32 %lnot.ext446 to i64, !dbg !350
  %expval448 = call i64 @llvm.expect.i64(i64 %conv447, i64 0), !dbg !350
  %tobool449 = icmp ne i64 %expval448, 0, !dbg !350
  br i1 %tobool449, label %if.then450, label %if.end473, !dbg !349

if.then450:                                       ; preds = %if.then440
  br label %do.body451, !dbg !350

do.body451:                                       ; preds = %if.then450
  br label %do.body452, !dbg !351

do.body452:                                       ; preds = %do.body451
  br label %do.cond453, !dbg !352

do.cond453:                                       ; preds = %do.body452
  br label %do.end454, !dbg !352

do.end454:                                        ; preds = %do.cond453
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.10) #8, !dbg !351
  br label %do.body455, !dbg !351

do.body455:                                       ; preds = %do.end454
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags456) #9, !dbg !354
  call void @llvm.dbg.declare(metadata ptr %__flags456, metadata !195, metadata !DIExpression()), !dbg !354
  store i32 2313, ptr %__flags456, align 4, !dbg !354
  br label %do.body457, !dbg !354

do.body457:                                       ; preds = %do.body455
  br label %do.cond458, !dbg !355

do.cond458:                                       ; preds = %do.body457
  br label %do.end459, !dbg !355

do.end459:                                        ; preds = %do.cond458
  br label %do.body460, !dbg !354

do.body460:                                       ; preds = %do.end459
  %69 = load i32, ptr %__flags456, align 4, !dbg !357
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 34, i32 %69, i64 12) #9, !dbg !357, !srcloc !359
  br label %do.cond461, !dbg !357

do.cond461:                                       ; preds = %do.body460
  br label %do.end462, !dbg !357

do.end462:                                        ; preds = %do.cond461
  br label %do.body463, !dbg !354

do.body463:                                       ; preds = %do.end462
  br label %do.cond464, !dbg !360

do.cond464:                                       ; preds = %do.body463
  br label %do.end465, !dbg !360

do.end465:                                        ; preds = %do.cond464
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags456) #9, !dbg !351
  br label %do.cond466, !dbg !354

do.cond466:                                       ; preds = %do.end465
  br label %do.end467, !dbg !354

do.end467:                                        ; preds = %do.cond466
  br label %do.body468, !dbg !351

do.body468:                                       ; preds = %do.end467
  br label %do.cond469, !dbg !362

do.cond469:                                       ; preds = %do.body468
  br label %do.end470, !dbg !362

do.end470:                                        ; preds = %do.cond469
  br label %do.cond471, !dbg !351

do.cond471:                                       ; preds = %do.end470
  br label %do.end472, !dbg !351

do.end472:                                        ; preds = %do.cond471
  br label %if.end473, !dbg !351

if.end473:                                        ; preds = %do.end472, %if.then440
  %70 = load i32, ptr %__ret_warn_on441, align 4, !dbg !349
  %tobool475 = icmp ne i32 %70, 0, !dbg !349
  %lnot476 = xor i1 %tobool475, true, !dbg !349
  %lnot478 = xor i1 %lnot476, true, !dbg !349
  %lnot.ext479 = zext i1 %lnot478 to i32, !dbg !349
  %conv480 = sext i32 %lnot.ext479 to i64, !dbg !349
  %expval481 = call i64 @llvm.expect.i64(i64 %conv480, i64 0), !dbg !349
  store i64 %expval481, ptr %tmp474, align 8, !dbg !350
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on441) #9, !dbg !348
  %71 = load i64, ptr %tmp474, align 8, !dbg !349
  br label %if.end482, !dbg !348

if.end482:                                        ; preds = %if.end473, %if.end430
  %72 = load i8, ptr %__ret_do_once406, align 1, !dbg !341, !range !216, !noundef !217
  %tobool484 = trunc i8 %72 to i1, !dbg !341
  %lnot485 = xor i1 %tobool484, true, !dbg !341
  %lnot487 = xor i1 %lnot485, true, !dbg !341
  %lnot.ext488 = zext i1 %lnot487 to i32, !dbg !341
  %conv489 = sext i32 %lnot.ext488 to i64, !dbg !341
  %expval490 = call i64 @llvm.expect.i64(i64 %conv489, i64 0), !dbg !341
  store i64 %expval490, ptr %tmp483, align 8, !dbg !348
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once406) #9, !dbg !364
  %73 = load i64, ptr %tmp483, align 8, !dbg !341
  br label %sw.epilog, !dbg !365

sw.epilog:                                        ; preds = %if.end482, %if.end397, %if.end311, %if.end225, %if.end139, %if.end53
  ret void, !dbg !366
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @refcount_set(ptr noundef %r, i32 noundef %n) #2 align 16 !dbg !367 {
entry:
  %r.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !371, metadata !DIExpression()), !dbg !373
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !372, metadata !DIExpression()), !dbg !374
  %0 = load ptr, ptr %r.addr, align 8, !dbg !375
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !376
  %1 = load i32, ptr %n.addr, align 4, !dbg !377
  call void @atomic_set(ptr noundef %refs, i32 noundef %1) #8, !dbg !378
  ret void, !dbg !379
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !380 dso_local void @__warn_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @refcount_dec_if_one(ptr noundef %r) #0 align 16 !dbg !386 {
entry:
  %r.addr = alloca ptr, align 8
  %val = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %val, metadata !389, metadata !DIExpression()), !dbg !392
  store i32 1, ptr %val, align 4, !dbg !392
  %0 = load ptr, ptr %r.addr, align 8, !dbg !393
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !394
  %call = call zeroext i1 @atomic_try_cmpxchg_release(ptr noundef %refs, ptr noundef %val, i32 noundef 0) #8, !dbg !395
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !396
  ret i1 %call, !dbg !397
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_try_cmpxchg_release(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !398 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !404, metadata !DIExpression()), !dbg !407
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !405, metadata !DIExpression()), !dbg !408
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !406, metadata !DIExpression()), !dbg !409
  br label %do.body, !dbg !410

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !411

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !413
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !414
  %1 = load ptr, ptr %old.addr, align 8, !dbg !415
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 4) #8, !dbg !416
  %2 = load ptr, ptr %v.addr, align 8, !dbg !417
  %3 = load ptr, ptr %old.addr, align 8, !dbg !418
  %4 = load i32, ptr %new.addr, align 4, !dbg !419
  %call = call zeroext i1 @raw_atomic_try_cmpxchg_release(ptr noundef %2, ptr noundef %3, i32 noundef %4) #8, !dbg !420
  ret i1 %call, !dbg !421
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @refcount_dec_not_one(ptr noundef %r) #0 align 16 !dbg !93 {
entry:
  %retval = alloca i1, align 1
  %r.addr = alloca ptr, align 8
  %new = alloca i32, align 4
  %val = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp73 = alloca i64, align 8
  %tmp82 = alloca i64, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !97, metadata !DIExpression()), !dbg !422
  call void @llvm.lifetime.start.p0(i64 4, ptr %new) #9, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %new, metadata !98, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #9, !dbg !423
  call void @llvm.dbg.declare(metadata ptr %val, metadata !99, metadata !DIExpression()), !dbg !425
  %0 = load ptr, ptr %r.addr, align 8, !dbg !426
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %0, i32 0, i32 0, !dbg !427
  %call = call i32 @atomic_read(ptr noundef %refs) #8, !dbg !428
  store i32 %call, ptr %val, align 4, !dbg !425
  br label %do.body, !dbg !429

do.body:                                          ; preds = %do.cond91, %entry
  %1 = load i32, ptr %val, align 4, !dbg !430
  %cmp = icmp eq i32 %1, -1073741824, !dbg !430
  %lnot = xor i1 %cmp, true, !dbg !430
  %lnot1 = xor i1 %lnot, true, !dbg !430
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !430
  %conv = sext i32 %lnot.ext to i64, !dbg !430
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !430
  %tobool = icmp ne i64 %expval, 0, !dbg !430
  br i1 %tobool, label %if.then, label %if.end, !dbg !432

if.then:                                          ; preds = %do.body
  store i1 true, ptr %retval, align 1, !dbg !433
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !433

if.end:                                           ; preds = %do.body
  %2 = load i32, ptr %val, align 4, !dbg !434
  %cmp2 = icmp eq i32 %2, 1, !dbg !436
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !437

if.then4:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !438
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !438

if.end5:                                          ; preds = %if.end
  %3 = load i32, ptr %val, align 4, !dbg !439
  %sub = sub i32 %3, 1, !dbg !440
  store i32 %sub, ptr %new, align 4, !dbg !441
  %4 = load i32, ptr %new, align 4, !dbg !442
  %5 = load i32, ptr %val, align 4, !dbg !443
  %cmp6 = icmp ugt i32 %4, %5, !dbg !444
  br i1 %cmp6, label %if.then8, label %if.end90, !dbg !445

if.then8:                                         ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #9, !dbg !446
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !100, metadata !DIExpression()), !dbg !446
  %6 = load i32, ptr %new, align 4, !dbg !446
  %7 = load i32, ptr %val, align 4, !dbg !446
  %cmp9 = icmp ugt i32 %6, %7, !dbg !446
  %lnot11 = xor i1 %cmp9, true, !dbg !446
  %lnot13 = xor i1 %lnot11, true, !dbg !446
  %frombool = zext i1 %lnot13 to i8, !dbg !446
  store i8 %frombool, ptr %__ret_do_once, align 1, !dbg !446
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #9, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !105, metadata !DIExpression()), !dbg !447
  %8 = load i8, ptr %__ret_do_once, align 1, !dbg !447, !range !216, !noundef !217
  %tobool15 = trunc i8 %8 to i1, !dbg !447
  %lnot16 = xor i1 %tobool15, true, !dbg !447
  %lnot18 = xor i1 %lnot16, true, !dbg !447
  %frombool20 = zext i1 %lnot18 to i8, !dbg !447
  store i8 %frombool20, ptr %__ret_cond, align 1, !dbg !447
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #9, !dbg !447
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !108, metadata !DIExpression()), !dbg !447
  store i8 0, ptr %__ret_once, align 1, !dbg !447
  %9 = load i8, ptr %__ret_cond, align 1, !dbg !448, !range !216, !noundef !217
  %tobool21 = trunc i8 %9 to i1, !dbg !448
  br i1 %tobool21, label %land.rhs, label %land.end, !dbg !448

land.rhs:                                         ; preds = %if.then8
  %10 = load i8, ptr @refcount_dec_not_one.__already_done, align 1, !dbg !448, !range !216, !noundef !217
  %tobool23 = trunc i8 %10 to i1, !dbg !448
  %lnot24 = xor i1 %tobool23, true, !dbg !448
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then8
  %11 = phi i1 [ false, %if.then8 ], [ %lnot24, %land.rhs ], !dbg !450
  %lnot26 = xor i1 %11, true, !dbg !448
  %lnot28 = xor i1 %lnot26, true, !dbg !448
  %lnot.ext29 = zext i1 %lnot28 to i32, !dbg !448
  %conv30 = sext i32 %lnot.ext29 to i64, !dbg !448
  %expval31 = call i64 @llvm.expect.i64(i64 %conv30, i64 0), !dbg !448
  %tobool32 = icmp ne i64 %expval31, 0, !dbg !448
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !447

if.then33:                                        ; preds = %land.end
  store i8 1, ptr @refcount_dec_not_one.__already_done, align 1, !dbg !451
  store i8 1, ptr %__ret_once, align 1, !dbg !451
  br label %if.end34, !dbg !451

if.end34:                                         ; preds = %if.then33, %land.end
  %12 = load i8, ptr %__ret_once, align 1, !dbg !447, !range !216, !noundef !217
  %tobool35 = trunc i8 %12 to i1, !dbg !447
  %lnot36 = xor i1 %tobool35, true, !dbg !447
  %lnot38 = xor i1 %lnot36, true, !dbg !447
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !447
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !447
  %expval41 = call i64 @llvm.expect.i64(i64 %conv40, i64 0), !dbg !447
  store i64 %expval41, ptr %tmp, align 8, !dbg !448
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #9, !dbg !453
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #9, !dbg !453
  %13 = load i64, ptr %tmp, align 8, !dbg !447
  %tobool42 = icmp ne i64 %13, 0, !dbg !453
  br i1 %tobool42, label %if.then43, label %if.end81, !dbg !446

if.then43:                                        ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !454
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !109, metadata !DIExpression()), !dbg !454
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !454
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !455
  %tobool44 = icmp ne i32 %14, 0, !dbg !455
  %lnot45 = xor i1 %tobool44, true, !dbg !455
  %lnot47 = xor i1 %lnot45, true, !dbg !455
  %lnot.ext48 = zext i1 %lnot47 to i32, !dbg !455
  %conv49 = sext i32 %lnot.ext48 to i64, !dbg !455
  %expval50 = call i64 @llvm.expect.i64(i64 %conv49, i64 0), !dbg !455
  %tobool51 = icmp ne i64 %expval50, 0, !dbg !455
  br i1 %tobool51, label %if.then52, label %if.end72, !dbg !454

if.then52:                                        ; preds = %if.then43
  br label %do.body53, !dbg !455

do.body53:                                        ; preds = %if.then52
  br label %do.body54, !dbg !456

do.body54:                                        ; preds = %do.body53
  br label %do.cond, !dbg !457

do.cond:                                          ; preds = %do.body54
  br label %do.end, !dbg !457

do.end:                                           ; preds = %do.cond
  call void (ptr, ...) @__warn_printk(ptr noundef @.str.6) #8, !dbg !456
  br label %do.body55, !dbg !456

do.body55:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #9, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !111, metadata !DIExpression()), !dbg !459
  store i32 2313, ptr %__flags, align 4, !dbg !459
  br label %do.body56, !dbg !459

do.body56:                                        ; preds = %do.body55
  br label %do.cond57, !dbg !460

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !460

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !459

do.body59:                                        ; preds = %do.end58
  %15 = load i32, ptr %__flags, align 4, !dbg !462
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 87, i32 %15, i64 12) #9, !dbg !462, !srcloc !464
  br label %do.cond60, !dbg !462

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !462

do.end61:                                         ; preds = %do.cond60
  br label %do.body62, !dbg !459

do.body62:                                        ; preds = %do.end61
  br label %do.cond63, !dbg !465

do.cond63:                                        ; preds = %do.body62
  br label %do.end64, !dbg !465

do.end64:                                         ; preds = %do.cond63
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #9, !dbg !456
  br label %do.cond65, !dbg !459

do.cond65:                                        ; preds = %do.end64
  br label %do.end66, !dbg !459

do.end66:                                         ; preds = %do.cond65
  br label %do.body67, !dbg !456

do.body67:                                        ; preds = %do.end66
  br label %do.cond68, !dbg !467

do.cond68:                                        ; preds = %do.body67
  br label %do.end69, !dbg !467

do.end69:                                         ; preds = %do.cond68
  br label %do.cond70, !dbg !456

do.cond70:                                        ; preds = %do.end69
  br label %do.end71, !dbg !456

do.end71:                                         ; preds = %do.cond70
  br label %if.end72, !dbg !456

if.end72:                                         ; preds = %do.end71, %if.then43
  %16 = load i32, ptr %__ret_warn_on, align 4, !dbg !454
  %tobool74 = icmp ne i32 %16, 0, !dbg !454
  %lnot75 = xor i1 %tobool74, true, !dbg !454
  %lnot77 = xor i1 %lnot75, true, !dbg !454
  %lnot.ext78 = zext i1 %lnot77 to i32, !dbg !454
  %conv79 = sext i32 %lnot.ext78 to i64, !dbg !454
  %expval80 = call i64 @llvm.expect.i64(i64 %conv79, i64 0), !dbg !454
  store i64 %expval80, ptr %tmp73, align 8, !dbg !455
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #9, !dbg !453
  %17 = load i64, ptr %tmp73, align 8, !dbg !454
  br label %if.end81, !dbg !453

if.end81:                                         ; preds = %if.end72, %if.end34
  %18 = load i8, ptr %__ret_do_once, align 1, !dbg !446, !range !216, !noundef !217
  %tobool83 = trunc i8 %18 to i1, !dbg !446
  %lnot84 = xor i1 %tobool83, true, !dbg !446
  %lnot86 = xor i1 %lnot84, true, !dbg !446
  %lnot.ext87 = zext i1 %lnot86 to i32, !dbg !446
  %conv88 = sext i32 %lnot.ext87 to i64, !dbg !446
  %expval89 = call i64 @llvm.expect.i64(i64 %conv88, i64 0), !dbg !446
  store i64 %expval89, ptr %tmp82, align 8, !dbg !453
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #9, !dbg !469
  %19 = load i64, ptr %tmp82, align 8, !dbg !446
  store i1 true, ptr %retval, align 1, !dbg !470
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !470

if.end90:                                         ; preds = %if.end5
  br label %do.cond91, !dbg !471

do.cond91:                                        ; preds = %if.end90
  %20 = load ptr, ptr %r.addr, align 8, !dbg !472
  %refs92 = getelementptr inbounds %struct.refcount_struct, ptr %20, i32 0, i32 0, !dbg !473
  %21 = load i32, ptr %new, align 4, !dbg !474
  %call93 = call zeroext i1 @atomic_try_cmpxchg_release(ptr noundef %refs92, ptr noundef %val, i32 noundef %21) #8, !dbg !475
  %lnot94 = xor i1 %call93, true, !dbg !476
  br i1 %lnot94, label %do.body, label %do.end96, !dbg !471, !llvm.loop !477

do.end96:                                         ; preds = %do.cond91
  store i1 true, ptr %retval, align 1, !dbg !481
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !481

cleanup:                                          ; preds = %do.end96, %if.end81, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #9, !dbg !482
  call void @llvm.lifetime.end.p0(i64 4, ptr %new) #9, !dbg !482
  %22 = load i1, ptr %retval, align 1, !dbg !482
  ret i1 %22, !dbg !482
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_read(ptr noundef %v) #6 align 16 !dbg !483 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !489, metadata !DIExpression()), !dbg !490
  %0 = load ptr, ptr %v.addr, align 8, !dbg !491
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 4) #8, !dbg !492
  %1 = load ptr, ptr %v.addr, align 8, !dbg !493
  %call = call i32 @raw_atomic_read(ptr noundef %1) #8, !dbg !494
  ret i32 %call, !dbg !495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @refcount_dec_and_mutex_lock(ptr noundef %r, ptr noundef %lock) #0 align 16 !dbg !496 {
entry:
  %retval = alloca i1, align 1
  %r.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !555, metadata !DIExpression()), !dbg !557
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !556, metadata !DIExpression()), !dbg !558
  %0 = load ptr, ptr %r.addr, align 8, !dbg !559
  %call = call zeroext i1 @refcount_dec_not_one(ptr noundef %0) #8, !dbg !561
  br i1 %call, label %if.then, label %if.end, !dbg !562

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !563
  br label %return, !dbg !563

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !564
  call void @mutex_lock(ptr noundef %1) #8, !dbg !565
  %2 = load ptr, ptr %r.addr, align 8, !dbg !566
  %call1 = call zeroext i1 @refcount_dec_and_test(ptr noundef %2) #8, !dbg !568
  br i1 %call1, label %if.end3, label %if.then2, !dbg !569

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !570
  call void @mutex_unlock(ptr noundef %3) #8, !dbg !572
  store i1 false, ptr %retval, align 1, !dbg !573
  br label %return, !dbg !573

if.end3:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !574
  br label %return, !dbg !574

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !575
  ret i1 %4, !dbg !575
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !576 dso_local void @mutex_lock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @refcount_dec_and_test(ptr noundef %r) #2 align 16 !dbg !579 {
entry:
  %r.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !581, metadata !DIExpression()), !dbg !582
  %0 = load ptr, ptr %r.addr, align 8, !dbg !583
  %call = call zeroext i1 @__refcount_dec_and_test(ptr noundef %0, ptr noundef null) #8, !dbg !584
  ret i1 %call, !dbg !585
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !586 dso_local void @mutex_unlock(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @refcount_dec_and_lock(ptr noundef %r, ptr noundef %lock) #0 align 16 !dbg !587 {
entry:
  %retval = alloca i1, align 1
  %r.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !600, metadata !DIExpression()), !dbg !602
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !601, metadata !DIExpression()), !dbg !603
  %0 = load ptr, ptr %r.addr, align 8, !dbg !604
  %call = call zeroext i1 @refcount_dec_not_one(ptr noundef %0) #8, !dbg !606
  br i1 %call, label %if.then, label %if.end, !dbg !607

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !608
  br label %return, !dbg !608

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !609
  call void @spin_lock(ptr noundef %1) #8, !dbg !610
  %2 = load ptr, ptr %r.addr, align 8, !dbg !611
  %call1 = call zeroext i1 @refcount_dec_and_test(ptr noundef %2) #8, !dbg !613
  br i1 %call1, label %if.end3, label %if.then2, !dbg !614

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %lock.addr, align 8, !dbg !615
  call void @spin_unlock(ptr noundef %3) #8, !dbg !617
  store i1 false, ptr %retval, align 1, !dbg !618
  br label %return, !dbg !618

if.end3:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !619
  br label %return, !dbg !619

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %4 = load i1, ptr %retval, align 1, !dbg !620
  ret i1 %4, !dbg !620
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !621 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !626, metadata !DIExpression()), !dbg !627
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !628
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !628
  call void @_raw_spin_lock(ptr noundef %1) #8, !dbg !628
  ret void, !dbg !629
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !630 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !632, metadata !DIExpression()), !dbg !633
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !634
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !634
  call void @_raw_spin_unlock(ptr noundef %1) #8, !dbg !634
  ret void, !dbg !635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @refcount_dec_and_lock_irqsave(ptr noundef %r, ptr noundef %lock, ptr noundef %flags) #0 align 16 !dbg !636 {
entry:
  %retval = alloca i1, align 1
  %r.addr = alloca ptr, align 8
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca ptr, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !642, metadata !DIExpression()), !dbg !650
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !643, metadata !DIExpression()), !dbg !651
  store ptr %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !644, metadata !DIExpression()), !dbg !652
  %0 = load ptr, ptr %r.addr, align 8, !dbg !653
  %call = call zeroext i1 @refcount_dec_not_one(ptr noundef %0) #8, !dbg !655
  br i1 %call, label %if.then, label %if.end, !dbg !656

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !657
  br label %return, !dbg !657

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !658

do.body:                                          ; preds = %if.end
  br label %do.body1, !dbg !659

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !645, metadata !DIExpression()), !dbg !660
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !660
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !649, metadata !DIExpression()), !dbg !660
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !660
  %conv = zext i1 %cmp to i32, !dbg !660
  store i32 1, ptr %tmp, align 4, !dbg !660
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !661
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !661
  %1 = load i32, ptr %tmp, align 4, !dbg !660
  %2 = load ptr, ptr %lock.addr, align 8, !dbg !661
  %call2 = call ptr @spinlock_check(ptr noundef %2) #8, !dbg !661
  %call3 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call2) #8, !dbg !661
  %3 = load ptr, ptr %flags.addr, align 8, !dbg !661
  store i64 %call3, ptr %3, align 8, !dbg !661
  br label %do.end, !dbg !661

do.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !659

do.end4:                                          ; preds = %do.end
  %4 = load ptr, ptr %r.addr, align 8, !dbg !662
  %call5 = call zeroext i1 @refcount_dec_and_test(ptr noundef %4) #8, !dbg !664
  br i1 %call5, label %if.end7, label %if.then6, !dbg !665

if.then6:                                         ; preds = %do.end4
  %5 = load ptr, ptr %lock.addr, align 8, !dbg !666
  %6 = load ptr, ptr %flags.addr, align 8, !dbg !668
  %7 = load i64, ptr %6, align 8, !dbg !669
  call void @spin_unlock_irqrestore(ptr noundef %5, i64 noundef %7) #8, !dbg !670
  store i1 false, ptr %retval, align 1, !dbg !671
  br label %return, !dbg !671

if.end7:                                          ; preds = %do.end4
  store i1 true, ptr %retval, align 1, !dbg !672
  br label %return, !dbg !672

return:                                           ; preds = %if.end7, %if.then6, %if.then
  %8 = load i1, ptr %retval, align 1, !dbg !673
  ret i1 %8, !dbg !673
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !674 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !679 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !683, metadata !DIExpression()), !dbg !684
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !685
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !686
  ret ptr %1, !dbg !687
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !688 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !692, metadata !DIExpression()), !dbg !698
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !693, metadata !DIExpression()), !dbg !699
  br label %do.body, !dbg !700

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #9, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !694, metadata !DIExpression()), !dbg !701
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #9, !dbg !701
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !697, metadata !DIExpression()), !dbg !701
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !701
  %conv = zext i1 %cmp to i32, !dbg !701
  store i32 1, ptr %tmp, align 4, !dbg !701
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #9, !dbg !702
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #9, !dbg !702
  %0 = load i32, ptr %tmp, align 4, !dbg !701
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !702
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !702
  %3 = load i64, ptr %flags.addr, align 8, !dbg !702
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #8, !dbg !702
  br label %do.end, !dbg !702

do.end:                                           ; preds = %do.body
  ret void, !dbg !703
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !704 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !708, metadata !DIExpression()), !dbg !710
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !709, metadata !DIExpression()), !dbg !711
  %0 = load ptr, ptr %v.addr, align 8, !dbg !712
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 4) #8, !dbg !713
  %1 = load ptr, ptr %v.addr, align 8, !dbg !714
  %2 = load i32, ptr %i.addr, align 4, !dbg !715
  call void @raw_atomic_set(ptr noundef %1, i32 noundef %2) #8, !dbg !716
  ret void, !dbg !717
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !718 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !730, metadata !DIExpression()), !dbg !732
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !731, metadata !DIExpression()), !dbg !733
  %0 = load ptr, ptr %v.addr, align 8, !dbg !734
  %1 = load i64, ptr %size.addr, align 8, !dbg !735
  %conv = trunc i64 %1 to i32, !dbg !735
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !736
  %2 = load ptr, ptr %v.addr, align 8, !dbg !737
  %3 = load i64, ptr %size.addr, align 8, !dbg !737
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #8, !dbg !737
  ret void, !dbg !738
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !739 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !742, metadata !DIExpression()), !dbg !744
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !743, metadata !DIExpression()), !dbg !745
  %0 = load ptr, ptr %v.addr, align 8, !dbg !746
  %1 = load i32, ptr %i.addr, align 4, !dbg !747
  call void @arch_atomic_set(ptr noundef %0, i32 noundef %1) #8, !dbg !748
  ret void, !dbg !749
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !750 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !755, metadata !DIExpression()), !dbg !757
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !756, metadata !DIExpression()), !dbg !758
  ret i1 true, !dbg !759
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #2 align 16 !dbg !760 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !765, metadata !DIExpression()), !dbg !768
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !766, metadata !DIExpression()), !dbg !769
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !767, metadata !DIExpression()), !dbg !770
  ret void, !dbg !771
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic_set(ptr noundef %v, i32 noundef %i) #6 align 16 !dbg !772 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !775, metadata !DIExpression()), !dbg !777
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !776, metadata !DIExpression()), !dbg !778
  br label %do.body, !dbg !779

do.body:                                          ; preds = %entry
  %0 = load i32, ptr %i.addr, align 4, !dbg !780
  %1 = load ptr, ptr %v.addr, align 8, !dbg !780
  %counter = getelementptr inbounds %struct.atomic_t, ptr %1, i32 0, i32 0, !dbg !780
  store volatile i32 %0, ptr %counter, align 4, !dbg !780
  br label %do.end, !dbg !780

do.end:                                           ; preds = %do.body
  ret void, !dbg !782
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !783 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !785, metadata !DIExpression()), !dbg !787
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !786, metadata !DIExpression()), !dbg !788
  %0 = load ptr, ptr %v.addr, align 8, !dbg !789
  %1 = load i64, ptr %size.addr, align 8, !dbg !790
  %conv = trunc i64 %1 to i32, !dbg !790
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #8, !dbg !791
  %2 = load ptr, ptr %v.addr, align 8, !dbg !792
  %3 = load i64, ptr %size.addr, align 8, !dbg !792
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #8, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_try_cmpxchg_release(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !794 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i32, align 4
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !796, metadata !DIExpression()), !dbg !799
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !797, metadata !DIExpression()), !dbg !800
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !798, metadata !DIExpression()), !dbg !801
  %0 = load ptr, ptr %v.addr, align 8, !dbg !802
  %1 = load ptr, ptr %old.addr, align 8, !dbg !803
  %2 = load i32, ptr %new.addr, align 4, !dbg !804
  %call = call zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %0, ptr noundef %1, i32 noundef %2) #8, !dbg !805
  ret i1 %call, !dbg !806
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic_try_cmpxchg(ptr noundef %v, ptr noundef %old, i32 noundef %new) #6 align 16 !dbg !807 {
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
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !809, metadata !DIExpression()), !dbg !818
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !810, metadata !DIExpression()), !dbg !819
  store i32 %new, ptr %new.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !811, metadata !DIExpression()), !dbg !820
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #9, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %success, metadata !812, metadata !DIExpression()), !dbg !821
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #9, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !814, metadata !DIExpression()), !dbg !821
  %0 = load ptr, ptr %old.addr, align 8, !dbg !821
  store ptr %0, ptr %_old, align 8, !dbg !821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__old) #9, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !815, metadata !DIExpression()), !dbg !821
  %1 = load ptr, ptr %_old, align 8, !dbg !821
  %2 = load i32, ptr %1, align 4, !dbg !821
  store i32 %2, ptr %__old, align 4, !dbg !821
  call void @llvm.lifetime.start.p0(i64 4, ptr %__new) #9, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !816, metadata !DIExpression()), !dbg !821
  %3 = load i32, ptr %new.addr, align 4, !dbg !821
  store i32 %3, ptr %__new, align 4, !dbg !821
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #9, !dbg !821
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !817, metadata !DIExpression()), !dbg !821
  %4 = load ptr, ptr %v.addr, align 8, !dbg !821
  %counter = getelementptr inbounds %struct.atomic_t, ptr %4, i32 0, i32 0, !dbg !821
  store ptr %counter, ptr %__ptr, align 8, !dbg !821
  %5 = load ptr, ptr %__ptr, align 8, !dbg !821
  %6 = load i32, ptr %__old, align 4, !dbg !821
  %7 = load i32, ptr %__new, align 4, !dbg !821
  %8 = call { i8, i32 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgl $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %5, i32 %7, ptr elementtype(i32) %5, i32 %6) #9, !dbg !821, !srcloc !822
  %asmresult = extractvalue { i8, i32 } %8, 0, !dbg !821
  %asmresult1 = extractvalue { i8, i32 } %8, 1, !dbg !821
  %9 = icmp ult i8 %asmresult, 2, !dbg !821
  call void @llvm.assume(i1 %9), !dbg !821
  store i8 %asmresult, ptr %success, align 1, !dbg !821
  store i32 %asmresult1, ptr %__old, align 4, !dbg !821
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #9, !dbg !821
  %10 = load i8, ptr %success, align 1, !dbg !823, !range !216, !noundef !217
  %tobool = trunc i8 %10 to i1, !dbg !823
  %lnot = xor i1 %tobool, true, !dbg !823
  %lnot2 = xor i1 %lnot, true, !dbg !823
  %lnot3 = xor i1 %lnot2, true, !dbg !823
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !823
  %conv = sext i32 %lnot.ext to i64, !dbg !823
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !823
  %tobool4 = icmp ne i64 %expval, 0, !dbg !823
  br i1 %tobool4, label %if.then, label %if.end, !dbg !821

if.then:                                          ; preds = %entry
  %11 = load i32, ptr %__old, align 4, !dbg !823
  %12 = load ptr, ptr %_old, align 8, !dbg !823
  store i32 %11, ptr %12, align 4, !dbg !823
  br label %if.end, !dbg !823

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !821, !range !216, !noundef !217
  %tobool5 = trunc i8 %13 to i1, !dbg !821
  %lnot6 = xor i1 %tobool5, true, !dbg !821
  %lnot8 = xor i1 %lnot6, true, !dbg !821
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !821
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !821
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !821
  store i64 %expval11, ptr %tmp, align 8, !dbg !823
  call void @llvm.lifetime.end.p0(i64 4, ptr %__new) #9, !dbg !825
  call void @llvm.lifetime.end.p0(i64 4, ptr %__old) #9, !dbg !825
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #9, !dbg !825
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #9, !dbg !825
  %14 = load i64, ptr %tmp, align 8, !dbg !821
  %tobool12 = icmp ne i64 %14, 0, !dbg !825
  ret i1 %tobool12, !dbg !826
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !827 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !829, metadata !DIExpression()), !dbg !831
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !830, metadata !DIExpression()), !dbg !832
  %0 = load ptr, ptr %v.addr, align 8, !dbg !833
  %1 = load i64, ptr %size.addr, align 8, !dbg !834
  %conv = trunc i64 %1 to i32, !dbg !834
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #8, !dbg !835
  %2 = load ptr, ptr %v.addr, align 8, !dbg !836
  %3 = load i64, ptr %size.addr, align 8, !dbg !836
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #8, !dbg !836
  ret void, !dbg !837
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_read(ptr noundef %v) #6 align 16 !dbg !838 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !840, metadata !DIExpression()), !dbg !841
  %0 = load ptr, ptr %v.addr, align 8, !dbg !842
  %call = call i32 @arch_atomic_read(ptr noundef %0) #8, !dbg !843
  ret i32 %call, !dbg !844
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #2 align 16 !dbg !845 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !847, metadata !DIExpression()), !dbg !849
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !848, metadata !DIExpression()), !dbg !850
  ret i1 true, !dbg !851
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_read(ptr noundef %v) #6 align 16 !dbg !852 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !854, metadata !DIExpression()), !dbg !855
  %0 = load ptr, ptr %v.addr, align 8, !dbg !856
  %counter = getelementptr inbounds %struct.atomic_t, ptr %0, i32 0, i32 0, !dbg !856
  %1 = load volatile i32, ptr %counter, align 4, !dbg !856
  ret i32 %1, !dbg !857
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_dec_and_test(ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !858 {
entry:
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !862, metadata !DIExpression()), !dbg !864
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !863, metadata !DIExpression()), !dbg !865
  %0 = load ptr, ptr %r.addr, align 8, !dbg !866
  %1 = load ptr, ptr %oldp.addr, align 8, !dbg !867
  %call = call zeroext i1 @__refcount_sub_and_test(i32 noundef 1, ptr noundef %0, ptr noundef %1) #8, !dbg !868
  ret i1 %call, !dbg !869
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__refcount_sub_and_test(i32 noundef %i, ptr noundef %r, ptr noundef %oldp) #2 align 16 !dbg !870 {
entry:
  %retval = alloca i1, align 1
  %i.addr = alloca i32, align 4
  %r.addr = alloca ptr, align 8
  %oldp.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !874, metadata !DIExpression()), !dbg !878
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !875, metadata !DIExpression()), !dbg !879
  store ptr %oldp, ptr %oldp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %oldp.addr, metadata !876, metadata !DIExpression()), !dbg !880
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #9, !dbg !881
  call void @llvm.dbg.declare(metadata ptr %old, metadata !877, metadata !DIExpression()), !dbg !882
  %0 = load i32, ptr %i.addr, align 4, !dbg !883
  %1 = load ptr, ptr %r.addr, align 8, !dbg !884
  %refs = getelementptr inbounds %struct.refcount_struct, ptr %1, i32 0, i32 0, !dbg !885
  %call = call i32 @atomic_fetch_sub_release(i32 noundef %0, ptr noundef %refs) #8, !dbg !886
  store i32 %call, ptr %old, align 4, !dbg !882
  %2 = load ptr, ptr %oldp.addr, align 8, !dbg !887
  %tobool = icmp ne ptr %2, null, !dbg !887
  br i1 %tobool, label %if.then, label %if.end, !dbg !889

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %old, align 4, !dbg !890
  %4 = load ptr, ptr %oldp.addr, align 8, !dbg !891
  store i32 %3, ptr %4, align 4, !dbg !892
  br label %if.end, !dbg !893

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %old, align 4, !dbg !894
  %6 = load i32, ptr %i.addr, align 4, !dbg !896
  %cmp = icmp eq i32 %5, %6, !dbg !897
  br i1 %cmp, label %if.then1, label %if.end11, !dbg !898

if.then1:                                         ; preds = %if.end
  br label %do.body, !dbg !899

do.body:                                          ; preds = %if.then1
  br label %do.body2, !dbg !901

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !903

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !903

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !901

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !905

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !907

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !907

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #9, !dbg !905, !srcloc !909
  br label %do.cond7, !dbg !905

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !905

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !901

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !901

do.end10:                                         ; preds = %do.cond9
  store i1 true, ptr %retval, align 1, !dbg !910
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !910

if.end11:                                         ; preds = %if.end
  %7 = load i32, ptr %old, align 4, !dbg !911
  %cmp12 = icmp slt i32 %7, 0, !dbg !911
  br i1 %cmp12, label %lor.end, label %lor.rhs, !dbg !911

lor.rhs:                                          ; preds = %if.end11
  %8 = load i32, ptr %old, align 4, !dbg !911
  %9 = load i32, ptr %i.addr, align 4, !dbg !911
  %sub = sub i32 %8, %9, !dbg !911
  %cmp13 = icmp slt i32 %sub, 0, !dbg !911
  br label %lor.end, !dbg !911

lor.end:                                          ; preds = %lor.rhs, %if.end11
  %10 = phi i1 [ true, %if.end11 ], [ %cmp13, %lor.rhs ]
  %lnot = xor i1 %10, true, !dbg !911
  %lnot14 = xor i1 %lnot, true, !dbg !911
  %lnot.ext = zext i1 %lnot14 to i32, !dbg !911
  %conv = sext i32 %lnot.ext to i64, !dbg !911
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !911
  %tobool15 = icmp ne i64 %expval, 0, !dbg !911
  br i1 %tobool15, label %if.then16, label %if.end17, !dbg !913

if.then16:                                        ; preds = %lor.end
  %11 = load ptr, ptr %r.addr, align 8, !dbg !914
  call void @refcount_warn_saturate(ptr noundef %11, i32 noundef 3) #8, !dbg !915
  br label %if.end17, !dbg !915

if.end17:                                         ; preds = %if.then16, %lor.end
  store i1 false, ptr %retval, align 1, !dbg !916
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !916

cleanup:                                          ; preds = %if.end17, %do.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #9, !dbg !917
  %12 = load i1, ptr %retval, align 1, !dbg !917
  ret i1 %12, !dbg !917
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !918 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !922, metadata !DIExpression()), !dbg !924
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !923, metadata !DIExpression()), !dbg !925
  br label %do.body, !dbg !926

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !927

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !929
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 4) #8, !dbg !930
  %1 = load i32, ptr %i.addr, align 4, !dbg !931
  %2 = load ptr, ptr %v.addr, align 8, !dbg !932
  %call = call i32 @raw_atomic_fetch_sub_release(i32 noundef %1, ptr noundef %2) #8, !dbg !933
  ret i32 %call, !dbg !934
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @raw_atomic_fetch_sub_release(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !935 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !937, metadata !DIExpression()), !dbg !939
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !938, metadata !DIExpression()), !dbg !940
  %0 = load i32, ptr %i.addr, align 4, !dbg !941
  %1 = load ptr, ptr %v.addr, align 8, !dbg !942
  %call = call i32 @arch_atomic_fetch_sub(i32 noundef %0, ptr noundef %1) #8, !dbg !943
  ret i32 %call, !dbg !944
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_atomic_fetch_sub(i32 noundef %i, ptr noundef %v) #6 align 16 !dbg !945 {
entry:
  %i.addr = alloca i32, align 4
  %v.addr = alloca ptr, align 8
  %__ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !947, metadata !DIExpression()), !dbg !951
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !948, metadata !DIExpression()), !dbg !952
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret) #9, !dbg !953
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !949, metadata !DIExpression()), !dbg !953
  %0 = load i32, ptr %i.addr, align 4, !dbg !953
  %sub = sub i32 0, %0, !dbg !953
  store i32 %sub, ptr %__ret, align 4, !dbg !953
  %1 = load i32, ptr %__ret, align 4, !dbg !953
  %2 = load ptr, ptr %v.addr, align 8, !dbg !953
  %counter = getelementptr inbounds %struct.atomic_t, ptr %2, i32 0, i32 0, !dbg !953
  %3 = call i32 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %counter, i32 %1, ptr elementtype(i32) %counter) #9, !dbg !953, !srcloc !954
  store i32 %3, ptr %__ret, align 4, !dbg !953
  %4 = load i32, ptr %__ret, align 4, !dbg !953
  store i32 %4, ptr %tmp, align 4, !dbg !953
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret) #9, !dbg !955
  %5 = load i32, ptr %tmp, align 4, !dbg !953
  ret i32 %5, !dbg !956
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !957 dso_local void @_raw_spin_lock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !960 dso_local void @_raw_spin_unlock(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !961 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { noredzone }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 19, type: !60, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "refcount_warn_saturate", scope: !3, file: !3, line: 13, type: !4, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !123)
!3 = !DIFile(filename: "lib/refcount.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "469eb11ada41414a05b26a8065db49ce")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !18}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !8, line: 113, baseType: !9)
!8 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !8, line: 111, size: 32, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !9, file: !8, line: 112, baseType: !12, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !13, line: 174, baseType: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 172, size: 32, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !14, file: !13, line: 173, baseType: !17, size: 32)
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "refcount_saturation_type", file: !8, line: 119, baseType: !19, size: 32, elements: !20)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DIEnumerator(name: "REFCOUNT_ADD_NOT_ZERO_OVF", value: 0)
!22 = !DIEnumerator(name: "REFCOUNT_ADD_OVF", value: 1)
!23 = !DIEnumerator(name: "REFCOUNT_ADD_UAF", value: 2)
!24 = !DIEnumerator(name: "REFCOUNT_SUB_UAF", value: 3)
!25 = !DIEnumerator(name: "REFCOUNT_DEC_LEAK", value: 4)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF lib/.refcount.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22lib/refcount\22 -D KBUILD_BASENAME=\22refcount\22 -D KBUILD_MODNAME=\22refcount\22 -D __KBUILD_MODNAME=kmod_refcount -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o lib/refcount.ll lib/refcount.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !27, retainedTypes: !33, globals: !46, splitDebugInlining: false, nameTableKind: None)
!27 = !{!18, !28}
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !29, line: 10, baseType: !19, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!30 = !{!31, !32}
!31 = !DIEnumerator(name: "false", value: 0)
!32 = !DIEnumerator(name: "true", value: 1)
!33 = !{!17, !34, !35, !37, !38, !44}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !17)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !41, line: 21, baseType: !42)
!41 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !43, line: 27, baseType: !19)
!43 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!46 = !{!0, !47, !53, !58, !62, !64, !69, !71, !73, !75, !80, !82, !87, !89, !91, !115, !117, !119, !121}
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 320, elements: !51)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!51 = !{!52}
!52 = !DISubrange(count: 40)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(scope: null, file: !3, line: 19, type: !55, isLocal: true, isDefinition: true)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 120, elements: !56)
!56 = !{!57}
!57 = !DISubrange(count: 15)
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 22, type: !60, isLocal: true, isDefinition: true)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !61)
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 25, type: !60, isLocal: true, isDefinition: true)
!64 = !DIGlobalVariableExpression(var: !65, expr: !DIExpression())
!65 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !66, isLocal: true, isDefinition: true)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 352, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 44)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 28, type: !60, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !3, line: 28, type: !49, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 31, type: !60, isLocal: true, isDefinition: true)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 368, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 46)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "__already_done", scope: !2, file: !3, line: 34, type: !60, isLocal: true, isDefinition: true)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 328, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 41)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_warn_saturate61", scope: !26, file: !3, line: 37, type: !34, isLocal: true, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_dec_if_one62", scope: !26, file: !3, line: 61, type: !34, isLocal: true, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "__already_done", scope: !93, file: !3, line: 87, type: !60, isLocal: true, isDefinition: true)
!93 = distinct !DISubprogram(name: "refcount_dec_not_one", scope: !3, file: !3, line: 74, type: !94, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!60, !6}
!96 = !{!97, !98, !99, !100, !105, !108, !109, !111}
!97 = !DILocalVariable(name: "r", arg: 1, scope: !93, file: !3, line: 74, type: !6)
!98 = !DILocalVariable(name: "new", scope: !93, file: !3, line: 76, type: !19)
!99 = !DILocalVariable(name: "val", scope: !93, file: !3, line: 76, type: !19)
!100 = !DILocalVariable(name: "__ret_do_once", scope: !101, file: !3, line: 87, type: !60)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 87, column: 4)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 86, column: 18)
!103 = distinct !DILexicalBlock(scope: !104, file: !3, line: 86, column: 7)
!104 = distinct !DILexicalBlock(scope: !93, file: !3, line: 78, column: 5)
!105 = !DILocalVariable(name: "__ret_cond", scope: !106, file: !3, line: 87, type: !60)
!106 = distinct !DILexicalBlock(scope: !107, file: !3, line: 87, column: 4)
!107 = distinct !DILexicalBlock(scope: !101, file: !3, line: 87, column: 4)
!108 = !DILocalVariable(name: "__ret_once", scope: !106, file: !3, line: 87, type: !60)
!109 = !DILocalVariable(name: "__ret_warn_on", scope: !110, file: !3, line: 87, type: !17)
!110 = distinct !DILexicalBlock(scope: !107, file: !3, line: 87, column: 4)
!111 = !DILocalVariable(name: "__flags", scope: !112, file: !3, line: 87, type: !17)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 87, column: 4)
!113 = distinct !DILexicalBlock(scope: !114, file: !3, line: 87, column: 4)
!114 = distinct !DILexicalBlock(scope: !110, file: !3, line: 87, column: 4)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_dec_not_one63", scope: !26, file: !3, line: 95, type: !34, isLocal: true, isDefinition: true)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_dec_and_mutex_lock64", scope: !26, file: !3, line: 126, type: !34, isLocal: true, isDefinition: true)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_dec_and_lock65", scope: !26, file: !3, line: 157, type: !34, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_refcount_dec_and_lock_irqsave66", scope: !26, file: !3, line: 186, type: !34, isLocal: true, isDefinition: true)
!123 = !{!124, !125, !126, !129, !132, !133, !135, !139, !141, !144, !145, !147, !151, !153, !156, !157, !159, !163, !165, !168, !169, !171, !175, !177, !180, !181, !183, !187, !189, !192, !193, !195}
!124 = !DILocalVariable(name: "r", arg: 1, scope: !2, file: !3, line: 13, type: !6)
!125 = !DILocalVariable(name: "t", arg: 2, scope: !2, file: !3, line: 13, type: !18)
!126 = !DILocalVariable(name: "__ret_do_once", scope: !127, file: !3, line: 19, type: !60)
!127 = distinct !DILexicalBlock(scope: !128, file: !3, line: 19, column: 3)
!128 = distinct !DILexicalBlock(scope: !2, file: !3, line: 17, column: 13)
!129 = !DILocalVariable(name: "__ret_cond", scope: !130, file: !3, line: 19, type: !60)
!130 = distinct !DILexicalBlock(scope: !131, file: !3, line: 19, column: 3)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 19, column: 3)
!132 = !DILocalVariable(name: "__ret_once", scope: !130, file: !3, line: 19, type: !60)
!133 = !DILocalVariable(name: "__ret_warn_on", scope: !134, file: !3, line: 19, type: !17)
!134 = distinct !DILexicalBlock(scope: !131, file: !3, line: 19, column: 3)
!135 = !DILocalVariable(name: "__flags", scope: !136, file: !3, line: 19, type: !17)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 19, column: 3)
!137 = distinct !DILexicalBlock(scope: !138, file: !3, line: 19, column: 3)
!138 = distinct !DILexicalBlock(scope: !134, file: !3, line: 19, column: 3)
!139 = !DILocalVariable(name: "__ret_do_once", scope: !140, file: !3, line: 22, type: !60)
!140 = distinct !DILexicalBlock(scope: !128, file: !3, line: 22, column: 3)
!141 = !DILocalVariable(name: "__ret_cond", scope: !142, file: !3, line: 22, type: !60)
!142 = distinct !DILexicalBlock(scope: !143, file: !3, line: 22, column: 3)
!143 = distinct !DILexicalBlock(scope: !140, file: !3, line: 22, column: 3)
!144 = !DILocalVariable(name: "__ret_once", scope: !142, file: !3, line: 22, type: !60)
!145 = !DILocalVariable(name: "__ret_warn_on", scope: !146, file: !3, line: 22, type: !17)
!146 = distinct !DILexicalBlock(scope: !143, file: !3, line: 22, column: 3)
!147 = !DILocalVariable(name: "__flags", scope: !148, file: !3, line: 22, type: !17)
!148 = distinct !DILexicalBlock(scope: !149, file: !3, line: 22, column: 3)
!149 = distinct !DILexicalBlock(scope: !150, file: !3, line: 22, column: 3)
!150 = distinct !DILexicalBlock(scope: !146, file: !3, line: 22, column: 3)
!151 = !DILocalVariable(name: "__ret_do_once", scope: !152, file: !3, line: 25, type: !60)
!152 = distinct !DILexicalBlock(scope: !128, file: !3, line: 25, column: 3)
!153 = !DILocalVariable(name: "__ret_cond", scope: !154, file: !3, line: 25, type: !60)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 25, column: 3)
!155 = distinct !DILexicalBlock(scope: !152, file: !3, line: 25, column: 3)
!156 = !DILocalVariable(name: "__ret_once", scope: !154, file: !3, line: 25, type: !60)
!157 = !DILocalVariable(name: "__ret_warn_on", scope: !158, file: !3, line: 25, type: !17)
!158 = distinct !DILexicalBlock(scope: !155, file: !3, line: 25, column: 3)
!159 = !DILocalVariable(name: "__flags", scope: !160, file: !3, line: 25, type: !17)
!160 = distinct !DILexicalBlock(scope: !161, file: !3, line: 25, column: 3)
!161 = distinct !DILexicalBlock(scope: !162, file: !3, line: 25, column: 3)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 25, column: 3)
!163 = !DILocalVariable(name: "__ret_do_once", scope: !164, file: !3, line: 28, type: !60)
!164 = distinct !DILexicalBlock(scope: !128, file: !3, line: 28, column: 3)
!165 = !DILocalVariable(name: "__ret_cond", scope: !166, file: !3, line: 28, type: !60)
!166 = distinct !DILexicalBlock(scope: !167, file: !3, line: 28, column: 3)
!167 = distinct !DILexicalBlock(scope: !164, file: !3, line: 28, column: 3)
!168 = !DILocalVariable(name: "__ret_once", scope: !166, file: !3, line: 28, type: !60)
!169 = !DILocalVariable(name: "__ret_warn_on", scope: !170, file: !3, line: 28, type: !17)
!170 = distinct !DILexicalBlock(scope: !167, file: !3, line: 28, column: 3)
!171 = !DILocalVariable(name: "__flags", scope: !172, file: !3, line: 28, type: !17)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 28, column: 3)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 28, column: 3)
!174 = distinct !DILexicalBlock(scope: !170, file: !3, line: 28, column: 3)
!175 = !DILocalVariable(name: "__ret_do_once", scope: !176, file: !3, line: 31, type: !60)
!176 = distinct !DILexicalBlock(scope: !128, file: !3, line: 31, column: 3)
!177 = !DILocalVariable(name: "__ret_cond", scope: !178, file: !3, line: 31, type: !60)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 31, column: 3)
!179 = distinct !DILexicalBlock(scope: !176, file: !3, line: 31, column: 3)
!180 = !DILocalVariable(name: "__ret_once", scope: !178, file: !3, line: 31, type: !60)
!181 = !DILocalVariable(name: "__ret_warn_on", scope: !182, file: !3, line: 31, type: !17)
!182 = distinct !DILexicalBlock(scope: !179, file: !3, line: 31, column: 3)
!183 = !DILocalVariable(name: "__flags", scope: !184, file: !3, line: 31, type: !17)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 31, column: 3)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 31, column: 3)
!186 = distinct !DILexicalBlock(scope: !182, file: !3, line: 31, column: 3)
!187 = !DILocalVariable(name: "__ret_do_once", scope: !188, file: !3, line: 34, type: !60)
!188 = distinct !DILexicalBlock(scope: !128, file: !3, line: 34, column: 3)
!189 = !DILocalVariable(name: "__ret_cond", scope: !190, file: !3, line: 34, type: !60)
!190 = distinct !DILexicalBlock(scope: !191, file: !3, line: 34, column: 3)
!191 = distinct !DILexicalBlock(scope: !188, file: !3, line: 34, column: 3)
!192 = !DILocalVariable(name: "__ret_once", scope: !190, file: !3, line: 34, type: !60)
!193 = !DILocalVariable(name: "__ret_warn_on", scope: !194, file: !3, line: 34, type: !17)
!194 = distinct !DILexicalBlock(scope: !191, file: !3, line: 34, column: 3)
!195 = !DILocalVariable(name: "__flags", scope: !196, file: !3, line: 34, type: !17)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 34, column: 3)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 34, column: 3)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 34, column: 3)
!199 = !{i32 7, !"Dwarf Version", i32 5}
!200 = !{i32 2, !"Debug Info Version", i32 3}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 8, !"cf-protection-branch", i32 1}
!203 = !{i32 4, !"function_return_thunk_extern", i32 1}
!204 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!205 = !{i32 1, !"Code Model", i32 2}
!206 = !{i32 1, !"override-stack-alignment", i32 8}
!207 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!208 = !DILocation(line: 13, column: 41, scope: !2)
!209 = !DILocation(line: 13, column: 74, scope: !2)
!210 = !DILocation(line: 15, column: 15, scope: !2)
!211 = !DILocation(line: 15, column: 2, scope: !2)
!212 = !DILocation(line: 17, column: 10, scope: !2)
!213 = !DILocation(line: 17, column: 2, scope: !2)
!214 = !DILocation(line: 19, column: 3, scope: !127)
!215 = !DILocation(line: 19, column: 3, scope: !130)
!216 = !{i8 0, i8 2}
!217 = !{}
!218 = !DILocation(line: 19, column: 3, scope: !219)
!219 = distinct !DILexicalBlock(scope: !130, file: !3, line: 19, column: 3)
!220 = !DILocation(line: 0, scope: !219)
!221 = !DILocation(line: 19, column: 3, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !3, line: 19, column: 3)
!223 = !DILocation(line: 19, column: 3, scope: !131)
!224 = !DILocation(line: 19, column: 3, scope: !134)
!225 = !DILocation(line: 19, column: 3, scope: !138)
!226 = !DILocation(line: 19, column: 3, scope: !137)
!227 = !DILocation(line: 19, column: 3, scope: !228)
!228 = distinct !DILexicalBlock(scope: !137, file: !3, line: 19, column: 3)
!229 = !DILocation(line: 19, column: 3, scope: !136)
!230 = !DILocation(line: 19, column: 3, scope: !231)
!231 = distinct !DILexicalBlock(scope: !136, file: !3, line: 19, column: 3)
!232 = !DILocation(line: 19, column: 3, scope: !233)
!233 = distinct !DILexicalBlock(scope: !136, file: !3, line: 19, column: 3)
!234 = !{i64 2149777382, i64 2149777411, i64 2149777457, i64 2149777515, i64 2149777569, i64 2149777623, i64 2149777678, i64 2149777709, i64 2149778017, i64 2149778023, i64 2149778070, i64 2149778093, i64 2149778119}
!235 = !DILocation(line: 19, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !136, file: !3, line: 19, column: 3)
!237 = !DILocation(line: 19, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !137, file: !3, line: 19, column: 3)
!239 = !DILocation(line: 19, column: 3, scope: !128)
!240 = !DILocation(line: 20, column: 3, scope: !128)
!241 = !DILocation(line: 22, column: 3, scope: !140)
!242 = !DILocation(line: 22, column: 3, scope: !142)
!243 = !DILocation(line: 22, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !142, file: !3, line: 22, column: 3)
!245 = !DILocation(line: 0, scope: !244)
!246 = !DILocation(line: 22, column: 3, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !3, line: 22, column: 3)
!248 = !DILocation(line: 22, column: 3, scope: !143)
!249 = !DILocation(line: 22, column: 3, scope: !146)
!250 = !DILocation(line: 22, column: 3, scope: !150)
!251 = !DILocation(line: 22, column: 3, scope: !149)
!252 = !DILocation(line: 22, column: 3, scope: !253)
!253 = distinct !DILexicalBlock(scope: !149, file: !3, line: 22, column: 3)
!254 = !DILocation(line: 22, column: 3, scope: !148)
!255 = !DILocation(line: 22, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !148, file: !3, line: 22, column: 3)
!257 = !DILocation(line: 22, column: 3, scope: !258)
!258 = distinct !DILexicalBlock(scope: !148, file: !3, line: 22, column: 3)
!259 = !{i64 2149780078, i64 2149780107, i64 2149780153, i64 2149780211, i64 2149780265, i64 2149780319, i64 2149780374, i64 2149780405, i64 2149780713, i64 2149780719, i64 2149780766, i64 2149780789, i64 2149780815}
!260 = !DILocation(line: 22, column: 3, scope: !261)
!261 = distinct !DILexicalBlock(scope: !148, file: !3, line: 22, column: 3)
!262 = !DILocation(line: 22, column: 3, scope: !263)
!263 = distinct !DILexicalBlock(scope: !149, file: !3, line: 22, column: 3)
!264 = !DILocation(line: 22, column: 3, scope: !128)
!265 = !DILocation(line: 23, column: 3, scope: !128)
!266 = !DILocation(line: 25, column: 3, scope: !152)
!267 = !DILocation(line: 25, column: 3, scope: !154)
!268 = !DILocation(line: 25, column: 3, scope: !269)
!269 = distinct !DILexicalBlock(scope: !154, file: !3, line: 25, column: 3)
!270 = !DILocation(line: 0, scope: !269)
!271 = !DILocation(line: 25, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !269, file: !3, line: 25, column: 3)
!273 = !DILocation(line: 25, column: 3, scope: !155)
!274 = !DILocation(line: 25, column: 3, scope: !158)
!275 = !DILocation(line: 25, column: 3, scope: !162)
!276 = !DILocation(line: 25, column: 3, scope: !161)
!277 = !DILocation(line: 25, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !161, file: !3, line: 25, column: 3)
!279 = !DILocation(line: 25, column: 3, scope: !160)
!280 = !DILocation(line: 25, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !160, file: !3, line: 25, column: 3)
!282 = !DILocation(line: 25, column: 3, scope: !283)
!283 = distinct !DILexicalBlock(scope: !160, file: !3, line: 25, column: 3)
!284 = !{i64 2149782794, i64 2149782823, i64 2149782869, i64 2149782927, i64 2149782981, i64 2149783035, i64 2149783090, i64 2149783121, i64 2149783429, i64 2149783435, i64 2149783482, i64 2149783505, i64 2149783531}
!285 = !DILocation(line: 25, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !160, file: !3, line: 25, column: 3)
!287 = !DILocation(line: 25, column: 3, scope: !288)
!288 = distinct !DILexicalBlock(scope: !161, file: !3, line: 25, column: 3)
!289 = !DILocation(line: 25, column: 3, scope: !128)
!290 = !DILocation(line: 26, column: 3, scope: !128)
!291 = !DILocation(line: 28, column: 3, scope: !164)
!292 = !DILocation(line: 28, column: 3, scope: !166)
!293 = !DILocation(line: 28, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !166, file: !3, line: 28, column: 3)
!295 = !DILocation(line: 0, scope: !294)
!296 = !DILocation(line: 28, column: 3, scope: !297)
!297 = distinct !DILexicalBlock(scope: !294, file: !3, line: 28, column: 3)
!298 = !DILocation(line: 28, column: 3, scope: !167)
!299 = !DILocation(line: 28, column: 3, scope: !170)
!300 = !DILocation(line: 28, column: 3, scope: !174)
!301 = !DILocation(line: 28, column: 3, scope: !173)
!302 = !DILocation(line: 28, column: 3, scope: !303)
!303 = distinct !DILexicalBlock(scope: !173, file: !3, line: 28, column: 3)
!304 = !DILocation(line: 28, column: 3, scope: !172)
!305 = !DILocation(line: 28, column: 3, scope: !306)
!306 = distinct !DILexicalBlock(scope: !172, file: !3, line: 28, column: 3)
!307 = !DILocation(line: 28, column: 3, scope: !308)
!308 = distinct !DILexicalBlock(scope: !172, file: !3, line: 28, column: 3)
!309 = !{i64 2149785490, i64 2149785519, i64 2149785565, i64 2149785623, i64 2149785677, i64 2149785731, i64 2149785786, i64 2149785817, i64 2149786125, i64 2149786131, i64 2149786178, i64 2149786201, i64 2149786227}
!310 = !DILocation(line: 28, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !172, file: !3, line: 28, column: 3)
!312 = !DILocation(line: 28, column: 3, scope: !313)
!313 = distinct !DILexicalBlock(scope: !173, file: !3, line: 28, column: 3)
!314 = !DILocation(line: 28, column: 3, scope: !128)
!315 = !DILocation(line: 29, column: 3, scope: !128)
!316 = !DILocation(line: 31, column: 3, scope: !176)
!317 = !DILocation(line: 31, column: 3, scope: !178)
!318 = !DILocation(line: 31, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !178, file: !3, line: 31, column: 3)
!320 = !DILocation(line: 0, scope: !319)
!321 = !DILocation(line: 31, column: 3, scope: !322)
!322 = distinct !DILexicalBlock(scope: !319, file: !3, line: 31, column: 3)
!323 = !DILocation(line: 31, column: 3, scope: !179)
!324 = !DILocation(line: 31, column: 3, scope: !182)
!325 = !DILocation(line: 31, column: 3, scope: !186)
!326 = !DILocation(line: 31, column: 3, scope: !185)
!327 = !DILocation(line: 31, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !185, file: !3, line: 31, column: 3)
!329 = !DILocation(line: 31, column: 3, scope: !184)
!330 = !DILocation(line: 31, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !184, file: !3, line: 31, column: 3)
!332 = !DILocation(line: 31, column: 3, scope: !333)
!333 = distinct !DILexicalBlock(scope: !184, file: !3, line: 31, column: 3)
!334 = !{i64 2149788216, i64 2149788245, i64 2149788291, i64 2149788349, i64 2149788403, i64 2149788457, i64 2149788512, i64 2149788543, i64 2149788851, i64 2149788857, i64 2149788904, i64 2149788927, i64 2149788953}
!335 = !DILocation(line: 31, column: 3, scope: !336)
!336 = distinct !DILexicalBlock(scope: !184, file: !3, line: 31, column: 3)
!337 = !DILocation(line: 31, column: 3, scope: !338)
!338 = distinct !DILexicalBlock(scope: !185, file: !3, line: 31, column: 3)
!339 = !DILocation(line: 31, column: 3, scope: !128)
!340 = !DILocation(line: 32, column: 3, scope: !128)
!341 = !DILocation(line: 34, column: 3, scope: !188)
!342 = !DILocation(line: 34, column: 3, scope: !190)
!343 = !DILocation(line: 34, column: 3, scope: !344)
!344 = distinct !DILexicalBlock(scope: !190, file: !3, line: 34, column: 3)
!345 = !DILocation(line: 0, scope: !344)
!346 = !DILocation(line: 34, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !344, file: !3, line: 34, column: 3)
!348 = !DILocation(line: 34, column: 3, scope: !191)
!349 = !DILocation(line: 34, column: 3, scope: !194)
!350 = !DILocation(line: 34, column: 3, scope: !198)
!351 = !DILocation(line: 34, column: 3, scope: !197)
!352 = !DILocation(line: 34, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !197, file: !3, line: 34, column: 3)
!354 = !DILocation(line: 34, column: 3, scope: !196)
!355 = !DILocation(line: 34, column: 3, scope: !356)
!356 = distinct !DILexicalBlock(scope: !196, file: !3, line: 34, column: 3)
!357 = !DILocation(line: 34, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !196, file: !3, line: 34, column: 3)
!359 = !{i64 2149790917, i64 2149790946, i64 2149790992, i64 2149791050, i64 2149791104, i64 2149791158, i64 2149791213, i64 2149791244, i64 2149791552, i64 2149791558, i64 2149791605, i64 2149791628, i64 2149791654}
!360 = !DILocation(line: 34, column: 3, scope: !361)
!361 = distinct !DILexicalBlock(scope: !196, file: !3, line: 34, column: 3)
!362 = !DILocation(line: 34, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !197, file: !3, line: 34, column: 3)
!364 = !DILocation(line: 34, column: 3, scope: !128)
!365 = !DILocation(line: 35, column: 2, scope: !128)
!366 = !DILocation(line: 36, column: 1, scope: !2)
!367 = distinct !DISubprogram(name: "refcount_set", scope: !8, file: !8, line: 134, type: !368, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !370)
!368 = !DISubroutineType(types: !369)
!369 = !{null, !6, !17}
!370 = !{!371, !372}
!371 = !DILocalVariable(name: "r", arg: 1, scope: !367, file: !8, line: 134, type: !6)
!372 = !DILocalVariable(name: "n", arg: 2, scope: !367, file: !8, line: 134, type: !17)
!373 = !DILocation(line: 134, column: 45, scope: !367)
!374 = !DILocation(line: 134, column: 52, scope: !367)
!375 = !DILocation(line: 136, column: 14, scope: !367)
!376 = !DILocation(line: 136, column: 17, scope: !367)
!377 = !DILocation(line: 136, column: 23, scope: !367)
!378 = !DILocation(line: 136, column: 2, scope: !367)
!379 = !DILocation(line: 137, column: 1, scope: !367)
!380 = !DISubprogram(name: "__warn_printk", scope: !381, file: !381, line: 93, type: !382, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!381 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!382 = !DISubroutineType(types: !383)
!383 = !{null, !384, null}
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!386 = distinct !DISubprogram(name: "refcount_dec_if_one", scope: !3, file: !3, line: 55, type: !94, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "r", arg: 1, scope: !386, file: !3, line: 55, type: !6)
!389 = !DILocalVariable(name: "val", scope: !386, file: !3, line: 57, type: !17)
!390 = !DILocation(line: 55, column: 38, scope: !386)
!391 = !DILocation(line: 57, column: 2, scope: !386)
!392 = !DILocation(line: 57, column: 6, scope: !386)
!393 = !DILocation(line: 59, column: 37, scope: !386)
!394 = !DILocation(line: 59, column: 40, scope: !386)
!395 = !DILocation(line: 59, column: 9, scope: !386)
!396 = !DILocation(line: 60, column: 1, scope: !386)
!397 = !DILocation(line: 59, column: 2, scope: !386)
!398 = distinct !DISubprogram(name: "atomic_try_cmpxchg_release", scope: !399, file: !399, line: 1313, type: !400, scopeLine: 1314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !403)
!399 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!400 = !DISubroutineType(types: !401)
!401 = !{!60, !402, !37, !17}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!403 = !{!404, !405, !406}
!404 = !DILocalVariable(name: "v", arg: 1, scope: !398, file: !399, line: 1313, type: !402)
!405 = !DILocalVariable(name: "old", arg: 2, scope: !398, file: !399, line: 1313, type: !37)
!406 = !DILocalVariable(name: "new", arg: 3, scope: !398, file: !399, line: 1313, type: !17)
!407 = !DILocation(line: 1313, column: 38, scope: !398)
!408 = !DILocation(line: 1313, column: 46, scope: !398)
!409 = !DILocation(line: 1313, column: 55, scope: !398)
!410 = !DILocation(line: 1315, column: 2, scope: !398)
!411 = !DILocation(line: 1315, column: 2, scope: !412)
!412 = distinct !DILexicalBlock(scope: !398, file: !399, line: 1315, column: 2)
!413 = !DILocation(line: 1316, column: 31, scope: !398)
!414 = !DILocation(line: 1316, column: 2, scope: !398)
!415 = !DILocation(line: 1317, column: 31, scope: !398)
!416 = !DILocation(line: 1317, column: 2, scope: !398)
!417 = !DILocation(line: 1318, column: 40, scope: !398)
!418 = !DILocation(line: 1318, column: 43, scope: !398)
!419 = !DILocation(line: 1318, column: 48, scope: !398)
!420 = !DILocation(line: 1318, column: 9, scope: !398)
!421 = !DILocation(line: 1318, column: 2, scope: !398)
!422 = !DILocation(line: 74, column: 39, scope: !93)
!423 = !DILocation(line: 76, column: 2, scope: !93)
!424 = !DILocation(line: 76, column: 15, scope: !93)
!425 = !DILocation(line: 76, column: 20, scope: !93)
!426 = !DILocation(line: 76, column: 39, scope: !93)
!427 = !DILocation(line: 76, column: 42, scope: !93)
!428 = !DILocation(line: 76, column: 26, scope: !93)
!429 = !DILocation(line: 78, column: 2, scope: !93)
!430 = !DILocation(line: 79, column: 7, scope: !431)
!431 = distinct !DILexicalBlock(scope: !104, file: !3, line: 79, column: 7)
!432 = !DILocation(line: 79, column: 7, scope: !104)
!433 = !DILocation(line: 80, column: 4, scope: !431)
!434 = !DILocation(line: 82, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !104, file: !3, line: 82, column: 7)
!436 = !DILocation(line: 82, column: 11, scope: !435)
!437 = !DILocation(line: 82, column: 7, scope: !104)
!438 = !DILocation(line: 83, column: 4, scope: !435)
!439 = !DILocation(line: 85, column: 9, scope: !104)
!440 = !DILocation(line: 85, column: 13, scope: !104)
!441 = !DILocation(line: 85, column: 7, scope: !104)
!442 = !DILocation(line: 86, column: 7, scope: !103)
!443 = !DILocation(line: 86, column: 13, scope: !103)
!444 = !DILocation(line: 86, column: 11, scope: !103)
!445 = !DILocation(line: 86, column: 7, scope: !104)
!446 = !DILocation(line: 87, column: 4, scope: !101)
!447 = !DILocation(line: 87, column: 4, scope: !106)
!448 = !DILocation(line: 87, column: 4, scope: !449)
!449 = distinct !DILexicalBlock(scope: !106, file: !3, line: 87, column: 4)
!450 = !DILocation(line: 0, scope: !449)
!451 = !DILocation(line: 87, column: 4, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !3, line: 87, column: 4)
!453 = !DILocation(line: 87, column: 4, scope: !107)
!454 = !DILocation(line: 87, column: 4, scope: !110)
!455 = !DILocation(line: 87, column: 4, scope: !114)
!456 = !DILocation(line: 87, column: 4, scope: !113)
!457 = !DILocation(line: 87, column: 4, scope: !458)
!458 = distinct !DILexicalBlock(scope: !113, file: !3, line: 87, column: 4)
!459 = !DILocation(line: 87, column: 4, scope: !112)
!460 = !DILocation(line: 87, column: 4, scope: !461)
!461 = distinct !DILexicalBlock(scope: !112, file: !3, line: 87, column: 4)
!462 = !DILocation(line: 87, column: 4, scope: !463)
!463 = distinct !DILexicalBlock(scope: !112, file: !3, line: 87, column: 4)
!464 = !{i64 2149797385, i64 2149797414, i64 2149797460, i64 2149797518, i64 2149797572, i64 2149797626, i64 2149797681, i64 2149797712, i64 2149798020, i64 2149798026, i64 2149798073, i64 2149798096, i64 2149798122}
!465 = !DILocation(line: 87, column: 4, scope: !466)
!466 = distinct !DILexicalBlock(scope: !112, file: !3, line: 87, column: 4)
!467 = !DILocation(line: 87, column: 4, scope: !468)
!468 = distinct !DILexicalBlock(scope: !113, file: !3, line: 87, column: 4)
!469 = !DILocation(line: 87, column: 4, scope: !102)
!470 = !DILocation(line: 88, column: 4, scope: !102)
!471 = !DILocation(line: 91, column: 2, scope: !104)
!472 = !DILocation(line: 91, column: 40, scope: !93)
!473 = !DILocation(line: 91, column: 43, scope: !93)
!474 = !DILocation(line: 91, column: 55, scope: !93)
!475 = !DILocation(line: 91, column: 12, scope: !93)
!476 = !DILocation(line: 91, column: 11, scope: !93)
!477 = distinct !{!477, !429, !478, !479, !480}
!478 = !DILocation(line: 91, column: 59, scope: !93)
!479 = !{!"llvm.loop.mustprogress"}
!480 = !{!"llvm.loop.unroll.disable"}
!481 = !DILocation(line: 93, column: 2, scope: !93)
!482 = !DILocation(line: 94, column: 1, scope: !93)
!483 = distinct !DISubprogram(name: "atomic_read", scope: !399, file: !399, line: 30, type: !484, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !488)
!484 = !DISubroutineType(types: !485)
!485 = !{!17, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!488 = !{!489}
!489 = !DILocalVariable(name: "v", arg: 1, scope: !483, file: !399, line: 30, type: !486)
!490 = !DILocation(line: 30, column: 29, scope: !483)
!491 = !DILocation(line: 32, column: 25, scope: !483)
!492 = !DILocation(line: 32, column: 2, scope: !483)
!493 = !DILocation(line: 33, column: 25, scope: !483)
!494 = !DILocation(line: 33, column: 9, scope: !483)
!495 = !DILocation(line: 33, column: 2, scope: !483)
!496 = distinct !DISubprogram(name: "refcount_dec_and_mutex_lock", scope: !3, file: !3, line: 113, type: !497, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !554)
!497 = !DISubroutineType(types: !498)
!498 = !{!60, !6, !499}
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !501, line: 66, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!502 = !{!503, !513, !543, !548}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !500, file: !501, line: 67, baseType: !504, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !505, line: 13, baseType: !506)
!505 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !13, line: 181, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 179, size: 64, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !507, file: !13, line: 180, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !41, line: 22, baseType: !511)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !43, line: 30, baseType: !512)
!512 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !500, file: !501, line: 68, baseType: !514, size: 32, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !515, line: 23, baseType: !516)
!515 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !515, line: 14, size: 32, elements: !517)
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !516, file: !515, line: 15, baseType: !519, size: 32)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !520, line: 44, baseType: !521)
!520 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !520, line: 14, size: 32, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, scope: !521, file: !520, line: 15, baseType: !524, size: 32)
!524 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !521, file: !520, line: 15, size: 32, elements: !525)
!525 = !{!526, !527, !535}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !524, file: !520, line: 16, baseType: !12, size: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !520, line: 24, baseType: !528, size: 16)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !520, line: 24, size: 16, elements: !529)
!529 = !{!530, !534}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !528, file: !520, line: 25, baseType: !531, size: 8)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !41, line: 17, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !43, line: 21, baseType: !533)
!533 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !528, file: !520, line: 26, baseType: !531, size: 8, offset: 8)
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !524, file: !520, line: 28, baseType: !536, size: 32)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !520, line: 28, size: 32, elements: !537)
!537 = !{!538, !542}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !536, file: !520, line: 29, baseType: !539, size: 16)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !41, line: 19, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !43, line: 24, baseType: !541)
!541 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !536, file: !520, line: 30, baseType: !539, size: 16, offset: 16)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !500, file: !501, line: 70, baseType: !544, size: 32, offset: 96)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !545, line: 15, size: 32, elements: !546)
!545 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !544, file: !545, line: 20, baseType: !12, size: 32)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !500, file: !501, line: 72, baseType: !549, size: 128, offset: 128)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !13, line: 190, size: 128, elements: !550)
!550 = !{!551, !553}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !549, file: !13, line: 191, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !549, file: !13, line: 191, baseType: !552, size: 64, offset: 64)
!554 = !{!555, !556}
!555 = !DILocalVariable(name: "r", arg: 1, scope: !496, file: !3, line: 113, type: !6)
!556 = !DILocalVariable(name: "lock", arg: 2, scope: !496, file: !3, line: 113, type: !499)
!557 = !DILocation(line: 113, column: 46, scope: !496)
!558 = !DILocation(line: 113, column: 63, scope: !496)
!559 = !DILocation(line: 115, column: 27, scope: !560)
!560 = distinct !DILexicalBlock(scope: !496, file: !3, line: 115, column: 6)
!561 = !DILocation(line: 115, column: 6, scope: !560)
!562 = !DILocation(line: 115, column: 6, scope: !496)
!563 = !DILocation(line: 116, column: 3, scope: !560)
!564 = !DILocation(line: 118, column: 13, scope: !496)
!565 = !DILocation(line: 118, column: 2, scope: !496)
!566 = !DILocation(line: 119, column: 29, scope: !567)
!567 = distinct !DILexicalBlock(scope: !496, file: !3, line: 119, column: 6)
!568 = !DILocation(line: 119, column: 7, scope: !567)
!569 = !DILocation(line: 119, column: 6, scope: !496)
!570 = !DILocation(line: 120, column: 16, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !3, line: 119, column: 33)
!572 = !DILocation(line: 120, column: 3, scope: !571)
!573 = !DILocation(line: 121, column: 3, scope: !571)
!574 = !DILocation(line: 124, column: 2, scope: !496)
!575 = !DILocation(line: 125, column: 1, scope: !496)
!576 = !DISubprogram(name: "mutex_lock", scope: !501, file: !501, line: 227, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !499}
!579 = distinct !DISubprogram(name: "refcount_dec_and_test", scope: !8, file: !8, line: 331, type: !94, scopeLine: 332, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !580)
!580 = !{!581}
!581 = !DILocalVariable(name: "r", arg: 1, scope: !579, file: !8, line: 331, type: !6)
!582 = !DILocation(line: 331, column: 67, scope: !579)
!583 = !DILocation(line: 333, column: 33, scope: !579)
!584 = !DILocation(line: 333, column: 9, scope: !579)
!585 = !DILocation(line: 333, column: 2, scope: !579)
!586 = !DISubprogram(name: "mutex_unlock", scope: !501, file: !501, line: 246, type: !577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!587 = distinct !DISubprogram(name: "refcount_dec_and_lock", scope: !3, file: !3, line: 144, type: !588, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !599)
!588 = !DISubroutineType(types: !589)
!589 = !{!60, !6, !590}
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !592, line: 29, baseType: !593)
!592 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !592, line: 17, size: 32, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, scope: !593, file: !592, line: 18, baseType: !596, size: 32)
!596 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !593, file: !592, line: 18, size: 32, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !596, file: !592, line: 19, baseType: !516, size: 32)
!599 = !{!600, !601}
!600 = !DILocalVariable(name: "r", arg: 1, scope: !587, file: !3, line: 144, type: !6)
!601 = !DILocalVariable(name: "lock", arg: 2, scope: !587, file: !3, line: 144, type: !590)
!602 = !DILocation(line: 144, column: 40, scope: !587)
!603 = !DILocation(line: 144, column: 55, scope: !587)
!604 = !DILocation(line: 146, column: 27, scope: !605)
!605 = distinct !DILexicalBlock(scope: !587, file: !3, line: 146, column: 6)
!606 = !DILocation(line: 146, column: 6, scope: !605)
!607 = !DILocation(line: 146, column: 6, scope: !587)
!608 = !DILocation(line: 147, column: 3, scope: !605)
!609 = !DILocation(line: 149, column: 12, scope: !587)
!610 = !DILocation(line: 149, column: 2, scope: !587)
!611 = !DILocation(line: 150, column: 29, scope: !612)
!612 = distinct !DILexicalBlock(scope: !587, file: !3, line: 150, column: 6)
!613 = !DILocation(line: 150, column: 7, scope: !612)
!614 = !DILocation(line: 150, column: 6, scope: !587)
!615 = !DILocation(line: 151, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !3, line: 150, column: 33)
!617 = !DILocation(line: 151, column: 3, scope: !616)
!618 = !DILocation(line: 152, column: 3, scope: !616)
!619 = !DILocation(line: 155, column: 2, scope: !587)
!620 = !DILocation(line: 156, column: 1, scope: !587)
!621 = distinct !DISubprogram(name: "spin_lock", scope: !622, file: !622, line: 349, type: !623, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !625)
!622 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!623 = !DISubroutineType(types: !624)
!624 = !{null, !590}
!625 = !{!626}
!626 = !DILocalVariable(name: "lock", arg: 1, scope: !621, file: !622, line: 349, type: !590)
!627 = !DILocation(line: 349, column: 51, scope: !621)
!628 = !DILocation(line: 351, column: 2, scope: !621)
!629 = !DILocation(line: 352, column: 1, scope: !621)
!630 = distinct !DISubprogram(name: "spin_unlock", scope: !622, file: !622, line: 389, type: !623, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !631)
!631 = !{!632}
!632 = !DILocalVariable(name: "lock", arg: 1, scope: !630, file: !622, line: 389, type: !590)
!633 = !DILocation(line: 389, column: 53, scope: !630)
!634 = !DILocation(line: 391, column: 2, scope: !630)
!635 = !DILocation(line: 392, column: 1, scope: !630)
!636 = distinct !DISubprogram(name: "refcount_dec_and_lock_irqsave", scope: !3, file: !3, line: 172, type: !637, scopeLine: 174, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !641)
!637 = !DISubroutineType(types: !638)
!638 = !{!60, !6, !590, !639}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!641 = !{!642, !643, !644, !645, !649}
!642 = !DILocalVariable(name: "r", arg: 1, scope: !636, file: !3, line: 172, type: !6)
!643 = !DILocalVariable(name: "lock", arg: 2, scope: !636, file: !3, line: 172, type: !590)
!644 = !DILocalVariable(name: "flags", arg: 3, scope: !636, file: !3, line: 173, type: !639)
!645 = !DILocalVariable(name: "__dummy", scope: !646, file: !3, line: 178, type: !640)
!646 = distinct !DILexicalBlock(scope: !647, file: !3, line: 178, column: 2)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 178, column: 2)
!648 = distinct !DILexicalBlock(scope: !636, file: !3, line: 178, column: 2)
!649 = !DILocalVariable(name: "__dummy2", scope: !646, file: !3, line: 178, type: !640)
!650 = !DILocation(line: 172, column: 48, scope: !636)
!651 = !DILocation(line: 172, column: 63, scope: !636)
!652 = !DILocation(line: 173, column: 23, scope: !636)
!653 = !DILocation(line: 175, column: 27, scope: !654)
!654 = distinct !DILexicalBlock(scope: !636, file: !3, line: 175, column: 6)
!655 = !DILocation(line: 175, column: 6, scope: !654)
!656 = !DILocation(line: 175, column: 6, scope: !636)
!657 = !DILocation(line: 176, column: 3, scope: !654)
!658 = !DILocation(line: 178, column: 2, scope: !636)
!659 = !DILocation(line: 178, column: 2, scope: !648)
!660 = !DILocation(line: 178, column: 2, scope: !646)
!661 = !DILocation(line: 178, column: 2, scope: !647)
!662 = !DILocation(line: 179, column: 29, scope: !663)
!663 = distinct !DILexicalBlock(scope: !636, file: !3, line: 179, column: 6)
!664 = !DILocation(line: 179, column: 7, scope: !663)
!665 = !DILocation(line: 179, column: 6, scope: !636)
!666 = !DILocation(line: 180, column: 26, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !3, line: 179, column: 33)
!668 = !DILocation(line: 180, column: 33, scope: !667)
!669 = !DILocation(line: 180, column: 32, scope: !667)
!670 = !DILocation(line: 180, column: 3, scope: !667)
!671 = !DILocation(line: 181, column: 3, scope: !667)
!672 = !DILocation(line: 184, column: 2, scope: !636)
!673 = !DILocation(line: 185, column: 1, scope: !636)
!674 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !675, file: !675, line: 32, type: !676, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!675 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!676 = !DISubroutineType(types: !677)
!677 = !{!640, !678}
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!679 = distinct !DISubprogram(name: "spinlock_check", scope: !622, file: !622, line: 324, type: !680, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!678, !590}
!682 = !{!683}
!683 = !DILocalVariable(name: "lock", arg: 1, scope: !679, file: !622, line: 324, type: !590)
!684 = !DILocation(line: 324, column: 67, scope: !679)
!685 = !DILocation(line: 326, column: 10, scope: !679)
!686 = !DILocation(line: 326, column: 16, scope: !679)
!687 = !DILocation(line: 326, column: 2, scope: !679)
!688 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !622, file: !622, line: 404, type: !689, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{null, !590, !640}
!691 = !{!692, !693, !694, !697}
!692 = !DILocalVariable(name: "lock", arg: 1, scope: !688, file: !622, line: 404, type: !590)
!693 = !DILocalVariable(name: "flags", arg: 2, scope: !688, file: !622, line: 404, type: !640)
!694 = !DILocalVariable(name: "__dummy", scope: !695, file: !622, line: 406, type: !640)
!695 = distinct !DILexicalBlock(scope: !696, file: !622, line: 406, column: 2)
!696 = distinct !DILexicalBlock(scope: !688, file: !622, line: 406, column: 2)
!697 = !DILocalVariable(name: "__dummy2", scope: !695, file: !622, line: 406, type: !640)
!698 = !DILocation(line: 404, column: 64, scope: !688)
!699 = !DILocation(line: 404, column: 84, scope: !688)
!700 = !DILocation(line: 406, column: 2, scope: !688)
!701 = !DILocation(line: 406, column: 2, scope: !695)
!702 = !DILocation(line: 406, column: 2, scope: !696)
!703 = !DILocation(line: 407, column: 1, scope: !688)
!704 = distinct !DISubprogram(name: "atomic_set", scope: !399, file: !399, line: 65, type: !705, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !707)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !402, !17}
!707 = !{!708, !709}
!708 = !DILocalVariable(name: "v", arg: 1, scope: !704, file: !399, line: 65, type: !402)
!709 = !DILocalVariable(name: "i", arg: 2, scope: !704, file: !399, line: 65, type: !17)
!710 = !DILocation(line: 65, column: 22, scope: !704)
!711 = !DILocation(line: 65, column: 29, scope: !704)
!712 = !DILocation(line: 67, column: 26, scope: !704)
!713 = !DILocation(line: 67, column: 2, scope: !704)
!714 = !DILocation(line: 68, column: 17, scope: !704)
!715 = !DILocation(line: 68, column: 20, scope: !704)
!716 = !DILocation(line: 68, column: 2, scope: !704)
!717 = !DILocation(line: 69, column: 1, scope: !704)
!718 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !719, file: !719, line: 80, type: !720, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !729)
!719 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!720 = !DISubroutineType(types: !721)
!721 = !{null, !722, !725}
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 61, baseType: !726)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !727, line: 72, baseType: !728)
!727 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !727, line: 16, baseType: !640)
!729 = !{!730, !731}
!730 = !DILocalVariable(name: "v", arg: 1, scope: !718, file: !719, line: 80, type: !722)
!731 = !DILocalVariable(name: "size", arg: 2, scope: !718, file: !719, line: 80, type: !725)
!732 = !DILocation(line: 80, column: 74, scope: !718)
!733 = !DILocation(line: 80, column: 84, scope: !718)
!734 = !DILocation(line: 82, column: 20, scope: !718)
!735 = !DILocation(line: 82, column: 23, scope: !718)
!736 = !DILocation(line: 82, column: 2, scope: !718)
!737 = !DILocation(line: 83, column: 2, scope: !718)
!738 = !DILocation(line: 84, column: 1, scope: !718)
!739 = distinct !DISubprogram(name: "raw_atomic_set", scope: !740, file: !740, line: 488, type: !705, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !741)
!740 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!741 = !{!742, !743}
!742 = !DILocalVariable(name: "v", arg: 1, scope: !739, file: !740, line: 488, type: !402)
!743 = !DILocalVariable(name: "i", arg: 2, scope: !739, file: !740, line: 488, type: !17)
!744 = !DILocation(line: 488, column: 26, scope: !739)
!745 = !DILocation(line: 488, column: 33, scope: !739)
!746 = !DILocation(line: 490, column: 18, scope: !739)
!747 = !DILocation(line: 490, column: 21, scope: !739)
!748 = !DILocation(line: 490, column: 2, scope: !739)
!749 = !DILocation(line: 491, column: 1, scope: !739)
!750 = distinct !DISubprogram(name: "kasan_check_write", scope: !751, file: !751, line: 44, type: !752, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !754)
!751 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!752 = !DISubroutineType(types: !753)
!753 = !{!60, !722, !19}
!754 = !{!755, !756}
!755 = !DILocalVariable(name: "p", arg: 1, scope: !750, file: !751, line: 44, type: !722)
!756 = !DILocalVariable(name: "size", arg: 2, scope: !750, file: !751, line: 44, type: !19)
!757 = !DILocation(line: 44, column: 59, scope: !750)
!758 = !DILocation(line: 44, column: 75, scope: !750)
!759 = !DILocation(line: 46, column: 2, scope: !750)
!760 = distinct !DISubprogram(name: "kcsan_check_access", scope: !761, file: !761, line: 229, type: !762, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !764)
!761 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!762 = !DISubroutineType(types: !763)
!763 = !{null, !722, !725, !17}
!764 = !{!765, !766, !767}
!765 = !DILocalVariable(name: "ptr", arg: 1, scope: !760, file: !761, line: 229, type: !722)
!766 = !DILocalVariable(name: "size", arg: 2, scope: !760, file: !761, line: 229, type: !725)
!767 = !DILocalVariable(name: "type", arg: 3, scope: !760, file: !761, line: 230, type: !17)
!768 = !DILocation(line: 229, column: 60, scope: !760)
!769 = !DILocation(line: 229, column: 72, scope: !760)
!770 = !DILocation(line: 230, column: 15, scope: !760)
!771 = !DILocation(line: 230, column: 23, scope: !760)
!772 = distinct !DISubprogram(name: "arch_atomic_set", scope: !773, file: !773, line: 26, type: !705, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !774)
!773 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "439e70d0eb4d6d8eeb7b3f17e4259f4d")
!774 = !{!775, !776}
!775 = !DILocalVariable(name: "v", arg: 1, scope: !772, file: !773, line: 26, type: !402)
!776 = !DILocalVariable(name: "i", arg: 2, scope: !772, file: !773, line: 26, type: !17)
!777 = !DILocation(line: 26, column: 55, scope: !772)
!778 = !DILocation(line: 26, column: 62, scope: !772)
!779 = !DILocation(line: 28, column: 2, scope: !772)
!780 = !DILocation(line: 28, column: 2, scope: !781)
!781 = distinct !DILexicalBlock(scope: !772, file: !773, line: 28, column: 2)
!782 = !DILocation(line: 29, column: 1, scope: !772)
!783 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !719, file: !719, line: 94, type: !720, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !784)
!784 = !{!785, !786}
!785 = !DILocalVariable(name: "v", arg: 1, scope: !783, file: !719, line: 94, type: !722)
!786 = !DILocalVariable(name: "size", arg: 2, scope: !783, file: !719, line: 94, type: !725)
!787 = !DILocation(line: 94, column: 79, scope: !783)
!788 = !DILocation(line: 94, column: 89, scope: !783)
!789 = !DILocation(line: 96, column: 20, scope: !783)
!790 = !DILocation(line: 96, column: 23, scope: !783)
!791 = !DILocation(line: 96, column: 2, scope: !783)
!792 = !DILocation(line: 97, column: 2, scope: !783)
!793 = !DILocation(line: 98, column: 1, scope: !783)
!794 = distinct !DISubprogram(name: "raw_atomic_try_cmpxchg_release", scope: !740, file: !740, line: 2175, type: !400, scopeLine: 2176, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !795)
!795 = !{!796, !797, !798}
!796 = !DILocalVariable(name: "v", arg: 1, scope: !794, file: !740, line: 2175, type: !402)
!797 = !DILocalVariable(name: "old", arg: 2, scope: !794, file: !740, line: 2175, type: !37)
!798 = !DILocalVariable(name: "new", arg: 3, scope: !794, file: !740, line: 2175, type: !17)
!799 = !DILocation(line: 2175, column: 42, scope: !794)
!800 = !DILocation(line: 2175, column: 50, scope: !794)
!801 = !DILocation(line: 2175, column: 59, scope: !794)
!802 = !DILocation(line: 2183, column: 33, scope: !794)
!803 = !DILocation(line: 2183, column: 36, scope: !794)
!804 = !DILocation(line: 2183, column: 41, scope: !794)
!805 = !DILocation(line: 2183, column: 9, scope: !794)
!806 = !DILocation(line: 2183, column: 2, scope: !794)
!807 = distinct !DISubprogram(name: "arch_atomic_try_cmpxchg", scope: !773, file: !773, line: 113, type: !400, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !808)
!808 = !{!809, !810, !811, !812, !814, !815, !816, !817}
!809 = !DILocalVariable(name: "v", arg: 1, scope: !807, file: !773, line: 113, type: !402)
!810 = !DILocalVariable(name: "old", arg: 2, scope: !807, file: !773, line: 113, type: !37)
!811 = !DILocalVariable(name: "new", arg: 3, scope: !807, file: !773, line: 113, type: !17)
!812 = !DILocalVariable(name: "success", scope: !813, file: !773, line: 115, type: !60)
!813 = distinct !DILexicalBlock(scope: !807, file: !773, line: 115, column: 9)
!814 = !DILocalVariable(name: "_old", scope: !813, file: !773, line: 115, type: !37)
!815 = !DILocalVariable(name: "__old", scope: !813, file: !773, line: 115, type: !17)
!816 = !DILocalVariable(name: "__new", scope: !813, file: !773, line: 115, type: !17)
!817 = !DILocalVariable(name: "__ptr", scope: !813, file: !773, line: 115, type: !38)
!818 = !DILocation(line: 113, column: 63, scope: !807)
!819 = !DILocation(line: 113, column: 71, scope: !807)
!820 = !DILocation(line: 113, column: 80, scope: !807)
!821 = !DILocation(line: 115, column: 9, scope: !813)
!822 = !{i64 2148482124, i64 2148482163, i64 2148482184, i64 2148482221, i64 2148482244, i64 2148482253, i64 2148482551}
!823 = !DILocation(line: 115, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !813, file: !773, line: 115, column: 9)
!825 = !DILocation(line: 115, column: 9, scope: !807)
!826 = !DILocation(line: 115, column: 2, scope: !807)
!827 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !719, file: !719, line: 66, type: !720, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !828)
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "v", arg: 1, scope: !827, file: !719, line: 66, type: !722)
!830 = !DILocalVariable(name: "size", arg: 2, scope: !827, file: !719, line: 66, type: !725)
!831 = !DILocation(line: 66, column: 73, scope: !827)
!832 = !DILocation(line: 66, column: 83, scope: !827)
!833 = !DILocation(line: 68, column: 19, scope: !827)
!834 = !DILocation(line: 68, column: 22, scope: !827)
!835 = !DILocation(line: 68, column: 2, scope: !827)
!836 = !DILocation(line: 69, column: 2, scope: !827)
!837 = !DILocation(line: 70, column: 1, scope: !827)
!838 = distinct !DISubprogram(name: "raw_atomic_read", scope: !740, file: !740, line: 442, type: !484, scopeLine: 443, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !839)
!839 = !{!840}
!840 = !DILocalVariable(name: "v", arg: 1, scope: !838, file: !740, line: 442, type: !486)
!841 = !DILocation(line: 442, column: 33, scope: !838)
!842 = !DILocation(line: 444, column: 26, scope: !838)
!843 = !DILocation(line: 444, column: 9, scope: !838)
!844 = !DILocation(line: 444, column: 2, scope: !838)
!845 = distinct !DISubprogram(name: "kasan_check_read", scope: !751, file: !751, line: 40, type: !752, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !846)
!846 = !{!847, !848}
!847 = !DILocalVariable(name: "p", arg: 1, scope: !845, file: !751, line: 40, type: !722)
!848 = !DILocalVariable(name: "size", arg: 2, scope: !845, file: !751, line: 40, type: !19)
!849 = !DILocation(line: 40, column: 58, scope: !845)
!850 = !DILocation(line: 40, column: 74, scope: !845)
!851 = !DILocation(line: 42, column: 2, scope: !845)
!852 = distinct !DISubprogram(name: "arch_atomic_read", scope: !773, file: !773, line: 17, type: !484, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !853)
!853 = !{!854}
!854 = !DILocalVariable(name: "v", arg: 1, scope: !852, file: !773, line: 17, type: !486)
!855 = !DILocation(line: 17, column: 61, scope: !852)
!856 = !DILocation(line: 23, column: 9, scope: !852)
!857 = !DILocation(line: 23, column: 2, scope: !852)
!858 = distinct !DISubprogram(name: "__refcount_dec_and_test", scope: !8, file: !8, line: 313, type: !859, scopeLine: 314, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !861)
!859 = !DISubroutineType(types: !860)
!860 = !{!60, !6, !37}
!861 = !{!862, !863}
!862 = !DILocalVariable(name: "r", arg: 1, scope: !858, file: !8, line: 313, type: !6)
!863 = !DILocalVariable(name: "oldp", arg: 2, scope: !858, file: !8, line: 313, type: !37)
!864 = !DILocation(line: 313, column: 69, scope: !858)
!865 = !DILocation(line: 313, column: 77, scope: !858)
!866 = !DILocation(line: 315, column: 36, scope: !858)
!867 = !DILocation(line: 315, column: 39, scope: !858)
!868 = !DILocation(line: 315, column: 9, scope: !858)
!869 = !DILocation(line: 315, column: 2, scope: !858)
!870 = distinct !DISubprogram(name: "__refcount_sub_and_test", scope: !8, file: !8, line: 270, type: !871, scopeLine: 271, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !873)
!871 = !DISubroutineType(types: !872)
!872 = !{!60, !17, !6, !37}
!873 = !{!874, !875, !876, !877}
!874 = !DILocalVariable(name: "i", arg: 1, scope: !870, file: !8, line: 270, type: !17)
!875 = !DILocalVariable(name: "r", arg: 2, scope: !870, file: !8, line: 270, type: !6)
!876 = !DILocalVariable(name: "oldp", arg: 3, scope: !870, file: !8, line: 270, type: !37)
!877 = !DILocalVariable(name: "old", scope: !870, file: !8, line: 272, type: !17)
!878 = !DILocation(line: 270, column: 61, scope: !870)
!879 = !DILocation(line: 270, column: 76, scope: !870)
!880 = !DILocation(line: 270, column: 84, scope: !870)
!881 = !DILocation(line: 272, column: 2, scope: !870)
!882 = !DILocation(line: 272, column: 6, scope: !870)
!883 = !DILocation(line: 272, column: 37, scope: !870)
!884 = !DILocation(line: 272, column: 41, scope: !870)
!885 = !DILocation(line: 272, column: 44, scope: !870)
!886 = !DILocation(line: 272, column: 12, scope: !870)
!887 = !DILocation(line: 274, column: 6, scope: !888)
!888 = distinct !DILexicalBlock(scope: !870, file: !8, line: 274, column: 6)
!889 = !DILocation(line: 274, column: 6, scope: !870)
!890 = !DILocation(line: 275, column: 11, scope: !888)
!891 = !DILocation(line: 275, column: 4, scope: !888)
!892 = !DILocation(line: 275, column: 9, scope: !888)
!893 = !DILocation(line: 275, column: 3, scope: !888)
!894 = !DILocation(line: 277, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !870, file: !8, line: 277, column: 6)
!896 = !DILocation(line: 277, column: 13, scope: !895)
!897 = !DILocation(line: 277, column: 10, scope: !895)
!898 = !DILocation(line: 277, column: 6, scope: !870)
!899 = !DILocation(line: 278, column: 3, scope: !900)
!900 = distinct !DILexicalBlock(scope: !895, file: !8, line: 277, column: 16)
!901 = !DILocation(line: 278, column: 3, scope: !902)
!902 = distinct !DILexicalBlock(scope: !900, file: !8, line: 278, column: 3)
!903 = !DILocation(line: 278, column: 3, scope: !904)
!904 = distinct !DILexicalBlock(scope: !902, file: !8, line: 278, column: 3)
!905 = !DILocation(line: 278, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !8, line: 278, column: 3)
!907 = !DILocation(line: 278, column: 3, scope: !908)
!908 = distinct !DILexicalBlock(scope: !906, file: !8, line: 278, column: 3)
!909 = !{i64 2149563351}
!910 = !DILocation(line: 279, column: 3, scope: !900)
!911 = !DILocation(line: 282, column: 6, scope: !912)
!912 = distinct !DILexicalBlock(scope: !870, file: !8, line: 282, column: 6)
!913 = !DILocation(line: 282, column: 6, scope: !870)
!914 = !DILocation(line: 283, column: 26, scope: !912)
!915 = !DILocation(line: 283, column: 3, scope: !912)
!916 = !DILocation(line: 285, column: 2, scope: !870)
!917 = !DILocation(line: 286, column: 1, scope: !870)
!918 = distinct !DISubprogram(name: "atomic_fetch_sub_release", scope: !399, file: !399, line: 397, type: !919, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !921)
!919 = !DISubroutineType(types: !920)
!920 = !{!17, !17, !402}
!921 = !{!922, !923}
!922 = !DILocalVariable(name: "i", arg: 1, scope: !918, file: !399, line: 397, type: !17)
!923 = !DILocalVariable(name: "v", arg: 2, scope: !918, file: !399, line: 397, type: !402)
!924 = !DILocation(line: 397, column: 30, scope: !918)
!925 = !DILocation(line: 397, column: 43, scope: !918)
!926 = !DILocation(line: 399, column: 2, scope: !918)
!927 = !DILocation(line: 399, column: 2, scope: !928)
!928 = distinct !DILexicalBlock(scope: !918, file: !399, line: 399, column: 2)
!929 = !DILocation(line: 400, column: 31, scope: !918)
!930 = !DILocation(line: 400, column: 2, scope: !918)
!931 = !DILocation(line: 401, column: 38, scope: !918)
!932 = !DILocation(line: 401, column: 41, scope: !918)
!933 = !DILocation(line: 401, column: 9, scope: !918)
!934 = !DILocation(line: 401, column: 2, scope: !918)
!935 = distinct !DISubprogram(name: "raw_atomic_fetch_sub_release", scope: !740, file: !740, line: 928, type: !919, scopeLine: 929, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !936)
!936 = !{!937, !938}
!937 = !DILocalVariable(name: "i", arg: 1, scope: !935, file: !740, line: 928, type: !17)
!938 = !DILocalVariable(name: "v", arg: 2, scope: !935, file: !740, line: 928, type: !402)
!939 = !DILocation(line: 928, column: 34, scope: !935)
!940 = !DILocation(line: 928, column: 47, scope: !935)
!941 = !DILocation(line: 936, column: 31, scope: !935)
!942 = !DILocation(line: 936, column: 34, scope: !935)
!943 = !DILocation(line: 936, column: 9, scope: !935)
!944 = !DILocation(line: 936, column: 2, scope: !935)
!945 = distinct !DISubprogram(name: "arch_atomic_fetch_sub", scope: !773, file: !773, line: 101, type: !919, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !26, retainedNodes: !946)
!946 = !{!947, !948, !949}
!947 = !DILocalVariable(name: "i", arg: 1, scope: !945, file: !773, line: 101, type: !17)
!948 = !DILocalVariable(name: "v", arg: 2, scope: !945, file: !773, line: 101, type: !402)
!949 = !DILocalVariable(name: "__ret", scope: !950, file: !773, line: 103, type: !17)
!950 = distinct !DILexicalBlock(scope: !945, file: !773, line: 103, column: 9)
!951 = !DILocation(line: 101, column: 54, scope: !945)
!952 = !DILocation(line: 101, column: 67, scope: !945)
!953 = !DILocation(line: 103, column: 9, scope: !950)
!954 = !{i64 2148476417, i64 2148476456, i64 2148476477, i64 2148476514, i64 2148476537, i64 2148476546}
!955 = !DILocation(line: 103, column: 9, scope: !945)
!956 = !DILocation(line: 103, column: 2, scope: !945)
!957 = !DISubprogram(name: "_raw_spin_lock", scope: !675, file: !675, line: 22, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !678}
!960 = !DISubprogram(name: "_raw_spin_unlock", scope: !675, file: !675, line: 39, type: !958, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!961 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !675, file: !675, line: 43, type: !962, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!962 = !DISubroutineType(types: !963)
!963 = !{null, !678, !640}

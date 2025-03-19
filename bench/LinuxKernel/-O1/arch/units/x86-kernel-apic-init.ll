; ModuleID = 'arch/x86/kernel/apic/init.c'
source_filename = "arch/x86/kernel/apic/init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_eoi\09\09"
module asm "__SCT__apic_call_eoi:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_eoi, @function\09"
module asm ".size __SCT__apic_call_eoi, . - __SCT__apic_call_eoi "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_native_eoi\09\09"
module asm "__SCT__apic_call_native_eoi:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_native_eoi, @function\09"
module asm ".size __SCT__apic_call_native_eoi, . - __SCT__apic_call_native_eoi "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_icr_read\09\09"
module asm "__SCT__apic_call_icr_read:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_icr_read, @function\09"
module asm ".size __SCT__apic_call_icr_read, . - __SCT__apic_call_icr_read "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_icr_write\09\09"
module asm "__SCT__apic_call_icr_write:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_icr_write, @function\09"
module asm ".size __SCT__apic_call_icr_write, . - __SCT__apic_call_icr_write "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_read\09\09"
module asm "__SCT__apic_call_read:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_read, @function\09"
module asm ".size __SCT__apic_call_read, . - __SCT__apic_call_read "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI\09\09"
module asm "__SCT__apic_call_send_IPI:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI, @function\09"
module asm ".size __SCT__apic_call_send_IPI, . - __SCT__apic_call_send_IPI "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI_mask\09\09"
module asm "__SCT__apic_call_send_IPI_mask:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI_mask, @function\09"
module asm ".size __SCT__apic_call_send_IPI_mask, . - __SCT__apic_call_send_IPI_mask "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI_mask_allbutself\09\09"
module asm "__SCT__apic_call_send_IPI_mask_allbutself:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI_mask_allbutself, @function\09"
module asm ".size __SCT__apic_call_send_IPI_mask_allbutself, . - __SCT__apic_call_send_IPI_mask_allbutself "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI_allbutself\09\09"
module asm "__SCT__apic_call_send_IPI_allbutself:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI_allbutself, @function\09"
module asm ".size __SCT__apic_call_send_IPI_allbutself, . - __SCT__apic_call_send_IPI_allbutself "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI_all\09\09"
module asm "__SCT__apic_call_send_IPI_all:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI_all, @function\09"
module asm ".size __SCT__apic_call_send_IPI_all, . - __SCT__apic_call_send_IPI_all "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_send_IPI_self\09\09"
module asm "__SCT__apic_call_send_IPI_self:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_send_IPI_self, @function\09"
module asm ".size __SCT__apic_call_send_IPI_self, . - __SCT__apic_call_send_IPI_self "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_wait_icr_idle\09\09"
module asm "__SCT__apic_call_wait_icr_idle:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_wait_icr_idle, @function\09"
module asm ".size __SCT__apic_call_wait_icr_idle, . - __SCT__apic_call_wait_icr_idle "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_wakeup_secondary_cpu\09\09"
module asm "__SCT__apic_call_wakeup_secondary_cpu:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_wakeup_secondary_cpu, @function\09"
module asm ".size __SCT__apic_call_wakeup_secondary_cpu, . - __SCT__apic_call_wakeup_secondary_cpu "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_wakeup_secondary_cpu_64\09\09"
module asm "__SCT__apic_call_wakeup_secondary_cpu_64:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_wakeup_secondary_cpu_64, @function\09"
module asm ".size __SCT__apic_call_wakeup_secondary_cpu_64, . - __SCT__apic_call_wakeup_secondary_cpu_64 "
module asm ".popsection\09\09\09\09\09"
module asm ".pushsection .static_call.text, \22ax\22\09\09"
module asm ".align 4\09\09\09\09\09\09"
module asm ".globl __SCT__apic_call_write\09\09"
module asm "__SCT__apic_call_write:\09\09\09"
module asm "986: "
module asm "\09.pushsection .discard.noendbr"
module asm "\09.long 986b"
module asm "\09.popsection"
module asm "\09jmp __x86_return_thunk\09\09\09\09\09\09"
module asm ".byte 0x0f, 0xb9, 0xcc\09\09\09\09"
module asm ".type __SCT__apic_call_write, @function\09"
module asm ".size __SCT__apic_call_write, . - __SCT__apic_call_write "
module asm ".popsection\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__apic_call_send_IPI_mask: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__apic_call_send_IPI_mask ; .previous"
module asm ".pushsection .static_call_tramp_key, \22a\22\09\09"
module asm ".long __SCT__apic_call_send_IPI_mask - .\09\09"
module asm ".long __SCK__apic_call_send_IPI_mask - .\09\09"
module asm ".popsection\09\09\09\09\09"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol___SCT__apic_call_send_IPI_self: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad __SCT__apic_call_send_IPI_self ; .previous"
module asm ".pushsection .static_call_tramp_key, \22a\22\09\09"
module asm ".long __SCT__apic_call_send_IPI_self - .\09\09"
module asm ".long __SCK__apic_call_send_IPI_self - .\09\09"
module asm ".popsection\09\09\09\09\09"

%struct.static_call_key = type { ptr, %union.anon }
%union.anon = type { i64 }
%struct.apic_override = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.apic = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__SCK__apic_call_eoi = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !0
@__SCK__apic_call_native_eoi = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !31
@__SCK__apic_call_icr_read = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1093
@__SCK__apic_call_icr_write = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1095
@__SCK__apic_call_read = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1097
@__SCK__apic_call_send_IPI = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1099
@__SCK__apic_call_send_IPI_mask = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1101
@__SCK__apic_call_send_IPI_mask_allbutself = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1103
@__SCK__apic_call_send_IPI_allbutself = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1105
@__SCK__apic_call_send_IPI_all = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1107
@__SCK__apic_call_send_IPI_self = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1109
@__SCK__apic_call_wait_icr_idle = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1111
@__SCK__apic_call_wakeup_secondary_cpu = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1113
@__SCK__apic_call_wakeup_secondary_cpu_64 = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1115
@__SCK__apic_call_write = hidden global %struct.static_call_key { ptr null, %union.anon { i64 1 } }, align 8, !dbg !1117
@__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_mask217 = internal global ptr @__SCT__apic_call_send_IPI_mask, section ".discard.addressable", align 8, !dbg !1119
@__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_self218 = internal global ptr @__SCT__apic_call_send_IPI_self, section ".discard.addressable", align 8, !dbg !1121
@apic = external dso_local global ptr, align 8
@.str = private unnamed_addr constant [34 x i8] c"\016APIC: Static calls initialized\0A\00", align 1, !dbg !1123
@.str.1 = private unnamed_addr constant [38 x i8] c"\016APIC: Switched APIC routing to: %s\0A\00", align 1, !dbg !1128
@__x86_apic_override = hidden global %struct.apic_override zeroinitializer, section ".init.data", align 8, !dbg !1133
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_mask217, ptr @__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_self218], section "llvm.metadata"

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_mask(ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_self(i32 noundef) #0

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @apic_setup_apic_calls() #1 section ".init.text" align 16 !dbg !1191 {
entry:
  %tmp = alloca i32, align 4
  %0 = load ptr, ptr @apic, align 8, !dbg !1192
  %eoi = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 0, !dbg !1193
  %1 = load ptr, ptr %eoi, align 8, !dbg !1193
  %2 = load ptr, ptr @apic, align 8, !dbg !1194
  %native_eoi = getelementptr inbounds %struct.apic, ptr %2, i32 0, i32 1, !dbg !1195
  store ptr %1, ptr %native_eoi, align 8, !dbg !1196
  call void @update_static_calls() #5, !dbg !1197
  br label %do.body, !dbg !1198

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1200

do.end:                                           ; preds = %do.body
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str) #5, !dbg !1198
  store i32 %call, ptr %tmp, align 4, !dbg !1200
  %3 = load i32, ptr %tmp, align 4, !dbg !1198
  ret void, !dbg !1202
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @update_static_calls() #1 section ".init.text" align 16 !dbg !1203 {
entry:
  %__F = alloca ptr, align 8
  %__F1 = alloca ptr, align 8
  %__F2 = alloca ptr, align 8
  %__F3 = alloca ptr, align 8
  %__F4 = alloca ptr, align 8
  %__F5 = alloca ptr, align 8
  %__F6 = alloca ptr, align 8
  %__F7 = alloca ptr, align 8
  %__F8 = alloca ptr, align 8
  %__F9 = alloca ptr, align 8
  %__F10 = alloca ptr, align 8
  %__F11 = alloca ptr, align 8
  %__F12 = alloca ptr, align 8
  %__F13 = alloca ptr, align 8
  %__F14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F) #6, !dbg !1235
  call void @llvm.dbg.declare(metadata ptr %__F, metadata !1205, metadata !DIExpression()), !dbg !1235
  %0 = load ptr, ptr @apic, align 8, !dbg !1235
  %eoi = getelementptr inbounds %struct.apic, ptr %0, i32 0, i32 0, !dbg !1235
  %1 = load ptr, ptr %eoi, align 8, !dbg !1235
  store ptr %1, ptr %__F, align 8, !dbg !1235
  %2 = load ptr, ptr %__F, align 8, !dbg !1235
  call void @__static_call_update(ptr noundef @__SCK__apic_call_eoi, ptr noundef @__SCT__apic_call_eoi, ptr noundef %2) #7, !dbg !1235
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F) #6, !dbg !1236
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F1) #6, !dbg !1237
  call void @llvm.dbg.declare(metadata ptr %__F1, metadata !1207, metadata !DIExpression()), !dbg !1237
  %3 = load ptr, ptr @apic, align 8, !dbg !1237
  %native_eoi = getelementptr inbounds %struct.apic, ptr %3, i32 0, i32 1, !dbg !1237
  %4 = load ptr, ptr %native_eoi, align 8, !dbg !1237
  store ptr %4, ptr %__F1, align 8, !dbg !1237
  %5 = load ptr, ptr %__F1, align 8, !dbg !1237
  call void @__static_call_update(ptr noundef @__SCK__apic_call_native_eoi, ptr noundef @__SCT__apic_call_native_eoi, ptr noundef %5) #7, !dbg !1237
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F1) #6, !dbg !1238
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F2) #6, !dbg !1239
  call void @llvm.dbg.declare(metadata ptr %__F2, metadata !1209, metadata !DIExpression()), !dbg !1239
  %6 = load ptr, ptr @apic, align 8, !dbg !1239
  %write = getelementptr inbounds %struct.apic, ptr %6, i32 0, i32 2, !dbg !1239
  %7 = load ptr, ptr %write, align 8, !dbg !1239
  store ptr %7, ptr %__F2, align 8, !dbg !1239
  %8 = load ptr, ptr %__F2, align 8, !dbg !1239
  call void @__static_call_update(ptr noundef @__SCK__apic_call_write, ptr noundef @__SCT__apic_call_write, ptr noundef %8) #7, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F2) #6, !dbg !1240
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F3) #6, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %__F3, metadata !1211, metadata !DIExpression()), !dbg !1241
  %9 = load ptr, ptr @apic, align 8, !dbg !1241
  %read = getelementptr inbounds %struct.apic, ptr %9, i32 0, i32 3, !dbg !1241
  %10 = load ptr, ptr %read, align 8, !dbg !1241
  store ptr %10, ptr %__F3, align 8, !dbg !1241
  %11 = load ptr, ptr %__F3, align 8, !dbg !1241
  call void @__static_call_update(ptr noundef @__SCK__apic_call_read, ptr noundef @__SCT__apic_call_read, ptr noundef %11) #7, !dbg !1241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F3) #6, !dbg !1242
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F4) #6, !dbg !1243
  call void @llvm.dbg.declare(metadata ptr %__F4, metadata !1213, metadata !DIExpression()), !dbg !1243
  %12 = load ptr, ptr @apic, align 8, !dbg !1243
  %send_IPI = getelementptr inbounds %struct.apic, ptr %12, i32 0, i32 6, !dbg !1243
  %13 = load ptr, ptr %send_IPI, align 8, !dbg !1243
  store ptr %13, ptr %__F4, align 8, !dbg !1243
  %14 = load ptr, ptr %__F4, align 8, !dbg !1243
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI, ptr noundef @__SCT__apic_call_send_IPI, ptr noundef %14) #7, !dbg !1243
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F4) #6, !dbg !1244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F5) #6, !dbg !1245
  call void @llvm.dbg.declare(metadata ptr %__F5, metadata !1215, metadata !DIExpression()), !dbg !1245
  %15 = load ptr, ptr @apic, align 8, !dbg !1245
  %send_IPI_mask = getelementptr inbounds %struct.apic, ptr %15, i32 0, i32 7, !dbg !1245
  %16 = load ptr, ptr %send_IPI_mask, align 8, !dbg !1245
  store ptr %16, ptr %__F5, align 8, !dbg !1245
  %17 = load ptr, ptr %__F5, align 8, !dbg !1245
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI_mask, ptr noundef @__SCT__apic_call_send_IPI_mask, ptr noundef %17) #7, !dbg !1245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F5) #6, !dbg !1246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F6) #6, !dbg !1247
  call void @llvm.dbg.declare(metadata ptr %__F6, metadata !1217, metadata !DIExpression()), !dbg !1247
  %18 = load ptr, ptr @apic, align 8, !dbg !1247
  %send_IPI_mask_allbutself = getelementptr inbounds %struct.apic, ptr %18, i32 0, i32 8, !dbg !1247
  %19 = load ptr, ptr %send_IPI_mask_allbutself, align 8, !dbg !1247
  store ptr %19, ptr %__F6, align 8, !dbg !1247
  %20 = load ptr, ptr %__F6, align 8, !dbg !1247
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI_mask_allbutself, ptr noundef @__SCT__apic_call_send_IPI_mask_allbutself, ptr noundef %20) #7, !dbg !1247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F6) #6, !dbg !1248
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F7) #6, !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %__F7, metadata !1219, metadata !DIExpression()), !dbg !1249
  %21 = load ptr, ptr @apic, align 8, !dbg !1249
  %send_IPI_allbutself = getelementptr inbounds %struct.apic, ptr %21, i32 0, i32 9, !dbg !1249
  %22 = load ptr, ptr %send_IPI_allbutself, align 8, !dbg !1249
  store ptr %22, ptr %__F7, align 8, !dbg !1249
  %23 = load ptr, ptr %__F7, align 8, !dbg !1249
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI_allbutself, ptr noundef @__SCT__apic_call_send_IPI_allbutself, ptr noundef %23) #7, !dbg !1249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F7) #6, !dbg !1250
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F8) #6, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %__F8, metadata !1221, metadata !DIExpression()), !dbg !1251
  %24 = load ptr, ptr @apic, align 8, !dbg !1251
  %send_IPI_all = getelementptr inbounds %struct.apic, ptr %24, i32 0, i32 10, !dbg !1251
  %25 = load ptr, ptr %send_IPI_all, align 8, !dbg !1251
  store ptr %25, ptr %__F8, align 8, !dbg !1251
  %26 = load ptr, ptr %__F8, align 8, !dbg !1251
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI_all, ptr noundef @__SCT__apic_call_send_IPI_all, ptr noundef %26) #7, !dbg !1251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F8) #6, !dbg !1252
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F9) #6, !dbg !1253
  call void @llvm.dbg.declare(metadata ptr %__F9, metadata !1223, metadata !DIExpression()), !dbg !1253
  %27 = load ptr, ptr @apic, align 8, !dbg !1253
  %send_IPI_self = getelementptr inbounds %struct.apic, ptr %27, i32 0, i32 11, !dbg !1253
  %28 = load ptr, ptr %send_IPI_self, align 8, !dbg !1253
  store ptr %28, ptr %__F9, align 8, !dbg !1253
  %29 = load ptr, ptr %__F9, align 8, !dbg !1253
  call void @__static_call_update(ptr noundef @__SCK__apic_call_send_IPI_self, ptr noundef @__SCT__apic_call_send_IPI_self, ptr noundef %29) #7, !dbg !1253
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F9) #6, !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F10) #6, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %__F10, metadata !1225, metadata !DIExpression()), !dbg !1255
  %30 = load ptr, ptr @apic, align 8, !dbg !1255
  %icr_read = getelementptr inbounds %struct.apic, ptr %30, i32 0, i32 15, !dbg !1255
  %31 = load ptr, ptr %icr_read, align 8, !dbg !1255
  store ptr %31, ptr %__F10, align 8, !dbg !1255
  %32 = load ptr, ptr %__F10, align 8, !dbg !1255
  call void @__static_call_update(ptr noundef @__SCK__apic_call_icr_read, ptr noundef @__SCT__apic_call_icr_read, ptr noundef %32) #7, !dbg !1255
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F10) #6, !dbg !1256
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F11) #6, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %__F11, metadata !1227, metadata !DIExpression()), !dbg !1257
  %33 = load ptr, ptr @apic, align 8, !dbg !1257
  %icr_write = getelementptr inbounds %struct.apic, ptr %33, i32 0, i32 16, !dbg !1257
  %34 = load ptr, ptr %icr_write, align 8, !dbg !1257
  store ptr %34, ptr %__F11, align 8, !dbg !1257
  %35 = load ptr, ptr %__F11, align 8, !dbg !1257
  call void @__static_call_update(ptr noundef @__SCK__apic_call_icr_write, ptr noundef @__SCT__apic_call_icr_write, ptr noundef %35) #7, !dbg !1257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F11) #6, !dbg !1258
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F12) #6, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %__F12, metadata !1229, metadata !DIExpression()), !dbg !1259
  %36 = load ptr, ptr @apic, align 8, !dbg !1259
  %wait_icr_idle = getelementptr inbounds %struct.apic, ptr %36, i32 0, i32 4, !dbg !1259
  %37 = load ptr, ptr %wait_icr_idle, align 8, !dbg !1259
  store ptr %37, ptr %__F12, align 8, !dbg !1259
  %38 = load ptr, ptr %__F12, align 8, !dbg !1259
  call void @__static_call_update(ptr noundef @__SCK__apic_call_wait_icr_idle, ptr noundef @__SCT__apic_call_wait_icr_idle, ptr noundef %38) #7, !dbg !1259
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F12) #6, !dbg !1260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F13) #6, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %__F13, metadata !1231, metadata !DIExpression()), !dbg !1261
  %39 = load ptr, ptr @apic, align 8, !dbg !1261
  %wakeup_secondary_cpu = getelementptr inbounds %struct.apic, ptr %39, i32 0, i32 28, !dbg !1261
  %40 = load ptr, ptr %wakeup_secondary_cpu, align 8, !dbg !1261
  store ptr %40, ptr %__F13, align 8, !dbg !1261
  %41 = load ptr, ptr %__F13, align 8, !dbg !1261
  call void @__static_call_update(ptr noundef @__SCK__apic_call_wakeup_secondary_cpu, ptr noundef @__SCT__apic_call_wakeup_secondary_cpu, ptr noundef %41) #7, !dbg !1261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F13) #6, !dbg !1262
  call void @llvm.lifetime.start.p0(i64 8, ptr %__F14) #6, !dbg !1263
  call void @llvm.dbg.declare(metadata ptr %__F14, metadata !1233, metadata !DIExpression()), !dbg !1263
  %42 = load ptr, ptr @apic, align 8, !dbg !1263
  %wakeup_secondary_cpu_64 = getelementptr inbounds %struct.apic, ptr %42, i32 0, i32 29, !dbg !1263
  %43 = load ptr, ptr %wakeup_secondary_cpu_64, align 8, !dbg !1263
  store ptr %43, ptr %__F14, align 8, !dbg !1263
  %44 = load ptr, ptr %__F14, align 8, !dbg !1263
  call void @__static_call_update(ptr noundef @__SCK__apic_call_wakeup_secondary_cpu_64, ptr noundef @__SCT__apic_call_wakeup_secondary_cpu_64, ptr noundef %44) #7, !dbg !1263
  call void @llvm.lifetime.end.p0(i64 8, ptr %__F14) #6, !dbg !1264
  ret void, !dbg !1265
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !1266 dso_local i32 @_printk(ptr noundef, ...) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @apic_install_driver(ptr noundef %driver) #1 section ".init.text" align 16 !dbg !1270 {
entry:
  %driver.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  store ptr %driver, ptr %driver.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %driver.addr, metadata !1344, metadata !DIExpression()), !dbg !1345
  %0 = load ptr, ptr @apic, align 8, !dbg !1346
  %1 = load ptr, ptr %driver.addr, align 8, !dbg !1348
  %cmp = icmp eq ptr %0, %1, !dbg !1349
  br i1 %cmp, label %if.then, label %if.end, !dbg !1350

if.then:                                          ; preds = %entry
  br label %return, !dbg !1351

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %driver.addr, align 8, !dbg !1352
  store ptr %2, ptr @apic, align 8, !dbg !1353
  %3 = load ptr, ptr @apic, align 8, !dbg !1354
  %native_eoi = getelementptr inbounds %struct.apic, ptr %3, i32 0, i32 1, !dbg !1356
  %4 = load ptr, ptr %native_eoi, align 8, !dbg !1356
  %tobool = icmp ne ptr %4, null, !dbg !1354
  br i1 %tobool, label %if.end3, label %if.then1, !dbg !1357

if.then1:                                         ; preds = %if.end
  %5 = load ptr, ptr @apic, align 8, !dbg !1358
  %eoi = getelementptr inbounds %struct.apic, ptr %5, i32 0, i32 0, !dbg !1359
  %6 = load ptr, ptr %eoi, align 8, !dbg !1359
  %7 = load ptr, ptr @apic, align 8, !dbg !1360
  %native_eoi2 = getelementptr inbounds %struct.apic, ptr %7, i32 0, i32 1, !dbg !1361
  store ptr %6, ptr %native_eoi2, align 8, !dbg !1362
  br label %if.end3, !dbg !1360

if.end3:                                          ; preds = %if.then1, %if.end
  call void @restore_override_callbacks() #5, !dbg !1363
  call void @update_static_calls() #5, !dbg !1364
  br label %do.body, !dbg !1365

do.body:                                          ; preds = %if.end3
  br label %do.end, !dbg !1367

do.end:                                           ; preds = %do.body
  %8 = load ptr, ptr %driver.addr, align 8, !dbg !1365
  %name = getelementptr inbounds %struct.apic, ptr %8, i32 0, i32 30, !dbg !1365
  %9 = load ptr, ptr %name, align 8, !dbg !1365
  %call = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef %9) #5, !dbg !1365
  store i32 %call, ptr %tmp, align 4, !dbg !1367
  %10 = load i32, ptr %tmp, align 4, !dbg !1365
  br label %return, !dbg !1369

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !1369
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @restore_override_callbacks() #1 section ".init.text" align 16 !dbg !1370 {
entry:
  %0 = load ptr, ptr @__x86_apic_override, align 8, !dbg !1371
  %tobool = icmp ne ptr %0, null, !dbg !1371
  br i1 %tobool, label %if.then, label %if.end, !dbg !1373

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @__x86_apic_override, align 8, !dbg !1371
  %2 = load ptr, ptr @apic, align 8, !dbg !1371
  %eoi = getelementptr inbounds %struct.apic, ptr %2, i32 0, i32 0, !dbg !1371
  store ptr %1, ptr %eoi, align 8, !dbg !1371
  br label %if.end, !dbg !1371

if.end:                                           ; preds = %if.then, %entry
  %3 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 1), align 8, !dbg !1374
  %tobool1 = icmp ne ptr %3, null, !dbg !1374
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !1376

if.then2:                                         ; preds = %if.end
  %4 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 1), align 8, !dbg !1374
  %5 = load ptr, ptr @apic, align 8, !dbg !1374
  %native_eoi = getelementptr inbounds %struct.apic, ptr %5, i32 0, i32 1, !dbg !1374
  store ptr %4, ptr %native_eoi, align 8, !dbg !1374
  br label %if.end3, !dbg !1374

if.end3:                                          ; preds = %if.then2, %if.end
  %6 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 2), align 8, !dbg !1377
  %tobool4 = icmp ne ptr %6, null, !dbg !1377
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1379

if.then5:                                         ; preds = %if.end3
  %7 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 2), align 8, !dbg !1377
  %8 = load ptr, ptr @apic, align 8, !dbg !1377
  %write = getelementptr inbounds %struct.apic, ptr %8, i32 0, i32 2, !dbg !1377
  store ptr %7, ptr %write, align 8, !dbg !1377
  br label %if.end6, !dbg !1377

if.end6:                                          ; preds = %if.then5, %if.end3
  %9 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 3), align 8, !dbg !1380
  %tobool7 = icmp ne ptr %9, null, !dbg !1380
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !1382

if.then8:                                         ; preds = %if.end6
  %10 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 3), align 8, !dbg !1380
  %11 = load ptr, ptr @apic, align 8, !dbg !1380
  %read = getelementptr inbounds %struct.apic, ptr %11, i32 0, i32 3, !dbg !1380
  store ptr %10, ptr %read, align 8, !dbg !1380
  br label %if.end9, !dbg !1380

if.end9:                                          ; preds = %if.then8, %if.end6
  %12 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 4), align 8, !dbg !1383
  %tobool10 = icmp ne ptr %12, null, !dbg !1383
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !1385

if.then11:                                        ; preds = %if.end9
  %13 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 4), align 8, !dbg !1383
  %14 = load ptr, ptr @apic, align 8, !dbg !1383
  %send_IPI = getelementptr inbounds %struct.apic, ptr %14, i32 0, i32 6, !dbg !1383
  store ptr %13, ptr %send_IPI, align 8, !dbg !1383
  br label %if.end12, !dbg !1383

if.end12:                                         ; preds = %if.then11, %if.end9
  %15 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 5), align 8, !dbg !1386
  %tobool13 = icmp ne ptr %15, null, !dbg !1386
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !1388

if.then14:                                        ; preds = %if.end12
  %16 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 5), align 8, !dbg !1386
  %17 = load ptr, ptr @apic, align 8, !dbg !1386
  %send_IPI_mask = getelementptr inbounds %struct.apic, ptr %17, i32 0, i32 7, !dbg !1386
  store ptr %16, ptr %send_IPI_mask, align 8, !dbg !1386
  br label %if.end15, !dbg !1386

if.end15:                                         ; preds = %if.then14, %if.end12
  %18 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 6), align 8, !dbg !1389
  %tobool16 = icmp ne ptr %18, null, !dbg !1389
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1391

if.then17:                                        ; preds = %if.end15
  %19 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 6), align 8, !dbg !1389
  %20 = load ptr, ptr @apic, align 8, !dbg !1389
  %send_IPI_mask_allbutself = getelementptr inbounds %struct.apic, ptr %20, i32 0, i32 8, !dbg !1389
  store ptr %19, ptr %send_IPI_mask_allbutself, align 8, !dbg !1389
  br label %if.end18, !dbg !1389

if.end18:                                         ; preds = %if.then17, %if.end15
  %21 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 7), align 8, !dbg !1392
  %tobool19 = icmp ne ptr %21, null, !dbg !1392
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !1394

if.then20:                                        ; preds = %if.end18
  %22 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 7), align 8, !dbg !1392
  %23 = load ptr, ptr @apic, align 8, !dbg !1392
  %send_IPI_allbutself = getelementptr inbounds %struct.apic, ptr %23, i32 0, i32 9, !dbg !1392
  store ptr %22, ptr %send_IPI_allbutself, align 8, !dbg !1392
  br label %if.end21, !dbg !1392

if.end21:                                         ; preds = %if.then20, %if.end18
  %24 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 8), align 8, !dbg !1395
  %tobool22 = icmp ne ptr %24, null, !dbg !1395
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !1397

if.then23:                                        ; preds = %if.end21
  %25 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 8), align 8, !dbg !1395
  %26 = load ptr, ptr @apic, align 8, !dbg !1395
  %send_IPI_all = getelementptr inbounds %struct.apic, ptr %26, i32 0, i32 10, !dbg !1395
  store ptr %25, ptr %send_IPI_all, align 8, !dbg !1395
  br label %if.end24, !dbg !1395

if.end24:                                         ; preds = %if.then23, %if.end21
  %27 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 9), align 8, !dbg !1398
  %tobool25 = icmp ne ptr %27, null, !dbg !1398
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !1400

if.then26:                                        ; preds = %if.end24
  %28 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 9), align 8, !dbg !1398
  %29 = load ptr, ptr @apic, align 8, !dbg !1398
  %send_IPI_self = getelementptr inbounds %struct.apic, ptr %29, i32 0, i32 11, !dbg !1398
  store ptr %28, ptr %send_IPI_self, align 8, !dbg !1398
  br label %if.end27, !dbg !1398

if.end27:                                         ; preds = %if.then26, %if.end24
  %30 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 10), align 8, !dbg !1401
  %tobool28 = icmp ne ptr %30, null, !dbg !1401
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !1403

if.then29:                                        ; preds = %if.end27
  %31 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 10), align 8, !dbg !1401
  %32 = load ptr, ptr @apic, align 8, !dbg !1401
  %icr_read = getelementptr inbounds %struct.apic, ptr %32, i32 0, i32 15, !dbg !1401
  store ptr %31, ptr %icr_read, align 8, !dbg !1401
  br label %if.end30, !dbg !1401

if.end30:                                         ; preds = %if.then29, %if.end27
  %33 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 11), align 8, !dbg !1404
  %tobool31 = icmp ne ptr %33, null, !dbg !1404
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !1406

if.then32:                                        ; preds = %if.end30
  %34 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 11), align 8, !dbg !1404
  %35 = load ptr, ptr @apic, align 8, !dbg !1404
  %icr_write = getelementptr inbounds %struct.apic, ptr %35, i32 0, i32 16, !dbg !1404
  store ptr %34, ptr %icr_write, align 8, !dbg !1404
  br label %if.end33, !dbg !1404

if.end33:                                         ; preds = %if.then32, %if.end30
  %36 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 12), align 8, !dbg !1407
  %tobool34 = icmp ne ptr %36, null, !dbg !1407
  br i1 %tobool34, label %if.then35, label %if.end36, !dbg !1409

if.then35:                                        ; preds = %if.end33
  %37 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 12), align 8, !dbg !1407
  %38 = load ptr, ptr @apic, align 8, !dbg !1407
  %wakeup_secondary_cpu = getelementptr inbounds %struct.apic, ptr %38, i32 0, i32 28, !dbg !1407
  store ptr %37, ptr %wakeup_secondary_cpu, align 8, !dbg !1407
  br label %if.end36, !dbg !1407

if.end36:                                         ; preds = %if.then35, %if.end33
  %39 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 13), align 8, !dbg !1410
  %tobool37 = icmp ne ptr %39, null, !dbg !1410
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1412

if.then38:                                        ; preds = %if.end36
  %40 = load ptr, ptr getelementptr inbounds (%struct.apic_override, ptr @__x86_apic_override, i32 0, i32 13), align 8, !dbg !1410
  %41 = load ptr, ptr @apic, align 8, !dbg !1410
  %wakeup_secondary_cpu_64 = getelementptr inbounds %struct.apic, ptr %41, i32 0, i32 29, !dbg !1410
  store ptr %40, ptr %wakeup_secondary_cpu_64, align 8, !dbg !1410
  br label %if.end39, !dbg !1410

if.end39:                                         ; preds = %if.then38, %if.end36
  ret void, !dbg !1413
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1414 dso_local void @__static_call_update(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_eoi() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_native_eoi() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_write(i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_read(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI(i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_mask_allbutself(ptr noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_allbutself(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_send_IPI_all(i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @__SCT__apic_call_icr_read() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_icr_write(i32 noundef, i32 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @__SCT__apic_call_wait_icr_idle() #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_wakeup_secondary_cpu(i32 noundef, i64 noundef) #0

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__apic_call_wakeup_secondary_cpu_64(i32 noundef, i64 noundef) #0

attributes #0 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noredzone }
attributes #6 = { nounwind }
attributes #7 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189}
!llvm.ident = !{!1190}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__SCK__apic_call_eoi", scope: !2, file: !3, line: 17, type: !33, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF arch/x86/kernel/apic/.init.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22arch/x86/kernel/apic/init\22 -D KBUILD_BASENAME=\22init\22 -D KBUILD_MODNAME=\22init\22 -D __KBUILD_MODNAME=kmod_init -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o arch/x86/kernel/apic/init.ll arch/x86/kernel/apic/init.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !30, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "arch/x86/kernel/apic/init.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18d733dc3df754fdaa7ba59f6d41ce50")
!4 = !{!5, !13, !19}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "apic_delivery_modes", file: !20, line: 433, baseType: !7, size: 32, elements: !21)
!20 = !DIFile(filename: "./arch/x86/include/asm/apicdef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bdaaaf45bbaf966a6fbb9825227d537")
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DIEnumerator(name: "APIC_DELIVERY_MODE_FIXED", value: 0)
!23 = !DIEnumerator(name: "APIC_DELIVERY_MODE_LOWESTPRIO", value: 1)
!24 = !DIEnumerator(name: "APIC_DELIVERY_MODE_SMI", value: 2)
!25 = !DIEnumerator(name: "APIC_DELIVERY_MODE_NMI", value: 4)
!26 = !DIEnumerator(name: "APIC_DELIVERY_MODE_INIT", value: 5)
!27 = !DIEnumerator(name: "APIC_DELIVERY_MODE_EXTINT", value: 7)
!28 = !{!29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!30 = !{!0, !31, !1093, !1095, !1097, !1099, !1101, !1103, !1105, !1107, !1109, !1111, !1113, !1115, !1117, !1119, !1121, !1123, !1128, !1133}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "__SCK__apic_call_native_eoi", scope: !2, file: !3, line: 18, type: !33, isLocal: false, isDefinition: true)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_key", file: !34, line: 61, size: 128, elements: !35)
!34 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!35 = !{!36, !37}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !33, file: !34, line: 62, baseType: !29, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, scope: !33, file: !34, line: 63, baseType: !38, size: 64, offset: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !33, file: !34, line: 63, size: 64, elements: !39)
!39 = !{!40, !42, !1092}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !38, file: !34, line: 65, baseType: !41, size: 64)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "mods", scope: !38, file: !34, line: 66, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_mod", file: !45, line: 169, size: 192, elements: !46)
!45 = !DIFile(filename: "./include/linux/static_call.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4f20b8b91766caa416ca409c84dcc807")
!46 = !{!47, !48, !1091}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 170, baseType: !43, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !44, file: !45, line: 171, baseType: !49, size: 64, offset: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !51)
!51 = !{!52, !53, !60, !65, !745, !771, !772, !773, !774, !778, !781, !782, !783, !836, !837, !838, !839, !840, !841, !842, !843, !846, !850, !870, !888, !889, !890, !891, !900, !924, !925, !928, !931, !932, !933, !934, !935, !936, !937, !942, !943, !1050, !1058, !1059, !1060, !1062, !1066, !1067, !1071, !1072, !1073, !1074, !1076, !1077, !1078, !1084, !1085, !1086, !1090}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !50, file: !6, line: 403, baseType: !5, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !50, file: !6, line: 406, baseType: !54, size: 128, offset: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !55, line: 190, size: 128, elements: !56)
!55 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!56 = !{!57, !59}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !55, line: 191, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !54, file: !55, line: 191, baseType: !58, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !50, file: !6, line: 409, baseType: !61, size: 448, offset: 192)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 448, elements: !63)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!63 = !{!64}
!64 = !DISubrange(count: 56)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !50, file: !6, line: 417, baseType: !66, size: 768, offset: 640)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !67)
!67 = !{!68, !728, !729, !730, !733}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !66, file: !6, line: 46, baseType: !69, size: 512)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !70, line: 64, size: 512, elements: !71)
!70 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!71 = !{!72, !75, !76, !78, !168, !599, !713, !723, !724, !725, !726, !727}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !70, line: 65, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !69, file: !70, line: 66, baseType: !54, size: 128, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !69, file: !70, line: 67, baseType: !77, size: 64, offset: 192)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !69, file: !70, line: 68, baseType: !79, size: 64, offset: 256)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !70, line: 168, size: 768, elements: !81)
!81 = !{!82, !83, !127, !128}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !80, file: !70, line: 169, baseType: !54, size: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !80, file: !70, line: 170, baseType: !84, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !85, line: 29, baseType: !86)
!85 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !85, line: 17, size: 32, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !85, line: 18, baseType: !89, size: 32)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !86, file: !85, line: 18, size: 32, elements: !90)
!90 = !{!91}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !89, file: !85, line: 19, baseType: !92, size: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !93, line: 14, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !92, file: !93, line: 15, baseType: !96, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !97, line: 44, baseType: !98)
!97 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !97, line: 14, size: 32, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !97, line: 15, baseType: !101, size: 32)
!101 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !98, file: !97, line: 15, size: 32, elements: !102)
!102 = !{!103, !109, !119}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !101, file: !97, line: 16, baseType: !104, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !55, line: 174, baseType: !105)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 172, size: 32, elements: !106)
!106 = !{!107}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !105, file: !55, line: 173, baseType: !108, size: 32)
!108 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !97, line: 24, baseType: !110, size: 16)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !97, line: 24, size: 16, elements: !111)
!111 = !{!112, !118}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !110, file: !97, line: 25, baseType: !113, size: 8)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !114, line: 17, baseType: !115)
!114 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !116, line: 21, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!117 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !110, file: !97, line: 26, baseType: !113, size: 8, offset: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !97, line: 28, baseType: !120, size: 32)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !97, line: 28, size: 32, elements: !121)
!121 = !{!122, !126}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !120, file: !97, line: 29, baseType: !123, size: 16)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !114, line: 19, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !125)
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !120, file: !97, line: 30, baseType: !123, size: 16, offset: 16)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !80, file: !70, line: 171, baseType: !69, size: 512, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !80, file: !70, line: 172, baseType: !129, size: 64, offset: 704)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !70, line: 133, size: 192, elements: !132)
!132 = !{!133, !140, !145}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !131, file: !70, line: 134, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DISubroutineType(types: !137)
!137 = !{!108, !138}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !70, line: 135, baseType: !141, size: 64, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!73, !138}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !131, file: !70, line: 136, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!108, !138, !150}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !70, line: 125, size: 20736, elements: !152)
!152 = !{!153, !158, !162, !163, !167}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !151, file: !70, line: 126, baseType: !154, size: 192)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 192, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!156 = !{!157}
!157 = !DISubrange(count: 3)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !151, file: !70, line: 127, baseType: !159, size: 4096, offset: 192)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 4096, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !151, file: !70, line: 128, baseType: !108, size: 32, offset: 4288)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !151, file: !70, line: 129, baseType: !164, size: 16384, offset: 4320)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 16384, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 2048)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !151, file: !70, line: 130, baseType: !108, size: 32, offset: 20704)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !69, file: !70, line: 69, baseType: !169, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !70, line: 116, size: 384, elements: !172)
!172 = !{!173, !177, !205, !547, !577, !581}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !171, file: !70, line: 117, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !77}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !171, file: !70, line: 118, baseType: !178, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !181, line: 254, size: 128, elements: !182)
!181 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!182 = !{!183, !198}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !180, file: !181, line: 255, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !77, !192, !155}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !55, line: 66, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !189, line: 73, baseType: !190)
!189 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !189, line: 15, baseType: !191)
!191 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !181, line: 30, size: 128, elements: !194)
!194 = !{!195, !196}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !193, file: !181, line: 31, baseType: !73, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !193, file: !181, line: 32, baseType: !197, size: 16, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !55, line: 24, baseType: !125)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !180, file: !181, line: 256, baseType: !199, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!187, !77, !192, !73, !202}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !55, line: 61, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !189, line: 72, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !189, line: 16, baseType: !41)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !171, file: !70, line: 119, baseType: !206, size: 64, offset: 128)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !181, line: 84, size: 320, elements: !210)
!210 = !{!211, !212, !216, !543, !545}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !209, file: !181, line: 85, baseType: !73, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !209, file: !181, line: 86, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!197, !77, !192, !108}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !209, file: !181, line: 88, baseType: !217, size: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!197, !77, !220, !108}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !181, line: 175, size: 512, elements: !222)
!222 = !{!223, !224, !225, !226, !233, !243, !244}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !221, file: !181, line: 176, baseType: !193, size: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !221, file: !181, line: 177, baseType: !202, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !221, file: !181, line: 178, baseType: !29, size: 64, offset: 192)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !221, file: !181, line: 179, baseType: !227, size: 64, offset: 256)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !232, line: 32, flags: DIFlagFwdDecl)
!232 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!233 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !221, file: !181, line: 180, baseType: !234, size: 64, offset: 320)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!187, !237, !77, !220, !155, !240, !202}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !239, line: 537, flags: DIFlagFwdDecl)
!239 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !55, line: 52, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !189, line: 88, baseType: !242)
!242 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !221, file: !181, line: 182, baseType: !234, size: 64, offset: 384)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !221, file: !181, line: 184, baseType: !245, size: 64, offset: 448)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!108, !237, !77, !220, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !232, line: 625, size: 1344, elements: !250)
!250 = !{!251, !268, !491, !497, !504, !505, !510, !513, !525, !526, !529, !533, !534, !535, !536, !537, !541}
!251 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !232, line: 628, baseType: !252, size: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !232, line: 628, size: 128, elements: !253)
!253 = !{!254, !259}
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !252, file: !232, line: 629, baseType: !255, size: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !252, file: !232, line: 629, size: 128, elements: !256)
!256 = !{!257, !258}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !255, file: !232, line: 631, baseType: !41, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !255, file: !232, line: 632, baseType: !41, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !252, file: !232, line: 635, baseType: !260, size: 128, align: 64)
!260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !55, line: 232, size: 128, align: 64, elements: !261)
!261 = !{!262, !264}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !260, file: !55, line: 233, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !260, file: !55, line: 234, baseType: !265, size: 64, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !263}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !249, file: !232, line: 639, baseType: !269, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !232, line: 733, size: 10240, elements: !271)
!271 = !{!272, !487}
!272 = !DIDerivedType(tag: DW_TAG_member, scope: !270, file: !232, line: 734, baseType: !273, size: 10240)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !232, line: 734, size: 10240, elements: !274)
!274 = !{!275, !279, !293, !297, !298, !299, !300, !301, !302, !310, !311, !312, !321, !322, !331, !332, !333, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !380, !394, !397, !452, !453, !454, !457, !461, !462, !465, !466, !467, !474, !475}
!275 = !DIDerivedType(tag: DW_TAG_member, scope: !273, file: !232, line: 739, baseType: !276, size: 512, align: 512)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !273, file: !232, line: 739, size: 512, align: 512, elements: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !276, file: !232, line: 747, baseType: !104, size: 32)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !273, file: !232, line: 750, baseType: !280, size: 128, offset: 512)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !281, line: 218, size: 128, elements: !282)
!281 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!282 = !{!283, !291, !292}
!283 = !DIDerivedType(tag: DW_TAG_member, scope: !280, file: !281, line: 219, baseType: !284, size: 32)
!284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !280, file: !281, line: 219, size: 32, elements: !285)
!285 = !{!286, !287}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !284, file: !281, line: 220, baseType: !84, size: 32)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !284, file: !281, line: 221, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !281, line: 197, baseType: !289)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !281, line: 197, elements: !290)
!290 = !{}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !280, file: !281, line: 223, baseType: !7, size: 32, offset: 32)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !280, file: !281, line: 224, baseType: !29, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !273, file: !232, line: 752, baseType: !294, size: 64, offset: 640)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!41, !237, !41, !41, !41, !41}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !273, file: !232, line: 756, baseType: !41, size: 64, offset: 704)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !273, file: !232, line: 757, baseType: !41, size: 64, offset: 768)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !273, file: !232, line: 760, baseType: !41, size: 64, offset: 832)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !273, file: !232, line: 761, baseType: !41, size: 64, offset: 896)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !273, file: !232, line: 763, baseType: !41, size: 64, offset: 960)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !273, file: !232, line: 764, baseType: !303, size: 64, offset: 1024)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !239, line: 299, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !239, line: 299, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !305, file: !239, line: 299, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !309, line: 18, baseType: !41)
!309 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!310 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !273, file: !232, line: 773, baseType: !104, size: 32, offset: 1088)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !273, file: !232, line: 785, baseType: !104, size: 32, offset: 1120)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !273, file: !232, line: 795, baseType: !313, size: 64, offset: 1152)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !232, line: 726, size: 128, elements: !315)
!315 = !{!316, !320}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !314, file: !232, line: 727, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !114, line: 23, baseType: !318)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !319)
!319 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !314, file: !232, line: 728, baseType: !108, size: 32, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !273, file: !232, line: 801, baseType: !41, size: 64, offset: 1216)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !273, file: !232, line: 804, baseType: !323, size: 64, offset: 1280)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !324, line: 13, baseType: !325)
!324 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !55, line: 181, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 179, size: 64, elements: !327)
!327 = !{!328}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !326, file: !55, line: 180, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !114, line: 22, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !242)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !273, file: !232, line: 806, baseType: !108, size: 32, offset: 1344)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !273, file: !232, line: 808, baseType: !84, size: 32, offset: 1376)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !273, file: !232, line: 823, baseType: !334, size: 320, offset: 1408)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !335, line: 48, size: 320, elements: !336)
!335 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!336 = !{!337, !338, !339, !344, !346}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !334, file: !335, line: 49, baseType: !323, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !334, file: !335, line: 55, baseType: !323, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !334, file: !335, line: 57, baseType: !340, size: 32, offset: 128)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !341, line: 15, size: 32, elements: !342)
!341 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!342 = !{!343}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !340, file: !341, line: 20, baseType: !104, size: 32)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !334, file: !335, line: 59, baseType: !345, size: 32, offset: 160)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !93, line: 23, baseType: !92)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !334, file: !335, line: 60, baseType: !54, size: 128, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !273, file: !232, line: 825, baseType: !54, size: 128, offset: 1728)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !273, file: !232, line: 845, baseType: !108, size: 32, offset: 1856)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !273, file: !232, line: 849, baseType: !41, size: 64, offset: 1920)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !273, file: !232, line: 850, baseType: !41, size: 64, offset: 1984)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !273, file: !232, line: 852, baseType: !41, size: 64, offset: 2048)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !273, file: !232, line: 853, baseType: !41, size: 64, offset: 2112)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !273, file: !232, line: 854, baseType: !325, size: 64, offset: 2176)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !273, file: !232, line: 855, baseType: !41, size: 64, offset: 2240)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !273, file: !232, line: 856, baseType: !41, size: 64, offset: 2304)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !273, file: !232, line: 857, baseType: !41, size: 64, offset: 2368)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !273, file: !232, line: 858, baseType: !41, size: 64, offset: 2432)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !273, file: !232, line: 865, baseType: !359, size: 32, offset: 2496)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !360, line: 69, baseType: !361)
!360 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !360, line: 64, size: 32, elements: !362)
!362 = !{!363}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !361, file: !360, line: 65, baseType: !7, size: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !273, file: !232, line: 867, baseType: !84, size: 32, offset: 2528)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !273, file: !232, line: 869, baseType: !41, size: 64, offset: 2560)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !273, file: !232, line: 869, baseType: !41, size: 64, offset: 2624)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !273, file: !232, line: 869, baseType: !41, size: 64, offset: 2688)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !273, file: !232, line: 869, baseType: !41, size: 64, offset: 2752)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !273, file: !232, line: 870, baseType: !41, size: 64, offset: 2816)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !273, file: !232, line: 870, baseType: !41, size: 64, offset: 2880)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !273, file: !232, line: 870, baseType: !41, size: 64, offset: 2944)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !273, file: !232, line: 871, baseType: !41, size: 64, offset: 3008)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !273, file: !232, line: 871, baseType: !41, size: 64, offset: 3072)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !273, file: !232, line: 871, baseType: !41, size: 64, offset: 3136)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !273, file: !232, line: 871, baseType: !41, size: 64, offset: 3200)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !273, file: !232, line: 873, baseType: !377, size: 3328, offset: 3264)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 3328, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 52)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !273, file: !232, line: 875, baseType: !381, size: 1280, offset: 6592)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 1280, elements: !392)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !383, line: 22, size: 320, elements: !384)
!383 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!384 = !{!385, !386, !387, !388}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !382, file: !383, line: 23, baseType: !345, size: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !382, file: !383, line: 24, baseType: !329, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !382, file: !383, line: 26, baseType: !54, size: 128, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !382, file: !383, line: 28, baseType: !389, size: 64, offset: 256)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !114, line: 20, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !116, line: 26, baseType: !108)
!392 = !{!393}
!393 = !DISubrange(count: 4)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !273, file: !232, line: 877, baseType: !395, size: 64, offset: 7872)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !232, line: 877, flags: DIFlagFwdDecl)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !273, file: !232, line: 880, baseType: !398, size: 1088, offset: 7936)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !399, line: 72, baseType: !400)
!399 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !399, line: 23, size: 1088, elements: !401)
!401 = !{!402, !403, !404, !405, !406, !409, !410, !418, !419, !446, !447, !448}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !400, file: !399, line: 28, baseType: !317, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !400, file: !399, line: 38, baseType: !325, size: 64, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !400, file: !399, line: 40, baseType: !41, size: 64, offset: 128)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !400, file: !399, line: 43, baseType: !334, size: 320, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !400, file: !399, line: 44, baseType: !407, size: 64, offset: 512)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !399, line: 44, flags: DIFlagFwdDecl)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !400, file: !399, line: 48, baseType: !41, size: 64, offset: 576)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !400, file: !399, line: 59, baseType: !411, size: 256, offset: 640)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !412, line: 66, size: 256, elements: !413)
!412 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!413 = !{!414, !415, !416, !417}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !411, file: !412, line: 67, baseType: !323, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !411, file: !412, line: 68, baseType: !345, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !411, file: !412, line: 70, baseType: !340, size: 32, offset: 96)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !411, file: !412, line: 72, baseType: !54, size: 128, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !400, file: !399, line: 60, baseType: !29, size: 64, offset: 896)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !400, file: !399, line: 61, baseType: !420, size: 64, offset: 960)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !423, line: 13, size: 1216, elements: !424)
!423 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!424 = !{!425, !426, !427, !428, !429, !430, !431, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !422, file: !423, line: 14, baseType: !29, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !422, file: !423, line: 15, baseType: !41, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !422, file: !423, line: 17, baseType: !41, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !422, file: !423, line: 17, baseType: !41, size: 64, offset: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !422, file: !423, line: 18, baseType: !41, size: 64, offset: 256)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !422, file: !423, line: 18, baseType: !41, size: 64, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !422, file: !423, line: 19, baseType: !432, size: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !422, file: !423, line: 21, baseType: !191, size: 64, offset: 448)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !422, file: !423, line: 23, baseType: !191, size: 64, offset: 512)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !422, file: !423, line: 24, baseType: !191, size: 64, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !422, file: !423, line: 25, baseType: !191, size: 64, offset: 640)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !422, file: !423, line: 26, baseType: !191, size: 64, offset: 704)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !422, file: !423, line: 27, baseType: !191, size: 64, offset: 768)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !422, file: !423, line: 28, baseType: !191, size: 64, offset: 832)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !422, file: !423, line: 29, baseType: !191, size: 64, offset: 896)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !422, file: !423, line: 30, baseType: !191, size: 64, offset: 960)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !422, file: !423, line: 31, baseType: !191, size: 64, offset: 1024)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !422, file: !423, line: 32, baseType: !191, size: 64, offset: 1088)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !422, file: !423, line: 33, baseType: !191, size: 64, offset: 1152)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !400, file: !399, line: 63, baseType: !104, size: 32, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !400, file: !399, line: 69, baseType: !123, size: 16, offset: 1056)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !400, file: !399, line: 70, baseType: !449, size: 16, offset: 1072)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !114, line: 18, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !116, line: 23, baseType: !451)
!451 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !273, file: !232, line: 882, baseType: !41, size: 64, offset: 9024)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !273, file: !232, line: 885, baseType: !84, size: 32, offset: 9088)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !273, file: !232, line: 886, baseType: !455, size: 64, offset: 9152)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !232, line: 732, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !273, file: !232, line: 901, baseType: !458, size: 64, offset: 9216)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !460, line: 18, flags: DIFlagFwdDecl)
!460 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!461 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !273, file: !232, line: 904, baseType: !237, size: 64, offset: 9280)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !273, file: !232, line: 906, baseType: !463, size: 64, offset: 9344)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !232, line: 906, flags: DIFlagFwdDecl)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !273, file: !232, line: 930, baseType: !104, size: 32, offset: 9408)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !273, file: !232, line: 933, baseType: !104, size: 32, offset: 9440)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !273, file: !232, line: 935, baseType: !468, size: 64, offset: 9472)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !469, line: 103, size: 64, elements: !470)
!469 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!470 = !{!471}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !468, file: !469, line: 104, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !469, line: 101, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !273, file: !232, line: 940, baseType: !323, size: 64, offset: 9536)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !273, file: !232, line: 942, baseType: !476, size: 256, offset: 9600)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !477, line: 98, size: 256, elements: !478)
!477 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!478 = !{!479, !480, !481}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !476, file: !477, line: 99, baseType: !323, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !476, file: !477, line: 100, baseType: !54, size: 128, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !476, file: !477, line: 101, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !477, line: 21, baseType: !483)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !486}
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !270, file: !232, line: 986, baseType: !488, offset: 10240)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: -1)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !249, file: !232, line: 640, baseType: !492, size: 64, offset: 192)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !239, line: 297, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !239, line: 297, size: 64, elements: !494)
!494 = !{!495}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !493, file: !239, line: 297, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !309, line: 19, baseType: !41)
!497 = !DIDerivedType(tag: DW_TAG_member, scope: !249, file: !232, line: 646, baseType: !498, size: 64, offset: 256)
!498 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !249, file: !232, line: 646, size: 64, elements: !499)
!499 = !{!500, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !498, file: !232, line: 647, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !502)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !232, line: 542, baseType: !41)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !498, file: !232, line: 648, baseType: !502, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !249, file: !232, line: 666, baseType: !108, size: 32, offset: 320)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !249, file: !232, line: 667, baseType: !506, size: 64, offset: 384)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !232, line: 579, size: 320, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !507, file: !232, line: 580, baseType: !334, size: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !249, file: !232, line: 670, baseType: !511, size: 8, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !55, line: 35, baseType: !512)
!512 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !249, file: !232, line: 681, baseType: !514, size: 256, offset: 512)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !249, file: !232, line: 678, size: 256, elements: !515)
!515 = !{!516, !524}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !514, file: !232, line: 679, baseType: !517, size: 192, align: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !518, line: 5, size: 192, align: 64, elements: !519)
!518 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!519 = !{!520, !521, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !517, file: !518, line: 6, baseType: !41, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !517, file: !518, line: 7, baseType: !522, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !517, file: !518, line: 8, baseType: !522, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !514, file: !232, line: 680, baseType: !41, size: 64, offset: 192)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !249, file: !232, line: 689, baseType: !54, size: 128, offset: 768)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !249, file: !232, line: 691, baseType: !527, size: 64, offset: 896)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !232, line: 691, flags: DIFlagFwdDecl)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !249, file: !232, line: 694, baseType: !530, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !532)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !232, line: 694, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !249, file: !232, line: 697, baseType: !41, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !249, file: !232, line: 699, baseType: !237, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !249, file: !232, line: 700, baseType: !29, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !249, file: !232, line: 711, baseType: !323, size: 64, offset: 1216)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !249, file: !232, line: 717, baseType: !538, size: 64, offset: 1280)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !540, line: 54, flags: DIFlagFwdDecl)
!540 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !249, file: !232, line: 722, baseType: !542, offset: 1344)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !232, line: 570, elements: !290)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !209, file: !181, line: 90, baseType: !544, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !209, file: !181, line: 91, baseType: !546, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !171, file: !70, line: 120, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DISubroutineType(types: !550)
!550 = !{!551, !138}
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !554)
!554 = !{!555, !556, !560, !563, !569, !573}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !553, file: !14, line: 40, baseType: !13, size: 32)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !553, file: !14, line: 41, baseType: !557, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{!511}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !553, file: !14, line: 42, baseType: !561, size: 64, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DISubroutineType(types: !28)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !553, file: !14, line: 43, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!432, !567}
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !553, file: !14, line: 44, baseType: !570, size: 64, offset: 256)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DISubroutineType(types: !572)
!572 = !{!432}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !553, file: !14, line: 45, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !29}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !171, file: !70, line: 121, baseType: !578, size: 64, offset: 256)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DISubroutineType(types: !580)
!580 = !{!432, !138}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !171, file: !70, line: 122, baseType: !582, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !138, !585, !592}
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !460, line: 23, baseType: !587)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 21, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !587, file: !460, line: 22, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !55, line: 37, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !189, line: 49, baseType: !7)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !460, line: 28, baseType: !594)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 26, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !594, file: !460, line: 27, baseType: !597, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !55, line: 38, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !189, line: 50, baseType: !7)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !69, file: !70, line: 70, baseType: !600, size: 64, offset: 384)
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !601, size: 64)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !602, line: 190, size: 1152, elements: !603)
!602 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!603 = !{!604, !605, !606, !607, !608, !609, !610, !611, !705, !706, !707, !708, !709, !712}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !601, file: !602, line: 191, baseType: !104, size: 32)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !601, file: !602, line: 192, baseType: !104, size: 32, offset: 32)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !601, file: !602, line: 202, baseType: !600, size: 64, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !601, file: !602, line: 203, baseType: !73, size: 64, offset: 128)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !601, file: !602, line: 205, baseType: !517, size: 192, align: 64, offset: 192)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !601, file: !602, line: 207, baseType: !432, size: 64, offset: 384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !601, file: !602, line: 208, baseType: !7, size: 32, offset: 448)
!611 = !DIDerivedType(tag: DW_TAG_member, scope: !601, file: !602, line: 209, baseType: !612, size: 256, offset: 512)
!612 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !601, file: !602, line: 209, size: 256, elements: !613)
!613 = !{!614, !626, !630}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !612, file: !602, line: 210, baseType: !615, size: 256)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !602, line: 153, size: 256, elements: !616)
!616 = !{!617, !618, !622, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !615, file: !602, line: 154, baseType: !41, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !615, file: !602, line: 156, baseType: !619, size: 64, offset: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !518, line: 12, size: 64, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !619, file: !518, line: 13, baseType: !522, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !615, file: !602, line: 162, baseType: !623, size: 64, offset: 128)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !602, line: 162, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !615, file: !602, line: 167, baseType: !41, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !612, file: !602, line: 211, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !602, line: 170, size: 64, elements: !628)
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !627, file: !602, line: 171, baseType: !600, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !612, file: !602, line: 212, baseType: !631, size: 256)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !602, line: 174, size: 256, elements: !632)
!632 = !{!633, !700, !703, !704}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !631, file: !602, line: 175, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !602, line: 271, size: 768, elements: !637)
!637 = !{!638, !660, !664, !668, !673, !677, !681, !685, !686, !687, !688, !696}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !636, file: !602, line: 276, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!108, !642}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !602, line: 251, size: 1216, elements: !644)
!644 = !{!645, !646, !647, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !643, file: !602, line: 253, baseType: !600, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !643, file: !602, line: 254, baseType: !237, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !643, file: !602, line: 255, baseType: !648, size: 64, offset: 128)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !540, line: 66, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !643, file: !602, line: 256, baseType: !29, size: 64, offset: 192)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !643, file: !602, line: 259, baseType: !411, size: 256, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !643, file: !602, line: 260, baseType: !411, size: 256, offset: 512)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !643, file: !602, line: 261, baseType: !108, size: 32, offset: 768)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !643, file: !602, line: 262, baseType: !54, size: 128, offset: 832)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !643, file: !602, line: 263, baseType: !155, size: 64, offset: 960)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !643, file: !602, line: 265, baseType: !202, size: 64, offset: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !643, file: !602, line: 266, baseType: !511, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !643, file: !602, line: 267, baseType: !511, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !643, file: !602, line: 268, baseType: !530, size: 64, offset: 1152)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !636, file: !602, line: 277, baseType: !661, size: 64, offset: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !642}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !636, file: !602, line: 290, baseType: !665, size: 64, offset: 128)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!108, !648, !29}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !636, file: !602, line: 292, baseType: !669, size: 64, offset: 192)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!29, !648, !672}
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !636, file: !602, line: 293, baseType: !674, size: 64, offset: 256)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{!29, !648, !29, !672}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !636, file: !602, line: 294, baseType: !678, size: 64, offset: 320)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = !DISubroutineType(types: !680)
!680 = !{null, !648, !29}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !636, file: !602, line: 296, baseType: !682, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DISubroutineType(types: !684)
!684 = !{!187, !642, !155, !202, !240}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !636, file: !602, line: 306, baseType: !202, size: 64, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !636, file: !602, line: 313, baseType: !511, size: 8, offset: 512)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !636, file: !602, line: 314, baseType: !682, size: 64, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !636, file: !602, line: 317, baseType: !689, size: 64, offset: 640)
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = !DISubroutineType(types: !691)
!691 = !{!692, !642, !694}
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !693, line: 59, baseType: !7)
!693 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !602, line: 31, flags: DIFlagFwdDecl)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !636, file: !602, line: 320, baseType: !697, size: 64, offset: 704)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DISubroutineType(types: !699)
!699 = !{!108, !642, !248}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !631, file: !602, line: 176, baseType: !701, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !602, line: 35, flags: DIFlagFwdDecl)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !631, file: !602, line: 177, baseType: !240, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !631, file: !602, line: 178, baseType: !600, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !601, file: !602, line: 215, baseType: !29, size: 64, offset: 768)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !601, file: !602, line: 221, baseType: !317, size: 64, offset: 832)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !601, file: !602, line: 223, baseType: !125, size: 16, offset: 896)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !601, file: !602, line: 224, baseType: !197, size: 16, offset: 912)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !601, file: !602, line: 225, baseType: !710, size: 64, offset: 960)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !602, line: 36, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !601, file: !602, line: 227, baseType: !260, size: 128, align: 64, offset: 1024)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !69, file: !70, line: 71, baseType: !714, size: 32, offset: 448)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !715, line: 19, size: 32, elements: !716)
!715 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !714, file: !715, line: 20, baseType: !718, size: 32)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !719, line: 113, baseType: !720)
!719 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !719, line: 111, size: 32, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !720, file: !719, line: 112, baseType: !104, size: 32)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !69, file: !70, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !69, file: !70, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !69, file: !70, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !69, file: !70, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !69, file: !70, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !66, file: !6, line: 47, baseType: !49, size: 64, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !66, file: !6, line: 48, baseType: !77, size: 64, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !66, file: !6, line: 49, baseType: !731, size: 64, offset: 640)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !66, file: !6, line: 50, baseType: !734, size: 64, offset: 704)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !736, line: 26, size: 256, elements: !737)
!736 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!737 = !{!738, !739}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !735, file: !736, line: 27, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !735, file: !736, line: 28, baseType: !740, size: 192, offset: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !741, line: 43, size: 192, elements: !742)
!741 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!742 = !{!743, !744}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !740, file: !741, line: 44, baseType: !345, size: 32)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !740, file: !741, line: 45, baseType: !54, size: 128, offset: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !50, file: !6, line: 418, baseType: !746, size: 64, offset: 1408)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !748)
!748 = !{!749, !750, !755, !759, !763, !767}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !747, file: !6, line: 54, baseType: !193, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !747, file: !6, line: 55, baseType: !751, size: 64, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!187, !746, !754, !155}
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !747, file: !6, line: 57, baseType: !756, size: 64, offset: 192)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!187, !746, !754, !73, !202}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !747, file: !6, line: 59, baseType: !760, size: 64, offset: 256)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{null, !49, !73}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !747, file: !6, line: 60, baseType: !764, size: 64, offset: 320)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{!108, !49}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !747, file: !6, line: 61, baseType: !768, size: 64, offset: 384)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !49}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !50, file: !6, line: 419, baseType: !73, size: 64, offset: 1472)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !50, file: !6, line: 420, baseType: !73, size: 64, offset: 1536)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !50, file: !6, line: 421, baseType: !77, size: 64, offset: 1600)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !50, file: !6, line: 424, baseType: !775, size: 64, offset: 1664)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !777)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !50, file: !6, line: 425, baseType: !779, size: 64, offset: 1728)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !50, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !50, file: !6, line: 435, baseType: !411, size: 256, offset: 1856)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !50, file: !6, line: 437, baseType: !784, size: 64, offset: 2112)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !786, line: 69, size: 320, elements: !787)
!786 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!787 = !{!788, !789, !790, !807, !809, !813, !814}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !786, line: 70, baseType: !73, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !785, file: !786, line: 71, baseType: !49, size: 64, offset: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !785, file: !786, line: 72, baseType: !791, size: 64, offset: 128)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !786, line: 47, size: 256, elements: !794)
!794 = !{!795, !796, !802, !806}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !793, file: !786, line: 49, baseType: !7, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !793, file: !786, line: 51, baseType: !797, size: 64, offset: 64)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!108, !73, !800}
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !793, file: !786, line: 53, baseType: !803, size: 64, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!108, !155, !800}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !793, file: !786, line: 55, baseType: !574, size: 64, offset: 192)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !785, file: !786, line: 73, baseType: !808, size: 16, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !785, file: !786, line: 74, baseType: !810, size: 8, offset: 208)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !114, line: 16, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !116, line: 20, baseType: !812)
!812 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !785, file: !786, line: 75, baseType: !113, size: 8, offset: 216)
!814 = !DIDerivedType(tag: DW_TAG_member, scope: !785, file: !786, line: 76, baseType: !815, size: 64, offset: 256)
!815 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !785, file: !786, line: 76, size: 64, elements: !816)
!816 = !{!817, !818, !825}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !815, file: !786, line: 77, baseType: !29, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !815, file: !786, line: 78, baseType: !819, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !821)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !786, line: 86, size: 128, elements: !822)
!822 = !{!823, !824}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !821, file: !786, line: 87, baseType: !7, size: 32)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !821, file: !786, line: 88, baseType: !155, size: 64, offset: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !815, file: !786, line: 79, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !786, line: 92, size: 256, elements: !829)
!829 = !{!830, !831, !832, !834, !835}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !828, file: !786, line: 94, baseType: !7, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !828, file: !786, line: 95, baseType: !7, size: 32, offset: 32)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !828, file: !786, line: 96, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !828, file: !786, line: 97, baseType: !791, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !828, file: !786, line: 98, baseType: !29, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !50, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !50, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !50, file: !6, line: 442, baseType: !775, size: 64, offset: 2240)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !50, file: !6, line: 443, baseType: !779, size: 64, offset: 2304)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !50, file: !6, line: 444, baseType: !511, size: 8, offset: 2368)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !50, file: !6, line: 451, baseType: !511, size: 8, offset: 2376)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !50, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !50, file: !6, line: 455, baseType: !844, size: 64, offset: 2432)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !50, file: !6, line: 458, baseType: !847, size: 64, offset: 2496)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!108}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !50, file: !6, line: 460, baseType: !851, size: 4032, align: 512, offset: 2560)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 4032, elements: !868)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !853)
!853 = !{!854, !855, !856}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !852, file: !6, line: 363, baseType: !29, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !852, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !852, file: !6, line: 367, baseType: !857, size: 448, offset: 128)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !858)
!858 = !{!859, !860}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !857, file: !6, line: 320, baseType: !49, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !857, file: !6, line: 321, baseType: !861, size: 384, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !862, line: 40, size: 384, elements: !863)
!862 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!863 = !{!864}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !861, file: !862, line: 41, baseType: !865, size: 384, align: 64)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 384, align: 64, elements: !866)
!866 = !{!867}
!867 = !DISubrange(count: 2)
!868 = !{!869}
!869 = !DISubrange(count: 7)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !50, file: !6, line: 463, baseType: !871, size: 192, offset: 6592)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !872, line: 8, size: 192, elements: !873)
!872 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!873 = !{!874, !875, !877}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !871, file: !872, line: 10, baseType: !7, size: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !871, file: !872, line: 11, baseType: !876, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !871, file: !872, line: 12, baseType: !878, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !880, line: 59, size: 48, elements: !881)
!880 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!881 = !{!882, !883, !884, !885, !886, !887}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !879, file: !880, line: 60, baseType: !449, size: 16)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !879, file: !880, line: 61, baseType: !449, size: 16, offset: 16)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !879, file: !880, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !879, file: !880, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !879, file: !880, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !879, file: !880, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !50, file: !6, line: 465, baseType: !41, size: 64, offset: 6784)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !50, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !50, file: !6, line: 470, baseType: !54, size: 128, offset: 6912)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !50, file: !6, line: 471, baseType: !892, size: 64, offset: 7040)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !894, line: 33, size: 96, elements: !895)
!894 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!895 = !{!896, !897, !898, !899}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !893, file: !894, line: 37, baseType: !108, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !893, file: !894, line: 43, baseType: !108, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !893, file: !894, line: 45, baseType: !125, size: 16, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !894, line: 47, baseType: !125, size: 16, offset: 80)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !50, file: !6, line: 476, baseType: !901, size: 64, offset: 7104)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !903)
!903 = !{!904, !921, !922, !923}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !902, file: !6, line: 379, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !907, line: 204, baseType: !908)
!907 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !907, line: 197, size: 192, elements: !909)
!909 = !{!910, !913, !914, !915, !917, !919}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !908, file: !907, line: 198, baseType: !911, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !907, line: 21, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !7)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !908, file: !907, line: 199, baseType: !117, size: 8, offset: 32)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !908, file: !907, line: 200, baseType: !117, size: 8, offset: 40)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !908, file: !907, line: 201, baseType: !916, size: 16, offset: 48)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !907, line: 17, baseType: !124)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !908, file: !907, line: 202, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !907, line: 16, baseType: !318)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !908, file: !907, line: 203, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !907, line: 22, baseType: !318)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !902, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !902, file: !6, line: 381, baseType: !155, size: 64, offset: 128)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !902, file: !6, line: 382, baseType: !155, size: 64, offset: 192)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !50, file: !6, line: 477, baseType: !902, size: 256, offset: 7168)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !50, file: !6, line: 480, baseType: !926, size: 64, offset: 7424)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !50, file: !6, line: 483, baseType: !929, size: 64, offset: 7488)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !50, file: !6, line: 488, baseType: !155, size: 64, offset: 7552)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !50, file: !6, line: 492, baseType: !29, size: 64, offset: 7616)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !50, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !50, file: !6, line: 495, baseType: !29, size: 64, offset: 7744)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !50, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !50, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !50, file: !6, line: 500, baseType: !938, size: 64, offset: 7872)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !940, line: 45, baseType: !941)
!940 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !50, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !50, file: !6, line: 504, baseType: !944, size: 64, offset: 8000)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !947, line: 96, size: 192, elements: !948)
!947 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!948 = !{!949, !950, !1011, !1014}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !946, file: !947, line: 97, baseType: !7, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !946, file: !947, line: 98, baseType: !951, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !947, line: 24, size: 3072, elements: !953)
!953 = !{!954, !956, !957, !958, !959, !973, !974, !975, !976, !995, !996, !997, !1008, !1009, !1010}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !952, file: !947, line: 26, baseType: !955, size: 128)
!955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !323, size: 128, elements: !866)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !952, file: !947, line: 27, baseType: !955, size: 128, offset: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !952, file: !947, line: 28, baseType: !108, size: 32, offset: 256)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !952, file: !947, line: 31, baseType: !84, size: 32, align: 512, offset: 512)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !952, file: !947, line: 32, baseType: !960, size: 960, offset: 576)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !961, line: 206, size: 960, elements: !962)
!961 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!962 = !{!963, !964, !967, !969, !970, !972}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !960, file: !961, line: 207, baseType: !263, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !960, file: !961, line: 208, baseType: !965, size: 256, offset: 64)
!965 = !DICompositeType(tag: DW_TAG_array_type, baseType: !966, size: 256, elements: !392)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !960, file: !961, line: 209, baseType: !968, size: 256, offset: 320)
!968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !392)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !960, file: !961, line: 213, baseType: !191, size: 64, offset: 576)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !960, file: !961, line: 215, baseType: !971, size: 256, offset: 640)
!971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !191, size: 256, elements: !392)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !961, line: 216, baseType: !113, size: 8, offset: 896)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !952, file: !947, line: 33, baseType: !41, size: 64, offset: 1536)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !952, file: !947, line: 34, baseType: !41, size: 64, offset: 1600)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !952, file: !947, line: 35, baseType: !511, size: 8, offset: 1664)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !952, file: !947, line: 36, baseType: !977, size: 320, offset: 1728)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !978, line: 11, size: 320, elements: !979)
!978 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!979 = !{!980, !987, !988, !993}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !977, file: !978, line: 16, baseType: !981, size: 128)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !55, line: 198, size: 128, elements: !982)
!982 = !{!983, !985}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !981, file: !55, line: 199, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !981, file: !55, line: 199, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !977, file: !978, line: 17, baseType: !41, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !977, file: !978, line: 18, baseType: !989, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !990, size: 64)
!990 = !DISubroutineType(types: !991)
!991 = !{null, !992}
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !977, file: !978, line: 19, baseType: !994, size: 32, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !114, line: 21, baseType: !912)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !952, file: !947, line: 37, baseType: !476, size: 256, offset: 2048)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !952, file: !947, line: 38, baseType: !260, size: 128, align: 64, offset: 2304)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !952, file: !947, line: 39, baseType: !998, size: 64, offset: 2432)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !947, line: 49, size: 768, elements: !1000)
!1000 = !{!1001, !1002, !1003, !1004, !1005, !1006, !1007}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !999, file: !947, line: 50, baseType: !84, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !999, file: !947, line: 51, baseType: !968, size: 256, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !999, file: !947, line: 53, baseType: !968, size: 256, offset: 320)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !999, file: !947, line: 54, baseType: !41, size: 64, offset: 576)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !999, file: !947, line: 55, baseType: !998, size: 64, offset: 640)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !999, file: !947, line: 56, baseType: !108, size: 32, offset: 704)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !999, file: !947, line: 57, baseType: !108, size: 32, offset: 736)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !952, file: !947, line: 40, baseType: !41, size: 64, offset: 2496)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !952, file: !947, line: 42, baseType: !108, size: 32, offset: 2560)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !952, file: !947, line: 43, baseType: !945, size: 64, offset: 2624)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !946, file: !947, line: 99, baseType: !1012, offset: 128)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1013, line: 211, elements: !290)
!1013 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !946, file: !947, line: 100, baseType: !1015, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !947, line: 63, size: 3008, elements: !1017)
!1017 = !{!1018, !1019, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1049}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1016, file: !947, line: 64, baseType: !998, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1016, file: !947, line: 65, baseType: !1020, size: 192, offset: 64)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !998, size: 192, elements: !156)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1016, file: !947, line: 67, baseType: !108, size: 32, offset: 256)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1016, file: !947, line: 68, baseType: !411, size: 256, offset: 320)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1016, file: !947, line: 69, baseType: !84, size: 32, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1016, file: !947, line: 70, baseType: !411, size: 256, offset: 640)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1016, file: !947, line: 71, baseType: !41, size: 64, offset: 896)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1016, file: !947, line: 72, baseType: !41, size: 64, offset: 960)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1016, file: !947, line: 73, baseType: !41, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1016, file: !947, line: 74, baseType: !41, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1016, file: !947, line: 75, baseType: !41, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1016, file: !947, line: 76, baseType: !41, size: 64, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1016, file: !947, line: 77, baseType: !41, size: 64, offset: 1280)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1016, file: !947, line: 78, baseType: !41, size: 64, offset: 1344)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1016, file: !947, line: 79, baseType: !511, size: 8, offset: 1408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1016, file: !947, line: 80, baseType: !41, size: 64, offset: 1472)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1016, file: !947, line: 81, baseType: !411, size: 256, offset: 1536)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1016, file: !947, line: 82, baseType: !735, size: 256, offset: 1792)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1016, file: !947, line: 84, baseType: !104, size: 32, offset: 2048)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1016, file: !947, line: 87, baseType: !41, size: 64, offset: 2112)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1016, file: !947, line: 88, baseType: !41, size: 64, offset: 2176)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1016, file: !947, line: 89, baseType: !1041, size: 704, offset: 2240)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !477, line: 111, size: 704, elements: !1042)
!1042 = !{!1043, !1044, !1045, !1048}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1041, file: !477, line: 112, baseType: !476, size: 256)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1041, file: !477, line: 113, baseType: !977, size: 320, offset: 256)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1041, file: !477, line: 116, baseType: !1046, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !477, line: 18, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1041, file: !477, line: 117, baseType: !108, size: 32, offset: 640)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1016, file: !947, line: 90, baseType: !945, size: 64, offset: 2944)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !50, file: !6, line: 515, baseType: !1051, size: 64, offset: 8064)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1053, line: 117, size: 128, elements: !1054)
!1053 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1054 = !{!1055, !1056, !1057}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1052, file: !1053, line: 118, baseType: !390, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1052, file: !1053, line: 119, baseType: !390, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1052, file: !1053, line: 120, baseType: !191, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !50, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !50, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !50, file: !6, line: 520, baseType: !1061, size: 64, offset: 8192)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !50, file: !6, line: 523, baseType: !1063, size: 64, offset: 8256)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !50, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !50, file: !6, line: 525, baseType: !1068, size: 64, offset: 8384)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !50, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !50, file: !6, line: 533, baseType: !29, size: 64, offset: 8512)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !50, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !50, file: !6, line: 535, baseType: !1075, size: 64, offset: 8640)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !50, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !50, file: !6, line: 539, baseType: !108, size: 32, offset: 8736)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !50, file: !6, line: 540, baseType: !1079, size: 64, offset: 8768)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !34, line: 32, size: 64, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1080, file: !34, line: 33, baseType: !390, size: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1080, file: !34, line: 34, baseType: !390, size: 32, offset: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !50, file: !6, line: 563, baseType: !54, size: 128, offset: 8832)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !50, file: !6, line: 565, baseType: !54, size: 128, offset: 8960)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !50, file: !6, line: 568, baseType: !1087, size: 64, offset: 9088)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !50, file: !6, line: 570, baseType: !104, size: 32, offset: 9152)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !44, file: !45, line: 172, baseType: !1079, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "sites", scope: !38, file: !34, line: 67, baseType: !1079, size: 64)
!1093 = !DIGlobalVariableExpression(var: !1094, expr: !DIExpression())
!1094 = distinct !DIGlobalVariable(name: "__SCK__apic_call_icr_read", scope: !2, file: !3, line: 19, type: !33, isLocal: false, isDefinition: true)
!1095 = !DIGlobalVariableExpression(var: !1096, expr: !DIExpression())
!1096 = distinct !DIGlobalVariable(name: "__SCK__apic_call_icr_write", scope: !2, file: !3, line: 20, type: !33, isLocal: false, isDefinition: true)
!1097 = !DIGlobalVariableExpression(var: !1098, expr: !DIExpression())
!1098 = distinct !DIGlobalVariable(name: "__SCK__apic_call_read", scope: !2, file: !3, line: 21, type: !33, isLocal: false, isDefinition: true)
!1099 = !DIGlobalVariableExpression(var: !1100, expr: !DIExpression())
!1100 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI", scope: !2, file: !3, line: 22, type: !33, isLocal: false, isDefinition: true)
!1101 = !DIGlobalVariableExpression(var: !1102, expr: !DIExpression())
!1102 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI_mask", scope: !2, file: !3, line: 23, type: !33, isLocal: false, isDefinition: true)
!1103 = !DIGlobalVariableExpression(var: !1104, expr: !DIExpression())
!1104 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI_mask_allbutself", scope: !2, file: !3, line: 24, type: !33, isLocal: false, isDefinition: true)
!1105 = !DIGlobalVariableExpression(var: !1106, expr: !DIExpression())
!1106 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI_allbutself", scope: !2, file: !3, line: 25, type: !33, isLocal: false, isDefinition: true)
!1107 = !DIGlobalVariableExpression(var: !1108, expr: !DIExpression())
!1108 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI_all", scope: !2, file: !3, line: 26, type: !33, isLocal: false, isDefinition: true)
!1109 = !DIGlobalVariableExpression(var: !1110, expr: !DIExpression())
!1110 = distinct !DIGlobalVariable(name: "__SCK__apic_call_send_IPI_self", scope: !2, file: !3, line: 27, type: !33, isLocal: false, isDefinition: true)
!1111 = !DIGlobalVariableExpression(var: !1112, expr: !DIExpression())
!1112 = distinct !DIGlobalVariable(name: "__SCK__apic_call_wait_icr_idle", scope: !2, file: !3, line: 28, type: !33, isLocal: false, isDefinition: true)
!1113 = !DIGlobalVariableExpression(var: !1114, expr: !DIExpression())
!1114 = distinct !DIGlobalVariable(name: "__SCK__apic_call_wakeup_secondary_cpu", scope: !2, file: !3, line: 29, type: !33, isLocal: false, isDefinition: true)
!1115 = !DIGlobalVariableExpression(var: !1116, expr: !DIExpression())
!1116 = distinct !DIGlobalVariable(name: "__SCK__apic_call_wakeup_secondary_cpu_64", scope: !2, file: !3, line: 30, type: !33, isLocal: false, isDefinition: true)
!1117 = !DIGlobalVariableExpression(var: !1118, expr: !DIExpression())
!1118 = distinct !DIGlobalVariable(name: "__SCK__apic_call_write", scope: !2, file: !3, line: 31, type: !33, isLocal: false, isDefinition: true)
!1119 = !DIGlobalVariableExpression(var: !1120, expr: !DIExpression())
!1120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_mask217", scope: !2, file: !3, line: 33, type: !29, isLocal: true, isDefinition: true)
!1121 = !DIGlobalVariableExpression(var: !1122, expr: !DIExpression())
!1122 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCT__apic_call_send_IPI_self218", scope: !2, file: !3, line: 34, type: !29, isLocal: true, isDefinition: true)
!1123 = !DIGlobalVariableExpression(var: !1124, expr: !DIExpression())
!1124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !1125, isLocal: true, isDefinition: true)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 272, elements: !1126)
!1126 = !{!1127}
!1127 = !DISubrange(count: 34)
!1128 = !DIGlobalVariableExpression(var: !1129, expr: !DIExpression())
!1129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 109, type: !1130, isLocal: true, isDefinition: true)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 304, elements: !1131)
!1131 = !{!1132}
!1132 = !DISubrange(count: 38)
!1133 = !DIGlobalVariableExpression(var: !1134, expr: !DIExpression())
!1134 = distinct !DIGlobalVariable(name: "__x86_apic_override", scope: !2, file: !3, line: 37, type: !1135, isLocal: false, isDefinition: true)
!1135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic_override", file: !1136, line: 314, size: 896, elements: !1137)
!1136 = !DIFile(filename: "./arch/x86/include/asm/apic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cea4ea5c4026ced479ef414cf9697912")
!1137 = !{!1138, !1139, !1140, !1144, !1148, !1152, !1165, !1166, !1170, !1171, !1172, !1176, !1177, !1181}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !1135, file: !1136, line: 315, baseType: !1087, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "native_eoi", scope: !1135, file: !1136, line: 316, baseType: !1087, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1135, file: !1136, line: 317, baseType: !1141, size: 64, offset: 128)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !994, !994}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1135, file: !1136, line: 318, baseType: !1145, size: 64, offset: 192)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!994, !994}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI", scope: !1135, file: !1136, line: 319, baseType: !1149, size: 64, offset: 256)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !108, !108}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask", scope: !1135, file: !1136, line: 320, baseType: !1153, size: 64, offset: 320)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null, !1156, !108}
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1158)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1159, line: 19, size: 64, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1160 = !{!1161}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1158, file: !1159, line: 19, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 1)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask_allbutself", scope: !1135, file: !1136, line: 321, baseType: !1153, size: 64, offset: 384)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_allbutself", scope: !1135, file: !1136, line: 322, baseType: !1167, size: 64, offset: 448)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = !DISubroutineType(types: !1169)
!1169 = !{null, !108}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_all", scope: !1135, file: !1136, line: 323, baseType: !1167, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_self", scope: !1135, file: !1136, line: 324, baseType: !1167, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "icr_read", scope: !1135, file: !1136, line: 325, baseType: !1173, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = !DISubroutineType(types: !1175)
!1175 = !{!317}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "icr_write", scope: !1135, file: !1136, line: 326, baseType: !1141, size: 64, offset: 704)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu", scope: !1135, file: !1136, line: 327, baseType: !1178, size: 64, offset: 768)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!108, !108, !41}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu_64", scope: !1135, file: !1136, line: 328, baseType: !1178, size: 64, offset: 832)
!1182 = !{i32 7, !"Dwarf Version", i32 5}
!1183 = !{i32 2, !"Debug Info Version", i32 3}
!1184 = !{i32 1, !"wchar_size", i32 2}
!1185 = !{i32 8, !"cf-protection-branch", i32 1}
!1186 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1187 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1188 = !{i32 1, !"Code Model", i32 2}
!1189 = !{i32 1, !"override-stack-alignment", i32 8}
!1190 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1191 = distinct !DISubprogram(name: "apic_setup_apic_calls", scope: !3, file: !3, line: 83, type: !1088, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1192 = !DILocation(line: 86, column: 21, scope: !1191)
!1193 = !DILocation(line: 86, column: 27, scope: !1191)
!1194 = !DILocation(line: 86, column: 2, scope: !1191)
!1195 = !DILocation(line: 86, column: 8, scope: !1191)
!1196 = !DILocation(line: 86, column: 19, scope: !1191)
!1197 = !DILocation(line: 87, column: 2, scope: !1191)
!1198 = !DILocation(line: 88, column: 2, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 88, column: 2)
!1200 = !DILocation(line: 88, column: 2, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 88, column: 2)
!1202 = !DILocation(line: 89, column: 1, scope: !1191)
!1203 = distinct !DISubprogram(name: "update_static_calls", scope: !3, file: !3, line: 64, type: !1088, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1204)
!1204 = !{!1205, !1207, !1209, !1211, !1213, !1215, !1217, !1219, !1221, !1223, !1225, !1227, !1229, !1231, !1233}
!1205 = !DILocalVariable(name: "__F", scope: !1206, file: !3, line: 66, type: !1087)
!1206 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 66, column: 2)
!1207 = !DILocalVariable(name: "__F", scope: !1208, file: !3, line: 67, type: !1087)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 67, column: 2)
!1209 = !DILocalVariable(name: "__F", scope: !1210, file: !3, line: 68, type: !1141)
!1210 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 68, column: 2)
!1211 = !DILocalVariable(name: "__F", scope: !1212, file: !3, line: 69, type: !1145)
!1212 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 69, column: 2)
!1213 = !DILocalVariable(name: "__F", scope: !1214, file: !3, line: 70, type: !1149)
!1214 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 70, column: 2)
!1215 = !DILocalVariable(name: "__F", scope: !1216, file: !3, line: 71, type: !1153)
!1216 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 71, column: 2)
!1217 = !DILocalVariable(name: "__F", scope: !1218, file: !3, line: 72, type: !1153)
!1218 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 72, column: 2)
!1219 = !DILocalVariable(name: "__F", scope: !1220, file: !3, line: 73, type: !1167)
!1220 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 73, column: 2)
!1221 = !DILocalVariable(name: "__F", scope: !1222, file: !3, line: 74, type: !1167)
!1222 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 74, column: 2)
!1223 = !DILocalVariable(name: "__F", scope: !1224, file: !3, line: 75, type: !1167)
!1224 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 75, column: 2)
!1225 = !DILocalVariable(name: "__F", scope: !1226, file: !3, line: 76, type: !1173)
!1226 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 76, column: 2)
!1227 = !DILocalVariable(name: "__F", scope: !1228, file: !3, line: 77, type: !1141)
!1228 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 77, column: 2)
!1229 = !DILocalVariable(name: "__F", scope: !1230, file: !3, line: 78, type: !1087)
!1230 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 78, column: 2)
!1231 = !DILocalVariable(name: "__F", scope: !1232, file: !3, line: 79, type: !1178)
!1232 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 79, column: 2)
!1233 = !DILocalVariable(name: "__F", scope: !1234, file: !3, line: 80, type: !1178)
!1234 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 80, column: 2)
!1235 = !DILocation(line: 66, column: 2, scope: !1206)
!1236 = !DILocation(line: 66, column: 2, scope: !1203)
!1237 = !DILocation(line: 67, column: 2, scope: !1208)
!1238 = !DILocation(line: 67, column: 2, scope: !1203)
!1239 = !DILocation(line: 68, column: 2, scope: !1210)
!1240 = !DILocation(line: 68, column: 2, scope: !1203)
!1241 = !DILocation(line: 69, column: 2, scope: !1212)
!1242 = !DILocation(line: 69, column: 2, scope: !1203)
!1243 = !DILocation(line: 70, column: 2, scope: !1214)
!1244 = !DILocation(line: 70, column: 2, scope: !1203)
!1245 = !DILocation(line: 71, column: 2, scope: !1216)
!1246 = !DILocation(line: 71, column: 2, scope: !1203)
!1247 = !DILocation(line: 72, column: 2, scope: !1218)
!1248 = !DILocation(line: 72, column: 2, scope: !1203)
!1249 = !DILocation(line: 73, column: 2, scope: !1220)
!1250 = !DILocation(line: 73, column: 2, scope: !1203)
!1251 = !DILocation(line: 74, column: 2, scope: !1222)
!1252 = !DILocation(line: 74, column: 2, scope: !1203)
!1253 = !DILocation(line: 75, column: 2, scope: !1224)
!1254 = !DILocation(line: 75, column: 2, scope: !1203)
!1255 = !DILocation(line: 76, column: 2, scope: !1226)
!1256 = !DILocation(line: 76, column: 2, scope: !1203)
!1257 = !DILocation(line: 77, column: 2, scope: !1228)
!1258 = !DILocation(line: 77, column: 2, scope: !1203)
!1259 = !DILocation(line: 78, column: 2, scope: !1230)
!1260 = !DILocation(line: 78, column: 2, scope: !1203)
!1261 = !DILocation(line: 79, column: 2, scope: !1232)
!1262 = !DILocation(line: 79, column: 2, scope: !1203)
!1263 = !DILocation(line: 80, column: 2, scope: !1234)
!1264 = !DILocation(line: 80, column: 2, scope: !1203)
!1265 = !DILocation(line: 81, column: 1, scope: !1203)
!1266 = !DISubprogram(name: "_printk", scope: !1267, file: !1267, line: 153, type: !1268, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1267 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!1268 = !DISubroutineType(types: !1269)
!1269 = !{!108, !73, null}
!1270 = distinct !DISubprogram(name: "apic_install_driver", scope: !3, file: !3, line: 91, type: !1271, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1343)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{null, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apic", file: !1136, line: 258, size: 1920, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1300, !1301, !1302, !1303, !1304, !1308, !1309, !1322, !1323, !1327, !1331, !1335, !1339, !1340, !1341, !1342}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "eoi", scope: !1274, file: !1136, line: 260, baseType: !1087, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "native_eoi", scope: !1274, file: !1136, line: 261, baseType: !1087, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1274, file: !1136, line: 262, baseType: !1141, size: 64, offset: 128)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1274, file: !1136, line: 263, baseType: !1145, size: 64, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "wait_icr_idle", scope: !1274, file: !1136, line: 266, baseType: !1087, size: 64, offset: 256)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "safe_wait_icr_idle", scope: !1274, file: !1136, line: 267, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{!994}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI", scope: !1274, file: !1136, line: 269, baseType: !1149, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask", scope: !1274, file: !1136, line: 270, baseType: !1153, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_mask_allbutself", scope: !1274, file: !1136, line: 271, baseType: !1153, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_allbutself", scope: !1274, file: !1136, line: 272, baseType: !1167, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_all", scope: !1274, file: !1136, line: 273, baseType: !1167, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "send_IPI_self", scope: !1274, file: !1136, line: 274, baseType: !1167, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "delivery_mode", scope: !1274, file: !1136, line: 276, baseType: !19, size: 32, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "disable_esr", scope: !1274, file: !1136, line: 278, baseType: !994, size: 1, offset: 800, flags: DIFlagBitField, extraData: i64 800)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "dest_mode_logical", scope: !1274, file: !1136, line: 279, baseType: !994, size: 1, offset: 801, flags: DIFlagBitField, extraData: i64 800)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "x2apic_set_max_apicid", scope: !1274, file: !1136, line: 280, baseType: !994, size: 1, offset: 802, flags: DIFlagBitField, extraData: i64 800)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "nmi_to_offline_cpu", scope: !1274, file: !1136, line: 281, baseType: !994, size: 1, offset: 803, flags: DIFlagBitField, extraData: i64 800)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "calc_dest_apicid", scope: !1274, file: !1136, line: 283, baseType: !1297, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DISubroutineType(types: !1299)
!1299 = !{!994, !7}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "icr_read", scope: !1274, file: !1136, line: 286, baseType: !1173, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "icr_write", scope: !1274, file: !1136, line: 287, baseType: !1141, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "max_apic_id", scope: !1274, file: !1136, line: 290, baseType: !994, size: 32, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1274, file: !1136, line: 293, baseType: !847, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_madt_oem_check", scope: !1274, file: !1136, line: 294, baseType: !1305, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!108, !155, !155}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "apic_id_registered", scope: !1274, file: !1136, line: 295, baseType: !557, size: 64, offset: 1216)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "check_apicid_used", scope: !1274, file: !1136, line: 297, baseType: !1310, size: 64, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!511, !1313, !108}
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_typedef, name: "physid_mask_t", file: !1315, line: 84, baseType: !1316)
!1315 = !DIFile(filename: "./arch/x86/include/asm/mpspec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6c121953d7eb2fe88838a269afe2127b")
!1316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "physid_mask", file: !1315, line: 80, size: 32768, elements: !1317)
!1317 = !{!1318}
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !1316, file: !1315, line: 81, baseType: !1319, size: 32768)
!1319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 32768, elements: !1320)
!1320 = !{!1321}
!1321 = !DISubrange(count: 512)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "init_apic_ldr", scope: !1274, file: !1136, line: 298, baseType: !1087, size: 64, offset: 1344)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "ioapic_phys_id_map", scope: !1274, file: !1136, line: 299, baseType: !1324, size: 64, offset: 1408)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1325, size: 64)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !1313, !1313}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_present_to_apicid", scope: !1274, file: !1136, line: 300, baseType: !1328, size: 64, offset: 1472)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!108, !108}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "phys_pkg_id", scope: !1274, file: !1136, line: 301, baseType: !1332, size: 64, offset: 1536)
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DISubroutineType(types: !1334)
!1334 = !{!108, !108, !108}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "get_apic_id", scope: !1274, file: !1136, line: 303, baseType: !1336, size: 64, offset: 1600)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!994, !41}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "set_apic_id", scope: !1274, file: !1136, line: 304, baseType: !1297, size: 64, offset: 1664)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu", scope: !1274, file: !1136, line: 307, baseType: !1178, size: 64, offset: 1728)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_secondary_cpu_64", scope: !1274, file: !1136, line: 309, baseType: !1178, size: 64, offset: 1792)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1274, file: !1136, line: 311, baseType: !155, size: 64, offset: 1856)
!1343 = !{!1344}
!1344 = !DILocalVariable(name: "driver", arg: 1, scope: !1270, file: !3, line: 91, type: !1273)
!1345 = !DILocation(line: 91, column: 46, scope: !1270)
!1346 = !DILocation(line: 93, column: 6, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 93, column: 6)
!1348 = !DILocation(line: 93, column: 14, scope: !1347)
!1349 = !DILocation(line: 93, column: 11, scope: !1347)
!1350 = !DILocation(line: 93, column: 6, scope: !1270)
!1351 = !DILocation(line: 94, column: 3, scope: !1347)
!1352 = !DILocation(line: 96, column: 9, scope: !1270)
!1353 = !DILocation(line: 96, column: 7, scope: !1270)
!1354 = !DILocation(line: 102, column: 7, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 102, column: 6)
!1356 = !DILocation(line: 102, column: 13, scope: !1355)
!1357 = !DILocation(line: 102, column: 6, scope: !1270)
!1358 = !DILocation(line: 103, column: 22, scope: !1355)
!1359 = !DILocation(line: 103, column: 28, scope: !1355)
!1360 = !DILocation(line: 103, column: 3, scope: !1355)
!1361 = !DILocation(line: 103, column: 9, scope: !1355)
!1362 = !DILocation(line: 103, column: 20, scope: !1355)
!1363 = !DILocation(line: 106, column: 2, scope: !1270)
!1364 = !DILocation(line: 107, column: 2, scope: !1270)
!1365 = !DILocation(line: 109, column: 2, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 109, column: 2)
!1367 = !DILocation(line: 109, column: 2, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 109, column: 2)
!1369 = !DILocation(line: 110, column: 1, scope: !1270)
!1370 = distinct !DISubprogram(name: "restore_override_callbacks", scope: !3, file: !3, line: 43, type: !1088, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1371 = !DILocation(line: 45, column: 2, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 45, column: 2)
!1373 = !DILocation(line: 45, column: 2, scope: !1370)
!1374 = !DILocation(line: 46, column: 2, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 46, column: 2)
!1376 = !DILocation(line: 46, column: 2, scope: !1370)
!1377 = !DILocation(line: 47, column: 2, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 47, column: 2)
!1379 = !DILocation(line: 47, column: 2, scope: !1370)
!1380 = !DILocation(line: 48, column: 2, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 48, column: 2)
!1382 = !DILocation(line: 48, column: 2, scope: !1370)
!1383 = !DILocation(line: 49, column: 2, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 49, column: 2)
!1385 = !DILocation(line: 49, column: 2, scope: !1370)
!1386 = !DILocation(line: 50, column: 2, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 50, column: 2)
!1388 = !DILocation(line: 50, column: 2, scope: !1370)
!1389 = !DILocation(line: 51, column: 2, scope: !1390)
!1390 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 51, column: 2)
!1391 = !DILocation(line: 51, column: 2, scope: !1370)
!1392 = !DILocation(line: 52, column: 2, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 52, column: 2)
!1394 = !DILocation(line: 52, column: 2, scope: !1370)
!1395 = !DILocation(line: 53, column: 2, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 53, column: 2)
!1397 = !DILocation(line: 53, column: 2, scope: !1370)
!1398 = !DILocation(line: 54, column: 2, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 54, column: 2)
!1400 = !DILocation(line: 54, column: 2, scope: !1370)
!1401 = !DILocation(line: 55, column: 2, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 55, column: 2)
!1403 = !DILocation(line: 55, column: 2, scope: !1370)
!1404 = !DILocation(line: 56, column: 2, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 56, column: 2)
!1406 = !DILocation(line: 56, column: 2, scope: !1370)
!1407 = !DILocation(line: 57, column: 2, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 57, column: 2)
!1409 = !DILocation(line: 57, column: 2, scope: !1370)
!1410 = !DILocation(line: 58, column: 2, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 58, column: 2)
!1412 = !DILocation(line: 58, column: 2, scope: !1370)
!1413 = !DILocation(line: 59, column: 1, scope: !1370)
!1414 = !DISubprogram(name: "__static_call_update", scope: !45, file: !45, line: 181, type: !1415, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{null, !1417, !29, !29}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)

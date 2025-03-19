; ModuleID = 'net/9p/protocol.c'
source_filename = "net/9p/protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_p9stat_free: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad p9stat_free ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_p9stat_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad p9stat_read ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_p9dirent_read: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad p9dirent_read ; .previous"

%struct.user_namespace = type opaque
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.5 }
%struct.atomic_t = type { i32 }
%union.anon.5 = type { i64 }
%struct.pcpu_hot = type { %union.anon.6 }
%union.anon.6 = type { %struct.anon.7, [16 x i8] }
%struct.anon.7 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.8 }
%union.anon.8 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.p9_client = type { %struct.spinlock, i32, i8, ptr, i32, ptr, ptr, %union.anon.2, %struct.idr, %struct.idr, [65 x i8] }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.p9_wstat = type { i16, i16, i32, %struct.p9_qid, i32, i32, i32, i64, ptr, ptr, ptr, ptr, ptr, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t }
%struct.p9_qid = type { i8, i32, i64 }
%struct.kgid_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.p9_fcall = type { i32, i8, i16, i64, i64, ptr, ptr, i8 }
%struct.p9_iattr_dotl = type { i32, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64 }
%struct.p9_stat_dotl = type { i64, %struct.p9_qid, i32, %struct.kuid_t, %struct.kgid_t, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.p9_dirent = type { %struct.p9_qid, i64, i8, [256 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"net/9p/protocol.c\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [7 x i8] c"ddss?u\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [4 x i8] c"ddT\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [7 x i8] c"dsdb?s\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [6 x i8] c"dsddg\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [4 x i8] c"dqd\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [4 x i8] c"dqV\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [5 x i8] c"dsds\00", align 1, !dbg !28
@.str.8 = private unnamed_addr constant [5 x i8] c"dssg\00", align 1, !dbg !33
@__UNIQUE_ID___addressable_p9stat_free287 = internal global ptr @p9stat_free, section ".discard.addressable", align 8, !dbg !35
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !dbg !183
@init_user_ns = external dso_local global %struct.user_namespace, align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"bdq\00", align 1, !dbg !188
@.str.11 = private unnamed_addr constant [18 x i8] c"wwdQdddqssss?sugu\00", align 1, !dbg !190
@.str.12 = private unnamed_addr constant [2 x i8] c"d\00", align 1, !dbg !192
@.str.13 = private unnamed_addr constant [2 x i8] c"s\00", align 1, !dbg !194
@.str.14 = private unnamed_addr constant [2 x i8] c"Q\00", align 1, !dbg !196
@.str.15 = private unnamed_addr constant [10 x i8] c"ddugqqqqq\00", align 1, !dbg !198
@.str.16 = private unnamed_addr constant [2 x i8] c"S\00", align 1, !dbg !203
@__UNIQUE_ID___addressable_p9stat_read298 = internal global ptr @p9stat_read, section ".discard.addressable", align 8, !dbg !205
@.str.17 = private unnamed_addr constant [4 x i8] c"dbw\00", align 1, !dbg !207
@.str.18 = private unnamed_addr constant [5 x i8] c"Qqbs\00", align 1, !dbg !209
@__UNIQUE_ID___addressable_p9dirent_read299 = internal global ptr @p9dirent_read, section ".discard.addressable", align 8, !dbg !211
@.str.19 = private unnamed_addr constant [28 x i8] c"include/linux/thread_info.h\00", align 1, !dbg !213
@.str.20 = private unnamed_addr constant [21 x i8] c"qQdugqqqqqqqqqqqqqqq\00", align 1, !dbg !219
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !224
@__tracepoint_9p_protocol_dump = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str.22 = private unnamed_addr constant [26 x i8] c"include/trace/events/9p.h\00", align 1, !dbg !226
@trace_9p_protocol_dump.__UNIQUE_ID___addressable___SCK__tp_func_9p_protocol_dump247 = internal global ptr @__SCK__tp_func_9p_protocol_dump, section ".discard.addressable", align 8, !dbg !232
@__SCK__tp_func_9p_protocol_dump = external dso_local global %struct.static_call_key, align 8
@trace_9p_protocol_dump.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace248 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !361
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID___addressable_p9stat_free287, ptr @__UNIQUE_ID___addressable_p9stat_read298, ptr @__UNIQUE_ID___addressable_p9dirent_read299, ptr @trace_9p_protocol_dump.__UNIQUE_ID___addressable___SCK__tp_func_9p_protocol_dump247, ptr @trace_9p_protocol_dump.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace248], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @p9_msg_buf_size(ptr noundef %c, i32 noundef %type, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !373 {
entry:
  %retval = alloca i64, align 8
  %c.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %hdr = alloca i32, align 4
  %rerror_size = alloca i32, align 4
  %rlerror_size = alloca i32, align 4
  %err_size = alloca i32, align 4
  %uname = alloca ptr, align 8
  %aname = alloca ptr, align 8
  %__UNIQUE_ID___x261 = alloca i64, align 8
  %__UNIQUE_ID___y262 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x263 = alloca i64, align 8
  %__UNIQUE_ID___y264 = alloca i64, align 8
  %tmp73 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i32, align 4
  %nwname = alloca i32, align 4
  %wname_all = alloca i64, align 8
  %wnames = alloca ptr, align 8
  %__UNIQUE_ID___x265 = alloca i64, align 8
  %__UNIQUE_ID___y266 = alloca i64, align 8
  %tmp161 = alloca i64, align 8
  %nwname217 = alloca i32, align 4
  %__UNIQUE_ID___x267 = alloca i64, align 8
  %__UNIQUE_ID___y268 = alloca i64, align 8
  %tmp232 = alloca i64, align 8
  %name = alloca ptr, align 8
  %__UNIQUE_ID___x269 = alloca i64, align 8
  %__UNIQUE_ID___y270 = alloca i64, align 8
  %tmp296 = alloca i64, align 8
  %ext = alloca ptr, align 8
  %__UNIQUE_ID___x271 = alloca i64, align 8
  %__UNIQUE_ID___y272 = alloca i64, align 8
  %tmp346 = alloca i64, align 8
  %__UNIQUE_ID___x273 = alloca i64, align 8
  %__UNIQUE_ID___y274 = alloca i64, align 8
  %tmp363 = alloca i64, align 8
  %name407 = alloca ptr, align 8
  %__UNIQUE_ID___x275 = alloca i64, align 8
  %__UNIQUE_ID___y276 = alloca i64, align 8
  %tmp425 = alloca i64, align 8
  %count = alloca i32, align 4
  %__UNIQUE_ID___x277 = alloca i64, align 8
  %__UNIQUE_ID___y278 = alloca i64, align 8
  %tmp498 = alloca i64, align 8
  %count552 = alloca i32, align 4
  %oldname = alloca ptr, align 8
  %newname = alloca ptr, align 8
  %__UNIQUE_ID___x279 = alloca i64, align 8
  %__UNIQUE_ID___y280 = alloca i64, align 8
  %tmp641 = alloca i64, align 8
  %__UNIQUE_ID___x281 = alloca i64, align 8
  %__UNIQUE_ID___y282 = alloca i64, align 8
  %tmp657 = alloca i64, align 8
  %name703 = alloca ptr, align 8
  %symtgt = alloca ptr, align 8
  %__UNIQUE_ID___x283 = alloca i64, align 8
  %__UNIQUE_ID___y284 = alloca i64, align 8
  %tmp732 = alloca i64, align 8
  %__UNIQUE_ID___x285 = alloca i64, align 8
  %__UNIQUE_ID___y286 = alloca i64, align 8
  %tmp747 = alloca i64, align 8
  store ptr %c, ptr %c.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !386, metadata !DIExpression()), !dbg !473
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !387, metadata !DIExpression()), !dbg !474
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !388, metadata !DIExpression()), !dbg !475
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !389, metadata !DIExpression()), !dbg !476
  call void @llvm.lifetime.start.p0(i64 4, ptr %hdr) #21, !dbg !477
  call void @llvm.dbg.declare(metadata ptr %hdr, metadata !390, metadata !DIExpression()), !dbg !478
  store i32 7, ptr %hdr, align 4, !dbg !478
  call void @llvm.lifetime.start.p0(i64 4, ptr %rerror_size) #21, !dbg !479
  call void @llvm.dbg.declare(metadata ptr %rerror_size, metadata !392, metadata !DIExpression()), !dbg !480
  store i32 139, ptr %rerror_size, align 4, !dbg !480
  call void @llvm.lifetime.start.p0(i64 4, ptr %rlerror_size) #21, !dbg !481
  call void @llvm.dbg.declare(metadata ptr %rlerror_size, metadata !393, metadata !DIExpression()), !dbg !482
  store i32 11, ptr %rlerror_size, align 4, !dbg !482
  call void @llvm.lifetime.start.p0(i64 4, ptr %err_size) #21, !dbg !483
  call void @llvm.dbg.declare(metadata ptr %err_size, metadata !394, metadata !DIExpression()), !dbg !484
  %0 = load ptr, ptr %c.addr, align 8, !dbg !485
  %proto_version = getelementptr inbounds %struct.p9_client, ptr %0, i32 0, i32 2, !dbg !486
  %1 = load i8, ptr %proto_version, align 8, !dbg !486
  %conv = zext i8 %1 to i32, !dbg !485
  %cmp = icmp eq i32 %conv, 2, !dbg !487
  %2 = zext i1 %cmp to i64, !dbg !485
  %cond = select i1 %cmp, i32 11, i32 139, !dbg !485
  store i32 %cond, ptr %err_size, align 4, !dbg !484
  %3 = load i32, ptr %type.addr, align 4, !dbg !488
  switch i32 %3, label %sw.default [
    i32 106, label %sw.bb
    i32 6, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 104, label %sw.bb8
    i32 110, label %sw.bb83
    i32 111, label %sw.bb171
    i32 114, label %sw.bb239
    i32 14, label %sw.bb372
    i32 117, label %sw.bb438
    i32 41, label %sw.bb438
    i32 118, label %sw.bb506
    i32 74, label %sw.bb567
    i32 16, label %sw.bb668
    i32 107, label %sw.bb759
    i32 7, label %sw.bb760
    i32 126, label %sw.bb761
    i32 125, label %sw.bb761
    i32 23, label %sw.bb761
    i32 30, label %sw.bb761
    i32 32, label %sw.bb761
    i32 70, label %sw.bb761
    i32 72, label %sw.bb761
    i32 18, label %sw.bb761
    i32 20, label %sw.bb761
    i32 76, label %sw.bb761
    i32 52, label %sw.bb761
  ], !dbg !489

sw.bb:                                            ; preds = %entry, %entry, %entry, %entry
  br label %do.body, !dbg !490

do.body:                                          ; preds = %sw.bb
  br label %do.body2, !dbg !491

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !493

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !493

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !491

do.body3:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 65, i32 0, i64 12) #21, !dbg !495, !srcloc !497
  br label %do.cond4, !dbg !495

do.cond4:                                         ; preds = %do.body3
  br label %do.end5, !dbg !495

do.end5:                                          ; preds = %do.cond4
  unreachable, !dbg !491

do.cond6:                                         ; No predecessors!
  br label %do.end7, !dbg !491

do.end7:                                          ; preds = %do.cond6
  br label %sw.bb8, !dbg !491

sw.bb8:                                           ; preds = %entry, %do.end7
  br label %do.body9, !dbg !498

do.body9:                                         ; preds = %sw.bb8
  %4 = load ptr, ptr %fmt.addr, align 8, !dbg !499
  %call = call i32 @strcmp(ptr noundef @.str.1, ptr noundef %4) #22, !dbg !499
  %tobool = icmp ne i32 %call, 0, !dbg !499
  %lnot = xor i1 %tobool, true, !dbg !499
  %lnot10 = xor i1 %lnot, true, !dbg !499
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !499
  %conv11 = sext i32 %lnot.ext to i64, !dbg !499
  %expval = call i64 @llvm.expect.i64(i64 %conv11, i64 0), !dbg !499
  %tobool12 = icmp ne i64 %expval, 0, !dbg !499
  br i1 %tobool12, label %if.then, label %if.end, !dbg !502

if.then:                                          ; preds = %do.body9
  br label %do.body13, !dbg !499

do.body13:                                        ; preds = %if.then
  br label %do.body14, !dbg !503

do.body14:                                        ; preds = %do.body13
  br label %do.cond15, !dbg !505

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !505

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !503

do.body17:                                        ; preds = %do.end16
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 69, i32 0, i64 12) #21, !dbg !507, !srcloc !509
  br label %do.cond18, !dbg !507

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !507

do.end19:                                         ; preds = %do.cond18
  unreachable, !dbg !503

do.cond20:                                        ; No predecessors!
  br label %do.end21, !dbg !503

do.end21:                                         ; preds = %do.cond20
  br label %if.end, !dbg !503

if.end:                                           ; preds = %do.end21, %do.body9
  br label %do.cond22, !dbg !502

do.cond22:                                        ; preds = %if.end
  br label %do.end23, !dbg !502

do.end23:                                         ; preds = %do.cond22
  %5 = load ptr, ptr %ap.addr, align 8, !dbg !510
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 0, !dbg !510
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !510
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !510
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !510

vaarg.in_reg:                                     ; preds = %do.end23
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 3, !dbg !510
  %reg_save_area = load ptr, ptr %6, align 8, !dbg !510
  %7 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !510
  %8 = add i32 %gp_offset, 8, !dbg !510
  store i32 %8, ptr %gp_offset_p, align 8, !dbg !510
  br label %vaarg.end, !dbg !510

vaarg.in_mem:                                     ; preds = %do.end23
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 2, !dbg !510
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !510
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !510
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !510
  br label %vaarg.end, !dbg !510

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %7, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !510
  %9 = load i32, ptr %vaarg.addr, align 4, !dbg !510
  %10 = load ptr, ptr %ap.addr, align 8, !dbg !511
  %gp_offset_p24 = getelementptr inbounds %struct.__va_list_tag, ptr %10, i32 0, i32 0, !dbg !511
  %gp_offset25 = load i32, ptr %gp_offset_p24, align 8, !dbg !511
  %fits_in_gp26 = icmp ule i32 %gp_offset25, 40, !dbg !511
  br i1 %fits_in_gp26, label %vaarg.in_reg27, label %vaarg.in_mem29, !dbg !511

vaarg.in_reg27:                                   ; preds = %vaarg.end
  %11 = getelementptr inbounds %struct.__va_list_tag, ptr %10, i32 0, i32 3, !dbg !511
  %reg_save_area28 = load ptr, ptr %11, align 8, !dbg !511
  %12 = getelementptr i8, ptr %reg_save_area28, i32 %gp_offset25, !dbg !511
  %13 = add i32 %gp_offset25, 8, !dbg !511
  store i32 %13, ptr %gp_offset_p24, align 8, !dbg !511
  br label %vaarg.end33, !dbg !511

vaarg.in_mem29:                                   ; preds = %vaarg.end
  %overflow_arg_area_p30 = getelementptr inbounds %struct.__va_list_tag, ptr %10, i32 0, i32 2, !dbg !511
  %overflow_arg_area31 = load ptr, ptr %overflow_arg_area_p30, align 8, !dbg !511
  %overflow_arg_area.next32 = getelementptr i8, ptr %overflow_arg_area31, i32 8, !dbg !511
  store ptr %overflow_arg_area.next32, ptr %overflow_arg_area_p30, align 8, !dbg !511
  br label %vaarg.end33, !dbg !511

vaarg.end33:                                      ; preds = %vaarg.in_mem29, %vaarg.in_reg27
  %vaarg.addr34 = phi ptr [ %12, %vaarg.in_reg27 ], [ %overflow_arg_area31, %vaarg.in_mem29 ], !dbg !511
  %14 = load i32, ptr %vaarg.addr34, align 4, !dbg !511
  call void @llvm.lifetime.start.p0(i64 8, ptr %uname) #21, !dbg !512
  call void @llvm.dbg.declare(metadata ptr %uname, metadata !395, metadata !DIExpression()), !dbg !513
  %15 = load ptr, ptr %ap.addr, align 8, !dbg !514
  %gp_offset_p35 = getelementptr inbounds %struct.__va_list_tag, ptr %15, i32 0, i32 0, !dbg !514
  %gp_offset36 = load i32, ptr %gp_offset_p35, align 8, !dbg !514
  %fits_in_gp37 = icmp ule i32 %gp_offset36, 40, !dbg !514
  br i1 %fits_in_gp37, label %vaarg.in_reg38, label %vaarg.in_mem40, !dbg !514

vaarg.in_reg38:                                   ; preds = %vaarg.end33
  %16 = getelementptr inbounds %struct.__va_list_tag, ptr %15, i32 0, i32 3, !dbg !514
  %reg_save_area39 = load ptr, ptr %16, align 8, !dbg !514
  %17 = getelementptr i8, ptr %reg_save_area39, i32 %gp_offset36, !dbg !514
  %18 = add i32 %gp_offset36, 8, !dbg !514
  store i32 %18, ptr %gp_offset_p35, align 8, !dbg !514
  br label %vaarg.end44, !dbg !514

vaarg.in_mem40:                                   ; preds = %vaarg.end33
  %overflow_arg_area_p41 = getelementptr inbounds %struct.__va_list_tag, ptr %15, i32 0, i32 2, !dbg !514
  %overflow_arg_area42 = load ptr, ptr %overflow_arg_area_p41, align 8, !dbg !514
  %overflow_arg_area.next43 = getelementptr i8, ptr %overflow_arg_area42, i32 8, !dbg !514
  store ptr %overflow_arg_area.next43, ptr %overflow_arg_area_p41, align 8, !dbg !514
  br label %vaarg.end44, !dbg !514

vaarg.end44:                                      ; preds = %vaarg.in_mem40, %vaarg.in_reg38
  %vaarg.addr45 = phi ptr [ %17, %vaarg.in_reg38 ], [ %overflow_arg_area42, %vaarg.in_mem40 ], !dbg !514
  %19 = load ptr, ptr %vaarg.addr45, align 8, !dbg !514
  store ptr %19, ptr %uname, align 8, !dbg !513
  call void @llvm.lifetime.start.p0(i64 8, ptr %aname) #21, !dbg !515
  call void @llvm.dbg.declare(metadata ptr %aname, metadata !398, metadata !DIExpression()), !dbg !516
  %20 = load ptr, ptr %ap.addr, align 8, !dbg !517
  %gp_offset_p46 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 0, !dbg !517
  %gp_offset47 = load i32, ptr %gp_offset_p46, align 8, !dbg !517
  %fits_in_gp48 = icmp ule i32 %gp_offset47, 40, !dbg !517
  br i1 %fits_in_gp48, label %vaarg.in_reg49, label %vaarg.in_mem51, !dbg !517

vaarg.in_reg49:                                   ; preds = %vaarg.end44
  %21 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 3, !dbg !517
  %reg_save_area50 = load ptr, ptr %21, align 8, !dbg !517
  %22 = getelementptr i8, ptr %reg_save_area50, i32 %gp_offset47, !dbg !517
  %23 = add i32 %gp_offset47, 8, !dbg !517
  store i32 %23, ptr %gp_offset_p46, align 8, !dbg !517
  br label %vaarg.end55, !dbg !517

vaarg.in_mem51:                                   ; preds = %vaarg.end44
  %overflow_arg_area_p52 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 2, !dbg !517
  %overflow_arg_area53 = load ptr, ptr %overflow_arg_area_p52, align 8, !dbg !517
  %overflow_arg_area.next54 = getelementptr i8, ptr %overflow_arg_area53, i32 8, !dbg !517
  store ptr %overflow_arg_area.next54, ptr %overflow_arg_area_p52, align 8, !dbg !517
  br label %vaarg.end55, !dbg !517

vaarg.end55:                                      ; preds = %vaarg.in_mem51, %vaarg.in_reg49
  %vaarg.addr56 = phi ptr [ %22, %vaarg.in_reg49 ], [ %overflow_arg_area53, %vaarg.in_mem51 ], !dbg !517
  %24 = load ptr, ptr %vaarg.addr56, align 8, !dbg !517
  store ptr %24, ptr %aname, align 8, !dbg !516
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x261) #21, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x261, metadata !399, metadata !DIExpression()), !dbg !518
  %25 = load ptr, ptr %uname, align 8, !dbg !518
  %tobool57 = icmp ne ptr %25, null, !dbg !518
  br i1 %tobool57, label %cond.true, label %cond.false, !dbg !518

cond.true:                                        ; preds = %vaarg.end55
  %26 = load ptr, ptr %uname, align 8, !dbg !518
  %call58 = call i64 @strlen(ptr noundef %26) #22, !dbg !518
  br label %cond.end, !dbg !518

cond.false:                                       ; preds = %vaarg.end55
  br label %cond.end, !dbg !518

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond59 = phi i64 [ %call58, %cond.true ], [ 0, %cond.false ], !dbg !518
  store i64 %cond59, ptr %__UNIQUE_ID___x261, align 8, !dbg !518
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y262) #21, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y262, metadata !401, metadata !DIExpression()), !dbg !518
  store i64 65535, ptr %__UNIQUE_ID___y262, align 8, !dbg !518
  %27 = load i64, ptr %__UNIQUE_ID___x261, align 8, !dbg !518
  %28 = load i64, ptr %__UNIQUE_ID___y262, align 8, !dbg !518
  %cmp60 = icmp ult i64 %27, %28, !dbg !518
  br i1 %cmp60, label %cond.true62, label %cond.false63, !dbg !518

cond.true62:                                      ; preds = %cond.end
  %29 = load i64, ptr %__UNIQUE_ID___x261, align 8, !dbg !518
  br label %cond.end64, !dbg !518

cond.false63:                                     ; preds = %cond.end
  %30 = load i64, ptr %__UNIQUE_ID___y262, align 8, !dbg !518
  br label %cond.end64, !dbg !518

cond.end64:                                       ; preds = %cond.false63, %cond.true62
  %cond65 = phi i64 [ %29, %cond.true62 ], [ %30, %cond.false63 ], !dbg !518
  store i64 %cond65, ptr %tmp, align 8, !dbg !518
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y262) #21, !dbg !519
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x261) #21, !dbg !519
  %31 = load i64, ptr %tmp, align 8, !dbg !518
  %add = add i64 2, %31, !dbg !519
  %add66 = add i64 15, %add, !dbg !520
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x263) #21, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x263, metadata !402, metadata !DIExpression()), !dbg !521
  %32 = load ptr, ptr %aname, align 8, !dbg !521
  %tobool67 = icmp ne ptr %32, null, !dbg !521
  br i1 %tobool67, label %cond.true68, label %cond.false70, !dbg !521

cond.true68:                                      ; preds = %cond.end64
  %33 = load ptr, ptr %aname, align 8, !dbg !521
  %call69 = call i64 @strlen(ptr noundef %33) #22, !dbg !521
  br label %cond.end71, !dbg !521

cond.false70:                                     ; preds = %cond.end64
  br label %cond.end71, !dbg !521

cond.end71:                                       ; preds = %cond.false70, %cond.true68
  %cond72 = phi i64 [ %call69, %cond.true68 ], [ 0, %cond.false70 ], !dbg !521
  store i64 %cond72, ptr %__UNIQUE_ID___x263, align 8, !dbg !521
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y264) #21, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y264, metadata !404, metadata !DIExpression()), !dbg !521
  store i64 65535, ptr %__UNIQUE_ID___y264, align 8, !dbg !521
  %34 = load i64, ptr %__UNIQUE_ID___x263, align 8, !dbg !521
  %35 = load i64, ptr %__UNIQUE_ID___y264, align 8, !dbg !521
  %cmp74 = icmp ult i64 %34, %35, !dbg !521
  br i1 %cmp74, label %cond.true76, label %cond.false77, !dbg !521

cond.true76:                                      ; preds = %cond.end71
  %36 = load i64, ptr %__UNIQUE_ID___x263, align 8, !dbg !521
  br label %cond.end78, !dbg !521

cond.false77:                                     ; preds = %cond.end71
  %37 = load i64, ptr %__UNIQUE_ID___y264, align 8, !dbg !521
  br label %cond.end78, !dbg !521

cond.end78:                                       ; preds = %cond.false77, %cond.true76
  %cond79 = phi i64 [ %36, %cond.true76 ], [ %37, %cond.false77 ], !dbg !521
  store i64 %cond79, ptr %tmp73, align 8, !dbg !521
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y264) #21, !dbg !522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x263) #21, !dbg !522
  %38 = load i64, ptr %tmp73, align 8, !dbg !521
  %add80 = add i64 2, %38, !dbg !522
  %add81 = add i64 %add66, %add80, !dbg !523
  %add82 = add i64 %add81, 4, !dbg !524
  store i64 %add82, ptr %retval, align 8, !dbg !525
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %aname) #21, !dbg !526
  call void @llvm.lifetime.end.p0(i64 8, ptr %uname) #21, !dbg !526
  br label %cleanup762

sw.bb83:                                          ; preds = %entry
  br label %do.body84, !dbg !527

do.body84:                                        ; preds = %sw.bb83
  %39 = load ptr, ptr %fmt.addr, align 8, !dbg !528
  %call85 = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %39) #22, !dbg !528
  %tobool86 = icmp ne i32 %call85, 0, !dbg !528
  %lnot87 = xor i1 %tobool86, true, !dbg !528
  %lnot89 = xor i1 %lnot87, true, !dbg !528
  %lnot.ext90 = zext i1 %lnot89 to i32, !dbg !528
  %conv91 = sext i32 %lnot.ext90 to i64, !dbg !528
  %expval92 = call i64 @llvm.expect.i64(i64 %conv91, i64 0), !dbg !528
  %tobool93 = icmp ne i64 %expval92, 0, !dbg !528
  br i1 %tobool93, label %if.then94, label %if.end104, !dbg !531

if.then94:                                        ; preds = %do.body84
  br label %do.body95, !dbg !528

do.body95:                                        ; preds = %if.then94
  br label %do.body96, !dbg !532

do.body96:                                        ; preds = %do.body95
  br label %do.cond97, !dbg !534

do.cond97:                                        ; preds = %do.body96
  br label %do.end98, !dbg !534

do.end98:                                         ; preds = %do.cond97
  br label %do.body99, !dbg !532

do.body99:                                        ; preds = %do.end98
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 79, i32 0, i64 12) #21, !dbg !536, !srcloc !538
  br label %do.cond100, !dbg !536

do.cond100:                                       ; preds = %do.body99
  br label %do.end101, !dbg !536

do.end101:                                        ; preds = %do.cond100
  unreachable, !dbg !532

do.cond102:                                       ; No predecessors!
  br label %do.end103, !dbg !532

do.end103:                                        ; preds = %do.cond102
  br label %if.end104, !dbg !532

if.end104:                                        ; preds = %do.end103, %do.body84
  br label %do.cond105, !dbg !531

do.cond105:                                       ; preds = %if.end104
  br label %do.end106, !dbg !531

do.end106:                                        ; preds = %do.cond105
  %40 = load ptr, ptr %ap.addr, align 8, !dbg !539
  %gp_offset_p107 = getelementptr inbounds %struct.__va_list_tag, ptr %40, i32 0, i32 0, !dbg !539
  %gp_offset108 = load i32, ptr %gp_offset_p107, align 8, !dbg !539
  %fits_in_gp109 = icmp ule i32 %gp_offset108, 40, !dbg !539
  br i1 %fits_in_gp109, label %vaarg.in_reg110, label %vaarg.in_mem112, !dbg !539

vaarg.in_reg110:                                  ; preds = %do.end106
  %41 = getelementptr inbounds %struct.__va_list_tag, ptr %40, i32 0, i32 3, !dbg !539
  %reg_save_area111 = load ptr, ptr %41, align 8, !dbg !539
  %42 = getelementptr i8, ptr %reg_save_area111, i32 %gp_offset108, !dbg !539
  %43 = add i32 %gp_offset108, 8, !dbg !539
  store i32 %43, ptr %gp_offset_p107, align 8, !dbg !539
  br label %vaarg.end116, !dbg !539

vaarg.in_mem112:                                  ; preds = %do.end106
  %overflow_arg_area_p113 = getelementptr inbounds %struct.__va_list_tag, ptr %40, i32 0, i32 2, !dbg !539
  %overflow_arg_area114 = load ptr, ptr %overflow_arg_area_p113, align 8, !dbg !539
  %overflow_arg_area.next115 = getelementptr i8, ptr %overflow_arg_area114, i32 8, !dbg !539
  store ptr %overflow_arg_area.next115, ptr %overflow_arg_area_p113, align 8, !dbg !539
  br label %vaarg.end116, !dbg !539

vaarg.end116:                                     ; preds = %vaarg.in_mem112, %vaarg.in_reg110
  %vaarg.addr117 = phi ptr [ %42, %vaarg.in_reg110 ], [ %overflow_arg_area114, %vaarg.in_mem112 ], !dbg !539
  %44 = load i32, ptr %vaarg.addr117, align 4, !dbg !539
  %45 = load ptr, ptr %ap.addr, align 8, !dbg !540
  %gp_offset_p118 = getelementptr inbounds %struct.__va_list_tag, ptr %45, i32 0, i32 0, !dbg !540
  %gp_offset119 = load i32, ptr %gp_offset_p118, align 8, !dbg !540
  %fits_in_gp120 = icmp ule i32 %gp_offset119, 40, !dbg !540
  br i1 %fits_in_gp120, label %vaarg.in_reg121, label %vaarg.in_mem123, !dbg !540

vaarg.in_reg121:                                  ; preds = %vaarg.end116
  %46 = getelementptr inbounds %struct.__va_list_tag, ptr %45, i32 0, i32 3, !dbg !540
  %reg_save_area122 = load ptr, ptr %46, align 8, !dbg !540
  %47 = getelementptr i8, ptr %reg_save_area122, i32 %gp_offset119, !dbg !540
  %48 = add i32 %gp_offset119, 8, !dbg !540
  store i32 %48, ptr %gp_offset_p118, align 8, !dbg !540
  br label %vaarg.end127, !dbg !540

vaarg.in_mem123:                                  ; preds = %vaarg.end116
  %overflow_arg_area_p124 = getelementptr inbounds %struct.__va_list_tag, ptr %45, i32 0, i32 2, !dbg !540
  %overflow_arg_area125 = load ptr, ptr %overflow_arg_area_p124, align 8, !dbg !540
  %overflow_arg_area.next126 = getelementptr i8, ptr %overflow_arg_area125, i32 8, !dbg !540
  store ptr %overflow_arg_area.next126, ptr %overflow_arg_area_p124, align 8, !dbg !540
  br label %vaarg.end127, !dbg !540

vaarg.end127:                                     ; preds = %vaarg.in_mem123, %vaarg.in_reg121
  %vaarg.addr128 = phi ptr [ %47, %vaarg.in_reg121 ], [ %overflow_arg_area125, %vaarg.in_mem123 ], !dbg !540
  %49 = load i32, ptr %vaarg.addr128, align 4, !dbg !540
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %i, metadata !405, metadata !DIExpression()), !dbg !542
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwname) #21, !dbg !541
  call void @llvm.dbg.declare(metadata ptr %nwname, metadata !408, metadata !DIExpression()), !dbg !543
  %50 = load ptr, ptr %ap.addr, align 8, !dbg !544
  %gp_offset_p129 = getelementptr inbounds %struct.__va_list_tag, ptr %50, i32 0, i32 0, !dbg !544
  %gp_offset130 = load i32, ptr %gp_offset_p129, align 8, !dbg !544
  %fits_in_gp131 = icmp ule i32 %gp_offset130, 40, !dbg !544
  br i1 %fits_in_gp131, label %vaarg.in_reg132, label %vaarg.in_mem134, !dbg !544

vaarg.in_reg132:                                  ; preds = %vaarg.end127
  %51 = getelementptr inbounds %struct.__va_list_tag, ptr %50, i32 0, i32 3, !dbg !544
  %reg_save_area133 = load ptr, ptr %51, align 8, !dbg !544
  %52 = getelementptr i8, ptr %reg_save_area133, i32 %gp_offset130, !dbg !544
  %53 = add i32 %gp_offset130, 8, !dbg !544
  store i32 %53, ptr %gp_offset_p129, align 8, !dbg !544
  br label %vaarg.end138, !dbg !544

vaarg.in_mem134:                                  ; preds = %vaarg.end127
  %overflow_arg_area_p135 = getelementptr inbounds %struct.__va_list_tag, ptr %50, i32 0, i32 2, !dbg !544
  %overflow_arg_area136 = load ptr, ptr %overflow_arg_area_p135, align 8, !dbg !544
  %overflow_arg_area.next137 = getelementptr i8, ptr %overflow_arg_area136, i32 8, !dbg !544
  store ptr %overflow_arg_area.next137, ptr %overflow_arg_area_p135, align 8, !dbg !544
  br label %vaarg.end138, !dbg !544

vaarg.end138:                                     ; preds = %vaarg.in_mem134, %vaarg.in_reg132
  %vaarg.addr139 = phi ptr [ %52, %vaarg.in_reg132 ], [ %overflow_arg_area136, %vaarg.in_mem134 ], !dbg !544
  %54 = load i32, ptr %vaarg.addr139, align 4, !dbg !544
  store i32 %54, ptr %nwname, align 4, !dbg !543
  call void @llvm.lifetime.start.p0(i64 8, ptr %wname_all) #21, !dbg !545
  call void @llvm.dbg.declare(metadata ptr %wname_all, metadata !409, metadata !DIExpression()), !dbg !546
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnames) #21, !dbg !547
  call void @llvm.dbg.declare(metadata ptr %wnames, metadata !410, metadata !DIExpression()), !dbg !548
  %55 = load ptr, ptr %ap.addr, align 8, !dbg !549
  %gp_offset_p140 = getelementptr inbounds %struct.__va_list_tag, ptr %55, i32 0, i32 0, !dbg !549
  %gp_offset141 = load i32, ptr %gp_offset_p140, align 8, !dbg !549
  %fits_in_gp142 = icmp ule i32 %gp_offset141, 40, !dbg !549
  br i1 %fits_in_gp142, label %vaarg.in_reg143, label %vaarg.in_mem145, !dbg !549

vaarg.in_reg143:                                  ; preds = %vaarg.end138
  %56 = getelementptr inbounds %struct.__va_list_tag, ptr %55, i32 0, i32 3, !dbg !549
  %reg_save_area144 = load ptr, ptr %56, align 8, !dbg !549
  %57 = getelementptr i8, ptr %reg_save_area144, i32 %gp_offset141, !dbg !549
  %58 = add i32 %gp_offset141, 8, !dbg !549
  store i32 %58, ptr %gp_offset_p140, align 8, !dbg !549
  br label %vaarg.end149, !dbg !549

vaarg.in_mem145:                                  ; preds = %vaarg.end138
  %overflow_arg_area_p146 = getelementptr inbounds %struct.__va_list_tag, ptr %55, i32 0, i32 2, !dbg !549
  %overflow_arg_area147 = load ptr, ptr %overflow_arg_area_p146, align 8, !dbg !549
  %overflow_arg_area.next148 = getelementptr i8, ptr %overflow_arg_area147, i32 8, !dbg !549
  store ptr %overflow_arg_area.next148, ptr %overflow_arg_area_p146, align 8, !dbg !549
  br label %vaarg.end149, !dbg !549

vaarg.end149:                                     ; preds = %vaarg.in_mem145, %vaarg.in_reg143
  %vaarg.addr150 = phi ptr [ %57, %vaarg.in_reg143 ], [ %overflow_arg_area147, %vaarg.in_mem145 ], !dbg !549
  %59 = load ptr, ptr %vaarg.addr150, align 8, !dbg !549
  store ptr %59, ptr %wnames, align 8, !dbg !548
  store i32 0, ptr %i, align 4, !dbg !550
  store i64 0, ptr %wname_all, align 8, !dbg !551
  br label %for.cond, !dbg !552

for.cond:                                         ; preds = %for.inc, %vaarg.end149
  %60 = load i32, ptr %i, align 4, !dbg !553
  %61 = load i32, ptr %nwname, align 4, !dbg !554
  %cmp151 = icmp ult i32 %60, %61, !dbg !555
  br i1 %cmp151, label %for.body, label %for.end, !dbg !556

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x265) #21, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x265, metadata !412, metadata !DIExpression()), !dbg !557
  %62 = load ptr, ptr %wnames, align 8, !dbg !557
  %63 = load i32, ptr %i, align 4, !dbg !557
  %idxprom = zext i32 %63 to i64, !dbg !557
  %arrayidx = getelementptr ptr, ptr %62, i64 %idxprom, !dbg !557
  %64 = load ptr, ptr %arrayidx, align 8, !dbg !557
  %tobool153 = icmp ne ptr %64, null, !dbg !557
  br i1 %tobool153, label %cond.true154, label %cond.false158, !dbg !557

cond.true154:                                     ; preds = %for.body
  %65 = load ptr, ptr %wnames, align 8, !dbg !557
  %66 = load i32, ptr %i, align 4, !dbg !557
  %idxprom155 = zext i32 %66 to i64, !dbg !557
  %arrayidx156 = getelementptr ptr, ptr %65, i64 %idxprom155, !dbg !557
  %67 = load ptr, ptr %arrayidx156, align 8, !dbg !557
  %call157 = call i64 @strlen(ptr noundef %67) #22, !dbg !557
  br label %cond.end159, !dbg !557

cond.false158:                                    ; preds = %for.body
  br label %cond.end159, !dbg !557

cond.end159:                                      ; preds = %cond.false158, %cond.true154
  %cond160 = phi i64 [ %call157, %cond.true154 ], [ 0, %cond.false158 ], !dbg !557
  store i64 %cond160, ptr %__UNIQUE_ID___x265, align 8, !dbg !557
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y266) #21, !dbg !557
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y266, metadata !417, metadata !DIExpression()), !dbg !557
  store i64 65535, ptr %__UNIQUE_ID___y266, align 8, !dbg !557
  %68 = load i64, ptr %__UNIQUE_ID___x265, align 8, !dbg !557
  %69 = load i64, ptr %__UNIQUE_ID___y266, align 8, !dbg !557
  %cmp162 = icmp ult i64 %68, %69, !dbg !557
  br i1 %cmp162, label %cond.true164, label %cond.false165, !dbg !557

cond.true164:                                     ; preds = %cond.end159
  %70 = load i64, ptr %__UNIQUE_ID___x265, align 8, !dbg !557
  br label %cond.end166, !dbg !557

cond.false165:                                    ; preds = %cond.end159
  %71 = load i64, ptr %__UNIQUE_ID___y266, align 8, !dbg !557
  br label %cond.end166, !dbg !557

cond.end166:                                      ; preds = %cond.false165, %cond.true164
  %cond167 = phi i64 [ %70, %cond.true164 ], [ %71, %cond.false165 ], !dbg !557
  store i64 %cond167, ptr %tmp161, align 8, !dbg !557
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y266) #21, !dbg !558
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x265) #21, !dbg !558
  %72 = load i64, ptr %tmp161, align 8, !dbg !557
  %add168 = add i64 2, %72, !dbg !558
  %73 = load i64, ptr %wname_all, align 8, !dbg !559
  %add169 = add i64 %73, %add168, !dbg !559
  store i64 %add169, ptr %wname_all, align 8, !dbg !559
  br label %for.inc, !dbg !560

for.inc:                                          ; preds = %cond.end166
  %74 = load i32, ptr %i, align 4, !dbg !561
  %inc = add i32 %74, 1, !dbg !561
  store i32 %inc, ptr %i, align 4, !dbg !561
  br label %for.cond, !dbg !562, !llvm.loop !563

for.end:                                          ; preds = %for.cond
  %75 = load i64, ptr %wname_all, align 8, !dbg !567
  %add170 = add i64 17, %75, !dbg !568
  store i64 %add170, ptr %retval, align 8, !dbg !569
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnames) #21, !dbg !570
  call void @llvm.lifetime.end.p0(i64 8, ptr %wname_all) #21, !dbg !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwname) #21, !dbg !570
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !570
  br label %cleanup762

sw.bb171:                                         ; preds = %entry
  br label %do.body172, !dbg !571

do.body172:                                       ; preds = %sw.bb171
  %76 = load ptr, ptr %fmt.addr, align 8, !dbg !572
  %call173 = call i32 @strcmp(ptr noundef @.str.2, ptr noundef %76) #22, !dbg !572
  %tobool174 = icmp ne i32 %call173, 0, !dbg !572
  %lnot175 = xor i1 %tobool174, true, !dbg !572
  %lnot177 = xor i1 %lnot175, true, !dbg !572
  %lnot.ext178 = zext i1 %lnot177 to i32, !dbg !572
  %conv179 = sext i32 %lnot.ext178 to i64, !dbg !572
  %expval180 = call i64 @llvm.expect.i64(i64 %conv179, i64 0), !dbg !572
  %tobool181 = icmp ne i64 %expval180, 0, !dbg !572
  br i1 %tobool181, label %if.then182, label %if.end192, !dbg !575

if.then182:                                       ; preds = %do.body172
  br label %do.body183, !dbg !572

do.body183:                                       ; preds = %if.then182
  br label %do.body184, !dbg !576

do.body184:                                       ; preds = %do.body183
  br label %do.cond185, !dbg !578

do.cond185:                                       ; preds = %do.body184
  br label %do.end186, !dbg !578

do.end186:                                        ; preds = %do.cond185
  br label %do.body187, !dbg !576

do.body187:                                       ; preds = %do.end186
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 93, i32 0, i64 12) #21, !dbg !580, !srcloc !582
  br label %do.cond188, !dbg !580

do.cond188:                                       ; preds = %do.body187
  br label %do.end189, !dbg !580

do.end189:                                        ; preds = %do.cond188
  unreachable, !dbg !576

do.cond190:                                       ; No predecessors!
  br label %do.end191, !dbg !576

do.end191:                                        ; preds = %do.cond190
  br label %if.end192, !dbg !576

if.end192:                                        ; preds = %do.end191, %do.body172
  br label %do.cond193, !dbg !575

do.cond193:                                       ; preds = %if.end192
  br label %do.end194, !dbg !575

do.end194:                                        ; preds = %do.cond193
  %77 = load ptr, ptr %ap.addr, align 8, !dbg !583
  %gp_offset_p195 = getelementptr inbounds %struct.__va_list_tag, ptr %77, i32 0, i32 0, !dbg !583
  %gp_offset196 = load i32, ptr %gp_offset_p195, align 8, !dbg !583
  %fits_in_gp197 = icmp ule i32 %gp_offset196, 40, !dbg !583
  br i1 %fits_in_gp197, label %vaarg.in_reg198, label %vaarg.in_mem200, !dbg !583

vaarg.in_reg198:                                  ; preds = %do.end194
  %78 = getelementptr inbounds %struct.__va_list_tag, ptr %77, i32 0, i32 3, !dbg !583
  %reg_save_area199 = load ptr, ptr %78, align 8, !dbg !583
  %79 = getelementptr i8, ptr %reg_save_area199, i32 %gp_offset196, !dbg !583
  %80 = add i32 %gp_offset196, 8, !dbg !583
  store i32 %80, ptr %gp_offset_p195, align 8, !dbg !583
  br label %vaarg.end204, !dbg !583

vaarg.in_mem200:                                  ; preds = %do.end194
  %overflow_arg_area_p201 = getelementptr inbounds %struct.__va_list_tag, ptr %77, i32 0, i32 2, !dbg !583
  %overflow_arg_area202 = load ptr, ptr %overflow_arg_area_p201, align 8, !dbg !583
  %overflow_arg_area.next203 = getelementptr i8, ptr %overflow_arg_area202, i32 8, !dbg !583
  store ptr %overflow_arg_area.next203, ptr %overflow_arg_area_p201, align 8, !dbg !583
  br label %vaarg.end204, !dbg !583

vaarg.end204:                                     ; preds = %vaarg.in_mem200, %vaarg.in_reg198
  %vaarg.addr205 = phi ptr [ %79, %vaarg.in_reg198 ], [ %overflow_arg_area202, %vaarg.in_mem200 ], !dbg !583
  %81 = load i32, ptr %vaarg.addr205, align 4, !dbg !583
  %82 = load ptr, ptr %ap.addr, align 8, !dbg !584
  %gp_offset_p206 = getelementptr inbounds %struct.__va_list_tag, ptr %82, i32 0, i32 0, !dbg !584
  %gp_offset207 = load i32, ptr %gp_offset_p206, align 8, !dbg !584
  %fits_in_gp208 = icmp ule i32 %gp_offset207, 40, !dbg !584
  br i1 %fits_in_gp208, label %vaarg.in_reg209, label %vaarg.in_mem211, !dbg !584

vaarg.in_reg209:                                  ; preds = %vaarg.end204
  %83 = getelementptr inbounds %struct.__va_list_tag, ptr %82, i32 0, i32 3, !dbg !584
  %reg_save_area210 = load ptr, ptr %83, align 8, !dbg !584
  %84 = getelementptr i8, ptr %reg_save_area210, i32 %gp_offset207, !dbg !584
  %85 = add i32 %gp_offset207, 8, !dbg !584
  store i32 %85, ptr %gp_offset_p206, align 8, !dbg !584
  br label %vaarg.end215, !dbg !584

vaarg.in_mem211:                                  ; preds = %vaarg.end204
  %overflow_arg_area_p212 = getelementptr inbounds %struct.__va_list_tag, ptr %82, i32 0, i32 2, !dbg !584
  %overflow_arg_area213 = load ptr, ptr %overflow_arg_area_p212, align 8, !dbg !584
  %overflow_arg_area.next214 = getelementptr i8, ptr %overflow_arg_area213, i32 8, !dbg !584
  store ptr %overflow_arg_area.next214, ptr %overflow_arg_area_p212, align 8, !dbg !584
  br label %vaarg.end215, !dbg !584

vaarg.end215:                                     ; preds = %vaarg.in_mem211, %vaarg.in_reg209
  %vaarg.addr216 = phi ptr [ %84, %vaarg.in_reg209 ], [ %overflow_arg_area213, %vaarg.in_mem211 ], !dbg !584
  %86 = load i32, ptr %vaarg.addr216, align 4, !dbg !584
  call void @llvm.lifetime.start.p0(i64 4, ptr %nwname217) #21, !dbg !585
  call void @llvm.dbg.declare(metadata ptr %nwname217, metadata !418, metadata !DIExpression()), !dbg !586
  %87 = load ptr, ptr %ap.addr, align 8, !dbg !587
  %gp_offset_p218 = getelementptr inbounds %struct.__va_list_tag, ptr %87, i32 0, i32 0, !dbg !587
  %gp_offset219 = load i32, ptr %gp_offset_p218, align 8, !dbg !587
  %fits_in_gp220 = icmp ule i32 %gp_offset219, 40, !dbg !587
  br i1 %fits_in_gp220, label %vaarg.in_reg221, label %vaarg.in_mem223, !dbg !587

vaarg.in_reg221:                                  ; preds = %vaarg.end215
  %88 = getelementptr inbounds %struct.__va_list_tag, ptr %87, i32 0, i32 3, !dbg !587
  %reg_save_area222 = load ptr, ptr %88, align 8, !dbg !587
  %89 = getelementptr i8, ptr %reg_save_area222, i32 %gp_offset219, !dbg !587
  %90 = add i32 %gp_offset219, 8, !dbg !587
  store i32 %90, ptr %gp_offset_p218, align 8, !dbg !587
  br label %vaarg.end227, !dbg !587

vaarg.in_mem223:                                  ; preds = %vaarg.end215
  %overflow_arg_area_p224 = getelementptr inbounds %struct.__va_list_tag, ptr %87, i32 0, i32 2, !dbg !587
  %overflow_arg_area225 = load ptr, ptr %overflow_arg_area_p224, align 8, !dbg !587
  %overflow_arg_area.next226 = getelementptr i8, ptr %overflow_arg_area225, i32 8, !dbg !587
  store ptr %overflow_arg_area.next226, ptr %overflow_arg_area_p224, align 8, !dbg !587
  br label %vaarg.end227, !dbg !587

vaarg.end227:                                     ; preds = %vaarg.in_mem223, %vaarg.in_reg221
  %vaarg.addr228 = phi ptr [ %89, %vaarg.in_reg221 ], [ %overflow_arg_area225, %vaarg.in_mem223 ], !dbg !587
  %91 = load i32, ptr %vaarg.addr228, align 4, !dbg !587
  store i32 %91, ptr %nwname217, align 4, !dbg !586
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x267) #21, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x267, metadata !420, metadata !DIExpression()), !dbg !588
  %92 = load i32, ptr %nwname217, align 4, !dbg !588
  %mul = mul i32 %92, 13, !dbg !588
  %add229 = add i32 9, %mul, !dbg !588
  %conv230 = zext i32 %add229 to i64, !dbg !588
  store i64 %conv230, ptr %__UNIQUE_ID___x267, align 8, !dbg !588
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y268) #21, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y268, metadata !422, metadata !DIExpression()), !dbg !588
  %93 = load i32, ptr %err_size, align 4, !dbg !588
  %conv231 = sext i32 %93 to i64, !dbg !588
  store i64 %conv231, ptr %__UNIQUE_ID___y268, align 8, !dbg !588
  %94 = load i64, ptr %__UNIQUE_ID___x267, align 8, !dbg !588
  %95 = load i64, ptr %__UNIQUE_ID___y268, align 8, !dbg !588
  %cmp233 = icmp ugt i64 %94, %95, !dbg !588
  br i1 %cmp233, label %cond.true235, label %cond.false236, !dbg !588

cond.true235:                                     ; preds = %vaarg.end227
  %96 = load i64, ptr %__UNIQUE_ID___x267, align 8, !dbg !588
  br label %cond.end237, !dbg !588

cond.false236:                                    ; preds = %vaarg.end227
  %97 = load i64, ptr %__UNIQUE_ID___y268, align 8, !dbg !588
  br label %cond.end237, !dbg !588

cond.end237:                                      ; preds = %cond.false236, %cond.true235
  %cond238 = phi i64 [ %96, %cond.true235 ], [ %97, %cond.false236 ], !dbg !588
  store i64 %cond238, ptr %tmp232, align 8, !dbg !588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y268) #21, !dbg !589
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x267) #21, !dbg !589
  %98 = load i64, ptr %tmp232, align 8, !dbg !588
  store i64 %98, ptr %retval, align 8, !dbg !590
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %nwname217) #21, !dbg !591
  br label %cleanup762

sw.bb239:                                         ; preds = %entry
  br label %do.body240, !dbg !592

do.body240:                                       ; preds = %sw.bb239
  %99 = load ptr, ptr %fmt.addr, align 8, !dbg !593
  %call241 = call i32 @strcmp(ptr noundef @.str.3, ptr noundef %99) #22, !dbg !593
  %tobool242 = icmp ne i32 %call241, 0, !dbg !593
  %lnot243 = xor i1 %tobool242, true, !dbg !593
  %lnot245 = xor i1 %lnot243, true, !dbg !593
  %lnot.ext246 = zext i1 %lnot245 to i32, !dbg !593
  %conv247 = sext i32 %lnot.ext246 to i64, !dbg !593
  %expval248 = call i64 @llvm.expect.i64(i64 %conv247, i64 0), !dbg !593
  %tobool249 = icmp ne i64 %expval248, 0, !dbg !593
  br i1 %tobool249, label %if.then250, label %if.end260, !dbg !596

if.then250:                                       ; preds = %do.body240
  br label %do.body251, !dbg !593

do.body251:                                       ; preds = %if.then250
  br label %do.body252, !dbg !597

do.body252:                                       ; preds = %do.body251
  br label %do.cond253, !dbg !599

do.cond253:                                       ; preds = %do.body252
  br label %do.end254, !dbg !599

do.end254:                                        ; preds = %do.cond253
  br label %do.body255, !dbg !597

do.body255:                                       ; preds = %do.end254
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 102, i32 0, i64 12) #21, !dbg !601, !srcloc !603
  br label %do.cond256, !dbg !601

do.cond256:                                       ; preds = %do.body255
  br label %do.end257, !dbg !601

do.end257:                                        ; preds = %do.cond256
  unreachable, !dbg !597

do.cond258:                                       ; No predecessors!
  br label %do.end259, !dbg !597

do.end259:                                        ; preds = %do.cond258
  br label %if.end260, !dbg !597

if.end260:                                        ; preds = %do.end259, %do.body240
  br label %do.cond261, !dbg !596

do.cond261:                                       ; preds = %if.end260
  br label %do.end262, !dbg !596

do.end262:                                        ; preds = %do.cond261
  %100 = load ptr, ptr %ap.addr, align 8, !dbg !604
  %gp_offset_p263 = getelementptr inbounds %struct.__va_list_tag, ptr %100, i32 0, i32 0, !dbg !604
  %gp_offset264 = load i32, ptr %gp_offset_p263, align 8, !dbg !604
  %fits_in_gp265 = icmp ule i32 %gp_offset264, 40, !dbg !604
  br i1 %fits_in_gp265, label %vaarg.in_reg266, label %vaarg.in_mem268, !dbg !604

vaarg.in_reg266:                                  ; preds = %do.end262
  %101 = getelementptr inbounds %struct.__va_list_tag, ptr %100, i32 0, i32 3, !dbg !604
  %reg_save_area267 = load ptr, ptr %101, align 8, !dbg !604
  %102 = getelementptr i8, ptr %reg_save_area267, i32 %gp_offset264, !dbg !604
  %103 = add i32 %gp_offset264, 8, !dbg !604
  store i32 %103, ptr %gp_offset_p263, align 8, !dbg !604
  br label %vaarg.end272, !dbg !604

vaarg.in_mem268:                                  ; preds = %do.end262
  %overflow_arg_area_p269 = getelementptr inbounds %struct.__va_list_tag, ptr %100, i32 0, i32 2, !dbg !604
  %overflow_arg_area270 = load ptr, ptr %overflow_arg_area_p269, align 8, !dbg !604
  %overflow_arg_area.next271 = getelementptr i8, ptr %overflow_arg_area270, i32 8, !dbg !604
  store ptr %overflow_arg_area.next271, ptr %overflow_arg_area_p269, align 8, !dbg !604
  br label %vaarg.end272, !dbg !604

vaarg.end272:                                     ; preds = %vaarg.in_mem268, %vaarg.in_reg266
  %vaarg.addr273 = phi ptr [ %102, %vaarg.in_reg266 ], [ %overflow_arg_area270, %vaarg.in_mem268 ], !dbg !604
  %104 = load i32, ptr %vaarg.addr273, align 4, !dbg !604
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #21, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %name, metadata !423, metadata !DIExpression()), !dbg !606
  %105 = load ptr, ptr %ap.addr, align 8, !dbg !607
  %gp_offset_p274 = getelementptr inbounds %struct.__va_list_tag, ptr %105, i32 0, i32 0, !dbg !607
  %gp_offset275 = load i32, ptr %gp_offset_p274, align 8, !dbg !607
  %fits_in_gp276 = icmp ule i32 %gp_offset275, 40, !dbg !607
  br i1 %fits_in_gp276, label %vaarg.in_reg277, label %vaarg.in_mem279, !dbg !607

vaarg.in_reg277:                                  ; preds = %vaarg.end272
  %106 = getelementptr inbounds %struct.__va_list_tag, ptr %105, i32 0, i32 3, !dbg !607
  %reg_save_area278 = load ptr, ptr %106, align 8, !dbg !607
  %107 = getelementptr i8, ptr %reg_save_area278, i32 %gp_offset275, !dbg !607
  %108 = add i32 %gp_offset275, 8, !dbg !607
  store i32 %108, ptr %gp_offset_p274, align 8, !dbg !607
  br label %vaarg.end283, !dbg !607

vaarg.in_mem279:                                  ; preds = %vaarg.end272
  %overflow_arg_area_p280 = getelementptr inbounds %struct.__va_list_tag, ptr %105, i32 0, i32 2, !dbg !607
  %overflow_arg_area281 = load ptr, ptr %overflow_arg_area_p280, align 8, !dbg !607
  %overflow_arg_area.next282 = getelementptr i8, ptr %overflow_arg_area281, i32 8, !dbg !607
  store ptr %overflow_arg_area.next282, ptr %overflow_arg_area_p280, align 8, !dbg !607
  br label %vaarg.end283, !dbg !607

vaarg.end283:                                     ; preds = %vaarg.in_mem279, %vaarg.in_reg277
  %vaarg.addr284 = phi ptr [ %107, %vaarg.in_reg277 ], [ %overflow_arg_area281, %vaarg.in_mem279 ], !dbg !607
  %109 = load ptr, ptr %vaarg.addr284, align 8, !dbg !607
  store ptr %109, ptr %name, align 8, !dbg !606
  %110 = load ptr, ptr %c.addr, align 8, !dbg !608
  %proto_version285 = getelementptr inbounds %struct.p9_client, ptr %110, i32 0, i32 2, !dbg !609
  %111 = load i8, ptr %proto_version285, align 8, !dbg !609
  %conv286 = zext i8 %111 to i32, !dbg !608
  %cmp287 = icmp eq i32 %conv286, 0, !dbg !610
  br i1 %cmp287, label %if.then289, label %if.else, !dbg !611

if.then289:                                       ; preds = %vaarg.end283
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x269) #21, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x269, metadata !425, metadata !DIExpression()), !dbg !612
  %112 = load ptr, ptr %name, align 8, !dbg !612
  %tobool290 = icmp ne ptr %112, null, !dbg !612
  br i1 %tobool290, label %cond.true291, label %cond.false293, !dbg !612

cond.true291:                                     ; preds = %if.then289
  %113 = load ptr, ptr %name, align 8, !dbg !612
  %call292 = call i64 @strlen(ptr noundef %113) #22, !dbg !612
  br label %cond.end294, !dbg !612

cond.false293:                                    ; preds = %if.then289
  br label %cond.end294, !dbg !612

cond.end294:                                      ; preds = %cond.false293, %cond.true291
  %cond295 = phi i64 [ %call292, %cond.true291 ], [ 0, %cond.false293 ], !dbg !612
  store i64 %cond295, ptr %__UNIQUE_ID___x269, align 8, !dbg !612
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y270) #21, !dbg !612
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y270, metadata !429, metadata !DIExpression()), !dbg !612
  store i64 65535, ptr %__UNIQUE_ID___y270, align 8, !dbg !612
  %114 = load i64, ptr %__UNIQUE_ID___x269, align 8, !dbg !612
  %115 = load i64, ptr %__UNIQUE_ID___y270, align 8, !dbg !612
  %cmp297 = icmp ult i64 %114, %115, !dbg !612
  br i1 %cmp297, label %cond.true299, label %cond.false300, !dbg !612

cond.true299:                                     ; preds = %cond.end294
  %116 = load i64, ptr %__UNIQUE_ID___x269, align 8, !dbg !612
  br label %cond.end301, !dbg !612

cond.false300:                                    ; preds = %cond.end294
  %117 = load i64, ptr %__UNIQUE_ID___y270, align 8, !dbg !612
  br label %cond.end301, !dbg !612

cond.end301:                                      ; preds = %cond.false300, %cond.true299
  %cond302 = phi i64 [ %116, %cond.true299 ], [ %117, %cond.false300 ], !dbg !612
  store i64 %cond302, ptr %tmp296, align 8, !dbg !612
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y270) #21, !dbg !613
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x269) #21, !dbg !613
  %118 = load i64, ptr %tmp296, align 8, !dbg !612
  %add303 = add i64 2, %118, !dbg !613
  %add304 = add i64 11, %add303, !dbg !614
  %add305 = add i64 %add304, 4, !dbg !615
  %add306 = add i64 %add305, 1, !dbg !616
  store i64 %add306, ptr %retval, align 8, !dbg !617
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !617

if.else:                                          ; preds = %vaarg.end283
  %119 = load ptr, ptr %ap.addr, align 8, !dbg !618
  %gp_offset_p307 = getelementptr inbounds %struct.__va_list_tag, ptr %119, i32 0, i32 0, !dbg !618
  %gp_offset308 = load i32, ptr %gp_offset_p307, align 8, !dbg !618
  %fits_in_gp309 = icmp ule i32 %gp_offset308, 40, !dbg !618
  br i1 %fits_in_gp309, label %vaarg.in_reg310, label %vaarg.in_mem312, !dbg !618

vaarg.in_reg310:                                  ; preds = %if.else
  %120 = getelementptr inbounds %struct.__va_list_tag, ptr %119, i32 0, i32 3, !dbg !618
  %reg_save_area311 = load ptr, ptr %120, align 8, !dbg !618
  %121 = getelementptr i8, ptr %reg_save_area311, i32 %gp_offset308, !dbg !618
  %122 = add i32 %gp_offset308, 8, !dbg !618
  store i32 %122, ptr %gp_offset_p307, align 8, !dbg !618
  br label %vaarg.end316, !dbg !618

vaarg.in_mem312:                                  ; preds = %if.else
  %overflow_arg_area_p313 = getelementptr inbounds %struct.__va_list_tag, ptr %119, i32 0, i32 2, !dbg !618
  %overflow_arg_area314 = load ptr, ptr %overflow_arg_area_p313, align 8, !dbg !618
  %overflow_arg_area.next315 = getelementptr i8, ptr %overflow_arg_area314, i32 8, !dbg !618
  store ptr %overflow_arg_area.next315, ptr %overflow_arg_area_p313, align 8, !dbg !618
  br label %vaarg.end316, !dbg !618

vaarg.end316:                                     ; preds = %vaarg.in_mem312, %vaarg.in_reg310
  %vaarg.addr317 = phi ptr [ %121, %vaarg.in_reg310 ], [ %overflow_arg_area314, %vaarg.in_mem312 ], !dbg !618
  %123 = load i32, ptr %vaarg.addr317, align 4, !dbg !618
  %124 = load ptr, ptr %ap.addr, align 8, !dbg !619
  %gp_offset_p318 = getelementptr inbounds %struct.__va_list_tag, ptr %124, i32 0, i32 0, !dbg !619
  %gp_offset319 = load i32, ptr %gp_offset_p318, align 8, !dbg !619
  %fits_in_gp320 = icmp ule i32 %gp_offset319, 40, !dbg !619
  br i1 %fits_in_gp320, label %vaarg.in_reg321, label %vaarg.in_mem323, !dbg !619

vaarg.in_reg321:                                  ; preds = %vaarg.end316
  %125 = getelementptr inbounds %struct.__va_list_tag, ptr %124, i32 0, i32 3, !dbg !619
  %reg_save_area322 = load ptr, ptr %125, align 8, !dbg !619
  %126 = getelementptr i8, ptr %reg_save_area322, i32 %gp_offset319, !dbg !619
  %127 = add i32 %gp_offset319, 8, !dbg !619
  store i32 %127, ptr %gp_offset_p318, align 8, !dbg !619
  br label %vaarg.end327, !dbg !619

vaarg.in_mem323:                                  ; preds = %vaarg.end316
  %overflow_arg_area_p324 = getelementptr inbounds %struct.__va_list_tag, ptr %124, i32 0, i32 2, !dbg !619
  %overflow_arg_area325 = load ptr, ptr %overflow_arg_area_p324, align 8, !dbg !619
  %overflow_arg_area.next326 = getelementptr i8, ptr %overflow_arg_area325, i32 8, !dbg !619
  store ptr %overflow_arg_area.next326, ptr %overflow_arg_area_p324, align 8, !dbg !619
  br label %vaarg.end327, !dbg !619

vaarg.end327:                                     ; preds = %vaarg.in_mem323, %vaarg.in_reg321
  %vaarg.addr328 = phi ptr [ %126, %vaarg.in_reg321 ], [ %overflow_arg_area325, %vaarg.in_mem323 ], !dbg !619
  %128 = load i32, ptr %vaarg.addr328, align 4, !dbg !619
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext) #21, !dbg !620
  call void @llvm.dbg.declare(metadata ptr %ext, metadata !430, metadata !DIExpression()), !dbg !621
  %129 = load ptr, ptr %ap.addr, align 8, !dbg !622
  %gp_offset_p329 = getelementptr inbounds %struct.__va_list_tag, ptr %129, i32 0, i32 0, !dbg !622
  %gp_offset330 = load i32, ptr %gp_offset_p329, align 8, !dbg !622
  %fits_in_gp331 = icmp ule i32 %gp_offset330, 40, !dbg !622
  br i1 %fits_in_gp331, label %vaarg.in_reg332, label %vaarg.in_mem334, !dbg !622

vaarg.in_reg332:                                  ; preds = %vaarg.end327
  %130 = getelementptr inbounds %struct.__va_list_tag, ptr %129, i32 0, i32 3, !dbg !622
  %reg_save_area333 = load ptr, ptr %130, align 8, !dbg !622
  %131 = getelementptr i8, ptr %reg_save_area333, i32 %gp_offset330, !dbg !622
  %132 = add i32 %gp_offset330, 8, !dbg !622
  store i32 %132, ptr %gp_offset_p329, align 8, !dbg !622
  br label %vaarg.end338, !dbg !622

vaarg.in_mem334:                                  ; preds = %vaarg.end327
  %overflow_arg_area_p335 = getelementptr inbounds %struct.__va_list_tag, ptr %129, i32 0, i32 2, !dbg !622
  %overflow_arg_area336 = load ptr, ptr %overflow_arg_area_p335, align 8, !dbg !622
  %overflow_arg_area.next337 = getelementptr i8, ptr %overflow_arg_area336, i32 8, !dbg !622
  store ptr %overflow_arg_area.next337, ptr %overflow_arg_area_p335, align 8, !dbg !622
  br label %vaarg.end338, !dbg !622

vaarg.end338:                                     ; preds = %vaarg.in_mem334, %vaarg.in_reg332
  %vaarg.addr339 = phi ptr [ %131, %vaarg.in_reg332 ], [ %overflow_arg_area336, %vaarg.in_mem334 ], !dbg !622
  %133 = load ptr, ptr %vaarg.addr339, align 8, !dbg !622
  store ptr %133, ptr %ext, align 8, !dbg !621
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x271) #21, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x271, metadata !433, metadata !DIExpression()), !dbg !623
  %134 = load ptr, ptr %name, align 8, !dbg !623
  %tobool340 = icmp ne ptr %134, null, !dbg !623
  br i1 %tobool340, label %cond.true341, label %cond.false343, !dbg !623

cond.true341:                                     ; preds = %vaarg.end338
  %135 = load ptr, ptr %name, align 8, !dbg !623
  %call342 = call i64 @strlen(ptr noundef %135) #22, !dbg !623
  br label %cond.end344, !dbg !623

cond.false343:                                    ; preds = %vaarg.end338
  br label %cond.end344, !dbg !623

cond.end344:                                      ; preds = %cond.false343, %cond.true341
  %cond345 = phi i64 [ %call342, %cond.true341 ], [ 0, %cond.false343 ], !dbg !623
  store i64 %cond345, ptr %__UNIQUE_ID___x271, align 8, !dbg !623
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y272) #21, !dbg !623
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y272, metadata !435, metadata !DIExpression()), !dbg !623
  store i64 65535, ptr %__UNIQUE_ID___y272, align 8, !dbg !623
  %136 = load i64, ptr %__UNIQUE_ID___x271, align 8, !dbg !623
  %137 = load i64, ptr %__UNIQUE_ID___y272, align 8, !dbg !623
  %cmp347 = icmp ult i64 %136, %137, !dbg !623
  br i1 %cmp347, label %cond.true349, label %cond.false350, !dbg !623

cond.true349:                                     ; preds = %cond.end344
  %138 = load i64, ptr %__UNIQUE_ID___x271, align 8, !dbg !623
  br label %cond.end351, !dbg !623

cond.false350:                                    ; preds = %cond.end344
  %139 = load i64, ptr %__UNIQUE_ID___y272, align 8, !dbg !623
  br label %cond.end351, !dbg !623

cond.end351:                                      ; preds = %cond.false350, %cond.true349
  %cond352 = phi i64 [ %138, %cond.true349 ], [ %139, %cond.false350 ], !dbg !623
  store i64 %cond352, ptr %tmp346, align 8, !dbg !623
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y272) #21, !dbg !624
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x271) #21, !dbg !624
  %140 = load i64, ptr %tmp346, align 8, !dbg !623
  %add353 = add i64 2, %140, !dbg !624
  %add354 = add i64 11, %add353, !dbg !625
  %add355 = add i64 %add354, 4, !dbg !626
  %add356 = add i64 %add355, 1, !dbg !627
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x273) #21, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x273, metadata !436, metadata !DIExpression()), !dbg !628
  %141 = load ptr, ptr %ext, align 8, !dbg !628
  %tobool357 = icmp ne ptr %141, null, !dbg !628
  br i1 %tobool357, label %cond.true358, label %cond.false360, !dbg !628

cond.true358:                                     ; preds = %cond.end351
  %142 = load ptr, ptr %ext, align 8, !dbg !628
  %call359 = call i64 @strlen(ptr noundef %142) #22, !dbg !628
  br label %cond.end361, !dbg !628

cond.false360:                                    ; preds = %cond.end351
  br label %cond.end361, !dbg !628

cond.end361:                                      ; preds = %cond.false360, %cond.true358
  %cond362 = phi i64 [ %call359, %cond.true358 ], [ 0, %cond.false360 ], !dbg !628
  store i64 %cond362, ptr %__UNIQUE_ID___x273, align 8, !dbg !628
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y274) #21, !dbg !628
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y274, metadata !438, metadata !DIExpression()), !dbg !628
  store i64 65535, ptr %__UNIQUE_ID___y274, align 8, !dbg !628
  %143 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !628
  %144 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !628
  %cmp364 = icmp ult i64 %143, %144, !dbg !628
  br i1 %cmp364, label %cond.true366, label %cond.false367, !dbg !628

cond.true366:                                     ; preds = %cond.end361
  %145 = load i64, ptr %__UNIQUE_ID___x273, align 8, !dbg !628
  br label %cond.end368, !dbg !628

cond.false367:                                    ; preds = %cond.end361
  %146 = load i64, ptr %__UNIQUE_ID___y274, align 8, !dbg !628
  br label %cond.end368, !dbg !628

cond.end368:                                      ; preds = %cond.false367, %cond.true366
  %cond369 = phi i64 [ %145, %cond.true366 ], [ %146, %cond.false367 ], !dbg !628
  store i64 %cond369, ptr %tmp363, align 8, !dbg !628
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y274) #21, !dbg !629
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x273) #21, !dbg !629
  %147 = load i64, ptr %tmp363, align 8, !dbg !628
  %add370 = add i64 2, %147, !dbg !629
  %add371 = add i64 %add356, %add370, !dbg !630
  store i64 %add371, ptr %retval, align 8, !dbg !631
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext) #21, !dbg !632
  br label %cleanup

cleanup:                                          ; preds = %cond.end368, %cond.end301
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #21, !dbg !633
  br label %cleanup762

sw.bb372:                                         ; preds = %entry
  br label %do.body373, !dbg !634

do.body373:                                       ; preds = %sw.bb372
  %148 = load ptr, ptr %fmt.addr, align 8, !dbg !635
  %call374 = call i32 @strcmp(ptr noundef @.str.4, ptr noundef %148) #22, !dbg !635
  %tobool375 = icmp ne i32 %call374, 0, !dbg !635
  %lnot376 = xor i1 %tobool375, true, !dbg !635
  %lnot378 = xor i1 %lnot376, true, !dbg !635
  %lnot.ext379 = zext i1 %lnot378 to i32, !dbg !635
  %conv380 = sext i32 %lnot.ext379 to i64, !dbg !635
  %expval381 = call i64 @llvm.expect.i64(i64 %conv380, i64 0), !dbg !635
  %tobool382 = icmp ne i64 %expval381, 0, !dbg !635
  br i1 %tobool382, label %if.then383, label %if.end393, !dbg !638

if.then383:                                       ; preds = %do.body373
  br label %do.body384, !dbg !635

do.body384:                                       ; preds = %if.then383
  br label %do.body385, !dbg !639

do.body385:                                       ; preds = %do.body384
  br label %do.cond386, !dbg !641

do.cond386:                                       ; preds = %do.body385
  br label %do.end387, !dbg !641

do.end387:                                        ; preds = %do.cond386
  br label %do.body388, !dbg !639

do.body388:                                       ; preds = %do.end387
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 120, i32 0, i64 12) #21, !dbg !643, !srcloc !645
  br label %do.cond389, !dbg !643

do.cond389:                                       ; preds = %do.body388
  br label %do.end390, !dbg !643

do.end390:                                        ; preds = %do.cond389
  unreachable, !dbg !639

do.cond391:                                       ; No predecessors!
  br label %do.end392, !dbg !639

do.end392:                                        ; preds = %do.cond391
  br label %if.end393, !dbg !639

if.end393:                                        ; preds = %do.end392, %do.body373
  br label %do.cond394, !dbg !638

do.cond394:                                       ; preds = %if.end393
  br label %do.end395, !dbg !638

do.end395:                                        ; preds = %do.cond394
  %149 = load ptr, ptr %ap.addr, align 8, !dbg !646
  %gp_offset_p396 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 0, !dbg !646
  %gp_offset397 = load i32, ptr %gp_offset_p396, align 8, !dbg !646
  %fits_in_gp398 = icmp ule i32 %gp_offset397, 40, !dbg !646
  br i1 %fits_in_gp398, label %vaarg.in_reg399, label %vaarg.in_mem401, !dbg !646

vaarg.in_reg399:                                  ; preds = %do.end395
  %150 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 3, !dbg !646
  %reg_save_area400 = load ptr, ptr %150, align 8, !dbg !646
  %151 = getelementptr i8, ptr %reg_save_area400, i32 %gp_offset397, !dbg !646
  %152 = add i32 %gp_offset397, 8, !dbg !646
  store i32 %152, ptr %gp_offset_p396, align 8, !dbg !646
  br label %vaarg.end405, !dbg !646

vaarg.in_mem401:                                  ; preds = %do.end395
  %overflow_arg_area_p402 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 2, !dbg !646
  %overflow_arg_area403 = load ptr, ptr %overflow_arg_area_p402, align 8, !dbg !646
  %overflow_arg_area.next404 = getelementptr i8, ptr %overflow_arg_area403, i32 8, !dbg !646
  store ptr %overflow_arg_area.next404, ptr %overflow_arg_area_p402, align 8, !dbg !646
  br label %vaarg.end405, !dbg !646

vaarg.end405:                                     ; preds = %vaarg.in_mem401, %vaarg.in_reg399
  %vaarg.addr406 = phi ptr [ %151, %vaarg.in_reg399 ], [ %overflow_arg_area403, %vaarg.in_mem401 ], !dbg !646
  %153 = load i32, ptr %vaarg.addr406, align 4, !dbg !646
  call void @llvm.lifetime.start.p0(i64 8, ptr %name407) #21, !dbg !647
  call void @llvm.dbg.declare(metadata ptr %name407, metadata !439, metadata !DIExpression()), !dbg !648
  %154 = load ptr, ptr %ap.addr, align 8, !dbg !649
  %gp_offset_p408 = getelementptr inbounds %struct.__va_list_tag, ptr %154, i32 0, i32 0, !dbg !649
  %gp_offset409 = load i32, ptr %gp_offset_p408, align 8, !dbg !649
  %fits_in_gp410 = icmp ule i32 %gp_offset409, 40, !dbg !649
  br i1 %fits_in_gp410, label %vaarg.in_reg411, label %vaarg.in_mem413, !dbg !649

vaarg.in_reg411:                                  ; preds = %vaarg.end405
  %155 = getelementptr inbounds %struct.__va_list_tag, ptr %154, i32 0, i32 3, !dbg !649
  %reg_save_area412 = load ptr, ptr %155, align 8, !dbg !649
  %156 = getelementptr i8, ptr %reg_save_area412, i32 %gp_offset409, !dbg !649
  %157 = add i32 %gp_offset409, 8, !dbg !649
  store i32 %157, ptr %gp_offset_p408, align 8, !dbg !649
  br label %vaarg.end417, !dbg !649

vaarg.in_mem413:                                  ; preds = %vaarg.end405
  %overflow_arg_area_p414 = getelementptr inbounds %struct.__va_list_tag, ptr %154, i32 0, i32 2, !dbg !649
  %overflow_arg_area415 = load ptr, ptr %overflow_arg_area_p414, align 8, !dbg !649
  %overflow_arg_area.next416 = getelementptr i8, ptr %overflow_arg_area415, i32 8, !dbg !649
  store ptr %overflow_arg_area.next416, ptr %overflow_arg_area_p414, align 8, !dbg !649
  br label %vaarg.end417, !dbg !649

vaarg.end417:                                     ; preds = %vaarg.in_mem413, %vaarg.in_reg411
  %vaarg.addr418 = phi ptr [ %156, %vaarg.in_reg411 ], [ %overflow_arg_area415, %vaarg.in_mem413 ], !dbg !649
  %158 = load ptr, ptr %vaarg.addr418, align 8, !dbg !649
  store ptr %158, ptr %name407, align 8, !dbg !648
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x275) #21, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x275, metadata !441, metadata !DIExpression()), !dbg !650
  %159 = load ptr, ptr %name407, align 8, !dbg !650
  %tobool419 = icmp ne ptr %159, null, !dbg !650
  br i1 %tobool419, label %cond.true420, label %cond.false422, !dbg !650

cond.true420:                                     ; preds = %vaarg.end417
  %160 = load ptr, ptr %name407, align 8, !dbg !650
  %call421 = call i64 @strlen(ptr noundef %160) #22, !dbg !650
  br label %cond.end423, !dbg !650

cond.false422:                                    ; preds = %vaarg.end417
  br label %cond.end423, !dbg !650

cond.end423:                                      ; preds = %cond.false422, %cond.true420
  %cond424 = phi i64 [ %call421, %cond.true420 ], [ 0, %cond.false422 ], !dbg !650
  store i64 %cond424, ptr %__UNIQUE_ID___x275, align 8, !dbg !650
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y276) #21, !dbg !650
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y276, metadata !443, metadata !DIExpression()), !dbg !650
  store i64 65535, ptr %__UNIQUE_ID___y276, align 8, !dbg !650
  %161 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !650
  %162 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !650
  %cmp426 = icmp ult i64 %161, %162, !dbg !650
  br i1 %cmp426, label %cond.true428, label %cond.false429, !dbg !650

cond.true428:                                     ; preds = %cond.end423
  %163 = load i64, ptr %__UNIQUE_ID___x275, align 8, !dbg !650
  br label %cond.end430, !dbg !650

cond.false429:                                    ; preds = %cond.end423
  %164 = load i64, ptr %__UNIQUE_ID___y276, align 8, !dbg !650
  br label %cond.end430, !dbg !650

cond.end430:                                      ; preds = %cond.false429, %cond.true428
  %cond431 = phi i64 [ %163, %cond.true428 ], [ %164, %cond.false429 ], !dbg !650
  store i64 %cond431, ptr %tmp425, align 8, !dbg !650
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y276) #21, !dbg !651
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x275) #21, !dbg !651
  %165 = load i64, ptr %tmp425, align 8, !dbg !650
  %add432 = add i64 2, %165, !dbg !651
  %add433 = add i64 11, %add432, !dbg !652
  %add434 = add i64 %add433, 4, !dbg !653
  %add435 = add i64 %add434, 4, !dbg !654
  %add436 = add i64 %add435, 4, !dbg !655
  store i64 %add436, ptr %retval, align 8, !dbg !656
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %name407) #21, !dbg !657
  br label %cleanup762

sw.bb438:                                         ; preds = %entry, %entry
  br label %do.body439, !dbg !658

do.body439:                                       ; preds = %sw.bb438
  %166 = load ptr, ptr %fmt.addr, align 8, !dbg !659
  %call440 = call i32 @strcmp(ptr noundef @.str.5, ptr noundef %166) #22, !dbg !659
  %tobool441 = icmp ne i32 %call440, 0, !dbg !659
  %lnot442 = xor i1 %tobool441, true, !dbg !659
  %lnot444 = xor i1 %lnot442, true, !dbg !659
  %lnot.ext445 = zext i1 %lnot444 to i32, !dbg !659
  %conv446 = sext i32 %lnot.ext445 to i64, !dbg !659
  %expval447 = call i64 @llvm.expect.i64(i64 %conv446, i64 0), !dbg !659
  %tobool448 = icmp ne i64 %expval447, 0, !dbg !659
  br i1 %tobool448, label %if.then449, label %if.end459, !dbg !662

if.then449:                                       ; preds = %do.body439
  br label %do.body450, !dbg !659

do.body450:                                       ; preds = %if.then449
  br label %do.body451, !dbg !663

do.body451:                                       ; preds = %do.body450
  br label %do.cond452, !dbg !665

do.cond452:                                       ; preds = %do.body451
  br label %do.end453, !dbg !665

do.end453:                                        ; preds = %do.cond452
  br label %do.body454, !dbg !663

do.body454:                                       ; preds = %do.end453
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 129, i32 0, i64 12) #21, !dbg !667, !srcloc !669
  br label %do.cond455, !dbg !667

do.cond455:                                       ; preds = %do.body454
  br label %do.end456, !dbg !667

do.end456:                                        ; preds = %do.cond455
  unreachable, !dbg !663

do.cond457:                                       ; No predecessors!
  br label %do.end458, !dbg !663

do.end458:                                        ; preds = %do.cond457
  br label %if.end459, !dbg !663

if.end459:                                        ; preds = %do.end458, %do.body439
  br label %do.cond460, !dbg !662

do.cond460:                                       ; preds = %if.end459
  br label %do.end461, !dbg !662

do.end461:                                        ; preds = %do.cond460
  %167 = load ptr, ptr %ap.addr, align 8, !dbg !670
  %gp_offset_p462 = getelementptr inbounds %struct.__va_list_tag, ptr %167, i32 0, i32 0, !dbg !670
  %gp_offset463 = load i32, ptr %gp_offset_p462, align 8, !dbg !670
  %fits_in_gp464 = icmp ule i32 %gp_offset463, 40, !dbg !670
  br i1 %fits_in_gp464, label %vaarg.in_reg465, label %vaarg.in_mem467, !dbg !670

vaarg.in_reg465:                                  ; preds = %do.end461
  %168 = getelementptr inbounds %struct.__va_list_tag, ptr %167, i32 0, i32 3, !dbg !670
  %reg_save_area466 = load ptr, ptr %168, align 8, !dbg !670
  %169 = getelementptr i8, ptr %reg_save_area466, i32 %gp_offset463, !dbg !670
  %170 = add i32 %gp_offset463, 8, !dbg !670
  store i32 %170, ptr %gp_offset_p462, align 8, !dbg !670
  br label %vaarg.end471, !dbg !670

vaarg.in_mem467:                                  ; preds = %do.end461
  %overflow_arg_area_p468 = getelementptr inbounds %struct.__va_list_tag, ptr %167, i32 0, i32 2, !dbg !670
  %overflow_arg_area469 = load ptr, ptr %overflow_arg_area_p468, align 8, !dbg !670
  %overflow_arg_area.next470 = getelementptr i8, ptr %overflow_arg_area469, i32 8, !dbg !670
  store ptr %overflow_arg_area.next470, ptr %overflow_arg_area_p468, align 8, !dbg !670
  br label %vaarg.end471, !dbg !670

vaarg.end471:                                     ; preds = %vaarg.in_mem467, %vaarg.in_reg465
  %vaarg.addr472 = phi ptr [ %169, %vaarg.in_reg465 ], [ %overflow_arg_area469, %vaarg.in_mem467 ], !dbg !670
  %171 = load i32, ptr %vaarg.addr472, align 4, !dbg !670
  %172 = load ptr, ptr %ap.addr, align 8, !dbg !671
  %gp_offset_p473 = getelementptr inbounds %struct.__va_list_tag, ptr %172, i32 0, i32 0, !dbg !671
  %gp_offset474 = load i32, ptr %gp_offset_p473, align 8, !dbg !671
  %fits_in_gp475 = icmp ule i32 %gp_offset474, 40, !dbg !671
  br i1 %fits_in_gp475, label %vaarg.in_reg476, label %vaarg.in_mem478, !dbg !671

vaarg.in_reg476:                                  ; preds = %vaarg.end471
  %173 = getelementptr inbounds %struct.__va_list_tag, ptr %172, i32 0, i32 3, !dbg !671
  %reg_save_area477 = load ptr, ptr %173, align 8, !dbg !671
  %174 = getelementptr i8, ptr %reg_save_area477, i32 %gp_offset474, !dbg !671
  %175 = add i32 %gp_offset474, 8, !dbg !671
  store i32 %175, ptr %gp_offset_p473, align 8, !dbg !671
  br label %vaarg.end482, !dbg !671

vaarg.in_mem478:                                  ; preds = %vaarg.end471
  %overflow_arg_area_p479 = getelementptr inbounds %struct.__va_list_tag, ptr %172, i32 0, i32 2, !dbg !671
  %overflow_arg_area480 = load ptr, ptr %overflow_arg_area_p479, align 8, !dbg !671
  %overflow_arg_area.next481 = getelementptr i8, ptr %overflow_arg_area480, i32 8, !dbg !671
  store ptr %overflow_arg_area.next481, ptr %overflow_arg_area_p479, align 8, !dbg !671
  br label %vaarg.end482, !dbg !671

vaarg.end482:                                     ; preds = %vaarg.in_mem478, %vaarg.in_reg476
  %vaarg.addr483 = phi ptr [ %174, %vaarg.in_reg476 ], [ %overflow_arg_area480, %vaarg.in_mem478 ], !dbg !671
  %176 = load i64, ptr %vaarg.addr483, align 8, !dbg !671
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #21, !dbg !672
  call void @llvm.dbg.declare(metadata ptr %count, metadata !444, metadata !DIExpression()), !dbg !673
  %177 = load ptr, ptr %ap.addr, align 8, !dbg !674
  %gp_offset_p484 = getelementptr inbounds %struct.__va_list_tag, ptr %177, i32 0, i32 0, !dbg !674
  %gp_offset485 = load i32, ptr %gp_offset_p484, align 8, !dbg !674
  %fits_in_gp486 = icmp ule i32 %gp_offset485, 40, !dbg !674
  br i1 %fits_in_gp486, label %vaarg.in_reg487, label %vaarg.in_mem489, !dbg !674

vaarg.in_reg487:                                  ; preds = %vaarg.end482
  %178 = getelementptr inbounds %struct.__va_list_tag, ptr %177, i32 0, i32 3, !dbg !674
  %reg_save_area488 = load ptr, ptr %178, align 8, !dbg !674
  %179 = getelementptr i8, ptr %reg_save_area488, i32 %gp_offset485, !dbg !674
  %180 = add i32 %gp_offset485, 8, !dbg !674
  store i32 %180, ptr %gp_offset_p484, align 8, !dbg !674
  br label %vaarg.end493, !dbg !674

vaarg.in_mem489:                                  ; preds = %vaarg.end482
  %overflow_arg_area_p490 = getelementptr inbounds %struct.__va_list_tag, ptr %177, i32 0, i32 2, !dbg !674
  %overflow_arg_area491 = load ptr, ptr %overflow_arg_area_p490, align 8, !dbg !674
  %overflow_arg_area.next492 = getelementptr i8, ptr %overflow_arg_area491, i32 8, !dbg !674
  store ptr %overflow_arg_area.next492, ptr %overflow_arg_area_p490, align 8, !dbg !674
  br label %vaarg.end493, !dbg !674

vaarg.end493:                                     ; preds = %vaarg.in_mem489, %vaarg.in_reg487
  %vaarg.addr494 = phi ptr [ %179, %vaarg.in_reg487 ], [ %overflow_arg_area491, %vaarg.in_mem489 ], !dbg !674
  %181 = load i32, ptr %vaarg.addr494, align 4, !dbg !674
  store i32 %181, ptr %count, align 4, !dbg !673
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x277) #21, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x277, metadata !450, metadata !DIExpression()), !dbg !675
  %182 = load i32, ptr %count, align 4, !dbg !675
  %add495 = add i32 11, %182, !dbg !675
  %conv496 = sext i32 %add495 to i64, !dbg !675
  store i64 %conv496, ptr %__UNIQUE_ID___x277, align 8, !dbg !675
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y278) #21, !dbg !675
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y278, metadata !452, metadata !DIExpression()), !dbg !675
  %183 = load i32, ptr %err_size, align 4, !dbg !675
  %conv497 = sext i32 %183 to i64, !dbg !675
  store i64 %conv497, ptr %__UNIQUE_ID___y278, align 8, !dbg !675
  %184 = load i64, ptr %__UNIQUE_ID___x277, align 8, !dbg !675
  %185 = load i64, ptr %__UNIQUE_ID___y278, align 8, !dbg !675
  %cmp499 = icmp ugt i64 %184, %185, !dbg !675
  br i1 %cmp499, label %cond.true501, label %cond.false502, !dbg !675

cond.true501:                                     ; preds = %vaarg.end493
  %186 = load i64, ptr %__UNIQUE_ID___x277, align 8, !dbg !675
  br label %cond.end503, !dbg !675

cond.false502:                                    ; preds = %vaarg.end493
  %187 = load i64, ptr %__UNIQUE_ID___y278, align 8, !dbg !675
  br label %cond.end503, !dbg !675

cond.end503:                                      ; preds = %cond.false502, %cond.true501
  %cond504 = phi i64 [ %186, %cond.true501 ], [ %187, %cond.false502 ], !dbg !675
  store i64 %cond504, ptr %tmp498, align 8, !dbg !675
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y278) #21, !dbg !676
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x277) #21, !dbg !676
  %188 = load i64, ptr %tmp498, align 8, !dbg !675
  store i64 %188, ptr %retval, align 8, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #21, !dbg !678
  br label %cleanup762

sw.bb506:                                         ; preds = %entry
  br label %do.body507, !dbg !679

do.body507:                                       ; preds = %sw.bb506
  %189 = load ptr, ptr %fmt.addr, align 8, !dbg !680
  %call508 = call i32 @strcmp(ptr noundef @.str.6, ptr noundef %189) #22, !dbg !680
  %tobool509 = icmp ne i32 %call508, 0, !dbg !680
  %lnot510 = xor i1 %tobool509, true, !dbg !680
  %lnot512 = xor i1 %lnot510, true, !dbg !680
  %lnot.ext513 = zext i1 %lnot512 to i32, !dbg !680
  %conv514 = sext i32 %lnot.ext513 to i64, !dbg !680
  %expval515 = call i64 @llvm.expect.i64(i64 %conv514, i64 0), !dbg !680
  %tobool516 = icmp ne i64 %expval515, 0, !dbg !680
  br i1 %tobool516, label %if.then517, label %if.end527, !dbg !683

if.then517:                                       ; preds = %do.body507
  br label %do.body518, !dbg !680

do.body518:                                       ; preds = %if.then517
  br label %do.body519, !dbg !684

do.body519:                                       ; preds = %do.body518
  br label %do.cond520, !dbg !686

do.cond520:                                       ; preds = %do.body519
  br label %do.end521, !dbg !686

do.end521:                                        ; preds = %do.cond520
  br label %do.body522, !dbg !684

do.body522:                                       ; preds = %do.end521
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 138, i32 0, i64 12) #21, !dbg !688, !srcloc !690
  br label %do.cond523, !dbg !688

do.cond523:                                       ; preds = %do.body522
  br label %do.end524, !dbg !688

do.end524:                                        ; preds = %do.cond523
  unreachable, !dbg !684

do.cond525:                                       ; No predecessors!
  br label %do.end526, !dbg !684

do.end526:                                        ; preds = %do.cond525
  br label %if.end527, !dbg !684

if.end527:                                        ; preds = %do.end526, %do.body507
  br label %do.cond528, !dbg !683

do.cond528:                                       ; preds = %if.end527
  br label %do.end529, !dbg !683

do.end529:                                        ; preds = %do.cond528
  %190 = load ptr, ptr %ap.addr, align 8, !dbg !691
  %gp_offset_p530 = getelementptr inbounds %struct.__va_list_tag, ptr %190, i32 0, i32 0, !dbg !691
  %gp_offset531 = load i32, ptr %gp_offset_p530, align 8, !dbg !691
  %fits_in_gp532 = icmp ule i32 %gp_offset531, 40, !dbg !691
  br i1 %fits_in_gp532, label %vaarg.in_reg533, label %vaarg.in_mem535, !dbg !691

vaarg.in_reg533:                                  ; preds = %do.end529
  %191 = getelementptr inbounds %struct.__va_list_tag, ptr %190, i32 0, i32 3, !dbg !691
  %reg_save_area534 = load ptr, ptr %191, align 8, !dbg !691
  %192 = getelementptr i8, ptr %reg_save_area534, i32 %gp_offset531, !dbg !691
  %193 = add i32 %gp_offset531, 8, !dbg !691
  store i32 %193, ptr %gp_offset_p530, align 8, !dbg !691
  br label %vaarg.end539, !dbg !691

vaarg.in_mem535:                                  ; preds = %do.end529
  %overflow_arg_area_p536 = getelementptr inbounds %struct.__va_list_tag, ptr %190, i32 0, i32 2, !dbg !691
  %overflow_arg_area537 = load ptr, ptr %overflow_arg_area_p536, align 8, !dbg !691
  %overflow_arg_area.next538 = getelementptr i8, ptr %overflow_arg_area537, i32 8, !dbg !691
  store ptr %overflow_arg_area.next538, ptr %overflow_arg_area_p536, align 8, !dbg !691
  br label %vaarg.end539, !dbg !691

vaarg.end539:                                     ; preds = %vaarg.in_mem535, %vaarg.in_reg533
  %vaarg.addr540 = phi ptr [ %192, %vaarg.in_reg533 ], [ %overflow_arg_area537, %vaarg.in_mem535 ], !dbg !691
  %194 = load i32, ptr %vaarg.addr540, align 4, !dbg !691
  %195 = load ptr, ptr %ap.addr, align 8, !dbg !692
  %gp_offset_p541 = getelementptr inbounds %struct.__va_list_tag, ptr %195, i32 0, i32 0, !dbg !692
  %gp_offset542 = load i32, ptr %gp_offset_p541, align 8, !dbg !692
  %fits_in_gp543 = icmp ule i32 %gp_offset542, 40, !dbg !692
  br i1 %fits_in_gp543, label %vaarg.in_reg544, label %vaarg.in_mem546, !dbg !692

vaarg.in_reg544:                                  ; preds = %vaarg.end539
  %196 = getelementptr inbounds %struct.__va_list_tag, ptr %195, i32 0, i32 3, !dbg !692
  %reg_save_area545 = load ptr, ptr %196, align 8, !dbg !692
  %197 = getelementptr i8, ptr %reg_save_area545, i32 %gp_offset542, !dbg !692
  %198 = add i32 %gp_offset542, 8, !dbg !692
  store i32 %198, ptr %gp_offset_p541, align 8, !dbg !692
  br label %vaarg.end550, !dbg !692

vaarg.in_mem546:                                  ; preds = %vaarg.end539
  %overflow_arg_area_p547 = getelementptr inbounds %struct.__va_list_tag, ptr %195, i32 0, i32 2, !dbg !692
  %overflow_arg_area548 = load ptr, ptr %overflow_arg_area_p547, align 8, !dbg !692
  %overflow_arg_area.next549 = getelementptr i8, ptr %overflow_arg_area548, i32 8, !dbg !692
  store ptr %overflow_arg_area.next549, ptr %overflow_arg_area_p547, align 8, !dbg !692
  br label %vaarg.end550, !dbg !692

vaarg.end550:                                     ; preds = %vaarg.in_mem546, %vaarg.in_reg544
  %vaarg.addr551 = phi ptr [ %197, %vaarg.in_reg544 ], [ %overflow_arg_area548, %vaarg.in_mem546 ], !dbg !692
  %199 = load i64, ptr %vaarg.addr551, align 8, !dbg !692
  call void @llvm.lifetime.start.p0(i64 4, ptr %count552) #21, !dbg !693
  call void @llvm.dbg.declare(metadata ptr %count552, metadata !453, metadata !DIExpression()), !dbg !694
  %200 = load ptr, ptr %ap.addr, align 8, !dbg !695
  %gp_offset_p553 = getelementptr inbounds %struct.__va_list_tag, ptr %200, i32 0, i32 0, !dbg !695
  %gp_offset554 = load i32, ptr %gp_offset_p553, align 8, !dbg !695
  %fits_in_gp555 = icmp ule i32 %gp_offset554, 40, !dbg !695
  br i1 %fits_in_gp555, label %vaarg.in_reg556, label %vaarg.in_mem558, !dbg !695

vaarg.in_reg556:                                  ; preds = %vaarg.end550
  %201 = getelementptr inbounds %struct.__va_list_tag, ptr %200, i32 0, i32 3, !dbg !695
  %reg_save_area557 = load ptr, ptr %201, align 8, !dbg !695
  %202 = getelementptr i8, ptr %reg_save_area557, i32 %gp_offset554, !dbg !695
  %203 = add i32 %gp_offset554, 8, !dbg !695
  store i32 %203, ptr %gp_offset_p553, align 8, !dbg !695
  br label %vaarg.end562, !dbg !695

vaarg.in_mem558:                                  ; preds = %vaarg.end550
  %overflow_arg_area_p559 = getelementptr inbounds %struct.__va_list_tag, ptr %200, i32 0, i32 2, !dbg !695
  %overflow_arg_area560 = load ptr, ptr %overflow_arg_area_p559, align 8, !dbg !695
  %overflow_arg_area.next561 = getelementptr i8, ptr %overflow_arg_area560, i32 8, !dbg !695
  store ptr %overflow_arg_area.next561, ptr %overflow_arg_area_p559, align 8, !dbg !695
  br label %vaarg.end562, !dbg !695

vaarg.end562:                                     ; preds = %vaarg.in_mem558, %vaarg.in_reg556
  %vaarg.addr563 = phi ptr [ %202, %vaarg.in_reg556 ], [ %overflow_arg_area560, %vaarg.in_mem558 ], !dbg !695
  %204 = load i32, ptr %vaarg.addr563, align 4, !dbg !695
  store i32 %204, ptr %count552, align 4, !dbg !694
  %205 = load i32, ptr %count552, align 4, !dbg !696
  %add564 = add i32 23, %205, !dbg !697
  %conv565 = sext i32 %add564 to i64, !dbg !698
  store i64 %conv565, ptr %retval, align 8, !dbg !699
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %count552) #21, !dbg !700
  br label %cleanup762

sw.bb567:                                         ; preds = %entry
  br label %do.body568, !dbg !701

do.body568:                                       ; preds = %sw.bb567
  %206 = load ptr, ptr %fmt.addr, align 8, !dbg !702
  %call569 = call i32 @strcmp(ptr noundef @.str.7, ptr noundef %206) #22, !dbg !702
  %tobool570 = icmp ne i32 %call569, 0, !dbg !702
  %lnot571 = xor i1 %tobool570, true, !dbg !702
  %lnot573 = xor i1 %lnot571, true, !dbg !702
  %lnot.ext574 = zext i1 %lnot573 to i32, !dbg !702
  %conv575 = sext i32 %lnot.ext574 to i64, !dbg !702
  %expval576 = call i64 @llvm.expect.i64(i64 %conv575, i64 0), !dbg !702
  %tobool577 = icmp ne i64 %expval576, 0, !dbg !702
  br i1 %tobool577, label %if.then578, label %if.end588, !dbg !705

if.then578:                                       ; preds = %do.body568
  br label %do.body579, !dbg !702

do.body579:                                       ; preds = %if.then578
  br label %do.body580, !dbg !706

do.body580:                                       ; preds = %do.body579
  br label %do.cond581, !dbg !708

do.cond581:                                       ; preds = %do.body580
  br label %do.end582, !dbg !708

do.end582:                                        ; preds = %do.cond581
  br label %do.body583, !dbg !706

do.body583:                                       ; preds = %do.end582
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 147, i32 0, i64 12) #21, !dbg !710, !srcloc !712
  br label %do.cond584, !dbg !710

do.cond584:                                       ; preds = %do.body583
  br label %do.end585, !dbg !710

do.end585:                                        ; preds = %do.cond584
  unreachable, !dbg !706

do.cond586:                                       ; No predecessors!
  br label %do.end587, !dbg !706

do.end587:                                        ; preds = %do.cond586
  br label %if.end588, !dbg !706

if.end588:                                        ; preds = %do.end587, %do.body568
  br label %do.cond589, !dbg !705

do.cond589:                                       ; preds = %if.end588
  br label %do.end590, !dbg !705

do.end590:                                        ; preds = %do.cond589
  %207 = load ptr, ptr %ap.addr, align 8, !dbg !713
  %gp_offset_p591 = getelementptr inbounds %struct.__va_list_tag, ptr %207, i32 0, i32 0, !dbg !713
  %gp_offset592 = load i32, ptr %gp_offset_p591, align 8, !dbg !713
  %fits_in_gp593 = icmp ule i32 %gp_offset592, 40, !dbg !713
  br i1 %fits_in_gp593, label %vaarg.in_reg594, label %vaarg.in_mem596, !dbg !713

vaarg.in_reg594:                                  ; preds = %do.end590
  %208 = getelementptr inbounds %struct.__va_list_tag, ptr %207, i32 0, i32 3, !dbg !713
  %reg_save_area595 = load ptr, ptr %208, align 8, !dbg !713
  %209 = getelementptr i8, ptr %reg_save_area595, i32 %gp_offset592, !dbg !713
  %210 = add i32 %gp_offset592, 8, !dbg !713
  store i32 %210, ptr %gp_offset_p591, align 8, !dbg !713
  br label %vaarg.end600, !dbg !713

vaarg.in_mem596:                                  ; preds = %do.end590
  %overflow_arg_area_p597 = getelementptr inbounds %struct.__va_list_tag, ptr %207, i32 0, i32 2, !dbg !713
  %overflow_arg_area598 = load ptr, ptr %overflow_arg_area_p597, align 8, !dbg !713
  %overflow_arg_area.next599 = getelementptr i8, ptr %overflow_arg_area598, i32 8, !dbg !713
  store ptr %overflow_arg_area.next599, ptr %overflow_arg_area_p597, align 8, !dbg !713
  br label %vaarg.end600, !dbg !713

vaarg.end600:                                     ; preds = %vaarg.in_mem596, %vaarg.in_reg594
  %vaarg.addr601 = phi ptr [ %209, %vaarg.in_reg594 ], [ %overflow_arg_area598, %vaarg.in_mem596 ], !dbg !713
  %211 = load i32, ptr %vaarg.addr601, align 4, !dbg !713
  call void @llvm.lifetime.start.p0(i64 8, ptr %oldname) #21, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %oldname, metadata !455, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr %newname) #21, !dbg !714
  call void @llvm.dbg.declare(metadata ptr %newname, metadata !457, metadata !DIExpression()), !dbg !716
  %212 = load ptr, ptr %ap.addr, align 8, !dbg !717
  %gp_offset_p602 = getelementptr inbounds %struct.__va_list_tag, ptr %212, i32 0, i32 0, !dbg !717
  %gp_offset603 = load i32, ptr %gp_offset_p602, align 8, !dbg !717
  %fits_in_gp604 = icmp ule i32 %gp_offset603, 40, !dbg !717
  br i1 %fits_in_gp604, label %vaarg.in_reg605, label %vaarg.in_mem607, !dbg !717

vaarg.in_reg605:                                  ; preds = %vaarg.end600
  %213 = getelementptr inbounds %struct.__va_list_tag, ptr %212, i32 0, i32 3, !dbg !717
  %reg_save_area606 = load ptr, ptr %213, align 8, !dbg !717
  %214 = getelementptr i8, ptr %reg_save_area606, i32 %gp_offset603, !dbg !717
  %215 = add i32 %gp_offset603, 8, !dbg !717
  store i32 %215, ptr %gp_offset_p602, align 8, !dbg !717
  br label %vaarg.end611, !dbg !717

vaarg.in_mem607:                                  ; preds = %vaarg.end600
  %overflow_arg_area_p608 = getelementptr inbounds %struct.__va_list_tag, ptr %212, i32 0, i32 2, !dbg !717
  %overflow_arg_area609 = load ptr, ptr %overflow_arg_area_p608, align 8, !dbg !717
  %overflow_arg_area.next610 = getelementptr i8, ptr %overflow_arg_area609, i32 8, !dbg !717
  store ptr %overflow_arg_area.next610, ptr %overflow_arg_area_p608, align 8, !dbg !717
  br label %vaarg.end611, !dbg !717

vaarg.end611:                                     ; preds = %vaarg.in_mem607, %vaarg.in_reg605
  %vaarg.addr612 = phi ptr [ %214, %vaarg.in_reg605 ], [ %overflow_arg_area609, %vaarg.in_mem607 ], !dbg !717
  %216 = load ptr, ptr %vaarg.addr612, align 8, !dbg !717
  store ptr %216, ptr %oldname, align 8, !dbg !718
  %217 = load ptr, ptr %ap.addr, align 8, !dbg !719
  %gp_offset_p613 = getelementptr inbounds %struct.__va_list_tag, ptr %217, i32 0, i32 0, !dbg !719
  %gp_offset614 = load i32, ptr %gp_offset_p613, align 8, !dbg !719
  %fits_in_gp615 = icmp ule i32 %gp_offset614, 40, !dbg !719
  br i1 %fits_in_gp615, label %vaarg.in_reg616, label %vaarg.in_mem618, !dbg !719

vaarg.in_reg616:                                  ; preds = %vaarg.end611
  %218 = getelementptr inbounds %struct.__va_list_tag, ptr %217, i32 0, i32 3, !dbg !719
  %reg_save_area617 = load ptr, ptr %218, align 8, !dbg !719
  %219 = getelementptr i8, ptr %reg_save_area617, i32 %gp_offset614, !dbg !719
  %220 = add i32 %gp_offset614, 8, !dbg !719
  store i32 %220, ptr %gp_offset_p613, align 8, !dbg !719
  br label %vaarg.end622, !dbg !719

vaarg.in_mem618:                                  ; preds = %vaarg.end611
  %overflow_arg_area_p619 = getelementptr inbounds %struct.__va_list_tag, ptr %217, i32 0, i32 2, !dbg !719
  %overflow_arg_area620 = load ptr, ptr %overflow_arg_area_p619, align 8, !dbg !719
  %overflow_arg_area.next621 = getelementptr i8, ptr %overflow_arg_area620, i32 8, !dbg !719
  store ptr %overflow_arg_area.next621, ptr %overflow_arg_area_p619, align 8, !dbg !719
  br label %vaarg.end622, !dbg !719

vaarg.end622:                                     ; preds = %vaarg.in_mem618, %vaarg.in_reg616
  %vaarg.addr623 = phi ptr [ %219, %vaarg.in_reg616 ], [ %overflow_arg_area620, %vaarg.in_mem618 ], !dbg !719
  %221 = load i32, ptr %vaarg.addr623, align 4, !dbg !719
  %222 = load ptr, ptr %ap.addr, align 8, !dbg !720
  %gp_offset_p624 = getelementptr inbounds %struct.__va_list_tag, ptr %222, i32 0, i32 0, !dbg !720
  %gp_offset625 = load i32, ptr %gp_offset_p624, align 8, !dbg !720
  %fits_in_gp626 = icmp ule i32 %gp_offset625, 40, !dbg !720
  br i1 %fits_in_gp626, label %vaarg.in_reg627, label %vaarg.in_mem629, !dbg !720

vaarg.in_reg627:                                  ; preds = %vaarg.end622
  %223 = getelementptr inbounds %struct.__va_list_tag, ptr %222, i32 0, i32 3, !dbg !720
  %reg_save_area628 = load ptr, ptr %223, align 8, !dbg !720
  %224 = getelementptr i8, ptr %reg_save_area628, i32 %gp_offset625, !dbg !720
  %225 = add i32 %gp_offset625, 8, !dbg !720
  store i32 %225, ptr %gp_offset_p624, align 8, !dbg !720
  br label %vaarg.end633, !dbg !720

vaarg.in_mem629:                                  ; preds = %vaarg.end622
  %overflow_arg_area_p630 = getelementptr inbounds %struct.__va_list_tag, ptr %222, i32 0, i32 2, !dbg !720
  %overflow_arg_area631 = load ptr, ptr %overflow_arg_area_p630, align 8, !dbg !720
  %overflow_arg_area.next632 = getelementptr i8, ptr %overflow_arg_area631, i32 8, !dbg !720
  store ptr %overflow_arg_area.next632, ptr %overflow_arg_area_p630, align 8, !dbg !720
  br label %vaarg.end633, !dbg !720

vaarg.end633:                                     ; preds = %vaarg.in_mem629, %vaarg.in_reg627
  %vaarg.addr634 = phi ptr [ %224, %vaarg.in_reg627 ], [ %overflow_arg_area631, %vaarg.in_mem629 ], !dbg !720
  %226 = load ptr, ptr %vaarg.addr634, align 8, !dbg !720
  store ptr %226, ptr %newname, align 8, !dbg !721
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x279) #21, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x279, metadata !458, metadata !DIExpression()), !dbg !722
  %227 = load ptr, ptr %oldname, align 8, !dbg !722
  %tobool635 = icmp ne ptr %227, null, !dbg !722
  br i1 %tobool635, label %cond.true636, label %cond.false638, !dbg !722

cond.true636:                                     ; preds = %vaarg.end633
  %228 = load ptr, ptr %oldname, align 8, !dbg !722
  %call637 = call i64 @strlen(ptr noundef %228) #22, !dbg !722
  br label %cond.end639, !dbg !722

cond.false638:                                    ; preds = %vaarg.end633
  br label %cond.end639, !dbg !722

cond.end639:                                      ; preds = %cond.false638, %cond.true636
  %cond640 = phi i64 [ %call637, %cond.true636 ], [ 0, %cond.false638 ], !dbg !722
  store i64 %cond640, ptr %__UNIQUE_ID___x279, align 8, !dbg !722
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y280) #21, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y280, metadata !460, metadata !DIExpression()), !dbg !722
  store i64 65535, ptr %__UNIQUE_ID___y280, align 8, !dbg !722
  %229 = load i64, ptr %__UNIQUE_ID___x279, align 8, !dbg !722
  %230 = load i64, ptr %__UNIQUE_ID___y280, align 8, !dbg !722
  %cmp642 = icmp ult i64 %229, %230, !dbg !722
  br i1 %cmp642, label %cond.true644, label %cond.false645, !dbg !722

cond.true644:                                     ; preds = %cond.end639
  %231 = load i64, ptr %__UNIQUE_ID___x279, align 8, !dbg !722
  br label %cond.end646, !dbg !722

cond.false645:                                    ; preds = %cond.end639
  %232 = load i64, ptr %__UNIQUE_ID___y280, align 8, !dbg !722
  br label %cond.end646, !dbg !722

cond.end646:                                      ; preds = %cond.false645, %cond.true644
  %cond647 = phi i64 [ %231, %cond.true644 ], [ %232, %cond.false645 ], !dbg !722
  store i64 %cond647, ptr %tmp641, align 8, !dbg !722
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y280) #21, !dbg !723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x279) #21, !dbg !723
  %233 = load i64, ptr %tmp641, align 8, !dbg !722
  %add648 = add i64 2, %233, !dbg !723
  %add649 = add i64 11, %add648, !dbg !724
  %add650 = add i64 %add649, 4, !dbg !725
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x281) #21, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x281, metadata !461, metadata !DIExpression()), !dbg !726
  %234 = load ptr, ptr %newname, align 8, !dbg !726
  %tobool651 = icmp ne ptr %234, null, !dbg !726
  br i1 %tobool651, label %cond.true652, label %cond.false654, !dbg !726

cond.true652:                                     ; preds = %cond.end646
  %235 = load ptr, ptr %newname, align 8, !dbg !726
  %call653 = call i64 @strlen(ptr noundef %235) #22, !dbg !726
  br label %cond.end655, !dbg !726

cond.false654:                                    ; preds = %cond.end646
  br label %cond.end655, !dbg !726

cond.end655:                                      ; preds = %cond.false654, %cond.true652
  %cond656 = phi i64 [ %call653, %cond.true652 ], [ 0, %cond.false654 ], !dbg !726
  store i64 %cond656, ptr %__UNIQUE_ID___x281, align 8, !dbg !726
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y282) #21, !dbg !726
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y282, metadata !463, metadata !DIExpression()), !dbg !726
  store i64 65535, ptr %__UNIQUE_ID___y282, align 8, !dbg !726
  %236 = load i64, ptr %__UNIQUE_ID___x281, align 8, !dbg !726
  %237 = load i64, ptr %__UNIQUE_ID___y282, align 8, !dbg !726
  %cmp658 = icmp ult i64 %236, %237, !dbg !726
  br i1 %cmp658, label %cond.true660, label %cond.false661, !dbg !726

cond.true660:                                     ; preds = %cond.end655
  %238 = load i64, ptr %__UNIQUE_ID___x281, align 8, !dbg !726
  br label %cond.end662, !dbg !726

cond.false661:                                    ; preds = %cond.end655
  %239 = load i64, ptr %__UNIQUE_ID___y282, align 8, !dbg !726
  br label %cond.end662, !dbg !726

cond.end662:                                      ; preds = %cond.false661, %cond.true660
  %cond663 = phi i64 [ %238, %cond.true660 ], [ %239, %cond.false661 ], !dbg !726
  store i64 %cond663, ptr %tmp657, align 8, !dbg !726
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y282) #21, !dbg !727
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x281) #21, !dbg !727
  %240 = load i64, ptr %tmp657, align 8, !dbg !726
  %add664 = add i64 2, %240, !dbg !727
  %add665 = add i64 %add650, %add664, !dbg !728
  store i64 %add665, ptr %retval, align 8, !dbg !729
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %newname) #21, !dbg !730
  call void @llvm.lifetime.end.p0(i64 8, ptr %oldname) #21, !dbg !730
  br label %cleanup762

sw.bb668:                                         ; preds = %entry
  br label %do.body669, !dbg !731

do.body669:                                       ; preds = %sw.bb668
  %241 = load ptr, ptr %fmt.addr, align 8, !dbg !732
  %call670 = call i32 @strcmp(ptr noundef @.str.8, ptr noundef %241) #22, !dbg !732
  %tobool671 = icmp ne i32 %call670, 0, !dbg !732
  %lnot672 = xor i1 %tobool671, true, !dbg !732
  %lnot674 = xor i1 %lnot672, true, !dbg !732
  %lnot.ext675 = zext i1 %lnot674 to i32, !dbg !732
  %conv676 = sext i32 %lnot.ext675 to i64, !dbg !732
  %expval677 = call i64 @llvm.expect.i64(i64 %conv676, i64 0), !dbg !732
  %tobool678 = icmp ne i64 %expval677, 0, !dbg !732
  br i1 %tobool678, label %if.then679, label %if.end689, !dbg !735

if.then679:                                       ; preds = %do.body669
  br label %do.body680, !dbg !732

do.body680:                                       ; preds = %if.then679
  br label %do.body681, !dbg !736

do.body681:                                       ; preds = %do.body680
  br label %do.cond682, !dbg !738

do.cond682:                                       ; preds = %do.body681
  br label %do.end683, !dbg !738

do.end683:                                        ; preds = %do.cond682
  br label %do.body684, !dbg !736

do.body684:                                       ; preds = %do.end683
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 158, i32 0, i64 12) #21, !dbg !740, !srcloc !742
  br label %do.cond685, !dbg !740

do.cond685:                                       ; preds = %do.body684
  br label %do.end686, !dbg !740

do.end686:                                        ; preds = %do.cond685
  unreachable, !dbg !736

do.cond687:                                       ; No predecessors!
  br label %do.end688, !dbg !736

do.end688:                                        ; preds = %do.cond687
  br label %if.end689, !dbg !736

if.end689:                                        ; preds = %do.end688, %do.body669
  br label %do.cond690, !dbg !735

do.cond690:                                       ; preds = %if.end689
  br label %do.end691, !dbg !735

do.end691:                                        ; preds = %do.cond690
  %242 = load ptr, ptr %ap.addr, align 8, !dbg !743
  %gp_offset_p692 = getelementptr inbounds %struct.__va_list_tag, ptr %242, i32 0, i32 0, !dbg !743
  %gp_offset693 = load i32, ptr %gp_offset_p692, align 8, !dbg !743
  %fits_in_gp694 = icmp ule i32 %gp_offset693, 40, !dbg !743
  br i1 %fits_in_gp694, label %vaarg.in_reg695, label %vaarg.in_mem697, !dbg !743

vaarg.in_reg695:                                  ; preds = %do.end691
  %243 = getelementptr inbounds %struct.__va_list_tag, ptr %242, i32 0, i32 3, !dbg !743
  %reg_save_area696 = load ptr, ptr %243, align 8, !dbg !743
  %244 = getelementptr i8, ptr %reg_save_area696, i32 %gp_offset693, !dbg !743
  %245 = add i32 %gp_offset693, 8, !dbg !743
  store i32 %245, ptr %gp_offset_p692, align 8, !dbg !743
  br label %vaarg.end701, !dbg !743

vaarg.in_mem697:                                  ; preds = %do.end691
  %overflow_arg_area_p698 = getelementptr inbounds %struct.__va_list_tag, ptr %242, i32 0, i32 2, !dbg !743
  %overflow_arg_area699 = load ptr, ptr %overflow_arg_area_p698, align 8, !dbg !743
  %overflow_arg_area.next700 = getelementptr i8, ptr %overflow_arg_area699, i32 8, !dbg !743
  store ptr %overflow_arg_area.next700, ptr %overflow_arg_area_p698, align 8, !dbg !743
  br label %vaarg.end701, !dbg !743

vaarg.end701:                                     ; preds = %vaarg.in_mem697, %vaarg.in_reg695
  %vaarg.addr702 = phi ptr [ %244, %vaarg.in_reg695 ], [ %overflow_arg_area699, %vaarg.in_mem697 ], !dbg !743
  %246 = load i32, ptr %vaarg.addr702, align 4, !dbg !743
  call void @llvm.lifetime.start.p0(i64 8, ptr %name703) #21, !dbg !744
  call void @llvm.dbg.declare(metadata ptr %name703, metadata !464, metadata !DIExpression()), !dbg !745
  %247 = load ptr, ptr %ap.addr, align 8, !dbg !746
  %gp_offset_p704 = getelementptr inbounds %struct.__va_list_tag, ptr %247, i32 0, i32 0, !dbg !746
  %gp_offset705 = load i32, ptr %gp_offset_p704, align 8, !dbg !746
  %fits_in_gp706 = icmp ule i32 %gp_offset705, 40, !dbg !746
  br i1 %fits_in_gp706, label %vaarg.in_reg707, label %vaarg.in_mem709, !dbg !746

vaarg.in_reg707:                                  ; preds = %vaarg.end701
  %248 = getelementptr inbounds %struct.__va_list_tag, ptr %247, i32 0, i32 3, !dbg !746
  %reg_save_area708 = load ptr, ptr %248, align 8, !dbg !746
  %249 = getelementptr i8, ptr %reg_save_area708, i32 %gp_offset705, !dbg !746
  %250 = add i32 %gp_offset705, 8, !dbg !746
  store i32 %250, ptr %gp_offset_p704, align 8, !dbg !746
  br label %vaarg.end713, !dbg !746

vaarg.in_mem709:                                  ; preds = %vaarg.end701
  %overflow_arg_area_p710 = getelementptr inbounds %struct.__va_list_tag, ptr %247, i32 0, i32 2, !dbg !746
  %overflow_arg_area711 = load ptr, ptr %overflow_arg_area_p710, align 8, !dbg !746
  %overflow_arg_area.next712 = getelementptr i8, ptr %overflow_arg_area711, i32 8, !dbg !746
  store ptr %overflow_arg_area.next712, ptr %overflow_arg_area_p710, align 8, !dbg !746
  br label %vaarg.end713, !dbg !746

vaarg.end713:                                     ; preds = %vaarg.in_mem709, %vaarg.in_reg707
  %vaarg.addr714 = phi ptr [ %249, %vaarg.in_reg707 ], [ %overflow_arg_area711, %vaarg.in_mem709 ], !dbg !746
  %251 = load ptr, ptr %vaarg.addr714, align 8, !dbg !746
  store ptr %251, ptr %name703, align 8, !dbg !745
  call void @llvm.lifetime.start.p0(i64 8, ptr %symtgt) #21, !dbg !747
  call void @llvm.dbg.declare(metadata ptr %symtgt, metadata !466, metadata !DIExpression()), !dbg !748
  %252 = load ptr, ptr %ap.addr, align 8, !dbg !749
  %gp_offset_p715 = getelementptr inbounds %struct.__va_list_tag, ptr %252, i32 0, i32 0, !dbg !749
  %gp_offset716 = load i32, ptr %gp_offset_p715, align 8, !dbg !749
  %fits_in_gp717 = icmp ule i32 %gp_offset716, 40, !dbg !749
  br i1 %fits_in_gp717, label %vaarg.in_reg718, label %vaarg.in_mem720, !dbg !749

vaarg.in_reg718:                                  ; preds = %vaarg.end713
  %253 = getelementptr inbounds %struct.__va_list_tag, ptr %252, i32 0, i32 3, !dbg !749
  %reg_save_area719 = load ptr, ptr %253, align 8, !dbg !749
  %254 = getelementptr i8, ptr %reg_save_area719, i32 %gp_offset716, !dbg !749
  %255 = add i32 %gp_offset716, 8, !dbg !749
  store i32 %255, ptr %gp_offset_p715, align 8, !dbg !749
  br label %vaarg.end724, !dbg !749

vaarg.in_mem720:                                  ; preds = %vaarg.end713
  %overflow_arg_area_p721 = getelementptr inbounds %struct.__va_list_tag, ptr %252, i32 0, i32 2, !dbg !749
  %overflow_arg_area722 = load ptr, ptr %overflow_arg_area_p721, align 8, !dbg !749
  %overflow_arg_area.next723 = getelementptr i8, ptr %overflow_arg_area722, i32 8, !dbg !749
  store ptr %overflow_arg_area.next723, ptr %overflow_arg_area_p721, align 8, !dbg !749
  br label %vaarg.end724, !dbg !749

vaarg.end724:                                     ; preds = %vaarg.in_mem720, %vaarg.in_reg718
  %vaarg.addr725 = phi ptr [ %254, %vaarg.in_reg718 ], [ %overflow_arg_area722, %vaarg.in_mem720 ], !dbg !749
  %256 = load ptr, ptr %vaarg.addr725, align 8, !dbg !749
  store ptr %256, ptr %symtgt, align 8, !dbg !748
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x283) #21, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x283, metadata !467, metadata !DIExpression()), !dbg !750
  %257 = load ptr, ptr %name703, align 8, !dbg !750
  %tobool726 = icmp ne ptr %257, null, !dbg !750
  br i1 %tobool726, label %cond.true727, label %cond.false729, !dbg !750

cond.true727:                                     ; preds = %vaarg.end724
  %258 = load ptr, ptr %name703, align 8, !dbg !750
  %call728 = call i64 @strlen(ptr noundef %258) #22, !dbg !750
  br label %cond.end730, !dbg !750

cond.false729:                                    ; preds = %vaarg.end724
  br label %cond.end730, !dbg !750

cond.end730:                                      ; preds = %cond.false729, %cond.true727
  %cond731 = phi i64 [ %call728, %cond.true727 ], [ 0, %cond.false729 ], !dbg !750
  store i64 %cond731, ptr %__UNIQUE_ID___x283, align 8, !dbg !750
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y284) #21, !dbg !750
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y284, metadata !469, metadata !DIExpression()), !dbg !750
  store i64 65535, ptr %__UNIQUE_ID___y284, align 8, !dbg !750
  %259 = load i64, ptr %__UNIQUE_ID___x283, align 8, !dbg !750
  %260 = load i64, ptr %__UNIQUE_ID___y284, align 8, !dbg !750
  %cmp733 = icmp ult i64 %259, %260, !dbg !750
  br i1 %cmp733, label %cond.true735, label %cond.false736, !dbg !750

cond.true735:                                     ; preds = %cond.end730
  %261 = load i64, ptr %__UNIQUE_ID___x283, align 8, !dbg !750
  br label %cond.end737, !dbg !750

cond.false736:                                    ; preds = %cond.end730
  %262 = load i64, ptr %__UNIQUE_ID___y284, align 8, !dbg !750
  br label %cond.end737, !dbg !750

cond.end737:                                      ; preds = %cond.false736, %cond.true735
  %cond738 = phi i64 [ %261, %cond.true735 ], [ %262, %cond.false736 ], !dbg !750
  store i64 %cond738, ptr %tmp732, align 8, !dbg !750
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y284) #21, !dbg !751
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x283) #21, !dbg !751
  %263 = load i64, ptr %tmp732, align 8, !dbg !750
  %add739 = add i64 2, %263, !dbg !751
  %add740 = add i64 11, %add739, !dbg !752
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x285) #21, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x285, metadata !470, metadata !DIExpression()), !dbg !753
  %264 = load ptr, ptr %symtgt, align 8, !dbg !753
  %tobool741 = icmp ne ptr %264, null, !dbg !753
  br i1 %tobool741, label %cond.true742, label %cond.false744, !dbg !753

cond.true742:                                     ; preds = %cond.end737
  %265 = load ptr, ptr %symtgt, align 8, !dbg !753
  %call743 = call i64 @strlen(ptr noundef %265) #22, !dbg !753
  br label %cond.end745, !dbg !753

cond.false744:                                    ; preds = %cond.end737
  br label %cond.end745, !dbg !753

cond.end745:                                      ; preds = %cond.false744, %cond.true742
  %cond746 = phi i64 [ %call743, %cond.true742 ], [ 0, %cond.false744 ], !dbg !753
  store i64 %cond746, ptr %__UNIQUE_ID___x285, align 8, !dbg !753
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y286) #21, !dbg !753
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y286, metadata !472, metadata !DIExpression()), !dbg !753
  store i64 65535, ptr %__UNIQUE_ID___y286, align 8, !dbg !753
  %266 = load i64, ptr %__UNIQUE_ID___x285, align 8, !dbg !753
  %267 = load i64, ptr %__UNIQUE_ID___y286, align 8, !dbg !753
  %cmp748 = icmp ult i64 %266, %267, !dbg !753
  br i1 %cmp748, label %cond.true750, label %cond.false751, !dbg !753

cond.true750:                                     ; preds = %cond.end745
  %268 = load i64, ptr %__UNIQUE_ID___x285, align 8, !dbg !753
  br label %cond.end752, !dbg !753

cond.false751:                                    ; preds = %cond.end745
  %269 = load i64, ptr %__UNIQUE_ID___y286, align 8, !dbg !753
  br label %cond.end752, !dbg !753

cond.end752:                                      ; preds = %cond.false751, %cond.true750
  %cond753 = phi i64 [ %268, %cond.true750 ], [ %269, %cond.false751 ], !dbg !753
  store i64 %cond753, ptr %tmp747, align 8, !dbg !753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y286) #21, !dbg !754
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x285) #21, !dbg !754
  %270 = load i64, ptr %tmp747, align 8, !dbg !753
  %add754 = add i64 2, %270, !dbg !754
  %add755 = add i64 %add740, %add754, !dbg !755
  %add756 = add i64 %add755, 4, !dbg !756
  store i64 %add756, ptr %retval, align 8, !dbg !757
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %symtgt) #21, !dbg !758
  call void @llvm.lifetime.end.p0(i64 8, ptr %name703) #21, !dbg !758
  br label %cleanup762

sw.bb759:                                         ; preds = %entry
  store i64 139, ptr %retval, align 8, !dbg !759
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup762, !dbg !759

sw.bb760:                                         ; preds = %entry
  store i64 11, ptr %retval, align 8, !dbg !760
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup762, !dbg !760

sw.bb761:                                         ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  store i64 8192, ptr %retval, align 8, !dbg !761
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup762, !dbg !761

sw.default:                                       ; preds = %entry
  store i64 4096, ptr %retval, align 8, !dbg !762
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup762, !dbg !762

cleanup762:                                       ; preds = %sw.default, %sw.bb761, %sw.bb760, %sw.bb759, %cond.end752, %cond.end662, %vaarg.end562, %cond.end503, %cond.end430, %cleanup, %cond.end237, %for.end, %cond.end78
  call void @llvm.lifetime.end.p0(i64 4, ptr %err_size) #21, !dbg !763
  call void @llvm.lifetime.end.p0(i64 4, ptr %rlerror_size) #21, !dbg !763
  call void @llvm.lifetime.end.p0(i64 4, ptr %rerror_size) #21, !dbg !763
  call void @llvm.lifetime.end.p0(i64 4, ptr %hdr) #21, !dbg !763
  %271 = load i64, ptr %retval, align 8, !dbg !763
  ret i64 %271, !dbg !763
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !764 dso_local i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !768 dso_local i64 @strlen(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @p9stat_free(ptr noundef %stbuf) #0 align 16 !dbg !771 {
entry:
  %stbuf.addr = alloca ptr, align 8
  store ptr %stbuf, ptr %stbuf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %stbuf.addr, metadata !814, metadata !DIExpression()), !dbg !815
  %0 = load ptr, ptr %stbuf.addr, align 8, !dbg !816
  %name = getelementptr inbounds %struct.p9_wstat, ptr %0, i32 0, i32 8, !dbg !817
  %1 = load ptr, ptr %name, align 8, !dbg !817
  call void @kfree(ptr noundef %1) #22, !dbg !818
  %2 = load ptr, ptr %stbuf.addr, align 8, !dbg !819
  %name1 = getelementptr inbounds %struct.p9_wstat, ptr %2, i32 0, i32 8, !dbg !820
  store ptr null, ptr %name1, align 8, !dbg !821
  %3 = load ptr, ptr %stbuf.addr, align 8, !dbg !822
  %uid = getelementptr inbounds %struct.p9_wstat, ptr %3, i32 0, i32 9, !dbg !823
  %4 = load ptr, ptr %uid, align 8, !dbg !823
  call void @kfree(ptr noundef %4) #22, !dbg !824
  %5 = load ptr, ptr %stbuf.addr, align 8, !dbg !825
  %uid2 = getelementptr inbounds %struct.p9_wstat, ptr %5, i32 0, i32 9, !dbg !826
  store ptr null, ptr %uid2, align 8, !dbg !827
  %6 = load ptr, ptr %stbuf.addr, align 8, !dbg !828
  %gid = getelementptr inbounds %struct.p9_wstat, ptr %6, i32 0, i32 10, !dbg !829
  %7 = load ptr, ptr %gid, align 8, !dbg !829
  call void @kfree(ptr noundef %7) #22, !dbg !830
  %8 = load ptr, ptr %stbuf.addr, align 8, !dbg !831
  %gid3 = getelementptr inbounds %struct.p9_wstat, ptr %8, i32 0, i32 10, !dbg !832
  store ptr null, ptr %gid3, align 8, !dbg !833
  %9 = load ptr, ptr %stbuf.addr, align 8, !dbg !834
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %9, i32 0, i32 11, !dbg !835
  %10 = load ptr, ptr %muid, align 8, !dbg !835
  call void @kfree(ptr noundef %10) #22, !dbg !836
  %11 = load ptr, ptr %stbuf.addr, align 8, !dbg !837
  %muid4 = getelementptr inbounds %struct.p9_wstat, ptr %11, i32 0, i32 11, !dbg !838
  store ptr null, ptr %muid4, align 8, !dbg !839
  %12 = load ptr, ptr %stbuf.addr, align 8, !dbg !840
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %12, i32 0, i32 12, !dbg !841
  %13 = load ptr, ptr %extension, align 8, !dbg !841
  call void @kfree(ptr noundef %13) #22, !dbg !842
  %14 = load ptr, ptr %stbuf.addr, align 8, !dbg !843
  %extension5 = getelementptr inbounds %struct.p9_wstat, ptr %14, i32 0, i32 12, !dbg !844
  store ptr null, ptr %extension5, align 8, !dbg !845
  ret void, !dbg !846
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !847 dso_local void @kfree(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @pdu_read(ptr noundef %pdu, ptr noundef %data, i64 noundef %size) #0 align 16 !dbg !850 {
entry:
  %pdu.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x288 = alloca i64, align 8
  %__UNIQUE_ID___y289 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !854, metadata !DIExpression()), !dbg !861
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !855, metadata !DIExpression()), !dbg !862
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !856, metadata !DIExpression()), !dbg !863
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #21, !dbg !864
  call void @llvm.dbg.declare(metadata ptr %len, metadata !857, metadata !DIExpression()), !dbg !865
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x288) #21, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x288, metadata !858, metadata !DIExpression()), !dbg !866
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !866
  %size1 = getelementptr inbounds %struct.p9_fcall, ptr %0, i32 0, i32 0, !dbg !866
  %1 = load i32, ptr %size1, align 8, !dbg !866
  %conv = zext i32 %1 to i64, !dbg !866
  %2 = load ptr, ptr %pdu.addr, align 8, !dbg !866
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %2, i32 0, i32 3, !dbg !866
  %3 = load i64, ptr %offset, align 8, !dbg !866
  %sub = sub i64 %conv, %3, !dbg !866
  store i64 %sub, ptr %__UNIQUE_ID___x288, align 8, !dbg !866
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y289) #21, !dbg !866
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y289, metadata !860, metadata !DIExpression()), !dbg !866
  %4 = load i64, ptr %size.addr, align 8, !dbg !866
  store i64 %4, ptr %__UNIQUE_ID___y289, align 8, !dbg !866
  %5 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !866
  %6 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !866
  %cmp = icmp ult i64 %5, %6, !dbg !866
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !866

cond.true:                                        ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___x288, align 8, !dbg !866
  br label %cond.end, !dbg !866

cond.false:                                       ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___y289, align 8, !dbg !866
  br label %cond.end, !dbg !866

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !866
  store i64 %cond, ptr %tmp, align 8, !dbg !866
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y289) #21, !dbg !867
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x288) #21, !dbg !867
  %9 = load i64, ptr %tmp, align 8, !dbg !866
  store i64 %9, ptr %len, align 8, !dbg !865
  %10 = load ptr, ptr %data.addr, align 8, !dbg !868
  %11 = load ptr, ptr %pdu.addr, align 8, !dbg !869
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %11, i32 0, i32 6, !dbg !870
  %12 = load ptr, ptr %sdata, align 8, !dbg !870
  %13 = load ptr, ptr %pdu.addr, align 8, !dbg !871
  %offset3 = getelementptr inbounds %struct.p9_fcall, ptr %13, i32 0, i32 3, !dbg !872
  %14 = load i64, ptr %offset3, align 8, !dbg !872
  %arrayidx = getelementptr i8, ptr %12, i64 %14, !dbg !869
  %15 = load i64, ptr %len, align 8, !dbg !873
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %arrayidx, i64 %15, i1 false), !dbg !874
  %16 = load i64, ptr %len, align 8, !dbg !875
  %17 = load ptr, ptr %pdu.addr, align 8, !dbg !876
  %offset4 = getelementptr inbounds %struct.p9_fcall, ptr %17, i32 0, i32 3, !dbg !877
  %18 = load i64, ptr %offset4, align 8, !dbg !878
  %add = add i64 %18, %16, !dbg !878
  store i64 %add, ptr %offset4, align 8, !dbg !878
  %19 = load i64, ptr %size.addr, align 8, !dbg !879
  %20 = load i64, ptr %len, align 8, !dbg !880
  %sub5 = sub i64 %19, %20, !dbg !881
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #21, !dbg !882
  ret i64 %sub5, !dbg !883
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9pdu_vwritef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !884 {
entry:
  %retval = alloca i32, align 4
  %pdu.addr = alloca ptr, align 8
  %proto_version.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %errcode = alloca i32, align 4
  %val = alloca i8, align 1
  %val4 = alloca i16, align 2
  %val22 = alloca i32, align 4
  %val39 = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %len = alloca i16, align 2
  %__UNIQUE_ID___x296 = alloca i64, align 8
  %__UNIQUE_ID___y297 = alloca i64, align 8
  %tmp = alloca i64, align 8
  %uid = alloca %struct.kuid_t, align 4
  %val93 = alloca i32, align 4
  %gid = alloca %struct.kgid_t, align 4
  %val111 = alloca i32, align 4
  %qid = alloca ptr, align 8
  %stbuf = alloca ptr, align 8
  %count = alloca i32, align 4
  %from = alloca ptr, align 8
  %nwname = alloca i16, align 2
  %wnames = alloca ptr, align 8
  %i = alloca i32, align 4
  %nwqid = alloca i16, align 2
  %wqids = alloca ptr, align 8
  %i251 = alloca i32, align 4
  %p9attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !888, metadata !DIExpression()), !dbg !1017
  store i32 %proto_version, ptr %proto_version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proto_version.addr, metadata !889, metadata !DIExpression()), !dbg !1018
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !890, metadata !DIExpression()), !dbg !1019
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !891, metadata !DIExpression()), !dbg !1020
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #21, !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !892, metadata !DIExpression()), !dbg !1022
  call void @llvm.lifetime.start.p0(i64 4, ptr %errcode) #21, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %errcode, metadata !893, metadata !DIExpression()), !dbg !1024
  store i32 0, ptr %errcode, align 4, !dbg !1024
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !1025
  store ptr %0, ptr %ptr, align 8, !dbg !1026
  br label %for.cond, !dbg !1027

for.cond:                                         ; preds = %for.inc303, %entry
  %1 = load ptr, ptr %ptr, align 8, !dbg !1028
  %2 = load i8, ptr %1, align 1, !dbg !1029
  %tobool = icmp ne i8 %2, 0, !dbg !1030
  br i1 %tobool, label %for.body, label %for.end304, !dbg !1030

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ptr, align 8, !dbg !1031
  %4 = load i8, ptr %3, align 1, !dbg !1032
  %conv = zext i8 %4 to i32, !dbg !1032
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 119, label %sw.bb3
    i32 100, label %sw.bb21
    i32 113, label %sw.bb38
    i32 115, label %sw.bb55
    i32 117, label %sw.bb81
    i32 103, label %sw.bb99
    i32 81, label %sw.bb118
    i32 83, label %sw.bb132
    i32 86, label %sw.bb154
    i32 84, label %sw.bb185
    i32 82, label %sw.bb223
    i32 73, label %sw.bb267
    i32 63, label %sw.bb286
  ], !dbg !1033

sw.bb:                                            ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %val) #21, !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %val, metadata !894, metadata !DIExpression()), !dbg !1035
  %5 = load ptr, ptr %ap.addr, align 8, !dbg !1036
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 0, !dbg !1036
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !1036
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1036
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1036

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 3, !dbg !1036
  %reg_save_area = load ptr, ptr %6, align 8, !dbg !1036
  %7 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !1036
  %8 = add i32 %gp_offset, 8, !dbg !1036
  store i32 %8, ptr %gp_offset_p, align 8, !dbg !1036
  br label %vaarg.end, !dbg !1036

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 2, !dbg !1036
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !1036
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !1036
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !1036
  br label %vaarg.end, !dbg !1036

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %7, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !1036
  %9 = load i32, ptr %vaarg.addr, align 4, !dbg !1036
  %conv1 = trunc i32 %9 to i8, !dbg !1036
  store i8 %conv1, ptr %val, align 1, !dbg !1035
  %10 = load ptr, ptr %pdu.addr, align 8, !dbg !1037
  %call = call i64 @pdu_write(ptr noundef %10, ptr noundef %val, i64 noundef 1) #22, !dbg !1039
  %tobool2 = icmp ne i64 %call, 0, !dbg !1039
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1040

if.then:                                          ; preds = %vaarg.end
  store i32 -14, ptr %errcode, align 4, !dbg !1041
  br label %if.end, !dbg !1042

if.end:                                           ; preds = %if.then, %vaarg.end
  call void @llvm.lifetime.end.p0(i64 1, ptr %val) #21, !dbg !1043
  br label %sw.epilog, !dbg !1044

sw.bb3:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2, ptr %val4) #21, !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %val4, metadata !904, metadata !DIExpression()), !dbg !1046
  %11 = load ptr, ptr %ap.addr, align 8, !dbg !1047
  %gp_offset_p5 = getelementptr inbounds %struct.__va_list_tag, ptr %11, i32 0, i32 0, !dbg !1047
  %gp_offset6 = load i32, ptr %gp_offset_p5, align 8, !dbg !1047
  %fits_in_gp7 = icmp ule i32 %gp_offset6, 40, !dbg !1047
  br i1 %fits_in_gp7, label %vaarg.in_reg8, label %vaarg.in_mem10, !dbg !1047

vaarg.in_reg8:                                    ; preds = %sw.bb3
  %12 = getelementptr inbounds %struct.__va_list_tag, ptr %11, i32 0, i32 3, !dbg !1047
  %reg_save_area9 = load ptr, ptr %12, align 8, !dbg !1047
  %13 = getelementptr i8, ptr %reg_save_area9, i32 %gp_offset6, !dbg !1047
  %14 = add i32 %gp_offset6, 8, !dbg !1047
  store i32 %14, ptr %gp_offset_p5, align 8, !dbg !1047
  br label %vaarg.end14, !dbg !1047

vaarg.in_mem10:                                   ; preds = %sw.bb3
  %overflow_arg_area_p11 = getelementptr inbounds %struct.__va_list_tag, ptr %11, i32 0, i32 2, !dbg !1047
  %overflow_arg_area12 = load ptr, ptr %overflow_arg_area_p11, align 8, !dbg !1047
  %overflow_arg_area.next13 = getelementptr i8, ptr %overflow_arg_area12, i32 8, !dbg !1047
  store ptr %overflow_arg_area.next13, ptr %overflow_arg_area_p11, align 8, !dbg !1047
  br label %vaarg.end14, !dbg !1047

vaarg.end14:                                      ; preds = %vaarg.in_mem10, %vaarg.in_reg8
  %vaarg.addr15 = phi ptr [ %13, %vaarg.in_reg8 ], [ %overflow_arg_area12, %vaarg.in_mem10 ], !dbg !1047
  %15 = load i32, ptr %vaarg.addr15, align 4, !dbg !1047
  %conv16 = trunc i32 %15 to i16, !dbg !1047
  store i16 %conv16, ptr %val4, align 2, !dbg !1046
  %16 = load ptr, ptr %pdu.addr, align 8, !dbg !1048
  %call17 = call i64 @pdu_write(ptr noundef %16, ptr noundef %val4, i64 noundef 2) #22, !dbg !1050
  %tobool18 = icmp ne i64 %call17, 0, !dbg !1050
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1051

if.then19:                                        ; preds = %vaarg.end14
  store i32 -14, ptr %errcode, align 4, !dbg !1052
  br label %if.end20, !dbg !1053

if.end20:                                         ; preds = %if.then19, %vaarg.end14
  call void @llvm.lifetime.end.p0(i64 2, ptr %val4) #21, !dbg !1054
  br label %sw.epilog, !dbg !1055

sw.bb21:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %val22) #21, !dbg !1056
  call void @llvm.dbg.declare(metadata ptr %val22, metadata !906, metadata !DIExpression()), !dbg !1057
  %17 = load ptr, ptr %ap.addr, align 8, !dbg !1058
  %gp_offset_p23 = getelementptr inbounds %struct.__va_list_tag, ptr %17, i32 0, i32 0, !dbg !1058
  %gp_offset24 = load i32, ptr %gp_offset_p23, align 8, !dbg !1058
  %fits_in_gp25 = icmp ule i32 %gp_offset24, 40, !dbg !1058
  br i1 %fits_in_gp25, label %vaarg.in_reg26, label %vaarg.in_mem28, !dbg !1058

vaarg.in_reg26:                                   ; preds = %sw.bb21
  %18 = getelementptr inbounds %struct.__va_list_tag, ptr %17, i32 0, i32 3, !dbg !1058
  %reg_save_area27 = load ptr, ptr %18, align 8, !dbg !1058
  %19 = getelementptr i8, ptr %reg_save_area27, i32 %gp_offset24, !dbg !1058
  %20 = add i32 %gp_offset24, 8, !dbg !1058
  store i32 %20, ptr %gp_offset_p23, align 8, !dbg !1058
  br label %vaarg.end32, !dbg !1058

vaarg.in_mem28:                                   ; preds = %sw.bb21
  %overflow_arg_area_p29 = getelementptr inbounds %struct.__va_list_tag, ptr %17, i32 0, i32 2, !dbg !1058
  %overflow_arg_area30 = load ptr, ptr %overflow_arg_area_p29, align 8, !dbg !1058
  %overflow_arg_area.next31 = getelementptr i8, ptr %overflow_arg_area30, i32 8, !dbg !1058
  store ptr %overflow_arg_area.next31, ptr %overflow_arg_area_p29, align 8, !dbg !1058
  br label %vaarg.end32, !dbg !1058

vaarg.end32:                                      ; preds = %vaarg.in_mem28, %vaarg.in_reg26
  %vaarg.addr33 = phi ptr [ %19, %vaarg.in_reg26 ], [ %overflow_arg_area30, %vaarg.in_mem28 ], !dbg !1058
  %21 = load i32, ptr %vaarg.addr33, align 4, !dbg !1058
  store i32 %21, ptr %val22, align 4, !dbg !1057
  %22 = load ptr, ptr %pdu.addr, align 8, !dbg !1059
  %call34 = call i64 @pdu_write(ptr noundef %22, ptr noundef %val22, i64 noundef 4) #22, !dbg !1061
  %tobool35 = icmp ne i64 %call34, 0, !dbg !1061
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !1062

if.then36:                                        ; preds = %vaarg.end32
  store i32 -14, ptr %errcode, align 4, !dbg !1063
  br label %if.end37, !dbg !1064

if.end37:                                         ; preds = %if.then36, %vaarg.end32
  call void @llvm.lifetime.end.p0(i64 4, ptr %val22) #21, !dbg !1065
  br label %sw.epilog, !dbg !1066

sw.bb38:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %val39) #21, !dbg !1067
  call void @llvm.dbg.declare(metadata ptr %val39, metadata !908, metadata !DIExpression()), !dbg !1068
  %23 = load ptr, ptr %ap.addr, align 8, !dbg !1069
  %gp_offset_p40 = getelementptr inbounds %struct.__va_list_tag, ptr %23, i32 0, i32 0, !dbg !1069
  %gp_offset41 = load i32, ptr %gp_offset_p40, align 8, !dbg !1069
  %fits_in_gp42 = icmp ule i32 %gp_offset41, 40, !dbg !1069
  br i1 %fits_in_gp42, label %vaarg.in_reg43, label %vaarg.in_mem45, !dbg !1069

vaarg.in_reg43:                                   ; preds = %sw.bb38
  %24 = getelementptr inbounds %struct.__va_list_tag, ptr %23, i32 0, i32 3, !dbg !1069
  %reg_save_area44 = load ptr, ptr %24, align 8, !dbg !1069
  %25 = getelementptr i8, ptr %reg_save_area44, i32 %gp_offset41, !dbg !1069
  %26 = add i32 %gp_offset41, 8, !dbg !1069
  store i32 %26, ptr %gp_offset_p40, align 8, !dbg !1069
  br label %vaarg.end49, !dbg !1069

vaarg.in_mem45:                                   ; preds = %sw.bb38
  %overflow_arg_area_p46 = getelementptr inbounds %struct.__va_list_tag, ptr %23, i32 0, i32 2, !dbg !1069
  %overflow_arg_area47 = load ptr, ptr %overflow_arg_area_p46, align 8, !dbg !1069
  %overflow_arg_area.next48 = getelementptr i8, ptr %overflow_arg_area47, i32 8, !dbg !1069
  store ptr %overflow_arg_area.next48, ptr %overflow_arg_area_p46, align 8, !dbg !1069
  br label %vaarg.end49, !dbg !1069

vaarg.end49:                                      ; preds = %vaarg.in_mem45, %vaarg.in_reg43
  %vaarg.addr50 = phi ptr [ %25, %vaarg.in_reg43 ], [ %overflow_arg_area47, %vaarg.in_mem45 ], !dbg !1069
  %27 = load i64, ptr %vaarg.addr50, align 8, !dbg !1069
  store i64 %27, ptr %val39, align 8, !dbg !1068
  %28 = load ptr, ptr %pdu.addr, align 8, !dbg !1070
  %call51 = call i64 @pdu_write(ptr noundef %28, ptr noundef %val39, i64 noundef 8) #22, !dbg !1072
  %tobool52 = icmp ne i64 %call51, 0, !dbg !1072
  br i1 %tobool52, label %if.then53, label %if.end54, !dbg !1073

if.then53:                                        ; preds = %vaarg.end49
  store i32 -14, ptr %errcode, align 4, !dbg !1074
  br label %if.end54, !dbg !1075

if.end54:                                         ; preds = %if.then53, %vaarg.end49
  call void @llvm.lifetime.end.p0(i64 8, ptr %val39) #21, !dbg !1076
  br label %sw.epilog, !dbg !1077

sw.bb55:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %sptr) #21, !dbg !1078
  call void @llvm.dbg.declare(metadata ptr %sptr, metadata !910, metadata !DIExpression()), !dbg !1079
  %29 = load ptr, ptr %ap.addr, align 8, !dbg !1080
  %gp_offset_p56 = getelementptr inbounds %struct.__va_list_tag, ptr %29, i32 0, i32 0, !dbg !1080
  %gp_offset57 = load i32, ptr %gp_offset_p56, align 8, !dbg !1080
  %fits_in_gp58 = icmp ule i32 %gp_offset57, 40, !dbg !1080
  br i1 %fits_in_gp58, label %vaarg.in_reg59, label %vaarg.in_mem61, !dbg !1080

vaarg.in_reg59:                                   ; preds = %sw.bb55
  %30 = getelementptr inbounds %struct.__va_list_tag, ptr %29, i32 0, i32 3, !dbg !1080
  %reg_save_area60 = load ptr, ptr %30, align 8, !dbg !1080
  %31 = getelementptr i8, ptr %reg_save_area60, i32 %gp_offset57, !dbg !1080
  %32 = add i32 %gp_offset57, 8, !dbg !1080
  store i32 %32, ptr %gp_offset_p56, align 8, !dbg !1080
  br label %vaarg.end65, !dbg !1080

vaarg.in_mem61:                                   ; preds = %sw.bb55
  %overflow_arg_area_p62 = getelementptr inbounds %struct.__va_list_tag, ptr %29, i32 0, i32 2, !dbg !1080
  %overflow_arg_area63 = load ptr, ptr %overflow_arg_area_p62, align 8, !dbg !1080
  %overflow_arg_area.next64 = getelementptr i8, ptr %overflow_arg_area63, i32 8, !dbg !1080
  store ptr %overflow_arg_area.next64, ptr %overflow_arg_area_p62, align 8, !dbg !1080
  br label %vaarg.end65, !dbg !1080

vaarg.end65:                                      ; preds = %vaarg.in_mem61, %vaarg.in_reg59
  %vaarg.addr66 = phi ptr [ %31, %vaarg.in_reg59 ], [ %overflow_arg_area63, %vaarg.in_mem61 ], !dbg !1080
  %33 = load ptr, ptr %vaarg.addr66, align 8, !dbg !1080
  store ptr %33, ptr %sptr, align 8, !dbg !1079
  call void @llvm.lifetime.start.p0(i64 2, ptr %len) #21, !dbg !1081
  call void @llvm.dbg.declare(metadata ptr %len, metadata !912, metadata !DIExpression()), !dbg !1082
  store i16 0, ptr %len, align 2, !dbg !1082
  %34 = load ptr, ptr %sptr, align 8, !dbg !1083
  %tobool67 = icmp ne ptr %34, null, !dbg !1083
  br i1 %tobool67, label %if.then68, label %if.end72, !dbg !1084

if.then68:                                        ; preds = %vaarg.end65
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x296) #21, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x296, metadata !914, metadata !DIExpression()), !dbg !1085
  %35 = load ptr, ptr %sptr, align 8, !dbg !1085
  %call69 = call i64 @strlen(ptr noundef %35) #22, !dbg !1085
  store i64 %call69, ptr %__UNIQUE_ID___x296, align 8, !dbg !1085
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y297) #21, !dbg !1085
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y297, metadata !917, metadata !DIExpression()), !dbg !1085
  store i64 65535, ptr %__UNIQUE_ID___y297, align 8, !dbg !1085
  %36 = load i64, ptr %__UNIQUE_ID___x296, align 8, !dbg !1085
  %37 = load i64, ptr %__UNIQUE_ID___y297, align 8, !dbg !1085
  %cmp = icmp ult i64 %36, %37, !dbg !1085
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1085

cond.true:                                        ; preds = %if.then68
  %38 = load i64, ptr %__UNIQUE_ID___x296, align 8, !dbg !1085
  br label %cond.end, !dbg !1085

cond.false:                                       ; preds = %if.then68
  %39 = load i64, ptr %__UNIQUE_ID___y297, align 8, !dbg !1085
  br label %cond.end, !dbg !1085

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %38, %cond.true ], [ %39, %cond.false ], !dbg !1085
  store i64 %cond, ptr %tmp, align 8, !dbg !1085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y297) #21, !dbg !1086
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x296) #21, !dbg !1086
  %40 = load i64, ptr %tmp, align 8, !dbg !1085
  %conv71 = trunc i64 %40 to i16, !dbg !1086
  store i16 %conv71, ptr %len, align 2, !dbg !1087
  br label %if.end72, !dbg !1088

if.end72:                                         ; preds = %cond.end, %vaarg.end65
  %41 = load ptr, ptr %pdu.addr, align 8, !dbg !1089
  %42 = load i32, ptr %proto_version.addr, align 4, !dbg !1090
  %43 = load i16, ptr %len, align 2, !dbg !1091
  %conv73 = zext i16 %43 to i32, !dbg !1091
  %call74 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %41, i32 noundef %42, ptr noundef @.str.9, i32 noundef %conv73) #22, !dbg !1092
  store i32 %call74, ptr %errcode, align 4, !dbg !1093
  %44 = load i32, ptr %errcode, align 4, !dbg !1094
  %tobool75 = icmp ne i32 %44, 0, !dbg !1094
  br i1 %tobool75, label %if.end80, label %land.lhs.true, !dbg !1096

land.lhs.true:                                    ; preds = %if.end72
  %45 = load ptr, ptr %pdu.addr, align 8, !dbg !1097
  %46 = load ptr, ptr %sptr, align 8, !dbg !1098
  %47 = load i16, ptr %len, align 2, !dbg !1099
  %conv76 = zext i16 %47 to i64, !dbg !1099
  %call77 = call i64 @pdu_write(ptr noundef %45, ptr noundef %46, i64 noundef %conv76) #22, !dbg !1100
  %tobool78 = icmp ne i64 %call77, 0, !dbg !1100
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !1101

if.then79:                                        ; preds = %land.lhs.true
  store i32 -14, ptr %errcode, align 4, !dbg !1102
  br label %if.end80, !dbg !1103

if.end80:                                         ; preds = %if.then79, %land.lhs.true, %if.end72
  call void @llvm.lifetime.end.p0(i64 2, ptr %len) #21, !dbg !1104
  call void @llvm.lifetime.end.p0(i64 8, ptr %sptr) #21, !dbg !1104
  br label %sw.epilog, !dbg !1105

sw.bb81:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %uid) #21, !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !918, metadata !DIExpression()), !dbg !1107
  %48 = load ptr, ptr %ap.addr, align 8, !dbg !1108
  %gp_offset_p82 = getelementptr inbounds %struct.__va_list_tag, ptr %48, i32 0, i32 0, !dbg !1108
  %gp_offset83 = load i32, ptr %gp_offset_p82, align 8, !dbg !1108
  %fits_in_gp84 = icmp ule i32 %gp_offset83, 40, !dbg !1108
  br i1 %fits_in_gp84, label %vaarg.in_reg85, label %vaarg.in_mem87, !dbg !1108

vaarg.in_reg85:                                   ; preds = %sw.bb81
  %49 = getelementptr inbounds %struct.__va_list_tag, ptr %48, i32 0, i32 3, !dbg !1108
  %reg_save_area86 = load ptr, ptr %49, align 8, !dbg !1108
  %50 = getelementptr i8, ptr %reg_save_area86, i32 %gp_offset83, !dbg !1108
  %51 = add i32 %gp_offset83, 8, !dbg !1108
  store i32 %51, ptr %gp_offset_p82, align 8, !dbg !1108
  br label %vaarg.end91, !dbg !1108

vaarg.in_mem87:                                   ; preds = %sw.bb81
  %overflow_arg_area_p88 = getelementptr inbounds %struct.__va_list_tag, ptr %48, i32 0, i32 2, !dbg !1108
  %overflow_arg_area89 = load ptr, ptr %overflow_arg_area_p88, align 8, !dbg !1108
  %overflow_arg_area.next90 = getelementptr i8, ptr %overflow_arg_area89, i32 8, !dbg !1108
  store ptr %overflow_arg_area.next90, ptr %overflow_arg_area_p88, align 8, !dbg !1108
  br label %vaarg.end91, !dbg !1108

vaarg.end91:                                      ; preds = %vaarg.in_mem87, %vaarg.in_reg85
  %vaarg.addr92 = phi ptr [ %50, %vaarg.in_reg85 ], [ %overflow_arg_area89, %vaarg.in_mem87 ], !dbg !1108
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %uid, ptr align 4 %vaarg.addr92, i64 4, i1 false), !dbg !1108
  call void @llvm.lifetime.start.p0(i64 4, ptr %val93) #21, !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %val93, metadata !920, metadata !DIExpression()), !dbg !1110
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !1111
  %52 = load i32, ptr %coerce.dive, align 4, !dbg !1111
  %call94 = call i32 @from_kuid(ptr noundef @init_user_ns, i32 %52) #22, !dbg !1111
  store i32 %call94, ptr %val93, align 4, !dbg !1110
  %53 = load ptr, ptr %pdu.addr, align 8, !dbg !1112
  %call95 = call i64 @pdu_write(ptr noundef %53, ptr noundef %val93, i64 noundef 4) #22, !dbg !1114
  %tobool96 = icmp ne i64 %call95, 0, !dbg !1114
  br i1 %tobool96, label %if.then97, label %if.end98, !dbg !1115

if.then97:                                        ; preds = %vaarg.end91
  store i32 -14, ptr %errcode, align 4, !dbg !1116
  br label %if.end98, !dbg !1117

if.end98:                                         ; preds = %if.then97, %vaarg.end91
  call void @llvm.lifetime.end.p0(i64 4, ptr %val93) #21, !dbg !1118
  call void @llvm.lifetime.end.p0(i64 4, ptr %uid) #21, !dbg !1118
  br label %sw.epilog, !dbg !1119

sw.bb99:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %gid) #21, !dbg !1120
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !921, metadata !DIExpression()), !dbg !1121
  %54 = load ptr, ptr %ap.addr, align 8, !dbg !1122
  %gp_offset_p100 = getelementptr inbounds %struct.__va_list_tag, ptr %54, i32 0, i32 0, !dbg !1122
  %gp_offset101 = load i32, ptr %gp_offset_p100, align 8, !dbg !1122
  %fits_in_gp102 = icmp ule i32 %gp_offset101, 40, !dbg !1122
  br i1 %fits_in_gp102, label %vaarg.in_reg103, label %vaarg.in_mem105, !dbg !1122

vaarg.in_reg103:                                  ; preds = %sw.bb99
  %55 = getelementptr inbounds %struct.__va_list_tag, ptr %54, i32 0, i32 3, !dbg !1122
  %reg_save_area104 = load ptr, ptr %55, align 8, !dbg !1122
  %56 = getelementptr i8, ptr %reg_save_area104, i32 %gp_offset101, !dbg !1122
  %57 = add i32 %gp_offset101, 8, !dbg !1122
  store i32 %57, ptr %gp_offset_p100, align 8, !dbg !1122
  br label %vaarg.end109, !dbg !1122

vaarg.in_mem105:                                  ; preds = %sw.bb99
  %overflow_arg_area_p106 = getelementptr inbounds %struct.__va_list_tag, ptr %54, i32 0, i32 2, !dbg !1122
  %overflow_arg_area107 = load ptr, ptr %overflow_arg_area_p106, align 8, !dbg !1122
  %overflow_arg_area.next108 = getelementptr i8, ptr %overflow_arg_area107, i32 8, !dbg !1122
  store ptr %overflow_arg_area.next108, ptr %overflow_arg_area_p106, align 8, !dbg !1122
  br label %vaarg.end109, !dbg !1122

vaarg.end109:                                     ; preds = %vaarg.in_mem105, %vaarg.in_reg103
  %vaarg.addr110 = phi ptr [ %56, %vaarg.in_reg103 ], [ %overflow_arg_area107, %vaarg.in_mem105 ], !dbg !1122
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %gid, ptr align 4 %vaarg.addr110, i64 4, i1 false), !dbg !1122
  call void @llvm.lifetime.start.p0(i64 4, ptr %val111) #21, !dbg !1123
  call void @llvm.dbg.declare(metadata ptr %val111, metadata !923, metadata !DIExpression()), !dbg !1124
  %coerce.dive112 = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !1125
  %58 = load i32, ptr %coerce.dive112, align 4, !dbg !1125
  %call113 = call i32 @from_kgid(ptr noundef @init_user_ns, i32 %58) #22, !dbg !1125
  store i32 %call113, ptr %val111, align 4, !dbg !1124
  %59 = load ptr, ptr %pdu.addr, align 8, !dbg !1126
  %call114 = call i64 @pdu_write(ptr noundef %59, ptr noundef %val111, i64 noundef 4) #22, !dbg !1128
  %tobool115 = icmp ne i64 %call114, 0, !dbg !1128
  br i1 %tobool115, label %if.then116, label %if.end117, !dbg !1129

if.then116:                                       ; preds = %vaarg.end109
  store i32 -14, ptr %errcode, align 4, !dbg !1130
  br label %if.end117, !dbg !1131

if.end117:                                        ; preds = %if.then116, %vaarg.end109
  call void @llvm.lifetime.end.p0(i64 4, ptr %val111) #21, !dbg !1132
  call void @llvm.lifetime.end.p0(i64 4, ptr %gid) #21, !dbg !1132
  br label %sw.epilog, !dbg !1133

sw.bb118:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %qid) #21, !dbg !1134
  call void @llvm.dbg.declare(metadata ptr %qid, metadata !924, metadata !DIExpression()), !dbg !1135
  %60 = load ptr, ptr %ap.addr, align 8, !dbg !1136
  %gp_offset_p119 = getelementptr inbounds %struct.__va_list_tag, ptr %60, i32 0, i32 0, !dbg !1136
  %gp_offset120 = load i32, ptr %gp_offset_p119, align 8, !dbg !1136
  %fits_in_gp121 = icmp ule i32 %gp_offset120, 40, !dbg !1136
  br i1 %fits_in_gp121, label %vaarg.in_reg122, label %vaarg.in_mem124, !dbg !1136

vaarg.in_reg122:                                  ; preds = %sw.bb118
  %61 = getelementptr inbounds %struct.__va_list_tag, ptr %60, i32 0, i32 3, !dbg !1136
  %reg_save_area123 = load ptr, ptr %61, align 8, !dbg !1136
  %62 = getelementptr i8, ptr %reg_save_area123, i32 %gp_offset120, !dbg !1136
  %63 = add i32 %gp_offset120, 8, !dbg !1136
  store i32 %63, ptr %gp_offset_p119, align 8, !dbg !1136
  br label %vaarg.end128, !dbg !1136

vaarg.in_mem124:                                  ; preds = %sw.bb118
  %overflow_arg_area_p125 = getelementptr inbounds %struct.__va_list_tag, ptr %60, i32 0, i32 2, !dbg !1136
  %overflow_arg_area126 = load ptr, ptr %overflow_arg_area_p125, align 8, !dbg !1136
  %overflow_arg_area.next127 = getelementptr i8, ptr %overflow_arg_area126, i32 8, !dbg !1136
  store ptr %overflow_arg_area.next127, ptr %overflow_arg_area_p125, align 8, !dbg !1136
  br label %vaarg.end128, !dbg !1136

vaarg.end128:                                     ; preds = %vaarg.in_mem124, %vaarg.in_reg122
  %vaarg.addr129 = phi ptr [ %62, %vaarg.in_reg122 ], [ %overflow_arg_area126, %vaarg.in_mem124 ], !dbg !1136
  %64 = load ptr, ptr %vaarg.addr129, align 8, !dbg !1136
  store ptr %64, ptr %qid, align 8, !dbg !1135
  %65 = load ptr, ptr %pdu.addr, align 8, !dbg !1137
  %66 = load i32, ptr %proto_version.addr, align 4, !dbg !1138
  %67 = load ptr, ptr %qid, align 8, !dbg !1139
  %type = getelementptr inbounds %struct.p9_qid, ptr %67, i32 0, i32 0, !dbg !1140
  %68 = load i8, ptr %type, align 8, !dbg !1140
  %conv130 = zext i8 %68 to i32, !dbg !1139
  %69 = load ptr, ptr %qid, align 8, !dbg !1141
  %version = getelementptr inbounds %struct.p9_qid, ptr %69, i32 0, i32 1, !dbg !1142
  %70 = load i32, ptr %version, align 4, !dbg !1142
  %71 = load ptr, ptr %qid, align 8, !dbg !1143
  %path = getelementptr inbounds %struct.p9_qid, ptr %71, i32 0, i32 2, !dbg !1144
  %72 = load i64, ptr %path, align 8, !dbg !1144
  %call131 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %65, i32 noundef %66, ptr noundef @.str.10, i32 noundef %conv130, i32 noundef %70, i64 noundef %72) #22, !dbg !1145
  store i32 %call131, ptr %errcode, align 4, !dbg !1146
  call void @llvm.lifetime.end.p0(i64 8, ptr %qid) #21, !dbg !1147
  br label %sw.epilog, !dbg !1148

sw.bb132:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbuf) #21, !dbg !1149
  call void @llvm.dbg.declare(metadata ptr %stbuf, metadata !928, metadata !DIExpression()), !dbg !1150
  %73 = load ptr, ptr %ap.addr, align 8, !dbg !1151
  %gp_offset_p133 = getelementptr inbounds %struct.__va_list_tag, ptr %73, i32 0, i32 0, !dbg !1151
  %gp_offset134 = load i32, ptr %gp_offset_p133, align 8, !dbg !1151
  %fits_in_gp135 = icmp ule i32 %gp_offset134, 40, !dbg !1151
  br i1 %fits_in_gp135, label %vaarg.in_reg136, label %vaarg.in_mem138, !dbg !1151

vaarg.in_reg136:                                  ; preds = %sw.bb132
  %74 = getelementptr inbounds %struct.__va_list_tag, ptr %73, i32 0, i32 3, !dbg !1151
  %reg_save_area137 = load ptr, ptr %74, align 8, !dbg !1151
  %75 = getelementptr i8, ptr %reg_save_area137, i32 %gp_offset134, !dbg !1151
  %76 = add i32 %gp_offset134, 8, !dbg !1151
  store i32 %76, ptr %gp_offset_p133, align 8, !dbg !1151
  br label %vaarg.end142, !dbg !1151

vaarg.in_mem138:                                  ; preds = %sw.bb132
  %overflow_arg_area_p139 = getelementptr inbounds %struct.__va_list_tag, ptr %73, i32 0, i32 2, !dbg !1151
  %overflow_arg_area140 = load ptr, ptr %overflow_arg_area_p139, align 8, !dbg !1151
  %overflow_arg_area.next141 = getelementptr i8, ptr %overflow_arg_area140, i32 8, !dbg !1151
  store ptr %overflow_arg_area.next141, ptr %overflow_arg_area_p139, align 8, !dbg !1151
  br label %vaarg.end142, !dbg !1151

vaarg.end142:                                     ; preds = %vaarg.in_mem138, %vaarg.in_reg136
  %vaarg.addr143 = phi ptr [ %75, %vaarg.in_reg136 ], [ %overflow_arg_area140, %vaarg.in_mem138 ], !dbg !1151
  %77 = load ptr, ptr %vaarg.addr143, align 8, !dbg !1151
  store ptr %77, ptr %stbuf, align 8, !dbg !1150
  %78 = load ptr, ptr %pdu.addr, align 8, !dbg !1152
  %79 = load i32, ptr %proto_version.addr, align 4, !dbg !1153
  %80 = load ptr, ptr %stbuf, align 8, !dbg !1154
  %size = getelementptr inbounds %struct.p9_wstat, ptr %80, i32 0, i32 0, !dbg !1155
  %81 = load i16, ptr %size, align 8, !dbg !1155
  %conv144 = zext i16 %81 to i32, !dbg !1154
  %82 = load ptr, ptr %stbuf, align 8, !dbg !1156
  %type145 = getelementptr inbounds %struct.p9_wstat, ptr %82, i32 0, i32 1, !dbg !1157
  %83 = load i16, ptr %type145, align 2, !dbg !1157
  %conv146 = zext i16 %83 to i32, !dbg !1156
  %84 = load ptr, ptr %stbuf, align 8, !dbg !1158
  %dev = getelementptr inbounds %struct.p9_wstat, ptr %84, i32 0, i32 2, !dbg !1159
  %85 = load i32, ptr %dev, align 4, !dbg !1159
  %86 = load ptr, ptr %stbuf, align 8, !dbg !1160
  %qid147 = getelementptr inbounds %struct.p9_wstat, ptr %86, i32 0, i32 3, !dbg !1161
  %87 = load ptr, ptr %stbuf, align 8, !dbg !1162
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %87, i32 0, i32 4, !dbg !1163
  %88 = load i32, ptr %mode, align 8, !dbg !1163
  %89 = load ptr, ptr %stbuf, align 8, !dbg !1164
  %atime = getelementptr inbounds %struct.p9_wstat, ptr %89, i32 0, i32 5, !dbg !1165
  %90 = load i32, ptr %atime, align 4, !dbg !1165
  %91 = load ptr, ptr %stbuf, align 8, !dbg !1166
  %mtime = getelementptr inbounds %struct.p9_wstat, ptr %91, i32 0, i32 6, !dbg !1167
  %92 = load i32, ptr %mtime, align 8, !dbg !1167
  %93 = load ptr, ptr %stbuf, align 8, !dbg !1168
  %length = getelementptr inbounds %struct.p9_wstat, ptr %93, i32 0, i32 7, !dbg !1169
  %94 = load i64, ptr %length, align 8, !dbg !1169
  %95 = load ptr, ptr %stbuf, align 8, !dbg !1170
  %name = getelementptr inbounds %struct.p9_wstat, ptr %95, i32 0, i32 8, !dbg !1171
  %96 = load ptr, ptr %name, align 8, !dbg !1171
  %97 = load ptr, ptr %stbuf, align 8, !dbg !1172
  %uid148 = getelementptr inbounds %struct.p9_wstat, ptr %97, i32 0, i32 9, !dbg !1173
  %98 = load ptr, ptr %uid148, align 8, !dbg !1173
  %99 = load ptr, ptr %stbuf, align 8, !dbg !1174
  %gid149 = getelementptr inbounds %struct.p9_wstat, ptr %99, i32 0, i32 10, !dbg !1175
  %100 = load ptr, ptr %gid149, align 8, !dbg !1175
  %101 = load ptr, ptr %stbuf, align 8, !dbg !1176
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %101, i32 0, i32 11, !dbg !1177
  %102 = load ptr, ptr %muid, align 8, !dbg !1177
  %103 = load ptr, ptr %stbuf, align 8, !dbg !1178
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %103, i32 0, i32 12, !dbg !1179
  %104 = load ptr, ptr %extension, align 8, !dbg !1179
  %105 = load ptr, ptr %stbuf, align 8, !dbg !1180
  %n_uid = getelementptr inbounds %struct.p9_wstat, ptr %105, i32 0, i32 13, !dbg !1181
  %106 = load ptr, ptr %stbuf, align 8, !dbg !1182
  %n_gid = getelementptr inbounds %struct.p9_wstat, ptr %106, i32 0, i32 14, !dbg !1183
  %107 = load ptr, ptr %stbuf, align 8, !dbg !1184
  %n_muid = getelementptr inbounds %struct.p9_wstat, ptr %107, i32 0, i32 15, !dbg !1185
  %coerce.dive150 = getelementptr inbounds %struct.kuid_t, ptr %n_uid, i32 0, i32 0, !dbg !1186
  %108 = load i32, ptr %coerce.dive150, align 8, !dbg !1186
  %coerce.dive151 = getelementptr inbounds %struct.kgid_t, ptr %n_gid, i32 0, i32 0, !dbg !1186
  %109 = load i32, ptr %coerce.dive151, align 4, !dbg !1186
  %coerce.dive152 = getelementptr inbounds %struct.kuid_t, ptr %n_muid, i32 0, i32 0, !dbg !1186
  %110 = load i32, ptr %coerce.dive152, align 8, !dbg !1186
  %call153 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %78, i32 noundef %79, ptr noundef @.str.11, i32 noundef %conv144, i32 noundef %conv146, i32 noundef %85, ptr noundef %qid147, i32 noundef %88, i32 noundef %90, i32 noundef %92, i64 noundef %94, ptr noundef %96, ptr noundef %98, ptr noundef %100, ptr noundef %102, ptr noundef %104, i32 %108, i32 %109, i32 %110) #22, !dbg !1186
  store i32 %call153, ptr %errcode, align 4, !dbg !1187
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbuf) #21, !dbg !1188
  br label %sw.epilog, !dbg !1189

sw.bb154:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #21, !dbg !1190
  call void @llvm.dbg.declare(metadata ptr %count, metadata !932, metadata !DIExpression()), !dbg !1191
  %111 = load ptr, ptr %ap.addr, align 8, !dbg !1192
  %gp_offset_p155 = getelementptr inbounds %struct.__va_list_tag, ptr %111, i32 0, i32 0, !dbg !1192
  %gp_offset156 = load i32, ptr %gp_offset_p155, align 8, !dbg !1192
  %fits_in_gp157 = icmp ule i32 %gp_offset156, 40, !dbg !1192
  br i1 %fits_in_gp157, label %vaarg.in_reg158, label %vaarg.in_mem160, !dbg !1192

vaarg.in_reg158:                                  ; preds = %sw.bb154
  %112 = getelementptr inbounds %struct.__va_list_tag, ptr %111, i32 0, i32 3, !dbg !1192
  %reg_save_area159 = load ptr, ptr %112, align 8, !dbg !1192
  %113 = getelementptr i8, ptr %reg_save_area159, i32 %gp_offset156, !dbg !1192
  %114 = add i32 %gp_offset156, 8, !dbg !1192
  store i32 %114, ptr %gp_offset_p155, align 8, !dbg !1192
  br label %vaarg.end164, !dbg !1192

vaarg.in_mem160:                                  ; preds = %sw.bb154
  %overflow_arg_area_p161 = getelementptr inbounds %struct.__va_list_tag, ptr %111, i32 0, i32 2, !dbg !1192
  %overflow_arg_area162 = load ptr, ptr %overflow_arg_area_p161, align 8, !dbg !1192
  %overflow_arg_area.next163 = getelementptr i8, ptr %overflow_arg_area162, i32 8, !dbg !1192
  store ptr %overflow_arg_area.next163, ptr %overflow_arg_area_p161, align 8, !dbg !1192
  br label %vaarg.end164, !dbg !1192

vaarg.end164:                                     ; preds = %vaarg.in_mem160, %vaarg.in_reg158
  %vaarg.addr165 = phi ptr [ %113, %vaarg.in_reg158 ], [ %overflow_arg_area162, %vaarg.in_mem160 ], !dbg !1192
  %115 = load i32, ptr %vaarg.addr165, align 4, !dbg !1192
  store i32 %115, ptr %count, align 4, !dbg !1191
  call void @llvm.lifetime.start.p0(i64 8, ptr %from) #21, !dbg !1193
  call void @llvm.dbg.declare(metadata ptr %from, metadata !934, metadata !DIExpression()), !dbg !1194
  %116 = load ptr, ptr %ap.addr, align 8, !dbg !1195
  %gp_offset_p166 = getelementptr inbounds %struct.__va_list_tag, ptr %116, i32 0, i32 0, !dbg !1195
  %gp_offset167 = load i32, ptr %gp_offset_p166, align 8, !dbg !1195
  %fits_in_gp168 = icmp ule i32 %gp_offset167, 40, !dbg !1195
  br i1 %fits_in_gp168, label %vaarg.in_reg169, label %vaarg.in_mem171, !dbg !1195

vaarg.in_reg169:                                  ; preds = %vaarg.end164
  %117 = getelementptr inbounds %struct.__va_list_tag, ptr %116, i32 0, i32 3, !dbg !1195
  %reg_save_area170 = load ptr, ptr %117, align 8, !dbg !1195
  %118 = getelementptr i8, ptr %reg_save_area170, i32 %gp_offset167, !dbg !1195
  %119 = add i32 %gp_offset167, 8, !dbg !1195
  store i32 %119, ptr %gp_offset_p166, align 8, !dbg !1195
  br label %vaarg.end175, !dbg !1195

vaarg.in_mem171:                                  ; preds = %vaarg.end164
  %overflow_arg_area_p172 = getelementptr inbounds %struct.__va_list_tag, ptr %116, i32 0, i32 2, !dbg !1195
  %overflow_arg_area173 = load ptr, ptr %overflow_arg_area_p172, align 8, !dbg !1195
  %overflow_arg_area.next174 = getelementptr i8, ptr %overflow_arg_area173, i32 8, !dbg !1195
  store ptr %overflow_arg_area.next174, ptr %overflow_arg_area_p172, align 8, !dbg !1195
  br label %vaarg.end175, !dbg !1195

vaarg.end175:                                     ; preds = %vaarg.in_mem171, %vaarg.in_reg169
  %vaarg.addr176 = phi ptr [ %118, %vaarg.in_reg169 ], [ %overflow_arg_area173, %vaarg.in_mem171 ], !dbg !1195
  %120 = load ptr, ptr %vaarg.addr176, align 8, !dbg !1195
  store ptr %120, ptr %from, align 8, !dbg !1194
  %121 = load ptr, ptr %pdu.addr, align 8, !dbg !1196
  %122 = load i32, ptr %proto_version.addr, align 4, !dbg !1197
  %123 = load i32, ptr %count, align 4, !dbg !1198
  %call177 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %121, i32 noundef %122, ptr noundef @.str.12, i32 noundef %123) #22, !dbg !1199
  store i32 %call177, ptr %errcode, align 4, !dbg !1200
  %124 = load i32, ptr %errcode, align 4, !dbg !1201
  %tobool178 = icmp ne i32 %124, 0, !dbg !1201
  br i1 %tobool178, label %if.end184, label %land.lhs.true179, !dbg !1203

land.lhs.true179:                                 ; preds = %vaarg.end175
  %125 = load ptr, ptr %pdu.addr, align 8, !dbg !1204
  %126 = load ptr, ptr %from, align 8, !dbg !1205
  %127 = load i32, ptr %count, align 4, !dbg !1206
  %conv180 = zext i32 %127 to i64, !dbg !1206
  %call181 = call i64 @pdu_write_u(ptr noundef %125, ptr noundef %126, i64 noundef %conv180) #22, !dbg !1207
  %tobool182 = icmp ne i64 %call181, 0, !dbg !1207
  br i1 %tobool182, label %if.then183, label %if.end184, !dbg !1208

if.then183:                                       ; preds = %land.lhs.true179
  store i32 -14, ptr %errcode, align 4, !dbg !1209
  br label %if.end184, !dbg !1210

if.end184:                                        ; preds = %if.then183, %land.lhs.true179, %vaarg.end175
  call void @llvm.lifetime.end.p0(i64 8, ptr %from) #21, !dbg !1211
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #21, !dbg !1211
  br label %sw.epilog, !dbg !1212

sw.bb185:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2, ptr %nwname) #21, !dbg !1213
  call void @llvm.dbg.declare(metadata ptr %nwname, metadata !990, metadata !DIExpression()), !dbg !1214
  %128 = load ptr, ptr %ap.addr, align 8, !dbg !1215
  %gp_offset_p186 = getelementptr inbounds %struct.__va_list_tag, ptr %128, i32 0, i32 0, !dbg !1215
  %gp_offset187 = load i32, ptr %gp_offset_p186, align 8, !dbg !1215
  %fits_in_gp188 = icmp ule i32 %gp_offset187, 40, !dbg !1215
  br i1 %fits_in_gp188, label %vaarg.in_reg189, label %vaarg.in_mem191, !dbg !1215

vaarg.in_reg189:                                  ; preds = %sw.bb185
  %129 = getelementptr inbounds %struct.__va_list_tag, ptr %128, i32 0, i32 3, !dbg !1215
  %reg_save_area190 = load ptr, ptr %129, align 8, !dbg !1215
  %130 = getelementptr i8, ptr %reg_save_area190, i32 %gp_offset187, !dbg !1215
  %131 = add i32 %gp_offset187, 8, !dbg !1215
  store i32 %131, ptr %gp_offset_p186, align 8, !dbg !1215
  br label %vaarg.end195, !dbg !1215

vaarg.in_mem191:                                  ; preds = %sw.bb185
  %overflow_arg_area_p192 = getelementptr inbounds %struct.__va_list_tag, ptr %128, i32 0, i32 2, !dbg !1215
  %overflow_arg_area193 = load ptr, ptr %overflow_arg_area_p192, align 8, !dbg !1215
  %overflow_arg_area.next194 = getelementptr i8, ptr %overflow_arg_area193, i32 8, !dbg !1215
  store ptr %overflow_arg_area.next194, ptr %overflow_arg_area_p192, align 8, !dbg !1215
  br label %vaarg.end195, !dbg !1215

vaarg.end195:                                     ; preds = %vaarg.in_mem191, %vaarg.in_reg189
  %vaarg.addr196 = phi ptr [ %130, %vaarg.in_reg189 ], [ %overflow_arg_area193, %vaarg.in_mem191 ], !dbg !1215
  %132 = load i32, ptr %vaarg.addr196, align 4, !dbg !1215
  %conv197 = trunc i32 %132 to i16, !dbg !1215
  store i16 %conv197, ptr %nwname, align 2, !dbg !1214
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnames) #21, !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %wnames, metadata !992, metadata !DIExpression()), !dbg !1217
  %133 = load ptr, ptr %ap.addr, align 8, !dbg !1218
  %gp_offset_p198 = getelementptr inbounds %struct.__va_list_tag, ptr %133, i32 0, i32 0, !dbg !1218
  %gp_offset199 = load i32, ptr %gp_offset_p198, align 8, !dbg !1218
  %fits_in_gp200 = icmp ule i32 %gp_offset199, 40, !dbg !1218
  br i1 %fits_in_gp200, label %vaarg.in_reg201, label %vaarg.in_mem203, !dbg !1218

vaarg.in_reg201:                                  ; preds = %vaarg.end195
  %134 = getelementptr inbounds %struct.__va_list_tag, ptr %133, i32 0, i32 3, !dbg !1218
  %reg_save_area202 = load ptr, ptr %134, align 8, !dbg !1218
  %135 = getelementptr i8, ptr %reg_save_area202, i32 %gp_offset199, !dbg !1218
  %136 = add i32 %gp_offset199, 8, !dbg !1218
  store i32 %136, ptr %gp_offset_p198, align 8, !dbg !1218
  br label %vaarg.end207, !dbg !1218

vaarg.in_mem203:                                  ; preds = %vaarg.end195
  %overflow_arg_area_p204 = getelementptr inbounds %struct.__va_list_tag, ptr %133, i32 0, i32 2, !dbg !1218
  %overflow_arg_area205 = load ptr, ptr %overflow_arg_area_p204, align 8, !dbg !1218
  %overflow_arg_area.next206 = getelementptr i8, ptr %overflow_arg_area205, i32 8, !dbg !1218
  store ptr %overflow_arg_area.next206, ptr %overflow_arg_area_p204, align 8, !dbg !1218
  br label %vaarg.end207, !dbg !1218

vaarg.end207:                                     ; preds = %vaarg.in_mem203, %vaarg.in_reg201
  %vaarg.addr208 = phi ptr [ %135, %vaarg.in_reg201 ], [ %overflow_arg_area205, %vaarg.in_mem203 ], !dbg !1218
  %137 = load ptr, ptr %vaarg.addr208, align 8, !dbg !1218
  store ptr %137, ptr %wnames, align 8, !dbg !1217
  %138 = load ptr, ptr %pdu.addr, align 8, !dbg !1219
  %139 = load i32, ptr %proto_version.addr, align 4, !dbg !1220
  %140 = load i16, ptr %nwname, align 2, !dbg !1221
  %conv209 = zext i16 %140 to i32, !dbg !1221
  %call210 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %138, i32 noundef %139, ptr noundef @.str.9, i32 noundef %conv209) #22, !dbg !1222
  store i32 %call210, ptr %errcode, align 4, !dbg !1223
  %141 = load i32, ptr %errcode, align 4, !dbg !1224
  %tobool211 = icmp ne i32 %141, 0, !dbg !1224
  br i1 %tobool211, label %if.end222, label %if.then212, !dbg !1225

if.then212:                                       ; preds = %vaarg.end207
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %i, metadata !993, metadata !DIExpression()), !dbg !1227
  store i32 0, ptr %i, align 4, !dbg !1228
  br label %for.cond213, !dbg !1230

for.cond213:                                      ; preds = %for.inc, %if.then212
  %142 = load i32, ptr %i, align 4, !dbg !1231
  %143 = load i16, ptr %nwname, align 2, !dbg !1233
  %conv214 = zext i16 %143 to i32, !dbg !1233
  %cmp215 = icmp slt i32 %142, %conv214, !dbg !1234
  br i1 %cmp215, label %for.body217, label %for.end, !dbg !1235

for.body217:                                      ; preds = %for.cond213
  %144 = load ptr, ptr %pdu.addr, align 8, !dbg !1236
  %145 = load i32, ptr %proto_version.addr, align 4, !dbg !1238
  %146 = load ptr, ptr %wnames, align 8, !dbg !1239
  %147 = load i32, ptr %i, align 4, !dbg !1240
  %idxprom = sext i32 %147 to i64, !dbg !1239
  %arrayidx = getelementptr ptr, ptr %146, i64 %idxprom, !dbg !1239
  %148 = load ptr, ptr %arrayidx, align 8, !dbg !1239
  %call218 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %144, i32 noundef %145, ptr noundef @.str.13, ptr noundef %148) #22, !dbg !1241
  store i32 %call218, ptr %errcode, align 4, !dbg !1242
  %149 = load i32, ptr %errcode, align 4, !dbg !1243
  %tobool219 = icmp ne i32 %149, 0, !dbg !1243
  br i1 %tobool219, label %if.then220, label %if.end221, !dbg !1245

if.then220:                                       ; preds = %for.body217
  br label %for.end, !dbg !1246

if.end221:                                        ; preds = %for.body217
  br label %for.inc, !dbg !1247

for.inc:                                          ; preds = %if.end221
  %150 = load i32, ptr %i, align 4, !dbg !1248
  %inc = add i32 %150, 1, !dbg !1248
  store i32 %inc, ptr %i, align 4, !dbg !1248
  br label %for.cond213, !dbg !1249, !llvm.loop !1250

for.end:                                          ; preds = %if.then220, %for.cond213
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !1252
  br label %if.end222, !dbg !1253

if.end222:                                        ; preds = %for.end, %vaarg.end207
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnames) #21, !dbg !1254
  call void @llvm.lifetime.end.p0(i64 2, ptr %nwname) #21, !dbg !1254
  br label %sw.epilog, !dbg !1255

sw.bb223:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 2, ptr %nwqid) #21, !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %nwqid, metadata !996, metadata !DIExpression()), !dbg !1257
  %151 = load ptr, ptr %ap.addr, align 8, !dbg !1258
  %gp_offset_p224 = getelementptr inbounds %struct.__va_list_tag, ptr %151, i32 0, i32 0, !dbg !1258
  %gp_offset225 = load i32, ptr %gp_offset_p224, align 8, !dbg !1258
  %fits_in_gp226 = icmp ule i32 %gp_offset225, 40, !dbg !1258
  br i1 %fits_in_gp226, label %vaarg.in_reg227, label %vaarg.in_mem229, !dbg !1258

vaarg.in_reg227:                                  ; preds = %sw.bb223
  %152 = getelementptr inbounds %struct.__va_list_tag, ptr %151, i32 0, i32 3, !dbg !1258
  %reg_save_area228 = load ptr, ptr %152, align 8, !dbg !1258
  %153 = getelementptr i8, ptr %reg_save_area228, i32 %gp_offset225, !dbg !1258
  %154 = add i32 %gp_offset225, 8, !dbg !1258
  store i32 %154, ptr %gp_offset_p224, align 8, !dbg !1258
  br label %vaarg.end233, !dbg !1258

vaarg.in_mem229:                                  ; preds = %sw.bb223
  %overflow_arg_area_p230 = getelementptr inbounds %struct.__va_list_tag, ptr %151, i32 0, i32 2, !dbg !1258
  %overflow_arg_area231 = load ptr, ptr %overflow_arg_area_p230, align 8, !dbg !1258
  %overflow_arg_area.next232 = getelementptr i8, ptr %overflow_arg_area231, i32 8, !dbg !1258
  store ptr %overflow_arg_area.next232, ptr %overflow_arg_area_p230, align 8, !dbg !1258
  br label %vaarg.end233, !dbg !1258

vaarg.end233:                                     ; preds = %vaarg.in_mem229, %vaarg.in_reg227
  %vaarg.addr234 = phi ptr [ %153, %vaarg.in_reg227 ], [ %overflow_arg_area231, %vaarg.in_mem229 ], !dbg !1258
  %155 = load i32, ptr %vaarg.addr234, align 4, !dbg !1258
  %conv235 = trunc i32 %155 to i16, !dbg !1258
  store i16 %conv235, ptr %nwqid, align 2, !dbg !1257
  call void @llvm.lifetime.start.p0(i64 8, ptr %wqids) #21, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %wqids, metadata !998, metadata !DIExpression()), !dbg !1260
  %156 = load ptr, ptr %ap.addr, align 8, !dbg !1261
  %gp_offset_p236 = getelementptr inbounds %struct.__va_list_tag, ptr %156, i32 0, i32 0, !dbg !1261
  %gp_offset237 = load i32, ptr %gp_offset_p236, align 8, !dbg !1261
  %fits_in_gp238 = icmp ule i32 %gp_offset237, 40, !dbg !1261
  br i1 %fits_in_gp238, label %vaarg.in_reg239, label %vaarg.in_mem241, !dbg !1261

vaarg.in_reg239:                                  ; preds = %vaarg.end233
  %157 = getelementptr inbounds %struct.__va_list_tag, ptr %156, i32 0, i32 3, !dbg !1261
  %reg_save_area240 = load ptr, ptr %157, align 8, !dbg !1261
  %158 = getelementptr i8, ptr %reg_save_area240, i32 %gp_offset237, !dbg !1261
  %159 = add i32 %gp_offset237, 8, !dbg !1261
  store i32 %159, ptr %gp_offset_p236, align 8, !dbg !1261
  br label %vaarg.end245, !dbg !1261

vaarg.in_mem241:                                  ; preds = %vaarg.end233
  %overflow_arg_area_p242 = getelementptr inbounds %struct.__va_list_tag, ptr %156, i32 0, i32 2, !dbg !1261
  %overflow_arg_area243 = load ptr, ptr %overflow_arg_area_p242, align 8, !dbg !1261
  %overflow_arg_area.next244 = getelementptr i8, ptr %overflow_arg_area243, i32 8, !dbg !1261
  store ptr %overflow_arg_area.next244, ptr %overflow_arg_area_p242, align 8, !dbg !1261
  br label %vaarg.end245, !dbg !1261

vaarg.end245:                                     ; preds = %vaarg.in_mem241, %vaarg.in_reg239
  %vaarg.addr246 = phi ptr [ %158, %vaarg.in_reg239 ], [ %overflow_arg_area243, %vaarg.in_mem241 ], !dbg !1261
  %160 = load ptr, ptr %vaarg.addr246, align 8, !dbg !1261
  store ptr %160, ptr %wqids, align 8, !dbg !1260
  %161 = load ptr, ptr %pdu.addr, align 8, !dbg !1262
  %162 = load i32, ptr %proto_version.addr, align 4, !dbg !1263
  %163 = load i16, ptr %nwqid, align 2, !dbg !1264
  %conv247 = zext i16 %163 to i32, !dbg !1264
  %call248 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %161, i32 noundef %162, ptr noundef @.str.9, i32 noundef %conv247) #22, !dbg !1265
  store i32 %call248, ptr %errcode, align 4, !dbg !1266
  %164 = load i32, ptr %errcode, align 4, !dbg !1267
  %tobool249 = icmp ne i32 %164, 0, !dbg !1267
  br i1 %tobool249, label %if.end266, label %if.then250, !dbg !1268

if.then250:                                       ; preds = %vaarg.end245
  call void @llvm.lifetime.start.p0(i64 4, ptr %i251) #21, !dbg !1269
  call void @llvm.dbg.declare(metadata ptr %i251, metadata !1000, metadata !DIExpression()), !dbg !1270
  store i32 0, ptr %i251, align 4, !dbg !1271
  br label %for.cond252, !dbg !1273

for.cond252:                                      ; preds = %for.inc263, %if.then250
  %165 = load i32, ptr %i251, align 4, !dbg !1274
  %166 = load i16, ptr %nwqid, align 2, !dbg !1276
  %conv253 = zext i16 %166 to i32, !dbg !1276
  %cmp254 = icmp slt i32 %165, %conv253, !dbg !1277
  br i1 %cmp254, label %for.body256, label %for.end265, !dbg !1278

for.body256:                                      ; preds = %for.cond252
  %167 = load ptr, ptr %pdu.addr, align 8, !dbg !1279
  %168 = load i32, ptr %proto_version.addr, align 4, !dbg !1281
  %169 = load ptr, ptr %wqids, align 8, !dbg !1282
  %170 = load i32, ptr %i251, align 4, !dbg !1283
  %idxprom257 = sext i32 %170 to i64, !dbg !1282
  %arrayidx258 = getelementptr %struct.p9_qid, ptr %169, i64 %idxprom257, !dbg !1282
  %call259 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %167, i32 noundef %168, ptr noundef @.str.14, ptr noundef %arrayidx258) #22, !dbg !1284
  store i32 %call259, ptr %errcode, align 4, !dbg !1285
  %171 = load i32, ptr %errcode, align 4, !dbg !1286
  %tobool260 = icmp ne i32 %171, 0, !dbg !1286
  br i1 %tobool260, label %if.then261, label %if.end262, !dbg !1288

if.then261:                                       ; preds = %for.body256
  br label %for.end265, !dbg !1289

if.end262:                                        ; preds = %for.body256
  br label %for.inc263, !dbg !1290

for.inc263:                                       ; preds = %if.end262
  %172 = load i32, ptr %i251, align 4, !dbg !1291
  %inc264 = add i32 %172, 1, !dbg !1291
  store i32 %inc264, ptr %i251, align 4, !dbg !1291
  br label %for.cond252, !dbg !1292, !llvm.loop !1293

for.end265:                                       ; preds = %if.then261, %for.cond252
  call void @llvm.lifetime.end.p0(i64 4, ptr %i251) #21, !dbg !1295
  br label %if.end266, !dbg !1296

if.end266:                                        ; preds = %for.end265, %vaarg.end245
  call void @llvm.lifetime.end.p0(i64 8, ptr %wqids) #21, !dbg !1297
  call void @llvm.lifetime.end.p0(i64 2, ptr %nwqid) #21, !dbg !1297
  br label %sw.epilog, !dbg !1298

sw.bb267:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %p9attr) #21, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %p9attr, metadata !1003, metadata !DIExpression()), !dbg !1300
  %173 = load ptr, ptr %ap.addr, align 8, !dbg !1301
  %gp_offset_p268 = getelementptr inbounds %struct.__va_list_tag, ptr %173, i32 0, i32 0, !dbg !1301
  %gp_offset269 = load i32, ptr %gp_offset_p268, align 8, !dbg !1301
  %fits_in_gp270 = icmp ule i32 %gp_offset269, 40, !dbg !1301
  br i1 %fits_in_gp270, label %vaarg.in_reg271, label %vaarg.in_mem273, !dbg !1301

vaarg.in_reg271:                                  ; preds = %sw.bb267
  %174 = getelementptr inbounds %struct.__va_list_tag, ptr %173, i32 0, i32 3, !dbg !1301
  %reg_save_area272 = load ptr, ptr %174, align 8, !dbg !1301
  %175 = getelementptr i8, ptr %reg_save_area272, i32 %gp_offset269, !dbg !1301
  %176 = add i32 %gp_offset269, 8, !dbg !1301
  store i32 %176, ptr %gp_offset_p268, align 8, !dbg !1301
  br label %vaarg.end277, !dbg !1301

vaarg.in_mem273:                                  ; preds = %sw.bb267
  %overflow_arg_area_p274 = getelementptr inbounds %struct.__va_list_tag, ptr %173, i32 0, i32 2, !dbg !1301
  %overflow_arg_area275 = load ptr, ptr %overflow_arg_area_p274, align 8, !dbg !1301
  %overflow_arg_area.next276 = getelementptr i8, ptr %overflow_arg_area275, i32 8, !dbg !1301
  store ptr %overflow_arg_area.next276, ptr %overflow_arg_area_p274, align 8, !dbg !1301
  br label %vaarg.end277, !dbg !1301

vaarg.end277:                                     ; preds = %vaarg.in_mem273, %vaarg.in_reg271
  %vaarg.addr278 = phi ptr [ %175, %vaarg.in_reg271 ], [ %overflow_arg_area275, %vaarg.in_mem273 ], !dbg !1301
  %177 = load ptr, ptr %vaarg.addr278, align 8, !dbg !1301
  store ptr %177, ptr %p9attr, align 8, !dbg !1300
  %178 = load ptr, ptr %pdu.addr, align 8, !dbg !1302
  %179 = load i32, ptr %proto_version.addr, align 4, !dbg !1303
  %180 = load ptr, ptr %p9attr, align 8, !dbg !1304
  %valid = getelementptr inbounds %struct.p9_iattr_dotl, ptr %180, i32 0, i32 0, !dbg !1305
  %181 = load i32, ptr %valid, align 8, !dbg !1305
  %182 = load ptr, ptr %p9attr, align 8, !dbg !1306
  %mode279 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %182, i32 0, i32 1, !dbg !1307
  %183 = load i32, ptr %mode279, align 4, !dbg !1307
  %184 = load ptr, ptr %p9attr, align 8, !dbg !1308
  %uid280 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %184, i32 0, i32 2, !dbg !1309
  %185 = load ptr, ptr %p9attr, align 8, !dbg !1310
  %gid281 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %185, i32 0, i32 3, !dbg !1311
  %186 = load ptr, ptr %p9attr, align 8, !dbg !1312
  %size282 = getelementptr inbounds %struct.p9_iattr_dotl, ptr %186, i32 0, i32 4, !dbg !1313
  %187 = load i64, ptr %size282, align 8, !dbg !1313
  %188 = load ptr, ptr %p9attr, align 8, !dbg !1314
  %atime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %188, i32 0, i32 5, !dbg !1315
  %189 = load i64, ptr %atime_sec, align 8, !dbg !1315
  %190 = load ptr, ptr %p9attr, align 8, !dbg !1316
  %atime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %190, i32 0, i32 6, !dbg !1317
  %191 = load i64, ptr %atime_nsec, align 8, !dbg !1317
  %192 = load ptr, ptr %p9attr, align 8, !dbg !1318
  %mtime_sec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %192, i32 0, i32 7, !dbg !1319
  %193 = load i64, ptr %mtime_sec, align 8, !dbg !1319
  %194 = load ptr, ptr %p9attr, align 8, !dbg !1320
  %mtime_nsec = getelementptr inbounds %struct.p9_iattr_dotl, ptr %194, i32 0, i32 8, !dbg !1321
  %195 = load i64, ptr %mtime_nsec, align 8, !dbg !1321
  %coerce.dive283 = getelementptr inbounds %struct.kuid_t, ptr %uid280, i32 0, i32 0, !dbg !1322
  %196 = load i32, ptr %coerce.dive283, align 8, !dbg !1322
  %coerce.dive284 = getelementptr inbounds %struct.kgid_t, ptr %gid281, i32 0, i32 0, !dbg !1322
  %197 = load i32, ptr %coerce.dive284, align 4, !dbg !1322
  %call285 = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %178, i32 noundef %179, ptr noundef @.str.15, i32 noundef %181, i32 noundef %183, i32 %196, i32 %197, i64 noundef %187, i64 noundef %189, i64 noundef %191, i64 noundef %193, i64 noundef %195) #22, !dbg !1322
  store i32 %call285, ptr %errcode, align 4, !dbg !1323
  call void @llvm.lifetime.end.p0(i64 8, ptr %p9attr) #21, !dbg !1324
  br label %sw.epilog, !dbg !1325

sw.bb286:                                         ; preds = %for.body
  %198 = load i32, ptr %proto_version.addr, align 4, !dbg !1326
  %cmp287 = icmp ne i32 %198, 1, !dbg !1328
  br i1 %cmp287, label %land.lhs.true289, label %if.end293, !dbg !1329

land.lhs.true289:                                 ; preds = %sw.bb286
  %199 = load i32, ptr %proto_version.addr, align 4, !dbg !1330
  %cmp290 = icmp ne i32 %199, 2, !dbg !1331
  br i1 %cmp290, label %if.then292, label %if.end293, !dbg !1332

if.then292:                                       ; preds = %land.lhs.true289
  store i32 0, ptr %retval, align 4, !dbg !1333
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1333

if.end293:                                        ; preds = %land.lhs.true289, %sw.bb286
  br label %sw.epilog, !dbg !1334

sw.default:                                       ; preds = %for.body
  br label %do.body, !dbg !1335

do.body:                                          ; preds = %sw.default
  br label %do.body294, !dbg !1336

do.body294:                                       ; preds = %do.body
  br label %do.cond, !dbg !1338

do.cond:                                          ; preds = %do.body294
  br label %do.end, !dbg !1338

do.end:                                           ; preds = %do.cond
  br label %do.body295, !dbg !1336

do.body295:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 684, i32 0, i64 12) #21, !dbg !1340, !srcloc !1342
  br label %do.cond296, !dbg !1340

do.cond296:                                       ; preds = %do.body295
  br label %do.end297, !dbg !1340

do.end297:                                        ; preds = %do.cond296
  unreachable, !dbg !1336

do.cond298:                                       ; No predecessors!
  br label %do.end299, !dbg !1336

do.end299:                                        ; preds = %do.cond298
  br label %sw.epilog, !dbg !1343

sw.epilog:                                        ; preds = %do.end299, %if.end293, %vaarg.end277, %if.end266, %if.end222, %if.end184, %vaarg.end142, %vaarg.end128, %if.end117, %if.end98, %if.end80, %if.end54, %if.end37, %if.end20, %if.end
  %200 = load i32, ptr %errcode, align 4, !dbg !1344
  %tobool300 = icmp ne i32 %200, 0, !dbg !1344
  br i1 %tobool300, label %if.then301, label %if.end302, !dbg !1346

if.then301:                                       ; preds = %sw.epilog
  br label %for.end304, !dbg !1347

if.end302:                                        ; preds = %sw.epilog
  br label %for.inc303, !dbg !1348

for.inc303:                                       ; preds = %if.end302
  %201 = load ptr, ptr %ptr, align 8, !dbg !1349
  %incdec.ptr = getelementptr i8, ptr %201, i32 1, !dbg !1349
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !1349
  br label %for.cond, !dbg !1350, !llvm.loop !1351

for.end304:                                       ; preds = %if.then301, %for.cond
  %202 = load i32, ptr %errcode, align 4, !dbg !1353
  store i32 %202, ptr %retval, align 4, !dbg !1354
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1354

cleanup:                                          ; preds = %for.end304, %if.then292
  call void @llvm.lifetime.end.p0(i64 4, ptr %errcode) #21, !dbg !1355
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #21, !dbg !1355
  %203 = load i32, ptr %retval, align 4, !dbg !1355
  ret i32 %203, !dbg !1355
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pdu_write(ptr noundef %pdu, ptr noundef %data, i64 noundef %size) #0 align 16 !dbg !1356 {
entry:
  %pdu.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x290 = alloca i64, align 8
  %__UNIQUE_ID___y291 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !1360, metadata !DIExpression()), !dbg !1367
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1361, metadata !DIExpression()), !dbg !1368
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1362, metadata !DIExpression()), !dbg !1369
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #21, !dbg !1370
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1363, metadata !DIExpression()), !dbg !1371
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x290) #21, !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x290, metadata !1364, metadata !DIExpression()), !dbg !1372
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !1372
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %0, i32 0, i32 4, !dbg !1372
  %1 = load i64, ptr %capacity, align 8, !dbg !1372
  %2 = load ptr, ptr %pdu.addr, align 8, !dbg !1372
  %size1 = getelementptr inbounds %struct.p9_fcall, ptr %2, i32 0, i32 0, !dbg !1372
  %3 = load i32, ptr %size1, align 8, !dbg !1372
  %conv = zext i32 %3 to i64, !dbg !1372
  %sub = sub i64 %1, %conv, !dbg !1372
  store i64 %sub, ptr %__UNIQUE_ID___x290, align 8, !dbg !1372
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y291) #21, !dbg !1372
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y291, metadata !1366, metadata !DIExpression()), !dbg !1372
  %4 = load i64, ptr %size.addr, align 8, !dbg !1372
  store i64 %4, ptr %__UNIQUE_ID___y291, align 8, !dbg !1372
  %5 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !1372
  %6 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !1372
  %cmp = icmp ult i64 %5, %6, !dbg !1372
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1372

cond.true:                                        ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___x290, align 8, !dbg !1372
  br label %cond.end, !dbg !1372

cond.false:                                       ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___y291, align 8, !dbg !1372
  br label %cond.end, !dbg !1372

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !1372
  store i64 %cond, ptr %tmp, align 8, !dbg !1372
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y291) #21, !dbg !1373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x290) #21, !dbg !1373
  %9 = load i64, ptr %tmp, align 8, !dbg !1372
  store i64 %9, ptr %len, align 8, !dbg !1371
  %10 = load ptr, ptr %pdu.addr, align 8, !dbg !1374
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %10, i32 0, i32 6, !dbg !1375
  %11 = load ptr, ptr %sdata, align 8, !dbg !1375
  %12 = load ptr, ptr %pdu.addr, align 8, !dbg !1376
  %size3 = getelementptr inbounds %struct.p9_fcall, ptr %12, i32 0, i32 0, !dbg !1377
  %13 = load i32, ptr %size3, align 8, !dbg !1377
  %idxprom = zext i32 %13 to i64, !dbg !1374
  %arrayidx = getelementptr i8, ptr %11, i64 %idxprom, !dbg !1374
  %14 = load ptr, ptr %data.addr, align 8, !dbg !1378
  %15 = load i64, ptr %len, align 8, !dbg !1379
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %14, i64 %15, i1 false), !dbg !1380
  %16 = load i64, ptr %len, align 8, !dbg !1381
  %17 = load ptr, ptr %pdu.addr, align 8, !dbg !1382
  %size4 = getelementptr inbounds %struct.p9_fcall, ptr %17, i32 0, i32 0, !dbg !1383
  %18 = load i32, ptr %size4, align 8, !dbg !1384
  %conv5 = zext i32 %18 to i64, !dbg !1384
  %add = add i64 %conv5, %16, !dbg !1384
  %conv6 = trunc i64 %add to i32, !dbg !1384
  store i32 %conv6, ptr %size4, align 8, !dbg !1384
  %19 = load i64, ptr %size.addr, align 8, !dbg !1385
  %20 = load i64, ptr %len, align 8, !dbg !1386
  %sub7 = sub i64 %19, %20, !dbg !1387
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #21, !dbg !1388
  ret i64 %sub7, !dbg !1389
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9pdu_writef(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef %fmt, ...) #0 align 16 !dbg !1390 {
entry:
  %pdu.addr = alloca ptr, align 8
  %proto_version.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !1394, metadata !DIExpression()), !dbg !1403
  store i32 %proto_version, ptr %proto_version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proto_version.addr, metadata !1395, metadata !DIExpression()), !dbg !1404
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1396, metadata !DIExpression()), !dbg !1405
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #21, !dbg !1406
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1397, metadata !DIExpression()), !dbg !1407
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1402, metadata !DIExpression()), !dbg !1409
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1410
  call void @llvm.va_start(ptr %arraydecay), !dbg !1410
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !1411
  %1 = load i32, ptr %proto_version.addr, align 4, !dbg !1412
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !1413
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1414
  %call = call i32 @p9pdu_vwritef(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %arraydecay1) #22, !dbg !1415
  store i32 %call, ptr %ret, align 4, !dbg !1416
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1417
  call void @llvm.va_end(ptr %arraydecay2), !dbg !1417
  %3 = load i32, ptr %ret, align 4, !dbg !1418
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !1419
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #21, !dbg !1419
  ret i32 %3, !dbg !1420
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kuid(ptr noundef %to, i32 %kuid.coerce) #6 align 16 !dbg !1421 {
entry:
  %kuid = alloca %struct.kuid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1427, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !1428, metadata !DIExpression()), !dbg !1430
  %coerce.dive1 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !1431
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !1431
  %call = call i32 @__kuid_val(i32 %0) #22, !dbg !1431
  ret i32 %call, !dbg !1432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @from_kgid(ptr noundef %to, i32 %kgid.coerce) #6 align 16 !dbg !1433 {
entry:
  %kgid = alloca %struct.kgid_t, align 4
  %to.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive, align 4
  store ptr %to, ptr %to.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %to.addr, metadata !1437, metadata !DIExpression()), !dbg !1439
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !1438, metadata !DIExpression()), !dbg !1440
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !1441
  %0 = load i32, ptr %coerce.dive1, align 4, !dbg !1441
  %call = call i32 @__kgid_val(i32 %0) #22, !dbg !1441
  ret i32 %call, !dbg !1442
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pdu_write_u(ptr noundef %pdu, ptr noundef %from, i64 noundef %size) #0 align 16 !dbg !1443 {
entry:
  %pdu.addr = alloca ptr, align 8
  %from.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %len = alloca i64, align 8
  %__UNIQUE_ID___x292 = alloca i64, align 8
  %__UNIQUE_ID___y293 = alloca i64, align 8
  %tmp = alloca i64, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !1447, metadata !DIExpression()), !dbg !1454
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !1448, metadata !DIExpression()), !dbg !1455
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1449, metadata !DIExpression()), !dbg !1456
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #21, !dbg !1457
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1450, metadata !DIExpression()), !dbg !1458
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___x292) #21, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x292, metadata !1451, metadata !DIExpression()), !dbg !1459
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !1459
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %0, i32 0, i32 4, !dbg !1459
  %1 = load i64, ptr %capacity, align 8, !dbg !1459
  %2 = load ptr, ptr %pdu.addr, align 8, !dbg !1459
  %size1 = getelementptr inbounds %struct.p9_fcall, ptr %2, i32 0, i32 0, !dbg !1459
  %3 = load i32, ptr %size1, align 8, !dbg !1459
  %conv = zext i32 %3 to i64, !dbg !1459
  %sub = sub i64 %1, %conv, !dbg !1459
  store i64 %sub, ptr %__UNIQUE_ID___x292, align 8, !dbg !1459
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___y293) #21, !dbg !1459
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y293, metadata !1453, metadata !DIExpression()), !dbg !1459
  %4 = load i64, ptr %size.addr, align 8, !dbg !1459
  store i64 %4, ptr %__UNIQUE_ID___y293, align 8, !dbg !1459
  %5 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !1459
  %6 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !1459
  %cmp = icmp ult i64 %5, %6, !dbg !1459
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1459

cond.true:                                        ; preds = %entry
  %7 = load i64, ptr %__UNIQUE_ID___x292, align 8, !dbg !1459
  br label %cond.end, !dbg !1459

cond.false:                                       ; preds = %entry
  %8 = load i64, ptr %__UNIQUE_ID___y293, align 8, !dbg !1459
  br label %cond.end, !dbg !1459

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %7, %cond.true ], [ %8, %cond.false ], !dbg !1459
  store i64 %cond, ptr %tmp, align 8, !dbg !1459
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___y293) #21, !dbg !1460
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___x292) #21, !dbg !1460
  %9 = load i64, ptr %tmp, align 8, !dbg !1459
  store i64 %9, ptr %len, align 8, !dbg !1458
  %10 = load ptr, ptr %pdu.addr, align 8, !dbg !1461
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %10, i32 0, i32 6, !dbg !1463
  %11 = load ptr, ptr %sdata, align 8, !dbg !1463
  %12 = load ptr, ptr %pdu.addr, align 8, !dbg !1464
  %size3 = getelementptr inbounds %struct.p9_fcall, ptr %12, i32 0, i32 0, !dbg !1465
  %13 = load i32, ptr %size3, align 8, !dbg !1465
  %idxprom = zext i32 %13 to i64, !dbg !1461
  %arrayidx = getelementptr i8, ptr %11, i64 %idxprom, !dbg !1461
  %14 = load i64, ptr %len, align 8, !dbg !1466
  %15 = load ptr, ptr %from.addr, align 8, !dbg !1467
  %call = call zeroext i1 @copy_from_iter_full(ptr noundef %arrayidx, i64 noundef %14, ptr noundef %15) #22, !dbg !1468
  br i1 %call, label %if.end, label %if.then, !dbg !1469

if.then:                                          ; preds = %cond.end
  store i64 0, ptr %len, align 8, !dbg !1470
  br label %if.end, !dbg !1471

if.end:                                           ; preds = %if.then, %cond.end
  %16 = load i64, ptr %len, align 8, !dbg !1472
  %17 = load ptr, ptr %pdu.addr, align 8, !dbg !1473
  %size4 = getelementptr inbounds %struct.p9_fcall, ptr %17, i32 0, i32 0, !dbg !1474
  %18 = load i32, ptr %size4, align 8, !dbg !1475
  %conv5 = zext i32 %18 to i64, !dbg !1475
  %add = add i64 %conv5, %16, !dbg !1475
  %conv6 = trunc i64 %add to i32, !dbg !1475
  store i32 %conv6, ptr %size4, align 8, !dbg !1475
  %19 = load i64, ptr %size.addr, align 8, !dbg !1476
  %20 = load i64, ptr %len, align 8, !dbg !1477
  %sub7 = sub i64 %19, %20, !dbg !1478
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #21, !dbg !1479
  ret i64 %sub7, !dbg !1480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9pdu_readf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef %fmt, ...) #0 align 16 !dbg !1481 {
entry:
  %pdu.addr = alloca ptr, align 8
  %proto_version.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %ret = alloca i32, align 4
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !1483, metadata !DIExpression()), !dbg !1488
  store i32 %proto_version, ptr %proto_version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proto_version.addr, metadata !1484, metadata !DIExpression()), !dbg !1489
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1485, metadata !DIExpression()), !dbg !1490
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #21, !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %ap, metadata !1486, metadata !DIExpression()), !dbg !1492
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1487, metadata !DIExpression()), !dbg !1494
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1495
  call void @llvm.va_start(ptr %arraydecay), !dbg !1495
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !1496
  %1 = load i32, ptr %proto_version.addr, align 4, !dbg !1497
  %2 = load ptr, ptr %fmt.addr, align 8, !dbg !1498
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1499
  %call = call i32 @p9pdu_vreadf(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %arraydecay1) #22, !dbg !1500
  store i32 %call, ptr %ret, align 4, !dbg !1501
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0, !dbg !1502
  call void @llvm.va_end(ptr %arraydecay2), !dbg !1502
  %3 = load i32, ptr %ret, align 4, !dbg !1503
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !1504
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #21, !dbg !1504
  ret i32 %3, !dbg !1505
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @p9pdu_vreadf(ptr noundef %pdu, i32 noundef %proto_version, ptr noundef %fmt, ptr noundef %ap) #0 align 16 !dbg !1506 {
entry:
  %retval = alloca i32, align 4
  %pdu.addr = alloca ptr, align 8
  %proto_version.addr = alloca i32, align 4
  %fmt.addr = alloca ptr, align 8
  %ap.addr = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %errcode = alloca i32, align 4
  %val = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %val3 = alloca ptr, align 8
  %le_val = alloca i16, align 2
  %val24 = alloca ptr, align 8
  %le_val36 = alloca i32, align 4
  %val46 = alloca ptr, align 8
  %le_val58 = alloca i64, align 8
  %sptr = alloca ptr, align 8
  %len = alloca i16, align 2
  %uid = alloca ptr, align 8
  %le_val110 = alloca i32, align 4
  %tmp = alloca %struct.kuid_t, align 4
  %gid = alloca ptr, align 8
  %le_val132 = alloca i32, align 4
  %tmp137 = alloca %struct.kgid_t, align 4
  %qid = alloca ptr, align 8
  %stbuf = alloca ptr, align 8
  %.compoundliteral = alloca %struct.kuid_t, align 4
  %.compoundliteral170 = alloca %struct.kgid_t, align 4
  %count = alloca ptr, align 8
  %data = alloca ptr, align 8
  %__UNIQUE_ID___x294 = alloca i32, align 4
  %__UNIQUE_ID___y295 = alloca i32, align 4
  %tmp212 = alloca i32, align 4
  %nwname = alloca ptr, align 8
  %wnames = alloca ptr, align 8
  %i = alloca i32, align 4
  %i272 = alloca i32, align 4
  %nwqid = alloca ptr, align 8
  %wqids = alloca ptr, align 8
  %i325 = alloca i32, align 4
  %stbuf345 = alloca ptr, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !1508, metadata !DIExpression()), !dbg !1611
  store i32 %proto_version, ptr %proto_version.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %proto_version.addr, metadata !1509, metadata !DIExpression()), !dbg !1612
  store ptr %fmt, ptr %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fmt.addr, metadata !1510, metadata !DIExpression()), !dbg !1613
  store ptr %ap, ptr %ap.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ap.addr, metadata !1511, metadata !DIExpression()), !dbg !1614
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #21, !dbg !1615
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !1512, metadata !DIExpression()), !dbg !1616
  call void @llvm.lifetime.start.p0(i64 4, ptr %errcode) #21, !dbg !1617
  call void @llvm.dbg.declare(metadata ptr %errcode, metadata !1513, metadata !DIExpression()), !dbg !1618
  store i32 0, ptr %errcode, align 4, !dbg !1618
  %0 = load ptr, ptr %fmt.addr, align 8, !dbg !1619
  store ptr %0, ptr %ptr, align 8, !dbg !1620
  br label %for.cond, !dbg !1621

for.cond:                                         ; preds = %for.inc375, %entry
  %1 = load ptr, ptr %ptr, align 8, !dbg !1622
  %2 = load i8, ptr %1, align 1, !dbg !1623
  %tobool = icmp ne i8 %2, 0, !dbg !1624
  br i1 %tobool, label %for.body, label %for.end376, !dbg !1624

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %ptr, align 8, !dbg !1625
  %4 = load i8, ptr %3, align 1, !dbg !1626
  %conv = zext i8 %4 to i32, !dbg !1626
  switch i32 %conv, label %sw.default [
    i32 98, label %sw.bb
    i32 119, label %sw.bb2
    i32 100, label %sw.bb23
    i32 113, label %sw.bb45
    i32 115, label %sw.bb67
    i32 117, label %sw.bb98
    i32 103, label %sw.bb120
    i32 81, label %sw.bb144
    i32 83, label %sw.bb157
    i32 68, label %sw.bb183
    i32 84, label %sw.bb218
    i32 82, label %sw.bb290
    i32 65, label %sw.bb344
    i32 63, label %sw.bb359
  ], !dbg !1627

sw.bb:                                            ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %val) #21, !dbg !1628
  call void @llvm.dbg.declare(metadata ptr %val, metadata !1514, metadata !DIExpression()), !dbg !1629
  %5 = load ptr, ptr %ap.addr, align 8, !dbg !1630
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 0, !dbg !1630
  %gp_offset = load i32, ptr %gp_offset_p, align 8, !dbg !1630
  %fits_in_gp = icmp ule i32 %gp_offset, 40, !dbg !1630
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1630

vaarg.in_reg:                                     ; preds = %sw.bb
  %6 = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 3, !dbg !1630
  %reg_save_area = load ptr, ptr %6, align 8, !dbg !1630
  %7 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset, !dbg !1630
  %8 = add i32 %gp_offset, 8, !dbg !1630
  store i32 %8, ptr %gp_offset_p, align 8, !dbg !1630
  br label %vaarg.end, !dbg !1630

vaarg.in_mem:                                     ; preds = %sw.bb
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, ptr %5, i32 0, i32 2, !dbg !1630
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8, !dbg !1630
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8, !dbg !1630
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8, !dbg !1630
  br label %vaarg.end, !dbg !1630

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %7, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ], !dbg !1630
  %9 = load ptr, ptr %vaarg.addr, align 8, !dbg !1630
  store ptr %9, ptr %val, align 8, !dbg !1629
  %10 = load ptr, ptr %pdu.addr, align 8, !dbg !1631
  %11 = load ptr, ptr %val, align 8, !dbg !1633
  %call = call i64 @pdu_read(ptr noundef %10, ptr noundef %11, i64 noundef 1) #22, !dbg !1634
  %tobool1 = icmp ne i64 %call, 0, !dbg !1634
  br i1 %tobool1, label %if.then, label %if.end, !dbg !1635

if.then:                                          ; preds = %vaarg.end
  store i32 -14, ptr %errcode, align 4, !dbg !1636
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1638

if.end:                                           ; preds = %vaarg.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1639
  br label %cleanup, !dbg !1639

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %val) #21, !dbg !1639
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.epilog, !dbg !1640

sw.bb2:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %val3) #21, !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %val3, metadata !1521, metadata !DIExpression()), !dbg !1642
  %12 = load ptr, ptr %ap.addr, align 8, !dbg !1643
  %gp_offset_p4 = getelementptr inbounds %struct.__va_list_tag, ptr %12, i32 0, i32 0, !dbg !1643
  %gp_offset5 = load i32, ptr %gp_offset_p4, align 8, !dbg !1643
  %fits_in_gp6 = icmp ule i32 %gp_offset5, 40, !dbg !1643
  br i1 %fits_in_gp6, label %vaarg.in_reg7, label %vaarg.in_mem9, !dbg !1643

vaarg.in_reg7:                                    ; preds = %sw.bb2
  %13 = getelementptr inbounds %struct.__va_list_tag, ptr %12, i32 0, i32 3, !dbg !1643
  %reg_save_area8 = load ptr, ptr %13, align 8, !dbg !1643
  %14 = getelementptr i8, ptr %reg_save_area8, i32 %gp_offset5, !dbg !1643
  %15 = add i32 %gp_offset5, 8, !dbg !1643
  store i32 %15, ptr %gp_offset_p4, align 8, !dbg !1643
  br label %vaarg.end13, !dbg !1643

vaarg.in_mem9:                                    ; preds = %sw.bb2
  %overflow_arg_area_p10 = getelementptr inbounds %struct.__va_list_tag, ptr %12, i32 0, i32 2, !dbg !1643
  %overflow_arg_area11 = load ptr, ptr %overflow_arg_area_p10, align 8, !dbg !1643
  %overflow_arg_area.next12 = getelementptr i8, ptr %overflow_arg_area11, i32 8, !dbg !1643
  store ptr %overflow_arg_area.next12, ptr %overflow_arg_area_p10, align 8, !dbg !1643
  br label %vaarg.end13, !dbg !1643

vaarg.end13:                                      ; preds = %vaarg.in_mem9, %vaarg.in_reg7
  %vaarg.addr14 = phi ptr [ %14, %vaarg.in_reg7 ], [ %overflow_arg_area11, %vaarg.in_mem9 ], !dbg !1643
  %16 = load ptr, ptr %vaarg.addr14, align 8, !dbg !1643
  store ptr %16, ptr %val3, align 8, !dbg !1642
  call void @llvm.lifetime.start.p0(i64 2, ptr %le_val) #21, !dbg !1644
  call void @llvm.dbg.declare(metadata ptr %le_val, metadata !1528, metadata !DIExpression()), !dbg !1645
  %17 = load ptr, ptr %pdu.addr, align 8, !dbg !1646
  %call15 = call i64 @pdu_read(ptr noundef %17, ptr noundef %le_val, i64 noundef 2) #22, !dbg !1648
  %tobool16 = icmp ne i64 %call15, 0, !dbg !1648
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1649

if.then17:                                        ; preds = %vaarg.end13
  store i32 -14, ptr %errcode, align 4, !dbg !1650
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !1652

if.end18:                                         ; preds = %vaarg.end13
  %18 = load i16, ptr %le_val, align 2, !dbg !1653
  %19 = load ptr, ptr %val3, align 8, !dbg !1654
  store i16 %18, ptr %19, align 2, !dbg !1655
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1656
  br label %cleanup19, !dbg !1656

cleanup19:                                        ; preds = %if.end18, %if.then17
  call void @llvm.lifetime.end.p0(i64 2, ptr %le_val) #21, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %val3) #21, !dbg !1656
  %cleanup.dest21 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest21, label %unreachable [
    i32 0, label %cleanup.cont22
    i32 5, label %sw.epilog
  ]

cleanup.cont22:                                   ; preds = %cleanup19
  br label %sw.epilog, !dbg !1657

sw.bb23:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %val24) #21, !dbg !1658
  call void @llvm.dbg.declare(metadata ptr %val24, metadata !1529, metadata !DIExpression()), !dbg !1659
  %20 = load ptr, ptr %ap.addr, align 8, !dbg !1660
  %gp_offset_p25 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 0, !dbg !1660
  %gp_offset26 = load i32, ptr %gp_offset_p25, align 8, !dbg !1660
  %fits_in_gp27 = icmp ule i32 %gp_offset26, 40, !dbg !1660
  br i1 %fits_in_gp27, label %vaarg.in_reg28, label %vaarg.in_mem30, !dbg !1660

vaarg.in_reg28:                                   ; preds = %sw.bb23
  %21 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 3, !dbg !1660
  %reg_save_area29 = load ptr, ptr %21, align 8, !dbg !1660
  %22 = getelementptr i8, ptr %reg_save_area29, i32 %gp_offset26, !dbg !1660
  %23 = add i32 %gp_offset26, 8, !dbg !1660
  store i32 %23, ptr %gp_offset_p25, align 8, !dbg !1660
  br label %vaarg.end34, !dbg !1660

vaarg.in_mem30:                                   ; preds = %sw.bb23
  %overflow_arg_area_p31 = getelementptr inbounds %struct.__va_list_tag, ptr %20, i32 0, i32 2, !dbg !1660
  %overflow_arg_area32 = load ptr, ptr %overflow_arg_area_p31, align 8, !dbg !1660
  %overflow_arg_area.next33 = getelementptr i8, ptr %overflow_arg_area32, i32 8, !dbg !1660
  store ptr %overflow_arg_area.next33, ptr %overflow_arg_area_p31, align 8, !dbg !1660
  br label %vaarg.end34, !dbg !1660

vaarg.end34:                                      ; preds = %vaarg.in_mem30, %vaarg.in_reg28
  %vaarg.addr35 = phi ptr [ %22, %vaarg.in_reg28 ], [ %overflow_arg_area32, %vaarg.in_mem30 ], !dbg !1660
  %24 = load ptr, ptr %vaarg.addr35, align 8, !dbg !1660
  store ptr %24, ptr %val24, align 8, !dbg !1659
  call void @llvm.lifetime.start.p0(i64 4, ptr %le_val36) #21, !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %le_val36, metadata !1532, metadata !DIExpression()), !dbg !1662
  %25 = load ptr, ptr %pdu.addr, align 8, !dbg !1663
  %call37 = call i64 @pdu_read(ptr noundef %25, ptr noundef %le_val36, i64 noundef 4) #22, !dbg !1665
  %tobool38 = icmp ne i64 %call37, 0, !dbg !1665
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1666

if.then39:                                        ; preds = %vaarg.end34
  store i32 -14, ptr %errcode, align 4, !dbg !1667
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup41, !dbg !1669

if.end40:                                         ; preds = %vaarg.end34
  %26 = load i32, ptr %le_val36, align 4, !dbg !1670
  %27 = load ptr, ptr %val24, align 8, !dbg !1671
  store i32 %26, ptr %27, align 4, !dbg !1672
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1673
  br label %cleanup41, !dbg !1673

cleanup41:                                        ; preds = %if.end40, %if.then39
  call void @llvm.lifetime.end.p0(i64 4, ptr %le_val36) #21, !dbg !1673
  call void @llvm.lifetime.end.p0(i64 8, ptr %val24) #21, !dbg !1673
  %cleanup.dest43 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest43, label %unreachable [
    i32 0, label %cleanup.cont44
    i32 5, label %sw.epilog
  ]

cleanup.cont44:                                   ; preds = %cleanup41
  br label %sw.epilog, !dbg !1674

sw.bb45:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %val46) #21, !dbg !1675
  call void @llvm.dbg.declare(metadata ptr %val46, metadata !1533, metadata !DIExpression()), !dbg !1676
  %28 = load ptr, ptr %ap.addr, align 8, !dbg !1677
  %gp_offset_p47 = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 0, !dbg !1677
  %gp_offset48 = load i32, ptr %gp_offset_p47, align 8, !dbg !1677
  %fits_in_gp49 = icmp ule i32 %gp_offset48, 40, !dbg !1677
  br i1 %fits_in_gp49, label %vaarg.in_reg50, label %vaarg.in_mem52, !dbg !1677

vaarg.in_reg50:                                   ; preds = %sw.bb45
  %29 = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 3, !dbg !1677
  %reg_save_area51 = load ptr, ptr %29, align 8, !dbg !1677
  %30 = getelementptr i8, ptr %reg_save_area51, i32 %gp_offset48, !dbg !1677
  %31 = add i32 %gp_offset48, 8, !dbg !1677
  store i32 %31, ptr %gp_offset_p47, align 8, !dbg !1677
  br label %vaarg.end56, !dbg !1677

vaarg.in_mem52:                                   ; preds = %sw.bb45
  %overflow_arg_area_p53 = getelementptr inbounds %struct.__va_list_tag, ptr %28, i32 0, i32 2, !dbg !1677
  %overflow_arg_area54 = load ptr, ptr %overflow_arg_area_p53, align 8, !dbg !1677
  %overflow_arg_area.next55 = getelementptr i8, ptr %overflow_arg_area54, i32 8, !dbg !1677
  store ptr %overflow_arg_area.next55, ptr %overflow_arg_area_p53, align 8, !dbg !1677
  br label %vaarg.end56, !dbg !1677

vaarg.end56:                                      ; preds = %vaarg.in_mem52, %vaarg.in_reg50
  %vaarg.addr57 = phi ptr [ %30, %vaarg.in_reg50 ], [ %overflow_arg_area54, %vaarg.in_mem52 ], !dbg !1677
  %32 = load ptr, ptr %vaarg.addr57, align 8, !dbg !1677
  store ptr %32, ptr %val46, align 8, !dbg !1676
  call void @llvm.lifetime.start.p0(i64 8, ptr %le_val58) #21, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %le_val58, metadata !1539, metadata !DIExpression()), !dbg !1679
  %33 = load ptr, ptr %pdu.addr, align 8, !dbg !1680
  %call59 = call i64 @pdu_read(ptr noundef %33, ptr noundef %le_val58, i64 noundef 8) #22, !dbg !1682
  %tobool60 = icmp ne i64 %call59, 0, !dbg !1682
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !1683

if.then61:                                        ; preds = %vaarg.end56
  store i32 -14, ptr %errcode, align 4, !dbg !1684
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup63, !dbg !1686

if.end62:                                         ; preds = %vaarg.end56
  %34 = load i64, ptr %le_val58, align 8, !dbg !1687
  %35 = load ptr, ptr %val46, align 8, !dbg !1688
  store i64 %34, ptr %35, align 8, !dbg !1689
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1690
  br label %cleanup63, !dbg !1690

cleanup63:                                        ; preds = %if.end62, %if.then61
  call void @llvm.lifetime.end.p0(i64 8, ptr %le_val58) #21, !dbg !1690
  call void @llvm.lifetime.end.p0(i64 8, ptr %val46) #21, !dbg !1690
  %cleanup.dest65 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest65, label %unreachable [
    i32 0, label %cleanup.cont66
    i32 5, label %sw.epilog
  ]

cleanup.cont66:                                   ; preds = %cleanup63
  br label %sw.epilog, !dbg !1691

sw.bb67:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %sptr) #21, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %sptr, metadata !1540, metadata !DIExpression()), !dbg !1693
  %36 = load ptr, ptr %ap.addr, align 8, !dbg !1694
  %gp_offset_p68 = getelementptr inbounds %struct.__va_list_tag, ptr %36, i32 0, i32 0, !dbg !1694
  %gp_offset69 = load i32, ptr %gp_offset_p68, align 8, !dbg !1694
  %fits_in_gp70 = icmp ule i32 %gp_offset69, 40, !dbg !1694
  br i1 %fits_in_gp70, label %vaarg.in_reg71, label %vaarg.in_mem73, !dbg !1694

vaarg.in_reg71:                                   ; preds = %sw.bb67
  %37 = getelementptr inbounds %struct.__va_list_tag, ptr %36, i32 0, i32 3, !dbg !1694
  %reg_save_area72 = load ptr, ptr %37, align 8, !dbg !1694
  %38 = getelementptr i8, ptr %reg_save_area72, i32 %gp_offset69, !dbg !1694
  %39 = add i32 %gp_offset69, 8, !dbg !1694
  store i32 %39, ptr %gp_offset_p68, align 8, !dbg !1694
  br label %vaarg.end77, !dbg !1694

vaarg.in_mem73:                                   ; preds = %sw.bb67
  %overflow_arg_area_p74 = getelementptr inbounds %struct.__va_list_tag, ptr %36, i32 0, i32 2, !dbg !1694
  %overflow_arg_area75 = load ptr, ptr %overflow_arg_area_p74, align 8, !dbg !1694
  %overflow_arg_area.next76 = getelementptr i8, ptr %overflow_arg_area75, i32 8, !dbg !1694
  store ptr %overflow_arg_area.next76, ptr %overflow_arg_area_p74, align 8, !dbg !1694
  br label %vaarg.end77, !dbg !1694

vaarg.end77:                                      ; preds = %vaarg.in_mem73, %vaarg.in_reg71
  %vaarg.addr78 = phi ptr [ %38, %vaarg.in_reg71 ], [ %overflow_arg_area75, %vaarg.in_mem73 ], !dbg !1694
  %40 = load ptr, ptr %vaarg.addr78, align 8, !dbg !1694
  store ptr %40, ptr %sptr, align 8, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 2, ptr %len) #21, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %len, metadata !1543, metadata !DIExpression()), !dbg !1696
  %41 = load ptr, ptr %pdu.addr, align 8, !dbg !1697
  %42 = load i32, ptr %proto_version.addr, align 4, !dbg !1698
  %call79 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %41, i32 noundef %42, ptr noundef @.str.9, ptr noundef %len) #22, !dbg !1699
  store i32 %call79, ptr %errcode, align 4, !dbg !1700
  %43 = load i32, ptr %errcode, align 4, !dbg !1701
  %tobool80 = icmp ne i32 %43, 0, !dbg !1701
  br i1 %tobool80, label %if.then81, label %if.end82, !dbg !1703

if.then81:                                        ; preds = %vaarg.end77
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !1704

if.end82:                                         ; preds = %vaarg.end77
  %44 = load i16, ptr %len, align 2, !dbg !1705
  %conv83 = zext i16 %44 to i32, !dbg !1705
  %add = add i32 %conv83, 1, !dbg !1706
  %conv84 = sext i32 %add to i64, !dbg !1705
  %call85 = call noalias ptr @kmalloc(i64 noundef %conv84, i32 noundef 3136) #23, !dbg !1707
  %45 = load ptr, ptr %sptr, align 8, !dbg !1708
  store ptr %call85, ptr %45, align 8, !dbg !1709
  %46 = load ptr, ptr %sptr, align 8, !dbg !1710
  %47 = load ptr, ptr %46, align 8, !dbg !1712
  %cmp = icmp eq ptr %47, null, !dbg !1713
  br i1 %cmp, label %if.then87, label %if.end88, !dbg !1714

if.then87:                                        ; preds = %if.end82
  store i32 -12, ptr %errcode, align 4, !dbg !1715
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup94, !dbg !1717

if.end88:                                         ; preds = %if.end82
  %48 = load ptr, ptr %pdu.addr, align 8, !dbg !1718
  %49 = load ptr, ptr %sptr, align 8, !dbg !1720
  %50 = load ptr, ptr %49, align 8, !dbg !1721
  %51 = load i16, ptr %len, align 2, !dbg !1722
  %conv89 = zext i16 %51 to i64, !dbg !1722
  %call90 = call i64 @pdu_read(ptr noundef %48, ptr noundef %50, i64 noundef %conv89) #22, !dbg !1723
  %tobool91 = icmp ne i64 %call90, 0, !dbg !1723
  br i1 %tobool91, label %if.then92, label %if.else, !dbg !1724

if.then92:                                        ; preds = %if.end88
  store i32 -14, ptr %errcode, align 4, !dbg !1725
  %52 = load ptr, ptr %sptr, align 8, !dbg !1727
  %53 = load ptr, ptr %52, align 8, !dbg !1728
  call void @kfree(ptr noundef %53) #22, !dbg !1729
  %54 = load ptr, ptr %sptr, align 8, !dbg !1730
  store ptr null, ptr %54, align 8, !dbg !1731
  br label %if.end93, !dbg !1732

if.else:                                          ; preds = %if.end88
  %55 = load ptr, ptr %sptr, align 8, !dbg !1733
  %56 = load ptr, ptr %55, align 8, !dbg !1734
  %57 = load i16, ptr %len, align 2, !dbg !1735
  %idxprom = zext i16 %57 to i64, !dbg !1736
  %arrayidx = getelementptr i8, ptr %56, i64 %idxprom, !dbg !1736
  store i8 0, ptr %arrayidx, align 1, !dbg !1737
  br label %if.end93

if.end93:                                         ; preds = %if.else, %if.then92
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1738
  br label %cleanup94, !dbg !1738

cleanup94:                                        ; preds = %if.end93, %if.then87, %if.then81
  call void @llvm.lifetime.end.p0(i64 2, ptr %len) #21, !dbg !1738
  call void @llvm.lifetime.end.p0(i64 8, ptr %sptr) #21, !dbg !1738
  %cleanup.dest96 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest96, label %unreachable [
    i32 0, label %cleanup.cont97
    i32 5, label %sw.epilog
  ]

cleanup.cont97:                                   ; preds = %cleanup94
  br label %sw.epilog, !dbg !1739

sw.bb98:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %uid) #21, !dbg !1740
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !1544, metadata !DIExpression()), !dbg !1741
  %58 = load ptr, ptr %ap.addr, align 8, !dbg !1742
  %gp_offset_p99 = getelementptr inbounds %struct.__va_list_tag, ptr %58, i32 0, i32 0, !dbg !1742
  %gp_offset100 = load i32, ptr %gp_offset_p99, align 8, !dbg !1742
  %fits_in_gp101 = icmp ule i32 %gp_offset100, 40, !dbg !1742
  br i1 %fits_in_gp101, label %vaarg.in_reg102, label %vaarg.in_mem104, !dbg !1742

vaarg.in_reg102:                                  ; preds = %sw.bb98
  %59 = getelementptr inbounds %struct.__va_list_tag, ptr %58, i32 0, i32 3, !dbg !1742
  %reg_save_area103 = load ptr, ptr %59, align 8, !dbg !1742
  %60 = getelementptr i8, ptr %reg_save_area103, i32 %gp_offset100, !dbg !1742
  %61 = add i32 %gp_offset100, 8, !dbg !1742
  store i32 %61, ptr %gp_offset_p99, align 8, !dbg !1742
  br label %vaarg.end108, !dbg !1742

vaarg.in_mem104:                                  ; preds = %sw.bb98
  %overflow_arg_area_p105 = getelementptr inbounds %struct.__va_list_tag, ptr %58, i32 0, i32 2, !dbg !1742
  %overflow_arg_area106 = load ptr, ptr %overflow_arg_area_p105, align 8, !dbg !1742
  %overflow_arg_area.next107 = getelementptr i8, ptr %overflow_arg_area106, i32 8, !dbg !1742
  store ptr %overflow_arg_area.next107, ptr %overflow_arg_area_p105, align 8, !dbg !1742
  br label %vaarg.end108, !dbg !1742

vaarg.end108:                                     ; preds = %vaarg.in_mem104, %vaarg.in_reg102
  %vaarg.addr109 = phi ptr [ %60, %vaarg.in_reg102 ], [ %overflow_arg_area106, %vaarg.in_mem104 ], !dbg !1742
  %62 = load ptr, ptr %vaarg.addr109, align 8, !dbg !1742
  store ptr %62, ptr %uid, align 8, !dbg !1741
  call void @llvm.lifetime.start.p0(i64 4, ptr %le_val110) #21, !dbg !1743
  call void @llvm.dbg.declare(metadata ptr %le_val110, metadata !1547, metadata !DIExpression()), !dbg !1744
  %63 = load ptr, ptr %pdu.addr, align 8, !dbg !1745
  %call111 = call i64 @pdu_read(ptr noundef %63, ptr noundef %le_val110, i64 noundef 4) #22, !dbg !1747
  %tobool112 = icmp ne i64 %call111, 0, !dbg !1747
  br i1 %tobool112, label %if.then113, label %if.end114, !dbg !1748

if.then113:                                       ; preds = %vaarg.end108
  store i32 -14, ptr %errcode, align 4, !dbg !1749
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup116, !dbg !1751

if.end114:                                        ; preds = %vaarg.end108
  %64 = load ptr, ptr %uid, align 8, !dbg !1752
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #21, !dbg !1753
  %65 = load i32, ptr %le_val110, align 4, !dbg !1754
  %call115 = call i32 @make_kuid(ptr noundef @init_user_ns, i32 noundef %65) #22, !dbg !1753
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %tmp, i32 0, i32 0, !dbg !1753
  store i32 %call115, ptr %coerce.dive, align 4, !dbg !1753
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %64, ptr align 4 %tmp, i64 4, i1 false), !dbg !1753
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #21, !dbg !1753
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1755
  br label %cleanup116, !dbg !1755

cleanup116:                                       ; preds = %if.end114, %if.then113
  call void @llvm.lifetime.end.p0(i64 4, ptr %le_val110) #21, !dbg !1755
  call void @llvm.lifetime.end.p0(i64 8, ptr %uid) #21, !dbg !1755
  %cleanup.dest118 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest118, label %unreachable [
    i32 0, label %cleanup.cont119
    i32 5, label %sw.epilog
  ]

cleanup.cont119:                                  ; preds = %cleanup116
  br label %sw.epilog, !dbg !1756

sw.bb120:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %gid) #21, !dbg !1757
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !1548, metadata !DIExpression()), !dbg !1758
  %66 = load ptr, ptr %ap.addr, align 8, !dbg !1759
  %gp_offset_p121 = getelementptr inbounds %struct.__va_list_tag, ptr %66, i32 0, i32 0, !dbg !1759
  %gp_offset122 = load i32, ptr %gp_offset_p121, align 8, !dbg !1759
  %fits_in_gp123 = icmp ule i32 %gp_offset122, 40, !dbg !1759
  br i1 %fits_in_gp123, label %vaarg.in_reg124, label %vaarg.in_mem126, !dbg !1759

vaarg.in_reg124:                                  ; preds = %sw.bb120
  %67 = getelementptr inbounds %struct.__va_list_tag, ptr %66, i32 0, i32 3, !dbg !1759
  %reg_save_area125 = load ptr, ptr %67, align 8, !dbg !1759
  %68 = getelementptr i8, ptr %reg_save_area125, i32 %gp_offset122, !dbg !1759
  %69 = add i32 %gp_offset122, 8, !dbg !1759
  store i32 %69, ptr %gp_offset_p121, align 8, !dbg !1759
  br label %vaarg.end130, !dbg !1759

vaarg.in_mem126:                                  ; preds = %sw.bb120
  %overflow_arg_area_p127 = getelementptr inbounds %struct.__va_list_tag, ptr %66, i32 0, i32 2, !dbg !1759
  %overflow_arg_area128 = load ptr, ptr %overflow_arg_area_p127, align 8, !dbg !1759
  %overflow_arg_area.next129 = getelementptr i8, ptr %overflow_arg_area128, i32 8, !dbg !1759
  store ptr %overflow_arg_area.next129, ptr %overflow_arg_area_p127, align 8, !dbg !1759
  br label %vaarg.end130, !dbg !1759

vaarg.end130:                                     ; preds = %vaarg.in_mem126, %vaarg.in_reg124
  %vaarg.addr131 = phi ptr [ %68, %vaarg.in_reg124 ], [ %overflow_arg_area128, %vaarg.in_mem126 ], !dbg !1759
  %70 = load ptr, ptr %vaarg.addr131, align 8, !dbg !1759
  store ptr %70, ptr %gid, align 8, !dbg !1758
  call void @llvm.lifetime.start.p0(i64 4, ptr %le_val132) #21, !dbg !1760
  call void @llvm.dbg.declare(metadata ptr %le_val132, metadata !1551, metadata !DIExpression()), !dbg !1761
  %71 = load ptr, ptr %pdu.addr, align 8, !dbg !1762
  %call133 = call i64 @pdu_read(ptr noundef %71, ptr noundef %le_val132, i64 noundef 4) #22, !dbg !1764
  %tobool134 = icmp ne i64 %call133, 0, !dbg !1764
  br i1 %tobool134, label %if.then135, label %if.end136, !dbg !1765

if.then135:                                       ; preds = %vaarg.end130
  store i32 -14, ptr %errcode, align 4, !dbg !1766
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup140, !dbg !1768

if.end136:                                        ; preds = %vaarg.end130
  %72 = load ptr, ptr %gid, align 8, !dbg !1769
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp137) #21, !dbg !1770
  %73 = load i32, ptr %le_val132, align 4, !dbg !1771
  %call138 = call i32 @make_kgid(ptr noundef @init_user_ns, i32 noundef %73) #22, !dbg !1770
  %coerce.dive139 = getelementptr inbounds %struct.kgid_t, ptr %tmp137, i32 0, i32 0, !dbg !1770
  store i32 %call138, ptr %coerce.dive139, align 4, !dbg !1770
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %72, ptr align 4 %tmp137, i64 4, i1 false), !dbg !1770
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp137) #21, !dbg !1770
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1772
  br label %cleanup140, !dbg !1772

cleanup140:                                       ; preds = %if.end136, %if.then135
  call void @llvm.lifetime.end.p0(i64 4, ptr %le_val132) #21, !dbg !1772
  call void @llvm.lifetime.end.p0(i64 8, ptr %gid) #21, !dbg !1772
  %cleanup.dest142 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest142, label %unreachable [
    i32 0, label %cleanup.cont143
    i32 5, label %sw.epilog
  ]

cleanup.cont143:                                  ; preds = %cleanup140
  br label %sw.epilog, !dbg !1773

sw.bb144:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %qid) #21, !dbg !1774
  call void @llvm.dbg.declare(metadata ptr %qid, metadata !1552, metadata !DIExpression()), !dbg !1775
  %74 = load ptr, ptr %ap.addr, align 8, !dbg !1776
  %gp_offset_p145 = getelementptr inbounds %struct.__va_list_tag, ptr %74, i32 0, i32 0, !dbg !1776
  %gp_offset146 = load i32, ptr %gp_offset_p145, align 8, !dbg !1776
  %fits_in_gp147 = icmp ule i32 %gp_offset146, 40, !dbg !1776
  br i1 %fits_in_gp147, label %vaarg.in_reg148, label %vaarg.in_mem150, !dbg !1776

vaarg.in_reg148:                                  ; preds = %sw.bb144
  %75 = getelementptr inbounds %struct.__va_list_tag, ptr %74, i32 0, i32 3, !dbg !1776
  %reg_save_area149 = load ptr, ptr %75, align 8, !dbg !1776
  %76 = getelementptr i8, ptr %reg_save_area149, i32 %gp_offset146, !dbg !1776
  %77 = add i32 %gp_offset146, 8, !dbg !1776
  store i32 %77, ptr %gp_offset_p145, align 8, !dbg !1776
  br label %vaarg.end154, !dbg !1776

vaarg.in_mem150:                                  ; preds = %sw.bb144
  %overflow_arg_area_p151 = getelementptr inbounds %struct.__va_list_tag, ptr %74, i32 0, i32 2, !dbg !1776
  %overflow_arg_area152 = load ptr, ptr %overflow_arg_area_p151, align 8, !dbg !1776
  %overflow_arg_area.next153 = getelementptr i8, ptr %overflow_arg_area152, i32 8, !dbg !1776
  store ptr %overflow_arg_area.next153, ptr %overflow_arg_area_p151, align 8, !dbg !1776
  br label %vaarg.end154, !dbg !1776

vaarg.end154:                                     ; preds = %vaarg.in_mem150, %vaarg.in_reg148
  %vaarg.addr155 = phi ptr [ %76, %vaarg.in_reg148 ], [ %overflow_arg_area152, %vaarg.in_mem150 ], !dbg !1776
  %78 = load ptr, ptr %vaarg.addr155, align 8, !dbg !1776
  store ptr %78, ptr %qid, align 8, !dbg !1775
  %79 = load ptr, ptr %pdu.addr, align 8, !dbg !1777
  %80 = load i32, ptr %proto_version.addr, align 4, !dbg !1778
  %81 = load ptr, ptr %qid, align 8, !dbg !1779
  %type = getelementptr inbounds %struct.p9_qid, ptr %81, i32 0, i32 0, !dbg !1780
  %82 = load ptr, ptr %qid, align 8, !dbg !1781
  %version = getelementptr inbounds %struct.p9_qid, ptr %82, i32 0, i32 1, !dbg !1782
  %83 = load ptr, ptr %qid, align 8, !dbg !1783
  %path = getelementptr inbounds %struct.p9_qid, ptr %83, i32 0, i32 2, !dbg !1784
  %call156 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %79, i32 noundef %80, ptr noundef @.str.10, ptr noundef %type, ptr noundef %version, ptr noundef %path) #22, !dbg !1785
  store i32 %call156, ptr %errcode, align 4, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 8, ptr %qid) #21, !dbg !1787
  br label %sw.epilog, !dbg !1788

sw.bb157:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbuf) #21, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %stbuf, metadata !1554, metadata !DIExpression()), !dbg !1790
  %84 = load ptr, ptr %ap.addr, align 8, !dbg !1791
  %gp_offset_p158 = getelementptr inbounds %struct.__va_list_tag, ptr %84, i32 0, i32 0, !dbg !1791
  %gp_offset159 = load i32, ptr %gp_offset_p158, align 8, !dbg !1791
  %fits_in_gp160 = icmp ule i32 %gp_offset159, 40, !dbg !1791
  br i1 %fits_in_gp160, label %vaarg.in_reg161, label %vaarg.in_mem163, !dbg !1791

vaarg.in_reg161:                                  ; preds = %sw.bb157
  %85 = getelementptr inbounds %struct.__va_list_tag, ptr %84, i32 0, i32 3, !dbg !1791
  %reg_save_area162 = load ptr, ptr %85, align 8, !dbg !1791
  %86 = getelementptr i8, ptr %reg_save_area162, i32 %gp_offset159, !dbg !1791
  %87 = add i32 %gp_offset159, 8, !dbg !1791
  store i32 %87, ptr %gp_offset_p158, align 8, !dbg !1791
  br label %vaarg.end167, !dbg !1791

vaarg.in_mem163:                                  ; preds = %sw.bb157
  %overflow_arg_area_p164 = getelementptr inbounds %struct.__va_list_tag, ptr %84, i32 0, i32 2, !dbg !1791
  %overflow_arg_area165 = load ptr, ptr %overflow_arg_area_p164, align 8, !dbg !1791
  %overflow_arg_area.next166 = getelementptr i8, ptr %overflow_arg_area165, i32 8, !dbg !1791
  store ptr %overflow_arg_area.next166, ptr %overflow_arg_area_p164, align 8, !dbg !1791
  br label %vaarg.end167, !dbg !1791

vaarg.end167:                                     ; preds = %vaarg.in_mem163, %vaarg.in_reg161
  %vaarg.addr168 = phi ptr [ %86, %vaarg.in_reg161 ], [ %overflow_arg_area165, %vaarg.in_mem163 ], !dbg !1791
  %88 = load ptr, ptr %vaarg.addr168, align 8, !dbg !1791
  store ptr %88, ptr %stbuf, align 8, !dbg !1790
  %89 = load ptr, ptr %stbuf, align 8, !dbg !1792
  call void @llvm.memset.p0.i64(ptr align 8 %89, i8 0, i64 104, i1 false), !dbg !1793
  %90 = load ptr, ptr %stbuf, align 8, !dbg !1794
  %n_uid = getelementptr inbounds %struct.p9_wstat, ptr %90, i32 0, i32 13, !dbg !1795
  %91 = load ptr, ptr %stbuf, align 8, !dbg !1796
  %n_muid = getelementptr inbounds %struct.p9_wstat, ptr %91, i32 0, i32 15, !dbg !1797
  %val169 = getelementptr inbounds %struct.kuid_t, ptr %.compoundliteral, i32 0, i32 0, !dbg !1798
  store i32 -1, ptr %val169, align 4, !dbg !1798
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %n_muid, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !1798
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %n_uid, ptr align 8 %n_muid, i64 4, i1 false), !dbg !1799
  %92 = load ptr, ptr %stbuf, align 8, !dbg !1800
  %n_gid = getelementptr inbounds %struct.p9_wstat, ptr %92, i32 0, i32 14, !dbg !1801
  %val171 = getelementptr inbounds %struct.kgid_t, ptr %.compoundliteral170, i32 0, i32 0, !dbg !1802
  store i32 -1, ptr %val171, align 4, !dbg !1802
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %n_gid, ptr align 4 %.compoundliteral170, i64 4, i1 false), !dbg !1802
  %93 = load ptr, ptr %pdu.addr, align 8, !dbg !1803
  %94 = load i32, ptr %proto_version.addr, align 4, !dbg !1804
  %95 = load ptr, ptr %stbuf, align 8, !dbg !1805
  %size = getelementptr inbounds %struct.p9_wstat, ptr %95, i32 0, i32 0, !dbg !1806
  %96 = load ptr, ptr %stbuf, align 8, !dbg !1807
  %type172 = getelementptr inbounds %struct.p9_wstat, ptr %96, i32 0, i32 1, !dbg !1808
  %97 = load ptr, ptr %stbuf, align 8, !dbg !1809
  %dev = getelementptr inbounds %struct.p9_wstat, ptr %97, i32 0, i32 2, !dbg !1810
  %98 = load ptr, ptr %stbuf, align 8, !dbg !1811
  %qid173 = getelementptr inbounds %struct.p9_wstat, ptr %98, i32 0, i32 3, !dbg !1812
  %99 = load ptr, ptr %stbuf, align 8, !dbg !1813
  %mode = getelementptr inbounds %struct.p9_wstat, ptr %99, i32 0, i32 4, !dbg !1814
  %100 = load ptr, ptr %stbuf, align 8, !dbg !1815
  %atime = getelementptr inbounds %struct.p9_wstat, ptr %100, i32 0, i32 5, !dbg !1816
  %101 = load ptr, ptr %stbuf, align 8, !dbg !1817
  %mtime = getelementptr inbounds %struct.p9_wstat, ptr %101, i32 0, i32 6, !dbg !1818
  %102 = load ptr, ptr %stbuf, align 8, !dbg !1819
  %length = getelementptr inbounds %struct.p9_wstat, ptr %102, i32 0, i32 7, !dbg !1820
  %103 = load ptr, ptr %stbuf, align 8, !dbg !1821
  %name = getelementptr inbounds %struct.p9_wstat, ptr %103, i32 0, i32 8, !dbg !1822
  %104 = load ptr, ptr %stbuf, align 8, !dbg !1823
  %uid174 = getelementptr inbounds %struct.p9_wstat, ptr %104, i32 0, i32 9, !dbg !1824
  %105 = load ptr, ptr %stbuf, align 8, !dbg !1825
  %gid175 = getelementptr inbounds %struct.p9_wstat, ptr %105, i32 0, i32 10, !dbg !1826
  %106 = load ptr, ptr %stbuf, align 8, !dbg !1827
  %muid = getelementptr inbounds %struct.p9_wstat, ptr %106, i32 0, i32 11, !dbg !1828
  %107 = load ptr, ptr %stbuf, align 8, !dbg !1829
  %extension = getelementptr inbounds %struct.p9_wstat, ptr %107, i32 0, i32 12, !dbg !1830
  %108 = load ptr, ptr %stbuf, align 8, !dbg !1831
  %n_uid176 = getelementptr inbounds %struct.p9_wstat, ptr %108, i32 0, i32 13, !dbg !1832
  %109 = load ptr, ptr %stbuf, align 8, !dbg !1833
  %n_gid177 = getelementptr inbounds %struct.p9_wstat, ptr %109, i32 0, i32 14, !dbg !1834
  %110 = load ptr, ptr %stbuf, align 8, !dbg !1835
  %n_muid178 = getelementptr inbounds %struct.p9_wstat, ptr %110, i32 0, i32 15, !dbg !1836
  %call179 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %93, i32 noundef %94, ptr noundef @.str.11, ptr noundef %size, ptr noundef %type172, ptr noundef %dev, ptr noundef %qid173, ptr noundef %mode, ptr noundef %atime, ptr noundef %mtime, ptr noundef %length, ptr noundef %name, ptr noundef %uid174, ptr noundef %gid175, ptr noundef %muid, ptr noundef %extension, ptr noundef %n_uid176, ptr noundef %n_gid177, ptr noundef %n_muid178) #22, !dbg !1837
  store i32 %call179, ptr %errcode, align 4, !dbg !1838
  %111 = load i32, ptr %errcode, align 4, !dbg !1839
  %tobool180 = icmp ne i32 %111, 0, !dbg !1839
  br i1 %tobool180, label %if.then181, label %if.end182, !dbg !1841

if.then181:                                       ; preds = %vaarg.end167
  %112 = load ptr, ptr %stbuf, align 8, !dbg !1842
  call void @p9stat_free(ptr noundef %112) #22, !dbg !1843
  br label %if.end182, !dbg !1843

if.end182:                                        ; preds = %if.then181, %vaarg.end167
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbuf) #21, !dbg !1844
  br label %sw.epilog, !dbg !1845

sw.bb183:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #21, !dbg !1846
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1556, metadata !DIExpression()), !dbg !1847
  %113 = load ptr, ptr %ap.addr, align 8, !dbg !1848
  %gp_offset_p184 = getelementptr inbounds %struct.__va_list_tag, ptr %113, i32 0, i32 0, !dbg !1848
  %gp_offset185 = load i32, ptr %gp_offset_p184, align 8, !dbg !1848
  %fits_in_gp186 = icmp ule i32 %gp_offset185, 40, !dbg !1848
  br i1 %fits_in_gp186, label %vaarg.in_reg187, label %vaarg.in_mem189, !dbg !1848

vaarg.in_reg187:                                  ; preds = %sw.bb183
  %114 = getelementptr inbounds %struct.__va_list_tag, ptr %113, i32 0, i32 3, !dbg !1848
  %reg_save_area188 = load ptr, ptr %114, align 8, !dbg !1848
  %115 = getelementptr i8, ptr %reg_save_area188, i32 %gp_offset185, !dbg !1848
  %116 = add i32 %gp_offset185, 8, !dbg !1848
  store i32 %116, ptr %gp_offset_p184, align 8, !dbg !1848
  br label %vaarg.end193, !dbg !1848

vaarg.in_mem189:                                  ; preds = %sw.bb183
  %overflow_arg_area_p190 = getelementptr inbounds %struct.__va_list_tag, ptr %113, i32 0, i32 2, !dbg !1848
  %overflow_arg_area191 = load ptr, ptr %overflow_arg_area_p190, align 8, !dbg !1848
  %overflow_arg_area.next192 = getelementptr i8, ptr %overflow_arg_area191, i32 8, !dbg !1848
  store ptr %overflow_arg_area.next192, ptr %overflow_arg_area_p190, align 8, !dbg !1848
  br label %vaarg.end193, !dbg !1848

vaarg.end193:                                     ; preds = %vaarg.in_mem189, %vaarg.in_reg187
  %vaarg.addr194 = phi ptr [ %115, %vaarg.in_reg187 ], [ %overflow_arg_area191, %vaarg.in_mem189 ], !dbg !1848
  %117 = load ptr, ptr %vaarg.addr194, align 8, !dbg !1848
  store ptr %117, ptr %count, align 8, !dbg !1847
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #21, !dbg !1849
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1559, metadata !DIExpression()), !dbg !1850
  %118 = load ptr, ptr %ap.addr, align 8, !dbg !1851
  %gp_offset_p195 = getelementptr inbounds %struct.__va_list_tag, ptr %118, i32 0, i32 0, !dbg !1851
  %gp_offset196 = load i32, ptr %gp_offset_p195, align 8, !dbg !1851
  %fits_in_gp197 = icmp ule i32 %gp_offset196, 40, !dbg !1851
  br i1 %fits_in_gp197, label %vaarg.in_reg198, label %vaarg.in_mem200, !dbg !1851

vaarg.in_reg198:                                  ; preds = %vaarg.end193
  %119 = getelementptr inbounds %struct.__va_list_tag, ptr %118, i32 0, i32 3, !dbg !1851
  %reg_save_area199 = load ptr, ptr %119, align 8, !dbg !1851
  %120 = getelementptr i8, ptr %reg_save_area199, i32 %gp_offset196, !dbg !1851
  %121 = add i32 %gp_offset196, 8, !dbg !1851
  store i32 %121, ptr %gp_offset_p195, align 8, !dbg !1851
  br label %vaarg.end204, !dbg !1851

vaarg.in_mem200:                                  ; preds = %vaarg.end193
  %overflow_arg_area_p201 = getelementptr inbounds %struct.__va_list_tag, ptr %118, i32 0, i32 2, !dbg !1851
  %overflow_arg_area202 = load ptr, ptr %overflow_arg_area_p201, align 8, !dbg !1851
  %overflow_arg_area.next203 = getelementptr i8, ptr %overflow_arg_area202, i32 8, !dbg !1851
  store ptr %overflow_arg_area.next203, ptr %overflow_arg_area_p201, align 8, !dbg !1851
  br label %vaarg.end204, !dbg !1851

vaarg.end204:                                     ; preds = %vaarg.in_mem200, %vaarg.in_reg198
  %vaarg.addr205 = phi ptr [ %120, %vaarg.in_reg198 ], [ %overflow_arg_area202, %vaarg.in_mem200 ], !dbg !1851
  %122 = load ptr, ptr %vaarg.addr205, align 8, !dbg !1851
  store ptr %122, ptr %data, align 8, !dbg !1850
  %123 = load ptr, ptr %pdu.addr, align 8, !dbg !1852
  %124 = load i32, ptr %proto_version.addr, align 4, !dbg !1853
  %125 = load ptr, ptr %count, align 8, !dbg !1854
  %call206 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %123, i32 noundef %124, ptr noundef @.str.12, ptr noundef %125) #22, !dbg !1855
  store i32 %call206, ptr %errcode, align 4, !dbg !1856
  %126 = load i32, ptr %errcode, align 4, !dbg !1857
  %tobool207 = icmp ne i32 %126, 0, !dbg !1857
  br i1 %tobool207, label %if.end217, label %if.then208, !dbg !1858

if.then208:                                       ; preds = %vaarg.end204
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x294) #21, !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x294, metadata !1561, metadata !DIExpression()), !dbg !1859
  %127 = load ptr, ptr %count, align 8, !dbg !1859
  %128 = load i32, ptr %127, align 4, !dbg !1859
  store i32 %128, ptr %__UNIQUE_ID___x294, align 4, !dbg !1859
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y295) #21, !dbg !1859
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y295, metadata !1565, metadata !DIExpression()), !dbg !1859
  %129 = load ptr, ptr %pdu.addr, align 8, !dbg !1859
  %size209 = getelementptr inbounds %struct.p9_fcall, ptr %129, i32 0, i32 0, !dbg !1859
  %130 = load i32, ptr %size209, align 8, !dbg !1859
  %conv210 = zext i32 %130 to i64, !dbg !1859
  %131 = load ptr, ptr %pdu.addr, align 8, !dbg !1859
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %131, i32 0, i32 3, !dbg !1859
  %132 = load i64, ptr %offset, align 8, !dbg !1859
  %sub = sub i64 %conv210, %132, !dbg !1859
  %conv211 = trunc i64 %sub to i32, !dbg !1859
  store i32 %conv211, ptr %__UNIQUE_ID___y295, align 4, !dbg !1859
  %133 = load i32, ptr %__UNIQUE_ID___x294, align 4, !dbg !1859
  %134 = load i32, ptr %__UNIQUE_ID___y295, align 4, !dbg !1859
  %cmp213 = icmp ult i32 %133, %134, !dbg !1859
  br i1 %cmp213, label %cond.true, label %cond.false, !dbg !1859

cond.true:                                        ; preds = %if.then208
  %135 = load i32, ptr %__UNIQUE_ID___x294, align 4, !dbg !1859
  br label %cond.end, !dbg !1859

cond.false:                                       ; preds = %if.then208
  %136 = load i32, ptr %__UNIQUE_ID___y295, align 4, !dbg !1859
  br label %cond.end, !dbg !1859

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %135, %cond.true ], [ %136, %cond.false ], !dbg !1859
  store i32 %cond, ptr %tmp212, align 4, !dbg !1859
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y295) #21, !dbg !1860
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x294) #21, !dbg !1860
  %137 = load i32, ptr %tmp212, align 4, !dbg !1859
  %138 = load ptr, ptr %count, align 8, !dbg !1861
  store i32 %137, ptr %138, align 4, !dbg !1862
  %139 = load ptr, ptr %pdu.addr, align 8, !dbg !1863
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %139, i32 0, i32 6, !dbg !1864
  %140 = load ptr, ptr %sdata, align 8, !dbg !1864
  %141 = load ptr, ptr %pdu.addr, align 8, !dbg !1865
  %offset215 = getelementptr inbounds %struct.p9_fcall, ptr %141, i32 0, i32 3, !dbg !1866
  %142 = load i64, ptr %offset215, align 8, !dbg !1866
  %arrayidx216 = getelementptr i8, ptr %140, i64 %142, !dbg !1863
  %143 = load ptr, ptr %data, align 8, !dbg !1867
  store ptr %arrayidx216, ptr %143, align 8, !dbg !1868
  br label %if.end217, !dbg !1869

if.end217:                                        ; preds = %cond.end, %vaarg.end204
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #21, !dbg !1870
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #21, !dbg !1870
  br label %sw.epilog, !dbg !1871

sw.bb218:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %nwname) #21, !dbg !1872
  call void @llvm.dbg.declare(metadata ptr %nwname, metadata !1566, metadata !DIExpression()), !dbg !1873
  %144 = load ptr, ptr %ap.addr, align 8, !dbg !1874
  %gp_offset_p219 = getelementptr inbounds %struct.__va_list_tag, ptr %144, i32 0, i32 0, !dbg !1874
  %gp_offset220 = load i32, ptr %gp_offset_p219, align 8, !dbg !1874
  %fits_in_gp221 = icmp ule i32 %gp_offset220, 40, !dbg !1874
  br i1 %fits_in_gp221, label %vaarg.in_reg222, label %vaarg.in_mem224, !dbg !1874

vaarg.in_reg222:                                  ; preds = %sw.bb218
  %145 = getelementptr inbounds %struct.__va_list_tag, ptr %144, i32 0, i32 3, !dbg !1874
  %reg_save_area223 = load ptr, ptr %145, align 8, !dbg !1874
  %146 = getelementptr i8, ptr %reg_save_area223, i32 %gp_offset220, !dbg !1874
  %147 = add i32 %gp_offset220, 8, !dbg !1874
  store i32 %147, ptr %gp_offset_p219, align 8, !dbg !1874
  br label %vaarg.end228, !dbg !1874

vaarg.in_mem224:                                  ; preds = %sw.bb218
  %overflow_arg_area_p225 = getelementptr inbounds %struct.__va_list_tag, ptr %144, i32 0, i32 2, !dbg !1874
  %overflow_arg_area226 = load ptr, ptr %overflow_arg_area_p225, align 8, !dbg !1874
  %overflow_arg_area.next227 = getelementptr i8, ptr %overflow_arg_area226, i32 8, !dbg !1874
  store ptr %overflow_arg_area.next227, ptr %overflow_arg_area_p225, align 8, !dbg !1874
  br label %vaarg.end228, !dbg !1874

vaarg.end228:                                     ; preds = %vaarg.in_mem224, %vaarg.in_reg222
  %vaarg.addr229 = phi ptr [ %146, %vaarg.in_reg222 ], [ %overflow_arg_area226, %vaarg.in_mem224 ], !dbg !1874
  %148 = load ptr, ptr %vaarg.addr229, align 8, !dbg !1874
  store ptr %148, ptr %nwname, align 8, !dbg !1873
  call void @llvm.lifetime.start.p0(i64 8, ptr %wnames) #21, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %wnames, metadata !1569, metadata !DIExpression()), !dbg !1876
  %149 = load ptr, ptr %ap.addr, align 8, !dbg !1877
  %gp_offset_p230 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 0, !dbg !1877
  %gp_offset231 = load i32, ptr %gp_offset_p230, align 8, !dbg !1877
  %fits_in_gp232 = icmp ule i32 %gp_offset231, 40, !dbg !1877
  br i1 %fits_in_gp232, label %vaarg.in_reg233, label %vaarg.in_mem235, !dbg !1877

vaarg.in_reg233:                                  ; preds = %vaarg.end228
  %150 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 3, !dbg !1877
  %reg_save_area234 = load ptr, ptr %150, align 8, !dbg !1877
  %151 = getelementptr i8, ptr %reg_save_area234, i32 %gp_offset231, !dbg !1877
  %152 = add i32 %gp_offset231, 8, !dbg !1877
  store i32 %152, ptr %gp_offset_p230, align 8, !dbg !1877
  br label %vaarg.end239, !dbg !1877

vaarg.in_mem235:                                  ; preds = %vaarg.end228
  %overflow_arg_area_p236 = getelementptr inbounds %struct.__va_list_tag, ptr %149, i32 0, i32 2, !dbg !1877
  %overflow_arg_area237 = load ptr, ptr %overflow_arg_area_p236, align 8, !dbg !1877
  %overflow_arg_area.next238 = getelementptr i8, ptr %overflow_arg_area237, i32 8, !dbg !1877
  store ptr %overflow_arg_area.next238, ptr %overflow_arg_area_p236, align 8, !dbg !1877
  br label %vaarg.end239, !dbg !1877

vaarg.end239:                                     ; preds = %vaarg.in_mem235, %vaarg.in_reg233
  %vaarg.addr240 = phi ptr [ %151, %vaarg.in_reg233 ], [ %overflow_arg_area237, %vaarg.in_mem235 ], !dbg !1877
  %153 = load ptr, ptr %vaarg.addr240, align 8, !dbg !1877
  store ptr %153, ptr %wnames, align 8, !dbg !1876
  %154 = load ptr, ptr %wnames, align 8, !dbg !1878
  store ptr null, ptr %154, align 8, !dbg !1879
  %155 = load ptr, ptr %pdu.addr, align 8, !dbg !1880
  %156 = load i32, ptr %proto_version.addr, align 4, !dbg !1881
  %157 = load ptr, ptr %nwname, align 8, !dbg !1882
  %call241 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %155, i32 noundef %156, ptr noundef @.str.9, ptr noundef %157) #22, !dbg !1883
  store i32 %call241, ptr %errcode, align 4, !dbg !1884
  %158 = load i32, ptr %errcode, align 4, !dbg !1885
  %tobool242 = icmp ne i32 %158, 0, !dbg !1885
  br i1 %tobool242, label %if.end251, label %if.then243, !dbg !1887

if.then243:                                       ; preds = %vaarg.end239
  %159 = load ptr, ptr %nwname, align 8, !dbg !1888
  %160 = load i16, ptr %159, align 2, !dbg !1890
  %conv244 = zext i16 %160 to i64, !dbg !1890
  %call245 = call noalias ptr @kmalloc_array(i64 noundef %conv244, i64 noundef 8, i32 noundef 3136) #24, !dbg !1891
  %161 = load ptr, ptr %wnames, align 8, !dbg !1892
  store ptr %call245, ptr %161, align 8, !dbg !1893
  %162 = load ptr, ptr %wnames, align 8, !dbg !1894
  %163 = load ptr, ptr %162, align 8, !dbg !1896
  %tobool246 = icmp ne ptr %163, null, !dbg !1896
  br i1 %tobool246, label %if.else248, label %if.then247, !dbg !1897

if.then247:                                       ; preds = %if.then243
  store i32 -12, ptr %errcode, align 4, !dbg !1898
  br label %if.end250, !dbg !1899

if.else248:                                       ; preds = %if.then243
  %164 = load ptr, ptr %wnames, align 8, !dbg !1900
  %165 = load ptr, ptr %164, align 8, !dbg !1901
  %arrayidx249 = getelementptr ptr, ptr %165, i64 0, !dbg !1902
  store ptr null, ptr %arrayidx249, align 8, !dbg !1903
  br label %if.end250

if.end250:                                        ; preds = %if.else248, %if.then247
  br label %if.end251, !dbg !1904

if.end251:                                        ; preds = %if.end250, %vaarg.end239
  %166 = load i32, ptr %errcode, align 4, !dbg !1905
  %tobool252 = icmp ne i32 %166, 0, !dbg !1905
  br i1 %tobool252, label %if.end267, label %if.then253, !dbg !1906

if.then253:                                       ; preds = %if.end251
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #21, !dbg !1907
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1571, metadata !DIExpression()), !dbg !1908
  store i32 0, ptr %i, align 4, !dbg !1909
  br label %for.cond254, !dbg !1911

for.cond254:                                      ; preds = %for.inc, %if.then253
  %167 = load i32, ptr %i, align 4, !dbg !1912
  %168 = load ptr, ptr %nwname, align 8, !dbg !1914
  %169 = load i16, ptr %168, align 2, !dbg !1915
  %conv255 = zext i16 %169 to i32, !dbg !1915
  %cmp256 = icmp slt i32 %167, %conv255, !dbg !1916
  br i1 %cmp256, label %for.body258, label %for.end, !dbg !1917

for.body258:                                      ; preds = %for.cond254
  %170 = load ptr, ptr %pdu.addr, align 8, !dbg !1918
  %171 = load i32, ptr %proto_version.addr, align 4, !dbg !1920
  %172 = load ptr, ptr %wnames, align 8, !dbg !1921
  %173 = load ptr, ptr %172, align 8, !dbg !1922
  %174 = load i32, ptr %i, align 4, !dbg !1923
  %idxprom259 = sext i32 %174 to i64, !dbg !1924
  %arrayidx260 = getelementptr ptr, ptr %173, i64 %idxprom259, !dbg !1924
  %call261 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %170, i32 noundef %171, ptr noundef @.str.13, ptr noundef %arrayidx260) #22, !dbg !1925
  store i32 %call261, ptr %errcode, align 4, !dbg !1926
  %175 = load i32, ptr %errcode, align 4, !dbg !1927
  %tobool262 = icmp ne i32 %175, 0, !dbg !1927
  br i1 %tobool262, label %if.then263, label %if.end266, !dbg !1929

if.then263:                                       ; preds = %for.body258
  %176 = load ptr, ptr %wnames, align 8, !dbg !1930
  %177 = load ptr, ptr %176, align 8, !dbg !1932
  %178 = load i32, ptr %i, align 4, !dbg !1933
  %idxprom264 = sext i32 %178 to i64, !dbg !1934
  %arrayidx265 = getelementptr ptr, ptr %177, i64 %idxprom264, !dbg !1934
  store ptr null, ptr %arrayidx265, align 8, !dbg !1935
  br label %for.end, !dbg !1936

if.end266:                                        ; preds = %for.body258
  br label %for.inc, !dbg !1937

for.inc:                                          ; preds = %if.end266
  %179 = load i32, ptr %i, align 4, !dbg !1938
  %inc = add i32 %179, 1, !dbg !1938
  store i32 %inc, ptr %i, align 4, !dbg !1938
  br label %for.cond254, !dbg !1939, !llvm.loop !1940

for.end:                                          ; preds = %if.then263, %for.cond254
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #21, !dbg !1942
  br label %if.end267, !dbg !1943

if.end267:                                        ; preds = %for.end, %if.end251
  %180 = load i32, ptr %errcode, align 4, !dbg !1944
  %tobool268 = icmp ne i32 %180, 0, !dbg !1944
  br i1 %tobool268, label %if.then269, label %if.end289, !dbg !1945

if.then269:                                       ; preds = %if.end267
  %181 = load ptr, ptr %wnames, align 8, !dbg !1946
  %182 = load ptr, ptr %181, align 8, !dbg !1947
  %tobool270 = icmp ne ptr %182, null, !dbg !1947
  br i1 %tobool270, label %if.then271, label %if.end288, !dbg !1948

if.then271:                                       ; preds = %if.then269
  call void @llvm.lifetime.start.p0(i64 4, ptr %i272) #21, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %i272, metadata !1574, metadata !DIExpression()), !dbg !1950
  store i32 0, ptr %i272, align 4, !dbg !1951
  br label %for.cond273, !dbg !1953

for.cond273:                                      ; preds = %for.inc285, %if.then271
  %183 = load i32, ptr %i272, align 4, !dbg !1954
  %184 = load ptr, ptr %nwname, align 8, !dbg !1956
  %185 = load i16, ptr %184, align 2, !dbg !1957
  %conv274 = zext i16 %185 to i32, !dbg !1957
  %cmp275 = icmp slt i32 %183, %conv274, !dbg !1958
  br i1 %cmp275, label %for.body277, label %for.end287, !dbg !1959

for.body277:                                      ; preds = %for.cond273
  %186 = load ptr, ptr %wnames, align 8, !dbg !1960
  %187 = load ptr, ptr %186, align 8, !dbg !1963
  %188 = load i32, ptr %i272, align 4, !dbg !1964
  %idxprom278 = sext i32 %188 to i64, !dbg !1965
  %arrayidx279 = getelementptr ptr, ptr %187, i64 %idxprom278, !dbg !1965
  %189 = load ptr, ptr %arrayidx279, align 8, !dbg !1965
  %tobool280 = icmp ne ptr %189, null, !dbg !1965
  br i1 %tobool280, label %if.end282, label %if.then281, !dbg !1966

if.then281:                                       ; preds = %for.body277
  br label %for.end287, !dbg !1967

if.end282:                                        ; preds = %for.body277
  %190 = load ptr, ptr %wnames, align 8, !dbg !1968
  %191 = load ptr, ptr %190, align 8, !dbg !1969
  %192 = load i32, ptr %i272, align 4, !dbg !1970
  %idxprom283 = sext i32 %192 to i64, !dbg !1971
  %arrayidx284 = getelementptr ptr, ptr %191, i64 %idxprom283, !dbg !1971
  %193 = load ptr, ptr %arrayidx284, align 8, !dbg !1971
  call void @kfree(ptr noundef %193) #22, !dbg !1972
  br label %for.inc285, !dbg !1973

for.inc285:                                       ; preds = %if.end282
  %194 = load i32, ptr %i272, align 4, !dbg !1974
  %inc286 = add i32 %194, 1, !dbg !1974
  store i32 %inc286, ptr %i272, align 4, !dbg !1974
  br label %for.cond273, !dbg !1975, !llvm.loop !1976

for.end287:                                       ; preds = %if.then281, %for.cond273
  %195 = load ptr, ptr %wnames, align 8, !dbg !1978
  %196 = load ptr, ptr %195, align 8, !dbg !1979
  call void @kfree(ptr noundef %196) #22, !dbg !1980
  %197 = load ptr, ptr %wnames, align 8, !dbg !1981
  store ptr null, ptr %197, align 8, !dbg !1982
  call void @llvm.lifetime.end.p0(i64 4, ptr %i272) #21, !dbg !1983
  br label %if.end288, !dbg !1984

if.end288:                                        ; preds = %for.end287, %if.then269
  br label %if.end289, !dbg !1985

if.end289:                                        ; preds = %if.end288, %if.end267
  call void @llvm.lifetime.end.p0(i64 8, ptr %wnames) #21, !dbg !1986
  call void @llvm.lifetime.end.p0(i64 8, ptr %nwname) #21, !dbg !1986
  br label %sw.epilog, !dbg !1987

sw.bb290:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %nwqid) #21, !dbg !1988
  call void @llvm.dbg.declare(metadata ptr %nwqid, metadata !1579, metadata !DIExpression()), !dbg !1989
  %198 = load ptr, ptr %ap.addr, align 8, !dbg !1990
  %gp_offset_p291 = getelementptr inbounds %struct.__va_list_tag, ptr %198, i32 0, i32 0, !dbg !1990
  %gp_offset292 = load i32, ptr %gp_offset_p291, align 8, !dbg !1990
  %fits_in_gp293 = icmp ule i32 %gp_offset292, 40, !dbg !1990
  br i1 %fits_in_gp293, label %vaarg.in_reg294, label %vaarg.in_mem296, !dbg !1990

vaarg.in_reg294:                                  ; preds = %sw.bb290
  %199 = getelementptr inbounds %struct.__va_list_tag, ptr %198, i32 0, i32 3, !dbg !1990
  %reg_save_area295 = load ptr, ptr %199, align 8, !dbg !1990
  %200 = getelementptr i8, ptr %reg_save_area295, i32 %gp_offset292, !dbg !1990
  %201 = add i32 %gp_offset292, 8, !dbg !1990
  store i32 %201, ptr %gp_offset_p291, align 8, !dbg !1990
  br label %vaarg.end300, !dbg !1990

vaarg.in_mem296:                                  ; preds = %sw.bb290
  %overflow_arg_area_p297 = getelementptr inbounds %struct.__va_list_tag, ptr %198, i32 0, i32 2, !dbg !1990
  %overflow_arg_area298 = load ptr, ptr %overflow_arg_area_p297, align 8, !dbg !1990
  %overflow_arg_area.next299 = getelementptr i8, ptr %overflow_arg_area298, i32 8, !dbg !1990
  store ptr %overflow_arg_area.next299, ptr %overflow_arg_area_p297, align 8, !dbg !1990
  br label %vaarg.end300, !dbg !1990

vaarg.end300:                                     ; preds = %vaarg.in_mem296, %vaarg.in_reg294
  %vaarg.addr301 = phi ptr [ %200, %vaarg.in_reg294 ], [ %overflow_arg_area298, %vaarg.in_mem296 ], !dbg !1990
  %202 = load ptr, ptr %vaarg.addr301, align 8, !dbg !1990
  store ptr %202, ptr %nwqid, align 8, !dbg !1989
  call void @llvm.lifetime.start.p0(i64 8, ptr %wqids) #21, !dbg !1991
  call void @llvm.dbg.declare(metadata ptr %wqids, metadata !1581, metadata !DIExpression()), !dbg !1992
  %203 = load ptr, ptr %ap.addr, align 8, !dbg !1993
  %gp_offset_p302 = getelementptr inbounds %struct.__va_list_tag, ptr %203, i32 0, i32 0, !dbg !1993
  %gp_offset303 = load i32, ptr %gp_offset_p302, align 8, !dbg !1993
  %fits_in_gp304 = icmp ule i32 %gp_offset303, 40, !dbg !1993
  br i1 %fits_in_gp304, label %vaarg.in_reg305, label %vaarg.in_mem307, !dbg !1993

vaarg.in_reg305:                                  ; preds = %vaarg.end300
  %204 = getelementptr inbounds %struct.__va_list_tag, ptr %203, i32 0, i32 3, !dbg !1993
  %reg_save_area306 = load ptr, ptr %204, align 8, !dbg !1993
  %205 = getelementptr i8, ptr %reg_save_area306, i32 %gp_offset303, !dbg !1993
  %206 = add i32 %gp_offset303, 8, !dbg !1993
  store i32 %206, ptr %gp_offset_p302, align 8, !dbg !1993
  br label %vaarg.end311, !dbg !1993

vaarg.in_mem307:                                  ; preds = %vaarg.end300
  %overflow_arg_area_p308 = getelementptr inbounds %struct.__va_list_tag, ptr %203, i32 0, i32 2, !dbg !1993
  %overflow_arg_area309 = load ptr, ptr %overflow_arg_area_p308, align 8, !dbg !1993
  %overflow_arg_area.next310 = getelementptr i8, ptr %overflow_arg_area309, i32 8, !dbg !1993
  store ptr %overflow_arg_area.next310, ptr %overflow_arg_area_p308, align 8, !dbg !1993
  br label %vaarg.end311, !dbg !1993

vaarg.end311:                                     ; preds = %vaarg.in_mem307, %vaarg.in_reg305
  %vaarg.addr312 = phi ptr [ %205, %vaarg.in_reg305 ], [ %overflow_arg_area309, %vaarg.in_mem307 ], !dbg !1993
  %207 = load ptr, ptr %vaarg.addr312, align 8, !dbg !1993
  store ptr %207, ptr %wqids, align 8, !dbg !1992
  %208 = load ptr, ptr %wqids, align 8, !dbg !1994
  store ptr null, ptr %208, align 8, !dbg !1995
  %209 = load ptr, ptr %pdu.addr, align 8, !dbg !1996
  %210 = load i32, ptr %proto_version.addr, align 4, !dbg !1997
  %211 = load ptr, ptr %nwqid, align 8, !dbg !1998
  %call313 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %209, i32 noundef %210, ptr noundef @.str.9, ptr noundef %211) #22, !dbg !1999
  store i32 %call313, ptr %errcode, align 4, !dbg !2000
  %212 = load i32, ptr %errcode, align 4, !dbg !2001
  %tobool314 = icmp ne i32 %212, 0, !dbg !2001
  br i1 %tobool314, label %if.end322, label %if.then315, !dbg !2003

if.then315:                                       ; preds = %vaarg.end311
  %213 = load ptr, ptr %nwqid, align 8, !dbg !2004
  %214 = load i16, ptr %213, align 2, !dbg !2006
  %conv316 = zext i16 %214 to i64, !dbg !2006
  %call317 = call noalias ptr @kmalloc_array(i64 noundef %conv316, i64 noundef 16, i32 noundef 3136) #24, !dbg !2007
  %215 = load ptr, ptr %wqids, align 8, !dbg !2008
  store ptr %call317, ptr %215, align 8, !dbg !2009
  %216 = load ptr, ptr %wqids, align 8, !dbg !2010
  %217 = load ptr, ptr %216, align 8, !dbg !2012
  %cmp318 = icmp eq ptr %217, null, !dbg !2013
  br i1 %cmp318, label %if.then320, label %if.end321, !dbg !2014

if.then320:                                       ; preds = %if.then315
  store i32 -12, ptr %errcode, align 4, !dbg !2015
  br label %if.end321, !dbg !2016

if.end321:                                        ; preds = %if.then320, %if.then315
  br label %if.end322, !dbg !2017

if.end322:                                        ; preds = %if.end321, %vaarg.end311
  %218 = load i32, ptr %errcode, align 4, !dbg !2018
  %tobool323 = icmp ne i32 %218, 0, !dbg !2018
  br i1 %tobool323, label %if.end340, label %if.then324, !dbg !2019

if.then324:                                       ; preds = %if.end322
  call void @llvm.lifetime.start.p0(i64 4, ptr %i325) #21, !dbg !2020
  call void @llvm.dbg.declare(metadata ptr %i325, metadata !1583, metadata !DIExpression()), !dbg !2021
  store i32 0, ptr %i325, align 4, !dbg !2022
  br label %for.cond326, !dbg !2024

for.cond326:                                      ; preds = %for.inc337, %if.then324
  %219 = load i32, ptr %i325, align 4, !dbg !2025
  %220 = load ptr, ptr %nwqid, align 8, !dbg !2027
  %221 = load i16, ptr %220, align 2, !dbg !2028
  %conv327 = zext i16 %221 to i32, !dbg !2028
  %cmp328 = icmp slt i32 %219, %conv327, !dbg !2029
  br i1 %cmp328, label %for.body330, label %for.end339, !dbg !2030

for.body330:                                      ; preds = %for.cond326
  %222 = load ptr, ptr %pdu.addr, align 8, !dbg !2031
  %223 = load i32, ptr %proto_version.addr, align 4, !dbg !2033
  %224 = load ptr, ptr %wqids, align 8, !dbg !2034
  %225 = load ptr, ptr %224, align 8, !dbg !2035
  %226 = load i32, ptr %i325, align 4, !dbg !2036
  %idxprom331 = sext i32 %226 to i64, !dbg !2037
  %arrayidx332 = getelementptr %struct.p9_qid, ptr %225, i64 %idxprom331, !dbg !2037
  %call333 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %222, i32 noundef %223, ptr noundef @.str.14, ptr noundef %arrayidx332) #22, !dbg !2038
  store i32 %call333, ptr %errcode, align 4, !dbg !2039
  %227 = load i32, ptr %errcode, align 4, !dbg !2040
  %tobool334 = icmp ne i32 %227, 0, !dbg !2040
  br i1 %tobool334, label %if.then335, label %if.end336, !dbg !2042

if.then335:                                       ; preds = %for.body330
  br label %for.end339, !dbg !2043

if.end336:                                        ; preds = %for.body330
  br label %for.inc337, !dbg !2044

for.inc337:                                       ; preds = %if.end336
  %228 = load i32, ptr %i325, align 4, !dbg !2045
  %inc338 = add i32 %228, 1, !dbg !2045
  store i32 %inc338, ptr %i325, align 4, !dbg !2045
  br label %for.cond326, !dbg !2046, !llvm.loop !2047

for.end339:                                       ; preds = %if.then335, %for.cond326
  call void @llvm.lifetime.end.p0(i64 4, ptr %i325) #21, !dbg !2049
  br label %if.end340, !dbg !2050

if.end340:                                        ; preds = %for.end339, %if.end322
  %229 = load i32, ptr %errcode, align 4, !dbg !2051
  %tobool341 = icmp ne i32 %229, 0, !dbg !2051
  br i1 %tobool341, label %if.then342, label %if.end343, !dbg !2053

if.then342:                                       ; preds = %if.end340
  %230 = load ptr, ptr %wqids, align 8, !dbg !2054
  %231 = load ptr, ptr %230, align 8, !dbg !2056
  call void @kfree(ptr noundef %231) #22, !dbg !2057
  %232 = load ptr, ptr %wqids, align 8, !dbg !2058
  store ptr null, ptr %232, align 8, !dbg !2059
  br label %if.end343, !dbg !2060

if.end343:                                        ; preds = %if.then342, %if.end340
  call void @llvm.lifetime.end.p0(i64 8, ptr %wqids) #21, !dbg !2061
  call void @llvm.lifetime.end.p0(i64 8, ptr %nwqid) #21, !dbg !2061
  br label %sw.epilog, !dbg !2062

sw.bb344:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %stbuf345) #21, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %stbuf345, metadata !1586, metadata !DIExpression()), !dbg !2064
  %233 = load ptr, ptr %ap.addr, align 8, !dbg !2065
  %gp_offset_p346 = getelementptr inbounds %struct.__va_list_tag, ptr %233, i32 0, i32 0, !dbg !2065
  %gp_offset347 = load i32, ptr %gp_offset_p346, align 8, !dbg !2065
  %fits_in_gp348 = icmp ule i32 %gp_offset347, 40, !dbg !2065
  br i1 %fits_in_gp348, label %vaarg.in_reg349, label %vaarg.in_mem351, !dbg !2065

vaarg.in_reg349:                                  ; preds = %sw.bb344
  %234 = getelementptr inbounds %struct.__va_list_tag, ptr %233, i32 0, i32 3, !dbg !2065
  %reg_save_area350 = load ptr, ptr %234, align 8, !dbg !2065
  %235 = getelementptr i8, ptr %reg_save_area350, i32 %gp_offset347, !dbg !2065
  %236 = add i32 %gp_offset347, 8, !dbg !2065
  store i32 %236, ptr %gp_offset_p346, align 8, !dbg !2065
  br label %vaarg.end355, !dbg !2065

vaarg.in_mem351:                                  ; preds = %sw.bb344
  %overflow_arg_area_p352 = getelementptr inbounds %struct.__va_list_tag, ptr %233, i32 0, i32 2, !dbg !2065
  %overflow_arg_area353 = load ptr, ptr %overflow_arg_area_p352, align 8, !dbg !2065
  %overflow_arg_area.next354 = getelementptr i8, ptr %overflow_arg_area353, i32 8, !dbg !2065
  store ptr %overflow_arg_area.next354, ptr %overflow_arg_area_p352, align 8, !dbg !2065
  br label %vaarg.end355, !dbg !2065

vaarg.end355:                                     ; preds = %vaarg.in_mem351, %vaarg.in_reg349
  %vaarg.addr356 = phi ptr [ %235, %vaarg.in_reg349 ], [ %overflow_arg_area353, %vaarg.in_mem351 ], !dbg !2065
  %237 = load ptr, ptr %vaarg.addr356, align 8, !dbg !2065
  store ptr %237, ptr %stbuf345, align 8, !dbg !2064
  %238 = load ptr, ptr %stbuf345, align 8, !dbg !2066
  call void @llvm.memset.p0.i64(ptr align 8 %238, i8 0, i64 160, i1 false), !dbg !2067
  %239 = load ptr, ptr %pdu.addr, align 8, !dbg !2068
  %240 = load i32, ptr %proto_version.addr, align 4, !dbg !2069
  %241 = load ptr, ptr %stbuf345, align 8, !dbg !2070
  %st_result_mask = getelementptr inbounds %struct.p9_stat_dotl, ptr %241, i32 0, i32 0, !dbg !2071
  %242 = load ptr, ptr %stbuf345, align 8, !dbg !2072
  %qid357 = getelementptr inbounds %struct.p9_stat_dotl, ptr %242, i32 0, i32 1, !dbg !2073
  %243 = load ptr, ptr %stbuf345, align 8, !dbg !2074
  %st_mode = getelementptr inbounds %struct.p9_stat_dotl, ptr %243, i32 0, i32 2, !dbg !2075
  %244 = load ptr, ptr %stbuf345, align 8, !dbg !2076
  %st_uid = getelementptr inbounds %struct.p9_stat_dotl, ptr %244, i32 0, i32 3, !dbg !2077
  %245 = load ptr, ptr %stbuf345, align 8, !dbg !2078
  %st_gid = getelementptr inbounds %struct.p9_stat_dotl, ptr %245, i32 0, i32 4, !dbg !2079
  %246 = load ptr, ptr %stbuf345, align 8, !dbg !2080
  %st_nlink = getelementptr inbounds %struct.p9_stat_dotl, ptr %246, i32 0, i32 5, !dbg !2081
  %247 = load ptr, ptr %stbuf345, align 8, !dbg !2082
  %st_rdev = getelementptr inbounds %struct.p9_stat_dotl, ptr %247, i32 0, i32 6, !dbg !2083
  %248 = load ptr, ptr %stbuf345, align 8, !dbg !2084
  %st_size = getelementptr inbounds %struct.p9_stat_dotl, ptr %248, i32 0, i32 7, !dbg !2085
  %249 = load ptr, ptr %stbuf345, align 8, !dbg !2086
  %st_blksize = getelementptr inbounds %struct.p9_stat_dotl, ptr %249, i32 0, i32 8, !dbg !2087
  %250 = load ptr, ptr %stbuf345, align 8, !dbg !2088
  %st_blocks = getelementptr inbounds %struct.p9_stat_dotl, ptr %250, i32 0, i32 9, !dbg !2089
  %251 = load ptr, ptr %stbuf345, align 8, !dbg !2090
  %st_atime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %251, i32 0, i32 10, !dbg !2091
  %252 = load ptr, ptr %stbuf345, align 8, !dbg !2092
  %st_atime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %252, i32 0, i32 11, !dbg !2093
  %253 = load ptr, ptr %stbuf345, align 8, !dbg !2094
  %st_mtime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %253, i32 0, i32 12, !dbg !2095
  %254 = load ptr, ptr %stbuf345, align 8, !dbg !2096
  %st_mtime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %254, i32 0, i32 13, !dbg !2097
  %255 = load ptr, ptr %stbuf345, align 8, !dbg !2098
  %st_ctime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %255, i32 0, i32 14, !dbg !2099
  %256 = load ptr, ptr %stbuf345, align 8, !dbg !2100
  %st_ctime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %256, i32 0, i32 15, !dbg !2101
  %257 = load ptr, ptr %stbuf345, align 8, !dbg !2102
  %st_btime_sec = getelementptr inbounds %struct.p9_stat_dotl, ptr %257, i32 0, i32 16, !dbg !2103
  %258 = load ptr, ptr %stbuf345, align 8, !dbg !2104
  %st_btime_nsec = getelementptr inbounds %struct.p9_stat_dotl, ptr %258, i32 0, i32 17, !dbg !2105
  %259 = load ptr, ptr %stbuf345, align 8, !dbg !2106
  %st_gen = getelementptr inbounds %struct.p9_stat_dotl, ptr %259, i32 0, i32 18, !dbg !2107
  %260 = load ptr, ptr %stbuf345, align 8, !dbg !2108
  %st_data_version = getelementptr inbounds %struct.p9_stat_dotl, ptr %260, i32 0, i32 19, !dbg !2109
  %call358 = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %239, i32 noundef %240, ptr noundef @.str.20, ptr noundef %st_result_mask, ptr noundef %qid357, ptr noundef %st_mode, ptr noundef %st_uid, ptr noundef %st_gid, ptr noundef %st_nlink, ptr noundef %st_rdev, ptr noundef %st_size, ptr noundef %st_blksize, ptr noundef %st_blocks, ptr noundef %st_atime_sec, ptr noundef %st_atime_nsec, ptr noundef %st_mtime_sec, ptr noundef %st_mtime_nsec, ptr noundef %st_ctime_sec, ptr noundef %st_ctime_nsec, ptr noundef %st_btime_sec, ptr noundef %st_btime_nsec, ptr noundef %st_gen, ptr noundef %st_data_version) #22, !dbg !2110
  store i32 %call358, ptr %errcode, align 4, !dbg !2111
  call void @llvm.lifetime.end.p0(i64 8, ptr %stbuf345) #21, !dbg !2112
  br label %sw.epilog, !dbg !2113

sw.bb359:                                         ; preds = %for.body
  %261 = load i32, ptr %proto_version.addr, align 4, !dbg !2114
  %cmp360 = icmp ne i32 %261, 1, !dbg !2116
  br i1 %cmp360, label %land.lhs.true, label %if.end365, !dbg !2117

land.lhs.true:                                    ; preds = %sw.bb359
  %262 = load i32, ptr %proto_version.addr, align 4, !dbg !2118
  %cmp362 = icmp ne i32 %262, 2, !dbg !2119
  br i1 %cmp362, label %if.then364, label %if.end365, !dbg !2120

if.then364:                                       ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !2121
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup377, !dbg !2121

if.end365:                                        ; preds = %land.lhs.true, %sw.bb359
  br label %sw.epilog, !dbg !2122

sw.default:                                       ; preds = %for.body
  br label %do.body, !dbg !2123

do.body:                                          ; preds = %sw.default
  br label %do.body366, !dbg !2124

do.body366:                                       ; preds = %do.body
  br label %do.cond, !dbg !2126

do.cond:                                          ; preds = %do.body366
  br label %do.end, !dbg !2126

do.end:                                           ; preds = %do.cond
  br label %do.body367, !dbg !2124

do.body367:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 514, i32 0, i64 12) #21, !dbg !2128, !srcloc !2130
  br label %do.cond368, !dbg !2128

do.cond368:                                       ; preds = %do.body367
  br label %do.end369, !dbg !2128

do.end369:                                        ; preds = %do.cond368
  unreachable, !dbg !2124

do.cond370:                                       ; No predecessors!
  br label %do.end371, !dbg !2124

do.end371:                                        ; preds = %do.cond370
  br label %sw.epilog, !dbg !2131

sw.epilog:                                        ; preds = %do.end371, %if.end365, %vaarg.end355, %if.end343, %if.end289, %if.end217, %if.end182, %vaarg.end154, %cleanup.cont143, %cleanup140, %cleanup.cont119, %cleanup116, %cleanup.cont97, %cleanup94, %cleanup.cont66, %cleanup63, %cleanup.cont44, %cleanup41, %cleanup.cont22, %cleanup19, %cleanup.cont, %cleanup
  %263 = load i32, ptr %errcode, align 4, !dbg !2132
  %tobool372 = icmp ne i32 %263, 0, !dbg !2132
  br i1 %tobool372, label %if.then373, label %if.end374, !dbg !2134

if.then373:                                       ; preds = %sw.epilog
  br label %for.end376, !dbg !2135

if.end374:                                        ; preds = %sw.epilog
  br label %for.inc375, !dbg !2136

for.inc375:                                       ; preds = %if.end374
  %264 = load ptr, ptr %ptr, align 8, !dbg !2137
  %incdec.ptr = getelementptr i8, ptr %264, i32 1, !dbg !2137
  store ptr %incdec.ptr, ptr %ptr, align 8, !dbg !2137
  br label %for.cond, !dbg !2138, !llvm.loop !2139

for.end376:                                       ; preds = %if.then373, %for.cond
  %265 = load i32, ptr %errcode, align 4, !dbg !2141
  store i32 %265, ptr %retval, align 4, !dbg !2142
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup377, !dbg !2142

cleanup377:                                       ; preds = %for.end376, %if.then364
  call void @llvm.lifetime.end.p0(i64 4, ptr %errcode) #21, !dbg !2143
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #21, !dbg !2143
  %266 = load i32, ptr %retval, align 4, !dbg !2143
  ret i32 %266, !dbg !2143

unreachable:                                      ; preds = %cleanup140, %cleanup116, %cleanup94, %cleanup63, %cleanup41, %cleanup19, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9stat_read(ptr noundef %clnt, ptr noundef %buf, i32 noundef %len, ptr noundef %st) #0 align 16 !dbg !2144 {
entry:
  %retval = alloca i32, align 4
  %clnt.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %st.addr = alloca ptr, align 8
  %fake_pdu = alloca %struct.p9_fcall, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %clnt, ptr %clnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clnt.addr, metadata !2148, metadata !DIExpression()), !dbg !2154
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2149, metadata !DIExpression()), !dbg !2155
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2150, metadata !DIExpression()), !dbg !2156
  store ptr %st, ptr %st.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %st.addr, metadata !2151, metadata !DIExpression()), !dbg !2157
  call void @llvm.lifetime.start.p0(i64 48, ptr %fake_pdu) #21, !dbg !2158
  call void @llvm.dbg.declare(metadata ptr %fake_pdu, metadata !2152, metadata !DIExpression()), !dbg !2159
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2153, metadata !DIExpression()), !dbg !2161
  %0 = load i32, ptr %len.addr, align 4, !dbg !2162
  %size = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 0, !dbg !2163
  store i32 %0, ptr %size, align 8, !dbg !2164
  %1 = load i32, ptr %len.addr, align 4, !dbg !2165
  %conv = sext i32 %1 to i64, !dbg !2165
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 4, !dbg !2166
  store i64 %conv, ptr %capacity, align 8, !dbg !2167
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2168
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 6, !dbg !2169
  store ptr %2, ptr %sdata, align 8, !dbg !2170
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3, !dbg !2171
  store i64 0, ptr %offset, align 8, !dbg !2172
  %3 = load ptr, ptr %clnt.addr, align 8, !dbg !2173
  %proto_version = getelementptr inbounds %struct.p9_client, ptr %3, i32 0, i32 2, !dbg !2174
  %4 = load i8, ptr %proto_version, align 8, !dbg !2174
  %conv1 = zext i8 %4 to i32, !dbg !2173
  %5 = load ptr, ptr %st.addr, align 8, !dbg !2175
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %fake_pdu, i32 noundef %conv1, ptr noundef @.str.16, ptr noundef %5) #22, !dbg !2176
  store i32 %call, ptr %ret, align 4, !dbg !2177
  %6 = load i32, ptr %ret, align 4, !dbg !2178
  %tobool = icmp ne i32 %6, 0, !dbg !2178
  br i1 %tobool, label %if.then, label %if.end, !dbg !2180

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2181
  %7 = load i32, ptr %tmp, align 4, !dbg !2185
  %8 = load ptr, ptr %clnt.addr, align 8, !dbg !2186
  call void @trace_9p_protocol_dump(ptr noundef %8, ptr noundef %fake_pdu) #22, !dbg !2187
  %9 = load i32, ptr %ret, align 4, !dbg !2188
  store i32 %9, ptr %retval, align 4, !dbg !2189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2189

if.end:                                           ; preds = %entry
  %offset2 = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3, !dbg !2190
  %10 = load i64, ptr %offset2, align 8, !dbg !2190
  %conv3 = trunc i64 %10 to i32, !dbg !2191
  store i32 %conv3, ptr %retval, align 4, !dbg !2192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2192

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !2193
  call void @llvm.lifetime.end.p0(i64 48, ptr %fake_pdu) #21, !dbg !2193
  %11 = load i32, ptr %retval, align 4, !dbg !2193
  ret i32 %11, !dbg !2193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_9p_protocol_dump(ptr noundef %clnt, ptr noundef %pdu) #6 align 16 !dbg !234 {
entry:
  %clnt.addr = alloca ptr, align 8
  %pdu.addr = alloca ptr, align 8
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu245 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %clnt, ptr %clnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clnt.addr, metadata !336, metadata !DIExpression()), !dbg !2194
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !337, metadata !DIExpression()), !dbg !2194
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_protocol_dump, i32 0, i32 1)) #22, !dbg !2195
  br i1 %call, label %if.then, label %if.end68, !dbg !2194

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2195

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #21, !dbg !2196
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !338, metadata !DIExpression()), !dbg !2196
  store i32 0, ptr %__idx, align 4, !dbg !2196
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #21, !dbg !2197
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !341, metadata !DIExpression()), !dbg !2197
  br label %do.body1, !dbg !2197

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #21, !dbg !2198
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !344, metadata !DIExpression()), !dbg !2198
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2198
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2198
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #21, !dbg !2197
  br label %do.cond, !dbg !2198

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2198

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #21, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !348, metadata !DIExpression()), !dbg !2199
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 2)) #21, !dbg !2199, !srcloc !2200
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2199
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2199
  %conv = zext i32 %2 to i64, !dbg !2199
  %conv2 = trunc i64 %conv to i32, !dbg !2199
  store i32 %conv2, ptr %tmp, align 4, !dbg !2199
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #21, !dbg !2197
  %3 = load i32, ptr %tmp, align 4, !dbg !2199
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2197
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2197
  store i32 %4, ptr %tmp3, align 4, !dbg !2197
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #21, !dbg !2201
  %5 = load i32, ptr %tmp3, align 4, !dbg !2197
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #22, !dbg !2201
  br i1 %call4, label %if.end, label %if.then5, !dbg !2196

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2201

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !350, metadata !DIExpression()), !dbg !2202
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2202
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2203
  %tobool = icmp ne i32 %6, 0, !dbg !2203
  %lnot = xor i1 %tobool, true, !dbg !2203
  %lnot6 = xor i1 %lnot, true, !dbg !2203
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2203
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2203
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2203
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2203
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2202

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2203

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !353, metadata !DIExpression()), !dbg !2204
  store i32 2307, ptr %__flags, align 4, !dbg !2204
  br label %do.body11, !dbg !2204

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2205

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2205

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2204

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2207
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.22, i32 196, i32 %7, i64 12) #21, !dbg !2207, !srcloc !2209
  br label %do.cond15, !dbg !2207

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2207

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2204

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2210

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2210

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !2203
  br label %do.cond20, !dbg !2204

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2204

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2204

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2202
  %tobool24 = icmp ne i32 %8, 0, !dbg !2202
  %lnot25 = xor i1 %tobool24, true, !dbg !2202
  %lnot27 = xor i1 %lnot25, true, !dbg !2202
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2202
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2202
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2202
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2203
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !2212
  %9 = load i64, ptr %tmp23, align 8, !dbg !2202
  %tobool31 = icmp ne i64 %9, 0, !dbg !2212
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2196

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2212

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2196

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #22, !dbg !2213
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !2213, !srcloc !2215
  br label %do.cond35, !dbg !2213

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2213

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2196

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #21, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !356, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #21, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !358, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu245) #21, !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu245, metadata !359, metadata !DIExpression()), !dbg !2217
  br label %do.body38, !dbg !2218

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2220

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2220

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_9p_protocol_dump, i32 0, i32 8), align 8, !dbg !2218
  store ptr %10, ptr %tmp41, align 8, !dbg !2220
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2218
  store ptr %11, ptr %__UNIQUE_ID_rcu245, align 8, !dbg !2217
  %12 = load ptr, ptr %__UNIQUE_ID_rcu245, align 8, !dbg !2217
  store ptr %12, ptr %tmp42, align 8, !dbg !2217
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu245) #21, !dbg !2216
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2217
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2216
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2222
  %tobool43 = icmp ne ptr %14, null, !dbg !2222
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2216

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2224
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2224
  %16 = load ptr, ptr %data, align 8, !dbg !2224
  store ptr %16, ptr %__data, align 8, !dbg !2224
  store ptr @__SCT__tp_func_9p_protocol_dump, ptr %tmp45, align 8, !dbg !2226
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2226
  %18 = load ptr, ptr %__data, align 8, !dbg !2224
  %19 = load ptr, ptr %clnt.addr, align 8, !dbg !2224
  %20 = load ptr, ptr %pdu.addr, align 8, !dbg !2224
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, ptr noundef %20) #22, !dbg !2224
  br label %if.end47, !dbg !2224

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #21, !dbg !2196
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #21, !dbg !2196
  br label %do.cond48, !dbg !2216

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2216

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2196

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #21, !dbg !2228, !srcloc !2230
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #22, !dbg !2231
  %lnot52 = xor i1 %call51, true, !dbg !2231
  %lnot54 = xor i1 %lnot52, true, !dbg !2231
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2231
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2231
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2231
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2231
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2228

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2231

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !363), !dbg !2233
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #21, !dbg !2233, !srcloc !2235
  call void @llvm.write_register.i64(metadata !363, i64 %22), !dbg !2233
  br label %do.cond61, !dbg !2233

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2233

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2233

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2228

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2228

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2195
  br label %cleanup, !dbg !2195

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #21, !dbg !2195
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2196

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2196

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2194

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9pdu_prepare(ptr noundef %pdu, i16 noundef signext %tag, i8 noundef signext %type) #0 align 16 !dbg !2236 {
entry:
  %pdu.addr = alloca ptr, align 8
  %tag.addr = alloca i16, align 2
  %type.addr = alloca i8, align 1
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !2240, metadata !DIExpression()), !dbg !2243
  store i16 %tag, ptr %tag.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %tag.addr, metadata !2241, metadata !DIExpression()), !dbg !2244
  store i8 %type, ptr %type.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2242, metadata !DIExpression()), !dbg !2245
  %0 = load i8, ptr %type.addr, align 1, !dbg !2246
  %1 = load ptr, ptr %pdu.addr, align 8, !dbg !2247
  %id = getelementptr inbounds %struct.p9_fcall, ptr %1, i32 0, i32 1, !dbg !2248
  store i8 %0, ptr %id, align 4, !dbg !2249
  %2 = load ptr, ptr %pdu.addr, align 8, !dbg !2250
  %3 = load i8, ptr %type.addr, align 1, !dbg !2251
  %conv = sext i8 %3 to i32, !dbg !2251
  %4 = load i16, ptr %tag.addr, align 2, !dbg !2252
  %conv1 = sext i16 %4 to i32, !dbg !2252
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %2, i32 noundef 0, ptr noundef @.str.17, i32 noundef 0, i32 noundef %conv, i32 noundef %conv1) #22, !dbg !2253
  ret i32 %call, !dbg !2254
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9pdu_finalize(ptr noundef %clnt, ptr noundef %pdu) #0 align 16 !dbg !2255 {
entry:
  %clnt.addr = alloca ptr, align 8
  %pdu.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %clnt, ptr %clnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clnt.addr, metadata !2259, metadata !DIExpression()), !dbg !2263
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !2260, metadata !DIExpression()), !dbg !2264
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #21, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2261, metadata !DIExpression()), !dbg !2266
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !2267
  %size1 = getelementptr inbounds %struct.p9_fcall, ptr %0, i32 0, i32 0, !dbg !2268
  %1 = load i32, ptr %size1, align 8, !dbg !2268
  store i32 %1, ptr %size, align 4, !dbg !2266
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #21, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2262, metadata !DIExpression()), !dbg !2270
  %2 = load ptr, ptr %pdu.addr, align 8, !dbg !2271
  %size2 = getelementptr inbounds %struct.p9_fcall, ptr %2, i32 0, i32 0, !dbg !2272
  store i32 0, ptr %size2, align 8, !dbg !2273
  %3 = load ptr, ptr %pdu.addr, align 8, !dbg !2274
  %4 = load i32, ptr %size, align 4, !dbg !2275
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_writef(ptr noundef %3, i32 noundef 0, ptr noundef @.str.12, i32 noundef %4) #22, !dbg !2276
  store i32 %call, ptr %err, align 4, !dbg !2277
  %5 = load i32, ptr %size, align 4, !dbg !2278
  %6 = load ptr, ptr %pdu.addr, align 8, !dbg !2279
  %size3 = getelementptr inbounds %struct.p9_fcall, ptr %6, i32 0, i32 0, !dbg !2280
  store i32 %5, ptr %size3, align 8, !dbg !2281
  %7 = load ptr, ptr %clnt.addr, align 8, !dbg !2282
  %8 = load ptr, ptr %pdu.addr, align 8, !dbg !2283
  call void @trace_9p_protocol_dump(ptr noundef %7, ptr noundef %8) #22, !dbg !2284
  store i32 0, ptr %tmp, align 4, !dbg !2285
  %9 = load i32, ptr %tmp, align 4, !dbg !2288
  %10 = load i32, ptr %err, align 4, !dbg !2289
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #21, !dbg !2290
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #21, !dbg !2290
  ret i32 %10, !dbg !2291
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @p9pdu_reset(ptr noundef %pdu) #0 align 16 !dbg !2292 {
entry:
  %pdu.addr = alloca ptr, align 8
  store ptr %pdu, ptr %pdu.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdu.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  %0 = load ptr, ptr %pdu.addr, align 8, !dbg !2298
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %0, i32 0, i32 3, !dbg !2299
  store i64 0, ptr %offset, align 8, !dbg !2300
  %1 = load ptr, ptr %pdu.addr, align 8, !dbg !2301
  %size = getelementptr inbounds %struct.p9_fcall, ptr %1, i32 0, i32 0, !dbg !2302
  store i32 0, ptr %size, align 8, !dbg !2303
  ret void, !dbg !2304
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @p9dirent_read(ptr noundef %clnt, ptr noundef %buf, i32 noundef %len, ptr noundef %dirent) #0 align 16 !dbg !2305 {
entry:
  %retval = alloca i32, align 4
  %clnt.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %dirent.addr = alloca ptr, align 8
  %fake_pdu = alloca %struct.p9_fcall, align 8
  %ret = alloca i32, align 4
  %nameptr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  store ptr %clnt, ptr %clnt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %clnt.addr, metadata !2319, metadata !DIExpression()), !dbg !2326
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2320, metadata !DIExpression()), !dbg !2327
  store i32 %len, ptr %len.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2321, metadata !DIExpression()), !dbg !2328
  store ptr %dirent, ptr %dirent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dirent.addr, metadata !2322, metadata !DIExpression()), !dbg !2329
  call void @llvm.lifetime.start.p0(i64 48, ptr %fake_pdu) #21, !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %fake_pdu, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #21, !dbg !2332
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2324, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 8, ptr %nameptr) #21, !dbg !2334
  call void @llvm.dbg.declare(metadata ptr %nameptr, metadata !2325, metadata !DIExpression()), !dbg !2335
  %0 = load i32, ptr %len.addr, align 4, !dbg !2336
  %size = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 0, !dbg !2337
  store i32 %0, ptr %size, align 8, !dbg !2338
  %1 = load i32, ptr %len.addr, align 4, !dbg !2339
  %conv = sext i32 %1 to i64, !dbg !2339
  %capacity = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 4, !dbg !2340
  store i64 %conv, ptr %capacity, align 8, !dbg !2341
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2342
  %sdata = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 6, !dbg !2343
  store ptr %2, ptr %sdata, align 8, !dbg !2344
  %offset = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3, !dbg !2345
  store i64 0, ptr %offset, align 8, !dbg !2346
  %3 = load ptr, ptr %clnt.addr, align 8, !dbg !2347
  %proto_version = getelementptr inbounds %struct.p9_client, ptr %3, i32 0, i32 2, !dbg !2348
  %4 = load i8, ptr %proto_version, align 8, !dbg !2348
  %conv1 = zext i8 %4 to i32, !dbg !2347
  %5 = load ptr, ptr %dirent.addr, align 8, !dbg !2349
  %qid = getelementptr inbounds %struct.p9_dirent, ptr %5, i32 0, i32 0, !dbg !2350
  %6 = load ptr, ptr %dirent.addr, align 8, !dbg !2351
  %d_off = getelementptr inbounds %struct.p9_dirent, ptr %6, i32 0, i32 1, !dbg !2352
  %7 = load ptr, ptr %dirent.addr, align 8, !dbg !2353
  %d_type = getelementptr inbounds %struct.p9_dirent, ptr %7, i32 0, i32 2, !dbg !2354
  %call = call i32 (ptr, i32, ptr, ...) @p9pdu_readf(ptr noundef %fake_pdu, i32 noundef %conv1, ptr noundef @.str.18, ptr noundef %qid, ptr noundef %d_off, ptr noundef %d_type, ptr noundef %nameptr) #22, !dbg !2355
  store i32 %call, ptr %ret, align 4, !dbg !2356
  %8 = load i32, ptr %ret, align 4, !dbg !2357
  %tobool = icmp ne i32 %8, 0, !dbg !2357
  br i1 %tobool, label %if.then, label %if.end, !dbg !2359

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !2360
  %9 = load i32, ptr %tmp, align 4, !dbg !2364
  %10 = load ptr, ptr %clnt.addr, align 8, !dbg !2365
  call void @trace_9p_protocol_dump(ptr noundef %10, ptr noundef %fake_pdu) #22, !dbg !2366
  %11 = load i32, ptr %ret, align 4, !dbg !2367
  store i32 %11, ptr %retval, align 4, !dbg !2368
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2368

if.end:                                           ; preds = %entry
  %12 = load ptr, ptr %dirent.addr, align 8, !dbg !2369
  %d_name = getelementptr inbounds %struct.p9_dirent, ptr %12, i32 0, i32 3, !dbg !2370
  %arraydecay = getelementptr inbounds [256 x i8], ptr %d_name, i64 0, i64 0, !dbg !2369
  %13 = load ptr, ptr %nameptr, align 8, !dbg !2371
  %call2 = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %13, i64 noundef 256) #22, !dbg !2372
  %conv3 = trunc i64 %call2 to i32, !dbg !2372
  store i32 %conv3, ptr %ret, align 4, !dbg !2373
  %14 = load i32, ptr %ret, align 4, !dbg !2374
  %cmp = icmp slt i32 %14, 0, !dbg !2376
  br i1 %cmp, label %if.then5, label %if.end7, !dbg !2377

if.then5:                                         ; preds = %if.end
  store i32 0, ptr %tmp6, align 4, !dbg !2378
  %15 = load i32, ptr %tmp6, align 4, !dbg !2382
  %16 = load ptr, ptr %nameptr, align 8, !dbg !2383
  call void @kfree(ptr noundef %16) #22, !dbg !2384
  %17 = load i32, ptr %ret, align 4, !dbg !2385
  store i32 %17, ptr %retval, align 4, !dbg !2386
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2386

if.end7:                                          ; preds = %if.end
  %18 = load ptr, ptr %nameptr, align 8, !dbg !2387
  call void @kfree(ptr noundef %18) #22, !dbg !2388
  %offset8 = getelementptr inbounds %struct.p9_fcall, ptr %fake_pdu, i32 0, i32 3, !dbg !2389
  %19 = load i64, ptr %offset8, align 8, !dbg !2389
  %conv9 = trunc i64 %19 to i32, !dbg !2390
  store i32 %conv9, ptr %retval, align 4, !dbg !2391
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2391

cleanup:                                          ; preds = %if.end7, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %nameptr) #21, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #21, !dbg !2392
  call void @llvm.lifetime.end.p0(i64 48, ptr %fake_pdu) #21, !dbg !2392
  %20 = load i32, ptr %retval, align 4, !dbg !2392
  ret i32 %20, !dbg !2392
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2393 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kuid_val(i32 %uid.coerce) #6 align 16 !dbg !2400 {
entry:
  %uid = alloca %struct.kuid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0
  store i32 %uid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %uid, metadata !2404, metadata !DIExpression()), !dbg !2405
  %val = getelementptr inbounds %struct.kuid_t, ptr %uid, i32 0, i32 0, !dbg !2406
  %0 = load i32, ptr %val, align 4, !dbg !2406
  ret i32 %0, !dbg !2407
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kgid_val(i32 %gid.coerce) #6 align 16 !dbg !2408 {
entry:
  %gid = alloca %struct.kgid_t, align 4
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0
  store i32 %gid.coerce, ptr %coerce.dive, align 4
  call void @llvm.dbg.declare(metadata ptr %gid, metadata !2412, metadata !DIExpression()), !dbg !2413
  %val = getelementptr inbounds %struct.kgid_t, ptr %gid, i32 0, i32 0, !dbg !2414
  %0 = load i32, ptr %val, align 4, !dbg !2414
  ret i32 %0, !dbg !2415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @copy_from_iter_full(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #8 align 16 !dbg !2416 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  %copied = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2420, metadata !DIExpression()), !dbg !2424
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !2421, metadata !DIExpression()), !dbg !2425
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2422, metadata !DIExpression()), !dbg !2426
  call void @llvm.lifetime.start.p0(i64 8, ptr %copied) #21, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %copied, metadata !2423, metadata !DIExpression()), !dbg !2428
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2429
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !2430
  %2 = load ptr, ptr %i.addr, align 8, !dbg !2431
  %call = call i64 @copy_from_iter(ptr noundef %0, i64 noundef %1, ptr noundef %2) #22, !dbg !2432
  store i64 %call, ptr %copied, align 8, !dbg !2428
  %3 = load i64, ptr %copied, align 8, !dbg !2433
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !2433
  %cmp = icmp eq i64 %3, %4, !dbg !2433
  %lnot = xor i1 %cmp, true, !dbg !2433
  %lnot1 = xor i1 %lnot, true, !dbg !2433
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2433
  %conv = sext i32 %lnot.ext to i64, !dbg !2433
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2433
  %tobool = icmp ne i64 %expval, 0, !dbg !2433
  br i1 %tobool, label %if.then, label %if.end, !dbg !2435

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2436

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %i.addr, align 8, !dbg !2437
  %6 = load i64, ptr %copied, align 8, !dbg !2438
  call void @iov_iter_revert(ptr noundef %5, i64 noundef %6) #22, !dbg !2439
  store i1 false, ptr %retval, align 1, !dbg !2440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2440

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %copied) #21, !dbg !2441
  %7 = load i1, ptr %retval, align 1, !dbg !2441
  ret i1 %7, !dbg !2441
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @copy_from_iter(ptr noundef %addr, i64 noundef %bytes, ptr noundef %i) #8 align 16 !dbg !2442 {
entry:
  %retval = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %i.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2446, metadata !DIExpression()), !dbg !2449
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !2447, metadata !DIExpression()), !dbg !2450
  store ptr %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2448, metadata !DIExpression()), !dbg !2451
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2452
  %1 = load i64, ptr %bytes.addr, align 8, !dbg !2454
  %call = call zeroext i1 @check_copy_size(ptr noundef %0, i64 noundef %1, i1 noundef zeroext false) #22, !dbg !2455
  br i1 %call, label %if.then, label %if.end, !dbg !2456

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %addr.addr, align 8, !dbg !2457
  %3 = load i64, ptr %bytes.addr, align 8, !dbg !2458
  %4 = load ptr, ptr %i.addr, align 8, !dbg !2459
  %call1 = call i64 @_copy_from_iter(ptr noundef %2, i64 noundef %3, ptr noundef %4) #22, !dbg !2460
  store i64 %call1, ptr %retval, align 8, !dbg !2461
  br label %return, !dbg !2461

if.end:                                           ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2462
  br label %return, !dbg !2462

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !2463
  ret i64 %5, !dbg !2463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2464 dso_local void @iov_iter_revert(ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @check_copy_size(ptr noundef %addr, i64 noundef %bytes, i1 noundef zeroext %is_source) #8 align 16 !dbg !2467 {
entry:
  %retval = alloca i1, align 1
  %addr.addr = alloca ptr, align 8
  %bytes.addr = alloca i64, align 8
  %is_source.addr = alloca i8, align 1
  %sz = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2471, metadata !DIExpression()), !dbg !2481
  store i64 %bytes, ptr %bytes.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bytes.addr, metadata !2472, metadata !DIExpression()), !dbg !2482
  %frombool = zext i1 %is_source to i8
  store i8 %frombool, ptr %is_source.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %is_source.addr, metadata !2473, metadata !DIExpression()), !dbg !2483
  call void @llvm.lifetime.start.p0(i64 4, ptr %sz) #21, !dbg !2484
  call void @llvm.dbg.declare(metadata ptr %sz, metadata !2474, metadata !DIExpression()), !dbg !2485
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2486
  %1 = call i64 @llvm.objectsize.i64.p0(ptr %0, i1 false, i1 true, i1 false), !dbg !2487
  %conv = trunc i64 %1 to i32, !dbg !2487
  store i32 %conv, ptr %sz, align 4, !dbg !2485
  %2 = load i32, ptr %sz, align 4, !dbg !2488
  %cmp = icmp sge i32 %2, 0, !dbg !2488
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2488

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %sz, align 4, !dbg !2488
  %conv2 = sext i32 %3 to i64, !dbg !2488
  %4 = load i64, ptr %bytes.addr, align 8, !dbg !2488
  %cmp3 = icmp ult i64 %conv2, %4, !dbg !2488
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp3, %land.rhs ], !dbg !2490
  %lnot = xor i1 %5, true, !dbg !2488
  %lnot5 = xor i1 %lnot, true, !dbg !2488
  %lnot.ext = zext i1 %lnot5 to i32, !dbg !2488
  %conv6 = sext i32 %lnot.ext to i64, !dbg !2488
  %expval = call i64 @llvm.expect.i64(i64 %conv6, i64 0), !dbg !2488
  %tobool = icmp ne i64 %expval, 0, !dbg !2488
  br i1 %tobool, label %if.then, label %if.end12, !dbg !2491

if.then:                                          ; preds = %land.end
  %6 = load i64, ptr %bytes.addr, align 8, !dbg !2492
  %7 = call i1 @llvm.is.constant.i64(i64 %6), !dbg !2495
  br i1 %7, label %if.else, label %if.then7, !dbg !2496

if.then7:                                         ; preds = %if.then
  %8 = load i32, ptr %sz, align 4, !dbg !2497
  %9 = load i64, ptr %bytes.addr, align 8, !dbg !2498
  call void @copy_overflow(i32 noundef %8, i64 noundef %9) #22, !dbg !2499
  br label %if.end11, !dbg !2499

if.else:                                          ; preds = %if.then
  %10 = load i8, ptr %is_source.addr, align 1, !dbg !2500, !range !2502, !noundef !2503
  %tobool8 = trunc i8 %10 to i1, !dbg !2500
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !2504

if.then9:                                         ; preds = %if.else
  call void @__bad_copy_from() #22, !dbg !2505, !srcloc !2506
  br label %if.end, !dbg !2505

if.else10:                                        ; preds = %if.else
  call void @__bad_copy_to() #22, !dbg !2507, !srcloc !2508
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then7
  store i1 false, ptr %retval, align 1, !dbg !2509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2509

if.end12:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !2510
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2475, metadata !DIExpression()), !dbg !2510
  %11 = load i64, ptr %bytes.addr, align 8, !dbg !2510
  %cmp13 = icmp ugt i64 %11, 2147483647, !dbg !2510
  %lnot15 = xor i1 %cmp13, true, !dbg !2510
  %lnot17 = xor i1 %lnot15, true, !dbg !2510
  %lnot.ext18 = zext i1 %lnot17 to i32, !dbg !2510
  store i32 %lnot.ext18, ptr %__ret_warn_on, align 4, !dbg !2510
  %12 = load i32, ptr %__ret_warn_on, align 4, !dbg !2511
  %tobool19 = icmp ne i32 %12, 0, !dbg !2511
  %lnot20 = xor i1 %tobool19, true, !dbg !2511
  %lnot22 = xor i1 %lnot20, true, !dbg !2511
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2511
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2511
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !2511
  %tobool26 = icmp ne i64 %expval25, 0, !dbg !2511
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !2510

if.then27:                                        ; preds = %if.end12
  br label %do.body, !dbg !2511

do.body:                                          ; preds = %if.then27
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #21, !dbg !2512
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2478, metadata !DIExpression()), !dbg !2512
  store i32 2307, ptr %__flags, align 4, !dbg !2512
  br label %do.body28, !dbg !2512

do.body28:                                        ; preds = %do.body
  br label %do.cond, !dbg !2513

do.cond:                                          ; preds = %do.body28
  br label %do.end, !dbg !2513

do.end:                                           ; preds = %do.cond
  br label %do.body29, !dbg !2512

do.body29:                                        ; preds = %do.end
  %13 = load i32, ptr %__flags, align 4, !dbg !2515
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.19, i32 249, i32 %13, i64 12) #21, !dbg !2515, !srcloc !2517
  br label %do.cond30, !dbg !2515

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2515

do.end31:                                         ; preds = %do.cond30
  br label %do.body32, !dbg !2512

do.body32:                                        ; preds = %do.end31
  br label %do.cond33, !dbg !2518

do.cond33:                                        ; preds = %do.body32
  br label %do.end34, !dbg !2518

do.end34:                                         ; preds = %do.cond33
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #21, !dbg !2511
  br label %do.cond35, !dbg !2512

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !2512

do.end36:                                         ; preds = %do.cond35
  br label %if.end37, !dbg !2512

if.end37:                                         ; preds = %do.end36, %if.end12
  %14 = load i32, ptr %__ret_warn_on, align 4, !dbg !2510
  %tobool38 = icmp ne i32 %14, 0, !dbg !2510
  %lnot39 = xor i1 %tobool38, true, !dbg !2510
  %lnot41 = xor i1 %lnot39, true, !dbg !2510
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !2510
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !2510
  %expval44 = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !2510
  store i64 %expval44, ptr %tmp, align 8, !dbg !2511
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #21, !dbg !2520
  %15 = load i64, ptr %tmp, align 8, !dbg !2510
  %tobool45 = icmp ne i64 %15, 0, !dbg !2520
  br i1 %tobool45, label %if.then46, label %if.end47, !dbg !2521

if.then46:                                        ; preds = %if.end37
  store i1 false, ptr %retval, align 1, !dbg !2522
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2522

if.end47:                                         ; preds = %if.end37
  %16 = load ptr, ptr %addr.addr, align 8, !dbg !2523
  %17 = load i64, ptr %bytes.addr, align 8, !dbg !2524
  %18 = load i8, ptr %is_source.addr, align 1, !dbg !2525, !range !2502, !noundef !2503
  %tobool48 = trunc i8 %18 to i1, !dbg !2525
  call void @check_object_size(ptr noundef %16, i64 noundef %17, i1 noundef zeroext %tobool48) #22, !dbg !2526
  store i1 true, ptr %retval, align 1, !dbg !2527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2527

cleanup:                                          ; preds = %if.end47, %if.then46, %if.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %sz) #21, !dbg !2528
  %19 = load i1, ptr %retval, align 1, !dbg !2528
  ret i1 %19, !dbg !2528
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2529 dso_local i64 @_copy_from_iter(ptr noundef, i64 noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @copy_overflow(i32 noundef %size, i64 noundef %count) #6 align 16 !dbg !2530 {
entry:
  %size.addr = alloca i32, align 4
  %count.addr = alloca i64, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2534, metadata !DIExpression()), !dbg !2536
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2535, metadata !DIExpression()), !dbg !2537
  %0 = load i32, ptr %size.addr, align 4, !dbg !2538
  %1 = load i64, ptr %count.addr, align 8, !dbg !2540
  call void @__copy_overflow(i32 noundef %0, i64 noundef %1) #22, !dbg !2541
  ret void, !dbg !2542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2543 dso_local void @__bad_copy_from() #10

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2546 dso_local void @__bad_copy_to() #11

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @check_object_size(ptr noundef %ptr, i64 noundef %n, i1 noundef zeroext %to_user) #6 align 16 !dbg !2547 {
entry:
  %ptr.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %to_user.addr = alloca i8, align 1
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2551, metadata !DIExpression()), !dbg !2554
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2552, metadata !DIExpression()), !dbg !2555
  %frombool = zext i1 %to_user to i8
  store i8 %frombool, ptr %to_user.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %to_user.addr, metadata !2553, metadata !DIExpression()), !dbg !2556
  ret void, !dbg !2557
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2558 dso_local void @__copy_overflow(i32 noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #12 align 16 !dbg !2559 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2563, metadata !DIExpression()), !dbg !2568
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2564, metadata !DIExpression()), !dbg !2569
  %0 = load i64, ptr %size.addr, align 8, !dbg !2570
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2571
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2572

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2573
  %tobool = icmp ne i64 %2, 0, !dbg !2573
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2574

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #21, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2565, metadata !DIExpression()), !dbg !2576
  %3 = load i64, ptr %size.addr, align 8, !dbg !2577
  %cmp = icmp ugt i64 %3, 8192, !dbg !2579
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2580

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2581
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2582
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #23, !dbg !2583
  store ptr %call, ptr %retval, align 8, !dbg !2584
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2584

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2585
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #22, !dbg !2585
  store i32 %call2, ptr %index, align 4, !dbg !2586
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2587
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2588
  %9 = ptrtoint ptr %8 to i64, !dbg !2588
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #22, !dbg !2589
  %idxprom = zext i32 %call3 to i64, !dbg !2590
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2590
  %10 = load i32, ptr %index, align 4, !dbg !2591
  %idxprom4 = zext i32 %10 to i64, !dbg !2590
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2590
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2590
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2592
  %13 = load i64, ptr %size.addr, align 8, !dbg !2593
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #25, !dbg !2594
  store ptr %call6, ptr %retval, align 8, !dbg !2595
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2595

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #21, !dbg !2596
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2597
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2598
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #23, !dbg !2599
  store ptr %call8, ptr %retval, align 8, !dbg !2600
  br label %return, !dbg !2600

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2601
  ret ptr %16, !dbg !2601
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kuid(ptr noundef %from, i32 noundef %uid) #6 align 16 !dbg !2602 {
entry:
  %retval = alloca %struct.kuid_t, align 4
  %from.addr = alloca ptr, align 8
  %uid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !2606, metadata !DIExpression()), !dbg !2608
  store i32 %uid, ptr %uid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %uid.addr, metadata !2607, metadata !DIExpression()), !dbg !2609
  %val = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !2610
  %0 = load i32, ptr %uid.addr, align 4, !dbg !2610
  store i32 %0, ptr %val, align 4, !dbg !2610
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %retval, i32 0, i32 0, !dbg !2611
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2611
  ret i32 %1, !dbg !2611
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @make_kgid(ptr noundef %from, i32 noundef %gid) #6 align 16 !dbg !2612 {
entry:
  %retval = alloca %struct.kgid_t, align 4
  %from.addr = alloca ptr, align 8
  %gid.addr = alloca i32, align 4
  store ptr %from, ptr %from.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %from.addr, metadata !2616, metadata !DIExpression()), !dbg !2618
  store i32 %gid, ptr %gid.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gid.addr, metadata !2617, metadata !DIExpression()), !dbg !2619
  %val = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !2620
  %0 = load i32, ptr %gid.addr, align 4, !dbg !2620
  store i32 %0, ptr %val, align 4, !dbg !2620
  %coerce.dive = getelementptr inbounds %struct.kgid_t, ptr %retval, i32 0, i32 0, !dbg !2621
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2621
  ret i32 %1, !dbg !2621
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #14 align 16 !dbg !2622 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2626, metadata !DIExpression()), !dbg !2630
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2627, metadata !DIExpression()), !dbg !2631
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2628, metadata !DIExpression()), !dbg !2632
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #21, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2629, metadata !DIExpression()), !dbg !2634
  %0 = load i64, ptr %n.addr, align 8, !dbg !2635
  %1 = load i64, ptr %size.addr, align 8, !dbg !2635
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2635
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2635
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2635
  store i64 %4, ptr %bytes, align 8, !dbg !2635
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #22, !dbg !2635
  %lnot = xor i1 %call, true, !dbg !2635
  %lnot1 = xor i1 %lnot, true, !dbg !2635
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2635
  %conv = sext i32 %lnot.ext to i64, !dbg !2635
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2635
  %tobool = icmp ne i64 %expval, 0, !dbg !2635
  br i1 %tobool, label %if.then, label %if.end, !dbg !2637

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2638

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2639
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2641
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2642

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2643
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2644
  br i1 %8, label %if.then2, label %if.end4, !dbg !2645

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2646
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2647
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #23, !dbg !2648
  store ptr %call3, ptr %retval, align 8, !dbg !2649
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2649

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2650
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2651
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #23, !dbg !2652
  store ptr %call5, ptr %retval, align 8, !dbg !2653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2653

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #21, !dbg !2654
  %13 = load ptr, ptr %retval, align 8, !dbg !2654
  ret ptr %13, !dbg !2654
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2655 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #15

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #8 align 16 !dbg !2656 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2660, metadata !DIExpression()), !dbg !2662
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2661, metadata !DIExpression()), !dbg !2663
  %0 = load i64, ptr %size.addr, align 8, !dbg !2664
  %tobool = icmp ne i64 %0, 0, !dbg !2664
  br i1 %tobool, label %if.end, label %if.then, !dbg !2666

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2667
  br label %return, !dbg !2667

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2668
  %cmp = icmp ule i64 %1, 8, !dbg !2670
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2671

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2672
  br label %return, !dbg !2672

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2673
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2675
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2676

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2677
  %cmp4 = icmp ule i64 %3, 96, !dbg !2678
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2679

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2680
  br label %return, !dbg !2680

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2681
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2683
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2684

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2685
  %cmp9 = icmp ule i64 %5, 192, !dbg !2686
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2687

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2688
  br label %return, !dbg !2688

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2689
  %cmp12 = icmp ule i64 %6, 8, !dbg !2691
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2692

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2693
  br label %return, !dbg !2693

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2694
  %cmp15 = icmp ule i64 %7, 16, !dbg !2696
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2697

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2698
  br label %return, !dbg !2698

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2699
  %cmp18 = icmp ule i64 %8, 32, !dbg !2701
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2702

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2703
  br label %return, !dbg !2703

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2704
  %cmp21 = icmp ule i64 %9, 64, !dbg !2706
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2707

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2708
  br label %return, !dbg !2708

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2709
  %cmp24 = icmp ule i64 %10, 128, !dbg !2711
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2712

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2713
  br label %return, !dbg !2713

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2714
  %cmp27 = icmp ule i64 %11, 256, !dbg !2716
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2717

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2718
  br label %return, !dbg !2718

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2719
  %cmp30 = icmp ule i64 %12, 512, !dbg !2721
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2722

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2723
  br label %return, !dbg !2723

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2724
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2726
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2727

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2728
  br label %return, !dbg !2728

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2729
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2731
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2732

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2733
  br label %return, !dbg !2733

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2734
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2736
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2737

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2738
  br label %return, !dbg !2738

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2739
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2741
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2742

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2743
  br label %return, !dbg !2743

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2744
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2746
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2747

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2749
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2751
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2752

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2753
  br label %return, !dbg !2753

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2754
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2756
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2757

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2758
  br label %return, !dbg !2758

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2759
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2761
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2762

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2763
  br label %return, !dbg !2763

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2764
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2766
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2767

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2768
  br label %return, !dbg !2768

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2769
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2771
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2772

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2773
  br label %return, !dbg !2773

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2774
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2776
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2777

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2778
  br label %return, !dbg !2778

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2779
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2781
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2782

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2783
  br label %return, !dbg !2783

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2784, !range !2502, !noundef !2503
  %tobool69 = trunc i8 %25 to i1, !dbg !2784
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2786

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2787

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_220() #26, !dbg !2788, !srcloc !2791
  unreachable, !dbg !2788

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2792

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2793

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2794

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2796

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2794

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.21, i32 480, i32 0, i64 12) #21, !dbg !2798, !srcloc !2800
  br label %do.end75, !dbg !2798

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2794

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2801
  br label %return, !dbg !2801

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2802
  ret i32 %26, !dbg !2802
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2803 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #16

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #8 align 16 !dbg !2806 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2810, metadata !DIExpression()), !dbg !2812
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2811, metadata !DIExpression()), !dbg !2813
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2814
  %and = and i32 %0, 17, !dbg !2814
  %cmp = icmp eq i32 %and, 0, !dbg !2814
  %lnot = xor i1 %cmp, true, !dbg !2814
  %lnot1 = xor i1 %lnot, true, !dbg !2814
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2814
  %conv = sext i32 %lnot.ext to i64, !dbg !2814
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2814
  %tobool = icmp ne i64 %expval, 0, !dbg !2814
  br i1 %tobool, label %if.then, label %if.end, !dbg !2816

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2817
  br label %return, !dbg !2817

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2818
  %and2 = and i32 %1, 1, !dbg !2820
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2820
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2821

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2822
  br label %return, !dbg !2822

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2823
  br label %return, !dbg !2823

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2825
  ret i32 %2, !dbg !2825
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2826 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #15

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2827 dso_local void @__compiletime_assert_220() #17

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #6 align 16 !dbg !2828 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2833, metadata !DIExpression()), !dbg !2834
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2835, !range !2502, !noundef !2503
  %tobool = trunc i8 %0 to i1, !dbg !2835
  %lnot = xor i1 %tobool, true, !dbg !2835
  %lnot1 = xor i1 %lnot, true, !dbg !2835
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2835
  %conv = sext i32 %lnot.ext to i64, !dbg !2835
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2835
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2835
  ret i1 %tobool2, !dbg !2836
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #8 align 16 !dbg !2837 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2860, metadata !DIExpression()), !dbg !2861
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2862
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #22, !dbg !2863
  ret i1 %call, !dbg !2864
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #6 align 16 !dbg !2865 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2869, metadata !DIExpression()), !dbg !2870
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2871
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #22, !dbg !2872
  ret i1 %call, !dbg !2873
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #8 align 16 !dbg !2874 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2879, metadata !DIExpression()), !dbg !2886
  br label %do.body, !dbg !2887

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #21, !dbg !2888
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2880, metadata !DIExpression()), !dbg !2888
  %0 = load i32, ptr %val.addr, align 4, !dbg !2888
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2888
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2888

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2888
  %cmp = icmp eq i32 %2, 1, !dbg !2888
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2888

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2888
  %cmp1 = icmp eq i32 %3, -1, !dbg !2888
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2888

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2888
  br label %cond.end, !dbg !2888

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2888

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2888
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2888
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2889
  %cmp2 = icmp eq i32 %5, 1, !dbg !2889
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2888

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !2890, !srcloc !2892
  br label %if.end8, !dbg !2889

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2893
  %cmp3 = icmp eq i32 %6, -1, !dbg !2893
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2889

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !2894, !srcloc !2896
  br label %if.end, !dbg !2893

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2893

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #21, !dbg !2897
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2882, metadata !DIExpression()), !dbg !2897
  %7 = load i32, ptr %val.addr, align 4, !dbg !2897
  %conv = sext i32 %7 to i64, !dbg !2897
  %and = and i64 %conv, 4294967295, !dbg !2897
  %conv7 = trunc i64 %and to i32, !dbg !2897
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2897
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2897
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !2897, !srcloc !2898
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #21, !dbg !2893
  br label %do.cond, !dbg !2897

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2897

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #21, !dbg !2887
  br label %do.end10, !dbg !2888

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2899
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_9p_protocol_dump(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #8 align 16 !dbg !2900 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #21, !dbg !2906
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2904, metadata !DIExpression()), !dbg !2906
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.7, ptr @pcpu_hot, i32 0, i32 1)) #21, !dbg !2906, !srcloc !2907
  %1 = icmp ult i8 %0, 2, !dbg !2906
  call void @llvm.assume(i1 %1), !dbg !2906
  store i8 %0, ptr %c, align 1, !dbg !2906
  %2 = load i8, ptr %c, align 1, !dbg !2906, !range !2502, !noundef !2503
  %tobool = trunc i8 %2 to i1, !dbg !2906
  %frombool = zext i1 %tobool to i8, !dbg !2906
  store i8 %frombool, ptr %tmp, align 1, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #21, !dbg !2908
  %3 = load i8, ptr %tmp, align 1, !dbg !2906, !range !2502, !noundef !2503
  %tobool1 = trunc i8 %3 to i1, !dbg !2906
  ret i1 %tobool1, !dbg !2909
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #18

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #19

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #8 align 16 !dbg !2910 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2915, metadata !DIExpression()), !dbg !2918
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2916, metadata !DIExpression()), !dbg !2919
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2920
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2921, !range !2502, !noundef !2503
  %tobool = trunc i8 %1 to i1, !dbg !2921
  %conv = zext i1 %tobool to i32, !dbg !2921
  %or = or i32 2, %conv, !dbg !2922
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #21
          to label %asm.fallthrough [label %l_yes], !dbg !2923, !srcloc !2924

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2925
  br label %return, !dbg !2925

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2917), !dbg !2926
  store i1 true, ptr %retval, align 1, !dbg !2927
  br label %return, !dbg !2927

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2928
  ret i1 %2, !dbg !2928
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #8 align 16 !dbg !2929 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2933, metadata !DIExpression()), !dbg !2935
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2934, metadata !DIExpression()), !dbg !2936
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2937
  %call = call i32 @cpumask_check(i32 noundef %0) #22, !dbg !2937
  %conv = zext i32 %call to i64, !dbg !2937
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2937
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2937
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2937
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #22, !dbg !2937
  ret i1 %call1, !dbg !2938
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2939 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2947, metadata !DIExpression()), !dbg !2949
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2948, metadata !DIExpression()), !dbg !2950
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2951
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2952
  %div = udiv i64 %1, 64, !dbg !2952
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2953
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #22, !dbg !2954
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2955
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2956
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #22, !dbg !2957
  ret i1 %call, !dbg !2958
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #8 align 16 !dbg !2959 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2965
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #22, !dbg !2966
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2967
  ret i32 %1, !dbg !2968
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #8 align 16 !dbg !2969 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2977, metadata !DIExpression()), !dbg !2979
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2978, metadata !DIExpression()), !dbg !2980
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2981
  %1 = load i64, ptr %size.addr, align 8, !dbg !2982
  %conv = trunc i64 %1 to i32, !dbg !2982
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #22, !dbg !2983
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2984
  %3 = load i64, ptr %size.addr, align 8, !dbg !2984
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #22, !dbg !2984
  ret void, !dbg !2985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !2986 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2989, metadata !DIExpression()), !dbg !2991
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2990, metadata !DIExpression()), !dbg !2992
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2993
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2994
  br i1 %1, label %cond.true, label %cond.false, !dbg !2994

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2995
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2996
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #22, !dbg !2997
  %conv = zext i1 %call to i32, !dbg !2997
  br label %cond.end, !dbg !2994

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2998
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2999
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #22, !dbg !3000
  %conv2 = zext i1 %call1 to i32, !dbg !3000
  br label %cond.end, !dbg !2994

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2994
  %tobool = icmp ne i32 %cond, 0, !dbg !2994
  ret i1 %tobool, !dbg !3001
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #6 align 16 !dbg !3002 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !3007, metadata !DIExpression()), !dbg !3009
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3008, metadata !DIExpression()), !dbg !3010
  ret i1 true, !dbg !3011
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #6 align 16 !dbg !3012 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !3017, metadata !DIExpression()), !dbg !3020
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3018, metadata !DIExpression()), !dbg !3021
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !3019, metadata !DIExpression()), !dbg !3022
  ret void, !dbg !3023
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3024 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3028, metadata !DIExpression()), !dbg !3030
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3029, metadata !DIExpression()), !dbg !3031
  %0 = load i64, ptr %nr.addr, align 8, !dbg !3032
  %and = and i64 %0, 63, !dbg !3033
  %shl = shl i64 1, %and, !dbg !3034
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !3035
  %2 = load i64, ptr %nr.addr, align 8, !dbg !3036
  %shr = ashr i64 %2, 6, !dbg !3037
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !3035
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !3035
  %and1 = and i64 %shl, %3, !dbg !3038
  %cmp = icmp ne i64 %and1, 0, !dbg !3039
  ret i1 %cmp, !dbg !3040
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #8 align 16 !dbg !3041 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !3043, metadata !DIExpression()), !dbg !3046
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !3044, metadata !DIExpression()), !dbg !3047
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #21, !dbg !3048
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !3045, metadata !DIExpression()), !dbg !3049
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !3050
  %1 = load i64, ptr %nr.addr, align 8, !dbg !3051
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #21, !dbg !3052, !srcloc !3053
  %3 = icmp ult i8 %2, 2, !dbg !3052
  call void @llvm.assume(i1 %3), !dbg !3052
  store i8 %2, ptr %oldbit, align 1, !dbg !3052
  %4 = load i8, ptr %oldbit, align 1, !dbg !3054, !range !2502, !noundef !2503
  %tobool = trunc i8 %4 to i1, !dbg !3054
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #21, !dbg !3055
  ret i1 %tobool, !dbg !3056
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #8 align 16 !dbg !3057 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !3061, metadata !DIExpression()), !dbg !3063
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !3062, metadata !DIExpression()), !dbg !3064
  ret void, !dbg !3065
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid "dontcall-error"="copy source size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid "dontcall-error"="copy destination size is too small" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #17 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #19 = { nocallback nounwind }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nounwind }
attributes #22 = { noredzone }
attributes #23 = { noredzone allocsize(0) }
attributes #24 = { noredzone allocsize(0,1) }
attributes #25 = { noredzone allocsize(2) }
attributes #26 = { noredzone noreturn }

!llvm.dbg.cu = !{!37}
!llvm.named.register.rsp = !{!363}
!llvm.module.flags = !{!364, !365, !366, !367, !368, !369, !370, !371}
!llvm.ident = !{!372}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 65, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "net/9p/protocol.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c603b6d509f30fadec5d51626d5d138a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 7)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 79, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 4)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !9, isLocal: true, isDefinition: true)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 6)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !14, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !14, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 147, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 5)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 158, type: !30, isLocal: true, isDefinition: true)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_p9stat_free287", scope: !37, file: !2, line: 209, type: !146, isLocal: true, isDefinition: true)
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/9p/.protocol.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/9p/9pnet\22 -D KBUILD_BASENAME=\22protocol\22 -D KBUILD_MODNAME=\229pnet\22 -D __KBUILD_MODNAME=kmod_9pnet -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/9p/protocol.ll net/9p/protocol.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !38, retainedTypes: !138, globals: !182, splitDebugInlining: false, nameTableKind: None)
!38 = !{!39, !47, !118, !123, !128}
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_trans_status", file: !40, line: 42, baseType: !41, size: 32, elements: !42)
!40 = !DIFile(filename: "./include/net/9p/client.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a7a55fe24c3aa1cf602d2a8511dd3702")
!41 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!42 = !{!43, !44, !45, !46}
!43 = !DIEnumerator(name: "Connected", value: 0)
!44 = !DIEnumerator(name: "BeginDisconnect", value: 1)
!45 = !DIEnumerator(name: "Disconnected", value: 2)
!46 = !DIEnumerator(name: "Hung", value: 3)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_msg_t", file: !48, line: 115, baseType: !41, size: 32, elements: !49)
!48 = !DIFile(filename: "./include/net/9p/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8be44a6cf5e6d0f53abc0540cde0ebd0")
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!50 = !DIEnumerator(name: "P9_TLERROR", value: 6)
!51 = !DIEnumerator(name: "P9_RLERROR", value: 7)
!52 = !DIEnumerator(name: "P9_TSTATFS", value: 8)
!53 = !DIEnumerator(name: "P9_RSTATFS", value: 9)
!54 = !DIEnumerator(name: "P9_TLOPEN", value: 12)
!55 = !DIEnumerator(name: "P9_RLOPEN", value: 13)
!56 = !DIEnumerator(name: "P9_TLCREATE", value: 14)
!57 = !DIEnumerator(name: "P9_RLCREATE", value: 15)
!58 = !DIEnumerator(name: "P9_TSYMLINK", value: 16)
!59 = !DIEnumerator(name: "P9_RSYMLINK", value: 17)
!60 = !DIEnumerator(name: "P9_TMKNOD", value: 18)
!61 = !DIEnumerator(name: "P9_RMKNOD", value: 19)
!62 = !DIEnumerator(name: "P9_TRENAME", value: 20)
!63 = !DIEnumerator(name: "P9_RRENAME", value: 21)
!64 = !DIEnumerator(name: "P9_TREADLINK", value: 22)
!65 = !DIEnumerator(name: "P9_RREADLINK", value: 23)
!66 = !DIEnumerator(name: "P9_TGETATTR", value: 24)
!67 = !DIEnumerator(name: "P9_RGETATTR", value: 25)
!68 = !DIEnumerator(name: "P9_TSETATTR", value: 26)
!69 = !DIEnumerator(name: "P9_RSETATTR", value: 27)
!70 = !DIEnumerator(name: "P9_TXATTRWALK", value: 30)
!71 = !DIEnumerator(name: "P9_RXATTRWALK", value: 31)
!72 = !DIEnumerator(name: "P9_TXATTRCREATE", value: 32)
!73 = !DIEnumerator(name: "P9_RXATTRCREATE", value: 33)
!74 = !DIEnumerator(name: "P9_TREADDIR", value: 40)
!75 = !DIEnumerator(name: "P9_RREADDIR", value: 41)
!76 = !DIEnumerator(name: "P9_TFSYNC", value: 50)
!77 = !DIEnumerator(name: "P9_RFSYNC", value: 51)
!78 = !DIEnumerator(name: "P9_TLOCK", value: 52)
!79 = !DIEnumerator(name: "P9_RLOCK", value: 53)
!80 = !DIEnumerator(name: "P9_TGETLOCK", value: 54)
!81 = !DIEnumerator(name: "P9_RGETLOCK", value: 55)
!82 = !DIEnumerator(name: "P9_TLINK", value: 70)
!83 = !DIEnumerator(name: "P9_RLINK", value: 71)
!84 = !DIEnumerator(name: "P9_TMKDIR", value: 72)
!85 = !DIEnumerator(name: "P9_RMKDIR", value: 73)
!86 = !DIEnumerator(name: "P9_TRENAMEAT", value: 74)
!87 = !DIEnumerator(name: "P9_RRENAMEAT", value: 75)
!88 = !DIEnumerator(name: "P9_TUNLINKAT", value: 76)
!89 = !DIEnumerator(name: "P9_RUNLINKAT", value: 77)
!90 = !DIEnumerator(name: "P9_TVERSION", value: 100)
!91 = !DIEnumerator(name: "P9_RVERSION", value: 101)
!92 = !DIEnumerator(name: "P9_TAUTH", value: 102)
!93 = !DIEnumerator(name: "P9_RAUTH", value: 103)
!94 = !DIEnumerator(name: "P9_TATTACH", value: 104)
!95 = !DIEnumerator(name: "P9_RATTACH", value: 105)
!96 = !DIEnumerator(name: "P9_TERROR", value: 106)
!97 = !DIEnumerator(name: "P9_RERROR", value: 107)
!98 = !DIEnumerator(name: "P9_TFLUSH", value: 108)
!99 = !DIEnumerator(name: "P9_RFLUSH", value: 109)
!100 = !DIEnumerator(name: "P9_TWALK", value: 110)
!101 = !DIEnumerator(name: "P9_RWALK", value: 111)
!102 = !DIEnumerator(name: "P9_TOPEN", value: 112)
!103 = !DIEnumerator(name: "P9_ROPEN", value: 113)
!104 = !DIEnumerator(name: "P9_TCREATE", value: 114)
!105 = !DIEnumerator(name: "P9_RCREATE", value: 115)
!106 = !DIEnumerator(name: "P9_TREAD", value: 116)
!107 = !DIEnumerator(name: "P9_RREAD", value: 117)
!108 = !DIEnumerator(name: "P9_TWRITE", value: 118)
!109 = !DIEnumerator(name: "P9_RWRITE", value: 119)
!110 = !DIEnumerator(name: "P9_TCLUNK", value: 120)
!111 = !DIEnumerator(name: "P9_RCLUNK", value: 121)
!112 = !DIEnumerator(name: "P9_TREMOVE", value: 122)
!113 = !DIEnumerator(name: "P9_RREMOVE", value: 123)
!114 = !DIEnumerator(name: "P9_TSTAT", value: 124)
!115 = !DIEnumerator(name: "P9_RSTAT", value: 125)
!116 = !DIEnumerator(name: "P9_TWSTAT", value: 126)
!117 = !DIEnumerator(name: "P9_RWSTAT", value: 127)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "p9_proto_versions", file: !40, line: 25, baseType: !41, size: 32, elements: !119)
!119 = !{!120, !121, !122}
!120 = !DIEnumerator(name: "p9_proto_legacy", value: 0)
!121 = !DIEnumerator(name: "p9_proto_2000u", value: 1)
!122 = !DIEnumerator(name: "p9_proto_2000L", value: 2)
!123 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !124, line: 10, baseType: !41, size: 32, elements: !125)
!124 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!125 = !{!126, !127}
!126 = !DIEnumerator(name: "false", value: 0)
!127 = !DIEnumerator(name: "true", value: 1)
!128 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !129, line: 364, baseType: !41, size: 32, elements: !130)
!129 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!130 = !{!131, !132, !133, !134, !135, !136, !137}
!131 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!132 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!133 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!134 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!135 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!136 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!137 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!138 = !{!139, !145, !146, !147, !149, !151, !152, !153, !154, !156, !157, !158, !144, !161, !162, !165, !172, !181, !41, !159}
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !140, line: 61, baseType: !141)
!140 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !142, line: 72, baseType: !143)
!142 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !142, line: 16, baseType: !144)
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !148, line: 36, baseType: !149)
!148 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !150, line: 24, baseType: !145)
!150 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !148, line: 38, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !150, line: 27, baseType: !41)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le64", file: !148, line: 40, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !150, line: 31, baseType: !155)
!155 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!156 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !140, line: 154, baseType: !41)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !140, line: 110, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !160, line: 21, baseType: !152)
!160 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !167, line: 26, size: 192, elements: !168)
!167 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!168 = !{!169, !170, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !166, file: !167, line: 27, baseType: !146, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !166, file: !167, line: 28, baseType: !146, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !166, file: !167, line: 29, baseType: !156, size: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !175, line: 19, size: 64, elements: !176)
!175 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !174, file: !175, line: 19, baseType: !178, size: 64)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 1)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!182 = !{!0, !7, !12, !17, !19, !24, !26, !28, !33, !35, !183, !188, !190, !192, !194, !196, !198, !203, !205, !207, !209, !211, !213, !219, !224, !226, !232, !361}
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !186)
!186 = !{!187}
!187 = !DISubrange(count: 2)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !2, line: 589, type: !14, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !3, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 612, type: !185, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 631, type: !185, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 653, type: !185, isLocal: true, isDefinition: true)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(scope: null, file: !2, line: 666, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 10)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !2, line: 730, type: !185, isLocal: true, isDefinition: true)
!205 = !DIGlobalVariableExpression(var: !206, expr: !DIExpression())
!206 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_p9stat_read298", scope: !37, file: !2, line: 739, type: !146, isLocal: true, isDefinition: true)
!207 = !DIGlobalVariableExpression(var: !208, expr: !DIExpression())
!208 = distinct !DIGlobalVariable(scope: null, file: !2, line: 744, type: !14, isLocal: true, isDefinition: true)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 781, type: !30, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_p9dirent_read299", scope: !37, file: !2, line: 801, type: !146, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !215, line: 249, type: !216, isLocal: true, isDefinition: true)
!215 = !DIFile(filename: "./include/linux/thread_info.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "06f9445c8b1c109b1518e1d3e0c69f3e")
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !217)
!217 = !{!218}
!218 = !DISubrange(count: 28)
!219 = !DIGlobalVariableExpression(var: !220, expr: !DIExpression())
!220 = distinct !DIGlobalVariable(scope: null, file: !2, line: 488, type: !221, isLocal: true, isDefinition: true)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !222)
!222 = !{!223}
!223 = !DISubrange(count: 21)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !129, line: 480, type: !221, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !228, line: 172, type: !229, isLocal: true, isDefinition: true)
!228 = !DIFile(filename: "./include/trace/events/9p.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "eea2197e274c5570a15f2afa5baaadd9")
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 26)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_9p_protocol_dump247", scope: !234, file: !228, line: 172, type: !146, isLocal: true, isDefinition: true)
!234 = distinct !DISubprogram(name: "trace_9p_protocol_dump", scope: !228, file: !228, line: 172, type: !235, scopeLine: 172, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !335)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !237, !323}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_client", file: !40, line: 102, size: 1408, elements: !239)
!239 = !{!240, !279, !280, !281, !284, !285, !286, !290, !305, !318, !319}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !238, file: !40, line: 103, baseType: !241, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !242, line: 29, baseType: !243)
!242 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !242, line: 17, size: 32, elements: !244)
!244 = !{!245}
!245 = !DIDerivedType(tag: DW_TAG_member, scope: !243, file: !242, line: 18, baseType: !246, size: 32)
!246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !243, file: !242, line: 18, size: 32, elements: !247)
!247 = !{!248}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !246, file: !242, line: 19, baseType: !249, size: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !250, line: 14, size: 32, elements: !251)
!250 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!251 = !{!252}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !249, file: !250, line: 15, baseType: !253, size: 32)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !254, line: 44, baseType: !255)
!254 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !254, line: 14, size: 32, elements: !256)
!256 = !{!257}
!257 = !DIDerivedType(tag: DW_TAG_member, scope: !255, file: !254, line: 15, baseType: !258, size: 32)
!258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !255, file: !254, line: 15, size: 32, elements: !259)
!259 = !{!260, !265, !273}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !258, file: !254, line: 16, baseType: !261, size: 32)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !140, line: 174, baseType: !262)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !140, line: 172, size: 32, elements: !263)
!263 = !{!264}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !262, file: !140, line: 173, baseType: !156, size: 32)
!265 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 24, baseType: !266, size: 16)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 24, size: 16, elements: !267)
!267 = !{!268, !272}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !266, file: !254, line: 25, baseType: !269, size: 8)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !160, line: 17, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !150, line: 21, baseType: !271)
!271 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !266, file: !254, line: 26, baseType: !269, size: 8, offset: 8)
!273 = !DIDerivedType(tag: DW_TAG_member, scope: !258, file: !254, line: 28, baseType: !274, size: 32)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !258, file: !254, line: 28, size: 32, elements: !275)
!275 = !{!276, !278}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !274, file: !254, line: 29, baseType: !277, size: 16)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !160, line: 19, baseType: !149)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !274, file: !254, line: 30, baseType: !277, size: 16, offset: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "msize", scope: !238, file: !40, line: 104, baseType: !41, size: 32, offset: 32)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "proto_version", scope: !238, file: !40, line: 105, baseType: !271, size: 8, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "trans_mod", scope: !238, file: !40, line: 106, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DICompositeType(tag: DW_TAG_structure_type, name: "p9_trans_module", file: !40, line: 106, flags: DIFlagFwdDecl)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !238, file: !40, line: 107, baseType: !39, size: 32, offset: 192)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "trans", scope: !238, file: !40, line: 108, baseType: !146, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "fcall_cache", scope: !238, file: !40, line: 109, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !289, line: 11, flags: DIFlagFwdDecl)
!289 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "trans_opts", scope: !238, file: !40, line: 121, baseType: !291, size: 64, offset: 384)
!291 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !40, line: 111, size: 64, elements: !292)
!292 = !{!293, !298}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !291, file: !40, line: 115, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !40, line: 112, size: 64, elements: !295)
!295 = !{!296, !297}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "rfd", scope: !294, file: !40, line: 113, baseType: !156, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "wfd", scope: !294, file: !40, line: 114, baseType: !156, size: 32, offset: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "tcp", scope: !291, file: !40, line: 120, baseType: !299, size: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !291, file: !40, line: 116, size: 32, elements: !300)
!300 = !{!301, !302}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !299, file: !40, line: 117, baseType: !277, size: 16)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "privport", scope: !299, file: !40, line: 118, baseType: !303, size: 8, offset: 16)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !140, line: 35, baseType: !304)
!304 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "fids", scope: !238, file: !40, line: 123, baseType: !306, size: 192, offset: 448)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !307, line: 19, size: 192, elements: !308)
!307 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!308 = !{!309, !316, !317}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !306, file: !307, line: 20, baseType: !310, size: 128)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !311, line: 296, size: 128, elements: !312)
!311 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!312 = !{!313, !314, !315}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !310, file: !311, line: 297, baseType: !241, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !310, file: !311, line: 299, baseType: !157, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !310, file: !311, line: 300, baseType: !146, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !306, file: !307, line: 21, baseType: !41, size: 32, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !306, file: !307, line: 22, baseType: !41, size: 32, offset: 160)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "reqs", scope: !238, file: !40, line: 124, baseType: !306, size: 192, offset: 640)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !40, line: 126, baseType: !320, size: 520, offset: 832)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 65)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_fcall", file: !48, line: 549, size: 384, elements: !325)
!325 = !{!326, !327, !328, !329, !330, !331, !332, !334}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !48, line: 550, baseType: !159, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !324, file: !48, line: 551, baseType: !269, size: 8, offset: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !324, file: !48, line: 552, baseType: !277, size: 16, offset: 48)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !324, file: !48, line: 554, baseType: !139, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !324, file: !48, line: 555, baseType: !139, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !324, file: !48, line: 557, baseType: !287, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "sdata", scope: !324, file: !48, line: 558, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "zc", scope: !324, file: !48, line: 559, baseType: !303, size: 8, offset: 320)
!335 = !{!336, !337, !338, !341, !344, !348, !350, !353, !356, !358, !359}
!336 = !DILocalVariable(name: "clnt", arg: 1, scope: !234, file: !228, line: 172, type: !237)
!337 = !DILocalVariable(name: "pdu", arg: 2, scope: !234, file: !228, line: 172, type: !323)
!338 = !DILocalVariable(name: "__idx", scope: !339, file: !228, line: 172, type: !156)
!339 = distinct !DILexicalBlock(scope: !340, file: !228, line: 172, column: 1)
!340 = distinct !DILexicalBlock(scope: !234, file: !228, line: 172, column: 1)
!341 = !DILocalVariable(name: "pscr_ret__", scope: !342, file: !228, line: 172, type: !156)
!342 = distinct !DILexicalBlock(scope: !343, file: !228, line: 172, column: 1)
!343 = distinct !DILexicalBlock(scope: !339, file: !228, line: 172, column: 1)
!344 = !DILocalVariable(name: "__vpp_verify", scope: !345, file: !228, line: 172, type: !346)
!345 = distinct !DILexicalBlock(scope: !342, file: !228, line: 172, column: 1)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!348 = !DILocalVariable(name: "pfo_val__", scope: !349, file: !228, line: 172, type: !159)
!349 = distinct !DILexicalBlock(scope: !342, file: !228, line: 172, column: 1)
!350 = !DILocalVariable(name: "__ret_warn_on", scope: !351, file: !228, line: 172, type: !156)
!351 = distinct !DILexicalBlock(scope: !352, file: !228, line: 172, column: 1)
!352 = distinct !DILexicalBlock(scope: !339, file: !228, line: 172, column: 1)
!353 = !DILocalVariable(name: "__flags", scope: !354, file: !228, line: 172, type: !156)
!354 = distinct !DILexicalBlock(scope: !355, file: !228, line: 172, column: 1)
!355 = distinct !DILexicalBlock(scope: !351, file: !228, line: 172, column: 1)
!356 = !DILocalVariable(name: "it_func_ptr", scope: !357, file: !228, line: 172, type: !165)
!357 = distinct !DILexicalBlock(scope: !339, file: !228, line: 172, column: 1)
!358 = !DILocalVariable(name: "__data", scope: !357, file: !228, line: 172, type: !146)
!359 = !DILocalVariable(name: "__UNIQUE_ID_rcu245", scope: !360, file: !228, line: 172, type: !165)
!360 = distinct !DILexicalBlock(scope: !357, file: !228, line: 172, column: 1)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace248", scope: !234, file: !228, line: 172, type: !146, isLocal: true, isDefinition: true)
!363 = !{!"rsp"}
!364 = !{i32 7, !"Dwarf Version", i32 5}
!365 = !{i32 2, !"Debug Info Version", i32 3}
!366 = !{i32 1, !"wchar_size", i32 2}
!367 = !{i32 8, !"cf-protection-branch", i32 1}
!368 = !{i32 4, !"function_return_thunk_extern", i32 1}
!369 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!370 = !{i32 1, !"Code Model", i32 2}
!371 = !{i32 1, !"override-stack-alignment", i32 8}
!372 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!373 = distinct !DISubprogram(name: "p9_msg_buf_size", scope: !2, file: !2, line: 43, type: !374, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !385)
!374 = !DISubroutineType(types: !375)
!375 = !{!139, !237, !47, !376, !378}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !380)
!380 = !{!381, !382, !383, !384}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !379, file: !2, baseType: !41, size: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !379, file: !2, baseType: !41, size: 32, offset: 32)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !379, file: !2, baseType: !146, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !379, file: !2, baseType: !146, size: 64, offset: 128)
!385 = !{!386, !387, !388, !389, !390, !392, !393, !394, !395, !398, !399, !401, !402, !404, !405, !408, !409, !410, !412, !417, !418, !420, !422, !423, !425, !429, !430, !433, !435, !436, !438, !439, !441, !443, !444, !450, !452, !453, !455, !457, !458, !460, !461, !463, !464, !466, !467, !469, !470, !472}
!386 = !DILocalVariable(name: "c", arg: 1, scope: !373, file: !2, line: 43, type: !237)
!387 = !DILocalVariable(name: "type", arg: 2, scope: !373, file: !2, line: 43, type: !47)
!388 = !DILocalVariable(name: "fmt", arg: 3, scope: !373, file: !2, line: 44, type: !376)
!389 = !DILocalVariable(name: "ap", arg: 4, scope: !373, file: !2, line: 44, type: !378)
!390 = !DILocalVariable(name: "hdr", scope: !373, file: !2, line: 47, type: !391)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!392 = !DILocalVariable(name: "rerror_size", scope: !373, file: !2, line: 49, type: !391)
!393 = !DILocalVariable(name: "rlerror_size", scope: !373, file: !2, line: 51, type: !391)
!394 = !DILocalVariable(name: "err_size", scope: !373, file: !2, line: 52, type: !391)
!395 = !DILocalVariable(name: "uname", scope: !396, file: !2, line: 73, type: !376)
!396 = distinct !DILexicalBlock(scope: !397, file: !2, line: 72, column: 3)
!397 = distinct !DILexicalBlock(scope: !373, file: !2, line: 58, column: 16)
!398 = !DILocalVariable(name: "aname", scope: !396, file: !2, line: 74, type: !376)
!399 = !DILocalVariable(name: "__UNIQUE_ID___x261", scope: !400, file: !2, line: 76, type: !139)
!400 = distinct !DILexicalBlock(scope: !396, file: !2, line: 76, column: 25)
!401 = !DILocalVariable(name: "__UNIQUE_ID___y262", scope: !400, file: !2, line: 76, type: !139)
!402 = !DILocalVariable(name: "__UNIQUE_ID___x263", scope: !403, file: !2, line: 76, type: !139)
!403 = distinct !DILexicalBlock(scope: !396, file: !2, line: 76, column: 44)
!404 = !DILocalVariable(name: "__UNIQUE_ID___y264", scope: !403, file: !2, line: 76, type: !139)
!405 = !DILocalVariable(name: "i", scope: !406, file: !2, line: 83, type: !407)
!406 = distinct !DILexicalBlock(scope: !397, file: !2, line: 82, column: 3)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint", file: !140, line: 93, baseType: !41)
!408 = !DILocalVariable(name: "nwname", scope: !406, file: !2, line: 83, type: !407)
!409 = !DILocalVariable(name: "wname_all", scope: !406, file: !2, line: 84, type: !139)
!410 = !DILocalVariable(name: "wnames", scope: !406, file: !2, line: 85, type: !411)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!412 = !DILocalVariable(name: "__UNIQUE_ID___x265", scope: !413, file: !2, line: 87, type: !139)
!413 = distinct !DILexicalBlock(scope: !414, file: !2, line: 87, column: 18)
!414 = distinct !DILexicalBlock(scope: !415, file: !2, line: 86, column: 48)
!415 = distinct !DILexicalBlock(scope: !416, file: !2, line: 86, column: 4)
!416 = distinct !DILexicalBlock(scope: !406, file: !2, line: 86, column: 4)
!417 = !DILocalVariable(name: "__UNIQUE_ID___y266", scope: !413, file: !2, line: 87, type: !139)
!418 = !DILocalVariable(name: "nwname", scope: !419, file: !2, line: 97, type: !407)
!419 = distinct !DILexicalBlock(scope: !397, file: !2, line: 96, column: 3)
!420 = !DILocalVariable(name: "__UNIQUE_ID___x267", scope: !421, file: !2, line: 99, type: !139)
!421 = distinct !DILexicalBlock(scope: !419, file: !2, line: 99, column: 11)
!422 = !DILocalVariable(name: "__UNIQUE_ID___y268", scope: !421, file: !2, line: 99, type: !139)
!423 = !DILocalVariable(name: "name", scope: !424, file: !2, line: 105, type: !376)
!424 = distinct !DILexicalBlock(scope: !397, file: !2, line: 104, column: 3)
!425 = !DILocalVariable(name: "__UNIQUE_ID___x269", scope: !426, file: !2, line: 108, type: !139)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 108, column: 22)
!427 = distinct !DILexicalBlock(scope: !428, file: !2, line: 106, column: 45)
!428 = distinct !DILexicalBlock(scope: !424, file: !2, line: 106, column: 8)
!429 = !DILocalVariable(name: "__UNIQUE_ID___y270", scope: !426, file: !2, line: 108, type: !139)
!430 = !DILocalVariable(name: "ext", scope: !431, file: !2, line: 113, type: !376)
!431 = distinct !DILexicalBlock(scope: !432, file: !2, line: 112, column: 5)
!432 = distinct !DILexicalBlock(scope: !428, file: !2, line: 109, column: 11)
!433 = !DILocalVariable(name: "__UNIQUE_ID___x271", scope: !434, file: !2, line: 115, type: !139)
!434 = distinct !DILexicalBlock(scope: !431, file: !2, line: 115, column: 23)
!435 = !DILocalVariable(name: "__UNIQUE_ID___y272", scope: !434, file: !2, line: 115, type: !139)
!436 = !DILocalVariable(name: "__UNIQUE_ID___x273", scope: !437, file: !2, line: 115, type: !139)
!437 = distinct !DILexicalBlock(scope: !431, file: !2, line: 115, column: 49)
!438 = !DILocalVariable(name: "__UNIQUE_ID___y274", scope: !437, file: !2, line: 115, type: !139)
!439 = !DILocalVariable(name: "name", scope: !440, file: !2, line: 123, type: !376)
!440 = distinct !DILexicalBlock(scope: !397, file: !2, line: 122, column: 3)
!441 = !DILocalVariable(name: "__UNIQUE_ID___x275", scope: !442, file: !2, line: 125, type: !139)
!442 = distinct !DILexicalBlock(scope: !440, file: !2, line: 125, column: 21)
!443 = !DILocalVariable(name: "__UNIQUE_ID___y276", scope: !442, file: !2, line: 125, type: !139)
!444 = !DILocalVariable(name: "count", scope: !445, file: !2, line: 133, type: !446)
!445 = distinct !DILexicalBlock(scope: !397, file: !2, line: 132, column: 3)
!446 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !140, line: 104, baseType: !448)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !160, line: 20, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !150, line: 26, baseType: !156)
!450 = !DILocalVariable(name: "__UNIQUE_ID___x277", scope: !451, file: !2, line: 135, type: !139)
!451 = distinct !DILexicalBlock(scope: !445, file: !2, line: 135, column: 11)
!452 = !DILocalVariable(name: "__UNIQUE_ID___y278", scope: !451, file: !2, line: 135, type: !139)
!453 = !DILocalVariable(name: "count", scope: !454, file: !2, line: 142, type: !446)
!454 = distinct !DILexicalBlock(scope: !397, file: !2, line: 141, column: 3)
!455 = !DILocalVariable(name: "oldname", scope: !456, file: !2, line: 150, type: !376)
!456 = distinct !DILexicalBlock(scope: !397, file: !2, line: 149, column: 3)
!457 = !DILocalVariable(name: "newname", scope: !456, file: !2, line: 150, type: !376)
!458 = !DILocalVariable(name: "__UNIQUE_ID___x279", scope: !459, file: !2, line: 155, type: !139)
!459 = distinct !DILexicalBlock(scope: !456, file: !2, line: 155, column: 21)
!460 = !DILocalVariable(name: "__UNIQUE_ID___y280", scope: !459, file: !2, line: 155, type: !139)
!461 = !DILocalVariable(name: "__UNIQUE_ID___x281", scope: !462, file: !2, line: 155, type: !139)
!462 = distinct !DILexicalBlock(scope: !456, file: !2, line: 155, column: 46)
!463 = !DILocalVariable(name: "__UNIQUE_ID___y282", scope: !462, file: !2, line: 155, type: !139)
!464 = !DILocalVariable(name: "name", scope: !465, file: !2, line: 161, type: !376)
!465 = distinct !DILexicalBlock(scope: !397, file: !2, line: 160, column: 3)
!466 = !DILocalVariable(name: "symtgt", scope: !465, file: !2, line: 162, type: !376)
!467 = !DILocalVariable(name: "__UNIQUE_ID___x283", scope: !468, file: !2, line: 164, type: !139)
!468 = distinct !DILexicalBlock(scope: !465, file: !2, line: 164, column: 21)
!469 = !DILocalVariable(name: "__UNIQUE_ID___y284", scope: !468, file: !2, line: 164, type: !139)
!470 = !DILocalVariable(name: "__UNIQUE_ID___x285", scope: !471, file: !2, line: 164, type: !139)
!471 = distinct !DILexicalBlock(scope: !465, file: !2, line: 164, column: 39)
!472 = !DILocalVariable(name: "__UNIQUE_ID___y286", scope: !471, file: !2, line: 164, type: !139)
!473 = !DILocation(line: 43, column: 42, scope: !373)
!474 = !DILocation(line: 43, column: 59, scope: !373)
!475 = !DILocation(line: 44, column: 16, scope: !373)
!476 = !DILocation(line: 44, column: 29, scope: !373)
!477 = !DILocation(line: 47, column: 2, scope: !373)
!478 = !DILocation(line: 47, column: 12, scope: !373)
!479 = !DILocation(line: 49, column: 2, scope: !373)
!480 = !DILocation(line: 49, column: 12, scope: !373)
!481 = !DILocation(line: 51, column: 2, scope: !373)
!482 = !DILocation(line: 51, column: 12, scope: !373)
!483 = !DILocation(line: 52, column: 2, scope: !373)
!484 = !DILocation(line: 52, column: 12, scope: !373)
!485 = !DILocation(line: 53, column: 3, scope: !373)
!486 = !DILocation(line: 53, column: 6, scope: !373)
!487 = !DILocation(line: 53, column: 20, scope: !373)
!488 = !DILocation(line: 58, column: 10, scope: !373)
!489 = !DILocation(line: 58, column: 2, scope: !373)
!490 = !DILocation(line: 65, column: 3, scope: !397)
!491 = !DILocation(line: 65, column: 3, scope: !492)
!492 = distinct !DILexicalBlock(scope: !397, file: !2, line: 65, column: 3)
!493 = !DILocation(line: 65, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !492, file: !2, line: 65, column: 3)
!495 = !DILocation(line: 65, column: 3, scope: !496)
!496 = distinct !DILexicalBlock(scope: !492, file: !2, line: 65, column: 3)
!497 = !{i64 2153599717, i64 2153599746, i64 2153599792, i64 2153599850, i64 2153599904, i64 2153599958, i64 2153600013, i64 2153600044}
!498 = !DILocation(line: 69, column: 3, scope: !397)
!499 = !DILocation(line: 69, column: 3, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !2, line: 69, column: 3)
!501 = distinct !DILexicalBlock(scope: !397, file: !2, line: 69, column: 3)
!502 = !DILocation(line: 69, column: 3, scope: !501)
!503 = !DILocation(line: 69, column: 3, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !2, line: 69, column: 3)
!505 = !DILocation(line: 69, column: 3, scope: !506)
!506 = distinct !DILexicalBlock(scope: !504, file: !2, line: 69, column: 3)
!507 = !DILocation(line: 69, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !2, line: 69, column: 3)
!509 = !{i64 2153600714, i64 2153600743, i64 2153600789, i64 2153600847, i64 2153600901, i64 2153600955, i64 2153601010, i64 2153601041}
!510 = !DILocation(line: 70, column: 3, scope: !397)
!511 = !DILocation(line: 71, column: 3, scope: !397)
!512 = !DILocation(line: 73, column: 4, scope: !396)
!513 = !DILocation(line: 73, column: 16, scope: !396)
!514 = !DILocation(line: 73, column: 24, scope: !396)
!515 = !DILocation(line: 74, column: 4, scope: !396)
!516 = !DILocation(line: 74, column: 16, scope: !396)
!517 = !DILocation(line: 74, column: 24, scope: !396)
!518 = !DILocation(line: 76, column: 25, scope: !400)
!519 = !DILocation(line: 76, column: 25, scope: !396)
!520 = !DILocation(line: 76, column: 23, scope: !396)
!521 = !DILocation(line: 76, column: 44, scope: !403)
!522 = !DILocation(line: 76, column: 44, scope: !396)
!523 = !DILocation(line: 76, column: 42, scope: !396)
!524 = !DILocation(line: 76, column: 61, scope: !396)
!525 = !DILocation(line: 76, column: 4, scope: !396)
!526 = !DILocation(line: 77, column: 3, scope: !397)
!527 = !DILocation(line: 79, column: 3, scope: !397)
!528 = !DILocation(line: 79, column: 3, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !2, line: 79, column: 3)
!530 = distinct !DILexicalBlock(scope: !397, file: !2, line: 79, column: 3)
!531 = !DILocation(line: 79, column: 3, scope: !530)
!532 = !DILocation(line: 79, column: 3, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !2, line: 79, column: 3)
!534 = !DILocation(line: 79, column: 3, scope: !535)
!535 = distinct !DILexicalBlock(scope: !533, file: !2, line: 79, column: 3)
!536 = !DILocation(line: 79, column: 3, scope: !537)
!537 = distinct !DILexicalBlock(scope: !533, file: !2, line: 79, column: 3)
!538 = !{i64 2153626623, i64 2153626652, i64 2153626698, i64 2153626756, i64 2153626810, i64 2153626864, i64 2153626919, i64 2153626950}
!539 = !DILocation(line: 80, column: 3, scope: !397)
!540 = !DILocation(line: 81, column: 3, scope: !397)
!541 = !DILocation(line: 83, column: 4, scope: !406)
!542 = !DILocation(line: 83, column: 9, scope: !406)
!543 = !DILocation(line: 83, column: 12, scope: !406)
!544 = !DILocation(line: 83, column: 21, scope: !406)
!545 = !DILocation(line: 84, column: 4, scope: !406)
!546 = !DILocation(line: 84, column: 11, scope: !406)
!547 = !DILocation(line: 85, column: 4, scope: !406)
!548 = !DILocation(line: 85, column: 17, scope: !406)
!549 = !DILocation(line: 85, column: 26, scope: !406)
!550 = !DILocation(line: 86, column: 11, scope: !416)
!551 = !DILocation(line: 86, column: 26, scope: !416)
!552 = !DILocation(line: 86, column: 9, scope: !416)
!553 = !DILocation(line: 86, column: 31, scope: !415)
!554 = !DILocation(line: 86, column: 35, scope: !415)
!555 = !DILocation(line: 86, column: 33, scope: !415)
!556 = !DILocation(line: 86, column: 4, scope: !416)
!557 = !DILocation(line: 87, column: 18, scope: !413)
!558 = !DILocation(line: 87, column: 18, scope: !414)
!559 = !DILocation(line: 87, column: 15, scope: !414)
!560 = !DILocation(line: 88, column: 4, scope: !414)
!561 = !DILocation(line: 86, column: 43, scope: !415)
!562 = !DILocation(line: 86, column: 4, scope: !415)
!563 = distinct !{!563, !556, !564, !565, !566}
!564 = !DILocation(line: 88, column: 4, scope: !416)
!565 = !{!"llvm.loop.mustprogress"}
!566 = !{!"llvm.loop.unroll.disable"}
!567 = !DILocation(line: 90, column: 29, scope: !406)
!568 = !DILocation(line: 90, column: 27, scope: !406)
!569 = !DILocation(line: 90, column: 4, scope: !406)
!570 = !DILocation(line: 91, column: 3, scope: !397)
!571 = !DILocation(line: 93, column: 3, scope: !397)
!572 = !DILocation(line: 93, column: 3, scope: !573)
!573 = distinct !DILexicalBlock(scope: !574, file: !2, line: 93, column: 3)
!574 = distinct !DILexicalBlock(scope: !397, file: !2, line: 93, column: 3)
!575 = !DILocation(line: 93, column: 3, scope: !574)
!576 = !DILocation(line: 93, column: 3, scope: !577)
!577 = distinct !DILexicalBlock(scope: !573, file: !2, line: 93, column: 3)
!578 = !DILocation(line: 93, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !577, file: !2, line: 93, column: 3)
!580 = !DILocation(line: 93, column: 3, scope: !581)
!581 = distinct !DILexicalBlock(scope: !577, file: !2, line: 93, column: 3)
!582 = !{i64 2153640730, i64 2153640759, i64 2153640805, i64 2153640863, i64 2153640917, i64 2153640971, i64 2153641026, i64 2153641057}
!583 = !DILocation(line: 94, column: 3, scope: !397)
!584 = !DILocation(line: 95, column: 3, scope: !397)
!585 = !DILocation(line: 97, column: 4, scope: !419)
!586 = !DILocation(line: 97, column: 9, scope: !419)
!587 = !DILocation(line: 97, column: 18, scope: !419)
!588 = !DILocation(line: 99, column: 11, scope: !421)
!589 = !DILocation(line: 99, column: 11, scope: !419)
!590 = !DILocation(line: 99, column: 4, scope: !419)
!591 = !DILocation(line: 100, column: 3, scope: !397)
!592 = !DILocation(line: 102, column: 3, scope: !397)
!593 = !DILocation(line: 102, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !2, line: 102, column: 3)
!595 = distinct !DILexicalBlock(scope: !397, file: !2, line: 102, column: 3)
!596 = !DILocation(line: 102, column: 3, scope: !595)
!597 = !DILocation(line: 102, column: 3, scope: !598)
!598 = distinct !DILexicalBlock(scope: !594, file: !2, line: 102, column: 3)
!599 = !DILocation(line: 102, column: 3, scope: !600)
!600 = distinct !DILexicalBlock(scope: !598, file: !2, line: 102, column: 3)
!601 = !DILocation(line: 102, column: 3, scope: !602)
!602 = distinct !DILexicalBlock(scope: !598, file: !2, line: 102, column: 3)
!603 = !{i64 2153652748, i64 2153652777, i64 2153652823, i64 2153652881, i64 2153652935, i64 2153652989, i64 2153653044, i64 2153653075}
!604 = !DILocation(line: 103, column: 3, scope: !397)
!605 = !DILocation(line: 105, column: 4, scope: !424)
!606 = !DILocation(line: 105, column: 16, scope: !424)
!607 = !DILocation(line: 105, column: 23, scope: !424)
!608 = !DILocation(line: 106, column: 8, scope: !428)
!609 = !DILocation(line: 106, column: 11, scope: !428)
!610 = !DILocation(line: 106, column: 25, scope: !428)
!611 = !DILocation(line: 106, column: 8, scope: !424)
!612 = !DILocation(line: 108, column: 22, scope: !426)
!613 = !DILocation(line: 108, column: 22, scope: !427)
!614 = !DILocation(line: 108, column: 20, scope: !427)
!615 = !DILocation(line: 108, column: 38, scope: !427)
!616 = !DILocation(line: 108, column: 42, scope: !427)
!617 = !DILocation(line: 108, column: 5, scope: !427)
!618 = !DILocation(line: 110, column: 5, scope: !432)
!619 = !DILocation(line: 111, column: 5, scope: !432)
!620 = !DILocation(line: 113, column: 6, scope: !431)
!621 = !DILocation(line: 113, column: 18, scope: !431)
!622 = !DILocation(line: 113, column: 24, scope: !431)
!623 = !DILocation(line: 115, column: 23, scope: !434)
!624 = !DILocation(line: 115, column: 23, scope: !431)
!625 = !DILocation(line: 115, column: 21, scope: !431)
!626 = !DILocation(line: 115, column: 39, scope: !431)
!627 = !DILocation(line: 115, column: 43, scope: !431)
!628 = !DILocation(line: 115, column: 49, scope: !437)
!629 = !DILocation(line: 115, column: 49, scope: !431)
!630 = !DILocation(line: 115, column: 47, scope: !431)
!631 = !DILocation(line: 115, column: 6, scope: !431)
!632 = !DILocation(line: 116, column: 5, scope: !432)
!633 = !DILocation(line: 118, column: 3, scope: !397)
!634 = !DILocation(line: 120, column: 3, scope: !397)
!635 = !DILocation(line: 120, column: 3, scope: !636)
!636 = distinct !DILexicalBlock(scope: !637, file: !2, line: 120, column: 3)
!637 = distinct !DILexicalBlock(scope: !397, file: !2, line: 120, column: 3)
!638 = !DILocation(line: 120, column: 3, scope: !637)
!639 = !DILocation(line: 120, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !636, file: !2, line: 120, column: 3)
!641 = !DILocation(line: 120, column: 3, scope: !642)
!642 = distinct !DILexicalBlock(scope: !640, file: !2, line: 120, column: 3)
!643 = !DILocation(line: 120, column: 3, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !2, line: 120, column: 3)
!645 = !{i64 2153690486, i64 2153690515, i64 2153690561, i64 2153690619, i64 2153690673, i64 2153690727, i64 2153690782, i64 2153690813}
!646 = !DILocation(line: 121, column: 3, scope: !397)
!647 = !DILocation(line: 123, column: 4, scope: !440)
!648 = !DILocation(line: 123, column: 16, scope: !440)
!649 = !DILocation(line: 123, column: 23, scope: !440)
!650 = !DILocation(line: 125, column: 21, scope: !442)
!651 = !DILocation(line: 125, column: 21, scope: !440)
!652 = !DILocation(line: 125, column: 19, scope: !440)
!653 = !DILocation(line: 125, column: 37, scope: !440)
!654 = !DILocation(line: 125, column: 41, scope: !440)
!655 = !DILocation(line: 125, column: 45, scope: !440)
!656 = !DILocation(line: 125, column: 4, scope: !440)
!657 = !DILocation(line: 126, column: 3, scope: !397)
!658 = !DILocation(line: 129, column: 3, scope: !397)
!659 = !DILocation(line: 129, column: 3, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 129, column: 3)
!661 = distinct !DILexicalBlock(scope: !397, file: !2, line: 129, column: 3)
!662 = !DILocation(line: 129, column: 3, scope: !661)
!663 = !DILocation(line: 129, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !660, file: !2, line: 129, column: 3)
!665 = !DILocation(line: 129, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !664, file: !2, line: 129, column: 3)
!667 = !DILocation(line: 129, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !664, file: !2, line: 129, column: 3)
!669 = !{i64 2153703789, i64 2153703818, i64 2153703864, i64 2153703922, i64 2153703976, i64 2153704030, i64 2153704085, i64 2153704116}
!670 = !DILocation(line: 130, column: 3, scope: !397)
!671 = !DILocation(line: 131, column: 3, scope: !397)
!672 = !DILocation(line: 133, column: 4, scope: !445)
!673 = !DILocation(line: 133, column: 18, scope: !445)
!674 = !DILocation(line: 133, column: 26, scope: !445)
!675 = !DILocation(line: 135, column: 11, scope: !451)
!676 = !DILocation(line: 135, column: 11, scope: !445)
!677 = !DILocation(line: 135, column: 4, scope: !445)
!678 = !DILocation(line: 136, column: 3, scope: !397)
!679 = !DILocation(line: 138, column: 3, scope: !397)
!680 = !DILocation(line: 138, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !2, line: 138, column: 3)
!682 = distinct !DILexicalBlock(scope: !397, file: !2, line: 138, column: 3)
!683 = !DILocation(line: 138, column: 3, scope: !682)
!684 = !DILocation(line: 138, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !2, line: 138, column: 3)
!686 = !DILocation(line: 138, column: 3, scope: !687)
!687 = distinct !DILexicalBlock(scope: !685, file: !2, line: 138, column: 3)
!688 = !DILocation(line: 138, column: 3, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !2, line: 138, column: 3)
!690 = !{i64 2153719429, i64 2153719458, i64 2153719504, i64 2153719562, i64 2153719616, i64 2153719670, i64 2153719725, i64 2153719756}
!691 = !DILocation(line: 139, column: 3, scope: !397)
!692 = !DILocation(line: 140, column: 3, scope: !397)
!693 = !DILocation(line: 142, column: 4, scope: !454)
!694 = !DILocation(line: 142, column: 18, scope: !454)
!695 = !DILocation(line: 142, column: 26, scope: !454)
!696 = !DILocation(line: 144, column: 29, scope: !454)
!697 = !DILocation(line: 144, column: 27, scope: !454)
!698 = !DILocation(line: 144, column: 11, scope: !454)
!699 = !DILocation(line: 144, column: 4, scope: !454)
!700 = !DILocation(line: 145, column: 3, scope: !397)
!701 = !DILocation(line: 147, column: 3, scope: !397)
!702 = !DILocation(line: 147, column: 3, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !2, line: 147, column: 3)
!704 = distinct !DILexicalBlock(scope: !397, file: !2, line: 147, column: 3)
!705 = !DILocation(line: 147, column: 3, scope: !704)
!706 = !DILocation(line: 147, column: 3, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !2, line: 147, column: 3)
!708 = !DILocation(line: 147, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !707, file: !2, line: 147, column: 3)
!710 = !DILocation(line: 147, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !707, file: !2, line: 147, column: 3)
!712 = !{i64 2153720525, i64 2153720554, i64 2153720600, i64 2153720658, i64 2153720712, i64 2153720766, i64 2153720821, i64 2153720852}
!713 = !DILocation(line: 148, column: 3, scope: !397)
!714 = !DILocation(line: 150, column: 4, scope: !456)
!715 = !DILocation(line: 150, column: 16, scope: !456)
!716 = !DILocation(line: 150, column: 26, scope: !456)
!717 = !DILocation(line: 151, column: 14, scope: !456)
!718 = !DILocation(line: 151, column: 12, scope: !456)
!719 = !DILocation(line: 152, column: 4, scope: !456)
!720 = !DILocation(line: 153, column: 14, scope: !456)
!721 = !DILocation(line: 153, column: 12, scope: !456)
!722 = !DILocation(line: 155, column: 21, scope: !459)
!723 = !DILocation(line: 155, column: 21, scope: !456)
!724 = !DILocation(line: 155, column: 19, scope: !456)
!725 = !DILocation(line: 155, column: 40, scope: !456)
!726 = !DILocation(line: 155, column: 46, scope: !462)
!727 = !DILocation(line: 155, column: 46, scope: !456)
!728 = !DILocation(line: 155, column: 44, scope: !456)
!729 = !DILocation(line: 155, column: 4, scope: !456)
!730 = !DILocation(line: 156, column: 3, scope: !397)
!731 = !DILocation(line: 158, column: 3, scope: !397)
!732 = !DILocation(line: 158, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !2, line: 158, column: 3)
!734 = distinct !DILexicalBlock(scope: !397, file: !2, line: 158, column: 3)
!735 = !DILocation(line: 158, column: 3, scope: !734)
!736 = !DILocation(line: 158, column: 3, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !2, line: 158, column: 3)
!738 = !DILocation(line: 158, column: 3, scope: !739)
!739 = distinct !DILexicalBlock(scope: !737, file: !2, line: 158, column: 3)
!740 = !DILocation(line: 158, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !2, line: 158, column: 3)
!742 = !{i64 2153747029, i64 2153747058, i64 2153747104, i64 2153747162, i64 2153747216, i64 2153747270, i64 2153747325, i64 2153747356}
!743 = !DILocation(line: 159, column: 3, scope: !397)
!744 = !DILocation(line: 161, column: 4, scope: !465)
!745 = !DILocation(line: 161, column: 16, scope: !465)
!746 = !DILocation(line: 161, column: 23, scope: !465)
!747 = !DILocation(line: 162, column: 4, scope: !465)
!748 = !DILocation(line: 162, column: 16, scope: !465)
!749 = !DILocation(line: 162, column: 25, scope: !465)
!750 = !DILocation(line: 164, column: 21, scope: !468)
!751 = !DILocation(line: 164, column: 21, scope: !465)
!752 = !DILocation(line: 164, column: 19, scope: !465)
!753 = !DILocation(line: 164, column: 39, scope: !471)
!754 = !DILocation(line: 164, column: 39, scope: !465)
!755 = !DILocation(line: 164, column: 37, scope: !465)
!756 = !DILocation(line: 164, column: 57, scope: !465)
!757 = !DILocation(line: 164, column: 4, scope: !465)
!758 = !DILocation(line: 165, column: 3, scope: !397)
!759 = !DILocation(line: 168, column: 3, scope: !397)
!760 = !DILocation(line: 170, column: 3, scope: !397)
!761 = !DILocation(line: 184, column: 3, scope: !397)
!762 = !DILocation(line: 188, column: 3, scope: !397)
!763 = !DILocation(line: 191, column: 1, scope: !373)
!764 = !DISubprogram(name: "strcmp", scope: !765, file: !765, line: 88, type: !766, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!765 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!766 = !DISubroutineType(types: !767)
!767 = !{!156, !376, !376}
!768 = !DISubprogram(name: "strlen", scope: !765, file: !765, line: 128, type: !769, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!769 = !DISubroutineType(types: !770)
!770 = !{!144, !376}
!771 = distinct !DISubprogram(name: "p9stat_free", scope: !2, file: !2, line: 196, type: !772, scopeLine: 197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !813)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !774}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_wstat", file: !48, line: 391, size: 832, elements: !776)
!776 = !{!777, !778, !779, !780, !787, !788, !789, !790, !791, !792, !793, !794, !795, !797, !805, !812}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !775, file: !48, line: 392, baseType: !277, size: 16)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !775, file: !48, line: 393, baseType: !277, size: 16, offset: 16)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !775, file: !48, line: 394, baseType: !159, size: 32, offset: 32)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !775, file: !48, line: 395, baseType: !781, size: 128, offset: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_qid", file: !48, line: 363, size: 128, elements: !782)
!782 = !{!783, !784, !785}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !781, file: !48, line: 364, baseType: !269, size: 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !781, file: !48, line: 365, baseType: !159, size: 32, offset: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !781, file: !48, line: 366, baseType: !786, size: 64, offset: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !160, line: 23, baseType: !154)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !775, file: !48, line: 396, baseType: !159, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "atime", scope: !775, file: !48, line: 397, baseType: !159, size: 32, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mtime", scope: !775, file: !48, line: 398, baseType: !159, size: 32, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !775, file: !48, line: 399, baseType: !786, size: 64, offset: 320)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !775, file: !48, line: 400, baseType: !376, size: 64, offset: 384)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !775, file: !48, line: 401, baseType: !376, size: 64, offset: 448)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !775, file: !48, line: 402, baseType: !376, size: 64, offset: 512)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "muid", scope: !775, file: !48, line: 403, baseType: !376, size: 64, offset: 576)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !775, file: !48, line: 404, baseType: !796, size: 64, offset: 640)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "n_uid", scope: !775, file: !48, line: 405, baseType: !798, size: 32, offset: 704)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !799, line: 23, baseType: !800)
!799 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 21, size: 32, elements: !801)
!801 = !{!802}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !800, file: !799, line: 22, baseType: !803, size: 32)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !140, line: 37, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !142, line: 49, baseType: !41)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "n_gid", scope: !775, file: !48, line: 406, baseType: !806, size: 32, offset: 736)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !799, line: 28, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !799, line: 26, size: 32, elements: !808)
!808 = !{!809}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !807, file: !799, line: 27, baseType: !810, size: 32)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !140, line: 38, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !142, line: 50, baseType: !41)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "n_muid", scope: !775, file: !48, line: 407, baseType: !798, size: 32, offset: 768)
!813 = !{!814}
!814 = !DILocalVariable(name: "stbuf", arg: 1, scope: !771, file: !2, line: 196, type: !774)
!815 = !DILocation(line: 196, column: 35, scope: !771)
!816 = !DILocation(line: 198, column: 8, scope: !771)
!817 = !DILocation(line: 198, column: 15, scope: !771)
!818 = !DILocation(line: 198, column: 2, scope: !771)
!819 = !DILocation(line: 199, column: 2, scope: !771)
!820 = !DILocation(line: 199, column: 9, scope: !771)
!821 = !DILocation(line: 199, column: 14, scope: !771)
!822 = !DILocation(line: 200, column: 8, scope: !771)
!823 = !DILocation(line: 200, column: 15, scope: !771)
!824 = !DILocation(line: 200, column: 2, scope: !771)
!825 = !DILocation(line: 201, column: 2, scope: !771)
!826 = !DILocation(line: 201, column: 9, scope: !771)
!827 = !DILocation(line: 201, column: 13, scope: !771)
!828 = !DILocation(line: 202, column: 8, scope: !771)
!829 = !DILocation(line: 202, column: 15, scope: !771)
!830 = !DILocation(line: 202, column: 2, scope: !771)
!831 = !DILocation(line: 203, column: 2, scope: !771)
!832 = !DILocation(line: 203, column: 9, scope: !771)
!833 = !DILocation(line: 203, column: 13, scope: !771)
!834 = !DILocation(line: 204, column: 8, scope: !771)
!835 = !DILocation(line: 204, column: 15, scope: !771)
!836 = !DILocation(line: 204, column: 2, scope: !771)
!837 = !DILocation(line: 205, column: 2, scope: !771)
!838 = !DILocation(line: 205, column: 9, scope: !771)
!839 = !DILocation(line: 205, column: 14, scope: !771)
!840 = !DILocation(line: 206, column: 8, scope: !771)
!841 = !DILocation(line: 206, column: 15, scope: !771)
!842 = !DILocation(line: 206, column: 2, scope: !771)
!843 = !DILocation(line: 207, column: 2, scope: !771)
!844 = !DILocation(line: 207, column: 9, scope: !771)
!845 = !DILocation(line: 207, column: 19, scope: !771)
!846 = !DILocation(line: 208, column: 1, scope: !771)
!847 = !DISubprogram(name: "kfree", scope: !129, file: !129, line: 227, type: !848, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !346}
!850 = distinct !DISubprogram(name: "pdu_read", scope: !2, file: !2, line: 211, type: !851, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !853)
!851 = !DISubroutineType(types: !852)
!852 = !{!139, !323, !146, !139}
!853 = !{!854, !855, !856, !857, !858, !860}
!854 = !DILocalVariable(name: "pdu", arg: 1, scope: !850, file: !2, line: 211, type: !323)
!855 = !DILocalVariable(name: "data", arg: 2, scope: !850, file: !2, line: 211, type: !146)
!856 = !DILocalVariable(name: "size", arg: 3, scope: !850, file: !2, line: 211, type: !139)
!857 = !DILocalVariable(name: "len", scope: !850, file: !2, line: 213, type: !139)
!858 = !DILocalVariable(name: "__UNIQUE_ID___x288", scope: !859, file: !2, line: 213, type: !139)
!859 = distinct !DILexicalBlock(scope: !850, file: !2, line: 213, column: 15)
!860 = !DILocalVariable(name: "__UNIQUE_ID___y289", scope: !859, file: !2, line: 213, type: !139)
!861 = !DILocation(line: 211, column: 34, scope: !850)
!862 = !DILocation(line: 211, column: 45, scope: !850)
!863 = !DILocation(line: 211, column: 58, scope: !850)
!864 = !DILocation(line: 213, column: 2, scope: !850)
!865 = !DILocation(line: 213, column: 9, scope: !850)
!866 = !DILocation(line: 213, column: 15, scope: !859)
!867 = !DILocation(line: 213, column: 15, scope: !850)
!868 = !DILocation(line: 215, column: 9, scope: !850)
!869 = !DILocation(line: 215, column: 16, scope: !850)
!870 = !DILocation(line: 215, column: 21, scope: !850)
!871 = !DILocation(line: 215, column: 27, scope: !850)
!872 = !DILocation(line: 215, column: 32, scope: !850)
!873 = !DILocation(line: 215, column: 41, scope: !850)
!874 = !DILocation(line: 215, column: 2, scope: !850)
!875 = !DILocation(line: 216, column: 17, scope: !850)
!876 = !DILocation(line: 216, column: 2, scope: !850)
!877 = !DILocation(line: 216, column: 7, scope: !850)
!878 = !DILocation(line: 216, column: 14, scope: !850)
!879 = !DILocation(line: 217, column: 9, scope: !850)
!880 = !DILocation(line: 217, column: 16, scope: !850)
!881 = !DILocation(line: 217, column: 14, scope: !850)
!882 = !DILocation(line: 218, column: 1, scope: !850)
!883 = !DILocation(line: 217, column: 2, scope: !850)
!884 = distinct !DISubprogram(name: "p9pdu_vwritef", scope: !2, file: !2, line: 526, type: !885, scopeLine: 528, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!156, !323, !156, !376, !378}
!887 = !{!888, !889, !890, !891, !892, !893, !894, !904, !906, !908, !910, !912, !914, !917, !918, !920, !921, !923, !924, !928, !932, !934, !990, !992, !993, !996, !998, !1000, !1003}
!888 = !DILocalVariable(name: "pdu", arg: 1, scope: !884, file: !2, line: 526, type: !323)
!889 = !DILocalVariable(name: "proto_version", arg: 2, scope: !884, file: !2, line: 526, type: !156)
!890 = !DILocalVariable(name: "fmt", arg: 3, scope: !884, file: !2, line: 526, type: !376)
!891 = !DILocalVariable(name: "ap", arg: 4, scope: !884, file: !2, line: 527, type: !378)
!892 = !DILocalVariable(name: "ptr", scope: !884, file: !2, line: 529, type: !376)
!893 = !DILocalVariable(name: "errcode", scope: !884, file: !2, line: 530, type: !156)
!894 = !DILocalVariable(name: "val", scope: !895, file: !2, line: 535, type: !900)
!895 = distinct !DILexicalBlock(scope: !896, file: !2, line: 534, column: 12)
!896 = distinct !DILexicalBlock(scope: !897, file: !2, line: 533, column: 17)
!897 = distinct !DILexicalBlock(scope: !898, file: !2, line: 532, column: 31)
!898 = distinct !DILexicalBlock(scope: !899, file: !2, line: 532, column: 2)
!899 = distinct !DILexicalBlock(scope: !884, file: !2, line: 532, column: 2)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !140, line: 100, baseType: !901)
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !160, line: 16, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !150, line: 20, baseType: !903)
!903 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!904 = !DILocalVariable(name: "val", scope: !905, file: !2, line: 541, type: !147)
!905 = distinct !DILexicalBlock(scope: !896, file: !2, line: 540, column: 12)
!906 = !DILocalVariable(name: "val", scope: !907, file: !2, line: 547, type: !151)
!907 = distinct !DILexicalBlock(scope: !896, file: !2, line: 546, column: 12)
!908 = !DILocalVariable(name: "val", scope: !909, file: !2, line: 553, type: !153)
!909 = distinct !DILexicalBlock(scope: !896, file: !2, line: 552, column: 12)
!910 = !DILocalVariable(name: "sptr", scope: !911, file: !2, line: 559, type: !376)
!911 = distinct !DILexicalBlock(scope: !896, file: !2, line: 558, column: 12)
!912 = !DILocalVariable(name: "len", scope: !911, file: !2, line: 560, type: !913)
!913 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !140, line: 109, baseType: !277)
!914 = !DILocalVariable(name: "__UNIQUE_ID___x296", scope: !915, file: !2, line: 562, type: !139)
!915 = distinct !DILexicalBlock(scope: !916, file: !2, line: 562, column: 12)
!916 = distinct !DILexicalBlock(scope: !911, file: !2, line: 561, column: 9)
!917 = !DILocalVariable(name: "__UNIQUE_ID___y297", scope: !915, file: !2, line: 562, type: !139)
!918 = !DILocalVariable(name: "uid", scope: !919, file: !2, line: 572, type: !798)
!919 = distinct !DILexicalBlock(scope: !896, file: !2, line: 571, column: 13)
!920 = !DILocalVariable(name: "val", scope: !919, file: !2, line: 573, type: !151)
!921 = !DILocalVariable(name: "gid", scope: !922, file: !2, line: 579, type: !806)
!922 = distinct !DILexicalBlock(scope: !896, file: !2, line: 578, column: 13)
!923 = !DILocalVariable(name: "val", scope: !922, file: !2, line: 580, type: !151)
!924 = !DILocalVariable(name: "qid", scope: !925, file: !2, line: 586, type: !926)
!925 = distinct !DILexicalBlock(scope: !896, file: !2, line: 585, column: 12)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !781)
!928 = !DILocalVariable(name: "stbuf", scope: !929, file: !2, line: 594, type: !930)
!929 = distinct !DILexicalBlock(scope: !896, file: !2, line: 593, column: 12)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !775)
!932 = !DILocalVariable(name: "count", scope: !933, file: !2, line: 609, type: !158)
!933 = distinct !DILexicalBlock(scope: !896, file: !2, line: 608, column: 12)
!934 = !DILocalVariable(name: "from", scope: !933, file: !2, line: 610, type: !935)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iov_iter", file: !937, line: 41, size: 320, elements: !938)
!937 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ac81f0b8d58c4f9d9f6f9f9dff8f3236")
!938 = !{!939, !940, !941, !942, !943, !944, !949, !982}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !936, file: !937, line: 42, baseType: !269, size: 8)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "copy_mc", scope: !936, file: !937, line: 43, baseType: !303, size: 8, offset: 8)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "nofault", scope: !936, file: !937, line: 44, baseType: !303, size: 8, offset: 16)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "data_source", scope: !936, file: !937, line: 45, baseType: !303, size: 8, offset: 24)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "user_backed", scope: !936, file: !937, line: 46, baseType: !303, size: 8, offset: 32)
!944 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !937, line: 47, baseType: !945, size: 64, offset: 64)
!945 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !937, line: 47, size: 64, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "iov_offset", scope: !945, file: !937, line: 48, baseType: !139, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "last_offset", scope: !945, file: !937, line: 49, baseType: !156, size: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !937, line: 61, baseType: !950, size: 128, offset: 128)
!950 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !937, line: 61, size: 128, elements: !951)
!951 = !{!952, !958}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "__ubuf_iovec", scope: !950, file: !937, line: 67, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !954, line: 17, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/uapi/linux/uio.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "98eef918b2dab58f3f637c00f6c6e945")
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !953, file: !954, line: 19, baseType: !146, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !953, file: !954, line: 20, baseType: !141, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, scope: !950, file: !937, line: 68, baseType: !959, size: 128)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !950, file: !937, line: 68, size: 128, elements: !960)
!960 = !{!961, !981}
!961 = !DIDerivedType(tag: DW_TAG_member, scope: !959, file: !937, line: 69, baseType: !962, size: 64)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !959, file: !937, line: 69, size: 64, elements: !963)
!963 = !{!964, !967, !974, !978, !980}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "__iov", scope: !962, file: !937, line: 71, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !953)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "kvec", scope: !962, file: !937, line: 72, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !970)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !937, line: 17, size: 128, elements: !971)
!971 = !{!972, !973}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !970, file: !937, line: 18, baseType: !146, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !970, file: !937, line: 19, baseType: !139, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "bvec", scope: !962, file: !937, line: 73, baseType: !975, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !977)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_vec", file: !937, line: 73, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "xarray", scope: !962, file: !937, line: 74, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "ubuf", scope: !962, file: !937, line: 75, baseType: !146, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !959, file: !937, line: 77, baseType: !139, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, scope: !936, file: !937, line: 80, baseType: !983, size: 64, offset: 256)
!983 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !936, file: !937, line: 80, size: 64, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "nr_segs", scope: !983, file: !937, line: 81, baseType: !144, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "xarray_start", scope: !983, file: !937, line: 82, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !140, line: 52, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !142, line: 88, baseType: !989)
!989 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!990 = !DILocalVariable(name: "nwname", scope: !991, file: !2, line: 619, type: !913)
!991 = distinct !DILexicalBlock(scope: !896, file: !2, line: 618, column: 12)
!992 = !DILocalVariable(name: "wnames", scope: !991, file: !2, line: 620, type: !411)
!993 = !DILocalVariable(name: "i", scope: !994, file: !2, line: 625, type: !156)
!994 = distinct !DILexicalBlock(scope: !995, file: !2, line: 624, column: 19)
!995 = distinct !DILexicalBlock(scope: !991, file: !2, line: 624, column: 9)
!996 = !DILocalVariable(name: "nwqid", scope: !997, file: !2, line: 640, type: !913)
!997 = distinct !DILexicalBlock(scope: !896, file: !2, line: 639, column: 12)
!998 = !DILocalVariable(name: "wqids", scope: !997, file: !2, line: 641, type: !999)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!1000 = !DILocalVariable(name: "i", scope: !1001, file: !2, line: 647, type: !156)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !2, line: 646, column: 19)
!1002 = distinct !DILexicalBlock(scope: !997, file: !2, line: 646, column: 9)
!1003 = !DILocalVariable(name: "p9attr", scope: !1004, file: !2, line: 662, type: !1005)
!1004 = distinct !DILexicalBlock(scope: !896, file: !2, line: 661, column: 12)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_iattr_dotl", file: !48, line: 466, size: 448, elements: !1007)
!1007 = !{!1008, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1006, file: !48, line: 467, baseType: !159, size: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1006, file: !48, line: 468, baseType: !159, size: 32, offset: 32)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1006, file: !48, line: 469, baseType: !798, size: 32, offset: 64)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !1006, file: !48, line: 470, baseType: !806, size: 32, offset: 96)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1006, file: !48, line: 471, baseType: !786, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "atime_sec", scope: !1006, file: !48, line: 472, baseType: !786, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "atime_nsec", scope: !1006, file: !48, line: 473, baseType: !786, size: 64, offset: 256)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "mtime_sec", scope: !1006, file: !48, line: 474, baseType: !786, size: 64, offset: 320)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "mtime_nsec", scope: !1006, file: !48, line: 475, baseType: !786, size: 64, offset: 384)
!1017 = !DILocation(line: 526, column: 32, scope: !884)
!1018 = !DILocation(line: 526, column: 41, scope: !884)
!1019 = !DILocation(line: 526, column: 68, scope: !884)
!1020 = !DILocation(line: 527, column: 10, scope: !884)
!1021 = !DILocation(line: 529, column: 2, scope: !884)
!1022 = !DILocation(line: 529, column: 14, scope: !884)
!1023 = !DILocation(line: 530, column: 2, scope: !884)
!1024 = !DILocation(line: 530, column: 6, scope: !884)
!1025 = !DILocation(line: 532, column: 13, scope: !899)
!1026 = !DILocation(line: 532, column: 11, scope: !899)
!1027 = !DILocation(line: 532, column: 7, scope: !899)
!1028 = !DILocation(line: 532, column: 19, scope: !898)
!1029 = !DILocation(line: 532, column: 18, scope: !898)
!1030 = !DILocation(line: 532, column: 2, scope: !899)
!1031 = !DILocation(line: 533, column: 12, scope: !897)
!1032 = !DILocation(line: 533, column: 11, scope: !897)
!1033 = !DILocation(line: 533, column: 3, scope: !897)
!1034 = !DILocation(line: 535, column: 5, scope: !895)
!1035 = !DILocation(line: 535, column: 12, scope: !895)
!1036 = !DILocation(line: 535, column: 18, scope: !895)
!1037 = !DILocation(line: 536, column: 19, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !895, file: !2, line: 536, column: 9)
!1039 = !DILocation(line: 536, column: 9, scope: !1038)
!1040 = !DILocation(line: 536, column: 9, scope: !895)
!1041 = !DILocation(line: 537, column: 14, scope: !1038)
!1042 = !DILocation(line: 537, column: 6, scope: !1038)
!1043 = !DILocation(line: 538, column: 4, scope: !896)
!1044 = !DILocation(line: 539, column: 4, scope: !896)
!1045 = !DILocation(line: 541, column: 5, scope: !905)
!1046 = !DILocation(line: 541, column: 12, scope: !905)
!1047 = !DILocation(line: 541, column: 18, scope: !905)
!1048 = !DILocation(line: 542, column: 19, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !905, file: !2, line: 542, column: 9)
!1050 = !DILocation(line: 542, column: 9, scope: !1049)
!1051 = !DILocation(line: 542, column: 9, scope: !905)
!1052 = !DILocation(line: 543, column: 14, scope: !1049)
!1053 = !DILocation(line: 543, column: 6, scope: !1049)
!1054 = !DILocation(line: 544, column: 4, scope: !896)
!1055 = !DILocation(line: 545, column: 4, scope: !896)
!1056 = !DILocation(line: 547, column: 5, scope: !907)
!1057 = !DILocation(line: 547, column: 12, scope: !907)
!1058 = !DILocation(line: 547, column: 18, scope: !907)
!1059 = !DILocation(line: 548, column: 19, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !907, file: !2, line: 548, column: 9)
!1061 = !DILocation(line: 548, column: 9, scope: !1060)
!1062 = !DILocation(line: 548, column: 9, scope: !907)
!1063 = !DILocation(line: 549, column: 14, scope: !1060)
!1064 = !DILocation(line: 549, column: 6, scope: !1060)
!1065 = !DILocation(line: 550, column: 4, scope: !896)
!1066 = !DILocation(line: 551, column: 4, scope: !896)
!1067 = !DILocation(line: 553, column: 5, scope: !909)
!1068 = !DILocation(line: 553, column: 12, scope: !909)
!1069 = !DILocation(line: 553, column: 18, scope: !909)
!1070 = !DILocation(line: 554, column: 19, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !909, file: !2, line: 554, column: 9)
!1072 = !DILocation(line: 554, column: 9, scope: !1071)
!1073 = !DILocation(line: 554, column: 9, scope: !909)
!1074 = !DILocation(line: 555, column: 14, scope: !1071)
!1075 = !DILocation(line: 555, column: 6, scope: !1071)
!1076 = !DILocation(line: 556, column: 4, scope: !896)
!1077 = !DILocation(line: 557, column: 4, scope: !896)
!1078 = !DILocation(line: 559, column: 5, scope: !911)
!1079 = !DILocation(line: 559, column: 17, scope: !911)
!1080 = !DILocation(line: 559, column: 24, scope: !911)
!1081 = !DILocation(line: 560, column: 5, scope: !911)
!1082 = !DILocation(line: 560, column: 14, scope: !911)
!1083 = !DILocation(line: 561, column: 9, scope: !916)
!1084 = !DILocation(line: 561, column: 9, scope: !911)
!1085 = !DILocation(line: 562, column: 12, scope: !915)
!1086 = !DILocation(line: 562, column: 12, scope: !916)
!1087 = !DILocation(line: 562, column: 10, scope: !916)
!1088 = !DILocation(line: 562, column: 6, scope: !916)
!1089 = !DILocation(line: 565, column: 28, scope: !911)
!1090 = !DILocation(line: 565, column: 33, scope: !911)
!1091 = !DILocation(line: 566, column: 14, scope: !911)
!1092 = !DILocation(line: 565, column: 15, scope: !911)
!1093 = !DILocation(line: 565, column: 13, scope: !911)
!1094 = !DILocation(line: 567, column: 10, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !911, file: !2, line: 567, column: 9)
!1096 = !DILocation(line: 567, column: 18, scope: !1095)
!1097 = !DILocation(line: 567, column: 31, scope: !1095)
!1098 = !DILocation(line: 567, column: 36, scope: !1095)
!1099 = !DILocation(line: 567, column: 42, scope: !1095)
!1100 = !DILocation(line: 567, column: 21, scope: !1095)
!1101 = !DILocation(line: 567, column: 9, scope: !911)
!1102 = !DILocation(line: 568, column: 14, scope: !1095)
!1103 = !DILocation(line: 568, column: 6, scope: !1095)
!1104 = !DILocation(line: 569, column: 4, scope: !896)
!1105 = !DILocation(line: 570, column: 4, scope: !896)
!1106 = !DILocation(line: 572, column: 5, scope: !919)
!1107 = !DILocation(line: 572, column: 12, scope: !919)
!1108 = !DILocation(line: 572, column: 18, scope: !919)
!1109 = !DILocation(line: 573, column: 5, scope: !919)
!1110 = !DILocation(line: 573, column: 12, scope: !919)
!1111 = !DILocation(line: 573, column: 18, scope: !919)
!1112 = !DILocation(line: 575, column: 19, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !919, file: !2, line: 575, column: 9)
!1114 = !DILocation(line: 575, column: 9, scope: !1113)
!1115 = !DILocation(line: 575, column: 9, scope: !919)
!1116 = !DILocation(line: 576, column: 14, scope: !1113)
!1117 = !DILocation(line: 576, column: 6, scope: !1113)
!1118 = !DILocation(line: 577, column: 4, scope: !896)
!1119 = !DILocation(line: 577, column: 6, scope: !896)
!1120 = !DILocation(line: 579, column: 5, scope: !922)
!1121 = !DILocation(line: 579, column: 12, scope: !922)
!1122 = !DILocation(line: 579, column: 18, scope: !922)
!1123 = !DILocation(line: 580, column: 5, scope: !922)
!1124 = !DILocation(line: 580, column: 12, scope: !922)
!1125 = !DILocation(line: 580, column: 18, scope: !922)
!1126 = !DILocation(line: 582, column: 19, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !922, file: !2, line: 582, column: 9)
!1128 = !DILocation(line: 582, column: 9, scope: !1127)
!1129 = !DILocation(line: 582, column: 9, scope: !922)
!1130 = !DILocation(line: 583, column: 14, scope: !1127)
!1131 = !DILocation(line: 583, column: 6, scope: !1127)
!1132 = !DILocation(line: 584, column: 4, scope: !896)
!1133 = !DILocation(line: 584, column: 6, scope: !896)
!1134 = !DILocation(line: 586, column: 5, scope: !925)
!1135 = !DILocation(line: 586, column: 26, scope: !925)
!1136 = !DILocation(line: 587, column: 9, scope: !925)
!1137 = !DILocation(line: 589, column: 22, scope: !925)
!1138 = !DILocation(line: 589, column: 27, scope: !925)
!1139 = !DILocation(line: 590, column: 8, scope: !925)
!1140 = !DILocation(line: 590, column: 13, scope: !925)
!1141 = !DILocation(line: 590, column: 19, scope: !925)
!1142 = !DILocation(line: 590, column: 24, scope: !925)
!1143 = !DILocation(line: 591, column: 8, scope: !925)
!1144 = !DILocation(line: 591, column: 13, scope: !925)
!1145 = !DILocation(line: 589, column: 9, scope: !925)
!1146 = !DILocation(line: 588, column: 13, scope: !925)
!1147 = !DILocation(line: 592, column: 4, scope: !896)
!1148 = !DILocation(line: 592, column: 6, scope: !896)
!1149 = !DILocation(line: 594, column: 5, scope: !929)
!1150 = !DILocation(line: 594, column: 28, scope: !929)
!1151 = !DILocation(line: 595, column: 9, scope: !929)
!1152 = !DILocation(line: 597, column: 22, scope: !929)
!1153 = !DILocation(line: 597, column: 27, scope: !929)
!1154 = !DILocation(line: 599, column: 8, scope: !929)
!1155 = !DILocation(line: 599, column: 15, scope: !929)
!1156 = !DILocation(line: 599, column: 21, scope: !929)
!1157 = !DILocation(line: 599, column: 28, scope: !929)
!1158 = !DILocation(line: 600, column: 8, scope: !929)
!1159 = !DILocation(line: 600, column: 15, scope: !929)
!1160 = !DILocation(line: 600, column: 21, scope: !929)
!1161 = !DILocation(line: 600, column: 28, scope: !929)
!1162 = !DILocation(line: 601, column: 8, scope: !929)
!1163 = !DILocation(line: 601, column: 15, scope: !929)
!1164 = !DILocation(line: 601, column: 21, scope: !929)
!1165 = !DILocation(line: 601, column: 28, scope: !929)
!1166 = !DILocation(line: 602, column: 8, scope: !929)
!1167 = !DILocation(line: 602, column: 15, scope: !929)
!1168 = !DILocation(line: 602, column: 22, scope: !929)
!1169 = !DILocation(line: 602, column: 29, scope: !929)
!1170 = !DILocation(line: 603, column: 8, scope: !929)
!1171 = !DILocation(line: 603, column: 15, scope: !929)
!1172 = !DILocation(line: 603, column: 21, scope: !929)
!1173 = !DILocation(line: 603, column: 28, scope: !929)
!1174 = !DILocation(line: 604, column: 8, scope: !929)
!1175 = !DILocation(line: 604, column: 15, scope: !929)
!1176 = !DILocation(line: 604, column: 20, scope: !929)
!1177 = !DILocation(line: 604, column: 27, scope: !929)
!1178 = !DILocation(line: 605, column: 8, scope: !929)
!1179 = !DILocation(line: 605, column: 15, scope: !929)
!1180 = !DILocation(line: 605, column: 26, scope: !929)
!1181 = !DILocation(line: 605, column: 33, scope: !929)
!1182 = !DILocation(line: 606, column: 8, scope: !929)
!1183 = !DILocation(line: 606, column: 15, scope: !929)
!1184 = !DILocation(line: 606, column: 22, scope: !929)
!1185 = !DILocation(line: 606, column: 29, scope: !929)
!1186 = !DILocation(line: 597, column: 9, scope: !929)
!1187 = !DILocation(line: 596, column: 13, scope: !929)
!1188 = !DILocation(line: 607, column: 4, scope: !896)
!1189 = !DILocation(line: 607, column: 6, scope: !896)
!1190 = !DILocation(line: 609, column: 5, scope: !933)
!1191 = !DILocation(line: 609, column: 14, scope: !933)
!1192 = !DILocation(line: 609, column: 22, scope: !933)
!1193 = !DILocation(line: 610, column: 5, scope: !933)
!1194 = !DILocation(line: 610, column: 22, scope: !933)
!1195 = !DILocation(line: 611, column: 7, scope: !933)
!1196 = !DILocation(line: 612, column: 28, scope: !933)
!1197 = !DILocation(line: 612, column: 33, scope: !933)
!1198 = !DILocation(line: 613, column: 10, scope: !933)
!1199 = !DILocation(line: 612, column: 15, scope: !933)
!1200 = !DILocation(line: 612, column: 13, scope: !933)
!1201 = !DILocation(line: 614, column: 10, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !933, file: !2, line: 614, column: 9)
!1203 = !DILocation(line: 614, column: 18, scope: !1202)
!1204 = !DILocation(line: 614, column: 33, scope: !1202)
!1205 = !DILocation(line: 614, column: 38, scope: !1202)
!1206 = !DILocation(line: 614, column: 44, scope: !1202)
!1207 = !DILocation(line: 614, column: 21, scope: !1202)
!1208 = !DILocation(line: 614, column: 9, scope: !933)
!1209 = !DILocation(line: 615, column: 14, scope: !1202)
!1210 = !DILocation(line: 615, column: 6, scope: !1202)
!1211 = !DILocation(line: 616, column: 4, scope: !896)
!1212 = !DILocation(line: 617, column: 4, scope: !896)
!1213 = !DILocation(line: 619, column: 5, scope: !991)
!1214 = !DILocation(line: 619, column: 14, scope: !991)
!1215 = !DILocation(line: 619, column: 23, scope: !991)
!1216 = !DILocation(line: 620, column: 5, scope: !991)
!1217 = !DILocation(line: 620, column: 18, scope: !991)
!1218 = !DILocation(line: 620, column: 27, scope: !991)
!1219 = !DILocation(line: 622, column: 28, scope: !991)
!1220 = !DILocation(line: 622, column: 33, scope: !991)
!1221 = !DILocation(line: 623, column: 10, scope: !991)
!1222 = !DILocation(line: 622, column: 15, scope: !991)
!1223 = !DILocation(line: 622, column: 13, scope: !991)
!1224 = !DILocation(line: 624, column: 10, scope: !995)
!1225 = !DILocation(line: 624, column: 9, scope: !991)
!1226 = !DILocation(line: 625, column: 6, scope: !994)
!1227 = !DILocation(line: 625, column: 10, scope: !994)
!1228 = !DILocation(line: 627, column: 13, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !994, file: !2, line: 627, column: 6)
!1230 = !DILocation(line: 627, column: 11, scope: !1229)
!1231 = !DILocation(line: 627, column: 18, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1229, file: !2, line: 627, column: 6)
!1233 = !DILocation(line: 627, column: 22, scope: !1232)
!1234 = !DILocation(line: 627, column: 20, scope: !1232)
!1235 = !DILocation(line: 627, column: 6, scope: !1229)
!1236 = !DILocation(line: 629, column: 24, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1232, file: !2, line: 627, column: 35)
!1238 = !DILocation(line: 630, column: 9, scope: !1237)
!1239 = !DILocation(line: 632, column: 10, scope: !1237)
!1240 = !DILocation(line: 632, column: 17, scope: !1237)
!1241 = !DILocation(line: 629, column: 11, scope: !1237)
!1242 = !DILocation(line: 628, column: 15, scope: !1237)
!1243 = !DILocation(line: 633, column: 11, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1237, file: !2, line: 633, column: 11)
!1245 = !DILocation(line: 633, column: 11, scope: !1237)
!1246 = !DILocation(line: 634, column: 8, scope: !1244)
!1247 = !DILocation(line: 635, column: 6, scope: !1237)
!1248 = !DILocation(line: 627, column: 31, scope: !1232)
!1249 = !DILocation(line: 627, column: 6, scope: !1232)
!1250 = distinct !{!1250, !1235, !1251, !565, !566}
!1251 = !DILocation(line: 635, column: 6, scope: !1229)
!1252 = !DILocation(line: 636, column: 5, scope: !995)
!1253 = !DILocation(line: 636, column: 5, scope: !994)
!1254 = !DILocation(line: 637, column: 4, scope: !896)
!1255 = !DILocation(line: 638, column: 4, scope: !896)
!1256 = !DILocation(line: 640, column: 5, scope: !997)
!1257 = !DILocation(line: 640, column: 14, scope: !997)
!1258 = !DILocation(line: 640, column: 22, scope: !997)
!1259 = !DILocation(line: 641, column: 5, scope: !997)
!1260 = !DILocation(line: 641, column: 20, scope: !997)
!1261 = !DILocation(line: 642, column: 9, scope: !997)
!1262 = !DILocation(line: 644, column: 28, scope: !997)
!1263 = !DILocation(line: 644, column: 33, scope: !997)
!1264 = !DILocation(line: 645, column: 10, scope: !997)
!1265 = !DILocation(line: 644, column: 15, scope: !997)
!1266 = !DILocation(line: 644, column: 13, scope: !997)
!1267 = !DILocation(line: 646, column: 10, scope: !1002)
!1268 = !DILocation(line: 646, column: 9, scope: !997)
!1269 = !DILocation(line: 647, column: 6, scope: !1001)
!1270 = !DILocation(line: 647, column: 10, scope: !1001)
!1271 = !DILocation(line: 649, column: 13, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1001, file: !2, line: 649, column: 6)
!1273 = !DILocation(line: 649, column: 11, scope: !1272)
!1274 = !DILocation(line: 649, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 649, column: 6)
!1276 = !DILocation(line: 649, column: 22, scope: !1275)
!1277 = !DILocation(line: 649, column: 20, scope: !1275)
!1278 = !DILocation(line: 649, column: 6, scope: !1272)
!1279 = !DILocation(line: 651, column: 24, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !2, line: 649, column: 34)
!1281 = !DILocation(line: 652, column: 9, scope: !1280)
!1282 = !DILocation(line: 654, column: 11, scope: !1280)
!1283 = !DILocation(line: 654, column: 17, scope: !1280)
!1284 = !DILocation(line: 651, column: 11, scope: !1280)
!1285 = !DILocation(line: 650, column: 15, scope: !1280)
!1286 = !DILocation(line: 655, column: 11, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 655, column: 11)
!1288 = !DILocation(line: 655, column: 11, scope: !1280)
!1289 = !DILocation(line: 656, column: 8, scope: !1287)
!1290 = !DILocation(line: 657, column: 6, scope: !1280)
!1291 = !DILocation(line: 649, column: 30, scope: !1275)
!1292 = !DILocation(line: 649, column: 6, scope: !1275)
!1293 = distinct !{!1293, !1278, !1294, !565, !566}
!1294 = !DILocation(line: 657, column: 6, scope: !1272)
!1295 = !DILocation(line: 658, column: 5, scope: !1002)
!1296 = !DILocation(line: 658, column: 5, scope: !1001)
!1297 = !DILocation(line: 659, column: 4, scope: !896)
!1298 = !DILocation(line: 660, column: 4, scope: !896)
!1299 = !DILocation(line: 662, column: 5, scope: !1004)
!1300 = !DILocation(line: 662, column: 27, scope: !1004)
!1301 = !DILocation(line: 662, column: 36, scope: !1004)
!1302 = !DILocation(line: 665, column: 28, scope: !1004)
!1303 = !DILocation(line: 665, column: 33, scope: !1004)
!1304 = !DILocation(line: 667, column: 8, scope: !1004)
!1305 = !DILocation(line: 667, column: 16, scope: !1004)
!1306 = !DILocation(line: 668, column: 8, scope: !1004)
!1307 = !DILocation(line: 668, column: 16, scope: !1004)
!1308 = !DILocation(line: 669, column: 8, scope: !1004)
!1309 = !DILocation(line: 669, column: 16, scope: !1004)
!1310 = !DILocation(line: 670, column: 8, scope: !1004)
!1311 = !DILocation(line: 670, column: 16, scope: !1004)
!1312 = !DILocation(line: 671, column: 8, scope: !1004)
!1313 = !DILocation(line: 671, column: 16, scope: !1004)
!1314 = !DILocation(line: 672, column: 8, scope: !1004)
!1315 = !DILocation(line: 672, column: 16, scope: !1004)
!1316 = !DILocation(line: 673, column: 8, scope: !1004)
!1317 = !DILocation(line: 673, column: 16, scope: !1004)
!1318 = !DILocation(line: 674, column: 8, scope: !1004)
!1319 = !DILocation(line: 674, column: 16, scope: !1004)
!1320 = !DILocation(line: 675, column: 8, scope: !1004)
!1321 = !DILocation(line: 675, column: 16, scope: !1004)
!1322 = !DILocation(line: 665, column: 15, scope: !1004)
!1323 = !DILocation(line: 665, column: 13, scope: !1004)
!1324 = !DILocation(line: 676, column: 4, scope: !896)
!1325 = !DILocation(line: 677, column: 4, scope: !896)
!1326 = !DILocation(line: 679, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !896, file: !2, line: 679, column: 8)
!1328 = !DILocation(line: 679, column: 23, scope: !1327)
!1329 = !DILocation(line: 679, column: 42, scope: !1327)
!1330 = !DILocation(line: 680, column: 6, scope: !1327)
!1331 = !DILocation(line: 680, column: 20, scope: !1327)
!1332 = !DILocation(line: 679, column: 8, scope: !896)
!1333 = !DILocation(line: 681, column: 5, scope: !1327)
!1334 = !DILocation(line: 682, column: 4, scope: !896)
!1335 = !DILocation(line: 684, column: 4, scope: !896)
!1336 = !DILocation(line: 684, column: 4, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !896, file: !2, line: 684, column: 4)
!1338 = !DILocation(line: 684, column: 4, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 684, column: 4)
!1340 = !DILocation(line: 684, column: 4, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1337, file: !2, line: 684, column: 4)
!1342 = !{i64 2153826846, i64 2153826875, i64 2153826921, i64 2153826979, i64 2153827033, i64 2153827087, i64 2153827142, i64 2153827173}
!1343 = !DILocation(line: 685, column: 4, scope: !896)
!1344 = !DILocation(line: 688, column: 7, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !897, file: !2, line: 688, column: 7)
!1346 = !DILocation(line: 688, column: 7, scope: !897)
!1347 = !DILocation(line: 689, column: 4, scope: !1345)
!1348 = !DILocation(line: 690, column: 2, scope: !897)
!1349 = !DILocation(line: 532, column: 27, scope: !898)
!1350 = !DILocation(line: 532, column: 2, scope: !898)
!1351 = distinct !{!1351, !1030, !1352, !565, !566}
!1352 = !DILocation(line: 690, column: 2, scope: !899)
!1353 = !DILocation(line: 692, column: 9, scope: !884)
!1354 = !DILocation(line: 692, column: 2, scope: !884)
!1355 = !DILocation(line: 693, column: 1, scope: !884)
!1356 = distinct !DISubprogram(name: "pdu_write", scope: !2, file: !2, line: 220, type: !1357, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!139, !323, !346, !139}
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1366}
!1360 = !DILocalVariable(name: "pdu", arg: 1, scope: !1356, file: !2, line: 220, type: !323)
!1361 = !DILocalVariable(name: "data", arg: 2, scope: !1356, file: !2, line: 220, type: !346)
!1362 = !DILocalVariable(name: "size", arg: 3, scope: !1356, file: !2, line: 220, type: !139)
!1363 = !DILocalVariable(name: "len", scope: !1356, file: !2, line: 222, type: !139)
!1364 = !DILocalVariable(name: "__UNIQUE_ID___x290", scope: !1365, file: !2, line: 222, type: !139)
!1365 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 222, column: 15)
!1366 = !DILocalVariable(name: "__UNIQUE_ID___y291", scope: !1365, file: !2, line: 222, type: !139)
!1367 = !DILocation(line: 220, column: 42, scope: !1356)
!1368 = !DILocation(line: 220, column: 59, scope: !1356)
!1369 = !DILocation(line: 220, column: 72, scope: !1356)
!1370 = !DILocation(line: 222, column: 2, scope: !1356)
!1371 = !DILocation(line: 222, column: 9, scope: !1356)
!1372 = !DILocation(line: 222, column: 15, scope: !1365)
!1373 = !DILocation(line: 222, column: 15, scope: !1356)
!1374 = !DILocation(line: 224, column: 10, scope: !1356)
!1375 = !DILocation(line: 224, column: 15, scope: !1356)
!1376 = !DILocation(line: 224, column: 21, scope: !1356)
!1377 = !DILocation(line: 224, column: 26, scope: !1356)
!1378 = !DILocation(line: 224, column: 33, scope: !1356)
!1379 = !DILocation(line: 224, column: 39, scope: !1356)
!1380 = !DILocation(line: 224, column: 2, scope: !1356)
!1381 = !DILocation(line: 225, column: 15, scope: !1356)
!1382 = !DILocation(line: 225, column: 2, scope: !1356)
!1383 = !DILocation(line: 225, column: 7, scope: !1356)
!1384 = !DILocation(line: 225, column: 12, scope: !1356)
!1385 = !DILocation(line: 226, column: 9, scope: !1356)
!1386 = !DILocation(line: 226, column: 16, scope: !1356)
!1387 = !DILocation(line: 226, column: 14, scope: !1356)
!1388 = !DILocation(line: 227, column: 1, scope: !1356)
!1389 = !DILocation(line: 226, column: 2, scope: !1356)
!1390 = distinct !DISubprogram(name: "p9pdu_writef", scope: !2, file: !2, line: 708, type: !1391, scopeLine: 709, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1393)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!156, !323, !156, !376, null}
!1393 = !{!1394, !1395, !1396, !1397, !1402}
!1394 = !DILocalVariable(name: "pdu", arg: 1, scope: !1390, file: !2, line: 708, type: !323)
!1395 = !DILocalVariable(name: "proto_version", arg: 2, scope: !1390, file: !2, line: 708, type: !156)
!1396 = !DILocalVariable(name: "fmt", arg: 3, scope: !1390, file: !2, line: 708, type: !376)
!1397 = !DILocalVariable(name: "ap", scope: !1390, file: !2, line: 710, type: !1398)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !1399, line: 5, baseType: !1400)
!1399 = !DIFile(filename: "./include/linux/stdarg.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "74c88f3ccfca7f499d1744438ad1d5b5")
!1400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !2, baseType: !1401)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !379, size: 192, elements: !179)
!1402 = !DILocalVariable(name: "ret", scope: !1390, file: !2, line: 711, type: !156)
!1403 = !DILocation(line: 708, column: 31, scope: !1390)
!1404 = !DILocation(line: 708, column: 40, scope: !1390)
!1405 = !DILocation(line: 708, column: 67, scope: !1390)
!1406 = !DILocation(line: 710, column: 2, scope: !1390)
!1407 = !DILocation(line: 710, column: 10, scope: !1390)
!1408 = !DILocation(line: 711, column: 2, scope: !1390)
!1409 = !DILocation(line: 711, column: 6, scope: !1390)
!1410 = !DILocation(line: 713, column: 2, scope: !1390)
!1411 = !DILocation(line: 714, column: 22, scope: !1390)
!1412 = !DILocation(line: 714, column: 27, scope: !1390)
!1413 = !DILocation(line: 714, column: 42, scope: !1390)
!1414 = !DILocation(line: 714, column: 47, scope: !1390)
!1415 = !DILocation(line: 714, column: 8, scope: !1390)
!1416 = !DILocation(line: 714, column: 6, scope: !1390)
!1417 = !DILocation(line: 715, column: 2, scope: !1390)
!1418 = !DILocation(line: 717, column: 9, scope: !1390)
!1419 = !DILocation(line: 718, column: 1, scope: !1390)
!1420 = !DILocation(line: 717, column: 2, scope: !1390)
!1421 = distinct !DISubprogram(name: "from_kuid", scope: !799, file: !799, line: 153, type: !1422, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1426)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!803, !1424, !798}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !799, line: 18, flags: DIFlagFwdDecl)
!1426 = !{!1427, !1428}
!1427 = !DILocalVariable(name: "to", arg: 1, scope: !1421, file: !799, line: 153, type: !1424)
!1428 = !DILocalVariable(name: "kuid", arg: 2, scope: !1421, file: !799, line: 153, type: !798)
!1429 = !DILocation(line: 153, column: 54, scope: !1421)
!1430 = !DILocation(line: 153, column: 65, scope: !1421)
!1431 = !DILocation(line: 155, column: 9, scope: !1421)
!1432 = !DILocation(line: 155, column: 2, scope: !1421)
!1433 = distinct !DISubprogram(name: "from_kgid", scope: !799, file: !799, line: 158, type: !1434, scopeLine: 159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1436)
!1434 = !DISubroutineType(types: !1435)
!1435 = !{!810, !1424, !806}
!1436 = !{!1437, !1438}
!1437 = !DILocalVariable(name: "to", arg: 1, scope: !1433, file: !799, line: 158, type: !1424)
!1438 = !DILocalVariable(name: "kgid", arg: 2, scope: !1433, file: !799, line: 158, type: !806)
!1439 = !DILocation(line: 158, column: 54, scope: !1433)
!1440 = !DILocation(line: 158, column: 65, scope: !1433)
!1441 = !DILocation(line: 160, column: 9, scope: !1433)
!1442 = !DILocation(line: 160, column: 2, scope: !1433)
!1443 = distinct !DISubprogram(name: "pdu_write_u", scope: !2, file: !2, line: 230, type: !1444, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1446)
!1444 = !DISubroutineType(types: !1445)
!1445 = !{!139, !323, !935, !139}
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1453}
!1447 = !DILocalVariable(name: "pdu", arg: 1, scope: !1443, file: !2, line: 230, type: !323)
!1448 = !DILocalVariable(name: "from", arg: 2, scope: !1443, file: !2, line: 230, type: !935)
!1449 = !DILocalVariable(name: "size", arg: 3, scope: !1443, file: !2, line: 230, type: !139)
!1450 = !DILocalVariable(name: "len", scope: !1443, file: !2, line: 232, type: !139)
!1451 = !DILocalVariable(name: "__UNIQUE_ID___x292", scope: !1452, file: !2, line: 232, type: !139)
!1452 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 232, column: 15)
!1453 = !DILocalVariable(name: "__UNIQUE_ID___y293", scope: !1452, file: !2, line: 232, type: !139)
!1454 = !DILocation(line: 230, column: 30, scope: !1443)
!1455 = !DILocation(line: 230, column: 52, scope: !1443)
!1456 = !DILocation(line: 230, column: 65, scope: !1443)
!1457 = !DILocation(line: 232, column: 2, scope: !1443)
!1458 = !DILocation(line: 232, column: 9, scope: !1443)
!1459 = !DILocation(line: 232, column: 15, scope: !1452)
!1460 = !DILocation(line: 232, column: 15, scope: !1443)
!1461 = !DILocation(line: 234, column: 28, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 234, column: 6)
!1463 = !DILocation(line: 234, column: 33, scope: !1462)
!1464 = !DILocation(line: 234, column: 39, scope: !1462)
!1465 = !DILocation(line: 234, column: 44, scope: !1462)
!1466 = !DILocation(line: 234, column: 51, scope: !1462)
!1467 = !DILocation(line: 234, column: 56, scope: !1462)
!1468 = !DILocation(line: 234, column: 7, scope: !1462)
!1469 = !DILocation(line: 234, column: 6, scope: !1443)
!1470 = !DILocation(line: 235, column: 7, scope: !1462)
!1471 = !DILocation(line: 235, column: 3, scope: !1462)
!1472 = !DILocation(line: 237, column: 15, scope: !1443)
!1473 = !DILocation(line: 237, column: 2, scope: !1443)
!1474 = !DILocation(line: 237, column: 7, scope: !1443)
!1475 = !DILocation(line: 237, column: 12, scope: !1443)
!1476 = !DILocation(line: 238, column: 9, scope: !1443)
!1477 = !DILocation(line: 238, column: 16, scope: !1443)
!1478 = !DILocation(line: 238, column: 14, scope: !1443)
!1479 = !DILocation(line: 239, column: 1, scope: !1443)
!1480 = !DILocation(line: 238, column: 2, scope: !1443)
!1481 = distinct !DISubprogram(name: "p9pdu_readf", scope: !2, file: !2, line: 695, type: !1391, scopeLine: 696, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1482)
!1482 = !{!1483, !1484, !1485, !1486, !1487}
!1483 = !DILocalVariable(name: "pdu", arg: 1, scope: !1481, file: !2, line: 695, type: !323)
!1484 = !DILocalVariable(name: "proto_version", arg: 2, scope: !1481, file: !2, line: 695, type: !156)
!1485 = !DILocalVariable(name: "fmt", arg: 3, scope: !1481, file: !2, line: 695, type: !376)
!1486 = !DILocalVariable(name: "ap", scope: !1481, file: !2, line: 697, type: !1398)
!1487 = !DILocalVariable(name: "ret", scope: !1481, file: !2, line: 698, type: !156)
!1488 = !DILocation(line: 695, column: 34, scope: !1481)
!1489 = !DILocation(line: 695, column: 43, scope: !1481)
!1490 = !DILocation(line: 695, column: 70, scope: !1481)
!1491 = !DILocation(line: 697, column: 2, scope: !1481)
!1492 = !DILocation(line: 697, column: 10, scope: !1481)
!1493 = !DILocation(line: 698, column: 2, scope: !1481)
!1494 = !DILocation(line: 698, column: 6, scope: !1481)
!1495 = !DILocation(line: 700, column: 2, scope: !1481)
!1496 = !DILocation(line: 701, column: 21, scope: !1481)
!1497 = !DILocation(line: 701, column: 26, scope: !1481)
!1498 = !DILocation(line: 701, column: 41, scope: !1481)
!1499 = !DILocation(line: 701, column: 46, scope: !1481)
!1500 = !DILocation(line: 701, column: 8, scope: !1481)
!1501 = !DILocation(line: 701, column: 6, scope: !1481)
!1502 = !DILocation(line: 702, column: 2, scope: !1481)
!1503 = !DILocation(line: 704, column: 9, scope: !1481)
!1504 = !DILocation(line: 705, column: 1, scope: !1481)
!1505 = !DILocation(line: 704, column: 2, scope: !1481)
!1506 = distinct !DISubprogram(name: "p9pdu_vreadf", scope: !2, file: !2, line: 258, type: !885, scopeLine: 260, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !1507)
!1507 = !{!1508, !1509, !1510, !1511, !1512, !1513, !1514, !1521, !1528, !1529, !1532, !1533, !1539, !1540, !1543, !1544, !1547, !1548, !1551, !1552, !1554, !1556, !1559, !1561, !1565, !1566, !1569, !1571, !1574, !1579, !1581, !1583, !1586}
!1508 = !DILocalVariable(name: "pdu", arg: 1, scope: !1506, file: !2, line: 258, type: !323)
!1509 = !DILocalVariable(name: "proto_version", arg: 2, scope: !1506, file: !2, line: 258, type: !156)
!1510 = !DILocalVariable(name: "fmt", arg: 3, scope: !1506, file: !2, line: 258, type: !376)
!1511 = !DILocalVariable(name: "ap", arg: 4, scope: !1506, file: !2, line: 259, type: !378)
!1512 = !DILocalVariable(name: "ptr", scope: !1506, file: !2, line: 261, type: !376)
!1513 = !DILocalVariable(name: "errcode", scope: !1506, file: !2, line: 262, type: !156)
!1514 = !DILocalVariable(name: "val", scope: !1515, file: !2, line: 267, type: !1520)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 266, column: 12)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 265, column: 17)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !2, line: 264, column: 31)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 264, column: 2)
!1519 = distinct !DILexicalBlock(scope: !1506, file: !2, line: 264, column: 2)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!1521 = !DILocalVariable(name: "val", scope: !1522, file: !2, line: 275, type: !1523)
!1522 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 274, column: 12)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !140, line: 102, baseType: !1525)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !160, line: 18, baseType: !1526)
!1526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !150, line: 23, baseType: !1527)
!1527 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!1528 = !DILocalVariable(name: "le_val", scope: !1522, file: !2, line: 276, type: !147)
!1529 = !DILocalVariable(name: "val", scope: !1530, file: !2, line: 285, type: !1531)
!1530 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 284, column: 12)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1532 = !DILocalVariable(name: "le_val", scope: !1530, file: !2, line: 286, type: !151)
!1533 = !DILocalVariable(name: "val", scope: !1534, file: !2, line: 295, type: !1535)
!1534 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 294, column: 12)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !140, line: 115, baseType: !1537)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !160, line: 22, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !150, line: 30, baseType: !989)
!1539 = !DILocalVariable(name: "le_val", scope: !1534, file: !2, line: 296, type: !153)
!1540 = !DILocalVariable(name: "sptr", scope: !1541, file: !2, line: 305, type: !1542)
!1541 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 304, column: 12)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!1543 = !DILocalVariable(name: "len", scope: !1541, file: !2, line: 306, type: !913)
!1544 = !DILocalVariable(name: "uid", scope: !1545, file: !2, line: 327, type: !1546)
!1545 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 326, column: 13)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!1547 = !DILocalVariable(name: "le_val", scope: !1545, file: !2, line: 328, type: !151)
!1548 = !DILocalVariable(name: "gid", scope: !1549, file: !2, line: 337, type: !1550)
!1549 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 336, column: 13)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!1551 = !DILocalVariable(name: "le_val", scope: !1549, file: !2, line: 338, type: !151)
!1552 = !DILocalVariable(name: "qid", scope: !1553, file: !2, line: 347, type: !999)
!1553 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 346, column: 12)
!1554 = !DILocalVariable(name: "stbuf", scope: !1555, file: !2, line: 356, type: !774)
!1555 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 355, column: 12)
!1556 = !DILocalVariable(name: "count", scope: !1557, file: !2, line: 380, type: !1558)
!1557 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 379, column: 12)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1559 = !DILocalVariable(name: "data", scope: !1557, file: !2, line: 381, type: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!1561 = !DILocalVariable(name: "__UNIQUE_ID___x294", scope: !1562, file: !2, line: 387, type: !158)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !2, line: 387, column: 10)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !2, line: 385, column: 19)
!1564 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 385, column: 9)
!1565 = !DILocalVariable(name: "__UNIQUE_ID___y295", scope: !1562, file: !2, line: 387, type: !158)
!1566 = !DILocalVariable(name: "nwname", scope: !1567, file: !2, line: 394, type: !1568)
!1567 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 393, column: 12)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!1569 = !DILocalVariable(name: "wnames", scope: !1567, file: !2, line: 395, type: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1571 = !DILocalVariable(name: "i", scope: !1572, file: !2, line: 413, type: !156)
!1572 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 412, column: 19)
!1573 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 412, column: 9)
!1574 = !DILocalVariable(name: "i", scope: !1575, file: !2, line: 430, type: !156)
!1575 = distinct !DILexicalBlock(scope: !1576, file: !2, line: 429, column: 19)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !2, line: 429, column: 10)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !2, line: 428, column: 18)
!1578 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 428, column: 9)
!1579 = !DILocalVariable(name: "nwqid", scope: !1580, file: !2, line: 444, type: !1568)
!1580 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 443, column: 12)
!1581 = !DILocalVariable(name: "wqids", scope: !1580, file: !2, line: 445, type: !1582)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!1583 = !DILocalVariable(name: "i", scope: !1584, file: !2, line: 462, type: !156)
!1584 = distinct !DILexicalBlock(scope: !1585, file: !2, line: 461, column: 19)
!1585 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 461, column: 9)
!1586 = !DILocalVariable(name: "stbuf", scope: !1587, file: !2, line: 482, type: !1588)
!1587 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 481, column: 13)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_stat_dotl", file: !48, line: 410, size: 1280, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "st_result_mask", scope: !1589, file: !48, line: 411, baseType: !786, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !1589, file: !48, line: 412, baseType: !781, size: 128, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1589, file: !48, line: 413, baseType: !159, size: 32, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1589, file: !48, line: 414, baseType: !798, size: 32, offset: 224)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1589, file: !48, line: 415, baseType: !806, size: 32, offset: 256)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1589, file: !48, line: 416, baseType: !786, size: 64, offset: 320)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1589, file: !48, line: 417, baseType: !786, size: 64, offset: 384)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1589, file: !48, line: 418, baseType: !786, size: 64, offset: 448)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1589, file: !48, line: 419, baseType: !786, size: 64, offset: 512)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1589, file: !48, line: 420, baseType: !786, size: 64, offset: 576)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime_sec", scope: !1589, file: !48, line: 421, baseType: !786, size: 64, offset: 640)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "st_atime_nsec", scope: !1589, file: !48, line: 422, baseType: !786, size: 64, offset: 704)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime_sec", scope: !1589, file: !48, line: 423, baseType: !786, size: 64, offset: 768)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtime_nsec", scope: !1589, file: !48, line: 424, baseType: !786, size: 64, offset: 832)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime_sec", scope: !1589, file: !48, line: 425, baseType: !786, size: 64, offset: 896)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctime_nsec", scope: !1589, file: !48, line: 426, baseType: !786, size: 64, offset: 960)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "st_btime_sec", scope: !1589, file: !48, line: 427, baseType: !786, size: 64, offset: 1024)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "st_btime_nsec", scope: !1589, file: !48, line: 428, baseType: !786, size: 64, offset: 1088)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !1589, file: !48, line: 429, baseType: !786, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "st_data_version", scope: !1589, file: !48, line: 430, baseType: !786, size: 64, offset: 1216)
!1611 = !DILocation(line: 258, column: 31, scope: !1506)
!1612 = !DILocation(line: 258, column: 40, scope: !1506)
!1613 = !DILocation(line: 258, column: 67, scope: !1506)
!1614 = !DILocation(line: 259, column: 15, scope: !1506)
!1615 = !DILocation(line: 261, column: 2, scope: !1506)
!1616 = !DILocation(line: 261, column: 14, scope: !1506)
!1617 = !DILocation(line: 262, column: 2, scope: !1506)
!1618 = !DILocation(line: 262, column: 6, scope: !1506)
!1619 = !DILocation(line: 264, column: 13, scope: !1519)
!1620 = !DILocation(line: 264, column: 11, scope: !1519)
!1621 = !DILocation(line: 264, column: 7, scope: !1519)
!1622 = !DILocation(line: 264, column: 19, scope: !1518)
!1623 = !DILocation(line: 264, column: 18, scope: !1518)
!1624 = !DILocation(line: 264, column: 2, scope: !1519)
!1625 = !DILocation(line: 265, column: 12, scope: !1517)
!1626 = !DILocation(line: 265, column: 11, scope: !1517)
!1627 = !DILocation(line: 265, column: 3, scope: !1517)
!1628 = !DILocation(line: 267, column: 5, scope: !1515)
!1629 = !DILocation(line: 267, column: 13, scope: !1515)
!1630 = !DILocation(line: 267, column: 19, scope: !1515)
!1631 = !DILocation(line: 268, column: 18, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 268, column: 9)
!1633 = !DILocation(line: 268, column: 23, scope: !1632)
!1634 = !DILocation(line: 268, column: 9, scope: !1632)
!1635 = !DILocation(line: 268, column: 9, scope: !1515)
!1636 = !DILocation(line: 269, column: 14, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 268, column: 43)
!1638 = !DILocation(line: 270, column: 6, scope: !1637)
!1639 = !DILocation(line: 272, column: 4, scope: !1516)
!1640 = !DILocation(line: 273, column: 4, scope: !1516)
!1641 = !DILocation(line: 275, column: 5, scope: !1522)
!1642 = !DILocation(line: 275, column: 14, scope: !1522)
!1643 = !DILocation(line: 275, column: 20, scope: !1522)
!1644 = !DILocation(line: 276, column: 5, scope: !1522)
!1645 = !DILocation(line: 276, column: 12, scope: !1522)
!1646 = !DILocation(line: 277, column: 18, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1522, file: !2, line: 277, column: 9)
!1648 = !DILocation(line: 277, column: 9, scope: !1647)
!1649 = !DILocation(line: 277, column: 9, scope: !1522)
!1650 = !DILocation(line: 278, column: 14, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1647, file: !2, line: 277, column: 49)
!1652 = !DILocation(line: 279, column: 6, scope: !1651)
!1653 = !DILocation(line: 281, column: 12, scope: !1522)
!1654 = !DILocation(line: 281, column: 6, scope: !1522)
!1655 = !DILocation(line: 281, column: 10, scope: !1522)
!1656 = !DILocation(line: 282, column: 4, scope: !1516)
!1657 = !DILocation(line: 283, column: 4, scope: !1516)
!1658 = !DILocation(line: 285, column: 5, scope: !1530)
!1659 = !DILocation(line: 285, column: 14, scope: !1530)
!1660 = !DILocation(line: 285, column: 20, scope: !1530)
!1661 = !DILocation(line: 286, column: 5, scope: !1530)
!1662 = !DILocation(line: 286, column: 12, scope: !1530)
!1663 = !DILocation(line: 287, column: 18, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 287, column: 9)
!1665 = !DILocation(line: 287, column: 9, scope: !1664)
!1666 = !DILocation(line: 287, column: 9, scope: !1530)
!1667 = !DILocation(line: 288, column: 14, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 287, column: 49)
!1669 = !DILocation(line: 289, column: 6, scope: !1668)
!1670 = !DILocation(line: 291, column: 12, scope: !1530)
!1671 = !DILocation(line: 291, column: 6, scope: !1530)
!1672 = !DILocation(line: 291, column: 10, scope: !1530)
!1673 = !DILocation(line: 292, column: 4, scope: !1516)
!1674 = !DILocation(line: 293, column: 4, scope: !1516)
!1675 = !DILocation(line: 295, column: 5, scope: !1534)
!1676 = !DILocation(line: 295, column: 14, scope: !1534)
!1677 = !DILocation(line: 295, column: 20, scope: !1534)
!1678 = !DILocation(line: 296, column: 5, scope: !1534)
!1679 = !DILocation(line: 296, column: 12, scope: !1534)
!1680 = !DILocation(line: 297, column: 18, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 297, column: 9)
!1682 = !DILocation(line: 297, column: 9, scope: !1681)
!1683 = !DILocation(line: 297, column: 9, scope: !1534)
!1684 = !DILocation(line: 298, column: 14, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1681, file: !2, line: 297, column: 49)
!1686 = !DILocation(line: 299, column: 6, scope: !1685)
!1687 = !DILocation(line: 301, column: 12, scope: !1534)
!1688 = !DILocation(line: 301, column: 6, scope: !1534)
!1689 = !DILocation(line: 301, column: 10, scope: !1534)
!1690 = !DILocation(line: 302, column: 4, scope: !1516)
!1691 = !DILocation(line: 303, column: 4, scope: !1516)
!1692 = !DILocation(line: 305, column: 5, scope: !1541)
!1693 = !DILocation(line: 305, column: 12, scope: !1541)
!1694 = !DILocation(line: 305, column: 19, scope: !1541)
!1695 = !DILocation(line: 306, column: 5, scope: !1541)
!1696 = !DILocation(line: 306, column: 14, scope: !1541)
!1697 = !DILocation(line: 308, column: 27, scope: !1541)
!1698 = !DILocation(line: 308, column: 32, scope: !1541)
!1699 = !DILocation(line: 308, column: 15, scope: !1541)
!1700 = !DILocation(line: 308, column: 13, scope: !1541)
!1701 = !DILocation(line: 310, column: 9, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 310, column: 9)
!1703 = !DILocation(line: 310, column: 9, scope: !1541)
!1704 = !DILocation(line: 311, column: 6, scope: !1702)
!1705 = !DILocation(line: 313, column: 21, scope: !1541)
!1706 = !DILocation(line: 313, column: 25, scope: !1541)
!1707 = !DILocation(line: 313, column: 13, scope: !1541)
!1708 = !DILocation(line: 313, column: 6, scope: !1541)
!1709 = !DILocation(line: 313, column: 11, scope: !1541)
!1710 = !DILocation(line: 314, column: 10, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 314, column: 9)
!1712 = !DILocation(line: 314, column: 9, scope: !1711)
!1713 = !DILocation(line: 314, column: 15, scope: !1711)
!1714 = !DILocation(line: 314, column: 9, scope: !1541)
!1715 = !DILocation(line: 315, column: 14, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !2, line: 314, column: 24)
!1717 = !DILocation(line: 316, column: 6, scope: !1716)
!1718 = !DILocation(line: 318, column: 18, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1541, file: !2, line: 318, column: 9)
!1720 = !DILocation(line: 318, column: 24, scope: !1719)
!1721 = !DILocation(line: 318, column: 23, scope: !1719)
!1722 = !DILocation(line: 318, column: 30, scope: !1719)
!1723 = !DILocation(line: 318, column: 9, scope: !1719)
!1724 = !DILocation(line: 318, column: 9, scope: !1541)
!1725 = !DILocation(line: 319, column: 14, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1719, file: !2, line: 318, column: 36)
!1727 = !DILocation(line: 320, column: 13, scope: !1726)
!1728 = !DILocation(line: 320, column: 12, scope: !1726)
!1729 = !DILocation(line: 320, column: 6, scope: !1726)
!1730 = !DILocation(line: 321, column: 7, scope: !1726)
!1731 = !DILocation(line: 321, column: 12, scope: !1726)
!1732 = !DILocation(line: 322, column: 5, scope: !1726)
!1733 = !DILocation(line: 323, column: 8, scope: !1719)
!1734 = !DILocation(line: 323, column: 7, scope: !1719)
!1735 = !DILocation(line: 323, column: 14, scope: !1719)
!1736 = !DILocation(line: 323, column: 6, scope: !1719)
!1737 = !DILocation(line: 323, column: 19, scope: !1719)
!1738 = !DILocation(line: 324, column: 4, scope: !1516)
!1739 = !DILocation(line: 325, column: 4, scope: !1516)
!1740 = !DILocation(line: 327, column: 5, scope: !1545)
!1741 = !DILocation(line: 327, column: 13, scope: !1545)
!1742 = !DILocation(line: 327, column: 19, scope: !1545)
!1743 = !DILocation(line: 328, column: 5, scope: !1545)
!1744 = !DILocation(line: 328, column: 12, scope: !1545)
!1745 = !DILocation(line: 329, column: 18, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1545, file: !2, line: 329, column: 9)
!1747 = !DILocation(line: 329, column: 9, scope: !1746)
!1748 = !DILocation(line: 329, column: 9, scope: !1545)
!1749 = !DILocation(line: 330, column: 14, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 329, column: 49)
!1751 = !DILocation(line: 331, column: 6, scope: !1750)
!1752 = !DILocation(line: 333, column: 6, scope: !1545)
!1753 = !DILocation(line: 333, column: 12, scope: !1545)
!1754 = !DILocation(line: 334, column: 8, scope: !1545)
!1755 = !DILocation(line: 335, column: 4, scope: !1516)
!1756 = !DILocation(line: 335, column: 6, scope: !1516)
!1757 = !DILocation(line: 337, column: 5, scope: !1549)
!1758 = !DILocation(line: 337, column: 13, scope: !1549)
!1759 = !DILocation(line: 337, column: 19, scope: !1549)
!1760 = !DILocation(line: 338, column: 5, scope: !1549)
!1761 = !DILocation(line: 338, column: 12, scope: !1549)
!1762 = !DILocation(line: 339, column: 18, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1549, file: !2, line: 339, column: 9)
!1764 = !DILocation(line: 339, column: 9, scope: !1763)
!1765 = !DILocation(line: 339, column: 9, scope: !1549)
!1766 = !DILocation(line: 340, column: 14, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1763, file: !2, line: 339, column: 49)
!1768 = !DILocation(line: 341, column: 6, scope: !1767)
!1769 = !DILocation(line: 343, column: 6, scope: !1549)
!1770 = !DILocation(line: 343, column: 12, scope: !1549)
!1771 = !DILocation(line: 344, column: 8, scope: !1549)
!1772 = !DILocation(line: 345, column: 4, scope: !1516)
!1773 = !DILocation(line: 345, column: 6, scope: !1516)
!1774 = !DILocation(line: 347, column: 5, scope: !1553)
!1775 = !DILocation(line: 347, column: 20, scope: !1553)
!1776 = !DILocation(line: 348, column: 9, scope: !1553)
!1777 = !DILocation(line: 350, column: 27, scope: !1553)
!1778 = !DILocation(line: 350, column: 32, scope: !1553)
!1779 = !DILocation(line: 351, column: 14, scope: !1553)
!1780 = !DILocation(line: 351, column: 19, scope: !1553)
!1781 = !DILocation(line: 351, column: 26, scope: !1553)
!1782 = !DILocation(line: 351, column: 31, scope: !1553)
!1783 = !DILocation(line: 352, column: 14, scope: !1553)
!1784 = !DILocation(line: 352, column: 19, scope: !1553)
!1785 = !DILocation(line: 350, column: 15, scope: !1553)
!1786 = !DILocation(line: 350, column: 13, scope: !1553)
!1787 = !DILocation(line: 353, column: 4, scope: !1516)
!1788 = !DILocation(line: 354, column: 4, scope: !1516)
!1789 = !DILocation(line: 356, column: 5, scope: !1555)
!1790 = !DILocation(line: 356, column: 22, scope: !1555)
!1791 = !DILocation(line: 357, column: 9, scope: !1555)
!1792 = !DILocation(line: 359, column: 12, scope: !1555)
!1793 = !DILocation(line: 359, column: 5, scope: !1555)
!1794 = !DILocation(line: 360, column: 5, scope: !1555)
!1795 = !DILocation(line: 360, column: 12, scope: !1555)
!1796 = !DILocation(line: 360, column: 20, scope: !1555)
!1797 = !DILocation(line: 360, column: 27, scope: !1555)
!1798 = !DILocation(line: 360, column: 36, scope: !1555)
!1799 = !DILocation(line: 360, column: 34, scope: !1555)
!1800 = !DILocation(line: 361, column: 5, scope: !1555)
!1801 = !DILocation(line: 361, column: 12, scope: !1555)
!1802 = !DILocation(line: 361, column: 20, scope: !1555)
!1803 = !DILocation(line: 364, column: 21, scope: !1555)
!1804 = !DILocation(line: 364, column: 26, scope: !1555)
!1805 = !DILocation(line: 366, column: 8, scope: !1555)
!1806 = !DILocation(line: 366, column: 15, scope: !1555)
!1807 = !DILocation(line: 366, column: 22, scope: !1555)
!1808 = !DILocation(line: 366, column: 29, scope: !1555)
!1809 = !DILocation(line: 367, column: 8, scope: !1555)
!1810 = !DILocation(line: 367, column: 15, scope: !1555)
!1811 = !DILocation(line: 367, column: 21, scope: !1555)
!1812 = !DILocation(line: 367, column: 28, scope: !1555)
!1813 = !DILocation(line: 368, column: 8, scope: !1555)
!1814 = !DILocation(line: 368, column: 15, scope: !1555)
!1815 = !DILocation(line: 368, column: 22, scope: !1555)
!1816 = !DILocation(line: 368, column: 29, scope: !1555)
!1817 = !DILocation(line: 369, column: 8, scope: !1555)
!1818 = !DILocation(line: 369, column: 15, scope: !1555)
!1819 = !DILocation(line: 369, column: 23, scope: !1555)
!1820 = !DILocation(line: 369, column: 30, scope: !1555)
!1821 = !DILocation(line: 370, column: 8, scope: !1555)
!1822 = !DILocation(line: 370, column: 15, scope: !1555)
!1823 = !DILocation(line: 370, column: 22, scope: !1555)
!1824 = !DILocation(line: 370, column: 29, scope: !1555)
!1825 = !DILocation(line: 371, column: 8, scope: !1555)
!1826 = !DILocation(line: 371, column: 15, scope: !1555)
!1827 = !DILocation(line: 371, column: 21, scope: !1555)
!1828 = !DILocation(line: 371, column: 28, scope: !1555)
!1829 = !DILocation(line: 372, column: 8, scope: !1555)
!1830 = !DILocation(line: 372, column: 15, scope: !1555)
!1831 = !DILocation(line: 373, column: 8, scope: !1555)
!1832 = !DILocation(line: 373, column: 15, scope: !1555)
!1833 = !DILocation(line: 373, column: 23, scope: !1555)
!1834 = !DILocation(line: 373, column: 30, scope: !1555)
!1835 = !DILocation(line: 374, column: 8, scope: !1555)
!1836 = !DILocation(line: 374, column: 15, scope: !1555)
!1837 = !DILocation(line: 364, column: 9, scope: !1555)
!1838 = !DILocation(line: 363, column: 13, scope: !1555)
!1839 = !DILocation(line: 375, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1555, file: !2, line: 375, column: 9)
!1841 = !DILocation(line: 375, column: 9, scope: !1555)
!1842 = !DILocation(line: 376, column: 18, scope: !1840)
!1843 = !DILocation(line: 376, column: 6, scope: !1840)
!1844 = !DILocation(line: 377, column: 4, scope: !1516)
!1845 = !DILocation(line: 378, column: 4, scope: !1516)
!1846 = !DILocation(line: 380, column: 5, scope: !1557)
!1847 = !DILocation(line: 380, column: 15, scope: !1557)
!1848 = !DILocation(line: 380, column: 23, scope: !1557)
!1849 = !DILocation(line: 381, column: 5, scope: !1557)
!1850 = !DILocation(line: 381, column: 12, scope: !1557)
!1851 = !DILocation(line: 381, column: 19, scope: !1557)
!1852 = !DILocation(line: 384, column: 21, scope: !1557)
!1853 = !DILocation(line: 384, column: 26, scope: !1557)
!1854 = !DILocation(line: 384, column: 46, scope: !1557)
!1855 = !DILocation(line: 384, column: 9, scope: !1557)
!1856 = !DILocation(line: 383, column: 13, scope: !1557)
!1857 = !DILocation(line: 385, column: 10, scope: !1564)
!1858 = !DILocation(line: 385, column: 9, scope: !1557)
!1859 = !DILocation(line: 387, column: 10, scope: !1562)
!1860 = !DILocation(line: 387, column: 10, scope: !1563)
!1861 = !DILocation(line: 386, column: 7, scope: !1563)
!1862 = !DILocation(line: 386, column: 13, scope: !1563)
!1863 = !DILocation(line: 389, column: 15, scope: !1563)
!1864 = !DILocation(line: 389, column: 20, scope: !1563)
!1865 = !DILocation(line: 389, column: 26, scope: !1563)
!1866 = !DILocation(line: 389, column: 31, scope: !1563)
!1867 = !DILocation(line: 389, column: 7, scope: !1563)
!1868 = !DILocation(line: 389, column: 12, scope: !1563)
!1869 = !DILocation(line: 390, column: 5, scope: !1563)
!1870 = !DILocation(line: 391, column: 4, scope: !1516)
!1871 = !DILocation(line: 392, column: 4, scope: !1516)
!1872 = !DILocation(line: 394, column: 5, scope: !1567)
!1873 = !DILocation(line: 394, column: 15, scope: !1567)
!1874 = !DILocation(line: 394, column: 24, scope: !1567)
!1875 = !DILocation(line: 395, column: 5, scope: !1567)
!1876 = !DILocation(line: 395, column: 13, scope: !1567)
!1877 = !DILocation(line: 395, column: 22, scope: !1567)
!1878 = !DILocation(line: 397, column: 6, scope: !1567)
!1879 = !DILocation(line: 397, column: 13, scope: !1567)
!1880 = !DILocation(line: 399, column: 27, scope: !1567)
!1881 = !DILocation(line: 399, column: 32, scope: !1567)
!1882 = !DILocation(line: 400, column: 14, scope: !1567)
!1883 = !DILocation(line: 399, column: 15, scope: !1567)
!1884 = !DILocation(line: 399, column: 13, scope: !1567)
!1885 = !DILocation(line: 401, column: 10, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1567, file: !2, line: 401, column: 9)
!1887 = !DILocation(line: 401, column: 9, scope: !1567)
!1888 = !DILocation(line: 403, column: 25, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1886, file: !2, line: 401, column: 19)
!1890 = !DILocation(line: 403, column: 24, scope: !1889)
!1891 = !DILocation(line: 403, column: 10, scope: !1889)
!1892 = !DILocation(line: 402, column: 7, scope: !1889)
!1893 = !DILocation(line: 402, column: 14, scope: !1889)
!1894 = !DILocation(line: 406, column: 12, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 406, column: 10)
!1896 = !DILocation(line: 406, column: 11, scope: !1895)
!1897 = !DILocation(line: 406, column: 10, scope: !1889)
!1898 = !DILocation(line: 407, column: 15, scope: !1895)
!1899 = !DILocation(line: 407, column: 7, scope: !1895)
!1900 = !DILocation(line: 409, column: 9, scope: !1895)
!1901 = !DILocation(line: 409, column: 8, scope: !1895)
!1902 = !DILocation(line: 409, column: 7, scope: !1895)
!1903 = !DILocation(line: 409, column: 20, scope: !1895)
!1904 = !DILocation(line: 410, column: 5, scope: !1889)
!1905 = !DILocation(line: 412, column: 10, scope: !1573)
!1906 = !DILocation(line: 412, column: 9, scope: !1567)
!1907 = !DILocation(line: 413, column: 6, scope: !1572)
!1908 = !DILocation(line: 413, column: 10, scope: !1572)
!1909 = !DILocation(line: 415, column: 13, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1572, file: !2, line: 415, column: 6)
!1911 = !DILocation(line: 415, column: 11, scope: !1910)
!1912 = !DILocation(line: 415, column: 18, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1910, file: !2, line: 415, column: 6)
!1914 = !DILocation(line: 415, column: 23, scope: !1913)
!1915 = !DILocation(line: 415, column: 22, scope: !1913)
!1916 = !DILocation(line: 415, column: 20, scope: !1913)
!1917 = !DILocation(line: 415, column: 6, scope: !1910)
!1918 = !DILocation(line: 417, column: 23, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 415, column: 36)
!1920 = !DILocation(line: 418, column: 9, scope: !1919)
!1921 = !DILocation(line: 420, column: 12, scope: !1919)
!1922 = !DILocation(line: 420, column: 11, scope: !1919)
!1923 = !DILocation(line: 420, column: 20, scope: !1919)
!1924 = !DILocation(line: 420, column: 10, scope: !1919)
!1925 = !DILocation(line: 417, column: 11, scope: !1919)
!1926 = !DILocation(line: 416, column: 15, scope: !1919)
!1927 = !DILocation(line: 421, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 421, column: 11)
!1929 = !DILocation(line: 421, column: 11, scope: !1919)
!1930 = !DILocation(line: 422, column: 10, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1928, file: !2, line: 421, column: 20)
!1932 = !DILocation(line: 422, column: 9, scope: !1931)
!1933 = !DILocation(line: 422, column: 18, scope: !1931)
!1934 = !DILocation(line: 422, column: 8, scope: !1931)
!1935 = !DILocation(line: 422, column: 21, scope: !1931)
!1936 = !DILocation(line: 423, column: 8, scope: !1931)
!1937 = !DILocation(line: 425, column: 6, scope: !1919)
!1938 = !DILocation(line: 415, column: 32, scope: !1913)
!1939 = !DILocation(line: 415, column: 6, scope: !1913)
!1940 = distinct !{!1940, !1917, !1941, !565, !566}
!1941 = !DILocation(line: 425, column: 6, scope: !1910)
!1942 = !DILocation(line: 426, column: 5, scope: !1573)
!1943 = !DILocation(line: 426, column: 5, scope: !1572)
!1944 = !DILocation(line: 428, column: 9, scope: !1578)
!1945 = !DILocation(line: 428, column: 9, scope: !1567)
!1946 = !DILocation(line: 429, column: 11, scope: !1576)
!1947 = !DILocation(line: 429, column: 10, scope: !1576)
!1948 = !DILocation(line: 429, column: 10, scope: !1577)
!1949 = !DILocation(line: 430, column: 7, scope: !1575)
!1950 = !DILocation(line: 430, column: 11, scope: !1575)
!1951 = !DILocation(line: 432, column: 14, scope: !1952)
!1952 = distinct !DILexicalBlock(scope: !1575, file: !2, line: 432, column: 7)
!1953 = !DILocation(line: 432, column: 12, scope: !1952)
!1954 = !DILocation(line: 432, column: 19, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1952, file: !2, line: 432, column: 7)
!1956 = !DILocation(line: 432, column: 24, scope: !1955)
!1957 = !DILocation(line: 432, column: 23, scope: !1955)
!1958 = !DILocation(line: 432, column: 21, scope: !1955)
!1959 = !DILocation(line: 432, column: 7, scope: !1952)
!1960 = !DILocation(line: 433, column: 15, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 433, column: 12)
!1962 = distinct !DILexicalBlock(scope: !1955, file: !2, line: 432, column: 37)
!1963 = !DILocation(line: 433, column: 14, scope: !1961)
!1964 = !DILocation(line: 433, column: 23, scope: !1961)
!1965 = !DILocation(line: 433, column: 13, scope: !1961)
!1966 = !DILocation(line: 433, column: 12, scope: !1962)
!1967 = !DILocation(line: 434, column: 9, scope: !1961)
!1968 = !DILocation(line: 435, column: 16, scope: !1962)
!1969 = !DILocation(line: 435, column: 15, scope: !1962)
!1970 = !DILocation(line: 435, column: 24, scope: !1962)
!1971 = !DILocation(line: 435, column: 14, scope: !1962)
!1972 = !DILocation(line: 435, column: 8, scope: !1962)
!1973 = !DILocation(line: 436, column: 7, scope: !1962)
!1974 = !DILocation(line: 432, column: 33, scope: !1955)
!1975 = !DILocation(line: 432, column: 7, scope: !1955)
!1976 = distinct !{!1976, !1959, !1977, !565, !566}
!1977 = !DILocation(line: 436, column: 7, scope: !1952)
!1978 = !DILocation(line: 437, column: 14, scope: !1575)
!1979 = !DILocation(line: 437, column: 13, scope: !1575)
!1980 = !DILocation(line: 437, column: 7, scope: !1575)
!1981 = !DILocation(line: 438, column: 8, scope: !1575)
!1982 = !DILocation(line: 438, column: 15, scope: !1575)
!1983 = !DILocation(line: 439, column: 6, scope: !1576)
!1984 = !DILocation(line: 439, column: 6, scope: !1575)
!1985 = !DILocation(line: 440, column: 5, scope: !1577)
!1986 = !DILocation(line: 441, column: 4, scope: !1516)
!1987 = !DILocation(line: 442, column: 4, scope: !1516)
!1988 = !DILocation(line: 444, column: 5, scope: !1580)
!1989 = !DILocation(line: 444, column: 15, scope: !1580)
!1990 = !DILocation(line: 444, column: 23, scope: !1580)
!1991 = !DILocation(line: 445, column: 5, scope: !1580)
!1992 = !DILocation(line: 445, column: 21, scope: !1580)
!1993 = !DILocation(line: 446, column: 9, scope: !1580)
!1994 = !DILocation(line: 448, column: 6, scope: !1580)
!1995 = !DILocation(line: 448, column: 12, scope: !1580)
!1996 = !DILocation(line: 451, column: 21, scope: !1580)
!1997 = !DILocation(line: 451, column: 26, scope: !1580)
!1998 = !DILocation(line: 451, column: 46, scope: !1580)
!1999 = !DILocation(line: 451, column: 9, scope: !1580)
!2000 = !DILocation(line: 450, column: 13, scope: !1580)
!2001 = !DILocation(line: 452, column: 10, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 452, column: 9)
!2003 = !DILocation(line: 452, column: 9, scope: !1580)
!2004 = !DILocation(line: 454, column: 25, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 452, column: 19)
!2006 = !DILocation(line: 454, column: 24, scope: !2005)
!2007 = !DILocation(line: 454, column: 10, scope: !2005)
!2008 = !DILocation(line: 453, column: 7, scope: !2005)
!2009 = !DILocation(line: 453, column: 13, scope: !2005)
!2010 = !DILocation(line: 457, column: 11, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 457, column: 10)
!2012 = !DILocation(line: 457, column: 10, scope: !2011)
!2013 = !DILocation(line: 457, column: 17, scope: !2011)
!2014 = !DILocation(line: 457, column: 10, scope: !2005)
!2015 = !DILocation(line: 458, column: 15, scope: !2011)
!2016 = !DILocation(line: 458, column: 7, scope: !2011)
!2017 = !DILocation(line: 459, column: 5, scope: !2005)
!2018 = !DILocation(line: 461, column: 10, scope: !1585)
!2019 = !DILocation(line: 461, column: 9, scope: !1580)
!2020 = !DILocation(line: 462, column: 6, scope: !1584)
!2021 = !DILocation(line: 462, column: 10, scope: !1584)
!2022 = !DILocation(line: 464, column: 13, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 464, column: 6)
!2024 = !DILocation(line: 464, column: 11, scope: !2023)
!2025 = !DILocation(line: 464, column: 18, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2023, file: !2, line: 464, column: 6)
!2027 = !DILocation(line: 464, column: 23, scope: !2026)
!2028 = !DILocation(line: 464, column: 22, scope: !2026)
!2029 = !DILocation(line: 464, column: 20, scope: !2026)
!2030 = !DILocation(line: 464, column: 6, scope: !2023)
!2031 = !DILocation(line: 466, column: 23, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2026, file: !2, line: 464, column: 35)
!2033 = !DILocation(line: 467, column: 9, scope: !2032)
!2034 = !DILocation(line: 469, column: 12, scope: !2032)
!2035 = !DILocation(line: 469, column: 11, scope: !2032)
!2036 = !DILocation(line: 469, column: 19, scope: !2032)
!2037 = !DILocation(line: 469, column: 10, scope: !2032)
!2038 = !DILocation(line: 466, column: 11, scope: !2032)
!2039 = !DILocation(line: 465, column: 15, scope: !2032)
!2040 = !DILocation(line: 470, column: 11, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2032, file: !2, line: 470, column: 11)
!2042 = !DILocation(line: 470, column: 11, scope: !2032)
!2043 = !DILocation(line: 471, column: 8, scope: !2041)
!2044 = !DILocation(line: 472, column: 6, scope: !2032)
!2045 = !DILocation(line: 464, column: 31, scope: !2026)
!2046 = !DILocation(line: 464, column: 6, scope: !2026)
!2047 = distinct !{!2047, !2030, !2048, !565, !566}
!2048 = !DILocation(line: 472, column: 6, scope: !2023)
!2049 = !DILocation(line: 473, column: 5, scope: !1585)
!2050 = !DILocation(line: 473, column: 5, scope: !1584)
!2051 = !DILocation(line: 475, column: 9, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !1580, file: !2, line: 475, column: 9)
!2053 = !DILocation(line: 475, column: 9, scope: !1580)
!2054 = !DILocation(line: 476, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2052, file: !2, line: 475, column: 18)
!2056 = !DILocation(line: 476, column: 12, scope: !2055)
!2057 = !DILocation(line: 476, column: 6, scope: !2055)
!2058 = !DILocation(line: 477, column: 7, scope: !2055)
!2059 = !DILocation(line: 477, column: 13, scope: !2055)
!2060 = !DILocation(line: 478, column: 5, scope: !2055)
!2061 = !DILocation(line: 479, column: 4, scope: !1516)
!2062 = !DILocation(line: 480, column: 4, scope: !1516)
!2063 = !DILocation(line: 482, column: 5, scope: !1587)
!2064 = !DILocation(line: 482, column: 26, scope: !1587)
!2065 = !DILocation(line: 483, column: 9, scope: !1587)
!2066 = !DILocation(line: 485, column: 12, scope: !1587)
!2067 = !DILocation(line: 485, column: 5, scope: !1587)
!2068 = !DILocation(line: 487, column: 21, scope: !1587)
!2069 = !DILocation(line: 487, column: 26, scope: !1587)
!2070 = !DILocation(line: 489, column: 7, scope: !1587)
!2071 = !DILocation(line: 489, column: 14, scope: !1587)
!2072 = !DILocation(line: 490, column: 7, scope: !1587)
!2073 = !DILocation(line: 490, column: 14, scope: !1587)
!2074 = !DILocation(line: 491, column: 7, scope: !1587)
!2075 = !DILocation(line: 491, column: 14, scope: !1587)
!2076 = !DILocation(line: 492, column: 7, scope: !1587)
!2077 = !DILocation(line: 492, column: 14, scope: !1587)
!2078 = !DILocation(line: 492, column: 23, scope: !1587)
!2079 = !DILocation(line: 492, column: 30, scope: !1587)
!2080 = !DILocation(line: 493, column: 7, scope: !1587)
!2081 = !DILocation(line: 493, column: 14, scope: !1587)
!2082 = !DILocation(line: 494, column: 7, scope: !1587)
!2083 = !DILocation(line: 494, column: 14, scope: !1587)
!2084 = !DILocation(line: 494, column: 24, scope: !1587)
!2085 = !DILocation(line: 494, column: 31, scope: !1587)
!2086 = !DILocation(line: 495, column: 7, scope: !1587)
!2087 = !DILocation(line: 495, column: 14, scope: !1587)
!2088 = !DILocation(line: 495, column: 27, scope: !1587)
!2089 = !DILocation(line: 495, column: 34, scope: !1587)
!2090 = !DILocation(line: 496, column: 7, scope: !1587)
!2091 = !DILocation(line: 496, column: 14, scope: !1587)
!2092 = !DILocation(line: 497, column: 7, scope: !1587)
!2093 = !DILocation(line: 497, column: 14, scope: !1587)
!2094 = !DILocation(line: 498, column: 7, scope: !1587)
!2095 = !DILocation(line: 498, column: 14, scope: !1587)
!2096 = !DILocation(line: 499, column: 7, scope: !1587)
!2097 = !DILocation(line: 499, column: 14, scope: !1587)
!2098 = !DILocation(line: 500, column: 7, scope: !1587)
!2099 = !DILocation(line: 500, column: 14, scope: !1587)
!2100 = !DILocation(line: 501, column: 7, scope: !1587)
!2101 = !DILocation(line: 501, column: 14, scope: !1587)
!2102 = !DILocation(line: 502, column: 7, scope: !1587)
!2103 = !DILocation(line: 502, column: 14, scope: !1587)
!2104 = !DILocation(line: 503, column: 7, scope: !1587)
!2105 = !DILocation(line: 503, column: 14, scope: !1587)
!2106 = !DILocation(line: 504, column: 7, scope: !1587)
!2107 = !DILocation(line: 504, column: 14, scope: !1587)
!2108 = !DILocation(line: 505, column: 7, scope: !1587)
!2109 = !DILocation(line: 505, column: 14, scope: !1587)
!2110 = !DILocation(line: 487, column: 9, scope: !1587)
!2111 = !DILocation(line: 486, column: 13, scope: !1587)
!2112 = !DILocation(line: 506, column: 4, scope: !1516)
!2113 = !DILocation(line: 507, column: 4, scope: !1516)
!2114 = !DILocation(line: 509, column: 9, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 509, column: 8)
!2116 = !DILocation(line: 509, column: 23, scope: !2115)
!2117 = !DILocation(line: 509, column: 42, scope: !2115)
!2118 = !DILocation(line: 510, column: 6, scope: !2115)
!2119 = !DILocation(line: 510, column: 20, scope: !2115)
!2120 = !DILocation(line: 509, column: 8, scope: !1516)
!2121 = !DILocation(line: 511, column: 5, scope: !2115)
!2122 = !DILocation(line: 512, column: 4, scope: !1516)
!2123 = !DILocation(line: 514, column: 4, scope: !1516)
!2124 = !DILocation(line: 514, column: 4, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 514, column: 4)
!2126 = !DILocation(line: 514, column: 4, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 514, column: 4)
!2128 = !DILocation(line: 514, column: 4, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2125, file: !2, line: 514, column: 4)
!2130 = !{i64 2153813736, i64 2153813765, i64 2153813811, i64 2153813869, i64 2153813923, i64 2153813977, i64 2153814032, i64 2153814063}
!2131 = !DILocation(line: 515, column: 4, scope: !1516)
!2132 = !DILocation(line: 518, column: 7, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !1517, file: !2, line: 518, column: 7)
!2134 = !DILocation(line: 518, column: 7, scope: !1517)
!2135 = !DILocation(line: 519, column: 4, scope: !2133)
!2136 = !DILocation(line: 520, column: 2, scope: !1517)
!2137 = !DILocation(line: 264, column: 27, scope: !1518)
!2138 = !DILocation(line: 264, column: 2, scope: !1518)
!2139 = distinct !{!2139, !1624, !2140, !565, !566}
!2140 = !DILocation(line: 520, column: 2, scope: !1519)
!2141 = !DILocation(line: 522, column: 9, scope: !1506)
!2142 = !DILocation(line: 522, column: 2, scope: !1506)
!2143 = !DILocation(line: 523, column: 1, scope: !1506)
!2144 = distinct !DISubprogram(name: "p9stat_read", scope: !2, file: !2, line: 720, type: !2145, scopeLine: 721, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2147)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!156, !237, !796, !156, !774}
!2147 = !{!2148, !2149, !2150, !2151, !2152, !2153}
!2148 = !DILocalVariable(name: "clnt", arg: 1, scope: !2144, file: !2, line: 720, type: !237)
!2149 = !DILocalVariable(name: "buf", arg: 2, scope: !2144, file: !2, line: 720, type: !796)
!2150 = !DILocalVariable(name: "len", arg: 3, scope: !2144, file: !2, line: 720, type: !156)
!2151 = !DILocalVariable(name: "st", arg: 4, scope: !2144, file: !2, line: 720, type: !774)
!2152 = !DILocalVariable(name: "fake_pdu", scope: !2144, file: !2, line: 722, type: !324)
!2153 = !DILocalVariable(name: "ret", scope: !2144, file: !2, line: 723, type: !156)
!2154 = !DILocation(line: 720, column: 35, scope: !2144)
!2155 = !DILocation(line: 720, column: 47, scope: !2144)
!2156 = !DILocation(line: 720, column: 56, scope: !2144)
!2157 = !DILocation(line: 720, column: 78, scope: !2144)
!2158 = !DILocation(line: 722, column: 2, scope: !2144)
!2159 = !DILocation(line: 722, column: 18, scope: !2144)
!2160 = !DILocation(line: 723, column: 2, scope: !2144)
!2161 = !DILocation(line: 723, column: 6, scope: !2144)
!2162 = !DILocation(line: 725, column: 18, scope: !2144)
!2163 = !DILocation(line: 725, column: 11, scope: !2144)
!2164 = !DILocation(line: 725, column: 16, scope: !2144)
!2165 = !DILocation(line: 726, column: 22, scope: !2144)
!2166 = !DILocation(line: 726, column: 11, scope: !2144)
!2167 = !DILocation(line: 726, column: 20, scope: !2144)
!2168 = !DILocation(line: 727, column: 19, scope: !2144)
!2169 = !DILocation(line: 727, column: 11, scope: !2144)
!2170 = !DILocation(line: 727, column: 17, scope: !2144)
!2171 = !DILocation(line: 728, column: 11, scope: !2144)
!2172 = !DILocation(line: 728, column: 18, scope: !2144)
!2173 = !DILocation(line: 730, column: 31, scope: !2144)
!2174 = !DILocation(line: 730, column: 37, scope: !2144)
!2175 = !DILocation(line: 730, column: 57, scope: !2144)
!2176 = !DILocation(line: 730, column: 8, scope: !2144)
!2177 = !DILocation(line: 730, column: 6, scope: !2144)
!2178 = !DILocation(line: 731, column: 6, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2144, file: !2, line: 731, column: 6)
!2180 = !DILocation(line: 731, column: 6, scope: !2144)
!2181 = !DILocation(line: 732, column: 3, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2183, file: !2, line: 732, column: 3)
!2183 = distinct !DILexicalBlock(scope: !2184, file: !2, line: 732, column: 3)
!2184 = distinct !DILexicalBlock(scope: !2179, file: !2, line: 731, column: 11)
!2185 = !DILocation(line: 732, column: 3, scope: !2183)
!2186 = !DILocation(line: 733, column: 26, scope: !2184)
!2187 = !DILocation(line: 733, column: 3, scope: !2184)
!2188 = !DILocation(line: 734, column: 10, scope: !2184)
!2189 = !DILocation(line: 734, column: 3, scope: !2184)
!2190 = !DILocation(line: 737, column: 18, scope: !2144)
!2191 = !DILocation(line: 737, column: 9, scope: !2144)
!2192 = !DILocation(line: 737, column: 2, scope: !2144)
!2193 = !DILocation(line: 738, column: 1, scope: !2144)
!2194 = !DILocation(line: 172, column: 1, scope: !234)
!2195 = !DILocation(line: 172, column: 1, scope: !340)
!2196 = !DILocation(line: 172, column: 1, scope: !339)
!2197 = !DILocation(line: 172, column: 1, scope: !342)
!2198 = !DILocation(line: 172, column: 1, scope: !345)
!2199 = !DILocation(line: 172, column: 1, scope: !349)
!2200 = !{i64 2153515139}
!2201 = !DILocation(line: 172, column: 1, scope: !343)
!2202 = !DILocation(line: 172, column: 1, scope: !351)
!2203 = !DILocation(line: 172, column: 1, scope: !355)
!2204 = !DILocation(line: 172, column: 1, scope: !354)
!2205 = !DILocation(line: 172, column: 1, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !354, file: !228, line: 172, column: 1)
!2207 = !DILocation(line: 172, column: 1, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !354, file: !228, line: 172, column: 1)
!2209 = !{i64 2153516337, i64 2153516366, i64 2153516412, i64 2153516470, i64 2153516524, i64 2153516578, i64 2153516633, i64 2153516664, i64 2153516972, i64 2153516978, i64 2153517025, i64 2153517048, i64 2153517074}
!2210 = !DILocation(line: 172, column: 1, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !354, file: !228, line: 172, column: 1)
!2212 = !DILocation(line: 172, column: 1, scope: !352)
!2213 = !DILocation(line: 172, column: 1, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !339, file: !228, line: 172, column: 1)
!2215 = !{i64 2153517424}
!2216 = !DILocation(line: 172, column: 1, scope: !357)
!2217 = !DILocation(line: 172, column: 1, scope: !360)
!2218 = !DILocation(line: 172, column: 1, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !360, file: !228, line: 172, column: 1)
!2220 = !DILocation(line: 172, column: 1, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2219, file: !228, line: 172, column: 1)
!2222 = !DILocation(line: 172, column: 1, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !357, file: !228, line: 172, column: 1)
!2224 = !DILocation(line: 172, column: 1, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2223, file: !228, line: 172, column: 1)
!2226 = !DILocation(line: 172, column: 1, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2225, file: !228, line: 172, column: 1)
!2228 = !DILocation(line: 172, column: 1, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !339, file: !228, line: 172, column: 1)
!2230 = !{i64 2153523905}
!2231 = !DILocation(line: 172, column: 1, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !228, line: 172, column: 1)
!2233 = !DILocation(line: 172, column: 1, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2232, file: !228, line: 172, column: 1)
!2235 = !{i64 2153524064}
!2236 = distinct !DISubprogram(name: "p9pdu_prepare", scope: !2, file: !2, line: 741, type: !2237, scopeLine: 742, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2239)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!156, !323, !1524, !900}
!2239 = !{!2240, !2241, !2242}
!2240 = !DILocalVariable(name: "pdu", arg: 1, scope: !2236, file: !2, line: 741, type: !323)
!2241 = !DILocalVariable(name: "tag", arg: 2, scope: !2236, file: !2, line: 741, type: !1524)
!2242 = !DILocalVariable(name: "type", arg: 3, scope: !2236, file: !2, line: 741, type: !900)
!2243 = !DILocation(line: 741, column: 36, scope: !2236)
!2244 = !DILocation(line: 741, column: 49, scope: !2236)
!2245 = !DILocation(line: 741, column: 61, scope: !2236)
!2246 = !DILocation(line: 743, column: 12, scope: !2236)
!2247 = !DILocation(line: 743, column: 2, scope: !2236)
!2248 = !DILocation(line: 743, column: 7, scope: !2236)
!2249 = !DILocation(line: 743, column: 10, scope: !2236)
!2250 = !DILocation(line: 744, column: 22, scope: !2236)
!2251 = !DILocation(line: 744, column: 40, scope: !2236)
!2252 = !DILocation(line: 744, column: 46, scope: !2236)
!2253 = !DILocation(line: 744, column: 9, scope: !2236)
!2254 = !DILocation(line: 744, column: 2, scope: !2236)
!2255 = distinct !DISubprogram(name: "p9pdu_finalize", scope: !2, file: !2, line: 747, type: !2256, scopeLine: 748, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!156, !237, !323}
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "clnt", arg: 1, scope: !2255, file: !2, line: 747, type: !237)
!2260 = !DILocalVariable(name: "pdu", arg: 2, scope: !2255, file: !2, line: 747, type: !323)
!2261 = !DILocalVariable(name: "size", scope: !2255, file: !2, line: 749, type: !156)
!2262 = !DILocalVariable(name: "err", scope: !2255, file: !2, line: 750, type: !156)
!2263 = !DILocation(line: 747, column: 38, scope: !2255)
!2264 = !DILocation(line: 747, column: 61, scope: !2255)
!2265 = !DILocation(line: 749, column: 2, scope: !2255)
!2266 = !DILocation(line: 749, column: 6, scope: !2255)
!2267 = !DILocation(line: 749, column: 13, scope: !2255)
!2268 = !DILocation(line: 749, column: 18, scope: !2255)
!2269 = !DILocation(line: 750, column: 2, scope: !2255)
!2270 = !DILocation(line: 750, column: 6, scope: !2255)
!2271 = !DILocation(line: 752, column: 2, scope: !2255)
!2272 = !DILocation(line: 752, column: 7, scope: !2255)
!2273 = !DILocation(line: 752, column: 12, scope: !2255)
!2274 = !DILocation(line: 753, column: 21, scope: !2255)
!2275 = !DILocation(line: 753, column: 34, scope: !2255)
!2276 = !DILocation(line: 753, column: 8, scope: !2255)
!2277 = !DILocation(line: 753, column: 6, scope: !2255)
!2278 = !DILocation(line: 754, column: 14, scope: !2255)
!2279 = !DILocation(line: 754, column: 2, scope: !2255)
!2280 = !DILocation(line: 754, column: 7, scope: !2255)
!2281 = !DILocation(line: 754, column: 12, scope: !2255)
!2282 = !DILocation(line: 756, column: 25, scope: !2255)
!2283 = !DILocation(line: 756, column: 31, scope: !2255)
!2284 = !DILocation(line: 756, column: 2, scope: !2255)
!2285 = !DILocation(line: 757, column: 2, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2287, file: !2, line: 757, column: 2)
!2287 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 757, column: 2)
!2288 = !DILocation(line: 757, column: 2, scope: !2287)
!2289 = !DILocation(line: 760, column: 9, scope: !2255)
!2290 = !DILocation(line: 761, column: 1, scope: !2255)
!2291 = !DILocation(line: 760, column: 2, scope: !2255)
!2292 = distinct !DISubprogram(name: "p9pdu_reset", scope: !2, file: !2, line: 763, type: !2293, scopeLine: 764, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2295)
!2293 = !DISubroutineType(types: !2294)
!2294 = !{null, !323}
!2295 = !{!2296}
!2296 = !DILocalVariable(name: "pdu", arg: 1, scope: !2292, file: !2, line: 763, type: !323)
!2297 = !DILocation(line: 763, column: 35, scope: !2292)
!2298 = !DILocation(line: 765, column: 2, scope: !2292)
!2299 = !DILocation(line: 765, column: 7, scope: !2292)
!2300 = !DILocation(line: 765, column: 14, scope: !2292)
!2301 = !DILocation(line: 766, column: 2, scope: !2292)
!2302 = !DILocation(line: 766, column: 7, scope: !2292)
!2303 = !DILocation(line: 766, column: 12, scope: !2292)
!2304 = !DILocation(line: 767, column: 1, scope: !2292)
!2305 = distinct !DISubprogram(name: "p9dirent_read", scope: !2, file: !2, line: 769, type: !2306, scopeLine: 771, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2318)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!156, !237, !796, !156, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "p9_dirent", file: !40, line: 171, size: 2304, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "qid", scope: !2309, file: !40, line: 172, baseType: !781, size: 128)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !2309, file: !40, line: 173, baseType: !786, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !2309, file: !40, line: 174, baseType: !271, size: 8, offset: 192)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2309, file: !40, line: 175, baseType: !2315, size: 2048, offset: 200)
!2315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2316)
!2316 = !{!2317}
!2317 = !DISubrange(count: 256)
!2318 = !{!2319, !2320, !2321, !2322, !2323, !2324, !2325}
!2319 = !DILocalVariable(name: "clnt", arg: 1, scope: !2305, file: !2, line: 769, type: !237)
!2320 = !DILocalVariable(name: "buf", arg: 2, scope: !2305, file: !2, line: 769, type: !796)
!2321 = !DILocalVariable(name: "len", arg: 3, scope: !2305, file: !2, line: 769, type: !156)
!2322 = !DILocalVariable(name: "dirent", arg: 4, scope: !2305, file: !2, line: 770, type: !2308)
!2323 = !DILocalVariable(name: "fake_pdu", scope: !2305, file: !2, line: 772, type: !324)
!2324 = !DILocalVariable(name: "ret", scope: !2305, file: !2, line: 773, type: !156)
!2325 = !DILocalVariable(name: "nameptr", scope: !2305, file: !2, line: 774, type: !796)
!2326 = !DILocation(line: 769, column: 37, scope: !2305)
!2327 = !DILocation(line: 769, column: 49, scope: !2305)
!2328 = !DILocation(line: 769, column: 58, scope: !2305)
!2329 = !DILocation(line: 770, column: 23, scope: !2305)
!2330 = !DILocation(line: 772, column: 2, scope: !2305)
!2331 = !DILocation(line: 772, column: 18, scope: !2305)
!2332 = !DILocation(line: 773, column: 2, scope: !2305)
!2333 = !DILocation(line: 773, column: 6, scope: !2305)
!2334 = !DILocation(line: 774, column: 2, scope: !2305)
!2335 = !DILocation(line: 774, column: 8, scope: !2305)
!2336 = !DILocation(line: 776, column: 18, scope: !2305)
!2337 = !DILocation(line: 776, column: 11, scope: !2305)
!2338 = !DILocation(line: 776, column: 16, scope: !2305)
!2339 = !DILocation(line: 777, column: 22, scope: !2305)
!2340 = !DILocation(line: 777, column: 11, scope: !2305)
!2341 = !DILocation(line: 777, column: 20, scope: !2305)
!2342 = !DILocation(line: 778, column: 19, scope: !2305)
!2343 = !DILocation(line: 778, column: 11, scope: !2305)
!2344 = !DILocation(line: 778, column: 17, scope: !2305)
!2345 = !DILocation(line: 779, column: 11, scope: !2305)
!2346 = !DILocation(line: 779, column: 18, scope: !2305)
!2347 = !DILocation(line: 781, column: 31, scope: !2305)
!2348 = !DILocation(line: 781, column: 37, scope: !2305)
!2349 = !DILocation(line: 781, column: 61, scope: !2305)
!2350 = !DILocation(line: 781, column: 69, scope: !2305)
!2351 = !DILocation(line: 782, column: 7, scope: !2305)
!2352 = !DILocation(line: 782, column: 15, scope: !2305)
!2353 = !DILocation(line: 782, column: 23, scope: !2305)
!2354 = !DILocation(line: 782, column: 31, scope: !2305)
!2355 = !DILocation(line: 781, column: 8, scope: !2305)
!2356 = !DILocation(line: 781, column: 6, scope: !2305)
!2357 = !DILocation(line: 783, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 783, column: 6)
!2359 = !DILocation(line: 783, column: 6, scope: !2305)
!2360 = !DILocation(line: 784, column: 3, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 784, column: 3)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !2, line: 784, column: 3)
!2363 = distinct !DILexicalBlock(scope: !2358, file: !2, line: 783, column: 11)
!2364 = !DILocation(line: 784, column: 3, scope: !2362)
!2365 = !DILocation(line: 785, column: 26, scope: !2363)
!2366 = !DILocation(line: 785, column: 3, scope: !2363)
!2367 = !DILocation(line: 786, column: 10, scope: !2363)
!2368 = !DILocation(line: 786, column: 3, scope: !2363)
!2369 = !DILocation(line: 789, column: 16, scope: !2305)
!2370 = !DILocation(line: 789, column: 24, scope: !2305)
!2371 = !DILocation(line: 789, column: 32, scope: !2305)
!2372 = !DILocation(line: 789, column: 8, scope: !2305)
!2373 = !DILocation(line: 789, column: 6, scope: !2305)
!2374 = !DILocation(line: 790, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2305, file: !2, line: 790, column: 6)
!2376 = !DILocation(line: 790, column: 10, scope: !2375)
!2377 = !DILocation(line: 790, column: 6, scope: !2305)
!2378 = !DILocation(line: 791, column: 3, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2380, file: !2, line: 791, column: 3)
!2380 = distinct !DILexicalBlock(scope: !2381, file: !2, line: 791, column: 3)
!2381 = distinct !DILexicalBlock(scope: !2375, file: !2, line: 790, column: 15)
!2382 = !DILocation(line: 791, column: 3, scope: !2380)
!2383 = !DILocation(line: 794, column: 9, scope: !2381)
!2384 = !DILocation(line: 794, column: 3, scope: !2381)
!2385 = !DILocation(line: 795, column: 10, scope: !2381)
!2386 = !DILocation(line: 795, column: 3, scope: !2381)
!2387 = !DILocation(line: 797, column: 8, scope: !2305)
!2388 = !DILocation(line: 797, column: 2, scope: !2305)
!2389 = !DILocation(line: 799, column: 18, scope: !2305)
!2390 = !DILocation(line: 799, column: 9, scope: !2305)
!2391 = !DILocation(line: 799, column: 2, scope: !2305)
!2392 = !DILocation(line: 800, column: 1, scope: !2305)
!2393 = !DISubprogram(name: "strscpy", scope: !765, file: !765, line: 72, type: !2394, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!2396, !796, !376, !139}
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !140, line: 66, baseType: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !142, line: 73, baseType: !2398)
!2398 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !142, line: 15, baseType: !2399)
!2399 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!2400 = distinct !DISubprogram(name: "__kuid_val", scope: !799, file: !799, line: 34, type: !2401, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2403)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!803, !798}
!2403 = !{!2404}
!2404 = !DILocalVariable(name: "uid", arg: 1, scope: !2400, file: !799, line: 34, type: !798)
!2405 = !DILocation(line: 34, column: 39, scope: !2400)
!2406 = !DILocation(line: 36, column: 13, scope: !2400)
!2407 = !DILocation(line: 36, column: 2, scope: !2400)
!2408 = distinct !DISubprogram(name: "__kgid_val", scope: !799, file: !799, line: 39, type: !2409, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2411)
!2409 = !DISubroutineType(types: !2410)
!2410 = !{!810, !806}
!2411 = !{!2412}
!2412 = !DILocalVariable(name: "gid", arg: 1, scope: !2408, file: !799, line: 39, type: !806)
!2413 = !DILocation(line: 39, column: 39, scope: !2408)
!2414 = !DILocation(line: 41, column: 13, scope: !2408)
!2415 = !DILocation(line: 41, column: 2, scope: !2408)
!2416 = distinct !DISubprogram(name: "copy_from_iter_full", scope: !937, file: !937, line: 214, type: !2417, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2419)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!303, !146, !139, !935}
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DILocalVariable(name: "addr", arg: 1, scope: !2416, file: !937, line: 214, type: !146)
!2421 = !DILocalVariable(name: "bytes", arg: 2, scope: !2416, file: !937, line: 214, type: !139)
!2422 = !DILocalVariable(name: "i", arg: 3, scope: !2416, file: !937, line: 214, type: !935)
!2423 = !DILocalVariable(name: "copied", scope: !2416, file: !937, line: 216, type: !139)
!2424 = !DILocation(line: 214, column: 32, scope: !2416)
!2425 = !DILocation(line: 214, column: 45, scope: !2416)
!2426 = !DILocation(line: 214, column: 69, scope: !2416)
!2427 = !DILocation(line: 216, column: 2, scope: !2416)
!2428 = !DILocation(line: 216, column: 9, scope: !2416)
!2429 = !DILocation(line: 216, column: 33, scope: !2416)
!2430 = !DILocation(line: 216, column: 39, scope: !2416)
!2431 = !DILocation(line: 216, column: 46, scope: !2416)
!2432 = !DILocation(line: 216, column: 18, scope: !2416)
!2433 = !DILocation(line: 217, column: 6, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2416, file: !937, line: 217, column: 6)
!2435 = !DILocation(line: 217, column: 6, scope: !2416)
!2436 = !DILocation(line: 218, column: 3, scope: !2434)
!2437 = !DILocation(line: 219, column: 18, scope: !2416)
!2438 = !DILocation(line: 219, column: 21, scope: !2416)
!2439 = !DILocation(line: 219, column: 2, scope: !2416)
!2440 = !DILocation(line: 220, column: 2, scope: !2416)
!2441 = !DILocation(line: 221, column: 1, scope: !2416)
!2442 = distinct !DISubprogram(name: "copy_from_iter", scope: !937, file: !937, line: 206, type: !2443, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2445)
!2443 = !DISubroutineType(types: !2444)
!2444 = !{!139, !146, !139, !935}
!2445 = !{!2446, !2447, !2448}
!2446 = !DILocalVariable(name: "addr", arg: 1, scope: !2442, file: !937, line: 206, type: !146)
!2447 = !DILocalVariable(name: "bytes", arg: 2, scope: !2442, file: !937, line: 206, type: !139)
!2448 = !DILocalVariable(name: "i", arg: 3, scope: !2442, file: !937, line: 206, type: !935)
!2449 = !DILocation(line: 206, column: 29, scope: !2442)
!2450 = !DILocation(line: 206, column: 42, scope: !2442)
!2451 = !DILocation(line: 206, column: 66, scope: !2442)
!2452 = !DILocation(line: 208, column: 22, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2442, file: !937, line: 208, column: 6)
!2454 = !DILocation(line: 208, column: 28, scope: !2453)
!2455 = !DILocation(line: 208, column: 6, scope: !2453)
!2456 = !DILocation(line: 208, column: 6, scope: !2442)
!2457 = !DILocation(line: 209, column: 26, scope: !2453)
!2458 = !DILocation(line: 209, column: 32, scope: !2453)
!2459 = !DILocation(line: 209, column: 39, scope: !2453)
!2460 = !DILocation(line: 209, column: 10, scope: !2453)
!2461 = !DILocation(line: 209, column: 3, scope: !2453)
!2462 = !DILocation(line: 210, column: 2, scope: !2442)
!2463 = !DILocation(line: 211, column: 1, scope: !2442)
!2464 = !DISubprogram(name: "iov_iter_revert", scope: !937, file: !937, line: 169, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !935, !139}
!2467 = distinct !DISubprogram(name: "check_copy_size", scope: !215, file: !215, line: 237, type: !2468, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2470)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!303, !346, !139, !303}
!2470 = !{!2471, !2472, !2473, !2474, !2475, !2478}
!2471 = !DILocalVariable(name: "addr", arg: 1, scope: !2467, file: !215, line: 237, type: !346)
!2472 = !DILocalVariable(name: "bytes", arg: 2, scope: !2467, file: !215, line: 237, type: !139)
!2473 = !DILocalVariable(name: "is_source", arg: 3, scope: !2467, file: !215, line: 237, type: !303)
!2474 = !DILocalVariable(name: "sz", scope: !2467, file: !215, line: 239, type: !156)
!2475 = !DILocalVariable(name: "__ret_warn_on", scope: !2476, file: !215, line: 249, type: !156)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !215, line: 249, column: 6)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !215, line: 249, column: 6)
!2478 = !DILocalVariable(name: "__flags", scope: !2479, file: !215, line: 249, type: !156)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !215, line: 249, column: 6)
!2480 = distinct !DILexicalBlock(scope: !2476, file: !215, line: 249, column: 6)
!2481 = !DILocation(line: 237, column: 29, scope: !2467)
!2482 = !DILocation(line: 237, column: 42, scope: !2467)
!2483 = !DILocation(line: 237, column: 54, scope: !2467)
!2484 = !DILocation(line: 239, column: 2, scope: !2467)
!2485 = !DILocation(line: 239, column: 6, scope: !2467)
!2486 = !DILocation(line: 239, column: 33, scope: !2467)
!2487 = !DILocation(line: 239, column: 11, scope: !2467)
!2488 = !DILocation(line: 240, column: 6, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2467, file: !215, line: 240, column: 6)
!2490 = !DILocation(line: 0, scope: !2489)
!2491 = !DILocation(line: 240, column: 6, scope: !2467)
!2492 = !DILocation(line: 241, column: 29, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2494, file: !215, line: 241, column: 7)
!2494 = distinct !DILexicalBlock(scope: !2489, file: !215, line: 240, column: 39)
!2495 = !DILocation(line: 241, column: 8, scope: !2493)
!2496 = !DILocation(line: 241, column: 7, scope: !2494)
!2497 = !DILocation(line: 242, column: 18, scope: !2493)
!2498 = !DILocation(line: 242, column: 22, scope: !2493)
!2499 = !DILocation(line: 242, column: 4, scope: !2493)
!2500 = !DILocation(line: 243, column: 12, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2493, file: !215, line: 243, column: 12)
!2502 = !{i8 0, i8 2}
!2503 = !{}
!2504 = !DILocation(line: 243, column: 12, scope: !2493)
!2505 = !DILocation(line: 244, column: 4, scope: !2501)
!2506 = !{i32 2123093}
!2507 = !DILocation(line: 246, column: 4, scope: !2501)
!2508 = !{i32 2123122}
!2509 = !DILocation(line: 247, column: 3, scope: !2494)
!2510 = !DILocation(line: 249, column: 6, scope: !2476)
!2511 = !DILocation(line: 249, column: 6, scope: !2480)
!2512 = !DILocation(line: 249, column: 6, scope: !2479)
!2513 = !DILocation(line: 249, column: 6, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2479, file: !215, line: 249, column: 6)
!2515 = !DILocation(line: 249, column: 6, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2479, file: !215, line: 249, column: 6)
!2517 = !{i64 2149623555, i64 2149623584, i64 2149623630, i64 2149623688, i64 2149623742, i64 2149623796, i64 2149623851, i64 2149623882, i64 2149624190, i64 2149624196, i64 2149624243, i64 2149624266, i64 2149624292}
!2518 = !DILocation(line: 249, column: 6, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2479, file: !215, line: 249, column: 6)
!2520 = !DILocation(line: 249, column: 6, scope: !2477)
!2521 = !DILocation(line: 249, column: 6, scope: !2467)
!2522 = !DILocation(line: 250, column: 3, scope: !2477)
!2523 = !DILocation(line: 251, column: 20, scope: !2467)
!2524 = !DILocation(line: 251, column: 26, scope: !2467)
!2525 = !DILocation(line: 251, column: 33, scope: !2467)
!2526 = !DILocation(line: 251, column: 2, scope: !2467)
!2527 = !DILocation(line: 252, column: 2, scope: !2467)
!2528 = !DILocation(line: 253, column: 1, scope: !2467)
!2529 = !DISubprogram(name: "_copy_from_iter", scope: !937, file: !937, line: 179, type: !2443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = distinct !DISubprogram(name: "copy_overflow", scope: !215, file: !215, line: 230, type: !2531, scopeLine: 231, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2533)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !156, !144}
!2533 = !{!2534, !2535}
!2534 = !DILocalVariable(name: "size", arg: 1, scope: !2530, file: !215, line: 230, type: !156)
!2535 = !DILocalVariable(name: "count", arg: 2, scope: !2530, file: !215, line: 230, type: !144)
!2536 = !DILocation(line: 230, column: 38, scope: !2530)
!2537 = !DILocation(line: 230, column: 58, scope: !2530)
!2538 = !DILocation(line: 233, column: 19, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2530, file: !215, line: 232, column: 6)
!2540 = !DILocation(line: 233, column: 25, scope: !2539)
!2541 = !DILocation(line: 233, column: 3, scope: !2539)
!2542 = !DILocation(line: 234, column: 1, scope: !2530)
!2543 = !DISubprogram(name: "__bad_copy_from", scope: !215, file: !215, line: 224, type: !2544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{null}
!2546 = !DISubprogram(name: "__bad_copy_to", scope: !215, file: !215, line: 226, type: !2544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2547 = distinct !DISubprogram(name: "check_object_size", scope: !215, file: !215, line: 218, type: !2548, scopeLine: 220, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2550)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !346, !144, !303}
!2550 = !{!2551, !2552, !2553}
!2551 = !DILocalVariable(name: "ptr", arg: 1, scope: !2547, file: !215, line: 218, type: !346)
!2552 = !DILocalVariable(name: "n", arg: 2, scope: !2547, file: !215, line: 218, type: !144)
!2553 = !DILocalVariable(name: "to_user", arg: 3, scope: !2547, file: !215, line: 219, type: !303)
!2554 = !DILocation(line: 218, column: 50, scope: !2547)
!2555 = !DILocation(line: 218, column: 69, scope: !2547)
!2556 = !DILocation(line: 219, column: 15, scope: !2547)
!2557 = !DILocation(line: 220, column: 3, scope: !2547)
!2558 = !DISubprogram(name: "__copy_overflow", scope: !215, file: !215, line: 228, type: !2531, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2559 = distinct !DISubprogram(name: "kmalloc", scope: !129, file: !129, line: 591, type: !2560, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2562)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!146, !139, !157}
!2562 = !{!2563, !2564, !2565}
!2563 = !DILocalVariable(name: "size", arg: 1, scope: !2559, file: !129, line: 591, type: !139)
!2564 = !DILocalVariable(name: "flags", arg: 2, scope: !2559, file: !129, line: 591, type: !157)
!2565 = !DILocalVariable(name: "index", scope: !2566, file: !129, line: 594, type: !41)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !129, line: 593, column: 42)
!2567 = distinct !DILexicalBlock(scope: !2559, file: !129, line: 593, column: 6)
!2568 = !DILocation(line: 591, column: 61, scope: !2559)
!2569 = !DILocation(line: 591, column: 73, scope: !2559)
!2570 = !DILocation(line: 593, column: 27, scope: !2567)
!2571 = !DILocation(line: 593, column: 6, scope: !2567)
!2572 = !DILocation(line: 593, column: 33, scope: !2567)
!2573 = !DILocation(line: 593, column: 36, scope: !2567)
!2574 = !DILocation(line: 593, column: 6, scope: !2559)
!2575 = !DILocation(line: 594, column: 3, scope: !2566)
!2576 = !DILocation(line: 594, column: 16, scope: !2566)
!2577 = !DILocation(line: 596, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2566, file: !129, line: 596, column: 7)
!2579 = !DILocation(line: 596, column: 12, scope: !2578)
!2580 = !DILocation(line: 596, column: 7, scope: !2566)
!2581 = !DILocation(line: 597, column: 25, scope: !2578)
!2582 = !DILocation(line: 597, column: 31, scope: !2578)
!2583 = !DILocation(line: 597, column: 11, scope: !2578)
!2584 = !DILocation(line: 597, column: 4, scope: !2578)
!2585 = !DILocation(line: 599, column: 11, scope: !2566)
!2586 = !DILocation(line: 599, column: 9, scope: !2566)
!2587 = !DILocation(line: 601, column: 33, scope: !2566)
!2588 = !DILocation(line: 601, column: 40, scope: !2566)
!2589 = !DILocation(line: 601, column: 20, scope: !2566)
!2590 = !DILocation(line: 601, column: 5, scope: !2566)
!2591 = !DILocation(line: 601, column: 51, scope: !2566)
!2592 = !DILocation(line: 602, column: 5, scope: !2566)
!2593 = !DILocation(line: 602, column: 12, scope: !2566)
!2594 = !DILocation(line: 600, column: 10, scope: !2566)
!2595 = !DILocation(line: 600, column: 3, scope: !2566)
!2596 = !DILocation(line: 603, column: 2, scope: !2567)
!2597 = !DILocation(line: 604, column: 19, scope: !2559)
!2598 = !DILocation(line: 604, column: 25, scope: !2559)
!2599 = !DILocation(line: 604, column: 9, scope: !2559)
!2600 = !DILocation(line: 604, column: 2, scope: !2559)
!2601 = !DILocation(line: 605, column: 1, scope: !2559)
!2602 = distinct !DISubprogram(name: "make_kuid", scope: !799, file: !799, line: 143, type: !2603, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2605)
!2603 = !DISubroutineType(types: !2604)
!2604 = !{!798, !1424, !803}
!2605 = !{!2606, !2607}
!2606 = !DILocalVariable(name: "from", arg: 1, scope: !2602, file: !799, line: 143, type: !1424)
!2607 = !DILocalVariable(name: "uid", arg: 2, scope: !2602, file: !799, line: 143, type: !803)
!2608 = !DILocation(line: 143, column: 55, scope: !2602)
!2609 = !DILocation(line: 143, column: 67, scope: !2602)
!2610 = !DILocation(line: 145, column: 9, scope: !2602)
!2611 = !DILocation(line: 145, column: 2, scope: !2602)
!2612 = distinct !DISubprogram(name: "make_kgid", scope: !799, file: !799, line: 148, type: !2613, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2615)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{!806, !1424, !810}
!2615 = !{!2616, !2617}
!2616 = !DILocalVariable(name: "from", arg: 1, scope: !2612, file: !799, line: 148, type: !1424)
!2617 = !DILocalVariable(name: "gid", arg: 2, scope: !2612, file: !799, line: 148, type: !810)
!2618 = !DILocation(line: 148, column: 55, scope: !2612)
!2619 = !DILocation(line: 148, column: 67, scope: !2612)
!2620 = !DILocation(line: 150, column: 9, scope: !2612)
!2621 = !DILocation(line: 150, column: 2, scope: !2612)
!2622 = distinct !DISubprogram(name: "kmalloc_array", scope: !129, file: !129, line: 629, type: !2623, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2625)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!146, !139, !139, !157}
!2625 = !{!2626, !2627, !2628, !2629}
!2626 = !DILocalVariable(name: "n", arg: 1, scope: !2622, file: !129, line: 629, type: !139)
!2627 = !DILocalVariable(name: "size", arg: 2, scope: !2622, file: !129, line: 629, type: !139)
!2628 = !DILocalVariable(name: "flags", arg: 3, scope: !2622, file: !129, line: 629, type: !157)
!2629 = !DILocalVariable(name: "bytes", scope: !2622, file: !129, line: 631, type: !139)
!2630 = !DILocation(line: 629, column: 61, scope: !2622)
!2631 = !DILocation(line: 629, column: 71, scope: !2622)
!2632 = !DILocation(line: 629, column: 83, scope: !2622)
!2633 = !DILocation(line: 631, column: 2, scope: !2622)
!2634 = !DILocation(line: 631, column: 9, scope: !2622)
!2635 = !DILocation(line: 633, column: 6, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2622, file: !129, line: 633, column: 6)
!2637 = !DILocation(line: 633, column: 6, scope: !2622)
!2638 = !DILocation(line: 634, column: 3, scope: !2636)
!2639 = !DILocation(line: 635, column: 27, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2622, file: !129, line: 635, column: 6)
!2641 = !DILocation(line: 635, column: 6, scope: !2640)
!2642 = !DILocation(line: 635, column: 30, scope: !2640)
!2643 = !DILocation(line: 635, column: 54, scope: !2640)
!2644 = !DILocation(line: 635, column: 33, scope: !2640)
!2645 = !DILocation(line: 635, column: 6, scope: !2622)
!2646 = !DILocation(line: 636, column: 18, scope: !2640)
!2647 = !DILocation(line: 636, column: 25, scope: !2640)
!2648 = !DILocation(line: 636, column: 10, scope: !2640)
!2649 = !DILocation(line: 636, column: 3, scope: !2640)
!2650 = !DILocation(line: 637, column: 19, scope: !2622)
!2651 = !DILocation(line: 637, column: 26, scope: !2622)
!2652 = !DILocation(line: 637, column: 9, scope: !2622)
!2653 = !DILocation(line: 637, column: 2, scope: !2622)
!2654 = !DILocation(line: 638, column: 1, scope: !2622)
!2655 = !DISubprogram(name: "kmalloc_large", scope: !129, file: !129, line: 531, type: !2560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2656 = distinct !DISubprogram(name: "__kmalloc_index", scope: !129, file: !129, line: 444, type: !2657, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2659)
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!41, !139, !303}
!2659 = !{!2660, !2661}
!2660 = !DILocalVariable(name: "size", arg: 1, scope: !2656, file: !129, line: 444, type: !139)
!2661 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2656, file: !129, line: 445, type: !303)
!2662 = !DILocation(line: 444, column: 60, scope: !2656)
!2663 = !DILocation(line: 445, column: 16, scope: !2656)
!2664 = !DILocation(line: 447, column: 7, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 447, column: 6)
!2666 = !DILocation(line: 447, column: 6, scope: !2656)
!2667 = !DILocation(line: 448, column: 3, scope: !2665)
!2668 = !DILocation(line: 450, column: 6, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 450, column: 6)
!2670 = !DILocation(line: 450, column: 11, scope: !2669)
!2671 = !DILocation(line: 450, column: 6, scope: !2656)
!2672 = !DILocation(line: 451, column: 3, scope: !2669)
!2673 = !DILocation(line: 453, column: 32, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 453, column: 6)
!2675 = !DILocation(line: 453, column: 37, scope: !2674)
!2676 = !DILocation(line: 453, column: 42, scope: !2674)
!2677 = !DILocation(line: 453, column: 45, scope: !2674)
!2678 = !DILocation(line: 453, column: 50, scope: !2674)
!2679 = !DILocation(line: 453, column: 6, scope: !2656)
!2680 = !DILocation(line: 454, column: 3, scope: !2674)
!2681 = !DILocation(line: 455, column: 32, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 455, column: 6)
!2683 = !DILocation(line: 455, column: 37, scope: !2682)
!2684 = !DILocation(line: 455, column: 43, scope: !2682)
!2685 = !DILocation(line: 455, column: 46, scope: !2682)
!2686 = !DILocation(line: 455, column: 51, scope: !2682)
!2687 = !DILocation(line: 455, column: 6, scope: !2656)
!2688 = !DILocation(line: 456, column: 3, scope: !2682)
!2689 = !DILocation(line: 457, column: 6, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 457, column: 6)
!2691 = !DILocation(line: 457, column: 11, scope: !2690)
!2692 = !DILocation(line: 457, column: 6, scope: !2656)
!2693 = !DILocation(line: 457, column: 26, scope: !2690)
!2694 = !DILocation(line: 458, column: 6, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 458, column: 6)
!2696 = !DILocation(line: 458, column: 11, scope: !2695)
!2697 = !DILocation(line: 458, column: 6, scope: !2656)
!2698 = !DILocation(line: 458, column: 26, scope: !2695)
!2699 = !DILocation(line: 459, column: 6, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 459, column: 6)
!2701 = !DILocation(line: 459, column: 11, scope: !2700)
!2702 = !DILocation(line: 459, column: 6, scope: !2656)
!2703 = !DILocation(line: 459, column: 26, scope: !2700)
!2704 = !DILocation(line: 460, column: 6, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 460, column: 6)
!2706 = !DILocation(line: 460, column: 11, scope: !2705)
!2707 = !DILocation(line: 460, column: 6, scope: !2656)
!2708 = !DILocation(line: 460, column: 26, scope: !2705)
!2709 = !DILocation(line: 461, column: 6, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 461, column: 6)
!2711 = !DILocation(line: 461, column: 11, scope: !2710)
!2712 = !DILocation(line: 461, column: 6, scope: !2656)
!2713 = !DILocation(line: 461, column: 26, scope: !2710)
!2714 = !DILocation(line: 462, column: 6, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 462, column: 6)
!2716 = !DILocation(line: 462, column: 11, scope: !2715)
!2717 = !DILocation(line: 462, column: 6, scope: !2656)
!2718 = !DILocation(line: 462, column: 26, scope: !2715)
!2719 = !DILocation(line: 463, column: 6, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 463, column: 6)
!2721 = !DILocation(line: 463, column: 11, scope: !2720)
!2722 = !DILocation(line: 463, column: 6, scope: !2656)
!2723 = !DILocation(line: 463, column: 26, scope: !2720)
!2724 = !DILocation(line: 464, column: 6, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 464, column: 6)
!2726 = !DILocation(line: 464, column: 11, scope: !2725)
!2727 = !DILocation(line: 464, column: 6, scope: !2656)
!2728 = !DILocation(line: 464, column: 26, scope: !2725)
!2729 = !DILocation(line: 465, column: 6, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 465, column: 6)
!2731 = !DILocation(line: 465, column: 11, scope: !2730)
!2732 = !DILocation(line: 465, column: 6, scope: !2656)
!2733 = !DILocation(line: 465, column: 26, scope: !2730)
!2734 = !DILocation(line: 466, column: 6, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 466, column: 6)
!2736 = !DILocation(line: 466, column: 11, scope: !2735)
!2737 = !DILocation(line: 466, column: 6, scope: !2656)
!2738 = !DILocation(line: 466, column: 26, scope: !2735)
!2739 = !DILocation(line: 467, column: 6, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 467, column: 6)
!2741 = !DILocation(line: 467, column: 11, scope: !2740)
!2742 = !DILocation(line: 467, column: 6, scope: !2656)
!2743 = !DILocation(line: 467, column: 26, scope: !2740)
!2744 = !DILocation(line: 468, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 468, column: 6)
!2746 = !DILocation(line: 468, column: 11, scope: !2745)
!2747 = !DILocation(line: 468, column: 6, scope: !2656)
!2748 = !DILocation(line: 468, column: 26, scope: !2745)
!2749 = !DILocation(line: 469, column: 6, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 469, column: 6)
!2751 = !DILocation(line: 469, column: 11, scope: !2750)
!2752 = !DILocation(line: 469, column: 6, scope: !2656)
!2753 = !DILocation(line: 469, column: 26, scope: !2750)
!2754 = !DILocation(line: 470, column: 6, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 470, column: 6)
!2756 = !DILocation(line: 470, column: 11, scope: !2755)
!2757 = !DILocation(line: 470, column: 6, scope: !2656)
!2758 = !DILocation(line: 470, column: 26, scope: !2755)
!2759 = !DILocation(line: 471, column: 6, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 471, column: 6)
!2761 = !DILocation(line: 471, column: 11, scope: !2760)
!2762 = !DILocation(line: 471, column: 6, scope: !2656)
!2763 = !DILocation(line: 471, column: 26, scope: !2760)
!2764 = !DILocation(line: 472, column: 6, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 472, column: 6)
!2766 = !DILocation(line: 472, column: 11, scope: !2765)
!2767 = !DILocation(line: 472, column: 6, scope: !2656)
!2768 = !DILocation(line: 472, column: 26, scope: !2765)
!2769 = !DILocation(line: 473, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 473, column: 6)
!2771 = !DILocation(line: 473, column: 11, scope: !2770)
!2772 = !DILocation(line: 473, column: 6, scope: !2656)
!2773 = !DILocation(line: 473, column: 26, scope: !2770)
!2774 = !DILocation(line: 474, column: 6, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 474, column: 6)
!2776 = !DILocation(line: 474, column: 11, scope: !2775)
!2777 = !DILocation(line: 474, column: 6, scope: !2656)
!2778 = !DILocation(line: 474, column: 27, scope: !2775)
!2779 = !DILocation(line: 475, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 475, column: 6)
!2781 = !DILocation(line: 475, column: 11, scope: !2780)
!2782 = !DILocation(line: 475, column: 6, scope: !2656)
!2783 = !DILocation(line: 475, column: 32, scope: !2780)
!2784 = !DILocation(line: 477, column: 50, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2656, file: !129, line: 477, column: 6)
!2786 = !DILocation(line: 477, column: 6, scope: !2656)
!2787 = !DILocation(line: 478, column: 3, scope: !2785)
!2788 = !DILocation(line: 478, column: 3, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2790, file: !129, line: 478, column: 3)
!2790 = distinct !DILexicalBlock(scope: !2785, file: !129, line: 478, column: 3)
!2791 = !{i32 -2142000763}
!2792 = !DILocation(line: 478, column: 3, scope: !2790)
!2793 = !DILocation(line: 480, column: 3, scope: !2785)
!2794 = !DILocation(line: 480, column: 3, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2785, file: !129, line: 480, column: 3)
!2796 = !DILocation(line: 480, column: 3, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2795, file: !129, line: 480, column: 3)
!2798 = !DILocation(line: 480, column: 3, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2795, file: !129, line: 480, column: 3)
!2800 = !{i64 2152966736, i64 2152966765, i64 2152966811, i64 2152966869, i64 2152966923, i64 2152966977, i64 2152967032, i64 2152967063}
!2801 = !DILocation(line: 483, column: 2, scope: !2656)
!2802 = !DILocation(line: 484, column: 1, scope: !2656)
!2803 = !DISubprogram(name: "kmalloc_trace", scope: !129, file: !129, line: 525, type: !2804, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{!146, !287, !157, !139}
!2806 = distinct !DISubprogram(name: "kmalloc_type", scope: !129, file: !129, line: 401, type: !2807, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2809)
!2807 = !DISubroutineType(types: !2808)
!2808 = !{!128, !157, !144}
!2809 = !{!2810, !2811}
!2810 = !DILocalVariable(name: "flags", arg: 1, scope: !2806, file: !129, line: 401, type: !157)
!2811 = !DILocalVariable(name: "caller", arg: 2, scope: !2806, file: !129, line: 401, type: !144)
!2812 = !DILocation(line: 401, column: 67, scope: !2806)
!2813 = !DILocation(line: 401, column: 88, scope: !2806)
!2814 = !DILocation(line: 407, column: 6, scope: !2815)
!2815 = distinct !DILexicalBlock(scope: !2806, file: !129, line: 407, column: 6)
!2816 = !DILocation(line: 407, column: 6, scope: !2806)
!2817 = !DILocation(line: 413, column: 3, scope: !2815)
!2818 = !DILocation(line: 423, column: 38, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2806, file: !129, line: 423, column: 6)
!2820 = !DILocation(line: 423, column: 44, scope: !2819)
!2821 = !DILocation(line: 423, column: 6, scope: !2806)
!2822 = !DILocation(line: 424, column: 3, scope: !2819)
!2823 = !DILocation(line: 426, column: 3, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2806, file: !129, line: 425, column: 6)
!2825 = !DILocation(line: 429, column: 1, scope: !2806)
!2826 = !DISubprogram(name: "__kmalloc", scope: !129, file: !129, line: 488, type: !2560, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2827 = !DISubprogram(name: "__compiletime_assert_220", scope: !129, file: !129, line: 478, type: !2544, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2828 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2829, file: !2829, line: 51, type: !2830, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2832)
!2829 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2830 = !DISubroutineType(types: !2831)
!2831 = !{!303, !303}
!2832 = !{!2833}
!2833 = !DILocalVariable(name: "overflow", arg: 1, scope: !2828, file: !2829, line: 51, type: !303)
!2834 = !DILocation(line: 51, column: 60, scope: !2828)
!2835 = !DILocation(line: 53, column: 9, scope: !2828)
!2836 = !DILocation(line: 53, column: 2, scope: !2828)
!2837 = distinct !DISubprogram(name: "static_key_false", scope: !2838, file: !2838, line: 205, type: !2839, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2859)
!2838 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!2839 = !DISubroutineType(types: !2840)
!2840 = !{!303, !2841}
!2841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2842, size: 64)
!2842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !2838, line: 85, size: 128, elements: !2843)
!2843 = !{!2844, !2845}
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2842, file: !2838, line: 86, baseType: !261, size: 32)
!2845 = !DIDerivedType(tag: DW_TAG_member, scope: !2842, file: !2838, line: 101, baseType: !2846, size: 64, offset: 64)
!2846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2842, file: !2838, line: 101, size: 64, elements: !2847)
!2847 = !{!2848, !2849, !2856}
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2846, file: !2838, line: 102, baseType: !144, size: 64)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2846, file: !2838, line: 103, baseType: !2850, size: 64)
!2850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2851, size: 64)
!2851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !2838, line: 117, size: 128, elements: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2851, file: !2838, line: 118, baseType: !448, size: 32)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2851, file: !2838, line: 119, baseType: !448, size: 32, offset: 32)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2851, file: !2838, line: 120, baseType: !2399, size: 64, offset: 64)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2846, file: !2838, line: 104, baseType: !2857, size: 64)
!2857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2858, size: 64)
!2858 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !2838, line: 104, flags: DIFlagFwdDecl)
!2859 = !{!2860}
!2860 = !DILocalVariable(name: "key", arg: 1, scope: !2837, file: !2838, line: 205, type: !2841)
!2861 = !DILocation(line: 205, column: 65, scope: !2837)
!2862 = !DILocation(line: 207, column: 28, scope: !2837)
!2863 = !DILocation(line: 207, column: 9, scope: !2837)
!2864 = !DILocation(line: 207, column: 2, scope: !2837)
!2865 = distinct !DISubprogram(name: "cpu_online", scope: !175, file: !175, line: 1080, type: !2866, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2868)
!2866 = !DISubroutineType(types: !2867)
!2867 = !{!303, !41}
!2868 = !{!2869}
!2869 = !DILocalVariable(name: "cpu", arg: 1, scope: !2865, file: !175, line: 1080, type: !41)
!2870 = !DILocation(line: 1080, column: 44, scope: !2865)
!2871 = !DILocation(line: 1082, column: 26, scope: !2865)
!2872 = !DILocation(line: 1082, column: 9, scope: !2865)
!2873 = !DILocation(line: 1082, column: 2, scope: !2865)
!2874 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2875, file: !2875, line: 78, type: !2876, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2878)
!2875 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2876 = !DISubroutineType(types: !2877)
!2877 = !{null, !156}
!2878 = !{!2879, !2880, !2882}
!2879 = !DILocalVariable(name: "val", arg: 1, scope: !2874, file: !2875, line: 78, type: !156)
!2880 = !DILocalVariable(name: "pao_ID__", scope: !2881, file: !2875, line: 80, type: !391)
!2881 = distinct !DILexicalBlock(scope: !2874, file: !2875, line: 80, column: 2)
!2882 = !DILocalVariable(name: "pto_val__", scope: !2883, file: !2875, line: 80, type: !159)
!2883 = distinct !DILexicalBlock(scope: !2884, file: !2875, line: 80, column: 2)
!2884 = distinct !DILexicalBlock(scope: !2885, file: !2875, line: 80, column: 2)
!2885 = distinct !DILexicalBlock(scope: !2881, file: !2875, line: 80, column: 2)
!2886 = !DILocation(line: 78, column: 53, scope: !2874)
!2887 = !DILocation(line: 80, column: 2, scope: !2874)
!2888 = !DILocation(line: 80, column: 2, scope: !2881)
!2889 = !DILocation(line: 80, column: 2, scope: !2885)
!2890 = !DILocation(line: 80, column: 2, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2885, file: !2875, line: 80, column: 2)
!2892 = !{i64 2149631065}
!2893 = !DILocation(line: 80, column: 2, scope: !2884)
!2894 = !DILocation(line: 80, column: 2, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2884, file: !2875, line: 80, column: 2)
!2896 = !{i64 2149631360}
!2897 = !DILocation(line: 80, column: 2, scope: !2883)
!2898 = !{i64 2149632065}
!2899 = !DILocation(line: 81, column: 1, scope: !2874)
!2900 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2875, file: !2875, line: 93, type: !2901, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2903)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!303}
!2903 = !{!2904}
!2904 = !DILocalVariable(name: "c", scope: !2905, file: !2875, line: 95, type: !303)
!2905 = distinct !DILexicalBlock(scope: !2900, file: !2875, line: 95, column: 9)
!2906 = !DILocation(line: 95, column: 9, scope: !2905)
!2907 = !{i64 2149635421, i64 2149635514}
!2908 = !DILocation(line: 95, column: 9, scope: !2900)
!2909 = !DILocation(line: 95, column: 2, scope: !2900)
!2910 = distinct !DISubprogram(name: "arch_static_branch", scope: !2911, file: !2911, line: 25, type: !2912, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2914)
!2911 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!303, !2841, !303}
!2914 = !{!2915, !2916, !2917}
!2915 = !DILocalVariable(name: "key", arg: 1, scope: !2910, file: !2911, line: 25, type: !2841)
!2916 = !DILocalVariable(name: "branch", arg: 2, scope: !2910, file: !2911, line: 25, type: !303)
!2917 = !DILabel(scope: !2910, name: "l_yes", file: !2911, line: 33)
!2918 = !DILocation(line: 25, column: 67, scope: !2910)
!2919 = !DILocation(line: 25, column: 77, scope: !2910)
!2920 = !DILocation(line: 30, column: 13, scope: !2910)
!2921 = !DILocation(line: 30, column: 28, scope: !2910)
!2922 = !DILocation(line: 30, column: 26, scope: !2910)
!2923 = !DILocation(line: 27, column: 2, scope: !2910)
!2924 = !{i64 656478, i64 656522, i64 2148141205, i64 2148141226, i64 2148141252, i64 2148141285, i64 2148141319, i64 2148141343}
!2925 = !DILocation(line: 32, column: 2, scope: !2910)
!2926 = !DILocation(line: 33, column: 1, scope: !2910)
!2927 = !DILocation(line: 34, column: 2, scope: !2910)
!2928 = !DILocation(line: 35, column: 1, scope: !2910)
!2929 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !175, file: !175, line: 502, type: !2930, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2932)
!2930 = !DISubroutineType(types: !2931)
!2931 = !{!303, !156, !172}
!2932 = !{!2933, !2934}
!2933 = !DILocalVariable(name: "cpu", arg: 1, scope: !2929, file: !175, line: 502, type: !156)
!2934 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2929, file: !175, line: 502, type: !172)
!2935 = !DILocation(line: 502, column: 50, scope: !2929)
!2936 = !DILocation(line: 502, column: 77, scope: !2929)
!2937 = !DILocation(line: 504, column: 9, scope: !2929)
!2938 = !DILocation(line: 504, column: 2, scope: !2929)
!2939 = distinct !DISubprogram(name: "_test_bit", scope: !2940, file: !2940, line: 139, type: !2941, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2946)
!2940 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2941 = !DISubroutineType(types: !2942)
!2942 = !{!303, !144, !2943}
!2943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2944, size: 64)
!2944 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !144)
!2946 = !{!2947, !2948}
!2947 = !DILocalVariable(name: "nr", arg: 1, scope: !2939, file: !2940, line: 139, type: !144)
!2948 = !DILocalVariable(name: "addr", arg: 2, scope: !2939, file: !2940, line: 139, type: !2943)
!2949 = !DILocation(line: 139, column: 25, scope: !2939)
!2950 = !DILocation(line: 139, column: 59, scope: !2939)
!2951 = !DILocation(line: 141, column: 25, scope: !2939)
!2952 = !DILocation(line: 141, column: 32, scope: !2939)
!2953 = !DILocation(line: 141, column: 30, scope: !2939)
!2954 = !DILocation(line: 141, column: 2, scope: !2939)
!2955 = !DILocation(line: 142, column: 23, scope: !2939)
!2956 = !DILocation(line: 142, column: 27, scope: !2939)
!2957 = !DILocation(line: 142, column: 9, scope: !2939)
!2958 = !DILocation(line: 142, column: 2, scope: !2939)
!2959 = distinct !DISubprogram(name: "cpumask_check", scope: !175, file: !175, line: 148, type: !2960, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2962)
!2960 = !DISubroutineType(types: !2961)
!2961 = !{!41, !41}
!2962 = !{!2963}
!2963 = !DILocalVariable(name: "cpu", arg: 1, scope: !2959, file: !175, line: 148, type: !41)
!2964 = !DILocation(line: 148, column: 64, scope: !2959)
!2965 = !DILocation(line: 150, column: 20, scope: !2959)
!2966 = !DILocation(line: 150, column: 2, scope: !2959)
!2967 = !DILocation(line: 151, column: 9, scope: !2959)
!2968 = !DILocation(line: 151, column: 2, scope: !2959)
!2969 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2970, file: !2970, line: 66, type: !2971, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2976)
!2970 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2971 = !DISubroutineType(types: !2972)
!2972 = !{null, !2973, !139}
!2973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2974, size: 64)
!2974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2975)
!2975 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "v", arg: 1, scope: !2969, file: !2970, line: 66, type: !2973)
!2978 = !DILocalVariable(name: "size", arg: 2, scope: !2969, file: !2970, line: 66, type: !139)
!2979 = !DILocation(line: 66, column: 73, scope: !2969)
!2980 = !DILocation(line: 66, column: 83, scope: !2969)
!2981 = !DILocation(line: 68, column: 19, scope: !2969)
!2982 = !DILocation(line: 68, column: 22, scope: !2969)
!2983 = !DILocation(line: 68, column: 2, scope: !2969)
!2984 = !DILocation(line: 69, column: 2, scope: !2969)
!2985 = !DILocation(line: 70, column: 1, scope: !2969)
!2986 = distinct !DISubprogram(name: "arch_test_bit", scope: !2987, file: !2987, line: 237, type: !2941, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !2988)
!2987 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2988 = !{!2989, !2990}
!2989 = !DILocalVariable(name: "nr", arg: 1, scope: !2986, file: !2987, line: 237, type: !144)
!2990 = !DILocalVariable(name: "addr", arg: 2, scope: !2986, file: !2987, line: 237, type: !2943)
!2991 = !DILocation(line: 237, column: 29, scope: !2986)
!2992 = !DILocation(line: 237, column: 63, scope: !2986)
!2993 = !DILocation(line: 239, column: 30, scope: !2986)
!2994 = !DILocation(line: 239, column: 9, scope: !2986)
!2995 = !DILocation(line: 239, column: 54, scope: !2986)
!2996 = !DILocation(line: 239, column: 58, scope: !2986)
!2997 = !DILocation(line: 239, column: 36, scope: !2986)
!2998 = !DILocation(line: 240, column: 26, scope: !2986)
!2999 = !DILocation(line: 240, column: 30, scope: !2986)
!3000 = !DILocation(line: 240, column: 8, scope: !2986)
!3001 = !DILocation(line: 239, column: 2, scope: !2986)
!3002 = distinct !DISubprogram(name: "kasan_check_read", scope: !3003, file: !3003, line: 40, type: !3004, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !3006)
!3003 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!303, !2973, !41}
!3006 = !{!3007, !3008}
!3007 = !DILocalVariable(name: "p", arg: 1, scope: !3002, file: !3003, line: 40, type: !2973)
!3008 = !DILocalVariable(name: "size", arg: 2, scope: !3002, file: !3003, line: 40, type: !41)
!3009 = !DILocation(line: 40, column: 58, scope: !3002)
!3010 = !DILocation(line: 40, column: 74, scope: !3002)
!3011 = !DILocation(line: 42, column: 2, scope: !3002)
!3012 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3013, file: !3013, line: 229, type: !3014, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !3016)
!3013 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !2973, !139, !156}
!3016 = !{!3017, !3018, !3019}
!3017 = !DILocalVariable(name: "ptr", arg: 1, scope: !3012, file: !3013, line: 229, type: !2973)
!3018 = !DILocalVariable(name: "size", arg: 2, scope: !3012, file: !3013, line: 229, type: !139)
!3019 = !DILocalVariable(name: "type", arg: 3, scope: !3012, file: !3013, line: 230, type: !156)
!3020 = !DILocation(line: 229, column: 60, scope: !3012)
!3021 = !DILocation(line: 229, column: 72, scope: !3012)
!3022 = !DILocation(line: 230, column: 15, scope: !3012)
!3023 = !DILocation(line: 230, column: 23, scope: !3012)
!3024 = distinct !DISubprogram(name: "constant_test_bit", scope: !2987, file: !2987, line: 204, type: !3025, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !3027)
!3025 = !DISubroutineType(types: !3026)
!3026 = !{!303, !2399, !2943}
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "nr", arg: 1, scope: !3024, file: !2987, line: 204, type: !2399)
!3029 = !DILocalVariable(name: "addr", arg: 2, scope: !3024, file: !2987, line: 204, type: !2943)
!3030 = !DILocation(line: 204, column: 52, scope: !3024)
!3031 = !DILocation(line: 204, column: 86, scope: !3024)
!3032 = !DILocation(line: 206, column: 19, scope: !3024)
!3033 = !DILocation(line: 206, column: 22, scope: !3024)
!3034 = !DILocation(line: 206, column: 15, scope: !3024)
!3035 = !DILocation(line: 207, column: 4, scope: !3024)
!3036 = !DILocation(line: 207, column: 9, scope: !3024)
!3037 = !DILocation(line: 207, column: 12, scope: !3024)
!3038 = !DILocation(line: 206, column: 44, scope: !3024)
!3039 = !DILocation(line: 207, column: 37, scope: !3024)
!3040 = !DILocation(line: 206, column: 2, scope: !3024)
!3041 = distinct !DISubprogram(name: "variable_test_bit", scope: !2987, file: !2987, line: 224, type: !3025, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !3042)
!3042 = !{!3043, !3044, !3045}
!3043 = !DILocalVariable(name: "nr", arg: 1, scope: !3041, file: !2987, line: 224, type: !2399)
!3044 = !DILocalVariable(name: "addr", arg: 2, scope: !3041, file: !2987, line: 224, type: !2943)
!3045 = !DILocalVariable(name: "oldbit", scope: !3041, file: !2987, line: 226, type: !303)
!3046 = !DILocation(line: 224, column: 52, scope: !3041)
!3047 = !DILocation(line: 224, column: 86, scope: !3041)
!3048 = !DILocation(line: 226, column: 2, scope: !3041)
!3049 = !DILocation(line: 226, column: 7, scope: !3041)
!3050 = !DILocation(line: 231, column: 33, scope: !3041)
!3051 = !DILocation(line: 231, column: 46, scope: !3041)
!3052 = !DILocation(line: 228, column: 2, scope: !3041)
!3053 = !{i64 2148358501, i64 2148358575}
!3054 = !DILocation(line: 233, column: 9, scope: !3041)
!3055 = !DILocation(line: 234, column: 1, scope: !3041)
!3056 = !DILocation(line: 233, column: 2, scope: !3041)
!3057 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !175, file: !175, line: 140, type: !3058, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !37, retainedNodes: !3060)
!3058 = !DISubroutineType(types: !3059)
!3059 = !{null, !41, !41}
!3060 = !{!3061, !3062}
!3061 = !DILocalVariable(name: "cpu", arg: 1, scope: !3057, file: !175, line: 140, type: !41)
!3062 = !DILocalVariable(name: "bits", arg: 2, scope: !3057, file: !175, line: 140, type: !41)
!3063 = !DILocation(line: 140, column: 60, scope: !3057)
!3064 = !DILocation(line: 140, column: 78, scope: !3057)
!3065 = !DILocation(line: 145, column: 1, scope: !3057)

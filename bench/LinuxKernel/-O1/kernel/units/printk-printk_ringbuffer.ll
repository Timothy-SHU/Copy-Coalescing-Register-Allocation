; ModuleID = 'kernel/printk/printk_ringbuffer.c'
source_filename = "kernel/printk/printk_ringbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printk_ringbuffer = type { %struct.prb_desc_ring, %struct.prb_data_ring, %struct.atomic64_t }
%struct.prb_desc_ring = type { i32, ptr, ptr, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.prb_data_ring = type { i32, ptr, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.prb_reserved_entry = type { ptr, i64, i64, i32 }
%struct.printk_info = type { i64, i64, i16, i8, i8, i32, %struct.dev_printk_info }
%struct.dev_printk_info = type { [16 x i8], [48 x i8] }
%struct.prb_desc = type { %struct.atomic64_t, %struct.prb_data_blk_lpos }
%struct.prb_data_blk_lpos = type { i64, i64 }
%struct.printk_record = type { ptr, ptr, i32 }
%struct.prb_data_block = type { i64, [0 x i8] }

@.str = private unnamed_addr constant [34 x i8] c"kernel/printk/printk_ringbuffer.c\00", align 1, !dbg !0
@prb_reserve_in_last.__already_done = internal global i8 0, section ".data..once", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [43 x i8] c"\014wrong text_len value (%hu, expecting 0)\0A\00", align 1, !dbg !131
@prb_reserve_in_last.__already_done.2 = internal global i8 0, section ".data..once", align 1, !dbg !136
@.str.3 = private unnamed_addr constant [46 x i8] c"\014wrong text_len value (%hu, expecting <=%u)\0A\00", align 1, !dbg !138
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !143

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @prb_reserve_in_last(ptr noundef %e, ptr noundef %rb, ptr noundef %r, i32 noundef %caller_id, i32 noundef %max_size) #0 align 16 !dbg !9 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca ptr, align 8
  %rb.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %caller_id.addr = alloca i32, align 4
  %max_size.addr = alloca i32, align 4
  %desc_ring = alloca ptr, align 8
  %info = alloca ptr, align 8
  %data_size = alloca i32, align 4
  %d = alloca ptr, align 8
  %id = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy8 = alloca i64, align 8
  %__dummy29 = alloca i64, align 8
  %tmp12 = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp59 = alloca i64, align 8
  %__ret_do_once = alloca i8, align 1
  %__ret_cond = alloca i8, align 1
  %__ret_once = alloca i8, align 1
  %tmp88 = alloca i64, align 8
  %tmp101 = alloca i32, align 4
  %tmp106 = alloca i64, align 8
  %__ret_warn_on133 = alloca i32, align 4
  %__flags152 = alloca i32, align 4
  %tmp165 = alloca i64, align 8
  %__ret_do_once175 = alloca i8, align 1
  %__ret_cond176 = alloca i8, align 1
  %__ret_once183 = alloca i8, align 1
  %tmp200 = alloca i64, align 8
  %tmp213 = alloca i32, align 4
  %tmp218 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !149, metadata !DIExpression()), !dbg !212
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !150, metadata !DIExpression()), !dbg !213
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !151, metadata !DIExpression()), !dbg !214
  store i32 %caller_id, ptr %caller_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caller_id.addr, metadata !152, metadata !DIExpression()), !dbg !215
  store i32 %max_size, ptr %max_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %max_size.addr, metadata !153, metadata !DIExpression()), !dbg !216
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !217
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !154, metadata !DIExpression()), !dbg !218
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !219
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !220
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !218
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !221
  call void @llvm.dbg.declare(metadata ptr %info, metadata !156, metadata !DIExpression()), !dbg !222
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_size) #11, !dbg !223
  call void @llvm.dbg.declare(metadata ptr %data_size, metadata !157, metadata !DIExpression()), !dbg !224
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !225
  call void @llvm.dbg.declare(metadata ptr %d, metadata !158, metadata !DIExpression()), !dbg !226
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !227
  call void @llvm.dbg.declare(metadata ptr %id, metadata !159, metadata !DIExpression()), !dbg !228
  br label %do.body, !dbg !229

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !230

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !160, metadata !DIExpression()), !dbg !231
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !231
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !164, metadata !DIExpression()), !dbg !231
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !231
  %conv = zext i1 %cmp to i32, !dbg !231
  store i32 1, ptr %tmp, align 4, !dbg !231
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !232
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !232
  %1 = load i32, ptr %tmp, align 4, !dbg !231
  %call = call i64 @arch_local_irq_save() #12, !dbg !232
  %2 = load ptr, ptr %e.addr, align 8, !dbg !232
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %2, i32 0, i32 1, !dbg !232
  store i64 %call, ptr %irqflags, align 8, !dbg !232
  br label %do.cond, !dbg !232

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !232

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !230

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !230

do.end4:                                          ; preds = %do.cond3
  %3 = load ptr, ptr %desc_ring, align 8, !dbg !233
  %4 = load i32, ptr %caller_id.addr, align 4, !dbg !234
  %call5 = call ptr @desc_reopen_last(ptr noundef %3, i32 noundef %4, ptr noundef %id) #12, !dbg !235
  store ptr %call5, ptr %d, align 8, !dbg !236
  %5 = load ptr, ptr %d, align 8, !dbg !237
  %tobool = icmp ne ptr %5, null, !dbg !237
  br i1 %tobool, label %if.end, label %if.then, !dbg !238

if.then:                                          ; preds = %do.end4
  br label %do.body6, !dbg !239

do.body6:                                         ; preds = %if.then
  br label %do.body7, !dbg !240

do.body7:                                         ; preds = %do.body6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy8) #11, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %__dummy8, metadata !165, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy29) #11, !dbg !241
  call void @llvm.dbg.declare(metadata ptr %__dummy29, metadata !171, metadata !DIExpression()), !dbg !241
  %cmp10 = icmp eq ptr %__dummy8, %__dummy29, !dbg !241
  %conv11 = zext i1 %cmp10 to i32, !dbg !241
  store i32 1, ptr %tmp12, align 4, !dbg !241
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy29) #11, !dbg !242
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy8) #11, !dbg !242
  %6 = load i32, ptr %tmp12, align 4, !dbg !241
  br label %do.body13, !dbg !242

do.body13:                                        ; preds = %do.body7
  br label %do.cond14, !dbg !243

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !243

do.end15:                                         ; preds = %do.cond14
  %7 = load ptr, ptr %e.addr, align 8, !dbg !242
  %irqflags16 = getelementptr inbounds %struct.prb_reserved_entry, ptr %7, i32 0, i32 1, !dbg !242
  %8 = load i64, ptr %irqflags16, align 8, !dbg !242
  call void @arch_local_irq_restore(i64 noundef %8) #12, !dbg !242
  br label %do.cond17, !dbg !242

do.cond17:                                        ; preds = %do.end15
  br label %do.end18, !dbg !242

do.end18:                                         ; preds = %do.cond17
  br label %do.cond19, !dbg !240

do.cond19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !240

do.end20:                                         ; preds = %do.cond19
  br label %fail_reopen, !dbg !245

if.end:                                           ; preds = %do.end4
  %9 = load ptr, ptr %desc_ring, align 8, !dbg !246
  %10 = load i64, ptr %id, align 8, !dbg !247
  %call21 = call ptr @to_info(ptr noundef %9, i64 noundef %10) #12, !dbg !248
  store ptr %call21, ptr %info, align 8, !dbg !249
  %11 = load ptr, ptr %rb.addr, align 8, !dbg !250
  %12 = load ptr, ptr %e.addr, align 8, !dbg !251
  %rb22 = getelementptr inbounds %struct.prb_reserved_entry, ptr %12, i32 0, i32 0, !dbg !252
  store ptr %11, ptr %rb22, align 8, !dbg !253
  %13 = load i64, ptr %id, align 8, !dbg !254
  %14 = load ptr, ptr %e.addr, align 8, !dbg !255
  %id23 = getelementptr inbounds %struct.prb_reserved_entry, ptr %14, i32 0, i32 2, !dbg !256
  store i64 %13, ptr %id23, align 8, !dbg !257
  %15 = load i32, ptr %caller_id.addr, align 4, !dbg !258
  %16 = load ptr, ptr %info, align 8, !dbg !260
  %caller_id24 = getelementptr inbounds %struct.printk_info, ptr %16, i32 0, i32 5, !dbg !261
  %17 = load i32, ptr %caller_id24, align 4, !dbg !261
  %cmp25 = icmp ne i32 %15, %17, !dbg !262
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !263

if.then27:                                        ; preds = %if.end
  br label %fail, !dbg !264

if.end28:                                         ; preds = %if.end
  %18 = load ptr, ptr %d, align 8, !dbg !265
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %18, i32 0, i32 1, !dbg !265
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %text_blk_lpos, i32 0, i32 0, !dbg !265
  %19 = load i64, ptr %begin, align 8, !dbg !265
  %and = and i64 %19, 1, !dbg !265
  %tobool29 = icmp ne i64 %and, 0, !dbg !265
  br i1 %tobool29, label %land.lhs.true, label %if.else, !dbg !265

land.lhs.true:                                    ; preds = %if.end28
  %20 = load ptr, ptr %d, align 8, !dbg !265
  %text_blk_lpos30 = getelementptr inbounds %struct.prb_desc, ptr %20, i32 0, i32 1, !dbg !265
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %text_blk_lpos30, i32 0, i32 1, !dbg !265
  %21 = load i64, ptr %next, align 8, !dbg !265
  %and31 = and i64 %21, 1, !dbg !265
  %tobool32 = icmp ne i64 %and31, 0, !dbg !265
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !266

if.then33:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !172, metadata !DIExpression()), !dbg !267
  %22 = load ptr, ptr %info, align 8, !dbg !267
  %text_len = getelementptr inbounds %struct.printk_info, ptr %22, i32 0, i32 2, !dbg !267
  %23 = load i16, ptr %text_len, align 8, !dbg !267
  %conv34 = zext i16 %23 to i32, !dbg !267
  %cmp35 = icmp ne i32 %conv34, 0, !dbg !267
  %lnot = xor i1 %cmp35, true, !dbg !267
  %lnot37 = xor i1 %lnot, true, !dbg !267
  %lnot.ext = zext i1 %lnot37 to i32, !dbg !267
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !267
  %24 = load i32, ptr %__ret_warn_on, align 4, !dbg !268
  %tobool38 = icmp ne i32 %24, 0, !dbg !268
  %lnot39 = xor i1 %tobool38, true, !dbg !268
  %lnot41 = xor i1 %lnot39, true, !dbg !268
  %lnot.ext42 = zext i1 %lnot41 to i32, !dbg !268
  %conv43 = sext i32 %lnot.ext42 to i64, !dbg !268
  %expval = call i64 @llvm.expect.i64(i64 %conv43, i64 0), !dbg !268
  %tobool44 = icmp ne i64 %expval, 0, !dbg !268
  br i1 %tobool44, label %if.then45, label %if.end58, !dbg !267

if.then45:                                        ; preds = %if.then33
  br label %do.body46, !dbg !268

do.body46:                                        ; preds = %if.then45
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !177, metadata !DIExpression()), !dbg !269
  store i32 2307, ptr %__flags, align 4, !dbg !269
  br label %do.body47, !dbg !269

do.body47:                                        ; preds = %do.body46
  br label %do.cond48, !dbg !270

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !270

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !269

do.body50:                                        ; preds = %do.end49
  %25 = load i32, ptr %__flags, align 4, !dbg !272
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1388, i32 %25, i64 12) #11, !dbg !272, !srcloc !274
  br label %do.cond51, !dbg !272

do.cond51:                                        ; preds = %do.body50
  br label %do.end52, !dbg !272

do.end52:                                         ; preds = %do.cond51
  br label %do.body53, !dbg !269

do.body53:                                        ; preds = %do.end52
  br label %do.cond54, !dbg !275

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !275

do.end55:                                         ; preds = %do.cond54
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !268
  br label %do.cond56, !dbg !269

do.cond56:                                        ; preds = %do.end55
  br label %do.end57, !dbg !269

do.end57:                                         ; preds = %do.cond56
  br label %if.end58, !dbg !269

if.end58:                                         ; preds = %do.end57, %if.then33
  %26 = load i32, ptr %__ret_warn_on, align 4, !dbg !267
  %tobool60 = icmp ne i32 %26, 0, !dbg !267
  %lnot61 = xor i1 %tobool60, true, !dbg !267
  %lnot63 = xor i1 %lnot61, true, !dbg !267
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !267
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !267
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !267
  store i64 %expval66, ptr %tmp59, align 8, !dbg !268
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !277
  %27 = load i64, ptr %tmp59, align 8, !dbg !267
  %tobool67 = icmp ne i64 %27, 0, !dbg !277
  br i1 %tobool67, label %if.then68, label %if.end115, !dbg !278

if.then68:                                        ; preds = %if.end58
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once) #11, !dbg !279
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once, metadata !180, metadata !DIExpression()), !dbg !279
  store i8 1, ptr %__ret_do_once, align 1, !dbg !279
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond) #11, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %__ret_cond, metadata !183, metadata !DIExpression()), !dbg !280
  %28 = load i8, ptr %__ret_do_once, align 1, !dbg !280, !range !281, !noundef !282
  %tobool69 = trunc i8 %28 to i1, !dbg !280
  %lnot70 = xor i1 %tobool69, true, !dbg !280
  %lnot72 = xor i1 %lnot70, true, !dbg !280
  %frombool = zext i1 %lnot72 to i8, !dbg !280
  store i8 %frombool, ptr %__ret_cond, align 1, !dbg !280
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once) #11, !dbg !280
  call void @llvm.dbg.declare(metadata ptr %__ret_once, metadata !186, metadata !DIExpression()), !dbg !280
  store i8 0, ptr %__ret_once, align 1, !dbg !280
  %29 = load i8, ptr %__ret_cond, align 1, !dbg !283, !range !281, !noundef !282
  %tobool74 = trunc i8 %29 to i1, !dbg !283
  br i1 %tobool74, label %land.rhs, label %land.end, !dbg !283

land.rhs:                                         ; preds = %if.then68
  %30 = load i8, ptr @prb_reserve_in_last.__already_done, align 1, !dbg !283, !range !281, !noundef !282
  %tobool76 = trunc i8 %30 to i1, !dbg !283
  %lnot77 = xor i1 %tobool76, true, !dbg !283
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then68
  %31 = phi i1 [ false, %if.then68 ], [ %lnot77, %land.rhs ], !dbg !285
  %lnot79 = xor i1 %31, true, !dbg !283
  %lnot81 = xor i1 %lnot79, true, !dbg !283
  %lnot.ext82 = zext i1 %lnot81 to i32, !dbg !283
  %conv83 = sext i32 %lnot.ext82 to i64, !dbg !283
  %expval84 = call i64 @llvm.expect.i64(i64 %conv83, i64 0), !dbg !283
  %tobool85 = icmp ne i64 %expval84, 0, !dbg !283
  br i1 %tobool85, label %if.then86, label %if.end87, !dbg !280

if.then86:                                        ; preds = %land.end
  store i8 1, ptr @prb_reserve_in_last.__already_done, align 1, !dbg !286
  store i8 1, ptr %__ret_once, align 1, !dbg !286
  br label %if.end87, !dbg !286

if.end87:                                         ; preds = %if.then86, %land.end
  %32 = load i8, ptr %__ret_once, align 1, !dbg !280, !range !281, !noundef !282
  %tobool89 = trunc i8 %32 to i1, !dbg !280
  %lnot90 = xor i1 %tobool89, true, !dbg !280
  %lnot92 = xor i1 %lnot90, true, !dbg !280
  %lnot.ext93 = zext i1 %lnot92 to i32, !dbg !280
  %conv94 = sext i32 %lnot.ext93 to i64, !dbg !280
  %expval95 = call i64 @llvm.expect.i64(i64 %conv94, i64 0), !dbg !280
  store i64 %expval95, ptr %tmp88, align 8, !dbg !283
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once) #11, !dbg !288
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond) #11, !dbg !288
  %33 = load i64, ptr %tmp88, align 8, !dbg !280
  %tobool96 = icmp ne i64 %33, 0, !dbg !288
  br i1 %tobool96, label %if.then97, label %if.end105, !dbg !279

if.then97:                                        ; preds = %if.end87
  br label %do.body98, !dbg !289

do.body98:                                        ; preds = %if.then97
  br label %do.cond99, !dbg !291

do.cond99:                                        ; preds = %do.body98
  br label %do.end100, !dbg !291

do.end100:                                        ; preds = %do.cond99
  %34 = load ptr, ptr %info, align 8, !dbg !289
  %text_len102 = getelementptr inbounds %struct.printk_info, ptr %34, i32 0, i32 2, !dbg !289
  %35 = load i16, ptr %text_len102, align 8, !dbg !289
  %conv103 = zext i16 %35 to i32, !dbg !289
  %call104 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, i32 noundef %conv103) #13, !dbg !289
  store i32 %call104, ptr %tmp101, align 4, !dbg !291
  %36 = load i32, ptr %tmp101, align 4, !dbg !289
  br label %if.end105, !dbg !288

if.end105:                                        ; preds = %do.end100, %if.end87
  %37 = load i8, ptr %__ret_do_once, align 1, !dbg !279, !range !281, !noundef !282
  %tobool107 = trunc i8 %37 to i1, !dbg !279
  %lnot108 = xor i1 %tobool107, true, !dbg !279
  %lnot110 = xor i1 %lnot108, true, !dbg !279
  %lnot.ext111 = zext i1 %lnot110 to i32, !dbg !279
  %conv112 = sext i32 %lnot.ext111 to i64, !dbg !279
  %expval113 = call i64 @llvm.expect.i64(i64 %conv112, i64 0), !dbg !279
  store i64 %expval113, ptr %tmp106, align 8, !dbg !288
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once) #11, !dbg !293
  %38 = load i64, ptr %tmp106, align 8, !dbg !279
  %39 = load ptr, ptr %info, align 8, !dbg !294
  %text_len114 = getelementptr inbounds %struct.printk_info, ptr %39, i32 0, i32 2, !dbg !295
  store i16 0, ptr %text_len114, align 8, !dbg !296
  br label %if.end115, !dbg !297

if.end115:                                        ; preds = %if.end105, %if.end58
  %40 = load ptr, ptr %rb.addr, align 8, !dbg !298
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %40, i32 0, i32 1, !dbg !300
  %41 = load ptr, ptr %r.addr, align 8, !dbg !301
  %text_buf_size = getelementptr inbounds %struct.printk_record, ptr %41, i32 0, i32 2, !dbg !302
  %42 = load i32, ptr %text_buf_size, align 8, !dbg !302
  %call116 = call zeroext i1 @data_check_size(ptr noundef %text_data_ring, i32 noundef %42) #12, !dbg !303
  br i1 %call116, label %if.end118, label %if.then117, !dbg !304

if.then117:                                       ; preds = %if.end115
  br label %fail, !dbg !305

if.end118:                                        ; preds = %if.end115
  %43 = load ptr, ptr %r.addr, align 8, !dbg !306
  %text_buf_size119 = getelementptr inbounds %struct.printk_record, ptr %43, i32 0, i32 2, !dbg !308
  %44 = load i32, ptr %text_buf_size119, align 8, !dbg !308
  %45 = load i32, ptr %max_size.addr, align 4, !dbg !309
  %cmp120 = icmp ugt i32 %44, %45, !dbg !310
  br i1 %cmp120, label %if.then122, label %if.end123, !dbg !311

if.then122:                                       ; preds = %if.end118
  br label %fail, !dbg !312

if.end123:                                        ; preds = %if.end118
  %46 = load ptr, ptr %rb.addr, align 8, !dbg !313
  %47 = load ptr, ptr %r.addr, align 8, !dbg !314
  %text_buf_size124 = getelementptr inbounds %struct.printk_record, ptr %47, i32 0, i32 2, !dbg !315
  %48 = load i32, ptr %text_buf_size124, align 8, !dbg !315
  %49 = load ptr, ptr %d, align 8, !dbg !316
  %text_blk_lpos125 = getelementptr inbounds %struct.prb_desc, ptr %49, i32 0, i32 1, !dbg !317
  %50 = load i64, ptr %id, align 8, !dbg !318
  %call126 = call ptr @data_alloc(ptr noundef %46, i32 noundef %48, ptr noundef %text_blk_lpos125, i64 noundef %50) #12, !dbg !319
  %51 = load ptr, ptr %r.addr, align 8, !dbg !320
  %text_buf = getelementptr inbounds %struct.printk_record, ptr %51, i32 0, i32 1, !dbg !321
  store ptr %call126, ptr %text_buf, align 8, !dbg !322
  br label %if.end246, !dbg !323

if.else:                                          ; preds = %land.lhs.true, %if.end28
  %52 = load ptr, ptr %rb.addr, align 8, !dbg !324
  %text_data_ring127 = getelementptr inbounds %struct.printk_ringbuffer, ptr %52, i32 0, i32 1, !dbg !326
  %53 = load ptr, ptr %d, align 8, !dbg !327
  %text_blk_lpos128 = getelementptr inbounds %struct.prb_desc, ptr %53, i32 0, i32 1, !dbg !328
  %call129 = call ptr @get_data(ptr noundef %text_data_ring127, ptr noundef %text_blk_lpos128, ptr noundef %data_size) #12, !dbg !329
  %tobool130 = icmp ne ptr %call129, null, !dbg !329
  br i1 %tobool130, label %if.end132, label %if.then131, !dbg !330

if.then131:                                       ; preds = %if.else
  br label %fail, !dbg !331

if.end132:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on133) #11, !dbg !332
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on133, metadata !187, metadata !DIExpression()), !dbg !332
  %54 = load ptr, ptr %info, align 8, !dbg !332
  %text_len134 = getelementptr inbounds %struct.printk_info, ptr %54, i32 0, i32 2, !dbg !332
  %55 = load i16, ptr %text_len134, align 8, !dbg !332
  %conv135 = zext i16 %55 to i32, !dbg !332
  %56 = load i32, ptr %data_size, align 4, !dbg !332
  %cmp136 = icmp ugt i32 %conv135, %56, !dbg !332
  %lnot138 = xor i1 %cmp136, true, !dbg !332
  %lnot140 = xor i1 %lnot138, true, !dbg !332
  %lnot.ext141 = zext i1 %lnot140 to i32, !dbg !332
  store i32 %lnot.ext141, ptr %__ret_warn_on133, align 4, !dbg !332
  %57 = load i32, ptr %__ret_warn_on133, align 4, !dbg !333
  %tobool142 = icmp ne i32 %57, 0, !dbg !333
  %lnot143 = xor i1 %tobool142, true, !dbg !333
  %lnot145 = xor i1 %lnot143, true, !dbg !333
  %lnot.ext146 = zext i1 %lnot145 to i32, !dbg !333
  %conv147 = sext i32 %lnot.ext146 to i64, !dbg !333
  %expval148 = call i64 @llvm.expect.i64(i64 %conv147, i64 0), !dbg !333
  %tobool149 = icmp ne i64 %expval148, 0, !dbg !333
  br i1 %tobool149, label %if.then150, label %if.end164, !dbg !332

if.then150:                                       ; preds = %if.end132
  br label %do.body151, !dbg !333

do.body151:                                       ; preds = %if.then150
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags152) #11, !dbg !334
  call void @llvm.dbg.declare(metadata ptr %__flags152, metadata !191, metadata !DIExpression()), !dbg !334
  store i32 2307, ptr %__flags152, align 4, !dbg !334
  br label %do.body153, !dbg !334

do.body153:                                       ; preds = %do.body151
  br label %do.cond154, !dbg !335

do.cond154:                                       ; preds = %do.body153
  br label %do.end155, !dbg !335

do.end155:                                        ; preds = %do.cond154
  br label %do.body156, !dbg !334

do.body156:                                       ; preds = %do.end155
  %58 = load i32, ptr %__flags152, align 4, !dbg !337
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1411, i32 %58, i64 12) #11, !dbg !337, !srcloc !339
  br label %do.cond157, !dbg !337

do.cond157:                                       ; preds = %do.body156
  br label %do.end158, !dbg !337

do.end158:                                        ; preds = %do.cond157
  br label %do.body159, !dbg !334

do.body159:                                       ; preds = %do.end158
  br label %do.cond160, !dbg !340

do.cond160:                                       ; preds = %do.body159
  br label %do.end161, !dbg !340

do.end161:                                        ; preds = %do.cond160
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags152) #11, !dbg !333
  br label %do.cond162, !dbg !334

do.cond162:                                       ; preds = %do.end161
  br label %do.end163, !dbg !334

do.end163:                                        ; preds = %do.cond162
  br label %if.end164, !dbg !334

if.end164:                                        ; preds = %do.end163, %if.end132
  %59 = load i32, ptr %__ret_warn_on133, align 4, !dbg !332
  %tobool166 = icmp ne i32 %59, 0, !dbg !332
  %lnot167 = xor i1 %tobool166, true, !dbg !332
  %lnot169 = xor i1 %lnot167, true, !dbg !332
  %lnot.ext170 = zext i1 %lnot169 to i32, !dbg !332
  %conv171 = sext i32 %lnot.ext170 to i64, !dbg !332
  %expval172 = call i64 @llvm.expect.i64(i64 %conv171, i64 0), !dbg !332
  store i64 %expval172, ptr %tmp165, align 8, !dbg !333
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on133) #11, !dbg !342
  %60 = load i64, ptr %tmp165, align 8, !dbg !332
  %tobool173 = icmp ne i64 %60, 0, !dbg !342
  br i1 %tobool173, label %if.then174, label %if.end228, !dbg !343

if.then174:                                       ; preds = %if.end164
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_do_once175) #11, !dbg !344
  call void @llvm.dbg.declare(metadata ptr %__ret_do_once175, metadata !194, metadata !DIExpression()), !dbg !344
  store i8 1, ptr %__ret_do_once175, align 1, !dbg !344
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_cond176) #11, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %__ret_cond176, metadata !197, metadata !DIExpression()), !dbg !345
  %61 = load i8, ptr %__ret_do_once175, align 1, !dbg !345, !range !281, !noundef !282
  %tobool177 = trunc i8 %61 to i1, !dbg !345
  %lnot178 = xor i1 %tobool177, true, !dbg !345
  %lnot180 = xor i1 %lnot178, true, !dbg !345
  %frombool182 = zext i1 %lnot180 to i8, !dbg !345
  store i8 %frombool182, ptr %__ret_cond176, align 1, !dbg !345
  call void @llvm.lifetime.start.p0(i64 1, ptr %__ret_once183) #11, !dbg !345
  call void @llvm.dbg.declare(metadata ptr %__ret_once183, metadata !200, metadata !DIExpression()), !dbg !345
  store i8 0, ptr %__ret_once183, align 1, !dbg !345
  %62 = load i8, ptr %__ret_cond176, align 1, !dbg !346, !range !281, !noundef !282
  %tobool184 = trunc i8 %62 to i1, !dbg !346
  br i1 %tobool184, label %land.rhs186, label %land.end190, !dbg !346

land.rhs186:                                      ; preds = %if.then174
  %63 = load i8, ptr @prb_reserve_in_last.__already_done.2, align 1, !dbg !346, !range !281, !noundef !282
  %tobool187 = trunc i8 %63 to i1, !dbg !346
  %lnot188 = xor i1 %tobool187, true, !dbg !346
  br label %land.end190

land.end190:                                      ; preds = %land.rhs186, %if.then174
  %64 = phi i1 [ false, %if.then174 ], [ %lnot188, %land.rhs186 ], !dbg !348
  %lnot191 = xor i1 %64, true, !dbg !346
  %lnot193 = xor i1 %lnot191, true, !dbg !346
  %lnot.ext194 = zext i1 %lnot193 to i32, !dbg !346
  %conv195 = sext i32 %lnot.ext194 to i64, !dbg !346
  %expval196 = call i64 @llvm.expect.i64(i64 %conv195, i64 0), !dbg !346
  %tobool197 = icmp ne i64 %expval196, 0, !dbg !346
  br i1 %tobool197, label %if.then198, label %if.end199, !dbg !345

if.then198:                                       ; preds = %land.end190
  store i8 1, ptr @prb_reserve_in_last.__already_done.2, align 1, !dbg !349
  store i8 1, ptr %__ret_once183, align 1, !dbg !349
  br label %if.end199, !dbg !349

if.end199:                                        ; preds = %if.then198, %land.end190
  %65 = load i8, ptr %__ret_once183, align 1, !dbg !345, !range !281, !noundef !282
  %tobool201 = trunc i8 %65 to i1, !dbg !345
  %lnot202 = xor i1 %tobool201, true, !dbg !345
  %lnot204 = xor i1 %lnot202, true, !dbg !345
  %lnot.ext205 = zext i1 %lnot204 to i32, !dbg !345
  %conv206 = sext i32 %lnot.ext205 to i64, !dbg !345
  %expval207 = call i64 @llvm.expect.i64(i64 %conv206, i64 0), !dbg !345
  store i64 %expval207, ptr %tmp200, align 8, !dbg !346
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_once183) #11, !dbg !351
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_cond176) #11, !dbg !351
  %66 = load i64, ptr %tmp200, align 8, !dbg !345
  %tobool208 = icmp ne i64 %66, 0, !dbg !351
  br i1 %tobool208, label %if.then209, label %if.end217, !dbg !344

if.then209:                                       ; preds = %if.end199
  br label %do.body210, !dbg !352

do.body210:                                       ; preds = %if.then209
  br label %do.cond211, !dbg !354

do.cond211:                                       ; preds = %do.body210
  br label %do.end212, !dbg !354

do.end212:                                        ; preds = %do.cond211
  %67 = load ptr, ptr %info, align 8, !dbg !352
  %text_len214 = getelementptr inbounds %struct.printk_info, ptr %67, i32 0, i32 2, !dbg !352
  %68 = load i16, ptr %text_len214, align 8, !dbg !352
  %conv215 = zext i16 %68 to i32, !dbg !352
  %69 = load i32, ptr %data_size, align 4, !dbg !352
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef @.str.3, i32 noundef %conv215, i32 noundef %69) #13, !dbg !352
  store i32 %call216, ptr %tmp213, align 4, !dbg !354
  %70 = load i32, ptr %tmp213, align 4, !dbg !352
  br label %if.end217, !dbg !351

if.end217:                                        ; preds = %do.end212, %if.end199
  %71 = load i8, ptr %__ret_do_once175, align 1, !dbg !344, !range !281, !noundef !282
  %tobool219 = trunc i8 %71 to i1, !dbg !344
  %lnot220 = xor i1 %tobool219, true, !dbg !344
  %lnot222 = xor i1 %lnot220, true, !dbg !344
  %lnot.ext223 = zext i1 %lnot222 to i32, !dbg !344
  %conv224 = sext i32 %lnot.ext223 to i64, !dbg !344
  %expval225 = call i64 @llvm.expect.i64(i64 %conv224, i64 0), !dbg !344
  store i64 %expval225, ptr %tmp218, align 8, !dbg !351
  call void @llvm.lifetime.end.p0(i64 1, ptr %__ret_do_once175) #11, !dbg !356
  %72 = load i64, ptr %tmp218, align 8, !dbg !344
  %73 = load i32, ptr %data_size, align 4, !dbg !357
  %conv226 = trunc i32 %73 to i16, !dbg !357
  %74 = load ptr, ptr %info, align 8, !dbg !358
  %text_len227 = getelementptr inbounds %struct.printk_info, ptr %74, i32 0, i32 2, !dbg !359
  store i16 %conv226, ptr %text_len227, align 8, !dbg !360
  br label %if.end228, !dbg !361

if.end228:                                        ; preds = %if.end217, %if.end164
  %75 = load ptr, ptr %info, align 8, !dbg !362
  %text_len229 = getelementptr inbounds %struct.printk_info, ptr %75, i32 0, i32 2, !dbg !363
  %76 = load i16, ptr %text_len229, align 8, !dbg !363
  %conv230 = zext i16 %76 to i32, !dbg !362
  %77 = load ptr, ptr %r.addr, align 8, !dbg !364
  %text_buf_size231 = getelementptr inbounds %struct.printk_record, ptr %77, i32 0, i32 2, !dbg !365
  %78 = load i32, ptr %text_buf_size231, align 8, !dbg !366
  %add = add i32 %78, %conv230, !dbg !366
  store i32 %add, ptr %text_buf_size231, align 8, !dbg !366
  %79 = load ptr, ptr %rb.addr, align 8, !dbg !367
  %text_data_ring232 = getelementptr inbounds %struct.printk_ringbuffer, ptr %79, i32 0, i32 1, !dbg !369
  %80 = load ptr, ptr %r.addr, align 8, !dbg !370
  %text_buf_size233 = getelementptr inbounds %struct.printk_record, ptr %80, i32 0, i32 2, !dbg !371
  %81 = load i32, ptr %text_buf_size233, align 8, !dbg !371
  %call234 = call zeroext i1 @data_check_size(ptr noundef %text_data_ring232, i32 noundef %81) #12, !dbg !372
  br i1 %call234, label %if.end236, label %if.then235, !dbg !373

if.then235:                                       ; preds = %if.end228
  br label %fail, !dbg !374

if.end236:                                        ; preds = %if.end228
  %82 = load ptr, ptr %r.addr, align 8, !dbg !375
  %text_buf_size237 = getelementptr inbounds %struct.printk_record, ptr %82, i32 0, i32 2, !dbg !377
  %83 = load i32, ptr %text_buf_size237, align 8, !dbg !377
  %84 = load i32, ptr %max_size.addr, align 4, !dbg !378
  %cmp238 = icmp ugt i32 %83, %84, !dbg !379
  br i1 %cmp238, label %if.then240, label %if.end241, !dbg !380

if.then240:                                       ; preds = %if.end236
  br label %fail, !dbg !381

if.end241:                                        ; preds = %if.end236
  %85 = load ptr, ptr %rb.addr, align 8, !dbg !382
  %86 = load ptr, ptr %r.addr, align 8, !dbg !383
  %text_buf_size242 = getelementptr inbounds %struct.printk_record, ptr %86, i32 0, i32 2, !dbg !384
  %87 = load i32, ptr %text_buf_size242, align 8, !dbg !384
  %88 = load ptr, ptr %d, align 8, !dbg !385
  %text_blk_lpos243 = getelementptr inbounds %struct.prb_desc, ptr %88, i32 0, i32 1, !dbg !386
  %89 = load i64, ptr %id, align 8, !dbg !387
  %call244 = call ptr @data_realloc(ptr noundef %85, i32 noundef %87, ptr noundef %text_blk_lpos243, i64 noundef %89) #12, !dbg !388
  %90 = load ptr, ptr %r.addr, align 8, !dbg !389
  %text_buf245 = getelementptr inbounds %struct.printk_record, ptr %90, i32 0, i32 1, !dbg !390
  store ptr %call244, ptr %text_buf245, align 8, !dbg !391
  br label %if.end246

if.end246:                                        ; preds = %if.end241, %if.end123
  %91 = load ptr, ptr %r.addr, align 8, !dbg !392
  %text_buf_size247 = getelementptr inbounds %struct.printk_record, ptr %91, i32 0, i32 2, !dbg !394
  %92 = load i32, ptr %text_buf_size247, align 8, !dbg !394
  %tobool248 = icmp ne i32 %92, 0, !dbg !392
  br i1 %tobool248, label %land.lhs.true249, label %if.end253, !dbg !395

land.lhs.true249:                                 ; preds = %if.end246
  %93 = load ptr, ptr %r.addr, align 8, !dbg !396
  %text_buf250 = getelementptr inbounds %struct.printk_record, ptr %93, i32 0, i32 1, !dbg !397
  %94 = load ptr, ptr %text_buf250, align 8, !dbg !397
  %tobool251 = icmp ne ptr %94, null, !dbg !396
  br i1 %tobool251, label %if.end253, label %if.then252, !dbg !398

if.then252:                                       ; preds = %land.lhs.true249
  br label %fail, !dbg !399

if.end253:                                        ; preds = %land.lhs.true249, %if.end246
  %95 = load ptr, ptr %info, align 8, !dbg !400
  %96 = load ptr, ptr %r.addr, align 8, !dbg !401
  %info254 = getelementptr inbounds %struct.printk_record, ptr %96, i32 0, i32 0, !dbg !402
  store ptr %95, ptr %info254, align 8, !dbg !403
  %97 = load ptr, ptr %rb.addr, align 8, !dbg !404
  %text_data_ring255 = getelementptr inbounds %struct.printk_ringbuffer, ptr %97, i32 0, i32 1, !dbg !405
  %98 = load ptr, ptr %d, align 8, !dbg !406
  %text_blk_lpos256 = getelementptr inbounds %struct.prb_desc, ptr %98, i32 0, i32 1, !dbg !407
  %call257 = call i32 @space_used(ptr noundef %text_data_ring255, ptr noundef %text_blk_lpos256) #12, !dbg !408
  %99 = load ptr, ptr %e.addr, align 8, !dbg !409
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %99, i32 0, i32 3, !dbg !410
  store i32 %call257, ptr %text_space, align 8, !dbg !411
  store i1 true, ptr %retval, align 1, !dbg !412
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !412

fail:                                             ; preds = %if.then252, %if.then240, %if.then235, %if.then131, %if.then122, %if.then117, %if.then27
  call void @llvm.dbg.label(metadata !201), !dbg !413
  %100 = load ptr, ptr %e.addr, align 8, !dbg !414
  call void @prb_commit(ptr noundef %100) #12, !dbg !415
  br label %fail_reopen, !dbg !415

fail_reopen:                                      ; preds = %fail, %do.end20
  call void @llvm.dbg.label(metadata !202), !dbg !416
  %101 = load ptr, ptr %r.addr, align 8, !dbg !417
  call void @llvm.memset.p0.i64(ptr align 8 %101, i8 0, i64 24, i1 false), !dbg !418
  store i1 false, ptr %retval, align 1, !dbg !419
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !419

cleanup:                                          ; preds = %fail_reopen, %if.end253
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !420
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_size) #11, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !420
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !420
  %102 = load i1, ptr %retval, align 1, !dbg !420
  ret i1 %102, !dbg !420
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_irq_save() #3 align 16 !dbg !421 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !427
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !426, metadata !DIExpression()), !dbg !428
  %call = call i64 @arch_local_save_flags() #12, !dbg !429
  store i64 %call, ptr %flags, align 8, !dbg !428
  call void @arch_local_irq_disable() #12, !dbg !430
  %0 = load i64, ptr %flags, align 8, !dbg !431
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !432
  ret i64 %0, !dbg !433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @desc_reopen_last(ptr noundef %desc_ring, i32 noundef %caller_id, ptr noundef %id_out) #0 align 16 !dbg !434 {
entry:
  %retval = alloca ptr, align 8
  %desc_ring.addr = alloca ptr, align 8
  %caller_id.addr = alloca i32, align 4
  %id_out.addr = alloca ptr, align 8
  %prev_state_val = alloca i64, align 8
  %d_state = alloca i32, align 4
  %desc = alloca %struct.prb_desc, align 8
  %d = alloca ptr, align 8
  %id = alloca i64, align 8
  %cid = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !439, metadata !DIExpression()), !dbg !448
  store i32 %caller_id, ptr %caller_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %caller_id.addr, metadata !440, metadata !DIExpression()), !dbg !449
  store ptr %id_out, ptr %id_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id_out.addr, metadata !441, metadata !DIExpression()), !dbg !450
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_state_val) #11, !dbg !451
  call void @llvm.dbg.declare(metadata ptr %prev_state_val, metadata !442, metadata !DIExpression()), !dbg !452
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !453
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !443, metadata !DIExpression()), !dbg !454
  call void @llvm.lifetime.start.p0(i64 24, ptr %desc) #11, !dbg !455
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !444, metadata !DIExpression()), !dbg !456
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %d, metadata !445, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %id, metadata !446, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 4, ptr %cid) #11, !dbg !461
  call void @llvm.dbg.declare(metadata ptr %cid, metadata !447, metadata !DIExpression()), !dbg !462
  %0 = load ptr, ptr %desc_ring.addr, align 8, !dbg !463
  %head_id = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 3, !dbg !464
  %call = call i64 @atomic_long_read(ptr noundef %head_id) #12, !dbg !465
  store i64 %call, ptr %id, align 8, !dbg !466
  %1 = load ptr, ptr %desc_ring.addr, align 8, !dbg !467
  %2 = load i64, ptr %id, align 8, !dbg !468
  %call1 = call i32 @desc_read(ptr noundef %1, i64 noundef %2, ptr noundef %desc, ptr noundef null, ptr noundef %cid) #12, !dbg !469
  store i32 %call1, ptr %d_state, align 4, !dbg !470
  %3 = load i32, ptr %d_state, align 4, !dbg !471
  %cmp = icmp ne i32 %3, 1, !dbg !473
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !474

lor.lhs.false:                                    ; preds = %entry
  %4 = load i32, ptr %cid, align 4, !dbg !475
  %5 = load i32, ptr %caller_id.addr, align 4, !dbg !476
  %cmp2 = icmp ne i32 %4, %5, !dbg !477
  br i1 %cmp2, label %if.then, label %if.end, !dbg !478

if.then:                                          ; preds = %lor.lhs.false, %entry
  store ptr null, ptr %retval, align 8, !dbg !479
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !479

if.end:                                           ; preds = %lor.lhs.false
  %6 = load ptr, ptr %desc_ring.addr, align 8, !dbg !480
  %7 = load i64, ptr %id, align 8, !dbg !481
  %call3 = call ptr @to_desc(ptr noundef %6, i64 noundef %7) #12, !dbg !482
  store ptr %call3, ptr %d, align 8, !dbg !483
  %8 = load i64, ptr %id, align 8, !dbg !484
  %or = or i64 4611686018427387904, %8, !dbg !484
  store i64 %or, ptr %prev_state_val, align 8, !dbg !485
  %9 = load ptr, ptr %d, align 8, !dbg !486
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %9, i32 0, i32 0, !dbg !488
  %10 = load i64, ptr %id, align 8, !dbg !489
  %or4 = or i64 0, %10, !dbg !489
  %call5 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %state_var, ptr noundef %prev_state_val, i64 noundef %or4) #12, !dbg !490
  br i1 %call5, label %if.end7, label %if.then6, !dbg !491

if.then6:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !492
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !492

if.end7:                                          ; preds = %if.end
  %11 = load i64, ptr %id, align 8, !dbg !494
  %12 = load ptr, ptr %id_out.addr, align 8, !dbg !495
  store i64 %11, ptr %12, align 8, !dbg !496
  %13 = load ptr, ptr %d, align 8, !dbg !497
  store ptr %13, ptr %retval, align 8, !dbg !498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !498

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %cid) #11, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !499
  call void @llvm.lifetime.end.p0(i64 24, ptr %desc) #11, !dbg !499
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !499
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_state_val) #11, !dbg !499
  %14 = load ptr, ptr %retval, align 8, !dbg !499
  ret ptr %14, !dbg !499
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_restore(i64 noundef %flags) #3 align 16 !dbg !500 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load i64, ptr %flags.addr, align 8, !dbg !506
  %call = call i32 @arch_irqs_disabled_flags(i64 noundef %0) #12, !dbg !508
  %tobool = icmp ne i32 %call, 0, !dbg !508
  br i1 %tobool, label %if.end, label %if.then, !dbg !509

if.then:                                          ; preds = %entry
  call void @arch_local_irq_enable() #12, !dbg !510
  br label %if.end, !dbg !510

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !511
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_info(ptr noundef %desc_ring, i64 noundef %n) #0 align 16 !dbg !512 {
entry:
  %desc_ring.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !516, metadata !DIExpression()), !dbg !518
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !517, metadata !DIExpression()), !dbg !519
  %0 = load ptr, ptr %desc_ring.addr, align 8, !dbg !520
  %infos = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 2, !dbg !521
  %1 = load ptr, ptr %infos, align 8, !dbg !521
  %2 = load i64, ptr %n.addr, align 8, !dbg !522
  %3 = load ptr, ptr %desc_ring.addr, align 8, !dbg !522
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %3, i32 0, i32 0, !dbg !522
  %4 = load i32, ptr %count_bits, align 8, !dbg !522
  %shl = shl i32 1, %4, !dbg !522
  %sub = sub i32 %shl, 1, !dbg !522
  %conv = zext i32 %sub to i64, !dbg !522
  %and = and i64 %2, %conv, !dbg !522
  %arrayidx = getelementptr %struct.printk_info, ptr %1, i64 %and, !dbg !520
  ret ptr %arrayidx, !dbg !523
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !524 dso_local i32 @_printk(ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @data_check_size(ptr noundef %data_ring, i32 noundef %size) #0 align 16 !dbg !530 {
entry:
  %retval = alloca i1, align 1
  %data_ring.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !535, metadata !DIExpression()), !dbg !546
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !536, metadata !DIExpression()), !dbg !547
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #11, !dbg !548
  call void @llvm.dbg.declare(metadata ptr %db, metadata !537, metadata !DIExpression()), !dbg !549
  store ptr null, ptr %db, align 8, !dbg !549
  %0 = load i32, ptr %size.addr, align 4, !dbg !550
  %cmp = icmp eq i32 %0, 0, !dbg !552
  br i1 %cmp, label %if.then, label %if.end, !dbg !553

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !554
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !554

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %size.addr, align 4, !dbg !555
  %call = call i32 @to_blk_size(i32 noundef %1) #12, !dbg !556
  store i32 %call, ptr %size.addr, align 4, !dbg !557
  %2 = load i32, ptr %size.addr, align 4, !dbg !558
  %conv = zext i32 %2 to i64, !dbg !558
  %3 = load ptr, ptr %data_ring.addr, align 8, !dbg !560
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %3, i32 0, i32 0, !dbg !560
  %4 = load i32, ptr %size_bits, align 8, !dbg !560
  %sh_prom = zext i32 %4 to i64, !dbg !560
  %shl = shl i64 1, %sh_prom, !dbg !560
  %sub = sub i64 %shl, 8, !dbg !561
  %cmp1 = icmp ugt i64 %conv, %sub, !dbg !562
  br i1 %cmp1, label %if.then3, label %if.end4, !dbg !563

if.then3:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !564

if.end4:                                          ; preds = %if.end
  store i1 true, ptr %retval, align 1, !dbg !565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !565

cleanup:                                          ; preds = %if.end4, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #11, !dbg !566
  %5 = load i1, ptr %retval, align 1, !dbg !566
  ret i1 %5, !dbg !566
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @data_alloc(ptr noundef %rb, i32 noundef %size, ptr noundef %blk_lpos, i64 noundef %id) #0 align 16 !dbg !567 {
entry:
  %retval = alloca ptr, align 8
  %rb.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %blk_lpos.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %data_ring = alloca ptr, align 8
  %blk = alloca ptr, align 8
  %begin_lpos = alloca i64, align 8
  %next_lpos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !572, metadata !DIExpression()), !dbg !580
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !573, metadata !DIExpression()), !dbg !581
  store ptr %blk_lpos, ptr %blk_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_lpos.addr, metadata !574, metadata !DIExpression()), !dbg !582
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !575, metadata !DIExpression()), !dbg !583
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_ring) #11, !dbg !584
  call void @llvm.dbg.declare(metadata ptr %data_ring, metadata !576, metadata !DIExpression()), !dbg !585
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !586
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, !dbg !587
  store ptr %text_data_ring, ptr %data_ring, align 8, !dbg !585
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk) #11, !dbg !588
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !577, metadata !DIExpression()), !dbg !589
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin_lpos) #11, !dbg !590
  call void @llvm.dbg.declare(metadata ptr %begin_lpos, metadata !578, metadata !DIExpression()), !dbg !591
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lpos) #11, !dbg !592
  call void @llvm.dbg.declare(metadata ptr %next_lpos, metadata !579, metadata !DIExpression()), !dbg !593
  %1 = load i32, ptr %size.addr, align 4, !dbg !594
  %cmp = icmp eq i32 %1, 0, !dbg !596
  br i1 %cmp, label %if.then, label %if.end, !dbg !597

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !598
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 0, !dbg !600
  store i64 3, ptr %begin, align 8, !dbg !601
  %3 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !602
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %3, i32 0, i32 1, !dbg !603
  store i64 3, ptr %next, align 8, !dbg !604
  store ptr null, ptr %retval, align 8, !dbg !605
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !605

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %size.addr, align 4, !dbg !606
  %call = call i32 @to_blk_size(i32 noundef %4) #12, !dbg !607
  store i32 %call, ptr %size.addr, align 4, !dbg !608
  %5 = load ptr, ptr %data_ring, align 8, !dbg !609
  %head_lpos = getelementptr inbounds %struct.prb_data_ring, ptr %5, i32 0, i32 2, !dbg !610
  %call1 = call i64 @atomic_long_read(ptr noundef %head_lpos) #12, !dbg !611
  store i64 %call1, ptr %begin_lpos, align 8, !dbg !612
  br label %do.body, !dbg !613

do.body:                                          ; preds = %do.cond, %if.end
  %6 = load ptr, ptr %data_ring, align 8, !dbg !614
  %7 = load i64, ptr %begin_lpos, align 8, !dbg !616
  %8 = load i32, ptr %size.addr, align 4, !dbg !617
  %call2 = call i64 @get_next_lpos(ptr noundef %6, i64 noundef %7, i32 noundef %8) #12, !dbg !618
  store i64 %call2, ptr %next_lpos, align 8, !dbg !619
  %9 = load ptr, ptr %rb.addr, align 8, !dbg !620
  %10 = load i64, ptr %next_lpos, align 8, !dbg !622
  %11 = load ptr, ptr %data_ring, align 8, !dbg !623
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %11, i32 0, i32 0, !dbg !623
  %12 = load i32, ptr %size_bits, align 8, !dbg !623
  %sh_prom = zext i32 %12 to i64, !dbg !623
  %shl = shl i64 1, %sh_prom, !dbg !623
  %sub = sub i64 %10, %shl, !dbg !624
  %call3 = call zeroext i1 @data_push_tail(ptr noundef %9, i64 noundef %sub) #12, !dbg !625
  br i1 %call3, label %if.end7, label %if.then4, !dbg !626

if.then4:                                         ; preds = %do.body
  %13 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !627
  %begin5 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %13, i32 0, i32 0, !dbg !629
  store i64 1, ptr %begin5, align 8, !dbg !630
  %14 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !631
  %next6 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %14, i32 0, i32 1, !dbg !632
  store i64 1, ptr %next6, align 8, !dbg !633
  store ptr null, ptr %retval, align 8, !dbg !634
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !634

if.end7:                                          ; preds = %do.body
  br label %do.cond, !dbg !635

do.cond:                                          ; preds = %if.end7
  %15 = load ptr, ptr %data_ring, align 8, !dbg !636
  %head_lpos8 = getelementptr inbounds %struct.prb_data_ring, ptr %15, i32 0, i32 2, !dbg !637
  %16 = load i64, ptr %next_lpos, align 8, !dbg !638
  %call9 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %head_lpos8, ptr noundef %begin_lpos, i64 noundef %16) #12, !dbg !639
  %lnot = xor i1 %call9, true, !dbg !640
  br i1 %lnot, label %do.body, label %do.end, !dbg !635, !llvm.loop !641

do.end:                                           ; preds = %do.cond
  %17 = load ptr, ptr %data_ring, align 8, !dbg !645
  %18 = load i64, ptr %begin_lpos, align 8, !dbg !646
  %call10 = call ptr @to_block(ptr noundef %17, i64 noundef %18) #12, !dbg !647
  store ptr %call10, ptr %blk, align 8, !dbg !648
  %19 = load i64, ptr %id.addr, align 8, !dbg !649
  %20 = load ptr, ptr %blk, align 8, !dbg !650
  %id11 = getelementptr inbounds %struct.prb_data_block, ptr %20, i32 0, i32 0, !dbg !651
  store i64 %19, ptr %id11, align 8, !dbg !652
  %21 = load i64, ptr %begin_lpos, align 8, !dbg !653
  %22 = load ptr, ptr %data_ring, align 8, !dbg !653
  %size_bits12 = getelementptr inbounds %struct.prb_data_ring, ptr %22, i32 0, i32 0, !dbg !653
  %23 = load i32, ptr %size_bits12, align 8, !dbg !653
  %sh_prom13 = zext i32 %23 to i64, !dbg !653
  %shr = lshr i64 %21, %sh_prom13, !dbg !653
  %24 = load i64, ptr %next_lpos, align 8, !dbg !655
  %25 = load ptr, ptr %data_ring, align 8, !dbg !655
  %size_bits14 = getelementptr inbounds %struct.prb_data_ring, ptr %25, i32 0, i32 0, !dbg !655
  %26 = load i32, ptr %size_bits14, align 8, !dbg !655
  %sh_prom15 = zext i32 %26 to i64, !dbg !655
  %shr16 = lshr i64 %24, %sh_prom15, !dbg !655
  %cmp17 = icmp ne i64 %shr, %shr16, !dbg !656
  br i1 %cmp17, label %if.then18, label %if.end21, !dbg !657

if.then18:                                        ; preds = %do.end
  %27 = load ptr, ptr %data_ring, align 8, !dbg !658
  %call19 = call ptr @to_block(ptr noundef %27, i64 noundef 0) #12, !dbg !660
  store ptr %call19, ptr %blk, align 8, !dbg !661
  %28 = load i64, ptr %id.addr, align 8, !dbg !662
  %29 = load ptr, ptr %blk, align 8, !dbg !663
  %id20 = getelementptr inbounds %struct.prb_data_block, ptr %29, i32 0, i32 0, !dbg !664
  store i64 %28, ptr %id20, align 8, !dbg !665
  br label %if.end21, !dbg !666

if.end21:                                         ; preds = %if.then18, %do.end
  %30 = load i64, ptr %begin_lpos, align 8, !dbg !667
  %31 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !668
  %begin22 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %31, i32 0, i32 0, !dbg !669
  store i64 %30, ptr %begin22, align 8, !dbg !670
  %32 = load i64, ptr %next_lpos, align 8, !dbg !671
  %33 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !672
  %next23 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %33, i32 0, i32 1, !dbg !673
  store i64 %32, ptr %next23, align 8, !dbg !674
  %34 = load ptr, ptr %blk, align 8, !dbg !675
  %data = getelementptr inbounds %struct.prb_data_block, ptr %34, i32 0, i32 1, !dbg !676
  %arrayidx = getelementptr [0 x i8], ptr %data, i64 0, i64 0, !dbg !675
  store ptr %arrayidx, ptr %retval, align 8, !dbg !677
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !677

cleanup:                                          ; preds = %if.end21, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lpos) #11, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin_lpos) #11, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk) #11, !dbg !678
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_ring) #11, !dbg !678
  %35 = load ptr, ptr %retval, align 8, !dbg !678
  ret ptr %35, !dbg !678
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @get_data(ptr noundef %data_ring, ptr noundef %blk_lpos, ptr noundef %data_size) #0 align 16 !dbg !679 {
entry:
  %retval = alloca ptr, align 8
  %data_ring.addr = alloca ptr, align 8
  %blk_lpos.addr = alloca ptr, align 8
  %data_size.addr = alloca ptr, align 8
  %db = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on69 = alloca i32, align 4
  %__flags90 = alloca i32, align 4
  %tmp103 = alloca i64, align 8
  %__ret_warn_on112 = alloca i32, align 4
  %__flags133 = alloca i32, align 4
  %tmp146 = alloca i64, align 8
  %__ret_warn_on157 = alloca i32, align 4
  %__flags175 = alloca i32, align 4
  %tmp188 = alloca i64, align 8
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !684, metadata !DIExpression()), !dbg !713
  store ptr %blk_lpos, ptr %blk_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_lpos.addr, metadata !685, metadata !DIExpression()), !dbg !714
  store ptr %data_size, ptr %data_size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_size.addr, metadata !686, metadata !DIExpression()), !dbg !715
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #11, !dbg !716
  call void @llvm.dbg.declare(metadata ptr %db, metadata !687, metadata !DIExpression()), !dbg !717
  %0 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !718
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %0, i32 0, i32 0, !dbg !718
  %1 = load i64, ptr %begin, align 8, !dbg !718
  %and = and i64 %1, 1, !dbg !718
  %tobool = icmp ne i64 %and, 0, !dbg !718
  br i1 %tobool, label %land.lhs.true, label %if.end8, !dbg !718

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !718
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 1, !dbg !718
  %3 = load i64, ptr %next, align 8, !dbg !718
  %and1 = and i64 %3, 1, !dbg !718
  %tobool2 = icmp ne i64 %and1, 0, !dbg !718
  br i1 %tobool2, label %if.then, label %if.end8, !dbg !720

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !721
  %begin3 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %4, i32 0, i32 0, !dbg !724
  %5 = load i64, ptr %begin3, align 8, !dbg !724
  %cmp = icmp eq i64 %5, 3, !dbg !725
  br i1 %cmp, label %land.lhs.true4, label %if.end, !dbg !726

land.lhs.true4:                                   ; preds = %if.then
  %6 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !727
  %next5 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %6, i32 0, i32 1, !dbg !728
  %7 = load i64, ptr %next5, align 8, !dbg !728
  %cmp6 = icmp eq i64 %7, 3, !dbg !729
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !730

if.then7:                                         ; preds = %land.lhs.true4
  %8 = load ptr, ptr %data_size.addr, align 8, !dbg !731
  store i32 0, ptr %8, align 4, !dbg !733
  store ptr @.str.4, ptr %retval, align 8, !dbg !734
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !734

if.end:                                           ; preds = %land.lhs.true4, %if.then
  store ptr null, ptr %retval, align 8, !dbg !735
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !735

if.end8:                                          ; preds = %land.lhs.true, %entry
  %9 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !736
  %begin9 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %9, i32 0, i32 0, !dbg !736
  %10 = load i64, ptr %begin9, align 8, !dbg !736
  %11 = load ptr, ptr %data_ring.addr, align 8, !dbg !736
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %11, i32 0, i32 0, !dbg !736
  %12 = load i32, ptr %size_bits, align 8, !dbg !736
  %sh_prom = zext i32 %12 to i64, !dbg !736
  %shr = lshr i64 %10, %sh_prom, !dbg !736
  %13 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !737
  %next10 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %13, i32 0, i32 1, !dbg !737
  %14 = load i64, ptr %next10, align 8, !dbg !737
  %15 = load ptr, ptr %data_ring.addr, align 8, !dbg !737
  %size_bits11 = getelementptr inbounds %struct.prb_data_ring, ptr %15, i32 0, i32 0, !dbg !737
  %16 = load i32, ptr %size_bits11, align 8, !dbg !737
  %sh_prom12 = zext i32 %16 to i64, !dbg !737
  %shr13 = lshr i64 %14, %sh_prom12, !dbg !737
  %cmp14 = icmp eq i64 %shr, %shr13, !dbg !738
  br i1 %cmp14, label %land.lhs.true15, label %if.else, !dbg !739

land.lhs.true15:                                  ; preds = %if.end8
  %17 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !740
  %begin16 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %17, i32 0, i32 0, !dbg !741
  %18 = load i64, ptr %begin16, align 8, !dbg !741
  %19 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !742
  %next17 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %19, i32 0, i32 1, !dbg !743
  %20 = load i64, ptr %next17, align 8, !dbg !743
  %cmp18 = icmp ult i64 %18, %20, !dbg !744
  br i1 %cmp18, label %if.then19, label %if.else, !dbg !745

if.then19:                                        ; preds = %land.lhs.true15
  %21 = load ptr, ptr %data_ring.addr, align 8, !dbg !746
  %22 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !748
  %begin20 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %22, i32 0, i32 0, !dbg !749
  %23 = load i64, ptr %begin20, align 8, !dbg !749
  %call = call ptr @to_block(ptr noundef %21, i64 noundef %23) #12, !dbg !750
  store ptr %call, ptr %db, align 8, !dbg !751
  %24 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !752
  %next21 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %24, i32 0, i32 1, !dbg !753
  %25 = load i64, ptr %next21, align 8, !dbg !753
  %26 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !754
  %begin22 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %26, i32 0, i32 0, !dbg !755
  %27 = load i64, ptr %begin22, align 8, !dbg !755
  %sub = sub i64 %25, %27, !dbg !756
  %conv = trunc i64 %sub to i32, !dbg !752
  %28 = load ptr, ptr %data_size.addr, align 8, !dbg !757
  store i32 %conv, ptr %28, align 4, !dbg !758
  br label %if.end68, !dbg !759

if.else:                                          ; preds = %land.lhs.true15, %if.end8
  %29 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !760
  %begin23 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %29, i32 0, i32 0, !dbg !760
  %30 = load i64, ptr %begin23, align 8, !dbg !760
  %31 = load ptr, ptr %data_ring.addr, align 8, !dbg !760
  %size_bits24 = getelementptr inbounds %struct.prb_data_ring, ptr %31, i32 0, i32 0, !dbg !760
  %32 = load i32, ptr %size_bits24, align 8, !dbg !760
  %sh_prom25 = zext i32 %32 to i64, !dbg !760
  %shl = shl i64 1, %sh_prom25, !dbg !760
  %add = add i64 %30, %shl, !dbg !760
  %33 = load ptr, ptr %data_ring.addr, align 8, !dbg !760
  %size_bits26 = getelementptr inbounds %struct.prb_data_ring, ptr %33, i32 0, i32 0, !dbg !760
  %34 = load i32, ptr %size_bits26, align 8, !dbg !760
  %sh_prom27 = zext i32 %34 to i64, !dbg !760
  %shr28 = lshr i64 %add, %sh_prom27, !dbg !760
  %35 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !761
  %next29 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %35, i32 0, i32 1, !dbg !761
  %36 = load i64, ptr %next29, align 8, !dbg !761
  %37 = load ptr, ptr %data_ring.addr, align 8, !dbg !761
  %size_bits30 = getelementptr inbounds %struct.prb_data_ring, ptr %37, i32 0, i32 0, !dbg !761
  %38 = load i32, ptr %size_bits30, align 8, !dbg !761
  %sh_prom31 = zext i32 %38 to i64, !dbg !761
  %shr32 = lshr i64 %36, %sh_prom31, !dbg !761
  %cmp33 = icmp eq i64 %shr28, %shr32, !dbg !762
  br i1 %cmp33, label %if.then35, label %if.else44, !dbg !763

if.then35:                                        ; preds = %if.else
  %39 = load ptr, ptr %data_ring.addr, align 8, !dbg !764
  %call36 = call ptr @to_block(ptr noundef %39, i64 noundef 0) #12, !dbg !766
  store ptr %call36, ptr %db, align 8, !dbg !767
  %40 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !768
  %next37 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %40, i32 0, i32 1, !dbg !768
  %41 = load i64, ptr %next37, align 8, !dbg !768
  %42 = load ptr, ptr %data_ring.addr, align 8, !dbg !768
  %size_bits38 = getelementptr inbounds %struct.prb_data_ring, ptr %42, i32 0, i32 0, !dbg !768
  %43 = load i32, ptr %size_bits38, align 8, !dbg !768
  %sh_prom39 = zext i32 %43 to i64, !dbg !768
  %shl40 = shl i64 1, %sh_prom39, !dbg !768
  %sub41 = sub i64 %shl40, 1, !dbg !768
  %and42 = and i64 %41, %sub41, !dbg !768
  %conv43 = trunc i64 %and42 to i32, !dbg !768
  %44 = load ptr, ptr %data_size.addr, align 8, !dbg !769
  store i32 %conv43, ptr %44, align 4, !dbg !770
  br label %if.end67, !dbg !771

if.else44:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !772
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !688, metadata !DIExpression()), !dbg !772
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !772
  %45 = load i32, ptr %__ret_warn_on, align 4, !dbg !773
  %tobool45 = icmp ne i32 %45, 0, !dbg !773
  %lnot = xor i1 %tobool45, true, !dbg !773
  %lnot46 = xor i1 %lnot, true, !dbg !773
  %lnot.ext = zext i1 %lnot46 to i32, !dbg !773
  %conv47 = sext i32 %lnot.ext to i64, !dbg !773
  %expval = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !773
  %tobool48 = icmp ne i64 %expval, 0, !dbg !773
  br i1 %tobool48, label %if.then49, label %if.end59, !dbg !772

if.then49:                                        ; preds = %if.else44
  br label %do.body, !dbg !773

do.body:                                          ; preds = %if.then49
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !774
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !693, metadata !DIExpression()), !dbg !774
  store i32 2307, ptr %__flags, align 4, !dbg !774
  br label %do.body50, !dbg !774

do.body50:                                        ; preds = %do.body
  br label %do.cond, !dbg !775

do.cond:                                          ; preds = %do.body50
  br label %do.end, !dbg !775

do.end:                                           ; preds = %do.cond
  br label %do.body51, !dbg !774

do.body51:                                        ; preds = %do.end
  %46 = load i32, ptr %__flags, align 4, !dbg !777
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1234, i32 %46, i64 12) #11, !dbg !777, !srcloc !779
  br label %do.cond52, !dbg !777

do.cond52:                                        ; preds = %do.body51
  br label %do.end53, !dbg !777

do.end53:                                         ; preds = %do.cond52
  br label %do.body54, !dbg !774

do.body54:                                        ; preds = %do.end53
  br label %do.cond55, !dbg !780

do.cond55:                                        ; preds = %do.body54
  br label %do.end56, !dbg !780

do.end56:                                         ; preds = %do.cond55
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !773
  br label %do.cond57, !dbg !774

do.cond57:                                        ; preds = %do.end56
  br label %do.end58, !dbg !774

do.end58:                                         ; preds = %do.cond57
  br label %if.end59, !dbg !774

if.end59:                                         ; preds = %do.end58, %if.else44
  %47 = load i32, ptr %__ret_warn_on, align 4, !dbg !772
  %tobool60 = icmp ne i32 %47, 0, !dbg !772
  %lnot61 = xor i1 %tobool60, true, !dbg !772
  %lnot63 = xor i1 %lnot61, true, !dbg !772
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !772
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !772
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !772
  store i64 %expval66, ptr %tmp, align 8, !dbg !773
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !782
  %48 = load i64, ptr %tmp, align 8, !dbg !772
  store ptr null, ptr %retval, align 8, !dbg !783
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !783

if.end67:                                         ; preds = %if.then35
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.then19
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on69) #11, !dbg !784
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on69, metadata !696, metadata !DIExpression()), !dbg !784
  %49 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !784
  %begin70 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %49, i32 0, i32 0, !dbg !784
  %50 = load i64, ptr %begin70, align 8, !dbg !784
  %51 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !784
  %begin71 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %51, i32 0, i32 0, !dbg !784
  %52 = load i64, ptr %begin71, align 8, !dbg !784
  %add72 = add i64 %52, 7, !dbg !784
  %and73 = and i64 %add72, -8, !dbg !784
  %cmp74 = icmp ne i64 %50, %and73, !dbg !784
  %lnot76 = xor i1 %cmp74, true, !dbg !784
  %lnot78 = xor i1 %lnot76, true, !dbg !784
  %lnot.ext79 = zext i1 %lnot78 to i32, !dbg !784
  store i32 %lnot.ext79, ptr %__ret_warn_on69, align 4, !dbg !784
  %53 = load i32, ptr %__ret_warn_on69, align 4, !dbg !785
  %tobool80 = icmp ne i32 %53, 0, !dbg !785
  %lnot81 = xor i1 %tobool80, true, !dbg !785
  %lnot83 = xor i1 %lnot81, true, !dbg !785
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !785
  %conv85 = sext i32 %lnot.ext84 to i64, !dbg !785
  %expval86 = call i64 @llvm.expect.i64(i64 %conv85, i64 0), !dbg !785
  %tobool87 = icmp ne i64 %expval86, 0, !dbg !785
  br i1 %tobool87, label %if.then88, label %if.end102, !dbg !784

if.then88:                                        ; preds = %if.end68
  br label %do.body89, !dbg !785

do.body89:                                        ; preds = %if.then88
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags90) #11, !dbg !786
  call void @llvm.dbg.declare(metadata ptr %__flags90, metadata !699, metadata !DIExpression()), !dbg !786
  store i32 2307, ptr %__flags90, align 4, !dbg !786
  br label %do.body91, !dbg !786

do.body91:                                        ; preds = %do.body89
  br label %do.cond92, !dbg !787

do.cond92:                                        ; preds = %do.body91
  br label %do.end93, !dbg !787

do.end93:                                         ; preds = %do.cond92
  br label %do.body94, !dbg !786

do.body94:                                        ; preds = %do.end93
  %54 = load i32, ptr %__flags90, align 4, !dbg !789
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1239, i32 %54, i64 12) #11, !dbg !789, !srcloc !791
  br label %do.cond95, !dbg !789

do.cond95:                                        ; preds = %do.body94
  br label %do.end96, !dbg !789

do.end96:                                         ; preds = %do.cond95
  br label %do.body97, !dbg !786

do.body97:                                        ; preds = %do.end96
  br label %do.cond98, !dbg !792

do.cond98:                                        ; preds = %do.body97
  br label %do.end99, !dbg !792

do.end99:                                         ; preds = %do.cond98
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags90) #11, !dbg !785
  br label %do.cond100, !dbg !786

do.cond100:                                       ; preds = %do.end99
  br label %do.end101, !dbg !786

do.end101:                                        ; preds = %do.cond100
  br label %if.end102, !dbg !786

if.end102:                                        ; preds = %do.end101, %if.end68
  %55 = load i32, ptr %__ret_warn_on69, align 4, !dbg !784
  %tobool104 = icmp ne i32 %55, 0, !dbg !784
  %lnot105 = xor i1 %tobool104, true, !dbg !784
  %lnot107 = xor i1 %lnot105, true, !dbg !784
  %lnot.ext108 = zext i1 %lnot107 to i32, !dbg !784
  %conv109 = sext i32 %lnot.ext108 to i64, !dbg !784
  %expval110 = call i64 @llvm.expect.i64(i64 %conv109, i64 0), !dbg !784
  store i64 %expval110, ptr %tmp103, align 8, !dbg !785
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on69) #11, !dbg !794
  %56 = load i64, ptr %tmp103, align 8, !dbg !784
  %tobool111 = icmp ne i64 %56, 0, !dbg !794
  br i1 %tobool111, label %if.then155, label %lor.lhs.false, !dbg !795

lor.lhs.false:                                    ; preds = %if.end102
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on112) #11, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on112, metadata !702, metadata !DIExpression()), !dbg !796
  %57 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !796
  %next113 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %57, i32 0, i32 1, !dbg !796
  %58 = load i64, ptr %next113, align 8, !dbg !796
  %59 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !796
  %next114 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %59, i32 0, i32 1, !dbg !796
  %60 = load i64, ptr %next114, align 8, !dbg !796
  %add115 = add i64 %60, 7, !dbg !796
  %and116 = and i64 %add115, -8, !dbg !796
  %cmp117 = icmp ne i64 %58, %and116, !dbg !796
  %lnot119 = xor i1 %cmp117, true, !dbg !796
  %lnot121 = xor i1 %lnot119, true, !dbg !796
  %lnot.ext122 = zext i1 %lnot121 to i32, !dbg !796
  store i32 %lnot.ext122, ptr %__ret_warn_on112, align 4, !dbg !796
  %61 = load i32, ptr %__ret_warn_on112, align 4, !dbg !797
  %tobool123 = icmp ne i32 %61, 0, !dbg !797
  %lnot124 = xor i1 %tobool123, true, !dbg !797
  %lnot126 = xor i1 %lnot124, true, !dbg !797
  %lnot.ext127 = zext i1 %lnot126 to i32, !dbg !797
  %conv128 = sext i32 %lnot.ext127 to i64, !dbg !797
  %expval129 = call i64 @llvm.expect.i64(i64 %conv128, i64 0), !dbg !797
  %tobool130 = icmp ne i64 %expval129, 0, !dbg !797
  br i1 %tobool130, label %if.then131, label %if.end145, !dbg !796

if.then131:                                       ; preds = %lor.lhs.false
  br label %do.body132, !dbg !797

do.body132:                                       ; preds = %if.then131
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags133) #11, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %__flags133, metadata !704, metadata !DIExpression()), !dbg !798
  store i32 2307, ptr %__flags133, align 4, !dbg !798
  br label %do.body134, !dbg !798

do.body134:                                       ; preds = %do.body132
  br label %do.cond135, !dbg !799

do.cond135:                                       ; preds = %do.body134
  br label %do.end136, !dbg !799

do.end136:                                        ; preds = %do.cond135
  br label %do.body137, !dbg !798

do.body137:                                       ; preds = %do.end136
  %62 = load i32, ptr %__flags133, align 4, !dbg !801
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1240, i32 %62, i64 12) #11, !dbg !801, !srcloc !803
  br label %do.cond138, !dbg !801

do.cond138:                                       ; preds = %do.body137
  br label %do.end139, !dbg !801

do.end139:                                        ; preds = %do.cond138
  br label %do.body140, !dbg !798

do.body140:                                       ; preds = %do.end139
  br label %do.cond141, !dbg !804

do.cond141:                                       ; preds = %do.body140
  br label %do.end142, !dbg !804

do.end142:                                        ; preds = %do.cond141
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags133) #11, !dbg !797
  br label %do.cond143, !dbg !798

do.cond143:                                       ; preds = %do.end142
  br label %do.end144, !dbg !798

do.end144:                                        ; preds = %do.cond143
  br label %if.end145, !dbg !798

if.end145:                                        ; preds = %do.end144, %lor.lhs.false
  %63 = load i32, ptr %__ret_warn_on112, align 4, !dbg !796
  %tobool147 = icmp ne i32 %63, 0, !dbg !796
  %lnot148 = xor i1 %tobool147, true, !dbg !796
  %lnot150 = xor i1 %lnot148, true, !dbg !796
  %lnot.ext151 = zext i1 %lnot150 to i32, !dbg !796
  %conv152 = sext i32 %lnot.ext151 to i64, !dbg !796
  %expval153 = call i64 @llvm.expect.i64(i64 %conv152, i64 0), !dbg !796
  store i64 %expval153, ptr %tmp146, align 8, !dbg !797
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on112) #11, !dbg !806
  %64 = load i64, ptr %tmp146, align 8, !dbg !796
  %tobool154 = icmp ne i64 %64, 0, !dbg !806
  br i1 %tobool154, label %if.then155, label %if.end156, !dbg !807

if.then155:                                       ; preds = %if.end145, %if.end102
  store ptr null, ptr %retval, align 8, !dbg !808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !808

if.end156:                                        ; preds = %if.end145
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on157) #11, !dbg !810
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on157, metadata !707, metadata !DIExpression()), !dbg !810
  %65 = load ptr, ptr %data_size.addr, align 8, !dbg !810
  %66 = load i32, ptr %65, align 4, !dbg !810
  %conv158 = zext i32 %66 to i64, !dbg !810
  %cmp159 = icmp ult i64 %conv158, 8, !dbg !810
  %lnot161 = xor i1 %cmp159, true, !dbg !810
  %lnot163 = xor i1 %lnot161, true, !dbg !810
  %lnot.ext164 = zext i1 %lnot163 to i32, !dbg !810
  store i32 %lnot.ext164, ptr %__ret_warn_on157, align 4, !dbg !810
  %67 = load i32, ptr %__ret_warn_on157, align 4, !dbg !811
  %tobool165 = icmp ne i32 %67, 0, !dbg !811
  %lnot166 = xor i1 %tobool165, true, !dbg !811
  %lnot168 = xor i1 %lnot166, true, !dbg !811
  %lnot.ext169 = zext i1 %lnot168 to i32, !dbg !811
  %conv170 = sext i32 %lnot.ext169 to i64, !dbg !811
  %expval171 = call i64 @llvm.expect.i64(i64 %conv170, i64 0), !dbg !811
  %tobool172 = icmp ne i64 %expval171, 0, !dbg !811
  br i1 %tobool172, label %if.then173, label %if.end187, !dbg !810

if.then173:                                       ; preds = %if.end156
  br label %do.body174, !dbg !811

do.body174:                                       ; preds = %if.then173
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags175) #11, !dbg !812
  call void @llvm.dbg.declare(metadata ptr %__flags175, metadata !710, metadata !DIExpression()), !dbg !812
  store i32 2307, ptr %__flags175, align 4, !dbg !812
  br label %do.body176, !dbg !812

do.body176:                                       ; preds = %do.body174
  br label %do.cond177, !dbg !813

do.cond177:                                       ; preds = %do.body176
  br label %do.end178, !dbg !813

do.end178:                                        ; preds = %do.cond177
  br label %do.body179, !dbg !812

do.body179:                                       ; preds = %do.end178
  %68 = load i32, ptr %__flags175, align 4, !dbg !815
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1245, i32 %68, i64 12) #11, !dbg !815, !srcloc !817
  br label %do.cond180, !dbg !815

do.cond180:                                       ; preds = %do.body179
  br label %do.end181, !dbg !815

do.end181:                                        ; preds = %do.cond180
  br label %do.body182, !dbg !812

do.body182:                                       ; preds = %do.end181
  br label %do.cond183, !dbg !818

do.cond183:                                       ; preds = %do.body182
  br label %do.end184, !dbg !818

do.end184:                                        ; preds = %do.cond183
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags175) #11, !dbg !811
  br label %do.cond185, !dbg !812

do.cond185:                                       ; preds = %do.end184
  br label %do.end186, !dbg !812

do.end186:                                        ; preds = %do.cond185
  br label %if.end187, !dbg !812

if.end187:                                        ; preds = %do.end186, %if.end156
  %69 = load i32, ptr %__ret_warn_on157, align 4, !dbg !810
  %tobool189 = icmp ne i32 %69, 0, !dbg !810
  %lnot190 = xor i1 %tobool189, true, !dbg !810
  %lnot192 = xor i1 %lnot190, true, !dbg !810
  %lnot.ext193 = zext i1 %lnot192 to i32, !dbg !810
  %conv194 = sext i32 %lnot.ext193 to i64, !dbg !810
  %expval195 = call i64 @llvm.expect.i64(i64 %conv194, i64 0), !dbg !810
  store i64 %expval195, ptr %tmp188, align 8, !dbg !811
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on157) #11, !dbg !820
  %70 = load i64, ptr %tmp188, align 8, !dbg !810
  %tobool196 = icmp ne i64 %70, 0, !dbg !820
  br i1 %tobool196, label %if.then197, label %if.end198, !dbg !821

if.then197:                                       ; preds = %if.end187
  store ptr null, ptr %retval, align 8, !dbg !822
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !822

if.end198:                                        ; preds = %if.end187
  %71 = load ptr, ptr %data_size.addr, align 8, !dbg !823
  %72 = load i32, ptr %71, align 4, !dbg !824
  %conv199 = zext i32 %72 to i64, !dbg !824
  %sub200 = sub i64 %conv199, 8, !dbg !824
  %conv201 = trunc i64 %sub200 to i32, !dbg !824
  store i32 %conv201, ptr %71, align 4, !dbg !824
  %73 = load ptr, ptr %db, align 8, !dbg !825
  %data = getelementptr inbounds %struct.prb_data_block, ptr %73, i32 0, i32 1, !dbg !826
  %arrayidx = getelementptr [0 x i8], ptr %data, i64 0, i64 0, !dbg !825
  store ptr %arrayidx, ptr %retval, align 8, !dbg !827
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !827

cleanup:                                          ; preds = %if.end198, %if.then197, %if.then155, %if.end59, %if.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #11, !dbg !828
  %74 = load ptr, ptr %retval, align 8, !dbg !828
  ret ptr %74, !dbg !828
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @data_realloc(ptr noundef %rb, i32 noundef %size, ptr noundef %blk_lpos, i64 noundef %id) #0 align 16 !dbg !829 {
entry:
  %retval = alloca ptr, align 8
  %rb.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %blk_lpos.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %data_ring = alloca ptr, align 8
  %blk = alloca ptr, align 8
  %head_lpos = alloca i64, align 8
  %next_lpos = alloca i64, align 8
  %wrapped = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %old_blk = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !831, metadata !DIExpression()), !dbg !843
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !832, metadata !DIExpression()), !dbg !844
  store ptr %blk_lpos, ptr %blk_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_lpos.addr, metadata !833, metadata !DIExpression()), !dbg !845
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !834, metadata !DIExpression()), !dbg !846
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_ring) #11, !dbg !847
  call void @llvm.dbg.declare(metadata ptr %data_ring, metadata !835, metadata !DIExpression()), !dbg !848
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !849
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, !dbg !850
  store ptr %text_data_ring, ptr %data_ring, align 8, !dbg !848
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk) #11, !dbg !851
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !836, metadata !DIExpression()), !dbg !852
  call void @llvm.lifetime.start.p0(i64 8, ptr %head_lpos) #11, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %head_lpos, metadata !837, metadata !DIExpression()), !dbg !854
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lpos) #11, !dbg !855
  call void @llvm.dbg.declare(metadata ptr %next_lpos, metadata !838, metadata !DIExpression()), !dbg !856
  call void @llvm.lifetime.start.p0(i64 1, ptr %wrapped) #11, !dbg !857
  call void @llvm.dbg.declare(metadata ptr %wrapped, metadata !839, metadata !DIExpression()), !dbg !858
  %1 = load ptr, ptr %data_ring, align 8, !dbg !859
  %head_lpos1 = getelementptr inbounds %struct.prb_data_ring, ptr %1, i32 0, i32 2, !dbg !860
  %call = call i64 @atomic_long_read(ptr noundef %head_lpos1) #12, !dbg !861
  store i64 %call, ptr %head_lpos, align 8, !dbg !862
  %2 = load i64, ptr %head_lpos, align 8, !dbg !863
  %3 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !865
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %3, i32 0, i32 1, !dbg !866
  %4 = load i64, ptr %next, align 8, !dbg !866
  %cmp = icmp ne i64 %2, %4, !dbg !867
  br i1 %cmp, label %if.then, label %if.end, !dbg !868

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !869
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !869

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !870
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %5, i32 0, i32 0, !dbg !870
  %6 = load i64, ptr %begin, align 8, !dbg !870
  %7 = load ptr, ptr %data_ring, align 8, !dbg !870
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %7, i32 0, i32 0, !dbg !870
  %8 = load i32, ptr %size_bits, align 8, !dbg !870
  %sh_prom = zext i32 %8 to i64, !dbg !870
  %shr = lshr i64 %6, %sh_prom, !dbg !870
  %9 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !871
  %next2 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %9, i32 0, i32 1, !dbg !871
  %10 = load i64, ptr %next2, align 8, !dbg !871
  %11 = load ptr, ptr %data_ring, align 8, !dbg !871
  %size_bits3 = getelementptr inbounds %struct.prb_data_ring, ptr %11, i32 0, i32 0, !dbg !871
  %12 = load i32, ptr %size_bits3, align 8, !dbg !871
  %sh_prom4 = zext i32 %12 to i64, !dbg !871
  %shr5 = lshr i64 %10, %sh_prom4, !dbg !871
  %cmp6 = icmp ne i64 %shr, %shr5, !dbg !872
  %frombool = zext i1 %cmp6 to i8, !dbg !873
  store i8 %frombool, ptr %wrapped, align 1, !dbg !873
  %13 = load i32, ptr %size.addr, align 4, !dbg !874
  %call7 = call i32 @to_blk_size(i32 noundef %13) #12, !dbg !875
  store i32 %call7, ptr %size.addr, align 4, !dbg !876
  %14 = load ptr, ptr %data_ring, align 8, !dbg !877
  %15 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !878
  %begin8 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %15, i32 0, i32 0, !dbg !879
  %16 = load i64, ptr %begin8, align 8, !dbg !879
  %17 = load i32, ptr %size.addr, align 4, !dbg !880
  %call9 = call i64 @get_next_lpos(ptr noundef %14, i64 noundef %16, i32 noundef %17) #12, !dbg !881
  store i64 %call9, ptr %next_lpos, align 8, !dbg !882
  %18 = load i64, ptr %head_lpos, align 8, !dbg !883
  %19 = load i64, ptr %next_lpos, align 8, !dbg !885
  %sub = sub i64 %18, %19, !dbg !886
  %20 = load ptr, ptr %data_ring, align 8, !dbg !887
  %size_bits10 = getelementptr inbounds %struct.prb_data_ring, ptr %20, i32 0, i32 0, !dbg !887
  %21 = load i32, ptr %size_bits10, align 8, !dbg !887
  %sh_prom11 = zext i32 %21 to i64, !dbg !887
  %shl = shl i64 1, %sh_prom11, !dbg !887
  %cmp12 = icmp ult i64 %sub, %shl, !dbg !888
  br i1 %cmp12, label %if.then13, label %if.end19, !dbg !889

if.then13:                                        ; preds = %if.end
  %22 = load i8, ptr %wrapped, align 1, !dbg !890, !range !281, !noundef !282
  %tobool = trunc i8 %22 to i1, !dbg !890
  br i1 %tobool, label %if.then14, label %if.else, !dbg !893

if.then14:                                        ; preds = %if.then13
  %23 = load ptr, ptr %data_ring, align 8, !dbg !894
  %call15 = call ptr @to_block(ptr noundef %23, i64 noundef 0) #12, !dbg !895
  store ptr %call15, ptr %blk, align 8, !dbg !896
  br label %if.end18, !dbg !897

if.else:                                          ; preds = %if.then13
  %24 = load ptr, ptr %data_ring, align 8, !dbg !898
  %25 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !899
  %begin16 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %25, i32 0, i32 0, !dbg !900
  %26 = load i64, ptr %begin16, align 8, !dbg !900
  %call17 = call ptr @to_block(ptr noundef %24, i64 noundef %26) #12, !dbg !901
  store ptr %call17, ptr %blk, align 8, !dbg !902
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then14
  %27 = load ptr, ptr %blk, align 8, !dbg !903
  %data = getelementptr inbounds %struct.prb_data_block, ptr %27, i32 0, i32 1, !dbg !904
  %arrayidx = getelementptr [0 x i8], ptr %data, i64 0, i64 0, !dbg !903
  store ptr %arrayidx, ptr %retval, align 8, !dbg !905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !905

if.end19:                                         ; preds = %if.end
  %28 = load ptr, ptr %rb.addr, align 8, !dbg !906
  %29 = load i64, ptr %next_lpos, align 8, !dbg !908
  %30 = load ptr, ptr %data_ring, align 8, !dbg !909
  %size_bits20 = getelementptr inbounds %struct.prb_data_ring, ptr %30, i32 0, i32 0, !dbg !909
  %31 = load i32, ptr %size_bits20, align 8, !dbg !909
  %sh_prom21 = zext i32 %31 to i64, !dbg !909
  %shl22 = shl i64 1, %sh_prom21, !dbg !909
  %sub23 = sub i64 %29, %shl22, !dbg !910
  %call24 = call zeroext i1 @data_push_tail(ptr noundef %28, i64 noundef %sub23) #12, !dbg !911
  br i1 %call24, label %if.end26, label %if.then25, !dbg !912

if.then25:                                        ; preds = %if.end19
  store ptr null, ptr %retval, align 8, !dbg !913
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !913

if.end26:                                         ; preds = %if.end19
  %32 = load ptr, ptr %data_ring, align 8, !dbg !914
  %head_lpos27 = getelementptr inbounds %struct.prb_data_ring, ptr %32, i32 0, i32 2, !dbg !916
  %33 = load i64, ptr %next_lpos, align 8, !dbg !917
  %call28 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %head_lpos27, ptr noundef %head_lpos, i64 noundef %33) #12, !dbg !918
  br i1 %call28, label %if.end30, label %if.then29, !dbg !919

if.then29:                                        ; preds = %if.end26
  store ptr null, ptr %retval, align 8, !dbg !920
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !920

if.end30:                                         ; preds = %if.end26
  %34 = load ptr, ptr %data_ring, align 8, !dbg !922
  %35 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !923
  %begin31 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %35, i32 0, i32 0, !dbg !924
  %36 = load i64, ptr %begin31, align 8, !dbg !924
  %call32 = call ptr @to_block(ptr noundef %34, i64 noundef %36) #12, !dbg !925
  store ptr %call32, ptr %blk, align 8, !dbg !926
  %37 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !927
  %begin33 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %37, i32 0, i32 0, !dbg !927
  %38 = load i64, ptr %begin33, align 8, !dbg !927
  %39 = load ptr, ptr %data_ring, align 8, !dbg !927
  %size_bits34 = getelementptr inbounds %struct.prb_data_ring, ptr %39, i32 0, i32 0, !dbg !927
  %40 = load i32, ptr %size_bits34, align 8, !dbg !927
  %sh_prom35 = zext i32 %40 to i64, !dbg !927
  %shr36 = lshr i64 %38, %sh_prom35, !dbg !927
  %41 = load i64, ptr %next_lpos, align 8, !dbg !928
  %42 = load ptr, ptr %data_ring, align 8, !dbg !928
  %size_bits37 = getelementptr inbounds %struct.prb_data_ring, ptr %42, i32 0, i32 0, !dbg !928
  %43 = load i32, ptr %size_bits37, align 8, !dbg !928
  %sh_prom38 = zext i32 %43 to i64, !dbg !928
  %shr39 = lshr i64 %41, %sh_prom38, !dbg !928
  %cmp40 = icmp ne i64 %shr36, %shr39, !dbg !929
  br i1 %cmp40, label %if.then41, label %if.end55, !dbg !930

if.then41:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 8, ptr %old_blk) #11, !dbg !931
  call void @llvm.dbg.declare(metadata ptr %old_blk, metadata !840, metadata !DIExpression()), !dbg !932
  %44 = load ptr, ptr %blk, align 8, !dbg !933
  store ptr %44, ptr %old_blk, align 8, !dbg !932
  %45 = load ptr, ptr %data_ring, align 8, !dbg !934
  %call42 = call ptr @to_block(ptr noundef %45, i64 noundef 0) #12, !dbg !935
  store ptr %call42, ptr %blk, align 8, !dbg !936
  %46 = load i64, ptr %id.addr, align 8, !dbg !937
  %47 = load ptr, ptr %blk, align 8, !dbg !938
  %id43 = getelementptr inbounds %struct.prb_data_block, ptr %47, i32 0, i32 0, !dbg !939
  store i64 %46, ptr %id43, align 8, !dbg !940
  %48 = load i8, ptr %wrapped, align 1, !dbg !941, !range !281, !noundef !282
  %tobool44 = trunc i8 %48 to i1, !dbg !941
  br i1 %tobool44, label %if.end54, label %if.then45, !dbg !943

if.then45:                                        ; preds = %if.then41
  %49 = load ptr, ptr %blk, align 8, !dbg !944
  %data46 = getelementptr inbounds %struct.prb_data_block, ptr %49, i32 0, i32 1, !dbg !946
  %arrayidx47 = getelementptr [0 x i8], ptr %data46, i64 0, i64 0, !dbg !944
  %50 = load ptr, ptr %old_blk, align 8, !dbg !947
  %data48 = getelementptr inbounds %struct.prb_data_block, ptr %50, i32 0, i32 1, !dbg !948
  %arrayidx49 = getelementptr [0 x i8], ptr %data48, i64 0, i64 0, !dbg !947
  %51 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !949
  %next50 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %51, i32 0, i32 1, !dbg !950
  %52 = load i64, ptr %next50, align 8, !dbg !950
  %53 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !951
  %begin51 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %53, i32 0, i32 0, !dbg !952
  %54 = load i64, ptr %begin51, align 8, !dbg !952
  %sub52 = sub i64 %52, %54, !dbg !953
  %sub53 = sub i64 %sub52, 8, !dbg !954
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %arrayidx47, ptr align 8 %arrayidx49, i64 %sub53, i1 false), !dbg !955
  br label %if.end54, !dbg !956

if.end54:                                         ; preds = %if.then45, %if.then41
  call void @llvm.lifetime.end.p0(i64 8, ptr %old_blk) #11, !dbg !957
  br label %if.end55, !dbg !958

if.end55:                                         ; preds = %if.end54, %if.end30
  %55 = load i64, ptr %next_lpos, align 8, !dbg !959
  %56 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !960
  %next56 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %56, i32 0, i32 1, !dbg !961
  store i64 %55, ptr %next56, align 8, !dbg !962
  %57 = load ptr, ptr %blk, align 8, !dbg !963
  %data57 = getelementptr inbounds %struct.prb_data_block, ptr %57, i32 0, i32 1, !dbg !964
  %arrayidx58 = getelementptr [0 x i8], ptr %data57, i64 0, i64 0, !dbg !963
  store ptr %arrayidx58, ptr %retval, align 8, !dbg !965
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !965

cleanup:                                          ; preds = %if.end55, %if.then29, %if.then25, %if.end18, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %wrapped) #11, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lpos) #11, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %head_lpos) #11, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk) #11, !dbg !966
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_ring) #11, !dbg !966
  %58 = load ptr, ptr %retval, align 8, !dbg !966
  ret ptr %58, !dbg !966
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @space_used(ptr noundef %data_ring, ptr noundef %blk_lpos) #0 align 16 !dbg !967 {
entry:
  %retval = alloca i32, align 4
  %data_ring.addr = alloca ptr, align 8
  %blk_lpos.addr = alloca ptr, align 8
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !971, metadata !DIExpression()), !dbg !973
  store ptr %blk_lpos, ptr %blk_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_lpos.addr, metadata !972, metadata !DIExpression()), !dbg !974
  %0 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !975
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %0, i32 0, i32 0, !dbg !975
  %1 = load i64, ptr %begin, align 8, !dbg !975
  %and = and i64 %1, 1, !dbg !975
  %tobool = icmp ne i64 %and, 0, !dbg !975
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !975

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !975
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %2, i32 0, i32 1, !dbg !975
  %3 = load i64, ptr %next, align 8, !dbg !975
  %and1 = and i64 %3, 1, !dbg !975
  %tobool2 = icmp ne i64 %and1, 0, !dbg !975
  br i1 %tobool2, label %if.then, label %if.end, !dbg !977

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !978
  br label %return, !dbg !978

if.end:                                           ; preds = %land.lhs.true, %entry
  %4 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !979
  %begin3 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %4, i32 0, i32 0, !dbg !979
  %5 = load i64, ptr %begin3, align 8, !dbg !979
  %6 = load ptr, ptr %data_ring.addr, align 8, !dbg !979
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %6, i32 0, i32 0, !dbg !979
  %7 = load i32, ptr %size_bits, align 8, !dbg !979
  %sh_prom = zext i32 %7 to i64, !dbg !979
  %shr = lshr i64 %5, %sh_prom, !dbg !979
  %8 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !981
  %next4 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %8, i32 0, i32 1, !dbg !981
  %9 = load i64, ptr %next4, align 8, !dbg !981
  %10 = load ptr, ptr %data_ring.addr, align 8, !dbg !981
  %size_bits5 = getelementptr inbounds %struct.prb_data_ring, ptr %10, i32 0, i32 0, !dbg !981
  %11 = load i32, ptr %size_bits5, align 8, !dbg !981
  %sh_prom6 = zext i32 %11 to i64, !dbg !981
  %shr7 = lshr i64 %9, %sh_prom6, !dbg !981
  %cmp = icmp eq i64 %shr, %shr7, !dbg !982
  br i1 %cmp, label %if.then8, label %if.end20, !dbg !983

if.then8:                                         ; preds = %if.end
  %12 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !984
  %next9 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %12, i32 0, i32 1, !dbg !984
  %13 = load i64, ptr %next9, align 8, !dbg !984
  %14 = load ptr, ptr %data_ring.addr, align 8, !dbg !984
  %size_bits10 = getelementptr inbounds %struct.prb_data_ring, ptr %14, i32 0, i32 0, !dbg !984
  %15 = load i32, ptr %size_bits10, align 8, !dbg !984
  %sh_prom11 = zext i32 %15 to i64, !dbg !984
  %shl = shl i64 1, %sh_prom11, !dbg !984
  %sub = sub i64 %shl, 1, !dbg !984
  %and12 = and i64 %13, %sub, !dbg !984
  %16 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !986
  %begin13 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %16, i32 0, i32 0, !dbg !986
  %17 = load i64, ptr %begin13, align 8, !dbg !986
  %18 = load ptr, ptr %data_ring.addr, align 8, !dbg !986
  %size_bits14 = getelementptr inbounds %struct.prb_data_ring, ptr %18, i32 0, i32 0, !dbg !986
  %19 = load i32, ptr %size_bits14, align 8, !dbg !986
  %sh_prom15 = zext i32 %19 to i64, !dbg !986
  %shl16 = shl i64 1, %sh_prom15, !dbg !986
  %sub17 = sub i64 %shl16, 1, !dbg !986
  %and18 = and i64 %17, %sub17, !dbg !986
  %sub19 = sub i64 %and12, %and18, !dbg !987
  %conv = trunc i64 %sub19 to i32, !dbg !988
  store i32 %conv, ptr %retval, align 4, !dbg !989
  br label %return, !dbg !989

if.end20:                                         ; preds = %if.end
  %20 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !990
  %next21 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %20, i32 0, i32 1, !dbg !990
  %21 = load i64, ptr %next21, align 8, !dbg !990
  %22 = load ptr, ptr %data_ring.addr, align 8, !dbg !990
  %size_bits22 = getelementptr inbounds %struct.prb_data_ring, ptr %22, i32 0, i32 0, !dbg !990
  %23 = load i32, ptr %size_bits22, align 8, !dbg !990
  %sh_prom23 = zext i32 %23 to i64, !dbg !990
  %shl24 = shl i64 1, %sh_prom23, !dbg !990
  %sub25 = sub i64 %shl24, 1, !dbg !990
  %and26 = and i64 %21, %sub25, !dbg !990
  %24 = load ptr, ptr %data_ring.addr, align 8, !dbg !991
  %size_bits27 = getelementptr inbounds %struct.prb_data_ring, ptr %24, i32 0, i32 0, !dbg !991
  %25 = load i32, ptr %size_bits27, align 8, !dbg !991
  %sh_prom28 = zext i32 %25 to i64, !dbg !991
  %shl29 = shl i64 1, %sh_prom28, !dbg !991
  %add = add i64 %and26, %shl29, !dbg !992
  %26 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !993
  %begin30 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %26, i32 0, i32 0, !dbg !993
  %27 = load i64, ptr %begin30, align 8, !dbg !993
  %28 = load ptr, ptr %data_ring.addr, align 8, !dbg !993
  %size_bits31 = getelementptr inbounds %struct.prb_data_ring, ptr %28, i32 0, i32 0, !dbg !993
  %29 = load i32, ptr %size_bits31, align 8, !dbg !993
  %sh_prom32 = zext i32 %29 to i64, !dbg !993
  %shl33 = shl i64 1, %sh_prom32, !dbg !993
  %sub34 = sub i64 %shl33, 1, !dbg !993
  %and35 = and i64 %27, %sub34, !dbg !993
  %sub36 = sub i64 %add, %and35, !dbg !994
  %conv37 = trunc i64 %sub36 to i32, !dbg !995
  store i32 %conv37, ptr %retval, align 4, !dbg !996
  br label %return, !dbg !996

return:                                           ; preds = %if.end20, %if.then8, %if.then
  %30 = load i32, ptr %retval, align 4, !dbg !997
  ret i32 %30, !dbg !997
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @prb_commit(ptr noundef %e) #0 align 16 !dbg !998 {
entry:
  %e.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %head_id = alloca i64, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1002, metadata !DIExpression()), !dbg !1005
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1006
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1003, metadata !DIExpression()), !dbg !1007
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1008
  %rb = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 0, !dbg !1009
  %1 = load ptr, ptr %rb, align 8, !dbg !1009
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 0, !dbg !1010
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1007
  call void @llvm.lifetime.start.p0(i64 8, ptr %head_id) #11, !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %head_id, metadata !1004, metadata !DIExpression()), !dbg !1012
  %2 = load ptr, ptr %e.addr, align 8, !dbg !1013
  call void @_prb_commit(ptr noundef %2, i64 noundef 1) #12, !dbg !1014
  %3 = load ptr, ptr %desc_ring, align 8, !dbg !1015
  %head_id2 = getelementptr inbounds %struct.prb_desc_ring, ptr %3, i32 0, i32 3, !dbg !1016
  %call = call i64 @atomic_long_read(ptr noundef %head_id2) #12, !dbg !1017
  store i64 %call, ptr %head_id, align 8, !dbg !1018
  %4 = load i64, ptr %head_id, align 8, !dbg !1019
  %5 = load ptr, ptr %e.addr, align 8, !dbg !1021
  %id = getelementptr inbounds %struct.prb_reserved_entry, ptr %5, i32 0, i32 2, !dbg !1022
  %6 = load i64, ptr %id, align 8, !dbg !1022
  %cmp = icmp ne i64 %4, %6, !dbg !1023
  br i1 %cmp, label %if.then, label %if.end, !dbg !1024

if.then:                                          ; preds = %entry
  %7 = load ptr, ptr %desc_ring, align 8, !dbg !1025
  %8 = load ptr, ptr %e.addr, align 8, !dbg !1026
  %id3 = getelementptr inbounds %struct.prb_reserved_entry, ptr %8, i32 0, i32 2, !dbg !1027
  %9 = load i64, ptr %id3, align 8, !dbg !1027
  call void @desc_make_final(ptr noundef %7, i64 noundef %9) #12, !dbg !1028
  br label %if.end, !dbg !1028

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %head_id) #11, !dbg !1029
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1029
  ret void, !dbg !1029
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @prb_reserve(ptr noundef %e, ptr noundef %rb, ptr noundef %r) #0 align 16 !dbg !1030 {
entry:
  %retval = alloca i1, align 1
  %e.addr = alloca ptr, align 8
  %rb.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %info = alloca ptr, align 8
  %d = alloca ptr, align 8
  %id = alloca i64, align 8
  %seq = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy10 = alloca i64, align 8
  %__dummy211 = alloca i64, align 8
  %tmp14 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1034, metadata !DIExpression()), !dbg !1055
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1035, metadata !DIExpression()), !dbg !1056
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1036, metadata !DIExpression()), !dbg !1057
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1058
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1037, metadata !DIExpression()), !dbg !1059
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1060
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !1061
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1059
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !1062
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1038, metadata !DIExpression()), !dbg !1063
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !1064
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1039, metadata !DIExpression()), !dbg !1065
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !1066
  call void @llvm.dbg.declare(metadata ptr %id, metadata !1040, metadata !DIExpression()), !dbg !1067
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #11, !dbg !1068
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1041, metadata !DIExpression()), !dbg !1069
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !1070
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 1, !dbg !1072
  %2 = load ptr, ptr %r.addr, align 8, !dbg !1073
  %text_buf_size = getelementptr inbounds %struct.printk_record, ptr %2, i32 0, i32 2, !dbg !1074
  %3 = load i32, ptr %text_buf_size, align 8, !dbg !1074
  %call = call zeroext i1 @data_check_size(ptr noundef %text_data_ring, i32 noundef %3) #12, !dbg !1075
  br i1 %call, label %if.end, label %if.then, !dbg !1076

if.then:                                          ; preds = %entry
  br label %fail65, !dbg !1077

if.end:                                           ; preds = %entry
  br label %do.body, !dbg !1078

do.body:                                          ; preds = %if.end
  br label %do.body2, !dbg !1079

do.body2:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1042, metadata !DIExpression()), !dbg !1080
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1046, metadata !DIExpression()), !dbg !1080
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1080
  %conv = zext i1 %cmp to i32, !dbg !1080
  store i32 1, ptr %tmp, align 4, !dbg !1080
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1081
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1081
  %4 = load i32, ptr %tmp, align 4, !dbg !1080
  %call3 = call i64 @arch_local_irq_save() #12, !dbg !1081
  %5 = load ptr, ptr %e.addr, align 8, !dbg !1081
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %5, i32 0, i32 1, !dbg !1081
  store i64 %call3, ptr %irqflags, align 8, !dbg !1081
  br label %do.cond, !dbg !1081

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1081

do.end:                                           ; preds = %do.cond
  br label %do.cond4, !dbg !1079

do.cond4:                                         ; preds = %do.end
  br label %do.end5, !dbg !1079

do.end5:                                          ; preds = %do.cond4
  %6 = load ptr, ptr %rb.addr, align 8, !dbg !1082
  %call6 = call zeroext i1 @desc_reserve(ptr noundef %6, ptr noundef %id) #12, !dbg !1083
  br i1 %call6, label %if.end23, label %if.then7, !dbg !1084

if.then7:                                         ; preds = %do.end5
  %7 = load ptr, ptr %rb.addr, align 8, !dbg !1085
  %fail = getelementptr inbounds %struct.printk_ringbuffer, ptr %7, i32 0, i32 2, !dbg !1086
  call void @atomic_long_inc(ptr noundef %fail) #12, !dbg !1087
  br label %do.body8, !dbg !1088

do.body8:                                         ; preds = %if.then7
  br label %do.body9, !dbg !1089

do.body9:                                         ; preds = %do.body8
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy10) #11, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %__dummy10, metadata !1047, metadata !DIExpression()), !dbg !1090
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy211) #11, !dbg !1090
  call void @llvm.dbg.declare(metadata ptr %__dummy211, metadata !1053, metadata !DIExpression()), !dbg !1090
  %cmp12 = icmp eq ptr %__dummy10, %__dummy211, !dbg !1090
  %conv13 = zext i1 %cmp12 to i32, !dbg !1090
  store i32 1, ptr %tmp14, align 4, !dbg !1090
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy211) #11, !dbg !1091
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy10) #11, !dbg !1091
  %8 = load i32, ptr %tmp14, align 4, !dbg !1090
  br label %do.body15, !dbg !1091

do.body15:                                        ; preds = %do.body9
  br label %do.cond16, !dbg !1092

do.cond16:                                        ; preds = %do.body15
  br label %do.end17, !dbg !1092

do.end17:                                         ; preds = %do.cond16
  %9 = load ptr, ptr %e.addr, align 8, !dbg !1091
  %irqflags18 = getelementptr inbounds %struct.prb_reserved_entry, ptr %9, i32 0, i32 1, !dbg !1091
  %10 = load i64, ptr %irqflags18, align 8, !dbg !1091
  call void @arch_local_irq_restore(i64 noundef %10) #12, !dbg !1091
  br label %do.cond19, !dbg !1091

do.cond19:                                        ; preds = %do.end17
  br label %do.end20, !dbg !1091

do.end20:                                         ; preds = %do.cond19
  br label %do.cond21, !dbg !1089

do.cond21:                                        ; preds = %do.end20
  br label %do.end22, !dbg !1089

do.end22:                                         ; preds = %do.cond21
  br label %fail65, !dbg !1094

if.end23:                                         ; preds = %do.end5
  %11 = load ptr, ptr %desc_ring, align 8, !dbg !1095
  %12 = load i64, ptr %id, align 8, !dbg !1096
  %call24 = call ptr @to_desc(ptr noundef %11, i64 noundef %12) #12, !dbg !1097
  store ptr %call24, ptr %d, align 8, !dbg !1098
  %13 = load ptr, ptr %desc_ring, align 8, !dbg !1099
  %14 = load i64, ptr %id, align 8, !dbg !1100
  %call25 = call ptr @to_info(ptr noundef %13, i64 noundef %14) #12, !dbg !1101
  store ptr %call25, ptr %info, align 8, !dbg !1102
  %15 = load ptr, ptr %info, align 8, !dbg !1103
  %seq26 = getelementptr inbounds %struct.printk_info, ptr %15, i32 0, i32 0, !dbg !1104
  %16 = load i64, ptr %seq26, align 8, !dbg !1104
  store i64 %16, ptr %seq, align 8, !dbg !1105
  %17 = load ptr, ptr %info, align 8, !dbg !1106
  call void @llvm.memset.p0.i64(ptr align 8 %17, i8 0, i64 88, i1 false), !dbg !1107
  %18 = load ptr, ptr %rb.addr, align 8, !dbg !1108
  %19 = load ptr, ptr %e.addr, align 8, !dbg !1109
  %rb27 = getelementptr inbounds %struct.prb_reserved_entry, ptr %19, i32 0, i32 0, !dbg !1110
  store ptr %18, ptr %rb27, align 8, !dbg !1111
  %20 = load i64, ptr %id, align 8, !dbg !1112
  %21 = load ptr, ptr %e.addr, align 8, !dbg !1113
  %id28 = getelementptr inbounds %struct.prb_reserved_entry, ptr %21, i32 0, i32 2, !dbg !1114
  store i64 %20, ptr %id28, align 8, !dbg !1115
  %22 = load i64, ptr %seq, align 8, !dbg !1116
  %cmp29 = icmp eq i64 %22, 0, !dbg !1118
  br i1 %cmp29, label %land.lhs.true, label %if.else, !dbg !1119

land.lhs.true:                                    ; preds = %if.end23
  %23 = load i64, ptr %id, align 8, !dbg !1120
  %24 = load ptr, ptr %desc_ring, align 8, !dbg !1120
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %24, i32 0, i32 0, !dbg !1120
  %25 = load i32, ptr %count_bits, align 8, !dbg !1120
  %shl = shl i32 1, %25, !dbg !1120
  %sub = sub i32 %shl, 1, !dbg !1120
  %conv31 = zext i32 %sub to i64, !dbg !1120
  %and = and i64 %23, %conv31, !dbg !1120
  %cmp32 = icmp ne i64 %and, 0, !dbg !1121
  br i1 %cmp32, label %if.then34, label %if.else, !dbg !1122

if.then34:                                        ; preds = %land.lhs.true
  %26 = load i64, ptr %id, align 8, !dbg !1123
  %27 = load ptr, ptr %desc_ring, align 8, !dbg !1123
  %count_bits35 = getelementptr inbounds %struct.prb_desc_ring, ptr %27, i32 0, i32 0, !dbg !1123
  %28 = load i32, ptr %count_bits35, align 8, !dbg !1123
  %shl36 = shl i32 1, %28, !dbg !1123
  %sub37 = sub i32 %shl36, 1, !dbg !1123
  %conv38 = zext i32 %sub37 to i64, !dbg !1123
  %and39 = and i64 %26, %conv38, !dbg !1123
  %29 = load ptr, ptr %info, align 8, !dbg !1124
  %seq40 = getelementptr inbounds %struct.printk_info, ptr %29, i32 0, i32 0, !dbg !1125
  store i64 %and39, ptr %seq40, align 8, !dbg !1126
  br label %if.end45, !dbg !1124

if.else:                                          ; preds = %land.lhs.true, %if.end23
  %30 = load i64, ptr %seq, align 8, !dbg !1127
  %31 = load ptr, ptr %desc_ring, align 8, !dbg !1128
  %count_bits41 = getelementptr inbounds %struct.prb_desc_ring, ptr %31, i32 0, i32 0, !dbg !1128
  %32 = load i32, ptr %count_bits41, align 8, !dbg !1128
  %shl42 = shl i32 1, %32, !dbg !1128
  %conv43 = zext i32 %shl42 to i64, !dbg !1128
  %add = add i64 %30, %conv43, !dbg !1129
  %33 = load ptr, ptr %info, align 8, !dbg !1130
  %seq44 = getelementptr inbounds %struct.printk_info, ptr %33, i32 0, i32 0, !dbg !1131
  store i64 %add, ptr %seq44, align 8, !dbg !1132
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then34
  %34 = load ptr, ptr %info, align 8, !dbg !1133
  %seq46 = getelementptr inbounds %struct.printk_info, ptr %34, i32 0, i32 0, !dbg !1135
  %35 = load i64, ptr %seq46, align 8, !dbg !1135
  %cmp47 = icmp ugt i64 %35, 0, !dbg !1136
  br i1 %cmp47, label %if.then49, label %if.end52, !dbg !1137

if.then49:                                        ; preds = %if.end45
  %36 = load ptr, ptr %desc_ring, align 8, !dbg !1138
  %37 = load i64, ptr %id, align 8, !dbg !1139
  %sub50 = sub i64 %37, 1, !dbg !1139
  %and51 = and i64 %sub50, 4611686018427387903, !dbg !1139
  call void @desc_make_final(ptr noundef %36, i64 noundef %and51) #12, !dbg !1140
  br label %if.end52, !dbg !1140

if.end52:                                         ; preds = %if.then49, %if.end45
  %38 = load ptr, ptr %rb.addr, align 8, !dbg !1141
  %39 = load ptr, ptr %r.addr, align 8, !dbg !1142
  %text_buf_size53 = getelementptr inbounds %struct.printk_record, ptr %39, i32 0, i32 2, !dbg !1143
  %40 = load i32, ptr %text_buf_size53, align 8, !dbg !1143
  %41 = load ptr, ptr %d, align 8, !dbg !1144
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %41, i32 0, i32 1, !dbg !1145
  %42 = load i64, ptr %id, align 8, !dbg !1146
  %call54 = call ptr @data_alloc(ptr noundef %38, i32 noundef %40, ptr noundef %text_blk_lpos, i64 noundef %42) #12, !dbg !1147
  %43 = load ptr, ptr %r.addr, align 8, !dbg !1148
  %text_buf = getelementptr inbounds %struct.printk_record, ptr %43, i32 0, i32 1, !dbg !1149
  store ptr %call54, ptr %text_buf, align 8, !dbg !1150
  %44 = load ptr, ptr %r.addr, align 8, !dbg !1151
  %text_buf_size55 = getelementptr inbounds %struct.printk_record, ptr %44, i32 0, i32 2, !dbg !1153
  %45 = load i32, ptr %text_buf_size55, align 8, !dbg !1153
  %tobool = icmp ne i32 %45, 0, !dbg !1151
  br i1 %tobool, label %land.lhs.true56, label %if.end60, !dbg !1154

land.lhs.true56:                                  ; preds = %if.end52
  %46 = load ptr, ptr %r.addr, align 8, !dbg !1155
  %text_buf57 = getelementptr inbounds %struct.printk_record, ptr %46, i32 0, i32 1, !dbg !1156
  %47 = load ptr, ptr %text_buf57, align 8, !dbg !1156
  %tobool58 = icmp ne ptr %47, null, !dbg !1155
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !1157

if.then59:                                        ; preds = %land.lhs.true56
  %48 = load ptr, ptr %e.addr, align 8, !dbg !1158
  call void @prb_commit(ptr noundef %48) #12, !dbg !1160
  br label %fail65, !dbg !1161

if.end60:                                         ; preds = %land.lhs.true56, %if.end52
  %49 = load ptr, ptr %info, align 8, !dbg !1162
  %50 = load ptr, ptr %r.addr, align 8, !dbg !1163
  %info61 = getelementptr inbounds %struct.printk_record, ptr %50, i32 0, i32 0, !dbg !1164
  store ptr %49, ptr %info61, align 8, !dbg !1165
  %51 = load ptr, ptr %rb.addr, align 8, !dbg !1166
  %text_data_ring62 = getelementptr inbounds %struct.printk_ringbuffer, ptr %51, i32 0, i32 1, !dbg !1167
  %52 = load ptr, ptr %d, align 8, !dbg !1168
  %text_blk_lpos63 = getelementptr inbounds %struct.prb_desc, ptr %52, i32 0, i32 1, !dbg !1169
  %call64 = call i32 @space_used(ptr noundef %text_data_ring62, ptr noundef %text_blk_lpos63) #12, !dbg !1170
  %53 = load ptr, ptr %e.addr, align 8, !dbg !1171
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %53, i32 0, i32 3, !dbg !1172
  store i32 %call64, ptr %text_space, align 8, !dbg !1173
  store i1 true, ptr %retval, align 1, !dbg !1174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1174

fail65:                                           ; preds = %if.then59, %do.end22, %if.then
  call void @llvm.dbg.label(metadata !1054), !dbg !1175
  %54 = load ptr, ptr %r.addr, align 8, !dbg !1176
  call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 24, i1 false), !dbg !1177
  store i1 false, ptr %retval, align 1, !dbg !1178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1178

cleanup:                                          ; preds = %fail65, %if.end60
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #11, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !1179
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1179
  %55 = load i1, ptr %retval, align 1, !dbg !1179
  ret i1 %55, !dbg !1179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @desc_reserve(ptr noundef %rb, ptr noundef %id_out) #0 align 16 !dbg !1180 {
entry:
  %retval = alloca i1, align 1
  %rb.addr = alloca ptr, align 8
  %id_out.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %prev_state_val = alloca i64, align 8
  %id_prev_wrap = alloca i64, align 8
  %desc = alloca ptr, align 8
  %head_id = alloca i64, align 8
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on59 = alloca i32, align 4
  %__flags70 = alloca i32, align 4
  %tmp83 = alloca i64, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1184, metadata !DIExpression()), !dbg !1206
  store ptr %id_out, ptr %id_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id_out.addr, metadata !1185, metadata !DIExpression()), !dbg !1207
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1186, metadata !DIExpression()), !dbg !1209
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1210
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !1211
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1209
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_state_val) #11, !dbg !1212
  call void @llvm.dbg.declare(metadata ptr %prev_state_val, metadata !1187, metadata !DIExpression()), !dbg !1213
  call void @llvm.lifetime.start.p0(i64 8, ptr %id_prev_wrap) #11, !dbg !1214
  call void @llvm.dbg.declare(metadata ptr %id_prev_wrap, metadata !1188, metadata !DIExpression()), !dbg !1215
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #11, !dbg !1216
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !1189, metadata !DIExpression()), !dbg !1217
  call void @llvm.lifetime.start.p0(i64 8, ptr %head_id) #11, !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %head_id, metadata !1190, metadata !DIExpression()), !dbg !1219
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !1220
  call void @llvm.dbg.declare(metadata ptr %id, metadata !1191, metadata !DIExpression()), !dbg !1221
  %1 = load ptr, ptr %desc_ring, align 8, !dbg !1222
  %head_id2 = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 3, !dbg !1223
  %call = call i64 @atomic_long_read(ptr noundef %head_id2) #12, !dbg !1224
  store i64 %call, ptr %head_id, align 8, !dbg !1225
  br label %do.body, !dbg !1226

do.body:                                          ; preds = %do.cond19, %entry
  %2 = load i64, ptr %head_id, align 8, !dbg !1227
  %add = add i64 %2, 1, !dbg !1227
  %and = and i64 %add, 4611686018427387903, !dbg !1227
  store i64 %and, ptr %id, align 8, !dbg !1229
  %3 = load i64, ptr %id, align 8, !dbg !1230
  %4 = load ptr, ptr %desc_ring, align 8, !dbg !1230
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %4, i32 0, i32 0, !dbg !1230
  %5 = load i32, ptr %count_bits, align 8, !dbg !1230
  %shl = shl i32 1, %5, !dbg !1230
  %conv = zext i32 %shl to i64, !dbg !1230
  %sub = sub i64 %3, %conv, !dbg !1230
  %and3 = and i64 %sub, 4611686018427387903, !dbg !1230
  store i64 %and3, ptr %id_prev_wrap, align 8, !dbg !1231
  br label %do.body4, !dbg !1232

do.body4:                                         ; preds = %do.body
  br label %do.body5, !dbg !1233

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !1235

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !1235

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !1233

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !1237

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !1239

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !1239

do.end9:                                          ; preds = %do.cond8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1237, !srcloc !1241
  br label %do.cond10, !dbg !1237

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !1237

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !1233

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !1233

do.end13:                                         ; preds = %do.cond12
  %6 = load i64, ptr %id_prev_wrap, align 8, !dbg !1242
  %7 = load ptr, ptr %desc_ring, align 8, !dbg !1244
  %tail_id = getelementptr inbounds %struct.prb_desc_ring, ptr %7, i32 0, i32 4, !dbg !1245
  %call14 = call i64 @atomic_long_read(ptr noundef %tail_id) #12, !dbg !1246
  %cmp = icmp eq i64 %6, %call14, !dbg !1247
  br i1 %cmp, label %if.then, label %if.end18, !dbg !1248

if.then:                                          ; preds = %do.end13
  %8 = load ptr, ptr %rb.addr, align 8, !dbg !1249
  %9 = load i64, ptr %id_prev_wrap, align 8, !dbg !1252
  %call16 = call zeroext i1 @desc_push_tail(ptr noundef %8, i64 noundef %9) #12, !dbg !1253
  br i1 %call16, label %if.end, label %if.then17, !dbg !1254

if.then17:                                        ; preds = %if.then
  store i1 false, ptr %retval, align 1, !dbg !1255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1255

if.end:                                           ; preds = %if.then
  br label %if.end18, !dbg !1256

if.end18:                                         ; preds = %if.end, %do.end13
  br label %do.cond19, !dbg !1257

do.cond19:                                        ; preds = %if.end18
  %10 = load ptr, ptr %desc_ring, align 8, !dbg !1258
  %head_id20 = getelementptr inbounds %struct.prb_desc_ring, ptr %10, i32 0, i32 3, !dbg !1259
  %11 = load i64, ptr %id, align 8, !dbg !1260
  %call21 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %head_id20, ptr noundef %head_id, i64 noundef %11) #12, !dbg !1261
  %lnot = xor i1 %call21, true, !dbg !1262
  br i1 %lnot, label %do.body, label %do.end22, !dbg !1257, !llvm.loop !1263

do.end22:                                         ; preds = %do.cond19
  %12 = load ptr, ptr %desc_ring, align 8, !dbg !1265
  %13 = load i64, ptr %id, align 8, !dbg !1266
  %call23 = call ptr @to_desc(ptr noundef %12, i64 noundef %13) #12, !dbg !1267
  store ptr %call23, ptr %desc, align 8, !dbg !1268
  %14 = load ptr, ptr %desc, align 8, !dbg !1269
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %14, i32 0, i32 0, !dbg !1270
  %call24 = call i64 @atomic_long_read(ptr noundef %state_var) #12, !dbg !1271
  store i64 %call24, ptr %prev_state_val, align 8, !dbg !1272
  %15 = load i64, ptr %prev_state_val, align 8, !dbg !1273
  %tobool = icmp ne i64 %15, 0, !dbg !1273
  br i1 %tobool, label %land.lhs.true, label %if.end55, !dbg !1274

land.lhs.true:                                    ; preds = %do.end22
  %16 = load i64, ptr %id_prev_wrap, align 8, !dbg !1275
  %17 = load i64, ptr %prev_state_val, align 8, !dbg !1276
  %call25 = call i32 @get_desc_state(i64 noundef %16, i64 noundef %17) #12, !dbg !1277
  %cmp26 = icmp ne i32 %call25, 3, !dbg !1278
  br i1 %cmp26, label %if.then28, label %if.end55, !dbg !1279

if.then28:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1192, metadata !DIExpression()), !dbg !1280
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1280
  %18 = load i32, ptr %__ret_warn_on, align 4, !dbg !1281
  %tobool29 = icmp ne i32 %18, 0, !dbg !1281
  %lnot30 = xor i1 %tobool29, true, !dbg !1281
  %lnot31 = xor i1 %lnot30, true, !dbg !1281
  %lnot.ext = zext i1 %lnot31 to i32, !dbg !1281
  %conv32 = sext i32 %lnot.ext to i64, !dbg !1281
  %expval = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !1281
  %tobool33 = icmp ne i64 %expval, 0, !dbg !1281
  br i1 %tobool33, label %if.then34, label %if.end47, !dbg !1280

if.then34:                                        ; preds = %if.then28
  br label %do.body35, !dbg !1281

do.body35:                                        ; preds = %if.then34
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1196, metadata !DIExpression()), !dbg !1282
  store i32 2307, ptr %__flags, align 4, !dbg !1282
  br label %do.body36, !dbg !1282

do.body36:                                        ; preds = %do.body35
  br label %do.cond37, !dbg !1283

do.cond37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !1283

do.end38:                                         ; preds = %do.cond37
  br label %do.body39, !dbg !1282

do.body39:                                        ; preds = %do.end38
  %19 = load i32, ptr %__flags, align 4, !dbg !1285
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 977, i32 %19, i64 12) #11, !dbg !1285, !srcloc !1287
  br label %do.cond40, !dbg !1285

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !1285

do.end41:                                         ; preds = %do.cond40
  br label %do.body42, !dbg !1282

do.body42:                                        ; preds = %do.end41
  br label %do.cond43, !dbg !1288

do.cond43:                                        ; preds = %do.body42
  br label %do.end44, !dbg !1288

do.end44:                                         ; preds = %do.cond43
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1281
  br label %do.cond45, !dbg !1282

do.cond45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !1282

do.end46:                                         ; preds = %do.cond45
  br label %if.end47, !dbg !1282

if.end47:                                         ; preds = %do.end46, %if.then28
  %20 = load i32, ptr %__ret_warn_on, align 4, !dbg !1280
  %tobool48 = icmp ne i32 %20, 0, !dbg !1280
  %lnot49 = xor i1 %tobool48, true, !dbg !1280
  %lnot51 = xor i1 %lnot49, true, !dbg !1280
  %lnot.ext52 = zext i1 %lnot51 to i32, !dbg !1280
  %conv53 = sext i32 %lnot.ext52 to i64, !dbg !1280
  %expval54 = call i64 @llvm.expect.i64(i64 %conv53, i64 0), !dbg !1280
  store i64 %expval54, ptr %tmp, align 8, !dbg !1281
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1290
  %21 = load i64, ptr %tmp, align 8, !dbg !1280
  store i1 false, ptr %retval, align 1, !dbg !1291
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1291

if.end55:                                         ; preds = %land.lhs.true, %do.end22
  %22 = load ptr, ptr %desc, align 8, !dbg !1292
  %state_var56 = getelementptr inbounds %struct.prb_desc, ptr %22, i32 0, i32 0, !dbg !1293
  %23 = load i64, ptr %id, align 8, !dbg !1294
  %or = or i64 0, %23, !dbg !1294
  %call57 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %state_var56, ptr noundef %prev_state_val, i64 noundef %or) #12, !dbg !1295
  br i1 %call57, label %if.end91, label %if.then58, !dbg !1296

if.then58:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on59) #11, !dbg !1297
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on59, metadata !1199, metadata !DIExpression()), !dbg !1297
  store i32 1, ptr %__ret_warn_on59, align 4, !dbg !1297
  %24 = load i32, ptr %__ret_warn_on59, align 4, !dbg !1298
  %tobool60 = icmp ne i32 %24, 0, !dbg !1298
  %lnot61 = xor i1 %tobool60, true, !dbg !1298
  %lnot63 = xor i1 %lnot61, true, !dbg !1298
  %lnot.ext64 = zext i1 %lnot63 to i32, !dbg !1298
  %conv65 = sext i32 %lnot.ext64 to i64, !dbg !1298
  %expval66 = call i64 @llvm.expect.i64(i64 %conv65, i64 0), !dbg !1298
  %tobool67 = icmp ne i64 %expval66, 0, !dbg !1298
  br i1 %tobool67, label %if.then68, label %if.end82, !dbg !1297

if.then68:                                        ; preds = %if.then58
  br label %do.body69, !dbg !1298

do.body69:                                        ; preds = %if.then68
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags70) #11, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %__flags70, metadata !1203, metadata !DIExpression()), !dbg !1299
  store i32 2307, ptr %__flags70, align 4, !dbg !1299
  br label %do.body71, !dbg !1299

do.body71:                                        ; preds = %do.body69
  br label %do.cond72, !dbg !1300

do.cond72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1300

do.end73:                                         ; preds = %do.cond72
  br label %do.body74, !dbg !1299

do.body74:                                        ; preds = %do.end73
  %25 = load i32, ptr %__flags70, align 4, !dbg !1302
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 991, i32 %25, i64 12) #11, !dbg !1302, !srcloc !1304
  br label %do.cond75, !dbg !1302

do.cond75:                                        ; preds = %do.body74
  br label %do.end76, !dbg !1302

do.end76:                                         ; preds = %do.cond75
  br label %do.body77, !dbg !1299

do.body77:                                        ; preds = %do.end76
  br label %do.cond78, !dbg !1305

do.cond78:                                        ; preds = %do.body77
  br label %do.end79, !dbg !1305

do.end79:                                         ; preds = %do.cond78
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags70) #11, !dbg !1298
  br label %do.cond80, !dbg !1299

do.cond80:                                        ; preds = %do.end79
  br label %do.end81, !dbg !1299

do.end81:                                         ; preds = %do.cond80
  br label %if.end82, !dbg !1299

if.end82:                                         ; preds = %do.end81, %if.then58
  %26 = load i32, ptr %__ret_warn_on59, align 4, !dbg !1297
  %tobool84 = icmp ne i32 %26, 0, !dbg !1297
  %lnot85 = xor i1 %tobool84, true, !dbg !1297
  %lnot87 = xor i1 %lnot85, true, !dbg !1297
  %lnot.ext88 = zext i1 %lnot87 to i32, !dbg !1297
  %conv89 = sext i32 %lnot.ext88 to i64, !dbg !1297
  %expval90 = call i64 @llvm.expect.i64(i64 %conv89, i64 0), !dbg !1297
  store i64 %expval90, ptr %tmp83, align 8, !dbg !1298
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on59) #11, !dbg !1307
  %27 = load i64, ptr %tmp83, align 8, !dbg !1297
  store i1 false, ptr %retval, align 1, !dbg !1308
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1308

if.end91:                                         ; preds = %if.end55
  %28 = load i64, ptr %id, align 8, !dbg !1309
  %29 = load ptr, ptr %id_out.addr, align 8, !dbg !1310
  store i64 %28, ptr %29, align 8, !dbg !1311
  store i1 true, ptr %retval, align 1, !dbg !1312
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1312

cleanup:                                          ; preds = %if.end91, %if.end82, %if.end47, %if.then17
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %head_id) #11, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #11, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %id_prev_wrap) #11, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_state_val) #11, !dbg !1313
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1313
  %30 = load i1, ptr %retval, align 1, !dbg !1313
  ret i1 %30, !dbg !1313
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_inc(ptr noundef %v) #3 align 16 !dbg !1314 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1320, metadata !DIExpression()), !dbg !1321
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1322
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !1323
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1324
  call void @raw_atomic_long_inc(ptr noundef %1) #12, !dbg !1325
  ret void, !dbg !1326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_desc(ptr noundef %desc_ring, i64 noundef %n) #0 align 16 !dbg !1327 {
entry:
  %desc_ring.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !1331, metadata !DIExpression()), !dbg !1333
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !1332, metadata !DIExpression()), !dbg !1334
  %0 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1335
  %descs = getelementptr inbounds %struct.prb_desc_ring, ptr %0, i32 0, i32 1, !dbg !1336
  %1 = load ptr, ptr %descs, align 8, !dbg !1336
  %2 = load i64, ptr %n.addr, align 8, !dbg !1337
  %3 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1337
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %3, i32 0, i32 0, !dbg !1337
  %4 = load i32, ptr %count_bits, align 8, !dbg !1337
  %shl = shl i32 1, %4, !dbg !1337
  %sub = sub i32 %shl, 1, !dbg !1337
  %conv = zext i32 %sub to i64, !dbg !1337
  %and = and i64 %2, %conv, !dbg !1337
  %arrayidx = getelementptr %struct.prb_desc, ptr %1, i64 %and, !dbg !1335
  ret ptr %arrayidx, !dbg !1338
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @desc_make_final(ptr noundef %desc_ring, i64 noundef %id) #0 align 16 !dbg !1339 {
entry:
  %desc_ring.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %prev_state_val = alloca i64, align 8
  %d = alloca ptr, align 8
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !1343, metadata !DIExpression()), !dbg !1347
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1344, metadata !DIExpression()), !dbg !1348
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_state_val) #11, !dbg !1349
  call void @llvm.dbg.declare(metadata ptr %prev_state_val, metadata !1345, metadata !DIExpression()), !dbg !1350
  %0 = load i64, ptr %id.addr, align 8, !dbg !1351
  %or = or i64 4611686018427387904, %0, !dbg !1351
  store i64 %or, ptr %prev_state_val, align 8, !dbg !1350
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !1352
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1346, metadata !DIExpression()), !dbg !1353
  %1 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1354
  %2 = load i64, ptr %id.addr, align 8, !dbg !1355
  %call = call ptr @to_desc(ptr noundef %1, i64 noundef %2) #12, !dbg !1356
  store ptr %call, ptr %d, align 8, !dbg !1353
  %3 = load ptr, ptr %d, align 8, !dbg !1357
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %3, i32 0, i32 0, !dbg !1358
  %4 = load i64, ptr %prev_state_val, align 8, !dbg !1359
  %5 = load i64, ptr %id.addr, align 8, !dbg !1360
  %or1 = or i64 -9223372036854775808, %5, !dbg !1360
  %call2 = call i64 @atomic_long_cmpxchg_relaxed(ptr noundef %state_var, i64 noundef %4, i64 noundef %or1) #12, !dbg !1361
  %6 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1362
  %last_finalized_id = getelementptr inbounds %struct.prb_desc_ring, ptr %6, i32 0, i32 5, !dbg !1363
  %7 = load i64, ptr %id.addr, align 8, !dbg !1364
  call void @atomic_long_set(ptr noundef %last_finalized_id, i64 noundef %7) #12, !dbg !1365
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !1366
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_state_val) #11, !dbg !1366
  ret void, !dbg !1366
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @_prb_commit(ptr noundef %e, i64 noundef %state_val) #0 align 16 !dbg !1367 {
entry:
  %e.addr = alloca ptr, align 8
  %state_val.addr = alloca i64, align 8
  %desc_ring = alloca ptr, align 8
  %d = alloca ptr, align 8
  %prev_state_val = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp29 = alloca i32, align 4
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1371, metadata !DIExpression()), !dbg !1388
  store i64 %state_val, ptr %state_val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_val.addr, metadata !1372, metadata !DIExpression()), !dbg !1389
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1373, metadata !DIExpression()), !dbg !1391
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1392
  %rb = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 0, !dbg !1393
  %1 = load ptr, ptr %rb, align 8, !dbg !1393
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 0, !dbg !1394
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1391
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #11, !dbg !1395
  call void @llvm.dbg.declare(metadata ptr %d, metadata !1374, metadata !DIExpression()), !dbg !1396
  %2 = load ptr, ptr %desc_ring, align 8, !dbg !1397
  %3 = load ptr, ptr %e.addr, align 8, !dbg !1398
  %id = getelementptr inbounds %struct.prb_reserved_entry, ptr %3, i32 0, i32 2, !dbg !1399
  %4 = load i64, ptr %id, align 8, !dbg !1399
  %call = call ptr @to_desc(ptr noundef %2, i64 noundef %4) #12, !dbg !1400
  store ptr %call, ptr %d, align 8, !dbg !1396
  call void @llvm.lifetime.start.p0(i64 8, ptr %prev_state_val) #11, !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %prev_state_val, metadata !1375, metadata !DIExpression()), !dbg !1402
  %5 = load ptr, ptr %e.addr, align 8, !dbg !1403
  %id2 = getelementptr inbounds %struct.prb_reserved_entry, ptr %5, i32 0, i32 2, !dbg !1403
  %6 = load i64, ptr %id2, align 8, !dbg !1403
  %or = or i64 0, %6, !dbg !1403
  store i64 %or, ptr %prev_state_val, align 8, !dbg !1402
  %7 = load ptr, ptr %d, align 8, !dbg !1404
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %7, i32 0, i32 0, !dbg !1405
  %8 = load i64, ptr %state_val.addr, align 8, !dbg !1406
  %shl = shl i64 %8, 62, !dbg !1406
  %9 = load ptr, ptr %e.addr, align 8, !dbg !1406
  %id3 = getelementptr inbounds %struct.prb_reserved_entry, ptr %9, i32 0, i32 2, !dbg !1406
  %10 = load i64, ptr %id3, align 8, !dbg !1406
  %or4 = or i64 %shl, %10, !dbg !1406
  %call5 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %state_var, ptr noundef %prev_state_val, i64 noundef %or4) #12, !dbg !1407
  br i1 %call5, label %if.end25, label %if.then, !dbg !1408

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1409
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1376, metadata !DIExpression()), !dbg !1409
  store i32 1, ptr %__ret_warn_on, align 4, !dbg !1409
  %11 = load i32, ptr %__ret_warn_on, align 4, !dbg !1410
  %tobool = icmp ne i32 %11, 0, !dbg !1410
  %lnot = xor i1 %tobool, true, !dbg !1410
  %lnot6 = xor i1 %lnot, true, !dbg !1410
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !1410
  %conv = sext i32 %lnot.ext to i64, !dbg !1410
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1410
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1410
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !1409

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !1410

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !1411
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1380, metadata !DIExpression()), !dbg !1411
  store i32 2307, ptr %__flags, align 4, !dbg !1411
  br label %do.body9, !dbg !1411

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1412

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1412

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1411

do.body10:                                        ; preds = %do.end
  %12 = load i32, ptr %__flags, align 4, !dbg !1414
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 1609, i32 %12, i64 12) #11, !dbg !1414, !srcloc !1416
  br label %do.cond11, !dbg !1414

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1414

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1411

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !1417

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1417

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !1410
  br label %do.cond16, !dbg !1411

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1411

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1411

if.end:                                           ; preds = %do.end17, %if.then
  %13 = load i32, ptr %__ret_warn_on, align 4, !dbg !1409
  %tobool18 = icmp ne i32 %13, 0, !dbg !1409
  %lnot19 = xor i1 %tobool18, true, !dbg !1409
  %lnot21 = xor i1 %lnot19, true, !dbg !1409
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1409
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1409
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1409
  store i64 %expval24, ptr %tmp, align 8, !dbg !1410
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !1419
  %14 = load i64, ptr %tmp, align 8, !dbg !1409
  br label %if.end25, !dbg !1420

if.end25:                                         ; preds = %if.end, %entry
  br label %do.body26, !dbg !1421

do.body26:                                        ; preds = %if.end25
  br label %do.body27, !dbg !1422

do.body27:                                        ; preds = %do.body26
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #11, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !1383, metadata !DIExpression()), !dbg !1423
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #11, !dbg !1423
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !1387, metadata !DIExpression()), !dbg !1423
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !1423
  %conv28 = zext i1 %cmp to i32, !dbg !1423
  store i32 1, ptr %tmp29, align 4, !dbg !1423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #11, !dbg !1424
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #11, !dbg !1424
  %15 = load i32, ptr %tmp29, align 4, !dbg !1423
  br label %do.body30, !dbg !1424

do.body30:                                        ; preds = %do.body27
  br label %do.cond31, !dbg !1425

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !1425

do.end32:                                         ; preds = %do.cond31
  %16 = load ptr, ptr %e.addr, align 8, !dbg !1424
  %irqflags = getelementptr inbounds %struct.prb_reserved_entry, ptr %16, i32 0, i32 1, !dbg !1424
  %17 = load i64, ptr %irqflags, align 8, !dbg !1424
  call void @arch_local_irq_restore(i64 noundef %17) #12, !dbg !1424
  br label %do.cond33, !dbg !1424

do.cond33:                                        ; preds = %do.end32
  br label %do.end34, !dbg !1424

do.end34:                                         ; preds = %do.cond33
  br label %do.cond35, !dbg !1422

do.cond35:                                        ; preds = %do.end34
  br label %do.end36, !dbg !1422

do.end36:                                         ; preds = %do.cond35
  call void @llvm.lifetime.end.p0(i64 8, ptr %prev_state_val) #11, !dbg !1427
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #11, !dbg !1427
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1427
  ret void, !dbg !1427
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_read(ptr noundef %v) #3 align 16 !dbg !1428 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1435, metadata !DIExpression()), !dbg !1436
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1437
  call void @instrument_atomic_read(ptr noundef %0, i64 noundef 8) #12, !dbg !1438
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1439
  %call = call i64 @raw_atomic_long_read(ptr noundef %1) #12, !dbg !1440
  ret i64 %call, !dbg !1441
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @prb_final_commit(ptr noundef %e) #0 align 16 !dbg !1442 {
entry:
  %e.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1444, metadata !DIExpression()), !dbg !1446
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1447
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1445, metadata !DIExpression()), !dbg !1448
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1449
  %rb = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 0, !dbg !1450
  %1 = load ptr, ptr %rb, align 8, !dbg !1450
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 0, !dbg !1451
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1448
  %2 = load ptr, ptr %e.addr, align 8, !dbg !1452
  call void @_prb_commit(ptr noundef %2, i64 noundef 2) #12, !dbg !1453
  %3 = load ptr, ptr %desc_ring, align 8, !dbg !1454
  %last_finalized_id = getelementptr inbounds %struct.prb_desc_ring, ptr %3, i32 0, i32 5, !dbg !1455
  %4 = load ptr, ptr %e.addr, align 8, !dbg !1456
  %id = getelementptr inbounds %struct.prb_reserved_entry, ptr %4, i32 0, i32 2, !dbg !1457
  %5 = load i64, ptr %id, align 8, !dbg !1457
  call void @atomic_long_set(ptr noundef %last_finalized_id, i64 noundef %5) #12, !dbg !1458
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1459
  ret void, !dbg !1459
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @atomic_long_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !1460 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1464, metadata !DIExpression()), !dbg !1466
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !1465, metadata !DIExpression()), !dbg !1467
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1468
  call void @instrument_atomic_write(ptr noundef %0, i64 noundef 8) #12, !dbg !1469
  %1 = load ptr, ptr %v.addr, align 8, !dbg !1470
  %2 = load i64, ptr %i.addr, align 8, !dbg !1471
  call void @raw_atomic_long_set(ptr noundef %1, i64 noundef %2) #12, !dbg !1472
  ret void, !dbg !1473
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @prb_read_valid(ptr noundef %rb, i64 noundef %seq, ptr noundef %r) #0 align 16 !dbg !1474 {
entry:
  %rb.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1478, metadata !DIExpression()), !dbg !1481
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !1479, metadata !DIExpression()), !dbg !1482
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1480, metadata !DIExpression()), !dbg !1483
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1484
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1485
  %call = call zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef %seq.addr, ptr noundef %1, ptr noundef null) #12, !dbg !1486
  ret i1 %call, !dbg !1487
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_prb_read_valid(ptr noundef %rb, ptr noundef %seq, ptr noundef %r, ptr noundef %line_count) #0 align 16 !dbg !1488 {
entry:
  %retval = alloca i1, align 1
  %rb.addr = alloca ptr, align 8
  %seq.addr = alloca ptr, align 8
  %r.addr = alloca ptr, align 8
  %line_count.addr = alloca ptr, align 8
  %tail_seq = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1493, metadata !DIExpression()), !dbg !1499
  store ptr %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !1494, metadata !DIExpression()), !dbg !1500
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1495, metadata !DIExpression()), !dbg !1501
  store ptr %line_count, ptr %line_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line_count.addr, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail_seq) #11, !dbg !1503
  call void @llvm.dbg.declare(metadata ptr %tail_seq, metadata !1497, metadata !DIExpression()), !dbg !1504
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1498, metadata !DIExpression()), !dbg !1506
  br label %while.cond, !dbg !1507

while.cond:                                       ; preds = %if.end5, %entry
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1508
  %1 = load ptr, ptr %seq.addr, align 8, !dbg !1509
  %2 = load i64, ptr %1, align 8, !dbg !1510
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1511
  %4 = load ptr, ptr %line_count.addr, align 8, !dbg !1512
  %call = call i32 @prb_read(ptr noundef %0, i64 noundef %2, ptr noundef %3, ptr noundef %4) #12, !dbg !1513
  store i32 %call, ptr %err, align 4, !dbg !1514
  %tobool = icmp ne i32 %call, 0, !dbg !1507
  br i1 %tobool, label %while.body, label %while.end, !dbg !1507

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %rb.addr, align 8, !dbg !1515
  %call1 = call i64 @prb_first_seq(ptr noundef %5) #12, !dbg !1517
  store i64 %call1, ptr %tail_seq, align 8, !dbg !1518
  %6 = load ptr, ptr %seq.addr, align 8, !dbg !1519
  %7 = load i64, ptr %6, align 8, !dbg !1521
  %8 = load i64, ptr %tail_seq, align 8, !dbg !1522
  %cmp = icmp ult i64 %7, %8, !dbg !1523
  br i1 %cmp, label %if.then, label %if.else, !dbg !1524

if.then:                                          ; preds = %while.body
  %9 = load i64, ptr %tail_seq, align 8, !dbg !1525
  %10 = load ptr, ptr %seq.addr, align 8, !dbg !1527
  store i64 %9, ptr %10, align 8, !dbg !1528
  br label %if.end5, !dbg !1529

if.else:                                          ; preds = %while.body
  %11 = load i32, ptr %err, align 4, !dbg !1530
  %cmp2 = icmp eq i32 %11, -2, !dbg !1532
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !1533

if.then3:                                         ; preds = %if.else
  %12 = load ptr, ptr %seq.addr, align 8, !dbg !1534
  %13 = load i64, ptr %12, align 8, !dbg !1536
  %inc = add i64 %13, 1, !dbg !1536
  store i64 %inc, ptr %12, align 8, !dbg !1536
  br label %if.end, !dbg !1537

if.else4:                                         ; preds = %if.else
  store i1 false, ptr %retval, align 1, !dbg !1538
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1538

if.end:                                           ; preds = %if.then3
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  br label %while.cond, !dbg !1507, !llvm.loop !1540

while.end:                                        ; preds = %while.cond
  store i1 true, ptr %retval, align 1, !dbg !1542
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1542

cleanup:                                          ; preds = %while.end, %if.else4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !1543
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail_seq) #11, !dbg !1543
  %14 = load i1, ptr %retval, align 1, !dbg !1543
  ret i1 %14, !dbg !1543
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @prb_read_valid_info(ptr noundef %rb, i64 noundef %seq, ptr noundef %info, ptr noundef %line_count) #0 align 16 !dbg !1544 {
entry:
  %rb.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %info.addr = alloca ptr, align 8
  %line_count.addr = alloca ptr, align 8
  %r = alloca %struct.printk_record, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1548, metadata !DIExpression()), !dbg !1553
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !1549, metadata !DIExpression()), !dbg !1554
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1550, metadata !DIExpression()), !dbg !1555
  store ptr %line_count, ptr %line_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line_count.addr, metadata !1551, metadata !DIExpression()), !dbg !1556
  call void @llvm.lifetime.start.p0(i64 24, ptr %r) #11, !dbg !1557
  call void @llvm.dbg.declare(metadata ptr %r, metadata !1552, metadata !DIExpression()), !dbg !1558
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1559
  call void @prb_rec_init_rd(ptr noundef %r, ptr noundef %0, ptr noundef null, i32 noundef 0) #12, !dbg !1560
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !1561
  %2 = load ptr, ptr %line_count.addr, align 8, !dbg !1562
  %call = call zeroext i1 @_prb_read_valid(ptr noundef %1, ptr noundef %seq.addr, ptr noundef %r, ptr noundef %2) #12, !dbg !1563
  call void @llvm.lifetime.end.p0(i64 24, ptr %r) #11, !dbg !1564
  ret i1 %call, !dbg !1565
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @prb_rec_init_rd(ptr noundef %r, ptr noundef %info, ptr noundef %text_buf, i32 noundef %text_buf_size) #7 align 16 !dbg !1566 {
entry:
  %r.addr = alloca ptr, align 8
  %info.addr = alloca ptr, align 8
  %text_buf.addr = alloca ptr, align 8
  %text_buf_size.addr = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !1570, metadata !DIExpression()), !dbg !1574
  store ptr %info, ptr %info.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %info.addr, metadata !1571, metadata !DIExpression()), !dbg !1575
  store ptr %text_buf, ptr %text_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %text_buf.addr, metadata !1572, metadata !DIExpression()), !dbg !1576
  store i32 %text_buf_size, ptr %text_buf_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %text_buf_size.addr, metadata !1573, metadata !DIExpression()), !dbg !1577
  %0 = load ptr, ptr %info.addr, align 8, !dbg !1578
  %1 = load ptr, ptr %r.addr, align 8, !dbg !1579
  %info1 = getelementptr inbounds %struct.printk_record, ptr %1, i32 0, i32 0, !dbg !1580
  store ptr %0, ptr %info1, align 8, !dbg !1581
  %2 = load ptr, ptr %text_buf.addr, align 8, !dbg !1582
  %3 = load ptr, ptr %r.addr, align 8, !dbg !1583
  %text_buf2 = getelementptr inbounds %struct.printk_record, ptr %3, i32 0, i32 1, !dbg !1584
  store ptr %2, ptr %text_buf2, align 8, !dbg !1585
  %4 = load i32, ptr %text_buf_size.addr, align 4, !dbg !1586
  %5 = load ptr, ptr %r.addr, align 8, !dbg !1587
  %text_buf_size3 = getelementptr inbounds %struct.printk_record, ptr %5, i32 0, i32 2, !dbg !1588
  store i32 %4, ptr %text_buf_size3, align 8, !dbg !1589
  ret void, !dbg !1590
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @prb_first_valid_seq(ptr noundef %rb) #0 align 16 !dbg !1591 {
entry:
  %retval = alloca i64, align 8
  %rb.addr = alloca ptr, align 8
  %seq = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1595, metadata !DIExpression()), !dbg !1597
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #11, !dbg !1598
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1596, metadata !DIExpression()), !dbg !1599
  store i64 0, ptr %seq, align 8, !dbg !1599
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1600
  %call = call zeroext i1 @_prb_read_valid(ptr noundef %0, ptr noundef %seq, ptr noundef null, ptr noundef null) #12, !dbg !1602
  br i1 %call, label %if.end, label %if.then, !dbg !1603

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !1604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1604

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %seq, align 8, !dbg !1605
  store i64 %1, ptr %retval, align 8, !dbg !1606
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1606

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #11, !dbg !1607
  %2 = load i64, ptr %retval, align 8, !dbg !1607
  ret i64 %2, !dbg !1607
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @prb_next_seq(ptr noundef %rb) #0 align 16 !dbg !1608 {
entry:
  %rb.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %id = alloca i64, align 8
  %seq = alloca i64, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1610, metadata !DIExpression()), !dbg !1615
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !1616
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !1611, metadata !DIExpression()), !dbg !1617
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !1618
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !1619
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !1617
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !1612, metadata !DIExpression()), !dbg !1621
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !1622
  call void @llvm.dbg.declare(metadata ptr %id, metadata !1613, metadata !DIExpression()), !dbg !1623
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #11, !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1614, metadata !DIExpression()), !dbg !1625
  %1 = load ptr, ptr %desc_ring, align 8, !dbg !1626
  %last_finalized_id = getelementptr inbounds %struct.prb_desc_ring, ptr %1, i32 0, i32 5, !dbg !1627
  %call = call i64 @atomic_long_read(ptr noundef %last_finalized_id) #12, !dbg !1628
  store i64 %call, ptr %id, align 8, !dbg !1629
  %2 = load ptr, ptr %desc_ring, align 8, !dbg !1630
  %3 = load i64, ptr %id, align 8, !dbg !1631
  %call2 = call i32 @desc_read(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %seq, ptr noundef null) #12, !dbg !1632
  store i32 %call2, ptr %d_state, align 4, !dbg !1633
  %4 = load i32, ptr %d_state, align 4, !dbg !1634
  %cmp = icmp eq i32 %4, 2, !dbg !1636
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1637

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %d_state, align 4, !dbg !1638
  %cmp3 = icmp eq i32 %5, 3, !dbg !1639
  br i1 %cmp3, label %if.then, label %if.else, !dbg !1640

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load i64, ptr %seq, align 8, !dbg !1641
  %cmp4 = icmp ne i64 %6, 0, !dbg !1644
  br i1 %cmp4, label %if.then5, label %if.end, !dbg !1645

if.then5:                                         ; preds = %if.then
  %7 = load i64, ptr %seq, align 8, !dbg !1646
  %inc = add i64 %7, 1, !dbg !1646
  store i64 %inc, ptr %seq, align 8, !dbg !1646
  br label %if.end, !dbg !1647

if.end:                                           ; preds = %if.then5, %if.then
  br label %if.end6, !dbg !1648

if.else:                                          ; preds = %lor.lhs.false
  store i64 0, ptr %seq, align 8, !dbg !1649
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  br label %while.cond, !dbg !1651

while.cond:                                       ; preds = %while.body, %if.end6
  %8 = load ptr, ptr %rb.addr, align 8, !dbg !1652
  %call7 = call zeroext i1 @_prb_read_valid(ptr noundef %8, ptr noundef %seq, ptr noundef null, ptr noundef null) #12, !dbg !1653
  br i1 %call7, label %while.body, label %while.end, !dbg !1651

while.body:                                       ; preds = %while.cond
  %9 = load i64, ptr %seq, align 8, !dbg !1654
  %inc8 = add i64 %9, 1, !dbg !1654
  store i64 %inc8, ptr %seq, align 8, !dbg !1654
  br label %while.cond, !dbg !1651, !llvm.loop !1655

while.end:                                        ; preds = %while.cond
  %10 = load i64, ptr %seq, align 8, !dbg !1656
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #11, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !1657
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !1657
  ret i64 %10, !dbg !1658
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @desc_read(ptr noundef %desc_ring, i64 noundef %id, ptr noundef %desc_out, ptr noundef %seq_out, ptr noundef %caller_id_out) #0 align 16 !dbg !1659 {
entry:
  %desc_ring.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %desc_out.addr = alloca ptr, align 8
  %seq_out.addr = alloca ptr, align 8
  %caller_id_out.addr = alloca ptr, align 8
  %info = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %state_var = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %state_val = alloca i64, align 8
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !1664, metadata !DIExpression()), !dbg !1675
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1665, metadata !DIExpression()), !dbg !1676
  store ptr %desc_out, ptr %desc_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_out.addr, metadata !1666, metadata !DIExpression()), !dbg !1677
  store ptr %seq_out, ptr %seq_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq_out.addr, metadata !1667, metadata !DIExpression()), !dbg !1678
  store ptr %caller_id_out, ptr %caller_id_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller_id_out.addr, metadata !1668, metadata !DIExpression()), !dbg !1679
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %info, metadata !1669, metadata !DIExpression()), !dbg !1681
  %0 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1682
  %1 = load i64, ptr %id.addr, align 8, !dbg !1683
  %call = call ptr @to_info(ptr noundef %0, i64 noundef %1) #12, !dbg !1684
  store ptr %call, ptr %info, align 8, !dbg !1681
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #11, !dbg !1685
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !1670, metadata !DIExpression()), !dbg !1686
  %2 = load ptr, ptr %desc_ring.addr, align 8, !dbg !1687
  %3 = load i64, ptr %id.addr, align 8, !dbg !1688
  %call1 = call ptr @to_desc(ptr noundef %2, i64 noundef %3) #12, !dbg !1689
  store ptr %call1, ptr %desc, align 8, !dbg !1686
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_var) #11, !dbg !1690
  call void @llvm.dbg.declare(metadata ptr %state_var, metadata !1671, metadata !DIExpression()), !dbg !1691
  %4 = load ptr, ptr %desc, align 8, !dbg !1692
  %state_var2 = getelementptr inbounds %struct.prb_desc, ptr %4, i32 0, i32 0, !dbg !1693
  store ptr %state_var2, ptr %state_var, align 8, !dbg !1691
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !1694
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !1672, metadata !DIExpression()), !dbg !1695
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_val) #11, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %state_val, metadata !1673, metadata !DIExpression()), !dbg !1697
  %5 = load ptr, ptr %state_var, align 8, !dbg !1698
  %call3 = call i64 @atomic_long_read(ptr noundef %5) #12, !dbg !1699
  store i64 %call3, ptr %state_val, align 8, !dbg !1700
  %6 = load i64, ptr %id.addr, align 8, !dbg !1701
  %7 = load i64, ptr %state_val, align 8, !dbg !1702
  %call4 = call i32 @get_desc_state(i64 noundef %6, i64 noundef %7) #12, !dbg !1703
  store i32 %call4, ptr %d_state, align 4, !dbg !1704
  %8 = load i32, ptr %d_state, align 4, !dbg !1705
  %cmp = icmp eq i32 %8, -1, !dbg !1707
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1708

lor.lhs.false:                                    ; preds = %entry
  %9 = load i32, ptr %d_state, align 4, !dbg !1709
  %cmp5 = icmp eq i32 %9, 0, !dbg !1710
  br i1 %cmp5, label %if.then, label %if.end, !dbg !1711

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %out, !dbg !1712

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !1714

do.body:                                          ; preds = %if.end
  br label %do.body6, !dbg !1715

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !1717

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !1717

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !1715

do.body7:                                         ; preds = %do.end
  br label %do.body8, !dbg !1719

do.body8:                                         ; preds = %do.body7
  br label %do.cond9, !dbg !1721

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !1721

do.end10:                                         ; preds = %do.cond9
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1719, !srcloc !1723
  br label %do.cond11, !dbg !1719

do.cond11:                                        ; preds = %do.end10
  br label %do.end12, !dbg !1719

do.end12:                                         ; preds = %do.cond11
  br label %do.cond13, !dbg !1715

do.cond13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !1715

do.end14:                                         ; preds = %do.cond13
  %10 = load ptr, ptr %desc_out.addr, align 8, !dbg !1724
  %tobool = icmp ne ptr %10, null, !dbg !1724
  br i1 %tobool, label %if.then15, label %if.end17, !dbg !1726

if.then15:                                        ; preds = %do.end14
  %11 = load ptr, ptr %desc_out.addr, align 8, !dbg !1727
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %11, i32 0, i32 1, !dbg !1729
  %12 = load ptr, ptr %desc, align 8, !dbg !1730
  %text_blk_lpos16 = getelementptr inbounds %struct.prb_desc, ptr %12, i32 0, i32 1, !dbg !1731
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %text_blk_lpos, ptr align 8 %text_blk_lpos16, i64 16, i1 false), !dbg !1732
  br label %if.end17, !dbg !1733

if.end17:                                         ; preds = %if.then15, %do.end14
  %13 = load ptr, ptr %seq_out.addr, align 8, !dbg !1734
  %tobool18 = icmp ne ptr %13, null, !dbg !1734
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !1736

if.then19:                                        ; preds = %if.end17
  %14 = load ptr, ptr %info, align 8, !dbg !1737
  %seq = getelementptr inbounds %struct.printk_info, ptr %14, i32 0, i32 0, !dbg !1738
  %15 = load i64, ptr %seq, align 8, !dbg !1738
  %16 = load ptr, ptr %seq_out.addr, align 8, !dbg !1739
  store i64 %15, ptr %16, align 8, !dbg !1740
  br label %if.end20, !dbg !1741

if.end20:                                         ; preds = %if.then19, %if.end17
  %17 = load ptr, ptr %caller_id_out.addr, align 8, !dbg !1742
  %tobool21 = icmp ne ptr %17, null, !dbg !1742
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !1744

if.then22:                                        ; preds = %if.end20
  %18 = load ptr, ptr %info, align 8, !dbg !1745
  %caller_id = getelementptr inbounds %struct.printk_info, ptr %18, i32 0, i32 5, !dbg !1746
  %19 = load i32, ptr %caller_id, align 4, !dbg !1746
  %20 = load ptr, ptr %caller_id_out.addr, align 8, !dbg !1747
  store i32 %19, ptr %20, align 4, !dbg !1748
  br label %if.end23, !dbg !1749

if.end23:                                         ; preds = %if.then22, %if.end20
  br label %do.body24, !dbg !1750

do.body24:                                        ; preds = %if.end23
  br label %do.body25, !dbg !1751

do.body25:                                        ; preds = %do.body24
  br label %do.cond26, !dbg !1753

do.cond26:                                        ; preds = %do.body25
  br label %do.end27, !dbg !1753

do.end27:                                         ; preds = %do.cond26
  br label %do.body28, !dbg !1751

do.body28:                                        ; preds = %do.end27
  br label %do.body29, !dbg !1755

do.body29:                                        ; preds = %do.body28
  br label %do.cond30, !dbg !1757

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !1757

do.end31:                                         ; preds = %do.cond30
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1755, !srcloc !1759
  br label %do.cond32, !dbg !1755

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !1755

do.end33:                                         ; preds = %do.cond32
  br label %do.cond34, !dbg !1751

do.cond34:                                        ; preds = %do.end33
  br label %do.end35, !dbg !1751

do.end35:                                         ; preds = %do.cond34
  %21 = load ptr, ptr %state_var, align 8, !dbg !1760
  %call36 = call i64 @atomic_long_read(ptr noundef %21) #12, !dbg !1761
  store i64 %call36, ptr %state_val, align 8, !dbg !1762
  %22 = load i64, ptr %id.addr, align 8, !dbg !1763
  %23 = load i64, ptr %state_val, align 8, !dbg !1764
  %call37 = call i32 @get_desc_state(i64 noundef %22, i64 noundef %23) #12, !dbg !1765
  store i32 %call37, ptr %d_state, align 4, !dbg !1766
  br label %out, !dbg !1767

out:                                              ; preds = %do.end35, %if.then
  call void @llvm.dbg.label(metadata !1674), !dbg !1768
  %24 = load ptr, ptr %desc_out.addr, align 8, !dbg !1769
  %tobool38 = icmp ne ptr %24, null, !dbg !1769
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !1771

if.then39:                                        ; preds = %out
  %25 = load ptr, ptr %desc_out.addr, align 8, !dbg !1772
  %state_var40 = getelementptr inbounds %struct.prb_desc, ptr %25, i32 0, i32 0, !dbg !1773
  %26 = load i64, ptr %state_val, align 8, !dbg !1774
  call void @atomic_long_set(ptr noundef %state_var40, i64 noundef %26) #12, !dbg !1775
  br label %if.end41, !dbg !1775

if.end41:                                         ; preds = %if.then39, %out
  %27 = load i32, ptr %d_state, align 4, !dbg !1776
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_val) #11, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_var) #11, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #11, !dbg !1777
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !1777
  ret i32 %27, !dbg !1778
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @prb_init(ptr noundef %rb, ptr noundef %text_buf, i32 noundef %textbits, ptr noundef %descs, i32 noundef %descbits, ptr noundef %infos) #0 align 16 !dbg !1779 {
entry:
  %rb.addr = alloca ptr, align 8
  %text_buf.addr = alloca ptr, align 8
  %textbits.addr = alloca i32, align 4
  %descs.addr = alloca ptr, align 8
  %descbits.addr = alloca i32, align 4
  %infos.addr = alloca ptr, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !1783, metadata !DIExpression()), !dbg !1789
  store ptr %text_buf, ptr %text_buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %text_buf.addr, metadata !1784, metadata !DIExpression()), !dbg !1790
  store i32 %textbits, ptr %textbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %textbits.addr, metadata !1785, metadata !DIExpression()), !dbg !1791
  store ptr %descs, ptr %descs.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %descs.addr, metadata !1786, metadata !DIExpression()), !dbg !1792
  store i32 %descbits, ptr %descbits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %descbits.addr, metadata !1787, metadata !DIExpression()), !dbg !1793
  store ptr %infos, ptr %infos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %infos.addr, metadata !1788, metadata !DIExpression()), !dbg !1794
  %0 = load ptr, ptr %descs.addr, align 8, !dbg !1795
  %1 = load i32, ptr %descbits.addr, align 4, !dbg !1796
  %shl = shl i32 1, %1, !dbg !1796
  %conv = zext i32 %shl to i64, !dbg !1796
  %mul = mul i64 %conv, 24, !dbg !1797
  call void @llvm.memset.p0.i64(ptr align 8 %0, i8 0, i64 %mul, i1 false), !dbg !1798
  %2 = load ptr, ptr %infos.addr, align 8, !dbg !1799
  %3 = load i32, ptr %descbits.addr, align 4, !dbg !1800
  %shl1 = shl i32 1, %3, !dbg !1800
  %conv2 = zext i32 %shl1 to i64, !dbg !1800
  %mul3 = mul i64 %conv2, 88, !dbg !1801
  call void @llvm.memset.p0.i64(ptr align 8 %2, i8 0, i64 %mul3, i1 false), !dbg !1802
  %4 = load i32, ptr %descbits.addr, align 4, !dbg !1803
  %5 = load ptr, ptr %rb.addr, align 8, !dbg !1804
  %desc_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %5, i32 0, i32 0, !dbg !1805
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring, i32 0, i32 0, !dbg !1806
  store i32 %4, ptr %count_bits, align 8, !dbg !1807
  %6 = load ptr, ptr %descs.addr, align 8, !dbg !1808
  %7 = load ptr, ptr %rb.addr, align 8, !dbg !1809
  %desc_ring4 = getelementptr inbounds %struct.printk_ringbuffer, ptr %7, i32 0, i32 0, !dbg !1810
  %descs5 = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring4, i32 0, i32 1, !dbg !1811
  store ptr %6, ptr %descs5, align 8, !dbg !1812
  %8 = load ptr, ptr %infos.addr, align 8, !dbg !1813
  %9 = load ptr, ptr %rb.addr, align 8, !dbg !1814
  %desc_ring6 = getelementptr inbounds %struct.printk_ringbuffer, ptr %9, i32 0, i32 0, !dbg !1815
  %infos7 = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring6, i32 0, i32 2, !dbg !1816
  store ptr %8, ptr %infos7, align 8, !dbg !1817
  %10 = load ptr, ptr %rb.addr, align 8, !dbg !1818
  %desc_ring8 = getelementptr inbounds %struct.printk_ringbuffer, ptr %10, i32 0, i32 0, !dbg !1819
  %head_id = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring8, i32 0, i32 3, !dbg !1820
  %11 = load i32, ptr %descbits.addr, align 4, !dbg !1821
  %shl9 = shl i32 1, %11, !dbg !1821
  %add = add i32 %shl9, 1, !dbg !1821
  %sub = sub i32 0, %add, !dbg !1821
  %conv10 = zext i32 %sub to i64, !dbg !1821
  %and = and i64 %conv10, 4611686018427387903, !dbg !1821
  call void @atomic_long_set(ptr noundef %head_id, i64 noundef %and) #12, !dbg !1822
  %12 = load ptr, ptr %rb.addr, align 8, !dbg !1823
  %desc_ring11 = getelementptr inbounds %struct.printk_ringbuffer, ptr %12, i32 0, i32 0, !dbg !1824
  %tail_id = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring11, i32 0, i32 4, !dbg !1825
  %13 = load i32, ptr %descbits.addr, align 4, !dbg !1826
  %shl12 = shl i32 1, %13, !dbg !1826
  %add13 = add i32 %shl12, 1, !dbg !1826
  %sub14 = sub i32 0, %add13, !dbg !1826
  %conv15 = zext i32 %sub14 to i64, !dbg !1826
  %and16 = and i64 %conv15, 4611686018427387903, !dbg !1826
  call void @atomic_long_set(ptr noundef %tail_id, i64 noundef %and16) #12, !dbg !1827
  %14 = load ptr, ptr %rb.addr, align 8, !dbg !1828
  %desc_ring17 = getelementptr inbounds %struct.printk_ringbuffer, ptr %14, i32 0, i32 0, !dbg !1829
  %last_finalized_id = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring17, i32 0, i32 5, !dbg !1830
  %15 = load i32, ptr %descbits.addr, align 4, !dbg !1831
  %shl18 = shl i32 1, %15, !dbg !1831
  %add19 = add i32 %shl18, 1, !dbg !1831
  %sub20 = sub i32 0, %add19, !dbg !1831
  %conv21 = zext i32 %sub20 to i64, !dbg !1831
  %and22 = and i64 %conv21, 4611686018427387903, !dbg !1831
  call void @atomic_long_set(ptr noundef %last_finalized_id, i64 noundef %and22) #12, !dbg !1832
  %16 = load i32, ptr %textbits.addr, align 4, !dbg !1833
  %17 = load ptr, ptr %rb.addr, align 8, !dbg !1834
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %17, i32 0, i32 1, !dbg !1835
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %text_data_ring, i32 0, i32 0, !dbg !1836
  store i32 %16, ptr %size_bits, align 8, !dbg !1837
  %18 = load ptr, ptr %text_buf.addr, align 8, !dbg !1838
  %19 = load ptr, ptr %rb.addr, align 8, !dbg !1839
  %text_data_ring23 = getelementptr inbounds %struct.printk_ringbuffer, ptr %19, i32 0, i32 1, !dbg !1840
  %data = getelementptr inbounds %struct.prb_data_ring, ptr %text_data_ring23, i32 0, i32 1, !dbg !1841
  store ptr %18, ptr %data, align 8, !dbg !1842
  %20 = load ptr, ptr %rb.addr, align 8, !dbg !1843
  %text_data_ring24 = getelementptr inbounds %struct.printk_ringbuffer, ptr %20, i32 0, i32 1, !dbg !1844
  %head_lpos = getelementptr inbounds %struct.prb_data_ring, ptr %text_data_ring24, i32 0, i32 2, !dbg !1845
  %21 = load i32, ptr %textbits.addr, align 4, !dbg !1846
  %sh_prom = zext i32 %21 to i64, !dbg !1846
  %shl25 = shl i64 1, %sh_prom, !dbg !1846
  %sub26 = sub i64 0, %shl25, !dbg !1846
  call void @atomic_long_set(ptr noundef %head_lpos, i64 noundef %sub26) #12, !dbg !1847
  %22 = load ptr, ptr %rb.addr, align 8, !dbg !1848
  %text_data_ring27 = getelementptr inbounds %struct.printk_ringbuffer, ptr %22, i32 0, i32 1, !dbg !1849
  %tail_lpos = getelementptr inbounds %struct.prb_data_ring, ptr %text_data_ring27, i32 0, i32 3, !dbg !1850
  %23 = load i32, ptr %textbits.addr, align 4, !dbg !1851
  %sh_prom28 = zext i32 %23 to i64, !dbg !1851
  %shl29 = shl i64 1, %sh_prom28, !dbg !1851
  %sub30 = sub i64 0, %shl29, !dbg !1851
  call void @atomic_long_set(ptr noundef %tail_lpos, i64 noundef %sub30) #12, !dbg !1852
  %24 = load ptr, ptr %rb.addr, align 8, !dbg !1853
  %fail = getelementptr inbounds %struct.printk_ringbuffer, ptr %24, i32 0, i32 2, !dbg !1854
  call void @atomic_long_set(ptr noundef %fail, i64 noundef 0) #12, !dbg !1855
  %25 = load ptr, ptr %descs.addr, align 8, !dbg !1856
  %26 = load i32, ptr %descbits.addr, align 4, !dbg !1857
  %shl31 = shl i32 1, %26, !dbg !1857
  %sub32 = sub i32 %shl31, 1, !dbg !1858
  %idxprom = zext i32 %sub32 to i64, !dbg !1856
  %arrayidx = getelementptr %struct.prb_desc, ptr %25, i64 %idxprom, !dbg !1856
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %arrayidx, i32 0, i32 0, !dbg !1859
  %27 = load i32, ptr %descbits.addr, align 4, !dbg !1860
  %shl33 = shl i32 1, %27, !dbg !1860
  %add34 = add i32 %shl33, 1, !dbg !1860
  %sub35 = sub i32 0, %add34, !dbg !1860
  %conv36 = zext i32 %sub35 to i64, !dbg !1860
  %and37 = and i64 %conv36, 4611686018427387903, !dbg !1860
  %or = or i64 -4611686018427387904, %and37, !dbg !1860
  call void @atomic_long_set(ptr noundef %state_var, i64 noundef %or) #12, !dbg !1861
  %28 = load ptr, ptr %descs.addr, align 8, !dbg !1862
  %29 = load i32, ptr %descbits.addr, align 4, !dbg !1863
  %shl38 = shl i32 1, %29, !dbg !1863
  %sub39 = sub i32 %shl38, 1, !dbg !1864
  %idxprom40 = zext i32 %sub39 to i64, !dbg !1862
  %arrayidx41 = getelementptr %struct.prb_desc, ptr %28, i64 %idxprom40, !dbg !1862
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %arrayidx41, i32 0, i32 1, !dbg !1865
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %text_blk_lpos, i32 0, i32 0, !dbg !1866
  store i64 1, ptr %begin, align 8, !dbg !1867
  %30 = load ptr, ptr %descs.addr, align 8, !dbg !1868
  %31 = load i32, ptr %descbits.addr, align 4, !dbg !1869
  %shl42 = shl i32 1, %31, !dbg !1869
  %sub43 = sub i32 %shl42, 1, !dbg !1870
  %idxprom44 = zext i32 %sub43 to i64, !dbg !1868
  %arrayidx45 = getelementptr %struct.prb_desc, ptr %30, i64 %idxprom44, !dbg !1868
  %text_blk_lpos46 = getelementptr inbounds %struct.prb_desc, ptr %arrayidx45, i32 0, i32 1, !dbg !1871
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %text_blk_lpos46, i32 0, i32 1, !dbg !1872
  store i64 1, ptr %next, align 8, !dbg !1873
  %32 = load i32, ptr %descbits.addr, align 4, !dbg !1874
  %shl47 = shl i32 1, %32, !dbg !1874
  %conv48 = zext i32 %shl47 to i64, !dbg !1875
  %sub49 = sub i64 0, %conv48, !dbg !1876
  %33 = load ptr, ptr %infos.addr, align 8, !dbg !1877
  %arrayidx50 = getelementptr %struct.printk_info, ptr %33, i64 0, !dbg !1877
  %seq = getelementptr inbounds %struct.printk_info, ptr %arrayidx50, i32 0, i32 0, !dbg !1878
  store i64 %sub49, ptr %seq, align 8, !dbg !1879
  %34 = load ptr, ptr %infos.addr, align 8, !dbg !1880
  %35 = load i32, ptr %descbits.addr, align 4, !dbg !1881
  %shl51 = shl i32 1, %35, !dbg !1881
  %sub52 = sub i32 %shl51, 1, !dbg !1882
  %idxprom53 = zext i32 %sub52 to i64, !dbg !1880
  %arrayidx54 = getelementptr %struct.printk_info, ptr %34, i64 %idxprom53, !dbg !1880
  %seq55 = getelementptr inbounds %struct.printk_info, ptr %arrayidx54, i32 0, i32 0, !dbg !1883
  store i64 0, ptr %seq55, align 8, !dbg !1884
  ret void, !dbg !1885
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @prb_record_text_space(ptr noundef %e) #0 align 16 !dbg !1886 {
entry:
  %e.addr = alloca ptr, align 8
  store ptr %e, ptr %e.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %e.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  %0 = load ptr, ptr %e.addr, align 8, !dbg !1892
  %text_space = getelementptr inbounds %struct.prb_reserved_entry, ptr %0, i32 0, i32 3, !dbg !1893
  %1 = load i32, ptr %text_space, align 8, !dbg !1893
  ret i32 %1, !dbg !1894
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_local_save_flags() #3 align 16 !dbg !1895 {
entry:
  %call = call i64 @native_save_fl() #12, !dbg !1896
  ret i64 %call, !dbg !1897
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_disable() #3 align 16 !dbg !1898 {
entry:
  call void @native_irq_disable() #12, !dbg !1901
  ret void, !dbg !1902
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define available_externally dso_local i64 @native_save_fl() #3 align 16 !dbg !1903 {
entry:
  %flags = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #11, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1905, metadata !DIExpression()), !dbg !1907
  call void asm sideeffect "# __raw_save_flags\0A\09pushf ; pop $0", "=*rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %flags) #11, !dbg !1908, !srcloc !1909
  %0 = load i64, ptr %flags, align 8, !dbg !1910
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #11, !dbg !1911
  ret i64 %0, !dbg !1912
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_disable() #3 align 16 !dbg !1913 {
entry:
  call void asm sideeffect "cli", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !1914, !srcloc !1915
  ret void, !dbg !1916
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !1917 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1922, metadata !DIExpression()), !dbg !1925
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1923, metadata !DIExpression()), !dbg !1926
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1924, metadata !DIExpression()), !dbg !1927
  br label %do.body, !dbg !1928

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !1929

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1931
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !1932
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1933
  call void @instrument_atomic_read_write(ptr noundef %1, i64 noundef 8) #12, !dbg !1934
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1935
  %3 = load ptr, ptr %old.addr, align 8, !dbg !1936
  %4 = load i64, ptr %new.addr, align 8, !dbg !1937
  %call = call zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %2, ptr noundef %3, i64 noundef %4) #12, !dbg !1938
  ret i1 %call, !dbg !1939
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !1940 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1952, metadata !DIExpression()), !dbg !1954
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1953, metadata !DIExpression()), !dbg !1955
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1956
  %1 = load i64, ptr %size.addr, align 8, !dbg !1957
  %conv = trunc i64 %1 to i32, !dbg !1957
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !1958
  %2 = load ptr, ptr %v.addr, align 8, !dbg !1959
  %3 = load i64, ptr %size.addr, align 8, !dbg !1959
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 7) #12, !dbg !1959
  ret void, !dbg !1960
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic_long_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !1961 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !1963, metadata !DIExpression()), !dbg !1966
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !1964, metadata !DIExpression()), !dbg !1967
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1965, metadata !DIExpression()), !dbg !1968
  %0 = load ptr, ptr %v.addr, align 8, !dbg !1969
  %1 = load ptr, ptr %old.addr, align 8, !dbg !1970
  %2 = load i64, ptr %new.addr, align 8, !dbg !1971
  %call = call zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12, !dbg !1972
  ret i1 %call, !dbg !1973
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_write(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !1974 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !1979, metadata !DIExpression()), !dbg !1981
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1980, metadata !DIExpression()), !dbg !1982
  ret i1 true, !dbg !1983
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #7 align 16 !dbg !1984 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1989, metadata !DIExpression()), !dbg !1992
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1990, metadata !DIExpression()), !dbg !1993
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !1991, metadata !DIExpression()), !dbg !1994
  ret void, !dbg !1995
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @raw_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !1996 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2002, metadata !DIExpression()), !dbg !2005
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2003, metadata !DIExpression()), !dbg !2006
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2004, metadata !DIExpression()), !dbg !2007
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2008
  %1 = load ptr, ptr %old.addr, align 8, !dbg !2009
  %2 = load i64, ptr %new.addr, align 8, !dbg !2010
  %call = call zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %0, ptr noundef %1, i64 noundef %2) #12, !dbg !2011
  ret i1 %call, !dbg !2012
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_atomic64_try_cmpxchg(ptr noundef %v, ptr noundef %old, i64 noundef %new) #3 align 16 !dbg !2013 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca ptr, align 8
  %new.addr = alloca i64, align 8
  %success = alloca i8, align 1
  %_old = alloca ptr, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2016, metadata !DIExpression()), !dbg !2025
  store ptr %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2017, metadata !DIExpression()), !dbg !2026
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2018, metadata !DIExpression()), !dbg !2027
  call void @llvm.lifetime.start.p0(i64 1, ptr %success) #11, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %success, metadata !2019, metadata !DIExpression()), !dbg !2028
  call void @llvm.lifetime.start.p0(i64 8, ptr %_old) #11, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %_old, metadata !2021, metadata !DIExpression()), !dbg !2028
  %0 = load ptr, ptr %old.addr, align 8, !dbg !2028
  store ptr %0, ptr %_old, align 8, !dbg !2028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2022, metadata !DIExpression()), !dbg !2028
  %1 = load ptr, ptr %_old, align 8, !dbg !2028
  %2 = load i64, ptr %1, align 8, !dbg !2028
  store i64 %2, ptr %__old, align 8, !dbg !2028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #11, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2023, metadata !DIExpression()), !dbg !2028
  %3 = load i64, ptr %new.addr, align 8, !dbg !2028
  store i64 %3, ptr %__new, align 8, !dbg !2028
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2024, metadata !DIExpression()), !dbg !2028
  %4 = load ptr, ptr %v.addr, align 8, !dbg !2028
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %4, i32 0, i32 0, !dbg !2028
  store ptr %counter, ptr %__ptr, align 8, !dbg !2028
  %5 = load ptr, ptr %__ptr, align 8, !dbg !2028
  %6 = load i64, ptr %__old, align 8, !dbg !2028
  %7 = load i64, ptr %__new, align 8, !dbg !2028
  %8 = call { i8, i64 } asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $3, $1\0A\09/* output condition code z*/\0A", "={@ccz},=*m,={ax},r,*m,2,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %5, i64 %7, ptr elementtype(i64) %5, i64 %6) #11, !dbg !2028, !srcloc !2029
  %asmresult = extractvalue { i8, i64 } %8, 0, !dbg !2028
  %asmresult1 = extractvalue { i8, i64 } %8, 1, !dbg !2028
  %9 = icmp ult i8 %asmresult, 2, !dbg !2028
  call void @llvm.assume(i1 %9), !dbg !2028
  store i8 %asmresult, ptr %success, align 1, !dbg !2028
  store i64 %asmresult1, ptr %__old, align 8, !dbg !2028
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !2028
  %10 = load i8, ptr %success, align 1, !dbg !2030, !range !281, !noundef !282
  %tobool = trunc i8 %10 to i1, !dbg !2030
  %lnot = xor i1 %tobool, true, !dbg !2030
  %lnot2 = xor i1 %lnot, true, !dbg !2030
  %lnot3 = xor i1 %lnot2, true, !dbg !2030
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2030
  %conv = sext i32 %lnot.ext to i64, !dbg !2030
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2030
  %tobool4 = icmp ne i64 %expval, 0, !dbg !2030
  br i1 %tobool4, label %if.then, label %if.end, !dbg !2028

if.then:                                          ; preds = %entry
  %11 = load i64, ptr %__old, align 8, !dbg !2030
  %12 = load ptr, ptr %_old, align 8, !dbg !2030
  store i64 %11, ptr %12, align 8, !dbg !2030
  br label %if.end, !dbg !2030

if.end:                                           ; preds = %if.then, %entry
  %13 = load i8, ptr %success, align 1, !dbg !2028, !range !281, !noundef !282
  %tobool5 = trunc i8 %13 to i1, !dbg !2028
  %lnot6 = xor i1 %tobool5, true, !dbg !2028
  %lnot8 = xor i1 %lnot6, true, !dbg !2028
  %lnot.ext9 = zext i1 %lnot8 to i32, !dbg !2028
  %conv10 = sext i32 %lnot.ext9 to i64, !dbg !2028
  %expval11 = call i64 @llvm.expect.i64(i64 %conv10, i64 1), !dbg !2028
  store i64 %expval11, ptr %tmp, align 8, !dbg !2030
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #11, !dbg !2032
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11, !dbg !2032
  call void @llvm.lifetime.end.p0(i64 8, ptr %_old) #11, !dbg !2032
  call void @llvm.lifetime.end.p0(i64 1, ptr %success) #11, !dbg !2032
  %14 = load i64, ptr %tmp, align 8, !dbg !2028
  %tobool12 = icmp ne i64 %14, 0, !dbg !2032
  ret i1 %tobool12, !dbg !2033
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @arch_irqs_disabled_flags(i64 noundef %flags) #3 align 16 !dbg !2034 {
entry:
  %flags.addr = alloca i64, align 8
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2038, metadata !DIExpression()), !dbg !2039
  %0 = load i64, ptr %flags.addr, align 8, !dbg !2040
  %and = and i64 %0, 512, !dbg !2041
  %tobool = icmp ne i64 %and, 0, !dbg !2042
  %lnot = xor i1 %tobool, true, !dbg !2042
  %lnot.ext = zext i1 %lnot to i32, !dbg !2042
  ret i32 %lnot.ext, !dbg !2043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_local_irq_enable() #3 align 16 !dbg !2044 {
entry:
  call void @native_irq_enable() #12, !dbg !2045
  ret void, !dbg !2046
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @native_irq_enable() #3 align 16 !dbg !2047 {
entry:
  call void asm sideeffect "sti", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2048, !srcloc !2049
  ret void, !dbg !2050
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @to_blk_size(i32 noundef %size) #0 align 16 !dbg !2051 {
entry:
  %size.addr = alloca i32, align 4
  %db = alloca ptr, align 8
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2055, metadata !DIExpression()), !dbg !2057
  call void @llvm.lifetime.start.p0(i64 8, ptr %db) #11, !dbg !2058
  call void @llvm.dbg.declare(metadata ptr %db, metadata !2056, metadata !DIExpression()), !dbg !2059
  store ptr null, ptr %db, align 8, !dbg !2059
  %0 = load i32, ptr %size.addr, align 4, !dbg !2060
  %conv = zext i32 %0 to i64, !dbg !2060
  %add = add i64 %conv, 8, !dbg !2060
  %conv1 = trunc i64 %add to i32, !dbg !2060
  store i32 %conv1, ptr %size.addr, align 4, !dbg !2060
  %1 = load i32, ptr %size.addr, align 4, !dbg !2061
  %add2 = add i32 %1, 7, !dbg !2061
  %and = and i32 %add2, -8, !dbg !2061
  store i32 %and, ptr %size.addr, align 4, !dbg !2062
  %2 = load i32, ptr %size.addr, align 4, !dbg !2063
  call void @llvm.lifetime.end.p0(i64 8, ptr %db) #11, !dbg !2064
  ret i32 %2, !dbg !2065
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_next_lpos(ptr noundef %data_ring, i64 noundef %lpos, i32 noundef %size) #0 align 16 !dbg !2066 {
entry:
  %retval = alloca i64, align 8
  %data_ring.addr = alloca ptr, align 8
  %lpos.addr = alloca i64, align 8
  %size.addr = alloca i32, align 4
  %begin_lpos = alloca i64, align 8
  %next_lpos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !2070, metadata !DIExpression()), !dbg !2075
  store i64 %lpos, ptr %lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpos.addr, metadata !2071, metadata !DIExpression()), !dbg !2076
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2072, metadata !DIExpression()), !dbg !2077
  call void @llvm.lifetime.start.p0(i64 8, ptr %begin_lpos) #11, !dbg !2078
  call void @llvm.dbg.declare(metadata ptr %begin_lpos, metadata !2073, metadata !DIExpression()), !dbg !2079
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lpos) #11, !dbg !2080
  call void @llvm.dbg.declare(metadata ptr %next_lpos, metadata !2074, metadata !DIExpression()), !dbg !2081
  %0 = load i64, ptr %lpos.addr, align 8, !dbg !2082
  store i64 %0, ptr %begin_lpos, align 8, !dbg !2083
  %1 = load i64, ptr %lpos.addr, align 8, !dbg !2084
  %2 = load i32, ptr %size.addr, align 4, !dbg !2085
  %conv = zext i32 %2 to i64, !dbg !2085
  %add = add i64 %1, %conv, !dbg !2086
  store i64 %add, ptr %next_lpos, align 8, !dbg !2087
  %3 = load i64, ptr %begin_lpos, align 8, !dbg !2088
  %4 = load ptr, ptr %data_ring.addr, align 8, !dbg !2088
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %4, i32 0, i32 0, !dbg !2088
  %5 = load i32, ptr %size_bits, align 8, !dbg !2088
  %sh_prom = zext i32 %5 to i64, !dbg !2088
  %shr = lshr i64 %3, %sh_prom, !dbg !2088
  %6 = load i64, ptr %next_lpos, align 8, !dbg !2090
  %7 = load ptr, ptr %data_ring.addr, align 8, !dbg !2090
  %size_bits1 = getelementptr inbounds %struct.prb_data_ring, ptr %7, i32 0, i32 0, !dbg !2090
  %8 = load i32, ptr %size_bits1, align 8, !dbg !2090
  %sh_prom2 = zext i32 %8 to i64, !dbg !2090
  %shr3 = lshr i64 %6, %sh_prom2, !dbg !2090
  %cmp = icmp eq i64 %shr, %shr3, !dbg !2091
  br i1 %cmp, label %if.then, label %if.end, !dbg !2092

if.then:                                          ; preds = %entry
  %9 = load i64, ptr %next_lpos, align 8, !dbg !2093
  store i64 %9, ptr %retval, align 8, !dbg !2094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2094

if.end:                                           ; preds = %entry
  %10 = load i64, ptr %next_lpos, align 8, !dbg !2095
  %11 = load ptr, ptr %data_ring.addr, align 8, !dbg !2095
  %size_bits5 = getelementptr inbounds %struct.prb_data_ring, ptr %11, i32 0, i32 0, !dbg !2095
  %12 = load i32, ptr %size_bits5, align 8, !dbg !2095
  %sh_prom6 = zext i32 %12 to i64, !dbg !2095
  %shl = shl i64 1, %sh_prom6, !dbg !2095
  %sub = sub i64 %shl, 1, !dbg !2095
  %not = xor i64 %sub, -1, !dbg !2095
  %and = and i64 %10, %not, !dbg !2095
  %13 = load i32, ptr %size.addr, align 4, !dbg !2096
  %conv7 = zext i32 %13 to i64, !dbg !2096
  %add8 = add i64 %and, %conv7, !dbg !2097
  store i64 %add8, ptr %retval, align 8, !dbg !2098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2098

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lpos) #11, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %begin_lpos) #11, !dbg !2099
  %14 = load i64, ptr %retval, align 8, !dbg !2099
  ret i64 %14, !dbg !2099
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @data_push_tail(ptr noundef %rb, i64 noundef %lpos) #0 align 16 !dbg !2100 {
entry:
  %retval = alloca i1, align 1
  %rb.addr = alloca ptr, align 8
  %lpos.addr = alloca i64, align 8
  %data_ring = alloca ptr, align 8
  %tail_lpos_new = alloca i64, align 8
  %tail_lpos = alloca i64, align 8
  %next_lpos = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2104, metadata !DIExpression()), !dbg !2110
  store i64 %lpos, ptr %lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpos.addr, metadata !2105, metadata !DIExpression()), !dbg !2111
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_ring) #11, !dbg !2112
  call void @llvm.dbg.declare(metadata ptr %data_ring, metadata !2106, metadata !DIExpression()), !dbg !2113
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2114
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, !dbg !2115
  store ptr %text_data_ring, ptr %data_ring, align 8, !dbg !2113
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail_lpos_new) #11, !dbg !2116
  call void @llvm.dbg.declare(metadata ptr %tail_lpos_new, metadata !2107, metadata !DIExpression()), !dbg !2117
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail_lpos) #11, !dbg !2118
  call void @llvm.dbg.declare(metadata ptr %tail_lpos, metadata !2108, metadata !DIExpression()), !dbg !2119
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_lpos) #11, !dbg !2120
  call void @llvm.dbg.declare(metadata ptr %next_lpos, metadata !2109, metadata !DIExpression()), !dbg !2121
  %1 = load i64, ptr %lpos.addr, align 8, !dbg !2122
  %and = and i64 %1, 1, !dbg !2122
  %tobool = icmp ne i64 %and, 0, !dbg !2122
  br i1 %tobool, label %if.then, label %if.end, !dbg !2124

if.then:                                          ; preds = %entry
  store i1 true, ptr %retval, align 1, !dbg !2125
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2125

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %data_ring, align 8, !dbg !2126
  %tail_lpos1 = getelementptr inbounds %struct.prb_data_ring, ptr %2, i32 0, i32 3, !dbg !2127
  %call = call i64 @atomic_long_read(ptr noundef %tail_lpos1) #12, !dbg !2128
  store i64 %call, ptr %tail_lpos, align 8, !dbg !2129
  br label %while.cond, !dbg !2130

while.cond:                                       ; preds = %if.end23, %if.end18, %if.end
  %3 = load i64, ptr %lpos.addr, align 8, !dbg !2131
  %4 = load i64, ptr %tail_lpos, align 8, !dbg !2132
  %sub = sub i64 %3, %4, !dbg !2133
  %sub2 = sub i64 %sub, 1, !dbg !2134
  %5 = load ptr, ptr %data_ring, align 8, !dbg !2135
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %5, i32 0, i32 0, !dbg !2135
  %6 = load i32, ptr %size_bits, align 8, !dbg !2135
  %sh_prom = zext i32 %6 to i64, !dbg !2135
  %shl = shl i64 1, %sh_prom, !dbg !2135
  %cmp = icmp ult i64 %sub2, %shl, !dbg !2136
  br i1 %cmp, label %while.body, label %while.end, !dbg !2130

while.body:                                       ; preds = %while.cond
  %7 = load ptr, ptr %rb.addr, align 8, !dbg !2137
  %8 = load i64, ptr %tail_lpos, align 8, !dbg !2140
  %9 = load i64, ptr %lpos.addr, align 8, !dbg !2141
  %call3 = call zeroext i1 @data_make_reusable(ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %next_lpos) #12, !dbg !2142
  br i1 %call3, label %if.end19, label %if.then4, !dbg !2143

if.then4:                                         ; preds = %while.body
  br label %do.body, !dbg !2144

do.body:                                          ; preds = %if.then4
  br label %do.body5, !dbg !2146

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !2148

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !2148

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !2146

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !2150

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !2152

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2152

do.end9:                                          ; preds = %do.cond8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2150, !srcloc !2154
  br label %do.cond10, !dbg !2150

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2150

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !2146

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2146

do.end13:                                         ; preds = %do.cond12
  %10 = load ptr, ptr %data_ring, align 8, !dbg !2155
  %tail_lpos14 = getelementptr inbounds %struct.prb_data_ring, ptr %10, i32 0, i32 3, !dbg !2156
  %call15 = call i64 @atomic_long_read(ptr noundef %tail_lpos14) #12, !dbg !2157
  store i64 %call15, ptr %tail_lpos_new, align 8, !dbg !2158
  %11 = load i64, ptr %tail_lpos_new, align 8, !dbg !2159
  %12 = load i64, ptr %tail_lpos, align 8, !dbg !2161
  %cmp16 = icmp eq i64 %11, %12, !dbg !2162
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !2163

if.then17:                                        ; preds = %do.end13
  store i1 false, ptr %retval, align 1, !dbg !2164
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2164

if.end18:                                         ; preds = %do.end13
  %13 = load i64, ptr %tail_lpos_new, align 8, !dbg !2165
  store i64 %13, ptr %tail_lpos, align 8, !dbg !2166
  br label %while.cond, !dbg !2167, !llvm.loop !2168

if.end19:                                         ; preds = %while.body
  %14 = load ptr, ptr %data_ring, align 8, !dbg !2170
  %tail_lpos20 = getelementptr inbounds %struct.prb_data_ring, ptr %14, i32 0, i32 3, !dbg !2172
  %15 = load i64, ptr %next_lpos, align 8, !dbg !2173
  %call21 = call zeroext i1 @atomic_long_try_cmpxchg(ptr noundef %tail_lpos20, ptr noundef %tail_lpos, i64 noundef %15) #12, !dbg !2174
  br i1 %call21, label %if.then22, label %if.end23, !dbg !2175

if.then22:                                        ; preds = %if.end19
  br label %while.end, !dbg !2176

if.end23:                                         ; preds = %if.end19
  br label %while.cond, !dbg !2130, !llvm.loop !2168

while.end:                                        ; preds = %if.then22, %while.cond
  store i1 true, ptr %retval, align 1, !dbg !2178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2178

cleanup:                                          ; preds = %while.end, %if.then17, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_lpos) #11, !dbg !2179
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail_lpos) #11, !dbg !2179
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail_lpos_new) #11, !dbg !2179
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_ring) #11, !dbg !2179
  %16 = load i1, ptr %retval, align 1, !dbg !2179
  ret i1 %16, !dbg !2179
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_block(ptr noundef %data_ring, i64 noundef %begin_lpos) #0 align 16 !dbg !2180 {
entry:
  %data_ring.addr = alloca ptr, align 8
  %begin_lpos.addr = alloca i64, align 8
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !2184, metadata !DIExpression()), !dbg !2186
  store i64 %begin_lpos, ptr %begin_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %begin_lpos.addr, metadata !2185, metadata !DIExpression()), !dbg !2187
  %0 = load ptr, ptr %data_ring.addr, align 8, !dbg !2188
  %data = getelementptr inbounds %struct.prb_data_ring, ptr %0, i32 0, i32 1, !dbg !2189
  %1 = load ptr, ptr %data, align 8, !dbg !2189
  %2 = load i64, ptr %begin_lpos.addr, align 8, !dbg !2190
  %3 = load ptr, ptr %data_ring.addr, align 8, !dbg !2190
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %3, i32 0, i32 0, !dbg !2190
  %4 = load i32, ptr %size_bits, align 8, !dbg !2190
  %sh_prom = zext i32 %4 to i64, !dbg !2190
  %shl = shl i64 1, %sh_prom, !dbg !2190
  %sub = sub i64 %shl, 1, !dbg !2190
  %and = and i64 %2, %sub, !dbg !2190
  %arrayidx = getelementptr i8, ptr %1, i64 %and, !dbg !2188
  ret ptr %arrayidx, !dbg !2191
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @data_make_reusable(ptr noundef %rb, i64 noundef %lpos_begin, i64 noundef %lpos_end, ptr noundef %lpos_out) #0 align 16 !dbg !2192 {
entry:
  %retval = alloca i1, align 1
  %rb.addr = alloca ptr, align 8
  %lpos_begin.addr = alloca i64, align 8
  %lpos_end.addr = alloca i64, align 8
  %lpos_out.addr = alloca ptr, align 8
  %data_ring = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %blk = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %desc = alloca %struct.prb_desc, align 8
  %blk_lpos = alloca ptr, align 8
  %id = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2196, metadata !DIExpression()), !dbg !2207
  store i64 %lpos_begin, ptr %lpos_begin.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpos_begin.addr, metadata !2197, metadata !DIExpression()), !dbg !2208
  store i64 %lpos_end, ptr %lpos_end.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpos_end.addr, metadata !2198, metadata !DIExpression()), !dbg !2209
  store ptr %lpos_out, ptr %lpos_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lpos_out.addr, metadata !2199, metadata !DIExpression()), !dbg !2210
  call void @llvm.lifetime.start.p0(i64 8, ptr %data_ring) #11, !dbg !2211
  call void @llvm.dbg.declare(metadata ptr %data_ring, metadata !2200, metadata !DIExpression()), !dbg !2212
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2213
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 1, !dbg !2214
  store ptr %text_data_ring, ptr %data_ring, align 8, !dbg !2212
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !2215
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !2201, metadata !DIExpression()), !dbg !2216
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !2217
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 0, !dbg !2218
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !2216
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk) #11, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %blk, metadata !2202, metadata !DIExpression()), !dbg !2220
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !2221
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !2203, metadata !DIExpression()), !dbg !2222
  call void @llvm.lifetime.start.p0(i64 24, ptr %desc) #11, !dbg !2223
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2204, metadata !DIExpression()), !dbg !2224
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk_lpos) #11, !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %blk_lpos, metadata !2205, metadata !DIExpression()), !dbg !2226
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %desc, i32 0, i32 1, !dbg !2227
  store ptr %text_blk_lpos, ptr %blk_lpos, align 8, !dbg !2226
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2206, metadata !DIExpression()), !dbg !2229
  br label %while.cond, !dbg !2230

while.cond:                                       ; preds = %sw.epilog, %entry
  %2 = load i64, ptr %lpos_end.addr, align 8, !dbg !2231
  %3 = load i64, ptr %lpos_begin.addr, align 8, !dbg !2232
  %sub = sub i64 %2, %3, !dbg !2233
  %sub2 = sub i64 %sub, 1, !dbg !2234
  %4 = load ptr, ptr %data_ring, align 8, !dbg !2235
  %size_bits = getelementptr inbounds %struct.prb_data_ring, ptr %4, i32 0, i32 0, !dbg !2235
  %5 = load i32, ptr %size_bits, align 8, !dbg !2235
  %sh_prom = zext i32 %5 to i64, !dbg !2235
  %shl = shl i64 1, %sh_prom, !dbg !2235
  %cmp = icmp ult i64 %sub2, %shl, !dbg !2236
  br i1 %cmp, label %while.body, label %while.end, !dbg !2230

while.body:                                       ; preds = %while.cond
  %6 = load ptr, ptr %data_ring, align 8, !dbg !2237
  %7 = load i64, ptr %lpos_begin.addr, align 8, !dbg !2239
  %call = call ptr @to_block(ptr noundef %6, i64 noundef %7) #12, !dbg !2240
  store ptr %call, ptr %blk, align 8, !dbg !2241
  %8 = load ptr, ptr %blk, align 8, !dbg !2242
  %id3 = getelementptr inbounds %struct.prb_data_block, ptr %8, i32 0, i32 0, !dbg !2243
  %9 = load i64, ptr %id3, align 8, !dbg !2243
  store i64 %9, ptr %id, align 8, !dbg !2244
  %10 = load ptr, ptr %desc_ring, align 8, !dbg !2245
  %11 = load i64, ptr %id, align 8, !dbg !2246
  %call4 = call i32 @desc_read(ptr noundef %10, i64 noundef %11, ptr noundef %desc, ptr noundef null, ptr noundef null) #12, !dbg !2247
  store i32 %call4, ptr %d_state, align 4, !dbg !2248
  %12 = load i32, ptr %d_state, align 4, !dbg !2249
  switch i32 %12, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 3, label %sw.bb7
  ], !dbg !2250

sw.bb:                                            ; preds = %while.body, %while.body, %while.body
  store i1 false, ptr %retval, align 1, !dbg !2251
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2251

sw.bb5:                                           ; preds = %while.body
  %13 = load ptr, ptr %blk_lpos, align 8, !dbg !2253
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %13, i32 0, i32 0, !dbg !2255
  %14 = load i64, ptr %begin, align 8, !dbg !2255
  %15 = load i64, ptr %lpos_begin.addr, align 8, !dbg !2256
  %cmp6 = icmp ne i64 %14, %15, !dbg !2257
  br i1 %cmp6, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %sw.bb5
  store i1 false, ptr %retval, align 1, !dbg !2259
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2259

if.end:                                           ; preds = %sw.bb5
  %16 = load ptr, ptr %desc_ring, align 8, !dbg !2260
  %17 = load i64, ptr %id, align 8, !dbg !2261
  call void @desc_make_reusable(ptr noundef %16, i64 noundef %17) #12, !dbg !2262
  br label %sw.epilog, !dbg !2263

sw.bb7:                                           ; preds = %while.body
  %18 = load ptr, ptr %blk_lpos, align 8, !dbg !2264
  %begin8 = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %18, i32 0, i32 0, !dbg !2266
  %19 = load i64, ptr %begin8, align 8, !dbg !2266
  %20 = load i64, ptr %lpos_begin.addr, align 8, !dbg !2267
  %cmp9 = icmp ne i64 %19, %20, !dbg !2268
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2269

if.then10:                                        ; preds = %sw.bb7
  store i1 false, ptr %retval, align 1, !dbg !2270
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

if.end11:                                         ; preds = %sw.bb7
  br label %sw.epilog, !dbg !2271

sw.epilog:                                        ; preds = %while.body, %if.end11, %if.end
  %21 = load ptr, ptr %blk_lpos, align 8, !dbg !2272
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %21, i32 0, i32 1, !dbg !2273
  %22 = load i64, ptr %next, align 8, !dbg !2273
  store i64 %22, ptr %lpos_begin.addr, align 8, !dbg !2274
  br label %while.cond, !dbg !2230, !llvm.loop !2275

while.end:                                        ; preds = %while.cond
  %23 = load i64, ptr %lpos_begin.addr, align 8, !dbg !2277
  %24 = load ptr, ptr %lpos_out.addr, align 8, !dbg !2278
  store i64 %23, ptr %24, align 8, !dbg !2279
  store i1 true, ptr %retval, align 1, !dbg !2280
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2280

cleanup:                                          ; preds = %while.end, %if.then10, %if.then, %sw.bb
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk_lpos) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 24, ptr %desc) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !2281
  call void @llvm.lifetime.end.p0(i64 8, ptr %data_ring) #11, !dbg !2281
  %25 = load i1, ptr %retval, align 1, !dbg !2281
  ret i1 %25, !dbg !2281
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @desc_make_reusable(ptr noundef %desc_ring, i64 noundef %id) #0 align 16 !dbg !2282 {
entry:
  %desc_ring.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %val_finalized = alloca i64, align 8
  %val_reusable = alloca i64, align 8
  %desc = alloca ptr, align 8
  %state_var = alloca ptr, align 8
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !2284, metadata !DIExpression()), !dbg !2290
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2285, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_finalized) #11, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %val_finalized, metadata !2286, metadata !DIExpression()), !dbg !2293
  %0 = load i64, ptr %id.addr, align 8, !dbg !2294
  %or = or i64 -9223372036854775808, %0, !dbg !2294
  store i64 %or, ptr %val_finalized, align 8, !dbg !2293
  call void @llvm.lifetime.start.p0(i64 8, ptr %val_reusable) #11, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %val_reusable, metadata !2287, metadata !DIExpression()), !dbg !2296
  %1 = load i64, ptr %id.addr, align 8, !dbg !2297
  %or1 = or i64 -4611686018427387904, %1, !dbg !2297
  store i64 %or1, ptr %val_reusable, align 8, !dbg !2296
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #11, !dbg !2298
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2288, metadata !DIExpression()), !dbg !2299
  %2 = load ptr, ptr %desc_ring.addr, align 8, !dbg !2300
  %3 = load i64, ptr %id.addr, align 8, !dbg !2301
  %call = call ptr @to_desc(ptr noundef %2, i64 noundef %3) #12, !dbg !2302
  store ptr %call, ptr %desc, align 8, !dbg !2299
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_var) #11, !dbg !2303
  call void @llvm.dbg.declare(metadata ptr %state_var, metadata !2289, metadata !DIExpression()), !dbg !2304
  %4 = load ptr, ptr %desc, align 8, !dbg !2305
  %state_var2 = getelementptr inbounds %struct.prb_desc, ptr %4, i32 0, i32 0, !dbg !2306
  store ptr %state_var2, ptr %state_var, align 8, !dbg !2304
  %5 = load ptr, ptr %state_var, align 8, !dbg !2307
  %6 = load i64, ptr %val_finalized, align 8, !dbg !2308
  %7 = load i64, ptr %val_reusable, align 8, !dbg !2309
  %call3 = call i64 @atomic_long_cmpxchg_relaxed(ptr noundef %5, i64 noundef %6, i64 noundef %7) #12, !dbg !2310
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_var) #11, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #11, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_reusable) #11, !dbg !2311
  call void @llvm.lifetime.end.p0(i64 8, ptr %val_finalized) #11, !dbg !2311
  ret void, !dbg !2311
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_cmpxchg_relaxed(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2312 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2316, metadata !DIExpression()), !dbg !2319
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2317, metadata !DIExpression()), !dbg !2320
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2318, metadata !DIExpression()), !dbg !2321
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2322
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !2323
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2324
  %2 = load i64, ptr %old.addr, align 8, !dbg !2325
  %3 = load i64, ptr %new.addr, align 8, !dbg !2326
  %call = call i64 @raw_atomic_long_cmpxchg_relaxed(ptr noundef %1, i64 noundef %2, i64 noundef %3) #12, !dbg !2327
  ret i64 %call, !dbg !2328
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_cmpxchg_relaxed(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2329 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2331, metadata !DIExpression()), !dbg !2334
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2332, metadata !DIExpression()), !dbg !2335
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2333, metadata !DIExpression()), !dbg !2336
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2337
  %1 = load i64, ptr %old.addr, align 8, !dbg !2338
  %2 = load i64, ptr %new.addr, align 8, !dbg !2339
  %call = call i64 @raw_atomic64_cmpxchg_relaxed(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12, !dbg !2340
  ret i64 %call, !dbg !2341
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_cmpxchg_relaxed(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2342 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2346, metadata !DIExpression()), !dbg !2349
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2347, metadata !DIExpression()), !dbg !2350
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2348, metadata !DIExpression()), !dbg !2351
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2352
  %1 = load i64, ptr %old.addr, align 8, !dbg !2353
  %2 = load i64, ptr %new.addr, align 8, !dbg !2354
  %call = call i64 @arch_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12, !dbg !2355
  ret i64 %call, !dbg !2356
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2357 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  %__ret = alloca i64, align 8
  %__old = alloca i64, align 8
  %__new = alloca i64, align 8
  %__ptr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2359, metadata !DIExpression()), !dbg !2367
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2360, metadata !DIExpression()), !dbg !2368
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2361, metadata !DIExpression()), !dbg !2369
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ret) #11, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__ret, metadata !2362, metadata !DIExpression()), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__old) #11, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__old, metadata !2364, metadata !DIExpression()), !dbg !2370
  %0 = load i64, ptr %old.addr, align 8, !dbg !2370
  store i64 %0, ptr %__old, align 8, !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__new) #11, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__new, metadata !2365, metadata !DIExpression()), !dbg !2370
  %1 = load i64, ptr %new.addr, align 8, !dbg !2370
  store i64 %1, ptr %__new, align 8, !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %__ptr) #11, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %__ptr, metadata !2366, metadata !DIExpression()), !dbg !2370
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2370
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %2, i32 0, i32 0, !dbg !2370
  store ptr %counter, ptr %__ptr, align 8, !dbg !2370
  %3 = load ptr, ptr %__ptr, align 8, !dbg !2370
  %4 = load i64, ptr %__new, align 8, !dbg !2370
  %5 = load i64, ptr %__old, align 8, !dbg !2370
  %6 = call i64 asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; cmpxchgq $2,$1", "={ax},=*m,r,0,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %3, i64 %4, i64 %5, ptr elementtype(i64) %3) #11, !dbg !2370, !srcloc !2371
  store i64 %6, ptr %__ret, align 8, !dbg !2370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ptr) #11, !dbg !2370
  %7 = load i64, ptr %__ret, align 8, !dbg !2370
  store i64 %7, ptr %tmp, align 8, !dbg !2370
  call void @llvm.lifetime.end.p0(i64 8, ptr %__new) #11, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %__old) #11, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %__ret) #11, !dbg !2372
  %8 = load i64, ptr %tmp, align 8, !dbg !2370
  ret i64 %8, !dbg !2373
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @desc_push_tail(ptr noundef %rb, i64 noundef %tail_id) #0 align 16 !dbg !2374 {
entry:
  %retval = alloca i1, align 1
  %rb.addr = alloca ptr, align 8
  %tail_id.addr = alloca i64, align 8
  %desc_ring = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %desc = alloca %struct.prb_desc, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2376, metadata !DIExpression()), !dbg !2381
  store i64 %tail_id, ptr %tail_id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tail_id.addr, metadata !2377, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !2378, metadata !DIExpression()), !dbg !2384
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2385
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !2386
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !2384
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !2387
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !2379, metadata !DIExpression()), !dbg !2388
  call void @llvm.lifetime.start.p0(i64 24, ptr %desc) #11, !dbg !2389
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2380, metadata !DIExpression()), !dbg !2390
  %1 = load ptr, ptr %desc_ring, align 8, !dbg !2391
  %2 = load i64, ptr %tail_id.addr, align 8, !dbg !2392
  %call = call i32 @desc_read(ptr noundef %1, i64 noundef %2, ptr noundef %desc, ptr noundef null, ptr noundef null) #12, !dbg !2393
  store i32 %call, ptr %d_state, align 4, !dbg !2394
  %3 = load i32, ptr %d_state, align 4, !dbg !2395
  switch i32 %3, label %sw.epilog [
    i32 -1, label %sw.bb
    i32 0, label %sw.bb5
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
    i32 3, label %sw.epilog
  ], !dbg !2396

sw.bb:                                            ; preds = %entry
  %state_var = getelementptr inbounds %struct.prb_desc, ptr %desc, i32 0, i32 0, !dbg !2397
  %call2 = call i64 @atomic_long_read(ptr noundef %state_var) #12, !dbg !2397
  %and = and i64 %call2, 4611686018427387903, !dbg !2397
  %4 = load i64, ptr %tail_id.addr, align 8, !dbg !2400
  %5 = load ptr, ptr %desc_ring, align 8, !dbg !2400
  %count_bits = getelementptr inbounds %struct.prb_desc_ring, ptr %5, i32 0, i32 0, !dbg !2400
  %6 = load i32, ptr %count_bits, align 8, !dbg !2400
  %shl = shl i32 1, %6, !dbg !2400
  %conv = zext i32 %shl to i64, !dbg !2400
  %sub = sub i64 %4, %conv, !dbg !2400
  %and3 = and i64 %sub, 4611686018427387903, !dbg !2400
  %cmp = icmp eq i64 %and, %and3, !dbg !2401
  br i1 %cmp, label %if.then, label %if.end, !dbg !2402

if.then:                                          ; preds = %sw.bb
  store i1 false, ptr %retval, align 1, !dbg !2403
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2403

if.end:                                           ; preds = %sw.bb
  store i1 true, ptr %retval, align 1, !dbg !2405
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2405

sw.bb5:                                           ; preds = %entry, %entry
  store i1 false, ptr %retval, align 1, !dbg !2406
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2406

sw.bb6:                                           ; preds = %entry
  %7 = load ptr, ptr %desc_ring, align 8, !dbg !2407
  %8 = load i64, ptr %tail_id.addr, align 8, !dbg !2408
  call void @desc_make_reusable(ptr noundef %7, i64 noundef %8) #12, !dbg !2409
  br label %sw.epilog, !dbg !2410

sw.epilog:                                        ; preds = %entry, %entry, %sw.bb6
  %9 = load ptr, ptr %rb.addr, align 8, !dbg !2411
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %desc, i32 0, i32 1, !dbg !2413
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %text_blk_lpos, i32 0, i32 1, !dbg !2414
  %10 = load i64, ptr %next, align 8, !dbg !2414
  %call7 = call zeroext i1 @data_push_tail(ptr noundef %9, i64 noundef %10) #12, !dbg !2415
  br i1 %call7, label %if.end9, label %if.then8, !dbg !2416

if.then8:                                         ; preds = %sw.epilog
  store i1 false, ptr %retval, align 1, !dbg !2417
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2417

if.end9:                                          ; preds = %sw.epilog
  %11 = load ptr, ptr %desc_ring, align 8, !dbg !2418
  %12 = load i64, ptr %tail_id.addr, align 8, !dbg !2419
  %add = add i64 %12, 1, !dbg !2419
  %and10 = and i64 %add, 4611686018427387903, !dbg !2419
  %call11 = call i32 @desc_read(ptr noundef %11, i64 noundef %and10, ptr noundef %desc, ptr noundef null, ptr noundef null) #12, !dbg !2420
  store i32 %call11, ptr %d_state, align 4, !dbg !2421
  %13 = load i32, ptr %d_state, align 4, !dbg !2422
  %cmp12 = icmp eq i32 %13, 2, !dbg !2424
  br i1 %cmp12, label %if.then16, label %lor.lhs.false, !dbg !2425

lor.lhs.false:                                    ; preds = %if.end9
  %14 = load i32, ptr %d_state, align 4, !dbg !2426
  %cmp14 = icmp eq i32 %14, 3, !dbg !2427
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !2428

if.then16:                                        ; preds = %lor.lhs.false, %if.end9
  %15 = load ptr, ptr %desc_ring, align 8, !dbg !2429
  %tail_id17 = getelementptr inbounds %struct.prb_desc_ring, ptr %15, i32 0, i32 4, !dbg !2431
  %16 = load i64, ptr %tail_id.addr, align 8, !dbg !2432
  %17 = load i64, ptr %tail_id.addr, align 8, !dbg !2433
  %add18 = add i64 %17, 1, !dbg !2433
  %and19 = and i64 %add18, 4611686018427387903, !dbg !2433
  %call20 = call i64 @atomic_long_cmpxchg(ptr noundef %tail_id17, i64 noundef %16, i64 noundef %and19) #12, !dbg !2434
  br label %if.end36, !dbg !2435

if.else:                                          ; preds = %lor.lhs.false
  br label %do.body, !dbg !2436

do.body:                                          ; preds = %if.else
  br label %do.body21, !dbg !2438

do.body21:                                        ; preds = %do.body
  br label %do.cond, !dbg !2440

do.cond:                                          ; preds = %do.body21
  br label %do.end, !dbg !2440

do.end:                                           ; preds = %do.cond
  br label %do.body22, !dbg !2438

do.body22:                                        ; preds = %do.end
  br label %do.body23, !dbg !2442

do.body23:                                        ; preds = %do.body22
  br label %do.cond24, !dbg !2444

do.cond24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !2444

do.end25:                                         ; preds = %do.cond24
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2442, !srcloc !2446
  br label %do.cond26, !dbg !2442

do.cond26:                                        ; preds = %do.end25
  br label %do.end27, !dbg !2442

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !2438

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !2438

do.end29:                                         ; preds = %do.cond28
  %18 = load ptr, ptr %desc_ring, align 8, !dbg !2447
  %tail_id30 = getelementptr inbounds %struct.prb_desc_ring, ptr %18, i32 0, i32 4, !dbg !2449
  %call31 = call i64 @atomic_long_read(ptr noundef %tail_id30) #12, !dbg !2450
  %19 = load i64, ptr %tail_id.addr, align 8, !dbg !2451
  %cmp32 = icmp eq i64 %call31, %19, !dbg !2452
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !2453

if.then34:                                        ; preds = %do.end29
  store i1 false, ptr %retval, align 1, !dbg !2454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2454

if.end35:                                         ; preds = %do.end29
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then16
  store i1 true, ptr %retval, align 1, !dbg !2455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2455

cleanup:                                          ; preds = %if.end36, %if.then34, %if.then8, %sw.bb5, %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 24, ptr %desc) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !2456
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !2456
  %20 = load i1, ptr %retval, align 1, !dbg !2456
  ret i1 %20, !dbg !2456
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @get_desc_state(i64 noundef %id, i64 noundef %state_val) #0 align 16 !dbg !2457 {
entry:
  %retval = alloca i32, align 4
  %id.addr = alloca i64, align 8
  %state_val.addr = alloca i64, align 8
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2461, metadata !DIExpression()), !dbg !2463
  store i64 %state_val, ptr %state_val.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_val.addr, metadata !2462, metadata !DIExpression()), !dbg !2464
  %0 = load i64, ptr %id.addr, align 8, !dbg !2465
  %1 = load i64, ptr %state_val.addr, align 8, !dbg !2467
  %and = and i64 %1, 4611686018427387903, !dbg !2467
  %cmp = icmp ne i64 %0, %and, !dbg !2468
  br i1 %cmp, label %if.then, label %if.end, !dbg !2469

if.then:                                          ; preds = %entry
  store i32 -1, ptr %retval, align 4, !dbg !2470
  br label %return, !dbg !2470

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %state_val.addr, align 8, !dbg !2471
  %shr = lshr i64 %2, 62, !dbg !2471
  %and1 = and i64 3, %shr, !dbg !2471
  %conv = trunc i64 %and1 to i32, !dbg !2471
  store i32 %conv, ptr %retval, align 4, !dbg !2472
  br label %return, !dbg !2472

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2473
  ret i32 %3, !dbg !2473
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2474 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2476, metadata !DIExpression()), !dbg !2479
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2477, metadata !DIExpression()), !dbg !2480
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2478, metadata !DIExpression()), !dbg !2481
  br label %do.body, !dbg !2482

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2483

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2485
  call void @instrument_atomic_read_write(ptr noundef %0, i64 noundef 8) #12, !dbg !2486
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2487
  %2 = load i64, ptr %old.addr, align 8, !dbg !2488
  %3 = load i64, ptr %new.addr, align 8, !dbg !2489
  %call = call i64 @raw_atomic_long_cmpxchg(ptr noundef %1, i64 noundef %2, i64 noundef %3) #12, !dbg !2490
  ret i64 %call, !dbg !2491
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2492 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2494, metadata !DIExpression()), !dbg !2497
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2495, metadata !DIExpression()), !dbg !2498
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2496, metadata !DIExpression()), !dbg !2499
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2500
  %1 = load i64, ptr %old.addr, align 8, !dbg !2501
  %2 = load i64, ptr %new.addr, align 8, !dbg !2502
  %call = call i64 @raw_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12, !dbg !2503
  ret i64 %call, !dbg !2504
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_cmpxchg(ptr noundef %v, i64 noundef %old, i64 noundef %new) #3 align 16 !dbg !2505 {
entry:
  %v.addr = alloca ptr, align 8
  %old.addr = alloca i64, align 8
  %new.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2507, metadata !DIExpression()), !dbg !2510
  store i64 %old, ptr %old.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %old.addr, metadata !2508, metadata !DIExpression()), !dbg !2511
  store i64 %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2509, metadata !DIExpression()), !dbg !2512
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2513
  %1 = load i64, ptr %old.addr, align 8, !dbg !2514
  %2 = load i64, ptr %new.addr, align 8, !dbg !2515
  %call = call i64 @arch_atomic64_cmpxchg(ptr noundef %0, i64 noundef %1, i64 noundef %2) #12, !dbg !2516
  ret i64 %call, !dbg !2517
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_inc(ptr noundef %v) #3 align 16 !dbg !2518 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2520, metadata !DIExpression()), !dbg !2521
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2522
  call void @raw_atomic64_inc(ptr noundef %0) #12, !dbg !2523
  ret void, !dbg !2524
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !2525 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2529, metadata !DIExpression()), !dbg !2530
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2531
  call void @arch_atomic64_inc(ptr noundef %0) #12, !dbg !2532
  ret void, !dbg !2533
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_inc(ptr noundef %v) #3 align 16 !dbg !2534 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2536, metadata !DIExpression()), !dbg !2537
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2538
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !2539
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2540
  %counter1 = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !2541
  call void asm sideeffect ".pushsection .smp_locks,\22a\22\0A.balign 4\0A.long 671f - .\0A.popsection\0A671:\0A\09lock; incq $0", "=*m,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %counter, ptr elementtype(i64) %counter1) #11, !dbg !2542, !srcloc !2543
  ret void, !dbg !2544
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2545 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2547, metadata !DIExpression()), !dbg !2549
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2548, metadata !DIExpression()), !dbg !2550
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2551
  %1 = load i64, ptr %size.addr, align 8, !dbg !2552
  %conv = trunc i64 %1 to i32, !dbg !2552
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !2553
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2554
  %3 = load i64, ptr %size.addr, align 8, !dbg !2554
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !2554
  ret void, !dbg !2555
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic_long_read(ptr noundef %v) #3 align 16 !dbg !2556 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2560
  %call = call i64 @raw_atomic64_read(ptr noundef %0) #12, !dbg !2561
  ret i64 %call, !dbg !2562
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #7 align 16 !dbg !2563 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2565, metadata !DIExpression()), !dbg !2567
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2566, metadata !DIExpression()), !dbg !2568
  ret i1 true, !dbg !2569
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @raw_atomic64_read(ptr noundef %v) #3 align 16 !dbg !2570 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2576, metadata !DIExpression()), !dbg !2577
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2578
  %call = call i64 @arch_atomic64_read(ptr noundef %0) #12, !dbg !2579
  ret i64 %call, !dbg !2580
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @arch_atomic64_read(ptr noundef %v) #3 align 16 !dbg !2581 {
entry:
  %v.addr = alloca ptr, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2583, metadata !DIExpression()), !dbg !2584
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2585
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %0, i32 0, i32 0, !dbg !2585
  %1 = load volatile i64, ptr %counter, align 8, !dbg !2585
  ret i64 %1, !dbg !2586
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_write(ptr noundef %v, i64 noundef %size) #3 align 16 !dbg !2587 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2589, metadata !DIExpression()), !dbg !2591
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2590, metadata !DIExpression()), !dbg !2592
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2593
  %1 = load i64, ptr %size.addr, align 8, !dbg !2594
  %conv = trunc i64 %1 to i32, !dbg !2594
  %call = call zeroext i1 @kasan_check_write(ptr noundef %0, i32 noundef %conv) #12, !dbg !2595
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2596
  %3 = load i64, ptr %size.addr, align 8, !dbg !2596
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 5) #12, !dbg !2596
  ret void, !dbg !2597
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic_long_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !2598 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2600, metadata !DIExpression()), !dbg !2602
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2601, metadata !DIExpression()), !dbg !2603
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2604
  %1 = load i64, ptr %i.addr, align 8, !dbg !2605
  call void @raw_atomic64_set(ptr noundef %0, i64 noundef %1) #12, !dbg !2606
  ret void, !dbg !2607
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @raw_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !2608 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2612, metadata !DIExpression()), !dbg !2614
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2613, metadata !DIExpression()), !dbg !2615
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2616
  %1 = load i64, ptr %i.addr, align 8, !dbg !2617
  call void @arch_atomic64_set(ptr noundef %0, i64 noundef %1) #12, !dbg !2618
  ret void, !dbg !2619
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @arch_atomic64_set(ptr noundef %v, i64 noundef %i) #3 align 16 !dbg !2620 {
entry:
  %v.addr = alloca ptr, align 8
  %i.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2622, metadata !DIExpression()), !dbg !2624
  store i64 %i, ptr %i.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2623, metadata !DIExpression()), !dbg !2625
  br label %do.body, !dbg !2626

do.body:                                          ; preds = %entry
  %0 = load i64, ptr %i.addr, align 8, !dbg !2627
  %1 = load ptr, ptr %v.addr, align 8, !dbg !2627
  %counter = getelementptr inbounds %struct.atomic64_t, ptr %1, i32 0, i32 0, !dbg !2627
  store volatile i64 %0, ptr %counter, align 8, !dbg !2627
  br label %do.end, !dbg !2627

do.end:                                           ; preds = %do.body
  ret void, !dbg !2629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @prb_read(ptr noundef %rb, i64 noundef %seq, ptr noundef %r, ptr noundef %line_count) #0 align 16 !dbg !2630 {
entry:
  %retval = alloca i32, align 4
  %rb.addr = alloca ptr, align 8
  %seq.addr = alloca i64, align 8
  %r.addr = alloca ptr, align 8
  %line_count.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %info = alloca ptr, align 8
  %rdesc = alloca ptr, align 8
  %state_var = alloca ptr, align 8
  %desc = alloca %struct.prb_desc, align 8
  %id = alloca i64, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2634, metadata !DIExpression()), !dbg !2645
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !2635, metadata !DIExpression()), !dbg !2646
  store ptr %r, ptr %r.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %r.addr, metadata !2636, metadata !DIExpression()), !dbg !2647
  store ptr %line_count, ptr %line_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line_count.addr, metadata !2637, metadata !DIExpression()), !dbg !2648
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !2649
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !2638, metadata !DIExpression()), !dbg !2650
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2651
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !2652
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !2650
  call void @llvm.lifetime.start.p0(i64 8, ptr %info) #11, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %info, metadata !2639, metadata !DIExpression()), !dbg !2654
  %1 = load ptr, ptr %desc_ring, align 8, !dbg !2655
  %2 = load i64, ptr %seq.addr, align 8, !dbg !2656
  %call = call ptr @to_info(ptr noundef %1, i64 noundef %2) #12, !dbg !2657
  store ptr %call, ptr %info, align 8, !dbg !2654
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdesc) #11, !dbg !2658
  call void @llvm.dbg.declare(metadata ptr %rdesc, metadata !2640, metadata !DIExpression()), !dbg !2659
  %3 = load ptr, ptr %desc_ring, align 8, !dbg !2660
  %4 = load i64, ptr %seq.addr, align 8, !dbg !2661
  %call2 = call ptr @to_desc(ptr noundef %3, i64 noundef %4) #12, !dbg !2662
  store ptr %call2, ptr %rdesc, align 8, !dbg !2659
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_var) #11, !dbg !2663
  call void @llvm.dbg.declare(metadata ptr %state_var, metadata !2641, metadata !DIExpression()), !dbg !2664
  %5 = load ptr, ptr %rdesc, align 8, !dbg !2665
  %state_var3 = getelementptr inbounds %struct.prb_desc, ptr %5, i32 0, i32 0, !dbg !2666
  store ptr %state_var3, ptr %state_var, align 8, !dbg !2664
  call void @llvm.lifetime.start.p0(i64 24, ptr %desc) #11, !dbg !2667
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2642, metadata !DIExpression()), !dbg !2668
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2643, metadata !DIExpression()), !dbg !2670
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #11, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2644, metadata !DIExpression()), !dbg !2672
  %6 = load ptr, ptr %state_var, align 8, !dbg !2673
  %call4 = call i64 @atomic_long_read(ptr noundef %6) #12, !dbg !2673
  %and = and i64 %call4, 4611686018427387903, !dbg !2673
  store i64 %and, ptr %id, align 8, !dbg !2674
  %7 = load ptr, ptr %desc_ring, align 8, !dbg !2675
  %8 = load i64, ptr %id, align 8, !dbg !2676
  %9 = load i64, ptr %seq.addr, align 8, !dbg !2677
  %call5 = call i32 @desc_read_finalized_seq(ptr noundef %7, i64 noundef %8, i64 noundef %9, ptr noundef %desc) #12, !dbg !2678
  store i32 %call5, ptr %err, align 4, !dbg !2679
  %10 = load i32, ptr %err, align 4, !dbg !2680
  %tobool = icmp ne i32 %10, 0, !dbg !2680
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2682

lor.lhs.false:                                    ; preds = %entry
  %11 = load ptr, ptr %r.addr, align 8, !dbg !2683
  %tobool6 = icmp ne ptr %11, null, !dbg !2683
  br i1 %tobool6, label %if.end, label %if.then, !dbg !2684

if.then:                                          ; preds = %lor.lhs.false, %entry
  %12 = load i32, ptr %err, align 4, !dbg !2685
  store i32 %12, ptr %retval, align 4, !dbg !2686
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2686

if.end:                                           ; preds = %lor.lhs.false
  %13 = load ptr, ptr %r.addr, align 8, !dbg !2687
  %info7 = getelementptr inbounds %struct.printk_record, ptr %13, i32 0, i32 0, !dbg !2689
  %14 = load ptr, ptr %info7, align 8, !dbg !2689
  %tobool8 = icmp ne ptr %14, null, !dbg !2687
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2690

if.then9:                                         ; preds = %if.end
  %15 = load ptr, ptr %r.addr, align 8, !dbg !2691
  %info10 = getelementptr inbounds %struct.printk_record, ptr %15, i32 0, i32 0, !dbg !2692
  %16 = load ptr, ptr %info10, align 8, !dbg !2692
  %17 = load ptr, ptr %info, align 8, !dbg !2693
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %16, ptr align 8 %17, i64 88, i1 false), !dbg !2694
  br label %if.end11, !dbg !2694

if.end11:                                         ; preds = %if.then9, %if.end
  %18 = load ptr, ptr %rb.addr, align 8, !dbg !2695
  %text_data_ring = getelementptr inbounds %struct.printk_ringbuffer, ptr %18, i32 0, i32 1, !dbg !2697
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %desc, i32 0, i32 1, !dbg !2698
  %19 = load ptr, ptr %info, align 8, !dbg !2699
  %text_len = getelementptr inbounds %struct.printk_info, ptr %19, i32 0, i32 2, !dbg !2700
  %20 = load i16, ptr %text_len, align 8, !dbg !2700
  %21 = load ptr, ptr %r.addr, align 8, !dbg !2701
  %text_buf = getelementptr inbounds %struct.printk_record, ptr %21, i32 0, i32 1, !dbg !2702
  %22 = load ptr, ptr %text_buf, align 8, !dbg !2702
  %23 = load ptr, ptr %r.addr, align 8, !dbg !2703
  %text_buf_size = getelementptr inbounds %struct.printk_record, ptr %23, i32 0, i32 2, !dbg !2704
  %24 = load i32, ptr %text_buf_size, align 8, !dbg !2704
  %25 = load ptr, ptr %line_count.addr, align 8, !dbg !2705
  %call12 = call zeroext i1 @copy_data(ptr noundef %text_data_ring, ptr noundef %text_blk_lpos, i16 noundef zeroext %20, ptr noundef %22, i32 noundef %24, ptr noundef %25) #12, !dbg !2706
  br i1 %call12, label %if.end14, label %if.then13, !dbg !2707

if.then13:                                        ; preds = %if.end11
  store i32 -2, ptr %retval, align 4, !dbg !2708
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2708

if.end14:                                         ; preds = %if.end11
  %26 = load ptr, ptr %desc_ring, align 8, !dbg !2710
  %27 = load i64, ptr %id, align 8, !dbg !2711
  %28 = load i64, ptr %seq.addr, align 8, !dbg !2712
  %call15 = call i32 @desc_read_finalized_seq(ptr noundef %26, i64 noundef %27, i64 noundef %28, ptr noundef %desc) #12, !dbg !2713
  store i32 %call15, ptr %retval, align 4, !dbg !2714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2714

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 24, ptr %desc) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_var) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdesc) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %info) #11, !dbg !2715
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !2715
  %29 = load i32, ptr %retval, align 4, !dbg !2715
  ret i32 %29, !dbg !2715
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prb_first_seq(ptr noundef %rb) #0 align 16 !dbg !2716 {
entry:
  %rb.addr = alloca ptr, align 8
  %desc_ring = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %desc = alloca %struct.prb_desc, align 8
  %id = alloca i64, align 8
  %seq = alloca i64, align 8
  store ptr %rb, ptr %rb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rb.addr, metadata !2718, metadata !DIExpression()), !dbg !2724
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc_ring) #11, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %desc_ring, metadata !2719, metadata !DIExpression()), !dbg !2726
  %0 = load ptr, ptr %rb.addr, align 8, !dbg !2727
  %desc_ring1 = getelementptr inbounds %struct.printk_ringbuffer, ptr %0, i32 0, i32 0, !dbg !2728
  store ptr %desc_ring1, ptr %desc_ring, align 8, !dbg !2726
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !2729
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !2720, metadata !DIExpression()), !dbg !2730
  call void @llvm.lifetime.start.p0(i64 24, ptr %desc) #11, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %desc, metadata !2721, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr %id) #11, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %id, metadata !2722, metadata !DIExpression()), !dbg !2734
  call void @llvm.lifetime.start.p0(i64 8, ptr %seq) #11, !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !2723, metadata !DIExpression()), !dbg !2736
  br label %for.cond, !dbg !2737

for.cond:                                         ; preds = %do.end13, %entry
  %1 = load ptr, ptr %rb.addr, align 8, !dbg !2738
  %desc_ring2 = getelementptr inbounds %struct.printk_ringbuffer, ptr %1, i32 0, i32 0, !dbg !2742
  %tail_id = getelementptr inbounds %struct.prb_desc_ring, ptr %desc_ring2, i32 0, i32 4, !dbg !2743
  %call = call i64 @atomic_long_read(ptr noundef %tail_id) #12, !dbg !2744
  store i64 %call, ptr %id, align 8, !dbg !2745
  %2 = load ptr, ptr %desc_ring, align 8, !dbg !2746
  %3 = load i64, ptr %id, align 8, !dbg !2747
  %call3 = call i32 @desc_read(ptr noundef %2, i64 noundef %3, ptr noundef %desc, ptr noundef %seq, ptr noundef null) #12, !dbg !2748
  store i32 %call3, ptr %d_state, align 4, !dbg !2749
  %4 = load i32, ptr %d_state, align 4, !dbg !2750
  %cmp = icmp eq i32 %4, 2, !dbg !2752
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2753

lor.lhs.false:                                    ; preds = %for.cond
  %5 = load i32, ptr %d_state, align 4, !dbg !2754
  %cmp4 = icmp eq i32 %5, 3, !dbg !2755
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2756

if.then:                                          ; preds = %lor.lhs.false, %for.cond
  br label %for.end, !dbg !2757

if.end:                                           ; preds = %lor.lhs.false
  br label %do.body, !dbg !2758

do.body:                                          ; preds = %if.end
  br label %do.body5, !dbg !2759

do.body5:                                         ; preds = %do.body
  br label %do.cond, !dbg !2761

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !2761

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !2759

do.body6:                                         ; preds = %do.end
  br label %do.body7, !dbg !2763

do.body7:                                         ; preds = %do.body6
  br label %do.cond8, !dbg !2765

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2765

do.end9:                                          ; preds = %do.cond8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2763, !srcloc !2767
  br label %do.cond10, !dbg !2763

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !2763

do.end11:                                         ; preds = %do.cond10
  br label %do.cond12, !dbg !2759

do.cond12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2759

do.end13:                                         ; preds = %do.cond12
  br label %for.cond, !dbg !2768, !llvm.loop !2769

for.end:                                          ; preds = %if.then
  %6 = load i64, ptr %seq, align 8, !dbg !2772
  call void @llvm.lifetime.end.p0(i64 8, ptr %seq) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 8, ptr %id) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 24, ptr %desc) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc_ring) #11, !dbg !2773
  ret i64 %6, !dbg !2774
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @desc_read_finalized_seq(ptr noundef %desc_ring, i64 noundef %id, i64 noundef %seq, ptr noundef %desc_out) #0 align 16 !dbg !2775 {
entry:
  %retval = alloca i32, align 4
  %desc_ring.addr = alloca ptr, align 8
  %id.addr = alloca i64, align 8
  %seq.addr = alloca i64, align 8
  %desc_out.addr = alloca ptr, align 8
  %blk_lpos = alloca ptr, align 8
  %d_state = alloca i32, align 4
  %s = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %desc_ring, ptr %desc_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_ring.addr, metadata !2779, metadata !DIExpression()), !dbg !2786
  store i64 %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2780, metadata !DIExpression()), !dbg !2787
  store i64 %seq, ptr %seq.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %seq.addr, metadata !2781, metadata !DIExpression()), !dbg !2788
  store ptr %desc_out, ptr %desc_out.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %desc_out.addr, metadata !2782, metadata !DIExpression()), !dbg !2789
  call void @llvm.lifetime.start.p0(i64 8, ptr %blk_lpos) #11, !dbg !2790
  call void @llvm.dbg.declare(metadata ptr %blk_lpos, metadata !2783, metadata !DIExpression()), !dbg !2791
  %0 = load ptr, ptr %desc_out.addr, align 8, !dbg !2792
  %text_blk_lpos = getelementptr inbounds %struct.prb_desc, ptr %0, i32 0, i32 1, !dbg !2793
  store ptr %text_blk_lpos, ptr %blk_lpos, align 8, !dbg !2791
  call void @llvm.lifetime.start.p0(i64 4, ptr %d_state) #11, !dbg !2794
  call void @llvm.dbg.declare(metadata ptr %d_state, metadata !2784, metadata !DIExpression()), !dbg !2795
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #11, !dbg !2796
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2785, metadata !DIExpression()), !dbg !2797
  %1 = load ptr, ptr %desc_ring.addr, align 8, !dbg !2798
  %2 = load i64, ptr %id.addr, align 8, !dbg !2799
  %3 = load ptr, ptr %desc_out.addr, align 8, !dbg !2800
  %call = call i32 @desc_read(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %s, ptr noundef null) #12, !dbg !2801
  store i32 %call, ptr %d_state, align 4, !dbg !2802
  %4 = load i32, ptr %d_state, align 4, !dbg !2803
  %cmp = icmp eq i32 %4, -1, !dbg !2805
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2806

lor.lhs.false:                                    ; preds = %entry
  %5 = load i32, ptr %d_state, align 4, !dbg !2807
  %cmp1 = icmp eq i32 %5, 0, !dbg !2808
  br i1 %cmp1, label %if.then, label %lor.lhs.false2, !dbg !2809

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %6 = load i32, ptr %d_state, align 4, !dbg !2810
  %cmp3 = icmp eq i32 %6, 1, !dbg !2811
  br i1 %cmp3, label %if.then, label %lor.lhs.false4, !dbg !2812

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %7 = load i64, ptr %s, align 8, !dbg !2813
  %8 = load i64, ptr %seq.addr, align 8, !dbg !2814
  %cmp5 = icmp ne i64 %7, %8, !dbg !2815
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2816

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2817
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2817

if.end:                                           ; preds = %lor.lhs.false4
  %9 = load i32, ptr %d_state, align 4, !dbg !2819
  %cmp6 = icmp eq i32 %9, 3, !dbg !2821
  br i1 %cmp6, label %if.then10, label %lor.lhs.false7, !dbg !2822

lor.lhs.false7:                                   ; preds = %if.end
  %10 = load ptr, ptr %blk_lpos, align 8, !dbg !2823
  %begin = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %10, i32 0, i32 0, !dbg !2824
  %11 = load i64, ptr %begin, align 8, !dbg !2824
  %cmp8 = icmp eq i64 %11, 1, !dbg !2825
  br i1 %cmp8, label %land.lhs.true, label %if.end11, !dbg !2826

land.lhs.true:                                    ; preds = %lor.lhs.false7
  %12 = load ptr, ptr %blk_lpos, align 8, !dbg !2827
  %next = getelementptr inbounds %struct.prb_data_blk_lpos, ptr %12, i32 0, i32 1, !dbg !2828
  %13 = load i64, ptr %next, align 8, !dbg !2828
  %cmp9 = icmp eq i64 %13, 1, !dbg !2829
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2830

if.then10:                                        ; preds = %land.lhs.true, %if.end
  store i32 -2, ptr %retval, align 4, !dbg !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2831

if.end11:                                         ; preds = %land.lhs.true, %lor.lhs.false7
  store i32 0, ptr %retval, align 4, !dbg !2833
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2833

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #11, !dbg !2834
  call void @llvm.lifetime.end.p0(i64 4, ptr %d_state) #11, !dbg !2834
  call void @llvm.lifetime.end.p0(i64 8, ptr %blk_lpos) #11, !dbg !2834
  %14 = load i32, ptr %retval, align 4, !dbg !2834
  ret i32 %14, !dbg !2834
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @copy_data(ptr noundef %data_ring, ptr noundef %blk_lpos, i16 noundef zeroext %len, ptr noundef %buf, i32 noundef %buf_size, ptr noundef %line_count) #0 align 16 !dbg !2835 {
entry:
  %retval = alloca i1, align 1
  %data_ring.addr = alloca ptr, align 8
  %blk_lpos.addr = alloca ptr, align 8
  %len.addr = alloca i16, align 2
  %buf.addr = alloca ptr, align 8
  %buf_size.addr = alloca i32, align 4
  %line_count.addr = alloca ptr, align 8
  %data_size = alloca i32, align 4
  %data = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__UNIQUE_ID___x148 = alloca i32, align 4
  %__UNIQUE_ID___y149 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %data_ring, ptr %data_ring.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data_ring.addr, metadata !2839, metadata !DIExpression()), !dbg !2850
  store ptr %blk_lpos, ptr %blk_lpos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %blk_lpos.addr, metadata !2840, metadata !DIExpression()), !dbg !2851
  store i16 %len, ptr %len.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2841, metadata !DIExpression()), !dbg !2852
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2842, metadata !DIExpression()), !dbg !2853
  store i32 %buf_size, ptr %buf_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %buf_size.addr, metadata !2843, metadata !DIExpression()), !dbg !2854
  store ptr %line_count, ptr %line_count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %line_count.addr, metadata !2844, metadata !DIExpression()), !dbg !2855
  call void @llvm.lifetime.start.p0(i64 4, ptr %data_size) #11, !dbg !2856
  call void @llvm.dbg.declare(metadata ptr %data_size, metadata !2845, metadata !DIExpression()), !dbg !2857
  call void @llvm.lifetime.start.p0(i64 8, ptr %data) #11, !dbg !2858
  call void @llvm.dbg.declare(metadata ptr %data, metadata !2846, metadata !DIExpression()), !dbg !2859
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2860
  %tobool = icmp ne ptr %0, null, !dbg !2860
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true, !dbg !2862

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %buf_size.addr, align 4, !dbg !2863
  %tobool1 = icmp ne i32 %1, 0, !dbg !2863
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !2864

land.lhs.true:                                    ; preds = %lor.lhs.false, %entry
  %2 = load ptr, ptr %line_count.addr, align 8, !dbg !2865
  %tobool2 = icmp ne ptr %2, null, !dbg !2865
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2866

if.then:                                          ; preds = %land.lhs.true
  store i1 true, ptr %retval, align 1, !dbg !2867
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2867

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false
  %3 = load ptr, ptr %data_ring.addr, align 8, !dbg !2868
  %4 = load ptr, ptr %blk_lpos.addr, align 8, !dbg !2869
  %call = call ptr @get_data(ptr noundef %3, ptr noundef %4, ptr noundef %data_size) #12, !dbg !2870
  store ptr %call, ptr %data, align 8, !dbg !2871
  %5 = load ptr, ptr %data, align 8, !dbg !2872
  %tobool3 = icmp ne ptr %5, null, !dbg !2872
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2874

if.then4:                                         ; preds = %if.end
  store i1 false, ptr %retval, align 1, !dbg !2875
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2875

if.end5:                                          ; preds = %if.end
  %6 = load i32, ptr %data_size, align 4, !dbg !2876
  %7 = load i16, ptr %len.addr, align 2, !dbg !2878
  %conv = zext i16 %7 to i32, !dbg !2879
  %cmp = icmp ult i32 %6, %conv, !dbg !2880
  br i1 %cmp, label %if.then7, label %if.end8, !dbg !2881

if.then7:                                         ; preds = %if.end5
  store i1 false, ptr %retval, align 1, !dbg !2882
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2882

if.end8:                                          ; preds = %if.end5
  %8 = load ptr, ptr %line_count.addr, align 8, !dbg !2883
  %tobool9 = icmp ne ptr %8, null, !dbg !2883
  br i1 %tobool9, label %if.then10, label %if.end13, !dbg !2885

if.then10:                                        ; preds = %if.end8
  %9 = load ptr, ptr %data, align 8, !dbg !2886
  %10 = load i16, ptr %len.addr, align 2, !dbg !2887
  %conv11 = zext i16 %10 to i32, !dbg !2887
  %call12 = call i32 @count_lines(ptr noundef %9, i32 noundef %conv11) #12, !dbg !2888
  %11 = load ptr, ptr %line_count.addr, align 8, !dbg !2889
  store i32 %call12, ptr %11, align 4, !dbg !2890
  br label %if.end13, !dbg !2891

if.end13:                                         ; preds = %if.then10, %if.end8
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !2892
  %tobool14 = icmp ne ptr %12, null, !dbg !2892
  br i1 %tobool14, label %lor.lhs.false15, label %if.then17, !dbg !2894

lor.lhs.false15:                                  ; preds = %if.end13
  %13 = load i32, ptr %buf_size.addr, align 4, !dbg !2895
  %tobool16 = icmp ne i32 %13, 0, !dbg !2895
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2896

if.then17:                                        ; preds = %lor.lhs.false15, %if.end13
  store i1 true, ptr %retval, align 1, !dbg !2897
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2897

if.end18:                                         ; preds = %lor.lhs.false15
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___x148) #11, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___x148, metadata !2847, metadata !DIExpression()), !dbg !2898
  %14 = load i32, ptr %buf_size.addr, align 4, !dbg !2898
  store i32 %14, ptr %__UNIQUE_ID___x148, align 4, !dbg !2898
  call void @llvm.lifetime.start.p0(i64 4, ptr %__UNIQUE_ID___y149) #11, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___y149, metadata !2849, metadata !DIExpression()), !dbg !2898
  %15 = load i16, ptr %len.addr, align 2, !dbg !2898
  %conv19 = zext i16 %15 to i32, !dbg !2898
  store i32 %conv19, ptr %__UNIQUE_ID___y149, align 4, !dbg !2898
  %16 = load i32, ptr %__UNIQUE_ID___x148, align 4, !dbg !2898
  %17 = load i32, ptr %__UNIQUE_ID___y149, align 4, !dbg !2898
  %cmp20 = icmp ult i32 %16, %17, !dbg !2898
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !2898

cond.true:                                        ; preds = %if.end18
  %18 = load i32, ptr %__UNIQUE_ID___x148, align 4, !dbg !2898
  br label %cond.end, !dbg !2898

cond.false:                                       ; preds = %if.end18
  %19 = load i32, ptr %__UNIQUE_ID___y149, align 4, !dbg !2898
  br label %cond.end, !dbg !2898

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !2898
  store i32 %cond, ptr %tmp, align 4, !dbg !2898
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___y149) #11, !dbg !2899
  call void @llvm.lifetime.end.p0(i64 4, ptr %__UNIQUE_ID___x148) #11, !dbg !2899
  %20 = load i32, ptr %tmp, align 4, !dbg !2898
  store i32 %20, ptr %data_size, align 4, !dbg !2900
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !2901
  %arrayidx = getelementptr i8, ptr %21, i64 0, !dbg !2901
  %22 = load ptr, ptr %data, align 8, !dbg !2902
  %23 = load i32, ptr %data_size, align 4, !dbg !2903
  %conv22 = zext i32 %23 to i64, !dbg !2903
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %arrayidx, ptr align 1 %22, i64 %conv22, i1 false), !dbg !2904
  store i1 true, ptr %retval, align 1, !dbg !2905
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2905

cleanup:                                          ; preds = %cond.end, %if.then17, %if.then7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %data) #11, !dbg !2906
  call void @llvm.lifetime.end.p0(i64 4, ptr %data_size) #11, !dbg !2906
  %24 = load i1, ptr %retval, align 1, !dbg !2906
  ret i1 %24, !dbg !2906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @count_lines(ptr noundef %text, i32 noundef %text_size) #0 align 16 !dbg !2907 {
entry:
  %text.addr = alloca ptr, align 8
  %text_size.addr = alloca i32, align 4
  %next_size = alloca i32, align 4
  %line_count = alloca i32, align 4
  %next = alloca ptr, align 8
  store ptr %text, ptr %text.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %text.addr, metadata !2911, metadata !DIExpression()), !dbg !2916
  store i32 %text_size, ptr %text_size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %text_size.addr, metadata !2912, metadata !DIExpression()), !dbg !2917
  call void @llvm.lifetime.start.p0(i64 4, ptr %next_size) #11, !dbg !2918
  call void @llvm.dbg.declare(metadata ptr %next_size, metadata !2913, metadata !DIExpression()), !dbg !2919
  %0 = load i32, ptr %text_size.addr, align 4, !dbg !2920
  store i32 %0, ptr %next_size, align 4, !dbg !2919
  call void @llvm.lifetime.start.p0(i64 4, ptr %line_count) #11, !dbg !2921
  call void @llvm.dbg.declare(metadata ptr %line_count, metadata !2914, metadata !DIExpression()), !dbg !2922
  store i32 1, ptr %line_count, align 4, !dbg !2922
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #11, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2915, metadata !DIExpression()), !dbg !2924
  %1 = load ptr, ptr %text.addr, align 8, !dbg !2925
  store ptr %1, ptr %next, align 8, !dbg !2924
  br label %while.cond, !dbg !2926

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i32, ptr %next_size, align 4, !dbg !2927
  %tobool = icmp ne i32 %2, 0, !dbg !2926
  br i1 %tobool, label %while.body, label %while.end, !dbg !2926

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %next, align 8, !dbg !2928
  %4 = load i32, ptr %next_size, align 4, !dbg !2930
  %conv = zext i32 %4 to i64, !dbg !2930
  %call = call ptr @memchr(ptr noundef %3, i32 noundef 10, i64 noundef %conv) #12, !dbg !2931
  store ptr %call, ptr %next, align 8, !dbg !2932
  %5 = load ptr, ptr %next, align 8, !dbg !2933
  %tobool1 = icmp ne ptr %5, null, !dbg !2933
  br i1 %tobool1, label %if.end, label %if.then, !dbg !2935

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !2936

if.end:                                           ; preds = %while.body
  %6 = load i32, ptr %line_count, align 4, !dbg !2937
  %inc = add i32 %6, 1, !dbg !2937
  store i32 %inc, ptr %line_count, align 4, !dbg !2937
  %7 = load ptr, ptr %next, align 8, !dbg !2938
  %incdec.ptr = getelementptr i8, ptr %7, i32 1, !dbg !2938
  store ptr %incdec.ptr, ptr %next, align 8, !dbg !2938
  %8 = load i32, ptr %text_size.addr, align 4, !dbg !2939
  %conv2 = zext i32 %8 to i64, !dbg !2939
  %9 = load ptr, ptr %next, align 8, !dbg !2940
  %10 = load ptr, ptr %text.addr, align 8, !dbg !2941
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !2942
  %sub.ptr.rhs.cast = ptrtoint ptr %10 to i64, !dbg !2942
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2942
  %sub = sub i64 %conv2, %sub.ptr.sub, !dbg !2943
  %conv3 = trunc i64 %sub to i32, !dbg !2939
  store i32 %conv3, ptr %next_size, align 4, !dbg !2944
  br label %while.cond, !dbg !2926, !llvm.loop !2945

while.end:                                        ; preds = %if.then, %while.cond
  %11 = load i32, ptr %line_count, align 4, !dbg !2947
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #11, !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr %line_count) #11, !dbg !2948
  call void @llvm.lifetime.end.p0(i64 4, ptr %next_size) #11, !dbg !2948
  ret i32 %11, !dbg !2949
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2950 dso_local ptr @memchr(ptr noundef, i32 noundef, i64 noundef) #10

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noredzone }
attributes #13 = { cold noredzone }

!llvm.dbg.cu = !{!105}
!llvm.module.flags = !{!203, !204, !205, !206, !207, !208, !209, !210}
!llvm.ident = !{!211}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1388, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "kernel/printk/printk_ringbuffer.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d8c7a2912a202cec4c1827495c37b5e8")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 34)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__already_done", scope: !9, file: !2, line: 1389, type: !12, isLocal: true, isDefinition: true)
!9 = distinct !DISubprogram(name: "prb_reserve_in_last", scope: !2, file: !2, line: 1350, type: !10, scopeLine: 1352, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !148)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !15, !20, !99, !70, !27}
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !13, line: 35, baseType: !14)
!13 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!14 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_reserved_entry", file: !17, line: 105, size: 256, elements: !18)
!17 = !DIFile(filename: "kernel/printk/printk_ringbuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c4d444aff932a857a7feb60660e0eb6f")
!18 = !{!19, !96, !97, !98}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !16, file: !17, line: 106, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "printk_ringbuffer", file: !17, line: 87, size: 704, elements: !22)
!22 = !{!23, !87, !95}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "desc_ring", scope: !21, file: !17, line: 88, baseType: !24, size: 384)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_desc_ring", file: !17, line: 72, size: 384, elements: !25)
!25 = !{!26, !28, !50, !84, !85, !86}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "count_bits", scope: !24, file: !17, line: 73, baseType: !27, size: 32)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "descs", scope: !24, file: !17, line: 74, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_desc", file: !17, line: 58, size: 192, elements: !31)
!31 = !{!32, !44}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "state_var", scope: !30, file: !17, line: 59, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !34, line: 13, baseType: !35)
!34 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !13, line: 181, baseType: !36)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 179, size: 64, elements: !37)
!37 = !{!38}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !36, file: !13, line: 180, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !40, line: 22, baseType: !41)
!40 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !42, line: 30, baseType: !43)
!42 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!43 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "text_blk_lpos", scope: !30, file: !17, line: 60, baseType: !45, size: 128, offset: 64)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_data_blk_lpos", file: !17, line: 48, size: 128, elements: !46)
!46 = !{!47, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "begin", scope: !45, file: !17, line: 49, baseType: !48, size: 64)
!48 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !45, file: !17, line: 50, baseType: !48, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "infos", scope: !24, file: !17, line: 75, baseType: !51, size: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "printk_info", file: !17, line: 15, size: 704, elements: !53)
!53 = !{!54, !58, !59, !63, !67, !68, !69, !72}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !52, file: !17, line: 16, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !40, line: 23, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !42, line: 31, baseType: !57)
!57 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "ts_nsec", scope: !52, file: !17, line: 17, baseType: !55, size: 64, offset: 64)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "text_len", scope: !52, file: !17, line: 18, baseType: !60, size: 16, offset: 128)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !40, line: 19, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !42, line: 24, baseType: !62)
!62 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "facility", scope: !52, file: !17, line: 19, baseType: !64, size: 8, offset: 144)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !40, line: 17, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !42, line: 21, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !52, file: !17, line: 20, baseType: !64, size: 5, offset: 152, flags: DIFlagBitField, extraData: i64 152)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !52, file: !17, line: 21, baseType: !64, size: 3, offset: 157, flags: DIFlagBitField, extraData: i64 152)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "caller_id", scope: !52, file: !17, line: 22, baseType: !70, size: 32, offset: 160)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !40, line: 21, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !42, line: 27, baseType: !27)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "dev_info", scope: !52, file: !17, line: 24, baseType: !73, size: 512, offset: 192)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_printk_info", file: !74, line: 27, size: 512, elements: !75)
!74 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!75 = !{!76, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "subsystem", scope: !73, file: !74, line: 28, baseType: !77, size: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 16)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !73, file: !74, line: 29, baseType: !81, size: 384, offset: 128)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 48)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "head_id", scope: !24, file: !17, line: 76, baseType: !33, size: 64, offset: 192)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tail_id", scope: !24, file: !17, line: 77, baseType: !33, size: 64, offset: 256)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "last_finalized_id", scope: !24, file: !17, line: 78, baseType: !33, size: 64, offset: 320)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "text_data_ring", scope: !21, file: !17, line: 89, baseType: !88, size: 256, offset: 384)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_data_ring", file: !17, line: 64, size: 256, elements: !89)
!89 = !{!90, !91, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "size_bits", scope: !88, file: !17, line: 65, baseType: !27, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !88, file: !17, line: 66, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "head_lpos", scope: !88, file: !17, line: 67, baseType: !33, size: 64, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "tail_lpos", scope: !88, file: !17, line: 68, baseType: !33, size: 64, offset: 192)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fail", scope: !21, file: !17, line: 90, baseType: !33, size: 64, offset: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "irqflags", scope: !16, file: !17, line: 107, baseType: !48, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !16, file: !17, line: 108, baseType: !48, size: 64, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "text_space", scope: !16, file: !17, line: 109, baseType: !27, size: 32, offset: 192)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "printk_record", file: !17, line: 41, size: 192, elements: !101)
!101 = !{!102, !103, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !100, file: !17, line: 42, baseType: !51, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "text_buf", scope: !100, file: !17, line: 43, baseType: !92, size: 64, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "text_buf_size", scope: !100, file: !17, line: 44, baseType: !27, size: 32, offset: 128)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF kernel/printk/.printk_ringbuffer.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22kernel/printk/printk_support\22 -D KBUILD_BASENAME=\22printk_ringbuffer\22 -D KBUILD_MODNAME=\22printk_support\22 -D __KBUILD_MODNAME=kmod_printk_support -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o kernel/printk/printk_ringbuffer.ll kernel/printk/printk_ringbuffer.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !106, retainedTypes: !120, globals: !130, splitDebugInlining: false, nameTableKind: None)
!106 = !{!107, !112}
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 10, baseType: !27, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "false", value: 0)
!111 = !DIEnumerator(name: "true", value: 1)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "desc_state", file: !17, line: 113, baseType: !113, size: 32, elements: !114)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !{!115, !116, !117, !118, !119}
!115 = !DIEnumerator(name: "desc_miss", value: -1)
!116 = !DIEnumerator(name: "desc_reserved", value: 0)
!117 = !DIEnumerator(name: "desc_committed", value: 1)
!118 = !DIEnumerator(name: "desc_finalized", value: 2)
!119 = !DIEnumerator(name: "desc_reusable", value: 3)
!120 = !{!48, !55, !121, !122, !27, !124, !125, !128}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !55)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !43)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !39)
!130 = !{!0, !7, !131, !136, !138, !143}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1389, type: !133, isLocal: true, isDefinition: true)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !134)
!134 = !{!135}
!135 = !DISubrange(count: 43)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "__already_done", scope: !9, file: !2, line: 1412, type: !12, isLocal: true, isDefinition: true)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1412, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 46)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1215, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 1)
!148 = !{!149, !150, !151, !152, !153, !154, !156, !157, !158, !159, !160, !164, !165, !171, !172, !177, !180, !183, !186, !187, !191, !194, !197, !200, !201, !202}
!149 = !DILocalVariable(name: "e", arg: 1, scope: !9, file: !2, line: 1350, type: !15)
!150 = !DILocalVariable(name: "rb", arg: 2, scope: !9, file: !2, line: 1350, type: !20)
!151 = !DILocalVariable(name: "r", arg: 3, scope: !9, file: !2, line: 1351, type: !99)
!152 = !DILocalVariable(name: "caller_id", arg: 4, scope: !9, file: !2, line: 1351, type: !70)
!153 = !DILocalVariable(name: "max_size", arg: 5, scope: !9, file: !2, line: 1351, type: !27)
!154 = !DILocalVariable(name: "desc_ring", scope: !9, file: !2, line: 1353, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!156 = !DILocalVariable(name: "info", scope: !9, file: !2, line: 1354, type: !51)
!157 = !DILocalVariable(name: "data_size", scope: !9, file: !2, line: 1355, type: !27)
!158 = !DILocalVariable(name: "d", scope: !9, file: !2, line: 1356, type: !29)
!159 = !DILocalVariable(name: "id", scope: !9, file: !2, line: 1357, type: !48)
!160 = !DILocalVariable(name: "__dummy", scope: !161, file: !2, line: 1359, type: !48)
!161 = distinct !DILexicalBlock(scope: !162, file: !2, line: 1359, column: 2)
!162 = distinct !DILexicalBlock(scope: !163, file: !2, line: 1359, column: 2)
!163 = distinct !DILexicalBlock(scope: !9, file: !2, line: 1359, column: 2)
!164 = !DILocalVariable(name: "__dummy2", scope: !161, file: !2, line: 1359, type: !48)
!165 = !DILocalVariable(name: "__dummy", scope: !166, file: !2, line: 1364, type: !48)
!166 = distinct !DILexicalBlock(scope: !167, file: !2, line: 1364, column: 3)
!167 = distinct !DILexicalBlock(scope: !168, file: !2, line: 1364, column: 3)
!168 = distinct !DILexicalBlock(scope: !169, file: !2, line: 1364, column: 3)
!169 = distinct !DILexicalBlock(scope: !170, file: !2, line: 1363, column: 10)
!170 = distinct !DILexicalBlock(scope: !9, file: !2, line: 1363, column: 6)
!171 = !DILocalVariable(name: "__dummy2", scope: !166, file: !2, line: 1364, type: !48)
!172 = !DILocalVariable(name: "__ret_warn_on", scope: !173, file: !2, line: 1388, type: !113)
!173 = distinct !DILexicalBlock(scope: !174, file: !2, line: 1388, column: 7)
!174 = distinct !DILexicalBlock(scope: !175, file: !2, line: 1388, column: 7)
!175 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1387, column: 39)
!176 = distinct !DILexicalBlock(scope: !9, file: !2, line: 1387, column: 6)
!177 = !DILocalVariable(name: "__flags", scope: !178, file: !2, line: 1388, type: !113)
!178 = distinct !DILexicalBlock(scope: !179, file: !2, line: 1388, column: 7)
!179 = distinct !DILexicalBlock(scope: !173, file: !2, line: 1388, column: 7)
!180 = !DILocalVariable(name: "__ret_do_once", scope: !181, file: !2, line: 1389, type: !12)
!181 = distinct !DILexicalBlock(scope: !182, file: !2, line: 1389, column: 4)
!182 = distinct !DILexicalBlock(scope: !174, file: !2, line: 1388, column: 42)
!183 = !DILocalVariable(name: "__ret_cond", scope: !184, file: !2, line: 1389, type: !12)
!184 = distinct !DILexicalBlock(scope: !185, file: !2, line: 1389, column: 4)
!185 = distinct !DILexicalBlock(scope: !181, file: !2, line: 1389, column: 4)
!186 = !DILocalVariable(name: "__ret_once", scope: !184, file: !2, line: 1389, type: !12)
!187 = !DILocalVariable(name: "__ret_warn_on", scope: !188, file: !2, line: 1411, type: !113)
!188 = distinct !DILexicalBlock(scope: !189, file: !2, line: 1411, column: 7)
!189 = distinct !DILexicalBlock(scope: !190, file: !2, line: 1411, column: 7)
!190 = distinct !DILexicalBlock(scope: !176, file: !2, line: 1402, column: 9)
!191 = !DILocalVariable(name: "__flags", scope: !192, file: !2, line: 1411, type: !113)
!192 = distinct !DILexicalBlock(scope: !193, file: !2, line: 1411, column: 7)
!193 = distinct !DILexicalBlock(scope: !188, file: !2, line: 1411, column: 7)
!194 = !DILocalVariable(name: "__ret_do_once", scope: !195, file: !2, line: 1412, type: !12)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 1412, column: 4)
!196 = distinct !DILexicalBlock(scope: !189, file: !2, line: 1411, column: 49)
!197 = !DILocalVariable(name: "__ret_cond", scope: !198, file: !2, line: 1412, type: !12)
!198 = distinct !DILexicalBlock(scope: !199, file: !2, line: 1412, column: 4)
!199 = distinct !DILexicalBlock(scope: !195, file: !2, line: 1412, column: 4)
!200 = !DILocalVariable(name: "__ret_once", scope: !198, file: !2, line: 1412, type: !12)
!201 = !DILabel(scope: !9, name: "fail", file: !2, line: 1435)
!202 = !DILabel(scope: !9, name: "fail_reopen", file: !2, line: 1438)
!203 = !{i32 7, !"Dwarf Version", i32 5}
!204 = !{i32 2, !"Debug Info Version", i32 3}
!205 = !{i32 1, !"wchar_size", i32 2}
!206 = !{i32 8, !"cf-protection-branch", i32 1}
!207 = !{i32 4, !"function_return_thunk_extern", i32 1}
!208 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!209 = !{i32 1, !"Code Model", i32 2}
!210 = !{i32 1, !"override-stack-alignment", i32 8}
!211 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!212 = !DILocation(line: 1350, column: 53, scope: !9)
!213 = !DILocation(line: 1350, column: 82, scope: !9)
!214 = !DILocation(line: 1351, column: 27, scope: !9)
!215 = !DILocation(line: 1351, column: 34, scope: !9)
!216 = !DILocation(line: 1351, column: 58, scope: !9)
!217 = !DILocation(line: 1353, column: 2, scope: !9)
!218 = !DILocation(line: 1353, column: 24, scope: !9)
!219 = !DILocation(line: 1353, column: 37, scope: !9)
!220 = !DILocation(line: 1353, column: 41, scope: !9)
!221 = !DILocation(line: 1354, column: 2, scope: !9)
!222 = !DILocation(line: 1354, column: 22, scope: !9)
!223 = !DILocation(line: 1355, column: 2, scope: !9)
!224 = !DILocation(line: 1355, column: 15, scope: !9)
!225 = !DILocation(line: 1356, column: 2, scope: !9)
!226 = !DILocation(line: 1356, column: 19, scope: !9)
!227 = !DILocation(line: 1357, column: 2, scope: !9)
!228 = !DILocation(line: 1357, column: 16, scope: !9)
!229 = !DILocation(line: 1359, column: 2, scope: !9)
!230 = !DILocation(line: 1359, column: 2, scope: !163)
!231 = !DILocation(line: 1359, column: 2, scope: !161)
!232 = !DILocation(line: 1359, column: 2, scope: !162)
!233 = !DILocation(line: 1362, column: 23, scope: !9)
!234 = !DILocation(line: 1362, column: 34, scope: !9)
!235 = !DILocation(line: 1362, column: 6, scope: !9)
!236 = !DILocation(line: 1362, column: 4, scope: !9)
!237 = !DILocation(line: 1363, column: 7, scope: !170)
!238 = !DILocation(line: 1363, column: 6, scope: !9)
!239 = !DILocation(line: 1364, column: 3, scope: !169)
!240 = !DILocation(line: 1364, column: 3, scope: !168)
!241 = !DILocation(line: 1364, column: 3, scope: !166)
!242 = !DILocation(line: 1364, column: 3, scope: !167)
!243 = !DILocation(line: 1364, column: 3, scope: !244)
!244 = distinct !DILexicalBlock(scope: !167, file: !2, line: 1364, column: 3)
!245 = !DILocation(line: 1365, column: 3, scope: !169)
!246 = !DILocation(line: 1370, column: 17, scope: !9)
!247 = !DILocation(line: 1370, column: 28, scope: !9)
!248 = !DILocation(line: 1370, column: 9, scope: !9)
!249 = !DILocation(line: 1370, column: 7, scope: !9)
!250 = !DILocation(line: 1376, column: 10, scope: !9)
!251 = !DILocation(line: 1376, column: 2, scope: !9)
!252 = !DILocation(line: 1376, column: 5, scope: !9)
!253 = !DILocation(line: 1376, column: 8, scope: !9)
!254 = !DILocation(line: 1377, column: 10, scope: !9)
!255 = !DILocation(line: 1377, column: 2, scope: !9)
!256 = !DILocation(line: 1377, column: 5, scope: !9)
!257 = !DILocation(line: 1377, column: 8, scope: !9)
!258 = !DILocation(line: 1384, column: 6, scope: !259)
!259 = distinct !DILexicalBlock(scope: !9, file: !2, line: 1384, column: 6)
!260 = !DILocation(line: 1384, column: 19, scope: !259)
!261 = !DILocation(line: 1384, column: 25, scope: !259)
!262 = !DILocation(line: 1384, column: 16, scope: !259)
!263 = !DILocation(line: 1384, column: 6, scope: !9)
!264 = !DILocation(line: 1385, column: 3, scope: !259)
!265 = !DILocation(line: 1387, column: 6, scope: !176)
!266 = !DILocation(line: 1387, column: 6, scope: !9)
!267 = !DILocation(line: 1388, column: 7, scope: !173)
!268 = !DILocation(line: 1388, column: 7, scope: !179)
!269 = !DILocation(line: 1388, column: 7, scope: !178)
!270 = !DILocation(line: 1388, column: 7, scope: !271)
!271 = distinct !DILexicalBlock(scope: !178, file: !2, line: 1388, column: 7)
!272 = !DILocation(line: 1388, column: 7, scope: !273)
!273 = distinct !DILexicalBlock(scope: !178, file: !2, line: 1388, column: 7)
!274 = !{i64 2150899352, i64 2150899381, i64 2150899427, i64 2150899485, i64 2150899539, i64 2150899593, i64 2150899648, i64 2150899679, i64 2150899987, i64 2150899993, i64 2150900040, i64 2150900063, i64 2150900089}
!275 = !DILocation(line: 1388, column: 7, scope: !276)
!276 = distinct !DILexicalBlock(scope: !178, file: !2, line: 1388, column: 7)
!277 = !DILocation(line: 1388, column: 7, scope: !174)
!278 = !DILocation(line: 1388, column: 7, scope: !175)
!279 = !DILocation(line: 1389, column: 4, scope: !181)
!280 = !DILocation(line: 1389, column: 4, scope: !184)
!281 = !{i8 0, i8 2}
!282 = !{}
!283 = !DILocation(line: 1389, column: 4, scope: !284)
!284 = distinct !DILexicalBlock(scope: !184, file: !2, line: 1389, column: 4)
!285 = !DILocation(line: 0, scope: !284)
!286 = !DILocation(line: 1389, column: 4, scope: !287)
!287 = distinct !DILexicalBlock(scope: !284, file: !2, line: 1389, column: 4)
!288 = !DILocation(line: 1389, column: 4, scope: !185)
!289 = !DILocation(line: 1389, column: 4, scope: !290)
!290 = distinct !DILexicalBlock(scope: !185, file: !2, line: 1389, column: 4)
!291 = !DILocation(line: 1389, column: 4, scope: !292)
!292 = distinct !DILexicalBlock(scope: !290, file: !2, line: 1389, column: 4)
!293 = !DILocation(line: 1389, column: 4, scope: !182)
!294 = !DILocation(line: 1391, column: 4, scope: !182)
!295 = !DILocation(line: 1391, column: 10, scope: !182)
!296 = !DILocation(line: 1391, column: 19, scope: !182)
!297 = !DILocation(line: 1392, column: 3, scope: !182)
!298 = !DILocation(line: 1394, column: 25, scope: !299)
!299 = distinct !DILexicalBlock(scope: !175, file: !2, line: 1394, column: 7)
!300 = !DILocation(line: 1394, column: 29, scope: !299)
!301 = !DILocation(line: 1394, column: 45, scope: !299)
!302 = !DILocation(line: 1394, column: 48, scope: !299)
!303 = !DILocation(line: 1394, column: 8, scope: !299)
!304 = !DILocation(line: 1394, column: 7, scope: !175)
!305 = !DILocation(line: 1395, column: 4, scope: !299)
!306 = !DILocation(line: 1397, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !175, file: !2, line: 1397, column: 7)
!308 = !DILocation(line: 1397, column: 10, scope: !307)
!309 = !DILocation(line: 1397, column: 26, scope: !307)
!310 = !DILocation(line: 1397, column: 24, scope: !307)
!311 = !DILocation(line: 1397, column: 7, scope: !175)
!312 = !DILocation(line: 1398, column: 4, scope: !307)
!313 = !DILocation(line: 1400, column: 28, scope: !175)
!314 = !DILocation(line: 1400, column: 32, scope: !175)
!315 = !DILocation(line: 1400, column: 35, scope: !175)
!316 = !DILocation(line: 1401, column: 8, scope: !175)
!317 = !DILocation(line: 1401, column: 11, scope: !175)
!318 = !DILocation(line: 1401, column: 26, scope: !175)
!319 = !DILocation(line: 1400, column: 17, scope: !175)
!320 = !DILocation(line: 1400, column: 3, scope: !175)
!321 = !DILocation(line: 1400, column: 6, scope: !175)
!322 = !DILocation(line: 1400, column: 15, scope: !175)
!323 = !DILocation(line: 1402, column: 2, scope: !175)
!324 = !DILocation(line: 1403, column: 18, scope: !325)
!325 = distinct !DILexicalBlock(scope: !190, file: !2, line: 1403, column: 7)
!326 = !DILocation(line: 1403, column: 22, scope: !325)
!327 = !DILocation(line: 1403, column: 39, scope: !325)
!328 = !DILocation(line: 1403, column: 42, scope: !325)
!329 = !DILocation(line: 1403, column: 8, scope: !325)
!330 = !DILocation(line: 1403, column: 7, scope: !190)
!331 = !DILocation(line: 1404, column: 4, scope: !325)
!332 = !DILocation(line: 1411, column: 7, scope: !188)
!333 = !DILocation(line: 1411, column: 7, scope: !193)
!334 = !DILocation(line: 1411, column: 7, scope: !192)
!335 = !DILocation(line: 1411, column: 7, scope: !336)
!336 = distinct !DILexicalBlock(scope: !192, file: !2, line: 1411, column: 7)
!337 = !DILocation(line: 1411, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !192, file: !2, line: 1411, column: 7)
!339 = !{i64 2150902454, i64 2150902483, i64 2150902529, i64 2150902587, i64 2150902641, i64 2150902695, i64 2150902750, i64 2150902781, i64 2150903089, i64 2150903095, i64 2150903142, i64 2150903165, i64 2150903191}
!340 = !DILocation(line: 1411, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !192, file: !2, line: 1411, column: 7)
!342 = !DILocation(line: 1411, column: 7, scope: !189)
!343 = !DILocation(line: 1411, column: 7, scope: !190)
!344 = !DILocation(line: 1412, column: 4, scope: !195)
!345 = !DILocation(line: 1412, column: 4, scope: !198)
!346 = !DILocation(line: 1412, column: 4, scope: !347)
!347 = distinct !DILexicalBlock(scope: !198, file: !2, line: 1412, column: 4)
!348 = !DILocation(line: 0, scope: !347)
!349 = !DILocation(line: 1412, column: 4, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 1412, column: 4)
!351 = !DILocation(line: 1412, column: 4, scope: !199)
!352 = !DILocation(line: 1412, column: 4, scope: !353)
!353 = distinct !DILexicalBlock(scope: !199, file: !2, line: 1412, column: 4)
!354 = !DILocation(line: 1412, column: 4, scope: !355)
!355 = distinct !DILexicalBlock(scope: !353, file: !2, line: 1412, column: 4)
!356 = !DILocation(line: 1412, column: 4, scope: !196)
!357 = !DILocation(line: 1414, column: 21, scope: !196)
!358 = !DILocation(line: 1414, column: 4, scope: !196)
!359 = !DILocation(line: 1414, column: 10, scope: !196)
!360 = !DILocation(line: 1414, column: 19, scope: !196)
!361 = !DILocation(line: 1415, column: 3, scope: !196)
!362 = !DILocation(line: 1416, column: 23, scope: !190)
!363 = !DILocation(line: 1416, column: 29, scope: !190)
!364 = !DILocation(line: 1416, column: 3, scope: !190)
!365 = !DILocation(line: 1416, column: 6, scope: !190)
!366 = !DILocation(line: 1416, column: 20, scope: !190)
!367 = !DILocation(line: 1418, column: 25, scope: !368)
!368 = distinct !DILexicalBlock(scope: !190, file: !2, line: 1418, column: 7)
!369 = !DILocation(line: 1418, column: 29, scope: !368)
!370 = !DILocation(line: 1418, column: 45, scope: !368)
!371 = !DILocation(line: 1418, column: 48, scope: !368)
!372 = !DILocation(line: 1418, column: 8, scope: !368)
!373 = !DILocation(line: 1418, column: 7, scope: !190)
!374 = !DILocation(line: 1419, column: 4, scope: !368)
!375 = !DILocation(line: 1421, column: 7, scope: !376)
!376 = distinct !DILexicalBlock(scope: !190, file: !2, line: 1421, column: 7)
!377 = !DILocation(line: 1421, column: 10, scope: !376)
!378 = !DILocation(line: 1421, column: 26, scope: !376)
!379 = !DILocation(line: 1421, column: 24, scope: !376)
!380 = !DILocation(line: 1421, column: 7, scope: !190)
!381 = !DILocation(line: 1422, column: 4, scope: !376)
!382 = !DILocation(line: 1424, column: 30, scope: !190)
!383 = !DILocation(line: 1424, column: 34, scope: !190)
!384 = !DILocation(line: 1424, column: 37, scope: !190)
!385 = !DILocation(line: 1425, column: 10, scope: !190)
!386 = !DILocation(line: 1425, column: 13, scope: !190)
!387 = !DILocation(line: 1425, column: 28, scope: !190)
!388 = !DILocation(line: 1424, column: 17, scope: !190)
!389 = !DILocation(line: 1424, column: 3, scope: !190)
!390 = !DILocation(line: 1424, column: 6, scope: !190)
!391 = !DILocation(line: 1424, column: 15, scope: !190)
!392 = !DILocation(line: 1427, column: 6, scope: !393)
!393 = distinct !DILexicalBlock(scope: !9, file: !2, line: 1427, column: 6)
!394 = !DILocation(line: 1427, column: 9, scope: !393)
!395 = !DILocation(line: 1427, column: 23, scope: !393)
!396 = !DILocation(line: 1427, column: 27, scope: !393)
!397 = !DILocation(line: 1427, column: 30, scope: !393)
!398 = !DILocation(line: 1427, column: 6, scope: !9)
!399 = !DILocation(line: 1428, column: 3, scope: !393)
!400 = !DILocation(line: 1430, column: 12, scope: !9)
!401 = !DILocation(line: 1430, column: 2, scope: !9)
!402 = !DILocation(line: 1430, column: 5, scope: !9)
!403 = !DILocation(line: 1430, column: 10, scope: !9)
!404 = !DILocation(line: 1432, column: 30, scope: !9)
!405 = !DILocation(line: 1432, column: 34, scope: !9)
!406 = !DILocation(line: 1432, column: 51, scope: !9)
!407 = !DILocation(line: 1432, column: 54, scope: !9)
!408 = !DILocation(line: 1432, column: 18, scope: !9)
!409 = !DILocation(line: 1432, column: 2, scope: !9)
!410 = !DILocation(line: 1432, column: 5, scope: !9)
!411 = !DILocation(line: 1432, column: 16, scope: !9)
!412 = !DILocation(line: 1434, column: 2, scope: !9)
!413 = !DILocation(line: 1435, column: 1, scope: !9)
!414 = !DILocation(line: 1436, column: 13, scope: !9)
!415 = !DILocation(line: 1436, column: 2, scope: !9)
!416 = !DILocation(line: 1438, column: 1, scope: !9)
!417 = !DILocation(line: 1440, column: 9, scope: !9)
!418 = !DILocation(line: 1440, column: 2, scope: !9)
!419 = !DILocation(line: 1441, column: 2, scope: !9)
!420 = !DILocation(line: 1442, column: 1, scope: !9)
!421 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !422, file: !422, line: 101, type: !423, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !425)
!422 = !DIFile(filename: "./arch/x86/include/asm/irqflags.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51de965a2a1c3c5d68742842f9133428")
!423 = !DISubroutineType(types: !424)
!424 = !{!48}
!425 = !{!426}
!426 = !DILocalVariable(name: "flags", scope: !421, file: !422, line: 103, type: !48)
!427 = !DILocation(line: 103, column: 2, scope: !421)
!428 = !DILocation(line: 103, column: 16, scope: !421)
!429 = !DILocation(line: 103, column: 24, scope: !421)
!430 = !DILocation(line: 104, column: 2, scope: !421)
!431 = !DILocation(line: 105, column: 9, scope: !421)
!432 = !DILocation(line: 106, column: 1, scope: !421)
!433 = !DILocation(line: 105, column: 2, scope: !421)
!434 = distinct !DISubprogram(name: "desc_reopen_last", scope: !2, file: !2, line: 1259, type: !435, scopeLine: 1261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !438)
!435 = !DISubroutineType(types: !436)
!436 = !{!29, !155, !70, !437}
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!438 = !{!439, !440, !441, !442, !443, !444, !445, !446, !447}
!439 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !434, file: !2, line: 1259, type: !155)
!440 = !DILocalVariable(name: "caller_id", arg: 2, scope: !434, file: !2, line: 1260, type: !70)
!441 = !DILocalVariable(name: "id_out", arg: 3, scope: !434, file: !2, line: 1260, type: !437)
!442 = !DILocalVariable(name: "prev_state_val", scope: !434, file: !2, line: 1262, type: !48)
!443 = !DILocalVariable(name: "d_state", scope: !434, file: !2, line: 1263, type: !112)
!444 = !DILocalVariable(name: "desc", scope: !434, file: !2, line: 1264, type: !30)
!445 = !DILocalVariable(name: "d", scope: !434, file: !2, line: 1265, type: !29)
!446 = !DILocalVariable(name: "id", scope: !434, file: !2, line: 1266, type: !48)
!447 = !DILocalVariable(name: "cid", scope: !434, file: !2, line: 1267, type: !70)
!448 = !DILocation(line: 1259, column: 64, scope: !434)
!449 = !DILocation(line: 1260, column: 11, scope: !434)
!450 = !DILocation(line: 1260, column: 37, scope: !434)
!451 = !DILocation(line: 1262, column: 2, scope: !434)
!452 = !DILocation(line: 1262, column: 16, scope: !434)
!453 = !DILocation(line: 1263, column: 2, scope: !434)
!454 = !DILocation(line: 1263, column: 18, scope: !434)
!455 = !DILocation(line: 1264, column: 2, scope: !434)
!456 = !DILocation(line: 1264, column: 18, scope: !434)
!457 = !DILocation(line: 1265, column: 2, scope: !434)
!458 = !DILocation(line: 1265, column: 19, scope: !434)
!459 = !DILocation(line: 1266, column: 2, scope: !434)
!460 = !DILocation(line: 1266, column: 16, scope: !434)
!461 = !DILocation(line: 1267, column: 2, scope: !434)
!462 = !DILocation(line: 1267, column: 6, scope: !434)
!463 = !DILocation(line: 1269, column: 25, scope: !434)
!464 = !DILocation(line: 1269, column: 36, scope: !434)
!465 = !DILocation(line: 1269, column: 7, scope: !434)
!466 = !DILocation(line: 1269, column: 5, scope: !434)
!467 = !DILocation(line: 1275, column: 22, scope: !434)
!468 = !DILocation(line: 1275, column: 33, scope: !434)
!469 = !DILocation(line: 1275, column: 12, scope: !434)
!470 = !DILocation(line: 1275, column: 10, scope: !434)
!471 = !DILocation(line: 1276, column: 6, scope: !472)
!472 = distinct !DILexicalBlock(scope: !434, file: !2, line: 1276, column: 6)
!473 = !DILocation(line: 1276, column: 14, scope: !472)
!474 = !DILocation(line: 1276, column: 32, scope: !472)
!475 = !DILocation(line: 1276, column: 35, scope: !472)
!476 = !DILocation(line: 1276, column: 42, scope: !472)
!477 = !DILocation(line: 1276, column: 39, scope: !472)
!478 = !DILocation(line: 1276, column: 6, scope: !434)
!479 = !DILocation(line: 1277, column: 3, scope: !472)
!480 = !DILocation(line: 1279, column: 14, scope: !434)
!481 = !DILocation(line: 1279, column: 25, scope: !434)
!482 = !DILocation(line: 1279, column: 6, scope: !434)
!483 = !DILocation(line: 1279, column: 4, scope: !434)
!484 = !DILocation(line: 1281, column: 19, scope: !434)
!485 = !DILocation(line: 1281, column: 17, scope: !434)
!486 = !DILocation(line: 1299, column: 32, scope: !487)
!487 = distinct !DILexicalBlock(scope: !434, file: !2, line: 1299, column: 6)
!488 = !DILocation(line: 1299, column: 35, scope: !487)
!489 = !DILocation(line: 1300, column: 4, scope: !487)
!490 = !DILocation(line: 1299, column: 7, scope: !487)
!491 = !DILocation(line: 1299, column: 6, scope: !434)
!492 = !DILocation(line: 1301, column: 3, scope: !493)
!493 = distinct !DILexicalBlock(scope: !487, file: !2, line: 1300, column: 33)
!494 = !DILocation(line: 1304, column: 12, scope: !434)
!495 = !DILocation(line: 1304, column: 3, scope: !434)
!496 = !DILocation(line: 1304, column: 10, scope: !434)
!497 = !DILocation(line: 1305, column: 9, scope: !434)
!498 = !DILocation(line: 1305, column: 2, scope: !434)
!499 = !DILocation(line: 1306, column: 1, scope: !434)
!500 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !422, file: !422, line: 132, type: !501, scopeLine: 133, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !503)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !48}
!503 = !{!504}
!504 = !DILocalVariable(name: "flags", arg: 1, scope: !500, file: !422, line: 132, type: !48)
!505 = !DILocation(line: 132, column: 66, scope: !500)
!506 = !DILocation(line: 134, column: 32, scope: !507)
!507 = distinct !DILexicalBlock(scope: !500, file: !422, line: 134, column: 6)
!508 = !DILocation(line: 134, column: 7, scope: !507)
!509 = !DILocation(line: 134, column: 6, scope: !500)
!510 = !DILocation(line: 135, column: 3, scope: !507)
!511 = !DILocation(line: 136, column: 1, scope: !500)
!512 = distinct !DISubprogram(name: "to_info", scope: !2, file: !2, line: 364, type: !513, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!51, !155, !55}
!515 = !{!516, !517}
!516 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !512, file: !2, line: 364, type: !155)
!517 = !DILocalVariable(name: "n", arg: 2, scope: !512, file: !2, line: 364, type: !55)
!518 = !DILocation(line: 364, column: 58, scope: !512)
!519 = !DILocation(line: 364, column: 73, scope: !512)
!520 = !DILocation(line: 366, column: 10, scope: !512)
!521 = !DILocation(line: 366, column: 21, scope: !512)
!522 = !DILocation(line: 366, column: 27, scope: !512)
!523 = !DILocation(line: 366, column: 2, scope: !512)
!524 = !DISubprogram(name: "_printk", scope: !525, file: !525, line: 153, type: !526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!525 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!526 = !DISubroutineType(types: !527)
!527 = !{!113, !528, null}
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!530 = distinct !DISubprogram(name: "data_check_size", scope: !2, file: !2, line: 394, type: !531, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !534)
!531 = !DISubroutineType(types: !532)
!532 = !{!12, !533, !27}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!534 = !{!535, !536, !537}
!535 = !DILocalVariable(name: "data_ring", arg: 1, scope: !530, file: !2, line: 394, type: !533)
!536 = !DILocalVariable(name: "size", arg: 2, scope: !530, file: !2, line: 394, type: !27)
!537 = !DILocalVariable(name: "db", scope: !530, file: !2, line: 396, type: !538)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prb_data_block", file: !2, line: 346, size: 64, elements: !540)
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !539, file: !2, line: 347, baseType: !48, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !539, file: !2, line: 348, baseType: !543, offset: 64)
!543 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !544)
!544 = !{!545}
!545 = !DISubrange(count: -1)
!546 = !DILocation(line: 394, column: 51, scope: !530)
!547 = !DILocation(line: 394, column: 75, scope: !530)
!548 = !DILocation(line: 396, column: 2, scope: !530)
!549 = !DILocation(line: 396, column: 25, scope: !530)
!550 = !DILocation(line: 398, column: 6, scope: !551)
!551 = distinct !DILexicalBlock(scope: !530, file: !2, line: 398, column: 6)
!552 = !DILocation(line: 398, column: 11, scope: !551)
!553 = !DILocation(line: 398, column: 6, scope: !530)
!554 = !DILocation(line: 399, column: 3, scope: !551)
!555 = !DILocation(line: 406, column: 21, scope: !530)
!556 = !DILocation(line: 406, column: 9, scope: !530)
!557 = !DILocation(line: 406, column: 7, scope: !530)
!558 = !DILocation(line: 407, column: 6, scope: !559)
!559 = distinct !DILexicalBlock(scope: !530, file: !2, line: 407, column: 6)
!560 = !DILocation(line: 407, column: 13, scope: !559)
!561 = !DILocation(line: 407, column: 34, scope: !559)
!562 = !DILocation(line: 407, column: 11, scope: !559)
!563 = !DILocation(line: 407, column: 6, scope: !530)
!564 = !DILocation(line: 408, column: 3, scope: !559)
!565 = !DILocation(line: 410, column: 2, scope: !530)
!566 = !DILocation(line: 411, column: 1, scope: !530)
!567 = distinct !DISubprogram(name: "data_alloc", scope: !2, file: !2, line: 1024, type: !568, scopeLine: 1026, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !571)
!568 = !DISubroutineType(types: !569)
!569 = !{!92, !20, !27, !570, !48}
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!571 = !{!572, !573, !574, !575, !576, !577, !578, !579}
!572 = !DILocalVariable(name: "rb", arg: 1, scope: !567, file: !2, line: 1024, type: !20)
!573 = !DILocalVariable(name: "size", arg: 2, scope: !567, file: !2, line: 1024, type: !27)
!574 = !DILocalVariable(name: "blk_lpos", arg: 3, scope: !567, file: !2, line: 1025, type: !570)
!575 = !DILocalVariable(name: "id", arg: 4, scope: !567, file: !2, line: 1025, type: !48)
!576 = !DILocalVariable(name: "data_ring", scope: !567, file: !2, line: 1027, type: !533)
!577 = !DILocalVariable(name: "blk", scope: !567, file: !2, line: 1028, type: !538)
!578 = !DILocalVariable(name: "begin_lpos", scope: !567, file: !2, line: 1029, type: !48)
!579 = !DILocalVariable(name: "next_lpos", scope: !567, file: !2, line: 1030, type: !48)
!580 = !DILocation(line: 1024, column: 51, scope: !567)
!581 = !DILocation(line: 1024, column: 68, scope: !567)
!582 = !DILocation(line: 1025, column: 30, scope: !567)
!583 = !DILocation(line: 1025, column: 54, scope: !567)
!584 = !DILocation(line: 1027, column: 2, scope: !567)
!585 = !DILocation(line: 1027, column: 24, scope: !567)
!586 = !DILocation(line: 1027, column: 37, scope: !567)
!587 = !DILocation(line: 1027, column: 41, scope: !567)
!588 = !DILocation(line: 1028, column: 2, scope: !567)
!589 = !DILocation(line: 1028, column: 25, scope: !567)
!590 = !DILocation(line: 1029, column: 2, scope: !567)
!591 = !DILocation(line: 1029, column: 16, scope: !567)
!592 = !DILocation(line: 1030, column: 2, scope: !567)
!593 = !DILocation(line: 1030, column: 16, scope: !567)
!594 = !DILocation(line: 1032, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !567, file: !2, line: 1032, column: 6)
!596 = !DILocation(line: 1032, column: 11, scope: !595)
!597 = !DILocation(line: 1032, column: 6, scope: !567)
!598 = !DILocation(line: 1034, column: 3, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !2, line: 1032, column: 17)
!600 = !DILocation(line: 1034, column: 13, scope: !599)
!601 = !DILocation(line: 1034, column: 19, scope: !599)
!602 = !DILocation(line: 1035, column: 3, scope: !599)
!603 = !DILocation(line: 1035, column: 13, scope: !599)
!604 = !DILocation(line: 1035, column: 18, scope: !599)
!605 = !DILocation(line: 1036, column: 3, scope: !599)
!606 = !DILocation(line: 1039, column: 21, scope: !567)
!607 = !DILocation(line: 1039, column: 9, scope: !567)
!608 = !DILocation(line: 1039, column: 7, scope: !567)
!609 = !DILocation(line: 1041, column: 33, scope: !567)
!610 = !DILocation(line: 1041, column: 44, scope: !567)
!611 = !DILocation(line: 1041, column: 15, scope: !567)
!612 = !DILocation(line: 1041, column: 13, scope: !567)
!613 = !DILocation(line: 1043, column: 2, scope: !567)
!614 = !DILocation(line: 1044, column: 29, scope: !615)
!615 = distinct !DILexicalBlock(scope: !567, file: !2, line: 1043, column: 5)
!616 = !DILocation(line: 1044, column: 40, scope: !615)
!617 = !DILocation(line: 1044, column: 52, scope: !615)
!618 = !DILocation(line: 1044, column: 15, scope: !615)
!619 = !DILocation(line: 1044, column: 13, scope: !615)
!620 = !DILocation(line: 1046, column: 23, scope: !621)
!621 = distinct !DILexicalBlock(scope: !615, file: !2, line: 1046, column: 7)
!622 = !DILocation(line: 1046, column: 27, scope: !621)
!623 = !DILocation(line: 1046, column: 39, scope: !621)
!624 = !DILocation(line: 1046, column: 37, scope: !621)
!625 = !DILocation(line: 1046, column: 8, scope: !621)
!626 = !DILocation(line: 1046, column: 7, scope: !615)
!627 = !DILocation(line: 1048, column: 4, scope: !628)
!628 = distinct !DILexicalBlock(scope: !621, file: !2, line: 1046, column: 62)
!629 = !DILocation(line: 1048, column: 14, scope: !628)
!630 = !DILocation(line: 1048, column: 20, scope: !628)
!631 = !DILocation(line: 1049, column: 4, scope: !628)
!632 = !DILocation(line: 1049, column: 14, scope: !628)
!633 = !DILocation(line: 1049, column: 19, scope: !628)
!634 = !DILocation(line: 1050, column: 4, scope: !628)
!635 = !DILocation(line: 1070, column: 2, scope: !615)
!636 = !DILocation(line: 1070, column: 37, scope: !567)
!637 = !DILocation(line: 1070, column: 48, scope: !567)
!638 = !DILocation(line: 1071, column: 8, scope: !567)
!639 = !DILocation(line: 1070, column: 12, scope: !567)
!640 = !DILocation(line: 1070, column: 11, scope: !567)
!641 = distinct !{!641, !613, !642, !643, !644}
!642 = !DILocation(line: 1071, column: 18, scope: !567)
!643 = !{!"llvm.loop.mustprogress"}
!644 = !{!"llvm.loop.unroll.disable"}
!645 = !DILocation(line: 1073, column: 17, scope: !567)
!646 = !DILocation(line: 1073, column: 28, scope: !567)
!647 = !DILocation(line: 1073, column: 8, scope: !567)
!648 = !DILocation(line: 1073, column: 6, scope: !567)
!649 = !DILocation(line: 1074, column: 12, scope: !567)
!650 = !DILocation(line: 1074, column: 2, scope: !567)
!651 = !DILocation(line: 1074, column: 7, scope: !567)
!652 = !DILocation(line: 1074, column: 10, scope: !567)
!653 = !DILocation(line: 1076, column: 6, scope: !654)
!654 = distinct !DILexicalBlock(scope: !567, file: !2, line: 1076, column: 6)
!655 = !DILocation(line: 1076, column: 43, scope: !654)
!656 = !DILocation(line: 1076, column: 40, scope: !654)
!657 = !DILocation(line: 1076, column: 6, scope: !567)
!658 = !DILocation(line: 1078, column: 18, scope: !659)
!659 = distinct !DILexicalBlock(scope: !654, file: !2, line: 1076, column: 77)
!660 = !DILocation(line: 1078, column: 9, scope: !659)
!661 = !DILocation(line: 1078, column: 7, scope: !659)
!662 = !DILocation(line: 1084, column: 13, scope: !659)
!663 = !DILocation(line: 1084, column: 3, scope: !659)
!664 = !DILocation(line: 1084, column: 8, scope: !659)
!665 = !DILocation(line: 1084, column: 11, scope: !659)
!666 = !DILocation(line: 1085, column: 2, scope: !659)
!667 = !DILocation(line: 1087, column: 20, scope: !567)
!668 = !DILocation(line: 1087, column: 2, scope: !567)
!669 = !DILocation(line: 1087, column: 12, scope: !567)
!670 = !DILocation(line: 1087, column: 18, scope: !567)
!671 = !DILocation(line: 1088, column: 19, scope: !567)
!672 = !DILocation(line: 1088, column: 2, scope: !567)
!673 = !DILocation(line: 1088, column: 12, scope: !567)
!674 = !DILocation(line: 1088, column: 17, scope: !567)
!675 = !DILocation(line: 1090, column: 10, scope: !567)
!676 = !DILocation(line: 1090, column: 15, scope: !567)
!677 = !DILocation(line: 1090, column: 2, scope: !567)
!678 = !DILocation(line: 1091, column: 1, scope: !567)
!679 = distinct !DISubprogram(name: "get_data", scope: !2, file: !2, line: 1205, type: !680, scopeLine: 1208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!528, !533, !570, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!683 = !{!684, !685, !686, !687, !688, !693, !696, !699, !702, !704, !707, !710}
!684 = !DILocalVariable(name: "data_ring", arg: 1, scope: !679, file: !2, line: 1205, type: !533)
!685 = !DILocalVariable(name: "blk_lpos", arg: 2, scope: !679, file: !2, line: 1206, type: !570)
!686 = !DILocalVariable(name: "data_size", arg: 3, scope: !679, file: !2, line: 1207, type: !682)
!687 = !DILocalVariable(name: "db", scope: !679, file: !2, line: 1209, type: !538)
!688 = !DILocalVariable(name: "__ret_warn_on", scope: !689, file: !2, line: 1234, type: !113)
!689 = distinct !DILexicalBlock(scope: !690, file: !2, line: 1234, column: 3)
!690 = distinct !DILexicalBlock(scope: !691, file: !2, line: 1233, column: 9)
!691 = distinct !DILexicalBlock(scope: !692, file: !2, line: 1227, column: 13)
!692 = distinct !DILexicalBlock(scope: !679, file: !2, line: 1221, column: 6)
!693 = !DILocalVariable(name: "__flags", scope: !694, file: !2, line: 1234, type: !113)
!694 = distinct !DILexicalBlock(scope: !695, file: !2, line: 1234, column: 3)
!695 = distinct !DILexicalBlock(scope: !689, file: !2, line: 1234, column: 3)
!696 = !DILocalVariable(name: "__ret_warn_on", scope: !697, file: !2, line: 1239, type: !113)
!697 = distinct !DILexicalBlock(scope: !698, file: !2, line: 1239, column: 6)
!698 = distinct !DILexicalBlock(scope: !679, file: !2, line: 1239, column: 6)
!699 = !DILocalVariable(name: "__flags", scope: !700, file: !2, line: 1239, type: !113)
!700 = distinct !DILexicalBlock(scope: !701, file: !2, line: 1239, column: 6)
!701 = distinct !DILexicalBlock(scope: !697, file: !2, line: 1239, column: 6)
!702 = !DILocalVariable(name: "__ret_warn_on", scope: !703, file: !2, line: 1240, type: !113)
!703 = distinct !DILexicalBlock(scope: !698, file: !2, line: 1240, column: 6)
!704 = !DILocalVariable(name: "__flags", scope: !705, file: !2, line: 1240, type: !113)
!705 = distinct !DILexicalBlock(scope: !706, file: !2, line: 1240, column: 6)
!706 = distinct !DILexicalBlock(scope: !703, file: !2, line: 1240, column: 6)
!707 = !DILocalVariable(name: "__ret_warn_on", scope: !708, file: !2, line: 1245, type: !113)
!708 = distinct !DILexicalBlock(scope: !709, file: !2, line: 1245, column: 6)
!709 = distinct !DILexicalBlock(scope: !679, file: !2, line: 1245, column: 6)
!710 = !DILocalVariable(name: "__flags", scope: !711, file: !2, line: 1245, type: !113)
!711 = distinct !DILexicalBlock(scope: !712, file: !2, line: 1245, column: 6)
!712 = distinct !DILexicalBlock(scope: !708, file: !2, line: 1245, column: 6)
!713 = !DILocation(line: 1205, column: 51, scope: !679)
!714 = !DILocation(line: 1206, column: 34, scope: !679)
!715 = !DILocation(line: 1207, column: 22, scope: !679)
!716 = !DILocation(line: 1209, column: 2, scope: !679)
!717 = !DILocation(line: 1209, column: 25, scope: !679)
!718 = !DILocation(line: 1212, column: 6, scope: !719)
!719 = distinct !DILexicalBlock(scope: !679, file: !2, line: 1212, column: 6)
!720 = !DILocation(line: 1212, column: 6, scope: !679)
!721 = !DILocation(line: 1213, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !2, line: 1213, column: 7)
!723 = distinct !DILexicalBlock(scope: !719, file: !2, line: 1212, column: 30)
!724 = !DILocation(line: 1213, column: 17, scope: !722)
!725 = !DILocation(line: 1213, column: 23, scope: !722)
!726 = !DILocation(line: 1213, column: 34, scope: !722)
!727 = !DILocation(line: 1213, column: 37, scope: !722)
!728 = !DILocation(line: 1213, column: 47, scope: !722)
!729 = !DILocation(line: 1213, column: 52, scope: !722)
!730 = !DILocation(line: 1213, column: 7, scope: !723)
!731 = !DILocation(line: 1214, column: 5, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !2, line: 1213, column: 64)
!733 = !DILocation(line: 1214, column: 15, scope: !732)
!734 = !DILocation(line: 1215, column: 4, scope: !732)
!735 = !DILocation(line: 1217, column: 3, scope: !723)
!736 = !DILocation(line: 1221, column: 6, scope: !692)
!737 = !DILocation(line: 1221, column: 48, scope: !692)
!738 = !DILocation(line: 1221, column: 45, scope: !692)
!739 = !DILocation(line: 1221, column: 86, scope: !692)
!740 = !DILocation(line: 1222, column: 6, scope: !692)
!741 = !DILocation(line: 1222, column: 16, scope: !692)
!742 = !DILocation(line: 1222, column: 24, scope: !692)
!743 = !DILocation(line: 1222, column: 34, scope: !692)
!744 = !DILocation(line: 1222, column: 22, scope: !692)
!745 = !DILocation(line: 1221, column: 6, scope: !679)
!746 = !DILocation(line: 1223, column: 17, scope: !747)
!747 = distinct !DILexicalBlock(scope: !692, file: !2, line: 1222, column: 40)
!748 = !DILocation(line: 1223, column: 28, scope: !747)
!749 = !DILocation(line: 1223, column: 38, scope: !747)
!750 = !DILocation(line: 1223, column: 8, scope: !747)
!751 = !DILocation(line: 1223, column: 6, scope: !747)
!752 = !DILocation(line: 1224, column: 16, scope: !747)
!753 = !DILocation(line: 1224, column: 26, scope: !747)
!754 = !DILocation(line: 1224, column: 33, scope: !747)
!755 = !DILocation(line: 1224, column: 43, scope: !747)
!756 = !DILocation(line: 1224, column: 31, scope: !747)
!757 = !DILocation(line: 1224, column: 4, scope: !747)
!758 = !DILocation(line: 1224, column: 14, scope: !747)
!759 = !DILocation(line: 1227, column: 2, scope: !747)
!760 = !DILocation(line: 1227, column: 13, scope: !691)
!761 = !DILocation(line: 1228, column: 6, scope: !691)
!762 = !DILocation(line: 1227, column: 75, scope: !691)
!763 = !DILocation(line: 1227, column: 13, scope: !692)
!764 = !DILocation(line: 1229, column: 17, scope: !765)
!765 = distinct !DILexicalBlock(scope: !691, file: !2, line: 1228, column: 45)
!766 = !DILocation(line: 1229, column: 8, scope: !765)
!767 = !DILocation(line: 1229, column: 6, scope: !765)
!768 = !DILocation(line: 1230, column: 16, scope: !765)
!769 = !DILocation(line: 1230, column: 4, scope: !765)
!770 = !DILocation(line: 1230, column: 14, scope: !765)
!771 = !DILocation(line: 1233, column: 2, scope: !765)
!772 = !DILocation(line: 1234, column: 3, scope: !689)
!773 = !DILocation(line: 1234, column: 3, scope: !695)
!774 = !DILocation(line: 1234, column: 3, scope: !694)
!775 = !DILocation(line: 1234, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !694, file: !2, line: 1234, column: 3)
!777 = !DILocation(line: 1234, column: 3, scope: !778)
!778 = distinct !DILexicalBlock(scope: !694, file: !2, line: 1234, column: 3)
!779 = !{i64 2150891050, i64 2150891079, i64 2150891125, i64 2150891183, i64 2150891237, i64 2150891291, i64 2150891346, i64 2150891377, i64 2150891685, i64 2150891691, i64 2150891738, i64 2150891761, i64 2150891787}
!780 = !DILocation(line: 1234, column: 3, scope: !781)
!781 = distinct !DILexicalBlock(scope: !694, file: !2, line: 1234, column: 3)
!782 = !DILocation(line: 1234, column: 3, scope: !690)
!783 = !DILocation(line: 1235, column: 3, scope: !690)
!784 = !DILocation(line: 1239, column: 6, scope: !697)
!785 = !DILocation(line: 1239, column: 6, scope: !701)
!786 = !DILocation(line: 1239, column: 6, scope: !700)
!787 = !DILocation(line: 1239, column: 6, scope: !788)
!788 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1239, column: 6)
!789 = !DILocation(line: 1239, column: 6, scope: !790)
!790 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1239, column: 6)
!791 = !{i64 2150893104, i64 2150893133, i64 2150893179, i64 2150893237, i64 2150893291, i64 2150893345, i64 2150893400, i64 2150893431, i64 2150893739, i64 2150893745, i64 2150893792, i64 2150893815, i64 2150893841}
!792 = !DILocation(line: 1239, column: 6, scope: !793)
!793 = distinct !DILexicalBlock(scope: !700, file: !2, line: 1239, column: 6)
!794 = !DILocation(line: 1239, column: 6, scope: !698)
!795 = !DILocation(line: 1239, column: 78, scope: !698)
!796 = !DILocation(line: 1240, column: 6, scope: !703)
!797 = !DILocation(line: 1240, column: 6, scope: !706)
!798 = !DILocation(line: 1240, column: 6, scope: !705)
!799 = !DILocation(line: 1240, column: 6, scope: !800)
!800 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1240, column: 6)
!801 = !DILocation(line: 1240, column: 6, scope: !802)
!802 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1240, column: 6)
!803 = !{i64 2150895136, i64 2150895165, i64 2150895211, i64 2150895269, i64 2150895323, i64 2150895377, i64 2150895432, i64 2150895463, i64 2150895771, i64 2150895777, i64 2150895824, i64 2150895847, i64 2150895873}
!804 = !DILocation(line: 1240, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1240, column: 6)
!806 = !DILocation(line: 1240, column: 6, scope: !698)
!807 = !DILocation(line: 1239, column: 6, scope: !679)
!808 = !DILocation(line: 1241, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !698, file: !2, line: 1240, column: 77)
!810 = !DILocation(line: 1245, column: 6, scope: !708)
!811 = !DILocation(line: 1245, column: 6, scope: !712)
!812 = !DILocation(line: 1245, column: 6, scope: !711)
!813 = !DILocation(line: 1245, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !711, file: !2, line: 1245, column: 6)
!815 = !DILocation(line: 1245, column: 6, scope: !816)
!816 = distinct !DILexicalBlock(scope: !711, file: !2, line: 1245, column: 6)
!817 = !{i64 2150896701, i64 2150896730, i64 2150896776, i64 2150896834, i64 2150896888, i64 2150896942, i64 2150896997, i64 2150897028, i64 2150897336, i64 2150897342, i64 2150897389, i64 2150897412, i64 2150897438}
!818 = !DILocation(line: 1245, column: 6, scope: !819)
!819 = distinct !DILexicalBlock(scope: !711, file: !2, line: 1245, column: 6)
!820 = !DILocation(line: 1245, column: 6, scope: !709)
!821 = !DILocation(line: 1245, column: 6, scope: !679)
!822 = !DILocation(line: 1246, column: 3, scope: !709)
!823 = !DILocation(line: 1249, column: 3, scope: !679)
!824 = !DILocation(line: 1249, column: 13, scope: !679)
!825 = !DILocation(line: 1251, column: 10, scope: !679)
!826 = !DILocation(line: 1251, column: 14, scope: !679)
!827 = !DILocation(line: 1251, column: 2, scope: !679)
!828 = !DILocation(line: 1252, column: 1, scope: !679)
!829 = distinct !DISubprogram(name: "data_realloc", scope: !2, file: !2, line: 1105, type: !568, scopeLine: 1107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !830)
!830 = !{!831, !832, !833, !834, !835, !836, !837, !838, !839, !840}
!831 = !DILocalVariable(name: "rb", arg: 1, scope: !829, file: !2, line: 1105, type: !20)
!832 = !DILocalVariable(name: "size", arg: 2, scope: !829, file: !2, line: 1105, type: !27)
!833 = !DILocalVariable(name: "blk_lpos", arg: 3, scope: !829, file: !2, line: 1106, type: !570)
!834 = !DILocalVariable(name: "id", arg: 4, scope: !829, file: !2, line: 1106, type: !48)
!835 = !DILocalVariable(name: "data_ring", scope: !829, file: !2, line: 1108, type: !533)
!836 = !DILocalVariable(name: "blk", scope: !829, file: !2, line: 1109, type: !538)
!837 = !DILocalVariable(name: "head_lpos", scope: !829, file: !2, line: 1110, type: !48)
!838 = !DILocalVariable(name: "next_lpos", scope: !829, file: !2, line: 1111, type: !48)
!839 = !DILocalVariable(name: "wrapped", scope: !829, file: !2, line: 1112, type: !12)
!840 = !DILocalVariable(name: "old_blk", scope: !841, file: !2, line: 1147, type: !538)
!841 = distinct !DILexicalBlock(scope: !842, file: !2, line: 1146, column: 82)
!842 = distinct !DILexicalBlock(scope: !829, file: !2, line: 1146, column: 6)
!843 = !DILocation(line: 1105, column: 53, scope: !829)
!844 = !DILocation(line: 1105, column: 70, scope: !829)
!845 = !DILocation(line: 1106, column: 32, scope: !829)
!846 = !DILocation(line: 1106, column: 56, scope: !829)
!847 = !DILocation(line: 1108, column: 2, scope: !829)
!848 = !DILocation(line: 1108, column: 24, scope: !829)
!849 = !DILocation(line: 1108, column: 37, scope: !829)
!850 = !DILocation(line: 1108, column: 41, scope: !829)
!851 = !DILocation(line: 1109, column: 2, scope: !829)
!852 = !DILocation(line: 1109, column: 25, scope: !829)
!853 = !DILocation(line: 1110, column: 2, scope: !829)
!854 = !DILocation(line: 1110, column: 16, scope: !829)
!855 = !DILocation(line: 1111, column: 2, scope: !829)
!856 = !DILocation(line: 1111, column: 16, scope: !829)
!857 = !DILocation(line: 1112, column: 2, scope: !829)
!858 = !DILocation(line: 1112, column: 7, scope: !829)
!859 = !DILocation(line: 1115, column: 32, scope: !829)
!860 = !DILocation(line: 1115, column: 43, scope: !829)
!861 = !DILocation(line: 1115, column: 14, scope: !829)
!862 = !DILocation(line: 1115, column: 12, scope: !829)
!863 = !DILocation(line: 1116, column: 6, scope: !864)
!864 = distinct !DILexicalBlock(scope: !829, file: !2, line: 1116, column: 6)
!865 = !DILocation(line: 1116, column: 19, scope: !864)
!866 = !DILocation(line: 1116, column: 29, scope: !864)
!867 = !DILocation(line: 1116, column: 16, scope: !864)
!868 = !DILocation(line: 1116, column: 6, scope: !829)
!869 = !DILocation(line: 1117, column: 3, scope: !864)
!870 = !DILocation(line: 1120, column: 13, scope: !829)
!871 = !DILocation(line: 1120, column: 55, scope: !829)
!872 = !DILocation(line: 1120, column: 52, scope: !829)
!873 = !DILocation(line: 1120, column: 10, scope: !829)
!874 = !DILocation(line: 1122, column: 21, scope: !829)
!875 = !DILocation(line: 1122, column: 9, scope: !829)
!876 = !DILocation(line: 1122, column: 7, scope: !829)
!877 = !DILocation(line: 1124, column: 28, scope: !829)
!878 = !DILocation(line: 1124, column: 39, scope: !829)
!879 = !DILocation(line: 1124, column: 49, scope: !829)
!880 = !DILocation(line: 1124, column: 56, scope: !829)
!881 = !DILocation(line: 1124, column: 14, scope: !829)
!882 = !DILocation(line: 1124, column: 12, scope: !829)
!883 = !DILocation(line: 1127, column: 6, scope: !884)
!884 = distinct !DILexicalBlock(scope: !829, file: !2, line: 1127, column: 6)
!885 = !DILocation(line: 1127, column: 18, scope: !884)
!886 = !DILocation(line: 1127, column: 16, scope: !884)
!887 = !DILocation(line: 1127, column: 30, scope: !884)
!888 = !DILocation(line: 1127, column: 28, scope: !884)
!889 = !DILocation(line: 1127, column: 6, scope: !829)
!890 = !DILocation(line: 1128, column: 7, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !2, line: 1128, column: 7)
!892 = distinct !DILexicalBlock(scope: !884, file: !2, line: 1127, column: 52)
!893 = !DILocation(line: 1128, column: 7, scope: !892)
!894 = !DILocation(line: 1129, column: 19, scope: !891)
!895 = !DILocation(line: 1129, column: 10, scope: !891)
!896 = !DILocation(line: 1129, column: 8, scope: !891)
!897 = !DILocation(line: 1129, column: 4, scope: !891)
!898 = !DILocation(line: 1131, column: 19, scope: !891)
!899 = !DILocation(line: 1131, column: 30, scope: !891)
!900 = !DILocation(line: 1131, column: 40, scope: !891)
!901 = !DILocation(line: 1131, column: 10, scope: !891)
!902 = !DILocation(line: 1131, column: 8, scope: !891)
!903 = !DILocation(line: 1132, column: 11, scope: !892)
!904 = !DILocation(line: 1132, column: 16, scope: !892)
!905 = !DILocation(line: 1132, column: 3, scope: !892)
!906 = !DILocation(line: 1135, column: 22, scope: !907)
!907 = distinct !DILexicalBlock(scope: !829, file: !2, line: 1135, column: 6)
!908 = !DILocation(line: 1135, column: 26, scope: !907)
!909 = !DILocation(line: 1135, column: 38, scope: !907)
!910 = !DILocation(line: 1135, column: 36, scope: !907)
!911 = !DILocation(line: 1135, column: 7, scope: !907)
!912 = !DILocation(line: 1135, column: 6, scope: !829)
!913 = !DILocation(line: 1136, column: 3, scope: !907)
!914 = !DILocation(line: 1139, column: 32, scope: !915)
!915 = distinct !DILexicalBlock(scope: !829, file: !2, line: 1139, column: 6)
!916 = !DILocation(line: 1139, column: 43, scope: !915)
!917 = !DILocation(line: 1140, column: 10, scope: !915)
!918 = !DILocation(line: 1139, column: 7, scope: !915)
!919 = !DILocation(line: 1139, column: 6, scope: !829)
!920 = !DILocation(line: 1141, column: 3, scope: !921)
!921 = distinct !DILexicalBlock(scope: !915, file: !2, line: 1140, column: 22)
!922 = !DILocation(line: 1144, column: 17, scope: !829)
!923 = !DILocation(line: 1144, column: 28, scope: !829)
!924 = !DILocation(line: 1144, column: 38, scope: !829)
!925 = !DILocation(line: 1144, column: 8, scope: !829)
!926 = !DILocation(line: 1144, column: 6, scope: !829)
!927 = !DILocation(line: 1146, column: 6, scope: !842)
!928 = !DILocation(line: 1146, column: 48, scope: !842)
!929 = !DILocation(line: 1146, column: 45, scope: !842)
!930 = !DILocation(line: 1146, column: 6, scope: !829)
!931 = !DILocation(line: 1147, column: 3, scope: !841)
!932 = !DILocation(line: 1147, column: 26, scope: !841)
!933 = !DILocation(line: 1147, column: 36, scope: !841)
!934 = !DILocation(line: 1150, column: 18, scope: !841)
!935 = !DILocation(line: 1150, column: 9, scope: !841)
!936 = !DILocation(line: 1150, column: 7, scope: !841)
!937 = !DILocation(line: 1156, column: 13, scope: !841)
!938 = !DILocation(line: 1156, column: 3, scope: !841)
!939 = !DILocation(line: 1156, column: 8, scope: !841)
!940 = !DILocation(line: 1156, column: 11, scope: !841)
!941 = !DILocation(line: 1158, column: 8, scope: !942)
!942 = distinct !DILexicalBlock(scope: !841, file: !2, line: 1158, column: 7)
!943 = !DILocation(line: 1158, column: 7, scope: !841)
!944 = !DILocation(line: 1164, column: 12, scope: !945)
!945 = distinct !DILexicalBlock(scope: !942, file: !2, line: 1158, column: 17)
!946 = !DILocation(line: 1164, column: 17, scope: !945)
!947 = !DILocation(line: 1164, column: 27, scope: !945)
!948 = !DILocation(line: 1164, column: 36, scope: !945)
!949 = !DILocation(line: 1165, column: 12, scope: !945)
!950 = !DILocation(line: 1165, column: 22, scope: !945)
!951 = !DILocation(line: 1165, column: 29, scope: !945)
!952 = !DILocation(line: 1165, column: 39, scope: !945)
!953 = !DILocation(line: 1165, column: 27, scope: !945)
!954 = !DILocation(line: 1165, column: 46, scope: !945)
!955 = !DILocation(line: 1164, column: 4, scope: !945)
!956 = !DILocation(line: 1166, column: 3, scope: !945)
!957 = !DILocation(line: 1167, column: 2, scope: !842)
!958 = !DILocation(line: 1167, column: 2, scope: !841)
!959 = !DILocation(line: 1169, column: 19, scope: !829)
!960 = !DILocation(line: 1169, column: 2, scope: !829)
!961 = !DILocation(line: 1169, column: 12, scope: !829)
!962 = !DILocation(line: 1169, column: 17, scope: !829)
!963 = !DILocation(line: 1171, column: 10, scope: !829)
!964 = !DILocation(line: 1171, column: 15, scope: !829)
!965 = !DILocation(line: 1171, column: 2, scope: !829)
!966 = !DILocation(line: 1172, column: 1, scope: !829)
!967 = distinct !DISubprogram(name: "space_used", scope: !2, file: !2, line: 1175, type: !968, scopeLine: 1177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !970)
!968 = !DISubroutineType(types: !969)
!969 = !{!27, !533, !570}
!970 = !{!971, !972}
!971 = !DILocalVariable(name: "data_ring", arg: 1, scope: !967, file: !2, line: 1175, type: !533)
!972 = !DILocalVariable(name: "blk_lpos", arg: 2, scope: !967, file: !2, line: 1176, type: !570)
!973 = !DILocation(line: 1175, column: 54, scope: !967)
!974 = !DILocation(line: 1176, column: 37, scope: !967)
!975 = !DILocation(line: 1179, column: 6, scope: !976)
!976 = distinct !DILexicalBlock(scope: !967, file: !2, line: 1179, column: 6)
!977 = !DILocation(line: 1179, column: 6, scope: !967)
!978 = !DILocation(line: 1180, column: 3, scope: !976)
!979 = !DILocation(line: 1182, column: 6, scope: !980)
!980 = distinct !DILexicalBlock(scope: !967, file: !2, line: 1182, column: 6)
!981 = !DILocation(line: 1182, column: 48, scope: !980)
!982 = !DILocation(line: 1182, column: 45, scope: !980)
!983 = !DILocation(line: 1182, column: 6, scope: !967)
!984 = !DILocation(line: 1184, column: 11, scope: !985)
!985 = distinct !DILexicalBlock(scope: !980, file: !2, line: 1182, column: 87)
!986 = !DILocation(line: 1185, column: 4, scope: !985)
!987 = !DILocation(line: 1184, column: 49, scope: !985)
!988 = !DILocation(line: 1184, column: 10, scope: !985)
!989 = !DILocation(line: 1184, column: 3, scope: !985)
!990 = !DILocation(line: 1192, column: 10, scope: !967)
!991 = !DILocation(line: 1193, column: 3, scope: !967)
!992 = !DILocation(line: 1192, column: 48, scope: !967)
!993 = !DILocation(line: 1193, column: 26, scope: !967)
!994 = !DILocation(line: 1193, column: 24, scope: !967)
!995 = !DILocation(line: 1192, column: 9, scope: !967)
!996 = !DILocation(line: 1192, column: 2, scope: !967)
!997 = !DILocation(line: 1194, column: 1, scope: !967)
!998 = distinct !DISubprogram(name: "prb_commit", scope: !2, file: !2, line: 1632, type: !999, scopeLine: 1633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1001)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !15}
!1001 = !{!1002, !1003, !1004}
!1002 = !DILocalVariable(name: "e", arg: 1, scope: !998, file: !2, line: 1632, type: !15)
!1003 = !DILocalVariable(name: "desc_ring", scope: !998, file: !2, line: 1634, type: !155)
!1004 = !DILocalVariable(name: "head_id", scope: !998, file: !2, line: 1635, type: !48)
!1005 = !DILocation(line: 1632, column: 44, scope: !998)
!1006 = !DILocation(line: 1634, column: 2, scope: !998)
!1007 = !DILocation(line: 1634, column: 24, scope: !998)
!1008 = !DILocation(line: 1634, column: 37, scope: !998)
!1009 = !DILocation(line: 1634, column: 40, scope: !998)
!1010 = !DILocation(line: 1634, column: 44, scope: !998)
!1011 = !DILocation(line: 1635, column: 2, scope: !998)
!1012 = !DILocation(line: 1635, column: 16, scope: !998)
!1013 = !DILocation(line: 1637, column: 14, scope: !998)
!1014 = !DILocation(line: 1637, column: 2, scope: !998)
!1015 = !DILocation(line: 1644, column: 30, scope: !998)
!1016 = !DILocation(line: 1644, column: 41, scope: !998)
!1017 = !DILocation(line: 1644, column: 12, scope: !998)
!1018 = !DILocation(line: 1644, column: 10, scope: !998)
!1019 = !DILocation(line: 1645, column: 6, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !998, file: !2, line: 1645, column: 6)
!1021 = !DILocation(line: 1645, column: 17, scope: !1020)
!1022 = !DILocation(line: 1645, column: 20, scope: !1020)
!1023 = !DILocation(line: 1645, column: 14, scope: !1020)
!1024 = !DILocation(line: 1645, column: 6, scope: !998)
!1025 = !DILocation(line: 1646, column: 19, scope: !1020)
!1026 = !DILocation(line: 1646, column: 30, scope: !1020)
!1027 = !DILocation(line: 1646, column: 33, scope: !1020)
!1028 = !DILocation(line: 1646, column: 3, scope: !1020)
!1029 = !DILocation(line: 1647, column: 1, scope: !998)
!1030 = distinct !DISubprogram(name: "prb_reserve", scope: !2, file: !2, line: 1485, type: !1031, scopeLine: 1487, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1033)
!1031 = !DISubroutineType(types: !1032)
!1032 = !{!12, !15, !20, !99}
!1033 = !{!1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1046, !1047, !1053, !1054}
!1034 = !DILocalVariable(name: "e", arg: 1, scope: !1030, file: !2, line: 1485, type: !15)
!1035 = !DILocalVariable(name: "rb", arg: 2, scope: !1030, file: !2, line: 1485, type: !20)
!1036 = !DILocalVariable(name: "r", arg: 3, scope: !1030, file: !2, line: 1486, type: !99)
!1037 = !DILocalVariable(name: "desc_ring", scope: !1030, file: !2, line: 1488, type: !155)
!1038 = !DILocalVariable(name: "info", scope: !1030, file: !2, line: 1489, type: !51)
!1039 = !DILocalVariable(name: "d", scope: !1030, file: !2, line: 1490, type: !29)
!1040 = !DILocalVariable(name: "id", scope: !1030, file: !2, line: 1491, type: !48)
!1041 = !DILocalVariable(name: "seq", scope: !1030, file: !2, line: 1492, type: !55)
!1042 = !DILocalVariable(name: "__dummy", scope: !1043, file: !2, line: 1503, type: !48)
!1043 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 1503, column: 2)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !2, line: 1503, column: 2)
!1045 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1503, column: 2)
!1046 = !DILocalVariable(name: "__dummy2", scope: !1043, file: !2, line: 1503, type: !48)
!1047 = !DILocalVariable(name: "__dummy", scope: !1048, file: !2, line: 1508, type: !48)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1508, column: 3)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !2, line: 1508, column: 3)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !2, line: 1508, column: 3)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 1505, column: 30)
!1052 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1505, column: 6)
!1053 = !DILocalVariable(name: "__dummy2", scope: !1048, file: !2, line: 1508, type: !48)
!1054 = !DILabel(scope: !1030, name: "fail", file: !2, line: 1569)
!1055 = !DILocation(line: 1485, column: 45, scope: !1030)
!1056 = !DILocation(line: 1485, column: 74, scope: !1030)
!1057 = !DILocation(line: 1486, column: 26, scope: !1030)
!1058 = !DILocation(line: 1488, column: 2, scope: !1030)
!1059 = !DILocation(line: 1488, column: 24, scope: !1030)
!1060 = !DILocation(line: 1488, column: 37, scope: !1030)
!1061 = !DILocation(line: 1488, column: 41, scope: !1030)
!1062 = !DILocation(line: 1489, column: 2, scope: !1030)
!1063 = !DILocation(line: 1489, column: 22, scope: !1030)
!1064 = !DILocation(line: 1490, column: 2, scope: !1030)
!1065 = !DILocation(line: 1490, column: 19, scope: !1030)
!1066 = !DILocation(line: 1491, column: 2, scope: !1030)
!1067 = !DILocation(line: 1491, column: 16, scope: !1030)
!1068 = !DILocation(line: 1492, column: 2, scope: !1030)
!1069 = !DILocation(line: 1492, column: 6, scope: !1030)
!1070 = !DILocation(line: 1494, column: 24, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1494, column: 6)
!1072 = !DILocation(line: 1494, column: 28, scope: !1071)
!1073 = !DILocation(line: 1494, column: 44, scope: !1071)
!1074 = !DILocation(line: 1494, column: 47, scope: !1071)
!1075 = !DILocation(line: 1494, column: 7, scope: !1071)
!1076 = !DILocation(line: 1494, column: 6, scope: !1030)
!1077 = !DILocation(line: 1495, column: 3, scope: !1071)
!1078 = !DILocation(line: 1503, column: 2, scope: !1030)
!1079 = !DILocation(line: 1503, column: 2, scope: !1045)
!1080 = !DILocation(line: 1503, column: 2, scope: !1043)
!1081 = !DILocation(line: 1503, column: 2, scope: !1044)
!1082 = !DILocation(line: 1505, column: 20, scope: !1052)
!1083 = !DILocation(line: 1505, column: 7, scope: !1052)
!1084 = !DILocation(line: 1505, column: 6, scope: !1030)
!1085 = !DILocation(line: 1507, column: 20, scope: !1051)
!1086 = !DILocation(line: 1507, column: 24, scope: !1051)
!1087 = !DILocation(line: 1507, column: 3, scope: !1051)
!1088 = !DILocation(line: 1508, column: 3, scope: !1051)
!1089 = !DILocation(line: 1508, column: 3, scope: !1050)
!1090 = !DILocation(line: 1508, column: 3, scope: !1048)
!1091 = !DILocation(line: 1508, column: 3, scope: !1049)
!1092 = !DILocation(line: 1508, column: 3, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1049, file: !2, line: 1508, column: 3)
!1094 = !DILocation(line: 1509, column: 3, scope: !1051)
!1095 = !DILocation(line: 1512, column: 14, scope: !1030)
!1096 = !DILocation(line: 1512, column: 25, scope: !1030)
!1097 = !DILocation(line: 1512, column: 6, scope: !1030)
!1098 = !DILocation(line: 1512, column: 4, scope: !1030)
!1099 = !DILocation(line: 1513, column: 17, scope: !1030)
!1100 = !DILocation(line: 1513, column: 28, scope: !1030)
!1101 = !DILocation(line: 1513, column: 9, scope: !1030)
!1102 = !DILocation(line: 1513, column: 7, scope: !1030)
!1103 = !DILocation(line: 1520, column: 8, scope: !1030)
!1104 = !DILocation(line: 1520, column: 14, scope: !1030)
!1105 = !DILocation(line: 1520, column: 6, scope: !1030)
!1106 = !DILocation(line: 1521, column: 9, scope: !1030)
!1107 = !DILocation(line: 1521, column: 2, scope: !1030)
!1108 = !DILocation(line: 1527, column: 10, scope: !1030)
!1109 = !DILocation(line: 1527, column: 2, scope: !1030)
!1110 = !DILocation(line: 1527, column: 5, scope: !1030)
!1111 = !DILocation(line: 1527, column: 8, scope: !1030)
!1112 = !DILocation(line: 1528, column: 10, scope: !1030)
!1113 = !DILocation(line: 1528, column: 2, scope: !1030)
!1114 = !DILocation(line: 1528, column: 5, scope: !1030)
!1115 = !DILocation(line: 1528, column: 8, scope: !1030)
!1116 = !DILocation(line: 1541, column: 6, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1541, column: 6)
!1118 = !DILocation(line: 1541, column: 10, scope: !1117)
!1119 = !DILocation(line: 1541, column: 15, scope: !1117)
!1120 = !DILocation(line: 1541, column: 18, scope: !1117)
!1121 = !DILocation(line: 1541, column: 44, scope: !1117)
!1122 = !DILocation(line: 1541, column: 6, scope: !1030)
!1123 = !DILocation(line: 1542, column: 15, scope: !1117)
!1124 = !DILocation(line: 1542, column: 3, scope: !1117)
!1125 = !DILocation(line: 1542, column: 9, scope: !1117)
!1126 = !DILocation(line: 1542, column: 13, scope: !1117)
!1127 = !DILocation(line: 1544, column: 15, scope: !1117)
!1128 = !DILocation(line: 1544, column: 21, scope: !1117)
!1129 = !DILocation(line: 1544, column: 19, scope: !1117)
!1130 = !DILocation(line: 1544, column: 3, scope: !1117)
!1131 = !DILocation(line: 1544, column: 9, scope: !1117)
!1132 = !DILocation(line: 1544, column: 13, scope: !1117)
!1133 = !DILocation(line: 1552, column: 6, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1552, column: 6)
!1135 = !DILocation(line: 1552, column: 12, scope: !1134)
!1136 = !DILocation(line: 1552, column: 16, scope: !1134)
!1137 = !DILocation(line: 1552, column: 6, scope: !1030)
!1138 = !DILocation(line: 1553, column: 19, scope: !1134)
!1139 = !DILocation(line: 1553, column: 30, scope: !1134)
!1140 = !DILocation(line: 1553, column: 3, scope: !1134)
!1141 = !DILocation(line: 1555, column: 27, scope: !1030)
!1142 = !DILocation(line: 1555, column: 31, scope: !1030)
!1143 = !DILocation(line: 1555, column: 34, scope: !1030)
!1144 = !DILocation(line: 1555, column: 50, scope: !1030)
!1145 = !DILocation(line: 1555, column: 53, scope: !1030)
!1146 = !DILocation(line: 1555, column: 68, scope: !1030)
!1147 = !DILocation(line: 1555, column: 16, scope: !1030)
!1148 = !DILocation(line: 1555, column: 2, scope: !1030)
!1149 = !DILocation(line: 1555, column: 5, scope: !1030)
!1150 = !DILocation(line: 1555, column: 14, scope: !1030)
!1151 = !DILocation(line: 1557, column: 6, scope: !1152)
!1152 = distinct !DILexicalBlock(scope: !1030, file: !2, line: 1557, column: 6)
!1153 = !DILocation(line: 1557, column: 9, scope: !1152)
!1154 = !DILocation(line: 1557, column: 23, scope: !1152)
!1155 = !DILocation(line: 1557, column: 27, scope: !1152)
!1156 = !DILocation(line: 1557, column: 30, scope: !1152)
!1157 = !DILocation(line: 1557, column: 6, scope: !1030)
!1158 = !DILocation(line: 1558, column: 14, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1152, file: !2, line: 1557, column: 40)
!1160 = !DILocation(line: 1558, column: 3, scope: !1159)
!1161 = !DILocation(line: 1560, column: 3, scope: !1159)
!1162 = !DILocation(line: 1563, column: 12, scope: !1030)
!1163 = !DILocation(line: 1563, column: 2, scope: !1030)
!1164 = !DILocation(line: 1563, column: 5, scope: !1030)
!1165 = !DILocation(line: 1563, column: 10, scope: !1030)
!1166 = !DILocation(line: 1566, column: 30, scope: !1030)
!1167 = !DILocation(line: 1566, column: 34, scope: !1030)
!1168 = !DILocation(line: 1566, column: 51, scope: !1030)
!1169 = !DILocation(line: 1566, column: 54, scope: !1030)
!1170 = !DILocation(line: 1566, column: 18, scope: !1030)
!1171 = !DILocation(line: 1566, column: 2, scope: !1030)
!1172 = !DILocation(line: 1566, column: 5, scope: !1030)
!1173 = !DILocation(line: 1566, column: 16, scope: !1030)
!1174 = !DILocation(line: 1568, column: 2, scope: !1030)
!1175 = !DILocation(line: 1569, column: 1, scope: !1030)
!1176 = !DILocation(line: 1571, column: 9, scope: !1030)
!1177 = !DILocation(line: 1571, column: 2, scope: !1030)
!1178 = !DILocation(line: 1572, column: 2, scope: !1030)
!1179 = !DILocation(line: 1573, column: 1, scope: !1030)
!1180 = distinct !DISubprogram(name: "desc_reserve", scope: !2, file: !2, line: 875, type: !1181, scopeLine: 876, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1183)
!1181 = !DISubroutineType(types: !1182)
!1182 = !{!12, !20, !437}
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1199, !1203}
!1184 = !DILocalVariable(name: "rb", arg: 1, scope: !1180, file: !2, line: 875, type: !20)
!1185 = !DILocalVariable(name: "id_out", arg: 2, scope: !1180, file: !2, line: 875, type: !437)
!1186 = !DILocalVariable(name: "desc_ring", scope: !1180, file: !2, line: 877, type: !155)
!1187 = !DILocalVariable(name: "prev_state_val", scope: !1180, file: !2, line: 878, type: !48)
!1188 = !DILocalVariable(name: "id_prev_wrap", scope: !1180, file: !2, line: 879, type: !48)
!1189 = !DILocalVariable(name: "desc", scope: !1180, file: !2, line: 880, type: !29)
!1190 = !DILocalVariable(name: "head_id", scope: !1180, file: !2, line: 881, type: !48)
!1191 = !DILocalVariable(name: "id", scope: !1180, file: !2, line: 882, type: !48)
!1192 = !DILocalVariable(name: "__ret_warn_on", scope: !1193, file: !2, line: 977, type: !113)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 977, column: 3)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 976, column: 69)
!1195 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 975, column: 6)
!1196 = !DILocalVariable(name: "__flags", scope: !1197, file: !2, line: 977, type: !113)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !2, line: 977, column: 3)
!1198 = distinct !DILexicalBlock(scope: !1193, file: !2, line: 977, column: 3)
!1199 = !DILocalVariable(name: "__ret_warn_on", scope: !1200, file: !2, line: 991, type: !113)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !2, line: 991, column: 3)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 990, column: 33)
!1202 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 989, column: 6)
!1203 = !DILocalVariable(name: "__flags", scope: !1204, file: !2, line: 991, type: !113)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !2, line: 991, column: 3)
!1205 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 991, column: 3)
!1206 = !DILocation(line: 875, column: 52, scope: !1180)
!1207 = !DILocation(line: 875, column: 71, scope: !1180)
!1208 = !DILocation(line: 877, column: 2, scope: !1180)
!1209 = !DILocation(line: 877, column: 24, scope: !1180)
!1210 = !DILocation(line: 877, column: 37, scope: !1180)
!1211 = !DILocation(line: 877, column: 41, scope: !1180)
!1212 = !DILocation(line: 878, column: 2, scope: !1180)
!1213 = !DILocation(line: 878, column: 16, scope: !1180)
!1214 = !DILocation(line: 879, column: 2, scope: !1180)
!1215 = !DILocation(line: 879, column: 16, scope: !1180)
!1216 = !DILocation(line: 880, column: 2, scope: !1180)
!1217 = !DILocation(line: 880, column: 19, scope: !1180)
!1218 = !DILocation(line: 881, column: 2, scope: !1180)
!1219 = !DILocation(line: 881, column: 16, scope: !1180)
!1220 = !DILocation(line: 882, column: 2, scope: !1180)
!1221 = !DILocation(line: 882, column: 16, scope: !1180)
!1222 = !DILocation(line: 884, column: 30, scope: !1180)
!1223 = !DILocation(line: 884, column: 41, scope: !1180)
!1224 = !DILocation(line: 884, column: 12, scope: !1180)
!1225 = !DILocation(line: 884, column: 10, scope: !1180)
!1226 = !DILocation(line: 886, column: 2, scope: !1180)
!1227 = !DILocation(line: 887, column: 8, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1180, file: !2, line: 886, column: 5)
!1229 = !DILocation(line: 887, column: 6, scope: !1228)
!1230 = !DILocation(line: 888, column: 18, scope: !1228)
!1231 = !DILocation(line: 888, column: 16, scope: !1228)
!1232 = !DILocation(line: 912, column: 3, scope: !1228)
!1233 = !DILocation(line: 912, column: 3, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 912, column: 3)
!1235 = !DILocation(line: 912, column: 3, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 912, column: 3)
!1237 = !DILocation(line: 912, column: 3, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1234, file: !2, line: 912, column: 3)
!1239 = !DILocation(line: 912, column: 3, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 912, column: 3)
!1241 = !{i64 2150884490}
!1242 = !DILocation(line: 914, column: 7, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1228, file: !2, line: 914, column: 7)
!1244 = !DILocation(line: 914, column: 41, scope: !1243)
!1245 = !DILocation(line: 914, column: 52, scope: !1243)
!1246 = !DILocation(line: 914, column: 23, scope: !1243)
!1247 = !DILocation(line: 914, column: 20, scope: !1243)
!1248 = !DILocation(line: 914, column: 7, scope: !1228)
!1249 = !DILocation(line: 920, column: 24, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !2, line: 920, column: 8)
!1251 = distinct !DILexicalBlock(scope: !1243, file: !2, line: 915, column: 14)
!1252 = !DILocation(line: 920, column: 28, scope: !1250)
!1253 = !DILocation(line: 920, column: 9, scope: !1250)
!1254 = !DILocation(line: 920, column: 8, scope: !1251)
!1255 = !DILocation(line: 921, column: 5, scope: !1250)
!1256 = !DILocation(line: 922, column: 3, scope: !1251)
!1257 = !DILocation(line: 965, column: 2, scope: !1228)
!1258 = !DILocation(line: 965, column: 37, scope: !1180)
!1259 = !DILocation(line: 965, column: 48, scope: !1180)
!1260 = !DILocation(line: 966, column: 8, scope: !1180)
!1261 = !DILocation(line: 965, column: 12, scope: !1180)
!1262 = !DILocation(line: 965, column: 11, scope: !1180)
!1263 = distinct !{!1263, !1226, !1264, !643, !644}
!1264 = !DILocation(line: 966, column: 11, scope: !1180)
!1265 = !DILocation(line: 968, column: 17, scope: !1180)
!1266 = !DILocation(line: 968, column: 28, scope: !1180)
!1267 = !DILocation(line: 968, column: 9, scope: !1180)
!1268 = !DILocation(line: 968, column: 7, scope: !1180)
!1269 = !DILocation(line: 974, column: 37, scope: !1180)
!1270 = !DILocation(line: 974, column: 43, scope: !1180)
!1271 = !DILocation(line: 974, column: 19, scope: !1180)
!1272 = !DILocation(line: 974, column: 17, scope: !1180)
!1273 = !DILocation(line: 975, column: 6, scope: !1195)
!1274 = !DILocation(line: 975, column: 21, scope: !1195)
!1275 = !DILocation(line: 976, column: 21, scope: !1195)
!1276 = !DILocation(line: 976, column: 35, scope: !1195)
!1277 = !DILocation(line: 976, column: 6, scope: !1195)
!1278 = !DILocation(line: 976, column: 51, scope: !1195)
!1279 = !DILocation(line: 975, column: 6, scope: !1180)
!1280 = !DILocation(line: 977, column: 3, scope: !1193)
!1281 = !DILocation(line: 977, column: 3, scope: !1198)
!1282 = !DILocation(line: 977, column: 3, scope: !1197)
!1283 = !DILocation(line: 977, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 977, column: 3)
!1285 = !DILocation(line: 977, column: 3, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 977, column: 3)
!1287 = !{i64 2150885043, i64 2150885072, i64 2150885118, i64 2150885176, i64 2150885230, i64 2150885284, i64 2150885339, i64 2150885370, i64 2150885678, i64 2150885684, i64 2150885731, i64 2150885754, i64 2150885780}
!1288 = !DILocation(line: 977, column: 3, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1197, file: !2, line: 977, column: 3)
!1290 = !DILocation(line: 977, column: 3, scope: !1194)
!1291 = !DILocation(line: 978, column: 3, scope: !1194)
!1292 = !DILocation(line: 989, column: 32, scope: !1202)
!1293 = !DILocation(line: 989, column: 38, scope: !1202)
!1294 = !DILocation(line: 990, column: 4, scope: !1202)
!1295 = !DILocation(line: 989, column: 7, scope: !1202)
!1296 = !DILocation(line: 989, column: 6, scope: !1180)
!1297 = !DILocation(line: 991, column: 3, scope: !1200)
!1298 = !DILocation(line: 991, column: 3, scope: !1205)
!1299 = !DILocation(line: 991, column: 3, scope: !1204)
!1300 = !DILocation(line: 991, column: 3, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 991, column: 3)
!1302 = !DILocation(line: 991, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 991, column: 3)
!1304 = !{i64 2150886683, i64 2150886712, i64 2150886758, i64 2150886816, i64 2150886870, i64 2150886924, i64 2150886979, i64 2150887010, i64 2150887318, i64 2150887324, i64 2150887371, i64 2150887394, i64 2150887420}
!1305 = !DILocation(line: 991, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1204, file: !2, line: 991, column: 3)
!1307 = !DILocation(line: 991, column: 3, scope: !1201)
!1308 = !DILocation(line: 992, column: 3, scope: !1201)
!1309 = !DILocation(line: 997, column: 12, scope: !1180)
!1310 = !DILocation(line: 997, column: 3, scope: !1180)
!1311 = !DILocation(line: 997, column: 10, scope: !1180)
!1312 = !DILocation(line: 998, column: 2, scope: !1180)
!1313 = !DILocation(line: 999, column: 1, scope: !1180)
!1314 = distinct !DISubprogram(name: "atomic_long_inc", scope: !1315, file: !1315, line: 3561, type: !1316, scopeLine: 3562, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1319)
!1315 = !DIFile(filename: "./include/linux/atomic/atomic-instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d28016c45402b14fe977dead51194e5b")
!1316 = !DISubroutineType(types: !1317)
!1317 = !{null, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!1319 = !{!1320}
!1320 = !DILocalVariable(name: "v", arg: 1, scope: !1314, file: !1315, line: 3561, type: !1318)
!1321 = !DILocation(line: 3561, column: 32, scope: !1314)
!1322 = !DILocation(line: 3563, column: 31, scope: !1314)
!1323 = !DILocation(line: 3563, column: 2, scope: !1314)
!1324 = !DILocation(line: 3564, column: 22, scope: !1314)
!1325 = !DILocation(line: 3564, column: 2, scope: !1314)
!1326 = !DILocation(line: 3565, column: 1, scope: !1314)
!1327 = distinct !DISubprogram(name: "to_desc", scope: !2, file: !2, line: 355, type: !1328, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1330)
!1328 = !DISubroutineType(types: !1329)
!1329 = !{!29, !155, !55}
!1330 = !{!1331, !1332}
!1331 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !1327, file: !2, line: 355, type: !155)
!1332 = !DILocalVariable(name: "n", arg: 2, scope: !1327, file: !2, line: 355, type: !55)
!1333 = !DILocation(line: 355, column: 55, scope: !1327)
!1334 = !DILocation(line: 355, column: 70, scope: !1327)
!1335 = !DILocation(line: 357, column: 10, scope: !1327)
!1336 = !DILocation(line: 357, column: 21, scope: !1327)
!1337 = !DILocation(line: 357, column: 27, scope: !1327)
!1338 = !DILocation(line: 357, column: 2, scope: !1327)
!1339 = distinct !DISubprogram(name: "desc_make_final", scope: !2, file: !2, line: 1448, type: !1340, scopeLine: 1449, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1342)
!1340 = !DISubroutineType(types: !1341)
!1341 = !{null, !155, !48}
!1342 = !{!1343, !1344, !1345, !1346}
!1343 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !1339, file: !2, line: 1448, type: !155)
!1344 = !DILocalVariable(name: "id", arg: 2, scope: !1339, file: !2, line: 1448, type: !48)
!1345 = !DILocalVariable(name: "prev_state_val", scope: !1339, file: !2, line: 1450, type: !48)
!1346 = !DILocalVariable(name: "d", scope: !1339, file: !2, line: 1451, type: !29)
!1347 = !DILocation(line: 1448, column: 51, scope: !1339)
!1348 = !DILocation(line: 1448, column: 76, scope: !1339)
!1349 = !DILocation(line: 1450, column: 2, scope: !1339)
!1350 = !DILocation(line: 1450, column: 16, scope: !1339)
!1351 = !DILocation(line: 1450, column: 33, scope: !1339)
!1352 = !DILocation(line: 1451, column: 2, scope: !1339)
!1353 = !DILocation(line: 1451, column: 19, scope: !1339)
!1354 = !DILocation(line: 1451, column: 31, scope: !1339)
!1355 = !DILocation(line: 1451, column: 42, scope: !1339)
!1356 = !DILocation(line: 1451, column: 23, scope: !1339)
!1357 = !DILocation(line: 1453, column: 31, scope: !1339)
!1358 = !DILocation(line: 1453, column: 34, scope: !1339)
!1359 = !DILocation(line: 1453, column: 45, scope: !1339)
!1360 = !DILocation(line: 1454, column: 4, scope: !1339)
!1361 = !DILocation(line: 1453, column: 2, scope: !1339)
!1362 = !DILocation(line: 1457, column: 19, scope: !1339)
!1363 = !DILocation(line: 1457, column: 30, scope: !1339)
!1364 = !DILocation(line: 1457, column: 49, scope: !1339)
!1365 = !DILocation(line: 1457, column: 2, scope: !1339)
!1366 = !DILocation(line: 1458, column: 1, scope: !1339)
!1367 = distinct !DISubprogram(name: "_prb_commit", scope: !2, file: !2, line: 1576, type: !1368, scopeLine: 1577, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1370)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !15, !48}
!1370 = !{!1371, !1372, !1373, !1374, !1375, !1376, !1380, !1383, !1387}
!1371 = !DILocalVariable(name: "e", arg: 1, scope: !1367, file: !2, line: 1576, type: !15)
!1372 = !DILocalVariable(name: "state_val", arg: 2, scope: !1367, file: !2, line: 1576, type: !48)
!1373 = !DILocalVariable(name: "desc_ring", scope: !1367, file: !2, line: 1578, type: !155)
!1374 = !DILocalVariable(name: "d", scope: !1367, file: !2, line: 1579, type: !29)
!1375 = !DILocalVariable(name: "prev_state_val", scope: !1367, file: !2, line: 1580, type: !48)
!1376 = !DILocalVariable(name: "__ret_warn_on", scope: !1377, file: !2, line: 1609, type: !113)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !2, line: 1609, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1379, file: !2, line: 1608, column: 32)
!1379 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 1607, column: 6)
!1380 = !DILocalVariable(name: "__flags", scope: !1381, file: !2, line: 1609, type: !113)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 1609, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 1609, column: 3)
!1383 = !DILocalVariable(name: "__dummy", scope: !1384, file: !2, line: 1613, type: !48)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 1613, column: 2)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !2, line: 1613, column: 2)
!1386 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 1613, column: 2)
!1387 = !DILocalVariable(name: "__dummy2", scope: !1384, file: !2, line: 1613, type: !48)
!1388 = !DILocation(line: 1576, column: 52, scope: !1367)
!1389 = !DILocation(line: 1576, column: 69, scope: !1367)
!1390 = !DILocation(line: 1578, column: 2, scope: !1367)
!1391 = !DILocation(line: 1578, column: 24, scope: !1367)
!1392 = !DILocation(line: 1578, column: 37, scope: !1367)
!1393 = !DILocation(line: 1578, column: 40, scope: !1367)
!1394 = !DILocation(line: 1578, column: 44, scope: !1367)
!1395 = !DILocation(line: 1579, column: 2, scope: !1367)
!1396 = !DILocation(line: 1579, column: 19, scope: !1367)
!1397 = !DILocation(line: 1579, column: 31, scope: !1367)
!1398 = !DILocation(line: 1579, column: 42, scope: !1367)
!1399 = !DILocation(line: 1579, column: 45, scope: !1367)
!1400 = !DILocation(line: 1579, column: 23, scope: !1367)
!1401 = !DILocation(line: 1580, column: 2, scope: !1367)
!1402 = !DILocation(line: 1580, column: 16, scope: !1367)
!1403 = !DILocation(line: 1580, column: 33, scope: !1367)
!1404 = !DILocation(line: 1607, column: 32, scope: !1379)
!1405 = !DILocation(line: 1607, column: 35, scope: !1379)
!1406 = !DILocation(line: 1608, column: 4, scope: !1379)
!1407 = !DILocation(line: 1607, column: 7, scope: !1379)
!1408 = !DILocation(line: 1607, column: 6, scope: !1367)
!1409 = !DILocation(line: 1609, column: 3, scope: !1377)
!1410 = !DILocation(line: 1609, column: 3, scope: !1382)
!1411 = !DILocation(line: 1609, column: 3, scope: !1381)
!1412 = !DILocation(line: 1609, column: 3, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 1609, column: 3)
!1414 = !DILocation(line: 1609, column: 3, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 1609, column: 3)
!1416 = !{i64 2150907292, i64 2150907321, i64 2150907367, i64 2150907425, i64 2150907479, i64 2150907533, i64 2150907588, i64 2150907619, i64 2150907927, i64 2150907933, i64 2150907980, i64 2150908003, i64 2150908029}
!1417 = !DILocation(line: 1609, column: 3, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 1609, column: 3)
!1419 = !DILocation(line: 1609, column: 3, scope: !1378)
!1420 = !DILocation(line: 1610, column: 2, scope: !1378)
!1421 = !DILocation(line: 1613, column: 2, scope: !1367)
!1422 = !DILocation(line: 1613, column: 2, scope: !1386)
!1423 = !DILocation(line: 1613, column: 2, scope: !1384)
!1424 = !DILocation(line: 1613, column: 2, scope: !1385)
!1425 = !DILocation(line: 1613, column: 2, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 1613, column: 2)
!1427 = !DILocation(line: 1614, column: 1, scope: !1367)
!1428 = distinct !DISubprogram(name: "atomic_long_read", scope: !1315, file: !1315, line: 3158, type: !1429, scopeLine: 3159, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1434)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!1431, !1432}
!1431 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1433, size: 64)
!1433 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!1434 = !{!1435}
!1435 = !DILocalVariable(name: "v", arg: 1, scope: !1428, file: !1315, line: 3158, type: !1432)
!1436 = !DILocation(line: 3158, column: 39, scope: !1428)
!1437 = !DILocation(line: 3160, column: 25, scope: !1428)
!1438 = !DILocation(line: 3160, column: 2, scope: !1428)
!1439 = !DILocation(line: 3161, column: 30, scope: !1428)
!1440 = !DILocation(line: 3161, column: 9, scope: !1428)
!1441 = !DILocation(line: 3161, column: 2, scope: !1428)
!1442 = distinct !DISubprogram(name: "prb_final_commit", scope: !2, file: !2, line: 1664, type: !999, scopeLine: 1665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1443)
!1443 = !{!1444, !1445}
!1444 = !DILocalVariable(name: "e", arg: 1, scope: !1442, file: !2, line: 1664, type: !15)
!1445 = !DILocalVariable(name: "desc_ring", scope: !1442, file: !2, line: 1666, type: !155)
!1446 = !DILocation(line: 1664, column: 50, scope: !1442)
!1447 = !DILocation(line: 1666, column: 2, scope: !1442)
!1448 = !DILocation(line: 1666, column: 24, scope: !1442)
!1449 = !DILocation(line: 1666, column: 37, scope: !1442)
!1450 = !DILocation(line: 1666, column: 40, scope: !1442)
!1451 = !DILocation(line: 1666, column: 44, scope: !1442)
!1452 = !DILocation(line: 1668, column: 14, scope: !1442)
!1453 = !DILocation(line: 1668, column: 2, scope: !1442)
!1454 = !DILocation(line: 1671, column: 19, scope: !1442)
!1455 = !DILocation(line: 1671, column: 30, scope: !1442)
!1456 = !DILocation(line: 1671, column: 49, scope: !1442)
!1457 = !DILocation(line: 1671, column: 52, scope: !1442)
!1458 = !DILocation(line: 1671, column: 2, scope: !1442)
!1459 = !DILocation(line: 1672, column: 1, scope: !1442)
!1460 = distinct !DISubprogram(name: "atomic_long_set", scope: !1315, file: !1315, line: 3193, type: !1461, scopeLine: 3194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1463)
!1461 = !DISubroutineType(types: !1462)
!1462 = !{null, !1318, !1431}
!1463 = !{!1464, !1465}
!1464 = !DILocalVariable(name: "v", arg: 1, scope: !1460, file: !1315, line: 3193, type: !1318)
!1465 = !DILocalVariable(name: "i", arg: 2, scope: !1460, file: !1315, line: 3193, type: !1431)
!1466 = !DILocation(line: 3193, column: 32, scope: !1460)
!1467 = !DILocation(line: 3193, column: 40, scope: !1460)
!1468 = !DILocation(line: 3195, column: 26, scope: !1460)
!1469 = !DILocation(line: 3195, column: 2, scope: !1460)
!1470 = !DILocation(line: 3196, column: 22, scope: !1460)
!1471 = !DILocation(line: 3196, column: 25, scope: !1460)
!1472 = !DILocation(line: 3196, column: 2, scope: !1460)
!1473 = !DILocation(line: 3197, column: 1, scope: !1460)
!1474 = distinct !DISubprogram(name: "prb_read_valid", scope: !2, file: !2, line: 1937, type: !1475, scopeLine: 1939, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1477)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!12, !20, !55, !99}
!1477 = !{!1478, !1479, !1480}
!1478 = !DILocalVariable(name: "rb", arg: 1, scope: !1474, file: !2, line: 1937, type: !20)
!1479 = !DILocalVariable(name: "seq", arg: 2, scope: !1474, file: !2, line: 1937, type: !55)
!1480 = !DILocalVariable(name: "r", arg: 3, scope: !1474, file: !2, line: 1938, type: !99)
!1481 = !DILocation(line: 1937, column: 47, scope: !1474)
!1482 = !DILocation(line: 1937, column: 55, scope: !1474)
!1483 = !DILocation(line: 1938, column: 29, scope: !1474)
!1484 = !DILocation(line: 1940, column: 25, scope: !1474)
!1485 = !DILocation(line: 1940, column: 35, scope: !1474)
!1486 = !DILocation(line: 1940, column: 9, scope: !1474)
!1487 = !DILocation(line: 1940, column: 2, scope: !1474)
!1488 = distinct !DISubprogram(name: "_prb_read_valid", scope: !2, file: !2, line: 1885, type: !1489, scopeLine: 1887, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1492)
!1489 = !DISubroutineType(types: !1490)
!1490 = !{!12, !20, !1491, !99, !682}
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498}
!1493 = !DILocalVariable(name: "rb", arg: 1, scope: !1488, file: !2, line: 1885, type: !20)
!1494 = !DILocalVariable(name: "seq", arg: 2, scope: !1488, file: !2, line: 1885, type: !1491)
!1495 = !DILocalVariable(name: "r", arg: 3, scope: !1488, file: !2, line: 1886, type: !99)
!1496 = !DILocalVariable(name: "line_count", arg: 4, scope: !1488, file: !2, line: 1886, type: !682)
!1497 = !DILocalVariable(name: "tail_seq", scope: !1488, file: !2, line: 1888, type: !55)
!1498 = !DILocalVariable(name: "err", scope: !1488, file: !2, line: 1889, type: !113)
!1499 = !DILocation(line: 1885, column: 55, scope: !1488)
!1500 = !DILocation(line: 1885, column: 64, scope: !1488)
!1501 = !DILocation(line: 1886, column: 30, scope: !1488)
!1502 = !DILocation(line: 1886, column: 47, scope: !1488)
!1503 = !DILocation(line: 1888, column: 2, scope: !1488)
!1504 = !DILocation(line: 1888, column: 6, scope: !1488)
!1505 = !DILocation(line: 1889, column: 2, scope: !1488)
!1506 = !DILocation(line: 1889, column: 6, scope: !1488)
!1507 = !DILocation(line: 1891, column: 2, scope: !1488)
!1508 = !DILocation(line: 1891, column: 25, scope: !1488)
!1509 = !DILocation(line: 1891, column: 30, scope: !1488)
!1510 = !DILocation(line: 1891, column: 29, scope: !1488)
!1511 = !DILocation(line: 1891, column: 35, scope: !1488)
!1512 = !DILocation(line: 1891, column: 38, scope: !1488)
!1513 = !DILocation(line: 1891, column: 16, scope: !1488)
!1514 = !DILocation(line: 1891, column: 14, scope: !1488)
!1515 = !DILocation(line: 1892, column: 28, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 1891, column: 52)
!1517 = !DILocation(line: 1892, column: 14, scope: !1516)
!1518 = !DILocation(line: 1892, column: 12, scope: !1516)
!1519 = !DILocation(line: 1894, column: 8, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 1894, column: 7)
!1521 = !DILocation(line: 1894, column: 7, scope: !1520)
!1522 = !DILocation(line: 1894, column: 14, scope: !1520)
!1523 = !DILocation(line: 1894, column: 12, scope: !1520)
!1524 = !DILocation(line: 1894, column: 7, scope: !1516)
!1525 = !DILocation(line: 1899, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 1894, column: 24)
!1527 = !DILocation(line: 1899, column: 5, scope: !1526)
!1528 = !DILocation(line: 1899, column: 9, scope: !1526)
!1529 = !DILocation(line: 1901, column: 3, scope: !1526)
!1530 = !DILocation(line: 1901, column: 14, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1520, file: !2, line: 1901, column: 14)
!1532 = !DILocation(line: 1901, column: 18, scope: !1531)
!1533 = !DILocation(line: 1901, column: 14, scope: !1520)
!1534 = !DILocation(line: 1903, column: 6, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 1901, column: 30)
!1536 = !DILocation(line: 1903, column: 10, scope: !1535)
!1537 = !DILocation(line: 1905, column: 3, scope: !1535)
!1538 = !DILocation(line: 1907, column: 4, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1531, file: !2, line: 1905, column: 10)
!1540 = distinct !{!1540, !1507, !1541, !643, !644}
!1541 = !DILocation(line: 1909, column: 2, scope: !1488)
!1542 = !DILocation(line: 1911, column: 2, scope: !1488)
!1543 = !DILocation(line: 1912, column: 1, scope: !1488)
!1544 = distinct !DISubprogram(name: "prb_read_valid_info", scope: !2, file: !2, line: 1967, type: !1545, scopeLine: 1969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1547)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!12, !20, !55, !51, !682}
!1547 = !{!1548, !1549, !1550, !1551, !1552}
!1548 = !DILocalVariable(name: "rb", arg: 1, scope: !1544, file: !2, line: 1967, type: !20)
!1549 = !DILocalVariable(name: "seq", arg: 2, scope: !1544, file: !2, line: 1967, type: !55)
!1550 = !DILocalVariable(name: "info", arg: 3, scope: !1544, file: !2, line: 1968, type: !51)
!1551 = !DILocalVariable(name: "line_count", arg: 4, scope: !1544, file: !2, line: 1968, type: !682)
!1552 = !DILocalVariable(name: "r", scope: !1544, file: !2, line: 1970, type: !100)
!1553 = !DILocation(line: 1967, column: 52, scope: !1544)
!1554 = !DILocation(line: 1967, column: 60, scope: !1544)
!1555 = !DILocation(line: 1968, column: 25, scope: !1544)
!1556 = !DILocation(line: 1968, column: 45, scope: !1544)
!1557 = !DILocation(line: 1970, column: 2, scope: !1544)
!1558 = !DILocation(line: 1970, column: 23, scope: !1544)
!1559 = !DILocation(line: 1972, column: 22, scope: !1544)
!1560 = !DILocation(line: 1972, column: 2, scope: !1544)
!1561 = !DILocation(line: 1974, column: 25, scope: !1544)
!1562 = !DILocation(line: 1974, column: 39, scope: !1544)
!1563 = !DILocation(line: 1974, column: 9, scope: !1544)
!1564 = !DILocation(line: 1975, column: 1, scope: !1544)
!1565 = !DILocation(line: 1974, column: 2, scope: !1544)
!1566 = distinct !DISubprogram(name: "prb_rec_init_rd", scope: !17, file: !17, line: 332, type: !1567, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{null, !99, !51, !92, !27}
!1569 = !{!1570, !1571, !1572, !1573}
!1570 = !DILocalVariable(name: "r", arg: 1, scope: !1566, file: !17, line: 332, type: !99)
!1571 = !DILocalVariable(name: "info", arg: 2, scope: !1566, file: !17, line: 333, type: !51)
!1572 = !DILocalVariable(name: "text_buf", arg: 3, scope: !1566, file: !17, line: 334, type: !92)
!1573 = !DILocalVariable(name: "text_buf_size", arg: 4, scope: !1566, file: !17, line: 334, type: !27)
!1574 = !DILocation(line: 332, column: 58, scope: !1566)
!1575 = !DILocation(line: 333, column: 28, scope: !1566)
!1576 = !DILocation(line: 334, column: 14, scope: !1566)
!1577 = !DILocation(line: 334, column: 37, scope: !1566)
!1578 = !DILocation(line: 336, column: 12, scope: !1566)
!1579 = !DILocation(line: 336, column: 2, scope: !1566)
!1580 = !DILocation(line: 336, column: 5, scope: !1566)
!1581 = !DILocation(line: 336, column: 10, scope: !1566)
!1582 = !DILocation(line: 337, column: 16, scope: !1566)
!1583 = !DILocation(line: 337, column: 2, scope: !1566)
!1584 = !DILocation(line: 337, column: 5, scope: !1566)
!1585 = !DILocation(line: 337, column: 14, scope: !1566)
!1586 = !DILocation(line: 338, column: 21, scope: !1566)
!1587 = !DILocation(line: 338, column: 2, scope: !1566)
!1588 = !DILocation(line: 338, column: 5, scope: !1566)
!1589 = !DILocation(line: 338, column: 19, scope: !1566)
!1590 = !DILocation(line: 339, column: 1, scope: !1566)
!1591 = distinct !DISubprogram(name: "prb_first_valid_seq", scope: !2, file: !2, line: 1992, type: !1592, scopeLine: 1993, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1594)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!55, !20}
!1594 = !{!1595, !1596}
!1595 = !DILocalVariable(name: "rb", arg: 1, scope: !1591, file: !2, line: 1992, type: !20)
!1596 = !DILocalVariable(name: "seq", scope: !1591, file: !2, line: 1994, type: !55)
!1597 = !DILocation(line: 1992, column: 51, scope: !1591)
!1598 = !DILocation(line: 1994, column: 2, scope: !1591)
!1599 = !DILocation(line: 1994, column: 6, scope: !1591)
!1600 = !DILocation(line: 1996, column: 23, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1591, file: !2, line: 1996, column: 6)
!1602 = !DILocation(line: 1996, column: 7, scope: !1601)
!1603 = !DILocation(line: 1996, column: 6, scope: !1591)
!1604 = !DILocation(line: 1997, column: 3, scope: !1601)
!1605 = !DILocation(line: 1999, column: 9, scope: !1591)
!1606 = !DILocation(line: 1999, column: 2, scope: !1591)
!1607 = !DILocation(line: 2000, column: 1, scope: !1591)
!1608 = distinct !DISubprogram(name: "prb_next_seq", scope: !2, file: !2, line: 2017, type: !1592, scopeLine: 2018, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614}
!1610 = !DILocalVariable(name: "rb", arg: 1, scope: !1608, file: !2, line: 2017, type: !20)
!1611 = !DILocalVariable(name: "desc_ring", scope: !1608, file: !2, line: 2019, type: !155)
!1612 = !DILocalVariable(name: "d_state", scope: !1608, file: !2, line: 2020, type: !112)
!1613 = !DILocalVariable(name: "id", scope: !1608, file: !2, line: 2021, type: !48)
!1614 = !DILocalVariable(name: "seq", scope: !1608, file: !2, line: 2022, type: !55)
!1615 = !DILocation(line: 2017, column: 44, scope: !1608)
!1616 = !DILocation(line: 2019, column: 2, scope: !1608)
!1617 = !DILocation(line: 2019, column: 24, scope: !1608)
!1618 = !DILocation(line: 2019, column: 37, scope: !1608)
!1619 = !DILocation(line: 2019, column: 41, scope: !1608)
!1620 = !DILocation(line: 2020, column: 2, scope: !1608)
!1621 = !DILocation(line: 2020, column: 18, scope: !1608)
!1622 = !DILocation(line: 2021, column: 2, scope: !1608)
!1623 = !DILocation(line: 2021, column: 16, scope: !1608)
!1624 = !DILocation(line: 2022, column: 2, scope: !1608)
!1625 = !DILocation(line: 2022, column: 6, scope: !1608)
!1626 = !DILocation(line: 2025, column: 25, scope: !1608)
!1627 = !DILocation(line: 2025, column: 36, scope: !1608)
!1628 = !DILocation(line: 2025, column: 7, scope: !1608)
!1629 = !DILocation(line: 2025, column: 5, scope: !1608)
!1630 = !DILocation(line: 2026, column: 22, scope: !1608)
!1631 = !DILocation(line: 2026, column: 33, scope: !1608)
!1632 = !DILocation(line: 2026, column: 12, scope: !1608)
!1633 = !DILocation(line: 2026, column: 10, scope: !1608)
!1634 = !DILocation(line: 2028, column: 6, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1608, file: !2, line: 2028, column: 6)
!1636 = !DILocation(line: 2028, column: 14, scope: !1635)
!1637 = !DILocation(line: 2028, column: 32, scope: !1635)
!1638 = !DILocation(line: 2028, column: 35, scope: !1635)
!1639 = !DILocation(line: 2028, column: 43, scope: !1635)
!1640 = !DILocation(line: 2028, column: 6, scope: !1608)
!1641 = !DILocation(line: 2036, column: 7, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !2, line: 2036, column: 7)
!1643 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 2028, column: 61)
!1644 = !DILocation(line: 2036, column: 11, scope: !1642)
!1645 = !DILocation(line: 2036, column: 7, scope: !1643)
!1646 = !DILocation(line: 2037, column: 7, scope: !1642)
!1647 = !DILocation(line: 2037, column: 4, scope: !1642)
!1648 = !DILocation(line: 2038, column: 2, scope: !1643)
!1649 = !DILocation(line: 2045, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 2038, column: 9)
!1651 = !DILocation(line: 2052, column: 2, scope: !1608)
!1652 = !DILocation(line: 2052, column: 25, scope: !1608)
!1653 = !DILocation(line: 2052, column: 9, scope: !1608)
!1654 = !DILocation(line: 2053, column: 6, scope: !1608)
!1655 = distinct !{!1655, !1651, !1654, !643, !644}
!1656 = !DILocation(line: 2055, column: 9, scope: !1608)
!1657 = !DILocation(line: 2056, column: 1, scope: !1608)
!1658 = !DILocation(line: 2055, column: 2, scope: !1608)
!1659 = distinct !DISubprogram(name: "desc_read", scope: !2, file: !2, line: 432, type: !1660, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1663)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!112, !155, !48, !29, !1491, !1662}
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!1663 = !{!1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674}
!1664 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !1659, file: !2, line: 432, type: !155)
!1665 = !DILocalVariable(name: "id", arg: 2, scope: !1659, file: !2, line: 433, type: !48)
!1666 = !DILocalVariable(name: "desc_out", arg: 3, scope: !1659, file: !2, line: 433, type: !29)
!1667 = !DILocalVariable(name: "seq_out", arg: 4, scope: !1659, file: !2, line: 434, type: !1491)
!1668 = !DILocalVariable(name: "caller_id_out", arg: 5, scope: !1659, file: !2, line: 434, type: !1662)
!1669 = !DILocalVariable(name: "info", scope: !1659, file: !2, line: 436, type: !51)
!1670 = !DILocalVariable(name: "desc", scope: !1659, file: !2, line: 437, type: !29)
!1671 = !DILocalVariable(name: "state_var", scope: !1659, file: !2, line: 438, type: !1318)
!1672 = !DILocalVariable(name: "d_state", scope: !1659, file: !2, line: 439, type: !112)
!1673 = !DILocalVariable(name: "state_val", scope: !1659, file: !2, line: 440, type: !48)
!1674 = !DILabel(scope: !1659, name: "out", file: !2, line: 532)
!1675 = !DILocation(line: 432, column: 56, scope: !1659)
!1676 = !DILocation(line: 433, column: 20, scope: !1659)
!1677 = !DILocation(line: 433, column: 41, scope: !1659)
!1678 = !DILocation(line: 434, column: 11, scope: !1659)
!1679 = !DILocation(line: 434, column: 25, scope: !1659)
!1680 = !DILocation(line: 436, column: 2, scope: !1659)
!1681 = !DILocation(line: 436, column: 22, scope: !1659)
!1682 = !DILocation(line: 436, column: 37, scope: !1659)
!1683 = !DILocation(line: 436, column: 48, scope: !1659)
!1684 = !DILocation(line: 436, column: 29, scope: !1659)
!1685 = !DILocation(line: 437, column: 2, scope: !1659)
!1686 = !DILocation(line: 437, column: 19, scope: !1659)
!1687 = !DILocation(line: 437, column: 34, scope: !1659)
!1688 = !DILocation(line: 437, column: 45, scope: !1659)
!1689 = !DILocation(line: 437, column: 26, scope: !1659)
!1690 = !DILocation(line: 438, column: 2, scope: !1659)
!1691 = !DILocation(line: 438, column: 17, scope: !1659)
!1692 = !DILocation(line: 438, column: 30, scope: !1659)
!1693 = !DILocation(line: 438, column: 36, scope: !1659)
!1694 = !DILocation(line: 439, column: 2, scope: !1659)
!1695 = !DILocation(line: 439, column: 18, scope: !1659)
!1696 = !DILocation(line: 440, column: 2, scope: !1659)
!1697 = !DILocation(line: 440, column: 16, scope: !1659)
!1698 = !DILocation(line: 443, column: 31, scope: !1659)
!1699 = !DILocation(line: 443, column: 14, scope: !1659)
!1700 = !DILocation(line: 443, column: 12, scope: !1659)
!1701 = !DILocation(line: 444, column: 27, scope: !1659)
!1702 = !DILocation(line: 444, column: 31, scope: !1659)
!1703 = !DILocation(line: 444, column: 12, scope: !1659)
!1704 = !DILocation(line: 444, column: 10, scope: !1659)
!1705 = !DILocation(line: 445, column: 6, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 445, column: 6)
!1707 = !DILocation(line: 445, column: 14, scope: !1706)
!1708 = !DILocation(line: 445, column: 27, scope: !1706)
!1709 = !DILocation(line: 445, column: 30, scope: !1706)
!1710 = !DILocation(line: 445, column: 38, scope: !1706)
!1711 = !DILocation(line: 445, column: 6, scope: !1659)
!1712 = !DILocation(line: 451, column: 3, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1706, file: !2, line: 445, column: 56)
!1714 = !DILocation(line: 470, column: 2, scope: !1659)
!1715 = !DILocation(line: 470, column: 2, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 470, column: 2)
!1717 = !DILocation(line: 470, column: 2, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 470, column: 2)
!1719 = !DILocation(line: 470, column: 2, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 470, column: 2)
!1721 = !DILocation(line: 470, column: 2, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1720, file: !2, line: 470, column: 2)
!1723 = !{i64 2150882129}
!1724 = !DILocation(line: 477, column: 6, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 477, column: 6)
!1726 = !DILocation(line: 477, column: 6, scope: !1659)
!1727 = !DILocation(line: 478, column: 11, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 477, column: 16)
!1729 = !DILocation(line: 478, column: 21, scope: !1728)
!1730 = !DILocation(line: 478, column: 37, scope: !1728)
!1731 = !DILocation(line: 478, column: 43, scope: !1728)
!1732 = !DILocation(line: 478, column: 3, scope: !1728)
!1733 = !DILocation(line: 480, column: 2, scope: !1728)
!1734 = !DILocation(line: 481, column: 6, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 481, column: 6)
!1736 = !DILocation(line: 481, column: 6, scope: !1659)
!1737 = !DILocation(line: 482, column: 14, scope: !1735)
!1738 = !DILocation(line: 482, column: 20, scope: !1735)
!1739 = !DILocation(line: 482, column: 4, scope: !1735)
!1740 = !DILocation(line: 482, column: 12, scope: !1735)
!1741 = !DILocation(line: 482, column: 3, scope: !1735)
!1742 = !DILocation(line: 483, column: 6, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 483, column: 6)
!1744 = !DILocation(line: 483, column: 6, scope: !1659)
!1745 = !DILocation(line: 484, column: 20, scope: !1743)
!1746 = !DILocation(line: 484, column: 26, scope: !1743)
!1747 = !DILocation(line: 484, column: 4, scope: !1743)
!1748 = !DILocation(line: 484, column: 18, scope: !1743)
!1749 = !DILocation(line: 484, column: 3, scope: !1743)
!1750 = !DILocation(line: 524, column: 2, scope: !1659)
!1751 = !DILocation(line: 524, column: 2, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 524, column: 2)
!1753 = !DILocation(line: 524, column: 2, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 524, column: 2)
!1755 = !DILocation(line: 524, column: 2, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 524, column: 2)
!1757 = !DILocation(line: 524, column: 2, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 524, column: 2)
!1759 = !{i64 2150882307}
!1760 = !DILocation(line: 530, column: 31, scope: !1659)
!1761 = !DILocation(line: 530, column: 14, scope: !1659)
!1762 = !DILocation(line: 530, column: 12, scope: !1659)
!1763 = !DILocation(line: 531, column: 27, scope: !1659)
!1764 = !DILocation(line: 531, column: 31, scope: !1659)
!1765 = !DILocation(line: 531, column: 12, scope: !1659)
!1766 = !DILocation(line: 531, column: 10, scope: !1659)
!1767 = !DILocation(line: 531, column: 2, scope: !1659)
!1768 = !DILocation(line: 532, column: 1, scope: !1659)
!1769 = !DILocation(line: 533, column: 6, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1659, file: !2, line: 533, column: 6)
!1771 = !DILocation(line: 533, column: 6, scope: !1659)
!1772 = !DILocation(line: 534, column: 20, scope: !1770)
!1773 = !DILocation(line: 534, column: 30, scope: !1770)
!1774 = !DILocation(line: 534, column: 41, scope: !1770)
!1775 = !DILocation(line: 534, column: 3, scope: !1770)
!1776 = !DILocation(line: 535, column: 9, scope: !1659)
!1777 = !DILocation(line: 536, column: 1, scope: !1659)
!1778 = !DILocation(line: 535, column: 2, scope: !1659)
!1779 = distinct !DISubprogram(name: "prb_init", scope: !2, file: !2, line: 2075, type: !1780, scopeLine: 2079, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1782)
!1780 = !DISubroutineType(types: !1781)
!1781 = !{null, !20, !92, !27, !29, !27, !51}
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788}
!1783 = !DILocalVariable(name: "rb", arg: 1, scope: !1779, file: !2, line: 2075, type: !20)
!1784 = !DILocalVariable(name: "text_buf", arg: 2, scope: !1779, file: !2, line: 2076, type: !92)
!1785 = !DILocalVariable(name: "textbits", arg: 3, scope: !1779, file: !2, line: 2076, type: !27)
!1786 = !DILocalVariable(name: "descs", arg: 4, scope: !1779, file: !2, line: 2077, type: !29)
!1787 = !DILocalVariable(name: "descbits", arg: 5, scope: !1779, file: !2, line: 2077, type: !27)
!1788 = !DILocalVariable(name: "infos", arg: 6, scope: !1779, file: !2, line: 2078, type: !51)
!1789 = !DILocation(line: 2075, column: 41, scope: !1779)
!1790 = !DILocation(line: 2076, column: 14, scope: !1779)
!1791 = !DILocation(line: 2076, column: 37, scope: !1779)
!1792 = !DILocation(line: 2077, column: 25, scope: !1779)
!1793 = !DILocation(line: 2077, column: 45, scope: !1779)
!1794 = !DILocation(line: 2078, column: 28, scope: !1779)
!1795 = !DILocation(line: 2080, column: 9, scope: !1779)
!1796 = !DILocation(line: 2080, column: 19, scope: !1779)
!1797 = !DILocation(line: 2080, column: 42, scope: !1779)
!1798 = !DILocation(line: 2080, column: 2, scope: !1779)
!1799 = !DILocation(line: 2081, column: 9, scope: !1779)
!1800 = !DILocation(line: 2081, column: 19, scope: !1779)
!1801 = !DILocation(line: 2081, column: 42, scope: !1779)
!1802 = !DILocation(line: 2081, column: 2, scope: !1779)
!1803 = !DILocation(line: 2083, column: 29, scope: !1779)
!1804 = !DILocation(line: 2083, column: 2, scope: !1779)
!1805 = !DILocation(line: 2083, column: 6, scope: !1779)
!1806 = !DILocation(line: 2083, column: 16, scope: !1779)
!1807 = !DILocation(line: 2083, column: 27, scope: !1779)
!1808 = !DILocation(line: 2084, column: 24, scope: !1779)
!1809 = !DILocation(line: 2084, column: 2, scope: !1779)
!1810 = !DILocation(line: 2084, column: 6, scope: !1779)
!1811 = !DILocation(line: 2084, column: 16, scope: !1779)
!1812 = !DILocation(line: 2084, column: 22, scope: !1779)
!1813 = !DILocation(line: 2085, column: 24, scope: !1779)
!1814 = !DILocation(line: 2085, column: 2, scope: !1779)
!1815 = !DILocation(line: 2085, column: 6, scope: !1779)
!1816 = !DILocation(line: 2085, column: 16, scope: !1779)
!1817 = !DILocation(line: 2085, column: 22, scope: !1779)
!1818 = !DILocation(line: 2086, column: 19, scope: !1779)
!1819 = !DILocation(line: 2086, column: 23, scope: !1779)
!1820 = !DILocation(line: 2086, column: 33, scope: !1779)
!1821 = !DILocation(line: 2086, column: 42, scope: !1779)
!1822 = !DILocation(line: 2086, column: 2, scope: !1779)
!1823 = !DILocation(line: 2087, column: 19, scope: !1779)
!1824 = !DILocation(line: 2087, column: 23, scope: !1779)
!1825 = !DILocation(line: 2087, column: 33, scope: !1779)
!1826 = !DILocation(line: 2087, column: 42, scope: !1779)
!1827 = !DILocation(line: 2087, column: 2, scope: !1779)
!1828 = !DILocation(line: 2088, column: 19, scope: !1779)
!1829 = !DILocation(line: 2088, column: 23, scope: !1779)
!1830 = !DILocation(line: 2088, column: 33, scope: !1779)
!1831 = !DILocation(line: 2088, column: 52, scope: !1779)
!1832 = !DILocation(line: 2088, column: 2, scope: !1779)
!1833 = !DILocation(line: 2090, column: 33, scope: !1779)
!1834 = !DILocation(line: 2090, column: 2, scope: !1779)
!1835 = !DILocation(line: 2090, column: 6, scope: !1779)
!1836 = !DILocation(line: 2090, column: 21, scope: !1779)
!1837 = !DILocation(line: 2090, column: 31, scope: !1779)
!1838 = !DILocation(line: 2091, column: 28, scope: !1779)
!1839 = !DILocation(line: 2091, column: 2, scope: !1779)
!1840 = !DILocation(line: 2091, column: 6, scope: !1779)
!1841 = !DILocation(line: 2091, column: 21, scope: !1779)
!1842 = !DILocation(line: 2091, column: 26, scope: !1779)
!1843 = !DILocation(line: 2092, column: 19, scope: !1779)
!1844 = !DILocation(line: 2092, column: 23, scope: !1779)
!1845 = !DILocation(line: 2092, column: 38, scope: !1779)
!1846 = !DILocation(line: 2092, column: 49, scope: !1779)
!1847 = !DILocation(line: 2092, column: 2, scope: !1779)
!1848 = !DILocation(line: 2093, column: 19, scope: !1779)
!1849 = !DILocation(line: 2093, column: 23, scope: !1779)
!1850 = !DILocation(line: 2093, column: 38, scope: !1779)
!1851 = !DILocation(line: 2093, column: 49, scope: !1779)
!1852 = !DILocation(line: 2093, column: 2, scope: !1779)
!1853 = !DILocation(line: 2095, column: 19, scope: !1779)
!1854 = !DILocation(line: 2095, column: 23, scope: !1779)
!1855 = !DILocation(line: 2095, column: 2, scope: !1779)
!1856 = !DILocation(line: 2097, column: 20, scope: !1779)
!1857 = !DILocation(line: 2097, column: 26, scope: !1779)
!1858 = !DILocation(line: 2097, column: 49, scope: !1779)
!1859 = !DILocation(line: 2097, column: 54, scope: !1779)
!1860 = !DILocation(line: 2097, column: 66, scope: !1779)
!1861 = !DILocation(line: 2097, column: 2, scope: !1779)
!1862 = !DILocation(line: 2098, column: 2, scope: !1779)
!1863 = !DILocation(line: 2098, column: 8, scope: !1779)
!1864 = !DILocation(line: 2098, column: 31, scope: !1779)
!1865 = !DILocation(line: 2098, column: 36, scope: !1779)
!1866 = !DILocation(line: 2098, column: 50, scope: !1779)
!1867 = !DILocation(line: 2098, column: 56, scope: !1779)
!1868 = !DILocation(line: 2099, column: 2, scope: !1779)
!1869 = !DILocation(line: 2099, column: 8, scope: !1779)
!1870 = !DILocation(line: 2099, column: 31, scope: !1779)
!1871 = !DILocation(line: 2099, column: 36, scope: !1779)
!1872 = !DILocation(line: 2099, column: 50, scope: !1779)
!1873 = !DILocation(line: 2099, column: 55, scope: !1779)
!1874 = !DILocation(line: 2101, column: 23, scope: !1779)
!1875 = !DILocation(line: 2101, column: 18, scope: !1779)
!1876 = !DILocation(line: 2101, column: 17, scope: !1779)
!1877 = !DILocation(line: 2101, column: 2, scope: !1779)
!1878 = !DILocation(line: 2101, column: 11, scope: !1779)
!1879 = !DILocation(line: 2101, column: 15, scope: !1779)
!1880 = !DILocation(line: 2102, column: 2, scope: !1779)
!1881 = !DILocation(line: 2102, column: 8, scope: !1779)
!1882 = !DILocation(line: 2102, column: 31, scope: !1779)
!1883 = !DILocation(line: 2102, column: 36, scope: !1779)
!1884 = !DILocation(line: 2102, column: 40, scope: !1779)
!1885 = !DILocation(line: 2103, column: 1, scope: !1779)
!1886 = distinct !DISubprogram(name: "prb_record_text_space", scope: !2, file: !2, line: 2121, type: !1887, scopeLine: 2122, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1889)
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!27, !15}
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "e", arg: 1, scope: !1886, file: !2, line: 2121, type: !15)
!1891 = !DILocation(line: 2121, column: 63, scope: !1886)
!1892 = !DILocation(line: 2123, column: 9, scope: !1886)
!1893 = !DILocation(line: 2123, column: 12, scope: !1886)
!1894 = !DILocation(line: 2123, column: 2, scope: !1886)
!1895 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !422, file: !422, line: 65, type: !423, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!1896 = !DILocation(line: 67, column: 9, scope: !1895)
!1897 = !DILocation(line: 67, column: 2, scope: !1895)
!1898 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !422, file: !422, line: 70, type: !1899, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null}
!1901 = !DILocation(line: 72, column: 2, scope: !1898)
!1902 = !DILocation(line: 73, column: 1, scope: !1898)
!1903 = distinct !DISubprogram(name: "native_save_fl", scope: !422, file: !422, line: 17, type: !423, scopeLine: 18, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "flags", scope: !1903, file: !422, line: 19, type: !48)
!1906 = !DILocation(line: 19, column: 2, scope: !1903)
!1907 = !DILocation(line: 19, column: 16, scope: !1903)
!1908 = !DILocation(line: 26, column: 2, scope: !1903)
!1909 = !{i64 648010, i64 648031}
!1910 = !DILocation(line: 32, column: 9, scope: !1903)
!1911 = !DILocation(line: 33, column: 1, scope: !1903)
!1912 = !DILocation(line: 32, column: 2, scope: !1903)
!1913 = distinct !DISubprogram(name: "native_irq_disable", scope: !422, file: !422, line: 35, type: !1899, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!1914 = !DILocation(line: 37, column: 2, scope: !1913)
!1915 = !{i64 648214}
!1916 = !DILocation(line: 38, column: 1, scope: !1913)
!1917 = distinct !DISubprogram(name: "atomic_long_try_cmpxchg", scope: !1315, file: !1315, line: 4398, type: !1918, scopeLine: 4399, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1921)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!12, !1318, !1920, !1431}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1921 = !{!1922, !1923, !1924}
!1922 = !DILocalVariable(name: "v", arg: 1, scope: !1917, file: !1315, line: 4398, type: !1318)
!1923 = !DILocalVariable(name: "old", arg: 2, scope: !1917, file: !1315, line: 4398, type: !1920)
!1924 = !DILocalVariable(name: "new", arg: 3, scope: !1917, file: !1315, line: 4398, type: !1431)
!1925 = !DILocation(line: 4398, column: 40, scope: !1917)
!1926 = !DILocation(line: 4398, column: 49, scope: !1917)
!1927 = !DILocation(line: 4398, column: 59, scope: !1917)
!1928 = !DILocation(line: 4400, column: 2, scope: !1917)
!1929 = !DILocation(line: 4400, column: 2, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1917, file: !1315, line: 4400, column: 2)
!1931 = !DILocation(line: 4401, column: 31, scope: !1917)
!1932 = !DILocation(line: 4401, column: 2, scope: !1917)
!1933 = !DILocation(line: 4402, column: 31, scope: !1917)
!1934 = !DILocation(line: 4402, column: 2, scope: !1917)
!1935 = !DILocation(line: 4403, column: 37, scope: !1917)
!1936 = !DILocation(line: 4403, column: 40, scope: !1917)
!1937 = !DILocation(line: 4403, column: 45, scope: !1917)
!1938 = !DILocation(line: 4403, column: 9, scope: !1917)
!1939 = !DILocation(line: 4403, column: 2, scope: !1917)
!1940 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !1941, file: !1941, line: 94, type: !1942, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1951)
!1941 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!1942 = !DISubroutineType(types: !1943)
!1943 = !{null, !1944, !1947}
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1946)
!1946 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1947 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !13, line: 61, baseType: !1948)
!1948 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !1949, line: 72, baseType: !1950)
!1949 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !1949, line: 16, baseType: !48)
!1951 = !{!1952, !1953}
!1952 = !DILocalVariable(name: "v", arg: 1, scope: !1940, file: !1941, line: 94, type: !1944)
!1953 = !DILocalVariable(name: "size", arg: 2, scope: !1940, file: !1941, line: 94, type: !1947)
!1954 = !DILocation(line: 94, column: 79, scope: !1940)
!1955 = !DILocation(line: 94, column: 89, scope: !1940)
!1956 = !DILocation(line: 96, column: 20, scope: !1940)
!1957 = !DILocation(line: 96, column: 23, scope: !1940)
!1958 = !DILocation(line: 96, column: 2, scope: !1940)
!1959 = !DILocation(line: 97, column: 2, scope: !1940)
!1960 = !DILocation(line: 98, column: 1, scope: !1940)
!1961 = distinct !DISubprogram(name: "raw_atomic_long_try_cmpxchg", scope: !34, file: !34, line: 1450, type: !1918, scopeLine: 1451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1962)
!1962 = !{!1963, !1964, !1965}
!1963 = !DILocalVariable(name: "v", arg: 1, scope: !1961, file: !34, line: 1450, type: !1318)
!1964 = !DILocalVariable(name: "old", arg: 2, scope: !1961, file: !34, line: 1450, type: !1920)
!1965 = !DILocalVariable(name: "new", arg: 3, scope: !1961, file: !34, line: 1450, type: !1431)
!1966 = !DILocation(line: 1450, column: 44, scope: !1961)
!1967 = !DILocation(line: 1450, column: 53, scope: !1961)
!1968 = !DILocation(line: 1450, column: 63, scope: !1961)
!1969 = !DILocation(line: 1453, column: 34, scope: !1961)
!1970 = !DILocation(line: 1453, column: 44, scope: !1961)
!1971 = !DILocation(line: 1453, column: 49, scope: !1961)
!1972 = !DILocation(line: 1453, column: 9, scope: !1961)
!1973 = !DILocation(line: 1453, column: 2, scope: !1961)
!1974 = distinct !DISubprogram(name: "kasan_check_write", scope: !1975, file: !1975, line: 44, type: !1976, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1978)
!1975 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!1976 = !DISubroutineType(types: !1977)
!1977 = !{!12, !1944, !27}
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "p", arg: 1, scope: !1974, file: !1975, line: 44, type: !1944)
!1980 = !DILocalVariable(name: "size", arg: 2, scope: !1974, file: !1975, line: 44, type: !27)
!1981 = !DILocation(line: 44, column: 59, scope: !1974)
!1982 = !DILocation(line: 44, column: 75, scope: !1974)
!1983 = !DILocation(line: 46, column: 2, scope: !1974)
!1984 = distinct !DISubprogram(name: "kcsan_check_access", scope: !1985, file: !1985, line: 229, type: !1986, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !1988)
!1985 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!1986 = !DISubroutineType(types: !1987)
!1987 = !{null, !1944, !1947, !113}
!1988 = !{!1989, !1990, !1991}
!1989 = !DILocalVariable(name: "ptr", arg: 1, scope: !1984, file: !1985, line: 229, type: !1944)
!1990 = !DILocalVariable(name: "size", arg: 2, scope: !1984, file: !1985, line: 229, type: !1947)
!1991 = !DILocalVariable(name: "type", arg: 3, scope: !1984, file: !1985, line: 230, type: !113)
!1992 = !DILocation(line: 229, column: 60, scope: !1984)
!1993 = !DILocation(line: 229, column: 72, scope: !1984)
!1994 = !DILocation(line: 230, column: 15, scope: !1984)
!1995 = !DILocation(line: 230, column: 23, scope: !1984)
!1996 = distinct !DISubprogram(name: "raw_atomic64_try_cmpxchg", scope: !1997, file: !1997, line: 4221, type: !1998, scopeLine: 4222, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2001)
!1997 = !DIFile(filename: "./include/linux/atomic/atomic-arch-fallback.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e0aee41367dd2832d280bde130fbfcb0")
!1998 = !DISubroutineType(types: !1999)
!1999 = !{!12, !2000, !121, !39}
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!2001 = !{!2002, !2003, !2004}
!2002 = !DILocalVariable(name: "v", arg: 1, scope: !1996, file: !1997, line: 4221, type: !2000)
!2003 = !DILocalVariable(name: "old", arg: 2, scope: !1996, file: !1997, line: 4221, type: !121)
!2004 = !DILocalVariable(name: "new", arg: 3, scope: !1996, file: !1997, line: 4221, type: !39)
!2005 = !DILocation(line: 4221, column: 38, scope: !1996)
!2006 = !DILocation(line: 4221, column: 46, scope: !1996)
!2007 = !DILocation(line: 4221, column: 55, scope: !1996)
!2008 = !DILocation(line: 4224, column: 35, scope: !1996)
!2009 = !DILocation(line: 4224, column: 38, scope: !1996)
!2010 = !DILocation(line: 4224, column: 43, scope: !1996)
!2011 = !DILocation(line: 4224, column: 9, scope: !1996)
!2012 = !DILocation(line: 4224, column: 2, scope: !1996)
!2013 = distinct !DISubprogram(name: "arch_atomic64_try_cmpxchg", scope: !2014, file: !2014, line: 107, type: !1998, scopeLine: 108, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2015)
!2014 = !DIFile(filename: "./arch/x86/include/asm/atomic64_64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e491f305c5821f66703047d9c813539")
!2015 = !{!2016, !2017, !2018, !2019, !2021, !2022, !2023, !2024}
!2016 = !DILocalVariable(name: "v", arg: 1, scope: !2013, file: !2014, line: 107, type: !2000)
!2017 = !DILocalVariable(name: "old", arg: 2, scope: !2013, file: !2014, line: 107, type: !121)
!2018 = !DILocalVariable(name: "new", arg: 3, scope: !2013, file: !2014, line: 107, type: !39)
!2019 = !DILocalVariable(name: "success", scope: !2020, file: !2014, line: 109, type: !12)
!2020 = distinct !DILexicalBlock(scope: !2013, file: !2014, line: 109, column: 9)
!2021 = !DILocalVariable(name: "_old", scope: !2020, file: !2014, line: 109, type: !121)
!2022 = !DILocalVariable(name: "__old", scope: !2020, file: !2014, line: 109, type: !39)
!2023 = !DILocalVariable(name: "__new", scope: !2020, file: !2014, line: 109, type: !39)
!2024 = !DILocalVariable(name: "__ptr", scope: !2020, file: !2014, line: 109, type: !122)
!2025 = !DILocation(line: 107, column: 67, scope: !2013)
!2026 = !DILocation(line: 107, column: 75, scope: !2013)
!2027 = !DILocation(line: 107, column: 84, scope: !2013)
!2028 = !DILocation(line: 109, column: 9, scope: !2020)
!2029 = !{i64 2148496460, i64 2148496499, i64 2148496520, i64 2148496557, i64 2148496580, i64 2148496589, i64 2148496790}
!2030 = !DILocation(line: 109, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2020, file: !2014, line: 109, column: 9)
!2032 = !DILocation(line: 109, column: 9, scope: !2013)
!2033 = !DILocation(line: 109, column: 2, scope: !2013)
!2034 = distinct !DISubprogram(name: "arch_irqs_disabled_flags", scope: !422, file: !422, line: 120, type: !2035, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!113, !48}
!2037 = !{!2038}
!2038 = !DILocalVariable(name: "flags", arg: 1, scope: !2034, file: !422, line: 120, type: !48)
!2039 = !DILocation(line: 120, column: 67, scope: !2034)
!2040 = !DILocation(line: 122, column: 11, scope: !2034)
!2041 = !DILocation(line: 122, column: 17, scope: !2034)
!2042 = !DILocation(line: 122, column: 9, scope: !2034)
!2043 = !DILocation(line: 122, column: 2, scope: !2034)
!2044 = distinct !DISubprogram(name: "arch_local_irq_enable", scope: !422, file: !422, line: 75, type: !1899, scopeLine: 76, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!2045 = !DILocation(line: 77, column: 2, scope: !2044)
!2046 = !DILocation(line: 78, column: 1, scope: !2044)
!2047 = distinct !DISubprogram(name: "native_irq_enable", scope: !422, file: !422, line: 40, type: !1899, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105)
!2048 = !DILocation(line: 42, column: 2, scope: !2047)
!2049 = !{i64 648306}
!2050 = !DILocation(line: 43, column: 1, scope: !2047)
!2051 = distinct !DISubprogram(name: "to_blk_size", scope: !2, file: !2, line: 379, type: !2052, scopeLine: 380, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2054)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!27, !27}
!2054 = !{!2055, !2056}
!2055 = !DILocalVariable(name: "size", arg: 1, scope: !2051, file: !2, line: 379, type: !27)
!2056 = !DILocalVariable(name: "db", scope: !2051, file: !2, line: 381, type: !538)
!2057 = !DILocation(line: 379, column: 46, scope: !2051)
!2058 = !DILocation(line: 381, column: 2, scope: !2051)
!2059 = !DILocation(line: 381, column: 25, scope: !2051)
!2060 = !DILocation(line: 383, column: 7, scope: !2051)
!2061 = !DILocation(line: 384, column: 9, scope: !2051)
!2062 = !DILocation(line: 384, column: 7, scope: !2051)
!2063 = !DILocation(line: 385, column: 9, scope: !2051)
!2064 = !DILocation(line: 386, column: 1, scope: !2051)
!2065 = !DILocation(line: 385, column: 2, scope: !2051)
!2066 = distinct !DISubprogram(name: "get_next_lpos", scope: !2, file: !2, line: 1002, type: !2067, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2069)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{!48, !533, !48, !27}
!2069 = !{!2070, !2071, !2072, !2073, !2074}
!2070 = !DILocalVariable(name: "data_ring", arg: 1, scope: !2066, file: !2, line: 1002, type: !533)
!2071 = !DILocalVariable(name: "lpos", arg: 2, scope: !2066, file: !2, line: 1003, type: !48)
!2072 = !DILocalVariable(name: "size", arg: 3, scope: !2066, file: !2, line: 1003, type: !27)
!2073 = !DILocalVariable(name: "begin_lpos", scope: !2066, file: !2, line: 1005, type: !48)
!2074 = !DILocalVariable(name: "next_lpos", scope: !2066, file: !2, line: 1006, type: !48)
!2075 = !DILocation(line: 1002, column: 58, scope: !2066)
!2076 = !DILocation(line: 1003, column: 22, scope: !2066)
!2077 = !DILocation(line: 1003, column: 41, scope: !2066)
!2078 = !DILocation(line: 1005, column: 2, scope: !2066)
!2079 = !DILocation(line: 1005, column: 16, scope: !2066)
!2080 = !DILocation(line: 1006, column: 2, scope: !2066)
!2081 = !DILocation(line: 1006, column: 16, scope: !2066)
!2082 = !DILocation(line: 1008, column: 15, scope: !2066)
!2083 = !DILocation(line: 1008, column: 13, scope: !2066)
!2084 = !DILocation(line: 1009, column: 14, scope: !2066)
!2085 = !DILocation(line: 1009, column: 21, scope: !2066)
!2086 = !DILocation(line: 1009, column: 19, scope: !2066)
!2087 = !DILocation(line: 1009, column: 12, scope: !2066)
!2088 = !DILocation(line: 1012, column: 6, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2066, file: !2, line: 1012, column: 6)
!2090 = !DILocation(line: 1012, column: 43, scope: !2089)
!2091 = !DILocation(line: 1012, column: 40, scope: !2089)
!2092 = !DILocation(line: 1012, column: 6, scope: !2066)
!2093 = !DILocation(line: 1013, column: 10, scope: !2089)
!2094 = !DILocation(line: 1013, column: 3, scope: !2089)
!2095 = !DILocation(line: 1016, column: 10, scope: !2066)
!2096 = !DILocation(line: 1016, column: 60, scope: !2066)
!2097 = !DILocation(line: 1016, column: 58, scope: !2066)
!2098 = !DILocation(line: 1016, column: 2, scope: !2066)
!2099 = !DILocation(line: 1017, column: 1, scope: !2066)
!2100 = distinct !DISubprogram(name: "data_push_tail", scope: !2, file: !2, line: 632, type: !2101, scopeLine: 633, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2103)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!12, !20, !48}
!2103 = !{!2104, !2105, !2106, !2107, !2108, !2109}
!2104 = !DILocalVariable(name: "rb", arg: 1, scope: !2100, file: !2, line: 632, type: !20)
!2105 = !DILocalVariable(name: "lpos", arg: 2, scope: !2100, file: !2, line: 632, type: !48)
!2106 = !DILocalVariable(name: "data_ring", scope: !2100, file: !2, line: 634, type: !533)
!2107 = !DILocalVariable(name: "tail_lpos_new", scope: !2100, file: !2, line: 635, type: !48)
!2108 = !DILocalVariable(name: "tail_lpos", scope: !2100, file: !2, line: 636, type: !48)
!2109 = !DILocalVariable(name: "next_lpos", scope: !2100, file: !2, line: 637, type: !48)
!2110 = !DILocation(line: 632, column: 54, scope: !2100)
!2111 = !DILocation(line: 632, column: 72, scope: !2100)
!2112 = !DILocation(line: 634, column: 2, scope: !2100)
!2113 = !DILocation(line: 634, column: 24, scope: !2100)
!2114 = !DILocation(line: 634, column: 37, scope: !2100)
!2115 = !DILocation(line: 634, column: 41, scope: !2100)
!2116 = !DILocation(line: 635, column: 2, scope: !2100)
!2117 = !DILocation(line: 635, column: 16, scope: !2100)
!2118 = !DILocation(line: 636, column: 2, scope: !2100)
!2119 = !DILocation(line: 636, column: 16, scope: !2100)
!2120 = !DILocation(line: 637, column: 2, scope: !2100)
!2121 = !DILocation(line: 637, column: 16, scope: !2100)
!2122 = !DILocation(line: 640, column: 6, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 640, column: 6)
!2124 = !DILocation(line: 640, column: 6, scope: !2100)
!2125 = !DILocation(line: 641, column: 3, scope: !2123)
!2126 = !DILocation(line: 661, column: 32, scope: !2100)
!2127 = !DILocation(line: 661, column: 43, scope: !2100)
!2128 = !DILocation(line: 661, column: 14, scope: !2100)
!2129 = !DILocation(line: 661, column: 12, scope: !2100)
!2130 = !DILocation(line: 670, column: 2, scope: !2100)
!2131 = !DILocation(line: 670, column: 10, scope: !2100)
!2132 = !DILocation(line: 670, column: 17, scope: !2100)
!2133 = !DILocation(line: 670, column: 15, scope: !2100)
!2134 = !DILocation(line: 670, column: 28, scope: !2100)
!2135 = !DILocation(line: 670, column: 34, scope: !2100)
!2136 = !DILocation(line: 670, column: 32, scope: !2100)
!2137 = !DILocation(line: 675, column: 27, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !2, line: 675, column: 7)
!2139 = distinct !DILexicalBlock(scope: !2100, file: !2, line: 670, column: 56)
!2140 = !DILocation(line: 675, column: 31, scope: !2138)
!2141 = !DILocation(line: 675, column: 42, scope: !2138)
!2142 = !DILocation(line: 675, column: 8, scope: !2138)
!2143 = !DILocation(line: 675, column: 7, scope: !2139)
!2144 = !DILocation(line: 731, column: 4, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2138, file: !2, line: 675, column: 61)
!2146 = !DILocation(line: 731, column: 4, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 731, column: 4)
!2148 = !DILocation(line: 731, column: 4, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 731, column: 4)
!2150 = !DILocation(line: 731, column: 4, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2147, file: !2, line: 731, column: 4)
!2152 = !DILocation(line: 731, column: 4, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !2, line: 731, column: 4)
!2154 = !{i64 2150882936}
!2155 = !DILocation(line: 733, column: 38, scope: !2145)
!2156 = !DILocation(line: 733, column: 49, scope: !2145)
!2157 = !DILocation(line: 733, column: 20, scope: !2145)
!2158 = !DILocation(line: 733, column: 18, scope: !2145)
!2159 = !DILocation(line: 735, column: 8, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2145, file: !2, line: 735, column: 8)
!2161 = !DILocation(line: 735, column: 25, scope: !2160)
!2162 = !DILocation(line: 735, column: 22, scope: !2160)
!2163 = !DILocation(line: 735, column: 8, scope: !2145)
!2164 = !DILocation(line: 736, column: 5, scope: !2160)
!2165 = !DILocation(line: 739, column: 16, scope: !2145)
!2166 = !DILocation(line: 739, column: 14, scope: !2145)
!2167 = !DILocation(line: 740, column: 4, scope: !2145)
!2168 = distinct !{!2168, !2130, !2169, !643, !644}
!2169 = !DILocation(line: 754, column: 2, scope: !2100)
!2170 = !DILocation(line: 750, column: 32, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2139, file: !2, line: 750, column: 7)
!2172 = !DILocation(line: 750, column: 43, scope: !2171)
!2173 = !DILocation(line: 751, column: 10, scope: !2171)
!2174 = !DILocation(line: 750, column: 7, scope: !2171)
!2175 = !DILocation(line: 750, column: 7, scope: !2139)
!2176 = !DILocation(line: 752, column: 4, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2171, file: !2, line: 751, column: 22)
!2178 = !DILocation(line: 756, column: 2, scope: !2100)
!2179 = !DILocation(line: 757, column: 1, scope: !2100)
!2180 = distinct !DISubprogram(name: "to_block", scope: !2, file: !2, line: 369, type: !2181, scopeLine: 371, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2183)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!538, !533, !48}
!2183 = !{!2184, !2185}
!2184 = !DILocalVariable(name: "data_ring", arg: 1, scope: !2180, file: !2, line: 369, type: !533)
!2185 = !DILocalVariable(name: "begin_lpos", arg: 2, scope: !2180, file: !2, line: 370, type: !48)
!2186 = !DILocation(line: 369, column: 62, scope: !2180)
!2187 = !DILocation(line: 370, column: 26, scope: !2180)
!2188 = !DILocation(line: 372, column: 18, scope: !2180)
!2189 = !DILocation(line: 372, column: 29, scope: !2180)
!2190 = !DILocation(line: 372, column: 34, scope: !2180)
!2191 = !DILocation(line: 372, column: 2, scope: !2180)
!2192 = distinct !DISubprogram(name: "data_make_reusable", scope: !2, file: !2, line: 564, type: !2193, scopeLine: 568, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!12, !20, !48, !48, !437}
!2195 = !{!2196, !2197, !2198, !2199, !2200, !2201, !2202, !2203, !2204, !2205, !2206}
!2196 = !DILocalVariable(name: "rb", arg: 1, scope: !2192, file: !2, line: 564, type: !20)
!2197 = !DILocalVariable(name: "lpos_begin", arg: 2, scope: !2192, file: !2, line: 565, type: !48)
!2198 = !DILocalVariable(name: "lpos_end", arg: 3, scope: !2192, file: !2, line: 566, type: !48)
!2199 = !DILocalVariable(name: "lpos_out", arg: 4, scope: !2192, file: !2, line: 567, type: !437)
!2200 = !DILocalVariable(name: "data_ring", scope: !2192, file: !2, line: 570, type: !533)
!2201 = !DILocalVariable(name: "desc_ring", scope: !2192, file: !2, line: 571, type: !155)
!2202 = !DILocalVariable(name: "blk", scope: !2192, file: !2, line: 572, type: !538)
!2203 = !DILocalVariable(name: "d_state", scope: !2192, file: !2, line: 573, type: !112)
!2204 = !DILocalVariable(name: "desc", scope: !2192, file: !2, line: 574, type: !30)
!2205 = !DILocalVariable(name: "blk_lpos", scope: !2192, file: !2, line: 575, type: !570)
!2206 = !DILocalVariable(name: "id", scope: !2192, file: !2, line: 576, type: !48)
!2207 = !DILocation(line: 564, column: 58, scope: !2192)
!2208 = !DILocation(line: 565, column: 25, scope: !2192)
!2209 = !DILocation(line: 566, column: 25, scope: !2192)
!2210 = !DILocation(line: 567, column: 26, scope: !2192)
!2211 = !DILocation(line: 570, column: 2, scope: !2192)
!2212 = !DILocation(line: 570, column: 24, scope: !2192)
!2213 = !DILocation(line: 570, column: 37, scope: !2192)
!2214 = !DILocation(line: 570, column: 41, scope: !2192)
!2215 = !DILocation(line: 571, column: 2, scope: !2192)
!2216 = !DILocation(line: 571, column: 24, scope: !2192)
!2217 = !DILocation(line: 571, column: 37, scope: !2192)
!2218 = !DILocation(line: 571, column: 41, scope: !2192)
!2219 = !DILocation(line: 572, column: 2, scope: !2192)
!2220 = !DILocation(line: 572, column: 25, scope: !2192)
!2221 = !DILocation(line: 573, column: 2, scope: !2192)
!2222 = !DILocation(line: 573, column: 18, scope: !2192)
!2223 = !DILocation(line: 574, column: 2, scope: !2192)
!2224 = !DILocation(line: 574, column: 18, scope: !2192)
!2225 = !DILocation(line: 575, column: 2, scope: !2192)
!2226 = !DILocation(line: 575, column: 28, scope: !2192)
!2227 = !DILocation(line: 575, column: 45, scope: !2192)
!2228 = !DILocation(line: 576, column: 2, scope: !2192)
!2229 = !DILocation(line: 576, column: 16, scope: !2192)
!2230 = !DILocation(line: 579, column: 2, scope: !2192)
!2231 = !DILocation(line: 579, column: 10, scope: !2192)
!2232 = !DILocation(line: 579, column: 21, scope: !2192)
!2233 = !DILocation(line: 579, column: 19, scope: !2192)
!2234 = !DILocation(line: 579, column: 33, scope: !2192)
!2235 = !DILocation(line: 579, column: 39, scope: !2192)
!2236 = !DILocation(line: 579, column: 37, scope: !2192)
!2237 = !DILocation(line: 580, column: 18, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2192, file: !2, line: 579, column: 61)
!2239 = !DILocation(line: 580, column: 29, scope: !2238)
!2240 = !DILocation(line: 580, column: 9, scope: !2238)
!2241 = !DILocation(line: 580, column: 7, scope: !2238)
!2242 = !DILocation(line: 590, column: 8, scope: !2238)
!2243 = !DILocation(line: 590, column: 13, scope: !2238)
!2244 = !DILocation(line: 590, column: 6, scope: !2238)
!2245 = !DILocation(line: 592, column: 23, scope: !2238)
!2246 = !DILocation(line: 592, column: 34, scope: !2238)
!2247 = !DILocation(line: 592, column: 13, scope: !2238)
!2248 = !DILocation(line: 592, column: 11, scope: !2238)
!2249 = !DILocation(line: 595, column: 11, scope: !2238)
!2250 = !DILocation(line: 595, column: 3, scope: !2238)
!2251 = !DILocation(line: 599, column: 4, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 595, column: 20)
!2253 = !DILocation(line: 605, column: 8, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 605, column: 8)
!2255 = !DILocation(line: 605, column: 18, scope: !2254)
!2256 = !DILocation(line: 605, column: 27, scope: !2254)
!2257 = !DILocation(line: 605, column: 24, scope: !2254)
!2258 = !DILocation(line: 605, column: 8, scope: !2252)
!2259 = !DILocation(line: 606, column: 5, scope: !2254)
!2260 = !DILocation(line: 607, column: 23, scope: !2252)
!2261 = !DILocation(line: 607, column: 34, scope: !2252)
!2262 = !DILocation(line: 607, column: 4, scope: !2252)
!2263 = !DILocation(line: 608, column: 4, scope: !2252)
!2264 = !DILocation(line: 614, column: 8, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2252, file: !2, line: 614, column: 8)
!2266 = !DILocation(line: 614, column: 18, scope: !2265)
!2267 = !DILocation(line: 614, column: 27, scope: !2265)
!2268 = !DILocation(line: 614, column: 24, scope: !2265)
!2269 = !DILocation(line: 614, column: 8, scope: !2252)
!2270 = !DILocation(line: 615, column: 5, scope: !2265)
!2271 = !DILocation(line: 616, column: 4, scope: !2252)
!2272 = !DILocation(line: 620, column: 16, scope: !2238)
!2273 = !DILocation(line: 620, column: 26, scope: !2238)
!2274 = !DILocation(line: 620, column: 14, scope: !2238)
!2275 = distinct !{!2275, !2230, !2276, !643, !644}
!2276 = !DILocation(line: 621, column: 2, scope: !2192)
!2277 = !DILocation(line: 623, column: 14, scope: !2192)
!2278 = !DILocation(line: 623, column: 3, scope: !2192)
!2279 = !DILocation(line: 623, column: 12, scope: !2192)
!2280 = !DILocation(line: 624, column: 2, scope: !2192)
!2281 = !DILocation(line: 625, column: 1, scope: !2192)
!2282 = distinct !DISubprogram(name: "desc_make_reusable", scope: !2, file: !2, line: 543, type: !1340, scopeLine: 545, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2283)
!2283 = !{!2284, !2285, !2286, !2287, !2288, !2289}
!2284 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !2282, file: !2, line: 543, type: !155)
!2285 = !DILocalVariable(name: "id", arg: 2, scope: !2282, file: !2, line: 544, type: !48)
!2286 = !DILocalVariable(name: "val_finalized", scope: !2282, file: !2, line: 546, type: !48)
!2287 = !DILocalVariable(name: "val_reusable", scope: !2282, file: !2, line: 547, type: !48)
!2288 = !DILocalVariable(name: "desc", scope: !2282, file: !2, line: 548, type: !29)
!2289 = !DILocalVariable(name: "state_var", scope: !2282, file: !2, line: 549, type: !1318)
!2290 = !DILocation(line: 543, column: 54, scope: !2282)
!2291 = !DILocation(line: 544, column: 25, scope: !2282)
!2292 = !DILocation(line: 546, column: 2, scope: !2282)
!2293 = !DILocation(line: 546, column: 16, scope: !2282)
!2294 = !DILocation(line: 546, column: 32, scope: !2282)
!2295 = !DILocation(line: 547, column: 2, scope: !2282)
!2296 = !DILocation(line: 547, column: 16, scope: !2282)
!2297 = !DILocation(line: 547, column: 31, scope: !2282)
!2298 = !DILocation(line: 548, column: 2, scope: !2282)
!2299 = !DILocation(line: 548, column: 19, scope: !2282)
!2300 = !DILocation(line: 548, column: 34, scope: !2282)
!2301 = !DILocation(line: 548, column: 45, scope: !2282)
!2302 = !DILocation(line: 548, column: 26, scope: !2282)
!2303 = !DILocation(line: 549, column: 2, scope: !2282)
!2304 = !DILocation(line: 549, column: 17, scope: !2282)
!2305 = !DILocation(line: 549, column: 30, scope: !2282)
!2306 = !DILocation(line: 549, column: 36, scope: !2282)
!2307 = !DILocation(line: 551, column: 30, scope: !2282)
!2308 = !DILocation(line: 551, column: 41, scope: !2282)
!2309 = !DILocation(line: 552, column: 9, scope: !2282)
!2310 = !DILocation(line: 551, column: 2, scope: !2282)
!2311 = !DILocation(line: 553, column: 1, scope: !2282)
!2312 = distinct !DISubprogram(name: "atomic_long_cmpxchg_relaxed", scope: !1315, file: !1315, line: 4378, type: !2313, scopeLine: 4379, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2315)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!1431, !1318, !1431, !1431}
!2315 = !{!2316, !2317, !2318}
!2316 = !DILocalVariable(name: "v", arg: 1, scope: !2312, file: !1315, line: 4378, type: !1318)
!2317 = !DILocalVariable(name: "old", arg: 2, scope: !2312, file: !1315, line: 4378, type: !1431)
!2318 = !DILocalVariable(name: "new", arg: 3, scope: !2312, file: !1315, line: 4378, type: !1431)
!2319 = !DILocation(line: 4378, column: 44, scope: !2312)
!2320 = !DILocation(line: 4378, column: 52, scope: !2312)
!2321 = !DILocation(line: 4378, column: 62, scope: !2312)
!2322 = !DILocation(line: 4380, column: 31, scope: !2312)
!2323 = !DILocation(line: 4380, column: 2, scope: !2312)
!2324 = !DILocation(line: 4381, column: 41, scope: !2312)
!2325 = !DILocation(line: 4381, column: 44, scope: !2312)
!2326 = !DILocation(line: 4381, column: 49, scope: !2312)
!2327 = !DILocation(line: 4381, column: 9, scope: !2312)
!2328 = !DILocation(line: 4381, column: 2, scope: !2312)
!2329 = distinct !DISubprogram(name: "raw_atomic_long_cmpxchg_relaxed", scope: !34, file: !34, line: 1427, type: !2313, scopeLine: 1428, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DILocalVariable(name: "v", arg: 1, scope: !2329, file: !34, line: 1427, type: !1318)
!2332 = !DILocalVariable(name: "old", arg: 2, scope: !2329, file: !34, line: 1427, type: !1431)
!2333 = !DILocalVariable(name: "new", arg: 3, scope: !2329, file: !34, line: 1427, type: !1431)
!2334 = !DILocation(line: 1427, column: 48, scope: !2329)
!2335 = !DILocation(line: 1427, column: 56, scope: !2329)
!2336 = !DILocation(line: 1427, column: 66, scope: !2329)
!2337 = !DILocation(line: 1430, column: 38, scope: !2329)
!2338 = !DILocation(line: 1430, column: 41, scope: !2329)
!2339 = !DILocation(line: 1430, column: 46, scope: !2329)
!2340 = !DILocation(line: 1430, column: 9, scope: !2329)
!2341 = !DILocation(line: 1430, column: 2, scope: !2329)
!2342 = distinct !DISubprogram(name: "raw_atomic64_cmpxchg_relaxed", scope: !1997, file: !1997, line: 4196, type: !2343, scopeLine: 4197, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2345)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!39, !2000, !39, !39}
!2345 = !{!2346, !2347, !2348}
!2346 = !DILocalVariable(name: "v", arg: 1, scope: !2342, file: !1997, line: 4196, type: !2000)
!2347 = !DILocalVariable(name: "old", arg: 2, scope: !2342, file: !1997, line: 4196, type: !39)
!2348 = !DILocalVariable(name: "new", arg: 3, scope: !2342, file: !1997, line: 4196, type: !39)
!2349 = !DILocation(line: 4196, column: 42, scope: !2342)
!2350 = !DILocation(line: 4196, column: 49, scope: !2342)
!2351 = !DILocation(line: 4196, column: 58, scope: !2342)
!2352 = !DILocation(line: 4201, column: 31, scope: !2342)
!2353 = !DILocation(line: 4201, column: 34, scope: !2342)
!2354 = !DILocation(line: 4201, column: 39, scope: !2342)
!2355 = !DILocation(line: 4201, column: 9, scope: !2342)
!2356 = !DILocation(line: 4201, column: 2, scope: !2342)
!2357 = distinct !DISubprogram(name: "arch_atomic64_cmpxchg", scope: !2014, file: !2014, line: 101, type: !2343, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2358)
!2358 = !{!2359, !2360, !2361, !2362, !2364, !2365, !2366}
!2359 = !DILocalVariable(name: "v", arg: 1, scope: !2357, file: !2014, line: 101, type: !2000)
!2360 = !DILocalVariable(name: "old", arg: 2, scope: !2357, file: !2014, line: 101, type: !39)
!2361 = !DILocalVariable(name: "new", arg: 3, scope: !2357, file: !2014, line: 101, type: !39)
!2362 = !DILocalVariable(name: "__ret", scope: !2363, file: !2014, line: 103, type: !39)
!2363 = distinct !DILexicalBlock(scope: !2357, file: !2014, line: 103, column: 9)
!2364 = !DILocalVariable(name: "__old", scope: !2363, file: !2014, line: 103, type: !39)
!2365 = !DILocalVariable(name: "__new", scope: !2363, file: !2014, line: 103, type: !39)
!2366 = !DILocalVariable(name: "__ptr", scope: !2363, file: !2014, line: 103, type: !122)
!2367 = !DILocation(line: 101, column: 62, scope: !2357)
!2368 = !DILocation(line: 101, column: 69, scope: !2357)
!2369 = !DILocation(line: 101, column: 78, scope: !2357)
!2370 = !DILocation(line: 103, column: 9, scope: !2363)
!2371 = !{i64 2148493361, i64 2148493400, i64 2148493421, i64 2148493458, i64 2148493481, i64 2148493490}
!2372 = !DILocation(line: 103, column: 9, scope: !2357)
!2373 = !DILocation(line: 103, column: 2, scope: !2357)
!2374 = distinct !DISubprogram(name: "desc_push_tail", scope: !2, file: !2, line: 767, type: !2101, scopeLine: 769, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2375)
!2375 = !{!2376, !2377, !2378, !2379, !2380}
!2376 = !DILocalVariable(name: "rb", arg: 1, scope: !2374, file: !2, line: 767, type: !20)
!2377 = !DILocalVariable(name: "tail_id", arg: 2, scope: !2374, file: !2, line: 768, type: !48)
!2378 = !DILocalVariable(name: "desc_ring", scope: !2374, file: !2, line: 770, type: !155)
!2379 = !DILocalVariable(name: "d_state", scope: !2374, file: !2, line: 771, type: !112)
!2380 = !DILocalVariable(name: "desc", scope: !2374, file: !2, line: 772, type: !30)
!2381 = !DILocation(line: 767, column: 54, scope: !2374)
!2382 = !DILocation(line: 768, column: 21, scope: !2374)
!2383 = !DILocation(line: 770, column: 2, scope: !2374)
!2384 = !DILocation(line: 770, column: 24, scope: !2374)
!2385 = !DILocation(line: 770, column: 37, scope: !2374)
!2386 = !DILocation(line: 770, column: 41, scope: !2374)
!2387 = !DILocation(line: 771, column: 2, scope: !2374)
!2388 = !DILocation(line: 771, column: 18, scope: !2374)
!2389 = !DILocation(line: 772, column: 2, scope: !2374)
!2390 = !DILocation(line: 772, column: 18, scope: !2374)
!2391 = !DILocation(line: 774, column: 22, scope: !2374)
!2392 = !DILocation(line: 774, column: 33, scope: !2374)
!2393 = !DILocation(line: 774, column: 12, scope: !2374)
!2394 = !DILocation(line: 774, column: 10, scope: !2374)
!2395 = !DILocation(line: 776, column: 10, scope: !2374)
!2396 = !DILocation(line: 776, column: 2, scope: !2374)
!2397 = !DILocation(line: 783, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !2, line: 783, column: 7)
!2399 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 776, column: 19)
!2400 = !DILocation(line: 784, column: 7, scope: !2398)
!2401 = !DILocation(line: 783, column: 50, scope: !2398)
!2402 = !DILocation(line: 783, column: 7, scope: !2399)
!2403 = !DILocation(line: 785, column: 4, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2398, file: !2, line: 784, column: 46)
!2405 = !DILocation(line: 794, column: 3, scope: !2399)
!2406 = !DILocation(line: 797, column: 3, scope: !2399)
!2407 = !DILocation(line: 799, column: 22, scope: !2399)
!2408 = !DILocation(line: 799, column: 33, scope: !2399)
!2409 = !DILocation(line: 799, column: 3, scope: !2399)
!2410 = !DILocation(line: 800, column: 3, scope: !2399)
!2411 = !DILocation(line: 812, column: 22, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 812, column: 6)
!2413 = !DILocation(line: 812, column: 31, scope: !2412)
!2414 = !DILocation(line: 812, column: 45, scope: !2412)
!2415 = !DILocation(line: 812, column: 7, scope: !2412)
!2416 = !DILocation(line: 812, column: 6, scope: !2374)
!2417 = !DILocation(line: 813, column: 3, scope: !2412)
!2418 = !DILocation(line: 824, column: 22, scope: !2374)
!2419 = !DILocation(line: 824, column: 33, scope: !2374)
!2420 = !DILocation(line: 824, column: 12, scope: !2374)
!2421 = !DILocation(line: 824, column: 10, scope: !2374)
!2422 = !DILocation(line: 827, column: 6, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2374, file: !2, line: 827, column: 6)
!2424 = !DILocation(line: 827, column: 14, scope: !2423)
!2425 = !DILocation(line: 827, column: 32, scope: !2423)
!2426 = !DILocation(line: 827, column: 35, scope: !2423)
!2427 = !DILocation(line: 827, column: 43, scope: !2423)
!2428 = !DILocation(line: 827, column: 6, scope: !2374)
!2429 = !DILocation(line: 835, column: 24, scope: !2430)
!2430 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 827, column: 61)
!2431 = !DILocation(line: 835, column: 35, scope: !2430)
!2432 = !DILocation(line: 835, column: 44, scope: !2430)
!2433 = !DILocation(line: 836, column: 9, scope: !2430)
!2434 = !DILocation(line: 835, column: 3, scope: !2430)
!2435 = !DILocation(line: 837, column: 2, scope: !2430)
!2436 = !DILocation(line: 860, column: 3, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 837, column: 9)
!2438 = !DILocation(line: 860, column: 3, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 860, column: 3)
!2440 = !DILocation(line: 860, column: 3, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 860, column: 3)
!2442 = !DILocation(line: 860, column: 3, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2439, file: !2, line: 860, column: 3)
!2444 = !DILocation(line: 860, column: 3, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2443, file: !2, line: 860, column: 3)
!2446 = !{i64 2150883879}
!2447 = !DILocation(line: 867, column: 25, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 867, column: 7)
!2449 = !DILocation(line: 867, column: 36, scope: !2448)
!2450 = !DILocation(line: 867, column: 7, scope: !2448)
!2451 = !DILocation(line: 867, column: 48, scope: !2448)
!2452 = !DILocation(line: 867, column: 45, scope: !2448)
!2453 = !DILocation(line: 867, column: 7, scope: !2437)
!2454 = !DILocation(line: 868, column: 4, scope: !2448)
!2455 = !DILocation(line: 871, column: 2, scope: !2374)
!2456 = !DILocation(line: 872, column: 1, scope: !2374)
!2457 = distinct !DISubprogram(name: "get_desc_state", scope: !2, file: !2, line: 414, type: !2458, scopeLine: 416, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2460)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{!112, !48, !48}
!2460 = !{!2461, !2462}
!2461 = !DILocalVariable(name: "id", arg: 1, scope: !2457, file: !2, line: 414, type: !48)
!2462 = !DILocalVariable(name: "state_val", arg: 2, scope: !2457, file: !2, line: 415, type: !48)
!2463 = !DILocation(line: 414, column: 53, scope: !2457)
!2464 = !DILocation(line: 415, column: 25, scope: !2457)
!2465 = !DILocation(line: 417, column: 6, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2457, file: !2, line: 417, column: 6)
!2467 = !DILocation(line: 417, column: 12, scope: !2466)
!2468 = !DILocation(line: 417, column: 9, scope: !2466)
!2469 = !DILocation(line: 417, column: 6, scope: !2457)
!2470 = !DILocation(line: 418, column: 3, scope: !2466)
!2471 = !DILocation(line: 420, column: 9, scope: !2457)
!2472 = !DILocation(line: 420, column: 2, scope: !2457)
!2473 = !DILocation(line: 421, column: 1, scope: !2457)
!2474 = distinct !DISubprogram(name: "atomic_long_cmpxchg", scope: !1315, file: !1315, line: 4319, type: !2313, scopeLine: 4320, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2475)
!2475 = !{!2476, !2477, !2478}
!2476 = !DILocalVariable(name: "v", arg: 1, scope: !2474, file: !1315, line: 4319, type: !1318)
!2477 = !DILocalVariable(name: "old", arg: 2, scope: !2474, file: !1315, line: 4319, type: !1431)
!2478 = !DILocalVariable(name: "new", arg: 3, scope: !2474, file: !1315, line: 4319, type: !1431)
!2479 = !DILocation(line: 4319, column: 36, scope: !2474)
!2480 = !DILocation(line: 4319, column: 44, scope: !2474)
!2481 = !DILocation(line: 4319, column: 54, scope: !2474)
!2482 = !DILocation(line: 4321, column: 2, scope: !2474)
!2483 = !DILocation(line: 4321, column: 2, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2474, file: !1315, line: 4321, column: 2)
!2485 = !DILocation(line: 4322, column: 31, scope: !2474)
!2486 = !DILocation(line: 4322, column: 2, scope: !2474)
!2487 = !DILocation(line: 4323, column: 33, scope: !2474)
!2488 = !DILocation(line: 4323, column: 36, scope: !2474)
!2489 = !DILocation(line: 4323, column: 41, scope: !2474)
!2490 = !DILocation(line: 4323, column: 9, scope: !2474)
!2491 = !DILocation(line: 4323, column: 2, scope: !2474)
!2492 = distinct !DISubprogram(name: "raw_atomic_long_cmpxchg", scope: !34, file: !34, line: 1361, type: !2313, scopeLine: 1362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2493)
!2493 = !{!2494, !2495, !2496}
!2494 = !DILocalVariable(name: "v", arg: 1, scope: !2492, file: !34, line: 1361, type: !1318)
!2495 = !DILocalVariable(name: "old", arg: 2, scope: !2492, file: !34, line: 1361, type: !1431)
!2496 = !DILocalVariable(name: "new", arg: 3, scope: !2492, file: !34, line: 1361, type: !1431)
!2497 = !DILocation(line: 1361, column: 40, scope: !2492)
!2498 = !DILocation(line: 1361, column: 48, scope: !2492)
!2499 = !DILocation(line: 1361, column: 58, scope: !2492)
!2500 = !DILocation(line: 1364, column: 30, scope: !2492)
!2501 = !DILocation(line: 1364, column: 33, scope: !2492)
!2502 = !DILocation(line: 1364, column: 38, scope: !2492)
!2503 = !DILocation(line: 1364, column: 9, scope: !2492)
!2504 = !DILocation(line: 1364, column: 2, scope: !2492)
!2505 = distinct !DISubprogram(name: "raw_atomic64_cmpxchg", scope: !1997, file: !1997, line: 4113, type: !2343, scopeLine: 4114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2506)
!2506 = !{!2507, !2508, !2509}
!2507 = !DILocalVariable(name: "v", arg: 1, scope: !2505, file: !1997, line: 4113, type: !2000)
!2508 = !DILocalVariable(name: "old", arg: 2, scope: !2505, file: !1997, line: 4113, type: !39)
!2509 = !DILocalVariable(name: "new", arg: 3, scope: !2505, file: !1997, line: 4113, type: !39)
!2510 = !DILocation(line: 4113, column: 34, scope: !2505)
!2511 = !DILocation(line: 4113, column: 41, scope: !2505)
!2512 = !DILocation(line: 4113, column: 50, scope: !2505)
!2513 = !DILocation(line: 4116, column: 31, scope: !2505)
!2514 = !DILocation(line: 4116, column: 34, scope: !2505)
!2515 = !DILocation(line: 4116, column: 39, scope: !2505)
!2516 = !DILocation(line: 4116, column: 9, scope: !2505)
!2517 = !DILocation(line: 4116, column: 2, scope: !2505)
!2518 = distinct !DISubprogram(name: "raw_atomic_long_inc", scope: !34, file: !34, line: 495, type: !1316, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2519)
!2519 = !{!2520}
!2520 = !DILocalVariable(name: "v", arg: 1, scope: !2518, file: !34, line: 495, type: !1318)
!2521 = !DILocation(line: 495, column: 36, scope: !2518)
!2522 = !DILocation(line: 498, column: 19, scope: !2518)
!2523 = !DILocation(line: 498, column: 2, scope: !2518)
!2524 = !DILocation(line: 502, column: 1, scope: !2518)
!2525 = distinct !DISubprogram(name: "raw_atomic64_inc", scope: !1997, file: !1997, line: 3088, type: !2526, scopeLine: 3089, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2528)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !2000}
!2528 = !{!2529}
!2529 = !DILocalVariable(name: "v", arg: 1, scope: !2525, file: !1997, line: 3088, type: !2000)
!2530 = !DILocation(line: 3088, column: 30, scope: !2525)
!2531 = !DILocation(line: 3091, column: 20, scope: !2525)
!2532 = !DILocation(line: 3091, column: 2, scope: !2525)
!2533 = !DILocation(line: 3095, column: 1, scope: !2525)
!2534 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !2014, file: !2014, line: 43, type: !2526, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2535)
!2535 = !{!2536}
!2536 = !DILocalVariable(name: "v", arg: 1, scope: !2534, file: !2014, line: 43, type: !2000)
!2537 = !DILocation(line: 43, column: 59, scope: !2534)
!2538 = !DILocation(line: 46, column: 16, scope: !2534)
!2539 = !DILocation(line: 46, column: 19, scope: !2534)
!2540 = !DILocation(line: 47, column: 15, scope: !2534)
!2541 = !DILocation(line: 47, column: 18, scope: !2534)
!2542 = !DILocation(line: 45, column: 2, scope: !2534)
!2543 = !{i64 2148477919, i64 2148477958, i64 2148477979, i64 2148478016, i64 2148478039, i64 2148477909}
!2544 = !DILocation(line: 48, column: 1, scope: !2534)
!2545 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !1941, file: !1941, line: 66, type: !1942, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2546)
!2546 = !{!2547, !2548}
!2547 = !DILocalVariable(name: "v", arg: 1, scope: !2545, file: !1941, line: 66, type: !1944)
!2548 = !DILocalVariable(name: "size", arg: 2, scope: !2545, file: !1941, line: 66, type: !1947)
!2549 = !DILocation(line: 66, column: 73, scope: !2545)
!2550 = !DILocation(line: 66, column: 83, scope: !2545)
!2551 = !DILocation(line: 68, column: 19, scope: !2545)
!2552 = !DILocation(line: 68, column: 22, scope: !2545)
!2553 = !DILocation(line: 68, column: 2, scope: !2545)
!2554 = !DILocation(line: 69, column: 2, scope: !2545)
!2555 = !DILocation(line: 70, column: 1, scope: !2545)
!2556 = distinct !DISubprogram(name: "raw_atomic_long_read", scope: !34, file: !34, line: 35, type: !1429, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2557)
!2557 = !{!2558}
!2558 = !DILocalVariable(name: "v", arg: 1, scope: !2556, file: !34, line: 35, type: !1432)
!2559 = !DILocation(line: 35, column: 43, scope: !2556)
!2560 = !DILocation(line: 38, column: 27, scope: !2556)
!2561 = !DILocation(line: 38, column: 9, scope: !2556)
!2562 = !DILocation(line: 38, column: 2, scope: !2556)
!2563 = distinct !DISubprogram(name: "kasan_check_read", scope: !1975, file: !1975, line: 40, type: !1976, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2564)
!2564 = !{!2565, !2566}
!2565 = !DILocalVariable(name: "p", arg: 1, scope: !2563, file: !1975, line: 40, type: !1944)
!2566 = !DILocalVariable(name: "size", arg: 2, scope: !2563, file: !1975, line: 40, type: !27)
!2567 = !DILocation(line: 40, column: 58, scope: !2563)
!2568 = !DILocation(line: 40, column: 74, scope: !2563)
!2569 = !DILocation(line: 42, column: 2, scope: !2563)
!2570 = distinct !DISubprogram(name: "raw_atomic64_read", scope: !1997, file: !1997, line: 2554, type: !2571, scopeLine: 2555, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2575)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!39, !2573}
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!2575 = !{!2576}
!2576 = !DILocalVariable(name: "v", arg: 1, scope: !2570, file: !1997, line: 2554, type: !2573)
!2577 = !DILocation(line: 2554, column: 37, scope: !2570)
!2578 = !DILocation(line: 2556, column: 28, scope: !2570)
!2579 = !DILocation(line: 2556, column: 9, scope: !2570)
!2580 = !DILocation(line: 2556, column: 2, scope: !2570)
!2581 = distinct !DISubprogram(name: "arch_atomic64_read", scope: !2014, file: !2014, line: 13, type: !2571, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2582)
!2582 = !{!2583}
!2583 = !DILocalVariable(name: "v", arg: 1, scope: !2581, file: !2014, line: 13, type: !2573)
!2584 = !DILocation(line: 13, column: 65, scope: !2581)
!2585 = !DILocation(line: 15, column: 9, scope: !2581)
!2586 = !DILocation(line: 15, column: 2, scope: !2581)
!2587 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !1941, file: !1941, line: 80, type: !1942, scopeLine: 81, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2588)
!2588 = !{!2589, !2590}
!2589 = !DILocalVariable(name: "v", arg: 1, scope: !2587, file: !1941, line: 80, type: !1944)
!2590 = !DILocalVariable(name: "size", arg: 2, scope: !2587, file: !1941, line: 80, type: !1947)
!2591 = !DILocation(line: 80, column: 74, scope: !2587)
!2592 = !DILocation(line: 80, column: 84, scope: !2587)
!2593 = !DILocation(line: 82, column: 20, scope: !2587)
!2594 = !DILocation(line: 82, column: 23, scope: !2587)
!2595 = !DILocation(line: 82, column: 2, scope: !2587)
!2596 = !DILocation(line: 83, column: 2, scope: !2587)
!2597 = !DILocation(line: 84, column: 1, scope: !2587)
!2598 = distinct !DISubprogram(name: "raw_atomic_long_set", scope: !34, file: !34, line: 76, type: !1461, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2599)
!2599 = !{!2600, !2601}
!2600 = !DILocalVariable(name: "v", arg: 1, scope: !2598, file: !34, line: 76, type: !1318)
!2601 = !DILocalVariable(name: "i", arg: 2, scope: !2598, file: !34, line: 76, type: !1431)
!2602 = !DILocation(line: 76, column: 36, scope: !2598)
!2603 = !DILocation(line: 76, column: 44, scope: !2598)
!2604 = !DILocation(line: 79, column: 19, scope: !2598)
!2605 = !DILocation(line: 79, column: 22, scope: !2598)
!2606 = !DILocation(line: 79, column: 2, scope: !2598)
!2607 = !DILocation(line: 83, column: 1, scope: !2598)
!2608 = distinct !DISubprogram(name: "raw_atomic64_set", scope: !1997, file: !1997, line: 2600, type: !2609, scopeLine: 2601, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2611)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !2000, !39}
!2611 = !{!2612, !2613}
!2612 = !DILocalVariable(name: "v", arg: 1, scope: !2608, file: !1997, line: 2600, type: !2000)
!2613 = !DILocalVariable(name: "i", arg: 2, scope: !2608, file: !1997, line: 2600, type: !39)
!2614 = !DILocation(line: 2600, column: 30, scope: !2608)
!2615 = !DILocation(line: 2600, column: 37, scope: !2608)
!2616 = !DILocation(line: 2602, column: 20, scope: !2608)
!2617 = !DILocation(line: 2602, column: 23, scope: !2608)
!2618 = !DILocation(line: 2602, column: 2, scope: !2608)
!2619 = !DILocation(line: 2603, column: 1, scope: !2608)
!2620 = distinct !DISubprogram(name: "arch_atomic64_set", scope: !2014, file: !2014, line: 18, type: !2609, scopeLine: 19, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2621)
!2621 = !{!2622, !2623}
!2622 = !DILocalVariable(name: "v", arg: 1, scope: !2620, file: !2014, line: 18, type: !2000)
!2623 = !DILocalVariable(name: "i", arg: 2, scope: !2620, file: !2014, line: 18, type: !39)
!2624 = !DILocation(line: 18, column: 59, scope: !2620)
!2625 = !DILocation(line: 18, column: 66, scope: !2620)
!2626 = !DILocation(line: 20, column: 2, scope: !2620)
!2627 = !DILocation(line: 20, column: 2, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2620, file: !2014, line: 20, column: 2)
!2629 = !DILocation(line: 21, column: 1, scope: !2620)
!2630 = distinct !DISubprogram(name: "prb_read", scope: !2, file: !2, line: 1796, type: !2631, scopeLine: 1798, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2633)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!113, !20, !55, !99, !682}
!2633 = !{!2634, !2635, !2636, !2637, !2638, !2639, !2640, !2641, !2642, !2643, !2644}
!2634 = !DILocalVariable(name: "rb", arg: 1, scope: !2630, file: !2, line: 1796, type: !20)
!2635 = !DILocalVariable(name: "seq", arg: 2, scope: !2630, file: !2, line: 1796, type: !55)
!2636 = !DILocalVariable(name: "r", arg: 3, scope: !2630, file: !2, line: 1797, type: !99)
!2637 = !DILocalVariable(name: "line_count", arg: 4, scope: !2630, file: !2, line: 1797, type: !682)
!2638 = !DILocalVariable(name: "desc_ring", scope: !2630, file: !2, line: 1799, type: !155)
!2639 = !DILocalVariable(name: "info", scope: !2630, file: !2, line: 1800, type: !51)
!2640 = !DILocalVariable(name: "rdesc", scope: !2630, file: !2, line: 1801, type: !29)
!2641 = !DILocalVariable(name: "state_var", scope: !2630, file: !2, line: 1802, type: !1318)
!2642 = !DILocalVariable(name: "desc", scope: !2630, file: !2, line: 1803, type: !30)
!2643 = !DILocalVariable(name: "id", scope: !2630, file: !2, line: 1804, type: !48)
!2644 = !DILocalVariable(name: "err", scope: !2630, file: !2, line: 1805, type: !113)
!2645 = !DILocation(line: 1796, column: 47, scope: !2630)
!2646 = !DILocation(line: 1796, column: 55, scope: !2630)
!2647 = !DILocation(line: 1797, column: 29, scope: !2630)
!2648 = !DILocation(line: 1797, column: 46, scope: !2630)
!2649 = !DILocation(line: 1799, column: 2, scope: !2630)
!2650 = !DILocation(line: 1799, column: 24, scope: !2630)
!2651 = !DILocation(line: 1799, column: 37, scope: !2630)
!2652 = !DILocation(line: 1799, column: 41, scope: !2630)
!2653 = !DILocation(line: 1800, column: 2, scope: !2630)
!2654 = !DILocation(line: 1800, column: 22, scope: !2630)
!2655 = !DILocation(line: 1800, column: 37, scope: !2630)
!2656 = !DILocation(line: 1800, column: 48, scope: !2630)
!2657 = !DILocation(line: 1800, column: 29, scope: !2630)
!2658 = !DILocation(line: 1801, column: 2, scope: !2630)
!2659 = !DILocation(line: 1801, column: 19, scope: !2630)
!2660 = !DILocation(line: 1801, column: 35, scope: !2630)
!2661 = !DILocation(line: 1801, column: 46, scope: !2630)
!2662 = !DILocation(line: 1801, column: 27, scope: !2630)
!2663 = !DILocation(line: 1802, column: 2, scope: !2630)
!2664 = !DILocation(line: 1802, column: 17, scope: !2630)
!2665 = !DILocation(line: 1802, column: 30, scope: !2630)
!2666 = !DILocation(line: 1802, column: 37, scope: !2630)
!2667 = !DILocation(line: 1803, column: 2, scope: !2630)
!2668 = !DILocation(line: 1803, column: 18, scope: !2630)
!2669 = !DILocation(line: 1804, column: 2, scope: !2630)
!2670 = !DILocation(line: 1804, column: 16, scope: !2630)
!2671 = !DILocation(line: 1805, column: 2, scope: !2630)
!2672 = !DILocation(line: 1805, column: 6, scope: !2630)
!2673 = !DILocation(line: 1808, column: 7, scope: !2630)
!2674 = !DILocation(line: 1808, column: 5, scope: !2630)
!2675 = !DILocation(line: 1811, column: 32, scope: !2630)
!2676 = !DILocation(line: 1811, column: 43, scope: !2630)
!2677 = !DILocation(line: 1811, column: 47, scope: !2630)
!2678 = !DILocation(line: 1811, column: 8, scope: !2630)
!2679 = !DILocation(line: 1811, column: 6, scope: !2630)
!2680 = !DILocation(line: 1817, column: 6, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 1817, column: 6)
!2682 = !DILocation(line: 1817, column: 10, scope: !2681)
!2683 = !DILocation(line: 1817, column: 14, scope: !2681)
!2684 = !DILocation(line: 1817, column: 6, scope: !2630)
!2685 = !DILocation(line: 1818, column: 10, scope: !2681)
!2686 = !DILocation(line: 1818, column: 3, scope: !2681)
!2687 = !DILocation(line: 1821, column: 6, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 1821, column: 6)
!2689 = !DILocation(line: 1821, column: 9, scope: !2688)
!2690 = !DILocation(line: 1821, column: 6, scope: !2630)
!2691 = !DILocation(line: 1822, column: 10, scope: !2688)
!2692 = !DILocation(line: 1822, column: 13, scope: !2688)
!2693 = !DILocation(line: 1822, column: 19, scope: !2688)
!2694 = !DILocation(line: 1822, column: 3, scope: !2688)
!2695 = !DILocation(line: 1825, column: 18, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2630, file: !2, line: 1825, column: 6)
!2697 = !DILocation(line: 1825, column: 22, scope: !2696)
!2698 = !DILocation(line: 1825, column: 44, scope: !2696)
!2699 = !DILocation(line: 1825, column: 59, scope: !2696)
!2700 = !DILocation(line: 1825, column: 65, scope: !2696)
!2701 = !DILocation(line: 1826, column: 10, scope: !2696)
!2702 = !DILocation(line: 1826, column: 13, scope: !2696)
!2703 = !DILocation(line: 1826, column: 23, scope: !2696)
!2704 = !DILocation(line: 1826, column: 26, scope: !2696)
!2705 = !DILocation(line: 1826, column: 41, scope: !2696)
!2706 = !DILocation(line: 1825, column: 7, scope: !2696)
!2707 = !DILocation(line: 1825, column: 6, scope: !2630)
!2708 = !DILocation(line: 1827, column: 3, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2696, file: !2, line: 1826, column: 54)
!2710 = !DILocation(line: 1831, column: 33, scope: !2630)
!2711 = !DILocation(line: 1831, column: 44, scope: !2630)
!2712 = !DILocation(line: 1831, column: 48, scope: !2630)
!2713 = !DILocation(line: 1831, column: 9, scope: !2630)
!2714 = !DILocation(line: 1831, column: 2, scope: !2630)
!2715 = !DILocation(line: 1832, column: 1, scope: !2630)
!2716 = distinct !DISubprogram(name: "prb_first_seq", scope: !2, file: !2, line: 1835, type: !1592, scopeLine: 1836, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2717)
!2717 = !{!2718, !2719, !2720, !2721, !2722, !2723}
!2718 = !DILocalVariable(name: "rb", arg: 1, scope: !2716, file: !2, line: 1835, type: !20)
!2719 = !DILocalVariable(name: "desc_ring", scope: !2716, file: !2, line: 1837, type: !155)
!2720 = !DILocalVariable(name: "d_state", scope: !2716, file: !2, line: 1838, type: !112)
!2721 = !DILocalVariable(name: "desc", scope: !2716, file: !2, line: 1839, type: !30)
!2722 = !DILocalVariable(name: "id", scope: !2716, file: !2, line: 1840, type: !48)
!2723 = !DILocalVariable(name: "seq", scope: !2716, file: !2, line: 1841, type: !55)
!2724 = !DILocation(line: 1835, column: 52, scope: !2716)
!2725 = !DILocation(line: 1837, column: 2, scope: !2716)
!2726 = !DILocation(line: 1837, column: 24, scope: !2716)
!2727 = !DILocation(line: 1837, column: 37, scope: !2716)
!2728 = !DILocation(line: 1837, column: 41, scope: !2716)
!2729 = !DILocation(line: 1838, column: 2, scope: !2716)
!2730 = !DILocation(line: 1838, column: 18, scope: !2716)
!2731 = !DILocation(line: 1839, column: 2, scope: !2716)
!2732 = !DILocation(line: 1839, column: 18, scope: !2716)
!2733 = !DILocation(line: 1840, column: 2, scope: !2716)
!2734 = !DILocation(line: 1840, column: 16, scope: !2716)
!2735 = !DILocation(line: 1841, column: 2, scope: !2716)
!2736 = !DILocation(line: 1841, column: 6, scope: !2716)
!2737 = !DILocation(line: 1843, column: 2, scope: !2716)
!2738 = !DILocation(line: 1844, column: 26, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2740, file: !2, line: 1843, column: 11)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !2, line: 1843, column: 2)
!2741 = distinct !DILexicalBlock(scope: !2716, file: !2, line: 1843, column: 2)
!2742 = !DILocation(line: 1844, column: 30, scope: !2739)
!2743 = !DILocation(line: 1844, column: 40, scope: !2739)
!2744 = !DILocation(line: 1844, column: 8, scope: !2739)
!2745 = !DILocation(line: 1844, column: 6, scope: !2739)
!2746 = !DILocation(line: 1846, column: 23, scope: !2739)
!2747 = !DILocation(line: 1846, column: 34, scope: !2739)
!2748 = !DILocation(line: 1846, column: 13, scope: !2739)
!2749 = !DILocation(line: 1846, column: 11, scope: !2739)
!2750 = !DILocation(line: 1852, column: 7, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1852, column: 7)
!2752 = !DILocation(line: 1852, column: 15, scope: !2751)
!2753 = !DILocation(line: 1852, column: 33, scope: !2751)
!2754 = !DILocation(line: 1852, column: 36, scope: !2751)
!2755 = !DILocation(line: 1852, column: 44, scope: !2751)
!2756 = !DILocation(line: 1852, column: 7, scope: !2739)
!2757 = !DILocation(line: 1853, column: 4, scope: !2751)
!2758 = !DILocation(line: 1872, column: 3, scope: !2739)
!2759 = !DILocation(line: 1872, column: 3, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2739, file: !2, line: 1872, column: 3)
!2761 = !DILocation(line: 1872, column: 3, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 1872, column: 3)
!2763 = !DILocation(line: 1872, column: 3, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 1872, column: 3)
!2765 = !DILocation(line: 1872, column: 3, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2764, file: !2, line: 1872, column: 3)
!2767 = !{i64 2150919457}
!2768 = !DILocation(line: 1843, column: 2, scope: !2740)
!2769 = distinct !{!2769, !2770, !2771, !644}
!2770 = !DILocation(line: 1843, column: 2, scope: !2741)
!2771 = !DILocation(line: 1873, column: 2, scope: !2741)
!2772 = !DILocation(line: 1875, column: 9, scope: !2716)
!2773 = !DILocation(line: 1876, column: 1, scope: !2716)
!2774 = !DILocation(line: 1875, column: 2, scope: !2716)
!2775 = distinct !DISubprogram(name: "desc_read_finalized_seq", scope: !2, file: !2, line: 1755, type: !2776, scopeLine: 1758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2778)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!113, !155, !48, !55, !29}
!2778 = !{!2779, !2780, !2781, !2782, !2783, !2784, !2785}
!2779 = !DILocalVariable(name: "desc_ring", arg: 1, scope: !2775, file: !2, line: 1755, type: !155)
!2780 = !DILocalVariable(name: "id", arg: 2, scope: !2775, file: !2, line: 1756, type: !48)
!2781 = !DILocalVariable(name: "seq", arg: 3, scope: !2775, file: !2, line: 1756, type: !55)
!2782 = !DILocalVariable(name: "desc_out", arg: 4, scope: !2775, file: !2, line: 1757, type: !29)
!2783 = !DILocalVariable(name: "blk_lpos", scope: !2775, file: !2, line: 1759, type: !570)
!2784 = !DILocalVariable(name: "d_state", scope: !2775, file: !2, line: 1760, type: !112)
!2785 = !DILocalVariable(name: "s", scope: !2775, file: !2, line: 1761, type: !55)
!2786 = !DILocation(line: 1755, column: 58, scope: !2775)
!2787 = !DILocation(line: 1756, column: 22, scope: !2775)
!2788 = !DILocation(line: 1756, column: 30, scope: !2775)
!2789 = !DILocation(line: 1757, column: 25, scope: !2775)
!2790 = !DILocation(line: 1759, column: 2, scope: !2775)
!2791 = !DILocation(line: 1759, column: 28, scope: !2775)
!2792 = !DILocation(line: 1759, column: 40, scope: !2775)
!2793 = !DILocation(line: 1759, column: 50, scope: !2775)
!2794 = !DILocation(line: 1760, column: 2, scope: !2775)
!2795 = !DILocation(line: 1760, column: 18, scope: !2775)
!2796 = !DILocation(line: 1761, column: 2, scope: !2775)
!2797 = !DILocation(line: 1761, column: 6, scope: !2775)
!2798 = !DILocation(line: 1763, column: 22, scope: !2775)
!2799 = !DILocation(line: 1763, column: 33, scope: !2775)
!2800 = !DILocation(line: 1763, column: 37, scope: !2775)
!2801 = !DILocation(line: 1763, column: 12, scope: !2775)
!2802 = !DILocation(line: 1763, column: 10, scope: !2775)
!2803 = !DILocation(line: 1770, column: 6, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1770, column: 6)
!2805 = !DILocation(line: 1770, column: 14, scope: !2804)
!2806 = !DILocation(line: 1770, column: 27, scope: !2804)
!2807 = !DILocation(line: 1771, column: 6, scope: !2804)
!2808 = !DILocation(line: 1771, column: 14, scope: !2804)
!2809 = !DILocation(line: 1771, column: 31, scope: !2804)
!2810 = !DILocation(line: 1772, column: 6, scope: !2804)
!2811 = !DILocation(line: 1772, column: 14, scope: !2804)
!2812 = !DILocation(line: 1772, column: 32, scope: !2804)
!2813 = !DILocation(line: 1773, column: 6, scope: !2804)
!2814 = !DILocation(line: 1773, column: 11, scope: !2804)
!2815 = !DILocation(line: 1773, column: 8, scope: !2804)
!2816 = !DILocation(line: 1770, column: 6, scope: !2775)
!2817 = !DILocation(line: 1774, column: 3, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2804, file: !2, line: 1773, column: 16)
!2819 = !DILocation(line: 1782, column: 6, scope: !2820)
!2820 = distinct !DILexicalBlock(scope: !2775, file: !2, line: 1782, column: 6)
!2821 = !DILocation(line: 1782, column: 14, scope: !2820)
!2822 = !DILocation(line: 1782, column: 31, scope: !2820)
!2823 = !DILocation(line: 1783, column: 7, scope: !2820)
!2824 = !DILocation(line: 1783, column: 17, scope: !2820)
!2825 = !DILocation(line: 1783, column: 23, scope: !2820)
!2826 = !DILocation(line: 1783, column: 38, scope: !2820)
!2827 = !DILocation(line: 1783, column: 41, scope: !2820)
!2828 = !DILocation(line: 1783, column: 51, scope: !2820)
!2829 = !DILocation(line: 1783, column: 56, scope: !2820)
!2830 = !DILocation(line: 1782, column: 6, scope: !2775)
!2831 = !DILocation(line: 1784, column: 3, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2820, file: !2, line: 1783, column: 73)
!2833 = !DILocation(line: 1787, column: 2, scope: !2775)
!2834 = !DILocation(line: 1788, column: 1, scope: !2775)
!2835 = distinct !DISubprogram(name: "copy_data", scope: !2, file: !2, line: 1705, type: !2836, scopeLine: 1708, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2838)
!2836 = !DISubroutineType(types: !2837)
!2837 = !{!12, !533, !570, !60, !92, !27, !682}
!2838 = !{!2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2849}
!2839 = !DILocalVariable(name: "data_ring", arg: 1, scope: !2835, file: !2, line: 1705, type: !533)
!2840 = !DILocalVariable(name: "blk_lpos", arg: 2, scope: !2835, file: !2, line: 1706, type: !570)
!2841 = !DILocalVariable(name: "len", arg: 3, scope: !2835, file: !2, line: 1706, type: !60)
!2842 = !DILocalVariable(name: "buf", arg: 4, scope: !2835, file: !2, line: 1706, type: !92)
!2843 = !DILocalVariable(name: "buf_size", arg: 5, scope: !2835, file: !2, line: 1707, type: !27)
!2844 = !DILocalVariable(name: "line_count", arg: 6, scope: !2835, file: !2, line: 1707, type: !682)
!2845 = !DILocalVariable(name: "data_size", scope: !2835, file: !2, line: 1709, type: !27)
!2846 = !DILocalVariable(name: "data", scope: !2835, file: !2, line: 1710, type: !528)
!2847 = !DILocalVariable(name: "__UNIQUE_ID___x148", scope: !2848, file: !2, line: 1738, type: !27)
!2848 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1738, column: 14)
!2849 = !DILocalVariable(name: "__UNIQUE_ID___y149", scope: !2848, file: !2, line: 1738, type: !27)
!2850 = !DILocation(line: 1705, column: 45, scope: !2835)
!2851 = !DILocation(line: 1706, column: 35, scope: !2835)
!2852 = !DILocation(line: 1706, column: 49, scope: !2835)
!2853 = !DILocation(line: 1706, column: 60, scope: !2835)
!2854 = !DILocation(line: 1707, column: 22, scope: !2835)
!2855 = !DILocation(line: 1707, column: 46, scope: !2835)
!2856 = !DILocation(line: 1709, column: 2, scope: !2835)
!2857 = !DILocation(line: 1709, column: 15, scope: !2835)
!2858 = !DILocation(line: 1710, column: 2, scope: !2835)
!2859 = !DILocation(line: 1710, column: 14, scope: !2835)
!2860 = !DILocation(line: 1713, column: 8, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1713, column: 6)
!2862 = !DILocation(line: 1713, column: 12, scope: !2861)
!2863 = !DILocation(line: 1713, column: 16, scope: !2861)
!2864 = !DILocation(line: 1713, column: 26, scope: !2861)
!2865 = !DILocation(line: 1713, column: 30, scope: !2861)
!2866 = !DILocation(line: 1713, column: 6, scope: !2835)
!2867 = !DILocation(line: 1714, column: 3, scope: !2861)
!2868 = !DILocation(line: 1716, column: 18, scope: !2835)
!2869 = !DILocation(line: 1716, column: 29, scope: !2835)
!2870 = !DILocation(line: 1716, column: 9, scope: !2835)
!2871 = !DILocation(line: 1716, column: 7, scope: !2835)
!2872 = !DILocation(line: 1717, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1717, column: 6)
!2874 = !DILocation(line: 1717, column: 6, scope: !2835)
!2875 = !DILocation(line: 1718, column: 3, scope: !2873)
!2876 = !DILocation(line: 1727, column: 6, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1727, column: 6)
!2878 = !DILocation(line: 1727, column: 32, scope: !2877)
!2879 = !DILocation(line: 1727, column: 18, scope: !2877)
!2880 = !DILocation(line: 1727, column: 16, scope: !2877)
!2881 = !DILocation(line: 1727, column: 6, scope: !2835)
!2882 = !DILocation(line: 1728, column: 3, scope: !2877)
!2883 = !DILocation(line: 1731, column: 6, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1731, column: 6)
!2885 = !DILocation(line: 1731, column: 6, scope: !2835)
!2886 = !DILocation(line: 1732, column: 29, scope: !2884)
!2887 = !DILocation(line: 1732, column: 35, scope: !2884)
!2888 = !DILocation(line: 1732, column: 17, scope: !2884)
!2889 = !DILocation(line: 1732, column: 4, scope: !2884)
!2890 = !DILocation(line: 1732, column: 15, scope: !2884)
!2891 = !DILocation(line: 1732, column: 3, scope: !2884)
!2892 = !DILocation(line: 1735, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2835, file: !2, line: 1735, column: 6)
!2894 = !DILocation(line: 1735, column: 11, scope: !2893)
!2895 = !DILocation(line: 1735, column: 15, scope: !2893)
!2896 = !DILocation(line: 1735, column: 6, scope: !2835)
!2897 = !DILocation(line: 1736, column: 3, scope: !2893)
!2898 = !DILocation(line: 1738, column: 14, scope: !2848)
!2899 = !DILocation(line: 1738, column: 14, scope: !2835)
!2900 = !DILocation(line: 1738, column: 12, scope: !2835)
!2901 = !DILocation(line: 1740, column: 10, scope: !2835)
!2902 = !DILocation(line: 1740, column: 18, scope: !2835)
!2903 = !DILocation(line: 1740, column: 24, scope: !2835)
!2904 = !DILocation(line: 1740, column: 2, scope: !2835)
!2905 = !DILocation(line: 1741, column: 2, scope: !2835)
!2906 = !DILocation(line: 1742, column: 1, scope: !2835)
!2907 = distinct !DISubprogram(name: "count_lines", scope: !2, file: !2, line: 1679, type: !2908, scopeLine: 1680, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !105, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!27, !528, !27}
!2910 = !{!2911, !2912, !2913, !2914, !2915}
!2911 = !DILocalVariable(name: "text", arg: 1, scope: !2907, file: !2, line: 1679, type: !528)
!2912 = !DILocalVariable(name: "text_size", arg: 2, scope: !2907, file: !2, line: 1679, type: !27)
!2913 = !DILocalVariable(name: "next_size", scope: !2907, file: !2, line: 1681, type: !27)
!2914 = !DILocalVariable(name: "line_count", scope: !2907, file: !2, line: 1682, type: !27)
!2915 = !DILocalVariable(name: "next", scope: !2907, file: !2, line: 1683, type: !528)
!2916 = !DILocation(line: 1679, column: 45, scope: !2907)
!2917 = !DILocation(line: 1679, column: 64, scope: !2907)
!2918 = !DILocation(line: 1681, column: 2, scope: !2907)
!2919 = !DILocation(line: 1681, column: 15, scope: !2907)
!2920 = !DILocation(line: 1681, column: 27, scope: !2907)
!2921 = !DILocation(line: 1682, column: 2, scope: !2907)
!2922 = !DILocation(line: 1682, column: 15, scope: !2907)
!2923 = !DILocation(line: 1683, column: 2, scope: !2907)
!2924 = !DILocation(line: 1683, column: 14, scope: !2907)
!2925 = !DILocation(line: 1683, column: 21, scope: !2907)
!2926 = !DILocation(line: 1685, column: 2, scope: !2907)
!2927 = !DILocation(line: 1685, column: 9, scope: !2907)
!2928 = !DILocation(line: 1686, column: 17, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2907, file: !2, line: 1685, column: 20)
!2930 = !DILocation(line: 1686, column: 29, scope: !2929)
!2931 = !DILocation(line: 1686, column: 10, scope: !2929)
!2932 = !DILocation(line: 1686, column: 8, scope: !2929)
!2933 = !DILocation(line: 1687, column: 8, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1687, column: 7)
!2935 = !DILocation(line: 1687, column: 7, scope: !2929)
!2936 = !DILocation(line: 1688, column: 4, scope: !2934)
!2937 = !DILocation(line: 1689, column: 13, scope: !2929)
!2938 = !DILocation(line: 1690, column: 7, scope: !2929)
!2939 = !DILocation(line: 1691, column: 15, scope: !2929)
!2940 = !DILocation(line: 1691, column: 28, scope: !2929)
!2941 = !DILocation(line: 1691, column: 35, scope: !2929)
!2942 = !DILocation(line: 1691, column: 33, scope: !2929)
!2943 = !DILocation(line: 1691, column: 25, scope: !2929)
!2944 = !DILocation(line: 1691, column: 13, scope: !2929)
!2945 = distinct !{!2945, !2926, !2946, !643, !644}
!2946 = !DILocation(line: 1692, column: 2, scope: !2907)
!2947 = !DILocation(line: 1694, column: 9, scope: !2907)
!2948 = !DILocation(line: 1695, column: 1, scope: !2907)
!2949 = !DILocation(line: 1694, column: 2, scope: !2907)
!2950 = !DISubprogram(name: "memchr", scope: !2951, file: !2951, line: 202, type: !2952, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2951 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2952 = !DISubroutineType(types: !2953)
!2953 = !{!124, !2954, !113, !1948}
!2954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2955, size: 64)
!2955 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)

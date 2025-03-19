; ModuleID = 'net/netlink/policy.c'
source_filename = "net/netlink/policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlink_policy_dump_state = type { i32, i32, i32, [0 x %struct.anon] }
%struct.anon = type { ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon }
%union.anon = type { ptr }
%struct.netlink_range_validation = type { i64, i64 }
%struct.netlink_range_validation_signed = type { i64, i64 }
%struct.nlattr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.1, ptr, %union.anon.4, [48 x i8], %union.anon.5, i64, i32, i32, i16, i16, i16, [0 x i8], i8, i8, %union.anon.7, i32, i32, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { ptr, ptr, %union.anon.3 }
%union.anon.3 = type { ptr }
%union.anon.4 = type { i64 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { i64, ptr }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { [0 x i8], i8, [0 x i8], [3 x i8], i16, i16, %union.anon.9, i32, i32, i32, %union.anon.11, %union.anon.13, i32, %union.anon.14, %union.anon.15, i16, i16, i16, i16, i16, i16, i16 }
%union.anon.9 = type { i32 }
%union.anon.11 = type { i32 }
%union.anon.13 = type { i32 }
%union.anon.14 = type { i32 }
%union.anon.15 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"net/netlink/policy.c\00", align 1, !dbg !0
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [22 x i8] c"include/net/netlink.h\00", align 1, !dbg !10

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlink_policy_dump_get_policy_idx(ptr noundef %state, ptr noundef %policy, i32 noundef %maxtype) #0 align 16 !dbg !135 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %maxtype.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on41 = alloca i32, align 4
  %__flags52 = alloca i32, align 4
  %tmp65 = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !225, metadata !DIExpression()), !dbg !240
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !226, metadata !DIExpression()), !dbg !241
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !227, metadata !DIExpression()), !dbg !242
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !243
  call void @llvm.dbg.declare(metadata ptr %i, metadata !228, metadata !DIExpression()), !dbg !244
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !245
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !229, metadata !DIExpression()), !dbg !245
  %0 = load ptr, ptr %policy.addr, align 8, !dbg !245
  %tobool = icmp ne ptr %0, null, !dbg !245
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !245

lor.rhs:                                          ; preds = %entry
  %1 = load i32, ptr %maxtype.addr, align 4, !dbg !245
  %tobool1 = icmp ne i32 %1, 0, !dbg !245
  %lnot = xor i1 %tobool1, true, !dbg !245
  br label %lor.end, !dbg !245

lor.end:                                          ; preds = %lor.rhs, %entry
  %2 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lnot2 = xor i1 %2, true, !dbg !245
  %lnot3 = xor i1 %lnot2, true, !dbg !245
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !245
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !245
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !246
  %tobool4 = icmp ne i32 %3, 0, !dbg !246
  %lnot5 = xor i1 %tobool4, true, !dbg !246
  %lnot7 = xor i1 %lnot5, true, !dbg !246
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !246
  %conv = sext i32 %lnot.ext8 to i64, !dbg !246
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !246
  %tobool9 = icmp ne i64 %expval, 0, !dbg !246
  br i1 %tobool9, label %if.then, label %if.end, !dbg !245

if.then:                                          ; preds = %lor.end
  br label %do.body, !dbg !246

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !247
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !232, metadata !DIExpression()), !dbg !247
  store i32 2305, ptr %__flags, align 4, !dbg !247
  br label %do.body10, !dbg !247

do.body10:                                        ; preds = %do.body
  br label %do.cond, !dbg !248

do.cond:                                          ; preds = %do.body10
  br label %do.end, !dbg !248

do.end:                                           ; preds = %do.cond
  br label %do.body11, !dbg !247

do.body11:                                        ; preds = %do.end
  %4 = load i32, ptr %__flags, align 4, !dbg !250
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 87, i32 %4, i64 12) #15, !dbg !250, !srcloc !252
  br label %do.cond12, !dbg !250

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !250

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !247

do.body14:                                        ; preds = %do.end13
  br label %do.cond15, !dbg !253

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !253

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !246
  br label %do.cond17, !dbg !247

do.cond17:                                        ; preds = %do.end16
  br label %do.end18, !dbg !247

do.end18:                                         ; preds = %do.cond17
  br label %if.end, !dbg !247

if.end:                                           ; preds = %do.end18, %lor.end
  %5 = load i32, ptr %__ret_warn_on, align 4, !dbg !245
  %tobool19 = icmp ne i32 %5, 0, !dbg !245
  %lnot20 = xor i1 %tobool19, true, !dbg !245
  %lnot22 = xor i1 %lnot20, true, !dbg !245
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !245
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !245
  %expval25 = call i64 @llvm.expect.i64(i64 %conv24, i64 0), !dbg !245
  store i64 %expval25, ptr %tmp, align 8, !dbg !246
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !255
  %6 = load i64, ptr %tmp, align 8, !dbg !245
  %tobool26 = icmp ne i64 %6, 0, !dbg !255
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !256

if.then27:                                        ; preds = %if.end
  store i32 0, ptr %retval, align 4, !dbg !257
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !257

if.end28:                                         ; preds = %if.end
  store i32 0, ptr %i, align 4, !dbg !258
  br label %for.cond, !dbg !260

for.cond:                                         ; preds = %for.inc, %if.end28
  %7 = load i32, ptr %i, align 4, !dbg !261
  %8 = load ptr, ptr %state.addr, align 8, !dbg !263
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %8, i32 0, i32 2, !dbg !264
  %9 = load i32, ptr %n_alloc, align 8, !dbg !264
  %cmp = icmp ult i32 %7, %9, !dbg !265
  br i1 %cmp, label %for.body, label %for.end, !dbg !266

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %state.addr, align 8, !dbg !267
  %policies = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %10, i32 0, i32 3, !dbg !270
  %11 = load i32, ptr %i, align 4, !dbg !271
  %idxprom = zext i32 %11 to i64, !dbg !267
  %arrayidx = getelementptr [0 x %struct.anon], ptr %policies, i64 0, i64 %idxprom, !dbg !267
  %policy30 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !272
  %12 = load ptr, ptr %policy30, align 8, !dbg !272
  %13 = load ptr, ptr %policy.addr, align 8, !dbg !273
  %cmp31 = icmp eq ptr %12, %13, !dbg !274
  br i1 %cmp31, label %land.lhs.true, label %if.end40, !dbg !275

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %state.addr, align 8, !dbg !276
  %policies33 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %14, i32 0, i32 3, !dbg !277
  %15 = load i32, ptr %i, align 4, !dbg !278
  %idxprom34 = zext i32 %15 to i64, !dbg !276
  %arrayidx35 = getelementptr [0 x %struct.anon], ptr %policies33, i64 0, i64 %idxprom34, !dbg !276
  %maxtype36 = getelementptr inbounds %struct.anon, ptr %arrayidx35, i32 0, i32 1, !dbg !279
  %16 = load i32, ptr %maxtype36, align 8, !dbg !279
  %17 = load i32, ptr %maxtype.addr, align 4, !dbg !280
  %cmp37 = icmp eq i32 %16, %17, !dbg !281
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !282

if.then39:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %i, align 4, !dbg !283
  store i32 %18, ptr %retval, align 4, !dbg !284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !284

if.end40:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !285

for.inc:                                          ; preds = %if.end40
  %19 = load i32, ptr %i, align 4, !dbg !286
  %inc = add i32 %19, 1, !dbg !286
  store i32 %inc, ptr %i, align 4, !dbg !286
  br label %for.cond, !dbg !287, !llvm.loop !288

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on41) #15, !dbg !292
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on41, metadata !235, metadata !DIExpression()), !dbg !292
  store i32 1, ptr %__ret_warn_on41, align 4, !dbg !292
  %20 = load i32, ptr %__ret_warn_on41, align 4, !dbg !293
  %tobool42 = icmp ne i32 %20, 0, !dbg !293
  %lnot43 = xor i1 %tobool42, true, !dbg !293
  %lnot45 = xor i1 %lnot43, true, !dbg !293
  %lnot.ext46 = zext i1 %lnot45 to i32, !dbg !293
  %conv47 = sext i32 %lnot.ext46 to i64, !dbg !293
  %expval48 = call i64 @llvm.expect.i64(i64 %conv47, i64 0), !dbg !293
  %tobool49 = icmp ne i64 %expval48, 0, !dbg !293
  br i1 %tobool49, label %if.then50, label %if.end64, !dbg !292

if.then50:                                        ; preds = %for.end
  br label %do.body51, !dbg !293

do.body51:                                        ; preds = %if.then50
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags52) #15, !dbg !294
  call void @llvm.dbg.declare(metadata ptr %__flags52, metadata !237, metadata !DIExpression()), !dbg !294
  store i32 2305, ptr %__flags52, align 4, !dbg !294
  br label %do.body53, !dbg !294

do.body53:                                        ; preds = %do.body51
  br label %do.cond54, !dbg !295

do.cond54:                                        ; preds = %do.body53
  br label %do.end55, !dbg !295

do.end55:                                         ; preds = %do.cond54
  br label %do.body56, !dbg !294

do.body56:                                        ; preds = %do.end55
  %21 = load i32, ptr %__flags52, align 4, !dbg !297
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 96, i32 %21, i64 12) #15, !dbg !297, !srcloc !299
  br label %do.cond57, !dbg !297

do.cond57:                                        ; preds = %do.body56
  br label %do.end58, !dbg !297

do.end58:                                         ; preds = %do.cond57
  br label %do.body59, !dbg !294

do.body59:                                        ; preds = %do.end58
  br label %do.cond60, !dbg !300

do.cond60:                                        ; preds = %do.body59
  br label %do.end61, !dbg !300

do.end61:                                         ; preds = %do.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags52) #15, !dbg !293
  br label %do.cond62, !dbg !294

do.cond62:                                        ; preds = %do.end61
  br label %do.end63, !dbg !294

do.end63:                                         ; preds = %do.cond62
  br label %if.end64, !dbg !294

if.end64:                                         ; preds = %do.end63, %for.end
  %22 = load i32, ptr %__ret_warn_on41, align 4, !dbg !292
  %tobool66 = icmp ne i32 %22, 0, !dbg !292
  %lnot67 = xor i1 %tobool66, true, !dbg !292
  %lnot69 = xor i1 %lnot67, true, !dbg !292
  %lnot.ext70 = zext i1 %lnot69 to i32, !dbg !292
  %conv71 = sext i32 %lnot.ext70 to i64, !dbg !292
  %expval72 = call i64 @llvm.expect.i64(i64 %conv71, i64 0), !dbg !292
  store i64 %expval72, ptr %tmp65, align 8, !dbg !293
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on41) #15, !dbg !302
  %23 = load i64, ptr %tmp65, align 8, !dbg !292
  store i32 0, ptr %retval, align 4, !dbg !303
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !303

cleanup:                                          ; preds = %if.end64, %if.then39, %if.then27
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !304
  %24 = load i32, ptr %retval, align 4, !dbg !304
  ret i32 %24, !dbg !304
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlink_policy_dump_add_policy(ptr noundef %pstate, ptr noundef %policy, i32 noundef %maxtype) #0 align 16 !dbg !305 {
entry:
  %retval = alloca i32, align 4
  %pstate.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %maxtype.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %policy_idx = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %policy12 = alloca ptr, align 8
  %type = alloca i32, align 4
  store ptr %pstate, ptr %pstate.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pstate.addr, metadata !310, metadata !DIExpression()), !dbg !322
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !311, metadata !DIExpression()), !dbg !323
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !312, metadata !DIExpression()), !dbg !324
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !325
  call void @llvm.dbg.declare(metadata ptr %state, metadata !313, metadata !DIExpression()), !dbg !326
  %0 = load ptr, ptr %pstate.addr, align 8, !dbg !327
  %1 = load ptr, ptr %0, align 8, !dbg !328
  store ptr %1, ptr %state, align 8, !dbg !326
  call void @llvm.lifetime.start.p0(i64 4, ptr %policy_idx) #15, !dbg !329
  call void @llvm.dbg.declare(metadata ptr %policy_idx, metadata !314, metadata !DIExpression()), !dbg !330
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !331
  call void @llvm.dbg.declare(metadata ptr %err, metadata !315, metadata !DIExpression()), !dbg !332
  %2 = load ptr, ptr %state, align 8, !dbg !333
  %tobool = icmp ne ptr %2, null, !dbg !333
  br i1 %tobool, label %if.end4, label %if.then, !dbg !335

if.then:                                          ; preds = %entry
  %call = call ptr @alloc_state() #16, !dbg !336
  store ptr %call, ptr %state, align 8, !dbg !338
  %3 = load ptr, ptr %state, align 8, !dbg !339
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %3) #16, !dbg !341
  br i1 %call1, label %if.then2, label %if.end, !dbg !342

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %state, align 8, !dbg !343
  %call3 = call i64 @PTR_ERR(ptr noundef %4) #16, !dbg !344
  %conv = trunc i64 %call3 to i32, !dbg !344
  store i32 %conv, ptr %retval, align 4, !dbg !345
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !345

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !346

if.end4:                                          ; preds = %if.end, %entry
  %5 = load ptr, ptr %policy.addr, align 8, !dbg !347
  %6 = load i32, ptr %maxtype.addr, align 4, !dbg !348
  %call5 = call i32 @add_policy(ptr noundef %state, ptr noundef %5, i32 noundef %6) #16, !dbg !349
  store i32 %call5, ptr %err, align 4, !dbg !350
  %7 = load i32, ptr %err, align 4, !dbg !351
  %tobool6 = icmp ne i32 %7, 0, !dbg !351
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !353

if.then7:                                         ; preds = %if.end4
  br label %err_try_undo, !dbg !354

if.end8:                                          ; preds = %if.end4
  store i32 0, ptr %policy_idx, align 4, !dbg !355
  br label %for.cond, !dbg !356

for.cond:                                         ; preds = %for.inc39, %if.end8
  %8 = load i32, ptr %policy_idx, align 4, !dbg !357
  %9 = load ptr, ptr %state, align 8, !dbg !358
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %9, i32 0, i32 2, !dbg !359
  %10 = load i32, ptr %n_alloc, align 8, !dbg !359
  %cmp = icmp ult i32 %8, %10, !dbg !360
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !361

land.rhs:                                         ; preds = %for.cond
  %11 = load ptr, ptr %state, align 8, !dbg !362
  %policies = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %11, i32 0, i32 3, !dbg !363
  %12 = load i32, ptr %policy_idx, align 4, !dbg !364
  %idxprom = zext i32 %12 to i64, !dbg !362
  %arrayidx = getelementptr [0 x %struct.anon], ptr %policies, i64 0, i64 %idxprom, !dbg !362
  %policy10 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !365
  %13 = load ptr, ptr %policy10, align 8, !dbg !365
  %tobool11 = icmp ne ptr %13, null, !dbg !361
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %14 = phi i1 [ false, %for.cond ], [ %tobool11, %land.rhs ], !dbg !366
  br i1 %14, label %for.body, label %for.end41, !dbg !367

for.body:                                         ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy12) #15, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %policy12, metadata !316, metadata !DIExpression()), !dbg !369
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !370
  call void @llvm.dbg.declare(metadata ptr %type, metadata !320, metadata !DIExpression()), !dbg !371
  %15 = load ptr, ptr %state, align 8, !dbg !372
  %policies13 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %15, i32 0, i32 3, !dbg !373
  %16 = load i32, ptr %policy_idx, align 4, !dbg !374
  %idxprom14 = zext i32 %16 to i64, !dbg !372
  %arrayidx15 = getelementptr [0 x %struct.anon], ptr %policies13, i64 0, i64 %idxprom14, !dbg !372
  %policy16 = getelementptr inbounds %struct.anon, ptr %arrayidx15, i32 0, i32 0, !dbg !375
  %17 = load ptr, ptr %policy16, align 8, !dbg !375
  store ptr %17, ptr %policy12, align 8, !dbg !376
  store i32 0, ptr %type, align 4, !dbg !377
  br label %for.cond17, !dbg !379

for.cond17:                                       ; preds = %for.inc, %for.body
  %18 = load i32, ptr %type, align 4, !dbg !380
  %19 = load ptr, ptr %state, align 8, !dbg !382
  %policies18 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %19, i32 0, i32 3, !dbg !383
  %20 = load i32, ptr %policy_idx, align 4, !dbg !384
  %idxprom19 = zext i32 %20 to i64, !dbg !382
  %arrayidx20 = getelementptr [0 x %struct.anon], ptr %policies18, i64 0, i64 %idxprom19, !dbg !382
  %maxtype21 = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 1, !dbg !385
  %21 = load i32, ptr %maxtype21, align 8, !dbg !385
  %cmp22 = icmp ule i32 %18, %21, !dbg !386
  br i1 %cmp22, label %for.body24, label %for.end, !dbg !387

for.body24:                                       ; preds = %for.cond17
  %22 = load ptr, ptr %policy12, align 8, !dbg !388
  %23 = load i32, ptr %type, align 4, !dbg !390
  %idxprom25 = zext i32 %23 to i64, !dbg !388
  %arrayidx26 = getelementptr %struct.nla_policy, ptr %22, i64 %idxprom25, !dbg !388
  %type27 = getelementptr inbounds %struct.nla_policy, ptr %arrayidx26, i32 0, i32 0, !dbg !391
  %24 = load i8, ptr %type27, align 8, !dbg !391
  %conv28 = zext i8 %24 to i32, !dbg !388
  switch i32 %conv28, label %sw.default [
    i32 8, label %sw.bb
    i32 9, label %sw.bb
  ], !dbg !392

sw.bb:                                            ; preds = %for.body24, %for.body24
  %25 = load ptr, ptr %policy12, align 8, !dbg !393
  %26 = load i32, ptr %type, align 4, !dbg !395
  %idxprom29 = zext i32 %26 to i64, !dbg !393
  %arrayidx30 = getelementptr %struct.nla_policy, ptr %25, i64 %idxprom29, !dbg !393
  %27 = getelementptr inbounds %struct.nla_policy, ptr %arrayidx30, i32 0, i32 3, !dbg !396
  %28 = load ptr, ptr %27, align 8, !dbg !396
  %29 = load ptr, ptr %policy12, align 8, !dbg !397
  %30 = load i32, ptr %type, align 4, !dbg !398
  %idxprom31 = zext i32 %30 to i64, !dbg !397
  %arrayidx32 = getelementptr %struct.nla_policy, ptr %29, i64 %idxprom31, !dbg !397
  %len = getelementptr inbounds %struct.nla_policy, ptr %arrayidx32, i32 0, i32 2, !dbg !399
  %31 = load i16, ptr %len, align 2, !dbg !399
  %conv33 = zext i16 %31 to i32, !dbg !397
  %call34 = call i32 @add_policy(ptr noundef %state, ptr noundef %28, i32 noundef %conv33) #16, !dbg !400
  store i32 %call34, ptr %err, align 4, !dbg !401
  %32 = load i32, ptr %err, align 4, !dbg !402
  %tobool35 = icmp ne i32 %32, 0, !dbg !402
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !404

if.then36:                                        ; preds = %sw.bb
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !405

if.end37:                                         ; preds = %sw.bb
  br label %sw.epilog, !dbg !406

sw.default:                                       ; preds = %for.body24
  br label %sw.epilog, !dbg !407

sw.epilog:                                        ; preds = %sw.default, %if.end37
  br label %for.inc, !dbg !408

for.inc:                                          ; preds = %sw.epilog
  %33 = load i32, ptr %type, align 4, !dbg !409
  %inc = add i32 %33, 1, !dbg !409
  store i32 %inc, ptr %type, align 4, !dbg !409
  br label %for.cond17, !dbg !410, !llvm.loop !411

for.end:                                          ; preds = %for.cond17
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !413
  br label %cleanup, !dbg !413

cleanup:                                          ; preds = %if.then36, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !413
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy12) #15, !dbg !413
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup45 [
    i32 0, label %cleanup.cont
    i32 2, label %err_try_undo
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc39, !dbg !414

for.inc39:                                        ; preds = %cleanup.cont
  %34 = load i32, ptr %policy_idx, align 4, !dbg !415
  %inc40 = add i32 %34, 1, !dbg !415
  store i32 %inc40, ptr %policy_idx, align 4, !dbg !415
  br label %for.cond, !dbg !416, !llvm.loop !417

for.end41:                                        ; preds = %land.end
  %35 = load ptr, ptr %state, align 8, !dbg !419
  %36 = load ptr, ptr %pstate.addr, align 8, !dbg !420
  store ptr %35, ptr %36, align 8, !dbg !421
  store i32 0, ptr %retval, align 4, !dbg !422
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !422

err_try_undo:                                     ; preds = %cleanup, %if.then7
  call void @llvm.dbg.label(metadata !321), !dbg !423
  %37 = load ptr, ptr %pstate.addr, align 8, !dbg !424
  %38 = load ptr, ptr %37, align 8, !dbg !426
  %tobool42 = icmp ne ptr %38, null, !dbg !426
  br i1 %tobool42, label %if.else, label %if.then43, !dbg !427

if.then43:                                        ; preds = %err_try_undo
  %39 = load ptr, ptr %state, align 8, !dbg !428
  call void @netlink_policy_dump_free(ptr noundef %39) #16, !dbg !429
  br label %if.end44, !dbg !429

if.else:                                          ; preds = %err_try_undo
  %40 = load ptr, ptr %state, align 8, !dbg !430
  %41 = load ptr, ptr %pstate.addr, align 8, !dbg !431
  store ptr %40, ptr %41, align 8, !dbg !432
  br label %if.end44

if.end44:                                         ; preds = %if.else, %if.then43
  %42 = load i32, ptr %err, align 4, !dbg !433
  store i32 %42, ptr %retval, align 4, !dbg !434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup45, !dbg !434

cleanup45:                                        ; preds = %if.end44, %for.end41, %cleanup, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !435
  call void @llvm.lifetime.end.p0(i64 4, ptr %policy_idx) #15, !dbg !435
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !435
  %43 = load i32, ptr %retval, align 4, !dbg !435
  ret i32 %43, !dbg !435
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @alloc_state() #0 align 16 !dbg !436 {
entry:
  %retval = alloca ptr, align 8
  %state = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !441
  call void @llvm.dbg.declare(metadata ptr %state, metadata !440, metadata !DIExpression()), !dbg !442
  %call = call noalias ptr @kzalloc(i64 noundef 176, i32 noundef 3264) #17, !dbg !443
  store ptr %call, ptr %state, align 8, !dbg !444
  %0 = load ptr, ptr %state, align 8, !dbg !445
  %tobool = icmp ne ptr %0, null, !dbg !445
  br i1 %tobool, label %if.end, label %if.then, !dbg !447

if.then:                                          ; preds = %entry
  %call1 = call ptr @ERR_PTR(i64 noundef -12) #16, !dbg !448
  store ptr %call1, ptr %retval, align 8, !dbg !449
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !449

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %state, align 8, !dbg !450
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 2, !dbg !451
  store i32 10, ptr %n_alloc, align 8, !dbg !452
  %2 = load ptr, ptr %state, align 8, !dbg !453
  store ptr %2, ptr %retval, align 8, !dbg !454
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !454

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !455
  %3 = load ptr, ptr %retval, align 8, !dbg !455
  ret ptr %3, !dbg !455
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !456 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !465, metadata !DIExpression()), !dbg !466
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !467
  %1 = ptrtoint ptr %0 to i64, !dbg !467
  %2 = inttoptr i64 %1 to ptr, !dbg !467
  %3 = ptrtoint ptr %2 to i64, !dbg !467
  %cmp = icmp uge i64 %3, -4095, !dbg !467
  %lnot = xor i1 %cmp, true, !dbg !467
  %lnot1 = xor i1 %lnot, true, !dbg !467
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !467
  %conv = sext i32 %lnot.ext to i64, !dbg !467
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !467
  %tobool = icmp ne i64 %expval, 0, !dbg !467
  ret i1 %tobool, !dbg !468
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #4 align 16 !dbg !469 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !473, metadata !DIExpression()), !dbg !474
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !475
  %1 = ptrtoint ptr %0 to i64, !dbg !476
  ret i64 %1, !dbg !477
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_policy(ptr noundef %statep, ptr noundef %policy, i32 noundef %maxtype) #0 align 16 !dbg !478 {
entry:
  %retval = alloca i32, align 4
  %statep.addr = alloca ptr, align 8
  %policy.addr = alloca ptr, align 8
  %maxtype.addr = alloca i32, align 4
  %state = alloca ptr, align 8
  %n_alloc = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %statep, ptr %statep.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %statep.addr, metadata !480, metadata !DIExpression()), !dbg !486
  store ptr %policy, ptr %policy.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %policy.addr, metadata !481, metadata !DIExpression()), !dbg !487
  store i32 %maxtype, ptr %maxtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %maxtype.addr, metadata !482, metadata !DIExpression()), !dbg !488
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #15, !dbg !489
  call void @llvm.dbg.declare(metadata ptr %state, metadata !483, metadata !DIExpression()), !dbg !490
  %0 = load ptr, ptr %statep.addr, align 8, !dbg !491
  %1 = load ptr, ptr %0, align 8, !dbg !492
  store ptr %1, ptr %state, align 8, !dbg !490
  call void @llvm.lifetime.start.p0(i64 4, ptr %n_alloc) #15, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %n_alloc, metadata !484, metadata !DIExpression()), !dbg !494
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !493
  call void @llvm.dbg.declare(metadata ptr %i, metadata !485, metadata !DIExpression()), !dbg !495
  %2 = load ptr, ptr %policy.addr, align 8, !dbg !496
  %tobool = icmp ne ptr %2, null, !dbg !496
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !498

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %maxtype.addr, align 4, !dbg !499
  %tobool1 = icmp ne i32 %3, 0, !dbg !499
  br i1 %tobool1, label %if.end, label %if.then, !dbg !500

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !501
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !501

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !502
  br label %for.cond, !dbg !504

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !505
  %5 = load ptr, ptr %state, align 8, !dbg !507
  %n_alloc2 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %5, i32 0, i32 2, !dbg !508
  %6 = load i32, ptr %n_alloc2, align 8, !dbg !508
  %cmp = icmp ult i32 %4, %6, !dbg !509
  br i1 %cmp, label %for.body, label %for.end, !dbg !510

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %state, align 8, !dbg !511
  %policies = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %7, i32 0, i32 3, !dbg !514
  %8 = load i32, ptr %i, align 4, !dbg !515
  %idxprom = zext i32 %8 to i64, !dbg !511
  %arrayidx = getelementptr [0 x %struct.anon], ptr %policies, i64 0, i64 %idxprom, !dbg !511
  %policy3 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !516
  %9 = load ptr, ptr %policy3, align 8, !dbg !516
  %10 = load ptr, ptr %policy.addr, align 8, !dbg !517
  %cmp4 = icmp eq ptr %9, %10, !dbg !518
  br i1 %cmp4, label %land.lhs.true, label %if.end11, !dbg !519

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %state, align 8, !dbg !520
  %policies5 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %11, i32 0, i32 3, !dbg !521
  %12 = load i32, ptr %i, align 4, !dbg !522
  %idxprom6 = zext i32 %12 to i64, !dbg !520
  %arrayidx7 = getelementptr [0 x %struct.anon], ptr %policies5, i64 0, i64 %idxprom6, !dbg !520
  %maxtype8 = getelementptr inbounds %struct.anon, ptr %arrayidx7, i32 0, i32 1, !dbg !523
  %13 = load i32, ptr %maxtype8, align 8, !dbg !523
  %14 = load i32, ptr %maxtype.addr, align 4, !dbg !524
  %cmp9 = icmp eq i32 %13, %14, !dbg !525
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !526

if.then10:                                        ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4, !dbg !527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !527

if.end11:                                         ; preds = %land.lhs.true, %for.body
  %15 = load ptr, ptr %state, align 8, !dbg !528
  %policies12 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %15, i32 0, i32 3, !dbg !530
  %16 = load i32, ptr %i, align 4, !dbg !531
  %idxprom13 = zext i32 %16 to i64, !dbg !528
  %arrayidx14 = getelementptr [0 x %struct.anon], ptr %policies12, i64 0, i64 %idxprom13, !dbg !528
  %policy15 = getelementptr inbounds %struct.anon, ptr %arrayidx14, i32 0, i32 0, !dbg !532
  %17 = load ptr, ptr %policy15, align 8, !dbg !532
  %tobool16 = icmp ne ptr %17, null, !dbg !528
  br i1 %tobool16, label %if.end26, label %if.then17, !dbg !533

if.then17:                                        ; preds = %if.end11
  %18 = load ptr, ptr %policy.addr, align 8, !dbg !534
  %19 = load ptr, ptr %state, align 8, !dbg !536
  %policies18 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %19, i32 0, i32 3, !dbg !537
  %20 = load i32, ptr %i, align 4, !dbg !538
  %idxprom19 = zext i32 %20 to i64, !dbg !536
  %arrayidx20 = getelementptr [0 x %struct.anon], ptr %policies18, i64 0, i64 %idxprom19, !dbg !536
  %policy21 = getelementptr inbounds %struct.anon, ptr %arrayidx20, i32 0, i32 0, !dbg !539
  store ptr %18, ptr %policy21, align 8, !dbg !540
  %21 = load i32, ptr %maxtype.addr, align 4, !dbg !541
  %22 = load ptr, ptr %state, align 8, !dbg !542
  %policies22 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %22, i32 0, i32 3, !dbg !543
  %23 = load i32, ptr %i, align 4, !dbg !544
  %idxprom23 = zext i32 %23 to i64, !dbg !542
  %arrayidx24 = getelementptr [0 x %struct.anon], ptr %policies22, i64 0, i64 %idxprom23, !dbg !542
  %maxtype25 = getelementptr inbounds %struct.anon, ptr %arrayidx24, i32 0, i32 1, !dbg !545
  store i32 %21, ptr %maxtype25, align 8, !dbg !546
  store i32 0, ptr %retval, align 4, !dbg !547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !547

if.end26:                                         ; preds = %if.end11
  br label %for.inc, !dbg !548

for.inc:                                          ; preds = %if.end26
  %24 = load i32, ptr %i, align 4, !dbg !549
  %inc = add i32 %24, 1, !dbg !549
  store i32 %inc, ptr %i, align 4, !dbg !549
  br label %for.cond, !dbg !550, !llvm.loop !551

for.end:                                          ; preds = %for.cond
  %25 = load ptr, ptr %state, align 8, !dbg !553
  %n_alloc27 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %25, i32 0, i32 2, !dbg !554
  %26 = load i32, ptr %n_alloc27, align 8, !dbg !554
  %add = add i32 %26, 10, !dbg !555
  store i32 %add, ptr %n_alloc, align 4, !dbg !556
  %27 = load ptr, ptr %state, align 8, !dbg !557
  %28 = load i32, ptr %n_alloc, align 4, !dbg !558
  %conv = zext i32 %28 to i64, !dbg !558
  %call = call i64 @size_mul(i64 noundef %conv, i64 noundef 16) #16, !dbg !558
  %call28 = call i64 @size_add(i64 noundef 16, i64 noundef %call) #16, !dbg !558
  %call29 = call ptr @krealloc(ptr noundef %27, i64 noundef %call28, i32 noundef 3264) #18, !dbg !559
  store ptr %call29, ptr %state, align 8, !dbg !560
  %29 = load ptr, ptr %state, align 8, !dbg !561
  %tobool30 = icmp ne ptr %29, null, !dbg !561
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !563

if.then31:                                        ; preds = %for.end
  store i32 -12, ptr %retval, align 4, !dbg !564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !564

if.end32:                                         ; preds = %for.end
  %30 = load ptr, ptr %state, align 8, !dbg !565
  %policies33 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %30, i32 0, i32 3, !dbg !566
  %31 = load ptr, ptr %state, align 8, !dbg !567
  %n_alloc34 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %31, i32 0, i32 2, !dbg !568
  %32 = load i32, ptr %n_alloc34, align 8, !dbg !568
  %idxprom35 = zext i32 %32 to i64, !dbg !565
  %arrayidx36 = getelementptr [0 x %struct.anon], ptr %policies33, i64 0, i64 %idxprom35, !dbg !565
  %33 = load i32, ptr %n_alloc, align 4, !dbg !569
  %34 = load ptr, ptr %state, align 8, !dbg !569
  %n_alloc37 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %34, i32 0, i32 2, !dbg !569
  %35 = load i32, ptr %n_alloc37, align 8, !dbg !569
  %sub = sub i32 %33, %35, !dbg !569
  %conv38 = zext i32 %sub to i64, !dbg !569
  %call39 = call i64 @size_mul(i64 noundef %conv38, i64 noundef 16) #16, !dbg !569
  call void @llvm.memset.p0.i64(ptr align 8 %arrayidx36, i8 0, i64 %call39, i1 false), !dbg !570
  %36 = load ptr, ptr %policy.addr, align 8, !dbg !571
  %37 = load ptr, ptr %state, align 8, !dbg !572
  %policies40 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %37, i32 0, i32 3, !dbg !573
  %38 = load ptr, ptr %state, align 8, !dbg !574
  %n_alloc41 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %38, i32 0, i32 2, !dbg !575
  %39 = load i32, ptr %n_alloc41, align 8, !dbg !575
  %idxprom42 = zext i32 %39 to i64, !dbg !572
  %arrayidx43 = getelementptr [0 x %struct.anon], ptr %policies40, i64 0, i64 %idxprom42, !dbg !572
  %policy44 = getelementptr inbounds %struct.anon, ptr %arrayidx43, i32 0, i32 0, !dbg !576
  store ptr %36, ptr %policy44, align 8, !dbg !577
  %40 = load i32, ptr %maxtype.addr, align 4, !dbg !578
  %41 = load ptr, ptr %state, align 8, !dbg !579
  %policies45 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %41, i32 0, i32 3, !dbg !580
  %42 = load ptr, ptr %state, align 8, !dbg !581
  %n_alloc46 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %42, i32 0, i32 2, !dbg !582
  %43 = load i32, ptr %n_alloc46, align 8, !dbg !582
  %idxprom47 = zext i32 %43 to i64, !dbg !579
  %arrayidx48 = getelementptr [0 x %struct.anon], ptr %policies45, i64 0, i64 %idxprom47, !dbg !579
  %maxtype49 = getelementptr inbounds %struct.anon, ptr %arrayidx48, i32 0, i32 1, !dbg !583
  store i32 %40, ptr %maxtype49, align 8, !dbg !584
  %44 = load i32, ptr %n_alloc, align 4, !dbg !585
  %45 = load ptr, ptr %state, align 8, !dbg !586
  %n_alloc50 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %45, i32 0, i32 2, !dbg !587
  store i32 %44, ptr %n_alloc50, align 8, !dbg !588
  %46 = load ptr, ptr %state, align 8, !dbg !589
  %47 = load ptr, ptr %statep.addr, align 8, !dbg !590
  store ptr %46, ptr %47, align 8, !dbg !591
  store i32 0, ptr %retval, align 4, !dbg !592
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !592

cleanup:                                          ; preds = %if.end32, %if.then31, %if.then17, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !593
  call void @llvm.lifetime.end.p0(i64 4, ptr %n_alloc) #15, !dbg !593
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #15, !dbg !593
  %48 = load i32, ptr %retval, align 4, !dbg !593
  ret i32 %48, !dbg !593
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @netlink_policy_dump_free(ptr noundef %state) #0 align 16 !dbg !594 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !598, metadata !DIExpression()), !dbg !599
  %0 = load ptr, ptr %state.addr, align 8, !dbg !600
  call void @kfree(ptr noundef %0) #16, !dbg !601
  ret void, !dbg !602
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @netlink_policy_dump_loop(ptr noundef %state) #0 align 16 !dbg !603 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !607, metadata !DIExpression()), !dbg !608
  %0 = load ptr, ptr %state.addr, align 8, !dbg !609
  %call = call zeroext i1 @netlink_policy_dump_finished(ptr noundef %0) #16, !dbg !610
  %lnot = xor i1 %call, true, !dbg !611
  ret i1 %lnot, !dbg !612
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @netlink_policy_dump_finished(ptr noundef %state) #0 align 16 !dbg !613 {
entry:
  %state.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !615, metadata !DIExpression()), !dbg !616
  %0 = load ptr, ptr %state.addr, align 8, !dbg !617
  %policy_idx = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 0, !dbg !618
  %1 = load i32, ptr %policy_idx, align 8, !dbg !618
  %2 = load ptr, ptr %state.addr, align 8, !dbg !619
  %n_alloc = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %2, i32 0, i32 2, !dbg !620
  %3 = load i32, ptr %n_alloc, align 8, !dbg !620
  %cmp = icmp uge i32 %1, %3, !dbg !621
  br i1 %cmp, label %lor.end, label %lor.rhs, !dbg !622

lor.rhs:                                          ; preds = %entry
  %4 = load ptr, ptr %state.addr, align 8, !dbg !623
  %policies = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %4, i32 0, i32 3, !dbg !624
  %5 = load ptr, ptr %state.addr, align 8, !dbg !625
  %policy_idx1 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %5, i32 0, i32 0, !dbg !626
  %6 = load i32, ptr %policy_idx1, align 8, !dbg !626
  %idxprom = zext i32 %6 to i64, !dbg !623
  %arrayidx = getelementptr [0 x %struct.anon], ptr %policies, i64 0, i64 %idxprom, !dbg !623
  %policy = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !627
  %7 = load ptr, ptr %policy, align 8, !dbg !627
  %tobool = icmp ne ptr %7, null, !dbg !628
  %lnot = xor i1 %tobool, true, !dbg !628
  br label %lor.end, !dbg !622

lor.end:                                          ; preds = %lor.rhs, %entry
  %8 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  ret i1 %8, !dbg !629
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlink_policy_dump_attr_size_estimate(ptr noundef %pt) #0 align 16 !dbg !630 {
entry:
  %retval = alloca i32, align 4
  %pt.addr = alloca ptr, align 8
  %common = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !634, metadata !DIExpression()), !dbg !636
  call void @llvm.lifetime.start.p0(i64 4, ptr %common) #15, !dbg !637
  call void @llvm.dbg.declare(metadata ptr %common, metadata !635, metadata !DIExpression()), !dbg !638
  %call = call i32 @nla_attr_size(i32 noundef 4) #16, !dbg !639
  %mul = mul i32 2, %call, !dbg !640
  store i32 %mul, ptr %common, align 4, !dbg !638
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !641
  %type = getelementptr inbounds %struct.nla_policy, ptr %0, i32 0, i32 0, !dbg !642
  %1 = load i8, ptr %type, align 8, !dbg !642
  %conv = zext i8 %1 to i32, !dbg !641
  switch i32 %conv, label %sw.epilog [
    i32 0, label %sw.bb
    i32 17, label %sw.bb
    i32 8, label %sw.bb1
    i32 9, label %sw.bb1
    i32 1, label %sw.bb4
    i32 2, label %sw.bb4
    i32 3, label %sw.bb4
    i32 4, label %sw.bb4
    i32 7, label %sw.bb4
    i32 12, label %sw.bb4
    i32 13, label %sw.bb4
    i32 14, label %sw.bb4
    i32 15, label %sw.bb4
    i32 16, label %sw.bb10
    i32 5, label %sw.bb13
    i32 10, label %sw.bb13
    i32 11, label %sw.bb13
    i32 6, label %sw.bb17
  ], !dbg !643

sw.bb:                                            ; preds = %entry, %entry
  store i32 0, ptr %retval, align 4, !dbg !644
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !644

sw.bb1:                                           ; preds = %entry, %entry
  %2 = load i32, ptr %common, align 4, !dbg !646
  %call2 = call i32 @nla_attr_size(i32 noundef 4) #16, !dbg !647
  %mul3 = mul i32 2, %call2, !dbg !648
  %add = add i32 %2, %mul3, !dbg !649
  store i32 %add, ptr %retval, align 4, !dbg !650
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !650

sw.bb4:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry, %entry
  %3 = load i32, ptr %common, align 4, !dbg !651
  %call5 = call i32 @nla_attr_size(i32 noundef 0) #16, !dbg !652
  %call6 = call i32 @nla_attr_size(i32 noundef 8) #16, !dbg !653
  %add7 = add i32 %call5, %call6, !dbg !654
  %mul8 = mul i32 2, %add7, !dbg !655
  %add9 = add i32 %3, %mul8, !dbg !656
  store i32 %add9, ptr %retval, align 4, !dbg !657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !657

sw.bb10:                                          ; preds = %entry
  %4 = load i32, ptr %common, align 4, !dbg !658
  %call11 = call i32 @nla_attr_size(i32 noundef 4) #16, !dbg !659
  %add12 = add i32 %4, %call11, !dbg !660
  store i32 %add12, ptr %retval, align 4, !dbg !661
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !661

sw.bb13:                                          ; preds = %entry, %entry, %entry
  %5 = load i32, ptr %common, align 4, !dbg !662
  %call14 = call i32 @nla_attr_size(i32 noundef 4) #16, !dbg !663
  %mul15 = mul i32 2, %call14, !dbg !664
  %add16 = add i32 %5, %mul15, !dbg !665
  store i32 %add16, ptr %retval, align 4, !dbg !666
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !666

sw.bb17:                                          ; preds = %entry
  %6 = load i32, ptr %common, align 4, !dbg !667
  store i32 %6, ptr %retval, align 4, !dbg !668
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !668

sw.epilog:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !669

cleanup:                                          ; preds = %sw.epilog, %sw.bb17, %sw.bb13, %sw.bb10, %sw.bb4, %sw.bb1, %sw.bb
  call void @llvm.lifetime.end.p0(i64 4, ptr %common) #15, !dbg !670
  %7 = load i32, ptr %retval, align 4, !dbg !670
  ret i32 %7, !dbg !670
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_attr_size(i32 noundef %payload) #4 align 16 !dbg !671 {
entry:
  %payload.addr = alloca i32, align 4
  store i32 %payload, ptr %payload.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %payload.addr, metadata !675, metadata !DIExpression()), !dbg !676
  %0 = load i32, ptr %payload.addr, align 4, !dbg !677
  %add = add i32 4, %0, !dbg !678
  ret i32 %add, !dbg !679
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlink_policy_dump_write_attr(ptr noundef %skb, ptr noundef %pt, i32 noundef %nestattr) #0 align 16 !dbg !680 {
entry:
  %skb.addr = alloca ptr, align 8
  %pt.addr = alloca ptr, align 8
  %nestattr.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !953, metadata !DIExpression()), !dbg !956
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !954, metadata !DIExpression()), !dbg !957
  store i32 %nestattr, ptr %nestattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nestattr.addr, metadata !955, metadata !DIExpression()), !dbg !958
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !959
  %1 = load ptr, ptr %pt.addr, align 8, !dbg !960
  %2 = load i32, ptr %nestattr.addr, align 4, !dbg !961
  %call = call i32 @__netlink_policy_dump_write_attr(ptr noundef null, ptr noundef %0, ptr noundef %1, i32 noundef %2) #16, !dbg !962
  ret i32 %call, !dbg !963
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__netlink_policy_dump_write_attr(ptr noundef %state, ptr noundef %skb, ptr noundef %pt, i32 noundef %nestattr) #0 align 16 !dbg !964 {
entry:
  %retval = alloca i32, align 4
  %state.addr = alloca ptr, align 8
  %skb.addr = alloca ptr, align 8
  %pt.addr = alloca ptr, align 8
  %nestattr.addr = alloca i32, align 4
  %estimate = alloca i32, align 4
  %type = alloca i32, align 4
  %attr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %range = alloca %struct.netlink_range_validation, align 8
  %range66 = alloca %struct.netlink_range_validation_signed, align 8
  %range129 = alloca %struct.netlink_range_validation, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !968, metadata !DIExpression()), !dbg !989
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !969, metadata !DIExpression()), !dbg !990
  store ptr %pt, ptr %pt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pt.addr, metadata !970, metadata !DIExpression()), !dbg !991
  store i32 %nestattr, ptr %nestattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %nestattr.addr, metadata !971, metadata !DIExpression()), !dbg !992
  call void @llvm.lifetime.start.p0(i64 4, ptr %estimate) #15, !dbg !993
  call void @llvm.dbg.declare(metadata ptr %estimate, metadata !972, metadata !DIExpression()), !dbg !994
  %0 = load ptr, ptr %pt.addr, align 8, !dbg !995
  %call = call i32 @netlink_policy_dump_attr_size_estimate(ptr noundef %0) #16, !dbg !996
  store i32 %call, ptr %estimate, align 4, !dbg !994
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15, !dbg !997
  call void @llvm.dbg.declare(metadata ptr %type, metadata !973, metadata !DIExpression()), !dbg !998
  call void @llvm.lifetime.start.p0(i64 8, ptr %attr) #15, !dbg !999
  call void @llvm.dbg.declare(metadata ptr %attr, metadata !974, metadata !DIExpression()), !dbg !1000
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !1001
  %2 = load i32, ptr %nestattr.addr, align 4, !dbg !1002
  %call1 = call ptr @nla_nest_start(ptr noundef %1, i32 noundef %2) #16, !dbg !1003
  store ptr %call1, ptr %attr, align 8, !dbg !1004
  %3 = load ptr, ptr %attr, align 8, !dbg !1005
  %tobool = icmp ne ptr %3, null, !dbg !1005
  br i1 %tobool, label %if.end, label %if.then, !dbg !1007

if.then:                                          ; preds = %entry
  store i32 -105, ptr %retval, align 4, !dbg !1008
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1008

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %pt.addr, align 8, !dbg !1009
  %type2 = getelementptr inbounds %struct.nla_policy, ptr %4, i32 0, i32 0, !dbg !1010
  %5 = load i8, ptr %type2, align 8, !dbg !1010
  %conv = zext i8 %5 to i32, !dbg !1009
  switch i32 %conv, label %sw.default [
    i32 0, label %sw.bb
    i32 17, label %sw.bb
    i32 8, label %sw.bb3
    i32 9, label %sw.bb4
    i32 1, label %sw.bb27
    i32 2, label %sw.bb27
    i32 3, label %sw.bb27
    i32 4, label %sw.bb27
    i32 7, label %sw.bb27
    i32 12, label %sw.bb65
    i32 13, label %sw.bb65
    i32 14, label %sw.bb65
    i32 15, label %sw.bb65
    i32 16, label %sw.bb99
    i32 5, label %sw.bb104
    i32 10, label %sw.bb104
    i32 11, label %sw.bb104
    i32 6, label %sw.bb163
  ], !dbg !1011

sw.default:                                       ; preds = %if.end
  br label %sw.bb, !dbg !1012

sw.bb:                                            ; preds = %if.end, %if.end, %sw.default
  %6 = load ptr, ptr %skb.addr, align 8, !dbg !1013
  %7 = load ptr, ptr %attr, align 8, !dbg !1014
  call void @nla_nest_cancel(ptr noundef %6, ptr noundef %7) #16, !dbg !1015
  store i32 -61, ptr %retval, align 4, !dbg !1016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1016

sw.bb3:                                           ; preds = %if.end
  store i32 13, ptr %type, align 4, !dbg !1017
  br label %sw.bb4, !dbg !1018

sw.bb4:                                           ; preds = %if.end, %sw.bb3
  %8 = load ptr, ptr %pt.addr, align 8, !dbg !1019
  %type5 = getelementptr inbounds %struct.nla_policy, ptr %8, i32 0, i32 0, !dbg !1021
  %9 = load i8, ptr %type5, align 8, !dbg !1021
  %conv6 = zext i8 %9 to i32, !dbg !1019
  %cmp = icmp eq i32 %conv6, 9, !dbg !1022
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !1023

if.then8:                                         ; preds = %sw.bb4
  store i32 14, ptr %type, align 4, !dbg !1024
  br label %if.end9, !dbg !1025

if.end9:                                          ; preds = %if.then8, %sw.bb4
  %10 = load ptr, ptr %state.addr, align 8, !dbg !1026
  %tobool10 = icmp ne ptr %10, null, !dbg !1026
  br i1 %tobool10, label %land.lhs.true, label %if.end26, !dbg !1028

land.lhs.true:                                    ; preds = %if.end9
  %11 = load ptr, ptr %pt.addr, align 8, !dbg !1029
  %12 = getelementptr inbounds %struct.nla_policy, ptr %11, i32 0, i32 3, !dbg !1030
  %13 = load ptr, ptr %12, align 8, !dbg !1030
  %tobool11 = icmp ne ptr %13, null, !dbg !1029
  br i1 %tobool11, label %land.lhs.true12, label %if.end26, !dbg !1031

land.lhs.true12:                                  ; preds = %land.lhs.true
  %14 = load ptr, ptr %pt.addr, align 8, !dbg !1032
  %len = getelementptr inbounds %struct.nla_policy, ptr %14, i32 0, i32 2, !dbg !1033
  %15 = load i16, ptr %len, align 2, !dbg !1033
  %conv13 = zext i16 %15 to i32, !dbg !1032
  %tobool14 = icmp ne i32 %conv13, 0, !dbg !1032
  br i1 %tobool14, label %land.lhs.true15, label %if.end26, !dbg !1034

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %16 = load ptr, ptr %skb.addr, align 8, !dbg !1035
  %17 = load ptr, ptr %state.addr, align 8, !dbg !1036
  %18 = load ptr, ptr %pt.addr, align 8, !dbg !1037
  %19 = getelementptr inbounds %struct.nla_policy, ptr %18, i32 0, i32 3, !dbg !1038
  %20 = load ptr, ptr %19, align 8, !dbg !1038
  %21 = load ptr, ptr %pt.addr, align 8, !dbg !1039
  %len16 = getelementptr inbounds %struct.nla_policy, ptr %21, i32 0, i32 2, !dbg !1040
  %22 = load i16, ptr %len16, align 2, !dbg !1040
  %conv17 = zext i16 %22 to i32, !dbg !1039
  %call18 = call i32 @netlink_policy_dump_get_policy_idx(ptr noundef %17, ptr noundef %20, i32 noundef %conv17) #16, !dbg !1041
  %call19 = call i32 @nla_put_u32(ptr noundef %16, i32 noundef 8, i32 noundef %call18) #16, !dbg !1042
  %tobool20 = icmp ne i32 %call19, 0, !dbg !1042
  br i1 %tobool20, label %if.then25, label %lor.lhs.false, !dbg !1043

lor.lhs.false:                                    ; preds = %land.lhs.true15
  %23 = load ptr, ptr %skb.addr, align 8, !dbg !1044
  %24 = load ptr, ptr %pt.addr, align 8, !dbg !1045
  %len21 = getelementptr inbounds %struct.nla_policy, ptr %24, i32 0, i32 2, !dbg !1046
  %25 = load i16, ptr %len21, align 2, !dbg !1046
  %conv22 = zext i16 %25 to i32, !dbg !1045
  %call23 = call i32 @nla_put_u32(ptr noundef %23, i32 noundef 9, i32 noundef %conv22) #16, !dbg !1047
  %tobool24 = icmp ne i32 %call23, 0, !dbg !1047
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1048

if.then25:                                        ; preds = %lor.lhs.false, %land.lhs.true15
  br label %nla_put_failure, !dbg !1049

if.end26:                                         ; preds = %lor.lhs.false, %land.lhs.true12, %land.lhs.true, %if.end9
  br label %sw.epilog, !dbg !1050

sw.bb27:                                          ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %range) #15, !dbg !1051
  call void @llvm.dbg.declare(metadata ptr %range, metadata !975, metadata !DIExpression()), !dbg !1052
  %26 = load ptr, ptr %pt.addr, align 8, !dbg !1053
  %type28 = getelementptr inbounds %struct.nla_policy, ptr %26, i32 0, i32 0, !dbg !1055
  %27 = load i8, ptr %type28, align 8, !dbg !1055
  %conv29 = zext i8 %27 to i32, !dbg !1053
  %cmp30 = icmp eq i32 %conv29, 1, !dbg !1056
  br i1 %cmp30, label %if.then32, label %if.else, !dbg !1057

if.then32:                                        ; preds = %sw.bb27
  store i32 2, ptr %type, align 4, !dbg !1058
  br label %if.end47, !dbg !1059

if.else:                                          ; preds = %sw.bb27
  %28 = load ptr, ptr %pt.addr, align 8, !dbg !1060
  %type33 = getelementptr inbounds %struct.nla_policy, ptr %28, i32 0, i32 0, !dbg !1062
  %29 = load i8, ptr %type33, align 8, !dbg !1062
  %conv34 = zext i8 %29 to i32, !dbg !1060
  %cmp35 = icmp eq i32 %conv34, 2, !dbg !1063
  br i1 %cmp35, label %if.then37, label %if.else38, !dbg !1064

if.then37:                                        ; preds = %if.else
  store i32 3, ptr %type, align 4, !dbg !1065
  br label %if.end46, !dbg !1066

if.else38:                                        ; preds = %if.else
  %30 = load ptr, ptr %pt.addr, align 8, !dbg !1067
  %type39 = getelementptr inbounds %struct.nla_policy, ptr %30, i32 0, i32 0, !dbg !1069
  %31 = load i8, ptr %type39, align 8, !dbg !1069
  %conv40 = zext i8 %31 to i32, !dbg !1067
  %cmp41 = icmp eq i32 %conv40, 3, !dbg !1070
  br i1 %cmp41, label %if.then43, label %if.else44, !dbg !1071

if.then43:                                        ; preds = %if.else38
  store i32 4, ptr %type, align 4, !dbg !1072
  br label %if.end45, !dbg !1073

if.else44:                                        ; preds = %if.else38
  store i32 5, ptr %type, align 4, !dbg !1074
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %if.then43
  br label %if.end46

if.end46:                                         ; preds = %if.end45, %if.then37
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then32
  %32 = load ptr, ptr %pt.addr, align 8, !dbg !1075
  %validation_type = getelementptr inbounds %struct.nla_policy, ptr %32, i32 0, i32 1, !dbg !1077
  %33 = load i8, ptr %validation_type, align 1, !dbg !1077
  %conv48 = zext i8 %33 to i32, !dbg !1075
  %cmp49 = icmp eq i32 %conv48, 5, !dbg !1078
  br i1 %cmp49, label %if.then51, label %if.end57, !dbg !1079

if.then51:                                        ; preds = %if.end47
  %34 = load ptr, ptr %skb.addr, align 8, !dbg !1080
  %35 = load ptr, ptr %pt.addr, align 8, !dbg !1083
  %36 = getelementptr inbounds %struct.nla_policy, ptr %35, i32 0, i32 3, !dbg !1084
  %37 = load i32, ptr %36, align 8, !dbg !1084
  %conv52 = zext i32 %37 to i64, !dbg !1083
  %call53 = call i32 @nla_put_u64_64bit(ptr noundef %34, i32 noundef 12, i64 noundef %conv52, i32 noundef 11) #16, !dbg !1085
  %tobool54 = icmp ne i32 %call53, 0, !dbg !1085
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !1086

if.then55:                                        ; preds = %if.then51
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1087

if.end56:                                         ; preds = %if.then51
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1088

if.end57:                                         ; preds = %if.end47
  %38 = load ptr, ptr %pt.addr, align 8, !dbg !1089
  call void @nla_get_range_unsigned(ptr noundef %38, ptr noundef %range) #16, !dbg !1090
  %39 = load ptr, ptr %skb.addr, align 8, !dbg !1091
  %min = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 0, !dbg !1093
  %40 = load i64, ptr %min, align 8, !dbg !1093
  %call58 = call i32 @nla_put_u64_64bit(ptr noundef %39, i32 noundef 4, i64 noundef %40, i32 noundef 11) #16, !dbg !1094
  %tobool59 = icmp ne i32 %call58, 0, !dbg !1094
  br i1 %tobool59, label %if.then63, label %lor.lhs.false60, !dbg !1095

lor.lhs.false60:                                  ; preds = %if.end57
  %41 = load ptr, ptr %skb.addr, align 8, !dbg !1096
  %max = getelementptr inbounds %struct.netlink_range_validation, ptr %range, i32 0, i32 1, !dbg !1097
  %42 = load i64, ptr %max, align 8, !dbg !1097
  %call61 = call i32 @nla_put_u64_64bit(ptr noundef %41, i32 noundef 5, i64 noundef %42, i32 noundef 11) #16, !dbg !1098
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1098
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1099

if.then63:                                        ; preds = %lor.lhs.false60, %if.end57
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1100

if.end64:                                         ; preds = %lor.lhs.false60
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1101

cleanup:                                          ; preds = %if.then63, %if.then55, %if.end64, %if.end56
  call void @llvm.lifetime.end.p0(i64 16, ptr %range) #15, !dbg !1102
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup198 [
    i32 2, label %sw.epilog
    i32 3, label %nla_put_failure
  ]

sw.bb65:                                          ; preds = %if.end, %if.end, %if.end, %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr %range66) #15, !dbg !1103
  call void @llvm.dbg.declare(metadata ptr %range66, metadata !978, metadata !DIExpression()), !dbg !1104
  %43 = load ptr, ptr %pt.addr, align 8, !dbg !1105
  %type67 = getelementptr inbounds %struct.nla_policy, ptr %43, i32 0, i32 0, !dbg !1107
  %44 = load i8, ptr %type67, align 8, !dbg !1107
  %conv68 = zext i8 %44 to i32, !dbg !1105
  %cmp69 = icmp eq i32 %conv68, 12, !dbg !1108
  br i1 %cmp69, label %if.then71, label %if.else72, !dbg !1109

if.then71:                                        ; preds = %sw.bb65
  store i32 6, ptr %type, align 4, !dbg !1110
  br label %if.end87, !dbg !1111

if.else72:                                        ; preds = %sw.bb65
  %45 = load ptr, ptr %pt.addr, align 8, !dbg !1112
  %type73 = getelementptr inbounds %struct.nla_policy, ptr %45, i32 0, i32 0, !dbg !1114
  %46 = load i8, ptr %type73, align 8, !dbg !1114
  %conv74 = zext i8 %46 to i32, !dbg !1112
  %cmp75 = icmp eq i32 %conv74, 13, !dbg !1115
  br i1 %cmp75, label %if.then77, label %if.else78, !dbg !1116

if.then77:                                        ; preds = %if.else72
  store i32 7, ptr %type, align 4, !dbg !1117
  br label %if.end86, !dbg !1118

if.else78:                                        ; preds = %if.else72
  %47 = load ptr, ptr %pt.addr, align 8, !dbg !1119
  %type79 = getelementptr inbounds %struct.nla_policy, ptr %47, i32 0, i32 0, !dbg !1121
  %48 = load i8, ptr %type79, align 8, !dbg !1121
  %conv80 = zext i8 %48 to i32, !dbg !1119
  %cmp81 = icmp eq i32 %conv80, 14, !dbg !1122
  br i1 %cmp81, label %if.then83, label %if.else84, !dbg !1123

if.then83:                                        ; preds = %if.else78
  store i32 8, ptr %type, align 4, !dbg !1124
  br label %if.end85, !dbg !1125

if.else84:                                        ; preds = %if.else78
  store i32 9, ptr %type, align 4, !dbg !1126
  br label %if.end85

if.end85:                                         ; preds = %if.else84, %if.then83
  br label %if.end86

if.end86:                                         ; preds = %if.end85, %if.then77
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then71
  %49 = load ptr, ptr %pt.addr, align 8, !dbg !1127
  call void @nla_get_range_signed(ptr noundef %49, ptr noundef %range66) #16, !dbg !1128
  %50 = load ptr, ptr %skb.addr, align 8, !dbg !1129
  %min88 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %range66, i32 0, i32 0, !dbg !1131
  %51 = load i64, ptr %min88, align 8, !dbg !1131
  %call89 = call i32 @nla_put_s64(ptr noundef %50, i32 noundef 2, i64 noundef %51, i32 noundef 11) #16, !dbg !1132
  %tobool90 = icmp ne i32 %call89, 0, !dbg !1132
  br i1 %tobool90, label %if.then95, label %lor.lhs.false91, !dbg !1133

lor.lhs.false91:                                  ; preds = %if.end87
  %52 = load ptr, ptr %skb.addr, align 8, !dbg !1134
  %max92 = getelementptr inbounds %struct.netlink_range_validation_signed, ptr %range66, i32 0, i32 1, !dbg !1135
  %53 = load i64, ptr %max92, align 8, !dbg !1135
  %call93 = call i32 @nla_put_s64(ptr noundef %52, i32 noundef 3, i64 noundef %53, i32 noundef 11) #16, !dbg !1136
  %tobool94 = icmp ne i32 %call93, 0, !dbg !1136
  br i1 %tobool94, label %if.then95, label %if.end96, !dbg !1137

if.then95:                                        ; preds = %lor.lhs.false91, %if.end87
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !1138

if.end96:                                         ; preds = %lor.lhs.false91
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup97, !dbg !1139

cleanup97:                                        ; preds = %if.then95, %if.end96
  call void @llvm.lifetime.end.p0(i64 16, ptr %range66) #15, !dbg !1140
  %cleanup.dest98 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest98, label %cleanup198 [
    i32 2, label %sw.epilog
    i32 3, label %nla_put_failure
  ]

sw.bb99:                                          ; preds = %if.end
  store i32 15, ptr %type, align 4, !dbg !1141
  %54 = load ptr, ptr %skb.addr, align 8, !dbg !1142
  %55 = load ptr, ptr %pt.addr, align 8, !dbg !1144
  %56 = getelementptr inbounds %struct.nla_policy, ptr %55, i32 0, i32 3, !dbg !1145
  %57 = load i32, ptr %56, align 8, !dbg !1145
  %call100 = call i32 @nla_put_u32(ptr noundef %54, i32 noundef 10, i32 noundef %57) #16, !dbg !1146
  %tobool101 = icmp ne i32 %call100, 0, !dbg !1146
  br i1 %tobool101, label %if.then102, label %if.end103, !dbg !1147

if.then102:                                       ; preds = %sw.bb99
  br label %nla_put_failure, !dbg !1148

if.end103:                                        ; preds = %sw.bb99
  br label %sw.epilog, !dbg !1149

sw.bb104:                                         ; preds = %if.end, %if.end, %if.end
  %58 = load ptr, ptr %pt.addr, align 8, !dbg !1150
  %type105 = getelementptr inbounds %struct.nla_policy, ptr %58, i32 0, i32 0, !dbg !1152
  %59 = load i8, ptr %type105, align 8, !dbg !1152
  %conv106 = zext i8 %59 to i32, !dbg !1150
  %cmp107 = icmp eq i32 %conv106, 5, !dbg !1153
  br i1 %cmp107, label %if.then109, label %if.else110, !dbg !1154

if.then109:                                       ; preds = %sw.bb104
  store i32 11, ptr %type, align 4, !dbg !1155
  br label %if.end118, !dbg !1156

if.else110:                                       ; preds = %sw.bb104
  %60 = load ptr, ptr %pt.addr, align 8, !dbg !1157
  %type111 = getelementptr inbounds %struct.nla_policy, ptr %60, i32 0, i32 0, !dbg !1159
  %61 = load i8, ptr %type111, align 8, !dbg !1159
  %conv112 = zext i8 %61 to i32, !dbg !1157
  %cmp113 = icmp eq i32 %conv112, 10, !dbg !1160
  br i1 %cmp113, label %if.then115, label %if.else116, !dbg !1161

if.then115:                                       ; preds = %if.else110
  store i32 12, ptr %type, align 4, !dbg !1162
  br label %if.end117, !dbg !1163

if.else116:                                       ; preds = %if.else110
  store i32 10, ptr %type, align 4, !dbg !1164
  br label %if.end117

if.end117:                                        ; preds = %if.else116, %if.then115
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.then109
  %62 = load ptr, ptr %pt.addr, align 8, !dbg !1165
  %validation_type119 = getelementptr inbounds %struct.nla_policy, ptr %62, i32 0, i32 1, !dbg !1166
  %63 = load i8, ptr %validation_type119, align 1, !dbg !1166
  %conv120 = zext i8 %63 to i32, !dbg !1165
  %cmp121 = icmp eq i32 %conv120, 1, !dbg !1167
  br i1 %cmp121, label %if.then128, label %lor.lhs.false123, !dbg !1168

lor.lhs.false123:                                 ; preds = %if.end118
  %64 = load ptr, ptr %pt.addr, align 8, !dbg !1169
  %validation_type124 = getelementptr inbounds %struct.nla_policy, ptr %64, i32 0, i32 1, !dbg !1170
  %65 = load i8, ptr %validation_type124, align 1, !dbg !1170
  %conv125 = zext i8 %65 to i32, !dbg !1169
  %cmp126 = icmp eq i32 %conv125, 2, !dbg !1171
  br i1 %cmp126, label %if.then128, label %if.else151, !dbg !1172

if.then128:                                       ; preds = %lor.lhs.false123, %if.end118
  call void @llvm.lifetime.start.p0(i64 16, ptr %range129) #15, !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %range129, metadata !980, metadata !DIExpression()), !dbg !1174
  %66 = load ptr, ptr %pt.addr, align 8, !dbg !1175
  call void @nla_get_range_unsigned(ptr noundef %66, ptr noundef %range129) #16, !dbg !1176
  %min130 = getelementptr inbounds %struct.netlink_range_validation, ptr %range129, i32 0, i32 0, !dbg !1177
  %67 = load i64, ptr %min130, align 8, !dbg !1177
  %tobool131 = icmp ne i64 %67, 0, !dbg !1179
  br i1 %tobool131, label %land.lhs.true132, label %if.end138, !dbg !1180

land.lhs.true132:                                 ; preds = %if.then128
  %68 = load ptr, ptr %skb.addr, align 8, !dbg !1181
  %min133 = getelementptr inbounds %struct.netlink_range_validation, ptr %range129, i32 0, i32 0, !dbg !1182
  %69 = load i64, ptr %min133, align 8, !dbg !1182
  %conv134 = trunc i64 %69 to i32, !dbg !1183
  %call135 = call i32 @nla_put_u32(ptr noundef %68, i32 noundef 6, i32 noundef %conv134) #16, !dbg !1184
  %tobool136 = icmp ne i32 %call135, 0, !dbg !1184
  br i1 %tobool136, label %if.then137, label %if.end138, !dbg !1185

if.then137:                                       ; preds = %land.lhs.true132
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !1186

if.end138:                                        ; preds = %land.lhs.true132, %if.then128
  %max139 = getelementptr inbounds %struct.netlink_range_validation, ptr %range129, i32 0, i32 1, !dbg !1187
  %70 = load i64, ptr %max139, align 8, !dbg !1187
  %cmp140 = icmp ult i64 %70, 65535, !dbg !1189
  br i1 %cmp140, label %land.lhs.true142, label %if.end148, !dbg !1190

land.lhs.true142:                                 ; preds = %if.end138
  %71 = load ptr, ptr %skb.addr, align 8, !dbg !1191
  %max143 = getelementptr inbounds %struct.netlink_range_validation, ptr %range129, i32 0, i32 1, !dbg !1192
  %72 = load i64, ptr %max143, align 8, !dbg !1192
  %conv144 = trunc i64 %72 to i32, !dbg !1193
  %call145 = call i32 @nla_put_u32(ptr noundef %71, i32 noundef 7, i32 noundef %conv144) #16, !dbg !1194
  %tobool146 = icmp ne i32 %call145, 0, !dbg !1194
  br i1 %tobool146, label %if.then147, label %if.end148, !dbg !1195

if.then147:                                       ; preds = %land.lhs.true142
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup149, !dbg !1196

if.end148:                                        ; preds = %land.lhs.true142, %if.end138
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1197
  br label %cleanup149, !dbg !1197

cleanup149:                                       ; preds = %if.then147, %if.then137, %if.end148
  call void @llvm.lifetime.end.p0(i64 16, ptr %range129) #15, !dbg !1197
  %cleanup.dest150 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest150, label %cleanup198 [
    i32 0, label %cleanup.cont
    i32 3, label %nla_put_failure
  ]

cleanup.cont:                                     ; preds = %cleanup149
  br label %if.end162, !dbg !1198

if.else151:                                       ; preds = %lor.lhs.false123
  %73 = load ptr, ptr %pt.addr, align 8, !dbg !1199
  %len152 = getelementptr inbounds %struct.nla_policy, ptr %73, i32 0, i32 2, !dbg !1201
  %74 = load i16, ptr %len152, align 2, !dbg !1201
  %conv153 = zext i16 %74 to i32, !dbg !1199
  %tobool154 = icmp ne i32 %conv153, 0, !dbg !1199
  br i1 %tobool154, label %land.lhs.true155, label %if.end161, !dbg !1202

land.lhs.true155:                                 ; preds = %if.else151
  %75 = load ptr, ptr %skb.addr, align 8, !dbg !1203
  %76 = load ptr, ptr %pt.addr, align 8, !dbg !1204
  %len156 = getelementptr inbounds %struct.nla_policy, ptr %76, i32 0, i32 2, !dbg !1205
  %77 = load i16, ptr %len156, align 2, !dbg !1205
  %conv157 = zext i16 %77 to i32, !dbg !1204
  %call158 = call i32 @nla_put_u32(ptr noundef %75, i32 noundef 7, i32 noundef %conv157) #16, !dbg !1206
  %tobool159 = icmp ne i32 %call158, 0, !dbg !1206
  br i1 %tobool159, label %if.then160, label %if.end161, !dbg !1207

if.then160:                                       ; preds = %land.lhs.true155
  br label %nla_put_failure, !dbg !1208

if.end161:                                        ; preds = %land.lhs.true155, %if.else151
  br label %if.end162

if.end162:                                        ; preds = %if.end161, %cleanup.cont
  br label %sw.epilog, !dbg !1210

sw.bb163:                                         ; preds = %if.end
  store i32 1, ptr %type, align 4, !dbg !1211
  br label %sw.epilog, !dbg !1212

sw.epilog:                                        ; preds = %sw.bb163, %if.end162, %if.end103, %cleanup97, %cleanup, %if.end26
  %78 = load ptr, ptr %skb.addr, align 8, !dbg !1213
  %79 = load i32, ptr %type, align 4, !dbg !1215
  %call164 = call i32 @nla_put_u32(ptr noundef %78, i32 noundef 1, i32 noundef %79) #16, !dbg !1216
  %tobool165 = icmp ne i32 %call164, 0, !dbg !1216
  br i1 %tobool165, label %if.then166, label %if.end167, !dbg !1217

if.then166:                                       ; preds = %sw.epilog
  br label %nla_put_failure, !dbg !1218

if.end167:                                        ; preds = %sw.epilog
  %80 = load ptr, ptr %skb.addr, align 8, !dbg !1219
  %81 = load ptr, ptr %attr, align 8, !dbg !1220
  %call168 = call i32 @nla_nest_end(ptr noundef %80, ptr noundef %81) #16, !dbg !1221
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1222
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !983, metadata !DIExpression()), !dbg !1222
  %82 = load ptr, ptr %attr, align 8, !dbg !1222
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %82, i32 0, i32 0, !dbg !1222
  %83 = load i16, ptr %nla_len, align 2, !dbg !1222
  %conv169 = zext i16 %83 to i32, !dbg !1222
  %84 = load i32, ptr %estimate, align 4, !dbg !1222
  %cmp170 = icmp sgt i32 %conv169, %84, !dbg !1222
  %lnot = xor i1 %cmp170, true, !dbg !1222
  %lnot172 = xor i1 %lnot, true, !dbg !1222
  %lnot.ext = zext i1 %lnot172 to i32, !dbg !1222
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1222
  %85 = load i32, ptr %__ret_warn_on, align 4, !dbg !1223
  %tobool173 = icmp ne i32 %85, 0, !dbg !1223
  %lnot174 = xor i1 %tobool173, true, !dbg !1223
  %lnot176 = xor i1 %lnot174, true, !dbg !1223
  %lnot.ext177 = zext i1 %lnot176 to i32, !dbg !1223
  %conv178 = sext i32 %lnot.ext177 to i64, !dbg !1223
  %expval = call i64 @llvm.expect.i64(i64 %conv178, i64 0), !dbg !1223
  %tobool179 = icmp ne i64 %expval, 0, !dbg !1223
  br i1 %tobool179, label %if.then180, label %if.end190, !dbg !1222

if.then180:                                       ; preds = %if.end167
  br label %do.body, !dbg !1223

do.body:                                          ; preds = %if.then180
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !985, metadata !DIExpression()), !dbg !1224
  store i32 2305, ptr %__flags, align 4, !dbg !1224
  br label %do.body181, !dbg !1224

do.body181:                                       ; preds = %do.body
  br label %do.cond, !dbg !1225

do.cond:                                          ; preds = %do.body181
  br label %do.end, !dbg !1225

do.end:                                           ; preds = %do.cond
  br label %do.body182, !dbg !1224

do.body182:                                       ; preds = %do.end
  %86 = load i32, ptr %__flags, align 4, !dbg !1227
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 389, i32 %86, i64 12) #15, !dbg !1227, !srcloc !1229
  br label %do.cond183, !dbg !1227

do.cond183:                                       ; preds = %do.body182
  br label %do.end184, !dbg !1227

do.end184:                                        ; preds = %do.cond183
  br label %do.body185, !dbg !1224

do.body185:                                       ; preds = %do.end184
  br label %do.cond186, !dbg !1230

do.cond186:                                       ; preds = %do.body185
  br label %do.end187, !dbg !1230

do.end187:                                        ; preds = %do.cond186
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1223
  br label %do.cond188, !dbg !1224

do.cond188:                                       ; preds = %do.end187
  br label %do.end189, !dbg !1224

do.end189:                                        ; preds = %do.cond188
  br label %if.end190, !dbg !1224

if.end190:                                        ; preds = %do.end189, %if.end167
  %87 = load i32, ptr %__ret_warn_on, align 4, !dbg !1222
  %tobool191 = icmp ne i32 %87, 0, !dbg !1222
  %lnot192 = xor i1 %tobool191, true, !dbg !1222
  %lnot194 = xor i1 %lnot192, true, !dbg !1222
  %lnot.ext195 = zext i1 %lnot194 to i32, !dbg !1222
  %conv196 = sext i32 %lnot.ext195 to i64, !dbg !1222
  %expval197 = call i64 @llvm.expect.i64(i64 %conv196, i64 0), !dbg !1222
  store i64 %expval197, ptr %tmp, align 8, !dbg !1223
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1232
  %88 = load i64, ptr %tmp, align 8, !dbg !1222
  store i32 0, ptr %retval, align 4, !dbg !1233
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1233

nla_put_failure:                                  ; preds = %cleanup149, %cleanup97, %cleanup, %if.then166, %if.then160, %if.then102, %if.then25
  call void @llvm.dbg.label(metadata !988), !dbg !1234
  %89 = load ptr, ptr %skb.addr, align 8, !dbg !1235
  %90 = load ptr, ptr %attr, align 8, !dbg !1236
  call void @nla_nest_cancel(ptr noundef %89, ptr noundef %90) #16, !dbg !1237
  store i32 -105, ptr %retval, align 4, !dbg !1238
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup198, !dbg !1238

cleanup198:                                       ; preds = %nla_put_failure, %if.end190, %cleanup149, %cleanup97, %cleanup, %sw.bb, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %attr) #15, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15, !dbg !1239
  call void @llvm.lifetime.end.p0(i64 4, ptr %estimate) #15, !dbg !1239
  %91 = load i32, ptr %retval, align 4, !dbg !1239
  ret i32 %91, !dbg !1239
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @netlink_policy_dump_write(ptr noundef %skb, ptr noundef %state) #0 align 16 !dbg !1240 {
entry:
  %retval = alloca i32, align 4
  %skb.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %pt = alloca ptr, align 8
  %policy = alloca ptr, align 8
  %again = alloca i8, align 1
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1244, metadata !DIExpression()), !dbg !1253
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !1245, metadata !DIExpression()), !dbg !1254
  call void @llvm.lifetime.start.p0(i64 8, ptr %pt) #15, !dbg !1255
  call void @llvm.dbg.declare(metadata ptr %pt, metadata !1246, metadata !DIExpression()), !dbg !1256
  call void @llvm.lifetime.start.p0(i64 8, ptr %policy) #15, !dbg !1257
  call void @llvm.dbg.declare(metadata ptr %policy, metadata !1247, metadata !DIExpression()), !dbg !1258
  call void @llvm.lifetime.start.p0(i64 1, ptr %again) #15, !dbg !1259
  call void @llvm.dbg.declare(metadata ptr %again, metadata !1248, metadata !DIExpression()), !dbg !1260
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #15, !dbg !1261
  call void @llvm.dbg.declare(metadata ptr %err, metadata !1249, metadata !DIExpression()), !dbg !1262
  br label %send_attribute, !dbg !1261

send_attribute:                                   ; preds = %if.end28, %entry
  call void @llvm.dbg.label(metadata !1250), !dbg !1263
  store i8 0, ptr %again, align 1, !dbg !1264
  %0 = load ptr, ptr %state.addr, align 8, !dbg !1265
  %policies = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %0, i32 0, i32 3, !dbg !1266
  %1 = load ptr, ptr %state.addr, align 8, !dbg !1267
  %policy_idx = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %1, i32 0, i32 0, !dbg !1268
  %2 = load i32, ptr %policy_idx, align 8, !dbg !1268
  %idxprom = zext i32 %2 to i64, !dbg !1265
  %arrayidx = getelementptr [0 x %struct.anon], ptr %policies, i64 0, i64 %idxprom, !dbg !1265
  %policy1 = getelementptr inbounds %struct.anon, ptr %arrayidx, i32 0, i32 0, !dbg !1269
  %3 = load ptr, ptr %policy1, align 8, !dbg !1269
  %4 = load ptr, ptr %state.addr, align 8, !dbg !1270
  %attr_idx = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %4, i32 0, i32 1, !dbg !1271
  %5 = load i32, ptr %attr_idx, align 4, !dbg !1271
  %idxprom2 = zext i32 %5 to i64, !dbg !1265
  %arrayidx3 = getelementptr %struct.nla_policy, ptr %3, i64 %idxprom2, !dbg !1265
  store ptr %arrayidx3, ptr %pt, align 8, !dbg !1272
  %6 = load ptr, ptr %skb.addr, align 8, !dbg !1273
  %7 = load ptr, ptr %state.addr, align 8, !dbg !1274
  %policy_idx4 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %7, i32 0, i32 0, !dbg !1275
  %8 = load i32, ptr %policy_idx4, align 8, !dbg !1275
  %call = call ptr @nla_nest_start(ptr noundef %6, i32 noundef %8) #16, !dbg !1276
  store ptr %call, ptr %policy, align 8, !dbg !1277
  %9 = load ptr, ptr %policy, align 8, !dbg !1278
  %tobool = icmp ne ptr %9, null, !dbg !1278
  br i1 %tobool, label %if.end, label %if.then, !dbg !1280

if.then:                                          ; preds = %send_attribute
  store i32 -105, ptr %retval, align 4, !dbg !1281
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1281

if.end:                                           ; preds = %send_attribute
  %10 = load ptr, ptr %state.addr, align 8, !dbg !1282
  %11 = load ptr, ptr %skb.addr, align 8, !dbg !1283
  %12 = load ptr, ptr %pt, align 8, !dbg !1284
  %13 = load ptr, ptr %state.addr, align 8, !dbg !1285
  %attr_idx5 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %13, i32 0, i32 1, !dbg !1286
  %14 = load i32, ptr %attr_idx5, align 4, !dbg !1286
  %call6 = call i32 @__netlink_policy_dump_write_attr(ptr noundef %10, ptr noundef %11, ptr noundef %12, i32 noundef %14) #16, !dbg !1287
  store i32 %call6, ptr %err, align 4, !dbg !1288
  %15 = load i32, ptr %err, align 4, !dbg !1289
  %cmp = icmp eq i32 %15, -61, !dbg !1291
  br i1 %cmp, label %if.then7, label %if.else, !dbg !1292

if.then7:                                         ; preds = %if.end
  %16 = load ptr, ptr %skb.addr, align 8, !dbg !1293
  %17 = load ptr, ptr %policy, align 8, !dbg !1295
  call void @nla_nest_cancel(ptr noundef %16, ptr noundef %17) #16, !dbg !1296
  store i8 1, ptr %again, align 1, !dbg !1297
  br label %next, !dbg !1298

if.else:                                          ; preds = %if.end
  %18 = load i32, ptr %err, align 4, !dbg !1299
  %tobool8 = icmp ne i32 %18, 0, !dbg !1299
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1301

if.then9:                                         ; preds = %if.else
  br label %nla_put_failure, !dbg !1302

if.end10:                                         ; preds = %if.else
  br label %if.end11

if.end11:                                         ; preds = %if.end10
  %19 = load ptr, ptr %skb.addr, align 8, !dbg !1304
  %20 = load ptr, ptr %policy, align 8, !dbg !1305
  %call12 = call i32 @nla_nest_end(ptr noundef %19, ptr noundef %20) #16, !dbg !1306
  br label %next, !dbg !1306

next:                                             ; preds = %if.end11, %if.then7
  call void @llvm.dbg.label(metadata !1251), !dbg !1307
  %21 = load ptr, ptr %state.addr, align 8, !dbg !1308
  %attr_idx13 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %21, i32 0, i32 1, !dbg !1309
  %22 = load i32, ptr %attr_idx13, align 4, !dbg !1310
  %add = add i32 %22, 1, !dbg !1310
  store i32 %add, ptr %attr_idx13, align 4, !dbg !1310
  %23 = load ptr, ptr %state.addr, align 8, !dbg !1311
  %attr_idx14 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %23, i32 0, i32 1, !dbg !1313
  %24 = load i32, ptr %attr_idx14, align 4, !dbg !1313
  %25 = load ptr, ptr %state.addr, align 8, !dbg !1314
  %policies15 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %25, i32 0, i32 3, !dbg !1315
  %26 = load ptr, ptr %state.addr, align 8, !dbg !1316
  %policy_idx16 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %26, i32 0, i32 0, !dbg !1317
  %27 = load i32, ptr %policy_idx16, align 8, !dbg !1317
  %idxprom17 = zext i32 %27 to i64, !dbg !1314
  %arrayidx18 = getelementptr [0 x %struct.anon], ptr %policies15, i64 0, i64 %idxprom17, !dbg !1314
  %maxtype = getelementptr inbounds %struct.anon, ptr %arrayidx18, i32 0, i32 1, !dbg !1318
  %28 = load i32, ptr %maxtype, align 8, !dbg !1318
  %cmp19 = icmp ugt i32 %24, %28, !dbg !1319
  br i1 %cmp19, label %if.then20, label %if.end23, !dbg !1320

if.then20:                                        ; preds = %next
  %29 = load ptr, ptr %state.addr, align 8, !dbg !1321
  %attr_idx21 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %29, i32 0, i32 1, !dbg !1323
  store i32 0, ptr %attr_idx21, align 4, !dbg !1324
  %30 = load ptr, ptr %state.addr, align 8, !dbg !1325
  %policy_idx22 = getelementptr inbounds %struct.netlink_policy_dump_state, ptr %30, i32 0, i32 0, !dbg !1326
  %31 = load i32, ptr %policy_idx22, align 8, !dbg !1327
  %inc = add i32 %31, 1, !dbg !1327
  store i32 %inc, ptr %policy_idx22, align 8, !dbg !1327
  br label %if.end23, !dbg !1328

if.end23:                                         ; preds = %if.then20, %next
  %32 = load i8, ptr %again, align 1, !dbg !1329, !range !1331, !noundef !1332
  %tobool24 = trunc i8 %32 to i1, !dbg !1329
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !1333

if.then25:                                        ; preds = %if.end23
  %33 = load ptr, ptr %state.addr, align 8, !dbg !1334
  %call26 = call zeroext i1 @netlink_policy_dump_finished(ptr noundef %33) #16, !dbg !1337
  br i1 %call26, label %if.then27, label %if.end28, !dbg !1338

if.then27:                                        ; preds = %if.then25
  store i32 -61, ptr %retval, align 4, !dbg !1339
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1339

if.end28:                                         ; preds = %if.then25
  br label %send_attribute, !dbg !1340

if.end29:                                         ; preds = %if.end23
  store i32 0, ptr %retval, align 4, !dbg !1341
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1341

nla_put_failure:                                  ; preds = %if.then9
  call void @llvm.dbg.label(metadata !1252), !dbg !1342
  %34 = load ptr, ptr %skb.addr, align 8, !dbg !1343
  %35 = load ptr, ptr %policy, align 8, !dbg !1344
  call void @nla_nest_cancel(ptr noundef %34, ptr noundef %35) #16, !dbg !1345
  store i32 -105, ptr %retval, align 4, !dbg !1346
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1346

cleanup:                                          ; preds = %nla_put_failure, %if.end29, %if.then27, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #15, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 1, ptr %again) #15, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %policy) #15, !dbg !1347
  call void @llvm.lifetime.end.p0(i64 8, ptr %pt) #15, !dbg !1347
  %36 = load i32, ptr %retval, align 4, !dbg !1347
  ret i32 %36, !dbg !1347
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_nest_start(ptr noundef %skb, i32 noundef %attrtype) #4 align 16 !dbg !1348 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1352, metadata !DIExpression()), !dbg !1354
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !1353, metadata !DIExpression()), !dbg !1355
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !1356
  %1 = load i32, ptr %attrtype.addr, align 4, !dbg !1357
  %or = or i32 %1, 32768, !dbg !1358
  %call = call ptr @nla_nest_start_noflag(ptr noundef %0, i32 noundef %or) #16, !dbg !1359
  ret ptr %call, !dbg !1360
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) #4 align 16 !dbg !1361 {
entry:
  %skb.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1365, metadata !DIExpression()), !dbg !1367
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1366, metadata !DIExpression()), !dbg !1368
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !1369
  %1 = load ptr, ptr %start.addr, align 8, !dbg !1370
  call void @nlmsg_trim(ptr noundef %0, ptr noundef %1) #16, !dbg !1371
  ret void, !dbg !1372
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_nest_end(ptr noundef %skb, ptr noundef %start) #4 align 16 !dbg !1373 {
entry:
  %skb.addr = alloca ptr, align 8
  %start.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1377, metadata !DIExpression()), !dbg !1379
  store ptr %start, ptr %start.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1378, metadata !DIExpression()), !dbg !1380
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !1381
  %call = call ptr @skb_tail_pointer(ptr noundef %0) #16, !dbg !1382
  %1 = load ptr, ptr %start.addr, align 8, !dbg !1383
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i64, !dbg !1384
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64, !dbg !1384
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1384
  %conv = trunc i64 %sub.ptr.sub to i16, !dbg !1382
  %2 = load ptr, ptr %start.addr, align 8, !dbg !1385
  %nla_len = getelementptr inbounds %struct.nlattr, ptr %2, i32 0, i32 0, !dbg !1386
  store i16 %conv, ptr %nla_len, align 2, !dbg !1387
  %3 = load ptr, ptr %skb.addr, align 8, !dbg !1388
  %len = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6, !dbg !1389
  %4 = load i32, ptr %len, align 8, !dbg !1389
  ret i32 %4, !dbg !1390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1391 dso_local void @kfree(ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1394 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1398, metadata !DIExpression()), !dbg !1400
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1399, metadata !DIExpression()), !dbg !1401
  %0 = load i64, ptr %size.addr, align 8, !dbg !1402
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1403
  %or = or i32 %1, 256, !dbg !1404
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !1405
  ret ptr %call, !dbg !1406
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #4 align 16 !dbg !1407 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1411, metadata !DIExpression()), !dbg !1412
  %0 = load i64, ptr %error.addr, align 8, !dbg !1413
  %1 = inttoptr i64 %0 to ptr, !dbg !1414
  ret ptr %1, !dbg !1415
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !1416 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1418, metadata !DIExpression()), !dbg !1423
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1419, metadata !DIExpression()), !dbg !1424
  %0 = load i64, ptr %size.addr, align 8, !dbg !1425
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !1426
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !1427

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !1428
  %tobool = icmp ne i64 %2, 0, !dbg !1428
  br i1 %tobool, label %if.then, label %if.end7, !dbg !1429

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !1430
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1420, metadata !DIExpression()), !dbg !1431
  %3 = load i64, ptr %size.addr, align 8, !dbg !1432
  %cmp = icmp ugt i64 %3, 8192, !dbg !1434
  br i1 %cmp, label %if.then1, label %if.end, !dbg !1435

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !1436
  %5 = load i32, ptr %flags.addr, align 4, !dbg !1437
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !1438
  store ptr %call, ptr %retval, align 8, !dbg !1439
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1439

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !1440
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !1440
  store i32 %call2, ptr %index, align 4, !dbg !1441
  %7 = load i32, ptr %flags.addr, align 4, !dbg !1442
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !1443
  %9 = ptrtoint ptr %8 to i64, !dbg !1443
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !1444
  %idxprom = zext i32 %call3 to i64, !dbg !1445
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !1445
  %10 = load i32, ptr %index, align 4, !dbg !1446
  %idxprom4 = zext i32 %10 to i64, !dbg !1445
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !1445
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !1445
  %12 = load i32, ptr %flags.addr, align 4, !dbg !1447
  %13 = load i64, ptr %size.addr, align 8, !dbg !1448
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !1449
  store ptr %call6, ptr %retval, align 8, !dbg !1450
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1450

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !1451
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !1452
  %15 = load i32, ptr %flags.addr, align 4, !dbg !1453
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !1454
  store ptr %call8, ptr %retval, align 8, !dbg !1455
  br label %return, !dbg !1455

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !1456
  ret ptr %16, !dbg !1456
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1457 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !1458 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1462, metadata !DIExpression()), !dbg !1464
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !1463, metadata !DIExpression()), !dbg !1465
  %0 = load i64, ptr %size.addr, align 8, !dbg !1466
  %tobool = icmp ne i64 %0, 0, !dbg !1466
  br i1 %tobool, label %if.end, label %if.then, !dbg !1468

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1469
  br label %return, !dbg !1469

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !1470
  %cmp = icmp ule i64 %1, 8, !dbg !1472
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !1473

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !1474
  br label %return, !dbg !1474

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !1475
  %cmp3 = icmp ugt i64 %2, 64, !dbg !1477
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !1478

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !1479
  %cmp4 = icmp ule i64 %3, 96, !dbg !1480
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1481

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !1482
  br label %return, !dbg !1482

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !1483
  %cmp7 = icmp ugt i64 %4, 128, !dbg !1485
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !1486

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !1487
  %cmp9 = icmp ule i64 %5, 192, !dbg !1488
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !1489

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !1490
  br label %return, !dbg !1490

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !1491
  %cmp12 = icmp ule i64 %6, 8, !dbg !1493
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1494

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !1495
  br label %return, !dbg !1495

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !1496
  %cmp15 = icmp ule i64 %7, 16, !dbg !1498
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1499

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !1500
  br label %return, !dbg !1500

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !1501
  %cmp18 = icmp ule i64 %8, 32, !dbg !1503
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1504

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !1505
  br label %return, !dbg !1505

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !1506
  %cmp21 = icmp ule i64 %9, 64, !dbg !1508
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1509

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !1510
  br label %return, !dbg !1510

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !1511
  %cmp24 = icmp ule i64 %10, 128, !dbg !1513
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1514

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !1515
  br label %return, !dbg !1515

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !1516
  %cmp27 = icmp ule i64 %11, 256, !dbg !1518
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1519

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !1520
  br label %return, !dbg !1520

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !1521
  %cmp30 = icmp ule i64 %12, 512, !dbg !1523
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1524

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !1525
  br label %return, !dbg !1525

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !1526
  %cmp33 = icmp ule i64 %13, 1024, !dbg !1528
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1529

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !1530
  br label %return, !dbg !1530

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !1531
  %cmp36 = icmp ule i64 %14, 2048, !dbg !1533
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1534

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !1535
  br label %return, !dbg !1535

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !1536
  %cmp39 = icmp ule i64 %15, 4096, !dbg !1538
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1539

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !1540
  br label %return, !dbg !1540

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !1541
  %cmp42 = icmp ule i64 %16, 8192, !dbg !1543
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1544

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !1545
  br label %return, !dbg !1545

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !1546
  %cmp45 = icmp ule i64 %17, 16384, !dbg !1548
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1549

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !1550
  br label %return, !dbg !1550

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !1551
  %cmp48 = icmp ule i64 %18, 32768, !dbg !1553
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1554

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !1555
  br label %return, !dbg !1555

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !1556
  %cmp51 = icmp ule i64 %19, 65536, !dbg !1558
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1559

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !1560
  br label %return, !dbg !1560

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !1561
  %cmp54 = icmp ule i64 %20, 131072, !dbg !1563
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1564

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !1565
  br label %return, !dbg !1565

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !1566
  %cmp57 = icmp ule i64 %21, 262144, !dbg !1568
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1569

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !1570
  br label %return, !dbg !1570

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !1571
  %cmp60 = icmp ule i64 %22, 524288, !dbg !1573
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1574

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !1575
  br label %return, !dbg !1575

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !1576
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !1578
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1579

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !1580
  br label %return, !dbg !1580

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !1581
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !1583
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1584

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !1585
  br label %return, !dbg !1585

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !1586, !range !1331, !noundef !1332
  %tobool69 = trunc i8 %25 to i1, !dbg !1586
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !1588

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !1589

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_245() #20, !dbg !1590, !srcloc !1593
  unreachable, !dbg !1590

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !1594

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !1595

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !1596

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !1598

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !1596

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !1600, !srcloc !1602
  br label %do.end75, !dbg !1600

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !1596

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !1603
  br label %return, !dbg !1603

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !1604
  ret i32 %26, !dbg !1604
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !1605 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !1611 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1615, metadata !DIExpression()), !dbg !1617
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !1616, metadata !DIExpression()), !dbg !1618
  %0 = load i32, ptr %flags.addr, align 4, !dbg !1619
  %and = and i32 %0, 17, !dbg !1619
  %cmp = icmp eq i32 %and, 0, !dbg !1619
  %lnot = xor i1 %cmp, true, !dbg !1619
  %lnot1 = xor i1 %lnot, true, !dbg !1619
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1619
  %conv = sext i32 %lnot.ext to i64, !dbg !1619
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !1619
  %tobool = icmp ne i64 %expval, 0, !dbg !1619
  br i1 %tobool, label %if.then, label %if.end, !dbg !1621

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1622
  br label %return, !dbg !1622

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1623
  %and2 = and i32 %1, 1, !dbg !1625
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1625
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !1626

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !1627
  br label %return, !dbg !1627

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1628
  br label %return, !dbg !1628

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !1630
  ret i32 %2, !dbg !1630
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !1631 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !1632 dso_local void @__compiletime_assert_245() #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !1635 dso_local ptr @krealloc(ptr noundef, i64 noundef, i32 noundef) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_add(i64 noundef %addend1, i64 noundef %addend2) #4 align 16 !dbg !1638 {
entry:
  %retval = alloca i64, align 8
  %addend1.addr = alloca i64, align 8
  %addend2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %addend1, ptr %addend1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend1.addr, metadata !1643, metadata !DIExpression()), !dbg !1646
  store i64 %addend2, ptr %addend2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addend2.addr, metadata !1644, metadata !DIExpression()), !dbg !1647
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !1648
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !1645, metadata !DIExpression()), !dbg !1649
  %0 = load i64, ptr %addend1.addr, align 8, !dbg !1650
  %1 = load i64, ptr %addend2.addr, align 8, !dbg !1650
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %0, i64 %1), !dbg !1650
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1650
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1650
  store i64 %4, ptr %bytes, align 8, !dbg !1650
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !1650
  br i1 %call, label %if.then, label %if.end, !dbg !1652

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1653
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1653

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !1654
  store i64 %5, ptr %retval, align 8, !dbg !1655
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1655

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !1656
  %6 = load i64, ptr %retval, align 8, !dbg !1656
  ret i64 %6, !dbg !1656
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @size_mul(i64 noundef %factor1, i64 noundef %factor2) #4 align 16 !dbg !1657 {
entry:
  %retval = alloca i64, align 8
  %factor1.addr = alloca i64, align 8
  %factor2.addr = alloca i64, align 8
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %factor1, ptr %factor1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor1.addr, metadata !1659, metadata !DIExpression()), !dbg !1662
  store i64 %factor2, ptr %factor2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %factor2.addr, metadata !1660, metadata !DIExpression()), !dbg !1663
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #15, !dbg !1664
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !1661, metadata !DIExpression()), !dbg !1665
  %0 = load i64, ptr %factor1.addr, align 8, !dbg !1666
  %1 = load i64, ptr %factor2.addr, align 8, !dbg !1666
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !1666
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !1666
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !1666
  store i64 %4, ptr %bytes, align 8, !dbg !1666
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #16, !dbg !1666
  br i1 %call, label %if.then, label %if.end, !dbg !1668

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !1669
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1669

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %bytes, align 8, !dbg !1670
  store i64 %5, ptr %retval, align 8, !dbg !1671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1671

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #15, !dbg !1672
  %6 = load i64, ptr %retval, align 8, !dbg !1672
  ret i64 %6, !dbg !1672
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #4 align 16 !dbg !1673 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !1677, metadata !DIExpression()), !dbg !1678
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !1679, !range !1331, !noundef !1332
  %tobool = trunc i8 %0 to i1, !dbg !1679
  %lnot = xor i1 %tobool, true, !dbg !1679
  %lnot1 = xor i1 %lnot, true, !dbg !1679
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1679
  %conv = sext i32 %lnot.ext to i64, !dbg !1679
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1679
  %tobool2 = icmp ne i64 %expval, 0, !dbg !1679
  ret i1 %tobool2, !dbg !1680
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_put_u32(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %value) #4 align 16 !dbg !1681 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1685, metadata !DIExpression()), !dbg !1689
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !1686, metadata !DIExpression()), !dbg !1690
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1687, metadata !DIExpression()), !dbg !1691
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #15, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1688, metadata !DIExpression()), !dbg !1693
  %0 = load i32, ptr %value.addr, align 4, !dbg !1694
  store i32 %0, ptr %tmp, align 4, !dbg !1693
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !1695
  %2 = load i32, ptr %attrtype.addr, align 4, !dbg !1696
  %call = call i32 @nla_put(ptr noundef %1, i32 noundef %2, i32 noundef 4, ptr noundef %tmp) #16, !dbg !1697
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #15, !dbg !1698
  ret i32 %call, !dbg !1699
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_put_u64_64bit(ptr noundef %skb, i32 noundef %attrtype, i64 noundef %value, i32 noundef %padattr) #4 align 16 !dbg !1700 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %padattr.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1704, metadata !DIExpression()), !dbg !1709
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !1705, metadata !DIExpression()), !dbg !1710
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1706, metadata !DIExpression()), !dbg !1711
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !1707, metadata !DIExpression()), !dbg !1712
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1708, metadata !DIExpression()), !dbg !1714
  %0 = load i64, ptr %value.addr, align 8, !dbg !1715
  store i64 %0, ptr %tmp, align 8, !dbg !1714
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !1716
  %2 = load i32, ptr %attrtype.addr, align 4, !dbg !1717
  %3 = load i32, ptr %padattr.addr, align 4, !dbg !1718
  %call = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef %tmp, i32 noundef %3) #16, !dbg !1719
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !1720
  ret i32 %call, !dbg !1721
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1722 dso_local void @nla_get_range_unsigned(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1725 dso_local void @nla_get_range_signed(ptr noundef, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @nla_put_s64(ptr noundef %skb, i32 noundef %attrtype, i64 noundef %value, i32 noundef %padattr) #4 align 16 !dbg !1728 {
entry:
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %padattr.addr = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1732, metadata !DIExpression()), !dbg !1737
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !1733, metadata !DIExpression()), !dbg !1738
  store i64 %value, ptr %value.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !1734, metadata !DIExpression()), !dbg !1739
  store i32 %padattr, ptr %padattr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %padattr.addr, metadata !1735, metadata !DIExpression()), !dbg !1740
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #15, !dbg !1741
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !1736, metadata !DIExpression()), !dbg !1742
  %0 = load i64, ptr %value.addr, align 8, !dbg !1743
  store i64 %0, ptr %tmp, align 8, !dbg !1742
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !1744
  %2 = load i32, ptr %attrtype.addr, align 4, !dbg !1745
  %3 = load i32, ptr %padattr.addr, align 4, !dbg !1746
  %call = call i32 @nla_put_64bit(ptr noundef %1, i32 noundef %2, i32 noundef 8, ptr noundef %tmp, i32 noundef %3) #16, !dbg !1747
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #15, !dbg !1748
  ret i32 %call, !dbg !1749
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1750 dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1753 dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @nla_nest_start_noflag(ptr noundef %skb, i32 noundef %attrtype) #4 align 16 !dbg !1756 {
entry:
  %retval = alloca ptr, align 8
  %skb.addr = alloca ptr, align 8
  %attrtype.addr = alloca i32, align 4
  %start = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1758, metadata !DIExpression()), !dbg !1761
  store i32 %attrtype, ptr %attrtype.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %attrtype.addr, metadata !1759, metadata !DIExpression()), !dbg !1762
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1760, metadata !DIExpression()), !dbg !1764
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !1765
  %call = call ptr @skb_tail_pointer(ptr noundef %0) #16, !dbg !1766
  store ptr %call, ptr %start, align 8, !dbg !1764
  %1 = load ptr, ptr %skb.addr, align 8, !dbg !1767
  %2 = load i32, ptr %attrtype.addr, align 4, !dbg !1769
  %call1 = call i32 @nla_put(ptr noundef %1, i32 noundef %2, i32 noundef 0, ptr noundef null) #16, !dbg !1770
  %cmp = icmp slt i32 %call1, 0, !dbg !1771
  br i1 %cmp, label %if.then, label %if.end, !dbg !1772

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !1773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1773

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %start, align 8, !dbg !1774
  store ptr %3, ptr %retval, align 8, !dbg !1775
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1775

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !1776
  %4 = load ptr, ptr %retval, align 8, !dbg !1776
  ret ptr %4, !dbg !1776
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @skb_tail_pointer(ptr noundef %skb) #4 align 16 !dbg !1777 {
entry:
  %skb.addr = alloca ptr, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1783, metadata !DIExpression()), !dbg !1784
  %0 = load ptr, ptr %skb.addr, align 8, !dbg !1785
  %head = getelementptr inbounds %struct.sk_buff, ptr %0, i32 0, i32 17, !dbg !1786
  %1 = load ptr, ptr %head, align 8, !dbg !1786
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !1787
  %tail = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, !dbg !1788
  %3 = load i32, ptr %tail, align 8, !dbg !1788
  %idx.ext = zext i32 %3 to i64, !dbg !1789
  %add.ptr = getelementptr i8, ptr %1, i64 %idx.ext, !dbg !1789
  ret ptr %add.ptr, !dbg !1790
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @nlmsg_trim(ptr noundef %skb, ptr noundef %mark) #4 align 16 !dbg !1791 {
entry:
  %skb.addr = alloca ptr, align 8
  %mark.addr = alloca ptr, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store ptr %skb, ptr %skb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %skb.addr, metadata !1795, metadata !DIExpression()), !dbg !1804
  store ptr %mark, ptr %mark.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %mark.addr, metadata !1796, metadata !DIExpression()), !dbg !1805
  %0 = load ptr, ptr %mark.addr, align 8, !dbg !1806
  %tobool = icmp ne ptr %0, null, !dbg !1806
  br i1 %tobool, label %if.then, label %if.end27, !dbg !1807

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !1797, metadata !DIExpression()), !dbg !1808
  %1 = load ptr, ptr %mark.addr, align 8, !dbg !1808
  %2 = load ptr, ptr %skb.addr, align 8, !dbg !1808
  %data = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 18, !dbg !1808
  %3 = load ptr, ptr %data, align 8, !dbg !1808
  %cmp = icmp ult ptr %1, %3, !dbg !1808
  %lnot = xor i1 %cmp, true, !dbg !1808
  %lnot1 = xor i1 %lnot, true, !dbg !1808
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1808
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !1808
  %4 = load i32, ptr %__ret_warn_on, align 4, !dbg !1809
  %tobool2 = icmp ne i32 %4, 0, !dbg !1809
  %lnot3 = xor i1 %tobool2, true, !dbg !1809
  %lnot5 = xor i1 %lnot3, true, !dbg !1809
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !1809
  %conv = sext i32 %lnot.ext6 to i64, !dbg !1809
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1809
  %tobool7 = icmp ne i64 %expval, 0, !dbg !1809
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !1808

if.then8:                                         ; preds = %if.then
  br label %do.body, !dbg !1809

do.body:                                          ; preds = %if.then8
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #15, !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !1801, metadata !DIExpression()), !dbg !1810
  store i32 2305, ptr %__flags, align 4, !dbg !1810
  br label %do.body9, !dbg !1810

do.body9:                                         ; preds = %do.body
  br label %do.cond, !dbg !1811

do.cond:                                          ; preds = %do.body9
  br label %do.end, !dbg !1811

do.end:                                           ; preds = %do.cond
  br label %do.body10, !dbg !1810

do.body10:                                        ; preds = %do.end
  %5 = load i32, ptr %__flags, align 4, !dbg !1813
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 1037, i32 %5, i64 12) #15, !dbg !1813, !srcloc !1815
  br label %do.cond11, !dbg !1813

do.cond11:                                        ; preds = %do.body10
  br label %do.end12, !dbg !1813

do.end12:                                         ; preds = %do.cond11
  br label %do.body13, !dbg !1810

do.body13:                                        ; preds = %do.end12
  br label %do.cond14, !dbg !1816

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1816

do.end15:                                         ; preds = %do.cond14
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #15, !dbg !1809
  br label %do.cond16, !dbg !1810

do.cond16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !1810

do.end17:                                         ; preds = %do.cond16
  br label %if.end, !dbg !1810

if.end:                                           ; preds = %do.end17, %if.then
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !1808
  %tobool18 = icmp ne i32 %6, 0, !dbg !1808
  %lnot19 = xor i1 %tobool18, true, !dbg !1808
  %lnot21 = xor i1 %lnot19, true, !dbg !1808
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !1808
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !1808
  %expval24 = call i64 @llvm.expect.i64(i64 %conv23, i64 0), !dbg !1808
  store i64 %expval24, ptr %tmp, align 8, !dbg !1809
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #15, !dbg !1818
  %7 = load i64, ptr %tmp, align 8, !dbg !1808
  %8 = load ptr, ptr %skb.addr, align 8, !dbg !1819
  %9 = load ptr, ptr %mark.addr, align 8, !dbg !1820
  %10 = load ptr, ptr %skb.addr, align 8, !dbg !1821
  %data25 = getelementptr inbounds %struct.sk_buff, ptr %10, i32 0, i32 18, !dbg !1822
  %11 = load ptr, ptr %data25, align 8, !dbg !1822
  %sub.ptr.lhs.cast = ptrtoint ptr %9 to i64, !dbg !1823
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i64, !dbg !1823
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1823
  %conv26 = trunc i64 %sub.ptr.sub to i32, !dbg !1824
  call void @skb_trim(ptr noundef %8, i32 noundef %conv26) #16, !dbg !1825
  br label %if.end27, !dbg !1826

if.end27:                                         ; preds = %if.end, %entry
  ret void, !dbg !1827
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1828 dso_local void @skb_trim(ptr noundef, i32 noundef) #5

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(1) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!16}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "net/netlink/policy.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "97f9e42e3a3a947b164a08a6cd76cbe2")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 21)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !9, line: 480, type: !3, isLocal: true, isDefinition: true)
!9 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!10 = !DIGlobalVariableExpression(var: !11, expr: !DIExpression())
!11 = distinct !DIGlobalVariable(scope: null, file: !12, line: 1037, type: !13, isLocal: true, isDefinition: true)
!12 = !DIFile(filename: "./include/net/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "75ea2e9501d91e2f676980361db2fc9a")
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 22)
!16 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF net/netlink/.policy.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22net/netlink/policy\22 -D KBUILD_BASENAME=\22policy\22 -D KBUILD_MODNAME=\22policy\22 -D __KBUILD_MODNAME=kmod_policy -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o net/netlink/policy.ll net/netlink/policy.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !17, retainedTypes: !102, globals: !125, splitDebugInlining: false, nameTableKind: None)
!17 = !{!18, !42, !47, !56, !75, !92}
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !12, line: 165, baseType: !19, size: 32, elements: !20)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !{!21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!21 = !DIEnumerator(name: "NLA_UNSPEC", value: 0)
!22 = !DIEnumerator(name: "NLA_U8", value: 1)
!23 = !DIEnumerator(name: "NLA_U16", value: 2)
!24 = !DIEnumerator(name: "NLA_U32", value: 3)
!25 = !DIEnumerator(name: "NLA_U64", value: 4)
!26 = !DIEnumerator(name: "NLA_STRING", value: 5)
!27 = !DIEnumerator(name: "NLA_FLAG", value: 6)
!28 = !DIEnumerator(name: "NLA_MSECS", value: 7)
!29 = !DIEnumerator(name: "NLA_NESTED", value: 8)
!30 = !DIEnumerator(name: "NLA_NESTED_ARRAY", value: 9)
!31 = !DIEnumerator(name: "NLA_NUL_STRING", value: 10)
!32 = !DIEnumerator(name: "NLA_BINARY", value: 11)
!33 = !DIEnumerator(name: "NLA_S8", value: 12)
!34 = !DIEnumerator(name: "NLA_S16", value: 13)
!35 = !DIEnumerator(name: "NLA_S32", value: 14)
!36 = !DIEnumerator(name: "NLA_S64", value: 15)
!37 = !DIEnumerator(name: "NLA_BITFIELD32", value: 16)
!38 = !DIEnumerator(name: "NLA_REJECT", value: 17)
!39 = !DIEnumerator(name: "NLA_BE16", value: 18)
!40 = !DIEnumerator(name: "NLA_BE32", value: 19)
!41 = !DIEnumerator(name: "__NLA_TYPE_MAX", value: 20)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !43, line: 10, baseType: !19, size: 32, elements: !44)
!43 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!44 = !{!45, !46}
!45 = !DIEnumerator(name: "false", value: 0)
!46 = !DIEnumerator(name: "true", value: 1)
!47 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !9, line: 364, baseType: !19, size: 32, elements: !48)
!48 = !{!49, !50, !51, !52, !53, !54, !55}
!49 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!50 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!51 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!52 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!53 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!54 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!55 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netlink_attribute_type", file: !57, line: 302, baseType: !19, size: 32, elements: !58)
!57 = !DIFile(filename: "./include/uapi/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "514e37a7f30dd6a10229f65d7bb14aa5")
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!59 = !DIEnumerator(name: "NL_ATTR_TYPE_INVALID", value: 0)
!60 = !DIEnumerator(name: "NL_ATTR_TYPE_FLAG", value: 1)
!61 = !DIEnumerator(name: "NL_ATTR_TYPE_U8", value: 2)
!62 = !DIEnumerator(name: "NL_ATTR_TYPE_U16", value: 3)
!63 = !DIEnumerator(name: "NL_ATTR_TYPE_U32", value: 4)
!64 = !DIEnumerator(name: "NL_ATTR_TYPE_U64", value: 5)
!65 = !DIEnumerator(name: "NL_ATTR_TYPE_S8", value: 6)
!66 = !DIEnumerator(name: "NL_ATTR_TYPE_S16", value: 7)
!67 = !DIEnumerator(name: "NL_ATTR_TYPE_S32", value: 8)
!68 = !DIEnumerator(name: "NL_ATTR_TYPE_S64", value: 9)
!69 = !DIEnumerator(name: "NL_ATTR_TYPE_BINARY", value: 10)
!70 = !DIEnumerator(name: "NL_ATTR_TYPE_STRING", value: 11)
!71 = !DIEnumerator(name: "NL_ATTR_TYPE_NUL_STRING", value: 12)
!72 = !DIEnumerator(name: "NL_ATTR_TYPE_NESTED", value: 13)
!73 = !DIEnumerator(name: "NL_ATTR_TYPE_NESTED_ARRAY", value: 14)
!74 = !DIEnumerator(name: "NL_ATTR_TYPE_BITFIELD32", value: 15)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netlink_policy_type_attr", file: !57, line: 358, baseType: !19, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!77 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_UNSPEC", value: 0)
!78 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_TYPE", value: 1)
!79 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MIN_VALUE_S", value: 2)
!80 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MAX_VALUE_S", value: 3)
!81 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MIN_VALUE_U", value: 4)
!82 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MAX_VALUE_U", value: 5)
!83 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MIN_LENGTH", value: 6)
!84 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MAX_LENGTH", value: 7)
!85 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_POLICY_IDX", value: 8)
!86 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_POLICY_MAXTYPE", value: 9)
!87 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_BITFIELD32_MASK", value: 10)
!88 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_PAD", value: 11)
!89 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MASK", value: 12)
!90 = !DIEnumerator(name: "__NL_POLICY_TYPE_ATTR_MAX", value: 13)
!91 = !DIEnumerator(name: "NL_POLICY_TYPE_ATTR_MAX", value: 12)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "nla_policy_validation", file: !12, line: 199, baseType: !19, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101}
!94 = !DIEnumerator(name: "NLA_VALIDATE_NONE", value: 0)
!95 = !DIEnumerator(name: "NLA_VALIDATE_RANGE", value: 1)
!96 = !DIEnumerator(name: "NLA_VALIDATE_RANGE_WARN_TOO_LONG", value: 2)
!97 = !DIEnumerator(name: "NLA_VALIDATE_MIN", value: 3)
!98 = !DIEnumerator(name: "NLA_VALIDATE_MAX", value: 4)
!99 = !DIEnumerator(name: "NLA_VALIDATE_MASK", value: 5)
!100 = !DIEnumerator(name: "NLA_VALIDATE_RANGE_PTR", value: 6)
!101 = !DIEnumerator(name: "NLA_VALIDATE_FUNCTION", value: 7)
!102 = !{!103, !104, !106, !107, !108, !109, !113, !118, !123}
!103 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !105, line: 154, baseType: !19)
!105 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 61, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !111, line: 72, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !111, line: 16, baseType: !106)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !114, line: 19, baseType: !115)
!114 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !116, line: 24, baseType: !117)
!116 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!117 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nlattr", file: !57, line: 229, size: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nla_len", scope: !119, file: !57, line: 230, baseType: !115, size: 16)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nla_type", scope: !119, file: !57, line: 231, baseType: !115, size: 16, offset: 16)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !{!0, !7, !10}
!126 = !{i32 7, !"Dwarf Version", i32 5}
!127 = !{i32 2, !"Debug Info Version", i32 3}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 8, !"cf-protection-branch", i32 1}
!130 = !{i32 4, !"function_return_thunk_extern", i32 1}
!131 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!132 = !{i32 1, !"Code Model", i32 2}
!133 = !{i32 1, !"override-stack-alignment", i32 8}
!134 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!135 = distinct !DISubprogram(name: "netlink_policy_dump_get_policy_idx", scope: !2, file: !2, line: 81, type: !136, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !224)
!136 = !DISubroutineType(types: !137)
!137 = !{!103, !138, !149, !19}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_policy_dump_state", file: !2, line: 17, size: 128, elements: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "policy_idx", scope: !139, file: !2, line: 18, baseType: !19, size: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "attr_idx", scope: !139, file: !2, line: 19, baseType: !19, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !139, file: !2, line: 20, baseType: !19, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "policies", scope: !139, file: !2, line: 24, baseType: !145, offset: 128)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !146, elements: !222)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !139, file: !2, line: 21, size: 128, elements: !147)
!147 = !{!148, !221}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !146, file: !2, line: 22, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nla_policy", file: !12, line: 321, size: 128, elements: !152)
!152 = !{!153, !156, !157, !158}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !151, file: !12, line: 322, baseType: !154, size: 8)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !114, line: 17, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !116, line: 21, baseType: !124)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "validation_type", scope: !151, file: !12, line: 323, baseType: !154, size: 8, offset: 8)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !151, file: !12, line: 324, baseType: !113, size: 16, offset: 16)
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !151, file: !12, line: 325, baseType: !159, size: 64, offset: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !151, file: !12, line: 325, size: 64, elements: !160)
!160 = !{!161, !162, !166, !167, !170, !171, !180, !189, !197}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "strict_start_type", scope: !159, file: !12, line: 347, baseType: !113, size: 16)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "bitfield32_valid", scope: !159, file: !12, line: 350, baseType: !163, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !114, line: 21, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !116, line: 27, baseType: !19)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !159, file: !12, line: 351, baseType: !163, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "reject_message", scope: !159, file: !12, line: 352, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nested_policy", scope: !159, file: !12, line: 353, baseType: !149, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !159, file: !12, line: 354, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation", file: !12, line: 191, size: 128, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !173, file: !12, line: 192, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !114, line: 23, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !116, line: 31, baseType: !178)
!178 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !173, file: !12, line: 192, baseType: !176, size: 64, offset: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "range_signed", scope: !159, file: !12, line: 355, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_range_validation_signed", file: !12, line: 195, size: 128, elements: !183)
!183 = !{!184, !188}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !182, file: !12, line: 196, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !114, line: 22, baseType: !186)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !116, line: 30, baseType: !187)
!187 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !182, file: !12, line: 196, baseType: !185, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, scope: !159, file: !12, line: 356, baseType: !190, size: 32)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !159, file: !12, line: 356, size: 32, elements: !191)
!191 = !{!192, !196}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !190, file: !12, line: 357, baseType: !193, size: 16)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !114, line: 18, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !116, line: 23, baseType: !195)
!195 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !190, file: !12, line: 357, baseType: !193, size: 16, offset: 16)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "validate", scope: !159, file: !12, line: 359, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!103, !201, !203}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netlink_ext_ack", file: !205, line: 82, size: 1088, elements: !206)
!205 = !DIFile(filename: "./include/linux/netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cf765747b52eb2c956fc0567475222af")
!206 = !{!207, !208, !209, !210, !211, !212, !216, !217}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_msg", scope: !204, file: !205, line: 83, baseType: !168, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "bad_attr", scope: !204, file: !205, line: 84, baseType: !201, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !204, file: !205, line: 85, baseType: !149, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "miss_nest", scope: !204, file: !205, line: 86, baseType: !201, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "miss_type", scope: !204, file: !205, line: 87, baseType: !113, size: 16, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cookie", scope: !204, file: !205, line: 88, baseType: !213, size: 160, offset: 272)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 160, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 20)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cookie_len", scope: !204, file: !205, line: 89, baseType: !154, size: 8, offset: 432)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_msg_buf", scope: !204, file: !205, line: 90, baseType: !218, size: 640, offset: 440)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "maxtype", scope: !146, file: !2, line: 23, baseType: !19, size: 32, offset: 64)
!222 = !{!223}
!223 = !DISubrange(count: -1)
!224 = !{!225, !226, !227, !228, !229, !232, !235, !237}
!225 = !DILocalVariable(name: "state", arg: 1, scope: !135, file: !2, line: 81, type: !138)
!226 = !DILocalVariable(name: "policy", arg: 2, scope: !135, file: !2, line: 82, type: !149)
!227 = !DILocalVariable(name: "maxtype", arg: 3, scope: !135, file: !2, line: 83, type: !19)
!228 = !DILocalVariable(name: "i", scope: !135, file: !2, line: 85, type: !19)
!229 = !DILocalVariable(name: "__ret_warn_on", scope: !230, file: !2, line: 87, type: !103)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 87, column: 6)
!231 = distinct !DILexicalBlock(scope: !135, file: !2, line: 87, column: 6)
!232 = !DILocalVariable(name: "__flags", scope: !233, file: !2, line: 87, type: !103)
!233 = distinct !DILexicalBlock(scope: !234, file: !2, line: 87, column: 6)
!234 = distinct !DILexicalBlock(scope: !230, file: !2, line: 87, column: 6)
!235 = !DILocalVariable(name: "__ret_warn_on", scope: !236, file: !2, line: 96, type: !103)
!236 = distinct !DILexicalBlock(scope: !135, file: !2, line: 96, column: 2)
!237 = !DILocalVariable(name: "__flags", scope: !238, file: !2, line: 96, type: !103)
!238 = distinct !DILexicalBlock(scope: !239, file: !2, line: 96, column: 2)
!239 = distinct !DILexicalBlock(scope: !236, file: !2, line: 96, column: 2)
!240 = !DILocation(line: 81, column: 74, scope: !135)
!241 = !DILocation(line: 82, column: 37, scope: !135)
!242 = !DILocation(line: 83, column: 25, scope: !135)
!243 = !DILocation(line: 85, column: 2, scope: !135)
!244 = !DILocation(line: 85, column: 15, scope: !135)
!245 = !DILocation(line: 87, column: 6, scope: !230)
!246 = !DILocation(line: 87, column: 6, scope: !234)
!247 = !DILocation(line: 87, column: 6, scope: !233)
!248 = !DILocation(line: 87, column: 6, scope: !249)
!249 = distinct !DILexicalBlock(scope: !233, file: !2, line: 87, column: 6)
!250 = !DILocation(line: 87, column: 6, scope: !251)
!251 = distinct !DILexicalBlock(scope: !233, file: !2, line: 87, column: 6)
!252 = !{i64 2155513445, i64 2155513474, i64 2155513520, i64 2155513578, i64 2155513632, i64 2155513686, i64 2155513741, i64 2155513772, i64 2155514080, i64 2155514086, i64 2155514133, i64 2155514156, i64 2155514182}
!253 = !DILocation(line: 87, column: 6, scope: !254)
!254 = distinct !DILexicalBlock(scope: !233, file: !2, line: 87, column: 6)
!255 = !DILocation(line: 87, column: 6, scope: !231)
!256 = !DILocation(line: 87, column: 6, scope: !135)
!257 = !DILocation(line: 88, column: 17, scope: !231)
!258 = !DILocation(line: 90, column: 9, scope: !259)
!259 = distinct !DILexicalBlock(scope: !135, file: !2, line: 90, column: 2)
!260 = !DILocation(line: 90, column: 7, scope: !259)
!261 = !DILocation(line: 90, column: 14, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !2, line: 90, column: 2)
!263 = !DILocation(line: 90, column: 18, scope: !262)
!264 = !DILocation(line: 90, column: 25, scope: !262)
!265 = !DILocation(line: 90, column: 16, scope: !262)
!266 = !DILocation(line: 90, column: 2, scope: !259)
!267 = !DILocation(line: 91, column: 7, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !2, line: 91, column: 7)
!269 = distinct !DILexicalBlock(scope: !262, file: !2, line: 90, column: 39)
!270 = !DILocation(line: 91, column: 14, scope: !268)
!271 = !DILocation(line: 91, column: 23, scope: !268)
!272 = !DILocation(line: 91, column: 26, scope: !268)
!273 = !DILocation(line: 91, column: 36, scope: !268)
!274 = !DILocation(line: 91, column: 33, scope: !268)
!275 = !DILocation(line: 91, column: 43, scope: !268)
!276 = !DILocation(line: 92, column: 7, scope: !268)
!277 = !DILocation(line: 92, column: 14, scope: !268)
!278 = !DILocation(line: 92, column: 23, scope: !268)
!279 = !DILocation(line: 92, column: 26, scope: !268)
!280 = !DILocation(line: 92, column: 37, scope: !268)
!281 = !DILocation(line: 92, column: 34, scope: !268)
!282 = !DILocation(line: 91, column: 7, scope: !269)
!283 = !DILocation(line: 93, column: 11, scope: !268)
!284 = !DILocation(line: 93, column: 4, scope: !268)
!285 = !DILocation(line: 94, column: 2, scope: !269)
!286 = !DILocation(line: 90, column: 35, scope: !262)
!287 = !DILocation(line: 90, column: 2, scope: !262)
!288 = distinct !{!288, !266, !289, !290, !291}
!289 = !DILocation(line: 94, column: 2, scope: !259)
!290 = !{!"llvm.loop.mustprogress"}
!291 = !{!"llvm.loop.unroll.disable"}
!292 = !DILocation(line: 96, column: 2, scope: !236)
!293 = !DILocation(line: 96, column: 2, scope: !239)
!294 = !DILocation(line: 96, column: 2, scope: !238)
!295 = !DILocation(line: 96, column: 2, scope: !296)
!296 = distinct !DILexicalBlock(scope: !238, file: !2, line: 96, column: 2)
!297 = !DILocation(line: 96, column: 2, scope: !298)
!298 = distinct !DILexicalBlock(scope: !238, file: !2, line: 96, column: 2)
!299 = !{i64 2155514929, i64 2155514958, i64 2155515004, i64 2155515062, i64 2155515116, i64 2155515170, i64 2155515225, i64 2155515256, i64 2155515564, i64 2155515570, i64 2155515617, i64 2155515640, i64 2155515666}
!300 = !DILocation(line: 96, column: 2, scope: !301)
!301 = distinct !DILexicalBlock(scope: !238, file: !2, line: 96, column: 2)
!302 = !DILocation(line: 96, column: 2, scope: !135)
!303 = !DILocation(line: 97, column: 2, scope: !135)
!304 = !DILocation(line: 98, column: 1, scope: !135)
!305 = distinct !DISubprogram(name: "netlink_policy_dump_add_policy", scope: !2, file: !2, line: 126, type: !306, scopeLine: 129, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !309)
!306 = !DISubroutineType(types: !307)
!307 = !{!103, !308, !149, !19}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!309 = !{!310, !311, !312, !313, !314, !315, !316, !320, !321}
!310 = !DILocalVariable(name: "pstate", arg: 1, scope: !305, file: !2, line: 126, type: !308)
!311 = !DILocalVariable(name: "policy", arg: 2, scope: !305, file: !2, line: 127, type: !149)
!312 = !DILocalVariable(name: "maxtype", arg: 3, scope: !305, file: !2, line: 128, type: !19)
!313 = !DILocalVariable(name: "state", scope: !305, file: !2, line: 130, type: !138)
!314 = !DILocalVariable(name: "policy_idx", scope: !305, file: !2, line: 131, type: !19)
!315 = !DILocalVariable(name: "err", scope: !305, file: !2, line: 132, type: !103)
!316 = !DILocalVariable(name: "policy", scope: !317, file: !2, line: 152, type: !149)
!317 = distinct !DILexicalBlock(scope: !318, file: !2, line: 151, column: 21)
!318 = distinct !DILexicalBlock(scope: !319, file: !2, line: 149, column: 2)
!319 = distinct !DILexicalBlock(scope: !305, file: !2, line: 149, column: 2)
!320 = !DILocalVariable(name: "type", scope: !317, file: !2, line: 153, type: !19)
!321 = !DILabel(scope: !305, name: "err_try_undo", file: !2, line: 178)
!322 = !DILocation(line: 126, column: 71, scope: !305)
!323 = !DILocation(line: 127, column: 33, scope: !305)
!324 = !DILocation(line: 128, column: 21, scope: !305)
!325 = !DILocation(line: 130, column: 2, scope: !305)
!326 = !DILocation(line: 130, column: 36, scope: !305)
!327 = !DILocation(line: 130, column: 45, scope: !305)
!328 = !DILocation(line: 130, column: 44, scope: !305)
!329 = !DILocation(line: 131, column: 2, scope: !305)
!330 = !DILocation(line: 131, column: 15, scope: !305)
!331 = !DILocation(line: 132, column: 2, scope: !305)
!332 = !DILocation(line: 132, column: 6, scope: !305)
!333 = !DILocation(line: 134, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !305, file: !2, line: 134, column: 6)
!335 = !DILocation(line: 134, column: 6, scope: !305)
!336 = !DILocation(line: 135, column: 11, scope: !337)
!337 = distinct !DILexicalBlock(scope: !334, file: !2, line: 134, column: 14)
!338 = !DILocation(line: 135, column: 9, scope: !337)
!339 = !DILocation(line: 136, column: 14, scope: !340)
!340 = distinct !DILexicalBlock(scope: !337, file: !2, line: 136, column: 7)
!341 = !DILocation(line: 136, column: 7, scope: !340)
!342 = !DILocation(line: 136, column: 7, scope: !337)
!343 = !DILocation(line: 137, column: 19, scope: !340)
!344 = !DILocation(line: 137, column: 11, scope: !340)
!345 = !DILocation(line: 137, column: 4, scope: !340)
!346 = !DILocation(line: 138, column: 2, scope: !337)
!347 = !DILocation(line: 145, column: 27, scope: !305)
!348 = !DILocation(line: 145, column: 35, scope: !305)
!349 = !DILocation(line: 145, column: 8, scope: !305)
!350 = !DILocation(line: 145, column: 6, scope: !305)
!351 = !DILocation(line: 146, column: 6, scope: !352)
!352 = distinct !DILexicalBlock(scope: !305, file: !2, line: 146, column: 6)
!353 = !DILocation(line: 146, column: 6, scope: !305)
!354 = !DILocation(line: 147, column: 3, scope: !352)
!355 = !DILocation(line: 149, column: 18, scope: !319)
!356 = !DILocation(line: 149, column: 7, scope: !319)
!357 = !DILocation(line: 150, column: 7, scope: !318)
!358 = !DILocation(line: 150, column: 20, scope: !318)
!359 = !DILocation(line: 150, column: 27, scope: !318)
!360 = !DILocation(line: 150, column: 18, scope: !318)
!361 = !DILocation(line: 150, column: 35, scope: !318)
!362 = !DILocation(line: 150, column: 38, scope: !318)
!363 = !DILocation(line: 150, column: 45, scope: !318)
!364 = !DILocation(line: 150, column: 54, scope: !318)
!365 = !DILocation(line: 150, column: 66, scope: !318)
!366 = !DILocation(line: 0, scope: !318)
!367 = !DILocation(line: 149, column: 2, scope: !319)
!368 = !DILocation(line: 152, column: 3, scope: !317)
!369 = !DILocation(line: 152, column: 28, scope: !317)
!370 = !DILocation(line: 153, column: 3, scope: !317)
!371 = !DILocation(line: 153, column: 16, scope: !317)
!372 = !DILocation(line: 155, column: 12, scope: !317)
!373 = !DILocation(line: 155, column: 19, scope: !317)
!374 = !DILocation(line: 155, column: 28, scope: !317)
!375 = !DILocation(line: 155, column: 40, scope: !317)
!376 = !DILocation(line: 155, column: 10, scope: !317)
!377 = !DILocation(line: 157, column: 13, scope: !378)
!378 = distinct !DILexicalBlock(scope: !317, file: !2, line: 157, column: 3)
!379 = !DILocation(line: 157, column: 8, scope: !378)
!380 = !DILocation(line: 158, column: 8, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !2, line: 157, column: 3)
!382 = !DILocation(line: 158, column: 16, scope: !381)
!383 = !DILocation(line: 158, column: 23, scope: !381)
!384 = !DILocation(line: 158, column: 32, scope: !381)
!385 = !DILocation(line: 158, column: 44, scope: !381)
!386 = !DILocation(line: 158, column: 13, scope: !381)
!387 = !DILocation(line: 157, column: 3, scope: !378)
!388 = !DILocation(line: 160, column: 12, scope: !389)
!389 = distinct !DILexicalBlock(scope: !381, file: !2, line: 159, column: 16)
!390 = !DILocation(line: 160, column: 19, scope: !389)
!391 = !DILocation(line: 160, column: 25, scope: !389)
!392 = !DILocation(line: 160, column: 4, scope: !389)
!393 = !DILocation(line: 164, column: 8, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !2, line: 160, column: 31)
!395 = !DILocation(line: 164, column: 15, scope: !394)
!396 = !DILocation(line: 164, column: 21, scope: !394)
!397 = !DILocation(line: 165, column: 8, scope: !394)
!398 = !DILocation(line: 165, column: 15, scope: !394)
!399 = !DILocation(line: 165, column: 21, scope: !394)
!400 = !DILocation(line: 163, column: 11, scope: !394)
!401 = !DILocation(line: 163, column: 9, scope: !394)
!402 = !DILocation(line: 166, column: 9, scope: !403)
!403 = distinct !DILexicalBlock(scope: !394, file: !2, line: 166, column: 9)
!404 = !DILocation(line: 166, column: 9, scope: !394)
!405 = !DILocation(line: 167, column: 6, scope: !403)
!406 = !DILocation(line: 168, column: 5, scope: !394)
!407 = !DILocation(line: 170, column: 5, scope: !394)
!408 = !DILocation(line: 172, column: 3, scope: !389)
!409 = !DILocation(line: 159, column: 12, scope: !381)
!410 = !DILocation(line: 157, column: 3, scope: !381)
!411 = distinct !{!411, !387, !412, !290, !291}
!412 = !DILocation(line: 172, column: 3, scope: !378)
!413 = !DILocation(line: 173, column: 2, scope: !318)
!414 = !DILocation(line: 173, column: 2, scope: !317)
!415 = !DILocation(line: 151, column: 17, scope: !318)
!416 = !DILocation(line: 149, column: 2, scope: !318)
!417 = distinct !{!417, !367, !418, !290, !291}
!418 = !DILocation(line: 173, column: 2, scope: !319)
!419 = !DILocation(line: 175, column: 12, scope: !305)
!420 = !DILocation(line: 175, column: 3, scope: !305)
!421 = !DILocation(line: 175, column: 10, scope: !305)
!422 = !DILocation(line: 176, column: 2, scope: !305)
!423 = !DILocation(line: 178, column: 1, scope: !305)
!424 = !DILocation(line: 182, column: 8, scope: !425)
!425 = distinct !DILexicalBlock(scope: !305, file: !2, line: 182, column: 6)
!426 = !DILocation(line: 182, column: 7, scope: !425)
!427 = !DILocation(line: 182, column: 6, scope: !305)
!428 = !DILocation(line: 183, column: 28, scope: !425)
!429 = !DILocation(line: 183, column: 3, scope: !425)
!430 = !DILocation(line: 185, column: 13, scope: !425)
!431 = !DILocation(line: 185, column: 4, scope: !425)
!432 = !DILocation(line: 185, column: 11, scope: !425)
!433 = !DILocation(line: 186, column: 9, scope: !305)
!434 = !DILocation(line: 186, column: 2, scope: !305)
!435 = !DILocation(line: 187, column: 1, scope: !305)
!436 = distinct !DISubprogram(name: "alloc_state", scope: !2, file: !2, line: 100, type: !437, scopeLine: 101, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !439)
!437 = !DISubroutineType(types: !438)
!438 = !{!138}
!439 = !{!440}
!440 = !DILocalVariable(name: "state", scope: !436, file: !2, line: 102, type: !138)
!441 = !DILocation(line: 102, column: 2, scope: !436)
!442 = !DILocation(line: 102, column: 36, scope: !436)
!443 = !DILocation(line: 104, column: 10, scope: !436)
!444 = !DILocation(line: 104, column: 8, scope: !436)
!445 = !DILocation(line: 106, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !436, file: !2, line: 106, column: 6)
!447 = !DILocation(line: 106, column: 6, scope: !436)
!448 = !DILocation(line: 107, column: 10, scope: !446)
!449 = !DILocation(line: 107, column: 3, scope: !446)
!450 = !DILocation(line: 108, column: 2, scope: !436)
!451 = !DILocation(line: 108, column: 9, scope: !436)
!452 = !DILocation(line: 108, column: 17, scope: !436)
!453 = !DILocation(line: 110, column: 9, scope: !436)
!454 = !DILocation(line: 110, column: 2, scope: !436)
!455 = !DILocation(line: 111, column: 1, scope: !436)
!456 = distinct !DISubprogram(name: "IS_ERR", scope: !457, file: !457, line: 59, type: !458, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !464)
!457 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !462}
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !105, line: 35, baseType: !461)
!461 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!464 = !{!465}
!465 = !DILocalVariable(name: "ptr", arg: 1, scope: !456, file: !457, line: 59, type: !462)
!466 = !DILocation(line: 59, column: 60, scope: !456)
!467 = !DILocation(line: 61, column: 9, scope: !456)
!468 = !DILocation(line: 61, column: 2, scope: !456)
!469 = distinct !DISubprogram(name: "PTR_ERR", scope: !457, file: !457, line: 49, type: !470, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{!108, !462}
!472 = !{!473}
!473 = !DILocalVariable(name: "ptr", arg: 1, scope: !469, file: !457, line: 49, type: !462)
!474 = !DILocation(line: 49, column: 61, scope: !469)
!475 = !DILocation(line: 51, column: 16, scope: !469)
!476 = !DILocation(line: 51, column: 9, scope: !469)
!477 = !DILocation(line: 51, column: 2, scope: !469)
!478 = distinct !DISubprogram(name: "add_policy", scope: !2, file: !2, line: 27, type: !306, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !479)
!479 = !{!480, !481, !482, !483, !484, !485}
!480 = !DILocalVariable(name: "statep", arg: 1, scope: !478, file: !2, line: 27, type: !308)
!481 = !DILocalVariable(name: "policy", arg: 2, scope: !478, file: !2, line: 28, type: !149)
!482 = !DILocalVariable(name: "maxtype", arg: 3, scope: !478, file: !2, line: 29, type: !19)
!483 = !DILocalVariable(name: "state", scope: !478, file: !2, line: 31, type: !138)
!484 = !DILocalVariable(name: "n_alloc", scope: !478, file: !2, line: 32, type: !19)
!485 = !DILocalVariable(name: "i", scope: !478, file: !2, line: 32, type: !19)
!486 = !DILocation(line: 27, column: 58, scope: !478)
!487 = !DILocation(line: 28, column: 34, scope: !478)
!488 = !DILocation(line: 29, column: 22, scope: !478)
!489 = !DILocation(line: 31, column: 2, scope: !478)
!490 = !DILocation(line: 31, column: 36, scope: !478)
!491 = !DILocation(line: 31, column: 45, scope: !478)
!492 = !DILocation(line: 31, column: 44, scope: !478)
!493 = !DILocation(line: 32, column: 2, scope: !478)
!494 = !DILocation(line: 32, column: 15, scope: !478)
!495 = !DILocation(line: 32, column: 24, scope: !478)
!496 = !DILocation(line: 34, column: 7, scope: !497)
!497 = distinct !DILexicalBlock(scope: !478, file: !2, line: 34, column: 6)
!498 = !DILocation(line: 34, column: 14, scope: !497)
!499 = !DILocation(line: 34, column: 18, scope: !497)
!500 = !DILocation(line: 34, column: 6, scope: !478)
!501 = !DILocation(line: 35, column: 3, scope: !497)
!502 = !DILocation(line: 37, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !478, file: !2, line: 37, column: 2)
!504 = !DILocation(line: 37, column: 7, scope: !503)
!505 = !DILocation(line: 37, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !2, line: 37, column: 2)
!507 = !DILocation(line: 37, column: 18, scope: !506)
!508 = !DILocation(line: 37, column: 25, scope: !506)
!509 = !DILocation(line: 37, column: 16, scope: !506)
!510 = !DILocation(line: 37, column: 2, scope: !503)
!511 = !DILocation(line: 38, column: 7, scope: !512)
!512 = distinct !DILexicalBlock(scope: !513, file: !2, line: 38, column: 7)
!513 = distinct !DILexicalBlock(scope: !506, file: !2, line: 37, column: 39)
!514 = !DILocation(line: 38, column: 14, scope: !512)
!515 = !DILocation(line: 38, column: 23, scope: !512)
!516 = !DILocation(line: 38, column: 26, scope: !512)
!517 = !DILocation(line: 38, column: 36, scope: !512)
!518 = !DILocation(line: 38, column: 33, scope: !512)
!519 = !DILocation(line: 38, column: 43, scope: !512)
!520 = !DILocation(line: 39, column: 7, scope: !512)
!521 = !DILocation(line: 39, column: 14, scope: !512)
!522 = !DILocation(line: 39, column: 23, scope: !512)
!523 = !DILocation(line: 39, column: 26, scope: !512)
!524 = !DILocation(line: 39, column: 37, scope: !512)
!525 = !DILocation(line: 39, column: 34, scope: !512)
!526 = !DILocation(line: 38, column: 7, scope: !513)
!527 = !DILocation(line: 40, column: 4, scope: !512)
!528 = !DILocation(line: 42, column: 8, scope: !529)
!529 = distinct !DILexicalBlock(scope: !513, file: !2, line: 42, column: 7)
!530 = !DILocation(line: 42, column: 15, scope: !529)
!531 = !DILocation(line: 42, column: 24, scope: !529)
!532 = !DILocation(line: 42, column: 27, scope: !529)
!533 = !DILocation(line: 42, column: 7, scope: !513)
!534 = !DILocation(line: 43, column: 32, scope: !535)
!535 = distinct !DILexicalBlock(scope: !529, file: !2, line: 42, column: 35)
!536 = !DILocation(line: 43, column: 4, scope: !535)
!537 = !DILocation(line: 43, column: 11, scope: !535)
!538 = !DILocation(line: 43, column: 20, scope: !535)
!539 = !DILocation(line: 43, column: 23, scope: !535)
!540 = !DILocation(line: 43, column: 30, scope: !535)
!541 = !DILocation(line: 44, column: 33, scope: !535)
!542 = !DILocation(line: 44, column: 4, scope: !535)
!543 = !DILocation(line: 44, column: 11, scope: !535)
!544 = !DILocation(line: 44, column: 20, scope: !535)
!545 = !DILocation(line: 44, column: 23, scope: !535)
!546 = !DILocation(line: 44, column: 31, scope: !535)
!547 = !DILocation(line: 45, column: 4, scope: !535)
!548 = !DILocation(line: 47, column: 2, scope: !513)
!549 = !DILocation(line: 37, column: 35, scope: !506)
!550 = !DILocation(line: 37, column: 2, scope: !506)
!551 = distinct !{!551, !510, !552, !290, !291}
!552 = !DILocation(line: 47, column: 2, scope: !503)
!553 = !DILocation(line: 49, column: 12, scope: !478)
!554 = !DILocation(line: 49, column: 19, scope: !478)
!555 = !DILocation(line: 49, column: 27, scope: !478)
!556 = !DILocation(line: 49, column: 10, scope: !478)
!557 = !DILocation(line: 50, column: 19, scope: !478)
!558 = !DILocation(line: 50, column: 26, scope: !478)
!559 = !DILocation(line: 50, column: 10, scope: !478)
!560 = !DILocation(line: 50, column: 8, scope: !478)
!561 = !DILocation(line: 52, column: 7, scope: !562)
!562 = distinct !DILexicalBlock(scope: !478, file: !2, line: 52, column: 6)
!563 = !DILocation(line: 52, column: 6, scope: !478)
!564 = !DILocation(line: 53, column: 3, scope: !562)
!565 = !DILocation(line: 55, column: 10, scope: !478)
!566 = !DILocation(line: 55, column: 17, scope: !478)
!567 = !DILocation(line: 55, column: 26, scope: !478)
!568 = !DILocation(line: 55, column: 33, scope: !478)
!569 = !DILocation(line: 56, column: 9, scope: !478)
!570 = !DILocation(line: 55, column: 2, scope: !478)
!571 = !DILocation(line: 58, column: 43, scope: !478)
!572 = !DILocation(line: 58, column: 2, scope: !478)
!573 = !DILocation(line: 58, column: 9, scope: !478)
!574 = !DILocation(line: 58, column: 18, scope: !478)
!575 = !DILocation(line: 58, column: 25, scope: !478)
!576 = !DILocation(line: 58, column: 34, scope: !478)
!577 = !DILocation(line: 58, column: 41, scope: !478)
!578 = !DILocation(line: 59, column: 44, scope: !478)
!579 = !DILocation(line: 59, column: 2, scope: !478)
!580 = !DILocation(line: 59, column: 9, scope: !478)
!581 = !DILocation(line: 59, column: 18, scope: !478)
!582 = !DILocation(line: 59, column: 25, scope: !478)
!583 = !DILocation(line: 59, column: 34, scope: !478)
!584 = !DILocation(line: 59, column: 42, scope: !478)
!585 = !DILocation(line: 60, column: 19, scope: !478)
!586 = !DILocation(line: 60, column: 2, scope: !478)
!587 = !DILocation(line: 60, column: 9, scope: !478)
!588 = !DILocation(line: 60, column: 17, scope: !478)
!589 = !DILocation(line: 61, column: 12, scope: !478)
!590 = !DILocation(line: 61, column: 3, scope: !478)
!591 = !DILocation(line: 61, column: 10, scope: !478)
!592 = !DILocation(line: 63, column: 2, scope: !478)
!593 = !DILocation(line: 64, column: 1, scope: !478)
!594 = distinct !DISubprogram(name: "netlink_policy_dump_free", scope: !2, file: !2, line: 476, type: !595, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !597)
!595 = !DISubroutineType(types: !596)
!596 = !{null, !138}
!597 = !{!598}
!598 = !DILocalVariable(name: "state", arg: 1, scope: !594, file: !2, line: 476, type: !138)
!599 = !DILocation(line: 476, column: 65, scope: !594)
!600 = !DILocation(line: 478, column: 8, scope: !594)
!601 = !DILocation(line: 478, column: 2, scope: !594)
!602 = !DILocation(line: 479, column: 1, scope: !594)
!603 = distinct !DISubprogram(name: "netlink_policy_dump_loop", scope: !2, file: !2, line: 204, type: !604, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!460, !138}
!606 = !{!607}
!607 = !DILocalVariable(name: "state", arg: 1, scope: !603, file: !2, line: 204, type: !138)
!608 = !DILocation(line: 204, column: 65, scope: !603)
!609 = !DILocation(line: 206, column: 39, scope: !603)
!610 = !DILocation(line: 206, column: 10, scope: !603)
!611 = !DILocation(line: 206, column: 9, scope: !603)
!612 = !DILocation(line: 206, column: 2, scope: !603)
!613 = distinct !DISubprogram(name: "netlink_policy_dump_finished", scope: !2, file: !2, line: 190, type: !604, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !614)
!614 = !{!615}
!615 = !DILocalVariable(name: "state", arg: 1, scope: !613, file: !2, line: 190, type: !138)
!616 = !DILocation(line: 190, column: 64, scope: !613)
!617 = !DILocation(line: 192, column: 9, scope: !613)
!618 = !DILocation(line: 192, column: 16, scope: !613)
!619 = !DILocation(line: 192, column: 30, scope: !613)
!620 = !DILocation(line: 192, column: 37, scope: !613)
!621 = !DILocation(line: 192, column: 27, scope: !613)
!622 = !DILocation(line: 192, column: 45, scope: !613)
!623 = !DILocation(line: 193, column: 10, scope: !613)
!624 = !DILocation(line: 193, column: 17, scope: !613)
!625 = !DILocation(line: 193, column: 26, scope: !613)
!626 = !DILocation(line: 193, column: 33, scope: !613)
!627 = !DILocation(line: 193, column: 45, scope: !613)
!628 = !DILocation(line: 193, column: 9, scope: !613)
!629 = !DILocation(line: 192, column: 2, scope: !613)
!630 = distinct !DISubprogram(name: "netlink_policy_dump_attr_size_estimate", scope: !2, file: !2, line: 209, type: !631, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !633)
!631 = !DISubroutineType(types: !632)
!632 = !{!103, !149}
!633 = !{!634, !635}
!634 = !DILocalVariable(name: "pt", arg: 1, scope: !630, file: !2, line: 209, type: !149)
!635 = !DILocalVariable(name: "common", scope: !630, file: !2, line: 212, type: !103)
!636 = !DILocation(line: 209, column: 69, scope: !630)
!637 = !DILocation(line: 212, column: 2, scope: !630)
!638 = !DILocation(line: 212, column: 6, scope: !630)
!639 = !DILocation(line: 212, column: 19, scope: !630)
!640 = !DILocation(line: 212, column: 17, scope: !630)
!641 = !DILocation(line: 214, column: 10, scope: !630)
!642 = !DILocation(line: 214, column: 14, scope: !630)
!643 = !DILocation(line: 214, column: 2, scope: !630)
!644 = !DILocation(line: 218, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !630, file: !2, line: 214, column: 20)
!646 = !DILocation(line: 222, column: 10, scope: !645)
!647 = !DILocation(line: 222, column: 23, scope: !645)
!648 = !DILocation(line: 222, column: 21, scope: !645)
!649 = !DILocation(line: 222, column: 17, scope: !645)
!650 = !DILocation(line: 222, column: 3, scope: !645)
!651 = !DILocation(line: 233, column: 10, scope: !645)
!652 = !DILocation(line: 234, column: 15, scope: !645)
!653 = !DILocation(line: 234, column: 34, scope: !645)
!654 = !DILocation(line: 234, column: 32, scope: !645)
!655 = !DILocation(line: 234, column: 12, scope: !645)
!656 = !DILocation(line: 233, column: 17, scope: !645)
!657 = !DILocation(line: 233, column: 3, scope: !645)
!658 = !DILocation(line: 236, column: 10, scope: !645)
!659 = !DILocation(line: 236, column: 19, scope: !645)
!660 = !DILocation(line: 236, column: 17, scope: !645)
!661 = !DILocation(line: 236, column: 3, scope: !645)
!662 = !DILocation(line: 241, column: 10, scope: !645)
!663 = !DILocation(line: 241, column: 23, scope: !645)
!664 = !DILocation(line: 241, column: 21, scope: !645)
!665 = !DILocation(line: 241, column: 17, scope: !645)
!666 = !DILocation(line: 241, column: 3, scope: !645)
!667 = !DILocation(line: 243, column: 10, scope: !645)
!668 = !DILocation(line: 243, column: 3, scope: !645)
!669 = !DILocation(line: 247, column: 2, scope: !630)
!670 = !DILocation(line: 248, column: 1, scope: !630)
!671 = distinct !DISubprogram(name: "nla_attr_size", scope: !12, file: !12, line: 1147, type: !672, scopeLine: 1148, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !674)
!672 = !DISubroutineType(types: !673)
!673 = !{!103, !103}
!674 = !{!675}
!675 = !DILocalVariable(name: "payload", arg: 1, scope: !671, file: !12, line: 1147, type: !103)
!676 = !DILocation(line: 1147, column: 37, scope: !671)
!677 = !DILocation(line: 1149, column: 22, scope: !671)
!678 = !DILocation(line: 1149, column: 20, scope: !671)
!679 = !DILocation(line: 1149, column: 2, scope: !671)
!680 = distinct !DISubprogram(name: "netlink_policy_dump_write_attr", scope: !2, file: !2, line: 407, type: !681, scopeLine: 410, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !952)
!681 = !DISubroutineType(types: !682)
!682 = !{!103, !683, !149, !103}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sk_buff", file: !685, line: 840, size: 1792, elements: !686)
!685 = !DIFile(filename: "./include/linux/skbuff.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f57efcd2f012c07abad2ca113941da8")
!686 = !{!687, !723, !727, !734, !738, !750, !751, !752, !753, !754, !755, !756, !760, !761, !762, !763, !764, !765, !766, !767, !768, !924, !926, !927, !928, !929, !930, !940}
!687 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 841, baseType: !688, size: 192)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 841, size: 192, elements: !689)
!689 = !{!690, !703, !711, !717}
!690 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !685, line: 842, baseType: !691, size: 192)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !688, file: !685, line: 842, size: 192, elements: !692)
!692 = !{!693, !694, !695}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !691, file: !685, line: 844, baseType: !683, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !691, file: !685, line: 845, baseType: !683, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !685, line: 847, baseType: !696, size: 64, offset: 128)
!696 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !685, line: 847, size: 64, elements: !697)
!697 = !{!698, !702}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !696, file: !685, line: 848, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "net_device", file: !701, line: 8, flags: DIFlagFwdDecl)
!701 = !DIFile(filename: "./include/net/net_debug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10537443a3d7adb6b4f1d70426f581da")
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_scratch", scope: !696, file: !685, line: 853, baseType: !106, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "rbnode", scope: !688, file: !685, line: 856, baseType: !704, size: 192, align: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !705, line: 5, size: 192, align: 64, elements: !706)
!705 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!706 = !{!707, !708, !710}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !704, file: !705, line: 6, baseType: !106, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !704, file: !705, line: 7, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !704, file: !705, line: 8, baseType: !709, size: 64, offset: 128)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !688, file: !685, line: 857, baseType: !712, size: 128)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !105, line: 190, size: 128, elements: !713)
!713 = !{!714, !716}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !712, file: !105, line: 191, baseType: !715, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !712, file: !105, line: 191, baseType: !715, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "ll_node", scope: !688, file: !685, line: 858, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "llist_node", file: !719, line: 60, size: 64, elements: !720)
!719 = !DIFile(filename: "./include/linux/llist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "df24efabc3e6763dee25a8dee74e3a37")
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !719, line: 61, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sk", scope: !684, file: !685, line: 861, baseType: !724, size: 64, offset: 192)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !726, line: 17, flags: DIFlagFwdDecl)
!726 = !DIFile(filename: "./include/linux/socket.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f01d0394047c40639978f4f3c4ad0053")
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 863, baseType: !728, size: 64, offset: 256)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 863, size: 64, elements: !729)
!729 = !{!730, !733}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "tstamp", scope: !728, file: !685, line: 864, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !732, line: 29, baseType: !185)
!732 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!733 = !DIDerivedType(tag: DW_TAG_member, name: "skb_mstamp_ns", scope: !728, file: !685, line: 865, baseType: !176, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !684, file: !685, line: 873, baseType: !735, size: 384, align: 64, offset: 320)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 48)
!738 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 875, baseType: !739, size: 128, offset: 704)
!739 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 875, size: 128, elements: !740)
!740 = !{!741, !749}
!741 = !DIDerivedType(tag: DW_TAG_member, scope: !739, file: !685, line: 876, baseType: !742, size: 128)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !685, line: 876, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "_skb_refdst", scope: !742, file: !685, line: 877, baseType: !106, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "destructor", scope: !742, file: !685, line: 878, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !683}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_tsorted_anchor", scope: !739, file: !685, line: 880, baseType: !712, size: 128)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "_nfct", scope: !684, file: !685, line: 887, baseType: !106, size: 64, offset: 832)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !684, file: !685, line: 889, baseType: !19, size: 32, offset: 896)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !684, file: !685, line: 890, baseType: !19, size: 32, offset: 928)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "mac_len", scope: !684, file: !685, line: 891, baseType: !115, size: 16, offset: 960)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "hdr_len", scope: !684, file: !685, line: 892, baseType: !115, size: 16, offset: 976)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "queue_mapping", scope: !684, file: !685, line: 897, baseType: !115, size: 16, offset: 992)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "__cloned_offset", scope: !684, file: !685, line: 908, baseType: !757, offset: 1008)
!757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, elements: !758)
!758 = !{!759}
!759 = !DISubrange(count: 0)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "cloned", scope: !684, file: !685, line: 910, baseType: !155, size: 1, offset: 1008, flags: DIFlagBitField, extraData: i64 1008)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "nohdr", scope: !684, file: !685, line: 911, baseType: !155, size: 1, offset: 1009, flags: DIFlagBitField, extraData: i64 1008)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "fclone", scope: !684, file: !685, line: 912, baseType: !155, size: 2, offset: 1010, flags: DIFlagBitField, extraData: i64 1008)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "peeked", scope: !684, file: !685, line: 913, baseType: !155, size: 1, offset: 1012, flags: DIFlagBitField, extraData: i64 1008)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "head_frag", scope: !684, file: !685, line: 914, baseType: !155, size: 1, offset: 1013, flags: DIFlagBitField, extraData: i64 1008)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "pfmemalloc", scope: !684, file: !685, line: 915, baseType: !155, size: 1, offset: 1014, flags: DIFlagBitField, extraData: i64 1008)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "pp_recycle", scope: !684, file: !685, line: 916, baseType: !155, size: 1, offset: 1015, flags: DIFlagBitField, extraData: i64 1008)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "active_extensions", scope: !684, file: !685, line: 918, baseType: !155, size: 8, offset: 1016)
!768 = !DIDerivedType(tag: DW_TAG_member, scope: !684, file: !685, line: 924, baseType: !769, size: 448, offset: 1024)
!769 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !684, file: !685, line: 924, size: 448, elements: !770)
!770 = !{!771, !849}
!771 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !685, line: 924, baseType: !772, size: 448)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !685, line: 924, size: 448, elements: !773)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !813, !814, !815, !816, !826, !831, !832, !837, !842, !843, !844, !845, !846, !847, !848}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !772, file: !685, line: 924, baseType: !757)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !772, file: !685, line: 924, baseType: !155, size: 3, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !772, file: !685, line: 924, baseType: !155, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !772, file: !685, line: 924, baseType: !757, offset: 8)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !772, file: !685, line: 924, baseType: !155, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !772, file: !685, line: 924, baseType: !155, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !772, file: !685, line: 924, baseType: !155, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 32)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !772, file: !685, line: 924, baseType: !113, size: 16, offset: 48)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !685, line: 924, baseType: !803, size: 32, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !685, line: 924, size: 32, elements: !804)
!804 = !{!805, !808}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !803, file: !685, line: 924, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "__wsum", file: !807, line: 44, baseType: !165)
!807 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!808 = !DIDerivedType(tag: DW_TAG_member, scope: !803, file: !685, line: 924, baseType: !809, size: 32)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !685, line: 924, size: 32, elements: !810)
!810 = !{!811, !812}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !809, file: !685, line: 924, baseType: !115, size: 16)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !809, file: !685, line: 924, baseType: !115, size: 16, offset: 16)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !772, file: !685, line: 924, baseType: !165, size: 32, offset: 96)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !772, file: !685, line: 924, baseType: !103, size: 32, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !772, file: !685, line: 924, baseType: !165, size: 32, offset: 160)
!816 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !685, line: 924, baseType: !817, size: 32, offset: 192)
!817 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !685, line: 924, size: 32, elements: !818)
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !817, file: !685, line: 924, baseType: !164, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !817, file: !685, line: 924, baseType: !821, size: 32)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !817, file: !685, line: 924, size: 32, elements: !822)
!822 = !{!823, !825}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !821, file: !685, line: 924, baseType: !824, size: 16)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !807, line: 37, baseType: !115)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !821, file: !685, line: 924, baseType: !115, size: 16, offset: 16)
!826 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !685, line: 924, baseType: !827, size: 32, offset: 224)
!827 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !685, line: 924, size: 32, elements: !828)
!828 = !{!829, !830}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !827, file: !685, line: 924, baseType: !19, size: 32)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !827, file: !685, line: 924, baseType: !19, size: 32)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !772, file: !685, line: 924, baseType: !165, size: 32, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !685, line: 924, baseType: !833, size: 32, offset: 288)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !685, line: 924, size: 32, elements: !834)
!834 = !{!835, !836}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !833, file: !685, line: 924, baseType: !165, size: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !833, file: !685, line: 924, baseType: !165, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_member, scope: !772, file: !685, line: 924, baseType: !838, size: 16, offset: 320)
!838 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !772, file: !685, line: 924, size: 16, elements: !839)
!839 = !{!840, !841}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !838, file: !685, line: 924, baseType: !824, size: 16)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !838, file: !685, line: 924, baseType: !155, size: 8)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 336)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 352)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 368)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !772, file: !685, line: 924, baseType: !824, size: 16, offset: 384)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 400)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 416)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !772, file: !685, line: 924, baseType: !115, size: 16, offset: 432)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !769, file: !685, line: 924, baseType: !850, size: 448)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !769, file: !685, line: 924, size: 448, elements: !851)
!851 = !{!852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !889, !890, !891, !892, !901, !906, !907, !912, !917, !918, !919, !920, !921, !922, !923}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "__pkt_type_offset", scope: !850, file: !685, line: 924, baseType: !757)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_type", scope: !850, file: !685, line: 924, baseType: !155, size: 3, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_df", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "dst_pending_confirm", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "ip_summed", scope: !850, file: !685, line: 924, baseType: !155, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "ooo_okay", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "__mono_tc_offset", scope: !850, file: !685, line: 924, baseType: !757, offset: 8)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mono_delivery_time", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 8)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tc_at_ingress", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 8)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "tc_skip_classify", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 8)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "remcsum_offload", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 8)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "csum_complete_sw", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 8)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "csum_level", scope: !850, file: !685, line: 924, baseType: !155, size: 2, offset: 13, flags: DIFlagBitField, extraData: i64 8)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol_type", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 8)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "l4_hash", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 8)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sw_hash", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 8)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked_valid", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 8)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "wifi_acked", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 8)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "no_fcs", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 8)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "encapsulation", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 8)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "encap_hdr_csum", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 8)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "csum_valid", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 8)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ndisc_nodetype", scope: !850, file: !685, line: 924, baseType: !155, size: 2, offset: 24, flags: DIFlagBitField, extraData: i64 8)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "redirected", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 8)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "nf_skip_egress", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 8)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "slow_gro", scope: !850, file: !685, line: 924, baseType: !155, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 8)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tc_index", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_cpu", scope: !850, file: !685, line: 924, baseType: !113, size: 16, offset: 48)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !685, line: 924, baseType: !881, size: 32, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !685, line: 924, size: 32, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "csum", scope: !881, file: !685, line: 924, baseType: !806, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, scope: !881, file: !685, line: 924, baseType: !885, size: 32)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !685, line: 924, size: 32, elements: !886)
!886 = !{!887, !888}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "csum_start", scope: !885, file: !685, line: 924, baseType: !115, size: 16)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "csum_offset", scope: !885, file: !685, line: 924, baseType: !115, size: 16, offset: 16)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !850, file: !685, line: 924, baseType: !165, size: 32, offset: 96)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "skb_iif", scope: !850, file: !685, line: 924, baseType: !103, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !850, file: !685, line: 924, baseType: !165, size: 32, offset: 160)
!892 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !685, line: 924, baseType: !893, size: 32, offset: 192)
!893 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !685, line: 924, size: 32, elements: !894)
!894 = !{!895, !896}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_all", scope: !893, file: !685, line: 924, baseType: !164, size: 32)
!896 = !DIDerivedType(tag: DW_TAG_member, scope: !893, file: !685, line: 924, baseType: !897, size: 32)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !893, file: !685, line: 924, size: 32, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_proto", scope: !897, file: !685, line: 924, baseType: !824, size: 16)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "vlan_tci", scope: !897, file: !685, line: 924, baseType: !115, size: 16, offset: 16)
!901 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !685, line: 924, baseType: !902, size: 32, offset: 224)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !685, line: 924, size: 32, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "napi_id", scope: !902, file: !685, line: 924, baseType: !19, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sender_cpu", scope: !902, file: !685, line: 924, baseType: !19, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "secmark", scope: !850, file: !685, line: 924, baseType: !165, size: 32, offset: 256)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !685, line: 924, baseType: !908, size: 32, offset: 288)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !685, line: 924, size: 32, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mark", scope: !908, file: !685, line: 924, baseType: !165, size: 32)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_tailroom", scope: !908, file: !685, line: 924, baseType: !165, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !685, line: 924, baseType: !913, size: 16, offset: 320)
!913 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !685, line: 924, size: 16, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "inner_protocol", scope: !913, file: !685, line: 924, baseType: !824, size: 16)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "inner_ipproto", scope: !913, file: !685, line: 924, baseType: !155, size: 8)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "inner_transport_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 336)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "inner_network_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 352)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "inner_mac_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 368)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !850, file: !685, line: 924, baseType: !824, size: 16, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "transport_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 400)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "network_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 416)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "mac_header", scope: !850, file: !685, line: 924, baseType: !115, size: 16, offset: 432)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !684, file: !685, line: 1047, baseType: !925, size: 32, offset: 1472)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "sk_buff_data_t", file: !685, line: 683, baseType: !19)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !684, file: !685, line: 1048, baseType: !925, size: 32, offset: 1504)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !684, file: !685, line: 1049, baseType: !123, size: 64, offset: 1536)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !684, file: !685, line: 1050, baseType: !123, size: 64, offset: 1600)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "truesize", scope: !684, file: !685, line: 1051, baseType: !19, size: 32, offset: 1664)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "users", scope: !684, file: !685, line: 1052, baseType: !931, size: 32, offset: 1696)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !932, line: 113, baseType: !933)
!932 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !932, line: 111, size: 32, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !933, file: !932, line: 112, baseType: !936, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !105, line: 174, baseType: !937)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !105, line: 172, size: 32, elements: !938)
!938 = !{!939}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !937, file: !105, line: 173, baseType: !103, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !684, file: !685, line: 1056, baseType: !941, size: 64, offset: 1728)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "skb_ext", file: !685, line: 4679, size: 64, elements: !943)
!943 = !{!944, !945, !949, !950}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !942, file: !685, line: 4680, baseType: !931, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !942, file: !685, line: 4681, baseType: !946, size: 8, offset: 32)
!946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 8, elements: !947)
!947 = !{!948}
!948 = !DISubrange(count: 1)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !942, file: !685, line: 4682, baseType: !154, size: 8, offset: 40)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !942, file: !685, line: 4683, baseType: !951, align: 64, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !222)
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "skb", arg: 1, scope: !680, file: !2, line: 407, type: !683)
!954 = !DILocalVariable(name: "pt", arg: 2, scope: !680, file: !2, line: 408, type: !149)
!955 = !DILocalVariable(name: "nestattr", arg: 3, scope: !680, file: !2, line: 409, type: !103)
!956 = !DILocation(line: 407, column: 52, scope: !680)
!957 = !DILocation(line: 408, column: 33, scope: !680)
!958 = !DILocation(line: 409, column: 12, scope: !680)
!959 = !DILocation(line: 411, column: 48, scope: !680)
!960 = !DILocation(line: 411, column: 53, scope: !680)
!961 = !DILocation(line: 411, column: 57, scope: !680)
!962 = !DILocation(line: 411, column: 9, scope: !680)
!963 = !DILocation(line: 411, column: 2, scope: !680)
!964 = distinct !DISubprogram(name: "__netlink_policy_dump_write_attr", scope: !2, file: !2, line: 251, type: !965, scopeLine: 255, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !967)
!965 = !DISubroutineType(types: !966)
!966 = !{!103, !138, !683, !149, !103}
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !978, !980, !983, !985, !988}
!968 = !DILocalVariable(name: "state", arg: 1, scope: !964, file: !2, line: 251, type: !138)
!969 = !DILocalVariable(name: "skb", arg: 2, scope: !964, file: !2, line: 252, type: !683)
!970 = !DILocalVariable(name: "pt", arg: 3, scope: !964, file: !2, line: 253, type: !149)
!971 = !DILocalVariable(name: "nestattr", arg: 4, scope: !964, file: !2, line: 254, type: !103)
!972 = !DILocalVariable(name: "estimate", scope: !964, file: !2, line: 256, type: !103)
!973 = !DILocalVariable(name: "type", scope: !964, file: !2, line: 257, type: !56)
!974 = !DILocalVariable(name: "attr", scope: !964, file: !2, line: 258, type: !118)
!975 = !DILocalVariable(name: "range", scope: !976, file: !2, line: 291, type: !173)
!976 = distinct !DILexicalBlock(scope: !977, file: !2, line: 290, column: 18)
!977 = distinct !DILexicalBlock(scope: !964, file: !2, line: 264, column: 20)
!978 = !DILocalVariable(name: "range", scope: !979, file: !2, line: 323, type: !182)
!979 = distinct !DILexicalBlock(scope: !977, file: !2, line: 322, column: 16)
!980 = !DILocalVariable(name: "range", scope: !981, file: !2, line: 361, type: !173)
!981 = distinct !DILexicalBlock(scope: !982, file: !2, line: 360, column: 64)
!982 = distinct !DILexicalBlock(scope: !977, file: !2, line: 359, column: 7)
!983 = !DILocalVariable(name: "__ret_warn_on", scope: !984, file: !2, line: 389, type: !103)
!984 = distinct !DILexicalBlock(scope: !964, file: !2, line: 389, column: 2)
!985 = !DILocalVariable(name: "__flags", scope: !986, file: !2, line: 389, type: !103)
!986 = distinct !DILexicalBlock(scope: !987, file: !2, line: 389, column: 2)
!987 = distinct !DILexicalBlock(scope: !984, file: !2, line: 389, column: 2)
!988 = !DILabel(scope: !964, name: "nla_put_failure", file: !2, line: 392)
!989 = !DILocation(line: 251, column: 68, scope: !964)
!990 = !DILocation(line: 252, column: 22, scope: !964)
!991 = !DILocation(line: 253, column: 31, scope: !964)
!992 = !DILocation(line: 254, column: 10, scope: !964)
!993 = !DILocation(line: 256, column: 2, scope: !964)
!994 = !DILocation(line: 256, column: 6, scope: !964)
!995 = !DILocation(line: 256, column: 56, scope: !964)
!996 = !DILocation(line: 256, column: 17, scope: !964)
!997 = !DILocation(line: 257, column: 2, scope: !964)
!998 = !DILocation(line: 257, column: 30, scope: !964)
!999 = !DILocation(line: 258, column: 2, scope: !964)
!1000 = !DILocation(line: 258, column: 17, scope: !964)
!1001 = !DILocation(line: 260, column: 24, scope: !964)
!1002 = !DILocation(line: 260, column: 29, scope: !964)
!1003 = !DILocation(line: 260, column: 9, scope: !964)
!1004 = !DILocation(line: 260, column: 7, scope: !964)
!1005 = !DILocation(line: 261, column: 7, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !964, file: !2, line: 261, column: 6)
!1007 = !DILocation(line: 261, column: 6, scope: !964)
!1008 = !DILocation(line: 262, column: 3, scope: !1006)
!1009 = !DILocation(line: 264, column: 10, scope: !964)
!1010 = !DILocation(line: 264, column: 14, scope: !964)
!1011 = !DILocation(line: 264, column: 2, scope: !964)
!1012 = !DILocation(line: 264, column: 20, scope: !964)
!1013 = !DILocation(line: 269, column: 19, scope: !977)
!1014 = !DILocation(line: 269, column: 24, scope: !977)
!1015 = !DILocation(line: 269, column: 3, scope: !977)
!1016 = !DILocation(line: 270, column: 3, scope: !977)
!1017 = !DILocation(line: 272, column: 8, scope: !977)
!1018 = !DILocation(line: 272, column: 3, scope: !977)
!1019 = !DILocation(line: 275, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !977, file: !2, line: 275, column: 7)
!1021 = !DILocation(line: 275, column: 11, scope: !1020)
!1022 = !DILocation(line: 275, column: 16, scope: !1020)
!1023 = !DILocation(line: 275, column: 7, scope: !977)
!1024 = !DILocation(line: 276, column: 9, scope: !1020)
!1025 = !DILocation(line: 276, column: 4, scope: !1020)
!1026 = !DILocation(line: 277, column: 7, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !977, file: !2, line: 277, column: 7)
!1028 = !DILocation(line: 277, column: 13, scope: !1027)
!1029 = !DILocation(line: 277, column: 16, scope: !1027)
!1030 = !DILocation(line: 277, column: 20, scope: !1027)
!1031 = !DILocation(line: 277, column: 34, scope: !1027)
!1032 = !DILocation(line: 277, column: 37, scope: !1027)
!1033 = !DILocation(line: 277, column: 41, scope: !1027)
!1034 = !DILocation(line: 277, column: 45, scope: !1027)
!1035 = !DILocation(line: 278, column: 20, scope: !1027)
!1036 = !DILocation(line: 279, column: 41, scope: !1027)
!1037 = !DILocation(line: 280, column: 13, scope: !1027)
!1038 = !DILocation(line: 280, column: 17, scope: !1027)
!1039 = !DILocation(line: 281, column: 13, scope: !1027)
!1040 = !DILocation(line: 281, column: 17, scope: !1027)
!1041 = !DILocation(line: 279, column: 6, scope: !1027)
!1042 = !DILocation(line: 278, column: 8, scope: !1027)
!1043 = !DILocation(line: 281, column: 23, scope: !1027)
!1044 = !DILocation(line: 282, column: 20, scope: !1027)
!1045 = !DILocation(line: 283, column: 6, scope: !1027)
!1046 = !DILocation(line: 283, column: 10, scope: !1027)
!1047 = !DILocation(line: 282, column: 8, scope: !1027)
!1048 = !DILocation(line: 277, column: 7, scope: !977)
!1049 = !DILocation(line: 284, column: 4, scope: !1027)
!1050 = !DILocation(line: 285, column: 3, scope: !977)
!1051 = !DILocation(line: 291, column: 3, scope: !976)
!1052 = !DILocation(line: 291, column: 35, scope: !976)
!1053 = !DILocation(line: 293, column: 7, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !976, file: !2, line: 293, column: 7)
!1055 = !DILocation(line: 293, column: 11, scope: !1054)
!1056 = !DILocation(line: 293, column: 16, scope: !1054)
!1057 = !DILocation(line: 293, column: 7, scope: !976)
!1058 = !DILocation(line: 294, column: 9, scope: !1054)
!1059 = !DILocation(line: 294, column: 4, scope: !1054)
!1060 = !DILocation(line: 295, column: 12, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1054, file: !2, line: 295, column: 12)
!1062 = !DILocation(line: 295, column: 16, scope: !1061)
!1063 = !DILocation(line: 295, column: 21, scope: !1061)
!1064 = !DILocation(line: 295, column: 12, scope: !1054)
!1065 = !DILocation(line: 296, column: 9, scope: !1061)
!1066 = !DILocation(line: 296, column: 4, scope: !1061)
!1067 = !DILocation(line: 297, column: 12, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 297, column: 12)
!1069 = !DILocation(line: 297, column: 16, scope: !1068)
!1070 = !DILocation(line: 297, column: 21, scope: !1068)
!1071 = !DILocation(line: 297, column: 12, scope: !1061)
!1072 = !DILocation(line: 298, column: 9, scope: !1068)
!1073 = !DILocation(line: 298, column: 4, scope: !1068)
!1074 = !DILocation(line: 300, column: 9, scope: !1068)
!1075 = !DILocation(line: 302, column: 7, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !976, file: !2, line: 302, column: 7)
!1077 = !DILocation(line: 302, column: 11, scope: !1076)
!1078 = !DILocation(line: 302, column: 27, scope: !1076)
!1079 = !DILocation(line: 302, column: 7, scope: !976)
!1080 = !DILocation(line: 303, column: 26, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !2, line: 303, column: 8)
!1082 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 302, column: 49)
!1083 = !DILocation(line: 304, column: 12, scope: !1081)
!1084 = !DILocation(line: 304, column: 16, scope: !1081)
!1085 = !DILocation(line: 303, column: 8, scope: !1081)
!1086 = !DILocation(line: 303, column: 8, scope: !1082)
!1087 = !DILocation(line: 306, column: 5, scope: !1081)
!1088 = !DILocation(line: 307, column: 4, scope: !1082)
!1089 = !DILocation(line: 310, column: 26, scope: !976)
!1090 = !DILocation(line: 310, column: 3, scope: !976)
!1091 = !DILocation(line: 312, column: 25, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !976, file: !2, line: 312, column: 7)
!1093 = !DILocation(line: 313, column: 17, scope: !1092)
!1094 = !DILocation(line: 312, column: 7, scope: !1092)
!1095 = !DILocation(line: 313, column: 47, scope: !1092)
!1096 = !DILocation(line: 314, column: 25, scope: !1092)
!1097 = !DILocation(line: 315, column: 17, scope: !1092)
!1098 = !DILocation(line: 314, column: 7, scope: !1092)
!1099 = !DILocation(line: 312, column: 7, scope: !976)
!1100 = !DILocation(line: 316, column: 4, scope: !1092)
!1101 = !DILocation(line: 317, column: 3, scope: !976)
!1102 = !DILocation(line: 318, column: 2, scope: !977)
!1103 = !DILocation(line: 323, column: 3, scope: !979)
!1104 = !DILocation(line: 323, column: 42, scope: !979)
!1105 = !DILocation(line: 325, column: 7, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !979, file: !2, line: 325, column: 7)
!1107 = !DILocation(line: 325, column: 11, scope: !1106)
!1108 = !DILocation(line: 325, column: 16, scope: !1106)
!1109 = !DILocation(line: 325, column: 7, scope: !979)
!1110 = !DILocation(line: 326, column: 9, scope: !1106)
!1111 = !DILocation(line: 326, column: 4, scope: !1106)
!1112 = !DILocation(line: 327, column: 12, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1106, file: !2, line: 327, column: 12)
!1114 = !DILocation(line: 327, column: 16, scope: !1113)
!1115 = !DILocation(line: 327, column: 21, scope: !1113)
!1116 = !DILocation(line: 327, column: 12, scope: !1106)
!1117 = !DILocation(line: 328, column: 9, scope: !1113)
!1118 = !DILocation(line: 328, column: 4, scope: !1113)
!1119 = !DILocation(line: 329, column: 12, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 329, column: 12)
!1121 = !DILocation(line: 329, column: 16, scope: !1120)
!1122 = !DILocation(line: 329, column: 21, scope: !1120)
!1123 = !DILocation(line: 329, column: 12, scope: !1113)
!1124 = !DILocation(line: 330, column: 9, scope: !1120)
!1125 = !DILocation(line: 330, column: 4, scope: !1120)
!1126 = !DILocation(line: 332, column: 9, scope: !1120)
!1127 = !DILocation(line: 334, column: 24, scope: !979)
!1128 = !DILocation(line: 334, column: 3, scope: !979)
!1129 = !DILocation(line: 336, column: 19, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !979, file: !2, line: 336, column: 7)
!1131 = !DILocation(line: 337, column: 11, scope: !1130)
!1132 = !DILocation(line: 336, column: 7, scope: !1130)
!1133 = !DILocation(line: 337, column: 41, scope: !1130)
!1134 = !DILocation(line: 338, column: 19, scope: !1130)
!1135 = !DILocation(line: 339, column: 11, scope: !1130)
!1136 = !DILocation(line: 338, column: 7, scope: !1130)
!1137 = !DILocation(line: 336, column: 7, scope: !979)
!1138 = !DILocation(line: 340, column: 4, scope: !1130)
!1139 = !DILocation(line: 341, column: 3, scope: !979)
!1140 = !DILocation(line: 342, column: 2, scope: !977)
!1141 = !DILocation(line: 344, column: 8, scope: !977)
!1142 = !DILocation(line: 345, column: 19, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !977, file: !2, line: 345, column: 7)
!1144 = !DILocation(line: 346, column: 5, scope: !1143)
!1145 = !DILocation(line: 346, column: 9, scope: !1143)
!1146 = !DILocation(line: 345, column: 7, scope: !1143)
!1147 = !DILocation(line: 345, column: 7, scope: !977)
!1148 = !DILocation(line: 347, column: 4, scope: !1143)
!1149 = !DILocation(line: 348, column: 3, scope: !977)
!1150 = !DILocation(line: 352, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !977, file: !2, line: 352, column: 7)
!1152 = !DILocation(line: 352, column: 11, scope: !1151)
!1153 = !DILocation(line: 352, column: 16, scope: !1151)
!1154 = !DILocation(line: 352, column: 7, scope: !977)
!1155 = !DILocation(line: 353, column: 9, scope: !1151)
!1156 = !DILocation(line: 353, column: 4, scope: !1151)
!1157 = !DILocation(line: 354, column: 12, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1151, file: !2, line: 354, column: 12)
!1159 = !DILocation(line: 354, column: 16, scope: !1158)
!1160 = !DILocation(line: 354, column: 21, scope: !1158)
!1161 = !DILocation(line: 354, column: 12, scope: !1151)
!1162 = !DILocation(line: 355, column: 9, scope: !1158)
!1163 = !DILocation(line: 355, column: 4, scope: !1158)
!1164 = !DILocation(line: 357, column: 9, scope: !1158)
!1165 = !DILocation(line: 359, column: 7, scope: !982)
!1166 = !DILocation(line: 359, column: 11, scope: !982)
!1167 = !DILocation(line: 359, column: 27, scope: !982)
!1168 = !DILocation(line: 359, column: 49, scope: !982)
!1169 = !DILocation(line: 360, column: 7, scope: !982)
!1170 = !DILocation(line: 360, column: 11, scope: !982)
!1171 = !DILocation(line: 360, column: 27, scope: !982)
!1172 = !DILocation(line: 359, column: 7, scope: !977)
!1173 = !DILocation(line: 361, column: 4, scope: !981)
!1174 = !DILocation(line: 361, column: 36, scope: !981)
!1175 = !DILocation(line: 363, column: 27, scope: !981)
!1176 = !DILocation(line: 363, column: 4, scope: !981)
!1177 = !DILocation(line: 365, column: 14, scope: !1178)
!1178 = distinct !DILexicalBlock(scope: !981, file: !2, line: 365, column: 8)
!1179 = !DILocation(line: 365, column: 8, scope: !1178)
!1180 = !DILocation(line: 365, column: 18, scope: !1178)
!1181 = !DILocation(line: 366, column: 20, scope: !1178)
!1182 = !DILocation(line: 367, column: 12, scope: !1178)
!1183 = !DILocation(line: 367, column: 6, scope: !1178)
!1184 = !DILocation(line: 366, column: 8, scope: !1178)
!1185 = !DILocation(line: 365, column: 8, scope: !981)
!1186 = !DILocation(line: 368, column: 5, scope: !1178)
!1187 = !DILocation(line: 370, column: 14, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !981, file: !2, line: 370, column: 8)
!1189 = !DILocation(line: 370, column: 18, scope: !1188)
!1190 = !DILocation(line: 370, column: 28, scope: !1188)
!1191 = !DILocation(line: 371, column: 20, scope: !1188)
!1192 = !DILocation(line: 372, column: 12, scope: !1188)
!1193 = !DILocation(line: 372, column: 6, scope: !1188)
!1194 = !DILocation(line: 371, column: 8, scope: !1188)
!1195 = !DILocation(line: 370, column: 8, scope: !981)
!1196 = !DILocation(line: 373, column: 5, scope: !1188)
!1197 = !DILocation(line: 374, column: 3, scope: !982)
!1198 = !DILocation(line: 374, column: 3, scope: !981)
!1199 = !DILocation(line: 374, column: 14, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !982, file: !2, line: 374, column: 14)
!1201 = !DILocation(line: 374, column: 18, scope: !1200)
!1202 = !DILocation(line: 374, column: 22, scope: !1200)
!1203 = !DILocation(line: 375, column: 19, scope: !1200)
!1204 = !DILocation(line: 376, column: 12, scope: !1200)
!1205 = !DILocation(line: 376, column: 16, scope: !1200)
!1206 = !DILocation(line: 375, column: 7, scope: !1200)
!1207 = !DILocation(line: 374, column: 14, scope: !982)
!1208 = !DILocation(line: 377, column: 4, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 376, column: 22)
!1210 = !DILocation(line: 379, column: 3, scope: !977)
!1211 = !DILocation(line: 381, column: 8, scope: !977)
!1212 = !DILocation(line: 382, column: 3, scope: !977)
!1213 = !DILocation(line: 385, column: 18, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !964, file: !2, line: 385, column: 6)
!1215 = !DILocation(line: 385, column: 49, scope: !1214)
!1216 = !DILocation(line: 385, column: 6, scope: !1214)
!1217 = !DILocation(line: 385, column: 6, scope: !964)
!1218 = !DILocation(line: 386, column: 3, scope: !1214)
!1219 = !DILocation(line: 388, column: 15, scope: !964)
!1220 = !DILocation(line: 388, column: 20, scope: !964)
!1221 = !DILocation(line: 388, column: 2, scope: !964)
!1222 = !DILocation(line: 389, column: 2, scope: !984)
!1223 = !DILocation(line: 389, column: 2, scope: !987)
!1224 = !DILocation(line: 389, column: 2, scope: !986)
!1225 = !DILocation(line: 389, column: 2, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !986, file: !2, line: 389, column: 2)
!1227 = !DILocation(line: 389, column: 2, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !986, file: !2, line: 389, column: 2)
!1229 = !{i64 2155518981, i64 2155519010, i64 2155519056, i64 2155519114, i64 2155519168, i64 2155519222, i64 2155519277, i64 2155519308, i64 2155519616, i64 2155519622, i64 2155519669, i64 2155519692, i64 2155519718}
!1230 = !DILocation(line: 389, column: 2, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !986, file: !2, line: 389, column: 2)
!1232 = !DILocation(line: 389, column: 2, scope: !964)
!1233 = !DILocation(line: 391, column: 2, scope: !964)
!1234 = !DILocation(line: 392, column: 1, scope: !964)
!1235 = !DILocation(line: 393, column: 18, scope: !964)
!1236 = !DILocation(line: 393, column: 23, scope: !964)
!1237 = !DILocation(line: 393, column: 2, scope: !964)
!1238 = !DILocation(line: 394, column: 2, scope: !964)
!1239 = !DILocation(line: 395, column: 1, scope: !964)
!1240 = distinct !DISubprogram(name: "netlink_policy_dump_write", scope: !2, file: !2, line: 421, type: !1241, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1243)
!1241 = !DISubroutineType(types: !1242)
!1242 = !{!103, !683, !138}
!1243 = !{!1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252}
!1244 = !DILocalVariable(name: "skb", arg: 1, scope: !1240, file: !2, line: 421, type: !683)
!1245 = !DILocalVariable(name: "state", arg: 2, scope: !1240, file: !2, line: 422, type: !138)
!1246 = !DILocalVariable(name: "pt", scope: !1240, file: !2, line: 424, type: !149)
!1247 = !DILocalVariable(name: "policy", scope: !1240, file: !2, line: 425, type: !118)
!1248 = !DILocalVariable(name: "again", scope: !1240, file: !2, line: 426, type: !460)
!1249 = !DILocalVariable(name: "err", scope: !1240, file: !2, line: 427, type: !103)
!1250 = !DILabel(scope: !1240, name: "send_attribute", file: !2, line: 429)
!1251 = !DILabel(scope: !1240, name: "next", file: !2, line: 450)
!1252 = !DILabel(scope: !1240, name: "nla_put_failure", file: !2, line: 465)
!1253 = !DILocation(line: 421, column: 47, scope: !1240)
!1254 = !DILocation(line: 422, column: 44, scope: !1240)
!1255 = !DILocation(line: 424, column: 2, scope: !1240)
!1256 = !DILocation(line: 424, column: 27, scope: !1240)
!1257 = !DILocation(line: 425, column: 2, scope: !1240)
!1258 = !DILocation(line: 425, column: 17, scope: !1240)
!1259 = !DILocation(line: 426, column: 2, scope: !1240)
!1260 = !DILocation(line: 426, column: 7, scope: !1240)
!1261 = !DILocation(line: 427, column: 2, scope: !1240)
!1262 = !DILocation(line: 427, column: 6, scope: !1240)
!1263 = !DILocation(line: 429, column: 1, scope: !1240)
!1264 = !DILocation(line: 430, column: 8, scope: !1240)
!1265 = !DILocation(line: 432, column: 8, scope: !1240)
!1266 = !DILocation(line: 432, column: 15, scope: !1240)
!1267 = !DILocation(line: 432, column: 24, scope: !1240)
!1268 = !DILocation(line: 432, column: 31, scope: !1240)
!1269 = !DILocation(line: 432, column: 43, scope: !1240)
!1270 = !DILocation(line: 432, column: 50, scope: !1240)
!1271 = !DILocation(line: 432, column: 57, scope: !1240)
!1272 = !DILocation(line: 432, column: 5, scope: !1240)
!1273 = !DILocation(line: 434, column: 26, scope: !1240)
!1274 = !DILocation(line: 434, column: 31, scope: !1240)
!1275 = !DILocation(line: 434, column: 38, scope: !1240)
!1276 = !DILocation(line: 434, column: 11, scope: !1240)
!1277 = !DILocation(line: 434, column: 9, scope: !1240)
!1278 = !DILocation(line: 435, column: 7, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 435, column: 6)
!1280 = !DILocation(line: 435, column: 6, scope: !1240)
!1281 = !DILocation(line: 436, column: 3, scope: !1279)
!1282 = !DILocation(line: 438, column: 41, scope: !1240)
!1283 = !DILocation(line: 438, column: 48, scope: !1240)
!1284 = !DILocation(line: 438, column: 53, scope: !1240)
!1285 = !DILocation(line: 438, column: 57, scope: !1240)
!1286 = !DILocation(line: 438, column: 64, scope: !1240)
!1287 = !DILocation(line: 438, column: 8, scope: !1240)
!1288 = !DILocation(line: 438, column: 6, scope: !1240)
!1289 = !DILocation(line: 439, column: 6, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 439, column: 6)
!1291 = !DILocation(line: 439, column: 10, scope: !1290)
!1292 = !DILocation(line: 439, column: 6, scope: !1240)
!1293 = !DILocation(line: 440, column: 19, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 439, column: 23)
!1295 = !DILocation(line: 440, column: 24, scope: !1294)
!1296 = !DILocation(line: 440, column: 3, scope: !1294)
!1297 = !DILocation(line: 441, column: 9, scope: !1294)
!1298 = !DILocation(line: 442, column: 3, scope: !1294)
!1299 = !DILocation(line: 443, column: 13, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1290, file: !2, line: 443, column: 13)
!1301 = !DILocation(line: 443, column: 13, scope: !1290)
!1302 = !DILocation(line: 444, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1300, file: !2, line: 443, column: 18)
!1304 = !DILocation(line: 448, column: 15, scope: !1240)
!1305 = !DILocation(line: 448, column: 20, scope: !1240)
!1306 = !DILocation(line: 448, column: 2, scope: !1240)
!1307 = !DILocation(line: 450, column: 1, scope: !1240)
!1308 = !DILocation(line: 451, column: 2, scope: !1240)
!1309 = !DILocation(line: 451, column: 9, scope: !1240)
!1310 = !DILocation(line: 451, column: 18, scope: !1240)
!1311 = !DILocation(line: 452, column: 6, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 452, column: 6)
!1313 = !DILocation(line: 452, column: 13, scope: !1312)
!1314 = !DILocation(line: 452, column: 24, scope: !1312)
!1315 = !DILocation(line: 452, column: 31, scope: !1312)
!1316 = !DILocation(line: 452, column: 40, scope: !1312)
!1317 = !DILocation(line: 452, column: 47, scope: !1312)
!1318 = !DILocation(line: 452, column: 59, scope: !1312)
!1319 = !DILocation(line: 452, column: 22, scope: !1312)
!1320 = !DILocation(line: 452, column: 6, scope: !1240)
!1321 = !DILocation(line: 453, column: 3, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1312, file: !2, line: 452, column: 68)
!1323 = !DILocation(line: 453, column: 10, scope: !1322)
!1324 = !DILocation(line: 453, column: 19, scope: !1322)
!1325 = !DILocation(line: 454, column: 3, scope: !1322)
!1326 = !DILocation(line: 454, column: 10, scope: !1322)
!1327 = !DILocation(line: 454, column: 20, scope: !1322)
!1328 = !DILocation(line: 455, column: 2, scope: !1322)
!1329 = !DILocation(line: 457, column: 6, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1240, file: !2, line: 457, column: 6)
!1331 = !{i8 0, i8 2}
!1332 = !{}
!1333 = !DILocation(line: 457, column: 6, scope: !1240)
!1334 = !DILocation(line: 458, column: 36, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !2, line: 458, column: 7)
!1336 = distinct !DILexicalBlock(scope: !1330, file: !2, line: 457, column: 13)
!1337 = !DILocation(line: 458, column: 7, scope: !1335)
!1338 = !DILocation(line: 458, column: 7, scope: !1336)
!1339 = !DILocation(line: 459, column: 4, scope: !1335)
!1340 = !DILocation(line: 460, column: 3, scope: !1336)
!1341 = !DILocation(line: 463, column: 2, scope: !1240)
!1342 = !DILocation(line: 465, column: 1, scope: !1240)
!1343 = !DILocation(line: 466, column: 18, scope: !1240)
!1344 = !DILocation(line: 466, column: 23, scope: !1240)
!1345 = !DILocation(line: 466, column: 2, scope: !1240)
!1346 = !DILocation(line: 467, column: 2, scope: !1240)
!1347 = !DILocation(line: 468, column: 1, scope: !1240)
!1348 = distinct !DISubprogram(name: "nla_nest_start", scope: !12, file: !12, line: 1829, type: !1349, scopeLine: 1830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{!118, !683, !103}
!1351 = !{!1352, !1353}
!1352 = !DILocalVariable(name: "skb", arg: 1, scope: !1348, file: !12, line: 1829, type: !683)
!1353 = !DILocalVariable(name: "attrtype", arg: 2, scope: !1348, file: !12, line: 1829, type: !103)
!1354 = !DILocation(line: 1829, column: 61, scope: !1348)
!1355 = !DILocation(line: 1829, column: 70, scope: !1348)
!1356 = !DILocation(line: 1831, column: 31, scope: !1348)
!1357 = !DILocation(line: 1831, column: 36, scope: !1348)
!1358 = !DILocation(line: 1831, column: 45, scope: !1348)
!1359 = !DILocation(line: 1831, column: 9, scope: !1348)
!1360 = !DILocation(line: 1831, column: 2, scope: !1348)
!1361 = distinct !DISubprogram(name: "nla_nest_cancel", scope: !12, file: !12, line: 1858, type: !1362, scopeLine: 1859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1364)
!1362 = !DISubroutineType(types: !1363)
!1363 = !{null, !683, !118}
!1364 = !{!1365, !1366}
!1365 = !DILocalVariable(name: "skb", arg: 1, scope: !1361, file: !12, line: 1858, type: !683)
!1366 = !DILocalVariable(name: "start", arg: 2, scope: !1361, file: !12, line: 1858, type: !118)
!1367 = !DILocation(line: 1858, column: 52, scope: !1361)
!1368 = !DILocation(line: 1858, column: 72, scope: !1361)
!1369 = !DILocation(line: 1860, column: 13, scope: !1361)
!1370 = !DILocation(line: 1860, column: 18, scope: !1361)
!1371 = !DILocation(line: 1860, column: 2, scope: !1361)
!1372 = !DILocation(line: 1861, column: 1, scope: !1361)
!1373 = distinct !DISubprogram(name: "nla_nest_end", scope: !12, file: !12, line: 1844, type: !1374, scopeLine: 1845, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1376)
!1374 = !DISubroutineType(types: !1375)
!1375 = !{!103, !683, !118}
!1376 = !{!1377, !1378}
!1377 = !DILocalVariable(name: "skb", arg: 1, scope: !1373, file: !12, line: 1844, type: !683)
!1378 = !DILocalVariable(name: "start", arg: 2, scope: !1373, file: !12, line: 1844, type: !118)
!1379 = !DILocation(line: 1844, column: 48, scope: !1373)
!1380 = !DILocation(line: 1844, column: 68, scope: !1373)
!1381 = !DILocation(line: 1846, column: 36, scope: !1373)
!1382 = !DILocation(line: 1846, column: 19, scope: !1373)
!1383 = !DILocation(line: 1846, column: 60, scope: !1373)
!1384 = !DILocation(line: 1846, column: 41, scope: !1373)
!1385 = !DILocation(line: 1846, column: 2, scope: !1373)
!1386 = !DILocation(line: 1846, column: 9, scope: !1373)
!1387 = !DILocation(line: 1846, column: 17, scope: !1373)
!1388 = !DILocation(line: 1847, column: 9, scope: !1373)
!1389 = !DILocation(line: 1847, column: 14, scope: !1373)
!1390 = !DILocation(line: 1847, column: 2, scope: !1373)
!1391 = !DISubprogram(name: "kfree", scope: !9, file: !9, line: 227, type: !1392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{null, !462}
!1394 = distinct !DISubprogram(name: "kzalloc", scope: !9, file: !9, line: 719, type: !1395, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!107, !109, !104}
!1397 = !{!1398, !1399}
!1398 = !DILocalVariable(name: "size", arg: 1, scope: !1394, file: !9, line: 719, type: !109)
!1399 = !DILocalVariable(name: "flags", arg: 2, scope: !1394, file: !9, line: 719, type: !104)
!1400 = !DILocation(line: 719, column: 52, scope: !1394)
!1401 = !DILocation(line: 719, column: 64, scope: !1394)
!1402 = !DILocation(line: 721, column: 17, scope: !1394)
!1403 = !DILocation(line: 721, column: 23, scope: !1394)
!1404 = !DILocation(line: 721, column: 29, scope: !1394)
!1405 = !DILocation(line: 721, column: 9, scope: !1394)
!1406 = !DILocation(line: 721, column: 2, scope: !1394)
!1407 = distinct !DISubprogram(name: "ERR_PTR", scope: !457, file: !457, line: 39, type: !1408, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1410)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!107, !108}
!1410 = !{!1411}
!1411 = !DILocalVariable(name: "error", arg: 1, scope: !1407, file: !457, line: 39, type: !108)
!1412 = !DILocation(line: 39, column: 48, scope: !1407)
!1413 = !DILocation(line: 41, column: 18, scope: !1407)
!1414 = !DILocation(line: 41, column: 9, scope: !1407)
!1415 = !DILocation(line: 41, column: 2, scope: !1407)
!1416 = distinct !DISubprogram(name: "kmalloc", scope: !9, file: !9, line: 591, type: !1395, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1417)
!1417 = !{!1418, !1419, !1420}
!1418 = !DILocalVariable(name: "size", arg: 1, scope: !1416, file: !9, line: 591, type: !109)
!1419 = !DILocalVariable(name: "flags", arg: 2, scope: !1416, file: !9, line: 591, type: !104)
!1420 = !DILocalVariable(name: "index", scope: !1421, file: !9, line: 594, type: !19)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !9, line: 593, column: 42)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !9, line: 593, column: 6)
!1423 = !DILocation(line: 591, column: 61, scope: !1416)
!1424 = !DILocation(line: 591, column: 73, scope: !1416)
!1425 = !DILocation(line: 593, column: 27, scope: !1422)
!1426 = !DILocation(line: 593, column: 6, scope: !1422)
!1427 = !DILocation(line: 593, column: 33, scope: !1422)
!1428 = !DILocation(line: 593, column: 36, scope: !1422)
!1429 = !DILocation(line: 593, column: 6, scope: !1416)
!1430 = !DILocation(line: 594, column: 3, scope: !1421)
!1431 = !DILocation(line: 594, column: 16, scope: !1421)
!1432 = !DILocation(line: 596, column: 7, scope: !1433)
!1433 = distinct !DILexicalBlock(scope: !1421, file: !9, line: 596, column: 7)
!1434 = !DILocation(line: 596, column: 12, scope: !1433)
!1435 = !DILocation(line: 596, column: 7, scope: !1421)
!1436 = !DILocation(line: 597, column: 25, scope: !1433)
!1437 = !DILocation(line: 597, column: 31, scope: !1433)
!1438 = !DILocation(line: 597, column: 11, scope: !1433)
!1439 = !DILocation(line: 597, column: 4, scope: !1433)
!1440 = !DILocation(line: 599, column: 11, scope: !1421)
!1441 = !DILocation(line: 599, column: 9, scope: !1421)
!1442 = !DILocation(line: 601, column: 33, scope: !1421)
!1443 = !DILocation(line: 601, column: 40, scope: !1421)
!1444 = !DILocation(line: 601, column: 20, scope: !1421)
!1445 = !DILocation(line: 601, column: 5, scope: !1421)
!1446 = !DILocation(line: 601, column: 51, scope: !1421)
!1447 = !DILocation(line: 602, column: 5, scope: !1421)
!1448 = !DILocation(line: 602, column: 12, scope: !1421)
!1449 = !DILocation(line: 600, column: 10, scope: !1421)
!1450 = !DILocation(line: 600, column: 3, scope: !1421)
!1451 = !DILocation(line: 603, column: 2, scope: !1422)
!1452 = !DILocation(line: 604, column: 19, scope: !1416)
!1453 = !DILocation(line: 604, column: 25, scope: !1416)
!1454 = !DILocation(line: 604, column: 9, scope: !1416)
!1455 = !DILocation(line: 604, column: 2, scope: !1416)
!1456 = !DILocation(line: 605, column: 1, scope: !1416)
!1457 = !DISubprogram(name: "kmalloc_large", scope: !9, file: !9, line: 531, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1458 = distinct !DISubprogram(name: "__kmalloc_index", scope: !9, file: !9, line: 444, type: !1459, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1461)
!1459 = !DISubroutineType(types: !1460)
!1460 = !{!19, !109, !460}
!1461 = !{!1462, !1463}
!1462 = !DILocalVariable(name: "size", arg: 1, scope: !1458, file: !9, line: 444, type: !109)
!1463 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !1458, file: !9, line: 445, type: !460)
!1464 = !DILocation(line: 444, column: 60, scope: !1458)
!1465 = !DILocation(line: 445, column: 16, scope: !1458)
!1466 = !DILocation(line: 447, column: 7, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 447, column: 6)
!1468 = !DILocation(line: 447, column: 6, scope: !1458)
!1469 = !DILocation(line: 448, column: 3, scope: !1467)
!1470 = !DILocation(line: 450, column: 6, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 450, column: 6)
!1472 = !DILocation(line: 450, column: 11, scope: !1471)
!1473 = !DILocation(line: 450, column: 6, scope: !1458)
!1474 = !DILocation(line: 451, column: 3, scope: !1471)
!1475 = !DILocation(line: 453, column: 32, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 453, column: 6)
!1477 = !DILocation(line: 453, column: 37, scope: !1476)
!1478 = !DILocation(line: 453, column: 42, scope: !1476)
!1479 = !DILocation(line: 453, column: 45, scope: !1476)
!1480 = !DILocation(line: 453, column: 50, scope: !1476)
!1481 = !DILocation(line: 453, column: 6, scope: !1458)
!1482 = !DILocation(line: 454, column: 3, scope: !1476)
!1483 = !DILocation(line: 455, column: 32, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 455, column: 6)
!1485 = !DILocation(line: 455, column: 37, scope: !1484)
!1486 = !DILocation(line: 455, column: 43, scope: !1484)
!1487 = !DILocation(line: 455, column: 46, scope: !1484)
!1488 = !DILocation(line: 455, column: 51, scope: !1484)
!1489 = !DILocation(line: 455, column: 6, scope: !1458)
!1490 = !DILocation(line: 456, column: 3, scope: !1484)
!1491 = !DILocation(line: 457, column: 6, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 457, column: 6)
!1493 = !DILocation(line: 457, column: 11, scope: !1492)
!1494 = !DILocation(line: 457, column: 6, scope: !1458)
!1495 = !DILocation(line: 457, column: 26, scope: !1492)
!1496 = !DILocation(line: 458, column: 6, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 458, column: 6)
!1498 = !DILocation(line: 458, column: 11, scope: !1497)
!1499 = !DILocation(line: 458, column: 6, scope: !1458)
!1500 = !DILocation(line: 458, column: 26, scope: !1497)
!1501 = !DILocation(line: 459, column: 6, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 459, column: 6)
!1503 = !DILocation(line: 459, column: 11, scope: !1502)
!1504 = !DILocation(line: 459, column: 6, scope: !1458)
!1505 = !DILocation(line: 459, column: 26, scope: !1502)
!1506 = !DILocation(line: 460, column: 6, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 460, column: 6)
!1508 = !DILocation(line: 460, column: 11, scope: !1507)
!1509 = !DILocation(line: 460, column: 6, scope: !1458)
!1510 = !DILocation(line: 460, column: 26, scope: !1507)
!1511 = !DILocation(line: 461, column: 6, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 461, column: 6)
!1513 = !DILocation(line: 461, column: 11, scope: !1512)
!1514 = !DILocation(line: 461, column: 6, scope: !1458)
!1515 = !DILocation(line: 461, column: 26, scope: !1512)
!1516 = !DILocation(line: 462, column: 6, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 462, column: 6)
!1518 = !DILocation(line: 462, column: 11, scope: !1517)
!1519 = !DILocation(line: 462, column: 6, scope: !1458)
!1520 = !DILocation(line: 462, column: 26, scope: !1517)
!1521 = !DILocation(line: 463, column: 6, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 463, column: 6)
!1523 = !DILocation(line: 463, column: 11, scope: !1522)
!1524 = !DILocation(line: 463, column: 6, scope: !1458)
!1525 = !DILocation(line: 463, column: 26, scope: !1522)
!1526 = !DILocation(line: 464, column: 6, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 464, column: 6)
!1528 = !DILocation(line: 464, column: 11, scope: !1527)
!1529 = !DILocation(line: 464, column: 6, scope: !1458)
!1530 = !DILocation(line: 464, column: 26, scope: !1527)
!1531 = !DILocation(line: 465, column: 6, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 465, column: 6)
!1533 = !DILocation(line: 465, column: 11, scope: !1532)
!1534 = !DILocation(line: 465, column: 6, scope: !1458)
!1535 = !DILocation(line: 465, column: 26, scope: !1532)
!1536 = !DILocation(line: 466, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 466, column: 6)
!1538 = !DILocation(line: 466, column: 11, scope: !1537)
!1539 = !DILocation(line: 466, column: 6, scope: !1458)
!1540 = !DILocation(line: 466, column: 26, scope: !1537)
!1541 = !DILocation(line: 467, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 467, column: 6)
!1543 = !DILocation(line: 467, column: 11, scope: !1542)
!1544 = !DILocation(line: 467, column: 6, scope: !1458)
!1545 = !DILocation(line: 467, column: 26, scope: !1542)
!1546 = !DILocation(line: 468, column: 6, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 468, column: 6)
!1548 = !DILocation(line: 468, column: 11, scope: !1547)
!1549 = !DILocation(line: 468, column: 6, scope: !1458)
!1550 = !DILocation(line: 468, column: 26, scope: !1547)
!1551 = !DILocation(line: 469, column: 6, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 469, column: 6)
!1553 = !DILocation(line: 469, column: 11, scope: !1552)
!1554 = !DILocation(line: 469, column: 6, scope: !1458)
!1555 = !DILocation(line: 469, column: 26, scope: !1552)
!1556 = !DILocation(line: 470, column: 6, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 470, column: 6)
!1558 = !DILocation(line: 470, column: 11, scope: !1557)
!1559 = !DILocation(line: 470, column: 6, scope: !1458)
!1560 = !DILocation(line: 470, column: 26, scope: !1557)
!1561 = !DILocation(line: 471, column: 6, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 471, column: 6)
!1563 = !DILocation(line: 471, column: 11, scope: !1562)
!1564 = !DILocation(line: 471, column: 6, scope: !1458)
!1565 = !DILocation(line: 471, column: 26, scope: !1562)
!1566 = !DILocation(line: 472, column: 6, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 472, column: 6)
!1568 = !DILocation(line: 472, column: 11, scope: !1567)
!1569 = !DILocation(line: 472, column: 6, scope: !1458)
!1570 = !DILocation(line: 472, column: 26, scope: !1567)
!1571 = !DILocation(line: 473, column: 6, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 473, column: 6)
!1573 = !DILocation(line: 473, column: 11, scope: !1572)
!1574 = !DILocation(line: 473, column: 6, scope: !1458)
!1575 = !DILocation(line: 473, column: 26, scope: !1572)
!1576 = !DILocation(line: 474, column: 6, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 474, column: 6)
!1578 = !DILocation(line: 474, column: 11, scope: !1577)
!1579 = !DILocation(line: 474, column: 6, scope: !1458)
!1580 = !DILocation(line: 474, column: 27, scope: !1577)
!1581 = !DILocation(line: 475, column: 6, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 475, column: 6)
!1583 = !DILocation(line: 475, column: 11, scope: !1582)
!1584 = !DILocation(line: 475, column: 6, scope: !1458)
!1585 = !DILocation(line: 475, column: 32, scope: !1582)
!1586 = !DILocation(line: 477, column: 50, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1458, file: !9, line: 477, column: 6)
!1588 = !DILocation(line: 477, column: 6, scope: !1458)
!1589 = !DILocation(line: 478, column: 3, scope: !1587)
!1590 = !DILocation(line: 478, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !9, line: 478, column: 3)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !9, line: 478, column: 3)
!1593 = !{i32 -2141469983}
!1594 = !DILocation(line: 478, column: 3, scope: !1592)
!1595 = !DILocation(line: 480, column: 3, scope: !1587)
!1596 = !DILocation(line: 480, column: 3, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1587, file: !9, line: 480, column: 3)
!1598 = !DILocation(line: 480, column: 3, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1597, file: !9, line: 480, column: 3)
!1600 = !DILocation(line: 480, column: 3, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !9, line: 480, column: 3)
!1602 = !{i64 2153497516, i64 2153497545, i64 2153497591, i64 2153497649, i64 2153497703, i64 2153497757, i64 2153497812, i64 2153497843}
!1603 = !DILocation(line: 483, column: 2, scope: !1458)
!1604 = !DILocation(line: 484, column: 1, scope: !1458)
!1605 = !DISubprogram(name: "kmalloc_trace", scope: !9, file: !9, line: 525, type: !1606, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!107, !1608, !104, !109}
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !1610, line: 325, flags: DIFlagFwdDecl)
!1610 = !DIFile(filename: "./include/linux/signal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a341e528b0cfe0aab192e7ef20675122")
!1611 = distinct !DISubprogram(name: "kmalloc_type", scope: !9, file: !9, line: 401, type: !1612, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1614)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!47, !104, !106}
!1614 = !{!1615, !1616}
!1615 = !DILocalVariable(name: "flags", arg: 1, scope: !1611, file: !9, line: 401, type: !104)
!1616 = !DILocalVariable(name: "caller", arg: 2, scope: !1611, file: !9, line: 401, type: !106)
!1617 = !DILocation(line: 401, column: 67, scope: !1611)
!1618 = !DILocation(line: 401, column: 88, scope: !1611)
!1619 = !DILocation(line: 407, column: 6, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1611, file: !9, line: 407, column: 6)
!1621 = !DILocation(line: 407, column: 6, scope: !1611)
!1622 = !DILocation(line: 413, column: 3, scope: !1620)
!1623 = !DILocation(line: 423, column: 38, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1611, file: !9, line: 423, column: 6)
!1625 = !DILocation(line: 423, column: 44, scope: !1624)
!1626 = !DILocation(line: 423, column: 6, scope: !1611)
!1627 = !DILocation(line: 424, column: 3, scope: !1624)
!1628 = !DILocation(line: 426, column: 3, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1611, file: !9, line: 425, column: 6)
!1630 = !DILocation(line: 429, column: 1, scope: !1611)
!1631 = !DISubprogram(name: "__kmalloc", scope: !9, file: !9, line: 488, type: !1395, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1632 = !DISubprogram(name: "__compiletime_assert_245", scope: !9, file: !9, line: 478, type: !1633, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null}
!1635 = !DISubprogram(name: "krealloc", scope: !9, file: !9, line: 226, type: !1636, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!107, !462, !109, !104}
!1638 = distinct !DISubprogram(name: "size_add", scope: !1639, file: !1639, line: 208, type: !1640, scopeLine: 209, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1642)
!1639 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!109, !109, !109}
!1642 = !{!1643, !1644, !1645}
!1643 = !DILocalVariable(name: "addend1", arg: 1, scope: !1638, file: !1639, line: 208, type: !109)
!1644 = !DILocalVariable(name: "addend2", arg: 2, scope: !1638, file: !1639, line: 208, type: !109)
!1645 = !DILocalVariable(name: "bytes", scope: !1638, file: !1639, line: 210, type: !109)
!1646 = !DILocation(line: 208, column: 51, scope: !1638)
!1647 = !DILocation(line: 208, column: 67, scope: !1638)
!1648 = !DILocation(line: 210, column: 2, scope: !1638)
!1649 = !DILocation(line: 210, column: 9, scope: !1638)
!1650 = !DILocation(line: 212, column: 6, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1638, file: !1639, line: 212, column: 6)
!1652 = !DILocation(line: 212, column: 6, scope: !1638)
!1653 = !DILocation(line: 213, column: 3, scope: !1651)
!1654 = !DILocation(line: 215, column: 9, scope: !1638)
!1655 = !DILocation(line: 215, column: 2, scope: !1638)
!1656 = !DILocation(line: 216, column: 1, scope: !1638)
!1657 = distinct !DISubprogram(name: "size_mul", scope: !1639, file: !1639, line: 189, type: !1640, scopeLine: 190, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1658)
!1658 = !{!1659, !1660, !1661}
!1659 = !DILocalVariable(name: "factor1", arg: 1, scope: !1657, file: !1639, line: 189, type: !109)
!1660 = !DILocalVariable(name: "factor2", arg: 2, scope: !1657, file: !1639, line: 189, type: !109)
!1661 = !DILocalVariable(name: "bytes", scope: !1657, file: !1639, line: 191, type: !109)
!1662 = !DILocation(line: 189, column: 51, scope: !1657)
!1663 = !DILocation(line: 189, column: 67, scope: !1657)
!1664 = !DILocation(line: 191, column: 2, scope: !1657)
!1665 = !DILocation(line: 191, column: 9, scope: !1657)
!1666 = !DILocation(line: 193, column: 6, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1657, file: !1639, line: 193, column: 6)
!1668 = !DILocation(line: 193, column: 6, scope: !1657)
!1669 = !DILocation(line: 194, column: 3, scope: !1667)
!1670 = !DILocation(line: 196, column: 9, scope: !1657)
!1671 = !DILocation(line: 196, column: 2, scope: !1657)
!1672 = !DILocation(line: 197, column: 1, scope: !1657)
!1673 = distinct !DISubprogram(name: "__must_check_overflow", scope: !1639, file: !1639, line: 51, type: !1674, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!460, !460}
!1676 = !{!1677}
!1677 = !DILocalVariable(name: "overflow", arg: 1, scope: !1673, file: !1639, line: 51, type: !460)
!1678 = !DILocation(line: 51, column: 60, scope: !1673)
!1679 = !DILocation(line: 53, column: 9, scope: !1673)
!1680 = !DILocation(line: 53, column: 2, scope: !1673)
!1681 = distinct !DISubprogram(name: "nla_put_u32", scope: !12, file: !12, line: 1353, type: !1682, scopeLine: 1354, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1684)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!103, !683, !103, !164}
!1684 = !{!1685, !1686, !1687, !1688}
!1685 = !DILocalVariable(name: "skb", arg: 1, scope: !1681, file: !12, line: 1353, type: !683)
!1686 = !DILocalVariable(name: "attrtype", arg: 2, scope: !1681, file: !12, line: 1353, type: !103)
!1687 = !DILocalVariable(name: "value", arg: 3, scope: !1681, file: !12, line: 1353, type: !164)
!1688 = !DILocalVariable(name: "tmp", scope: !1681, file: !12, line: 1355, type: !164)
!1689 = !DILocation(line: 1353, column: 47, scope: !1681)
!1690 = !DILocation(line: 1353, column: 56, scope: !1681)
!1691 = !DILocation(line: 1353, column: 70, scope: !1681)
!1692 = !DILocation(line: 1355, column: 2, scope: !1681)
!1693 = !DILocation(line: 1355, column: 6, scope: !1681)
!1694 = !DILocation(line: 1355, column: 12, scope: !1681)
!1695 = !DILocation(line: 1357, column: 17, scope: !1681)
!1696 = !DILocation(line: 1357, column: 22, scope: !1681)
!1697 = !DILocation(line: 1357, column: 9, scope: !1681)
!1698 = !DILocation(line: 1358, column: 1, scope: !1681)
!1699 = !DILocation(line: 1357, column: 2, scope: !1681)
!1700 = distinct !DISubprogram(name: "nla_put_u64_64bit", scope: !12, file: !12, line: 1406, type: !1701, scopeLine: 1408, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1703)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!103, !683, !103, !176, !103}
!1703 = !{!1704, !1705, !1706, !1707, !1708}
!1704 = !DILocalVariable(name: "skb", arg: 1, scope: !1700, file: !12, line: 1406, type: !683)
!1705 = !DILocalVariable(name: "attrtype", arg: 2, scope: !1700, file: !12, line: 1406, type: !103)
!1706 = !DILocalVariable(name: "value", arg: 3, scope: !1700, file: !12, line: 1407, type: !176)
!1707 = !DILocalVariable(name: "padattr", arg: 4, scope: !1700, file: !12, line: 1407, type: !103)
!1708 = !DILocalVariable(name: "tmp", scope: !1700, file: !12, line: 1409, type: !176)
!1709 = !DILocation(line: 1406, column: 53, scope: !1700)
!1710 = !DILocation(line: 1406, column: 62, scope: !1700)
!1711 = !DILocation(line: 1407, column: 13, scope: !1700)
!1712 = !DILocation(line: 1407, column: 24, scope: !1700)
!1713 = !DILocation(line: 1409, column: 2, scope: !1700)
!1714 = !DILocation(line: 1409, column: 6, scope: !1700)
!1715 = !DILocation(line: 1409, column: 12, scope: !1700)
!1716 = !DILocation(line: 1411, column: 23, scope: !1700)
!1717 = !DILocation(line: 1411, column: 28, scope: !1700)
!1718 = !DILocation(line: 1411, column: 57, scope: !1700)
!1719 = !DILocation(line: 1411, column: 9, scope: !1700)
!1720 = !DILocation(line: 1412, column: 1, scope: !1700)
!1721 = !DILocation(line: 1411, column: 2, scope: !1700)
!1722 = !DISubprogram(name: "nla_get_range_unsigned", scope: !12, file: !12, line: 1990, type: !1723, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !149, !172}
!1725 = !DISubprogram(name: "nla_get_range_signed", scope: !12, file: !12, line: 1992, type: !1726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{null, !149, !181}
!1728 = distinct !DISubprogram(name: "nla_put_s64", scope: !12, file: !12, line: 1506, type: !1729, scopeLine: 1508, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1731)
!1729 = !DISubroutineType(types: !1730)
!1730 = !{!103, !683, !103, !185, !103}
!1731 = !{!1732, !1733, !1734, !1735, !1736}
!1732 = !DILocalVariable(name: "skb", arg: 1, scope: !1728, file: !12, line: 1506, type: !683)
!1733 = !DILocalVariable(name: "attrtype", arg: 2, scope: !1728, file: !12, line: 1506, type: !103)
!1734 = !DILocalVariable(name: "value", arg: 3, scope: !1728, file: !12, line: 1506, type: !185)
!1735 = !DILocalVariable(name: "padattr", arg: 4, scope: !1728, file: !12, line: 1507, type: !103)
!1736 = !DILocalVariable(name: "tmp", scope: !1728, file: !12, line: 1509, type: !185)
!1737 = !DILocation(line: 1506, column: 47, scope: !1728)
!1738 = !DILocation(line: 1506, column: 56, scope: !1728)
!1739 = !DILocation(line: 1506, column: 70, scope: !1728)
!1740 = !DILocation(line: 1507, column: 14, scope: !1728)
!1741 = !DILocation(line: 1509, column: 2, scope: !1728)
!1742 = !DILocation(line: 1509, column: 6, scope: !1728)
!1743 = !DILocation(line: 1509, column: 12, scope: !1728)
!1744 = !DILocation(line: 1511, column: 23, scope: !1728)
!1745 = !DILocation(line: 1511, column: 28, scope: !1728)
!1746 = !DILocation(line: 1511, column: 57, scope: !1728)
!1747 = !DILocation(line: 1511, column: 9, scope: !1728)
!1748 = !DILocation(line: 1512, column: 1, scope: !1728)
!1749 = !DILocation(line: 1511, column: 2, scope: !1728)
!1750 = !DISubprogram(name: "nla_put", scope: !12, file: !12, line: 539, type: !1751, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!103, !683, !103, !103, !462}
!1753 = !DISubprogram(name: "nla_put_64bit", scope: !12, file: !12, line: 540, type: !1754, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!103, !683, !103, !103, !462, !103}
!1756 = distinct !DISubprogram(name: "nla_nest_start_noflag", scope: !12, file: !12, line: 1808, type: !1349, scopeLine: 1810, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1757)
!1757 = !{!1758, !1759, !1760}
!1758 = !DILocalVariable(name: "skb", arg: 1, scope: !1756, file: !12, line: 1808, type: !683)
!1759 = !DILocalVariable(name: "attrtype", arg: 2, scope: !1756, file: !12, line: 1809, type: !103)
!1760 = !DILocalVariable(name: "start", scope: !1756, file: !12, line: 1811, type: !118)
!1761 = !DILocation(line: 1808, column: 68, scope: !1756)
!1762 = !DILocation(line: 1809, column: 14, scope: !1756)
!1763 = !DILocation(line: 1811, column: 2, scope: !1756)
!1764 = !DILocation(line: 1811, column: 17, scope: !1756)
!1765 = !DILocation(line: 1811, column: 59, scope: !1756)
!1766 = !DILocation(line: 1811, column: 42, scope: !1756)
!1767 = !DILocation(line: 1813, column: 14, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1756, file: !12, line: 1813, column: 6)
!1769 = !DILocation(line: 1813, column: 19, scope: !1768)
!1770 = !DILocation(line: 1813, column: 6, scope: !1768)
!1771 = !DILocation(line: 1813, column: 38, scope: !1768)
!1772 = !DILocation(line: 1813, column: 6, scope: !1756)
!1773 = !DILocation(line: 1814, column: 3, scope: !1768)
!1774 = !DILocation(line: 1816, column: 9, scope: !1756)
!1775 = !DILocation(line: 1816, column: 2, scope: !1756)
!1776 = !DILocation(line: 1817, column: 1, scope: !1756)
!1777 = distinct !DISubprogram(name: "skb_tail_pointer", scope: !685, file: !685, line: 2525, type: !1778, scopeLine: 2526, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1782)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!123, !1780}
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!1782 = !{!1783}
!1783 = !DILocalVariable(name: "skb", arg: 1, scope: !1777, file: !685, line: 2525, type: !1780)
!1784 = !DILocation(line: 2525, column: 69, scope: !1777)
!1785 = !DILocation(line: 2527, column: 9, scope: !1777)
!1786 = !DILocation(line: 2527, column: 14, scope: !1777)
!1787 = !DILocation(line: 2527, column: 21, scope: !1777)
!1788 = !DILocation(line: 2527, column: 26, scope: !1777)
!1789 = !DILocation(line: 2527, column: 19, scope: !1777)
!1790 = !DILocation(line: 2527, column: 2, scope: !1777)
!1791 = distinct !DISubprogram(name: "nlmsg_trim", scope: !12, file: !12, line: 1034, type: !1792, scopeLine: 1035, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !16, retainedNodes: !1794)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{null, !683, !462}
!1794 = !{!1795, !1796, !1797, !1801}
!1795 = !DILocalVariable(name: "skb", arg: 1, scope: !1791, file: !12, line: 1034, type: !683)
!1796 = !DILocalVariable(name: "mark", arg: 2, scope: !1791, file: !12, line: 1034, type: !462)
!1797 = !DILocalVariable(name: "__ret_warn_on", scope: !1798, file: !12, line: 1037, type: !103)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !12, line: 1037, column: 3)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !12, line: 1036, column: 12)
!1800 = distinct !DILexicalBlock(scope: !1791, file: !12, line: 1036, column: 6)
!1801 = !DILocalVariable(name: "__flags", scope: !1802, file: !12, line: 1037, type: !103)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !12, line: 1037, column: 3)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !12, line: 1037, column: 3)
!1804 = !DILocation(line: 1034, column: 47, scope: !1791)
!1805 = !DILocation(line: 1034, column: 64, scope: !1791)
!1806 = !DILocation(line: 1036, column: 6, scope: !1800)
!1807 = !DILocation(line: 1036, column: 6, scope: !1791)
!1808 = !DILocation(line: 1037, column: 3, scope: !1798)
!1809 = !DILocation(line: 1037, column: 3, scope: !1803)
!1810 = !DILocation(line: 1037, column: 3, scope: !1802)
!1811 = !DILocation(line: 1037, column: 3, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1802, file: !12, line: 1037, column: 3)
!1813 = !DILocation(line: 1037, column: 3, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1802, file: !12, line: 1037, column: 3)
!1815 = !{i64 2155495234, i64 2155495263, i64 2155495309, i64 2155495367, i64 2155495421, i64 2155495475, i64 2155495530, i64 2155495561, i64 2155495869, i64 2155495875, i64 2155495922, i64 2155495945, i64 2155495971}
!1816 = !DILocation(line: 1037, column: 3, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1802, file: !12, line: 1037, column: 3)
!1818 = !DILocation(line: 1037, column: 3, scope: !1799)
!1819 = !DILocation(line: 1038, column: 12, scope: !1799)
!1820 = !DILocation(line: 1038, column: 35, scope: !1799)
!1821 = !DILocation(line: 1038, column: 42, scope: !1799)
!1822 = !DILocation(line: 1038, column: 47, scope: !1799)
!1823 = !DILocation(line: 1038, column: 40, scope: !1799)
!1824 = !DILocation(line: 1038, column: 17, scope: !1799)
!1825 = !DILocation(line: 1038, column: 3, scope: !1799)
!1826 = !DILocation(line: 1039, column: 2, scope: !1799)
!1827 = !DILocation(line: 1040, column: 1, scope: !1791)
!1828 = !DISubprogram(name: "skb_trim", scope: !685, file: !685, line: 3083, type: !1829, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{null, !683, !19}

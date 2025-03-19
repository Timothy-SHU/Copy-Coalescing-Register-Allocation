; ModuleID = 'security/selinux/netnode.c'
source_filename = "security/selinux/netnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_selinux__610_305_sel_netnode_init\22, \22a\22\09\09"
module asm "__initcall__kmod_selinux__610_305_sel_netnode_init6:\09\09\09"
module asm ".long\09__initstub__kmod_selinux__610_305_sel_netnode_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sel_netnode_bkt = type { i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sel_netnode = type { %struct.netnode_security_struct, %struct.list_head, %struct.callback_head }
%struct.netnode_security_struct = type { %union.anon, i32, i16 }
%union.anon = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.0 }
%union.anon.0 = type { [4 x i32] }
%struct.callback_head = type { ptr, ptr }

@sel_netnode_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !0
@sel_netnode_hash = internal global [256 x %struct.sel_netnode_bkt] zeroinitializer, align 16, !dbg !100
@__UNIQUE_ID___addressable___initstub__kmod_selinux__610_305_sel_netnode_init6611 = internal global ptr @__initstub__kmod_selinux__610_305_sel_netnode_init6, section ".discard.addressable", align 8, !dbg !98
@.str = private unnamed_addr constant [27 x i8] c"security/selinux/netnode.c\00", align 1, !dbg !109
@.str.1 = private unnamed_addr constant [68 x i8] c"\014SELinux: failure in %s(), unable to determine network node label\0A\00", align 1, !dbg !115
@__func__.sel_netnode_sid_slow = private unnamed_addr constant [21 x i8] c"sel_netnode_sid_slow\00", align 1, !dbg !120
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !126
@selinux_enabled_boot = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_selinux__610_305_sel_netnode_init6611], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sel_netnode_sid(ptr noundef %addr, i16 noundef zeroext %family, ptr noundef %sid) #0 align 16 !dbg !174 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %sid.addr = alloca ptr, align 8
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !179, metadata !DIExpression()), !dbg !183
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !180, metadata !DIExpression()), !dbg !184
  store ptr %sid, ptr %sid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !181, metadata !DIExpression()), !dbg !185
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !186
  call void @llvm.dbg.declare(metadata ptr %node, metadata !182, metadata !DIExpression()), !dbg !187
  call void @rcu_read_lock() #17, !dbg !188
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !189
  %1 = load i16, ptr %family.addr, align 2, !dbg !190
  %call = call ptr @sel_netnode_find(ptr noundef %0, i16 noundef zeroext %1) #17, !dbg !191
  store ptr %call, ptr %node, align 8, !dbg !192
  %2 = load ptr, ptr %node, align 8, !dbg !193
  %cmp = icmp ne ptr %2, null, !dbg !195
  br i1 %cmp, label %if.then, label %if.end, !dbg !196

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !197
  %nsec = getelementptr inbounds %struct.sel_netnode, ptr %3, i32 0, i32 0, !dbg !199
  %sid1 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec, i32 0, i32 1, !dbg !200
  %4 = load i32, ptr %sid1, align 8, !dbg !200
  %5 = load ptr, ptr %sid.addr, align 8, !dbg !201
  store i32 %4, ptr %5, align 4, !dbg !202
  call void @rcu_read_unlock() #17, !dbg !203
  store i32 0, ptr %retval, align 4, !dbg !204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !204

if.end:                                           ; preds = %entry
  call void @rcu_read_unlock() #17, !dbg !205
  %6 = load ptr, ptr %addr.addr, align 8, !dbg !206
  %7 = load i16, ptr %family.addr, align 2, !dbg !207
  %8 = load ptr, ptr %sid.addr, align 8, !dbg !208
  %call2 = call i32 @sel_netnode_sid_slow(ptr noundef %6, i16 noundef zeroext %7, ptr noundef %8) #17, !dbg !209
  store i32 %call2, ptr %retval, align 4, !dbg !210
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !210

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !211
  %9 = load i32, ptr %retval, align 4, !dbg !211
  ret i32 %9, !dbg !211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !212 {
entry:
  call void @__rcu_read_lock() #17, !dbg !216
  br label %do.body, !dbg !217

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !218

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !220

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !221

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !223
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sel_netnode_find(ptr noundef %addr, i16 noundef zeroext %family) #0 align 16 !dbg !224 {
entry:
  %retval = alloca ptr, align 8
  %addr.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %idx = alloca i32, align 4
  %node = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  %__mptr38 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !230, metadata !DIExpression()), !dbg !240
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !231, metadata !DIExpression()), !dbg !241
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !242
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !232, metadata !DIExpression()), !dbg !243
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !244
  call void @llvm.dbg.declare(metadata ptr %node, metadata !233, metadata !DIExpression()), !dbg !245
  %0 = load i16, ptr %family.addr, align 2, !dbg !246
  %conv = zext i16 %0 to i32, !dbg !246
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb1
  ], !dbg !247

sw.bb:                                            ; preds = %entry
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !248
  %2 = load i32, ptr %1, align 4, !dbg !250
  %call = call i32 @sel_netnode_hashfn_ipv4(i32 noundef %2) #17, !dbg !251
  store i32 %call, ptr %idx, align 4, !dbg !252
  br label %sw.epilog, !dbg !253

sw.bb1:                                           ; preds = %entry
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !254
  %call2 = call i32 @sel_netnode_hashfn_ipv6(ptr noundef %3) #17, !dbg !255
  store i32 %call2, ptr %idx, align 4, !dbg !256
  br label %sw.epilog, !dbg !257

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !258

do.body:                                          ; preds = %sw.default
  br label %do.body3, !dbg !259

do.body3:                                         ; preds = %do.body
  br label %do.cond, !dbg !261

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !261

do.end:                                           ; preds = %do.cond
  br label %do.body4, !dbg !259

do.body4:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 116, i32 0, i64 12) #16, !dbg !263, !srcloc !265
  br label %do.cond5, !dbg !263

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !263

do.end6:                                          ; preds = %do.cond5
  unreachable, !dbg !259

do.cond7:                                         ; No predecessors!
  br label %do.end8, !dbg !259

do.end8:                                          ; preds = %do.cond7
  store ptr null, ptr %retval, align 8, !dbg !266
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !266

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !234, metadata !DIExpression()), !dbg !267
  br label %do.body9, !dbg !268

do.body9:                                         ; preds = %sw.epilog
  br label %do.cond10, !dbg !270

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !270

do.end11:                                         ; preds = %do.cond10
  %4 = load i32, ptr %idx, align 4, !dbg !268
  %idxprom = zext i32 %4 to i64, !dbg !268
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom, !dbg !268
  %list = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !268
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !268
  %5 = load volatile ptr, ptr %next, align 8, !dbg !268
  store ptr %5, ptr %tmp, align 8, !dbg !270
  %6 = load ptr, ptr %tmp, align 8, !dbg !268
  store ptr %6, ptr %__mptr, align 8, !dbg !267
  %7 = load ptr, ptr %__mptr, align 8, !dbg !267
  %add.ptr = getelementptr i8, ptr %7, i64 -24, !dbg !267
  store ptr %add.ptr, ptr %tmp12, align 8, !dbg !267
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !272
  %8 = load ptr, ptr %tmp12, align 8, !dbg !267
  store ptr %8, ptr %node, align 8, !dbg !272
  br label %for.cond, !dbg !272

for.cond:                                         ; preds = %do.end41, %do.end11
  %9 = load ptr, ptr %node, align 8, !dbg !273
  %list13 = getelementptr inbounds %struct.sel_netnode, ptr %9, i32 0, i32 1, !dbg !273
  %10 = load i32, ptr %idx, align 4, !dbg !273
  %idxprom14 = zext i32 %10 to i64, !dbg !273
  %arrayidx15 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom14, !dbg !273
  %list16 = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx15, i32 0, i32 1, !dbg !273
  %cmp = icmp ne ptr %list13, %list16, !dbg !273
  br i1 %cmp, label %for.body, label %for.end, !dbg !272

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %node, align 8, !dbg !274
  %nsec = getelementptr inbounds %struct.sel_netnode, ptr %11, i32 0, i32 0, !dbg !276
  %family18 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec, i32 0, i32 2, !dbg !277
  %12 = load i16, ptr %family18, align 4, !dbg !277
  %conv19 = zext i16 %12 to i32, !dbg !274
  %13 = load i16, ptr %family.addr, align 2, !dbg !278
  %conv20 = zext i16 %13 to i32, !dbg !278
  %cmp21 = icmp eq i32 %conv19, %conv20, !dbg !279
  br i1 %cmp21, label %if.then, label %if.end37, !dbg !280

if.then:                                          ; preds = %for.body
  %14 = load i16, ptr %family.addr, align 2, !dbg !281
  %conv23 = zext i16 %14 to i32, !dbg !281
  switch i32 %conv23, label %sw.epilog36 [
    i32 2, label %sw.bb24
    i32 10, label %sw.bb30
  ], !dbg !282

sw.bb24:                                          ; preds = %if.then
  %15 = load ptr, ptr %node, align 8, !dbg !283
  %nsec25 = getelementptr inbounds %struct.sel_netnode, ptr %15, i32 0, i32 0, !dbg !286
  %addr26 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec25, i32 0, i32 0, !dbg !287
  %16 = load i32, ptr %addr26, align 8, !dbg !288
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !289
  %18 = load i32, ptr %17, align 4, !dbg !290
  %cmp27 = icmp eq i32 %16, %18, !dbg !291
  br i1 %cmp27, label %if.then29, label %if.end, !dbg !292

if.then29:                                        ; preds = %sw.bb24
  %19 = load ptr, ptr %node, align 8, !dbg !293
  store ptr %19, ptr %retval, align 8, !dbg !294
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !294

if.end:                                           ; preds = %sw.bb24
  br label %sw.epilog36, !dbg !295

sw.bb30:                                          ; preds = %if.then
  %20 = load ptr, ptr %node, align 8, !dbg !296
  %nsec31 = getelementptr inbounds %struct.sel_netnode, ptr %20, i32 0, i32 0, !dbg !298
  %addr32 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec31, i32 0, i32 0, !dbg !299
  %21 = load ptr, ptr %addr.addr, align 8, !dbg !300
  %call33 = call zeroext i1 @ipv6_addr_equal(ptr noundef %addr32, ptr noundef %21) #17, !dbg !301
  br i1 %call33, label %if.then34, label %if.end35, !dbg !302

if.then34:                                        ; preds = %sw.bb30
  %22 = load ptr, ptr %node, align 8, !dbg !303
  store ptr %22, ptr %retval, align 8, !dbg !304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !304

if.end35:                                         ; preds = %sw.bb30
  br label %sw.epilog36, !dbg !305

sw.epilog36:                                      ; preds = %if.then, %if.end35, %if.end
  br label %if.end37, !dbg !306

if.end37:                                         ; preds = %sw.epilog36, %for.body
  br label %for.inc, !dbg !278

for.inc:                                          ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr38) #16, !dbg !307
  call void @llvm.dbg.declare(metadata ptr %__mptr38, metadata !237, metadata !DIExpression()), !dbg !307
  br label %do.body39, !dbg !308

do.body39:                                        ; preds = %for.inc
  br label %do.cond40, !dbg !310

do.cond40:                                        ; preds = %do.body39
  br label %do.end41, !dbg !310

do.end41:                                         ; preds = %do.cond40
  %23 = load ptr, ptr %node, align 8, !dbg !308
  %list43 = getelementptr inbounds %struct.sel_netnode, ptr %23, i32 0, i32 1, !dbg !308
  %next44 = getelementptr inbounds %struct.list_head, ptr %list43, i32 0, i32 0, !dbg !308
  %24 = load volatile ptr, ptr %next44, align 8, !dbg !308
  store ptr %24, ptr %tmp42, align 8, !dbg !310
  %25 = load ptr, ptr %tmp42, align 8, !dbg !308
  store ptr %25, ptr %__mptr38, align 8, !dbg !307
  %26 = load ptr, ptr %__mptr38, align 8, !dbg !307
  %add.ptr46 = getelementptr i8, ptr %26, i64 -24, !dbg !307
  store ptr %add.ptr46, ptr %tmp45, align 8, !dbg !307
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr38) #16, !dbg !273
  %27 = load ptr, ptr %tmp45, align 8, !dbg !307
  store ptr %27, ptr %node, align 8, !dbg !273
  br label %for.cond, !dbg !273, !llvm.loop !312

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !316
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !316

cleanup:                                          ; preds = %for.end, %if.then34, %if.then29, %do.end8
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !317
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !317
  %28 = load ptr, ptr %retval, align 8, !dbg !317
  ret ptr %28, !dbg !317
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !318 {
entry:
  br label %do.body, !dbg !319

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !320

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #17, !dbg !322
  br label %do.body1, !dbg !323

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !324

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !326
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_netnode_sid_slow(ptr noundef %addr, i16 noundef zeroext %family, ptr noundef %sid) #0 align 16 !dbg !327 {
entry:
  %retval = alloca i32, align 4
  %addr.addr = alloca ptr, align 8
  %family.addr = alloca i16, align 2
  %sid.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %node = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !329, metadata !DIExpression()), !dbg !335
  store i16 %family, ptr %family.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %family.addr, metadata !330, metadata !DIExpression()), !dbg !336
  store ptr %sid, ptr %sid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !331, metadata !DIExpression()), !dbg !337
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #16, !dbg !338
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !332, metadata !DIExpression()), !dbg !339
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !340
  call void @llvm.dbg.declare(metadata ptr %node, metadata !333, metadata !DIExpression()), !dbg !341
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #16, !dbg !342
  call void @llvm.dbg.declare(metadata ptr %new, metadata !334, metadata !DIExpression()), !dbg !343
  call void @spin_lock_bh(ptr noundef @sel_netnode_lock) #17, !dbg !344
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !345
  %1 = load i16, ptr %family.addr, align 2, !dbg !346
  %call = call ptr @sel_netnode_find(ptr noundef %0, i16 noundef zeroext %1) #17, !dbg !347
  store ptr %call, ptr %node, align 8, !dbg !348
  %2 = load ptr, ptr %node, align 8, !dbg !349
  %cmp = icmp ne ptr %2, null, !dbg !351
  br i1 %cmp, label %if.then, label %if.end, !dbg !352

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %node, align 8, !dbg !353
  %nsec = getelementptr inbounds %struct.sel_netnode, ptr %3, i32 0, i32 0, !dbg !355
  %sid1 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec, i32 0, i32 1, !dbg !356
  %4 = load i32, ptr %sid1, align 8, !dbg !356
  %5 = load ptr, ptr %sid.addr, align 8, !dbg !357
  store i32 %4, ptr %5, align 4, !dbg !358
  call void @spin_unlock_bh(ptr noundef @sel_netnode_lock) #17, !dbg !359
  store i32 0, ptr %retval, align 4, !dbg !360
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !360

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 56, i32 noundef 2080) #18, !dbg !361
  store ptr %call2, ptr %new, align 8, !dbg !362
  %6 = load i16, ptr %family.addr, align 2, !dbg !363
  %conv = zext i16 %6 to i32, !dbg !363
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb8
  ], !dbg !364

sw.bb:                                            ; preds = %if.end
  %7 = load ptr, ptr %addr.addr, align 8, !dbg !365
  %8 = load ptr, ptr %sid.addr, align 8, !dbg !367
  %call3 = call i32 @security_node_sid(i16 noundef zeroext 2, ptr noundef %7, i32 noundef 4, ptr noundef %8) #17, !dbg !368
  store i32 %call3, ptr %ret, align 4, !dbg !369
  %9 = load ptr, ptr %new, align 8, !dbg !370
  %tobool = icmp ne ptr %9, null, !dbg !370
  br i1 %tobool, label %if.then4, label %if.end7, !dbg !372

if.then4:                                         ; preds = %sw.bb
  %10 = load ptr, ptr %addr.addr, align 8, !dbg !373
  %11 = load i32, ptr %10, align 4, !dbg !374
  %12 = load ptr, ptr %new, align 8, !dbg !375
  %nsec5 = getelementptr inbounds %struct.sel_netnode, ptr %12, i32 0, i32 0, !dbg !376
  %addr6 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec5, i32 0, i32 0, !dbg !377
  store i32 %11, ptr %addr6, align 8, !dbg !378
  br label %if.end7, !dbg !375

if.end7:                                          ; preds = %if.then4, %sw.bb
  br label %sw.epilog, !dbg !379

sw.bb8:                                           ; preds = %if.end
  %13 = load ptr, ptr %addr.addr, align 8, !dbg !380
  %14 = load ptr, ptr %sid.addr, align 8, !dbg !381
  %call9 = call i32 @security_node_sid(i16 noundef zeroext 10, ptr noundef %13, i32 noundef 16, ptr noundef %14) #17, !dbg !382
  store i32 %call9, ptr %ret, align 4, !dbg !383
  %15 = load ptr, ptr %new, align 8, !dbg !384
  %tobool10 = icmp ne ptr %15, null, !dbg !384
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !386

if.then11:                                        ; preds = %sw.bb8
  %16 = load ptr, ptr %new, align 8, !dbg !387
  %nsec12 = getelementptr inbounds %struct.sel_netnode, ptr %16, i32 0, i32 0, !dbg !388
  %addr13 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec12, i32 0, i32 0, !dbg !389
  %17 = load ptr, ptr %addr.addr, align 8, !dbg !390
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %addr13, ptr align 4 %17, i64 16, i1 false), !dbg !391
  br label %if.end14, !dbg !387

if.end14:                                         ; preds = %if.then11, %sw.bb8
  br label %sw.epilog, !dbg !392

sw.default:                                       ; preds = %if.end
  br label %do.body, !dbg !393

do.body:                                          ; preds = %sw.default
  br label %do.body15, !dbg !394

do.body15:                                        ; preds = %do.body
  br label %do.cond, !dbg !396

do.cond:                                          ; preds = %do.body15
  br label %do.end, !dbg !396

do.end:                                           ; preds = %do.cond
  br label %do.body16, !dbg !394

do.body16:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 219, i32 0, i64 12) #16, !dbg !398, !srcloc !400
  br label %do.cond17, !dbg !398

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !398

do.end18:                                         ; preds = %do.cond17
  unreachable, !dbg !394

do.cond19:                                        ; No predecessors!
  br label %do.end20, !dbg !394

do.end20:                                         ; preds = %do.cond19
  store i32 -22, ptr %ret, align 4, !dbg !401
  br label %sw.epilog, !dbg !402

sw.epilog:                                        ; preds = %do.end20, %if.end14, %if.end7
  %18 = load i32, ptr %ret, align 4, !dbg !403
  %cmp21 = icmp eq i32 %18, 0, !dbg !405
  br i1 %cmp21, label %land.lhs.true, label %if.else, !dbg !406

land.lhs.true:                                    ; preds = %sw.epilog
  %19 = load ptr, ptr %new, align 8, !dbg !407
  %tobool23 = icmp ne ptr %19, null, !dbg !407
  br i1 %tobool23, label %if.then24, label %if.else, !dbg !408

if.then24:                                        ; preds = %land.lhs.true
  %20 = load i16, ptr %family.addr, align 2, !dbg !409
  %21 = load ptr, ptr %new, align 8, !dbg !411
  %nsec25 = getelementptr inbounds %struct.sel_netnode, ptr %21, i32 0, i32 0, !dbg !412
  %family26 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec25, i32 0, i32 2, !dbg !413
  store i16 %20, ptr %family26, align 4, !dbg !414
  %22 = load ptr, ptr %sid.addr, align 8, !dbg !415
  %23 = load i32, ptr %22, align 4, !dbg !416
  %24 = load ptr, ptr %new, align 8, !dbg !417
  %nsec27 = getelementptr inbounds %struct.sel_netnode, ptr %24, i32 0, i32 0, !dbg !418
  %sid28 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec27, i32 0, i32 1, !dbg !419
  store i32 %23, ptr %sid28, align 8, !dbg !420
  %25 = load ptr, ptr %new, align 8, !dbg !421
  call void @sel_netnode_insert(ptr noundef %25) #17, !dbg !422
  br label %if.end29, !dbg !423

if.else:                                          ; preds = %land.lhs.true, %sw.epilog
  %26 = load ptr, ptr %new, align 8, !dbg !424
  call void @kfree(ptr noundef %26) #17, !dbg !425
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then24
  call void @spin_unlock_bh(ptr noundef @sel_netnode_lock) #17, !dbg !426
  %27 = load i32, ptr %ret, align 4, !dbg !427
  %tobool30 = icmp ne i32 %27, 0, !dbg !427
  %lnot = xor i1 %tobool30, true, !dbg !427
  %lnot31 = xor i1 %lnot, true, !dbg !427
  %lnot.ext = zext i1 %lnot31 to i32, !dbg !427
  %conv32 = sext i32 %lnot.ext to i64, !dbg !427
  %expval = call i64 @llvm.expect.i64(i64 %conv32, i64 0), !dbg !427
  %tobool33 = icmp ne i64 %expval, 0, !dbg !427
  br i1 %tobool33, label %if.then34, label %if.end39, !dbg !429

if.then34:                                        ; preds = %if.end29
  br label %do.body35, !dbg !430

do.body35:                                        ; preds = %if.then34
  br label %do.cond36, !dbg !432

do.cond36:                                        ; preds = %do.body35
  br label %do.end37, !dbg !432

do.end37:                                         ; preds = %do.cond36
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef @.str.1, ptr noundef @__func__.sel_netnode_sid_slow) #19, !dbg !430
  store i32 %call38, ptr %tmp, align 4, !dbg !432
  %28 = load i32, ptr %tmp, align 4, !dbg !430
  br label %if.end39, !dbg !434

if.end39:                                         ; preds = %do.end37, %if.end29
  %29 = load i32, ptr %ret, align 4, !dbg !435
  store i32 %29, ptr %retval, align 4, !dbg !436
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !436

cleanup:                                          ; preds = %if.end39, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #16, !dbg !437
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !437
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #16, !dbg !437
  %30 = load i32, ptr %retval, align 4, !dbg !437
  ret i32 %30, !dbg !437
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sel_netnode_flush() #0 align 16 !dbg !438 {
entry:
  %idx = alloca i32, align 4
  %node = alloca ptr, align 8
  %node_tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !457
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !440, metadata !DIExpression()), !dbg !458
  call void @llvm.lifetime.start.p0(i64 8, ptr %node) #16, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %node, metadata !441, metadata !DIExpression()), !dbg !460
  call void @llvm.lifetime.start.p0(i64 8, ptr %node_tmp) #16, !dbg !459
  call void @llvm.dbg.declare(metadata ptr %node_tmp, metadata !442, metadata !DIExpression()), !dbg !461
  call void @spin_lock_bh(ptr noundef @sel_netnode_lock) #17, !dbg !462
  store i32 0, ptr %idx, align 4, !dbg !463
  br label %for.cond, !dbg !464

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !465
  %cmp = icmp ult i32 %0, 256, !dbg !466
  br i1 %cmp, label %for.body, label %for.end25, !dbg !467

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !468
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !443, metadata !DIExpression()), !dbg !468
  %1 = load i32, ptr %idx, align 4, !dbg !468
  %idxprom = zext i32 %1 to i64, !dbg !468
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom, !dbg !468
  %list = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !468
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !468
  %2 = load ptr, ptr %next, align 8, !dbg !468
  store ptr %2, ptr %__mptr, align 8, !dbg !468
  %3 = load ptr, ptr %__mptr, align 8, !dbg !468
  %add.ptr = getelementptr i8, ptr %3, i64 -24, !dbg !468
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !468
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !469
  %4 = load ptr, ptr %tmp, align 8, !dbg !468
  store ptr %4, ptr %node, align 8, !dbg !469
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #16, !dbg !470
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !449, metadata !DIExpression()), !dbg !470
  %5 = load ptr, ptr %node, align 8, !dbg !470
  %list2 = getelementptr inbounds %struct.sel_netnode, ptr %5, i32 0, i32 1, !dbg !470
  %next3 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !470
  %6 = load ptr, ptr %next3, align 8, !dbg !470
  store ptr %6, ptr %__mptr1, align 8, !dbg !470
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !470
  %add.ptr5 = getelementptr i8, ptr %7, i64 -24, !dbg !470
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !470
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #16, !dbg !469
  %8 = load ptr, ptr %tmp4, align 8, !dbg !470
  store ptr %8, ptr %node_tmp, align 8, !dbg !469
  br label %for.cond6, !dbg !469

for.cond6:                                        ; preds = %for.inc, %for.body
  %9 = load ptr, ptr %node, align 8, !dbg !471
  %list7 = getelementptr inbounds %struct.sel_netnode, ptr %9, i32 0, i32 1, !dbg !471
  %10 = load i32, ptr %idx, align 4, !dbg !471
  %idxprom8 = zext i32 %10 to i64, !dbg !471
  %arrayidx9 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom8, !dbg !471
  %list10 = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx9, i32 0, i32 1, !dbg !471
  %cmp11 = icmp eq ptr %list7, %list10, !dbg !471
  %lnot = xor i1 %cmp11, true, !dbg !471
  br i1 %lnot, label %for.body12, label %for.end, !dbg !469

for.body12:                                       ; preds = %for.cond6
  %11 = load ptr, ptr %node, align 8, !dbg !472
  %list13 = getelementptr inbounds %struct.sel_netnode, ptr %11, i32 0, i32 1, !dbg !473
  call void @list_del_rcu(ptr noundef %list13) #17, !dbg !474
  br label %do.body, !dbg !475

do.body:                                          ; preds = %for.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #16, !dbg !476
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !451, metadata !DIExpression()), !dbg !476
  %12 = load ptr, ptr %node, align 8, !dbg !476
  store ptr %12, ptr %___p, align 8, !dbg !476
  %13 = load ptr, ptr %___p, align 8, !dbg !477
  %tobool = icmp ne ptr %13, null, !dbg !477
  br i1 %tobool, label %if.then, label %if.end, !dbg !476

if.then:                                          ; preds = %do.body
  br label %do.body14, !dbg !479

do.body14:                                        ; preds = %if.then
  br label %do.cond, !dbg !481

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !481

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %___p, align 8, !dbg !479
  %rcu = getelementptr inbounds %struct.sel_netnode, ptr %14, i32 0, i32 2, !dbg !479
  %15 = load ptr, ptr %___p, align 8, !dbg !479
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %15) #17, !dbg !479
  br label %if.end, !dbg !479

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #16, !dbg !475
  br label %do.cond15, !dbg !476

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !476

do.end16:                                         ; preds = %do.cond15
  br label %for.inc, !dbg !483

for.inc:                                          ; preds = %do.end16
  %16 = load ptr, ptr %node_tmp, align 8, !dbg !471
  store ptr %16, ptr %node, align 8, !dbg !471
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #16, !dbg !484
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !455, metadata !DIExpression()), !dbg !484
  %17 = load ptr, ptr %node_tmp, align 8, !dbg !484
  %list18 = getelementptr inbounds %struct.sel_netnode, ptr %17, i32 0, i32 1, !dbg !484
  %next19 = getelementptr inbounds %struct.list_head, ptr %list18, i32 0, i32 0, !dbg !484
  %18 = load ptr, ptr %next19, align 8, !dbg !484
  store ptr %18, ptr %__mptr17, align 8, !dbg !484
  %19 = load ptr, ptr %__mptr17, align 8, !dbg !484
  %add.ptr21 = getelementptr i8, ptr %19, i64 -24, !dbg !484
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !484
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #16, !dbg !471
  %20 = load ptr, ptr %tmp20, align 8, !dbg !484
  store ptr %20, ptr %node_tmp, align 8, !dbg !471
  br label %for.cond6, !dbg !471, !llvm.loop !485

for.end:                                          ; preds = %for.cond6
  %21 = load i32, ptr %idx, align 4, !dbg !487
  %idxprom22 = zext i32 %21 to i64, !dbg !488
  %arrayidx23 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom22, !dbg !488
  %size = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx23, i32 0, i32 0, !dbg !489
  store i32 0, ptr %size, align 8, !dbg !490
  br label %for.inc24, !dbg !491

for.inc24:                                        ; preds = %for.end
  %22 = load i32, ptr %idx, align 4, !dbg !492
  %inc = add i32 %22, 1, !dbg !492
  store i32 %inc, ptr %idx, align 4, !dbg !492
  br label %for.cond, !dbg !493, !llvm.loop !494

for.end25:                                        ; preds = %for.cond
  call void @spin_unlock_bh(ptr noundef @sel_netnode_lock) #17, !dbg !496
  call void @llvm.lifetime.end.p0(i64 8, ptr %node_tmp) #16, !dbg !497
  call void @llvm.lifetime.end.p0(i64 8, ptr %node) #16, !dbg !497
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !497
  ret void, !dbg !497
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_bh(ptr noundef %lock) #3 align 16 !dbg !498 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !504, metadata !DIExpression()), !dbg !505
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !506
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !506
  call void @_raw_spin_lock_bh(ptr noundef %1) #17, !dbg !506
  ret void, !dbg !507
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #4 align 16 !dbg !508 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !515
  call void @__list_del_entry(ptr noundef %0) #17, !dbg !516
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !517
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !518
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !521 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_bh(ptr noundef %lock) #3 align 16 !dbg !525 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !527, metadata !DIExpression()), !dbg !528
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !529
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !529
  call void @_raw_spin_unlock_bh(ptr noundef %1) #17, !dbg !529
  ret void, !dbg !530
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_selinux__610_305_sel_netnode_init6() #6 section ".init.text" align 16 !dbg !531 {
entry:
  %call = call i32 @sel_netnode_init() #19, !dbg !534
  ret i32 %call, !dbg !534
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sel_netnode_init() #6 section ".init.text" align 16 !dbg !535 {
entry:
  %retval = alloca i32, align 4
  %iter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #16, !dbg !538
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !537, metadata !DIExpression()), !dbg !539
  %0 = load i32, ptr @selinux_enabled_boot, align 4, !dbg !540
  %tobool = icmp ne i32 %0, 0, !dbg !540
  br i1 %tobool, label %if.end, label %if.then, !dbg !542

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !543
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !543

if.end:                                           ; preds = %entry
  store i32 0, ptr %iter, align 4, !dbg !544
  br label %for.cond, !dbg !546

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %iter, align 4, !dbg !547
  %cmp = icmp slt i32 %1, 256, !dbg !549
  br i1 %cmp, label %for.body, label %for.end, !dbg !550

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %iter, align 4, !dbg !551
  %idxprom = sext i32 %2 to i64, !dbg !553
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom, !dbg !553
  %list = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !554
  call void @INIT_LIST_HEAD(ptr noundef %list) #17, !dbg !555
  %3 = load i32, ptr %iter, align 4, !dbg !556
  %idxprom1 = sext i32 %3 to i64, !dbg !557
  %arrayidx2 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom1, !dbg !557
  %size = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx2, i32 0, i32 0, !dbg !558
  store i32 0, ptr %size, align 8, !dbg !559
  br label %for.inc, !dbg !560

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %iter, align 4, !dbg !561
  %inc = add i32 %4, 1, !dbg !561
  store i32 %inc, ptr %iter, align 4, !dbg !561
  br label %for.cond, !dbg !562, !llvm.loop !563

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !565
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !565

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #16, !dbg !566
  %5 = load i32, ptr %retval, align 4, !dbg !566
  ret i32 %5, !dbg !566
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !567 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_netnode_hashfn_ipv4(i32 noundef %addr) #0 align 16 !dbg !568 {
entry:
  %addr.addr = alloca i32, align 4
  store i32 %addr, ptr %addr.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !572, metadata !DIExpression()), !dbg !573
  %0 = load i32, ptr %addr.addr, align 4, !dbg !574
  %and = and i32 %0, 255, !dbg !575
  ret i32 %and, !dbg !576
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_netnode_hashfn_ipv6(ptr noundef %addr) #0 align 16 !dbg !577 {
entry:
  %addr.addr = alloca ptr, align 8
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !583, metadata !DIExpression()), !dbg !584
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !585
  %in6_u = getelementptr inbounds %struct.in6_addr, ptr %0, i32 0, i32 0, !dbg !586
  %arrayidx = getelementptr [4 x i32], ptr %in6_u, i64 0, i64 3, !dbg !585
  %1 = load i32, ptr %arrayidx, align 4, !dbg !585
  %and = and i32 %1, 255, !dbg !587
  ret i32 %and, !dbg !588
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @ipv6_addr_equal(ptr noundef %a1, ptr noundef %a2) #4 align 16 !dbg !589 {
entry:
  %a1.addr = alloca ptr, align 8
  %a2.addr = alloca ptr, align 8
  %ul1 = alloca ptr, align 8
  %ul2 = alloca ptr, align 8
  store ptr %a1, ptr %a1.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a1.addr, metadata !596, metadata !DIExpression()), !dbg !600
  store ptr %a2, ptr %a2.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a2.addr, metadata !597, metadata !DIExpression()), !dbg !601
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul1) #16, !dbg !602
  call void @llvm.dbg.declare(metadata ptr %ul1, metadata !598, metadata !DIExpression()), !dbg !603
  %0 = load ptr, ptr %a1.addr, align 8, !dbg !604
  store ptr %0, ptr %ul1, align 8, !dbg !603
  call void @llvm.lifetime.start.p0(i64 8, ptr %ul2) #16, !dbg !605
  call void @llvm.dbg.declare(metadata ptr %ul2, metadata !599, metadata !DIExpression()), !dbg !606
  %1 = load ptr, ptr %a2.addr, align 8, !dbg !607
  store ptr %1, ptr %ul2, align 8, !dbg !606
  %2 = load ptr, ptr %ul1, align 8, !dbg !608
  %arrayidx = getelementptr i64, ptr %2, i64 0, !dbg !608
  %3 = load i64, ptr %arrayidx, align 8, !dbg !608
  %4 = load ptr, ptr %ul2, align 8, !dbg !609
  %arrayidx1 = getelementptr i64, ptr %4, i64 0, !dbg !609
  %5 = load i64, ptr %arrayidx1, align 8, !dbg !609
  %xor = xor i64 %3, %5, !dbg !610
  %6 = load ptr, ptr %ul1, align 8, !dbg !611
  %arrayidx2 = getelementptr i64, ptr %6, i64 1, !dbg !611
  %7 = load i64, ptr %arrayidx2, align 8, !dbg !611
  %8 = load ptr, ptr %ul2, align 8, !dbg !612
  %arrayidx3 = getelementptr i64, ptr %8, i64 1, !dbg !612
  %9 = load i64, ptr %arrayidx3, align 8, !dbg !612
  %xor4 = xor i64 %7, %9, !dbg !613
  %or = or i64 %xor, %xor4, !dbg !614
  %cmp = icmp eq i64 %or, 0, !dbg !615
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul2) #16, !dbg !616
  call void @llvm.lifetime.end.p0(i64 8, ptr %ul1) #16, !dbg !616
  ret i1 %cmp, !dbg !617
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !618 dso_local void @__rcu_read_unlock() #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !619 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !627, metadata !DIExpression()), !dbg !629
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !628, metadata !DIExpression()), !dbg !630
  %0 = load i64, ptr %size.addr, align 8, !dbg !631
  %1 = load i32, ptr %flags.addr, align 4, !dbg !632
  %or = or i32 %1, 256, !dbg !633
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #18, !dbg !634
  ret ptr %call, !dbg !635
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !636 dso_local i32 @security_node_sid(i16 noundef zeroext, ptr noundef, i32 noundef, ptr noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sel_netnode_insert(ptr noundef %node) #0 align 16 !dbg !640 {
entry:
  %node.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tail = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %node, ptr %node.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %node.addr, metadata !644, metadata !DIExpression()), !dbg !653
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #16, !dbg !654
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !645, metadata !DIExpression()), !dbg !655
  %0 = load ptr, ptr %node.addr, align 8, !dbg !656
  %nsec = getelementptr inbounds %struct.sel_netnode, ptr %0, i32 0, i32 0, !dbg !657
  %family = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec, i32 0, i32 2, !dbg !658
  %1 = load i16, ptr %family, align 4, !dbg !658
  %conv = zext i16 %1 to i32, !dbg !656
  switch i32 %conv, label %sw.default [
    i32 2, label %sw.bb
    i32 10, label %sw.bb2
  ], !dbg !659

sw.bb:                                            ; preds = %entry
  %2 = load ptr, ptr %node.addr, align 8, !dbg !660
  %nsec1 = getelementptr inbounds %struct.sel_netnode, ptr %2, i32 0, i32 0, !dbg !662
  %addr = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec1, i32 0, i32 0, !dbg !663
  %3 = load i32, ptr %addr, align 8, !dbg !664
  %call = call i32 @sel_netnode_hashfn_ipv4(i32 noundef %3) #17, !dbg !665
  store i32 %call, ptr %idx, align 4, !dbg !666
  br label %sw.epilog, !dbg !667

sw.bb2:                                           ; preds = %entry
  %4 = load ptr, ptr %node.addr, align 8, !dbg !668
  %nsec3 = getelementptr inbounds %struct.sel_netnode, ptr %4, i32 0, i32 0, !dbg !669
  %addr4 = getelementptr inbounds %struct.netnode_security_struct, ptr %nsec3, i32 0, i32 0, !dbg !670
  %call5 = call i32 @sel_netnode_hashfn_ipv6(ptr noundef %addr4) #17, !dbg !671
  store i32 %call5, ptr %idx, align 4, !dbg !672
  br label %sw.epilog, !dbg !673

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !674

do.body:                                          ; preds = %sw.default
  br label %do.body6, !dbg !675

do.body6:                                         ; preds = %do.body
  br label %do.cond, !dbg !677

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !677

do.end:                                           ; preds = %do.cond
  br label %do.body7, !dbg !675

do.body7:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 157, i32 0, i64 12) #16, !dbg !679, !srcloc !681
  br label %do.cond8, !dbg !679

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !679

do.end9:                                          ; preds = %do.cond8
  unreachable, !dbg !675

do.cond10:                                        ; No predecessors!
  br label %do.end11, !dbg !675

do.end11:                                         ; preds = %do.cond10
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !682

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb
  %5 = load ptr, ptr %node.addr, align 8, !dbg !683
  %list = getelementptr inbounds %struct.sel_netnode, ptr %5, i32 0, i32 1, !dbg !684
  %6 = load i32, ptr %idx, align 4, !dbg !685
  %idxprom = zext i32 %6 to i64, !dbg !686
  %arrayidx = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom, !dbg !686
  %list12 = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !687
  call void @list_add_rcu(ptr noundef %list, ptr noundef %list12) #17, !dbg !688
  %7 = load i32, ptr %idx, align 4, !dbg !689
  %idxprom13 = zext i32 %7 to i64, !dbg !690
  %arrayidx14 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom13, !dbg !690
  %size = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx14, i32 0, i32 0, !dbg !691
  %8 = load i32, ptr %size, align 8, !dbg !691
  %cmp = icmp eq i32 %8, 16, !dbg !692
  br i1 %cmp, label %if.then, label %if.else, !dbg !693

if.then:                                          ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #16, !dbg !694
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !646, metadata !DIExpression()), !dbg !695
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #16, !dbg !696
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !649, metadata !DIExpression()), !dbg !696
  br label %do.body16, !dbg !697

do.body16:                                        ; preds = %if.then
  br label %do.cond17, !dbg !699

do.cond17:                                        ; preds = %do.body16
  br label %do.end18, !dbg !699

do.end18:                                         ; preds = %do.cond17
  %9 = load i32, ptr %idx, align 4, !dbg !697
  %idxprom19 = zext i32 %9 to i64, !dbg !697
  %arrayidx20 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom19, !dbg !697
  %list21 = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx20, i32 0, i32 1, !dbg !697
  %prev = getelementptr inbounds %struct.list_head, ptr %list21, i32 0, i32 1, !dbg !697
  %10 = load ptr, ptr %prev, align 8, !dbg !697
  store ptr %10, ptr %tmp, align 8, !dbg !699
  %11 = load ptr, ptr %tmp, align 8, !dbg !697
  store ptr %11, ptr %__mptr, align 8, !dbg !696
  %12 = load ptr, ptr %__mptr, align 8, !dbg !696
  %add.ptr = getelementptr i8, ptr %12, i64 -24, !dbg !696
  store ptr %add.ptr, ptr %tmp22, align 8, !dbg !696
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #16, !dbg !701
  %13 = load ptr, ptr %tmp22, align 8, !dbg !696
  store ptr %13, ptr %tail, align 8, !dbg !702
  %14 = load ptr, ptr %tail, align 8, !dbg !703
  %list23 = getelementptr inbounds %struct.sel_netnode, ptr %14, i32 0, i32 1, !dbg !704
  call void @list_del_rcu(ptr noundef %list23) #17, !dbg !705
  br label %do.body24, !dbg !706

do.body24:                                        ; preds = %do.end18
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #16, !dbg !707
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !651, metadata !DIExpression()), !dbg !707
  %15 = load ptr, ptr %tail, align 8, !dbg !707
  store ptr %15, ptr %___p, align 8, !dbg !707
  %16 = load ptr, ptr %___p, align 8, !dbg !708
  %tobool = icmp ne ptr %16, null, !dbg !708
  br i1 %tobool, label %if.then25, label %if.end, !dbg !707

if.then25:                                        ; preds = %do.body24
  br label %do.body26, !dbg !710

do.body26:                                        ; preds = %if.then25
  br label %do.cond27, !dbg !712

do.cond27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !712

do.end28:                                         ; preds = %do.cond27
  %17 = load ptr, ptr %___p, align 8, !dbg !710
  %rcu = getelementptr inbounds %struct.sel_netnode, ptr %17, i32 0, i32 2, !dbg !710
  %18 = load ptr, ptr %___p, align 8, !dbg !710
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %18) #17, !dbg !710
  br label %if.end, !dbg !710

if.end:                                           ; preds = %do.end28, %do.body24
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #16, !dbg !706
  br label %do.cond29, !dbg !707

do.cond29:                                        ; preds = %if.end
  br label %do.end30, !dbg !707

do.end30:                                         ; preds = %do.cond29
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #16, !dbg !714
  br label %if.end34, !dbg !715

if.else:                                          ; preds = %sw.epilog
  %19 = load i32, ptr %idx, align 4, !dbg !716
  %idxprom31 = zext i32 %19 to i64, !dbg !717
  %arrayidx32 = getelementptr [256 x %struct.sel_netnode_bkt], ptr @sel_netnode_hash, i64 0, i64 %idxprom31, !dbg !717
  %size33 = getelementptr inbounds %struct.sel_netnode_bkt, ptr %arrayidx32, i32 0, i32 0, !dbg !718
  %20 = load i32, ptr %size33, align 8, !dbg !719
  %inc = add i32 %20, 1, !dbg !719
  store i32 %inc, ptr %size33, align 8, !dbg !719
  br label %if.end34

if.end34:                                         ; preds = %if.else, %do.end30
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !720
  br label %cleanup, !dbg !720

cleanup:                                          ; preds = %if.end34, %do.end11
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #16, !dbg !720
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !720

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !721 dso_local void @kfree(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !724 dso_local i32 @_printk(ptr noundef, ...) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #11 align 16 !dbg !729 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !731, metadata !DIExpression()), !dbg !736
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !732, metadata !DIExpression()), !dbg !737
  %0 = load i64, ptr %size.addr, align 8, !dbg !738
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !739
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !740

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !741
  %tobool = icmp ne i64 %2, 0, !dbg !741
  br i1 %tobool, label %if.then, label %if.end7, !dbg !742

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #16, !dbg !743
  call void @llvm.dbg.declare(metadata ptr %index, metadata !733, metadata !DIExpression()), !dbg !744
  %3 = load i64, ptr %size.addr, align 8, !dbg !745
  %cmp = icmp ugt i64 %3, 8192, !dbg !747
  br i1 %cmp, label %if.then1, label %if.end, !dbg !748

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !749
  %5 = load i32, ptr %flags.addr, align 4, !dbg !750
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #18, !dbg !751
  store ptr %call, ptr %retval, align 8, !dbg !752
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !752

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !753
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #17, !dbg !753
  store i32 %call2, ptr %index, align 4, !dbg !754
  %7 = load i32, ptr %flags.addr, align 4, !dbg !755
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !756
  %9 = ptrtoint ptr %8 to i64, !dbg !756
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #17, !dbg !757
  %idxprom = zext i32 %call3 to i64, !dbg !758
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !758
  %10 = load i32, ptr %index, align 4, !dbg !759
  %idxprom4 = zext i32 %10 to i64, !dbg !758
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !758
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !758
  %12 = load i32, ptr %flags.addr, align 4, !dbg !760
  %13 = load i64, ptr %size.addr, align 8, !dbg !761
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #20, !dbg !762
  store ptr %call6, ptr %retval, align 8, !dbg !763
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !763

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #16, !dbg !764
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !765
  %15 = load i32, ptr %flags.addr, align 4, !dbg !766
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #18, !dbg !767
  store ptr %call8, ptr %retval, align 8, !dbg !768
  br label %return, !dbg !768

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !769
  ret ptr %16, !dbg !769
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !770 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !771 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !775, metadata !DIExpression()), !dbg !777
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !776, metadata !DIExpression()), !dbg !778
  %0 = load i64, ptr %size.addr, align 8, !dbg !779
  %tobool = icmp ne i64 %0, 0, !dbg !779
  br i1 %tobool, label %if.end, label %if.then, !dbg !781

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !782
  br label %return, !dbg !782

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !783
  %cmp = icmp ule i64 %1, 8, !dbg !785
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !786

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !787
  br label %return, !dbg !787

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !788
  %cmp3 = icmp ugt i64 %2, 64, !dbg !790
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !791

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !792
  %cmp4 = icmp ule i64 %3, 96, !dbg !793
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !794

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !795
  br label %return, !dbg !795

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !796
  %cmp7 = icmp ugt i64 %4, 128, !dbg !798
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !799

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !800
  %cmp9 = icmp ule i64 %5, 192, !dbg !801
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !802

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !803
  br label %return, !dbg !803

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !804
  %cmp12 = icmp ule i64 %6, 8, !dbg !806
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !807

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !808
  br label %return, !dbg !808

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !809
  %cmp15 = icmp ule i64 %7, 16, !dbg !811
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !812

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !813
  br label %return, !dbg !813

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !814
  %cmp18 = icmp ule i64 %8, 32, !dbg !816
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !817

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !818
  br label %return, !dbg !818

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !819
  %cmp21 = icmp ule i64 %9, 64, !dbg !821
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !822

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !823
  br label %return, !dbg !823

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !824
  %cmp24 = icmp ule i64 %10, 128, !dbg !826
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !827

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !828
  br label %return, !dbg !828

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !829
  %cmp27 = icmp ule i64 %11, 256, !dbg !831
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !832

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !833
  br label %return, !dbg !833

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !834
  %cmp30 = icmp ule i64 %12, 512, !dbg !836
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !837

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !838
  br label %return, !dbg !838

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !839
  %cmp33 = icmp ule i64 %13, 1024, !dbg !841
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !842

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !843
  br label %return, !dbg !843

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !844
  %cmp36 = icmp ule i64 %14, 2048, !dbg !846
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !847

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !848
  br label %return, !dbg !848

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !849
  %cmp39 = icmp ule i64 %15, 4096, !dbg !851
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !852

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !853
  br label %return, !dbg !853

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !854
  %cmp42 = icmp ule i64 %16, 8192, !dbg !856
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !857

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !858
  br label %return, !dbg !858

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !859
  %cmp45 = icmp ule i64 %17, 16384, !dbg !861
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !862

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !863
  br label %return, !dbg !863

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !864
  %cmp48 = icmp ule i64 %18, 32768, !dbg !866
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !867

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !868
  br label %return, !dbg !868

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !869
  %cmp51 = icmp ule i64 %19, 65536, !dbg !871
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !872

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !873
  br label %return, !dbg !873

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !874
  %cmp54 = icmp ule i64 %20, 131072, !dbg !876
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !877

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !878
  br label %return, !dbg !878

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !879
  %cmp57 = icmp ule i64 %21, 262144, !dbg !881
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !882

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !883
  br label %return, !dbg !883

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !884
  %cmp60 = icmp ule i64 %22, 524288, !dbg !886
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !887

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !888
  br label %return, !dbg !888

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !889
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !891
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !892

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !893
  br label %return, !dbg !893

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !894
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !896
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !897

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !898
  br label %return, !dbg !898

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !899, !range !901, !noundef !902
  %tobool69 = trunc i8 %25 to i1, !dbg !899
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !903

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !904

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #21, !dbg !905, !srcloc !908
  unreachable, !dbg !905

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !909

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !910

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !911

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !913

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !911

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #16, !dbg !915, !srcloc !917
  br label %do.end75, !dbg !915

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !911

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !918
  br label %return, !dbg !918

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !919
  ret i32 %26, !dbg !919
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !920 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #14

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !926 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !930, metadata !DIExpression()), !dbg !932
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !931, metadata !DIExpression()), !dbg !933
  %0 = load i32, ptr %flags.addr, align 4, !dbg !934
  %and = and i32 %0, 17, !dbg !934
  %cmp = icmp eq i32 %and, 0, !dbg !934
  %lnot = xor i1 %cmp, true, !dbg !934
  %lnot1 = xor i1 %lnot, true, !dbg !934
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !934
  %conv = sext i32 %lnot.ext to i64, !dbg !934
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !934
  %tobool = icmp ne i64 %expval, 0, !dbg !934
  br i1 %tobool, label %if.then, label %if.end, !dbg !936

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !937
  br label %return, !dbg !937

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !938
  %and2 = and i32 %1, 1, !dbg !940
  %tobool3 = icmp ne i32 %and2, 0, !dbg !940
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !941

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !942
  br label %return, !dbg !942

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !943
  br label %return, !dbg !943

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !945
  ret i32 %2, !dbg !945
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !946 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #13

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !947 dso_local void @__compiletime_assert_117() #15

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_rcu(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !948 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !952, metadata !DIExpression()), !dbg !954
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !953, metadata !DIExpression()), !dbg !955
  %0 = load ptr, ptr %new.addr, align 8, !dbg !956
  %1 = load ptr, ptr %head.addr, align 8, !dbg !957
  %2 = load ptr, ptr %head.addr, align 8, !dbg !958
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !959
  %3 = load ptr, ptr %next, align 8, !dbg !959
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %3) #17, !dbg !960
  ret void, !dbg !961
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !962 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !966, metadata !DIExpression()), !dbg !971
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !967, metadata !DIExpression()), !dbg !972
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !968, metadata !DIExpression()), !dbg !973
  %0 = load ptr, ptr %new.addr, align 8, !dbg !974
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !976
  %2 = load ptr, ptr %next.addr, align 8, !dbg !977
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #17, !dbg !978
  br i1 %call, label %if.end, label %if.then, !dbg !979

if.then:                                          ; preds = %entry
  br label %return, !dbg !980

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !981
  %4 = load ptr, ptr %new.addr, align 8, !dbg !982
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !983
  store ptr %3, ptr %next1, align 8, !dbg !984
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !985
  %6 = load ptr, ptr %new.addr, align 8, !dbg !986
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !987
  store ptr %5, ptr %prev2, align 8, !dbg !988
  br label %do.body, !dbg !989

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !990
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !969, metadata !DIExpression()), !dbg !990
  %7 = load ptr, ptr %new.addr, align 8, !dbg !990
  %8 = ptrtoint ptr %7 to i64, !dbg !990
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !990
  br i1 false, label %land.lhs.true, label %if.else, !dbg !991

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !991
  %cmp = icmp eq i64 %9, 0, !dbg !991
  br i1 %cmp, label %if.then3, label %if.else, !dbg !990

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !991

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !993

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !995

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !995

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !993

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !997
  %11 = inttoptr i64 %10 to ptr, !dbg !997
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !997
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !997
  store volatile ptr %11, ptr %next7, align 8, !dbg !997
  br label %do.cond8, !dbg !997

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !997

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !993

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !993

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !993

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !991

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !999

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !1001

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !1001

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !999

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !1003

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !1005

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !1005

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #16, !dbg !1003, !srcloc !1007
  br label %do.body20, !dbg !1003

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !1008

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !1010

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !1010

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !1008

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !1012
  %14 = inttoptr i64 %13 to ptr, !dbg !1012
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !1012
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !1012
  store volatile ptr %14, ptr %next25, align 8, !dbg !1012
  br label %do.cond26, !dbg !1012

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !1012

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !1008

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !1008

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !1003

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !1003

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !999

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !999

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #16, !dbg !989
  br label %do.end36, !dbg !990

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !1014
  %17 = load ptr, ptr %next.addr, align 8, !dbg !1015
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !1016
  store ptr %16, ptr %prev37, align 8, !dbg !1017
  br label %return, !dbg !1018

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !1018
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1019 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !1024, metadata !DIExpression()), !dbg !1027
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1025, metadata !DIExpression()), !dbg !1028
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1026, metadata !DIExpression()), !dbg !1029
  ret i1 true, !dbg !1030
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1031 dso_local void @_raw_spin_lock_bh(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !1037 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1039, metadata !DIExpression()), !dbg !1040
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !1041
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #17, !dbg !1043
  br i1 %call, label %if.end, label %if.then, !dbg !1044

if.then:                                          ; preds = %entry
  br label %return, !dbg !1045

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !1046
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1047
  %2 = load ptr, ptr %prev, align 8, !dbg !1047
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !1048
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1049
  %4 = load ptr, ptr %next, align 8, !dbg !1049
  call void @__list_del(ptr noundef %2, ptr noundef %4) #17, !dbg !1050
  br label %return, !dbg !1051

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !1051
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !1052 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !1056, metadata !DIExpression()), !dbg !1057
  ret i1 true, !dbg !1058
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !1059 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !1061, metadata !DIExpression()), !dbg !1063
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !1062, metadata !DIExpression()), !dbg !1064
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !1065
  %1 = load ptr, ptr %next.addr, align 8, !dbg !1066
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !1067
  store ptr %0, ptr %prev1, align 8, !dbg !1068
  br label %do.body, !dbg !1069

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !1070

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !1072

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !1070

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !1074
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !1074
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !1074
  store volatile ptr %2, ptr %next4, align 8, !dbg !1074
  br label %do.end5, !dbg !1074

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !1070

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !1076
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1077 dso_local void @_raw_spin_unlock_bh(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !1078 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !1080, metadata !DIExpression()), !dbg !1081
  br label %do.body, !dbg !1082

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !1083

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !1085

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !1083

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !1087
  %1 = load ptr, ptr %list.addr, align 8, !dbg !1087
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !1087
  store volatile ptr %0, ptr %next, align 8, !dbg !1087
  br label %do.end3, !dbg !1087

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !1083

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !1089

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !1090

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !1092

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !1090

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !1094
  %3 = load ptr, ptr %list.addr, align 8, !dbg !1094
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !1094
  store volatile ptr %2, ptr %prev, align 8, !dbg !1094
  br label %do.end9, !dbg !1094

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !1090

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !1096
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { noredzone }
attributes #18 = { noredzone allocsize(0) }
attributes #19 = { cold noredzone }
attributes #20 = { noredzone allocsize(2) }
attributes #21 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!165, !166, !167, !168, !169, !170, !171, !172}
!llvm.ident = !{!173}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sel_netnode_lock", scope: !2, file: !3, line: 57, type: !129, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/.netnode.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22netnode\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/netnode.ll security/selinux/netnode.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !97, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/netnode.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb01329bfe96a33321ca8844cf0dd26c")
!4 = !{!5, !11}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 10, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10}
!9 = !DIEnumerator(name: "false", value: 0)
!10 = !DIEnumerator(name: "true", value: 1)
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !12, line: 364, baseType: !7, size: 32, elements: !13)
!12 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!13 = !{!14, !15, !16, !17, !18, !19, !20}
!14 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!15 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!16 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!17 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!18 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!19 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!20 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!21 = !{!22, !23, !83, !85, !88, !91, !92, !93, !90, !72, !94, !95, !96}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sel_netnode", file: !3, line: 44, size: 448, elements: !25)
!25 = !{!26, !67, !74}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "nsec", scope: !24, file: !3, line: 45, baseType: !27, size: 192)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netnode_security_struct", file: !28, line: 89, size: 192, elements: !29)
!28 = !DIFile(filename: "./security/selinux/include/objsec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b56c6b38a18947c603d4ba90c7e239e8")
!29 = !{!30, !62, !65}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !27, file: !28, line: 93, baseType: !31, size: 128)
!31 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !27, file: !28, line: 90, size: 128, elements: !32)
!32 = !{!33, !38}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4", scope: !31, file: !28, line: 91, baseType: !34, size: 32)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !35, line: 39, baseType: !36)
!35 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !37, line: 27, baseType: !7)
!37 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ipv6", scope: !31, file: !28, line: 92, baseType: !39, size: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !40, line: 33, size: 128, elements: !41)
!40 = !DIFile(filename: "./include/uapi/linux/in6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11968d76cd940ab2457ae2228c519d4f")
!41 = !{!42}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "in6_u", scope: !39, file: !40, line: 40, baseType: !43, size: 128)
!43 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !39, file: !40, line: 34, size: 128, elements: !44)
!44 = !{!45, !51, !58}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr8", scope: !43, file: !40, line: 35, baseType: !46, size: 128)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 128, elements: !49)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !37, line: 21, baseType: !48)
!48 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!49 = !{!50}
!50 = !DISubrange(count: 16)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr16", scope: !43, file: !40, line: 37, baseType: !52, size: 128)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !56)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !35, line: 37, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !37, line: 24, baseType: !55)
!55 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!56 = !{!57}
!57 = !DISubrange(count: 8)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "u6_addr32", scope: !43, file: !40, line: 38, baseType: !59, size: 128)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 128, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 4)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !27, file: !28, line: 94, baseType: !63, size: 32, offset: 128)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !64, line: 21, baseType: !36)
!64 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!65 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !27, file: !28, line: 95, baseType: !66, size: 16, offset: 160)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !64, line: 19, baseType: !54)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !24, file: !3, line: 47, baseType: !68, size: 128, offset: 192)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !69, line: 190, size: 128, elements: !70)
!69 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!70 = !{!71, !73}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !68, file: !69, line: 191, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !68, file: !69, line: 191, baseType: !72, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !24, file: !3, line: 48, baseType: !75, size: 128, align: 64, offset: 320)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !69, line: 232, size: 128, align: 64, elements: !76)
!76 = !{!77, !79}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !75, file: !69, line: 233, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !75, file: !69, line: 234, baseType: !80, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !78}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !72)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!90 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !69, line: 154, baseType: !7)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !69, line: 42, baseType: !90)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!97 = !{!98, !100, !109, !115, !120, !126, !0}
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_selinux__610_305_sel_netnode_init6611", scope: !2, file: !3, line: 305, type: !22, isLocal: true, isDefinition: true)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "sel_netnode_hash", scope: !2, file: !3, line: 58, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 49152, elements: !107)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sel_netnode_bkt", file: !3, line: 39, size: 192, elements: !104)
!104 = !{!105, !106}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !103, file: !3, line: 40, baseType: !7, size: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !103, file: !3, line: 41, baseType: !68, size: 128, offset: 64)
!107 = !{!108}
!108 = !DISubrange(count: 256)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !111, isLocal: true, isDefinition: true)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 216, elements: !113)
!112 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 27)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 544, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 68)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 231, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 168, elements: !124)
!123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!124 = !{!125}
!125 = !DISubrange(count: 21)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 168, elements: !124)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !130, line: 29, baseType: !131)
!130 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !130, line: 17, size: 32, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !130, line: 18, baseType: !134, size: 32)
!134 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !131, file: !130, line: 18, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !134, file: !130, line: 19, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !138, line: 14, size: 32, elements: !139)
!138 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !137, file: !138, line: 15, baseType: !141, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !142, line: 44, baseType: !143)
!142 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !142, line: 14, size: 32, elements: !144)
!144 = !{!145}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !142, line: 15, baseType: !146, size: 32)
!146 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !143, file: !142, line: 15, size: 32, elements: !147)
!147 = !{!148, !154, !160}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !146, file: !142, line: 16, baseType: !149, size: 32)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !69, line: 174, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !69, line: 172, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !150, file: !69, line: 173, baseType: !153, size: 32)
!153 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !142, line: 24, baseType: !155, size: 16)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !142, line: 24, size: 16, elements: !156)
!156 = !{!157, !159}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !155, file: !142, line: 25, baseType: !158, size: 8)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !64, line: 17, baseType: !47)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !155, file: !142, line: 26, baseType: !158, size: 8, offset: 8)
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !142, line: 28, baseType: !161, size: 32)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !142, line: 28, size: 32, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !161, file: !142, line: 29, baseType: !66, size: 16)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !161, file: !142, line: 30, baseType: !66, size: 16, offset: 16)
!165 = !{i32 7, !"Dwarf Version", i32 5}
!166 = !{i32 2, !"Debug Info Version", i32 3}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 8, !"cf-protection-branch", i32 1}
!169 = !{i32 4, !"function_return_thunk_extern", i32 1}
!170 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!171 = !{i32 1, !"Code Model", i32 2}
!172 = !{i32 1, !"override-stack-alignment", i32 8}
!173 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!174 = distinct !DISubprogram(name: "sel_netnode_sid", scope: !3, file: !3, line: 250, type: !175, scopeLine: 251, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!175 = !DISubroutineType(types: !176)
!176 = !{!153, !22, !66, !177}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!178 = !{!179, !180, !181, !182}
!179 = !DILocalVariable(name: "addr", arg: 1, scope: !174, file: !3, line: 250, type: !22)
!180 = !DILocalVariable(name: "family", arg: 2, scope: !174, file: !3, line: 250, type: !66)
!181 = !DILocalVariable(name: "sid", arg: 3, scope: !174, file: !3, line: 250, type: !177)
!182 = !DILocalVariable(name: "node", scope: !174, file: !3, line: 252, type: !23)
!183 = !DILocation(line: 250, column: 27, scope: !174)
!184 = !DILocation(line: 250, column: 37, scope: !174)
!185 = !DILocation(line: 250, column: 50, scope: !174)
!186 = !DILocation(line: 252, column: 2, scope: !174)
!187 = !DILocation(line: 252, column: 22, scope: !174)
!188 = !DILocation(line: 254, column: 2, scope: !174)
!189 = !DILocation(line: 255, column: 26, scope: !174)
!190 = !DILocation(line: 255, column: 32, scope: !174)
!191 = !DILocation(line: 255, column: 9, scope: !174)
!192 = !DILocation(line: 255, column: 7, scope: !174)
!193 = !DILocation(line: 256, column: 6, scope: !194)
!194 = distinct !DILexicalBlock(scope: !174, file: !3, line: 256, column: 6)
!195 = !DILocation(line: 256, column: 11, scope: !194)
!196 = !DILocation(line: 256, column: 6, scope: !174)
!197 = !DILocation(line: 257, column: 10, scope: !198)
!198 = distinct !DILexicalBlock(scope: !194, file: !3, line: 256, column: 20)
!199 = !DILocation(line: 257, column: 16, scope: !198)
!200 = !DILocation(line: 257, column: 21, scope: !198)
!201 = !DILocation(line: 257, column: 4, scope: !198)
!202 = !DILocation(line: 257, column: 8, scope: !198)
!203 = !DILocation(line: 258, column: 3, scope: !198)
!204 = !DILocation(line: 259, column: 3, scope: !198)
!205 = !DILocation(line: 261, column: 2, scope: !174)
!206 = !DILocation(line: 263, column: 30, scope: !174)
!207 = !DILocation(line: 263, column: 36, scope: !174)
!208 = !DILocation(line: 263, column: 44, scope: !174)
!209 = !DILocation(line: 263, column: 9, scope: !174)
!210 = !DILocation(line: 263, column: 2, scope: !174)
!211 = !DILocation(line: 264, column: 1, scope: !174)
!212 = distinct !DISubprogram(name: "rcu_read_lock", scope: !213, file: !213, line: 782, type: !214, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!213 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!214 = !DISubroutineType(types: !215)
!215 = !{null}
!216 = !DILocation(line: 784, column: 2, scope: !212)
!217 = !DILocation(line: 786, column: 2, scope: !212)
!218 = !DILocation(line: 786, column: 2, scope: !219)
!219 = distinct !DILexicalBlock(scope: !212, file: !213, line: 786, column: 2)
!220 = !DILocation(line: 787, column: 2, scope: !212)
!221 = !DILocation(line: 787, column: 2, scope: !222)
!222 = distinct !DILexicalBlock(scope: !212, file: !213, line: 787, column: 2)
!223 = !DILocation(line: 789, column: 1, scope: !212)
!224 = distinct !DISubprogram(name: "sel_netnode_find", scope: !3, file: !3, line: 103, type: !225, scopeLine: 104, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !229)
!225 = !DISubroutineType(types: !226)
!226 = !{!23, !227, !66}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!229 = !{!230, !231, !232, !233, !234, !237}
!230 = !DILocalVariable(name: "addr", arg: 1, scope: !224, file: !3, line: 103, type: !227)
!231 = !DILocalVariable(name: "family", arg: 2, scope: !224, file: !3, line: 103, type: !66)
!232 = !DILocalVariable(name: "idx", scope: !224, file: !3, line: 105, type: !7)
!233 = !DILocalVariable(name: "node", scope: !224, file: !3, line: 106, type: !23)
!234 = !DILocalVariable(name: "__mptr", scope: !235, file: !3, line: 120, type: !22)
!235 = distinct !DILexicalBlock(scope: !236, file: !3, line: 120, column: 2)
!236 = distinct !DILexicalBlock(scope: !224, file: !3, line: 120, column: 2)
!237 = !DILocalVariable(name: "__mptr", scope: !238, file: !3, line: 120, type: !22)
!238 = distinct !DILexicalBlock(scope: !239, file: !3, line: 120, column: 2)
!239 = distinct !DILexicalBlock(scope: !236, file: !3, line: 120, column: 2)
!240 = !DILocation(line: 103, column: 57, scope: !224)
!241 = !DILocation(line: 103, column: 67, scope: !224)
!242 = !DILocation(line: 105, column: 2, scope: !224)
!243 = !DILocation(line: 105, column: 15, scope: !224)
!244 = !DILocation(line: 106, column: 2, scope: !224)
!245 = !DILocation(line: 106, column: 22, scope: !224)
!246 = !DILocation(line: 108, column: 10, scope: !224)
!247 = !DILocation(line: 108, column: 2, scope: !224)
!248 = !DILocation(line: 110, column: 50, scope: !249)
!249 = distinct !DILexicalBlock(scope: !224, file: !3, line: 108, column: 18)
!250 = !DILocation(line: 110, column: 33, scope: !249)
!251 = !DILocation(line: 110, column: 9, scope: !249)
!252 = !DILocation(line: 110, column: 7, scope: !249)
!253 = !DILocation(line: 111, column: 3, scope: !249)
!254 = !DILocation(line: 113, column: 33, scope: !249)
!255 = !DILocation(line: 113, column: 9, scope: !249)
!256 = !DILocation(line: 113, column: 7, scope: !249)
!257 = !DILocation(line: 114, column: 3, scope: !249)
!258 = !DILocation(line: 116, column: 3, scope: !249)
!259 = !DILocation(line: 116, column: 3, scope: !260)
!260 = distinct !DILexicalBlock(scope: !249, file: !3, line: 116, column: 3)
!261 = !DILocation(line: 116, column: 3, scope: !262)
!262 = distinct !DILexicalBlock(scope: !260, file: !3, line: 116, column: 3)
!263 = !DILocation(line: 116, column: 3, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !3, line: 116, column: 3)
!265 = !{i64 2159372730, i64 2159372759, i64 2159372805, i64 2159372863, i64 2159372917, i64 2159372971, i64 2159373026, i64 2159373057}
!266 = !DILocation(line: 117, column: 3, scope: !249)
!267 = !DILocation(line: 120, column: 2, scope: !235)
!268 = !DILocation(line: 120, column: 2, scope: !269)
!269 = distinct !DILexicalBlock(scope: !235, file: !3, line: 120, column: 2)
!270 = !DILocation(line: 120, column: 2, scope: !271)
!271 = distinct !DILexicalBlock(scope: !269, file: !3, line: 120, column: 2)
!272 = !DILocation(line: 120, column: 2, scope: !236)
!273 = !DILocation(line: 120, column: 2, scope: !239)
!274 = !DILocation(line: 121, column: 7, scope: !275)
!275 = distinct !DILexicalBlock(scope: !239, file: !3, line: 121, column: 7)
!276 = !DILocation(line: 121, column: 13, scope: !275)
!277 = !DILocation(line: 121, column: 18, scope: !275)
!278 = !DILocation(line: 121, column: 28, scope: !275)
!279 = !DILocation(line: 121, column: 25, scope: !275)
!280 = !DILocation(line: 121, column: 7, scope: !239)
!281 = !DILocation(line: 122, column: 12, scope: !275)
!282 = !DILocation(line: 122, column: 4, scope: !275)
!283 = !DILocation(line: 124, column: 9, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !3, line: 124, column: 9)
!285 = distinct !DILexicalBlock(scope: !275, file: !3, line: 122, column: 20)
!286 = !DILocation(line: 124, column: 15, scope: !284)
!287 = !DILocation(line: 124, column: 20, scope: !284)
!288 = !DILocation(line: 124, column: 25, scope: !284)
!289 = !DILocation(line: 124, column: 50, scope: !284)
!290 = !DILocation(line: 124, column: 33, scope: !284)
!291 = !DILocation(line: 124, column: 30, scope: !284)
!292 = !DILocation(line: 124, column: 9, scope: !285)
!293 = !DILocation(line: 125, column: 13, scope: !284)
!294 = !DILocation(line: 125, column: 6, scope: !284)
!295 = !DILocation(line: 126, column: 5, scope: !285)
!296 = !DILocation(line: 128, column: 26, scope: !297)
!297 = distinct !DILexicalBlock(scope: !285, file: !3, line: 128, column: 9)
!298 = !DILocation(line: 128, column: 32, scope: !297)
!299 = !DILocation(line: 128, column: 37, scope: !297)
!300 = !DILocation(line: 129, column: 11, scope: !297)
!301 = !DILocation(line: 128, column: 9, scope: !297)
!302 = !DILocation(line: 128, column: 9, scope: !285)
!303 = !DILocation(line: 130, column: 13, scope: !297)
!304 = !DILocation(line: 130, column: 6, scope: !297)
!305 = !DILocation(line: 131, column: 5, scope: !285)
!306 = !DILocation(line: 132, column: 4, scope: !285)
!307 = !DILocation(line: 120, column: 2, scope: !238)
!308 = !DILocation(line: 120, column: 2, scope: !309)
!309 = distinct !DILexicalBlock(scope: !238, file: !3, line: 120, column: 2)
!310 = !DILocation(line: 120, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !309, file: !3, line: 120, column: 2)
!312 = distinct !{!312, !272, !313, !314, !315}
!313 = !DILocation(line: 132, column: 4, scope: !236)
!314 = !{!"llvm.loop.mustprogress"}
!315 = !{!"llvm.loop.unroll.disable"}
!316 = !DILocation(line: 134, column: 2, scope: !224)
!317 = !DILocation(line: 135, column: 1, scope: !224)
!318 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !213, file: !213, line: 813, type: !214, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!319 = !DILocation(line: 815, column: 2, scope: !318)
!320 = !DILocation(line: 815, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !213, line: 815, column: 2)
!322 = !DILocation(line: 818, column: 2, scope: !318)
!323 = !DILocation(line: 819, column: 2, scope: !318)
!324 = !DILocation(line: 819, column: 2, scope: !325)
!325 = distinct !DILexicalBlock(scope: !318, file: !213, line: 819, column: 2)
!326 = !DILocation(line: 820, column: 1, scope: !318)
!327 = distinct !DISubprogram(name: "sel_netnode_sid_slow", scope: !3, file: !3, line: 190, type: !175, scopeLine: 191, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !328)
!328 = !{!329, !330, !331, !332, !333, !334}
!329 = !DILocalVariable(name: "addr", arg: 1, scope: !327, file: !3, line: 190, type: !22)
!330 = !DILocalVariable(name: "family", arg: 2, scope: !327, file: !3, line: 190, type: !66)
!331 = !DILocalVariable(name: "sid", arg: 3, scope: !327, file: !3, line: 190, type: !177)
!332 = !DILocalVariable(name: "ret", scope: !327, file: !3, line: 192, type: !153)
!333 = !DILocalVariable(name: "node", scope: !327, file: !3, line: 193, type: !23)
!334 = !DILocalVariable(name: "new", scope: !327, file: !3, line: 194, type: !23)
!335 = !DILocation(line: 190, column: 39, scope: !327)
!336 = !DILocation(line: 190, column: 49, scope: !327)
!337 = !DILocation(line: 190, column: 62, scope: !327)
!338 = !DILocation(line: 192, column: 2, scope: !327)
!339 = !DILocation(line: 192, column: 6, scope: !327)
!340 = !DILocation(line: 193, column: 2, scope: !327)
!341 = !DILocation(line: 193, column: 22, scope: !327)
!342 = !DILocation(line: 194, column: 2, scope: !327)
!343 = !DILocation(line: 194, column: 22, scope: !327)
!344 = !DILocation(line: 196, column: 2, scope: !327)
!345 = !DILocation(line: 197, column: 26, scope: !327)
!346 = !DILocation(line: 197, column: 32, scope: !327)
!347 = !DILocation(line: 197, column: 9, scope: !327)
!348 = !DILocation(line: 197, column: 7, scope: !327)
!349 = !DILocation(line: 198, column: 6, scope: !350)
!350 = distinct !DILexicalBlock(scope: !327, file: !3, line: 198, column: 6)
!351 = !DILocation(line: 198, column: 11, scope: !350)
!352 = !DILocation(line: 198, column: 6, scope: !327)
!353 = !DILocation(line: 199, column: 10, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 198, column: 20)
!355 = !DILocation(line: 199, column: 16, scope: !354)
!356 = !DILocation(line: 199, column: 21, scope: !354)
!357 = !DILocation(line: 199, column: 4, scope: !354)
!358 = !DILocation(line: 199, column: 8, scope: !354)
!359 = !DILocation(line: 200, column: 3, scope: !354)
!360 = !DILocation(line: 201, column: 3, scope: !354)
!361 = !DILocation(line: 204, column: 8, scope: !327)
!362 = !DILocation(line: 204, column: 6, scope: !327)
!363 = !DILocation(line: 205, column: 10, scope: !327)
!364 = !DILocation(line: 205, column: 2, scope: !327)
!365 = !DILocation(line: 208, column: 6, scope: !366)
!366 = distinct !DILexicalBlock(scope: !327, file: !3, line: 205, column: 18)
!367 = !DILocation(line: 208, column: 36, scope: !366)
!368 = !DILocation(line: 207, column: 9, scope: !366)
!369 = !DILocation(line: 207, column: 7, scope: !366)
!370 = !DILocation(line: 209, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !3, line: 209, column: 7)
!372 = !DILocation(line: 209, column: 7, scope: !366)
!373 = !DILocation(line: 210, column: 37, scope: !371)
!374 = !DILocation(line: 210, column: 26, scope: !371)
!375 = !DILocation(line: 210, column: 4, scope: !371)
!376 = !DILocation(line: 210, column: 9, scope: !371)
!377 = !DILocation(line: 210, column: 14, scope: !371)
!378 = !DILocation(line: 210, column: 24, scope: !371)
!379 = !DILocation(line: 211, column: 3, scope: !366)
!380 = !DILocation(line: 214, column: 6, scope: !366)
!381 = !DILocation(line: 214, column: 37, scope: !366)
!382 = !DILocation(line: 213, column: 9, scope: !366)
!383 = !DILocation(line: 213, column: 7, scope: !366)
!384 = !DILocation(line: 215, column: 7, scope: !385)
!385 = distinct !DILexicalBlock(scope: !366, file: !3, line: 215, column: 7)
!386 = !DILocation(line: 215, column: 7, scope: !366)
!387 = !DILocation(line: 216, column: 4, scope: !385)
!388 = !DILocation(line: 216, column: 9, scope: !385)
!389 = !DILocation(line: 216, column: 14, scope: !385)
!390 = !DILocation(line: 216, column: 46, scope: !385)
!391 = !DILocation(line: 216, column: 26, scope: !385)
!392 = !DILocation(line: 217, column: 3, scope: !366)
!393 = !DILocation(line: 219, column: 3, scope: !366)
!394 = !DILocation(line: 219, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !366, file: !3, line: 219, column: 3)
!396 = !DILocation(line: 219, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !395, file: !3, line: 219, column: 3)
!398 = !DILocation(line: 219, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !3, line: 219, column: 3)
!400 = !{i64 2159419166, i64 2159419195, i64 2159419241, i64 2159419299, i64 2159419353, i64 2159419407, i64 2159419462, i64 2159419493}
!401 = !DILocation(line: 220, column: 7, scope: !366)
!402 = !DILocation(line: 221, column: 2, scope: !366)
!403 = !DILocation(line: 222, column: 6, scope: !404)
!404 = distinct !DILexicalBlock(scope: !327, file: !3, line: 222, column: 6)
!405 = !DILocation(line: 222, column: 10, scope: !404)
!406 = !DILocation(line: 222, column: 15, scope: !404)
!407 = !DILocation(line: 222, column: 18, scope: !404)
!408 = !DILocation(line: 222, column: 6, scope: !327)
!409 = !DILocation(line: 223, column: 22, scope: !410)
!410 = distinct !DILexicalBlock(scope: !404, file: !3, line: 222, column: 23)
!411 = !DILocation(line: 223, column: 3, scope: !410)
!412 = !DILocation(line: 223, column: 8, scope: !410)
!413 = !DILocation(line: 223, column: 13, scope: !410)
!414 = !DILocation(line: 223, column: 20, scope: !410)
!415 = !DILocation(line: 224, column: 20, scope: !410)
!416 = !DILocation(line: 224, column: 19, scope: !410)
!417 = !DILocation(line: 224, column: 3, scope: !410)
!418 = !DILocation(line: 224, column: 8, scope: !410)
!419 = !DILocation(line: 224, column: 13, scope: !410)
!420 = !DILocation(line: 224, column: 17, scope: !410)
!421 = !DILocation(line: 225, column: 22, scope: !410)
!422 = !DILocation(line: 225, column: 3, scope: !410)
!423 = !DILocation(line: 226, column: 2, scope: !410)
!424 = !DILocation(line: 227, column: 9, scope: !404)
!425 = !DILocation(line: 227, column: 3, scope: !404)
!426 = !DILocation(line: 229, column: 2, scope: !327)
!427 = !DILocation(line: 230, column: 6, scope: !428)
!428 = distinct !DILexicalBlock(scope: !327, file: !3, line: 230, column: 6)
!429 = !DILocation(line: 230, column: 6, scope: !327)
!430 = !DILocation(line: 231, column: 3, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 231, column: 3)
!432 = !DILocation(line: 231, column: 3, scope: !433)
!433 = distinct !DILexicalBlock(scope: !431, file: !3, line: 231, column: 3)
!434 = !DILocation(line: 231, column: 3, scope: !428)
!435 = !DILocation(line: 233, column: 9, scope: !327)
!436 = !DILocation(line: 233, column: 2, scope: !327)
!437 = !DILocation(line: 234, column: 1, scope: !327)
!438 = distinct !DISubprogram(name: "sel_netnode_flush", scope: !3, file: !3, line: 273, type: !214, scopeLine: 274, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !439)
!439 = !{!440, !441, !442, !443, !449, !451, !455}
!440 = !DILocalVariable(name: "idx", scope: !438, file: !3, line: 275, type: !7)
!441 = !DILocalVariable(name: "node", scope: !438, file: !3, line: 276, type: !23)
!442 = !DILocalVariable(name: "node_tmp", scope: !438, file: !3, line: 276, type: !23)
!443 = !DILocalVariable(name: "__mptr", scope: !444, file: !3, line: 280, type: !22)
!444 = distinct !DILexicalBlock(scope: !445, file: !3, line: 280, column: 3)
!445 = distinct !DILexicalBlock(scope: !446, file: !3, line: 280, column: 3)
!446 = distinct !DILexicalBlock(scope: !447, file: !3, line: 279, column: 52)
!447 = distinct !DILexicalBlock(scope: !448, file: !3, line: 279, column: 2)
!448 = distinct !DILexicalBlock(scope: !438, file: !3, line: 279, column: 2)
!449 = !DILocalVariable(name: "__mptr", scope: !450, file: !3, line: 280, type: !22)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 280, column: 3)
!451 = !DILocalVariable(name: "___p", scope: !452, file: !3, line: 283, type: !23)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 283, column: 5)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 281, column: 42)
!454 = distinct !DILexicalBlock(scope: !445, file: !3, line: 280, column: 3)
!455 = !DILocalVariable(name: "__mptr", scope: !456, file: !3, line: 280, type: !22)
!456 = distinct !DILexicalBlock(scope: !454, file: !3, line: 280, column: 3)
!457 = !DILocation(line: 275, column: 2, scope: !438)
!458 = !DILocation(line: 275, column: 15, scope: !438)
!459 = !DILocation(line: 276, column: 2, scope: !438)
!460 = !DILocation(line: 276, column: 22, scope: !438)
!461 = !DILocation(line: 276, column: 29, scope: !438)
!462 = !DILocation(line: 278, column: 2, scope: !438)
!463 = !DILocation(line: 279, column: 11, scope: !448)
!464 = !DILocation(line: 279, column: 7, scope: !448)
!465 = !DILocation(line: 279, column: 16, scope: !447)
!466 = !DILocation(line: 279, column: 20, scope: !447)
!467 = !DILocation(line: 279, column: 2, scope: !448)
!468 = !DILocation(line: 280, column: 3, scope: !444)
!469 = !DILocation(line: 280, column: 3, scope: !445)
!470 = !DILocation(line: 280, column: 3, scope: !450)
!471 = !DILocation(line: 280, column: 3, scope: !454)
!472 = !DILocation(line: 282, column: 19, scope: !453)
!473 = !DILocation(line: 282, column: 25, scope: !453)
!474 = !DILocation(line: 282, column: 5, scope: !453)
!475 = !DILocation(line: 283, column: 5, scope: !453)
!476 = !DILocation(line: 283, column: 5, scope: !452)
!477 = !DILocation(line: 283, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !452, file: !3, line: 283, column: 5)
!479 = !DILocation(line: 283, column: 5, scope: !480)
!480 = distinct !DILexicalBlock(scope: !478, file: !3, line: 283, column: 5)
!481 = !DILocation(line: 283, column: 5, scope: !482)
!482 = distinct !DILexicalBlock(scope: !480, file: !3, line: 283, column: 5)
!483 = !DILocation(line: 284, column: 3, scope: !453)
!484 = !DILocation(line: 280, column: 3, scope: !456)
!485 = distinct !{!485, !469, !486, !314, !315}
!486 = !DILocation(line: 284, column: 3, scope: !445)
!487 = !DILocation(line: 285, column: 20, scope: !446)
!488 = !DILocation(line: 285, column: 3, scope: !446)
!489 = !DILocation(line: 285, column: 25, scope: !446)
!490 = !DILocation(line: 285, column: 30, scope: !446)
!491 = !DILocation(line: 286, column: 2, scope: !446)
!492 = !DILocation(line: 279, column: 48, scope: !447)
!493 = !DILocation(line: 279, column: 2, scope: !447)
!494 = distinct !{!494, !467, !495, !314, !315}
!495 = !DILocation(line: 286, column: 2, scope: !448)
!496 = !DILocation(line: 287, column: 2, scope: !438)
!497 = !DILocation(line: 288, column: 1, scope: !438)
!498 = distinct !DISubprogram(name: "spin_lock_bh", scope: !499, file: !499, line: 354, type: !500, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !503)
!499 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!500 = !DISubroutineType(types: !501)
!501 = !{null, !502}
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!503 = !{!504}
!504 = !DILocalVariable(name: "lock", arg: 1, scope: !498, file: !499, line: 354, type: !502)
!505 = !DILocation(line: 354, column: 54, scope: !498)
!506 = !DILocation(line: 356, column: 2, scope: !498)
!507 = !DILocation(line: 357, column: 1, scope: !498)
!508 = distinct !DISubprogram(name: "list_del_rcu", scope: !509, file: !509, line: 155, type: !510, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!509 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!510 = !DISubroutineType(types: !511)
!511 = !{null, !72}
!512 = !{!513}
!513 = !DILocalVariable(name: "entry", arg: 1, scope: !508, file: !509, line: 155, type: !72)
!514 = !DILocation(line: 155, column: 51, scope: !508)
!515 = !DILocation(line: 157, column: 19, scope: !508)
!516 = !DILocation(line: 157, column: 2, scope: !508)
!517 = !DILocation(line: 158, column: 2, scope: !508)
!518 = !DILocation(line: 158, column: 9, scope: !508)
!519 = !DILocation(line: 158, column: 14, scope: !508)
!520 = !DILocation(line: 159, column: 1, scope: !508)
!521 = !DISubprogram(name: "kvfree_call_rcu", scope: !522, file: !522, line: 37, type: !523, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!522 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!523 = !DISubroutineType(types: !524)
!524 = !{null, !78, !22}
!525 = distinct !DISubprogram(name: "spin_unlock_bh", scope: !499, file: !499, line: 394, type: !500, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !526)
!526 = !{!527}
!527 = !DILocalVariable(name: "lock", arg: 1, scope: !525, file: !499, line: 394, type: !502)
!528 = !DILocation(line: 394, column: 56, scope: !525)
!529 = !DILocation(line: 396, column: 2, scope: !525)
!530 = !DILocation(line: 397, column: 1, scope: !525)
!531 = distinct !DISubprogram(name: "__initstub__kmod_selinux__610_305_sel_netnode_init6", scope: !3, file: !3, line: 305, type: !532, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!532 = !DISubroutineType(types: !533)
!533 = !{!153}
!534 = !DILocation(line: 305, column: 1, scope: !531)
!535 = distinct !DISubprogram(name: "sel_netnode_init", scope: !3, file: !3, line: 290, type: !532, scopeLine: 291, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !536)
!536 = !{!537}
!537 = !DILocalVariable(name: "iter", scope: !535, file: !3, line: 292, type: !153)
!538 = !DILocation(line: 292, column: 2, scope: !535)
!539 = !DILocation(line: 292, column: 6, scope: !535)
!540 = !DILocation(line: 294, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !535, file: !3, line: 294, column: 6)
!542 = !DILocation(line: 294, column: 6, scope: !535)
!543 = !DILocation(line: 295, column: 3, scope: !541)
!544 = !DILocation(line: 297, column: 12, scope: !545)
!545 = distinct !DILexicalBlock(scope: !535, file: !3, line: 297, column: 2)
!546 = !DILocation(line: 297, column: 7, scope: !545)
!547 = !DILocation(line: 297, column: 17, scope: !548)
!548 = distinct !DILexicalBlock(scope: !545, file: !3, line: 297, column: 2)
!549 = !DILocation(line: 297, column: 22, scope: !548)
!550 = !DILocation(line: 297, column: 2, scope: !545)
!551 = !DILocation(line: 298, column: 36, scope: !552)
!552 = distinct !DILexicalBlock(scope: !548, file: !3, line: 297, column: 55)
!553 = !DILocation(line: 298, column: 19, scope: !552)
!554 = !DILocation(line: 298, column: 42, scope: !552)
!555 = !DILocation(line: 298, column: 3, scope: !552)
!556 = !DILocation(line: 299, column: 20, scope: !552)
!557 = !DILocation(line: 299, column: 3, scope: !552)
!558 = !DILocation(line: 299, column: 26, scope: !552)
!559 = !DILocation(line: 299, column: 31, scope: !552)
!560 = !DILocation(line: 300, column: 2, scope: !552)
!561 = !DILocation(line: 297, column: 51, scope: !548)
!562 = !DILocation(line: 297, column: 2, scope: !548)
!563 = distinct !{!563, !550, !564, !314, !315}
!564 = !DILocation(line: 300, column: 2, scope: !545)
!565 = !DILocation(line: 302, column: 2, scope: !535)
!566 = !DILocation(line: 303, column: 1, scope: !535)
!567 = !DISubprogram(name: "__rcu_read_lock", scope: !213, file: !213, line: 74, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!568 = distinct !DISubprogram(name: "sel_netnode_hashfn_ipv4", scope: !3, file: !3, line: 69, type: !569, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !571)
!569 = !DISubroutineType(types: !570)
!570 = !{!7, !34}
!571 = !{!572}
!572 = !DILocalVariable(name: "addr", arg: 1, scope: !568, file: !3, line: 69, type: !34)
!573 = !DILocation(line: 69, column: 52, scope: !568)
!574 = !DILocation(line: 73, column: 10, scope: !568)
!575 = !DILocation(line: 73, column: 15, scope: !568)
!576 = !DILocation(line: 73, column: 2, scope: !568)
!577 = distinct !DISubprogram(name: "sel_netnode_hashfn_ipv6", scope: !3, file: !3, line: 85, type: !578, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !582)
!578 = !DISubroutineType(types: !579)
!579 = !{!7, !580}
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!582 = !{!583}
!583 = !DILocalVariable(name: "addr", arg: 1, scope: !577, file: !3, line: 85, type: !580)
!584 = !DILocation(line: 85, column: 68, scope: !577)
!585 = !DILocation(line: 90, column: 10, scope: !577)
!586 = !DILocation(line: 90, column: 16, scope: !577)
!587 = !DILocation(line: 90, column: 29, scope: !577)
!588 = !DILocation(line: 90, column: 2, scope: !577)
!589 = distinct !DISubprogram(name: "ipv6_addr_equal", scope: !590, file: !590, line: 664, type: !591, scopeLine: 666, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !595)
!590 = !DIFile(filename: "./include/net/ipv6.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd47d34fa721352efda10acf415765ad")
!591 = !DISubroutineType(types: !592)
!592 = !{!593, !580, !580}
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !69, line: 35, baseType: !594)
!594 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!595 = !{!596, !597, !598, !599}
!596 = !DILocalVariable(name: "a1", arg: 1, scope: !589, file: !590, line: 664, type: !580)
!597 = !DILocalVariable(name: "a2", arg: 2, scope: !589, file: !590, line: 665, type: !580)
!598 = !DILocalVariable(name: "ul1", scope: !589, file: !590, line: 668, type: !88)
!599 = !DILocalVariable(name: "ul2", scope: !589, file: !590, line: 669, type: !88)
!600 = !DILocation(line: 664, column: 59, scope: !589)
!601 = !DILocation(line: 665, column: 31, scope: !589)
!602 = !DILocation(line: 668, column: 2, scope: !589)
!603 = !DILocation(line: 668, column: 23, scope: !589)
!604 = !DILocation(line: 668, column: 52, scope: !589)
!605 = !DILocation(line: 669, column: 2, scope: !589)
!606 = !DILocation(line: 669, column: 23, scope: !589)
!607 = !DILocation(line: 669, column: 52, scope: !589)
!608 = !DILocation(line: 671, column: 11, scope: !589)
!609 = !DILocation(line: 671, column: 20, scope: !589)
!610 = !DILocation(line: 671, column: 18, scope: !589)
!611 = !DILocation(line: 671, column: 31, scope: !589)
!612 = !DILocation(line: 671, column: 40, scope: !589)
!613 = !DILocation(line: 671, column: 38, scope: !589)
!614 = !DILocation(line: 671, column: 28, scope: !589)
!615 = !DILocation(line: 671, column: 49, scope: !589)
!616 = !DILocation(line: 678, column: 1, scope: !589)
!617 = !DILocation(line: 671, column: 2, scope: !589)
!618 = !DISubprogram(name: "__rcu_read_unlock", scope: !213, file: !213, line: 75, type: !214, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!619 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !620, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !626)
!620 = !DISubroutineType(types: !621)
!621 = !{!22, !622, !91}
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 61, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !624, line: 72, baseType: !625)
!624 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !624, line: 16, baseType: !90)
!626 = !{!627, !628}
!627 = !DILocalVariable(name: "size", arg: 1, scope: !619, file: !12, line: 719, type: !622)
!628 = !DILocalVariable(name: "flags", arg: 2, scope: !619, file: !12, line: 719, type: !91)
!629 = !DILocation(line: 719, column: 52, scope: !619)
!630 = !DILocation(line: 719, column: 64, scope: !619)
!631 = !DILocation(line: 721, column: 17, scope: !619)
!632 = !DILocation(line: 721, column: 23, scope: !619)
!633 = !DILocation(line: 721, column: 29, scope: !619)
!634 = !DILocation(line: 721, column: 9, scope: !619)
!635 = !DILocation(line: 721, column: 2, scope: !619)
!636 = !DISubprogram(name: "security_node_sid", scope: !637, file: !637, line: 291, type: !638, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!637 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!638 = !DISubroutineType(types: !639)
!639 = !{!153, !66, !22, !63, !177}
!640 = distinct !DISubprogram(name: "sel_netnode_insert", scope: !3, file: !3, line: 145, type: !641, scopeLine: 146, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !643)
!641 = !DISubroutineType(types: !642)
!642 = !{null, !23}
!643 = !{!644, !645, !646, !649, !651}
!644 = !DILocalVariable(name: "node", arg: 1, scope: !640, file: !3, line: 145, type: !23)
!645 = !DILocalVariable(name: "idx", scope: !640, file: !3, line: 147, type: !7)
!646 = !DILocalVariable(name: "tail", scope: !647, file: !3, line: 165, type: !23)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 164, column: 64)
!648 = distinct !DILexicalBlock(scope: !640, file: !3, line: 164, column: 6)
!649 = !DILocalVariable(name: "__mptr", scope: !650, file: !3, line: 166, type: !22)
!650 = distinct !DILexicalBlock(scope: !647, file: !3, line: 166, column: 10)
!651 = !DILocalVariable(name: "___p", scope: !652, file: !3, line: 172, type: !23)
!652 = distinct !DILexicalBlock(scope: !647, file: !3, line: 172, column: 3)
!653 = !DILocation(line: 145, column: 52, scope: !640)
!654 = !DILocation(line: 147, column: 2, scope: !640)
!655 = !DILocation(line: 147, column: 15, scope: !640)
!656 = !DILocation(line: 149, column: 10, scope: !640)
!657 = !DILocation(line: 149, column: 16, scope: !640)
!658 = !DILocation(line: 149, column: 21, scope: !640)
!659 = !DILocation(line: 149, column: 2, scope: !640)
!660 = !DILocation(line: 151, column: 33, scope: !661)
!661 = distinct !DILexicalBlock(scope: !640, file: !3, line: 149, column: 29)
!662 = !DILocation(line: 151, column: 39, scope: !661)
!663 = !DILocation(line: 151, column: 44, scope: !661)
!664 = !DILocation(line: 151, column: 49, scope: !661)
!665 = !DILocation(line: 151, column: 9, scope: !661)
!666 = !DILocation(line: 151, column: 7, scope: !661)
!667 = !DILocation(line: 152, column: 3, scope: !661)
!668 = !DILocation(line: 154, column: 34, scope: !661)
!669 = !DILocation(line: 154, column: 40, scope: !661)
!670 = !DILocation(line: 154, column: 45, scope: !661)
!671 = !DILocation(line: 154, column: 9, scope: !661)
!672 = !DILocation(line: 154, column: 7, scope: !661)
!673 = !DILocation(line: 155, column: 3, scope: !661)
!674 = !DILocation(line: 157, column: 3, scope: !661)
!675 = !DILocation(line: 157, column: 3, scope: !676)
!676 = distinct !DILexicalBlock(scope: !661, file: !3, line: 157, column: 3)
!677 = !DILocation(line: 157, column: 3, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !3, line: 157, column: 3)
!679 = !DILocation(line: 157, column: 3, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !3, line: 157, column: 3)
!681 = !{i64 2159410724, i64 2159410753, i64 2159410799, i64 2159410857, i64 2159410911, i64 2159410965, i64 2159411020, i64 2159411051}
!682 = !DILocation(line: 158, column: 3, scope: !661)
!683 = !DILocation(line: 163, column: 16, scope: !640)
!684 = !DILocation(line: 163, column: 22, scope: !640)
!685 = !DILocation(line: 163, column: 46, scope: !640)
!686 = !DILocation(line: 163, column: 29, scope: !640)
!687 = !DILocation(line: 163, column: 51, scope: !640)
!688 = !DILocation(line: 163, column: 2, scope: !640)
!689 = !DILocation(line: 164, column: 23, scope: !648)
!690 = !DILocation(line: 164, column: 6, scope: !648)
!691 = !DILocation(line: 164, column: 28, scope: !648)
!692 = !DILocation(line: 164, column: 33, scope: !648)
!693 = !DILocation(line: 164, column: 6, scope: !640)
!694 = !DILocation(line: 165, column: 3, scope: !647)
!695 = !DILocation(line: 165, column: 23, scope: !647)
!696 = !DILocation(line: 166, column: 10, scope: !650)
!697 = !DILocation(line: 166, column: 10, scope: !698)
!698 = distinct !DILexicalBlock(scope: !650, file: !3, line: 166, column: 10)
!699 = !DILocation(line: 166, column: 10, scope: !700)
!700 = distinct !DILexicalBlock(scope: !698, file: !3, line: 166, column: 10)
!701 = !DILocation(line: 166, column: 10, scope: !647)
!702 = !DILocation(line: 166, column: 8, scope: !647)
!703 = !DILocation(line: 171, column: 17, scope: !647)
!704 = !DILocation(line: 171, column: 23, scope: !647)
!705 = !DILocation(line: 171, column: 3, scope: !647)
!706 = !DILocation(line: 172, column: 3, scope: !647)
!707 = !DILocation(line: 172, column: 3, scope: !652)
!708 = !DILocation(line: 172, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !652, file: !3, line: 172, column: 3)
!710 = !DILocation(line: 172, column: 3, scope: !711)
!711 = distinct !DILexicalBlock(scope: !709, file: !3, line: 172, column: 3)
!712 = !DILocation(line: 172, column: 3, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !3, line: 172, column: 3)
!714 = !DILocation(line: 173, column: 2, scope: !648)
!715 = !DILocation(line: 173, column: 2, scope: !647)
!716 = !DILocation(line: 174, column: 20, scope: !648)
!717 = !DILocation(line: 174, column: 3, scope: !648)
!718 = !DILocation(line: 174, column: 25, scope: !648)
!719 = !DILocation(line: 174, column: 29, scope: !648)
!720 = !DILocation(line: 175, column: 1, scope: !640)
!721 = !DISubprogram(name: "kfree", scope: !12, file: !12, line: 227, type: !722, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !227}
!724 = !DISubprogram(name: "_printk", scope: !725, file: !725, line: 153, type: !726, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!725 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!726 = !DISubroutineType(types: !727)
!727 = !{!153, !728, null}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!729 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !620, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !730)
!730 = !{!731, !732, !733}
!731 = !DILocalVariable(name: "size", arg: 1, scope: !729, file: !12, line: 591, type: !622)
!732 = !DILocalVariable(name: "flags", arg: 2, scope: !729, file: !12, line: 591, type: !91)
!733 = !DILocalVariable(name: "index", scope: !734, file: !12, line: 594, type: !7)
!734 = distinct !DILexicalBlock(scope: !735, file: !12, line: 593, column: 42)
!735 = distinct !DILexicalBlock(scope: !729, file: !12, line: 593, column: 6)
!736 = !DILocation(line: 591, column: 61, scope: !729)
!737 = !DILocation(line: 591, column: 73, scope: !729)
!738 = !DILocation(line: 593, column: 27, scope: !735)
!739 = !DILocation(line: 593, column: 6, scope: !735)
!740 = !DILocation(line: 593, column: 33, scope: !735)
!741 = !DILocation(line: 593, column: 36, scope: !735)
!742 = !DILocation(line: 593, column: 6, scope: !729)
!743 = !DILocation(line: 594, column: 3, scope: !734)
!744 = !DILocation(line: 594, column: 16, scope: !734)
!745 = !DILocation(line: 596, column: 7, scope: !746)
!746 = distinct !DILexicalBlock(scope: !734, file: !12, line: 596, column: 7)
!747 = !DILocation(line: 596, column: 12, scope: !746)
!748 = !DILocation(line: 596, column: 7, scope: !734)
!749 = !DILocation(line: 597, column: 25, scope: !746)
!750 = !DILocation(line: 597, column: 31, scope: !746)
!751 = !DILocation(line: 597, column: 11, scope: !746)
!752 = !DILocation(line: 597, column: 4, scope: !746)
!753 = !DILocation(line: 599, column: 11, scope: !734)
!754 = !DILocation(line: 599, column: 9, scope: !734)
!755 = !DILocation(line: 601, column: 33, scope: !734)
!756 = !DILocation(line: 601, column: 40, scope: !734)
!757 = !DILocation(line: 601, column: 20, scope: !734)
!758 = !DILocation(line: 601, column: 5, scope: !734)
!759 = !DILocation(line: 601, column: 51, scope: !734)
!760 = !DILocation(line: 602, column: 5, scope: !734)
!761 = !DILocation(line: 602, column: 12, scope: !734)
!762 = !DILocation(line: 600, column: 10, scope: !734)
!763 = !DILocation(line: 600, column: 3, scope: !734)
!764 = !DILocation(line: 603, column: 2, scope: !735)
!765 = !DILocation(line: 604, column: 19, scope: !729)
!766 = !DILocation(line: 604, column: 25, scope: !729)
!767 = !DILocation(line: 604, column: 9, scope: !729)
!768 = !DILocation(line: 604, column: 2, scope: !729)
!769 = !DILocation(line: 605, column: 1, scope: !729)
!770 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!771 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !772, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!7, !622, !593}
!774 = !{!775, !776}
!775 = !DILocalVariable(name: "size", arg: 1, scope: !771, file: !12, line: 444, type: !622)
!776 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !771, file: !12, line: 445, type: !593)
!777 = !DILocation(line: 444, column: 60, scope: !771)
!778 = !DILocation(line: 445, column: 16, scope: !771)
!779 = !DILocation(line: 447, column: 7, scope: !780)
!780 = distinct !DILexicalBlock(scope: !771, file: !12, line: 447, column: 6)
!781 = !DILocation(line: 447, column: 6, scope: !771)
!782 = !DILocation(line: 448, column: 3, scope: !780)
!783 = !DILocation(line: 450, column: 6, scope: !784)
!784 = distinct !DILexicalBlock(scope: !771, file: !12, line: 450, column: 6)
!785 = !DILocation(line: 450, column: 11, scope: !784)
!786 = !DILocation(line: 450, column: 6, scope: !771)
!787 = !DILocation(line: 451, column: 3, scope: !784)
!788 = !DILocation(line: 453, column: 32, scope: !789)
!789 = distinct !DILexicalBlock(scope: !771, file: !12, line: 453, column: 6)
!790 = !DILocation(line: 453, column: 37, scope: !789)
!791 = !DILocation(line: 453, column: 42, scope: !789)
!792 = !DILocation(line: 453, column: 45, scope: !789)
!793 = !DILocation(line: 453, column: 50, scope: !789)
!794 = !DILocation(line: 453, column: 6, scope: !771)
!795 = !DILocation(line: 454, column: 3, scope: !789)
!796 = !DILocation(line: 455, column: 32, scope: !797)
!797 = distinct !DILexicalBlock(scope: !771, file: !12, line: 455, column: 6)
!798 = !DILocation(line: 455, column: 37, scope: !797)
!799 = !DILocation(line: 455, column: 43, scope: !797)
!800 = !DILocation(line: 455, column: 46, scope: !797)
!801 = !DILocation(line: 455, column: 51, scope: !797)
!802 = !DILocation(line: 455, column: 6, scope: !771)
!803 = !DILocation(line: 456, column: 3, scope: !797)
!804 = !DILocation(line: 457, column: 6, scope: !805)
!805 = distinct !DILexicalBlock(scope: !771, file: !12, line: 457, column: 6)
!806 = !DILocation(line: 457, column: 11, scope: !805)
!807 = !DILocation(line: 457, column: 6, scope: !771)
!808 = !DILocation(line: 457, column: 26, scope: !805)
!809 = !DILocation(line: 458, column: 6, scope: !810)
!810 = distinct !DILexicalBlock(scope: !771, file: !12, line: 458, column: 6)
!811 = !DILocation(line: 458, column: 11, scope: !810)
!812 = !DILocation(line: 458, column: 6, scope: !771)
!813 = !DILocation(line: 458, column: 26, scope: !810)
!814 = !DILocation(line: 459, column: 6, scope: !815)
!815 = distinct !DILexicalBlock(scope: !771, file: !12, line: 459, column: 6)
!816 = !DILocation(line: 459, column: 11, scope: !815)
!817 = !DILocation(line: 459, column: 6, scope: !771)
!818 = !DILocation(line: 459, column: 26, scope: !815)
!819 = !DILocation(line: 460, column: 6, scope: !820)
!820 = distinct !DILexicalBlock(scope: !771, file: !12, line: 460, column: 6)
!821 = !DILocation(line: 460, column: 11, scope: !820)
!822 = !DILocation(line: 460, column: 6, scope: !771)
!823 = !DILocation(line: 460, column: 26, scope: !820)
!824 = !DILocation(line: 461, column: 6, scope: !825)
!825 = distinct !DILexicalBlock(scope: !771, file: !12, line: 461, column: 6)
!826 = !DILocation(line: 461, column: 11, scope: !825)
!827 = !DILocation(line: 461, column: 6, scope: !771)
!828 = !DILocation(line: 461, column: 26, scope: !825)
!829 = !DILocation(line: 462, column: 6, scope: !830)
!830 = distinct !DILexicalBlock(scope: !771, file: !12, line: 462, column: 6)
!831 = !DILocation(line: 462, column: 11, scope: !830)
!832 = !DILocation(line: 462, column: 6, scope: !771)
!833 = !DILocation(line: 462, column: 26, scope: !830)
!834 = !DILocation(line: 463, column: 6, scope: !835)
!835 = distinct !DILexicalBlock(scope: !771, file: !12, line: 463, column: 6)
!836 = !DILocation(line: 463, column: 11, scope: !835)
!837 = !DILocation(line: 463, column: 6, scope: !771)
!838 = !DILocation(line: 463, column: 26, scope: !835)
!839 = !DILocation(line: 464, column: 6, scope: !840)
!840 = distinct !DILexicalBlock(scope: !771, file: !12, line: 464, column: 6)
!841 = !DILocation(line: 464, column: 11, scope: !840)
!842 = !DILocation(line: 464, column: 6, scope: !771)
!843 = !DILocation(line: 464, column: 26, scope: !840)
!844 = !DILocation(line: 465, column: 6, scope: !845)
!845 = distinct !DILexicalBlock(scope: !771, file: !12, line: 465, column: 6)
!846 = !DILocation(line: 465, column: 11, scope: !845)
!847 = !DILocation(line: 465, column: 6, scope: !771)
!848 = !DILocation(line: 465, column: 26, scope: !845)
!849 = !DILocation(line: 466, column: 6, scope: !850)
!850 = distinct !DILexicalBlock(scope: !771, file: !12, line: 466, column: 6)
!851 = !DILocation(line: 466, column: 11, scope: !850)
!852 = !DILocation(line: 466, column: 6, scope: !771)
!853 = !DILocation(line: 466, column: 26, scope: !850)
!854 = !DILocation(line: 467, column: 6, scope: !855)
!855 = distinct !DILexicalBlock(scope: !771, file: !12, line: 467, column: 6)
!856 = !DILocation(line: 467, column: 11, scope: !855)
!857 = !DILocation(line: 467, column: 6, scope: !771)
!858 = !DILocation(line: 467, column: 26, scope: !855)
!859 = !DILocation(line: 468, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !771, file: !12, line: 468, column: 6)
!861 = !DILocation(line: 468, column: 11, scope: !860)
!862 = !DILocation(line: 468, column: 6, scope: !771)
!863 = !DILocation(line: 468, column: 26, scope: !860)
!864 = !DILocation(line: 469, column: 6, scope: !865)
!865 = distinct !DILexicalBlock(scope: !771, file: !12, line: 469, column: 6)
!866 = !DILocation(line: 469, column: 11, scope: !865)
!867 = !DILocation(line: 469, column: 6, scope: !771)
!868 = !DILocation(line: 469, column: 26, scope: !865)
!869 = !DILocation(line: 470, column: 6, scope: !870)
!870 = distinct !DILexicalBlock(scope: !771, file: !12, line: 470, column: 6)
!871 = !DILocation(line: 470, column: 11, scope: !870)
!872 = !DILocation(line: 470, column: 6, scope: !771)
!873 = !DILocation(line: 470, column: 26, scope: !870)
!874 = !DILocation(line: 471, column: 6, scope: !875)
!875 = distinct !DILexicalBlock(scope: !771, file: !12, line: 471, column: 6)
!876 = !DILocation(line: 471, column: 11, scope: !875)
!877 = !DILocation(line: 471, column: 6, scope: !771)
!878 = !DILocation(line: 471, column: 26, scope: !875)
!879 = !DILocation(line: 472, column: 6, scope: !880)
!880 = distinct !DILexicalBlock(scope: !771, file: !12, line: 472, column: 6)
!881 = !DILocation(line: 472, column: 11, scope: !880)
!882 = !DILocation(line: 472, column: 6, scope: !771)
!883 = !DILocation(line: 472, column: 26, scope: !880)
!884 = !DILocation(line: 473, column: 6, scope: !885)
!885 = distinct !DILexicalBlock(scope: !771, file: !12, line: 473, column: 6)
!886 = !DILocation(line: 473, column: 11, scope: !885)
!887 = !DILocation(line: 473, column: 6, scope: !771)
!888 = !DILocation(line: 473, column: 26, scope: !885)
!889 = !DILocation(line: 474, column: 6, scope: !890)
!890 = distinct !DILexicalBlock(scope: !771, file: !12, line: 474, column: 6)
!891 = !DILocation(line: 474, column: 11, scope: !890)
!892 = !DILocation(line: 474, column: 6, scope: !771)
!893 = !DILocation(line: 474, column: 27, scope: !890)
!894 = !DILocation(line: 475, column: 6, scope: !895)
!895 = distinct !DILexicalBlock(scope: !771, file: !12, line: 475, column: 6)
!896 = !DILocation(line: 475, column: 11, scope: !895)
!897 = !DILocation(line: 475, column: 6, scope: !771)
!898 = !DILocation(line: 475, column: 32, scope: !895)
!899 = !DILocation(line: 477, column: 50, scope: !900)
!900 = distinct !DILexicalBlock(scope: !771, file: !12, line: 477, column: 6)
!901 = !{i8 0, i8 2}
!902 = !{}
!903 = !DILocation(line: 477, column: 6, scope: !771)
!904 = !DILocation(line: 478, column: 3, scope: !900)
!905 = !DILocation(line: 478, column: 3, scope: !906)
!906 = distinct !DILexicalBlock(scope: !907, file: !12, line: 478, column: 3)
!907 = distinct !DILexicalBlock(scope: !900, file: !12, line: 478, column: 3)
!908 = !{i32 -2143553186}
!909 = !DILocation(line: 478, column: 3, scope: !907)
!910 = !DILocation(line: 480, column: 3, scope: !900)
!911 = !DILocation(line: 480, column: 3, scope: !912)
!912 = distinct !DILexicalBlock(scope: !900, file: !12, line: 480, column: 3)
!913 = !DILocation(line: 480, column: 3, scope: !914)
!914 = distinct !DILexicalBlock(scope: !912, file: !12, line: 480, column: 3)
!915 = !DILocation(line: 480, column: 3, scope: !916)
!916 = distinct !DILexicalBlock(scope: !912, file: !12, line: 480, column: 3)
!917 = !{i64 2151414313, i64 2151414342, i64 2151414388, i64 2151414446, i64 2151414500, i64 2151414554, i64 2151414609, i64 2151414640}
!918 = !DILocation(line: 483, column: 2, scope: !771)
!919 = !DILocation(line: 484, column: 1, scope: !771)
!920 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !921, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!921 = !DISubroutineType(types: !922)
!922 = !{!22, !923, !91, !622}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !925, line: 11, flags: DIFlagFwdDecl)
!925 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!926 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !927, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !929)
!927 = !DISubroutineType(types: !928)
!928 = !{!11, !91, !90}
!929 = !{!930, !931}
!930 = !DILocalVariable(name: "flags", arg: 1, scope: !926, file: !12, line: 401, type: !91)
!931 = !DILocalVariable(name: "caller", arg: 2, scope: !926, file: !12, line: 401, type: !90)
!932 = !DILocation(line: 401, column: 67, scope: !926)
!933 = !DILocation(line: 401, column: 88, scope: !926)
!934 = !DILocation(line: 407, column: 6, scope: !935)
!935 = distinct !DILexicalBlock(scope: !926, file: !12, line: 407, column: 6)
!936 = !DILocation(line: 407, column: 6, scope: !926)
!937 = !DILocation(line: 413, column: 3, scope: !935)
!938 = !DILocation(line: 423, column: 38, scope: !939)
!939 = distinct !DILexicalBlock(scope: !926, file: !12, line: 423, column: 6)
!940 = !DILocation(line: 423, column: 44, scope: !939)
!941 = !DILocation(line: 423, column: 6, scope: !926)
!942 = !DILocation(line: 424, column: 3, scope: !939)
!943 = !DILocation(line: 426, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !926, file: !12, line: 425, column: 6)
!945 = !DILocation(line: 429, column: 1, scope: !926)
!946 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !620, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!947 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !214, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!948 = distinct !DISubprogram(name: "list_add_rcu", scope: !509, file: !509, line: 104, type: !949, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !72, !72}
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "new", arg: 1, scope: !948, file: !509, line: 104, type: !72)
!953 = !DILocalVariable(name: "head", arg: 2, scope: !948, file: !509, line: 104, type: !72)
!954 = !DILocation(line: 104, column: 51, scope: !948)
!955 = !DILocation(line: 104, column: 74, scope: !948)
!956 = !DILocation(line: 106, column: 17, scope: !948)
!957 = !DILocation(line: 106, column: 22, scope: !948)
!958 = !DILocation(line: 106, column: 28, scope: !948)
!959 = !DILocation(line: 106, column: 34, scope: !948)
!960 = !DILocation(line: 106, column: 2, scope: !948)
!961 = !DILocation(line: 107, column: 1, scope: !948)
!962 = distinct !DISubprogram(name: "__list_add_rcu", scope: !509, file: !509, line: 76, type: !963, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !965)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !72, !72, !72}
!965 = !{!966, !967, !968, !969}
!966 = !DILocalVariable(name: "new", arg: 1, scope: !962, file: !509, line: 76, type: !72)
!967 = !DILocalVariable(name: "prev", arg: 2, scope: !962, file: !509, line: 77, type: !72)
!968 = !DILocalVariable(name: "next", arg: 3, scope: !962, file: !509, line: 77, type: !72)
!969 = !DILocalVariable(name: "_r_a_p__v", scope: !970, file: !509, line: 84, type: !95)
!970 = distinct !DILexicalBlock(scope: !962, file: !509, line: 84, column: 2)
!971 = !DILocation(line: 76, column: 53, scope: !962)
!972 = !DILocation(line: 77, column: 21, scope: !962)
!973 = !DILocation(line: 77, column: 45, scope: !962)
!974 = !DILocation(line: 79, column: 24, scope: !975)
!975 = distinct !DILexicalBlock(scope: !962, file: !509, line: 79, column: 6)
!976 = !DILocation(line: 79, column: 29, scope: !975)
!977 = !DILocation(line: 79, column: 35, scope: !975)
!978 = !DILocation(line: 79, column: 7, scope: !975)
!979 = !DILocation(line: 79, column: 6, scope: !962)
!980 = !DILocation(line: 80, column: 3, scope: !975)
!981 = !DILocation(line: 82, column: 14, scope: !962)
!982 = !DILocation(line: 82, column: 2, scope: !962)
!983 = !DILocation(line: 82, column: 7, scope: !962)
!984 = !DILocation(line: 82, column: 12, scope: !962)
!985 = !DILocation(line: 83, column: 14, scope: !962)
!986 = !DILocation(line: 83, column: 2, scope: !962)
!987 = !DILocation(line: 83, column: 7, scope: !962)
!988 = !DILocation(line: 83, column: 12, scope: !962)
!989 = !DILocation(line: 84, column: 2, scope: !962)
!990 = !DILocation(line: 84, column: 2, scope: !970)
!991 = !DILocation(line: 84, column: 2, scope: !992)
!992 = distinct !DILexicalBlock(scope: !970, file: !509, line: 84, column: 2)
!993 = !DILocation(line: 84, column: 2, scope: !994)
!994 = distinct !DILexicalBlock(scope: !992, file: !509, line: 84, column: 2)
!995 = !DILocation(line: 84, column: 2, scope: !996)
!996 = distinct !DILexicalBlock(scope: !994, file: !509, line: 84, column: 2)
!997 = !DILocation(line: 84, column: 2, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !509, line: 84, column: 2)
!999 = !DILocation(line: 84, column: 2, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !992, file: !509, line: 84, column: 2)
!1001 = !DILocation(line: 84, column: 2, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1000, file: !509, line: 84, column: 2)
!1003 = !DILocation(line: 84, column: 2, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1000, file: !509, line: 84, column: 2)
!1005 = !DILocation(line: 84, column: 2, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1004, file: !509, line: 84, column: 2)
!1007 = !{i64 2151878196}
!1008 = !DILocation(line: 84, column: 2, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1004, file: !509, line: 84, column: 2)
!1010 = !DILocation(line: 84, column: 2, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1009, file: !509, line: 84, column: 2)
!1012 = !DILocation(line: 84, column: 2, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1009, file: !509, line: 84, column: 2)
!1014 = !DILocation(line: 85, column: 15, scope: !962)
!1015 = !DILocation(line: 85, column: 2, scope: !962)
!1016 = !DILocation(line: 85, column: 8, scope: !962)
!1017 = !DILocation(line: 85, column: 13, scope: !962)
!1018 = !DILocation(line: 86, column: 1, scope: !962)
!1019 = distinct !DISubprogram(name: "__list_add_valid", scope: !1020, file: !1020, line: 128, type: !1021, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1023)
!1020 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!593, !72, !72, !72}
!1023 = !{!1024, !1025, !1026}
!1024 = !DILocalVariable(name: "new", arg: 1, scope: !1019, file: !1020, line: 128, type: !72)
!1025 = !DILocalVariable(name: "prev", arg: 2, scope: !1019, file: !1020, line: 129, type: !72)
!1026 = !DILocalVariable(name: "next", arg: 3, scope: !1019, file: !1020, line: 130, type: !72)
!1027 = !DILocation(line: 128, column: 55, scope: !1019)
!1028 = !DILocation(line: 129, column: 23, scope: !1019)
!1029 = !DILocation(line: 130, column: 23, scope: !1019)
!1030 = !DILocation(line: 132, column: 2, scope: !1019)
!1031 = !DISubprogram(name: "_raw_spin_lock_bh", scope: !1032, file: !1032, line: 28, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1032 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!1033 = !DISubroutineType(types: !1034)
!1034 = !{null, !1035}
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !138, line: 23, baseType: !137)
!1037 = distinct !DISubprogram(name: "__list_del_entry", scope: !1020, file: !1020, line: 213, type: !510, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1038)
!1038 = !{!1039}
!1039 = !DILocalVariable(name: "entry", arg: 1, scope: !1037, file: !1020, line: 213, type: !72)
!1040 = !DILocation(line: 213, column: 55, scope: !1037)
!1041 = !DILocation(line: 215, column: 30, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !1020, line: 215, column: 6)
!1043 = !DILocation(line: 215, column: 7, scope: !1042)
!1044 = !DILocation(line: 215, column: 6, scope: !1037)
!1045 = !DILocation(line: 216, column: 3, scope: !1042)
!1046 = !DILocation(line: 218, column: 13, scope: !1037)
!1047 = !DILocation(line: 218, column: 20, scope: !1037)
!1048 = !DILocation(line: 218, column: 26, scope: !1037)
!1049 = !DILocation(line: 218, column: 33, scope: !1037)
!1050 = !DILocation(line: 218, column: 2, scope: !1037)
!1051 = !DILocation(line: 219, column: 1, scope: !1037)
!1052 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !1020, file: !1020, line: 134, type: !1053, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1055)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!593, !72}
!1055 = !{!1056}
!1056 = !DILocalVariable(name: "entry", arg: 1, scope: !1052, file: !1020, line: 134, type: !72)
!1057 = !DILocation(line: 134, column: 61, scope: !1052)
!1058 = !DILocation(line: 136, column: 2, scope: !1052)
!1059 = distinct !DISubprogram(name: "__list_del", scope: !1020, file: !1020, line: 193, type: !949, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1060)
!1060 = !{!1061, !1062}
!1061 = !DILocalVariable(name: "prev", arg: 1, scope: !1059, file: !1020, line: 193, type: !72)
!1062 = !DILocalVariable(name: "next", arg: 2, scope: !1059, file: !1020, line: 193, type: !72)
!1063 = !DILocation(line: 193, column: 50, scope: !1059)
!1064 = !DILocation(line: 193, column: 75, scope: !1059)
!1065 = !DILocation(line: 195, column: 15, scope: !1059)
!1066 = !DILocation(line: 195, column: 2, scope: !1059)
!1067 = !DILocation(line: 195, column: 8, scope: !1059)
!1068 = !DILocation(line: 195, column: 13, scope: !1059)
!1069 = !DILocation(line: 196, column: 2, scope: !1059)
!1070 = !DILocation(line: 196, column: 2, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1059, file: !1020, line: 196, column: 2)
!1072 = !DILocation(line: 196, column: 2, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1071, file: !1020, line: 196, column: 2)
!1074 = !DILocation(line: 196, column: 2, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1071, file: !1020, line: 196, column: 2)
!1076 = !DILocation(line: 197, column: 1, scope: !1059)
!1077 = !DISubprogram(name: "_raw_spin_unlock_bh", scope: !1032, file: !1032, line: 40, type: !1033, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1078 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !1020, file: !1020, line: 35, type: !510, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1079)
!1079 = !{!1080}
!1080 = !DILocalVariable(name: "list", arg: 1, scope: !1078, file: !1020, line: 35, type: !72)
!1081 = !DILocation(line: 35, column: 53, scope: !1078)
!1082 = !DILocation(line: 37, column: 2, scope: !1078)
!1083 = !DILocation(line: 37, column: 2, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1078, file: !1020, line: 37, column: 2)
!1085 = !DILocation(line: 37, column: 2, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1084, file: !1020, line: 37, column: 2)
!1087 = !DILocation(line: 37, column: 2, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !1020, line: 37, column: 2)
!1089 = !DILocation(line: 38, column: 2, scope: !1078)
!1090 = !DILocation(line: 38, column: 2, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1078, file: !1020, line: 38, column: 2)
!1092 = !DILocation(line: 38, column: 2, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1091, file: !1020, line: 38, column: 2)
!1094 = !DILocation(line: 38, column: 2, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !1020, line: 38, column: 2)
!1096 = !DILocation(line: 39, column: 1, scope: !1078)

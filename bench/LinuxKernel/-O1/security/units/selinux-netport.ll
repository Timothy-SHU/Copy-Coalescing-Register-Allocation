; ModuleID = 'security/selinux/netport.c'
source_filename = "security/selinux/netport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_selinux__610_238_sel_netport_init\22, \22a\22\09\09"
module asm "__initcall__kmod_selinux__610_238_sel_netport_init6:\09\09\09"
module asm ".long\09__initstub__kmod_selinux__610_238_sel_netport_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sel_netport_bkt = type { i32, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.sel_netport = type { %struct.netport_security_struct, %struct.list_head, %struct.callback_head }
%struct.netport_security_struct = type { i32, i16, i8 }
%struct.callback_head = type { ptr, ptr }

@sel_netport_lock = internal global %struct.spinlock zeroinitializer, align 4, !dbg !0
@sel_netport_hash = internal global [256 x %struct.sel_netport_bkt] zeroinitializer, align 16, !dbg !70
@__UNIQUE_ID___addressable___initstub__kmod_selinux__610_238_sel_netport_init6611 = internal global ptr @__initstub__kmod_selinux__610_238_sel_netport_init6, section ".discard.addressable", align 8, !dbg !68
@.str = private unnamed_addr constant [68 x i8] c"\014SELinux: failure in %s(), unable to determine network port label\0A\00", align 1, !dbg !80
@__func__.sel_netport_sid_slow = private unnamed_addr constant [21 x i8] c"sel_netport_sid_slow\00", align 1, !dbg !86
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !92
@selinux_enabled_boot = external dso_local global i32, align 4
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_selinux__610_238_sel_netport_init6611], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @sel_netport_sid(i8 noundef zeroext %protocol, i16 noundef zeroext %pnum, ptr noundef %sid) #0 align 16 !dbg !138 {
entry:
  %retval = alloca i32, align 4
  %protocol.addr = alloca i8, align 1
  %pnum.addr = alloca i16, align 2
  %sid.addr = alloca ptr, align 8
  %port = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i8 %protocol, ptr %protocol.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !143, metadata !DIExpression()), !dbg !147
  store i16 %pnum, ptr %pnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !144, metadata !DIExpression()), !dbg !148
  store ptr %sid, ptr %sid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !145, metadata !DIExpression()), !dbg !149
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !150
  call void @llvm.dbg.declare(metadata ptr %port, metadata !146, metadata !DIExpression()), !dbg !151
  call void @rcu_read_lock() #16, !dbg !152
  %0 = load i8, ptr %protocol.addr, align 1, !dbg !153
  %1 = load i16, ptr %pnum.addr, align 2, !dbg !154
  %call = call ptr @sel_netport_find(i8 noundef zeroext %0, i16 noundef zeroext %1) #16, !dbg !155
  store ptr %call, ptr %port, align 8, !dbg !156
  %2 = load ptr, ptr %port, align 8, !dbg !157
  %cmp = icmp ne ptr %2, null, !dbg !159
  br i1 %cmp, label %if.then, label %if.end, !dbg !160

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %port, align 8, !dbg !161
  %psec = getelementptr inbounds %struct.sel_netport, ptr %3, i32 0, i32 0, !dbg !163
  %sid1 = getelementptr inbounds %struct.netport_security_struct, ptr %psec, i32 0, i32 0, !dbg !164
  %4 = load i32, ptr %sid1, align 8, !dbg !164
  %5 = load ptr, ptr %sid.addr, align 8, !dbg !165
  store i32 %4, ptr %5, align 4, !dbg !166
  call void @rcu_read_unlock() #16, !dbg !167
  store i32 0, ptr %retval, align 4, !dbg !168
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !168

if.end:                                           ; preds = %entry
  call void @rcu_read_unlock() #16, !dbg !169
  %6 = load i8, ptr %protocol.addr, align 1, !dbg !170
  %7 = load i16, ptr %pnum.addr, align 2, !dbg !171
  %8 = load ptr, ptr %sid.addr, align 8, !dbg !172
  %call2 = call i32 @sel_netport_sid_slow(i8 noundef zeroext %6, i16 noundef zeroext %7, ptr noundef %8) #16, !dbg !173
  store i32 %call2, ptr %retval, align 4, !dbg !174
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !174

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !175
  %9 = load i32, ptr %retval, align 4, !dbg !175
  ret i32 %9, !dbg !175
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_lock() #3 align 16 !dbg !176 {
entry:
  call void @__rcu_read_lock() #16, !dbg !180
  br label %do.body, !dbg !181

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !182

do.end:                                           ; preds = %do.body
  br label %do.body1, !dbg !184

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !185

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !187
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @sel_netport_find(i8 noundef zeroext %protocol, i16 noundef zeroext %pnum) #0 align 16 !dbg !188 {
entry:
  %retval = alloca ptr, align 8
  %protocol.addr = alloca i8, align 1
  %pnum.addr = alloca i16, align 2
  %idx = alloca i32, align 4
  %port = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr16 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  %tmp23 = alloca ptr, align 8
  store i8 %protocol, ptr %protocol.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !192, metadata !DIExpression()), !dbg !202
  store i16 %pnum, ptr %pnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !193, metadata !DIExpression()), !dbg !203
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !204
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !194, metadata !DIExpression()), !dbg !205
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !206
  call void @llvm.dbg.declare(metadata ptr %port, metadata !195, metadata !DIExpression()), !dbg !207
  %0 = load i16, ptr %pnum.addr, align 2, !dbg !208
  %call = call i32 @sel_netport_hashfn(i16 noundef zeroext %0) #16, !dbg !209
  store i32 %call, ptr %idx, align 4, !dbg !210
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !211
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !196, metadata !DIExpression()), !dbg !211
  br label %do.body, !dbg !212

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !214

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !214

do.end:                                           ; preds = %do.cond
  %1 = load i32, ptr %idx, align 4, !dbg !212
  %idxprom = zext i32 %1 to i64, !dbg !212
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom, !dbg !212
  %list = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !212
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !212
  %2 = load volatile ptr, ptr %next, align 8, !dbg !212
  store ptr %2, ptr %tmp, align 8, !dbg !214
  %3 = load ptr, ptr %tmp, align 8, !dbg !212
  store ptr %3, ptr %__mptr, align 8, !dbg !211
  %4 = load ptr, ptr %__mptr, align 8, !dbg !211
  %add.ptr = getelementptr i8, ptr %4, i64 -8, !dbg !211
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !211
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !216
  %5 = load ptr, ptr %tmp1, align 8, !dbg !211
  store ptr %5, ptr %port, align 8, !dbg !216
  br label %for.cond, !dbg !216

for.cond:                                         ; preds = %do.end19, %do.end
  %6 = load ptr, ptr %port, align 8, !dbg !217
  %list2 = getelementptr inbounds %struct.sel_netport, ptr %6, i32 0, i32 1, !dbg !217
  %7 = load i32, ptr %idx, align 4, !dbg !217
  %idxprom3 = zext i32 %7 to i64, !dbg !217
  %arrayidx4 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom3, !dbg !217
  %list5 = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx4, i32 0, i32 1, !dbg !217
  %cmp = icmp ne ptr %list2, %list5, !dbg !217
  br i1 %cmp, label %for.body, label %for.end, !dbg !216

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %port, align 8, !dbg !218
  %psec = getelementptr inbounds %struct.sel_netport, ptr %8, i32 0, i32 0, !dbg !220
  %port6 = getelementptr inbounds %struct.netport_security_struct, ptr %psec, i32 0, i32 1, !dbg !221
  %9 = load i16, ptr %port6, align 4, !dbg !221
  %conv = zext i16 %9 to i32, !dbg !218
  %10 = load i16, ptr %pnum.addr, align 2, !dbg !222
  %conv7 = zext i16 %10 to i32, !dbg !222
  %cmp8 = icmp eq i32 %conv, %conv7, !dbg !223
  br i1 %cmp8, label %land.lhs.true, label %if.end, !dbg !224

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %port, align 8, !dbg !225
  %psec10 = getelementptr inbounds %struct.sel_netport, ptr %11, i32 0, i32 0, !dbg !226
  %protocol11 = getelementptr inbounds %struct.netport_security_struct, ptr %psec10, i32 0, i32 2, !dbg !227
  %12 = load i8, ptr %protocol11, align 2, !dbg !227
  %conv12 = zext i8 %12 to i32, !dbg !225
  %13 = load i8, ptr %protocol.addr, align 1, !dbg !228
  %conv13 = zext i8 %13 to i32, !dbg !228
  %cmp14 = icmp eq i32 %conv12, %conv13, !dbg !229
  br i1 %cmp14, label %if.then, label %if.end, !dbg !230

if.then:                                          ; preds = %land.lhs.true
  %14 = load ptr, ptr %port, align 8, !dbg !231
  store ptr %14, ptr %retval, align 8, !dbg !232
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !232

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !228

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #15, !dbg !233
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !199, metadata !DIExpression()), !dbg !233
  br label %do.body17, !dbg !234

do.body17:                                        ; preds = %for.inc
  br label %do.cond18, !dbg !236

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !236

do.end19:                                         ; preds = %do.cond18
  %15 = load ptr, ptr %port, align 8, !dbg !234
  %list21 = getelementptr inbounds %struct.sel_netport, ptr %15, i32 0, i32 1, !dbg !234
  %next22 = getelementptr inbounds %struct.list_head, ptr %list21, i32 0, i32 0, !dbg !234
  %16 = load volatile ptr, ptr %next22, align 8, !dbg !234
  store ptr %16, ptr %tmp20, align 8, !dbg !236
  %17 = load ptr, ptr %tmp20, align 8, !dbg !234
  store ptr %17, ptr %__mptr16, align 8, !dbg !233
  %18 = load ptr, ptr %__mptr16, align 8, !dbg !233
  %add.ptr24 = getelementptr i8, ptr %18, i64 -8, !dbg !233
  store ptr %add.ptr24, ptr %tmp23, align 8, !dbg !233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #15, !dbg !217
  %19 = load ptr, ptr %tmp23, align 8, !dbg !233
  store ptr %19, ptr %port, align 8, !dbg !217
  br label %for.cond, !dbg !217, !llvm.loop !238

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !242
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !242

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !243
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !243
  %20 = load ptr, ptr %retval, align 8, !dbg !243
  ret ptr %20, !dbg !243
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rcu_read_unlock() #4 align 16 !dbg !244 {
entry:
  br label %do.body, !dbg !245

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !246

do.end:                                           ; preds = %do.body
  call void @__rcu_read_unlock() #16, !dbg !248
  br label %do.body1, !dbg !249

do.body1:                                         ; preds = %do.end
  br label %do.end2, !dbg !250

do.end2:                                          ; preds = %do.body1
  ret void, !dbg !252
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_netport_sid_slow(i8 noundef zeroext %protocol, i16 noundef zeroext %pnum, ptr noundef %sid) #0 align 16 !dbg !253 {
entry:
  %retval = alloca i32, align 4
  %protocol.addr = alloca i8, align 1
  %pnum.addr = alloca i16, align 2
  %sid.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %port = alloca ptr, align 8
  %new = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i8 %protocol, ptr %protocol.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %protocol.addr, metadata !255, metadata !DIExpression()), !dbg !262
  store i16 %pnum, ptr %pnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !256, metadata !DIExpression()), !dbg !263
  store ptr %sid, ptr %sid.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sid.addr, metadata !257, metadata !DIExpression()), !dbg !264
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !265
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !258, metadata !DIExpression()), !dbg !266
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !267
  call void @llvm.dbg.declare(metadata ptr %port, metadata !259, metadata !DIExpression()), !dbg !268
  call void @llvm.lifetime.start.p0(i64 8, ptr %new) #15, !dbg !269
  call void @llvm.dbg.declare(metadata ptr %new, metadata !260, metadata !DIExpression()), !dbg !270
  call void @spin_lock_bh(ptr noundef @sel_netport_lock) #16, !dbg !271
  %0 = load i8, ptr %protocol.addr, align 1, !dbg !272
  %1 = load i16, ptr %pnum.addr, align 2, !dbg !273
  %call = call ptr @sel_netport_find(i8 noundef zeroext %0, i16 noundef zeroext %1) #16, !dbg !274
  store ptr %call, ptr %port, align 8, !dbg !275
  %2 = load ptr, ptr %port, align 8, !dbg !276
  %cmp = icmp ne ptr %2, null, !dbg !278
  br i1 %cmp, label %if.then, label %if.end, !dbg !279

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %port, align 8, !dbg !280
  %psec = getelementptr inbounds %struct.sel_netport, ptr %3, i32 0, i32 0, !dbg !282
  %sid1 = getelementptr inbounds %struct.netport_security_struct, ptr %psec, i32 0, i32 0, !dbg !283
  %4 = load i32, ptr %sid1, align 8, !dbg !283
  %5 = load ptr, ptr %sid.addr, align 8, !dbg !284
  store i32 %4, ptr %5, align 4, !dbg !285
  call void @spin_unlock_bh(ptr noundef @sel_netport_lock) #16, !dbg !286
  store i32 0, ptr %retval, align 4, !dbg !287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !287

if.end:                                           ; preds = %entry
  %6 = load i8, ptr %protocol.addr, align 1, !dbg !288
  %7 = load i16, ptr %pnum.addr, align 2, !dbg !289
  %8 = load ptr, ptr %sid.addr, align 8, !dbg !290
  %call2 = call i32 @security_port_sid(i8 noundef zeroext %6, i16 noundef zeroext %7, ptr noundef %8) #16, !dbg !291
  store i32 %call2, ptr %ret, align 4, !dbg !292
  %9 = load i32, ptr %ret, align 4, !dbg !293
  %cmp3 = icmp ne i32 %9, 0, !dbg !295
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !296

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !297

if.end5:                                          ; preds = %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 40, i32 noundef 2080) #17, !dbg !298
  store ptr %call6, ptr %new, align 8, !dbg !299
  %10 = load ptr, ptr %new, align 8, !dbg !300
  %tobool = icmp ne ptr %10, null, !dbg !300
  br i1 %tobool, label %if.then7, label %if.end14, !dbg !302

if.then7:                                         ; preds = %if.end5
  %11 = load i16, ptr %pnum.addr, align 2, !dbg !303
  %12 = load ptr, ptr %new, align 8, !dbg !305
  %psec8 = getelementptr inbounds %struct.sel_netport, ptr %12, i32 0, i32 0, !dbg !306
  %port9 = getelementptr inbounds %struct.netport_security_struct, ptr %psec8, i32 0, i32 1, !dbg !307
  store i16 %11, ptr %port9, align 4, !dbg !308
  %13 = load i8, ptr %protocol.addr, align 1, !dbg !309
  %14 = load ptr, ptr %new, align 8, !dbg !310
  %psec10 = getelementptr inbounds %struct.sel_netport, ptr %14, i32 0, i32 0, !dbg !311
  %protocol11 = getelementptr inbounds %struct.netport_security_struct, ptr %psec10, i32 0, i32 2, !dbg !312
  store i8 %13, ptr %protocol11, align 2, !dbg !313
  %15 = load ptr, ptr %sid.addr, align 8, !dbg !314
  %16 = load i32, ptr %15, align 4, !dbg !315
  %17 = load ptr, ptr %new, align 8, !dbg !316
  %psec12 = getelementptr inbounds %struct.sel_netport, ptr %17, i32 0, i32 0, !dbg !317
  %sid13 = getelementptr inbounds %struct.netport_security_struct, ptr %psec12, i32 0, i32 0, !dbg !318
  store i32 %16, ptr %sid13, align 8, !dbg !319
  %18 = load ptr, ptr %new, align 8, !dbg !320
  call void @sel_netport_insert(ptr noundef %18) #16, !dbg !321
  br label %if.end14, !dbg !322

if.end14:                                         ; preds = %if.then7, %if.end5
  br label %out, !dbg !300

out:                                              ; preds = %if.end14, %if.then4
  call void @llvm.dbg.label(metadata !261), !dbg !323
  call void @spin_unlock_bh(ptr noundef @sel_netport_lock) #16, !dbg !324
  %19 = load i32, ptr %ret, align 4, !dbg !325
  %tobool15 = icmp ne i32 %19, 0, !dbg !325
  %lnot = xor i1 %tobool15, true, !dbg !325
  %lnot16 = xor i1 %lnot, true, !dbg !325
  %lnot.ext = zext i1 %lnot16 to i32, !dbg !325
  %conv = sext i32 %lnot.ext to i64, !dbg !325
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !325
  %tobool17 = icmp ne i64 %expval, 0, !dbg !325
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !327

if.then18:                                        ; preds = %out
  br label %do.body, !dbg !328

do.body:                                          ; preds = %if.then18
  br label %do.cond, !dbg !330

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !330

do.end:                                           ; preds = %do.cond
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef @.str, ptr noundef @__func__.sel_netport_sid_slow) #18, !dbg !328
  store i32 %call19, ptr %tmp, align 4, !dbg !330
  %20 = load i32, ptr %tmp, align 4, !dbg !328
  br label %if.end20, !dbg !332

if.end20:                                         ; preds = %do.end, %out
  %21 = load i32, ptr %ret, align 4, !dbg !333
  store i32 %21, ptr %retval, align 4, !dbg !334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !334

cleanup:                                          ; preds = %if.end20, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %new) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !335
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !335
  %22 = load i32, ptr %retval, align 4, !dbg !335
  ret i32 %22, !dbg !335
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @sel_netport_flush() #0 align 16 !dbg !336 {
entry:
  %idx = alloca i32, align 4
  %port = alloca ptr, align 8
  %port_tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  %__mptr17 = alloca ptr, align 8
  %tmp20 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !355
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !338, metadata !DIExpression()), !dbg !356
  call void @llvm.lifetime.start.p0(i64 8, ptr %port) #15, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %port, metadata !339, metadata !DIExpression()), !dbg !358
  call void @llvm.lifetime.start.p0(i64 8, ptr %port_tmp) #15, !dbg !357
  call void @llvm.dbg.declare(metadata ptr %port_tmp, metadata !340, metadata !DIExpression()), !dbg !359
  call void @spin_lock_bh(ptr noundef @sel_netport_lock) #16, !dbg !360
  store i32 0, ptr %idx, align 4, !dbg !361
  br label %for.cond, !dbg !362

for.cond:                                         ; preds = %for.inc24, %entry
  %0 = load i32, ptr %idx, align 4, !dbg !363
  %cmp = icmp ult i32 %0, 256, !dbg !364
  br i1 %cmp, label %for.body, label %for.end25, !dbg !365

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !366
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !341, metadata !DIExpression()), !dbg !366
  %1 = load i32, ptr %idx, align 4, !dbg !366
  %idxprom = zext i32 %1 to i64, !dbg !366
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom, !dbg !366
  %list = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !366
  %next = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 0, !dbg !366
  %2 = load ptr, ptr %next, align 8, !dbg !366
  store ptr %2, ptr %__mptr, align 8, !dbg !366
  %3 = load ptr, ptr %__mptr, align 8, !dbg !366
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !366
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !367
  %4 = load ptr, ptr %tmp, align 8, !dbg !366
  store ptr %4, ptr %port, align 8, !dbg !367
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #15, !dbg !368
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !347, metadata !DIExpression()), !dbg !368
  %5 = load ptr, ptr %port, align 8, !dbg !368
  %list2 = getelementptr inbounds %struct.sel_netport, ptr %5, i32 0, i32 1, !dbg !368
  %next3 = getelementptr inbounds %struct.list_head, ptr %list2, i32 0, i32 0, !dbg !368
  %6 = load ptr, ptr %next3, align 8, !dbg !368
  store ptr %6, ptr %__mptr1, align 8, !dbg !368
  %7 = load ptr, ptr %__mptr1, align 8, !dbg !368
  %add.ptr5 = getelementptr i8, ptr %7, i64 -8, !dbg !368
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !368
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #15, !dbg !367
  %8 = load ptr, ptr %tmp4, align 8, !dbg !368
  store ptr %8, ptr %port_tmp, align 8, !dbg !367
  br label %for.cond6, !dbg !367

for.cond6:                                        ; preds = %for.inc, %for.body
  %9 = load ptr, ptr %port, align 8, !dbg !369
  %list7 = getelementptr inbounds %struct.sel_netport, ptr %9, i32 0, i32 1, !dbg !369
  %10 = load i32, ptr %idx, align 4, !dbg !369
  %idxprom8 = zext i32 %10 to i64, !dbg !369
  %arrayidx9 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom8, !dbg !369
  %list10 = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx9, i32 0, i32 1, !dbg !369
  %cmp11 = icmp eq ptr %list7, %list10, !dbg !369
  %lnot = xor i1 %cmp11, true, !dbg !369
  br i1 %lnot, label %for.body12, label %for.end, !dbg !367

for.body12:                                       ; preds = %for.cond6
  %11 = load ptr, ptr %port, align 8, !dbg !370
  %list13 = getelementptr inbounds %struct.sel_netport, ptr %11, i32 0, i32 1, !dbg !371
  call void @list_del_rcu(ptr noundef %list13) #16, !dbg !372
  br label %do.body, !dbg !373

do.body:                                          ; preds = %for.body12
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #15, !dbg !374
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !349, metadata !DIExpression()), !dbg !374
  %12 = load ptr, ptr %port, align 8, !dbg !374
  store ptr %12, ptr %___p, align 8, !dbg !374
  %13 = load ptr, ptr %___p, align 8, !dbg !375
  %tobool = icmp ne ptr %13, null, !dbg !375
  br i1 %tobool, label %if.then, label %if.end, !dbg !374

if.then:                                          ; preds = %do.body
  br label %do.body14, !dbg !377

do.body14:                                        ; preds = %if.then
  br label %do.cond, !dbg !379

do.cond:                                          ; preds = %do.body14
  br label %do.end, !dbg !379

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %___p, align 8, !dbg !377
  %rcu = getelementptr inbounds %struct.sel_netport, ptr %14, i32 0, i32 2, !dbg !377
  %15 = load ptr, ptr %___p, align 8, !dbg !377
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %15) #16, !dbg !377
  br label %if.end, !dbg !377

if.end:                                           ; preds = %do.end, %do.body
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #15, !dbg !373
  br label %do.cond15, !dbg !374

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !374

do.end16:                                         ; preds = %do.cond15
  br label %for.inc, !dbg !381

for.inc:                                          ; preds = %do.end16
  %16 = load ptr, ptr %port_tmp, align 8, !dbg !369
  store ptr %16, ptr %port, align 8, !dbg !369
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr17) #15, !dbg !382
  call void @llvm.dbg.declare(metadata ptr %__mptr17, metadata !353, metadata !DIExpression()), !dbg !382
  %17 = load ptr, ptr %port_tmp, align 8, !dbg !382
  %list18 = getelementptr inbounds %struct.sel_netport, ptr %17, i32 0, i32 1, !dbg !382
  %next19 = getelementptr inbounds %struct.list_head, ptr %list18, i32 0, i32 0, !dbg !382
  %18 = load ptr, ptr %next19, align 8, !dbg !382
  store ptr %18, ptr %__mptr17, align 8, !dbg !382
  %19 = load ptr, ptr %__mptr17, align 8, !dbg !382
  %add.ptr21 = getelementptr i8, ptr %19, i64 -8, !dbg !382
  store ptr %add.ptr21, ptr %tmp20, align 8, !dbg !382
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr17) #15, !dbg !369
  %20 = load ptr, ptr %tmp20, align 8, !dbg !382
  store ptr %20, ptr %port_tmp, align 8, !dbg !369
  br label %for.cond6, !dbg !369, !llvm.loop !383

for.end:                                          ; preds = %for.cond6
  %21 = load i32, ptr %idx, align 4, !dbg !385
  %idxprom22 = zext i32 %21 to i64, !dbg !386
  %arrayidx23 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom22, !dbg !386
  %size = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx23, i32 0, i32 0, !dbg !387
  store i32 0, ptr %size, align 8, !dbg !388
  br label %for.inc24, !dbg !389

for.inc24:                                        ; preds = %for.end
  %22 = load i32, ptr %idx, align 4, !dbg !390
  %inc = add i32 %22, 1, !dbg !390
  store i32 %inc, ptr %idx, align 4, !dbg !390
  br label %for.cond, !dbg !391, !llvm.loop !392

for.end25:                                        ; preds = %for.cond
  call void @spin_unlock_bh(ptr noundef @sel_netport_lock) #16, !dbg !394
  call void @llvm.lifetime.end.p0(i64 8, ptr %port_tmp) #15, !dbg !395
  call void @llvm.lifetime.end.p0(i64 8, ptr %port) #15, !dbg !395
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !395
  ret void, !dbg !395
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_bh(ptr noundef %lock) #3 align 16 !dbg !396 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !402, metadata !DIExpression()), !dbg !403
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !404
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !404
  call void @_raw_spin_lock_bh(ptr noundef %1) #16, !dbg !404
  ret void, !dbg !405
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del_rcu(ptr noundef %entry1) #4 align 16 !dbg !406 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !413
  call void @__list_del_entry(ptr noundef %0) #16, !dbg !414
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !415
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !416
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !417
  ret void, !dbg !418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !419 dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_bh(ptr noundef %lock) #3 align 16 !dbg !423 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !425, metadata !DIExpression()), !dbg !426
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !427
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !427
  call void @_raw_spin_unlock_bh(ptr noundef %1) #16, !dbg !427
  ret void, !dbg !428
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_selinux__610_238_sel_netport_init6() #6 section ".init.text" align 16 !dbg !429 {
entry:
  %call = call i32 @sel_netport_init() #18, !dbg !432
  ret i32 %call, !dbg !432
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @sel_netport_init() #6 section ".init.text" align 16 !dbg !433 {
entry:
  %retval = alloca i32, align 4
  %iter = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %iter) #15, !dbg !436
  call void @llvm.dbg.declare(metadata ptr %iter, metadata !435, metadata !DIExpression()), !dbg !437
  %0 = load i32, ptr @selinux_enabled_boot, align 4, !dbg !438
  %tobool = icmp ne i32 %0, 0, !dbg !438
  br i1 %tobool, label %if.end, label %if.then, !dbg !440

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !441
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !441

if.end:                                           ; preds = %entry
  store i32 0, ptr %iter, align 4, !dbg !442
  br label %for.cond, !dbg !444

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, ptr %iter, align 4, !dbg !445
  %cmp = icmp slt i32 %1, 256, !dbg !447
  br i1 %cmp, label %for.body, label %for.end, !dbg !448

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %iter, align 4, !dbg !449
  %idxprom = sext i32 %2 to i64, !dbg !451
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom, !dbg !451
  %list = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !452
  call void @INIT_LIST_HEAD(ptr noundef %list) #16, !dbg !453
  %3 = load i32, ptr %iter, align 4, !dbg !454
  %idxprom1 = sext i32 %3 to i64, !dbg !455
  %arrayidx2 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom1, !dbg !455
  %size = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx2, i32 0, i32 0, !dbg !456
  store i32 0, ptr %size, align 8, !dbg !457
  br label %for.inc, !dbg !458

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %iter, align 4, !dbg !459
  %inc = add i32 %4, 1, !dbg !459
  store i32 %inc, ptr %iter, align 4, !dbg !459
  br label %for.cond, !dbg !460, !llvm.loop !461

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !463
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !463

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %iter) #15, !dbg !464
  %5 = load i32, ptr %retval, align 4, !dbg !464
  ret i32 %5, !dbg !464
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !465 dso_local void @__rcu_read_lock() #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sel_netport_hashfn(i16 noundef zeroext %pnum) #0 align 16 !dbg !466 {
entry:
  %pnum.addr = alloca i16, align 2
  store i16 %pnum, ptr %pnum.addr, align 2
  call void @llvm.dbg.declare(metadata ptr %pnum.addr, metadata !470, metadata !DIExpression()), !dbg !471
  %0 = load i16, ptr %pnum.addr, align 2, !dbg !472
  %conv = zext i16 %0 to i32, !dbg !472
  %and = and i32 %conv, 255, !dbg !473
  ret i32 %and, !dbg !474
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !475 dso_local void @__rcu_read_unlock() #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !476 dso_local i32 @security_port_sid(i8 noundef zeroext, i16 noundef zeroext, ptr noundef) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !478 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !486, metadata !DIExpression()), !dbg !488
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !487, metadata !DIExpression()), !dbg !489
  %0 = load i64, ptr %size.addr, align 8, !dbg !490
  %1 = load i32, ptr %flags.addr, align 4, !dbg !491
  %or = or i32 %1, 256, !dbg !492
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !493
  ret ptr %call, !dbg !494
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sel_netport_insert(ptr noundef %port) #0 align 16 !dbg !495 {
entry:
  %port.addr = alloca ptr, align 8
  %idx = alloca i32, align 4
  %tail = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %___p = alloca ptr, align 8
  store ptr %port, ptr %port.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %port.addr, metadata !499, metadata !DIExpression()), !dbg !508
  call void @llvm.lifetime.start.p0(i64 4, ptr %idx) #15, !dbg !509
  call void @llvm.dbg.declare(metadata ptr %idx, metadata !500, metadata !DIExpression()), !dbg !510
  %0 = load ptr, ptr %port.addr, align 8, !dbg !511
  %psec = getelementptr inbounds %struct.sel_netport, ptr %0, i32 0, i32 0, !dbg !512
  %port1 = getelementptr inbounds %struct.netport_security_struct, ptr %psec, i32 0, i32 1, !dbg !513
  %1 = load i16, ptr %port1, align 4, !dbg !513
  %call = call i32 @sel_netport_hashfn(i16 noundef zeroext %1) #16, !dbg !514
  store i32 %call, ptr %idx, align 4, !dbg !515
  %2 = load ptr, ptr %port.addr, align 8, !dbg !516
  %list = getelementptr inbounds %struct.sel_netport, ptr %2, i32 0, i32 1, !dbg !517
  %3 = load i32, ptr %idx, align 4, !dbg !518
  %idxprom = zext i32 %3 to i64, !dbg !519
  %arrayidx = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom, !dbg !519
  %list2 = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx, i32 0, i32 1, !dbg !520
  call void @list_add_rcu(ptr noundef %list, ptr noundef %list2) #16, !dbg !521
  %4 = load i32, ptr %idx, align 4, !dbg !522
  %idxprom3 = zext i32 %4 to i64, !dbg !523
  %arrayidx4 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom3, !dbg !523
  %size = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx4, i32 0, i32 0, !dbg !524
  %5 = load i32, ptr %size, align 8, !dbg !524
  %cmp = icmp eq i32 %5, 16, !dbg !525
  br i1 %cmp, label %if.then, label %if.else, !dbg !526

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %tail) #15, !dbg !527
  call void @llvm.dbg.declare(metadata ptr %tail, metadata !501, metadata !DIExpression()), !dbg !528
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !529
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !504, metadata !DIExpression()), !dbg !529
  br label %do.body, !dbg !530

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !532

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !532

do.end:                                           ; preds = %do.cond
  %6 = load i32, ptr %idx, align 4, !dbg !530
  %idxprom5 = zext i32 %6 to i64, !dbg !530
  %arrayidx6 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom5, !dbg !530
  %list7 = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx6, i32 0, i32 1, !dbg !530
  %prev = getelementptr inbounds %struct.list_head, ptr %list7, i32 0, i32 1, !dbg !530
  %7 = load ptr, ptr %prev, align 8, !dbg !530
  store ptr %7, ptr %tmp, align 8, !dbg !532
  %8 = load ptr, ptr %tmp, align 8, !dbg !530
  store ptr %8, ptr %__mptr, align 8, !dbg !529
  %9 = load ptr, ptr %__mptr, align 8, !dbg !529
  %add.ptr = getelementptr i8, ptr %9, i64 -8, !dbg !529
  store ptr %add.ptr, ptr %tmp8, align 8, !dbg !529
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !534
  %10 = load ptr, ptr %tmp8, align 8, !dbg !529
  store ptr %10, ptr %tail, align 8, !dbg !535
  %11 = load ptr, ptr %tail, align 8, !dbg !536
  %list9 = getelementptr inbounds %struct.sel_netport, ptr %11, i32 0, i32 1, !dbg !537
  call void @list_del_rcu(ptr noundef %list9) #16, !dbg !538
  br label %do.body10, !dbg !539

do.body10:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %___p) #15, !dbg !540
  call void @llvm.dbg.declare(metadata ptr %___p, metadata !506, metadata !DIExpression()), !dbg !540
  %12 = load ptr, ptr %tail, align 8, !dbg !540
  store ptr %12, ptr %___p, align 8, !dbg !540
  %13 = load ptr, ptr %___p, align 8, !dbg !541
  %tobool = icmp ne ptr %13, null, !dbg !541
  br i1 %tobool, label %if.then11, label %if.end, !dbg !540

if.then11:                                        ; preds = %do.body10
  br label %do.body12, !dbg !543

do.body12:                                        ; preds = %if.then11
  br label %do.cond13, !dbg !545

do.cond13:                                        ; preds = %do.body12
  br label %do.end14, !dbg !545

do.end14:                                         ; preds = %do.cond13
  %14 = load ptr, ptr %___p, align 8, !dbg !543
  %rcu = getelementptr inbounds %struct.sel_netport, ptr %14, i32 0, i32 2, !dbg !543
  %15 = load ptr, ptr %___p, align 8, !dbg !543
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef %15) #16, !dbg !543
  br label %if.end, !dbg !543

if.end:                                           ; preds = %do.end14, %do.body10
  call void @llvm.lifetime.end.p0(i64 8, ptr %___p) #15, !dbg !539
  br label %do.cond15, !dbg !540

do.cond15:                                        ; preds = %if.end
  br label %do.end16, !dbg !540

do.end16:                                         ; preds = %do.cond15
  call void @llvm.lifetime.end.p0(i64 8, ptr %tail) #15, !dbg !547
  br label %if.end20, !dbg !548

if.else:                                          ; preds = %entry
  %16 = load i32, ptr %idx, align 4, !dbg !549
  %idxprom17 = zext i32 %16 to i64, !dbg !550
  %arrayidx18 = getelementptr [256 x %struct.sel_netport_bkt], ptr @sel_netport_hash, i64 0, i64 %idxprom17, !dbg !550
  %size19 = getelementptr inbounds %struct.sel_netport_bkt, ptr %arrayidx18, i32 0, i32 0, !dbg !551
  %17 = load i32, ptr %size19, align 8, !dbg !552
  %inc = add i32 %17, 1, !dbg !552
  store i32 %inc, ptr %size19, align 8, !dbg !552
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end16
  call void @llvm.lifetime.end.p0(i64 4, ptr %idx) #15, !dbg !553
  ret void, !dbg !553
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !554 dso_local i32 @_printk(ptr noundef, ...) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !559 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !561, metadata !DIExpression()), !dbg !566
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !562, metadata !DIExpression()), !dbg !567
  %0 = load i64, ptr %size.addr, align 8, !dbg !568
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !569
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !570

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !571
  %tobool = icmp ne i64 %2, 0, !dbg !571
  br i1 %tobool, label %if.then, label %if.end7, !dbg !572

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !573
  call void @llvm.dbg.declare(metadata ptr %index, metadata !563, metadata !DIExpression()), !dbg !574
  %3 = load i64, ptr %size.addr, align 8, !dbg !575
  %cmp = icmp ugt i64 %3, 8192, !dbg !577
  br i1 %cmp, label %if.then1, label %if.end, !dbg !578

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !579
  %5 = load i32, ptr %flags.addr, align 4, !dbg !580
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !581
  store ptr %call, ptr %retval, align 8, !dbg !582
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !582

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !583
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !583
  store i32 %call2, ptr %index, align 4, !dbg !584
  %7 = load i32, ptr %flags.addr, align 4, !dbg !585
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !586
  %9 = ptrtoint ptr %8 to i64, !dbg !586
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !587
  %idxprom = zext i32 %call3 to i64, !dbg !588
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !588
  %10 = load i32, ptr %index, align 4, !dbg !589
  %idxprom4 = zext i32 %10 to i64, !dbg !588
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !588
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !588
  %12 = load i32, ptr %flags.addr, align 4, !dbg !590
  %13 = load i64, ptr %size.addr, align 8, !dbg !591
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !592
  store ptr %call6, ptr %retval, align 8, !dbg !593
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !593

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !594
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !595
  %15 = load i32, ptr %flags.addr, align 4, !dbg !596
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !597
  store ptr %call8, ptr %retval, align 8, !dbg !598
  br label %return, !dbg !598

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !599
  ret ptr %16, !dbg !599
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !600 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #3 align 16 !dbg !601 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !607, metadata !DIExpression()), !dbg !609
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !608, metadata !DIExpression()), !dbg !610
  %0 = load i64, ptr %size.addr, align 8, !dbg !611
  %tobool = icmp ne i64 %0, 0, !dbg !611
  br i1 %tobool, label %if.end, label %if.then, !dbg !613

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !614
  br label %return, !dbg !614

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !615
  %cmp = icmp ule i64 %1, 8, !dbg !617
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !618

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !619
  br label %return, !dbg !619

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !620
  %cmp3 = icmp ugt i64 %2, 64, !dbg !622
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !623

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !624
  %cmp4 = icmp ule i64 %3, 96, !dbg !625
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !626

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !627
  br label %return, !dbg !627

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !628
  %cmp7 = icmp ugt i64 %4, 128, !dbg !630
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !631

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !632
  %cmp9 = icmp ule i64 %5, 192, !dbg !633
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !634

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !635
  br label %return, !dbg !635

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !636
  %cmp12 = icmp ule i64 %6, 8, !dbg !638
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !639

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !640
  br label %return, !dbg !640

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !641
  %cmp15 = icmp ule i64 %7, 16, !dbg !643
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !644

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !645
  br label %return, !dbg !645

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !646
  %cmp18 = icmp ule i64 %8, 32, !dbg !648
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !649

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !650
  br label %return, !dbg !650

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !651
  %cmp21 = icmp ule i64 %9, 64, !dbg !653
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !654

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !655
  br label %return, !dbg !655

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !656
  %cmp24 = icmp ule i64 %10, 128, !dbg !658
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !659

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !660
  br label %return, !dbg !660

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !661
  %cmp27 = icmp ule i64 %11, 256, !dbg !663
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !664

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !665
  br label %return, !dbg !665

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !666
  %cmp30 = icmp ule i64 %12, 512, !dbg !668
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !669

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !670
  br label %return, !dbg !670

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !671
  %cmp33 = icmp ule i64 %13, 1024, !dbg !673
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !674

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !675
  br label %return, !dbg !675

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !676
  %cmp36 = icmp ule i64 %14, 2048, !dbg !678
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !679

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !680
  br label %return, !dbg !680

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !681
  %cmp39 = icmp ule i64 %15, 4096, !dbg !683
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !684

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !685
  br label %return, !dbg !685

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !686
  %cmp42 = icmp ule i64 %16, 8192, !dbg !688
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !689

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !690
  br label %return, !dbg !690

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !691
  %cmp45 = icmp ule i64 %17, 16384, !dbg !693
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !694

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !695
  br label %return, !dbg !695

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !696
  %cmp48 = icmp ule i64 %18, 32768, !dbg !698
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !699

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !700
  br label %return, !dbg !700

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !701
  %cmp51 = icmp ule i64 %19, 65536, !dbg !703
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !704

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !705
  br label %return, !dbg !705

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !706
  %cmp54 = icmp ule i64 %20, 131072, !dbg !708
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !709

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !710
  br label %return, !dbg !710

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !711
  %cmp57 = icmp ule i64 %21, 262144, !dbg !713
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !714

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !715
  br label %return, !dbg !715

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !716
  %cmp60 = icmp ule i64 %22, 524288, !dbg !718
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !719

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !720
  br label %return, !dbg !720

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !721
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !723
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !724

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !725
  br label %return, !dbg !725

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !726
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !728
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !729

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !730
  br label %return, !dbg !730

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !731, !range !733, !noundef !734
  %tobool69 = trunc i8 %25 to i1, !dbg !731
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !735

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !736

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !737, !srcloc !740
  unreachable, !dbg !737

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !741

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !742

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !743

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !745

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !743

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !747, !srcloc !749
  br label %do.end75, !dbg !747

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !743

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !750
  br label %return, !dbg !750

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !751
  ret i32 %26, !dbg !751
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !752 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #3 align 16 !dbg !758 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !762, metadata !DIExpression()), !dbg !764
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !763, metadata !DIExpression()), !dbg !765
  %0 = load i32, ptr %flags.addr, align 4, !dbg !766
  %and = and i32 %0, 17, !dbg !766
  %cmp = icmp eq i32 %and, 0, !dbg !766
  %lnot = xor i1 %cmp, true, !dbg !766
  %lnot1 = xor i1 %lnot, true, !dbg !766
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !766
  %conv = sext i32 %lnot.ext to i64, !dbg !766
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !766
  %tobool = icmp ne i64 %expval, 0, !dbg !766
  br i1 %tobool, label %if.then, label %if.end, !dbg !768

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !769
  br label %return, !dbg !769

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !770
  %and2 = and i32 %1, 1, !dbg !772
  %tobool3 = icmp ne i32 %and2, 0, !dbg !772
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !773

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !774
  br label %return, !dbg !774

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !775
  br label %return, !dbg !775

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !777
  ret i32 %2, !dbg !777
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !778 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !779 dso_local void @__compiletime_assert_117() #14

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_rcu(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !780 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !784, metadata !DIExpression()), !dbg !786
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !785, metadata !DIExpression()), !dbg !787
  %0 = load ptr, ptr %new.addr, align 8, !dbg !788
  %1 = load ptr, ptr %head.addr, align 8, !dbg !789
  %2 = load ptr, ptr %head.addr, align 8, !dbg !790
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !791
  %3 = load ptr, ptr %next, align 8, !dbg !791
  call void @__list_add_rcu(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !792
  ret void, !dbg !793
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add_rcu(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !794 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  %_r_a_p__v = alloca i64, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !798, metadata !DIExpression()), !dbg !803
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !799, metadata !DIExpression()), !dbg !804
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !800, metadata !DIExpression()), !dbg !805
  %0 = load ptr, ptr %new.addr, align 8, !dbg !806
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !808
  %2 = load ptr, ptr %next.addr, align 8, !dbg !809
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !810
  br i1 %call, label %if.end, label %if.then, !dbg !811

if.then:                                          ; preds = %entry
  br label %return, !dbg !812

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %next.addr, align 8, !dbg !813
  %4 = load ptr, ptr %new.addr, align 8, !dbg !814
  %next1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !815
  store ptr %3, ptr %next1, align 8, !dbg !816
  %5 = load ptr, ptr %prev.addr, align 8, !dbg !817
  %6 = load ptr, ptr %new.addr, align 8, !dbg !818
  %prev2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1, !dbg !819
  store ptr %5, ptr %prev2, align 8, !dbg !820
  br label %do.body, !dbg !821

do.body:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !822
  call void @llvm.dbg.declare(metadata ptr %_r_a_p__v, metadata !801, metadata !DIExpression()), !dbg !822
  %7 = load ptr, ptr %new.addr, align 8, !dbg !822
  %8 = ptrtoint ptr %7 to i64, !dbg !822
  store i64 %8, ptr %_r_a_p__v, align 8, !dbg !822
  br i1 false, label %land.lhs.true, label %if.else, !dbg !823

land.lhs.true:                                    ; preds = %do.body
  %9 = load i64, ptr %_r_a_p__v, align 8, !dbg !823
  %cmp = icmp eq i64 %9, 0, !dbg !823
  br i1 %cmp, label %if.then3, label %if.else, !dbg !822

if.then3:                                         ; preds = %land.lhs.true
  br label %do.body4, !dbg !823

do.body4:                                         ; preds = %if.then3
  br label %do.body5, !dbg !825

do.body5:                                         ; preds = %do.body4
  br label %do.cond, !dbg !827

do.cond:                                          ; preds = %do.body5
  br label %do.end, !dbg !827

do.end:                                           ; preds = %do.cond
  br label %do.body6, !dbg !825

do.body6:                                         ; preds = %do.end
  %10 = load i64, ptr %_r_a_p__v, align 8, !dbg !829
  %11 = inttoptr i64 %10 to ptr, !dbg !829
  %12 = load ptr, ptr %prev.addr, align 8, !dbg !829
  %next7 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 0, !dbg !829
  store volatile ptr %11, ptr %next7, align 8, !dbg !829
  br label %do.cond8, !dbg !829

do.cond8:                                         ; preds = %do.body6
  br label %do.end9, !dbg !829

do.end9:                                          ; preds = %do.cond8
  br label %do.cond10, !dbg !825

do.cond10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !825

do.end11:                                         ; preds = %do.cond10
  br label %if.end34, !dbg !825

if.else:                                          ; preds = %land.lhs.true, %do.body
  br label %do.body12, !dbg !823

do.body12:                                        ; preds = %if.else
  br label %do.body13, !dbg !831

do.body13:                                        ; preds = %do.body12
  br label %do.cond14, !dbg !833

do.cond14:                                        ; preds = %do.body13
  br label %do.end15, !dbg !833

do.end15:                                         ; preds = %do.cond14
  br label %do.body16, !dbg !831

do.body16:                                        ; preds = %do.end15
  br label %do.body17, !dbg !835

do.body17:                                        ; preds = %do.body16
  br label %do.cond18, !dbg !837

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !837

do.end19:                                         ; preds = %do.cond18
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !835, !srcloc !839
  br label %do.body20, !dbg !835

do.body20:                                        ; preds = %do.end19
  br label %do.body21, !dbg !840

do.body21:                                        ; preds = %do.body20
  br label %do.cond22, !dbg !842

do.cond22:                                        ; preds = %do.body21
  br label %do.end23, !dbg !842

do.end23:                                         ; preds = %do.cond22
  br label %do.body24, !dbg !840

do.body24:                                        ; preds = %do.end23
  %13 = load i64, ptr %_r_a_p__v, align 8, !dbg !844
  %14 = inttoptr i64 %13 to ptr, !dbg !844
  %15 = load ptr, ptr %prev.addr, align 8, !dbg !844
  %next25 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 0, !dbg !844
  store volatile ptr %14, ptr %next25, align 8, !dbg !844
  br label %do.cond26, !dbg !844

do.cond26:                                        ; preds = %do.body24
  br label %do.end27, !dbg !844

do.end27:                                         ; preds = %do.cond26
  br label %do.cond28, !dbg !840

do.cond28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !840

do.end29:                                         ; preds = %do.cond28
  br label %do.cond30, !dbg !835

do.cond30:                                        ; preds = %do.end29
  br label %do.end31, !dbg !835

do.end31:                                         ; preds = %do.cond30
  br label %do.cond32, !dbg !831

do.cond32:                                        ; preds = %do.end31
  br label %do.end33, !dbg !831

do.end33:                                         ; preds = %do.cond32
  br label %if.end34

if.end34:                                         ; preds = %do.end33, %do.end11
  call void @llvm.lifetime.end.p0(i64 8, ptr %_r_a_p__v) #15, !dbg !821
  br label %do.end36, !dbg !822

do.end36:                                         ; preds = %if.end34
  %16 = load ptr, ptr %new.addr, align 8, !dbg !846
  %17 = load ptr, ptr %next.addr, align 8, !dbg !847
  %prev37 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1, !dbg !848
  store ptr %16, ptr %prev37, align 8, !dbg !849
  br label %return, !dbg !850

return:                                           ; preds = %do.end36, %if.then
  ret void, !dbg !850
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !851 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !856, metadata !DIExpression()), !dbg !859
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !857, metadata !DIExpression()), !dbg !860
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !858, metadata !DIExpression()), !dbg !861
  ret i1 true, !dbg !862
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !863 dso_local void @_raw_spin_lock_bh(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #4 align 16 !dbg !869 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !871, metadata !DIExpression()), !dbg !872
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !873
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #16, !dbg !875
  br i1 %call, label %if.end, label %if.then, !dbg !876

if.then:                                          ; preds = %entry
  br label %return, !dbg !877

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !878
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !879
  %2 = load ptr, ptr %prev, align 8, !dbg !879
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !880
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !881
  %4 = load ptr, ptr %next, align 8, !dbg !881
  call void @__list_del(ptr noundef %2, ptr noundef %4) #16, !dbg !882
  br label %return, !dbg !883

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !883
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #4 align 16 !dbg !884 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !888, metadata !DIExpression()), !dbg !889
  ret i1 true, !dbg !890
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !891 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !893, metadata !DIExpression()), !dbg !895
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !894, metadata !DIExpression()), !dbg !896
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !897
  %1 = load ptr, ptr %next.addr, align 8, !dbg !898
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !899
  store ptr %0, ptr %prev1, align 8, !dbg !900
  br label %do.body, !dbg !901

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !902

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !904

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !902

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !906
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !906
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !906
  store volatile ptr %2, ptr %next4, align 8, !dbg !906
  br label %do.end5, !dbg !906

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !902

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !908
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !909 dso_local void @_raw_spin_unlock_bh(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !910 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !912, metadata !DIExpression()), !dbg !913
  br label %do.body, !dbg !914

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !915

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !917

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !915

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !919
  %1 = load ptr, ptr %list.addr, align 8, !dbg !919
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !919
  store volatile ptr %0, ptr %next, align 8, !dbg !919
  br label %do.end3, !dbg !919

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !915

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !921

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !922

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !924

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !922

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !926
  %3 = load ptr, ptr %list.addr, align 8, !dbg !926
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !926
  store volatile ptr %2, ptr %prev, align 8, !dbg !926
  br label %do.end9, !dbg !926

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !922

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !928
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sel_netport_lock", scope: !2, file: !3, line: 56, type: !95, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF security/selinux/.netport.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -I ./security/selinux -I ./security/selinux/include -D KBUILD_MODFILE=\22security/selinux/selinux\22 -D KBUILD_BASENAME=\22netport\22 -D KBUILD_MODNAME=\22selinux\22 -D __KBUILD_MODNAME=kmod_selinux -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o security/selinux/netport.ll security/selinux/netport.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !21, globals: !67, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "security/selinux/netport.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a24734ea4ea7f70c86fea617b96588ba")
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
!21 = !{!22, !23, !59, !62, !63, !48, !64, !65, !66}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sel_netport", file: !3, line: 43, size: 320, elements: !25)
!25 = !{!26, !43, !50}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "psec", scope: !24, file: !3, line: 44, baseType: !27, size: 64)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netport_security_struct", file: !28, line: 98, size: 64, elements: !29)
!28 = !DIFile(filename: "./security/selinux/include/objsec.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b56c6b38a18947c603d4ba90c7e239e8")
!29 = !{!30, !35, !39}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "sid", scope: !27, file: !28, line: 99, baseType: !31, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !32, line: 21, baseType: !33)
!32 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !34, line: 27, baseType: !7)
!34 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!35 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !27, file: !28, line: 100, baseType: !36, size: 16, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !32, line: 19, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !34, line: 24, baseType: !38)
!38 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !27, file: !28, line: 101, baseType: !40, size: 8, offset: 48)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !32, line: 17, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !34, line: 21, baseType: !42)
!42 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !24, file: !3, line: 46, baseType: !44, size: 128, offset: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !45, line: 190, size: 128, elements: !46)
!45 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!46 = !{!47, !49}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !45, line: 191, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !44, file: !45, line: 191, baseType: !48, size: 64, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !24, file: !3, line: 47, baseType: !51, size: 128, align: 64, offset: 192)
!51 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !45, line: 232, size: 128, align: 64, elements: !52)
!52 = !{!53, !55}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !51, file: !45, line: 233, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !51, file: !45, line: 234, baseType: !56, size: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !54}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !45, line: 154, baseType: !7)
!63 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !45, line: 42, baseType: !63)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!67 = !{!68, !70, !80, !86, !92, !0}
!68 = !DIGlobalVariableExpression(var: !69, expr: !DIExpression())
!69 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_selinux__610_238_sel_netport_init6611", scope: !2, file: !3, line: 238, type: !22, isLocal: true, isDefinition: true)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(name: "sel_netport_hash", scope: !2, file: !3, line: 57, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 49152, elements: !78)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sel_netport_bkt", file: !3, line: 38, size: 192, elements: !74)
!74 = !{!75, !77}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !73, file: !3, line: 39, baseType: !76, size: 32)
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !73, file: !3, line: 40, baseType: !44, size: 128, offset: 64)
!78 = !{!79}
!79 = !DISubrange(count: 256)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 544, elements: !84)
!83 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 68)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !88, isLocal: true, isDefinition: true)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !89, size: 168, elements: !90)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!90 = !{!91}
!91 = !DISubrange(count: 21)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !12, line: 480, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 168, elements: !90)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !96, line: 29, baseType: !97)
!96 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !96, line: 17, size: 32, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !96, line: 18, baseType: !100, size: 32)
!100 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !97, file: !96, line: 18, size: 32, elements: !101)
!101 = !{!102}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !100, file: !96, line: 19, baseType: !103, size: 32)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !104, line: 14, size: 32, elements: !105)
!104 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !103, file: !104, line: 15, baseType: !107, size: 32)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !108, line: 44, baseType: !109)
!108 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !108, line: 14, size: 32, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !108, line: 15, baseType: !112, size: 32)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !109, file: !108, line: 15, size: 32, elements: !113)
!113 = !{!114, !119, !124}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !112, file: !108, line: 16, baseType: !115, size: 32)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !45, line: 174, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !45, line: 172, size: 32, elements: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !116, file: !45, line: 173, baseType: !76, size: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !108, line: 24, baseType: !120, size: 16)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !108, line: 24, size: 16, elements: !121)
!121 = !{!122, !123}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !120, file: !108, line: 25, baseType: !40, size: 8)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !120, file: !108, line: 26, baseType: !40, size: 8, offset: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !108, line: 28, baseType: !125, size: 32)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !108, line: 28, size: 32, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !125, file: !108, line: 29, baseType: !36, size: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !125, file: !108, line: 30, baseType: !36, size: 16, offset: 16)
!129 = !{i32 7, !"Dwarf Version", i32 5}
!130 = !{i32 2, !"Debug Info Version", i32 3}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 8, !"cf-protection-branch", i32 1}
!133 = !{i32 4, !"function_return_thunk_extern", i32 1}
!134 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!135 = !{i32 1, !"Code Model", i32 2}
!136 = !{i32 1, !"override-stack-alignment", i32 8}
!137 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!138 = distinct !DISubprogram(name: "sel_netport_sid", scope: !3, file: !3, line: 183, type: !139, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !142)
!139 = !DISubroutineType(types: !140)
!140 = !{!76, !40, !36, !141}
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!142 = !{!143, !144, !145, !146}
!143 = !DILocalVariable(name: "protocol", arg: 1, scope: !138, file: !3, line: 183, type: !40)
!144 = !DILocalVariable(name: "pnum", arg: 2, scope: !138, file: !3, line: 183, type: !36)
!145 = !DILocalVariable(name: "sid", arg: 3, scope: !138, file: !3, line: 183, type: !141)
!146 = !DILocalVariable(name: "port", scope: !138, file: !3, line: 185, type: !23)
!147 = !DILocation(line: 183, column: 24, scope: !138)
!148 = !DILocation(line: 183, column: 38, scope: !138)
!149 = !DILocation(line: 183, column: 49, scope: !138)
!150 = !DILocation(line: 185, column: 2, scope: !138)
!151 = !DILocation(line: 185, column: 22, scope: !138)
!152 = !DILocation(line: 187, column: 2, scope: !138)
!153 = !DILocation(line: 188, column: 26, scope: !138)
!154 = !DILocation(line: 188, column: 36, scope: !138)
!155 = !DILocation(line: 188, column: 9, scope: !138)
!156 = !DILocation(line: 188, column: 7, scope: !138)
!157 = !DILocation(line: 189, column: 6, scope: !158)
!158 = distinct !DILexicalBlock(scope: !138, file: !3, line: 189, column: 6)
!159 = !DILocation(line: 189, column: 11, scope: !158)
!160 = !DILocation(line: 189, column: 6, scope: !138)
!161 = !DILocation(line: 190, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !158, file: !3, line: 189, column: 20)
!163 = !DILocation(line: 190, column: 16, scope: !162)
!164 = !DILocation(line: 190, column: 21, scope: !162)
!165 = !DILocation(line: 190, column: 4, scope: !162)
!166 = !DILocation(line: 190, column: 8, scope: !162)
!167 = !DILocation(line: 191, column: 3, scope: !162)
!168 = !DILocation(line: 192, column: 3, scope: !162)
!169 = !DILocation(line: 194, column: 2, scope: !138)
!170 = !DILocation(line: 196, column: 30, scope: !138)
!171 = !DILocation(line: 196, column: 40, scope: !138)
!172 = !DILocation(line: 196, column: 46, scope: !138)
!173 = !DILocation(line: 196, column: 9, scope: !138)
!174 = !DILocation(line: 196, column: 2, scope: !138)
!175 = !DILocation(line: 197, column: 1, scope: !138)
!176 = distinct !DISubprogram(name: "rcu_read_lock", scope: !177, file: !177, line: 782, type: !178, scopeLine: 783, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!177 = !DIFile(filename: "./include/linux/rcupdate.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4e3e7baa678879cffb6efe1638a64d8f")
!178 = !DISubroutineType(types: !179)
!179 = !{null}
!180 = !DILocation(line: 784, column: 2, scope: !176)
!181 = !DILocation(line: 786, column: 2, scope: !176)
!182 = !DILocation(line: 786, column: 2, scope: !183)
!183 = distinct !DILexicalBlock(scope: !176, file: !177, line: 786, column: 2)
!184 = !DILocation(line: 787, column: 2, scope: !176)
!185 = !DILocation(line: 787, column: 2, scope: !186)
!186 = distinct !DILexicalBlock(scope: !176, file: !177, line: 787, column: 2)
!187 = !DILocation(line: 789, column: 1, scope: !176)
!188 = distinct !DISubprogram(name: "sel_netport_find", scope: !3, file: !3, line: 83, type: !189, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !191)
!189 = !DISubroutineType(types: !190)
!190 = !{!23, !40, !36}
!191 = !{!192, !193, !194, !195, !196, !199}
!192 = !DILocalVariable(name: "protocol", arg: 1, scope: !188, file: !3, line: 83, type: !40)
!193 = !DILocalVariable(name: "pnum", arg: 2, scope: !188, file: !3, line: 83, type: !36)
!194 = !DILocalVariable(name: "idx", scope: !188, file: !3, line: 85, type: !7)
!195 = !DILocalVariable(name: "port", scope: !188, file: !3, line: 86, type: !23)
!196 = !DILocalVariable(name: "__mptr", scope: !197, file: !3, line: 89, type: !22)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 89, column: 2)
!198 = distinct !DILexicalBlock(scope: !188, file: !3, line: 89, column: 2)
!199 = !DILocalVariable(name: "__mptr", scope: !200, file: !3, line: 89, type: !22)
!200 = distinct !DILexicalBlock(scope: !201, file: !3, line: 89, column: 2)
!201 = distinct !DILexicalBlock(scope: !198, file: !3, line: 89, column: 2)
!202 = !DILocation(line: 83, column: 48, scope: !188)
!203 = !DILocation(line: 83, column: 62, scope: !188)
!204 = !DILocation(line: 85, column: 2, scope: !188)
!205 = !DILocation(line: 85, column: 15, scope: !188)
!206 = !DILocation(line: 86, column: 2, scope: !188)
!207 = !DILocation(line: 86, column: 22, scope: !188)
!208 = !DILocation(line: 88, column: 27, scope: !188)
!209 = !DILocation(line: 88, column: 8, scope: !188)
!210 = !DILocation(line: 88, column: 6, scope: !188)
!211 = !DILocation(line: 89, column: 2, scope: !197)
!212 = !DILocation(line: 89, column: 2, scope: !213)
!213 = distinct !DILexicalBlock(scope: !197, file: !3, line: 89, column: 2)
!214 = !DILocation(line: 89, column: 2, scope: !215)
!215 = distinct !DILexicalBlock(scope: !213, file: !3, line: 89, column: 2)
!216 = !DILocation(line: 89, column: 2, scope: !198)
!217 = !DILocation(line: 89, column: 2, scope: !201)
!218 = !DILocation(line: 90, column: 7, scope: !219)
!219 = distinct !DILexicalBlock(scope: !201, file: !3, line: 90, column: 7)
!220 = !DILocation(line: 90, column: 13, scope: !219)
!221 = !DILocation(line: 90, column: 18, scope: !219)
!222 = !DILocation(line: 90, column: 26, scope: !219)
!223 = !DILocation(line: 90, column: 23, scope: !219)
!224 = !DILocation(line: 90, column: 31, scope: !219)
!225 = !DILocation(line: 90, column: 34, scope: !219)
!226 = !DILocation(line: 90, column: 40, scope: !219)
!227 = !DILocation(line: 90, column: 45, scope: !219)
!228 = !DILocation(line: 90, column: 57, scope: !219)
!229 = !DILocation(line: 90, column: 54, scope: !219)
!230 = !DILocation(line: 90, column: 7, scope: !201)
!231 = !DILocation(line: 91, column: 11, scope: !219)
!232 = !DILocation(line: 91, column: 4, scope: !219)
!233 = !DILocation(line: 89, column: 2, scope: !200)
!234 = !DILocation(line: 89, column: 2, scope: !235)
!235 = distinct !DILexicalBlock(scope: !200, file: !3, line: 89, column: 2)
!236 = !DILocation(line: 89, column: 2, scope: !237)
!237 = distinct !DILexicalBlock(scope: !235, file: !3, line: 89, column: 2)
!238 = distinct !{!238, !216, !239, !240, !241}
!239 = !DILocation(line: 91, column: 11, scope: !198)
!240 = !{!"llvm.loop.mustprogress"}
!241 = !{!"llvm.loop.unroll.disable"}
!242 = !DILocation(line: 93, column: 2, scope: !188)
!243 = !DILocation(line: 94, column: 1, scope: !188)
!244 = distinct !DISubprogram(name: "rcu_read_unlock", scope: !177, file: !177, line: 813, type: !178, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!245 = !DILocation(line: 815, column: 2, scope: !244)
!246 = !DILocation(line: 815, column: 2, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !177, line: 815, column: 2)
!248 = !DILocation(line: 818, column: 2, scope: !244)
!249 = !DILocation(line: 819, column: 2, scope: !244)
!250 = !DILocation(line: 819, column: 2, scope: !251)
!251 = distinct !DILexicalBlock(scope: !244, file: !177, line: 819, column: 2)
!252 = !DILocation(line: 820, column: 1, scope: !244)
!253 = distinct !DISubprogram(name: "sel_netport_sid_slow", scope: !3, file: !3, line: 137, type: !139, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !254)
!254 = !{!255, !256, !257, !258, !259, !260, !261}
!255 = !DILocalVariable(name: "protocol", arg: 1, scope: !253, file: !3, line: 137, type: !40)
!256 = !DILocalVariable(name: "pnum", arg: 2, scope: !253, file: !3, line: 137, type: !36)
!257 = !DILocalVariable(name: "sid", arg: 3, scope: !253, file: !3, line: 137, type: !141)
!258 = !DILocalVariable(name: "ret", scope: !253, file: !3, line: 139, type: !76)
!259 = !DILocalVariable(name: "port", scope: !253, file: !3, line: 140, type: !23)
!260 = !DILocalVariable(name: "new", scope: !253, file: !3, line: 141, type: !23)
!261 = !DILabel(scope: !253, name: "out", file: !3, line: 162)
!262 = !DILocation(line: 137, column: 36, scope: !253)
!263 = !DILocation(line: 137, column: 50, scope: !253)
!264 = !DILocation(line: 137, column: 61, scope: !253)
!265 = !DILocation(line: 139, column: 2, scope: !253)
!266 = !DILocation(line: 139, column: 6, scope: !253)
!267 = !DILocation(line: 140, column: 2, scope: !253)
!268 = !DILocation(line: 140, column: 22, scope: !253)
!269 = !DILocation(line: 141, column: 2, scope: !253)
!270 = !DILocation(line: 141, column: 22, scope: !253)
!271 = !DILocation(line: 143, column: 2, scope: !253)
!272 = !DILocation(line: 144, column: 26, scope: !253)
!273 = !DILocation(line: 144, column: 36, scope: !253)
!274 = !DILocation(line: 144, column: 9, scope: !253)
!275 = !DILocation(line: 144, column: 7, scope: !253)
!276 = !DILocation(line: 145, column: 6, scope: !277)
!277 = distinct !DILexicalBlock(scope: !253, file: !3, line: 145, column: 6)
!278 = !DILocation(line: 145, column: 11, scope: !277)
!279 = !DILocation(line: 145, column: 6, scope: !253)
!280 = !DILocation(line: 146, column: 10, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 145, column: 20)
!282 = !DILocation(line: 146, column: 16, scope: !281)
!283 = !DILocation(line: 146, column: 21, scope: !281)
!284 = !DILocation(line: 146, column: 4, scope: !281)
!285 = !DILocation(line: 146, column: 8, scope: !281)
!286 = !DILocation(line: 147, column: 3, scope: !281)
!287 = !DILocation(line: 148, column: 3, scope: !281)
!288 = !DILocation(line: 151, column: 26, scope: !253)
!289 = !DILocation(line: 151, column: 36, scope: !253)
!290 = !DILocation(line: 151, column: 42, scope: !253)
!291 = !DILocation(line: 151, column: 8, scope: !253)
!292 = !DILocation(line: 151, column: 6, scope: !253)
!293 = !DILocation(line: 152, column: 6, scope: !294)
!294 = distinct !DILexicalBlock(scope: !253, file: !3, line: 152, column: 6)
!295 = !DILocation(line: 152, column: 10, scope: !294)
!296 = !DILocation(line: 152, column: 6, scope: !253)
!297 = !DILocation(line: 153, column: 3, scope: !294)
!298 = !DILocation(line: 154, column: 8, scope: !253)
!299 = !DILocation(line: 154, column: 6, scope: !253)
!300 = !DILocation(line: 155, column: 6, scope: !301)
!301 = distinct !DILexicalBlock(scope: !253, file: !3, line: 155, column: 6)
!302 = !DILocation(line: 155, column: 6, scope: !253)
!303 = !DILocation(line: 156, column: 20, scope: !304)
!304 = distinct !DILexicalBlock(scope: !301, file: !3, line: 155, column: 11)
!305 = !DILocation(line: 156, column: 3, scope: !304)
!306 = !DILocation(line: 156, column: 8, scope: !304)
!307 = !DILocation(line: 156, column: 13, scope: !304)
!308 = !DILocation(line: 156, column: 18, scope: !304)
!309 = !DILocation(line: 157, column: 24, scope: !304)
!310 = !DILocation(line: 157, column: 3, scope: !304)
!311 = !DILocation(line: 157, column: 8, scope: !304)
!312 = !DILocation(line: 157, column: 13, scope: !304)
!313 = !DILocation(line: 157, column: 22, scope: !304)
!314 = !DILocation(line: 158, column: 20, scope: !304)
!315 = !DILocation(line: 158, column: 19, scope: !304)
!316 = !DILocation(line: 158, column: 3, scope: !304)
!317 = !DILocation(line: 158, column: 8, scope: !304)
!318 = !DILocation(line: 158, column: 13, scope: !304)
!319 = !DILocation(line: 158, column: 17, scope: !304)
!320 = !DILocation(line: 159, column: 22, scope: !304)
!321 = !DILocation(line: 159, column: 3, scope: !304)
!322 = !DILocation(line: 160, column: 2, scope: !304)
!323 = !DILocation(line: 162, column: 1, scope: !253)
!324 = !DILocation(line: 163, column: 2, scope: !253)
!325 = !DILocation(line: 164, column: 6, scope: !326)
!326 = distinct !DILexicalBlock(scope: !253, file: !3, line: 164, column: 6)
!327 = !DILocation(line: 164, column: 6, scope: !253)
!328 = !DILocation(line: 165, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !3, line: 165, column: 3)
!330 = !DILocation(line: 165, column: 3, scope: !331)
!331 = distinct !DILexicalBlock(scope: !329, file: !3, line: 165, column: 3)
!332 = !DILocation(line: 165, column: 3, scope: !326)
!333 = !DILocation(line: 167, column: 9, scope: !253)
!334 = !DILocation(line: 167, column: 2, scope: !253)
!335 = !DILocation(line: 168, column: 1, scope: !253)
!336 = distinct !DISubprogram(name: "sel_netport_flush", scope: !3, file: !3, line: 206, type: !178, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !337)
!337 = !{!338, !339, !340, !341, !347, !349, !353}
!338 = !DILocalVariable(name: "idx", scope: !336, file: !3, line: 208, type: !7)
!339 = !DILocalVariable(name: "port", scope: !336, file: !3, line: 209, type: !23)
!340 = !DILocalVariable(name: "port_tmp", scope: !336, file: !3, line: 209, type: !23)
!341 = !DILocalVariable(name: "__mptr", scope: !342, file: !3, line: 213, type: !22)
!342 = distinct !DILexicalBlock(scope: !343, file: !3, line: 213, column: 3)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 213, column: 3)
!344 = distinct !DILexicalBlock(scope: !345, file: !3, line: 212, column: 52)
!345 = distinct !DILexicalBlock(scope: !346, file: !3, line: 212, column: 2)
!346 = distinct !DILexicalBlock(scope: !336, file: !3, line: 212, column: 2)
!347 = !DILocalVariable(name: "__mptr", scope: !348, file: !3, line: 213, type: !22)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 213, column: 3)
!349 = !DILocalVariable(name: "___p", scope: !350, file: !3, line: 216, type: !23)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 216, column: 4)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 214, column: 42)
!352 = distinct !DILexicalBlock(scope: !343, file: !3, line: 213, column: 3)
!353 = !DILocalVariable(name: "__mptr", scope: !354, file: !3, line: 213, type: !22)
!354 = distinct !DILexicalBlock(scope: !352, file: !3, line: 213, column: 3)
!355 = !DILocation(line: 208, column: 2, scope: !336)
!356 = !DILocation(line: 208, column: 15, scope: !336)
!357 = !DILocation(line: 209, column: 2, scope: !336)
!358 = !DILocation(line: 209, column: 22, scope: !336)
!359 = !DILocation(line: 209, column: 29, scope: !336)
!360 = !DILocation(line: 211, column: 2, scope: !336)
!361 = !DILocation(line: 212, column: 11, scope: !346)
!362 = !DILocation(line: 212, column: 7, scope: !346)
!363 = !DILocation(line: 212, column: 16, scope: !345)
!364 = !DILocation(line: 212, column: 20, scope: !345)
!365 = !DILocation(line: 212, column: 2, scope: !346)
!366 = !DILocation(line: 213, column: 3, scope: !342)
!367 = !DILocation(line: 213, column: 3, scope: !343)
!368 = !DILocation(line: 213, column: 3, scope: !348)
!369 = !DILocation(line: 213, column: 3, scope: !352)
!370 = !DILocation(line: 215, column: 18, scope: !351)
!371 = !DILocation(line: 215, column: 24, scope: !351)
!372 = !DILocation(line: 215, column: 4, scope: !351)
!373 = !DILocation(line: 216, column: 4, scope: !351)
!374 = !DILocation(line: 216, column: 4, scope: !350)
!375 = !DILocation(line: 216, column: 4, scope: !376)
!376 = distinct !DILexicalBlock(scope: !350, file: !3, line: 216, column: 4)
!377 = !DILocation(line: 216, column: 4, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !3, line: 216, column: 4)
!379 = !DILocation(line: 216, column: 4, scope: !380)
!380 = distinct !DILexicalBlock(scope: !378, file: !3, line: 216, column: 4)
!381 = !DILocation(line: 217, column: 3, scope: !351)
!382 = !DILocation(line: 213, column: 3, scope: !354)
!383 = distinct !{!383, !367, !384, !240, !241}
!384 = !DILocation(line: 217, column: 3, scope: !343)
!385 = !DILocation(line: 218, column: 20, scope: !344)
!386 = !DILocation(line: 218, column: 3, scope: !344)
!387 = !DILocation(line: 218, column: 25, scope: !344)
!388 = !DILocation(line: 218, column: 30, scope: !344)
!389 = !DILocation(line: 219, column: 2, scope: !344)
!390 = !DILocation(line: 212, column: 48, scope: !345)
!391 = !DILocation(line: 212, column: 2, scope: !345)
!392 = distinct !{!392, !365, !393, !240, !241}
!393 = !DILocation(line: 219, column: 2, scope: !346)
!394 = !DILocation(line: 220, column: 2, scope: !336)
!395 = !DILocation(line: 221, column: 1, scope: !336)
!396 = distinct !DISubprogram(name: "spin_lock_bh", scope: !397, file: !397, line: 354, type: !398, scopeLine: 355, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !401)
!397 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!398 = !DISubroutineType(types: !399)
!399 = !{null, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!401 = !{!402}
!402 = !DILocalVariable(name: "lock", arg: 1, scope: !396, file: !397, line: 354, type: !400)
!403 = !DILocation(line: 354, column: 54, scope: !396)
!404 = !DILocation(line: 356, column: 2, scope: !396)
!405 = !DILocation(line: 357, column: 1, scope: !396)
!406 = distinct !DISubprogram(name: "list_del_rcu", scope: !407, file: !407, line: 155, type: !408, scopeLine: 156, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !410)
!407 = !DIFile(filename: "./include/linux/rculist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fd1f3f0ac3963a1bf35badb4cb07f795")
!408 = !DISubroutineType(types: !409)
!409 = !{null, !48}
!410 = !{!411}
!411 = !DILocalVariable(name: "entry", arg: 1, scope: !406, file: !407, line: 155, type: !48)
!412 = !DILocation(line: 155, column: 51, scope: !406)
!413 = !DILocation(line: 157, column: 19, scope: !406)
!414 = !DILocation(line: 157, column: 2, scope: !406)
!415 = !DILocation(line: 158, column: 2, scope: !406)
!416 = !DILocation(line: 158, column: 9, scope: !406)
!417 = !DILocation(line: 158, column: 14, scope: !406)
!418 = !DILocation(line: 159, column: 1, scope: !406)
!419 = !DISubprogram(name: "kvfree_call_rcu", scope: !420, file: !420, line: 37, type: !421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!420 = !DIFile(filename: "./include/linux/rcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ba1a11a02717ea844631ceb399131463")
!421 = !DISubroutineType(types: !422)
!422 = !{null, !54, !22}
!423 = distinct !DISubprogram(name: "spin_unlock_bh", scope: !397, file: !397, line: 394, type: !398, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!424 = !{!425}
!425 = !DILocalVariable(name: "lock", arg: 1, scope: !423, file: !397, line: 394, type: !400)
!426 = !DILocation(line: 394, column: 56, scope: !423)
!427 = !DILocation(line: 396, column: 2, scope: !423)
!428 = !DILocation(line: 397, column: 1, scope: !423)
!429 = distinct !DISubprogram(name: "__initstub__kmod_selinux__610_238_sel_netport_init6", scope: !3, file: !3, line: 238, type: !430, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!430 = !DISubroutineType(types: !431)
!431 = !{!76}
!432 = !DILocation(line: 238, column: 1, scope: !429)
!433 = distinct !DISubprogram(name: "sel_netport_init", scope: !3, file: !3, line: 223, type: !430, scopeLine: 224, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !434)
!434 = !{!435}
!435 = !DILocalVariable(name: "iter", scope: !433, file: !3, line: 225, type: !76)
!436 = !DILocation(line: 225, column: 2, scope: !433)
!437 = !DILocation(line: 225, column: 6, scope: !433)
!438 = !DILocation(line: 227, column: 7, scope: !439)
!439 = distinct !DILexicalBlock(scope: !433, file: !3, line: 227, column: 6)
!440 = !DILocation(line: 227, column: 6, scope: !433)
!441 = !DILocation(line: 228, column: 3, scope: !439)
!442 = !DILocation(line: 230, column: 12, scope: !443)
!443 = distinct !DILexicalBlock(scope: !433, file: !3, line: 230, column: 2)
!444 = !DILocation(line: 230, column: 7, scope: !443)
!445 = !DILocation(line: 230, column: 17, scope: !446)
!446 = distinct !DILexicalBlock(scope: !443, file: !3, line: 230, column: 2)
!447 = !DILocation(line: 230, column: 22, scope: !446)
!448 = !DILocation(line: 230, column: 2, scope: !443)
!449 = !DILocation(line: 231, column: 36, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !3, line: 230, column: 55)
!451 = !DILocation(line: 231, column: 19, scope: !450)
!452 = !DILocation(line: 231, column: 42, scope: !450)
!453 = !DILocation(line: 231, column: 3, scope: !450)
!454 = !DILocation(line: 232, column: 20, scope: !450)
!455 = !DILocation(line: 232, column: 3, scope: !450)
!456 = !DILocation(line: 232, column: 26, scope: !450)
!457 = !DILocation(line: 232, column: 31, scope: !450)
!458 = !DILocation(line: 233, column: 2, scope: !450)
!459 = !DILocation(line: 230, column: 51, scope: !446)
!460 = !DILocation(line: 230, column: 2, scope: !446)
!461 = distinct !{!461, !448, !462, !240, !241}
!462 = !DILocation(line: 233, column: 2, scope: !443)
!463 = !DILocation(line: 235, column: 2, scope: !433)
!464 = !DILocation(line: 236, column: 1, scope: !433)
!465 = !DISubprogram(name: "__rcu_read_lock", scope: !177, file: !177, line: 74, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!466 = distinct !DISubprogram(name: "sel_netport_hashfn", scope: !3, file: !3, line: 68, type: !467, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!7, !36}
!469 = !{!470}
!470 = !DILocalVariable(name: "pnum", arg: 1, scope: !466, file: !3, line: 68, type: !36)
!471 = !DILocation(line: 68, column: 44, scope: !466)
!472 = !DILocation(line: 70, column: 10, scope: !466)
!473 = !DILocation(line: 70, column: 15, scope: !466)
!474 = !DILocation(line: 70, column: 2, scope: !466)
!475 = !DISubprogram(name: "__rcu_read_unlock", scope: !177, file: !177, line: 75, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!476 = !DISubprogram(name: "security_port_sid", scope: !477, file: !477, line: 283, type: !139, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!477 = !DIFile(filename: "./security/selinux/include/security.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "45cb6e0d69f1ee11464ad11e15a35ebc")
!478 = distinct !DISubprogram(name: "kzalloc", scope: !12, file: !12, line: 719, type: !479, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !485)
!479 = !DISubroutineType(types: !480)
!480 = !{!22, !481, !62}
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !45, line: 61, baseType: !482)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !483, line: 72, baseType: !484)
!483 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !483, line: 16, baseType: !63)
!485 = !{!486, !487}
!486 = !DILocalVariable(name: "size", arg: 1, scope: !478, file: !12, line: 719, type: !481)
!487 = !DILocalVariable(name: "flags", arg: 2, scope: !478, file: !12, line: 719, type: !62)
!488 = !DILocation(line: 719, column: 52, scope: !478)
!489 = !DILocation(line: 719, column: 64, scope: !478)
!490 = !DILocation(line: 721, column: 17, scope: !478)
!491 = !DILocation(line: 721, column: 23, scope: !478)
!492 = !DILocation(line: 721, column: 29, scope: !478)
!493 = !DILocation(line: 721, column: 9, scope: !478)
!494 = !DILocation(line: 721, column: 2, scope: !478)
!495 = distinct !DISubprogram(name: "sel_netport_insert", scope: !3, file: !3, line: 104, type: !496, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !498)
!496 = !DISubroutineType(types: !497)
!497 = !{null, !23}
!498 = !{!499, !500, !501, !504, !506}
!499 = !DILocalVariable(name: "port", arg: 1, scope: !495, file: !3, line: 104, type: !23)
!500 = !DILocalVariable(name: "idx", scope: !495, file: !3, line: 106, type: !7)
!501 = !DILocalVariable(name: "tail", scope: !502, file: !3, line: 113, type: !23)
!502 = distinct !DILexicalBlock(scope: !503, file: !3, line: 112, column: 64)
!503 = distinct !DILexicalBlock(scope: !495, file: !3, line: 112, column: 6)
!504 = !DILocalVariable(name: "__mptr", scope: !505, file: !3, line: 114, type: !22)
!505 = distinct !DILexicalBlock(scope: !502, file: !3, line: 114, column: 10)
!506 = !DILocalVariable(name: "___p", scope: !507, file: !3, line: 120, type: !23)
!507 = distinct !DILexicalBlock(scope: !502, file: !3, line: 120, column: 3)
!508 = !DILocation(line: 104, column: 52, scope: !495)
!509 = !DILocation(line: 106, column: 2, scope: !495)
!510 = !DILocation(line: 106, column: 15, scope: !495)
!511 = !DILocation(line: 110, column: 27, scope: !495)
!512 = !DILocation(line: 110, column: 33, scope: !495)
!513 = !DILocation(line: 110, column: 38, scope: !495)
!514 = !DILocation(line: 110, column: 8, scope: !495)
!515 = !DILocation(line: 110, column: 6, scope: !495)
!516 = !DILocation(line: 111, column: 16, scope: !495)
!517 = !DILocation(line: 111, column: 22, scope: !495)
!518 = !DILocation(line: 111, column: 46, scope: !495)
!519 = !DILocation(line: 111, column: 29, scope: !495)
!520 = !DILocation(line: 111, column: 51, scope: !495)
!521 = !DILocation(line: 111, column: 2, scope: !495)
!522 = !DILocation(line: 112, column: 23, scope: !503)
!523 = !DILocation(line: 112, column: 6, scope: !503)
!524 = !DILocation(line: 112, column: 28, scope: !503)
!525 = !DILocation(line: 112, column: 33, scope: !503)
!526 = !DILocation(line: 112, column: 6, scope: !495)
!527 = !DILocation(line: 113, column: 3, scope: !502)
!528 = !DILocation(line: 113, column: 23, scope: !502)
!529 = !DILocation(line: 114, column: 10, scope: !505)
!530 = !DILocation(line: 114, column: 10, scope: !531)
!531 = distinct !DILexicalBlock(scope: !505, file: !3, line: 114, column: 10)
!532 = !DILocation(line: 114, column: 10, scope: !533)
!533 = distinct !DILexicalBlock(scope: !531, file: !3, line: 114, column: 10)
!534 = !DILocation(line: 114, column: 10, scope: !502)
!535 = !DILocation(line: 114, column: 8, scope: !502)
!536 = !DILocation(line: 119, column: 17, scope: !502)
!537 = !DILocation(line: 119, column: 23, scope: !502)
!538 = !DILocation(line: 119, column: 3, scope: !502)
!539 = !DILocation(line: 120, column: 3, scope: !502)
!540 = !DILocation(line: 120, column: 3, scope: !507)
!541 = !DILocation(line: 120, column: 3, scope: !542)
!542 = distinct !DILexicalBlock(scope: !507, file: !3, line: 120, column: 3)
!543 = !DILocation(line: 120, column: 3, scope: !544)
!544 = distinct !DILexicalBlock(scope: !542, file: !3, line: 120, column: 3)
!545 = !DILocation(line: 120, column: 3, scope: !546)
!546 = distinct !DILexicalBlock(scope: !544, file: !3, line: 120, column: 3)
!547 = !DILocation(line: 121, column: 2, scope: !503)
!548 = !DILocation(line: 121, column: 2, scope: !502)
!549 = !DILocation(line: 122, column: 20, scope: !503)
!550 = !DILocation(line: 122, column: 3, scope: !503)
!551 = !DILocation(line: 122, column: 25, scope: !503)
!552 = !DILocation(line: 122, column: 29, scope: !503)
!553 = !DILocation(line: 123, column: 1, scope: !495)
!554 = !DISubprogram(name: "_printk", scope: !555, file: !555, line: 153, type: !556, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!555 = !DIFile(filename: "./include/linux/printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4ecb2988ac1ef492f4f976fca5b5f43")
!556 = !DISubroutineType(types: !557)
!557 = !{!76, !558, null}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!559 = distinct !DISubprogram(name: "kmalloc", scope: !12, file: !12, line: 591, type: !479, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !560)
!560 = !{!561, !562, !563}
!561 = !DILocalVariable(name: "size", arg: 1, scope: !559, file: !12, line: 591, type: !481)
!562 = !DILocalVariable(name: "flags", arg: 2, scope: !559, file: !12, line: 591, type: !62)
!563 = !DILocalVariable(name: "index", scope: !564, file: !12, line: 594, type: !7)
!564 = distinct !DILexicalBlock(scope: !565, file: !12, line: 593, column: 42)
!565 = distinct !DILexicalBlock(scope: !559, file: !12, line: 593, column: 6)
!566 = !DILocation(line: 591, column: 61, scope: !559)
!567 = !DILocation(line: 591, column: 73, scope: !559)
!568 = !DILocation(line: 593, column: 27, scope: !565)
!569 = !DILocation(line: 593, column: 6, scope: !565)
!570 = !DILocation(line: 593, column: 33, scope: !565)
!571 = !DILocation(line: 593, column: 36, scope: !565)
!572 = !DILocation(line: 593, column: 6, scope: !559)
!573 = !DILocation(line: 594, column: 3, scope: !564)
!574 = !DILocation(line: 594, column: 16, scope: !564)
!575 = !DILocation(line: 596, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !564, file: !12, line: 596, column: 7)
!577 = !DILocation(line: 596, column: 12, scope: !576)
!578 = !DILocation(line: 596, column: 7, scope: !564)
!579 = !DILocation(line: 597, column: 25, scope: !576)
!580 = !DILocation(line: 597, column: 31, scope: !576)
!581 = !DILocation(line: 597, column: 11, scope: !576)
!582 = !DILocation(line: 597, column: 4, scope: !576)
!583 = !DILocation(line: 599, column: 11, scope: !564)
!584 = !DILocation(line: 599, column: 9, scope: !564)
!585 = !DILocation(line: 601, column: 33, scope: !564)
!586 = !DILocation(line: 601, column: 40, scope: !564)
!587 = !DILocation(line: 601, column: 20, scope: !564)
!588 = !DILocation(line: 601, column: 5, scope: !564)
!589 = !DILocation(line: 601, column: 51, scope: !564)
!590 = !DILocation(line: 602, column: 5, scope: !564)
!591 = !DILocation(line: 602, column: 12, scope: !564)
!592 = !DILocation(line: 600, column: 10, scope: !564)
!593 = !DILocation(line: 600, column: 3, scope: !564)
!594 = !DILocation(line: 603, column: 2, scope: !565)
!595 = !DILocation(line: 604, column: 19, scope: !559)
!596 = !DILocation(line: 604, column: 25, scope: !559)
!597 = !DILocation(line: 604, column: 9, scope: !559)
!598 = !DILocation(line: 604, column: 2, scope: !559)
!599 = !DILocation(line: 605, column: 1, scope: !559)
!600 = !DISubprogram(name: "kmalloc_large", scope: !12, file: !12, line: 531, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!601 = distinct !DISubprogram(name: "__kmalloc_index", scope: !12, file: !12, line: 444, type: !602, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !606)
!602 = !DISubroutineType(types: !603)
!603 = !{!7, !481, !604}
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !45, line: 35, baseType: !605)
!605 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!606 = !{!607, !608}
!607 = !DILocalVariable(name: "size", arg: 1, scope: !601, file: !12, line: 444, type: !481)
!608 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !601, file: !12, line: 445, type: !604)
!609 = !DILocation(line: 444, column: 60, scope: !601)
!610 = !DILocation(line: 445, column: 16, scope: !601)
!611 = !DILocation(line: 447, column: 7, scope: !612)
!612 = distinct !DILexicalBlock(scope: !601, file: !12, line: 447, column: 6)
!613 = !DILocation(line: 447, column: 6, scope: !601)
!614 = !DILocation(line: 448, column: 3, scope: !612)
!615 = !DILocation(line: 450, column: 6, scope: !616)
!616 = distinct !DILexicalBlock(scope: !601, file: !12, line: 450, column: 6)
!617 = !DILocation(line: 450, column: 11, scope: !616)
!618 = !DILocation(line: 450, column: 6, scope: !601)
!619 = !DILocation(line: 451, column: 3, scope: !616)
!620 = !DILocation(line: 453, column: 32, scope: !621)
!621 = distinct !DILexicalBlock(scope: !601, file: !12, line: 453, column: 6)
!622 = !DILocation(line: 453, column: 37, scope: !621)
!623 = !DILocation(line: 453, column: 42, scope: !621)
!624 = !DILocation(line: 453, column: 45, scope: !621)
!625 = !DILocation(line: 453, column: 50, scope: !621)
!626 = !DILocation(line: 453, column: 6, scope: !601)
!627 = !DILocation(line: 454, column: 3, scope: !621)
!628 = !DILocation(line: 455, column: 32, scope: !629)
!629 = distinct !DILexicalBlock(scope: !601, file: !12, line: 455, column: 6)
!630 = !DILocation(line: 455, column: 37, scope: !629)
!631 = !DILocation(line: 455, column: 43, scope: !629)
!632 = !DILocation(line: 455, column: 46, scope: !629)
!633 = !DILocation(line: 455, column: 51, scope: !629)
!634 = !DILocation(line: 455, column: 6, scope: !601)
!635 = !DILocation(line: 456, column: 3, scope: !629)
!636 = !DILocation(line: 457, column: 6, scope: !637)
!637 = distinct !DILexicalBlock(scope: !601, file: !12, line: 457, column: 6)
!638 = !DILocation(line: 457, column: 11, scope: !637)
!639 = !DILocation(line: 457, column: 6, scope: !601)
!640 = !DILocation(line: 457, column: 26, scope: !637)
!641 = !DILocation(line: 458, column: 6, scope: !642)
!642 = distinct !DILexicalBlock(scope: !601, file: !12, line: 458, column: 6)
!643 = !DILocation(line: 458, column: 11, scope: !642)
!644 = !DILocation(line: 458, column: 6, scope: !601)
!645 = !DILocation(line: 458, column: 26, scope: !642)
!646 = !DILocation(line: 459, column: 6, scope: !647)
!647 = distinct !DILexicalBlock(scope: !601, file: !12, line: 459, column: 6)
!648 = !DILocation(line: 459, column: 11, scope: !647)
!649 = !DILocation(line: 459, column: 6, scope: !601)
!650 = !DILocation(line: 459, column: 26, scope: !647)
!651 = !DILocation(line: 460, column: 6, scope: !652)
!652 = distinct !DILexicalBlock(scope: !601, file: !12, line: 460, column: 6)
!653 = !DILocation(line: 460, column: 11, scope: !652)
!654 = !DILocation(line: 460, column: 6, scope: !601)
!655 = !DILocation(line: 460, column: 26, scope: !652)
!656 = !DILocation(line: 461, column: 6, scope: !657)
!657 = distinct !DILexicalBlock(scope: !601, file: !12, line: 461, column: 6)
!658 = !DILocation(line: 461, column: 11, scope: !657)
!659 = !DILocation(line: 461, column: 6, scope: !601)
!660 = !DILocation(line: 461, column: 26, scope: !657)
!661 = !DILocation(line: 462, column: 6, scope: !662)
!662 = distinct !DILexicalBlock(scope: !601, file: !12, line: 462, column: 6)
!663 = !DILocation(line: 462, column: 11, scope: !662)
!664 = !DILocation(line: 462, column: 6, scope: !601)
!665 = !DILocation(line: 462, column: 26, scope: !662)
!666 = !DILocation(line: 463, column: 6, scope: !667)
!667 = distinct !DILexicalBlock(scope: !601, file: !12, line: 463, column: 6)
!668 = !DILocation(line: 463, column: 11, scope: !667)
!669 = !DILocation(line: 463, column: 6, scope: !601)
!670 = !DILocation(line: 463, column: 26, scope: !667)
!671 = !DILocation(line: 464, column: 6, scope: !672)
!672 = distinct !DILexicalBlock(scope: !601, file: !12, line: 464, column: 6)
!673 = !DILocation(line: 464, column: 11, scope: !672)
!674 = !DILocation(line: 464, column: 6, scope: !601)
!675 = !DILocation(line: 464, column: 26, scope: !672)
!676 = !DILocation(line: 465, column: 6, scope: !677)
!677 = distinct !DILexicalBlock(scope: !601, file: !12, line: 465, column: 6)
!678 = !DILocation(line: 465, column: 11, scope: !677)
!679 = !DILocation(line: 465, column: 6, scope: !601)
!680 = !DILocation(line: 465, column: 26, scope: !677)
!681 = !DILocation(line: 466, column: 6, scope: !682)
!682 = distinct !DILexicalBlock(scope: !601, file: !12, line: 466, column: 6)
!683 = !DILocation(line: 466, column: 11, scope: !682)
!684 = !DILocation(line: 466, column: 6, scope: !601)
!685 = !DILocation(line: 466, column: 26, scope: !682)
!686 = !DILocation(line: 467, column: 6, scope: !687)
!687 = distinct !DILexicalBlock(scope: !601, file: !12, line: 467, column: 6)
!688 = !DILocation(line: 467, column: 11, scope: !687)
!689 = !DILocation(line: 467, column: 6, scope: !601)
!690 = !DILocation(line: 467, column: 26, scope: !687)
!691 = !DILocation(line: 468, column: 6, scope: !692)
!692 = distinct !DILexicalBlock(scope: !601, file: !12, line: 468, column: 6)
!693 = !DILocation(line: 468, column: 11, scope: !692)
!694 = !DILocation(line: 468, column: 6, scope: !601)
!695 = !DILocation(line: 468, column: 26, scope: !692)
!696 = !DILocation(line: 469, column: 6, scope: !697)
!697 = distinct !DILexicalBlock(scope: !601, file: !12, line: 469, column: 6)
!698 = !DILocation(line: 469, column: 11, scope: !697)
!699 = !DILocation(line: 469, column: 6, scope: !601)
!700 = !DILocation(line: 469, column: 26, scope: !697)
!701 = !DILocation(line: 470, column: 6, scope: !702)
!702 = distinct !DILexicalBlock(scope: !601, file: !12, line: 470, column: 6)
!703 = !DILocation(line: 470, column: 11, scope: !702)
!704 = !DILocation(line: 470, column: 6, scope: !601)
!705 = !DILocation(line: 470, column: 26, scope: !702)
!706 = !DILocation(line: 471, column: 6, scope: !707)
!707 = distinct !DILexicalBlock(scope: !601, file: !12, line: 471, column: 6)
!708 = !DILocation(line: 471, column: 11, scope: !707)
!709 = !DILocation(line: 471, column: 6, scope: !601)
!710 = !DILocation(line: 471, column: 26, scope: !707)
!711 = !DILocation(line: 472, column: 6, scope: !712)
!712 = distinct !DILexicalBlock(scope: !601, file: !12, line: 472, column: 6)
!713 = !DILocation(line: 472, column: 11, scope: !712)
!714 = !DILocation(line: 472, column: 6, scope: !601)
!715 = !DILocation(line: 472, column: 26, scope: !712)
!716 = !DILocation(line: 473, column: 6, scope: !717)
!717 = distinct !DILexicalBlock(scope: !601, file: !12, line: 473, column: 6)
!718 = !DILocation(line: 473, column: 11, scope: !717)
!719 = !DILocation(line: 473, column: 6, scope: !601)
!720 = !DILocation(line: 473, column: 26, scope: !717)
!721 = !DILocation(line: 474, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !601, file: !12, line: 474, column: 6)
!723 = !DILocation(line: 474, column: 11, scope: !722)
!724 = !DILocation(line: 474, column: 6, scope: !601)
!725 = !DILocation(line: 474, column: 27, scope: !722)
!726 = !DILocation(line: 475, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !601, file: !12, line: 475, column: 6)
!728 = !DILocation(line: 475, column: 11, scope: !727)
!729 = !DILocation(line: 475, column: 6, scope: !601)
!730 = !DILocation(line: 475, column: 32, scope: !727)
!731 = !DILocation(line: 477, column: 50, scope: !732)
!732 = distinct !DILexicalBlock(scope: !601, file: !12, line: 477, column: 6)
!733 = !{i8 0, i8 2}
!734 = !{}
!735 = !DILocation(line: 477, column: 6, scope: !601)
!736 = !DILocation(line: 478, column: 3, scope: !732)
!737 = !DILocation(line: 478, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !739, file: !12, line: 478, column: 3)
!739 = distinct !DILexicalBlock(scope: !732, file: !12, line: 478, column: 3)
!740 = !{i32 -2143554875}
!741 = !DILocation(line: 478, column: 3, scope: !739)
!742 = !DILocation(line: 480, column: 3, scope: !732)
!743 = !DILocation(line: 480, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !732, file: !12, line: 480, column: 3)
!745 = !DILocation(line: 480, column: 3, scope: !746)
!746 = distinct !DILexicalBlock(scope: !744, file: !12, line: 480, column: 3)
!747 = !DILocation(line: 480, column: 3, scope: !748)
!748 = distinct !DILexicalBlock(scope: !744, file: !12, line: 480, column: 3)
!749 = !{i64 2151412624, i64 2151412653, i64 2151412699, i64 2151412757, i64 2151412811, i64 2151412865, i64 2151412920, i64 2151412951}
!750 = !DILocation(line: 483, column: 2, scope: !601)
!751 = !DILocation(line: 484, column: 1, scope: !601)
!752 = !DISubprogram(name: "kmalloc_trace", scope: !12, file: !12, line: 525, type: !753, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!753 = !DISubroutineType(types: !754)
!754 = !{!22, !755, !62, !481}
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !757, line: 11, flags: DIFlagFwdDecl)
!757 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!758 = distinct !DISubprogram(name: "kmalloc_type", scope: !12, file: !12, line: 401, type: !759, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !761)
!759 = !DISubroutineType(types: !760)
!760 = !{!11, !62, !63}
!761 = !{!762, !763}
!762 = !DILocalVariable(name: "flags", arg: 1, scope: !758, file: !12, line: 401, type: !62)
!763 = !DILocalVariable(name: "caller", arg: 2, scope: !758, file: !12, line: 401, type: !63)
!764 = !DILocation(line: 401, column: 67, scope: !758)
!765 = !DILocation(line: 401, column: 88, scope: !758)
!766 = !DILocation(line: 407, column: 6, scope: !767)
!767 = distinct !DILexicalBlock(scope: !758, file: !12, line: 407, column: 6)
!768 = !DILocation(line: 407, column: 6, scope: !758)
!769 = !DILocation(line: 413, column: 3, scope: !767)
!770 = !DILocation(line: 423, column: 38, scope: !771)
!771 = distinct !DILexicalBlock(scope: !758, file: !12, line: 423, column: 6)
!772 = !DILocation(line: 423, column: 44, scope: !771)
!773 = !DILocation(line: 423, column: 6, scope: !758)
!774 = !DILocation(line: 424, column: 3, scope: !771)
!775 = !DILocation(line: 426, column: 3, scope: !776)
!776 = distinct !DILexicalBlock(scope: !758, file: !12, line: 425, column: 6)
!777 = !DILocation(line: 429, column: 1, scope: !758)
!778 = !DISubprogram(name: "__kmalloc", scope: !12, file: !12, line: 488, type: !479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!779 = !DISubprogram(name: "__compiletime_assert_117", scope: !12, file: !12, line: 478, type: !178, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!780 = distinct !DISubprogram(name: "list_add_rcu", scope: !407, file: !407, line: 104, type: !781, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{null, !48, !48}
!783 = !{!784, !785}
!784 = !DILocalVariable(name: "new", arg: 1, scope: !780, file: !407, line: 104, type: !48)
!785 = !DILocalVariable(name: "head", arg: 2, scope: !780, file: !407, line: 104, type: !48)
!786 = !DILocation(line: 104, column: 51, scope: !780)
!787 = !DILocation(line: 104, column: 74, scope: !780)
!788 = !DILocation(line: 106, column: 17, scope: !780)
!789 = !DILocation(line: 106, column: 22, scope: !780)
!790 = !DILocation(line: 106, column: 28, scope: !780)
!791 = !DILocation(line: 106, column: 34, scope: !780)
!792 = !DILocation(line: 106, column: 2, scope: !780)
!793 = !DILocation(line: 107, column: 1, scope: !780)
!794 = distinct !DISubprogram(name: "__list_add_rcu", scope: !407, file: !407, line: 76, type: !795, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !797)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !48, !48, !48}
!797 = !{!798, !799, !800, !801}
!798 = !DILocalVariable(name: "new", arg: 1, scope: !794, file: !407, line: 76, type: !48)
!799 = !DILocalVariable(name: "prev", arg: 2, scope: !794, file: !407, line: 77, type: !48)
!800 = !DILocalVariable(name: "next", arg: 3, scope: !794, file: !407, line: 77, type: !48)
!801 = !DILocalVariable(name: "_r_a_p__v", scope: !802, file: !407, line: 84, type: !65)
!802 = distinct !DILexicalBlock(scope: !794, file: !407, line: 84, column: 2)
!803 = !DILocation(line: 76, column: 53, scope: !794)
!804 = !DILocation(line: 77, column: 21, scope: !794)
!805 = !DILocation(line: 77, column: 45, scope: !794)
!806 = !DILocation(line: 79, column: 24, scope: !807)
!807 = distinct !DILexicalBlock(scope: !794, file: !407, line: 79, column: 6)
!808 = !DILocation(line: 79, column: 29, scope: !807)
!809 = !DILocation(line: 79, column: 35, scope: !807)
!810 = !DILocation(line: 79, column: 7, scope: !807)
!811 = !DILocation(line: 79, column: 6, scope: !794)
!812 = !DILocation(line: 80, column: 3, scope: !807)
!813 = !DILocation(line: 82, column: 14, scope: !794)
!814 = !DILocation(line: 82, column: 2, scope: !794)
!815 = !DILocation(line: 82, column: 7, scope: !794)
!816 = !DILocation(line: 82, column: 12, scope: !794)
!817 = !DILocation(line: 83, column: 14, scope: !794)
!818 = !DILocation(line: 83, column: 2, scope: !794)
!819 = !DILocation(line: 83, column: 7, scope: !794)
!820 = !DILocation(line: 83, column: 12, scope: !794)
!821 = !DILocation(line: 84, column: 2, scope: !794)
!822 = !DILocation(line: 84, column: 2, scope: !802)
!823 = !DILocation(line: 84, column: 2, scope: !824)
!824 = distinct !DILexicalBlock(scope: !802, file: !407, line: 84, column: 2)
!825 = !DILocation(line: 84, column: 2, scope: !826)
!826 = distinct !DILexicalBlock(scope: !824, file: !407, line: 84, column: 2)
!827 = !DILocation(line: 84, column: 2, scope: !828)
!828 = distinct !DILexicalBlock(scope: !826, file: !407, line: 84, column: 2)
!829 = !DILocation(line: 84, column: 2, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !407, line: 84, column: 2)
!831 = !DILocation(line: 84, column: 2, scope: !832)
!832 = distinct !DILexicalBlock(scope: !824, file: !407, line: 84, column: 2)
!833 = !DILocation(line: 84, column: 2, scope: !834)
!834 = distinct !DILexicalBlock(scope: !832, file: !407, line: 84, column: 2)
!835 = !DILocation(line: 84, column: 2, scope: !836)
!836 = distinct !DILexicalBlock(scope: !832, file: !407, line: 84, column: 2)
!837 = !DILocation(line: 84, column: 2, scope: !838)
!838 = distinct !DILexicalBlock(scope: !836, file: !407, line: 84, column: 2)
!839 = !{i64 2151876507}
!840 = !DILocation(line: 84, column: 2, scope: !841)
!841 = distinct !DILexicalBlock(scope: !836, file: !407, line: 84, column: 2)
!842 = !DILocation(line: 84, column: 2, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !407, line: 84, column: 2)
!844 = !DILocation(line: 84, column: 2, scope: !845)
!845 = distinct !DILexicalBlock(scope: !841, file: !407, line: 84, column: 2)
!846 = !DILocation(line: 85, column: 15, scope: !794)
!847 = !DILocation(line: 85, column: 2, scope: !794)
!848 = !DILocation(line: 85, column: 8, scope: !794)
!849 = !DILocation(line: 85, column: 13, scope: !794)
!850 = !DILocation(line: 86, column: 1, scope: !794)
!851 = distinct !DISubprogram(name: "__list_add_valid", scope: !852, file: !852, line: 128, type: !853, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !855)
!852 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!853 = !DISubroutineType(types: !854)
!854 = !{!604, !48, !48, !48}
!855 = !{!856, !857, !858}
!856 = !DILocalVariable(name: "new", arg: 1, scope: !851, file: !852, line: 128, type: !48)
!857 = !DILocalVariable(name: "prev", arg: 2, scope: !851, file: !852, line: 129, type: !48)
!858 = !DILocalVariable(name: "next", arg: 3, scope: !851, file: !852, line: 130, type: !48)
!859 = !DILocation(line: 128, column: 55, scope: !851)
!860 = !DILocation(line: 129, column: 23, scope: !851)
!861 = !DILocation(line: 130, column: 23, scope: !851)
!862 = !DILocation(line: 132, column: 2, scope: !851)
!863 = !DISubprogram(name: "_raw_spin_lock_bh", scope: !864, file: !864, line: 28, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!864 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!865 = !DISubroutineType(types: !866)
!866 = !{null, !867}
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !104, line: 23, baseType: !103)
!869 = distinct !DISubprogram(name: "__list_del_entry", scope: !852, file: !852, line: 213, type: !408, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !870)
!870 = !{!871}
!871 = !DILocalVariable(name: "entry", arg: 1, scope: !869, file: !852, line: 213, type: !48)
!872 = !DILocation(line: 213, column: 55, scope: !869)
!873 = !DILocation(line: 215, column: 30, scope: !874)
!874 = distinct !DILexicalBlock(scope: !869, file: !852, line: 215, column: 6)
!875 = !DILocation(line: 215, column: 7, scope: !874)
!876 = !DILocation(line: 215, column: 6, scope: !869)
!877 = !DILocation(line: 216, column: 3, scope: !874)
!878 = !DILocation(line: 218, column: 13, scope: !869)
!879 = !DILocation(line: 218, column: 20, scope: !869)
!880 = !DILocation(line: 218, column: 26, scope: !869)
!881 = !DILocation(line: 218, column: 33, scope: !869)
!882 = !DILocation(line: 218, column: 2, scope: !869)
!883 = !DILocation(line: 219, column: 1, scope: !869)
!884 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !852, file: !852, line: 134, type: !885, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !887)
!885 = !DISubroutineType(types: !886)
!886 = !{!604, !48}
!887 = !{!888}
!888 = !DILocalVariable(name: "entry", arg: 1, scope: !884, file: !852, line: 134, type: !48)
!889 = !DILocation(line: 134, column: 61, scope: !884)
!890 = !DILocation(line: 136, column: 2, scope: !884)
!891 = distinct !DISubprogram(name: "__list_del", scope: !852, file: !852, line: 193, type: !781, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "prev", arg: 1, scope: !891, file: !852, line: 193, type: !48)
!894 = !DILocalVariable(name: "next", arg: 2, scope: !891, file: !852, line: 193, type: !48)
!895 = !DILocation(line: 193, column: 50, scope: !891)
!896 = !DILocation(line: 193, column: 75, scope: !891)
!897 = !DILocation(line: 195, column: 15, scope: !891)
!898 = !DILocation(line: 195, column: 2, scope: !891)
!899 = !DILocation(line: 195, column: 8, scope: !891)
!900 = !DILocation(line: 195, column: 13, scope: !891)
!901 = !DILocation(line: 196, column: 2, scope: !891)
!902 = !DILocation(line: 196, column: 2, scope: !903)
!903 = distinct !DILexicalBlock(scope: !891, file: !852, line: 196, column: 2)
!904 = !DILocation(line: 196, column: 2, scope: !905)
!905 = distinct !DILexicalBlock(scope: !903, file: !852, line: 196, column: 2)
!906 = !DILocation(line: 196, column: 2, scope: !907)
!907 = distinct !DILexicalBlock(scope: !903, file: !852, line: 196, column: 2)
!908 = !DILocation(line: 197, column: 1, scope: !891)
!909 = !DISubprogram(name: "_raw_spin_unlock_bh", scope: !864, file: !864, line: 40, type: !865, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!910 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !852, file: !852, line: 35, type: !408, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !911)
!911 = !{!912}
!912 = !DILocalVariable(name: "list", arg: 1, scope: !910, file: !852, line: 35, type: !48)
!913 = !DILocation(line: 35, column: 53, scope: !910)
!914 = !DILocation(line: 37, column: 2, scope: !910)
!915 = !DILocation(line: 37, column: 2, scope: !916)
!916 = distinct !DILexicalBlock(scope: !910, file: !852, line: 37, column: 2)
!917 = !DILocation(line: 37, column: 2, scope: !918)
!918 = distinct !DILexicalBlock(scope: !916, file: !852, line: 37, column: 2)
!919 = !DILocation(line: 37, column: 2, scope: !920)
!920 = distinct !DILexicalBlock(scope: !916, file: !852, line: 37, column: 2)
!921 = !DILocation(line: 38, column: 2, scope: !910)
!922 = !DILocation(line: 38, column: 2, scope: !923)
!923 = distinct !DILexicalBlock(scope: !910, file: !852, line: 38, column: 2)
!924 = !DILocation(line: 38, column: 2, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !852, line: 38, column: 2)
!926 = !DILocation(line: 38, column: 2, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !852, line: 38, column: 2)
!928 = !DILocation(line: 39, column: 1, scope: !910)
